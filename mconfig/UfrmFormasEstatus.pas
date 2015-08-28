Unit UfrmFormasEstatus;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  jpeg,   ExtCtrls,  IBCustomDataSet,
  IBUpdateSQL,  IBStoredProc, Db, IBQuery,
      StdCtrls,
     Buttons, Grids, DBGrids;

type
  TfrmFormasEstatus = class(TForm)
    qyFormas: TIBQuery;
    qyFormasNOMBRE: TIBStringField;
    qyFormasFORMA: TIntegerField;
    dsFormas: TDataSource;
    spGENERAR_FORMA: TIBStoredProc;
    spDEL_FORMA: TIBStoredProc;
    qyEstatus: TIBQuery;
    qyEstatusID: TIntegerField;
    qyEstatusESTATUS: TIBStringField;
    qyEstatusNOMBRE: TIBStringField;
    qyEstatusFORMA: TIntegerField;
    dsEstatus: TDataSource;
    sqlEstatus: TIBUpdateSQL;
    spID: TIBStoredProc;
    qyEstatusDet: TIBQuery;
    qyEstatusDetID: TIntegerField;
    qyEstatusDetPROCESO: TIntegerField;
    qyEstatusDetESTATUS: TIBStringField;
    qyEstatusDetAUTORIZACION: TIBStringField;
    qyEstatusDetSTOREPROC: TIBStringField;
    dsEstatusDet: TDataSource;
    spIDDetalle: TIBStoredProc;
    sqlEstatusValidos: TIBUpdateSQL;
    paEncabezado: TPanel;
    Label1: TLabel;
    deNombre: TEdit;
    Label2: TLabel;
    ceNumero: TEdit;
    ceEstatus: TEdit;
    Label3: TLabel;
    paDetalle: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Label6: TLabel;
    dgDetalle: TDBGrid;
    qyEstatusDetNIVEL: TIntegerField;
    ibNuevoEstatus: TBitBtn;
    buGenerar: TBitBtn;
    paEstatus: TPanel;
    paFormas: TPanel;
    Label7: TLabel;
    dxDBGrid1: TDBGrid;
    Label5: TLabel;
    dgEstatus: TDBGrid;
    ibGuardarEstatus: TBitBtn;
    ibCancelarEstatus: TBitBtn;
    ibNuevoEValido: TBitBtn;
    ibGuardarEValido: TBitBtn;
    ibCancelarEValido: TBitBtn;
    Bevel1: TBevel;
    qyEstatusDetVER: TIBStringField;
    qyEstatusDetCORREO: TIBStringField;
    qyEstatusDetASUNTO: TIBStringField;
    qyEstatusDetORDEN: TIntegerField;
    qyEstatusDetUSUARIO: TIntegerField;
    qyEstatusDetNOMBRE: TIBStringField;
    qyEstatusDetIMPRIMIR: TIBStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure dgFormasBTN_DELButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dgEstatusBTN_DELButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dgDetalleBTN_DELButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dsEstatusDataChange(Sender: TObject; Field: TField);
    procedure qyEstatusAfterPost(DataSet: TDataSet);
    procedure dsEstatusDetDataChange(Sender: TObject; Field: TField);
    procedure qyEstatusDetAfterPost(DataSet: TDataSet);
    procedure buGenerarClick(Sender: TObject);
    procedure ibNuevoEstatusClick(Sender: TObject);
    procedure ibGuardarEstatusClick(Sender: TObject);
    procedure ibCancelarEstatusClick(Sender: TObject);
    procedure ibNuevoEValidoClick(Sender: TObject);
    procedure fcImageBtn5Click(Sender: TObject);
    procedure fcImageBtn6Click(Sender: TObject);
    procedure dgDetalleDESTINATARIOSButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dgDetalleUSUARIOButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFormasEstatus: TfrmFormasEstatus;

implementation

