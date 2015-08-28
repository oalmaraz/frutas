unit PRN_0012_Facturacion;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  padre, jpeg,  ExtCtrls,  Db, IBCustomDataSet,
  IBQuery, IBStoredProc,  ComCtrls, StdCtrls, Buttons;

type
  TfrmPRN_0012 = class(TfrmPadre)
    qyEncabezado: TIBQuery;
    dsEncabezado: TDataSource;
    dsDetalle: TDataSource;
    qyDetalle: TIBQuery;
    qyNumeroCajas: TIBQuery;
    qyNumeroCajasR_NUM_CAJAS_COBRO: TIntegerField;
    qyNumeroCajasR_NUM_CAJAS_NO_COBRO: TIntegerField;
    qyNumeroCajasR_TIPO_CAJA: TIntegerField;
    qyNumeroCajasR_MATERIAL_CLAVE: TIBStringField;
    qyNumeroCajasR_MATERIAL_DESCRIPCION: TIBStringField;
    qyNumeroCajasR_PRECIO: TFloatField;
    qyNumeroCajasR_TOTAL: TFloatField;
    qyNumeroCajasR_ULTIMO: TIBStringField;
    dsNumeroCajas: TDataSource;
    deFecha: TDateTimePicker;
    Label3: TLabel;
    Label1: TLabel;
    ibBusqueda: TBitBtn;
    edFolio: TEdit;
    ibImprimir: TBitBtn;
    ibCerrar: TBitBtn;
    qyEncabezadoR_ID: TIntegerField;
    qyEncabezadoR_CLAVE: TIBStringField;
    qyEncabezadoR_FECHA_ALTA: TDateTimeField;
    qyEncabezadoR_FECHA_CANCELACION: TDateTimeField;
    qyEncabezadoR_ORIGEN: TIBStringField;
    qyEncabezadoR_CLIENTE: TIntegerField;
    qyEncabezadoR_NOMBRE: TIBStringField;
    qyEncabezadoR_DIRECCION: TIBStringField;
    qyEncabezadoR_TELEFONO: TIBStringField;
    qyEncabezadoR_CIUDAD: TIBStringField;
    qyEncabezadoR_RFC: TIBStringField;
    qyEncabezadoR_CONDICION_COMERCIAL: TIntegerField;
    qyEncabezadoR_OBSERVACIONES: TBlobField;
    qyEncabezadoR_PRIORIDAD: TIBStringField;
    qyEncabezadoR_ALMACEN: TIntegerField;
    qyEncabezadoR_ALMACEN_CLAVE: TIBStringField;
    qyEncabezadoR_SERIE_FACTURA: TIBStringField;
    qyEncabezadoR_CONSECUTIVO: TIntegerField;
    qyEncabezadoR_SUBTOTAL: TFloatField;
    qyEncabezadoR_IVA: TFloatField;
    qyEncabezadoR_IEPS: TFloatField;
    qyEncabezadoR_IMPUESTO1: TFloatField;
    qyEncabezadoR_IMPUESTO2: TFloatField;
    qyEncabezadoR_TOTAL: TFloatField;
    qyEncabezadoR_DESC_GLOBAL_PORC: TFloatField;
    qyEncabezadoR_DESC_CANTIDAD_GLOBAL: TFloatField;
    qyEncabezadoR_DESC_CANTIDAD_PARCIAL: TFloatField;
    qyEncabezadoR_GRANTOTAL: TFloatField;
    qyEncabezadoR_MONEDA: TIntegerField;
    qyEncabezadoR_MONEDA_CLAVE: TIBStringField;
    qyEncabezadoR_MONEDA_DESCRIPCION: TIBStringField;
    qyEncabezadoR_QUIEN_FACTURO: TIntegerField;
    qyEncabezadoR_ESTATUS: TIBStringField;
    qyEncabezadoR_CAMBIO_ENTREGADO: TFloatField;
    qyEncabezadoR_EXTENSION: TIntegerField;
    qyEncabezadoR_EXTENSION_CLAVE: TIBStringField;
    qyEncabezadoR_EXTENSION_NOMBRE: TIBStringField;
    qyEncabezadoR_PUNTO_DE_VENTA: TIntegerField;
    qyEncabezadoR_FACTURA: TIBStringField;
    qyEncabezadoR_CLIENTE_CLAVE: TIBStringField;
    qyEncabezadoR_FECHA_VENCIMIENTO: TDateTimeField;
    qyEmpresa: TIBQuery;
    qyEmpresaR_CLAVE: TIBStringField;
    qyEmpresaR_NOMBRE: TIBStringField;
    qyEmpresaR_RAZON_SOCIAL: TIBStringField;
    qyEmpresaR_TELEFONO: TIBStringField;
    qyEmpresaR_RFC: TIBStringField;
    qyEmpresaR_CURP: TIBStringField;
    qyEmpresaR_CIUDAD_DESCRIPCION: TIBStringField;
    dsBloque: TDataSource;
    spMODIFICAR_FOLIO: TIBStoredProc;
    spFOLIO_ALMACEN: TIBStoredProc;
    spACTUALIZA_FACTURA: TIBStoredProc;
    qyDetalleR_ID: TIntegerField;
    qyDetalleR_FACTURA: TIntegerField;
    qyDetalleR_MATERIAL: TIntegerField;
    qyDetalleR_CLAVE: TIBStringField;
    qyDetalleR_DESCRIPCION: TIBStringField;
    qyDetalleR_UNIDAD: TIntegerField;
    qyDetalleR_DESCRIPCION_UNIDAD: TIBStringField;
    qyDetalleR_CANTIDAD: TFloatField;
    qyDetalleR_PRECIO: TFloatField;
    qyDetalleR_SUBTOTAL: TFloatField;
    qyDetalleR_IVA: TFloatField;
    qyDetalleR_IEPS: TFloatField;
    qyDetalleR_IMPUESTO1: TFloatField;
    qyDetalleR_IMPUESTO2: TFloatField;
    qyDetalleR_TOTAL: TFloatField;
    qyDetalleR_DESCUENTO_PORC: TFloatField;
    qyDetalleR_DP: TFloatField;
    qyDetalleR_DG: TFloatField;
    qyDetalleR_GT: TFloatField;
    qyDetalleR_ESTATUS: TIBStringField;
    qyDetalleR_PEDIDO: TIntegerField;
    qyDetalleR_CLAVE_PEDIDO: TIBStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Impresion;
    procedure ImpresionBloque;
    procedure impresionUna;
    constructor Crear(AOwner : TComponent; p_factura : integer);
    constructor CrearBloque(AOwner : TComponent; informacion : TDataSet);
  end;

