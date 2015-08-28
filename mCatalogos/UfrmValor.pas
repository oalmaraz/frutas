unit UfrmValor;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls,     ExtCtrls,
  jpeg,  Buttons;

type
  TfrmValor = class(TForm)
    cbPorPorc: TCheckBox;
    edValor: TEdit;
    Label1: TLabel;
    buCancelar: TBitBtn;
    buAceptar: TBitBtn;
    laTitulo: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    procedure buCancelarClick(Sender: TObject);
    procedure buAceptarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    awrModalResult : boolean;
    function getValor : double;
    function getPor_Porc : string;
    procedure setTitulo(valor : string);
    procedure setActivar(valor : boolean);
  public
    { Public declarations }
  published
     property VALOR    : Double read getValor;
     property POR_PORC : String read getPor_Porc;
     property Result   : Boolean read awrModalResult;
     property TITULO   : String write setTitulo;
     property ACTIVAR  : Boolean write setActivar;
  end;

var
  frmValor: TfrmValor;

implementation

{$R *.DFM}

procedure TfrmValor.setActivar(valor : boolean);
begin
   cbPorPorc.Visible := valor;
end;

procedure TfrmValor.setTitulo(valor : string);
begin
   laTitulo.Caption := valor;
end;

function TfrmValor.getValor : double;
begin
   result := StrToFloat(edValor.Text);
end;

function TfrmValor.getPor_Porc : string;
var
   tmp : string;
begin
   tmp := 'No';
   if cbPorPorc.Checked then
      tmp := 'Si';
   result := tmp;
end;

procedure TfrmValor.buCancelarClick(Sender: TObject);
begin
   awrModalResult := false;
   Close;
end;

procedure TfrmValor.buAceptarClick(Sender: TObject);
begin
   awrModalResult := true;
   Close;
end;

procedure TfrmValor.FormCreate(Sender: TObject);
begin
   awrModalResult   := false;
   laTitulo.Caption := '';
end;

end.
