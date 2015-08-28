unit capturar_tipos_de_formas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  capturarMDI, IBStoredProc, Db, IBCustomDataSet, IBTable, 
  DBCtrls, StdCtrls, Mask,    jpeg,
  ExtCtrls,      IBQuery,
  Buttons;

type
  TfrmCapturar_tipos_de_formas = class(TfrmCapturarMDI)
    TCapturarID: TIntegerField;
    TCapturarNOMBRE: TIBStringField;
    Label1: TLabel;
    deNombre: TDBEdit;
    procedure ibNuevoClick(Sender: TObject);
    procedure ibModificarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCapturar_tipos_de_formas: TfrmCapturar_tipos_de_formas;

implementation

uses IBModulo, explorar_tipos_de_formas;

{$R *.DFM}

procedure TfrmCapturar_tipos_de_formas.ibNuevoClick(Sender: TObject);
begin
  inherited;
  deNombre.SetFocus;
end;

procedure TfrmCapturar_tipos_de_formas.ibModificarClick(Sender: TObject);
begin
  inherited;
  deNombre.SetFocus;
end;

end.
