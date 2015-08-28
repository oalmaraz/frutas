unit capturar_tipo_de_ctas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  capturarMDI, Db, IBCustomDataSet,
  StdCtrls, IBStoredProc, IBTable,  DBCtrls, Mask,
    jpeg,  ExtCtrls,  IBQuery,
  Buttons;

type
  TfrmCapturar_tipo_de_ctas = class(TfrmCapturarMDI)
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
  frmCapturar_tipo_de_ctas: TfrmCapturar_tipo_de_ctas;

implementation

uses IBModulo, explorar_tipo_de_ctas;

{$R *.DFM}

procedure TfrmCapturar_tipo_de_ctas.ibNuevoClick(Sender: TObject);
begin
  inherited;
  deNombre.SetFocus;
end;

procedure TfrmCapturar_tipo_de_ctas.ibModificarClick(Sender: TObject);
begin
  inherited;
  deNombre.SetFocus;
end;

end.
