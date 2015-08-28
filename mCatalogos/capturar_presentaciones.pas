unit capturar_presentaciones;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  capturarMDI, IBStoredProc, IBTable,  Db, IBCustomDataSet,
  IBQuery, StdCtrls, Mask, DBCtrls, 
  Buttons, ExtCtrls;

type
  TfrmCapturar_presentaciones = class(TfrmCapturarMDI)
    TCapturarID: TIntegerField;
    TCapturarDESCRIPCION: TIBStringField;
    Label1: TLabel;
    deDescripcion: TDBEdit;
    procedure ibNuevoClick(Sender: TObject);
    procedure ibModificarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCapturar_presentaciones: TfrmCapturar_presentaciones;

implementation

uses
  explorar_presentaciones, IBModulo;

{$R *.DFM}

procedure TfrmCapturar_presentaciones.ibNuevoClick(Sender: TObject);
begin
  inherited;
  deDescripcion.SetFocus;
end;

procedure TfrmCapturar_presentaciones.ibModificarClick(Sender: TObject);
begin
  inherited;
  deDescripcion.SetFocus;
end;

end.
