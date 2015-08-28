unit teclado;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  padre,      StdCtrls, jpeg,
   ExtCtrls,  Buttons;

type
  TfrmTeclado = class(TfrmPadre)
    ibAutorizar: TBitBtn;
    fcImageBtn1: TBitBtn;
    fcImageBtn2: TBitBtn;
    fcImageBtn3: TBitBtn;
    fcImageBtn4: TBitBtn;
    fcImageBtn5: TBitBtn;
    fcImageBtn6: TBitBtn;
    fcImageBtn7: TBitBtn;
    fcImageBtn8: TBitBtn;
    fcImageBtn9: TBitBtn;
    fcImageBtn10: TBitBtn;
    fcImageBtn11: TBitBtn;
    fcImageBtn12: TBitBtn;
    fcImageBtn13: TBitBtn;
    fcImageBtn14: TBitBtn;
    fcImageBtn15: TBitBtn;
    fcImageBtn16: TBitBtn;
    fcImageBtn17: TBitBtn;
    fcImageBtn18: TBitBtn;
    fcImageBtn19: TBitBtn;
    ibImprimir: TBitBtn;
    fcImageBtn20: TBitBtn;
    fcImageBtn21: TBitBtn;
    fcImageBtn22: TBitBtn;
    fcImageBtn23: TBitBtn;
    fcImageBtn24: TBitBtn;
    fcImageBtn25: TBitBtn;
    fcImageBtn26: TBitBtn;
    fcImageBtn27: TBitBtn;
    fcImageBtn28: TBitBtn;
    fcImageBtn29: TBitBtn;
    fcImageBtn30: TBitBtn;
    fcImageBtn31: TBitBtn;
    fcImageBtn32: TBitBtn;
    fcImageBtn33: TBitBtn;
    fcImageBtn34: TBitBtn;
    fcImageBtn35: TBitBtn;
    fcImageBtn39: TBitBtn;
    edCaptura: TEdit;
    ibBorrar: TBitBtn;
    laMayuscula: TLabel;
    fcImageBtn37: TBitBtn;
    fcImageBtn38: TBitBtn;
    fcImageBtn40: TBitBtn;
    fcImager1: TImage;
    fcImager2: TImage;
    fcImager3: TImage;
    fcImager4: TImage;
    fcImager5: TImage;
    fcImager6: TImage;
    fcImageBtn41: TBitBtn;
    ibComodin: TBitBtn;
    procedure fcImageBtn39Click(Sender: TObject);
    procedure fcImageBtn10Click(Sender: TObject);
    procedure fcImageBtn11Click(Sender: TObject);
    procedure fcImageBtn12Click(Sender: TObject);
    procedure fcImageBtn13Click(Sender: TObject);
    procedure fcImageBtn14Click(Sender: TObject);
    procedure fcImageBtn29Click(Sender: TObject);
    procedure fcImageBtn30Click(Sender: TObject);
    procedure fcImageBtn31Click(Sender: TObject);
    procedure fcImageBtn32Click(Sender: TObject);
    procedure fcImageBtn33Click(Sender: TObject);
    procedure fcImageBtn15Click(Sender: TObject);
    procedure fcImageBtn16Click(Sender: TObject);
    procedure fcImageBtn17Click(Sender: TObject);
    procedure fcImageBtn18Click(Sender: TObject);
    procedure fcImageBtn19Click(Sender: TObject);
    procedure fcImageBtn34Click(Sender: TObject);
    procedure fcImageBtn35Click(Sender: TObject);
    procedure fcImageBtn5Click(Sender: TObject);
    procedure fcImageBtn6Click(Sender: TObject);
    procedure fcImageBtn7Click(Sender: TObject);
    procedure fcImageBtn8Click(Sender: TObject);
    procedure fcImageBtn9Click(Sender: TObject);
    procedure fcImageBtn24Click(Sender: TObject);
    procedure fcImageBtn25Click(Sender: TObject);
    procedure fcImageBtn26Click(Sender: TObject);
    procedure fcImageBtn27Click(Sender: TObject);
    procedure fcImageBtn28Click(Sender: TObject);
    procedure ibAutorizarClick(Sender: TObject);
    procedure fcImageBtn1Click(Sender: TObject);
    procedure fcImageBtn2Click(Sender: TObject);
    procedure fcImageBtn3Click(Sender: TObject);
    procedure fcImageBtn4Click(Sender: TObject);
    procedure ibImprimirClick(Sender: TObject);
    procedure fcImageBtn20Click(Sender: TObject);
    procedure fcImageBtn21Click(Sender: TObject);
    procedure fcImageBtn22Click(Sender: TObject);
    procedure fcImageBtn23Click(Sender: TObject);
    procedure ibBorrarClick(Sender: TObject);
    procedure fcImageBtn37Click(Sender: TObject);
    procedure fcImageBtn38Click(Sender: TObject);
    procedure ibComodinClick(Sender: TObject);
  private
    { Private declarations }
    procedure letra(const p_valor : string);
  public
    { Public declarations }
  end;

