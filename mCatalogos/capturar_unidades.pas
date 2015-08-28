unit capturar_unidades;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  capturarMDI, IBStoredProc, Db, IBCustomDataSet, IBTable,
  DBCtrls, StdCtrls, Mask,    jpeg,
  ExtCtrls,      IBQuery,
  Buttons;

type
  TfrmCapturar_unidades = class(TfrmCapturarMDI)
    Label1: TLabel;
    Label2: TLabel;
    deClave: TDBEdit;
    deDescripcion: TDBEdit;
    TCapturarID: TIntegerField;
    TCapturarCLAVE: TIBStringField;
    TCapturarDESCRIPCION: TIBStringField;
    procedure ibNuevoClick(Sender: TObject);
    procedure ibModificarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCapturar_unidades: TfrmCapturar_unidades;

implementation

uses explorar_unidades, IBModulo;

{$R *.DFM}

procedure TfrmCapturar_unidades.ibNuevoClick(Sender: TObject);
begin
  inherited;
  deClave.SetFocus;
end;

procedure TfrmCapturar_unidades.ibModificarClick(Sender: TObject);
begin
  inherited;
  deClave.SetFocus;
end;

end.
