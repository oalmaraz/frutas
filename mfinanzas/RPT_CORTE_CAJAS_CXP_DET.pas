unit RPT_CORTE_CAJAS_CXP_DET;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, IBCustomDataSet, IBQuery,   ExtCtrls;

type
  TfrmRPT_CORTE_CAJAS_CXP_DET = class(TForm)
    qyDetalle: TIBQuery;
    qyDetalleR_ID: TIntegerField;
    qyDetalleR_FOLIO_PAGO: TIntegerField;
    qyDetalleR_FECHA_ALTA: TDateTimeField;
    qyDetalleR_USUARIO: TIntegerField;
    qyDetalleR_USUARIO_NOMBRE: TIBStringField;
    qyDetalleR_CAJA: TIntegerField;
    qyDetalleR_CAJA_NOMBRE: TIBStringField;
    qyDetalleR_GRANTOTAL: TFloatField;
    qyDetalleR_ESTATUS: TIBStringField;
    qyDetalleR_DET_ID: TIntegerField;
    qyDetalleR_DET_CXP_PAGOS: TIntegerField;
    qyDetalleR_DET_CUENTA_X_PAGAR: TIntegerField;
    qyDetalleR_DET_FECHA_DOCUMENTO: TDateTimeField;
    qyDetalleR_DET_FECHA_VENCIMIENTO: TDateTimeField;
    qyDetalleR_DET_IMPORTE: TFloatField;
    qyDetalleR_DET_IMPORTE_INICIAL: TFloatField;
    qyDetalleR_DET_NUMERO_DE_DOCUMENTOS: TIntegerField;
    qyDetalleR_DET_DOCUMENTO: TIntegerField;
    qyDetalleR_DET_ESTATUS: TIBStringField;
    qyDetalleR_REFERENCIA: TIBStringField;
    qyDetalleR_PROVEEDOR: TIntegerField;
    qyDetalleR_PROVEEDOR_NOMBRE: TIBStringField;
    qyDetalleR_GRANTOTAL_DETALLE: TFloatField;
    dsDetalle: TDataSource;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    awrCambio  : boolean;
    awrCaja    : integer;
    awrAlmacen : integer;
    awrFInicio : TDatetime;
    awrFFin    : TDatetime;
  public
    { Public declarations }
    procedure Preview;
  published
     property caja : integer read awrCaja write awrCaja;
     property almacen : integer read awrAlmacen write awrAlmacen;
     property fechaInicio : TDatetime read awrFInicio write awrFInicio;
     property fechaFin : TDatetime read awrFFin write awrFFin;
  end;

var
  frmRPT_CORTE_CAJAS_CXP_DET: TfrmRPT_CORTE_CAJAS_CXP_DET;

implementation

uses
  reglas_de_negocios;

{$R *.DFM}

procedure TfrmRPT_CORTE_CAJAS_CXP_DET.Preview;
begin
  qyDetalle.Close;
  qyDetalle.ParamByName('P_CAJA').AsInteger    := caja;
  qyDetalle.ParamByName('P_FECHA').AsString    := FormatDateTime('dd/mm/yyyy', fechaInicio);
  qyDetalle.Open;
end;

procedure TfrmRPT_CORTE_CAJAS_CXP_DET.FormCreate(Sender: TObject);
begin
   almacen := 0;
   caja    := 0;
end;



end.
