unit URecords;

interface

uses
   UTipos, classes;

type
   _ChequesGirados = record
      ID                    : integer;
      REFERENCIA            : String20;
      MONTO                 : double;
      MONEDA                : integer;
      PROVEEDOR             : variant;
      PROVEEDOR_CLAVE       : String50;
      PROVEEDOR_NOMBRE      : String100;
      FECHA_ALTA            : TDatetime;
      FECHA_APLICACION      : TDatetime;
      OBSERVACIONES         : TMemoryStream;
      FECHA_APLICACION_REAL : TDatetime;
      SEL                   : String2;
      TABLA_REFERENCIA      : String50;
      ID_REFERENCIA         : variant;
      USUARIO               : integer;
      AUTORIZO              : variant;
      ESTATUS               : String20;
      CHEQUERA              : integer;
      BANCO                 : integer;
      BANCO_NOMBRE          : String100;
      CONSECUTIVO           : integer;
      ABONO_CTA             : String2;
   end;

   _CuentasPorPagar = record
      ESTATUS          : String20;
      FECHA_ULT_COMPRA : TDatetime;
      FECHA_ULT_PAGO   : TDatetime;
      PROVEEDOR        : integer;
      PROVEEDOR_CLAVE  : String50;
      PROVEEDOR_NOMBRE : String100;
      SALDO_PROVEEDOR  : double;
      SALDO_T_VENCIDO  : double;
      SALDO_VENCIDO    : double;
      FOTO             : TMemoryStream;
      ALMACEN          : integer;
      ALMACEN_NOMBRE   : String100;
      CAJA             : integer;
      CAJA_NOMBRE      : String100;
      IMPORTE_A_PAGAR  : double;
      USUARIO          : integer;
      USUARIO_NOMBRE   : String100;
      RESTO            : double;
      TELEFONO         : String20;
      CAJAS            : integer;
   end;

   _Cupones = record
      ID           : integer;
      ALMACEN      : integer;
      FECHA_INICIO : TDatetime;
      FECHA_FIN    : TDatetime;
      PORCENTAJE   : double;
      ESTATUS      : String20;
   end;

   _EstadoDeCuentas = record
      ESTATUS          : String20;
      FECHA_ULT_COMPRA : TDatetime;
      FECHA_ULT_PAGO   : TDatetime;
      CLIENTE          : integer;
      CLIENTE_CLAVE    : String50;
      CLIENTE_NOMBRE   : String100;
      LIMITE_CREDITO   : double;
      SALDO_CLIENTE    : double;
      SALDO_EXTENSION  : double;
      SALDO_T_VENCIDO  : double;
      SALDO_TOTAL      : double;
      SALDO_VENCIDO    : double;
      FOTO             : TMemoryStream;
      FIRMA            : TMemoryStream;
      ALMACEN          : integer;
      ALMACEN_NOMBRE   : String100;
      CAJA             : integer;
      CAJA_NOMBRE      : String100;
      IMPORTE_A_PAGAR  : double;
      USUARIO          : integer;
      USUARIO_NOMBRE   : String100;
      TODOS            : String2;
      RESTO            : double;
      TELEFONO         : String20;
      CAJAS            : integer;
      MONEDA           : integer;
   end;

   _EntradasServiciosDetalle = record
      ID             : integer;
      NOTA_ENTRADA   : integer;
      MATERIAL       : variant;
      CANTIDAD       : double;
      UNIDAD         : variant;
      PRECIO         : double;
      IVA            : double;
      IEPS           : double;
      IMPUESTO1      : double;
      IMPUESTO2      : double;
      COSTO_PROMEDIO : double;
      COSTO_PEPS     : double;
      COSTO_UEPS     : double;
      SUBTOTAL       : double;
      IVA_DP         : double;
      IEPS_DP        : double;
      IMPUESTO1_DP   : double;
      IMPUESTO2_DP   : double;
      IVA_DG         : double;
      IEPS_DG        : double;
      IMPUESTO1_DG   : double;
      IMPUESTO2_DG   : double;
      SUBTOTAL_DP    : double;
      SUBTOTAL_DG    : double;
      PRECIO_VENTA   : double;
      CONCEPTO       : String100;
   end;

   _EntradasServicios = record
      ID                  : integer;
      CLAVE               : String20;
      FACTURA_PROVEEDOR   : String10;
      ORDEN_COMPRA        : variant;
      OC_FOLIO            : variant; 
      OC_CLAVE            : String20;
      DESEMPAQUE          : variant;
      FECHA_ALTA          : TDatetime;
      ALMACEN             : variant;
      ALMACEN_CLAVE       : String20; 
      TOTAL               : double;
      IVA                 : double;
      IEPS                : double;
      IMPUESTO1           : double;
      IMPUESTO2           : double;
      MONEDA              : integer;
      ESTATUS             : String20;
      SUBTOTAL            : double;
      GRANTOTAL           : double;
      DESCUENTO_GLOBAL    : double;
      DESCUENTO_PARCIAL   : double;
      RETENCION           : double;
      BONIFICACION_XTRA   : double;
      ID_REFERENCIA       : variant;
      TABLA_REFERENCIA    : String50;
      DESCUENTO_XTRA      : double;
      PROVEEDOR           : variant;
      PROVEEDOR_CLAVE     : String50;
      PROVEEDOR_NOMBRE    : String100;
      OBSERVACIONES       : TMemoryStream;
      CONSECUTIVO         : integer;
      CONDICION_COMERCIAL : variant;
   end;

   _ComisionVendedoresDetalle = record
      ID                 : integer;
      COMISION_VENDEDOR  : integer;
      CUENTA_POR_COBRAR  : integer;
      PAGO               : double;
      ESTATUS            : String20;
   end;

   _ComisionVendedores = record
      ID                : integer;
      FECHA_ALTA        : TDatetime;
      FECHA_CANCELACION : variant;
      CLAVE             : String20;
      VENDEDOR          : integer;
      VENDEDOR_CLAVE    : String50;
      VENDEDOR_NOMBRE   : String100;
      OBSERVACIONES     : TMemoryStream;
      CONSECUTIVO       : integer;
      SUBTOTAL          : double;
      IVA               : double;
      TOTAL             : double;
      RETENCION         : double;
      DESCUENTO_XTRA    : double;
      BONIFICACION_XTRA : double;
      GRANTOTAL         : double;
      MONEDA            : integer;
      USUARIO           : integer;
      ESTATUS           : String20;
      TIPO              : String10;
   end;

   _ReporteAbonos = record
      FECHA_APLICACION : String2;
      FECHA_DEL : TDatetime;
      FECHA_AL  : TDatetime;
      BANCO     : integer;
      CLIENTE   : integer;
      EXTENSION : integer;
   end;

   _NCreditoDet = record
      ID                    : integer;
      NOTA_DE_CREDITO       : integer;
      PORC_DP               : double;
      PORC_DG               : double;
      SUBTOTAL              : double;
      IVA                   : double;
      IEPS                  : double;
      IMPUESTO1             : double;
      IMPUESTO2             : double;
      ESTATUS               : string;
      DESCRIPCION           : string;
      MATERIAL              : integer;
      PRECIO                : double;
      PRECIO_SIN_IMPUESTOS  : double;
      IVA_PORC              : double;
      IEPS_PORC             : double;
      IMPUESTO1_PORC        : double;
      IMPUESTO2_PORC        : double;
      IVA_DP                : double;
      IEPS_DP               : double;
      IMPUESTO1_DP          : double;
      IMPUESTO2_DP          : double;
      SUBTOTAL_DP           : double;
      IVA_DG                : double;
      IEPS_DG               : double;
      IMPUESTO1_DG          : double;
      IMPUESTO2_DG          : double;
      SUBTOTAL_DG           : double;
      CANTIDAD              : double;
      UNIDAD                : integer;
   end;

   _NotasDeCredito = record
      ID                : integer;
      CLAVE             : String20;
      FECHA_ALTA        : TDatetime;
      FECHA_CANCELACION : TDatetime;
      CLIENTE           : integer;
      EXTENSION         : variant;
      CUENTA_POR_COBRAR : variant;
      OBSERVACIONES     : memo;
      ALMACEN           : variant;
      IVA_PORC          : double;
      IEPS_PORC         : double;
      IMPUESTO1_PORC    : double;
      IMPUESTO2_PORC    : double;
      SUBTOTAL          : double;
      IVA               : double;
      IEPS              : double;
      IMPUESTO1         : double;
      IMPUESTO2         : double;
      TOTAL             : double;
      MONEDA            : integer;
      USUARIO           : integer;
      ESTATUS           : String20;
      SERIE_NC          : String10;
      CONSECUTIVO       : integer;
      NC                : variant;
      ID_REFERENCIA     : variant;
      TABLA_REFERENCIA  : String50;
      GRANTOTAL         : double;
   end;

   PMisCampos = ^MisCampos;
   MisCampos = record
      nombre : String100;
      alias  : String100;
   end;

   _ReporteVentas = record
      ALMACEN  : variant;
      DEL      : TDatetime;
      AL       : TDatetime;
      VENDEDOR : variant;
   end;

   _Colores = record
      ID     : integer;
      NOMBRE : String50;
   end;

   _MaterialesAltaRapida = record
      CLAVE         : String20;
      DESCRIPCION   : String100;
      IVA           : double;
      NUM_ETIQUETAS : integer;
      ACTIVO_FIJO   : String2;
      CODIGO_BARRAS : String20;
      UNIDAD_BASE   : variant;
      CONSOLIDADO   : String2;
      SERIE         : String2;
      LOTE          : String2;
      LINEA         : integer;
   end;

   _Inventarios = record
      LINEA       : variant;
      ALMACEN     : variant;
      MATERIAL    : variant;
      MEDIDA      : variant;
      COLOR       : variant;
      CLAVE       : String20;
      DESCRIPCION : String100;
      MONEDA      : variant;
      LOTE        : String50;
      SERIE       : String50;
      ACTIVOFIJO  : String2;
   end;

   _Lineas = record
      ID            : integer;
      LINK          : variant;
      DESCRIPCION   : String100;
      ESTATUS       : String20;
      ORDEN         : integer;
      PORCENTAJE    : double;
      MEDIDA        : variant;
      GRUPO_COLORES : variant;
   end;

   _Medidas = record
      ID          : integer;
      LINK        : variant;
      DESCRIPCION : String20;
      ORDEN       : integer;
   end;

   _MovimientosDeInventario = record
      ID                : integer;
      FECHA_HORA        : TDatetime;
      CLAVE             : String20;
      TIPO              : String20;
      SUB_TIPO          : variant;
      REFERENCIA        : String50;
      IDREFERENCIA      : variant;
      ALMACEN_ORIGEN    : integer;//not null
      ALMACEN_DESTINO   : variant;
      OBSERVACIONES     : String100;
      ESTATUS           : String20;
      FOLIO_ORIGEN      : integer;
      FOLIO_DESTINO     : integer;
      USUARIO           : integer;
      LINEA             : variant;
      LINEA_DESCRIPCION : String100;
   end;

   _MovimientosDeInventarioDet = record
      ID                        : integer;
      MOVIMIENTOS_DE_INVENTARIO : integer;
      MATERIAL                  : integer;
      MATERIAL_CLAVE            : String20;
      MATERIAL_DESCRIPCION      : String100;
      CANTIDAD                  : double;
      COSTO                     : double;
      MONEDA                    : integer;
      UNIDAD                    : integer;
      LOTE                      : String50;
      SERIE                     : String50;
      ID_INVENTARIO             : variant;
      PROVEEDOR_CONSOLIDADO     : variant;
      CLIENTE                   : variant;
      ESTATUS                   : String20;
      CAJAS                     : integer;
      PEDIDO                    : variant;
      PEDIDO_DETALLE            : variant;
      FACTURA                   : variant;
      FACTURA_DETALLE           : variant;
      DEVOLUCIONES_CANTIDAD     : double;
      DEVOLUCIONES_CAJA         : integer;
      REFERENCIA                : String50;
      MEDIDA                    : variant;
      COLOR                     : variant;
   end;

implementation

end.
