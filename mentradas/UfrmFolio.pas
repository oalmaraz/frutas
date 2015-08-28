
unit UfrmFolio;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, StdCtrls, ExtCtrls;

type
  TfrmFolio = class(TForm)
    Shape1: TShape;
    laTitulo: TLabel;
    Shape2: TShape;
    edFolio: TEdit;
    Label2: TLabel;
    buAutorizar: TBitBtn;
    buAceptar: TBitBtn;
    buCancelar: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure buCancelarClick(Sender: TObject);
    procedure buAceptarClick(Sender: TObject);
    procedure buAutorizarClick(Sender: TObject);
    procedure edFolioKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    awrModalResult : boolean;
    awrNivel       : word;
    procedure setTitulo(valor : string);
    procedure setFolio(valor : integer);

    function getFolio : integer;
  public
    { Public declarations }
  published
     property Titulo : string write setTitulo;
     property Folio  : integer read getFolio write setFolio;
     property Nivel  : word read awrNivel write awrNivel;
     property ModalResult : boolean read awrModalResult write awrModalResult;
  end;

var
  frmFolio: TfrmFolio;

implementation

uses
  UfrmAcceso;

{$R *.DFM}

procedure TfrmFolio.setFolio(valor : integer);
begin
   edFolio.Text := IntToStr(valor);
end;

function TfrmFolio.getFolio : integer;
begin
   result := StrToInt( edFolio.Text);
end;

procedure TfrmFolio.setTitulo(valor : string);
begin
   laTitulo.Caption := valor;
end;

procedure TfrmFolio.FormCreate(Sender: TObject);
begin
   awrModalResult := false;
   awrNivel       := 10;
end;

procedure TfrmFolio.buCancelarClick(Sender: TObject);
begin
   awrModalResult := false;
   Close;
end;

procedure TfrmFolio.buAceptarClick(Sender: TObject);
begin
   awrModalResult := true;
   Close;
end;

procedure TfrmFolio.buAutorizarClick(Sender: TObject);
var
   mr : boolean;
begin
     try
        frmAcceso        := TfrmAcceso.Create(Application);
        frmAcceso.Nivel  := awrNivel;
        frmAcceso.Status := 'Folio';
        frmAcceso.ShowModal;
        mr := frmAcceso.Rsp;
     finally
        frmAcceso.Release;
     end;

     if (mr) then
     begin
        edFolio.ReadOnly := false;
     end;
end;

procedure TfrmFolio.edFolioKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
      buAceptar.OnClick(Sender);
end;

end.
