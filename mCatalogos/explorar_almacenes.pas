unit explorar_almacenes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  explorarMDI,    Menus,   Db,
  IBCustomDataSet, IBQuery,  StdCtrls,
     Mask, DBCtrls,
     jpeg,  ExtCtrls,
      ComCtrls, Grids, DBGrids,
  Buttons;

type
  TfrmExplorar_almacenes = class(TfrmExplorarMDI)
    qyExplorarR_ID: TIntegerField;
    qyExplorarR_CLAVE: TIBStringField;
    qyExplorarR_NOMBRE: TIBStringField;
    qyExplorarR_COMPRA: TIBStringField;
    qyExplorarR_VENDE: TIBStringField;
    qyExplorarR_TRANSFORMA: TIBStringField;
    qyExplorarR_FECHA: TDateTimeField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmExplorar_almacenes: TfrmExplorar_almacenes;

implementation

{$R *.DFM}

procedure TfrmExplorar_almacenes.FormCreate(Sender: TObject);
begin
  inherited;
  EXP_NVO     := true;
  CAMPO_FECHA := 'R_FECHA';
  FForma      := 'frmCapturar_almacenes';
end;

end.
