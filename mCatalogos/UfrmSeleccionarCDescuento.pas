unit UfrmSeleccionarCDescuento;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, Db, IBCustomDataSet, IBQuery, IBDatabase,
   ExtCtrls,
  StdCtrls, Mask, DBCtrls,  IBStoredProc,  Buttons,
  Grids, DBGrids;

type
  TfrmSeleccionarCDescuento = class(TForm)
    IBDatabase1: TIBDatabase;
    IBTransaction1: TIBTransaction;
    dsBusqueda: TDataSource;
    qyBusqueda: TIBQuery;
    pmCampos: TPopupMenu;
    itemID: TMenuItem;
    itemCLAVE: TMenuItem;
    itemDESCRIPCION: TMenuItem;
    paBusqueda: TPanel;
    buBusqueda: TBitBtn;
    buEjecutar: TBitBtn;
    buTodos: TBitBtn;
    edDato: TEdit;
    dgExplorar: TDBGrid;
    qyBusquedaID: TIntegerField;
    qyBusquedaCLAVE: TIBStringField;
    qyBusquedaDESCRIPCION: TIBStringField;
    qyBusquedaDESCUENTO_PORC: TFloatField;
    spAdd: TIBStoredProc;
    sbHijo: TPanel;
    deID: TDBEdit;
    buInicio: TBitBtn;
    buAnterior: TBitBtn;
    buSiguiente: TBitBtn;
    buFin: TBitBtn;
    ibSalir: TBitBtn;
    sbUp: TBitBtn;
    sbDown: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure buInicioClick(Sender: TObject);
    procedure buAnteriorClick(Sender: TObject);
    procedure buSiguienteClick(Sender: TObject);
    procedure buFinClick(Sender: TObject);
    procedure ibSalirClick(Sender: TObject);
    procedure buTodosClick(Sender: TObject);
    procedure buBusquedaClick(Sender: TObject);
    procedure buEjecutarClick(Sender: TObject);
    procedure edDatoKeyPress(Sender: TObject; var Key: Char);
    procedure itemIDClick(Sender: TObject);
    procedure itemCLAVEClick(Sender: TObject);
    procedure itemDESCRIPCIONClick(Sender: TObject);
    procedure sbDownClick(Sender: TObject);
    procedure dgExplorarDblClick(Sender: TObject);
    procedure dgExplorarKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dsBusquedaDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
    awrAceptar : boolean;
    awrPadre   : integer;
    awrDataSet : TDataSet;
    procedure setDatabase(valor : TIBDatabase);
    procedure setTransaction(valor : TIBTransaction);
    procedure setAceptar(valor : boolean);
    procedure setCLAVE(valor : string);
    procedure setPANTALLA(valor : TWindowState);
    procedure setX(valor : TPoint);
    procedure setY(valor : TPoint);
    procedure AddSProc(valor : string);

    function getAceptar : boolean;
    function getID : integer;
    function getCLAVE : string;
    function getDESCRIPCION : string;
    function getFACTOR : double;
  public
    { Public declarations }
    function abrirConsulta : boolean;
  published
     property DATABASE     : TIBDatabase write setDatabase;
     property TRANSACTION  : TIBTransaction write setTransaction;
     property ACEPTAR      : boolean read getAceptar write setAceptar;
     property ID           : integer read getID;
     property CLAVE        : string read getCLAVE write setCLAVE;
     property DESCRIPCION  : string read getDESCRIPCION;
     property FACTOR       : double read getFACTOR;
     property PANTALLA     : TWindowState write setPANTALLA;
     property X            : TPoint write setX;
     property Y            : TPoint write setY;
     //para que funcione esta parte el awrDataSet debera ser diferente de nil;
     property DATASET      : TDataSet read awrDataSet write awrDataSet;
     property PADRE        : integer read awrPadre write awrPadre;
     property NameAddSProc : string write AddSProc;
  end;

var
  frmSeleccionarCDescuento: TfrmSeleccionarCDescuento;

implementation

{$R *.DFM}

