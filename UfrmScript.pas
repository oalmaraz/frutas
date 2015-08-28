unit UfrmScript;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
    ExtCtrls, Grids, DBGrids, StdCtrls, Buttons;

type
  TfrmScript = class(TForm)
    edScript: TMemo;
    paBotones: TPanel;
    buSalir: TBitBtn;
    procedure buSalirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure AddStrings(valor : TStrings);
  end;

var
  frmScript: TfrmScript;

implementation

{$R *.DFM}

procedure TfrmScript.AddStrings(valor : TStrings);
begin
   edScript.Lines.Clear;
   edScript.Lines.AddStrings(valor);
end;

procedure TfrmScript.buSalirClick(Sender: TObject);
begin
   Close;
end;

end.
