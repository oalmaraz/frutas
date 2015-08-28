unit UTypeCuentasPorPagar;

interface

uses
   UTipos, URecords, UdmCuentasPorPagar, capturar_cxp_pagos, classes, IBDatabase, db,  Forms,
   capturar_cxp_movimientos, PRN_0035, UfrmDetalleDeLaCompra, UfrmDocumentoPagosCXP,
   PRN_CORTE_CAJAS_CXP,  jpeg,  Vcl.ExtCtrls, System.UITypes;

type
   TCuentasPorPagar = class(TObject)
   private
     dmCuentasPorPagar : TdmCuentasPorPagar;
     FDatos            : _CuentasPorPagar;
     pago              : TfrmCapturar_CXP_FormasDePago;
     screenPagos       : TfrmCapturar_cxp_movimientos;
     corte             : TfrmPRN_CORTE_CAJAS_CXP;
     rptDetalle        : TfrmPRN_0035;
     scrDetCompra      : TfrmDetalleDeLaCompra;//scr = screnn = pantalla
     scrPagos          : TfrmDocumentoPagosCXP;

{     awrForma          : TTypeForma;

     rptDetalleVtas    : TfrmDetalleDeLaVenta;

     mensajes          : TfrmCapturar_cxc_mensajes;

     reprint           : TfrmPRN_0007;}


     procedure setESTATUS(valor : String20);
     procedure setFECHA_ULT_COMPRA(valor : TDatetime);
     procedure setFECHA_ULT_PAGO(valor : TDatetime);
     procedure setPROVEEDOR(valor : integer);
     procedure setPROVEEDOR_CLAVE(valor : String50);
     procedure setPROVEEDOR_NOMBRE(valor : String100);
     procedure setSALDO_PROVEEDOR(valor : double);
     procedure setSALDO_T_VENCIDO(valor : double);
     procedure setSALDO_VENCIDO(valor : double);
     procedure setFOTO(valor : TMemoryStream);
     procedure setALMACEN(valor : integer);
     procedure setALMACEN_NOMBRE(valor : String100);
     procedure setCAJA(valor : integer);
     procedure setCAJA_NOMBRE(valor : String100);
     procedure setIMPORTE_A_PAGAR(valor : double);
     procedure setUSUARIO(valor : integer);
     procedure setUSUARIO_NOMBRE(valor : String100);
     procedure setRESTO(valor : double);
     procedure setTELEFONO(valor: String20);
     procedure setCAJAS(valor : integer);

     function getCAJAS : integer;
     function getTELEFONO : String20;
     function getRESTO : double;
     function getUSUARIO_NOMBRE   : String100;
     function getUSUARIO          : integer;
     function getESTATUS          : String20;
     function getFECHA_ULT_COMPRA : TDatetime;
     function getFECHA_ULT_PAGO   : TDatetime;
     function getPROVEEDOR        : integer;
     function getPROVEEDOR_CLAVE  : String50;
     function getPROVEEDOR_NOMBRE : String100;
     function getSALDO_PROVEEDOR  : double;
     function getSALDO_T_VENCIDO  : double;
     function getSALDO_VENCIDO    : double;
     function getFOTO             : TMemoryStream;
     function getALMACEN          : integer;
     function getALMACEN_NOMBRE   : String100;
     function getCAJA             : integer;
     function getCAJA_NOMBRE      : String100;
     function getIMPORTE_A_PAGAR  : double;

     function GetFecha : TDatetime;
     function GetVacio : Boolean;
     function GetDatabase : TIBDatabase;
     function GetTransaction : TIBTransaction;
     function getCajaVacio : Boolean;
     function getDataSourceDetalle : TDataSource;
   public
     constructor Create();overload;
     destructor Destroy; override;
     procedure LoadDatosCaja;
     procedure LoadDetalle;
     procedure imagenVer(dato : TMemoryStream; var imagen : TImage);
     procedure EjecutarAutomatico;
     procedure EjecutarManual;
     procedure EjecutarVencido;
     procedure EjecutarModificado;
     procedure EjecutarSeleccionado;
     procedure rptDetalles;
     procedure screenDetDeLaCompra;
     procedure screenDetPagos;
{     procedure rptDetalleNCreditoSAfectar;
     procedure rptDetalleNCreditoAfectada;
     procedure rptDetalleNCargoSAfectar;
     procedure rptDetalleNCargoAfectada;
     procedure rptMensajes;

     procedure reImpresion;}
     procedure rptCortes;
     procedure detPagos;
     procedure pagoModificado(valor : string);
     function crearTipoPago(valor : string) : TModalResult;
   published
      property ESTATUS          : String20 read getESTATUS write setESTATUS;
      property FECHA_ULT_COMPRA : TDatetime read getFECHA_ULT_COMPRA write setFECHA_ULT_COMPRA;
      property FECHA_ULT_PAGO   : TDatetime read getFECHA_ULT_PAGO write setFECHA_ULT_PAGO;
      property PROVEEDOR        : integer read getPROVEEDOR write setPROVEEDOR;
      property PROVEEDOR_CLAVE  : String50 read getPROVEEDOR_CLAVE write setPROVEEDOR_CLAVE;
      property PROVEEDOR_NOMBRE : String100 read getPROVEEDOR_NOMBRE write setPROVEEDOR_NOMBRE;
      property SALDO_PROVEEDOR  : double read getSALDO_PROVEEDOR write setSALDO_PROVEEDOR;
      property SALDO_T_VENCIDO  : double read getSALDO_T_VENCIDO write setSALDO_T_VENCIDO;
      property SALDO_VENCIDO    : double read getSALDO_VENCIDO write setSALDO_VENCIDO;
      property FOTO             : TMemoryStream read getFOTO write setFOTO;
      property ALMACEN          : integer read getALMACEN write setALMACEN;
      property ALMACEN_NOMBRE   : String100 read getALMACEN_NOMBRE write setALMACEN_NOMBRE;
      property CAJA             : integer read getCAJA write setCAJA;
      property CAJA_NOMBRE      : String100 read getCAJA_NOMBRE write setCAJA_NOMBRE;
      property IMPORTE_A_PAGAR  : double read getIMPORTE_A_PAGAR write setIMPORTE_A_PAGAR;
      property FECHA_SERVIDOR   : TDatetime read GetFecha;
      property DATABASE         : TIBDatabase read GetDatabase;
      property TRANSACTION      : TIBTransaction read GetTransaction;
      property USUARIO          : integer read getUSUARIO write setUSUARIO;
      property USUARIO_NOMBRE   : String100 read getUSUARIO_NOMBRE write setUSUARIO_NOMBRE;
      property CAJA_VACIO       : Boolean read getCajaVacio;
      property dsDetalle        : TDataSource read getDataSourceDetalle;
      property DETALLE_VACIO    : Boolean read getVacio;
      property RESTO            : double read getRESTO write setRESTO;
      property TELEFONO         : String20 read getTELEFONO write setTELEFONO;
      property CAJAS            : integer read getCAJAS write setCAJAS;
   end;

