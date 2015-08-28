unit UfrmSeleccionarNE;

interface

uses
  USqlAnaliza, Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   StdCtrls, Mask, DBCtrls,
   Buttons, Grids, DBGrids, IBStoredProc, Menus, Db, IBCustomDataSet,
  IBQuery, IBDatabase, ExtCtrls;

type
  TfrmSeleccionarNE = class(TForm)
    paBusqueda: TPanel;
    buBusqueda: TBitBtn;
    buEjecutar: TBitBtn;
    buTodos: TBitBtn;
    edDato: TEdit;
    IBDatabase1: TIBDatabase;
    IBTransaction1: TIBTransaction;
    dsBusqueda: TDataSource;
    qyBusqueda: TIBQuery;
    pmCampos: TPopupMenu;
    itemCLAVE: TMenuItem;
    itemFACTURA: TMenuItem;
    itemFOLIO: TMenuItem;
    itemNOMBRE: TMenuItem;
    dgExplorar: TDBGrid;
    itemID: TMenuItem;
    qyBusquedaID: TIntegerField;
    qyBusquedaFECHA_ALTA: TDateTimeField;
    qyBusquedaCLAVE: TIBStringField;
    qyBusquedaFACTURA_PROVEEDOR: TIBStringField;
    qyBusquedaGRANTOTAL: TFloatField;
    qyBusquedaCONSECUTIVO: TIntegerField;
    qyBusquedaP_CLAVE: TIBStringField;
    qyBusquedaP_NOMBRE: TIBStringField;
    qyBusquedaP_TELEFONO: TIBStringField;
    qyBusquedaP_RAZON_SOCIAL: TIBStringField;
    itemRAZON: TMenuItem;
    spADD_NE_A_NE: TIBStoredProc;
    qyBusquedaO_ID: TIntegerField;
    qyBusquedaO_FOLIO: TIntegerField;
    qyBusquedaO_CLAVE: TIBStringField;
    Panel2: TPanel;
    buInicio: TBitBtn;
    buAnterior: TBitBtn;
    buFin: TBitBtn;
    buSiguiente: TBitBtn;
    ibSalir: TBitBtn;
    deID: TDBEdit;
    procedure edDatoKeyPress(Sender: TObject; var Key: Char);
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
    procedure itemIDClick(Sender: TObject);
    procedure itemCLAVEClick(Sender: TObject);
    procedure itemFACTURAClick(Sender: TObject);
    procedure itemFOLIOClick(Sender: TObject);
    procedure itemNOMBREClick(Sender: TObject);
    procedure dgExplorarDblClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure itemRAZONClick(Sender: TObject);
    procedure sbDownClick(Sender: TObject);
  private
    { Private declarations }
    sqlSelec      : TSqlAnaliza;
    awrAceptar    : boolean;
    awrTarget     : integer;
    awrDataSource : TDataSource;
    procedure setDatabase(valor : TIBDatabase);
    procedure setTransaction(valor : TIBTransaction);
    procedure setCLAVE(valor : string);
    procedure setAceptar(valor : boolean);
    procedure setX(valor : TPoint);
    procedure setY(valor : TPoint);

    function getCLAVE : string;
    function getAceptar : boolean;
  public
    { Public declarations }
    function abrirConsulta : boolean;
    function abrir : boolean;
  published
     property DATABASE     : TIBDatabase write setDatabase;
     property TRANSACTION  : TIBTransaction write setTransaction;
     property CLAVE        : string read getCLAVE write setCLAVE;
     property ACEPTAR      : boolean read getAceptar write setAceptar;
     property X            : TPoint write setX;
     property Y            : TPoint write setY;
     property TARGET       : integer read awrTarget write awrTarget;
     property DATASOURCE   : TDataSource read awrDataSource write awrDataSource;
  end;

var
  frmSeleccionarNE: TfrmSeleccionarNE;

implementation

{$R *.DFM}

procedure TfrmSeleccionarNE.setX(valor : TPoint);
begin
   self.Left := valor.x;
   self.Top  := valor.y;
end;

procedure TfrmSeleccionarNE.setY(valor : TPoint);
begin
   self.Width  := valor.x;
   self.Height := valor.y;
end;

procedure TfrmSeleccionarNE.setTransaction(valor : TIBTransaction);
begin
   qyBusqueda.Transaction    := valor;
   sqlSelec.Transaction      := valor;
   spADD_NE_A_NE.Transaction := valor;

   sqlSelec.AddStrings(qyBusqueda.SQL);
end;

procedure TfrmSeleccionarNE.setDatabase(valor : TIBDatabase);
begin
   qyBusqueda.Database    := valor;
   sqlSelec.DataBase      := valor;
   spADD_NE_A_NE.DataBase := valor;
end;

function TfrmSeleccionarNE.abrir : boolean;
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

function TfrmSeleccionarNE.abrirConsulta : boolean;
var
   tmp : boolean;
begin
   tmp := true;
   if edDato.Text <> '' then
   begin
      buBusqueda.Caption := 'E.CLAVE';
      edDato.Text        := UpperCase(edDato.Text);
      buEjecutar.Click;

     if not(qyBusqueda.IsEmpty) and (dgExplorar.DataSource.DataSet.RecordCount = 1) then
     begin
         tmp := false;
     end
     else
        if (qyBusqueda.IsEmpty) then
        begin
           buBusqueda.Caption := 'S.NOMBRE';
           buEjecutar.Click;
           if not(qyBusqueda.IsEmpty) and (dgExplorar.DataSource.DataSet.RecordCount = 1) then
           begin
              tmp := false;
           end;
        end;
   end;
   Result := tmp;
