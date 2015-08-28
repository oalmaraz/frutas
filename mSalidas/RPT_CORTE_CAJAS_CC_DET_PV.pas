unit RPT_CORTE_CAJAS_CC_DET_PV;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
 ExtCtrls, Db, IBCustomDataSet, IBQuery;

type
  TfrmRPT_CORTE_CAJAS_CC_DET_PV = class(TForm)
    qyCorteDetalle: TIBQuery;
    qyCorteDetalleR_ID: TIntegerField;
    qyCorteDetalleR_FOLIO_DE_VENTA: TIntegerField;
    qyCorteDetalleR_CAJA: TIntegerField;
    qyCorteDetalleR_CAJA_NOMBRE: TIBStringField;
    qyCorteDetalleR_CLIENTE: TIntegerField;
    qyCorteDetalleR_CLIENTE_NOMBRE: TIBStringField;
    qyCorteDetalleR_EXTENSION: TIntegerField;
    qyCorteDetalleR_EXTENSION_NOMBRE: TIBStringField;
    qyCorteDetalleR_FECHA: TDateTimeField;
    qyCorteDetalleR_GRANTOTAL: TFloatField;
    qyCorteDetalleR_CAMBIO: TFloatField;
    qyCorteDetalleR_MONTO: TFloatField;
    qyCorteDetalleR_REFERENCIA_PAGO: TIntegerField;
    qyCorteDetalleR_REFERENCIA_NOMBRE: TIBStringField;
    qyCorteDetalleR_QUE: TIBStringField;
    qyCorteDetalleR_QUE_CLAVE: TIBStringField;
    qyCorteDetalleR_PRIORIDAD: TIBStringField;
    qyCorteDetalleR_ALMACEN: TIntegerField;
    qyCorteDetalleR_ALMACEN_CLAVE: TIBStringField;
    qyCorteDetalleR_ALMACEN_NOMBRE: TIBStringField;
    qyCorteDetalleR_FECHA_ALTA: TDateTimeField;
    qyResumenDetalle: TIBQuery;
    qyResumenDetalleR_GRANTOTAL: TFloatField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    awrCambio  : boolean;
    awrCaja    : integer;
    awrAlmacen : integer;
    awrFInicio : TDatetime;
    awrFFin    : TDatetime;
    awrOpcion  : integer;
  public
    { Public declarations }
    procedure Preview;
  published
     property caja : integer read awrCaja write awrCaja;
     property almacen : integer read awrAlmacen write awrAlmacen;
     property fechaInicio : TDatetime read awrFInicio write awrFInicio;
     property fechaFin : TDatetime read awrFFin write awrFFin;
     property opcion : integer read awrOpcion write awrOpcion;
  end;

{var
  frmRPT_CORTE_CAJAS_CC_DET_PV: TfrmRPT_CORTE_CAJAS_CC_DET_PV;
  }

implementation

uses reglas_de_negocios;

{$R *.DFM}

procedure TfrmRPT_CORTE_CAJAS_CC_DET_PV.Preview;
begin
   qyCorteDetalle.Close;
   qyCorteDetalle.ParamByName('P_FECHA_DEL').AsString := FormatDateTime('dd/mm/yyyy',fechaInicio);
   qyCorteDetalle.ParamByName('P_FECHA_AL').AsString  := FormatDateTime('dd/mm/yyyy',fechaFin);
   qyCorteDetalle.ParamByName('P_CAJA').AsInteger     := caja;
   qyCorteDetalle.ParamByName('P_ALMACEN').AsInteger  := almacen;
   qyCorteDetalle.ParamByName('P_OPCION').AsInteger   := opcion;
   qyCorteDetalle.Open;
end;


procedure TfrmRPT_CORTE_CAJAS_CC_DET_PV.FormCreate(Sender: TObject);
begin
   opcion  := 9;
   almacen := 0;
   caja    := 0;
end;





end.