var
  frmPRN_0012: TfrmPRN_0012;

implementation

uses reglas_de_negocios, IBData, IBModulo;

{$R *.DFM}

constructor TfrmPRN_0012.CrearBloque(AOwner : TComponent; informacion : TDataSet);
begin
   Create(AOwner);
   dsBloque.DataSet := informacion;
end;

constructor TfrmPRN_0012.Crear(AOwner : TComponent; p_factura : integer);
begin
   Create(AOwner);
   qyEncabezado.Close;
   qyEncabezado.ParamByName('P_FACTURA').AsInteger := p_factura;
   qyEncabezado.Open;

   qyDetalle.Close;
   qyDetalle.ParamByName('P_FACTURA').AsInteger := p_factura;
   qyDetalle.Open;
end;

procedure TfrmPRN_0012.ImpresionUna;
begin
   spFOLIO_ALMACEN.ParamByName('P_ALMACEN').AsInteger := qyEncabezado.FieldByName('R_ALMACEN').AsInteger;
   spFOLIO_ALMACEN.ParamByName('P_AFECTAR').AsString  := 'No';
   spFOLIO_ALMACEN.ExecProc;
   spFOLIO_ALMACEN.Transaction.CommitRetaining;
   {
   idFolio.Entrada := spFOLIO_ALMACEN.ParamByName('R_CONSECUTIVO').AsString;
   idFolio.Titulo := 'Factura';
   idFolio.Execute;
   if (idFolio.Respuesta) and (idFolio.Entrada <> '') then
   begin
      //se actualiza el folio, si es diferente al que el sistema asigno, para que coincida con el de su consecutivo
      if StrToInt(idFolio.Entrada) <> spFOLIO_ALMACEN.ParamByName('R_CONSECUTIVO').AsInteger then
      begin
         //El valor 4 es el folio para facturar x almacen
         spMODIFICAR_FOLIO.ParamByName('P_MODULO').AsInteger      := 4;
         spMODIFICAR_FOLIO.ParamByName('P_SUBCLASE').AsInteger    := qyEncabezado.FieldByName('R_ALMACEN').AsInteger;
         spMODIFICAR_FOLIO.ParamByName('P_CONSECUTIVO').AsInteger := StrToInt(idFolio.Entrada);
         spMODIFICAR_FOLIO.ExecProc;
         spMODIFICAR_FOLIO.Transaction.CommitRetaining;
      end;
      spFOLIO_ALMACEN.ParamByName('P_ALMACEN').AsInteger := qyEncabezado.FieldByName('R_ALMACEN').AsInteger;
      spFOLIO_ALMACEN.ParamByName('P_AFECTAR').AsString  := 'Si';
      spFOLIO_ALMACEN.ExecProc;
      spFOLIO_ALMACEN.Transaction.CommitRetaining;
      impresion;
      spACTUALIZA_FACTURA.ParamByName('P_FACTURA').AsInteger := qyEncabezado.FieldByName('R_ID').AsInteger;
      spACTUALIZA_FACTURA.ParamByName('P_ALMACEN').AsInteger := qyEncabezado.FieldByName('R_ALMACEN').AsInteger;
      spACTUALIZA_FACTURA.ParamByName('P_FOLIO').AsInteger   := StrToInt(idFolio.Entrada);
      spACTUALIZA_FACTURA.ParamByName('P_USUARIO').AsInteger := reglas.dame_usuario;
      spACTUALIZA_FACTURA.ExecProc;
      spACTUALIZA_FACTURA.Transaction.CommitRetaining;
   end;
   }
