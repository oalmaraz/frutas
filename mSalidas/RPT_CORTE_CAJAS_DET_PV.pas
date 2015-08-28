unit RPT_CORTE_CAJAS_DET_PV;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
    ExtCtrls, Db, IBCustomDataSet, IBQuery;

type
  TfrmRPT_CORTE_CAJAS_DET_PV = class(TForm)
    dsDetalle: TDataSource;
    qyDetalle: TIBQuery;
    qyDetalleR_ID: TIntegerField;
    qyDetalleR_FOLIO_DE_VENTA: TIntegerField;
    qyDetalleR_CAJA: TIntegerField;
    qyDetalleR_CAJA_NOMBRE: TIBStringField;
    qyDetalleR_CLIENTE: TIntegerField;
    qyDetalleR_CLIENTE_NOMBRE: TIBStringField;
    qyDetalleR_EXTENSION: TIntegerField;
    qyDetalleR_EXTENSION_NOMBRE: TIBStringField;
    qyDetalleR_FECHA: TDateTimeField;
    qyDetalleR_GRANTOTAL: TFloatField;
    qyDetalleR_CAMBIO: TFloatField;
    qyDetalleR_ID_DETALLE: TIntegerField;
    qyDetalleR_PUNTO_DE_VENTA: TIntegerField;
    qyDetalleR_MATERIAL: TIntegerField;
    qyDetalleR_MATERIAL_NOMBRE: TIBStringField;
    qyDetalleR_CANTIDAD: TFloatField;
    qyDetalleR_UNIDAD: TIntegerField;
    qyDetalleR_UNIDAD_DESCRIPCION: TIBStringField;
    qyDetalleR_PRECIO_VENTA: TFloatField;
    qyDetalleR_VENDEDOR: TIntegerField;
    qyDetalleR_VENDEDOR_NOMBRE: TIBStringField;
    qyDetalleR_SUBTOTAL: TFloatField;
    qyDetalleR_TOTAL: TFloatField;
    qyDetalleR_GRANTOTAL_DETALLE: TFloatField;
    qyDetalleR_ESTATUS: TIBStringField;
    qyDetalleR_UNIDAD_CLAVE: TIBStringField;
    qyDetalleR_CAJAS: TIntegerField;
    qyDetalleR_QUE: TIBStringField;
    qyDetalleR_QUE_CLAVE: TIBStringField;
    qyDetalleR_TOTAL_CAJAS: TFloatField;
    qyDetalleR_TIPO_CAJA_CLAVE: TIBStringField;
    qyDetalleR_TIPO_CAJA_DESCRIPCION: TIBStringField;
    qyDetalleR_PRIORIDAD: TIBStringField;
    qyDetalleR_ALMACEN: TIntegerField;
    qyDetalleR_ALMACEN_CLAVE: TIBStringField;
    qyDetalleR_ALMACEN_NOMBRE: TIBStringField;
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
  frmRPT_CORTE_CAJAS_DET_PV: TfrmRPT_CORTE_CAJAS_DET_PV;}

implementation

uses reglas_de_negocios, IBData;

{$R *.DFM}

procedure TfrmRPT_CORTE_CAJAS_DET_PV.Preview;
begin
   qyDetalle.Close;
   qyDetalle.ParamByName('P_FECHA_DEL').AsString := FormatDateTime('dd/mm/yyyy',fechaInicio);
   qyDetalle.ParamByName('P_FECHA_AL').AsString  := FormatDateTime('dd/mm/yyyy',fechaFin);
   qyDetalle.ParamByName('P_CAJA').AsInteger     := caja;
   qyDetalle.ParamByName('P_ALMACEN').AsInteger  := almacen;
   qyDetalle.ParamByName('P_OPCION').AsInteger   := opcion;
   qyDetalle.Open;
   //qrCorteDetalle.PreviewModal;
end;



procedure TfrmRPT_CORTE_CAJAS_DET_PV.FormCreate(Sender: TObject);
begin
   opcion  := 3;
   almacen := 0;
   caja    := 0;
   //Activar campo cajas en punto de venta(grid)
   reglas.abrir_IBTabla(dmIBData.TPreferencias);
   dmIBData.TPreferencias.Filter := 'ID = 32';

end;


end.
