unit RPT_CORTE_CAJAS_CAJAS;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
    ExtCtrls, Db, IBCustomDataSet, IBQuery;

type
  TfrmRPT_CORTE_CAJAS_CAJAS = class(TForm)
    qyResumenCajas: TIBQuery;
    qyResumenCajasR_COBRO: TIBStringField;
    qyResumenCajasR_TIPO_CAJA: TIntegerField;
    qyResumenCajasR_TIPO_NOMBRE: TIBStringField;
    qyResumenCajasTOTAL: TFloatField;
    qyResumenCajasR_CALIDADES: TIBStringField;
    qyResumenCajasNUM_CAJAS: TIntegerField;
    qyDetalleCajas: TIBQuery;
    qyDetalleCajasR_ID: TIntegerField;
    qyDetalleCajasR_FOLIO_DE_VENTA: TIntegerField;
    qyDetalleCajasR_CAJA: TIntegerField;
    qyDetalleCajasR_CAJA_NOMBRE: TIBStringField;
    qyDetalleCajasR_CLIENTE: TIntegerField;
    qyDetalleCajasR_CLIENTE_NOMBRE: TIBStringField;
    qyDetalleCajasR_EXTENSION: TIntegerField;
    qyDetalleCajasR_EXTENSION_NOMBRE: TIBStringField;
    qyDetalleCajasR_FECHA: TDateTimeField;
    qyDetalleCajasR_GRANTOTAL: TFloatField;
    qyDetalleCajasR_CAMBIO: TFloatField;
    qyDetalleCajasR_COBRO: TIBStringField;
    qyDetalleCajasR_NUM_CAJAS: TIntegerField;
    qyDetalleCajasR_TIPO_CAJA: TIntegerField;
    qyDetalleCajasR_TIPO_NOMBRE: TIBStringField;
    qyDetalleCajasR_TOTAL_CAJAS: TFloatField;
    qyDetalleCajasR_CALIDADES: TIBStringField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    awrCambio  : boolean;
    awrAlmacen : integer;
    awrCaja    : integer;
    awrFInicio : TDatetime;
    awrFFin    : TDatetime;
  public
    { Public declarations }
    procedure Preview;
  published
     property caja    : integer read awrCaja write awrCaja; 
     property almacen : integer read awrAlmacen write awrAlmacen;
     property fechaInicio : TDatetime read awrFInicio write awrFInicio;
     property fechaFin : TDatetime read awrFFin write awrFFin;
  end;

{var
  frmRPT_CORTE_CAJAS_CAJAS: TfrmRPT_CORTE_CAJAS_CAJAS;}

implementation

uses reglas_de_negocios;

{$R *.DFM}

procedure TfrmRPT_CORTE_CAJAS_CAJAS.Preview;
begin
   qyDetalleCajas.Close;
   qyDetalleCajas.ParamByName('P_CAJA').AsInteger    := caja;
   qyDetalleCajas.ParamByName('P_FECHA').AsString    := FormatDateTime('dd/mm/yyyy',fechaInicio);
   qyDetalleCajas.ParamByName('P_ALMACEN').AsInteger := almacen;
   qyDetalleCajas.Open;

   qyResumenCajas.Close;
   qyResumenCajas.ParamByName('P_CAJA').AsInteger    := caja;
   qyResumenCajas.ParamByName('P_FECHA').AsString    := FormatDateTime('dd/mm/yyyy',fechaInicio);
   qyResumenCajas.ParamByName('P_ALMACEN').AsInteger := almacen;
   qyResumenCajas.Open;

end;

procedure TfrmRPT_CORTE_CAJAS_CAJAS.FormCreate(Sender: TObject);
begin
   caja    := 0;
   almacen := 0;
end;

end.
