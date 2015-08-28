unit UdmNCreditoAlta;

interface

uses
  URecords, UTipos, UfrmAutorizar, Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   Db, IBCustomDataSet, IBTable, IBQuery, IBStoredProc;

type
  TdmNCreditoAlta = class(TDataModule)
    TIBXNotasDeCredito: TIBTable;
    dsNotasDeCredito: TDataSource;
    qyIBXAlmacenes: TIBQuery;
    qyIBXAlmacenesID: TIntegerField;
    qyIBXAlmacenesCLAVE: TIBStringField;
    qyIBXAlmacenesNOMBRE: TIBStringField;
    qyIBXAlmacenesCOMPRA: TIBStringField;
    qyIBXAlmacenesVENDE: TIBStringField;
    qyIBXAlmacenesTRANSFORMA: TIBStringField;
    qyIBXAlmacenesFECHA_ALTA: TDateTimeField;
    qyIBXAlmacenesRESPONSABLE: TIntegerField;
    qyIBXAlmacenesOBSERVACIONES: TBlobField;
    qyIBXAlmacenesSERIE_FACTURA: TIBStringField;
    qyIBXAlmacenesCONSECUTIVO: TIntegerField;
    qyIBXAlmacenesFECHA_ULT_INV: TDateTimeField;
    qyIBXAlmacenesESTATUS: TIBStringField;
    qyIBXAlmacenesSERIE_NC: TIBStringField;
    qyIBXAlmacenesSERIE_NVENTA: TIBStringField;
    qyIBXAlmacenesSERIE_NCARGO: TIBStringField;
    dsAlmacenes: TDataSource;
    qyIBXEstatusProcesos: TIBQuery;
    qyIBXEstatusProcesosID: TIntegerField;
    qyIBXEstatusProcesosNOMBRE: TIBStringField;
    qyIBXEstatusProcesosFORMA: TIntegerField;
    qyIBXEstatusProcesosESTATUS: TIBStringField;
    dsEstatusProcesos: TDataSource;
    TIBXEstatusProcesosDetalle: TIBTable;
    TIBXEstatusProcesosDetalleID: TIntegerField;
    TIBXEstatusProcesosDetallePROCESO: TIntegerField;
    TIBXEstatusProcesosDetalleESTATUS: TIBStringField;
    TIBXEstatusProcesosDetalleAUTORIZACION: TIBStringField;
    TIBXEstatusProcesosDetalleSTOREPROC: TIBStringField;
    dsEstatusProcesosDetalle: TDataSource;
    qyIBXFechaServidor: TIBQuery;
    qyIBXFechaServidorR_FECHA: TDateTimeField;
    dsFechaServidor: TDataSource;
    spIBXEstatus: TIBStoredProc;
    qyIBXMonedas: TIBQuery;
    dsMonedas: TDataSource;
    qyIBXMonedasID: TIntegerField;
    qyIBXMonedasCLAVE: TIBStringField;
    qyIBXMonedasDESCRIPCION: TIBStringField;
    qyIBXMonedasFECHA_ULT_ACT: TDateTimeField;
    qyIBXMonedasPARIDAD: TFloatField;
    qyIBXCXCDocumentos: TIBQuery;
    dsCXCDocumentos: TDataSource;
    qyIBXCXCDocumentosR_FECHA: TDateTimeField;
    qyIBXCXCDocumentosR_REFERENCIA: TIBStringField;
    qyIBXCXCDocumentosR_DOCUMENTO: TIntegerField;
    qyIBXCXCDocumentosR_NUMERO_DE_DOCUMENTOS: TIntegerField;
    qyIBXCXCDocumentosR_TOTAL: TFloatField;
    qyIBXCXCDocumentosR_INTEGRA: TIBStringField;
    qyIBXCXCDocumentosR_ID: TIntegerField;
    TIBXNotasDeCreditoID: TIntegerField;
    TIBXNotasDeCreditoCLAVE: TIBStringField;
    TIBXNotasDeCreditoFECHA_ALTA: TDateTimeField;
    TIBXNotasDeCreditoFECHA_CANCELACION: TDateTimeField;
    TIBXNotasDeCreditoCLIENTE: TIntegerField;
    TIBXNotasDeCreditoEXTENSION: TIntegerField;
    TIBXNotasDeCreditoCUENTA_POR_COBRAR: TIntegerField;
    TIBXNotasDeCreditoOBSERVACIONES: TBlobField;
    TIBXNotasDeCreditoALMACEN: TIntegerField;
    TIBXNotasDeCreditoIVA_PORC: TFloatField;
    TIBXNotasDeCreditoIEPS_PORC: TFloatField;
    TIBXNotasDeCreditoIMPUESTO1_PORC: TFloatField;
    TIBXNotasDeCreditoIMPUESTO2_PORC: TFloatField;
    TIBXNotasDeCreditoSUBTOTAL: TFloatField;
    TIBXNotasDeCreditoIVA: TFloatField;
    TIBXNotasDeCreditoIEPS: TFloatField;
    TIBXNotasDeCreditoIMPUESTO1: TFloatField;
    TIBXNotasDeCreditoIMPUESTO2: TFloatField;
    TIBXNotasDeCreditoTOTAL: TFloatField;
    TIBXNotasDeCreditoMONEDA: TIntegerField;
    TIBXNotasDeCreditoUSUARIO: TIntegerField;
    TIBXNotasDeCreditoESTATUS: TIBStringField;
    TIBXNotasDeCreditoSERIE_NC: TIBStringField;
    TIBXNotasDeCreditoCONSECUTIVO: TIntegerField;
    TIBXNotasDeCreditoNC: TIntegerField;
    TIBXNotasDeCreditoID_REFERENCIA: TIntegerField;
    TIBXNotasDeCreditoTABLA_REFERENCIA: TIBStringField;
    qyIBXUpdate: TIBQuery;
    spIBXInsert: TIBStoredProc;
    qyIBXEliminar: TIBQuery;
    spADD_PFACTURA_NC: TIBStoredProc;
    dsNotasDeCreditoDet: TDataSource;
    qyIBXPartidas: TIBQuery;
    TIBXNotasDeCreditoDESCUENTO_GLOBAL_PORC: TFloatField;
    TIBXNotasDeCreditoDESCUENTO_CANTIDAD_GLOBAL: TFloatField;
    TIBXNotasDeCreditoDESCUENTO_CANTIDAD_PARCIAL: TFloatField;
    TIBXNotasDeCreditoGRANTOTAL: TFloatField;
    spDEL_PARTIDA_NOTA_DE_CREDITO: TIBStoredProc;
    qyIBXPartidasR_ID: TIntegerField;
    qyIBXPartidasR_NOTA_DE_CREDITO: TIntegerField;
    qyIBXPartidasR_CONCEPTO: TIntegerField;
    qyIBXPartidasR_DESCRIPCION: TIBStringField;
    qyIBXPartidasR_DESC_PORC: TFloatField;
    qyIBXPartidasR_AUTOMATICO: TIBStringField;
    qyIBXPartidasR_PRECIO: TFloatField;
    qyIBXPartidasR_SUBTOTAL: TFloatField;
    qyIBXPartidasR_IVA: TFloatField;
    qyIBXPartidasR_IEPS: TFloatField;
    qyIBXPartidasR_IMPUESTO1: TFloatField;
    qyIBXPartidasR_IMPUESTO2: TFloatField;
    qyIBXPartidasR_TOTAL: TFloatField;
    qyIBXPartidasR_ESTATUS: TIBStringField;
    qyIBXPartidasR_DESCUENTO_PORC: TFloatField;
    qyIBXPartidasR_DP: TFloatField;
    qyIBXPartidasR_DG: TFloatField;
    qyIBXPartidasR_GT: TFloatField;
    qyIBXPartidasR_ROWS: TIntegerField;
    qyIBXPartidasR_CANTIDAD: TFloatField;
    qyIBXPartidasR_MATERIAL: TIntegerField;
    qyIBXPartidasR_PRECIO_SIN_IMPUESTOS: TFloatField;
    qyIBXPartidasR_UNIDAD: TIntegerField;
    qyIBXPartidasR_MATERIAL_CLAVE: TIBStringField;
    qyIBXPartidasR_MATERIAL_DESCRIPCION: TIBStringField;
    qyIBXPartidasR_IVA_PORC: TFloatField;
    qyIBXPartidasR_IEPS_PORC: TFloatField;
    qyIBXPartidasR_IMPUESTO1_PORC: TFloatField;
    qyIBXPartidasR_IMPUESTO2_PORC: TFloatField;
    spACT_NCREDITO: TIBStoredProc;
    procedure DataModuleCreate(Sender: TObject);
    procedure qyIBXEstatusProcesosAfterOpen(DataSet: TDataSet);
    procedure TIBXNotasDeCreditoAfterOpen(DataSet: TDataSet);
    procedure TBDENotasDeCreditoAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
    frmAutorizar : TfrmAutorizar;
  public
    { Public declarations }
    procedure Cargar(id: integer; var Datos: _NotasDeCredito);
    function Guardar(var Datos : _NotasDeCredito) : integer;
    procedure eliminar(p_id : integer);
    procedure activarEstatus(p_forma : integer; p_estatus : string);
    procedure RefreshFechaServidor;
    procedure cargarEstatusEjecucion;
    function ejecucionEstatus(id : integer) : boolean;
    procedure refreshAlmacenes;
    procedure refreshMonedas;
    procedure refreshNotasDeCredito;
    procedure refreshNotasDetalle;
    procedure refreshDocumentos(id : integer);
    procedure AddPartidaFactura(pId, pPartida : integer; pCantidad : double);
    procedure AddPartidaPedido(pId, pPartida : integer; pCantidad : double);
    procedure ActPartida(datos : _NCreditoDet);
    procedure DelPartida(pId : integer);
  end;

