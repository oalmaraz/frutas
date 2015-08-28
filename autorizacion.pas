unit autorizacion;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  padre, jpeg,  ExtCtrls,
     StdCtrls, DBCtrls, Db,  Buttons;

type
  TfrmAutorizacion = class(TfrmPadre)
    Label1: TLabel;
    edUsuario: TEdit;
    Label2: TLabel;
    edClave: TEdit;
    dsEmpresa: TDataSource;
    dtVersion: TDBText;
    Label3: TLabel;
    dtAcronimo: TDBText;
    dtNombre: TDBText;
    Label4: TLabel;
    Label5: TLabel;
    laNivel: TLabel;
    ibAutorizar: TBitBtn;
    ibCancelar: TBitBtn;
    procedure ibCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ibAutorizarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edClaveKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    nivel     : integer;
    respuesta : boolean;
    function usuario : boolean;
  public
    { Public declarations }
    constructor Crear(AOwner : TComponent; p_nivel : integer);
    function dame_respuesta : boolean;
  end;

var
  frmAutorizacion: TfrmAutorizacion;

implementation

uses IBData, reglas_de_negocios;

{$R *.DFM}

constructor TfrmAutorizacion.Crear(AOwner : TComponent; p_nivel : integer);
begin
   inherited Create(AOwner);
   nivel := p_nivel;
   laNivel.Caption := IntToStr(p_nivel);
end;

function TfrmAutorizacion.usuario : boolean;
var
   tmp  : boolean;
begin
  tmp := FALSE;
  if edUsuario.Text <> '' then
  begin
     if edClave.Text <> '' then
       tmp := TRUE
     else
       begin
         //Falta Informacion
         //Clave de usuario
         ShowMessage('Falta Informacion, clave de Usuario');
         edClave.SetFocus;
       end;
  end
  else
  begin
     //Falta Informacion
     //usuario
     ShowMessage('Falta Informacion,  Usuario');
     edUsuario.SetFocus;
  end;
  Result := tmp;
end;

function TfrmAutorizacion.dame_respuesta : boolean;
begin
   Result := respuesta;
end;

procedure TfrmAutorizacion.ibCancelarClick(Sender: TObject);
begin
  inherited;
  respuesta := FALSE;
end;

procedure TfrmAutorizacion.FormCreate(Sender: TObject);
begin
  inherited;
  respuesta := FALSE;
  reglas.abrir_IBTabla(dmIBData.TSujetosAutorizacion);
  reglas.abrir_IBTabla(dmIBData.TFiltroUsuariosAutorizacion);
end;

procedure TfrmAutorizacion.ibAutorizarClick(Sender: TObject);
begin
  inherited;
  respuesta := FALSE;
  if usuario then
  begin
     if reglas.acceso(dmIBData.TFiltroUsuariosAutorizacion, dmIBData.TSujetosAutorizacion, edUsuario.Text, edClave.Text) then
     begin
        if nivel <= dmIBData.TFiltroUsuariosAutorizacion.FieldByName('NIVEL').AsInteger then
        begin
           respuesta := TRUE;
           close;
        end
        else
        begin
           //Nivel
           //El usuario no cuenta con el nivel aceptable para autorizar este proceso.
           ShowMessage('El usuario no cuenta con el nivel aceptable para autorizar este proceso.');
        end;

     end;
  end;
end;

procedure TfrmAutorizacion.FormShow(Sender: TObject);
begin
  inherited;
  edUsuario.SetFocus;
end;

procedure TfrmAutorizacion.edClaveKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Key = 13) then
     ibAutorizar.Click;
end;

end.

