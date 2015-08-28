unit capturar_departamentos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  capturarMDI,     StdCtrls,
  IBStoredProc, Db, IBCustomDataSet, IBTable,  DBCtrls, Mask,
     jpeg,  ExtCtrls, 
  IBQuery, Buttons;

type
  TfrmCapturar_departamentos = class(TfrmCapturarMDI)
    deClave: TDBEdit;
    deDescripcion: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
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
  frmCapturar_departamentos: TfrmCapturar_departamentos;

implementation

uses IBModulo, explorar_departamentos;

{$R *.DFM}

procedure TfrmCapturar_departamentos.ibNuevoClick(Sender: TObject);
begin
  inherited;
  deClave.SetFocus;
end;

procedure TfrmCapturar_departamentos.ibModificarClick(Sender: TObject);
begin
  inherited;
  deClave.SetFocus;
end;

end.