const
   select = 'SELECT D.ID, D.CLAVE, D.DESCRIPCION, D.DESCUENTO_PORC';
   from   = 'FROM CONCEPTOS_DESCUENTOS_NC D';

function TfrmSeleccionarCDescuento.abrirConsulta : boolean;
var
   tmp : boolean;
begin
   tmp := true;
   if edDato.Text <> '' then
   begin
      buBusqueda.Caption := 'D.CLAVE';
      edDato.Text        := UpperCase(edDato.Text);
      buEjecutar.Click;

      if not(qyBusqueda.IsEmpty) and (dgExplorar.DataSource.DataSet.RecordCount = 1) then
      begin
         tmp := false;
      end
      else
      if (qyBusqueda.IsEmpty) then
      begin
         buBusqueda.Caption := 'D.DESCRIPCION';
         buEjecutar.Click;
         if not(qyBusqueda.IsEmpty) and (dgExplorar.DataSource.DataSet.RecordCount = 1) then
         begin
            tmp := false;
         end;
      end;
   end;

   Result := tmp;
end;

procedure TfrmSeleccionarCDescuento.setX(valor : TPoint);
begin
   if Self.WindowState = wsNormal then
   begin
      Self.Left := valor.x;
      Self.Top  := valor.y;
   end;
end;

procedure TfrmSeleccionarCDescuento.setY(valor : TPoint);
begin
   if Self.WindowState = wsNormal then
   begin
      Self.Width  := valor.x;
      Self.Height := valor.y;
   end;
end;

procedure TfrmSeleccionarCDescuento.setPANTALLA(valor : TWindowState);
begin
   frmSeleccionarCDescuento.WindowState := valor;
end;

procedure TfrmSeleccionarCDescuento.AddSProc(valor : string);
begin
   spAdd.StoredProcName := valor;
   spAdd.Params.CreateParam(ftInteger,'P_PADRE',ptInput);
   spAdd.Params.CreateParam(ftInteger,'P_ID',ptInput);
   spAdd.Params.CreateParam(ftFloat  ,'P_FACTOR',ptInput);
end;

procedure TfrmSeleccionarCDescuento.setDatabase(valor : TIBDatabase);
begin
   qyBusqueda.Database := valor;
   spAdd.Database      := valor;
end;

procedure TfrmSeleccionarCDescuento.setTransaction(valor : TIBTransaction);
begin
   qyBusqueda.Transaction := valor;
   spAdd.Transaction      := valor;
end;

procedure TfrmSeleccionarCDescuento.setAceptar(valor : boolean);
begin
   awrAceptar := valor;
   if awrAceptar then
      Close;
end;

function TfrmSeleccionarCDescuento.getFACTOR : double;
begin
   Result := dsBusqueda.DataSet.FieldByName('DESCUENTO_PORC').AsFloat;
end;

function TfrmSeleccionarCDescuento.getID : integer;
begin
   Result := dsBusqueda.DataSet.FieldByName('ID').AsInteger;
end;

function TfrmSeleccionarCDescuento.getDESCRIPCION : string;
begin
   Result := dsBusqueda.DataSet.FieldByName('DESCRIPCION').AsString;
end;

function TfrmSeleccionarCDescuento.getAceptar : boolean;
begin
   Result := awrAceptar;
end;

procedure TfrmSeleccionarCDescuento.setCLAVE(valor : string);
begin
   edDato.Text := valor;
end;

function TfrmSeleccionarCDescuento.getCLAVE : string;
begin
   Result := dsBusqueda.DataSet.FieldByName('CLAVE').AsString;
end;

procedure TfrmSeleccionarCDescuento.FormCreate(Sender: TObject);
begin
   ACEPTAR := false;
//   dgExplorar.IniFileName := ExtractFilePath(ParamStr(0))+'\SeleccionarCDescuento.ini';
//   dgExplorar.LoadFromIniFile(ExtractFilePath(ParamStr(0))+'\SeleccionarCDescuento.ini');
   Self.Left := 0;
   Self.Top  := 0;
   awrDataSet := nil;
end;

