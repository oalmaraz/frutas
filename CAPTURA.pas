unit captura;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
    StdCtrls;

type
  TTipoParametro = (tpCadena, tpEntero, tpFlotante);
  TfrmCaptura = class(TForm)
    laTitulo: TLabel;
    edCaptura: TEdit;
    laTexto: TLabel;
    procedure inicializacion;
    procedure edCapturaKeyPress(Sender: TObject; var Key: Char);
    procedure ibAceptarClick(Sender: TObject);
    procedure ibCancelarClick(Sender: TObject);
  private
    { Private declarations }
    procedure solo_numeros(var k : char);
    procedure solo_numeros_y_punto(var k : char;const texto : string);
  public
    { Public declarations }
    FTitulo    : string;
    FTexto     : string;
    FRespuesta : boolean;
    FLongitud  : integer;
    FTipo      : TTipoParametro;
    FInput     : string;
  end;

{var
  frmCaptura: TfrmCaptura;}

implementation

{$R *.DFM}

procedure TfrmCaptura.solo_numeros(var k : char);
begin
   case k of
     char(0)..char(7),char(9)..char(12),char(14)..char(47),char(58)..char(255): k:=char(nil);
   end;
end;

procedure TfrmCaptura.solo_numeros_y_punto(var k : char;const texto : string);
   procedure verificar;
   var
      i : integer;
   begin
      for i := 1 to length(texto) do
         if texto[i] = '.' then
            k := char(nil);
   end;
begin
   if k = '.' then
      verificar;
   case k of
     char(0)..char(7),char(9)..char(12),char(14)..char(45),char(47),char(58)..char(255): k:=char(nil);
   end;
end;

procedure TfrmCaptura.inicializacion;
begin
   laTitulo.Caption    := FTitulo;
   laTexto.Caption     := FTexto;
   edCaptura.Text      := FInput;
   edCaptura.MaxLength := FLongitud;
end;

procedure TfrmCaptura.edCapturaKeyPress(Sender: TObject; var Key: Char);
begin
   if FTipo = tpEntero then
      solo_numeros(Key)
   else
      if FTipo = tpFlotante then
         solo_numeros_y_punto(Key,edCaptura.Text)
end;

procedure TfrmCaptura.ibAceptarClick(Sender: TObject);
begin
   FRespuesta  := TRUE;
   FInput      := edCaptura.Text;
   ModalResult := mrOk;
end;

procedure TfrmCaptura.ibCancelarClick(Sender: TObject);
begin
   FRespuesta  := FALSE;
   ModalResult := mrCancel;
end;

end.
