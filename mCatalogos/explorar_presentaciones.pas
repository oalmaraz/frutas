unit explorar_presentaciones;
                          
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  explorarMDI,    Menus,   Db,
  IBCustomDataSet, IBQuery,  StdCtrls,    ComCtrls,
  Grids, DBGrids, Mask, DBCtrls, Buttons, ExtCtrls;

type
  TfrmExplorar_presentaciones = class(TfrmExplorarMDI)
    qyExplorarR_ID: TIntegerField;
    qyExplorarR_DESCRIPCION: TIBStringField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmExplorar_presentaciones: TfrmExplorar_presentaciones;

implementation

{$R *.DFM}

procedure TfrmExplorar_presentaciones.FormCreate(Sender: TObject);
begin
  inherited;
  EXP_NVO     := true;
  CAMPO_FECHA := '';
  FForma      := 'frmCapturar_presentaciones';
end;

end.