implementation

uses IBModulo;

{$R *.DFM}

procedure TdmNCreditoAlta.ActPartida(datos : _NCreditoDet);
begin
   spACT_NCREDITO.ParamByName('P_ID').AsInteger                 := datos.ID;
   spACT_NCREDITO.ParamByName('P_NC').AsInteger                 := datos.NOTA_DE_CREDITO;
   spACT_NCREDITO.ParamByName('P_MATERIAL').AsInteger           := datos.MATERIAL;
   spACT_NCREDITO.ParamByName('P_CANTIDAD').AsFloat             := datos.CANTIDAD;
   spACT_NCREDITO.ParamByName('P_PRECIO').AsFloat               := datos.PRECIO;
   spACT_NCREDITO.ParamByName('P_UNIDAD').AsInteger             := datos.UNIDAD;
   spACT_NCREDITO.ParamByName('P_SUBTOTAL').AsFloat             := datos.SUBTOTAL;
   spACT_NCREDITO.ParamByName('P_IVA').AsFloat                  := datos.IVA;
   spACT_NCREDITO.ParamByName('P_IEPS').AsFloat                 := datos.IEPS;
   spACT_NCREDITO.ParamByName('P_IMPUESTO1').AsFloat            := datos.IMPUESTO1;
   spACT_NCREDITO.ParamByName('P_IMPUESTO2').AsFloat            := datos.IMPUESTO2;
   spACT_NCREDITO.ParamByName('P_PORC_DP').AsFloat              := datos.PORC_DP;
   spACT_NCREDITO.ParamByName('P_PORC_DG').AsFloat              := datos.PORC_DG;
   spACT_NCREDITO.ParamByName('P_IVA_PORC').AsFloat             := datos.IVA_PORC;
   spACT_NCREDITO.ParamByName('P_IEPS_PORC').AsFloat            := datos.IEPS_PORC;
   spACT_NCREDITO.ParamByName('P_IMPUESTO1_PORC').AsFloat       := datos.IMPUESTO1_PORC;
   spACT_NCREDITO.ParamByName('P_IMPUESTO2_PORC').AsFloat       := datos.IMPUESTO2_PORC;
   spACT_NCREDITO.ParamByName('P_PRECIO_SIN_IMPUESTOS').AsFloat := datos.PRECIO_SIN_IMPUESTOS;
   spACT_NCREDITO.ExecProc;
   spACT_NCREDITO.Transaction.CommitRetaining;
   refreshNotasDetalle;