implementation

uses
  Controls, UfrmDocumentoNCreditoSAfectar, UfrmDocumentoNCreditoAfectada,
  UfrmDocumentoNCargoSAfectar, UfrmDocumentoNCargoAfectada;

constructor TCuentasPorPagar.Create();
begin
  inherited Create;
  dmCuentasPorPagar := TdmCuentasPorPagar.Create(nil);
  FDatos.FOTO       := TMemoryStream.Create;
  pago              := TfrmCapturar_CXP_FormasDePago.Create(nil);
  screenPagos       := TfrmCapturar_cxp_movimientos.Create(nil);
  corte             := TfrmPRN_CORTE_CAJAS_CXP.Create(nil);
  rptDetalle        := TfrmPRN_0035.Create(nil);
  scrDetCompra      := TfrmDetalleDeLaCompra.Create(nil);
  scrPagos          := TfrmDocumentoPagosCXP.Create(nil);
//  mensajes          := TfrmCapturar_cxc_mensajes.Create(nil);;


  PROVEEDOR := 0;
  ESTATUS   := 'Pendiente de Pago';
  ALMACEN   := 0;
  RESTO     := 0;
end;

destructor TCuentasPorPagar.Destroy;
begin
{   if awrForma = tfCXC then
   begin
      reprint.Free;
      reprint := nil;
      screenPagos.Free;
      screenPagos := nil;
      corte.Free;
      corte := nil;
   end;}

   scrPagos.Free;
   scrPagos := nil;
{   mensajes.Free;
   mensajes := nil;}
   scrDetCompra.Free;
   scrDetCompra := nil;
   rptDetalle.Free;
   rptDetalle := nil;
   corte.Free;
   corte := nil;
   screenPagos.Free;
   screenPagos := nil;
   pago.Free;
   pago := nil;

   FDatos.FOTO.Free;
   FDatos.FOTO := nil;
   dmCuentasPorPagar.Free;
   dmCuentasPorPagar := nil;
   inherited destroy;
