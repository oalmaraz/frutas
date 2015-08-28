unit USeleccionarConceptosGastos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  IBStoredProc,  Grids, DBGrids, Buttons, Menus, Db,
  IBCustomDataSet, IBQuery, IBDatabase, StdCtrls, ExtCtrls, 
    Mask, DBCtrls;

type
  TfrmSeleccionarConceptosGastos = class(TForm)
    IBDatabase1: TIBDatabase;
    IBTransaction1: TIBTransaction;
    dsBusqueda: TDataSource;
    qyBusqueda: TIBQuery;
    pmCampos: TPopupMenu;
    itemID: TMenuItem;
    itemCONCEPTO: TMenuItem;
    itemPORC: TMenuItem;
    paBusqueda: TPanel;
    buBusqueda: TBitBtn;
    buEjecutar: TBitBtn;
    buTodos: TBitBtn;
    edDato: TEdit;
    dgExplorar: TDBGrid;
    qyBusquedaID: TIntegerField;
    qyBusquedaCONCEPTO: TIBStringField;
    qyBusquedaPORC: TFloatField;
    spAddPedimento: TIBStoredProc;
    spDel: TIBStoredProc;
    spADD_SERVICIO: TIBStoredProc;
    spADD_PP_EXTRA: TIBStoredProc;
    spA_TE_TARIFA: TIBStoredProc;
    Panel2: TPanel;
    buInicio: TBitBtn;
    buAnterior: TBitBtn;
    buFin: TBitBtn;
    buSiguiente: TBitBtn;
    ibSalir: TBitBtn;
    deID: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure buInicioClick(Sender: TObject);
    procedure buAnteriorClick(Sender: TObject);
    procedure buSiguienteClick(Sender: TObject);
    procedure buFinClick(Sender: TObject);
    procedure buTodosClick(Sender: TObject);
    procedure buBusquedaClick(Sender: TObject);
    procedure edDatoKeyPress(Sender: TObject; var Key: Char);
    procedure buEjecutarClick(Sender: TObject);
    procedure dgExplorarDblClick(Sender: TObject);
    procedure itemIDClick(Sender: TObject);
    procedure itemCONCEPTOClick(Sender: TObject);
    procedure itemPORCClick(Sender: TObject);
    procedure ibSalirClick(Sender: TObject);
    procedure sbDownClick(Sender: TObject);
    procedure sbUpClick(Sender: TObject);
  private
    { Private declarations }
    awrAceptar : boolean;
    awrDataSet : TDataSet;
    awrCual    : integer;
    awrPadre   : integer;
    awrDel     : string;
    procedure setDatabase(valor : TIBDatabase);
    procedure setTransaction(valor : TIBTransaction);
    procedure setAceptar(valor : boolean);
    procedure setPANTALLA(valor : TWindowState);
    procedure setX(valor : TPoint);
    procedure setY(valor : TPoint);
    procedure DelSProc(valor : string);

    function getID : integer;
    function getCONCEPTO : string;
    function getPORC : double;
    function getAceptar : boolean;
  public
    { Public declarations }
  published
     property DATABASE : TIBDatabase write setDatabase;
     property TRANSACTION : TIBTransaction write setTransaction;
     property ID       : integer read getID;
     property CONCEPTO : string read getCONCEPTO;
     property PORC     : double read getPORC;
     property ACEPTAR : boolean read getAceptar write setAceptar;
     property PANTALLA : TWindowState write setPANTALLA;
     property X : TPoint write setX;
     property Y : TPoint write setY;
     //para que funcione esta parte el awrDataSet debera ser diferente de nil;
     property DATASET      : TDataSet read awrDataSet write awrDataSet;
     property CUALSPROC    : integer read awrCual write awrCual;
     property PADRE        : integer read awrPadre write awrPadre;
     property NameDelSProc : string write DelSProc;
  end;

var
  frmSeleccionarConceptosGastos: TfrmSeleccionarConceptosGastos;

implementation

uses
    UfrmValor, UfrmCostosPI;

{$R *.DFM}

const
   select = 'SELECT ID, CONCEPTO, PORC';
   from   = 'FROM CONCEPTOS_GASTOS';
   where  = 'WHERE (ID > 0)';

procedure TfrmSeleccionarConceptosGastos.DelSProc(valor : string);
begin
   awrDel := valor;
   spDel.StoredProcName := valor;
   spDel.Params.Clear;
   spDel.Params.CreateParam(ftInteger,'P_ID',ptInput);
end;

procedure TfrmSeleccionarConceptosGastos.setX(valor : TPoint);
begin
   if Self.WindowState = wsNormal then
   begin
      Self.Left := valor.x;
      Self.Top  := valor.y;
   end;
end;

procedure TfrmSeleccionarConceptosGastos.setY(valor : TPoint);
begin
   if Self.WindowState = wsNormal then
   begin
      Self.Width  := valor.x;
      Self.Height := valor.y;
   end;
end;