end;

procedure TdmNCreditoAlta.DataModuleCreate(Sender: TObject);
begin
               dsNotasDeCredito.DataSet := TIBXNotasDeCredito;
               dsAlmacenes.DataSet      := qyIBXAlmacenes;
               dsEstatusProcesos.DataSet        := qyIBXEstatusProcesos;
               dsEstatusProcesosDetalle.DataSet := TIBXEstatusProcesosDetalle;
               dsFechaServidor.DataSet          := qyIBXFechaServidor;
               dsMonedas.DataSet                := qyIBXMonedas;
               dsCXCDocumentos.DataSet          := qyIBXCXCDocumentos;
               dsNotasDeCreditoDet.DataSet      := qyIBXPartidas;
end;

procedure TdmNCreditoAlta.AddPartidaFactura(pId, pPartida : integer; pCantidad : double);
begin
   spADD_PFACTURA_NC.ParamByName('P_ID').AsInteger      := pId;
   spADD_PFACTURA_NC.ParamByName('P_PARTIDA').AsInteger := pPartida;
   spADD_PFACTURA_NC.ParamByName('P_CANTIDAD').AsFloat  := pCantidad;
   spADD_PFACTURA_NC.ExecProc;
   spADD_PFACTURA_NC.Transaction.CommitRetaining;
   refreshNotasDetalle;
