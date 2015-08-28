unit teclado_numerico;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  padre, jpeg,  StdCtrls, Buttons, ExtCtrls;

type
  TfrmTeclado_Numerico = class(TfrmPadre)
    ibAutorizar: TBitBtn;
    fcImageBtn1: TBitBtn;
    fcImageBtn2: TBitBtn;
    fcImageBtn3: TBitBtn;
    fcImageBtn4: TBitBtn;
    ibImprimir: TBitBtn;
    fcImageBtn20: TBitBtn;
    fcImageBtn21: TBitBtn;
    fcImageBtn22: TBitBtn;
    ibCero: TBitBtn;
    fcImageBtn5: TBitBtn;
    fcImageBtn6: TBitBtn;
    fcImageBtn7: TBitBtn;
    ibAceptar: TBitBtn;
    ibBorrar: TBitBtn;
    edCaptura: TEdit;
    ibCancelar: TBitBtn;
    fcImager1: TImage;
    fcImager2: TImage;
    fcImager3: TImage;
    fcImager4: TImage;
    fcImager5: TImage;
    fcImager6: TImage;
    procedure ibBorrarClick(Sender: TObject);
    procedure ibCeroClick(Sender: TObject);
    procedure fcImageBtn5Click(Sender: TObject);
    procedure ibAutorizarClick(Sender: TObject);
    procedure fcImageBtn1Click(Sender: TObject);
    procedure fcImageBtn2Click(Sender: TObject);
    procedure fcImageBtn3Click(Sender: TObject);
    procedure fcImageBtn4Click(Sender: TObject);
    procedure ibImprimirClick(Sender: TObject);
    procedure fcImageBtn20Click(Sender: TObject);
    procedure fcImageBtn21Click(Sender: TObject);
    procedure fcImageBtn22Click(Sender: TObject);
  private
    { Private declarations }
    procedure letra(p_valor : string);
  public
    { Public declarations }
  end;

var
  frmTeclado_Numerico: TfrmTeclado_Numerico;

implementation

uses reglas_de_negocios;

{$R *.DFM}

procedure TfrmTeclado_Numerico.letra(p_valor : string);
var
   tmp      : string;
   tmp2     : string;
   posicion : integer;
begin
   tmp      := '';
   tmp2     := '';

   reglas.solo_numeros_y_punto(p_valor[1],edCaptura.Text);
   if p_valor = #0 then
      p_valor := '';

   posicion := edCaptura.SelStart;

   tmp  := copy(edCaptura.Text, 1, edCaptura.SelStart);
   tmp  := tmp + p_valor;
   tmp2 := copy(edCaptura.Text,edCaptura.SelStart + 1, length(edCaptura.Text) - edCaptura.SelStart);
   tmp := tmp + tmp2;
   edCaptura.Text := tmp;
   if length(tmp2) = 0 then
      edCaptura.SelStart := length(tmp)
   else
      edCaptura.SelStart := posicion + 1;
end;

procedure TfrmTeclado_Numerico.ibBorrarClick(Sender: TObject);
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

procedure TfrmTeclado_Numerico.ibCeroClick(Sender: TObject);
begin
  inherited;
  letra('0');
end;

procedure TfrmTeclado_Numerico.fcImageBtn5Click(Sender: TObject);
begin
  inherited;
  letra('.');
end;

procedure TfrmTeclado_Numerico.ibAutorizarClick(Sender: TObject);
begin
  inherited;
  letra('1');
end;

procedure TfrmTeclado_Numerico.fcImageBtn1Click(Sender: TObject);
begin
  inherited;
  letra('2');
end;

procedure TfrmTeclado_Numerico.fcImageBtn2Click(Sender: TObject);
begin
  inherited;
  letra('3');
end;

procedure TfrmTeclado_Numerico.fcImageBtn3Click(Sender: TObject);
begin
  inherited;
  letra('4');
end;

procedure TfrmTeclado_Numerico.fcImageBtn4Click(Sender: TObject);
begin
  inherited;
  letra('5');
end;

procedure TfrmTeclado_Numerico.ibImprimirClick(Sender: TObject);
begin
  inherited;
  letra('6');
end;

procedure TfrmTeclado_Numerico.fcImageBtn20Click(Sender: TObject);
begin
  inherited;
  letra('7');
end;

procedure TfrmTeclado_Numerico.fcImageBtn21Click(Sender: TObject);
begin
  inherited;
  letra('8');
end;

procedure TfrmTeclado_Numerico.fcImageBtn22Click(Sender: TObject);
begin
  inherited;
  letra('9');
end;

end.