end;


{procedure TEstadoDeCuentas.rptDetalleNCargoSAfectar;
var
   ncargo : TfrmDocumentoNCargoSAfectar;
begin
  if dsDetalle.DataSet <> nil then
  begin
     if not(DETALLE_VACIO) then
     begin
        ncargo := TfrmDocumentoNCargoSAfectar.Create(nil);
        ncargo.CXC := dsDetalle.DataSet.FieldByName('R_ID').AsInteger;
        ncargo.ShowModal;
        ncargo.Free;
     end;
  end;
end;

procedure TEstadoDeCuentas.rptDetalleNCargoAfectada;
var
   ncargo : TfrmDocumentoNCargoAfectada;
begin
  if dsDetalle.DataSet <> nil then
  begin
     if not(DETALLE_VACIO) then
     begin
        ncargo := TfrmDocumentoNCargoAfectada.Create(nil);
        ncargo.CXC := dsDetalle.DataSet.FieldByName('R_ID').AsInteger;
        ncargo.ShowModal;
        ncargo.Free;
     end;
  end;
end;

procedure TEstadoDeCuentas.rptDetalleNCreditoSAfectar;
var
   ncredito : TfrmDocumentoNCreditoSAfectar;
begin
  if dsDetalle.DataSet <> nil then
  begin
     if not(DETALLE_VACIO) then
     begin
        ncredito := TfrmDocumentoNCreditoSAfectar.Create(nil);
        ncredito.CXC := dsDetalle.DataSet.FieldByName('R_ID').AsInteger;
        ncredito.ShowModal;
        ncredito.Free;
     end;
  end;
end;

procedure TEstadoDeCuentas.rptDetalleNCreditoAfectada;
var
   ncredito : TfrmDocumentoNCreditoAfectada;
begin
  if dsDetalle.DataSet <> nil then
  begin
     if not(DETALLE_VACIO) then
     begin
        ncredito := TfrmDocumentoNCreditoAfectada.Create(nil);
        ncredito.CXC := dsDetalle.DataSet.FieldByName('R_ID').AsInteger;
        ncredito.ShowModal;
        ncredito.Free;
     end;
  end;
end;}

procedure TCuentasPorPagar.screenDetPagos;
begin
  if dsDetalle.DataSet <> nil then
  begin
     if not(DETALLE_VACIO) then
     begin
        scrPagos.CXP := dsDetalle.DataSet.FieldByName('R_ID').AsInteger;
        scrPagos.ShowModal;
     end;
  end;
end;

procedure TCuentasPorPagar.setCAJAS(valor : integer);
begin
   FDatos.CAJAS := valor;
end;

function TCuentasPorPagar.getCAJAS : integer;
begin
   result := FDatos.CAJAS;
end;

