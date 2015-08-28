unit PRN_0004_NOTA_VENTA;

interface
                        
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  padre,    Db,  IBQuery,
  jpeg, ComCtrls, Buttons, Grids, DBGrids, StdCtrls, ExtCtrls,
  IBX.IBCustomDataSet;

type
  TfrmPRN_0004 = class(TfrmPadre)
    qyEncabezado: TIBQuery;
    qyEncabezadoR_ID: TIntegerField;
    qyEncabezadoR_FOLIO_DE_VENTA: TIntegerField;
    qyEncabezadoR_ALMACEN: TIntegerField;
    qyEncabezadoR_CAJERO: TIntegerField;
    qyEncabezadoR_CONDICION_COMERCIAL: TIntegerField;
    qyEncabezadoR_CLIENTE: TIntegerField;
    qyEncabezadoR_EXTENSION: TIntegerField;
    qyEncabezadoR_FECHA_ALTA: TDateTimeField;
    qyEncabezadoR_CAJA: TIntegerField;
    qyEncabezadoR_SUBTOTAL: TFloatField;
    qyEncabezadoR_IVA: TFloatField;
    qyEncabezadoR_IEPS: TFloatField;
    qyEncabezadoR_IMPUESTO1: TFloatField;
    qyEncabezadoR_IMPUESTO2: TFloatField;
    qyEncabezadoR_TOTAL: TFloatField;
    qyEncabezadoR_DESCUENTO_GLOBAL_PORC: TFloatField;
    qyEncabezadoR_DESCUENTO_CANTIDAD_GLOBAL: TFloatField;
    qyEncabezadoR_DESCUENTO_CANTIDAD_PARCIAL: TFloatField;
    qyEncabezadoR_GRANTOTAL: TFloatField;
    qyEncabezadoR_MONEDA: TFloatField;
    qyEncabezadoR_CAMBIO_ENTREGADO: TFloatField;
    qyEncabezadoR_FOLIO_HISTORICO: TIntegerField;
    qyEncabezadoR_FOLIO_DEVOLUCION: TIntegerField;
    qyEncabezadoR_ESTATUS: TIBStringField;
    qyEncabezadoR_TOTAL_REF_PAGOS: TFloatField;
    qyEncabezadoR_ALMACEN_CLAVE: TIBStringField;
    qyEncabezadoR_ALMACEN_NOMBRE: TIBStringField;
    qyEncabezadoR_CAJERO_NOMBRE: TIBStringField;
    qyEncabezadoR_CONDICION_CLAVE: TIBStringField;
    qyEncabezadoR_CONDICION_NOMBRE: TIBStringField;
    qyEncabezadoR_CLIENTE_NOMBRE: TIBStringField;
    qyEncabezadoR_EXTENSION_NOMBRE: TIBStringField;
    qyEncabezadoR_CAJA_NOMBRE: TIBStringField;
    qyEncabezadoR_MONEDA_CLAVE: TIBStringField;
    qyEncabezadoR_MONEDA_DESCRIPCION: TIBStringField;
    qyEncabezadoR_CLIENTE_CIUDAD: TIBStringField;
    qyEncabezadoR_ALMACEN_SERIE: TIBStringField;
    dsEncabezado: TDataSource;
    dsDetalle: TDataSource;
    qyDetalle: TIBQuery;
    qyNumeroCajas: TIBQuery;
    qyEncabezadoR_ALMACEN_OBSERVACIONES: TBlobField;
    qyEncabezadoR_CAJERO_CLAVE: TIBStringField;
    qyEncabezadoR_CAJAS: TIntegerField;
    qyEncabezadoR_TOTAL_CAJAS: TFloatField;
    qyNumeroCajasR_NUM_CAJAS_COBRO: TIntegerField;
    qyNumeroCajasR_NUM_CAJAS_NO_COBRO: TIntegerField;
    qyNumeroCajasR_TIPO_CAJA: TIntegerField;
    qyNumeroCajasR_MATERIAL_CLAVE: TIBStringField;
    qyNumeroCajasR_MATERIAL_DESCRIPCION: TIBStringField;
    qyNumeroCajasR_PRECIO: TFloatField;
    qyNumeroCajasR_TOTAL: TFloatField;
    qyNumeroCajasR_ULTIMO: TIBStringField;
    Label1: TLabel;
    cePedido: TEdit;
    ibImprimir: TBitBtn;
    dsNumeroCajas: TDataSource;
    qyEncabezadoR_CLIENTE_DOMICILIO: TIBStringField;
    qyEncabezadoR_CLIENTE_CLAVE: TIBStringField;
    qyEncabezadoR_CLIENTE_RFC: TIBStringField;
    qyEncabezadoR_FECHA_VENCIMIENTO: TDateTimeField;
    qyDetalleR_ID: TIntegerField;
    qyDetalleR_PUNTO_DE_VENTA: TIntegerField;
    qyDetalleR_MATERIAL: TIntegerField;
    qyDetalleR_CANTIDAD: TFloatField;
    qyDetalleR_UNIDAD: TIntegerField;
    qyDetalleR_PRECIO_VENTA: TFloatField;
    qyDetalleR_COSTO_COMPRA: TFloatField;
    qyDetalleR_VENDEDOR: TIntegerField;
    qyDetalleR_DESCUENTO_PORC: TFloatField;
    qyDetalleR_SUBTOTAL: TFloatField;
    qyDetalleR_IVA: TFloatField;
    qyDetalleR_IEPS: TFloatField;
    qyDetalleR_IMPUESTO1: TFloatField;
    qyDetalleR_IMPUESTO2: TFloatField;
    qyDetalleR_IVA_PORC: TFloatField;
    qyDetalleR_IEPS_PORC: TFloatField;
    qyDetalleR_IMPUESTO1_PORC: TFloatField;
    qyDetalleR_IMPUESTO2_PORC: TFloatField;
    qyDetalleR_IVA_DP: TFloatField;
    qyDetalleR_IEPS_DP: TFloatField;
    qyDetalleR_IMPUESTO1_DP: TFloatField;
    qyDetalleR_IMPUESTO2_DP: TFloatField;
    qyDetalleR_SUBTOTAL_DP: TFloatField;
    qyDetalleR_IVA_DG: TFloatField;
    qyDetalleR_IEPS_DG: TFloatField;
    qyDetalleR_IMPUESTO1_DG: TFloatField;
    qyDetalleR_IMPUESTO2_DG: TFloatField;
    qyDetalleR_SUBTOTAL_DG: TFloatField;
    qyDetalleR_ESTATUS: TIBStringField;
    qyDetalleR_TOTAL: TFloatField;
    qyDetalleR_DP: TFloatField;
    qyDetalleR_DG: TFloatField;
    qyDetalleR_GT: TFloatField;
    qyDetalleR_MATERIAL_CLAVE: TIBStringField;
    qyDetalleR_MATERIAL_DESCRIPCION: TIBStringField;
    qyDetalleR_UNIDAD_CLAVE: TIBStringField;
    qyDetalleR_UNIDAD_DESCRIPCION: TIBStringField;
    qyDetalleR_VENDEDOR_NOMBRE: TIBStringField;
    qyDetalleR_CAJAS: TIntegerField;
    ibBusqueda: TBitBtn;
    ibCerrar: TBitBtn;
    qyBusquedaVenta: TIBQuery;
    qyBusquedaVentaR_ID: TIntegerField;
    qyBusquedaVentaR_FOLIO_DE_VENTA: TIntegerField;
    qyBusquedaVentaR_ALMACEN: TIntegerField;
    qyBusquedaVentaR_ALMACEN_NOMBRE: TIBStringField;
    qyBusquedaVentaR_CAJERO: TIntegerField;
    qyBusquedaVentaR_CAJERO_NOMBRE: TIBStringField;
    qyBusquedaVentaR_CONDICION_COMERCIAL: TIntegerField;
    qyBusquedaVentaR_CONDICION_NOMBRE: TIBStringField;
    qyBusquedaVentaR_CLIENTE: TIntegerField;
    qyBusquedaVentaR_CLIENTE_NOMBRE: TIBStringField;
    qyBusquedaVentaR_EXTENSION: TIntegerField;
    qyBusquedaVentaR_EXTENSION_NOMBRE: TIBStringField;
    qyBusquedaVentaR_FECHA_ALTA: TDateTimeField;
    qyBusquedaVentaR_CAJA: TIntegerField;
    qyBusquedaVentaR_CAJA_NOMBRE: TIBStringField;
    qyBusquedaVentaR_GRANTOTAL: TFloatField;
    qyBusquedaVentaR_MONEDA: TIntegerField;
    qyBusquedaVentaR_MONEDA_DESCRIPCION: TIBStringField;
    dsBusquedaVenta: TDataSource;
    dgFacturados: TDBGrid;
    Label3: TLabel;
    deFecha: TDateTimePicker;
    Label2: TLabel;
    edFolio: TEdit;
    procedure ibImprimirClick(Sender: TObject);
    procedure dsBusquedaVentaDataChange(Sender: TObject; Field: TField);
    procedure dsEncabezadoDataChange(Sender: TObject; Field: TField);
    procedure ibBusquedaClick(Sender: TObject);
    procedure dgFacturadosDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    constructor Crear(AOwner : TComponent; p_venta : integer);
    constructor CrearReImpresion(AOwner : TComponent; p_almacen : integer; x1, y1, y2 : integer);
    procedure crearImpresion;
  end;

