unit UfrmSeleccionarUsuario;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,

   ExtCtrls,
  StdCtrls, Mask, DBCtrls,  Menus, Db, IBCustomDataSet,
  IBQuery, IBDatabase, Grids, DBGrids, Buttons;

type
  TfrmSeleccionarUsuario = class(TForm)
    IBDatabase1: TIBDatabase;
    IBTransaction1: TIBTransaction;
    dsBusqueda: TDataSource;
    qyBusqueda: TIBQuery;
    pmCampos: TPopupMenu;
    SCID1: TMenuItem;
    itemNOMBRE: TMenuItem;
    paBusqueda: TPanel;
    buBusqueda: TBitBtn;
    buEjecutar: TBitBtn;
    buTodos: TBitBtn;
    edDato: TEdit;
    dgExplorar: TDBGrid;
    qyBusquedaID: TIntegerField;
    qyBusquedaNOMBRE: TIBStringField;
    qyBusquedaUSUARIO: TIBStringField;
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
    procedure ibSalirClick(Sender: TObject);
    procedure dgExplorarKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure buTodosClick(Sender: TObject);
    procedure buBusquedaClick(Sender: TObject);
    procedure edDatoKeyPress(Sender: TObject; var Key: Char);
    procedure buEjecutarClick(Sender: TObject);
    procedure dgExplorarDblClick(Sender: TObject);
    procedure SCID1Click(Sender: TObject);
    procedure itemNOMBREClick(Sender: TObject);
  private
    { Private declarations }
    BAceptar : boolean;
    procedure setDatabase(valor : TIBDatabase);
    procedure setTransaction(valor : TIBTransaction);
    procedure setAceptar(valor : boolean);
    procedure setBusqueda(valor : string);

    function getID : integer;
    function getNOMBRE : string;
    function getAceptar : boolean;
  public
    { Public declarations }
    function abrirConsulta : boolean;
  published
     property DATABASE    : TIBDatabase write setDatabase;
     property TRANSACTION : TIBTransaction write setTransaction;
     property ID          : integer read getID;
     property NOMBRE      : string read getNOMBRE;
     property ACEPTAR     : boolean read getAceptar write setAceptar;
     property BUSQUEDA    : string write setBusqueda;
  end;

var
  frmSeleccionarUsuario: TfrmSeleccionarUsuario;

implementation

{$R *.DFM}

const
   select = 'SELECT SU.ID, SU.USUARIO, S.NOMBRE';
   from   = 'FROM SUJETOS_USUARIOS SU, SUJETOS S';
   where  = 'WHERE (SU.SUJETO = S.ID) AND (SU.ID > 0)';

procedure TfrmSeleccionarUsuario.setBusqueda(valor : string);
begin
   edDato.Text := valor;
end;

procedure TfrmSeleccionarUsuario.setDatabase(valor : TIBDatabase);
begin
   qyBusqueda.Database := valor;
end;

procedure TfrmSeleccionarUsuario.setTransaction(valor : TIBTransaction);
begin
   qyBusqueda.Transaction := valor;
end;

procedure TfrmSeleccionarUsuario.setAceptar(valor : boolean);
begin
   BAceptar := valor;
   if BAceptar then
      Close;
end;

function TfrmSeleccionarUsuario.getID : integer;
begin
   Result := dsBusqueda.DataSet.FieldByName('ID').AsInteger;
end;

function TfrmSeleccionarUsuario.getNOMBRE : string;
begin
   Result :=  dsBusqueda.DataSet.FieldByName('NOMBRE').AsString;
end;

function TfrmSeleccionarUsuario.getAceptar : boolean;
begin
   Result := BAceptar;
end;

function TfrmSeleccionarUsuario.abrirConsulta : boolean;
var
   tmp : boolean;
begin
   tmp := false;
   if edDato.Text <> '' then
   begin
      try
         qyBusqueda.Close;
         qyBusqueda.SQL.Clear;
         qyBusqueda.SQL.Add(select);
         qyBusqueda.SQL.Add(from);
         qyBusqueda.SQL.Add(where);
         qyBusqueda.SQL.Add('AND SU.ID  = '+edDato.Text);
         qyBusqueda.Open;
         if qyBusqueda.IsEmpty then
         begin
            buEjecutar.Click;
            if (dgExplorar.DataSource.DataSet.RecordCount = 0) or (dgExplorar.DataSource.DataSet.RecordCount > 1) then
               tmp := true;
         end;
      except
         buEjecutar.Click;
         if (dgExplorar.DataSource.DataSet.RecordCount = 0) or (dgExplorar.DataSource.DataSet.RecordCount > 1) then
            tmp := true;
      end;
   end
   else
      tmp := true;
   Result := tmp;
end;

procedure TfrmSeleccionarUsuario.FormCreate(Sender: TObject);
begin
   ACEPTAR := false;
   {
   dgExplorar.IniFileName := ExtractFilePath(ParamStr(0))+'\SeleccionarUsuario.ini';
   dgExplorar.LoadFromIniFile(ExtractFilePath(ParamStr(0))+'\SeleccionarUsuario.ini');
   }
end;

procedure TfrmSeleccionarUsuario.buInicioClick(Sender: TObject);
begin
   dgExplorar.DataSource.DataSet.First;
end;

procedure TfrmSeleccionarUsuario.buAnteriorClick(Sender: TObject);
begin
   dgExplorar.DataSource.DataSet.Prior;
end;

procedure TfrmSeleccionarUsuario.buSiguienteClick(Sender: TObject);
begin
  dgExplorar.DataSource.DataSet.Next
end;

procedure TfrmSeleccionarUsuario.buFinClick(Sender: TObject);
begin
  dgExplorar.DataSource.DataSet.Last;
end;

procedure TfrmSeleccionarUsuario.ibSalirClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmSeleccionarUsuario.dgExplorarKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if (key = 13) and not(qyBusqueda.IsEmpty) then
      ACEPTAR := true;
end;

procedure TfrmSeleccionarUsuario.buTodosClick(Sender: TObject);
begin
  qyBusqueda.Close;
  qyBusqueda.SQL.Clear;
  qyBusqueda.SQL.Add(select);
  qyBusqueda.SQL.Add(from);
  qyBusqueda.SQL.Add(where);
  qyBusqueda.Open;
  dgExplorar.DataSource.DataSet.First;
end;

procedure TfrmSeleccionarUsuario.buBusquedaClick(Sender: TObject);
begin
   buEjecutar.Click;
end;

procedure TfrmSeleccionarUsuario.edDatoKeyPress(Sender: TObject;
  var Key: Char);
begin
   if (key = #13) and (edDato.Text <> '') then
      buEjecutar.Click;
end;

procedure TfrmSeleccionarUsuario.buEjecutarClick(Sender: TObject);
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

procedure TfrmSeleccionarUsuario.dgExplorarDblClick(Sender: TObject);
begin
   if not(qyBusqueda.IsEmpty) then
      ACEPTAR := true;
end;

procedure TfrmSeleccionarUsuario.SCID1Click(Sender: TObject);
begin
   buBusqueda.Caption := 'SP.ID';
end;

procedure TfrmSeleccionarUsuario.itemNOMBREClick(Sender: TObject);
begin
  buBusqueda.Caption := 'S.NOMBRE';
end;

end.
