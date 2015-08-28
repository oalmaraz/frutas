unit UfrmSeleccionarTEntrega;

interface

uses
  USqlAnaliza, Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, Db, IBCustomDataSet, IBQuery, IBDatabase,
  IBStoredProc, Grids, DBGrids, Buttons, Mask, DBCtrls, StdCtrls, ExtCtrls;

type
  TfrmSeleccionarTEntrega = class(TForm)
    IBDatabase1: TIBDatabase;
    IBTransaction1: TIBTransaction;
    qyBusqueda: TIBQuery;
    dsBusqueda: TDataSource;
    pmCampos: TPopupMenu;
    itemID: TMenuItem;
    itemDESCRIPCION: TMenuItem;
    paBusqueda: TPanel;
    buBusqueda: TBitBtn;
    buEjecutar: TBitBtn;
    buTodos: TBitBtn;
    edDato: TEdit;
    dgExplorar: TDBGrid;
    qyBusquedaID: TIntegerField;
    qyBusquedaDESCRIPCION: TIBStringField;
    qyBusquedaPESO: TFloatField;
    qyBusquedaTARIFA: TFloatField;
    qyBusquedaUNIDAD: TIBStringField;
    qyBusquedaMONEDA: TIBStringField;
    qyBusquedaTRANSPORTISTA: TIBStringField;
    itemTRANSPORTISTA: TMenuItem;
    spA_Z_TE: TIBStoredProc;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    buInicio: TBitBtn;
    buAnterior: TBitBtn;
    buFin: TBitBtn;
    buSiguiente: TBitBtn;
    ibSalir: TBitBtn;
    deID: TDBEdit;
    procedure buBusquedaClick(Sender: TObject);
    procedure buEjecutarClick(Sender: TObject);
    procedure buTodosClick(Sender: TObject);
    procedure dgExplorarKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ibSalirClick(Sender: TObject);
    procedure buInicioClick(Sender: TObject);
    procedure buAnteriorClick(Sender: TObject);
    procedure buSiguienteClick(Sender: TObject);
    procedure buFinClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure itemIDClick(Sender: TObject);
    procedure itemDESCRIPCIONClick(Sender: TObject);
    procedure itemTRANSPORTISTAClick(Sender: TObject);
    procedure edDatoKeyPress(Sender: TObject; var Key: Char);
    procedure sbDownClick(Sender: TObject);
  private
    { Private declarations }
    sqlSelec   : TSqlAnaliza;
    awrAceptar : boolean;
    awrDataSet : TDataSet;
    awrCual    : integer;
    awrPadre   : integer;
    procedure setDatabase(valor : TIBDatabase);
    procedure setTransaction(valor : TIBTransaction);
    procedure setAceptar(valor : boolean);
    procedure setX(valor : TPoint);
    procedure setY(valor : TPoint);

    function getAceptar : boolean;
  public
    { Public declarations }
    function abrirConsulta : boolean;
    function abrir : boolean;
  published
     property DATABASE     : TIBDatabase write setDatabase;
     property TRANSACTION  : TIBTransaction write setTransaction;
     property ACEPTAR      : boolean read getAceptar write setAceptar;
     property X : TPoint write setX;
     property Y : TPoint write setY;
     //para que funcione esta parte el awrDataSet debera ser diferente de nil;
     property DATASET      : TDataSet read awrDataSet write awrDataSet;
     property CUALSPROC    : integer read awrCual write awrCual;
     property PADRE        : integer read awrPadre write awrPadre;
  end;

var
  frmSeleccionarTEntrega: TfrmSeleccionarTEntrega;

implementation

{$R *.DFM}

procedure TfrmSeleccionarTEntrega.setTransaction(valor : TIBTransaction);
begin
   qyBusqueda.Transaction   := valor;
   sqlSelec.Transaction     := valor;
   spA_Z_TE.Transaction     := valor;

   sqlSelec.AddStrings(qyBusqueda.SQL);
end;

