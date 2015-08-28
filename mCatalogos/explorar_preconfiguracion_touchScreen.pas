unit explorar_preconfiguracion_touchScreen;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  explorarMDI,    Menus,   Db,
  IBCustomDataSet, IBQuery,  StdCtrls,
     Mask, DBCtrls,
     jpeg,  ExtCtrls,
    ComCtrls, Grids, DBGrids, Buttons;

type
  TfrmExplorar_preconfiguracion_touchScreen = class(TfrmExplorarMDI)
    qyExplorarR_ID: TIntegerField;
    qyExplorarR_GRUPO_MATERIAL_NOMBRE: TIBStringField;
    qyExplorarR_MATERIAL_CLAVE: TIBStringField;
    qyExplorarR_MATERIAL_DESCRIPCION: TIBStringField;
    qyExplorarR_MATERIAL_UNIDAD_DESC: TIBStringField;
    qyExplorarR_VISUALIZAR: TIBStringField;
    qyExplorarR_ORDEN_VISUALIZACION: TIntegerField;
    qyExplorarR_ALMACEN: TIBStringField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmExplorar_preconfiguracion_touchScreen: TfrmExplorar_preconfiguracion_touchScreen;

implementation

{$R *.DFM}

procedure TfrmExplorar_preconfiguracion_touchScreen.FormCreate(Sender: TObject);
begin
  inherited;
  EXP_NVO     := true;
  CAMPO_FECHA := '';
  FForma      := 'frmCapturar_preconfiguracion_touchScreen';
end;

end.