end;

procedure TfrmPRN_0012.ImpresionBloque;
begin
   dsBloque.DataSet.First;
   while not(dsBloque.DataSet.Eof) do
   begin
      qyEncabezado.Close;
      qyEncabezado.ParamByName('P_FACTURA').AsInteger := dsBloque.DataSet.FieldByName('R_ID').AsInteger;
      qyEncabezado.Open;

      qyDetalle.Close;
      qyDetalle.ParamByName('P_FACTURA').AsInteger    := dsBloque.DataSet.FieldByName('R_ID').AsInteger;
      qyDetalle.Open;

      impresionUna;

      dsBloque.DataSet.Next;
   end;
end;

procedure TfrmPRN_0012.Impresion;
const
   PARTIDAS = 13;
var
   i : integer;
   //variables para encabezado
   dia,
   mes,
   anio,
   hora,
   pedido,
   union,
   domicilio,
   serie,
   ciudad : string;
   //variables para detalle
   detCajas,
   cantidad,
   unidad,
   producto,
   detPrecio,
   detTotal : string;
   //variables para totales
//   textoSubTotal : string;
   textoProducto : string;
   textoTotal    : string;
//   subtotal,
//   Cajas,
//   envases,
   total : string;
   //variables aceptar
   letras,
//   usuario,
   cliente,
   extension : string;
   //variable de envases
//   fecha,
//   cobrar,
//   sinCobrar,
//   descripcion,
//   precio,
//   envTotal : string;
   //calculo de las partidas
   lineas : integer;
   dif    : integer;
   //final
   salto      : integer;
   rfc        : string;
   ciudadExp  : string;
   fechaExp   : string;
   fechaVenc  : string;
