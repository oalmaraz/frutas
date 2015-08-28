unit capturar_punto_de_venta_cancelacion;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
      IBStoredProc, Db, DBCtrls, 
     StdCtrls, jpeg,  ExtCtrls,
   IBQuery, IBCustomDataSet, IBTable,  
   Grids, DBGrids, Buttons, ComCtrls;

type
  TfrmCapturar_Punto_de_Venta_Cancelacion = class(TForm)
    TCajas: TIBTable;
    TCajasID: TIntegerField;
    TCajasNOMBRE: TIBStringField;
    TCajasALMACEN: TIntegerField;
    TCajasUSUARIO: TIntegerField;
    TCajasTIPO_DE_CAJA: TIBStringField;
    TCajasESTATUS: TIBStringField;
    TCajasMODULO_FUNCION: TIntegerField;
    dsCajas: TDataSource;
    qyCajeros: TIBQuery;
    qyCajerosR_CAJERO: TIntegerField;
    qyCajerosR_NOMBRE: TIBStringField;
    dsCajeros: TDataSource;
    fpPadre: TPanel;
    imBottom: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    deFecha: TDateTimePicker;
    cbCajas: TDBLookupComboBox;
    cbCajeros: TDBLookupComboBox;
    dsBusqueda: TDataSource;
    qyBusqueda: TIBQuery;
    qyBusquedaR_ID: TIntegerField;
    qyBusquedaR_FECHA: TDateTimeField;
    qyBusquedaR_CAJA: TIntegerField;
    qyBusquedaR_CAJERO: TIntegerField;
    qyBusquedaR_FOLIO: TIntegerField;
    qyBusquedaR_CLIENTE: TIntegerField;
    qyBusquedaR_GRANTOTAL: TFloatField;
    qyBusquedaR_CAMBIO: TFloatField;
    qyBusquedaR_CAJA_NOMBRE: TIBStringField;
    qyBusquedaR_CAJERO_NOMBRE: TIBStringField;
    qyBusquedaR_CLIENTE_NOMBRE: TIBStringField;
    qyBusquedaR_ESTATUS: TIBStringField;
    spCANCELAR_VENTA: TIBStoredProc;
    dgVentas: TDBGrid;
    qyBusquedaR_EXTENSION: TIntegerField;
    qyBusquedaR_EXTENSION_NOMBRE: TIBStringField;
    spPUNTO_DE_VENTAS_CAMBIAR_ESTATUS: TIBStoredProc;
    qyEstatusProcesos: TIBQuery;
    dsEstatusProcesos: TDataSource;
    TEstatusProcesosDetalle: TIBTable;
    TEstatusProcesosDetalleID: TIntegerField;
    TEstatusProcesosDetallePROCESO: TIntegerField;
    TEstatusProcesosDetalleESTATUS: TIBStringField;
    TEstatusProcesosDetalleAUTORIZACION: TIBStringField;
    TEstatusProcesosDetalleSTOREPROC: TIBStringField;
    dsEstatusProcesosDetalle: TDataSource;
    Label18: TLabel;
    cbEstatus: TDBLookupComboBox;
    beAplicar: TBitBtn;
    qyBusquedaforma: TIntegerField;
    qyBusquedaestatus: TStringField;
    spEstatus: TIBStoredProc;
    buExplorar: TBitBtn;
    buSalir: TBitBtn;
    TEstatusProcesosDetalleNIVEL: TIntegerField;
    TEstatusProcesosDetalleVER: TIBStringField;
    TEstatusProcesosDetalleCORREO: TIBStringField;
    TEstatusProcesosDetalleASUNTO: TIBStringField;
    TEstatusProcesosDetalleORDEN: TIntegerField;
    procedure dsBusquedaDataChange(Sender: TObject; Field: TField);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cbEstatusClick(Sender: TObject);
    procedure beAplicarButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure qyBusquedaCalcFields(DataSet: TDataSet);
    procedure buExplorarClick(Sender: TObject);
    procedure buSalirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    constructor Crear(AOwner : TComponent; p_caja, p_cajero : integer);
  end;

var
  frmCapturar_Punto_de_Venta_Cancelacion: TfrmCapturar_Punto_de_Venta_Cancelacion;

implementation

uses IBModulo, reglas_de_negocios, IBData, autorizacion, UfrmAcceso;

{$R *.DFM}

constructor TfrmCapturar_Punto_de_Venta_Cancelacion.Crear(AOwner : TComponent; p_caja, p_cajero : integer);
begin
   Create(AOwner);
   dmIBData.spFECHA_SERVIDOR.ExecProc;
   reglas.abrir_IBTabla(TCajas);
   cbCajas.KeyValue   := p_caja;
   deFecha.Date       := StrToDate(FormatDateTime('dd/mm/yyyy',dmIBData.spFECHA_SERVIDOR.ParamByName('R_FECHA').AsDate));
   reglas.abrir_IBQuery(qyCajeros);
   cbCajeros.KeyValue := p_cajero;

   qyBusqueda.Close;
   qyBusqueda.ParamByName('P_FECHA').AsString   := FormatDateTime('dd/mm/yyyy',deFecha.Date);
   qyBusqueda.ParamByName('P_CAJA').AsInteger   := p_caja;
   qyBusqueda.ParamByName('P_CAJERO').AsInteger := p_cajero;
   qyBusqueda.Open;
