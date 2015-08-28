unit capturar_calidades;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  capturarMDI, IBStoredProc, IBTable,  Db, IBCustomDataSet,
  IBQuery, DBCtrls, StdCtrls, Mask,    jpeg,
   ExtCtrls,     
  Buttons;

type
  TfrmCapturar_calidades = class(TfrmCapturarMDI)
    TCapturarID: TIntegerField;
    deNombre: TDBEdit;
    Label1: TLabel;
    TCapturarNOMBRE: TIBStringField;
    procedure ibNuevoClick(Sender: TObject);
    procedure ibModificarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCapturar_calidades: TfrmCapturar_calidades;

implementation

uses explorar_calidades, IBModulo;

{$R *.DFM}

procedure TfrmCapturar_calidades.ibNuevoClick(Sender: TObject);
begin
  inherited;
  deNombre.SetFocus;
end;

procedure TfrmCapturar_calidades.ibModificarClick(Sender: TObject);
begin
  inherited;
  deNombre.SetFocus;
end;

end.