end;

procedure TdmNCreditoAlta.refreshNotasDetalle;
var
   seek : integer;
begin
   if dsNotasDeCreditoDet.DataSet.State = dsInactive then
      dsNotasDeCreditoDet.DataSet.Open
   else
      begin
         seek := dsNotasDeCreditoDet.DataSet.FieldByName('R_ID').AsInteger;
         dsNotasDeCreditoDet.DataSet.Close;
         dsNotasDeCreditoDet.DataSet.Open;
         dsNotasDeCreditoDet.DataSet.Locate('R_ID',seek,[loCaseInsensitive]);
      end;
end;

procedure TdmNCreditoAlta.DelPartida(pId : integer);
begin
   spDEL_PARTIDA_NOTA_DE_CREDITO.ParamByName('P_ID').AsInteger := dsNotasDeCreditoDet.DataSet.FieldByName('R_ID').AsInteger;
   spDEL_PARTIDA_NOTA_DE_CREDITO.ExecProc;
   spDEL_PARTIDA_NOTA_DE_CREDITO.Transaction.CommitRetaining;
end;

procedure TdmNCreditoAlta.AddPartidaPedido(pId, pPartida : integer; pCantidad : double);
begin
end;

procedure TdmNCreditoAlta.refreshNotasDeCredito;
var
   seek : integer;
begin
   if dsNotasDeCredito.DataSet.State = dsInactive then
      dsNotasDeCredito.DataSet.Open
   else
      begin
         seek := dsNotasDeCredito.DataSet.FieldByName('ID').AsInteger;
         dsNotasDeCredito.DataSet.Close;
         dsNotasDeCredito.DataSet.Open;
         dsNotasDeCredito.DataSet.Locate('ID',seek,[loCaseInsensitive]);
      end;
end;

