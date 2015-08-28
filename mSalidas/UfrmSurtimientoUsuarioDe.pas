unit UfrmSurtimientoUsuarioDe;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   StdCtrls, Buttons, ExtCtrls;

type
  TfrmSurtimientoUsuarioDe = class(TForm)
    paBotones: TPanel;
    buGuardar: TBitBtn;
    buSalir: TBitBtn;
    rbVentas: TRadioButton;
    rbCXC: TRadioButton;
    procedure paBotonesClick(Sender: TObject);
    procedure buGuardarClick(Sender: TObject);
  private
    { Private declarations }
    awrUsuarioDe : string;
  public
    { Public declarations }
  published
     property USUARIODE : string read awrUsuarioDe;
  end;

var
  frmSurtimientoUsuarioDe: TfrmSurtimientoUsuarioDe;

implementation

{$R *.DFM}

procedure TfrmSurtimientoUsuarioDe.paBotonesClick(Sender: TObject);
begin
   awrUsuarioDe := '';
end;

procedure TfrmSurtimientoUsuarioDe.buGuardarClick(Sender: TObject);
begin
   if rbVentas.Checked then
      awrUsuarioDe := 'VENTAS'
   else
   if rbCXC.Checked then
      awrUsuarioDe := 'CXC';
end;

end.
