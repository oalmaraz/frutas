unit Login;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls;

type
  TfmLogin = class(TForm)
    paAcceso: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    edUsuario: TEdit;
    edClave: TEdit;
    Panel1: TPanel;
    Label3: TLabel;
    btnEntrar: TBitBtn;
    BitBtn1: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmLogin: TfmLogin;

implementation

{$R *.DFM}

end.
