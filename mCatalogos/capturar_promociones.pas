unit capturar_promociones;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  capturarMDI,     StdCtrls,
  IBStoredProc, Db, IBCustomDataSet, IBTable,  DBCtrls, Mask,
     jpeg,  ExtCtrls,
  IBQuery, Buttons;

type
  TfrmCapturar_promociones = class(TfrmCapturarMDI)
    Label1: TLabel;
    deClave: TDBEdit;
    TCapturarID: TIntegerField;
    TCapturarCLAVE: TIBStringField;
    procedure ibNuevoClick(Sender: TObject);
    procedure ibModificarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCapturar_promociones: TfrmCapturar_promociones;

implementation

uses IBModulo, explorar_promociones;

{$R *.DFM}

procedure TfrmCapturar_promociones.ibNuevoClick(Sender: TObject);
begin
  inherited;
  deClave.SetFocus;
end;

procedure TfrmCapturar_promociones.ibModificarClick(Sender: TObject);
begin
  inherited;
  deClave.SetFocus;
end;

end.
