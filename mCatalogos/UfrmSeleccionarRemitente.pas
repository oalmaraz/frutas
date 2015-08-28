unit UfrmSeleccionarRemitente;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
       StdCtrls, Mask, DBCtrls,
   ExtCtrls,  Menus, Db, IBCustomDataSet, IBQuery,
  IBDatabase, Buttons, Grids, DBGrids;

type
  TfrmSeleccionarRemitente = class(TForm)
    IBDatabase1: TIBDatabase;
    IBTransaction1: TIBTransaction;
    qyBusqueda: TIBQuery;
    dsBusqueda: TDataSource;
    pmCampos: TPopupMenu;
    SCID1: TMenuItem;
    itemCLAVE: TMenuItem;
    itemNOMBRE: TMenuItem;
    itemDIRECCION: TMenuItem;
    itemCIUDAD: TMenuItem;
    paBusqueda: TPanel;
    buBusqueda: TBitBtn;
    buEjecutar: TBitBtn;
    buTodos: TBitBtn;
    edDato: TEdit;
    dgExplorar: TDBGrid;
    qyBusquedaID: TIntegerField;
    qyBusquedaCLAVE: TIBStringField;
    qyBusquedaNOMBRE: TIBStringField;
    qyBusquedaCALLE: TIBStringField;
    qyBusquedaNUM_EXT: TIBStringField;
    qyBusquedaLETRA: TIBStringField;
    qyBusquedaNUM_INT: TIBStringField;
    qyBusquedaCOLONIA: TIBStringField;
    qyBusquedaCIUDAD: TIBStringField;
    qyBusquedaESTADO: TIBStringField;
    qyBusquedaPAIS: TIBStringField;
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
    procedure buTodosClick(Sender: TObject);
    procedure buEjecutarClick(Sender: TObject);
    procedure edDatoKeyPress(Sender: TObject; var Key: Char);
    procedure buBusquedaClick(Sender: TObject);
    procedure dgExplorarDblClick(Sender: TObject);
    procedure dgExplorarKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure buInicioClick(Sender: TObject);
    procedure buAnteriorClick(Sender: TObject);
    procedure buSiguienteClick(Sender: TObject);
    procedure buFinClick(Sender: TObject);
    procedure ibSalirClick(Sender: TObject);
    procedure SCID1Click(Sender: TObject);
    procedure itemCLAVEClick(Sender: TObject);
    procedure itemNOMBREClick(Sender: TObject);
    procedure itemDIRECCIONClick(Sender: TObject);
    procedure itemCIUDADClick(Sender: TObject);
  private
    { Private declarations }
    awrAceptar : boolean;
    procedure setCLAVE(valor : string);
    procedure setDatabase(valor : TIBDatabase);
    procedure setTransaction(valor : TIBTransaction);
    procedure setAceptar(valor : boolean);

    function getID : integer;
    function getCLAVE : string;
    function getNOMBRE : string;
    function getAceptar : boolean;
  public
    { Public declarations }
    function abrirConsulta : boolean;
  published
     property DATABASE     : TIBDatabase write setDatabase;
     property TRANSACTION  : TIBTransaction write setTransaction;
     property ID           : integer read getID;
     property CLAVE        : string read getCLAVE write setCLAVE;
     property NOMBRE       : string read getNOMBRE;
     property ACEPTAR      : boolean read getAceptar write setAceptar;
  end;

var
  frmSeleccionarRemitente: TfrmSeleccionarRemitente;

implementation

{$R *.DFM}

const
   select1  = 'SELECT SR.ID,';
   select2  = 'S.CLAVE,';
   select3  = 'S.NOMBRE,';
   select4  = 'D.CALLE,';
   select5  = 'D.NUM_EXT,';
   select6  = 'D.LETRA,';
   select7  = 'D.NUM_INT,';
   select8  = 'D.COLONIA,';
   select9  = 'EG.DESCRIPCION CIUDAD,';
   select10 = 'E2.DESCRIPCION ESTADO,';
   select11 = 'E3.DESCRIPCION PAIS';
   from1    = 'FROM (SUJETOS_REMITENTES SR LEFT JOIN SUJETOS S ON SR.SUJETO = S.ID)';
   from2    = 'LEFT JOIN DOMICILIOS D ON S.DOMICILIO = D.ID';
   from3    = 'LEFT JOIN ENTIDAD_GEOGRAFICA EG ON D.CIUDAD = EG.ID';
   from4    = 'LEFT JOIN ENTIDAD_GEOGRAFICA E2 ON EG.LINK  = E2.ID';
   from5    = 'LEFT JOIN ENTIDAD_GEOGRAFICA E3 ON E2.LINK  = E3.ID';