var
  frmTeclado: TfrmTeclado;

implementation

{$R *.DFM}

procedure TfrmTeclado.letra(const p_valor : string);
var
   tmp      : string;
   tmp2     : string;
   posicion : integer;
   valor    : string;
begin
   tmp      := '';
   tmp2     := '';
   valor    := p_valor;
   posicion := edCaptura.SelStart;

   if laMayuscula.Visible then
      valor := UpperCase(valor);

   tmp  := copy(edCaptura.Text, 1, edCaptura.SelStart);
   tmp  := tmp + valor;
   tmp2 := copy(edCaptura.Text,edCaptura.SelStart + 1, length(edCaptura.Text) - edCaptura.SelStart);
   tmp := tmp + tmp2;
   edCaptura.Text := tmp;
   if length(tmp2) = 0 then
      edCaptura.SelStart := length(tmp)
   else
      edCaptura.SelStart := posicion + 1;
end;

procedure TfrmTeclado.fcImageBtn39Click(Sender: TObject);
begin
  inherited;
  laMayuscula.Visible            := not(laMayuscula.Visible);
end;

procedure TfrmTeclado.fcImageBtn10Click(Sender: TObject);
begin
  inherited;
  letra('a');
end;

procedure TfrmTeclado.fcImageBtn11Click(Sender: TObject);
begin
  inherited;
  letra('s');
end;

procedure TfrmTeclado.fcImageBtn12Click(Sender: TObject);
begin
  inherited;
  letra('d');
end;

procedure TfrmTeclado.fcImageBtn13Click(Sender: TObject);
begin
  inherited;
  letra('f');
end;

procedure TfrmTeclado.fcImageBtn14Click(Sender: TObject);
begin
  inherited;
  letra('g');
end;

procedure TfrmTeclado.fcImageBtn29Click(Sender: TObject);
begin
  inherited;
  letra('h');
end;

procedure TfrmTeclado.fcImageBtn30Click(Sender: TObject);
begin
  inherited;
  letra('j');
end;

procedure TfrmTeclado.fcImageBtn31Click(Sender: TObject);
begin
  inherited;
  letra('k');
end;

procedure TfrmTeclado.fcImageBtn32Click(Sender: TObject);
begin
  inherited;
  letra('l');
end;

procedure TfrmTeclado.fcImageBtn33Click(Sender: TObject);
begin
  inherited;
  if laMayuscula.Visible then
     letra('Ñ')
  else
     letra('ñ');
end;

procedure TfrmTeclado.fcImageBtn15Click(Sender: TObject);
begin
  inherited;
  letra('z');
end;

procedure TfrmTeclado.fcImageBtn16Click(Sender: TObject);
begin
  inherited;
  letra('x');
end;

procedure TfrmTeclado.fcImageBtn17Click(Sender: TObject);
begin
  inherited;
  letra('c');
end;

procedure TfrmTeclado.fcImageBtn18Click(Sender: TObject);
begin
  inherited;
  letra('v');
end;

