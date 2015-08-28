unit explorar_grupos_materiales;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  explorarMDI,    Menus,   Db,
  IBCustomDataSet, IBQuery,  StdCtrls,
     Mask, DBCtrls,    ComCtrls, Grids, DBGrids,
  Buttons, ExtCtrls;

type
  TfrmExplorar_Grupos_Materiales = class(TfrmExplorarMDI)
    qyExplorarR_ID: TIntegerField;
    qyExplorarR_NOMBRE: TIBStringField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmExplorar_Grupos_Materiales: TfrmExplorar_Grupos_Materiales;

implementation

{$R *.DFM}

procedure TfrmExplorar_Grupos_Materiales.FormCreate(Sender: TObject);
begin
  inherited;
  EXP_NVO     := true;
  CAMPO_FECHA := '';
  FForma      := 'frmCapturar_grupos_materiales';
end;

end.
