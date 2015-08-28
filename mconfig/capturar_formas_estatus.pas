unit capturar_formas_estatus;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  padre, jpeg,  ExtCtrls,
   StdCtrls,      Db,
  IBCustomDataSet, IBQuery,    IBUpdateSQL,
  IBStoredProc,  DBCtrls, Grids, DBGrids, Buttons;

type
  TfrmCapturar_Formas_Estatus = class(TfrmPadre)
    deNombre: TEdit;
    ceNumero: TEdit;
    ceEstatus: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    dgFormas: TDBGrid;
    dgEstatus: TDBGrid;
    dgDetalle: TDBGrid;
    Label4: TLabel;
    Label5: TLabel;
    ibEliminarEstatus: TBitBtn;
    ibNuevoEstatus: TBitBtn;
    Label6: TLabel;
    ibEliminarForma: TBitBtn;
    qyEstatus: TIBQuery;
    dsEstatus: TDataSource;
    dsEstatusDet: TDataSource;
    qyEstatusDet: TIBQuery;
    qyFormas: TIBQuery;
    dsFormas: TDataSource;
    qyFormasNOMBRE: TIBStringField;
    qyFormasFORMA: TIntegerField;
    qyEstatusID: TIntegerField;
    qyEstatusESTATUS: TIBStringField;
    qyEstatusDetID: TIntegerField;
    qyEstatusDetPROCESO: TIntegerField;
    qyEstatusDetESTATUS: TIBStringField;
    qyEstatusDetAUTORIZACION: TIBStringField;
    qyEstatusDetSTOREPROC: TIBStringField;
    ibGuardarEstatus: TBitBtn;
    ibCancelarEstatus: TBitBtn;
    sqlEstatus: TIBUpdateSQL;
    ibEliminarEValido: TBitBtn;
    ibNuevoEValido: TBitBtn;
    ibGuardarEValido: TBitBtn;
    ibCancelarEValido: TBitBtn;
    sqlEstatusValidos: TIBUpdateSQL;
    spIDDetalle: TIBStoredProc;
    spID: TIBStoredProc;
    spGENERAR_FORMA: TIBStoredProc;
    qyEstatusNOMBRE: TIBStringField;
    qyEstatusFORMA: TIntegerField;
    spDEL_FORMA: TIBStoredProc;
    dsEmpresa: TDataSource;
    dtNombre: TDBText;
    dtAcronimo: TDBText;
    Label7: TLabel;
    dtVersion: TDBText;
    ibGenerar: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dsEstatusDataChange(Sender: TObject; Field: TField);
    procedure ibGuardarEstatusClick(Sender: TObject);
    procedure qyEstatusAfterPost(DataSet: TDataSet);
    procedure qyEstatusDetAfterPost(DataSet: TDataSet);
    procedure ibNuevoEValidoClick(Sender: TObject);
    procedure ibGuardarEValidoClick(Sender: TObject);
    procedure dsEstatusDetDataChange(Sender: TObject; Field: TField);
    procedure ibCancelarEValidoClick(Sender: TObject);
    procedure ibEliminarEValidoClick(Sender: TObject);
    procedure ibNuevoEstatusClick(Sender: TObject);
    procedure ibCancelarEstatusClick(Sender: TObject);
    procedure ibEliminarEstatusClick(Sender: TObject);
    procedure ibEliminarFormaClick(Sender: TObject);
    procedure ibGenerarClick(Sender: TObject);
    procedure dsFormasDataChange(Sender: TObject; Field: TField);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCapturar_Formas_Estatus: TfrmCapturar_Formas_Estatus;

implementation

uses IBModulo, reglas_de_negocios;

{$R *.DFM}

procedure TfrmCapturar_Formas_Estatus.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TfrmCapturar_Formas_Estatus.dsEstatusDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if dsEstatus.DataSet <> nil then
  begin
     ibNuevoEstatus.Enabled    :=(dsEstatus.DataSet.State in [dsBrowse]) and not(dsFormas.DataSet.IsEmpty);
     ibGuardarEstatus.Enabled  :=(dsEstatus.DataSet.State in [dsEdit,dsInsert]);
     ibCancelarEstatus.Enabled :=(dsEstatus.DataSet.State in [dsEdit,dsInsert]);
     ibEliminarEstatus.Enabled := not(dsEstatus.DataSet.IsEmpty);
  end;
end;

procedure TfrmCapturar_Formas_Estatus.ibGuardarEstatusClick(
  Sender: TObject);
begin
  inherited;
  dsEstatus.DataSet.Post;
end;

procedure TfrmCapturar_Formas_Estatus.qyEstatusAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  qyEstatus.Transaction.CommitRetaining;
end;

procedure TfrmCapturar_Formas_Estatus.qyEstatusDetAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  qyEstatus.Transaction.CommitRetaining;
end;

procedure TfrmCapturar_Formas_Estatus.ibNuevoEValidoClick(Sender: TObject);
begin
  inherited;
  spIDDetalle.ExecProc;
  qyEstatusDet.Insert;
  qyEstatusDet.FieldByName('ID').AsInteger          := spIDDetalle.ParamByName('R_ID').AsInteger;
  qyEstatusDet.FieldByName('PROCESO').AsInteger     := dsEstatus.DataSet.FieldByName('ID').AsInteger;
  qyEstatusDet.FieldByName('AUTORIZACION').AsString := 'No';
  qyEstatusDet.FieldByName('ESTATUS').AsString      := 'Sin Afectar';
  qyEstatusDet.FieldByName('STOREPROC').AsString    := 'SinDefinir';
  dgDetalle.SetFocus;