procedure TfrmSeleccionarTEntrega.setDatabase(valor : TIBDatabase);
begin
   qyBusqueda.Database   := valor;
   sqlSelec.DataBase     := valor;
   spA_Z_TE.DataBase     := valor;
end;

procedure TfrmSeleccionarTEntrega.setX(valor : TPoint);
begin
   if Self.WindowState = wsNormal then
   begin
      Self.Left := valor.x;
      Self.Top  := valor.y;
   end;
end;

procedure TfrmSeleccionarTEntrega.setY(valor : TPoint);
begin
   if Self.WindowState = wsNormal then
   begin
      Self.Width  := valor.x;
      Self.Height := valor.y;
   end;
end;

procedure TfrmSeleccionarTEntrega.setAceptar(valor : boolean);
begin
   awrAceptar := valor;
   if awrAceptar then
      Close;
end;

function TfrmSeleccionarTEntrega.getAceptar : boolean;
begin
   Result := awrAceptar;
end;

function TfrmSeleccionarTEntrega.abrir : boolean;
var
   tmp : boolean;
begin
   tmp := true;
   if edDato.Text <> '' then
   begin
      edDato.Text := UpperCase(edDato.Text);
      buEjecutar.Click;

      if not(qyBusqueda.IsEmpty) and (dgExplorar.DataSource.DataSet.RecordCount = 1) then
         tmp := false
   end;

   Result := tmp;
end;

function TfrmSeleccionarTEntrega.abrirConsulta : boolean;
var
   tmp : boolean;
begin
   tmp := true;
   if edDato.Text <> '' then
   begin
      buBusqueda.Caption := 'S.CLAVE';
      edDato.Text        := UpperCase(edDato.Text);
      buEjecutar.Click;

      if not(qyBusqueda.IsEmpty) and (dgExplorar.DataSource.DataSet.RecordCount = 1) then
         tmp := false
     else
        if (qyBusqueda.IsEmpty) then
        begin
           buBusqueda.Caption := 'S.NOMBRE';
           buEjecutar.Click;
           if not(qyBusqueda.IsEmpty) and (dgExplorar.DataSource.DataSet.RecordCount = 1) then
              tmp := false;
        end;
   end;

   Result := tmp;
end;

procedure TfrmSeleccionarTEntrega.buBusquedaClick(Sender: TObject);
begin
   buEjecutar.Click;
end;

procedure TfrmSeleccionarTEntrega.buEjecutarClick(Sender: TObject);
var
  vLogica    : string;
  vCampo     : string;
//  vFecha     : TDatetime;
  vSentencia : string;
  vParam     : string;
  i, j       : integer;
  tmp        : string;
  vTipo      : TFieldType;
begin
   sqlSelec.LoadOriginal;

   vLogica := 'AND';

   vCampo := buBusqueda.Caption;
   vTipo  := sqlSelec.dameTipoC(vCampo);

   if vTipo in [ftDate, ftDateTime] then
   begin
{      vSentencia := 'BETWEEN';
      vCampo     := 'F_FECHA('+vCampo+')';
      vParam     := ':P_INI AND :P_FIN';

      j      := sqlSelec.AddParamIndex('P_INI');
      vFecha :=  edDel.Date;
      sqlSelec.setParam(j, vFecha, psFecha);

      j      := sqlSelec.AddParamIndex('P_FIN');
      vFecha := edAl.Date;
      sqlSelec.setParam(j, vFecha, psFecha);}
   end
   else
      if vTipo = ftInteger then
      begin
         vSentencia := '=';
         vParam     := ':P_DATO';

         j := sqlSelec.AddParamIndex('P_DATO');
         sqlSelec.setParam(j, edDato.Text, psCadena);
      end
      else
      begin
         vSentencia := 'LIKE';
         vParam     := ':P_DATO';
         vCampo     := 'UPPER('+vCampo+')';

         j := sqlSelec.AddParamIndex('P_DATO');
         sqlSelec.setParam(j, '%'+edDato.Text+'%', psCadena);
      end;

   if (sqlSelec.CountWhere = 0) then
      vLogica := ''
   else
      vLogica := vLogica + ' ';

   tmp := vLogica+'('+vCampo+' '+vSentencia+' '+vParam+')';

   sqlSelec.AddWhereExtra(tmp);
   sqlSelec.construirExtra;

   qyBusqueda.SQL.Clear;
   qyBusqueda.SQL.AddStrings(sqlSelec.strSql);
   for i := 1 to sqlSelec.indexParam do
   begin
      qyBusqueda.ParamByName(sqlSelec.dameParam(i)).Value := sqlSelec.dameParamValor(i);
   end;
   qyBusqueda.Open;

   dgExplorar.DataSource.DataSet.First;