function TfrmSeleccionarRemitente.abrirConsulta : boolean;
var
   tmp : boolean;
begin
   tmp := false;
   if edDato.Text <> '' then
   begin
      qyBusqueda.Close;
      qyBusqueda.SQL.Clear;
      qyBusqueda.SQL.Add(select1);
      qyBusqueda.SQL.Add(select2);
      qyBusqueda.SQL.Add(select3);
      qyBusqueda.SQL.Add(select4);
      qyBusqueda.SQL.Add(select5);
      qyBusqueda.SQL.Add(select6);
      qyBusqueda.SQL.Add(select7);
      qyBusqueda.SQL.Add(select8);
      qyBusqueda.SQL.Add(select9);
      qyBusqueda.SQL.Add(select10);
      qyBusqueda.SQL.Add(select11);
      qyBusqueda.SQL.Add(from1);
      qyBusqueda.SQL.Add(from2);
      qyBusqueda.SQL.Add(from3);
      qyBusqueda.SQL.Add(from4);
      qyBusqueda.SQL.Add(from5);
      qyBusqueda.SQL.Add('WHERE S.CLAVE  LIKE "%'+edDato.Text+'%"');
      qyBusqueda.Open;

      if qyBusqueda.IsEmpty then
      begin
         buEjecutar.Click;
         if (dgExplorar.DataSource.DataSet.RecordCount = 0) or (dgExplorar.DataSource.DataSet.RecordCount > 1) then
            tmp := true
         else
            ACEPTAR := true;//sirver para buscar el domicilio y la ciudad
      end
      else
         ACEPTAR := true;//sirver para buscar el domicilio y la ciudad
   end
   else
      tmp := true;
   Result := tmp;
end;

procedure TfrmSeleccionarRemitente.setDatabase(valor : TIBDatabase);
begin
   qyBusqueda.Database  := valor;
end;

procedure TfrmSeleccionarRemitente.setTransaction(valor : TIBTransaction);
begin
   qyBusqueda.Transaction  := valor;
end;

function TfrmSeleccionarRemitente.getID : integer;
begin
   Result := dsBusqueda.DataSet.FieldByName('ID').AsInteger;
end;

procedure TfrmSeleccionarRemitente.setCLAVE(valor : string);
begin
   edDato.Text := valor;
end;

function TfrmSeleccionarRemitente.getCLAVE : string;
begin
   Result := dsBusqueda.DataSet.FieldByName('CLAVE').AsString;
end;

function TfrmSeleccionarRemitente.getNOMBRE : string;
begin
   Result := dsBusqueda.DataSet.FieldByName('NOMBRE').AsString;
end;

function TfrmSeleccionarRemitente.getAceptar : boolean;
begin
   Result := awrAceptar;
end;

procedure TfrmSeleccionarRemitente.setAceptar(valor : boolean);
begin
   awrAceptar := valor;
   if awrAceptar then
   begin
      //se cierra la forma al acepar al cliente seleccionado
      Close;
   end;
end;

procedure TfrmSeleccionarRemitente.FormCreate(Sender: TObject);
begin
   ACEPTAR := false;
//   dgExplorar.IniFileName := ExtractFilePath(ParamStr(0))+'\SeleccionarRemitente.ini';
//   dgExplorar.LoadFromIniFile(ExtractFilePath(ParamStr(0))+'\SeleccionarRemitente.ini');
end;