procedure TdmNCreditoAlta.Cargar(id: integer; var Datos: _NotasDeCredito);
begin
   refreshNotasDeCredito;
   dsNotasDeCredito.DataSet.Filter := 'ID = '+IntToStr(Id);

   Datos.ID                := dsNotasDeCredito.DataSet.FieldByName('ID').AsInteger;
   Datos.CLAVE             := dsNotasDeCredito.DataSet.FieldByName('CLAVE').AsString;
   Datos.FECHA_ALTA        := dsNotasDeCredito.DataSet.FieldByName('FECHA_ALTA').AsDateTime;
   Datos.FECHA_CANCELACION := dsNotasDeCredito.DataSet.FieldByName('FECHA_CANCELACION').AsDateTime;
   Datos.CLIENTE           := dsNotasDeCredito.DataSet.FieldByName('CLIENTE').AsInteger;
   Datos.EXTENSION         := dsNotasDeCredito.DataSet.FieldByName('EXTENSION').Value;
   Datos.CUENTA_POR_COBRAR := dsNotasDeCredito.DataSet.FieldByName('CUENTA_POR_COBRAR').Value;
   Datos.ALMACEN           := dsNotasDeCredito.DataSet.FieldByName('ALMACEN').Value;
   Datos.IVA_PORC          := dsNotasDeCredito.DataSet.FieldByName('IVA_PORC').AsFloat;
   Datos.IEPS_PORC         := dsNotasDeCredito.DataSet.FieldByName('IEPS_PORC').AsFloat;
   Datos.IMPUESTO1_PORC    := dsNotasDeCredito.DataSet.FieldByName('IMPUESTO1_PORC').AsFloat;
   Datos.IMPUESTO2_PORC    := dsNotasDeCredito.DataSet.FieldByName('IMPUESTO2_PORC').AsFloat;
   Datos.SUBTOTAL          := dsNotasDeCredito.DataSet.FieldByName('SUBTOTAL').AsFloat;
   Datos.IVA               := dsNotasDeCredito.DataSet.FieldByName('IVA').AsFloat;
   Datos.IEPS              := dsNotasDeCredito.DataSet.FieldByName('IEPS').AsFloat;
   Datos.IMPUESTO1         := dsNotasDeCredito.DataSet.FieldByName('IMPUESTO1').AsFloat;
   Datos.IMPUESTO2         := dsNotasDeCredito.DataSet.FieldByName('IMPUESTO2').AsFloat;
   Datos.TOTAL             := dsNotasDeCredito.DataSet.FieldByName('TOTAL').AsFloat;
   Datos.MONEDA            := dsNotasDeCredito.DataSet.FieldByName('MONEDA').AsInteger;
   Datos.USUARIO           := dsNotasDeCredito.DataSet.FieldByName('USUARIO').AsInteger;
   Datos.ESTATUS           := dsNotasDeCredito.DataSet.FieldByName('ESTATUS').AsString;
   Datos.SERIE_NC          := dsNotasDeCredito.DataSet.FieldByName('SERIE_NC').AsString;
   Datos.CONSECUTIVO       := dsNotasDeCredito.DataSet.FieldByName('CONSECUTIVO').AsInteger;
   Datos.NC                := dsNotasDeCredito.DataSet.FieldByName('NC').Value;
   Datos.GRANTOTAL         := dsNotasDeCredito.DataSet.FieldByName('GRANTOTAL').AsFloat;
end;

function TdmNCreditoAlta.Guardar(var Datos : _NotasDeCredito) : integer;
var
   tmp : integer;
begin
   tmp := -1;
                 case Datos.ID of
                   -1 : begin //registro nuevo
                           spIBXInsert.ParamByName('P_CLAVE').AsString            := Datos.CLAVE;
                           spIBXInsert.ParamByName('P_FECHA_ALTA').AsDatetime     := Datos.FECHA_ALTA;
                           spIBXInsert.ParamByName('P_CLIENTE').AsInteger         := Datos.CLIENTE;
                           spIBXInsert.ParamByName('P_EXTENSION').Value           := Datos.EXTENSION;
                           spIBXInsert.ParamByName('P_CXC').Value                 := Datos.CUENTA_POR_COBRAR;
                           spIBXInsert.ParamByName('P_ALMACEN').AsInteger         := Datos.ALMACEN;
                           spIBXInsert.ParamByName('P_MONEDA').AsInteger          := Datos.MONEDA;
                           spIBXInsert.ParamByName('P_USUARIO').AsInteger         := Datos.USUARIO;
                           spIBXInsert.ParamByName('P_ESTATUS').AsString          := Datos.ESTATUS;
                           spIBXInsert.ParamByName('P_ID_REFERENCIA').AsInteger   := Datos.ID_REFERENCIA;
                           spIBXInsert.ParamByName('P_TABLA_REFERENCIA').AsString := Datos.TABLA_REFERENCIA;
                           spIBXInsert.ExecProc;
                           spIBXInsert.Transaction.CommitRetaining;
                           tmp := spIBXInsert.ParamByName('R_ID').AsInteger;
                        end;
                  else
                     begin //registro modificado
                        qyIBXUpdate.ParamByName('P_ID').AsInteger      := Datos.ID;
                        qyIBXUpdate.ParamByName('P_FECHA').AsDatetime  := Datos.FECHA_ALTA;
                        qyIBXUpdate.ParamByName('P_CLAVE').AsString    := Datos.CLAVE;
                        qyIBXUpdate.ParamByName('P_CLIENTE').AsInteger := Datos.CLIENTE;
                        qyIBXUpdate.ParamByName('P_EXTENSION').Value   := Datos.EXTENSION;
                        qyIBXUpdate.ParamByName('P_CXC').Value         := Datos.CUENTA_POR_COBRAR;
                        qyIBXUpdate.ParamByName('P_ALMACEN').AsInteger := Datos.ALMACEN;
                        qyIBXUpdate.ParamByName('P_MONEDA').AsInteger  := Datos.MONEDA;
                        qyIBXUpdate.ParamByName('P_ESTATUS').AsString  := Datos.ESTATUS;
                        qyIBXUpdate.ParamByName('P_USUARIO').AsInteger := Datos.USUARIO;
                        qyIBXUpdate.ExecSQL;
                        qyIBXUpdate.Transaction.CommitRetaining;
                     end;
                 end;
   Result := tmp;
