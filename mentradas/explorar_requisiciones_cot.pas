unit explorar_requisiciones_cot;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  explorarMDI, Db,   ComCtrls, Grids, DBGrids, Buttons,
  Menus, IBCustomDataSet, IBQuery, StdCtrls, Mask, DBCtrls,
  ExtCtrls;

type
  TfrmExplorar_requisicion_cotizaciones = class(TfrmExplorarMDI)
    qyExplorarR_ID: TIntegerField;
    qyExplorarR_CLAVE: TIBStringField;
    qyExplorarR_DEPARTAMENTO: TIBStringField;
    qyExplorarR_FECHA_ENTREGA: TDateTimeField;
    qyExplorarR_NOMBRE: TIBStringField;
    qyExplorarR_RAZON_SOCIAL: TIBStringField;
    qyExplorarR_FECHA_VALIDEZ: TDateTimeField;
    qyExplorarCOMPRA_MINIMA: TFloatField;
    qyExplorarDESCUENTO_PORC: TFloatField;
    qyExplorarR_FECHA: TDateTimeField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmExplorar_requisicion_cotizaciones: TfrmExplorar_requisicion_cotizaciones;

implementation

{$R *.DFM}

procedure TfrmExplorar_requisicion_cotizaciones.FormCreate(
  Sender: TObject);
begin
  inherited;
  EXP_NVO     := true;
  CAMPO_FECHA := 'R_FECHA';
  FForma      := 'frmCapturar_requisicion_cotizaciones';
end;

end.