procedure TfrmSeleccionarConceptosGastos.setPANTALLA(valor : TWindowState);
begin
   frmSeleccionarConceptosGastos.WindowState := valor;
end;

procedure TfrmSeleccionarConceptosGastos.setDatabase(valor : TIBDatabase);
begin
   qyBusqueda.Database     := valor;
   spAddPedimento.Database := valor;
   spADD_SERVICIO.Database := valor;
   spDel.Database          := valor;
   spADD_PP_EXTRA.Database := valor;
   spA_TE_TARIFA.Database  := valor;
end;

procedure TfrmSeleccionarConceptosGastos.setTransaction(valor : TIBTransaction);
begin
   qyBusqueda.Transaction     := valor;
   spAddPedimento.Transaction := valor;
   spADD_SERVICIO.Transaction := valor;
   spDel.Transaction          := valor;
   spADD_PP_EXTRA.Transaction := valor;
   spA_TE_TARIFA.Transaction  := valor;
end;

procedure TfrmSeleccionarConceptosGastos.setAceptar(valor : boolean);
begin
   awrAceptar := valor;
end;

function TfrmSeleccionarConceptosGastos.getID : integer;
begin
   Result := dsBusqueda.DataSet.FieldByName('ID').AsInteger;
end;

function TfrmSeleccionarConceptosGastos.getCONCEPTO : string;
begin
   Result := dsBusqueda.DataSet.FieldByName('CONCEPTO').AsString;
end;

function TfrmSeleccionarConceptosGastos.getPORC : double;
begin
   Result := dsBusqueda.DataSet.FieldByName('PORC').AsFloat;
end;

function TfrmSeleccionarConceptosGastos.getAceptar : boolean;
begin
   Result := awrAceptar;
end;

procedure TfrmSeleccionarConceptosGastos.FormCreate(Sender: TObject);
begin
   awrDel  := '';
   ACEPTAR := false;
   //dgExplorar.IniFileName := ExtractFilePath(ParamStr(0))+'SeleccionarConceptosGastos.ini';
   //dgExplorar.LoadFromIniFile(ExtractFilePath(ParamStr(0))+'SeleccionarConceptosGastos.ini');
   Self.Left := 0;
   Self.Top  := 0;
   awrDataSet := nil;
end;

procedure TfrmSeleccionarConceptosGastos.buInicioClick(Sender: TObject);
begin
   if awrDataSet <> nil then
      awrDataSet.First
   else
      dgExplorar.DataSource.DataSet.First;
end;

procedure TfrmSeleccionarConceptosGastos.buAnteriorClick(Sender: TObject);
begin
   if awrDataSet <> nil then
      awrDataSet.Prior
   else
      dgExplorar.DataSource.DataSet.Prior;
end;

procedure TfrmSeleccionarConceptosGastos.buSiguienteClick(Sender: TObject);
begin
   if awrDataSet <> nil then
      awrDataSet.Next
   else
      dgExplorar.DataSource.DataSet.Next;
end;

procedure TfrmSeleccionarConceptosGastos.buFinClick(Sender: TObject);
begin
   if awrDataSet <> nil then
      awrDataSet.Last
   else
      dgExplorar.DataSource.DataSet.Last;
end;

procedure TfrmSeleccionarConceptosGastos.buTodosClick(Sender: TObject);
begin
  qyBusqueda.Close;
  qyBusqueda.SQL.Clear;
  qyBusqueda.SQL.Add(select);
  qyBusqueda.SQL.Add(from);
  qyBusqueda.SQL.Add(where);
  qyBusqueda.Open;
  dgExplorar.DataSource.DataSet.First;
end;

procedure TfrmSeleccionarConceptosGastos.buBusquedaClick(Sender: TObject);
begin
   buEjecutar.Click;
end;

procedure TfrmSeleccionarConceptosGastos.edDatoKeyPress(Sender: TObject;
  var Key: Char);