procedure TCuentasPorPagar.setTELEFONO(valor: String20);
begin
   FDatos.TELEFONO := valor;
end;

function TCuentasPorPagar.getTELEFONO : String20;
begin
   Result := FDatos.TELEFONO;
end;

procedure TCuentasPorPagar.pagoModificado(valor : string);
begin
   dmCuentasPorPagar.pagoModificado(valor);
end;

{procedure TEstadoDeCuentas.reImpresion;
begin
   reprint.CAJA    := FDatos.CAJA;
   reprint.ALMACEN := FDatos.ALMACEN;
   reprint.ACTIVAR := false;
   reprint.ShowModal;
end;}

procedure TCuentasPorPagar.detPagos;
begin
   screenPagos.CAJA    := FDatos.CAJA;
   screenPagos.USUARIO := FDatos.USUARIO;
   screenPagos.ShowModal;
end;

procedure TCuentasPorPagar.rptCortes;
begin
   corte.ALMACEN := FDatos.ALMACEN;
   corte.CAJA    := FDatos.CAJA;
   corte.ShowModal;
end;

{procedure TEstadoDeCuentas.rptMensajes;
begin
   mensajes.CLIENTE := FDatos.CLIENTE;
   mensajes.ShowModal;
end;}

{procedure TEstadoDeCuentas.setForma(valor : TTypeForma);
begin
   awrForma := valor;
   if awrForma = tfCXC then
   begin
      pago        := TfrmCapturar_Pagos_formas_de_pago.Create(nil);
      corte       := TfrmPRN_CORTE_CAJA_CtasXCobrar.Create(nil);
      screenPagos := TfrmCapturar_busqueda_pagos.Create(nil);
      reprint     := TfrmPRN_0007.Create(nil);
   end;
end;}

function TCuentasPorPagar.crearTipoPago(valor : string) : TModalResult;
var
   tmp  : TModalResult;
   id   : integer;
begin
   id   := dmCuentasPorPagar.crearTipoPago(valor, FDatos);
   pago.ID         := id;
   pago.PROVEEDOR  := PROVEEDOR;
   pago.ALMACEN    := ALMACEN_NOMBRE; 
   tmp  := pago.ShowModal;

   if tmp <> mrOK then
      dmCuentasPorPagar.CancelarTipoPago(id);
   Result := tmp;
end;

procedure TCuentasPorPagar.screenDetDeLaCompra;
begin
  if dsDetalle.DataSet <> nil then
  begin
     if not(DETALLE_VACIO) then
     begin
        scrDetCompra.ID := dsDetalle.DataSet.FieldByName('R_ID').AsInteger;
        scrDetCompra.ShowModal;
     end;
  end;
end;

procedure TCuentasPorPagar.rptDetalles;
begin
   rptDetalle.edProveedorDEL.Tag  := FDatos.PROVEEDOR;
   rptDetalle.edProveedorDEL.Text := FDatos.PROVEEDOR_CLAVE;
   rptDetalle.edNombreDEL.Text    := FDatos.PROVEEDOR_NOMBRE;
   rptDetalle.ShowModal;
end;

procedure TCuentasPorPagar.EjecutarSeleccionado;
begin
   dmCuentasPorPagar.EjecutarSeleccionado;
end;

procedure TCuentasPorPagar.EjecutarAutomatico;
begin
   dmCuentasPorPagar.EjecutarAutomatico(FDatos);
end;

procedure TCuentasPorPagar.EjecutarManual;
begin
   dmCuentasPorPagar.EjecutarManual(FDatos);
end;

procedure TCuentasPorPagar.EjecutarVencido;
begin
   dmCuentasPorPagar.EjecutarVencido(FDatos);
end;

procedure TCuentasPorPagar.EjecutarModificado;
begin
   dmCuentasPorPagar.EjecutarModificado(FDatos);
end;

procedure TCuentasPorPagar.setRESTO(valor : double);
begin
   FDatos.RESTO := valor;