var
  frmPRN_0004: TfrmPRN_0004;

implementation

uses reglas_de_negocios, IBModulo,  IBData;

{$R *.DFM}

constructor TfrmPRN_0004.CrearReImpresion(AOwner : TComponent; p_almacen : integer; x1, y1, y2 : integer);
begin
   Create(AOwner);
   Left   := x1;
   Top    := y1;
   Height := y2;
   dmIBData.spFECHA_SERVIDOR.ExecProc;
   deFecha.Date := StrToDate(FormatDateTime('dd/mm/yyyy',dmIBData.spFECHA_SERVIDOR.ParamByName('R_FECHA').AsDateTime));
   qyBusquedaVenta.Close;
   qyBusquedaVenta.ParamByName('P_ALMACEN').AsInteger := p_almacen;
end;

procedure TfrmPRN_0004.crearImpresion;
const
   PARTIDAS = 18;
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
//   textoTotal    : string;
//   subtotal,
//   Cajas,
//   envases,
   total : string;
   //variables aceptar
   letras,
   usuario,
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
   salto  : integer;
   rfc        : string;
//   ciudadExp  : string;
   fechaExp   : string;
//   fechaVenc  : string;
begin
{
   //Salto de lineas
   reglas.abrir_IBTabla(dmIBData.TPreferencias);
   dmIBData.TPreferencias.Filter := 'ID = 20';
   salto := dmIBData.TPreferencias.FieldByName('VALOR').AsInteger;

   //Puerto de Impresion para notas de venta
   reglas.abrir_IBTabla(dmIBData.TPreferencias);
   dmIBData.TPreferencias.Filter := 'ID = 23';

   if UpperCase(dmIBData.TPreferencias.FieldByName('VALOR').AsString) = 'LPT1' then
      tpImpresion.PrinterPort := Lpt1
   else
      tpImpresion.PrinterPort := Lpt2;

   //Encabezado
   dia       := FormatDateTime('dd',  qyEncabezado.FieldByName('R_FECHA_ALTA').AsDateTime);
   mes       := FormatDateTime('mmm', qyEncabezado.FieldByName('R_FECHA_ALTA').AsDateTime);
   anio      := FormatDateTime('yyyy',qyEncabezado.FieldByName('R_FECHA_ALTA').AsDateTime);
   hora      := FormatDateTime('hh:mm:ss am/pm',qyEncabezado.FieldByName('R_FECHA_ALTA').AsDateTime);
   pedido    := qyEncabezado.FieldByName('R_FOLIO_DE_VENTA').AsString;
   union     := qyEncabezado.FieldByName('R_CLIENTE_NOMBRE').AsString+'('+qyEncabezado.FieldByName('R_EXTENSION_NOMBRE').AsString+')';
   domicilio := qyEncabezado.FieldByName('R_CLIENTE_DOMICILIO').AsString;
   ciudad    := qyEncabezado.FieldByName('R_CLIENTE_CIUDAD').AsString;
   serie     := qyEncabezado.FieldByName('R_ALMACEN_SERIE').AsString;
   cliente   := qyEncabezado.FieldByName('R_CLIENTE_NOMBRE').AsString;
   extension := qyEncabezado.FieldByName('R_EXTENSION_NOMBRE').AsString;
   rfc       := qyEncabezado.FieldByName('R_CLIENTE_RFC').AsString;
//   fechaVenc := FormatDateTime('dd-mm-yyyy',qyEncabezado.FieldByName('R_FECHA_VENCIMIENTO').AsDateTime);
   //La constante se elimina al momento que se agregue la tabla de empresas
//   ciudadExp := 'Guadalajara, Jal.';
   //Encabezado Alineacion
   dia       := reglas.addCaracteres(dia,5,' ',DERECHA);
   fechaExp  := dia+'   '+mes+'   '+anio;
   hora      := reglas.addCaracteres(hora,     49,' ',IZQUIERDA);
   pedido    := reglas.addCaracteres(pedido,    4,' ',IZQUIERDA);
   union     := reglas.addCaracteres(union,    38,' ',DERECHA);//Recorte
   domicilio := reglas.addCaracteres(domicilio,38,' ',DERECHA);//Recorte
   ciudad    := reglas.addCaracteres(ciudad,   37,' ',DERECHA);
   serie     := reglas.addCaracteres(serie,    42,' ',IZQUIERDA);
   rfc       := reglas.addCaracteres(rfc,      16,' ',DERECHA);
//   fechaVenc := reglas.addCaracteres(fechaVenc,76,' ',IZQUIERDA);
//   ciudadExp := reglas.addCaracteres(ciudadExp,79,' ',IZQUIERDA);

   tpImpresion.abrir_puerto;
   tpImpresion.WriteToPort(hora);
   tpImpresion.WriteToPort('');
   tpImpresion.WriteToPort(' '+fechaExp);
   tpImpresion.WriteToPort('');
   tpImpresion.WriteToPort(' '+cliente);
   tpImpresion.WriteToPort(' '+extension);
   tpImpresion.WriteToPort(' '+domicilio);
   tpImpresion.WriteToPort('');
   tpImpresion.WriteToPort(ciudad);

   tpImpresion.WriteToPort('');
   tpImpresion.WriteToPort('');
   //Partidas de la Venta
   lineas := 0;
   while not(qyDetalle.Eof) do
   begin
      detCajas  := qyDetalle.FieldByName('R_CAJAS').AsString;
      cantidad  := qyDetalle.FieldByName('R_CANTIDAD').AsString;
      unidad    := qyDetalle.FieldByName('R_UNIDAD_CLAVE').AsString;
      producto  := qyDetalle.FieldByName('R_MATERIAL_DESCRIPCION').AsString;
      detPrecio := FormatFloat('$ ###,###,##0.00',qyDetalle.FieldByName('R_PRECIO_VENTA').AsFloat);
      detTotal  := FormatFloat('$ ###,###,##0.00',qyDetalle.FieldByName('R_GT').AsFloat);
      //Partidas Alineacion
      detCajas  := reglas.addCaracteres(detCajas,  3,' ',IZQUIERDA);
      cantidad  := reglas.addCaracteres(cantidad,  4,' ',IZQUIERDA);
      unidad    := reglas.addCaracteres(unidad,    5,' ',DERECHA);//Recorte
      producto  := reglas.addCaracteres(producto, 13,' ',DERECHA);//Recorte
      detPrecio := reglas.addCaracteres(detPrecio, 8,' ',IZQUIERDA);
      detTotal  := reglas.addCaracteres(detTotal, 11,' ',IZQUIERDA);
      tpImpresion.WriteToPort(detCajas+' '+cantidad+' '+unidad+' '+producto+' '+detPrecio+' '+detTotal);
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
//   textoTotal    := 'Total';
//   subtotal      := FormatFloat('$ ###,###,##0.00',qyEncabezado.FieldByName('R_GRANTOTAL').AsFloat - qyEncabezado.FieldByName('R_TOTAL_CAJAS').AsFloat);
//   cajas         := qyEncabezado.FieldByName('R_CAJAS').AsString;
//   envases       := FormatFloat('$ ###,###,##0.00', qyEncabezado.FieldByName('R_TOTAL_CAJAS').AsFloat);
   total         := FormatFloat('$ ###,###,##0.00',qyEncabezado.FieldByName('R_GRANTOTAL').AsFloat - qyEncabezado.FieldByName('R_TOTAL_CAJAS').AsFloat);
//   total         := FormatFloat('$ ###,###,##0.00', qyEncabezado.FieldByName('R_GRANTOTAL').AsFloat);
   //Totales alineacion
//   textoSubTotal := reglas.addCaracteres(textoSubTotal,36,' ',IZQUIERDA);
   textoProducto := reglas.addCaracteres(textoProducto,25,' ',DERECHA);
//   textoTotal    := reglas.addCaracteres(textoTotal,   36,' ',IZQUIERDA);
//   subTotal      := reglas.addCaracteres(subTotal,     12,' ',IZQUIERDA);
//   cajas         := reglas.addCaracteres(cajas,         4,' ',IZQUIERDA);
//   envases       := reglas.addCaracteres(envases,      12,' ',IZQUIERDA);
   total         := reglas.addCaracteres(total,        49,' ',IZQUIERDA);


//   tpImpresion.WriteToPort(textoSubTotal+' '+subtotal);
//   tpImpresion.WriteToPort(cajas+' Pza(s) '+textoProducto+envases);
   tpImpresion.WriteToPort('');
   tpImpresion.WriteToPort('');
   tpImpresion.WriteToPort(total);
   //aceptar
   leCantidad.Numero :=(qyEncabezado.FieldByName('R_GRANTOTAL').AsFloat - qyEncabezado.FieldByName('R_TOTAL_CAJAS').AsFloat);
   leCantidad.Moneda := qyEncabezado.FieldByName('R_MONEDA_DESCRIPCION').AsString;
   letras            := leCantidad.AsString;
   usuario           := qyEncabezado.FieldByName('R_CAJERO_NOMBRE').AsString;
   //Alinear aceptar
   letras            := reglas.addCaracteres(letras,   49,' ',DERECHA); //recorte
   tpImpresion.WriteToPort('');
   tpImpresion.WriteToPort(letras);
   //salto de lineas
   for i := 1 to salto do
      tpImpresion.WriteToPort('');
   tpImpresion.cerrar_puerto;
   }
