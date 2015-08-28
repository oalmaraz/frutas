unit capturar_devoluciones;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  padre,  Grids, DBGrids, ComCtrls, Buttons, Menus, Db, IBQuery,
  IBCustomDataSet, IBTable,  StdCtrls, DBCtrls, ExtCtrls;

type
  TfrmCapturar_Devoluciones = class(TfrmPadre)
    Label1: TLabel;
    TCajas: TIBTable;
    TCajasID: TIntegerField;
    TCajasNOMBRE: TIBStringField;
    TCajasALMACEN: TIntegerField;
    TCajasUSUARIO: TIntegerField;
    TCajasTIPO_DE_CAJA: TIBStringField;
    TCajasESTATUS: TIBStringField;
    TCajasMODULO_FUNCION: TIntegerField;
    dsCajas: TDataSource;
    dsAlmacenes: TDataSource;
    qyAlmacenes: TIBQuery;
    qyAlmacenesID: TIntegerField;
    qyAlmacenesCLAVE: TIBStringField;
    qyAlmacenesNOMBRE: TIBStringField;
    qyAlmacenesCOMPRA: TIBStringField;
    qyAlmacenesVENDE: TIBStringField;
    qyAlmacenesTRANSFORMA: TIBStringField;
    qyAlmacenesFECHA_ALTA: TDateTimeField;
    qyAlmacenesRESPONSABLE: TIntegerField;
    qyAlmacenesOBSERVACIONES: TBlobField;
    qyAlmacenesSERIE_FACTURA: TIBStringField;
    qyAlmacenesCONSECUTIVO: TIntegerField;
    qyAlmacenesFECHA_ULT_INV: TDateTimeField;
    qyAlmacenesESTATUS: TIBStringField;
    Label2: TLabel;
    cbCajas: TDBLookupComboBox;
    Label4: TLabel;
    cbAlmacenes: TDBLookupComboBox;
    Label3: TLabel;
    deFechaInicio: TDateTimePicker;
    sbSinCaja: TBitBtn;
    sbSinAlmacen: TBitBtn;
    dgVentas: TDBGrid;
    fpCaptura: TPanel;
    dgDatalle: TDBGrid;
    Label6: TLabel;
    deFechaFin: TDateTimePicker;
    qyBusqueda: TIBQuery;
    qyBusquedaR_ID: TIntegerField;
    qyBusquedaR_FOLIO_DE_VENTA: TIntegerField;
    qyBusquedaR_CLIENTE: TIntegerField;
    qyBusquedaR_CLIENTE_NOMBRE: TIBStringField;
    qyBusquedaR_EXTENSION: TIntegerField;
    qyBusquedaR_EXTENSION_NOMBRE: TIBStringField;
    qyBusquedaR_CAJA: TIntegerField;
    qyBusquedaR_CAJA_NOMBRE: TIBStringField;
    qyBusquedaR_ALMACEN: TIntegerField;
    qyBusquedaR_ALMACEN_NOMBRE: TIBStringField;
    qyBusquedaR_GRANTOTAL: TFloatField;
    qyBusquedaR_ESTATUS: TIBStringField;
    dsBusqueda: TDataSource;
    qyBusquedaR_FECHA: TDateTimeField;
    qyBusquedaR_FECHA_ALTA: TDateTimeField;
    dsPartidas: TDataSource;
    qyPartidas: TIBQuery;
    qyPartidasR_ID: TIntegerField;
    qyPartidasR_PUNTO_DE_VENTA: TIntegerField;
    qyPartidasR_MATERIAL: TIntegerField;
    qyPartidasR_CLAVE: TIBStringField;
    qyPartidasR_DESCRIPCION: TIBStringField;
    qyPartidasR_UNIDAD: TIntegerField;
    qyPartidasR_DESCRIPCION_UNIDAD: TIBStringField;
    qyPartidasR_CANTIDAD: TFloatField;
    qyPartidasR_PRECIO: TFloatField;
    qyPartidasR_SUBTOTAL: TFloatField;
    qyPartidasR_IVA: TFloatField;
    qyPartidasR_IMPUESTO1: TFloatField;
    qyPartidasR_IEPS: TFloatField;
    qyPartidasR_IMPUESTO2: TFloatField;
    qyPartidasR_TOTAL: TFloatField;
    qyPartidasR_DESCUENTO_PORC: TFloatField;
    qyPartidasR_DP: TFloatField;
    qyPartidasR_DG: TFloatField;
    qyPartidasR_GT: TFloatField;
    qyPartidasR_ESTATUS: TIBStringField;
    qyPartidasR_CAJAS: TIntegerField;
    qyPartidasR_UNIDAD_CLAVE: TIBStringField;
    pmDevoluciones: TPopupMenu;
    itemF4: TMenuItem;
    spADD_PARTIDA_DEVOLUCION: TIBQuery;
    buExplorar: TBitBtn;
    buSalir: TBitBtn;
    buF4: TBitBtn;
    edFolio: TEdit;
    qyPartidasR_ROWS: TIntegerField;
    qyPartidasR_IVA_PORC: TFloatField;
    qyPartidasR_IEPS_PORC: TFloatField;
    qyPartidasR_IMPUESTO1_PORC: TFloatField;
    qyPartidasR_IMPUESTO2_PORC: TFloatField;
    qyPartidasR_PRECIO_SIN_IMPUESTOS: TFloatField;
    qyPartidasR_MEDIDA: TIntegerField;
    qyPartidasR_COLOR: TIntegerField;
    qyPartidasR_VENDEDOR: TIntegerField;
    qyPartidasR_VENDEDOR_NOMBRE: TIBStringField;
    qyPartidasR_HAY_OFERTA: TIBStringField;
    qyPartidasR_OFERTA_PORC: TFloatField;
    qyPartidasR_HAY_EXISTENCIA: TIBStringField;
    qyPartidasR_SERIE: TIBStringField;
    procedure sbSinCajaClick(Sender: TObject);
    procedure sbSinAlmacenClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qyBusquedaAfterOpen(DataSet: TDataSet);
    procedure dsPartidasDataChange(Sender: TObject; Field: TField);
    procedure itemF4Click(Sender: TObject);
    procedure buExplorarClick(Sender: TObject);
    procedure buF4Click(Sender: TObject);
    procedure buSalirClick(Sender: TObject);
    procedure edFolioKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    seAgrego    : boolean;
    folioVenta : integer;
  public
    { Public declarations }
    constructor Crear(AOwner : TComponent; PX, PY : TPoint; p_folio, p_almacen : integer);
    function isEmpty : boolean;
  end;