end;

function TCuentasPorPagar.getRESTO : double;
begin
   Result := FDatos.RESTO;
end;

procedure TCuentasPorPagar.LoadDetalle;
begin
   dmCuentasPorPagar.Detalle(FDatos);
end;

function TCuentasPorPagar.getDataSourceDetalle : TDataSource;
begin
   Result := dmCuentasPorPagar.dsDetalle;
end;

function TCuentasPorPagar.getCajaVacio : Boolean;
begin
   Result := dmCuentasPorPagar.dsVer_Datos_Cajero.DataSet.IsEmpty;
end;

procedure TCuentasPorPagar.imagenVer(dato : TMemoryStream; var imagen : TImage);
type
  TGraphType = (gtBitmap, gtIcon, gtMetafile, gtJpeg);
var
  Jpg       : TJpegImage;
  GraphType : TGraphType;
begin
  Jpg    := nil;
  try
    if dato.Size > 0 then
    begin
      dato.Position := 0;
      dato.Read(GraphType, 1);
      case GraphType of
         gtBitmap   : imagen.Picture.Bitmap.LoadFromStream(dato);
         gtIcon     : imagen.Picture.Icon.LoadFromStream(dato);
         gtMetafile : imagen.Picture.Metafile.LoadFromStream(dato);
         gtJpeg     : begin
                         Jpg := TJpegImage.Create;
                         Jpg.LoadFromStream(dato);
                         imagen.Picture.Assign(Jpg);
                      end
      else
         imagen.Picture.Assign(nil);
      end;
    end
       else
          imagen.Picture.Assign(nil);
  except
    imagen.Picture.Assign(nil);
  end;
  jpg.Free;
end;

procedure TCuentasPorPagar.LoadDatosCaja;
begin
   dmCuentasPorPagar.DatosCaja(USUARIO);
   dmCuentasPorPagar.LoadDatosCaja(FDatos);
end;

procedure TCuentasPorPagar.setUSUARIO_NOMBRE(valor : String100);
begin
   FDatos.USUARIO_NOMBRE := valor;
end;

function TCuentasPorPagar.getUSUARIO_NOMBRE   : String100;
begin
   Result := FDatos.USUARIO_NOMBRE;
end;

procedure TCuentasPorPagar.setUsuario(valor : integer);
begin
   FDatos.USUARIO := valor;
   dmCuentasPorPagar.Usuario(valor);
   dmCuentasPorPagar.LoadDatoUsuario(FDatos);
end;

function TCuentasPorPagar.getUsuario : integer;
begin
   Result := FDatos.USUARIO;
end;

function TCuentasPorPagar.GetDatabase : TIBDatabase;
begin
   Result := dmCuentasPorPagar.qyEstadoDeCuentaEnc.Database;
end;

function TCuentasPorPagar.GetTransaction : TIBTransaction;
begin
   Result := dmCuentasPorPagar.qyEstadoDeCuentaEnc.Transaction;
end;

procedure TCuentasPorPagar.setESTATUS(valor : String20);
begin
   FDatos.ESTATUS := valor;
end;

procedure TCuentasPorPagar.setFECHA_ULT_COMPRA(valor : TDatetime);
begin
   FDatos.FECHA_ULT_COMPRA := valor;
end;

procedure TCuentasPorPagar.setFECHA_ULT_PAGO(valor : TDatetime);
begin
   FDatos.FECHA_ULT_PAGO := valor;
end;

procedure TCuentasPorPagar.setPROVEEDOR(valor : integer);
begin
   FDatos.PROVEEDOR := valor;
   dmCuentasPorPagar.iniciarParametrosDetalle(FDatos);
   dmCuentasPorPagar.Proveedor(FDatos);
end;

procedure TCuentasPorPagar.setPROVEEDOR_CLAVE(valor : String50);
begin
   FDatos.PROVEEDOR_CLAVE := valor;
end;

