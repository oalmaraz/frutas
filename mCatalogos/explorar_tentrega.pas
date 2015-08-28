unit explorar_tentrega;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  explorarMDI, Menus,   Db, IBCustomDataSet, IBQuery,
    ComCtrls,
  Grids, DBGrids, Buttons,    StdCtrls, Mask,
  DBCtrls, ExtCtrls;

type
  TfrmExplorar_tentrega = class(TfrmExplorarMDI)
    qyExplorarR_ID: TIntegerField;
    qyExplorarR_DESCRIPCION: TIBStringField;
    qyExplorarR_PESO: TFloatField;
    qyExplorarR_TARIFA: TFloatField;
    qyExplorarR_UNIDAD: TIBStringField;
    qyExplorarR_MONEDA: TIBStringField;
    qyExplorarR_TRANSPORTISTA: TIBStringField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmExplorar_tentrega: TfrmExplorar_tentrega;

implementation

{$R *.DFM}

procedure TfrmExplorar_tentrega.FormCreate(Sender: TObject);
begin
  inherited;
  EXP_NVO     := true;
  CAMPO_FECHA := '';
  FForma      := 'frmCapturar_tentrega';
end;

end.
