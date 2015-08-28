unit capturar_clasificaciones;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  capturarMDI,     StdCtrls,
  IBStoredProc, Db, IBCustomDataSet, IBTable,  DBCtrls, Mask,
     jpeg,  ExtCtrls,
  IBQuery, Buttons;

type
  TfrmCapturar_clasificaciones = class(TfrmCapturarMDI)
    Label12: TLabel;
    deDescripcion: TDBEdit;
    TCapturarID: TIntegerField;
    TCapturarDESCRIPCION: TIBStringField;
    procedure ibNuevoClick(Sender: TObject);
    procedure ibModificarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCapturar_clasificaciones: TfrmCapturar_clasificaciones;

implementation

uses explorar_clasificaciones, IBModulo;

{$R *.DFM}

procedure TfrmCapturar_clasificaciones.ibNuevoClick(Sender: TObject);
begin
  inherited;
  deDescripcion.SetFocus;
end;

procedure TfrmCapturar_clasificaciones.ibModificarClick(Sender: TObject);
begin
  inherited;
  deDescripcion.SetFocus;
end;

end.
