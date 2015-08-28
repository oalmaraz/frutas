unit UfrmColaboradores;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
       StdCtrls, Buttons;

type
  TfrmColaboradores = class(TForm)
    bt: TBitBtn;
    procedure btClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmColaboradores: TfrmColaboradores;

implementation

{$R *.DFM}

procedure TfrmColaboradores.btClick(Sender: TObject);
begin
   Close;

end;

end.
