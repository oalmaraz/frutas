unit explorar_promociones;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  explorarMDI,  Menus,   Db,
  IBCustomDataSet, IBQuery,  StdCtrls,
     Mask, DBCtrls,
     jpeg,  ExtCtrls,
    ComCtrls, Grids, DBGrids, Buttons;

type
  TfrmExplorar_promociones = class(TfrmExplorarMDI)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmExplorar_promociones: TfrmExplorar_promociones;

implementation

{$R *.DFM}

procedure TfrmExplorar_promociones.FormCreate(Sender: TObject);
begin
  inherited;
  EXP_NVO     := true;
  CAMPO_FECHA := '';
  FForma      := 'frmCapturar_promociones';
end;

end.