end;

procedure TfrmSeleccionarTEntrega.buTodosClick(Sender: TObject);
begin
   sqlSelec.LoadOriginal;

   qyBusqueda.SQL.Clear;
   qyBusqueda.SQL.AddStrings(sqlSelec.strSql);
   qyBusqueda.Open;

   dgExplorar.DataSource.DataSet.First;
end;

procedure TfrmSeleccionarTEntrega.dgExplorarKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if (key = 13) and not(qyBusqueda.IsEmpty) then
      ACEPTAR := true;
end;

procedure TfrmSeleccionarTEntrega.ibSalirClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmSeleccionarTEntrega.buInicioClick(Sender: TObject);
begin
   dgExplorar.DataSource.DataSet.First;
end;

procedure TfrmSeleccionarTEntrega.buAnteriorClick(Sender: TObject);
begin
   dgExplorar.DataSource.DataSet.Prior;
end;

procedure TfrmSeleccionarTEntrega.buSiguienteClick(Sender: TObject);
begin
   dgExplorar.DataSource.DataSet.Next;
end;

procedure TfrmSeleccionarTEntrega.buFinClick(Sender: TObject);
begin
   dgExplorar.DataSource.DataSet.Last;
end;

procedure TfrmSeleccionarTEntrega.FormCreate(Sender: TObject);
begin
   ACEPTAR := false;
   //dgExplorar.IniFileName := ExtractFilePath(ParamStr(0))+'\SeleccionarTEntrega.ini';
   //dgExplorar.LoadFromIniFile(ExtractFilePath(ParamStr(0))+'\SeleccionarTEntrega.ini');
   Self.Left  := 0;
   Self.Top   := 0;
   awrDataSet := nil;
   sqlSelec   := TSqlAnaliza.Create;
end;

procedure TfrmSeleccionarTEntrega.FormDestroy(Sender: TObject);
begin
   sqlSelec.Free;
end;

procedure TfrmSeleccionarTEntrega.itemIDClick(Sender: TObject);
begin
   buBusqueda.Caption := 'E.ID';
end;

procedure TfrmSeleccionarTEntrega.itemDESCRIPCIONClick(Sender: TObject);
begin
   buBusqueda.Caption := 'E.DESCRIPCION';
end;

procedure TfrmSeleccionarTEntrega.itemTRANSPORTISTAClick(Sender: TObject);
begin
   buBusqueda.Caption := 'S.NOMBRE';
end;

procedure TfrmSeleccionarTEntrega.edDatoKeyPress(Sender: TObject;
  var Key: Char);
begin
   if (key = #13) and (edDato.Text <> '') then
      buEjecutar.Click;
end;

procedure TfrmSeleccionarTEntrega.sbDownClick(Sender: TObject);
begin
   if awrDataSet <> nil then
   begin
      case awrCual of
         1 : begin
                spA_Z_TE.ParamByName('P_ID').AsInteger := PADRE;
                spA_Z_TE.ParamByName('P_TE').AsInteger := dsBusqueda.DataSet.FieldByName('ID').AsInteger;
                spA_Z_TE.ExecProc;
                spA_Z_TE.Transaction.CommitRetaining;
             end;
      end;
      awrDataSet.Close;
      awrDataSet.Open;
      awrDataSet.Last;
   end;
end;

end.