end;

procedure TfrmSeleccionarNE.setAceptar(valor : boolean);
begin
   awrAceptar := valor;
   if awrAceptar then
      Close;
end;

function TfrmSeleccionarNE.getAceptar : boolean;
begin
   Result := awrAceptar;
end;

procedure TfrmSeleccionarNE.setCLAVE(valor : string);
begin
   edDato.Text := UpperCase(valor);
end;

function TfrmSeleccionarNE.getCLAVE : string;
begin
   Result := dsBusqueda.DataSet.FieldByName('CLAVE').AsString;
end;

procedure TfrmSeleccionarNE.edDatoKeyPress(Sender: TObject;
  var Key: Char);
begin
   if (key = #13) and (edDato.Text <> '') then
      buEjecutar.Click;
end;

procedure TfrmSeleccionarNE.buBusquedaClick(Sender: TObject);
begin
   buEjecutar.Click;
end;

procedure TfrmSeleccionarNE.buEjecutarClick(Sender: TObject);
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

{   edDato.Text := UpperCase(edDato.Text);
   awrSQL      := 'WHERE UPPER('+buBusqueda.Caption+') LIKE "%'+edDato.Text+'%"';
   ejecutar(true);}
end;

procedure TfrmSeleccionarNE.buTodosClick(Sender: TObject);
begin
   sqlSelec.LoadOriginal;

   qyBusqueda.SQL.Clear;
   qyBusqueda.SQL.AddStrings(sqlSelec.strSql);
   qyBusqueda.Open;

   dgExplorar.DataSource.DataSet.First;
end;

procedure TfrmSeleccionarNE.dgExplorarKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if (key = 13) and not(qyBusqueda.IsEmpty) then
      ACEPTAR := true;
end;

procedure TfrmSeleccionarNE.ibSalirClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmSeleccionarNE.buInicioClick(Sender: TObject);
begin
   dgExplorar.DataSource.DataSet.First;
end;

procedure TfrmSeleccionarNE.buAnteriorClick(Sender: TObject);
begin
   dgExplorar.DataSource.DataSet.Prior;
end;

procedure TfrmSeleccionarNE.buSiguienteClick(Sender: TObject);
begin
   dgExplorar.DataSource.DataSet.Next;
end;

procedure TfrmSeleccionarNE.buFinClick(Sender: TObject);
begin
   dgExplorar.DataSource.DataSet.Last;
end;

procedure TfrmSeleccionarNE.FormCreate(Sender: TObject);
begin
   ACEPTAR := false;
   //dgExplorar.IniFileName := ExtractFilePath(ParamStr(0))+'\SeleccionarNotaEntrada.ini';
   //dgExplorar.LoadFromIniFile(ExtractFilePath(ParamStr(0))+'\SeleccionarNotaEntrada.ini');

   sqlSelec := TSqlAnaliza.Create;
end;

procedure TfrmSeleccionarNE.itemIDClick(Sender: TObject);
begin
   buBusqueda.Caption := 'E.ID';
end;

procedure TfrmSeleccionarNE.itemCLAVEClick(Sender: TObject);
begin
   buBusqueda.Caption := 'E.CLAVE';
end;

procedure TfrmSeleccionarNE.itemFACTURAClick(Sender: TObject);
begin
   buBusqueda.Caption := 'E.FACTURA_PROVEEDOR';
end;

procedure TfrmSeleccionarNE.itemFOLIOClick(Sender: TObject);
begin
   buBusqueda.Caption := 'E.CONSECUTIVO';
end;

procedure TfrmSeleccionarNE.itemNOMBREClick(Sender: TObject);
begin
   buBusqueda.Caption := 'S.NOMBRE';
end;

procedure TfrmSeleccionarNE.dgExplorarDblClick(Sender: TObject);
var
   estatus : string;
begin
   estatus := dsBusqueda.DataSet.FieldByName('C_ESTATUS').AsString;

   ACEPTAR := true
end;

procedure TfrmSeleccionarNE.FormDestroy(Sender: TObject);
begin
   sqlSelec.Free;
end;

procedure TfrmSeleccionarNE.itemRAZONClick(Sender: TObject);
begin
   buBusqueda.Caption := 'S.RAZON_SOCIAL';
end;

procedure TfrmSeleccionarNE.sbDownClick(Sender: TObject);
begin
  if MessageDlg('¿ Desea agrupar esta nota de entrada ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes  then
   begin
      spADD_NE_A_NE.ParamByName('P_SOURCE').AsInteger := dsBusqueda.DataSet.FieldByName('ID').AsInteger;
      spADD_NE_A_NE.ParamByName('P_TARGET').AsInteger := TARGET;
      spADD_NE_A_NE.ExecProc;
      spADD_NE_A_NE.Transaction.CommitRetaining;

      if (DATASOURCE <> nil) then
      begin
         DATASOURCE.DataSet.Close;
         DATASOURCE.DataSet.Open;
      end;
   end;
end;

end.