procedure TCuentasPorPagar.setPROVEEDOR_NOMBRE(valor : String100);
begin
   FDatos.PROVEEDOR_NOMBRE := valor;
end;

procedure TCuentasPorPagar.setSALDO_PROVEEDOR(valor : double);
begin
   FDatos.SALDO_PROVEEDOR := valor;
end;

procedure TCuentasPorPagar.setSALDO_T_VENCIDO(valor : double);
begin
   FDatos.SALDO_T_VENCIDO := valor;
end;

procedure TCuentasPorPagar.setSALDO_VENCIDO(valor : double);
begin
   FDatos.SALDO_VENCIDO := valor;
end;

procedure TCuentasPorPagar.setFOTO(valor : TMemoryStream);
begin
   FDatos.FOTO := valor;
end;

procedure TCuentasPorPagar.setALMACEN(valor : integer);
begin
   FDatos.ALMACEN := valor;
end;

procedure TCuentasPorPagar.setALMACEN_NOMBRE(valor : String100);
begin
   FDatos.ALMACEN_NOMBRE := valor;
end;

procedure TCuentasPorPagar.setCAJA(valor : integer);
begin
   FDatos.CAJA := valor;
end;

procedure TCuentasPorPagar.setCAJA_NOMBRE(valor : String100);
begin
   FDatos.CAJA_NOMBRE := valor;
end;

procedure TCuentasPorPagar.setIMPORTE_A_PAGAR(valor : double);
begin
   FDatos.IMPORTE_A_PAGAR := valor;
end;

function TCuentasPorPagar.getESTATUS          : String20;
begin
   Result := FDatos.ESTATUS;
end;

function TCuentasPorPagar.getFECHA_ULT_COMPRA : TDatetime;
begin
   Result := FDatos.FECHA_ULT_COMPRA;
end;

function TCuentasPorPagar.getFECHA_ULT_PAGO   : TDatetime;
begin
   Result := FDatos.FECHA_ULT_PAGO;
end;

function TCuentasPorPagar.getPROVEEDOR          : integer;
begin
   Result := FDatos.PROVEEDOR;
end;

function TCuentasPorPagar.getPROVEEDOR_CLAVE    : String50;
begin
   Result := FDatos.PROVEEDOR_CLAVE;
end;

function TCuentasPorPagar.getPROVEEDOR_NOMBRE   : String100;
begin
   Result := FDatos.PROVEEDOR_NOMBRE;
end;

function TCuentasPorPagar.getSALDO_PROVEEDOR    : double;
begin
   Result := FDatos.SALDO_PROVEEDOR;
end;

function TCuentasPorPagar.getSALDO_T_VENCIDO  : double;
begin
   Result := FDatos.SALDO_T_VENCIDO;
end;

function TCuentasPorPagar.getSALDO_VENCIDO    : double;
begin
   Result := FDatos.SALDO_VENCIDO;
end;

function TCuentasPorPagar.getFOTO             : TMemoryStream;
begin
   Result := FDatos.FOTO;
end;

function TCuentasPorPagar.getALMACEN          : integer;
begin
   Result := FDatos.ALMACEN;
end;

function TCuentasPorPagar.getALMACEN_NOMBRE   : String100;
begin
   Result := FDatos.ALMACEN_NOMBRE;
end;

function TCuentasPorPagar.getCAJA             : integer;
begin
   Result := FDatos.CAJA;
end;

function TCuentasPorPagar.getCAJA_NOMBRE      : String100;
begin
   Result := FDatos.CAJA_NOMBRE;
end;

function TCuentasPorPagar.getIMPORTE_A_PAGAR  : double;
begin
   Result := FDatos.IMPORTE_A_PAGAR;
end;

function TCuentasPorPagar.GetFecha : TDatetime;
begin
   Result := dmCuentasPorPagar.FECHA;
end;

function TCuentasPorPagar.GetVacio : Boolean;
begin
   Result := dmCuentasPorPagar.dsDetalle.DataSet.IsEmpty;
end;

end.
