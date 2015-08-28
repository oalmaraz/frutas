unit explorar_ordenes_de_compras;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  explorarMDI, Db,
  IBCustomDataSet, IBQuery,   ComCtrls, Grids, DBGrids, Buttons,
  Menus, StdCtrls, Mask, DBCtrls, ExtCtrls;

type
  TfrmExplorar_ordenes_de_compras = class(TfrmExplorarMDI)
    qyExplorarR_ID: TIntegerField;
    qyExplorarR_CLAVE: TIBStringField;
    qyExplorarR_FECHA_ALTA: TDateTimeField;
    qyExplorarR_DEPARTAMENTO: TIBStringField;
    qyExplorarR_ALMACEN: TIBStringField;
    qyExplorarR_FECHA_ENTREGA: TDateTimeField;
    qyExplorarR_FECHA_ENTREGA_REAL: TDateTimeField;
    qyExplorarR_C_PROVEEDOR: TIBStringField;
    qyExplorarR_PROVEEDOR: TIBStringField;
    qyExplorarR_RAZON_SOCIAL: TIBStringField;
    qyExplorarR_ESTATUS: TIBStringField;
    qyExplorarR_TOTAL: TFloatField;
    qyExplorarR_FOLIO: TIntegerField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmExplorar_ordenes_de_compras: TfrmExplorar_ordenes_de_compras;

implementation

{$R *.DFM}

procedure TfrmExplorar_ordenes_de_compras.FormCreate(Sender: TObject);
begin
  inherited;
  EXP_NVO     := true;
  CAMPO_FECHA := 'R_FECHA_ALTA';
  FForma      := 'frmCapturar_Ordenes_de_Compras';
end;

end.