uses
  IBModulo, reglas_de_negocios, UfrmEstatusDestinatarios, UfrmSeleccionarUsuario;

{$R *.DFM}

procedure TfrmFormasEstatus.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmFormasEstatus.FormCreate(Sender: TObject);
begin
  reglas.refresh_IBQuery(qyFormas);
  reglas.refresh_IBQuery(qyEstatus);
  reglas.refresh_IBQuery(qyEstatusDet);
end;

procedure TfrmFormasEstatus.dgFormasBTN_DELButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  if MessageDlg('¿ Eliminar registro ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes  then
  begin
     spDEL_FORMA.ParamByName('P_FORMA').AsInteger := dsFormas.DataSet.FieldByName('FORMA').AsInteger;
     spDEL_FORMA.ExecProc;
     reglas.refresh_IBQuery(qyFormas);
  end;
end;

procedure TfrmFormasEstatus.dgEstatusBTN_DELButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  if MessageDlg('¿ Eliminar registro ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes  then
  begin
     dsEstatus.DataSet.Delete;
  end;
end;

procedure TfrmFormasEstatus.dgDetalleBTN_DELButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  if MessageDlg('¿ Eliminar registro ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes  then
  begin
     dsEstatusDet.DataSet.Delete;
  end;
end;

procedure TfrmFormasEstatus.dsEstatusDataChange(Sender: TObject;
  Field: TField);
begin
  if dsEstatus.DataSet <> nil then
  begin
     ibNuevoEstatus.Enabled    :=(dsEstatus.DataSet.State in [dsBrowse]) and not(dsFormas.DataSet.IsEmpty);
     ibGuardarEstatus.Enabled  :=(dsEstatus.DataSet.State in [dsEdit,dsInsert]);
     ibCancelarEstatus.Enabled :=(dsEstatus.DataSet.State in [dsEdit,dsInsert]);
  end;
end;

procedure TfrmFormasEstatus.qyEstatusAfterPost(DataSet: TDataSet);
begin
  qyEstatus.Transaction.CommitRetaining;
end;

procedure TfrmFormasEstatus.dsEstatusDetDataChange(Sender: TObject;
  Field: TField);
begin
  if dsEstatusDet.DataSet <> nil then
  begin
     ibNuevoEValido.Enabled    :=(dsEstatusDet.DataSet.State in [dsBrowse]) and not(dsEstatus.DataSet.IsEmpty);
     ibGuardarEValido.Enabled  :=(dsEstatusDet.DataSet.State in [dsEdit,dsInsert]);
     ibCancelarEValido.Enabled :=(dsEstatusDet.DataSet.State in [dsEdit,dsInsert]);
  end;
end;

procedure TfrmFormasEstatus.qyEstatusDetAfterPost(DataSet: TDataSet);
begin
  qyEstatus.Transaction.CommitRetaining;
end;

procedure TfrmFormasEstatus.buGenerarClick(Sender: TObject);
var
  numero, estatus : integer;
begin
  if deNombre.Text <> '' then
  begin
     numero := StrToInt(ceNumero.Text);
     if  numero <> 0 then
     begin
        estatus := StrToInt(ceEstatus.Text);
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
    ShowMessage('Falta informacion numero de forma');
  end;
end;

procedure TfrmFormasEstatus.ibNuevoEstatusClick(Sender: TObject);
begin
  spID.ExecProc;
  dsEstatus.DataSet.Insert;
  dsEstatus.DataSet.FieldByName('ID').AsInteger          := spID.ParamByName('R_ID').AsInteger;
  dsEstatus.DataSet.FieldByName('NOMBRE').AsString       := dsFormas.DataSet.FieldByName('NOMBRE').AsString;
  dsEstatus.DataSet.FieldByName('FORMA').AsInteger       := dsFormas.DataSet.FieldByName('FORMA').AsInteger;
  dsEstatus.DataSet.FieldByName('ESTATUS').AsString      := 'Sin Afectar';
  dgEstatus.SetFocus;
end;

procedure TfrmFormasEstatus.ibGuardarEstatusClick(Sender: TObject);
begin
  dsEstatus.DataSet.Post;
end;

procedure TfrmFormasEstatus.ibCancelarEstatusClick(Sender: TObject);
begin
  dsEstatus.DataSet.Cancel;
end;

procedure TfrmFormasEstatus.ibNuevoEValidoClick(Sender: TObject);
begin
  spIDDetalle.ExecProc;
  qyEstatusDet.Insert;
  qyEstatusDet.FieldByName('ID').AsInteger                  := spIDDetalle.ParamByName('R_ID').AsInteger;
  qyEstatusDet.FieldByName('PROCESO').AsInteger             := dsEstatus.DataSet.FieldByName('ID').AsInteger;
  qyEstatusDet.FieldByName('AUTORIZACION').AsString         := 'No';
  qyEstatusDet.FieldByName('ESTATUS').AsString              := 'Sin Afectar';
  qyEstatusDet.FieldByName('STOREPROC').AsString            := 'SinDefinir';
  qyEstatusDet.FieldByName('VER').AsString                  := 'Si';
  qyEstatusDet.FieldByName('CORREO').AsString               := 'No';
  qyEstatusDet.FieldByName('IMPRIMIR').AsString             := 'No';
  dgDetalle.SetFocus;
end;

procedure TfrmFormasEstatus.fcImageBtn5Click(Sender: TObject);
begin
  qyEstatusDet.Post;
  qyEstatusDet.Transaction.CommitRetaining;
end;

procedure TfrmFormasEstatus.fcImageBtn6Click(Sender: TObject);
begin
  dsEstatusDet.DataSet.Cancel;
end;

procedure TfrmFormasEstatus.dgDetalleDESTINATARIOSButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
begin
   if dsEstatusDet.DataSet.State = dsBrowse then
   begin
      frmEstatusDestinatarios := TfrmEstatusDestinatarios.Create(Self);
      try
         frmEstatusDestinatarios.QUIEN := dsEstatusDet.DataSet.FieldByName('ID').AsInteger;
         frmEstatusDestinatarios.ShowModal;
      finally
        frmEstatusDestinatarios.Free;
      end;
   end
   else
   begin
     ShowMessage('Para capturar destinatarios, debe estar sin edicion el registro.');
   end;
end;

procedure TfrmFormasEstatus.dgDetalleUSUARIOButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  case AbsoluteIndex of
    0 : begin
           frmSeleccionarUsuario             := TfrmSeleccionarUsuario.Create(Application);
           frmSeleccionarUsuario.DATABASE    := dmIBModulo.ibSistema;
           frmSeleccionarUsuario.TRANSACTION := dmIBModulo.ibSistemaTransaccion;
           if frmSeleccionarUsuario.abrirConsulta then
           begin
              frmSeleccionarUsuario.ShowModal;
              if frmSeleccionarUsuario.ACEPTAR then
              begin
                 qyEstatusDet.Edit;
                 qyEstatusDet.FieldByName('USUARIO').AsInteger := frmSeleccionarUsuario.ID;
                 qyEstatusDet.Post;
                 qyEstatusDet.Transaction.CommitRetaining;
                 reglas.abrir_IBQuery_seek('ID', qyEstatusDet.FieldByName('ID').AsInteger, qyEstatusDet);
              end;
           end;
           frmSeleccionarUsuario.Free;
           frmSeleccionarUsuario := nil;
        end;
    1 : begin
           qyEstatusDet.Edit;
           qyEstatusDet.FieldByName('USUARIO').AsVariant := 0;
           qyEstatusDet.Post;
           qyEstatusDet.Transaction.CommitRetaining;
           reglas.abrir_IBQuery_seek('ID', qyEstatusDet.FieldByName('ID').AsInteger, qyEstatusDet);
        end;
  end;
end;

end.
