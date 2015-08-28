unit UfrmAcceso;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  jpeg,     StdCtrls,
    ExtCtrls,  Db, IBCustomDataSet,
  IBTable,
  Buttons;

type
  TfrmAcceso = class(TForm)
    Label2: TLabel;
    Label1: TLabel;
    edClave: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    laNivel: TLabel;
    Shape1: TShape;
    Label3: TLabel;
    Shape2: TShape;
    edUsuario: TEdit;
    TUsuario: TIBTable;
    TUsuarioID: TIntegerField;
    TUsuarioSUJETO: TIntegerField;
    TUsuarioUSUARIO: TIBStringField;
    TUsuarioBAJA: TIBStringField;
    TUsuarioNIVEL: TIntegerField;
    TSujetosUsuario: TIBTable;
    TSujetosUsuarioID: TIntegerField;
    TSujetosUsuarioCLAVE: TIBStringField;
    TSujetosUsuarioNOMBRE: TIBStringField;
    TSujetosUsuarioRAZON_SOCIAL: TIBStringField;
    TSujetosUsuarioRFC: TIBStringField;
    TSujetosUsuarioCURP: TIBStringField;
    TSujetosUsuarioDOMICILIO: TIntegerField;
    TSujetosUsuarioTELEFONOS: TIntegerField;
    TSujetosUsuarioCONTACTOS: TIntegerField;
    TSujetosUsuarioFECHA_ALTA: TDateTimeField;
    TSujetosUsuarioFACTURAR_A: TIBStringField;
    TSujetosUsuarioE_MAIL: TIBStringField;
    TSujetosUsuarioWWWW: TIBStringField;
    TSujetosUsuarioOBSERVACIONES: TBlobField;
    TSujetosUsuarioSEXO: TIBStringField;
    TSujetosUsuarioFOTO: TBlobField;
    dsUsuarios: TDataSource;
    dsSujetosUsuario: TDataSource;
    laStatus: TLabel;
    TUsuarioPSECRETA: TIBStringField;
    laUnico: TLabel;
    ibAceptar: TBitBtn;
    ibSalir: TBitBtn;
    procedure ibSalirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TUsuarioAfterOpen(DataSet: TDataSet);
    procedure ibAceptarClick(Sender: TObject);
    procedure edUsuarioExit(Sender: TObject);
    procedure edClaveExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    awrUnico  : integer;//Solamente este usuario puede cambiar el estatus
    awrUnicoN : string;
    awrNivel  : integer;
    awrRsp    : boolean;
    awrUsr    : integer;
    awrNom    : string;
    rspUsr    : boolean;
    rspCve    : boolean;
    procedure setNivel(valor : integer);
    procedure setStatus(valor : string);
    procedure setUnicoN(valor : string);
    function rspUnico : boolean;
  public
    { Public declarations }
  published
     property Nivel  : integer read awrNivel write setNivel;
     property Rsp    : boolean read awrRsp write awrRsp;
     property Usr    : integer read awrUsr write awrUsr;
     property Unico  : integer read awrUnico write awrUnico;
     property UnicoN : string write setUnicoN;
     property Nom    : string  read awrNom;
     property Status : string write setStatus;
  end;

var
  frmAcceso: TfrmAcceso;

implementation

uses
  reglas_de_negocios;

{$R *.DFM}

function TfrmAcceso.rspUnico : boolean;
var
   tmp : boolean;
begin
   tmp := true;
   if awrUnico <> 0 then
   begin
      tmp :=  awrUsr = awrUnico;
   end;
   result := tmp;
end;

procedure TfrmAcceso.setUnicoN(valor : string);
begin
   awrUnicoN       := valor;
   laUnico.Caption := 'Usuario: '+ valor;
end;

procedure TfrmAcceso.setStatus(valor : string);
begin
   laStatus.Caption := valor;
end;

procedure TfrmAcceso.setNivel(valor : integer);
begin
   awrNivel        := valor;
   laNivel.Caption := IntToStr(valor);
end;

procedure TfrmAcceso.ibSalirClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmAcceso.FormCreate(Sender: TObject);
begin
   awrUnico := 0;
   awrNivel := 0;
   awrUsr   := 0;
   awrNom   := '';
   Rsp      := false;
   rspUsr   := false;
   rspCve   := false;

   reglas.abrir_IBTabla(TUsuario);
   reglas.abrir_IBTabla(TSujetosUsuario);
end;

procedure TfrmAcceso.TUsuarioAfterOpen(DataSet: TDataSet);
begin
   if TSujetosUsuario.State = dsInactive then
      TSujetosUsuario.Open;
end;

procedure TfrmAcceso.ibAceptarClick(Sender: TObject);
var
   autUnico : boolean;
begin
   autUnico := RspUnico;
   if RspUsr and RspCve and autUnico then
   begin
      Rsp    := true;
      Close;
   end
   else
   begin
      if not(autUnico) then
      begin
         ShowMessage('Unicamente puede ser autorizado por: '+awrUnicoN);
      end;
      Rsp := false
   end;
end;

procedure TfrmAcceso.edUsuarioExit(Sender: TObject);
begin
   rspUsr := false;
   if (edUsuario.Text <> '') then
   begin
      TUsuario.Filter := 'USUARIO = "'+ edUsuario.Text+'"';
      if TUsuario.IsEmpty then
      begin
         ShowMessage('Verifique que el nombre del usuario sea escrito correctamente (mayusculas y minusculas), si esta escrito correctamente, consulte al administrador del sistema.');
         edUsuario.SetFocus;
      end
      else
         begin
            if TUsuario.FieldByName('BAJA').AsString = 'Si' then
            begin
               ShowMessage('El usuario fue temporalmente dado de baja, consulte a su administrador.');
               edUsuario.SetFocus;
            end
            else
            begin
               if TUsuario.FieldByName('NIVEL').AsInteger < Nivel then
               begin
                  ShowMessage('El usuario no cuenta con el nivel aceptable para autorizar este proceso.');
                  edUsuario.SetFocus;
               end
               else
                  begin
                     awrUsr := TUsuario.FieldByName('ID').AsInteger;
                     awrNom := TSujetosUsuario.FieldByName('NOMBRE').AsString;
                     rspUsr := true;
                     edClave.SetFocus;
                     ibAceptar.Click;
                  end;
            end;
         end;
   end;
end;

procedure TfrmAcceso.edClaveExit(Sender: TObject);
begin
   rspCve := false;
   if (edClave.Text <> '') then
   begin
     if TUsuario.FieldByName('PSECRETA').AsString <> edClave.Text then
     begin
        ShowMessage('Clave incorrecta');
        edClave.SetFocus;
     end
     else
        if rspUsr then
        begin
           rspCve := true;
           ibAceptar.Click;
        end;
   end;
end;

procedure TfrmAcceso.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #27 then
   begin
      ibSalir.Click;
   end
end;

end.
