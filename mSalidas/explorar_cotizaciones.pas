unit explorar_cotizaciones;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  explorarMDI, Db, ComCtrls, Grids, DBGrids, Buttons,
  Menus, IBCustomDataSet, IBQuery, StdCtrls, Mask, DBCtrls,
  ExtCtrls;

type
  TfrmExplorar_cotizaciones = class(TfrmExplorarMDI)
    qyExplorarR_ID: TIntegerField;
    qyExplorarR_CLAVE: TIBStringField;
    qyExplorarR_FECHA_ALTA: TDateTimeField;
    qyExplorarR_NOMBRE: TIBStringField;
    qyExplorarR_RAZON_SOCIAL: TIBStringField;
    qyExplorarR_FECHA_VALIDEZ: TDateTimeField;
    qyExplorarR_GRANTOTAL: TFloatField;
    qyExplorarR_ESTATUS: TIBStringField;
    qyExplorarR_SEGURO_SUBTOTAL: TFloatField;
    qyExplorarR_SEGURO_IVA: TFloatField;
    qyExplorarseguro: TFloatField;
    qyExplorarsupertotal: TFloatField;
    qyEsVendedor: TIBQuery;
    qyExplorarR_PROYECTO: TIBStringField;
    procedure FormCreate(Sender: TObject);
    procedure qyExplorarCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    procedure Parametros; override;
  public
    { Public declarations }
  end;

var
  frmExplorar_cotizaciones: TfrmExplorar_cotizaciones;

implementation

uses USQLAnaliza, IBData, IBModulo, reglas_de_negocios;

{$R *.DFM}

procedure TfrmExplorar_cotizaciones.Parametros;
begin
   sqlExp.setParam(1, reglas.dame_usuario, psCadena);
   sqlExp.setParam(2, reglas.dame_usuario, psCadena);
   sqlExp.setParam(3, reglas.dame_usuario, psCadena);
end;

procedure TfrmExplorar_cotizaciones.FormCreate(Sender: TObject);
var
   awrSeguro : Boolean;
begin
  inherited;
  EXP_NVO     := true;
  CAMPO_FECHA := 'R_FECHA_ALTA';
  FForma      := 'frmCapturar_cotizaciones';

  reglas.abrir_IBTabla(dmIBData.TPreferencias);
  //Activar Seguro
  dmIBData.TPreferencias.Filter := 'ID = 157';

  awrSeguro := UpperCase(dmIBData.TPreferencias.FieldByName('VALOR').AsString) = 'SI';
  {
  dgExplorarGRANTOTAL.Visible := awrSeguro;
  dgExplorarSEGURO.Visible    := awrSeguro;
   }
{  qyEsVendedor.Close;
  qyEsVendedor.ParamByName('P_USUARIO').AsInteger := reglas.dame_usuario;
  qyEsVendedor.Open;}
  Parametros;
end;

procedure TfrmExplorar_cotizaciones.qyExplorarCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('seguro').AsFloat     := DataSet.FieldByName('R_SEGURO_SUBTOTAL').AsFloat + DataSet.FieldByName('R_SEGURO_IVA').AsFloat;
  DataSet.FieldByName('supertotal').AsFloat := DataSet.FieldByName('R_GRANTOTAL').AsFloat + DataSet.FieldByName('seguro').AsFloat;
end;

end.