end;

procedure TfrmCapturar_Formas_Estatus.ibGuardarEValidoClick(Sender: TObject);
begin
  inherited;
  qyEstatusDet.Post;
end;

procedure TfrmCapturar_Formas_Estatus.dsEstatusDetDataChange(
  Sender: TObject; Field: TField);
begin
  inherited;
  if dsEstatusDet.DataSet <> nil then
  begin
     ibNuevoEValido.Enabled    :=(dsEstatusDet.DataSet.State in [dsBrowse]) and not(dsEstatus.DataSet.IsEmpty);
     ibGuardarEValido.Enabled  :=(dsEstatusDet.DataSet.State in [dsEdit,dsInsert]);
     ibCancelarEValido.Enabled :=(dsEstatusDet.DataSet.State in [dsEdit,dsInsert]);
     ibEliminarEValido.Enabled := not(dsEstatusDet.DataSet.IsEmpty);
  end;
end;

procedure TfrmCapturar_Formas_Estatus.ibCancelarEValidoClick(
  Sender: TObject);
begin
  inherited;
  dsEstatusDet.DataSet.Cancel;
end;

procedure TfrmCapturar_Formas_Estatus.ibEliminarEValidoClick(
  Sender: TObject);
begin
  inherited;
  if MessageDlg('Borrado permanente',  mtConfirmation, [mbYes, mbNo], 0) = mrYes  then
  begin
     dsEstatusDet.DataSet.Delete;
  end;
end;

procedure TfrmCapturar_Formas_Estatus.ibNuevoEstatusClick(Sender: TObject);
begin
  inherited;
  spID.ExecProc;
  dsEstatus.DataSet.Insert;
  dsEstatus.DataSet.FieldByName('ID').AsInteger          := spID.ParamByName('R_ID').AsInteger;
  dsEstatus.DataSet.FieldByName('NOMBRE').AsString       := dsFormas.DataSet.FieldByName('NOMBRE').AsString;
  dsEstatus.DataSet.FieldByName('FORMA').AsInteger       := dsFormas.DataSet.FieldByName('FORMA').AsInteger;
  dsEstatus.DataSet.FieldByName('ESTATUS').AsString      := 'Sin Afectar';
  dgEstatus.SetFocus;
end;

procedure TfrmCapturar_Formas_Estatus.ibCancelarEstatusClick(
  Sender: TObject);
begin
  inherited;
  dsEstatus.DataSet.Cancel;
end;

procedure TfrmCapturar_Formas_Estatus.ibEliminarEstatusClick(
  Sender: TObject);
begin
  inherited;
  if MessageDlg(' Borrado permanente', mtConfirmation, [mbYes, mbNo], 0) = mrYes  then
  begin
     dsEstatus.DataSet.Delete;
  end;

end;

procedure TfrmCapturar_Formas_Estatus.ibEliminarFormaClick(
  Sender: TObject);
begin
  inherited;
  if MessageDlg(' Borrado permanente', mtConfirmation, [mbYes, mbNo], 0) = mrYes  then
  begin
     spDEL_FORMA.ParamByName('P_FORMA').AsInteger := dsFormas.DataSet.FieldByName('FORMA').AsInteger;
     spDEL_FORMA.ExecProc;
     reglas.refresh_IBQuery(qyFormas);
  end;
end;

procedure TfrmCapturar_Formas_Estatus.ibGenerarClick(Sender: TObject);
var
  numero  : integer;
  estatus : integer;
begin
  inherited;
  if deNombre.Text <> '' then
  begin
     numero := StrToInt (ceNumero.Text);
     if numero <> 0 then
     begin
        estatus := StrToInt (ceEstatus.Text);
        if estatus <> 0 then
        begin
           spGENERAR_FORMA.ParamByName('P_NOMBRE').AsString  := deNombre.Text;
           spGENERAR_FORMA.ParamByName('P_FORMA').AsInteger  := StrToInt(ceNumero.Text);
           spGENERAR_FORMA.ParamByName('P_NUMERO').AsInteger := StrToInt(ceEstatus.Text);
           spGENERAR_FORMA.ExecProc;
           reglas.refresh_IBQuery(qyFormas);
           qyFormas.Locate('NOMBRE',deNombre.Text,[loCaseInsensitive]);
           deNombre.Clear;
           ceNumero.Clear;
           ceEstatus.Clear;
           deNombre.SetFocus;
        end
        else
        begin
          ShowMessage('Falta informacion numero de estatus para la forma');
        end;
     end
     else
     begin
       ShowMessage('Falta informacion numero de forma');
     end;
  end
  else
  begin
    ShowMessage('Falta informacion nombre de forma');
  end;
end;

procedure TfrmCapturar_Formas_Estatus.dsFormasDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if dsFormas.DataSet <> nil then
  begin
     ibEliminarForma.Enabled := not(dsFormas.DataSet.IsEmpty);
  end;
end;

procedure TfrmCapturar_Formas_Estatus.FormShow(Sender: TObject);
begin
  inherited;
  deNombre.SetFocus;
end;

procedure TfrmCapturar_Formas_Estatus.FormCreate(Sender: TObject);
begin
  inherited;
  reglas.refresh_IBQuery(qyFormas);
  reglas.refresh_IBQuery(qyEstatus);
  reglas.refresh_IBQuery(qyEstatusDet);
end;

end.                               