end;

constructor TfrmPRN_0004.Crear(AOwner : TComponent; p_venta : integer);
begin
   Create(AOwner);

//   laReImpresion.Width := 0;

   qyEncabezado.Close;
   qyEncabezado.ParamByName('P_VENTA').AsInteger := p_venta;
   qyEncabezado.Open;

//   reglas.refresh_IBQuery(qyDetalle);
//   reglas.refresh_IBQuery(qyNumeroCajas);

//   leCantidad.Numero          := qyEncabezado.FieldByName('R_GRANTOTAL').AsFloat;
//   leCantidad.Moneda          := qyEncabezado.FieldByName('R_MONEDA_DESCRIPCION').AsString;
//   laCantidadConLetra.Caption := leCantidad.AsString;
end;



procedure TfrmPRN_0004.ibImprimirClick(Sender: TObject);
begin
  inherited;
  if (edFolio.Text <> '') then
     crearImpresion
  else
     begin
        ShowMessage('Falta capturar el folio de Impresion de la Factura');
        edFolio.SetFocus;
     end;
end;

procedure TfrmPRN_0004.dsBusquedaVentaDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if dsBusquedaVenta.DataSet <> nil then
  begin
     ibImprimir.Enabled := not(dsBusquedaVenta.DataSet.IsEmpty);
     qyEncabezado.Close;
     qyEncabezado.ParamByName('P_VENTA').AsInteger := dsBusquedaVenta.DataSet.FieldByName('R_ID').AsInteger;
     qyEncabezado.Open;
  end;
end;

procedure TfrmPRN_0004.dsEncabezadoDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  qyDetalle.Close;
  qyDetalle.ParamByName('P_VENTA').AsInteger := dsEncabezado.DataSet.FieldByName('R_ID').AsInteger;
  qyDetalle.Open;

  qyNumeroCajas.Close;
  qyNumeroCajas.ParamByName('P_VENTA').AsInteger := dsEncabezado.DataSet.FieldByName('R_ID').AsInteger;
  qyNumeroCajas.Open;
end;

procedure TfrmPRN_0004.ibBusquedaClick(Sender: TObject);
begin
  inherited;
  qyBusquedaVenta.Close;
  //los parametros que faltan, se asignaron en el constructor
  qyBusquedaVenta.ParamByName('P_FECHA').AsDate    := StrToDate(FormatDateTime('dd/mm/yyyy',deFecha.Date));
  qyBusquedaVenta.ParamByName('P_FOLIO').AsInteger := StrToInt(cePedido.Text);
  qyBusquedaVenta.Open;
end;

procedure TfrmPRN_0004.dgFacturadosDblClick(Sender: TObject);
begin
  inherited;
  if ibImprimir.Enabled then
     ibImprimir.Click;
end;

end.
