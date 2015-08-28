unit UfrmF12Imp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls;

type
  TfrmF12Imp = class(TForm)
    paBotones: TPanel;
    buGuardar: TBitBtn;
    buSalir: TBitBtn;
    rbSi: TRadioButton;
    rbNo: TRadioButton;
    Label1: TLabel;
    procedure paBotonesClick(Sender: TObject);
    procedure buGuardarClick(Sender: TObject);
  private
    { Private declarations }
    awrF12Imp : string;
  public
    { Public declarations }
  published
     property F12IMP : string read awrF12Imp;
  end;

var
  frmF12Imp: TfrmF12Imp;

implementation

{$R *.DFM}

procedure TfrmF12Imp.paBotonesClick(Sender: TObject);
begin
   awrF12Imp := '';
end;

procedure TfrmF12Imp.buGuardarClick(Sender: TObject);
begin
   if rbSi.Checked then
      awrF12Imp := 'SI'
   else
   if rbNo.Checked then
      awrF12Imp := 'NO';
end;

end.