end;

procedure TdmNCreditoAlta.eliminar(p_id : integer);
begin
                qyIBXEliminar.ParamByName('P_ID').AsInteger := p_id;
                qyIBXEliminar.ExecSQL;
                qyIBXEliminar.Transaction.CommitRetaining;
end;

procedure TdmNCreditoAlta.activarEstatus(p_forma : integer; p_estatus : string);
begin
               qyIBXEstatusProcesos.Close;
               qyIBXEstatusProcesos.ParamByName('P_FORMA').AsInteger  := p_forma;
               qyIBXEstatusProcesos.ParamByName('P_ESTATUS').AsString := p_estatus;
               qyIBXEstatusProcesos.Open;
end;

procedure TdmNCreditoAlta.RefreshFechaServidor;
begin
   dsFechaServidor.DataSet.Close;
   dsFechaServidor.DataSet.Open;
end;

procedure TdmNCreditoAlta.cargarEstatusEjecucion;
begin
               spIBXEstatus.Params.Clear;
               spIBXEstatus.StoredProcName := dsEstatusProcesosDetalle.DataSet.FieldByName('STOREPROC').AsString;
               spIBXEstatus.Params.CreateParam(ftInteger,'P_ID',ptInput);
end;

function TdmNCreditoAlta.ejecucionEstatus(id : integer) : boolean;
var
   autorizar : string;
   ejecutar  : boolean;
   tmp       : boolean;
begin
  ejecutar  := true;
  tmp       := false;
  autorizar := dsEstatusProcesosDetalle.DataSet.FieldByName('AUTORIZACION').AsString;
  if autorizar = 'Si' then
  begin
     frmAutorizar := TfrmAutorizar.Crear(Application, 2);
     frmAutorizar.ShowModal;
     ejecutar := frmAutorizar.autorizacion;
     frmAutorizar.Free;
     frmAutorizar := nil;
  end;

  if ejecutar then
  begin
                  spIBXEstatus.ParamByName('P_ID').AsInteger := id;
                  spIBXEstatus.ExecProc;
                  spIBXEstatus.Transaction.CommitRetaining;
                  TIBXNotasDeCredito.Refresh;
                  tmp := true;
  end;
  Result := tmp;
end;

procedure TdmNCreditoAlta.refreshAlmacenes;
begin
   dsAlmacenes.DataSet.Close;
   dsAlmacenes.DataSet.Open;
end;

procedure TdmNCreditoAlta.refreshMonedas;
begin
   dsMonedas.DataSet.Close;
   dsMonedas.DataSet.Open;
end;

procedure TdmNCreditoAlta.refreshDocumentos(id : integer);
begin
               qyIBXCXCDocumentos.Close;
               qyIBXCXCDocumentos.ParamByName('P_ID').AsInteger   := id;
               qyIBXCXCDocumentos.ParamByName('P_TABLA').AsString := 'FACTURAS';
               qyIBXCXCDocumentos.Open;
end;

procedure TdmNCreditoAlta.qyIBXEstatusProcesosAfterOpen(DataSet: TDataSet);
begin
   if TIBXEstatusProcesosDetalle.State = dsInactive then
      TIBXEstatusProcesosDetalle.Open;
end;

procedure TdmNCreditoAlta.TIBXNotasDeCreditoAfterOpen(DataSet: TDataSet);
begin
   refreshNotasDetalle;
end;

procedure TdmNCreditoAlta.TBDENotasDeCreditoAfterOpen(DataSet: TDataSet);
begin
   refreshNotasDetalle;
end;

end.