procedure TfrmSeleccionarRemitente.buTodosClick(Sender: TObject);
begin
  qyBusqueda.Close;
  qyBusqueda.SQL.Clear;
  qyBusqueda.SQL.Add(select1);
  qyBusqueda.SQL.Add(select2);
  qyBusqueda.SQL.Add(select3);
  qyBusqueda.SQL.Add(select4);
  qyBusqueda.SQL.Add(select5);
  qyBusqueda.SQL.Add(select6);
  qyBusqueda.SQL.Add(select7);
  qyBusqueda.SQL.Add(select8);
  qyBusqueda.SQL.Add(select9);
  qyBusqueda.SQL.Add(select10);
  qyBusqueda.SQL.Add(select11);
  qyBusqueda.SQL.Add(from1);
  qyBusqueda.SQL.Add(from2);
  qyBusqueda.SQL.Add(from3);
  qyBusqueda.SQL.Add(from4);
  qyBusqueda.SQL.Add(from5);
  qyBusqueda.Open;
  dgExplorar.DataSource.DataSet.First;
end;

procedure TfrmSeleccionarRemitente.buEjecutarClick(Sender: TObject);
var
   tmp : string;
begin
  qyBusqueda.Close;
  qyBusqueda.SQL.Clear;
  qyBusqueda.SQL.Add(select1);
  qyBusqueda.SQL.Add(select2);
  qyBusqueda.SQL.Add(select3);
  qyBusqueda.SQL.Add(select4);
  qyBusqueda.SQL.Add(select5);
  qyBusqueda.SQL.Add(select6);
  qyBusqueda.SQL.Add(select7);
  qyBusqueda.SQL.Add(select8);
  qyBusqueda.SQL.Add(select9);
  qyBusqueda.SQL.Add(select10);
  qyBusqueda.SQL.Add(select11);
  qyBusqueda.SQL.Add(from1);
  qyBusqueda.SQL.Add(from2);
  qyBusqueda.SQL.Add(from3);
  qyBusqueda.SQL.Add(from4);
  qyBusqueda.SQL.Add(from5);
  edDato.Text := UpperCase(edDato.Text);
  tmp := 'WHERE UPPER('+buBusqueda.Caption+') LIKE "%'+edDato.Text+'%"';
  qyBusqueda.SQL.Add(tmp);
  qyBusqueda.Open;
  dgExplorar.DataSource.DataSet.First;
end;

procedure TfrmSeleccionarRemitente.edDatoKeyPress(Sender: TObject;
  var Key: Char);
begin
   if (key = #13) and (edDato.Text <> '') then
      buEjecutar.Click;
end;

procedure TfrmSeleccionarRemitente.buBusquedaClick(Sender: TObject);
begin
   buEjecutar.Click;
end;

procedure TfrmSeleccionarRemitente.dgExplorarDblClick(Sender: TObject);
begin
   if not(qyBusqueda.IsEmpty) then
      ACEPTAR := true;
end;

procedure TfrmSeleccionarRemitente.dgExplorarKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if (key = 13) and not(qyBusqueda.IsEmpty) then
      ACEPTAR := true;
end;

procedure TfrmSeleccionarRemitente.buInicioClick(Sender: TObject);
begin
   dgExplorar.DataSource.DataSet.First;
end;

procedure TfrmSeleccionarRemitente.buAnteriorClick(Sender: TObject);
begin
   dgExplorar.DataSource.DataSet.Prior;
end;

procedure TfrmSeleccionarRemitente.buSiguienteClick(Sender: TObject);
begin
   dgExplorar.DataSource.DataSet.Next
end;

procedure TfrmSeleccionarRemitente.buFinClick(Sender: TObject);
begin
   dgExplorar.DataSource.DataSet.Last;
end;

procedure TfrmSeleccionarRemitente.ibSalirClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmSeleccionarRemitente.SCID1Click(Sender: TObject);
begin
   buBusqueda.Caption := 'SR.ID';
end;

procedure TfrmSeleccionarRemitente.itemCLAVEClick(Sender: TObject);
begin
   buBusqueda.Caption := 'S.CLAVE';
end;

procedure TfrmSeleccionarRemitente.itemNOMBREClick(Sender: TObject);
begin
   buBusqueda.Caption := 'S.NOMBRE';
end;

procedure TfrmSeleccionarRemitente.itemDIRECCIONClick(Sender: TObject);
begin
   buBusqueda.Caption := 'D.CALLE';
end;

procedure TfrmSeleccionarRemitente.itemCIUDADClick(Sender: TObject);
begin
   buBusqueda.Caption := 'EG.DESCRIPCION';
end;

end.


