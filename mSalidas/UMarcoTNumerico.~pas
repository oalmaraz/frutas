unit UMarcoTNumerico;

interface

uses 
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons;

type
  TMarcoTNumerico = class(TFrame)
    bu7: TSpeedButton;
    bu8: TSpeedButton;
    bu9: TSpeedButton;
    bu4: TSpeedButton;
    bu5: TSpeedButton;
    bu6: TSpeedButton;
    bu1: TSpeedButton;
    bu2: TSpeedButton;
    bu3: TSpeedButton;
    bu0: TSpeedButton;
    buPunto: TSpeedButton;
    buIntro: TSpeedButton;
    buBorrar: TSpeedButton;
    procedure bu7Click(Sender: TObject);
    procedure bu8Click(Sender: TObject);
    procedure bu9Click(Sender: TObject);
    procedure bu4Click(Sender: TObject);
    procedure bu5Click(Sender: TObject);
    procedure bu6Click(Sender: TObject);
    procedure bu1Click(Sender: TObject);
    procedure bu2Click(Sender: TObject);
    procedure bu3Click(Sender: TObject);
    procedure bu0Click(Sender: TObject);
    procedure buPuntoClick(Sender: TObject);
    procedure buBorrarClick(Sender: TObject);
  private
    { Private declarations }
    awrNumero   : string;
    awrSelStart : integer;
    procedure letra(p_valor : string);
  public
    { Public declarations }
  published
     property Numero   : string  read awrNumero   write awrNumero;
     property SelStart : integer read awrSelStart write awrSelStart;
  end;

implementation

uses
  reglas_de_negocios;

{$R *.DFM}

procedure TMarcoTNumerico.letra(p_valor : string);
var
   tmp      : string;
   tmp2     : string;
   posicion : integer;
begin
   tmp      := '';
   tmp2     := '';

   reglas.solo_numeros_y_punto(p_valor[1],awrNumero);
   if p_valor = #0 then
      p_valor := '';

   posicion := awrSelStart;

   tmp  := copy(awrNumero, 1, awrSelStart);
   tmp  := tmp + p_valor;
   tmp2 := copy(awrNumero, awrSelStart + 1, length(awrNumero) - awrSelStart);
   tmp := tmp + tmp2;
   awrNumero := tmp;
   if length(tmp2) = 0 then
      awrSelStart := length(tmp)
   else
      awrSelStart := posicion + 1;
end;

procedure TMarcoTNumerico.bu7Click(Sender: TObject);
begin
  letra('7');
end;

procedure TMarcoTNumerico.bu8Click(Sender: TObject);
begin
  letra('8');
end;

procedure TMarcoTNumerico.bu9Click(Sender: TObject);
begin
   letra('9');
end;

procedure TMarcoTNumerico.bu4Click(Sender: TObject);
begin
   letra('4');
end;

procedure TMarcoTNumerico.bu5Click(Sender: TObject);
begin
   letra('5');
end;

procedure TMarcoTNumerico.bu6Click(Sender: TObject);
begin
   letra('6');
end;

procedure TMarcoTNumerico.bu1Click(Sender: TObject);
begin
   letra('1');
end;

procedure TMarcoTNumerico.bu2Click(Sender: TObject);
begin
   letra('2');
end;

procedure TMarcoTNumerico.bu3Click(Sender: TObject);
begin
   letra('3');
end;

procedure TMarcoTNumerico.bu0Click(Sender: TObject);
begin
   letra('0');
end;

procedure TMarcoTNumerico.buPuntoClick(Sender: TObject);
begin
   letra('.');
end;

procedure TMarcoTNumerico.buBorrarClick(Sender: TObject);
var
   tmp      : string;
   tmp2     : string;
   posicion : integer;
begin
   tmp      := '';
   tmp2     := '';
   posicion := awrSelStart;

   tmp       := copy(awrNumero, 1, awrSelStart -  1);
   tmp2      := copy(awrNumero, awrSelStart + 1, length(awrNumero) - awrSelStart);
   tmp       := tmp + tmp2;
   awrNumero := tmp;
   if length(tmp2) = 0 then
      awrSelStart := length(tmp)
   else
      awrSelStart := posicion - 1;
end;

end.
