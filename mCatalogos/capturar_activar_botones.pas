unit capturar_activar_botones;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   Menus, IBTable, Db, IBCustomDataSet, IBQuery,
      Grids, DBGrids;

type
  TfrmCapturar_activar_botones = class(TForm)
    dgBotones: TDBGrid;
    dsBotones: TDataSource;
    qyBotones: TIBQuery;
    qyBotonesID: TIntegerField;
    qyBotonesR_ACTIVO: TIBStringField;
    qyBotonesR_NOMBRE: TIBStringField;
    TFormas_botones_usuarios: TIBTable;
    TFormas_botones_usuariosID: TIntegerField;
    TFormas_botones_usuariosMENU_USUARIO: TIntegerField;
    TFormas_botones_usuariosFORMA_BOTON: TIntegerField;
    TFormas_botones_usuariosACTIVO: TIBStringField;
    ppMenu: TPopupMenu;
    mmActivar: TMenuItem;
    procedure TFormas_botones_usuariosAfterPost(DataSet: TDataSet);
    procedure mmActivarClick(Sender: TObject);
    procedure ppMenuPopup(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    constructor Crear(AOwner : TComponent; forma : string; usuario : integer);
  end;

var
  frmCapturar_activar_botones: TfrmCapturar_activar_botones;

implementation

uses IBModulo, reglas_de_negocios;

{$R *.DFM}

constructor TfrmCapturar_activar_botones.Crear(AOwner : TComponent; forma : string; usuario : integer);
begin
   Create(AOwner);
   qyBotones.Close;
   qyBotones.ParamByName('P_FORMA').AsString    := forma;
   qyBotones.ParamByName('P_USUARIO').AsInteger := usuario;
   qyBotones.Open;
   reglas.abrir_IBTabla(TFormas_Botones_Usuarios);
end;

procedure TfrmCapturar_activar_botones.TFormas_botones_usuariosAfterPost(
  DataSet: TDataSet);
begin
   TFormas_botones_usuarios.Transaction.CommitRetaining;
end;

procedure TfrmCapturar_activar_botones.mmActivarClick(Sender: TObject);
begin
   if mmActivar.Checked then
   begin
      mmActivar.Checked := FALSE;
      mmActivar.Caption := 'Desactivado';
      TFormas_botones_usuarios.Edit;
      TFormas_botones_usuarios.FieldByName('ACTIVO').AsString := 'No';
      TFormas_botones_usuarios.Post;
   end
   else
      begin
         mmActivar.Checked := TRUE;
         mmActivar.Caption := 'Activado';
         TFormas_botones_usuarios.Edit;
         TFormas_botones_usuarios.FieldByName('ACTIVO').AsString := 'Si';
         TFormas_botones_usuarios.Post;
      end;
   reglas.abrir_IBQuery_seek('ID', qyBotones.FieldByName('ID').AsInteger, qyBotones);
end;

procedure TfrmCapturar_activar_botones.ppMenuPopup(Sender: TObject);
begin
   if dsBotones.DataSet.FieldByName('R_ACTIVO').AsString = 'Si' then
   begin
      mmActivar.Checked := TRUE;
      mmActivar.Caption := 'Activado';
   end
   else
      begin
         mmActivar.Checked := FALSE;
         mmActivar.Caption := 'Desactivado';
      end;
end;

end.