begin
   if (key = #13) and (edDato.Text <> '') then
      buEjecutar.Click;
end;

procedure TfrmSeleccionarConceptosGastos.buEjecutarClick(Sender: TObject);
var
   tmp : string;
begin
  qyBusqueda.Close;
  qyBusqueda.SQL.Clear;
  qyBusqueda.SQL.Add(select);
  qyBusqueda.SQL.Add(from);
  qyBusqueda.SQL.Add(where);
  edDato.Text := UpperCase(edDato.Text);
  tmp := 'AND UPPER('+buBusqueda.Caption+') LIKE "%'+edDato.Text+'%"';
  qyBusqueda.SQL.Add(tmp);
  qyBusqueda.Open;
  dgExplorar.DataSource.DataSet.First;
end;

procedure TfrmSeleccionarConceptosGastos.dgExplorarDblClick(
  Sender: TObject);
begin
   if not(qyBusqueda.IsEmpty) then
      ACEPTAR := true;
end;

procedure TfrmSeleccionarConceptosGastos.itemIDClick(Sender: TObject);
begin
   buBusqueda.Caption := 'ID';
end;

procedure TfrmSeleccionarConceptosGastos.itemCONCEPTOClick(
  Sender: TObject);
begin
   buBusqueda.Caption := 'CONCEPTO';
end;

procedure TfrmSeleccionarConceptosGastos.itemPORCClick(Sender: TObject);
begin
   buBusqueda.Caption := 'PORC';
end;

procedure TfrmSeleccionarConceptosGastos.ibSalirClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmSeleccionarConceptosGastos.sbDownClick(Sender: TObject);
var
   add   : boolean;
   valor : double;
   tmp   : string;
begin
   if awrDataSet <> nil then
   begin
      case awrCual of
         1 : begin
         {
                dataMonto.Entrada := '0.00';
                dataMonto.Execute;
                if dataMonto.Respuesta and (dataMonto.Entrada <> '') then
                begin
                   spAddPedimento.ParamByName('P_PEDIMENTO').AsInteger := PADRE;
                   spAddPedimento.ParamByName('P_GASTO').AsInteger     := ID;
                   spAddPedimento.ParamByName('P_MONTO').AsFloat       := StrToFloat(dataMonto.Entrada);
                   spAddPedimento.ParamByName('P_PORC').AsFloat        := PORC;
                   spAddPedimento.ExecProc;
                   spAddPedimento.Transaction.CommitRetaining;
                end;
                }
             end;
         2 : begin
                try
                   frmCostosPI := TfrmCostosPI.Create(Application);
                   if frmCostosPI.ShowModal = mrOk then
                   begin
                      spADD_SERVICIO.ParamByName('P_ID').AsInteger     := PADRE;
                      spADD_SERVICIO.ParamByName('P_CG').AsInteger     := ID;
                      spADD_SERVICIO.ParamByName('P_COSTO').AsFloat    := frmCostosPI.COSTO;
                      spADD_SERVICIO.ParamByName('P_PORC').AsFloat     := frmCostosPI.PORC;
                      spADD_SERVICIO.ParamByName('P_UTILIDAD').AsFloat := frmCostosPI.UTILIDAD;
                      spADD_SERVICIO.ParamByName('P_MONTO').AsFloat    := frmCostosPI.TOTAL;
                      spADD_SERVICIO.ExecProc;
                      spADD_SERVICIO.Transaction.CommitRetaining;
                   end;
                finally
                   frmCostosPI.Release;
                end;
             end;
         3 : begin
                try
                   frmCostosPI := TfrmCostosPI.Create(Application);
                   if frmCostosPI.ShowModal = mrOk then
                   begin
                      spADD_PP_EXTRA.ParamByName('P_ID').AsInteger     := PADRE;
                      spADD_PP_EXTRA.ParamByName('P_CG').AsInteger     := ID;
                      spADD_PP_EXTRA.ParamByName('P_COSTO').AsFloat    := frmCostosPI.COSTO;
                      spADD_PP_EXTRA.ParamByName('P_PORC').AsFloat     := frmCostosPI.PORC;
                      spADD_PP_EXTRA.ParamByName('P_UTILIDAD').AsFloat := frmCostosPI.UTILIDAD;
                      spADD_PP_EXTRA.ParamByName('P_MONTO').AsFloat    := frmCostosPI.TOTAL;
                      spADD_PP_EXTRA.ExecProc;
                      spADD_PP_EXTRA.Transaction.CommitRetaining;
                   end;
                finally
                   frmCostosPI.Release;
                end;
             end;
         4 : begin
                try
                   frmValor         := TfrmValor.Create(Application);
                   frmValor.TITULO  := 'Tarifa';
                   frmValor.ACTIVAR := true;
                   frmValor.ShowModal;
                   add   := frmValor.Result;
                   valor := frmValor.VALOR;
                   tmp   := frmValor.POR_PORC;
                finally
                   frmValor.Release;
                end;

                if add then
                begin
                   spA_TE_TARIFA.ParamByName('P_ID').AsInteger   := PADRE;
                   spA_TE_TARIFA.ParamByName('P_CG').AsInteger   := ID;
                   spA_TE_TARIFA.ParamByName('P_TARIFA').AsFloat := valor;
                   spA_TE_TARIFA.ParamByName('P_PORC').AsString  := tmp;
                   spA_TE_TARIFA.ExecProc;
                   spA_TE_TARIFA.Transaction.CommitRetaining;
                end;
             end;
      end;
      awrDataSet.Close;
      awrDataSet.Open;
      awrDataSet.Last;
   end;
end;

procedure TfrmSeleccionarConceptosGastos.sbUpClick(Sender: TObject);
begin
   if awrDel <> '' then
   begin
      spDel.ParamByName('P_ID').AsInteger := awrDataSet.FieldByName('R_ID').AsInteger;
      spDel.ExecProc;
      spDel.Transaction.CommitRetaining;
      awrDataSet.Close;
      awrDataSet.Open;
   end;
end;

end.
