unit explorar_cajas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  explorarMDI,    Menus,   Db,
  IBCustomDataSet, IBQuery,  StdCtrls,
     Mask, DBCtrls,
     jpeg,  ExtCtrls,
    ComCtrls, Grids, DBGrids, Buttons;

type
  TfrmExplorar_cajas = class(TfrmExplorarMDI)
    qyExplorarR_ID: TIntegerField;
    qyExplorarR_NOMBRE: TIBStringField;
    qyExplorarR_CLAVE_ALMACEN: TIBStringField;
    qyExplorarR_NOMBRE_USUARIO: TIBStringField;
    qyExplorarR_TIPO_DE_CAJA: TIBStringField;
    qyExplorarR_ESTATUS: TIBStringField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmExplorar_cajas: TfrmExplorar_cajas;

implementation

{$R *.DFM}

procedure TfrmExplorar_cajas.FormCreate(Sender: TObject);
begin
  inherited;
  EXP_NVO     := true;
  CAMPO_FECHA := '';
  FForma      := 'frmCapturar_cajas';
end;

end.