procedure TfrmTeclado.fcImageBtn19Click(Sender: TObject);
begin
  inherited;
  letra('b');
end;

procedure TfrmTeclado.fcImageBtn34Click(Sender: TObject);
begin
  inherited;
  letra('n');
end;

procedure TfrmTeclado.fcImageBtn35Click(Sender: TObject);
begin
  inherited;
  letra('m');
end;

procedure TfrmTeclado.fcImageBtn5Click(Sender: TObject);
begin
  inherited;
  letra('q');
end;

procedure TfrmTeclado.fcImageBtn6Click(Sender: TObject);
begin
  inherited;
  letra('w');
end;

procedure TfrmTeclado.fcImageBtn7Click(Sender: TObject);
begin
  inherited;
  letra('e');
end;

procedure TfrmTeclado.fcImageBtn8Click(Sender: TObject);
begin
  inherited;
  letra('r');
end;

procedure TfrmTeclado.fcImageBtn9Click(Sender: TObject);
begin
  inherited;
  letra('t');
end;

procedure TfrmTeclado.fcImageBtn24Click(Sender: TObject);
begin
  inherited;
  letra('y');
end;

procedure TfrmTeclado.fcImageBtn25Click(Sender: TObject);
begin
  inherited;
  letra('u');
end;

procedure TfrmTeclado.fcImageBtn26Click(Sender: TObject);
begin
  inherited;
  letra('i');
end;

procedure TfrmTeclado.fcImageBtn27Click(Sender: TObject);
begin
  inherited;
  letra('o');
end;

procedure TfrmTeclado.fcImageBtn28Click(Sender: TObject);
begin
  inherited;
  letra('p');
end;

procedure TfrmTeclado.ibAutorizarClick(Sender: TObject);
begin
  inherited;
  letra('1');
end;

procedure TfrmTeclado.fcImageBtn1Click(Sender: TObject);
begin
  inherited;
  letra('2');
end;

procedure TfrmTeclado.fcImageBtn2Click(Sender: TObject);
begin
  inherited;
  letra('3');
end;

procedure TfrmTeclado.fcImageBtn3Click(Sender: TObject);
begin
  inherited;
  letra('4');
end;

procedure TfrmTeclado.fcImageBtn4Click(Sender: TObject);
begin
  inherited;
  letra('5');
end;

procedure TfrmTeclado.ibImprimirClick(Sender: TObject);
begin
  inherited;
  letra('6');
end;

procedure TfrmTeclado.fcImageBtn20Click(Sender: TObject);
begin
  inherited;
  letra('7');
end;

procedure TfrmTeclado.fcImageBtn21Click(Sender: TObject);
begin
  inherited;
  letra('8');
end;

procedure TfrmTeclado.fcImageBtn22Click(Sender: TObject);
begin
  inherited;
  letra('9');
end;

procedure TfrmTeclado.fcImageBtn23Click(Sender: TObject);
begin
  inherited;
  letra('0');
end;

procedure TfrmTeclado.ibBorrarClick(Sender: TObject);
var
   tmp      : string;
   tmp2     : string;
   posicion : integer;
begin
  inherited;
   tmp      := '';
   tmp2     := '';
   posicion := edCaptura.SelStart;

   tmp  := copy(edCaptura.Text, 1, edCaptura.SelStart -  1);
   tmp2 := copy(edCaptura.Text,edCaptura.SelStart + 1, length(edCaptura.Text) - edCaptura.SelStart);
   tmp := tmp + tmp2;
   edCaptura.Text := tmp;
   if length(tmp2) = 0 then
      edCaptura.SelStart := length(tmp)
   else
      edCaptura.SelStart := posicion - 1;
end;

procedure TfrmTeclado.fcImageBtn37Click(Sender: TObject);
begin
  inherited;
    letra(' ');
end;

procedure TfrmTeclado.fcImageBtn38Click(Sender: TObject);
begin
  inherited;
  letra('.');
end;

procedure TfrmTeclado.ibComodinClick(Sender: TObject);
begin
  inherited;
  letra('%');
end;

end.
