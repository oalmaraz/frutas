unit capturar_botones;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  capturarMDI, IBStoredProc, Db, IBCustomDataSet, IBTable, 
  DBCtrls, StdCtrls, Mask,    jpeg,
  ExtCtrls,      IBQuery,
  Buttons;

type
  TfrmCapturar_botones = class(TfrmCapturarMDI)
    Label1: TLabel;
    TCapturarID: TIntegerField;
    TCapturarNOMBRE: TIBStringField;
    procedure ibNuevoClick(Sender: TObject);
    procedure ibModificarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCapturar_botones: TfrmCapturar_botones;

implementation

uses IBModulo, explorar_botones;

{$R *.DFM}

procedure TfrmCapturar_botones.ibNuevoClick(Sender: TObject);
begin
  inherited;
  //deNombre.SetFocus;
end;

procedure TfrmCapturar_botones.ibModificarClick(Sender: TObject);
begin
  inherited;
  //deNombre.SetFocus;
end;

end.