var
  frmCapturar_Devoluciones: TfrmCapturar_Devoluciones;

implementation

uses reglas_de_negocios, IBModulo, autorizacion, UfrmAcceso;

{$R *.DFM}

function TfrmCapturar_Devoluciones.isEmpty : boolean;
begin
   Result := not(seAgrego);
end;

constructor TfrmCapturar_Devoluciones.Crear(AOwner : TComponent; PX, PY : TPoint; p_folio, p_almacen : integer);
begin
   Create(AOwner);
   Self.Left   := PX.x;
   Self.Top    := PX.y;
   Self.Width  := PY.x;
   Self.Height := PY.y;
   folioVenta := p_folio;
   cbAlmacenes.KeyValue := p_almacen;
end;

procedure TfrmCapturar_Devoluciones.sbSinCajaClick(Sender: TObject);
begin
  inherited;
  cbCajas.KeyValue := 0;
end;

procedure TfrmCapturar_Devoluciones.sbSinAlmacenClick(Sender: TObject);
begin
  inherited;
  cbAlmacenes.KeyValue := 0;
end;

procedure TfrmCapturar_Devoluciones.FormCreate(Sender: TObject);
begin
  inherited;
  seAgrego := false;
  reglas.abrir_IBTabla(TCajas);
  reglas.refresh_IBQuery(qyAlmacenes);

  deFechaInicio.Date :=(reglas.dame_fecha - 10);
  deFechaFin.Date    := reglas.dame_fecha;
end;

procedure TfrmCapturar_Devoluciones.qyBusquedaAfterOpen(DataSet: TDataSet);
begin
  inherited;
  reglas.refresh_IBQuery(qyPartidas);
end;

procedure TfrmCapturar_Devoluciones.dsPartidasDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if dsPartidas.DataSet <> nil then
  begin
     buF4.Enabled   := not(dsPartidas.DataSet.IsEmpty);
     itemF4.Enabled := buF4.Enabled;
  end;
end;

procedure TfrmCapturar_Devoluciones.itemF4Click(Sender: TObject);
begin
  inherited;
  buF4.Click;
end;

procedure TfrmCapturar_Devoluciones.buExplorarClick(Sender: TObject);
var
   caja    : integer;
   almacen : integer;
begin
  inherited;
  if cbCajas.Text = '' then
     caja := 0
  else
     caja := cbCajas.KeyValue;

  if cbAlmacenes.Text = '' then
     almacen := 0
  else
     almacen := cbAlmacenes.KeyValue;

   if edFolio.Text <> '' then
   begin
      qyBusqueda.Close;
      qyBusqueda.ParamByName('P_FOLIO').AsString      := edFolio.Text;
      qyBusqueda.ParamByName('P_FECHA_INICIO').AsDate := deFechaInicio.Date;
      qyBusqueda.ParamByName('P_FECHA_FIN').AsDate    := deFechaFin.Date;
      qyBusqueda.ParamByName('P_CAJA').AsInteger      := caja;
      qyBusqueda.ParamByName('P_ALMACEN').AsInteger   := almacen;
      qyBusqueda.Open;
  end
  else
     showmessage('Falta capturar folio');
end;

procedure TfrmCapturar_Devoluciones.buF4Click(Sender: TObject);
var
   ejecutar : boolean;
   autNivel : word;
begin
  inherited;
   ejecutar := true;
   autNivel := 3;

   if (autNivel > reglas.dameUsuarioNivel) then
   begin
      frmAcceso := TfrmAcceso.Create(Self);
      try
         frmAcceso.Nivel  := autNivel;
         frmAcceso.Status := 'Devolucion';
         frmAcceso.ShowModal;
         ejecutar := frmAcceso.Rsp;
      finally
         frmAcceso.Free;
      end;
   end;

   if ejecutar then
   begin
      spADD_PARTIDA_DEVOLUCION.ParamByName('P_VENTA').AsInteger   := folioVenta;
      spADD_PARTIDA_DEVOLUCION.ParamByName('P_PARTIDA').AsInteger := dsPartidas.DataSet.FieldByName('R_ID').AsInteger;
      spADD_PARTIDA_DEVOLUCION.ExecSQL;
      spADD_PARTIDA_DEVOLUCION.Transaction.CommitRetaining;
      seAgrego := true;
      ShowMessage('Partida agregada con exito.');
   end;
end;

procedure TfrmCapturar_Devoluciones.buSalirClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmCapturar_Devoluciones.edFolioKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
   if Key = #13 then
      buExplorar.Click;
end;

end.