procedure TfrmSeleccionarCDescuento.buInicioClick(Sender: TObject);
begin
   dgExplorar.DataSource.DataSet.First;
end;

procedure TfrmSeleccionarCDescuento.buAnteriorClick(Sender: TObject);
begin
   dgExplorar.DataSource.DataSet.Prior;
end;

procedure TfrmSeleccionarCDescuento.buSiguienteClick(Sender: TObject);
begin
   dgExplorar.DataSource.DataSet.Next;
end;

procedure TfrmSeleccionarCDescuento.buFinClick(Sender: TObject);
begin
   dgExplorar.DataSource.DataSet.Last;
end;

procedure TfrmSeleccionarCDescuento.ibSalirClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmSeleccionarCDescuento.buTodosClick(Sender: TObject);
begin
  qyBusqueda.Close;
  qyBusqueda.SQL.Clear;
  qyBusqueda.SQL.Add(select);
  qyBusqueda.SQL.Add(from);
  qyBusqueda.Open;
  dgExplorar.DataSource.DataSet.First;
end;

procedure TfrmSeleccionarCDescuento.buBusquedaClick(Sender: TObject);
begin
  buEjecutar.Click;
end;

procedure TfrmSeleccionarCDescuento.buEjecutarClick(Sender: TObject);
var
   tmp : string;
begin
  qyBusqueda.Close;
  qyBusqueda.SQL.Clear;
  qyBusqueda.SQL.Add(select);
  qyBusqueda.SQL.Add(from);
  edDato.Text := UpperCase(edDato.Text);
  tmp := 'WHERE UPPER('+buBusqueda.Caption+') LIKE "%'+edDato.Text+'%"';
  qyBusqueda.SQL.Add(tmp);
  qyBusqueda.Open;
  dgExplorar.DataSource.DataSet.First;
end;

procedure TfrmSeleccionarCDescuento.edDatoKeyPress(Sender: TObject;
  var Key: Char);
begin
   if (key = #13) and (edDato.Text <> '') then
      buEjecutar.Click;
end;

procedure TfrmSeleccionarCDescuento.itemIDClick(Sender: TObject);
begin
   buBusqueda.Caption := 'D.ID';
end;

procedure TfrmSeleccionarCDescuento.itemCLAVEClick(Sender: TObject);
begin
   buBusqueda.Caption := 'D.CLAVE';
end;

procedure TfrmSeleccionarCDescuento.itemDESCRIPCIONClick(Sender: TObject);
begin
   buBusqueda.Caption := 'D.DESCRIPCION';
end;

procedure TfrmSeleccionarCDescuento.sbDownClick(Sender: TObject);
begin
{
   if awrDataSet <> nil then
   begin
      dataMonto.Entrada := dsBusqueda.DataSet.FieldByName('DESCUENTO_PORC').AsString;
      dataMonto.Execute;
      if dataMonto.Respuesta and (dataMonto.Entrada <> '') then
      begin
         spAdd.ParamByName('P_PADRE').AsInteger := PADRE;
         spAdd.ParamByName('P_ID').AsInteger    := ID;
         spAdd.ParamByName('P_FACTOR').AsFloat  := FACTOR;
         spAdd.ExecProc;
         spAdd.Transaction.CommitRetaining;

         awrDataSet.Close;
         awrDataSet.Open;
         awrDataSet.Last;
      end;
   end;
   }
end;

procedure TfrmSeleccionarCDescuento.dgExplorarDblClick(Sender: TObject);
begin
   if not(qyBusqueda.IsEmpty) and (Self.WindowState = wsMaximized)  then
      ACEPTAR := true;
end;

procedure TfrmSeleccionarCDescuento.dgExplorarKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if (key = 13) and not(qyBusqueda.IsEmpty) and (Self.WindowState = wsMaximized) then
      ACEPTAR := true;
end;

procedure TfrmSeleccionarCDescuento.dsBusquedaDataChange(Sender: TObject;
  Field: TField);
begin
   if dsBusqueda.DataSet <> nil then
   begin
      sbDown.Enabled := not(qyBusqueda.IsEmpty);
   end;
end;

end.
