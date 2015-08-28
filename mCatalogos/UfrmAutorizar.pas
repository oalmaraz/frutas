unit UfrmAutorizar;

interface

uses
  UTypeAutorizar, Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
       StdCtrls, DBCtrls, jpeg,
   ExtCtrls,  Buttons;

type
  TfrmAutorizar = class(TForm)
    fpPadre: TPanel;
    imBottom: TImage;
    Label3: TLabel;
    fcImager1: TImage;
    fcImager5: TImage;
    fcImager6: TImage;
    Label1: TLabel;
    edUsuario: TEdit;
    Label2: TLabel;
    ibAutorizar: TBitBtn;
    ibCancelar: TBitBtn;
    Label4: TLabel;
    Label5: TLabel;
    laNivel: TLabel;
    fcImager2: TImage;
    laNombre: TLabel;
    laAcronimo: TLabel;
    laVersion: TLabel;
    fcImager3: TImage;
    fcImager4: TImage;
    fcImager7: TImage;
    edClave: TEdit;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ibAutorizarClick(Sender: TObject);
  private
    { Private declarations }
    nivel     : integer;
    Autorizar : TAutorizar;
    aceptar   : boolean;
  public
    { Public declarations }
    constructor Crear(AOwner : TComponent; pNivel : integer);
    function autorizacion : boolean;
  end;

var
  frmAutorizar: TfrmAutorizar;

implementation

{$R *.DFM}

constructor TfrmAutorizar.Crear(AOwner : TComponent; pNivel : integer);
begin
   Create(AOwner);
   aceptar := false;
   nivel := pNivel;
end;

procedure TfrmAutorizar.FormShow(Sender: TObject);
begin
  Autorizar          := TAutorizar.Create(nivel);
  laNombre.Caption   := Autorizar.NOMBRE;
  laAcronimo.Caption := Autorizar.ACRONIMO;
  laVersion.Caption  := Autorizar.VERSION;
  laNivel.Caption    := IntToStr(nivel);
end;

procedure TfrmAutorizar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  // Liberamos el objeto
  Autorizar.Free;
  Autorizar:=nil;
end;

function TfrmAutorizar.autorizacion : boolean;
begin
   Result := aceptar;
end;

procedure TfrmAutorizar.ibAutorizarClick(Sender: TObject);
begin
   Autorizar.ejecutarAutorizacion(edUsuario.Text, edClave.Text);
   aceptar := Autorizar.RESPUESTA;
   if aceptar then
      Close;
end;

end.
