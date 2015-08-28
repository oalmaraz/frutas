unit explorar_grupos_colores;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  explorarMDI,    Menus,   Db,
  IBCustomDataSet, IBQuery,  StdCtrls,
  Mask, DBCtrls,
     jpeg,  ExtCtrls,   ComCtrls, Grids, DBGrids, Buttons;

type
  TfrmExplorar_grupos_colores = class(TfrmExplorarMDI)
    qyExplorarR_ID: TIntegerField;
    qyExplorarR_NOMBRE: TIBStringField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmExplorar_grupos_colores: TfrmExplorar_grupos_colores;

implementation

{$R *.DFM}

procedure TfrmExplorar_grupos_colores.FormCreate(Sender: TObject);
begin
  inherited;
  EXP_NVO     := true;
  CAMPO_FECHA := '';
  FForma      := 'frmCapturar_grupos_colores';
end;

end.
