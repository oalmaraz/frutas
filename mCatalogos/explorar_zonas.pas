unit explorar_zonas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  explorarMDI, Menus,   Db, IBCustomDataSet, IBQuery,
   Buttons,    ComCtrls, StdCtrls, Grids,
  DBGrids, Mask, DBCtrls, ExtCtrls;

type
  TfrmExplorar_zonas = class(TfrmExplorarMDI)
    qyExplorarR_ID: TIntegerField;
    qyExplorarR_DESCRIPCION: TIBStringField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmExplorar_zonas: TfrmExplorar_zonas;

implementation

{$R *.DFM}

procedure TfrmExplorar_zonas.FormCreate(Sender: TObject);
begin
  inherited;
  EXP_NVO     := true;
  CAMPO_FECHA := '';
  FForma      := 'frmCapturar_zonas';
end;

end.