begin
{
   //Salto de lineas
   reglas.abrir_IBTabla(dmIBData.TPreferencias);
   dmIBData.TPreferencias.Filter := 'ID = 29';
   salto := dmIBData.TPreferencias.FieldByName('VALOR').AsInteger;

   //Puerto de Impresion para facturas
   reglas.abrir_IBTabla(dmIBData.TPreferencias);
   dmIBData.TPreferencias.Filter := 'ID = 22';

   if UpperCase(dmIBData.TPreferencias.FieldByName('VALOR').AsString) = 'LPT1' then
      tpImpresion.PrinterPort := Lpt1
   else
      tpImpresion.PrinterPort := Lpt2;

   //Encabezado
   dia       := FormatDateTime('dd',  qyEncabezado.FieldByName('R_FECHA_ALTA').AsDateTime);
   mes       := FormatDateTime('mmm', qyEncabezado.FieldByName('R_FECHA_ALTA').AsDateTime);
   anio      := FormatDateTime('yyyy',qyEncabezado.FieldByName('R_FECHA_ALTA').AsDateTime);
   hora      := FormatDateTime('hh:mm:ss am/pm',qyEncabezado.FieldByName('R_FECHA_ALTA').AsDateTime);
//   pedido    := qyEncabezado.FieldByName('R_FOLIO_DE_VENTA').AsString;
   union     := qyEncabezado.FieldByName('R_CLIENTE_CLAVE').AsString+' '+qyEncabezado.FieldByName('R_NOMBRE').AsString;
   domicilio := qyEncabezado.FieldByName('R_DIRECCION').AsString;
   ciudad    := qyEncabezado.FieldByName('R_CIUDAD').AsString;
   serie     := qyEncabezado.FieldByName('R_SERIE_FACTURA').AsString;
   extension := qyEncabezado.FieldByName('R_EXTENSION_NOMBRE').AsString;
   rfc       := qyEncabezado.FieldByName('R_RFC').AsString;
   fechaVenc := FormatDateTime('dd-mm-yyyy',qyEncabezado.FieldByName('R_FECHA_VENCIMIENTO').AsDateTime);
   //La constante se elimina al momento que se agregue la tabla de empresas
   ciudadExp := qyEmpresa.FieldByName('R_CIUDAD_DESCRIPCION').AsString;
   //Encabezado Alineacion
   dia       := reglas.addCaracteres(dia,      66,' ',IZQUIERDA);
   fechaExp  := dia+'   '+mes+'   '+anio;
   hora      := reglas.addCaracteres(hora,     79,' ',IZQUIERDA);
   pedido    := reglas.addCaracteres(pedido,   79,' ',IZQUIERDA);
   union     := reglas.addCaracteres(union,    50,' ',DERECHA);//Recorte
   domicilio := reglas.addCaracteres(domicilio,35,' ',DERECHA);//Recorte
   ciudad    := reglas.addCaracteres(ciudad,   25,' ',DERECHA);
   serie     := reglas.addCaracteres(serie,    42,' ',IZQUIERDA);
   rfc       := reglas.addCaracteres(rfc,      16,' ',DERECHA);
   fechaVenc := reglas.addCaracteres(fechaVenc,76,' ',IZQUIERDA);
   ciudadExp := reglas.addCaracteres(ciudadExp,79,' ',IZQUIERDA);

   tpImpresion.abrir_puerto;
//   tpImpresion.WriteToPort(pedido);
   tpImpresion.WriteToPort('');
   tpImpresion.WriteToPort(ciudadExp);
   tpImpresion.WriteToPort('');
   tpImpresion.WriteToPort(fechaExp);
   tpImpresion.WriteToPort(hora);
   tpImpresion.WriteToPort('');
   tpImpresion.WriteToPort('');
   tpImpresion.WriteToPort('');
   tpImpresion.WriteToPort('');
   tpImpresion.WriteToPort('');
   tpImpresion.WriteToPort('');
   tpImpresion.WriteToPort('             '+union+' '+rfc);
   tpImpresion.WriteToPort('             ('+qyEncabezado.FieldByName('R_EXTENSION_NOMBRE').AsString+')');
   tpImpresion.WriteToPort('');
   tpImpresion.WriteToPort('             '+domicilio+' '+ciudad);
   tpImpresion.WriteToPort('');
   tpImpresion.WriteToPort('');
   tpImpresion.WriteToPort(fechaVenc);
   tpImpresion.WriteToPort('');
   tpImpresion.WriteToPort('');
   tpImpresion.WriteToPort('');

   //Partidas de la Venta
   lineas := 0;
   while not(qyDetalle.Eof) do
   begin
//      detCajas  := qyDetalle.FieldByName('R_CAJAS').AsString;
      cantidad  := FormatFloat('###,###,##0.00',qyDetalle.FieldByName('R_CANTIDAD').AsFloat);
//      unidad    := qyDetalle.FieldByName('R_UNIDAD_CLAVE').AsString;
      unidad    := '';
      producto  := qyDetalle.FieldByName('R_DESCRIPCION').AsString;
      detPrecio := FormatFloat('$ ###,###,##0.00',qyDetalle.FieldByName('R_PRECIO').AsFloat);
      detTotal  := FormatFloat('$ ###,###,##0.00',qyDetalle.FieldByName('R_GT').AsFloat);

      //Partidas Alineacion
      detCajas  := reglas.addCaracteres(detCajas, 15,' ',IZQUIERDA);
      cantidad  := reglas.addCaracteres(cantidad,  7,' ',IZQUIERDA);
      unidad    := reglas.addCaracteres(unidad,    5,' ',DERECHA);//Recorte
      producto  := reglas.addCaracteres(producto, 27,' ',DERECHA);//Recorte
      detPrecio := reglas.addCaracteres(detPrecio,10,' ',IZQUIERDA);
      detTotal  := reglas.addCaracteres(detTotal, 11,' ',IZQUIERDA);
      //tpImpresion.WriteToPort(detCajas+' '+cantidad+' '+unidad+' '+producto+' '+detPrecio+' '+detTotal);
      inc(lineas);
      qyDetalle.Next;
   end;
   //Se necesita el numero de partidas para que siempre coincida los totales en la misma posicion
   dif := PARTIDAS - lineas;

   for i := 1 to dif do
      tpImpresion.WriteToPort('');

   //Totales
//   textoSubTotal := 'Sub-Total';
//   textoProducto := 'Envase(s)';
   textoTotal    := 'Total';
//   subtotal      := FormatFloat('$ ###,###,##0.00',qyEncabezado.FieldByName('R_GRANTOTAL').AsFloat - qyEncabezado.FieldByName('R_TOTAL_CAJAS').AsFloat);
//   cajas         := qyEncabezado.FieldByName('R_CAJAS').AsString;
//   envases       := FormatFloat('$ ###,###,##0.00', qyEncabezado.FieldByName('R_TOTAL_CAJAS').AsFloat);
   total         := FormatFloat('$ ###,###,##0.00', qyEncabezado.FieldByName('R_GRANTOTAL').AsFloat{ - qyEncabezado.FieldByName('R_TOTAL_CAJAS').AsFloat);
   //Totales alineacion
//   textoSubTotal := reglas.addCaracteres(textoSubTotal,67,' ',IZQUIERDA);
   textoProducto := reglas.addCaracteres(textoProducto,38,' ',DERECHA);
   textoTotal    := reglas.addCaracteres(textoTotal,   67,' ',IZQUIERDA);
//   subTotal      := reglas.addCaracteres(subTotal,     12,' ',IZQUIERDA);
//   cajas         := reglas.addCaracteres(cajas,        17,' ',IZQUIERDA);
//   envases       := reglas.addCaracteres(envases,      12,' ',IZQUIERDA);
   total         := reglas.addCaracteres(total,        12,' ',IZQUIERDA);


//   tpImpresion.WriteToPort(textoSubTotal+' '+subtotal);
//   tpImpresion.WriteToPort(cajas+'      Pza(s) '+textoProducto+envases);
//   tpImpresion.WriteToPort('             '+reglas.addCaracteres('',67,'-',IZQUIERDA));
   tpImpresion.WriteToPort('');
   tpImpresion.WriteToPort('');
   tpImpresion.WriteToPort(textoTotal+' '+total);
   //aceptar
   leCantidad.Numero := qyEncabezado.FieldByName('R_GRANTOTAL').AsFloat;// - qyEncabezado.FieldByName('R_TOTAL_CAJAS').AsFloat;
   leCantidad.Moneda := qyEncabezado.FieldByName('R_MONEDA_DESCRIPCION').AsString;
   letras            := leCantidad.AsString;
//   usuario           := qyEncabezado.FieldByName('R_CAJERO_NOMBRE').AsString;
   cliente           := qyEncabezado.FieldByName('R_NOMBRE').AsString;
   extension         := qyEncabezado.FieldByName('R_EXTENSION_NOMBRE').AsString;
   //Alinear aceptar
   letras            := reglas.addCaracteres(letras, 65,' ',DERECHA); //recorte
   tpImpresion.WriteToPort('');
   tpImpresion.WriteToPort('             '+letras);
   //salto de lineas
   for i := 1 to salto do
      tpImpresion.WriteToPort('');
   tpImpresion.cerrar_puerto;
   }
end;

procedure TfrmPRN_0012.FormCreate(Sender: TObject);
begin
  inherited;
  reglas.refresh_IBQuery(qyEmpresa);
end;

procedure TfrmPRN_0012.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dsBloque.DataSet := nil;
  inherited;
end;
{SELECT R_CLAVE, 
               R_DESCRIPCION, 
               R_DESCRIPCION_UNIDAD, 
               SUM(R_CANTIDAD) R_CANTIDAD,
               SUM(R_PRECIO) R_PRECIO,
               SUM(R_SUBTOTAL) R_SUBTOTAL,
               SUM(R_IVA) R_IVA,
               SUM(R_IEPS) R_IEPS,
               SUM(R_IMPUESTO1) R_IMPUESTO1,
               SUM(R_IMPUESTO2) R_IMPUESTO2,
               SUM(R_TOTAL) R_TOTAL,
               SUM(R_DP) R_DP,
               SUM(R_DG) R_DG,
               SUM(R_GT)  R_GT
FROM FACTURAS_PARTIDAS(:P_FACTURA)
GROUP BY R_MATERIAL, R_CLAVE, R_DESCRIPCION, R_DESCRIPCION_UNIDAD
ORDER BY R_MATERIAL
}
end.
