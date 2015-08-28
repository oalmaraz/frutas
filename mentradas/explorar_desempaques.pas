unit explorar_desempaques;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  explorarMDI,ComCtrls, Grids, DBGrids, Buttons, Db,
  Menus, IBCustomDataSet, IBQuery, StdCtrls, Mask, DBCtrls,
  ExtCtrls;

type
  TfrmExplorar_desempaques = class(TfrmExplorarMDI)
    qyExplorarR_ID: TIntegerField;
    qyExplorarR_ORDEN_COMPRA: TIntegerField;
    qyExplorarR_CLAVE: TIBStringField;
    qyExplorarR_FECHA_RECEPCION: TDateTimeField;
    qyExplorarR_CONDUCTOR: TIBStringField;
    qyExplorarR_PLACAS: TIBStringField;
    qyExplorarR_FACTURA_PROVEEDOR: TIBStringField;
    qyExplorarR_ID_OC: TIntegerField;
    qyExplorarR_FOLIO_OC: TIntegerField;
    qyExplorarR_PROVEEDOR_C: TIBStringField;
    qyExplorarR_PROVEEDOR_N: TIBStringField;
    qyExplorarR_ESTATUS: TIBStringField;
    qyExplorarR_CONSECUTIVO: TIntegerField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmExplorar_desempaques: TfrmExplorar_desempaques;

implementation

{$R *.DFM}

procedure TfrmExplorar_desempaques.FormCreate(Sender: TObject);
begin
  inherited;
  EXP_NVO     := true;
  CAMPO_FECHA := 'R_FECHA_RECEPCION';
  FForma      := 'frmCapturar_desempaques';
end;

end.