end;

procedure TfrmCapturar_Punto_de_Venta_Cancelacion.dsBusquedaDataChange(
  Sender: TObject; Field: TField);
begin
  cbEstatus.KeyValue := 0;
  beAplicar.Enabled  := FALSE;
end;

procedure TfrmCapturar_Punto_de_Venta_Cancelacion.FormClose(
  Sender: TObject; var Action: TCloseAction);
var
   i : integer;
begin
   for i := 0 to ComponentCount-1 do
      if Components[i] is TDataSource then
      begin
         if TDataSource(Components[i]).DataSet <> nil then
         begin
            if not(TDataSource(Components[i]).DataSet.State = dsInactive) then
            begin
               if TDataSource(Components[i]).DataSet.State in [dsEdit, dsInsert] then
                  TDataSource(Components[i]).DataSet.Cancel;
               TDataSource(Components[i]).DataSet.Close;
            end;
         end;
      end;
end;

procedure TfrmCapturar_Punto_de_Venta_Cancelacion.FormCreate(
  Sender: TObject);
begin
  reglas.refresh_IBQuery(qyEstatusProcesos);
  reglas.abrir_IBTabla(TEstatusProcesosDetalle);
end;

procedure TfrmCapturar_Punto_de_Venta_Cancelacion.cbEstatusClick(
  Sender: TObject);
begin
  if dsEstatusProcesosDetalle.DataSet.FieldByName('STOREPROC').AsString <> '' then
  begin
     spEstatus.Params.Clear;
     spEstatus.StoredProcName := dsEstatusProcesosDetalle.DataSet.FieldByName('STOREPROC').AsString;
     spEstatus.Params.CreateParam(ftInteger,'P_ID',ptInput);
     beAplicar.Enabled        := TRUE;
  end;
end;

procedure TfrmCapturar_Punto_de_Venta_Cancelacion.beAplicarButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
var
   autorizar    : string;
   ejecutar     : boolean;
   awrAutorizar : boolean;
   awrNivel     : word;
   awrEstatus   : string;
begin
  ejecutar     := true;
  awrNivel     := dsEstatusProcesosDetalle.DataSet.FieldByName('NIVEL').AsInteger;
  awrAutorizar := dsEstatusProcesosDetalle.DataSet.FieldByName('AUTORIZACION').AsString = 'Si';
  awrEstatus   := dsEstatusProcesosDetalle.DataSet.FieldByName('ESTATUS').AsString;

  if (awrAutorizar) and (awrNivel > reglas.dameUsuarioNivel) then
  begin
     try
        Application.CreateForm(TfrmAcceso, frmAcceso);
        frmAcceso.Nivel  := awrNivel;
        frmAcceso.Status := awrEstatus;
        frmAcceso.ShowModal;
        ejecutar := frmAcceso.Rsp;
     finally
        frmAcceso.Free;
     end;
  end;

  if ejecutar then
  begin
     spEstatus.ParamByName('P_ID').AsInteger := dsBusqueda.DataSet.FieldByName('R_ID').AsInteger;
     spEstatus.ExecProc;
     spEstatus.Transaction.CommitRetaining;
     reglas.abrir_IBQuery_seek('R_ID',qyBusqueda.FieldByName('R_ID').AsInteger, qyBusqueda);
     reglas.refresh_IBQuery(qyEstatusProcesos);
     cbEstatus.KeyValue := 0;
     beAplicar.Enabled  := false;
  end;
end;

procedure TfrmCapturar_Punto_de_Venta_Cancelacion.qyBusquedaCalcFields(
  DataSet: TDataSet);
begin
   DataSet.FieldByName('FORMA').AsInteger  := Tag;
   DataSet.FieldByName('ESTATUS').AsString := DataSet.FieldByName('R_ESTATUS').AsString;
end;

procedure TfrmCapturar_Punto_de_Venta_Cancelacion.buExplorarClick(
  Sender: TObject);
var
   ejecutar : boolean;
begin
  frmAutorizacion := TfrmAutorizacion.Crear(Application, 2);
  frmAutorizacion.ShowModal;
  ejecutar := frmAutorizacion.dame_respuesta;
  frmAutorizacion.Free;
  if ejecutar then
  begin
     qyBusqueda.Close;
     qyBusqueda.ParamByName('P_FECHA').AsString   := FormatDateTime('dd/mm/yyyy',deFecha.Date);
     qyBusqueda.ParamByName('P_CAJA').AsInteger   := cbCajas.KeyValue;
     qyBusqueda.ParamByName('P_CAJERO').AsInteger := cbCajeros.KeyValue;
     qyBusqueda.Open;
  end;
end;

procedure TfrmCapturar_Punto_de_Venta_Cancelacion.buSalirClick(
  Sender: TObject);
begin
   Close;
end;

end.
