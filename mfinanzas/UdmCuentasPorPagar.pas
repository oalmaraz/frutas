unit UdmCuentasPorPagar;

interface

uses
  URecords, Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, IBCustomDataSet, IBQuery, IBStoredProc, IBTable;

type
  TdmCuentasPorPagar = class(TDataModule)
    qyEstadoDeCuentaEnc: TIBQuery;
    dsEstadoDeCuentaEnc: TDataSource;
    qyIBXFechaServidor: TIBQuery;
    qyIBXFechaServidorR_FECHA: TDateTimeField;
    dsFechaServidor: TDataSource;
    qyEstadoDeCuentaEncR_SALDO_PROVEEDOR: TFloatField;
    qyEstadoDeCuentaEncR_TOTAL_VENCIDO: TFloatField;
    qyEstadoDeCuentaEncR_FECHA_ULT_COMPRA: TDateTimeField;
    qyEstadoDeCuentaEncR_FECHA_ULT_PAGO: TDateTimeField;
    qyEstadoDeCuentaEncR_FOTO: TBlobField;
    qyEstadoDeCuentaEncR_CLAVE: TIBStringField;
    qyEstadoDeCuentaEncR_NOMBRE: TIBStringField;
    qyEstadoDeCuentaEncR_TELEFONO: TIBStringField;
    qyVer_Datos_Cajero: TIBQuery;
    qyVer_Datos_CajeroR_ID: TIntegerField;
    qyVer_Datos_CajeroR_NOMBRE: TIBStringField;
    qyVer_Datos_CajeroR_ALMACEN: TIntegerField;
    qyVer_Datos_CajeroR_ALMACEN_CLAVE: TIBStringField;
    qyVer_Datos_CajeroR_ALMACEN_OBSERVACIONES: TBlobField;
    qyVer_Datos_CajeroR_USUARIO: TIntegerField;
    qyVer_Datos_CajeroR_NOMBRE_USUARIO: TIBStringField;
    qyVer_Datos_CajeroR_BAJA: TIBStringField;
    qyVer_Datos_CajeroR_ESTATUS: TIBStringField;
    qyVer_Datos_CajeroR_REGISTROS: TIntegerField;
    qyVer_Datos_CajeroR_MODULO_FUNCION: TIntegerField;
    qyVer_Datos_CajeroR_EMPRESA_NOMBRE: TIBStringField;
    qyVer_Datos_CajeroR_FECHA_SERVIDOR: TDateTimeField;
    qyVer_Datos_CajeroR_NIVEL: TIntegerField;
    qyVer_Datos_CajeroR_ALMACEN_NOMBRE: TIBStringField;
    dsVer_Datos_Cajero: TDataSource;
    qyPendienteDePago: TIBQuery;
    qyPagado: TIBQuery;
    qyTodos: TIBQuery;
    dsDetalle: TDataSource;
    qyPendienteDePagoR_ID: TIntegerField;
    qyPendienteDePagoR_REFERENCIA: TIBStringField;
    qyPendienteDePagoR_NUMERO_DE_DOCUMENTOS: TIntegerField;
    qyPendienteDePagoR_DOCUMENTO: TIntegerField;
    qyPendienteDePagoR_PROVEEDOR: TIntegerField;
    qyPendienteDePagoR_PROVEEDOR_CLAVE: TIBStringField;
    qyPendienteDePagoR_PROVEEDOR_NOMBRE: TIBStringField;
    qyPendienteDePagoR_FECHA: TDateTimeField;
    qyPendienteDePagoR_FECHA_VENCIMIENTO: TDateTimeField;
    qyPendienteDePagoR_ALMACEN: TIntegerField;
    qyPendienteDePagoR_ALMACEN_NOMBRE: TIBStringField;
    qyPendienteDePagoR_IMPORTE_INICIAL: TFloatField;
    qyPendienteDePagoR_SALDO_ACTUAL: TFloatField;
    qyPendienteDePagoR_ESTATUS: TIBStringField;
    qyPendienteDePagoR_SEL: TIBStringField;
    qyPendienteDePagoR_VENCIMIENTOS: TIntegerField;
    qyPendienteDePagoR_PAGO_MODIFICADO: TFloatField;
    qyPendienteDePagoR_COLOR: TIBStringField;
    qyPendienteDePagoR_NCARGO_SINAFECTAR: TFloatField;
    qyPendienteDePagoR_NCARGO_AFECTADAS: TFloatField;
    qyPendienteDePagoR_NCARGO_SINAFECTAR_COUNT: TIntegerField;
    qyPendienteDePagoR_NCARGO_AFECTADAS_COUNT: TIntegerField;
    qyPendienteDePagoR_NCARGO_SINAFECTAR_ACUM: TFloatField;
    qyPendienteDePagoR_NCARGO_AFECTADAS_ACUM: TFloatField;
    qyPendienteDePagoR_PAGO_MODIFICADO_ACUM: TFloatField;
    qyPagadoR_ID: TIntegerField;
    qyPagadoR_REFERENCIA: TIBStringField;
    qyPagadoR_NUMERO_DE_DOCUMENTOS: TIntegerField;
    qyPagadoR_DOCUMENTO: TIntegerField;
    qyPagadoR_PROVEEDOR: TIntegerField;
    qyPagadoR_PROVEEDOR_CLAVE: TIBStringField;
    qyPagadoR_PROVEEDOR_NOMBRE: TIBStringField;
    qyPagadoR_FECHA: TDateTimeField;
    qyPagadoR_FECHA_VENCIMIENTO: TDateTimeField;
    qyPagadoR_ALMACEN: TIntegerField;
    qyPagadoR_ALMACEN_NOMBRE: TIBStringField;
    qyPagadoR_IMPORTE_INICIAL: TFloatField;
    qyPagadoR_SALDO_ACTUAL: TFloatField;
    qyPagadoR_ESTATUS: TIBStringField;
    qyPagadoR_SEL: TIBStringField;
    qyPagadoR_VENCIMIENTOS: TIntegerField;
    qyPagadoR_PAGO_MODIFICADO: TFloatField;
    qyPagadoR_COLOR: TIBStringField;
    qyPagadoR_NCARGO_SINAFECTAR: TFloatField;
    qyPagadoR_NCARGO_AFECTADAS: TFloatField;
    qyPagadoR_NCARGO_SINAFECTAR_COUNT: TIntegerField;
    qyPagadoR_NCARGO_AFECTADAS_COUNT: TIntegerField;
    qyPagadoR_NCARGO_SINAFECTAR_ACUM: TFloatField;
    qyPagadoR_NCARGO_AFECTADAS_ACUM: TFloatField;
    qyPagadoR_PAGO_MODIFICADO_ACUM: TFloatField;
    qyTodosR_ID: TIntegerField;
    qyTodosR_REFERENCIA: TIBStringField;
    qyTodosR_NUMERO_DE_DOCUMENTOS: TIntegerField;
    qyTodosR_DOCUMENTO: TIntegerField;
    qyTodosR_PROVEEDOR: TIntegerField;
    qyTodosR_PROVEEDOR_CLAVE: TIBStringField;
    qyTodosR_PROVEEDOR_NOMBRE: TIBStringField;
    qyTodosR_FECHA: TDateTimeField;
    qyTodosR_FECHA_VENCIMIENTO: TDateTimeField;
    qyTodosR_ALMACEN: TIntegerField;
    qyTodosR_ALMACEN_NOMBRE: TIBStringField;
    qyTodosR_IMPORTE_INICIAL: TFloatField;
    qyTodosR_SALDO_ACTUAL: TFloatField;
    qyTodosR_ESTATUS: TIBStringField;
    qyTodosR_SEL: TIBStringField;
    qyTodosR_VENCIMIENTOS: TIntegerField;
    qyTodosR_PAGO_MODIFICADO: TFloatField;
    qyTodosR_COLOR: TIBStringField;
    qyTodosR_NCARGO_SINAFECTAR: TFloatField;
    qyTodosR_NCARGO_AFECTADAS: TFloatField;
    qyTodosR_NCARGO_SINAFECTAR_COUNT: TIntegerField;
    qyTodosR_NCARGO_AFECTADAS_COUNT: TIntegerField;
    qyTodosR_NCARGO_SINAFECTAR_ACUM: TFloatField;
    qyTodosR_NCARGO_AFECTADAS_ACUM: TFloatField;
    qyTodosR_PAGO_MODIFICADO_ACUM: TFloatField;
    qyUsuario: TIBQuery;
    qyUsuarioNOMBRE: TIBStringField;
    dsUsuario: TDataSource;
    TIBXPreferencias: TIBTable;
    TIBXPreferenciasID: TIntegerField;
    TIBXPreferenciasNOMBRE: TIBStringField;
    TIBXPreferenciasTIPO: TIBStringField;
    TIBXPreferenciasVALOR: TIBStringField;
    dsPreferencias: TDataSource;
    spSELECCIONAR_PAGO_BIS: TIBStoredProc;
    spSELECCION_AUTOMATICA_BIS: TIBStoredProc;
    spSELECCION_VENCIDOS_BIS: TIBStoredProc;
    spCREAR_CXP_MANUAL: TIBStoredProc;
    spCREAR_CXP_AUTOMATICA: TIBStoredProc;
    spCREAR_CXP_SELECCIONADO: TIBStoredProc;
    spQUITAR_SELECCION_BIS: TIBStoredProc;
    spP_CXP_CANCELAR2: TIBStoredProc;
    spMODIFICAR_CXP_PAGO: TIBStoredProc;
    spCXP_CAMPO_PAGO_MODIFICADO: TIBStoredProc;
    qyPagar: TIBQuery;
    qyPagoSeleccionado: TIBQuery;
    qyPendienteDePagoR_MONEDA: TIntegerField;
    qyPendienteDePagoR_MONEDA_CLAVE: TIBStringField;
    qyPendienteDePagoR_MONEDA_DESCRIPCION: TIBStringField;
    qyPagadoR_MONEDA: TIntegerField;
    qyPagadoR_MONEDA_CLAVE: TIBStringField;
    qyPagadoR_MONEDA_DESCRIPCION: TIBStringField;
    qyTodosR_MONEDA: TIntegerField;
    qyTodosR_MONEDA_CLAVE: TIBStringField;
    qyTodosR_MONEDA_DESCRIPCION: TIBStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    function GetFECHA : TDatetime;
    procedure refreshPreferencias;
  public
    { Public declarations }
    procedure LoadDatosCaja(var Datos : _CuentasPorPagar);
    procedure LoadDatoUsuario(var Datos : _CuentasPorPagar);
    procedure Usuario(valor : integer);
    procedure DatosCaja(valor : integer);
    procedure Proveedor(var Datos : _CuentasPorPagar);
    procedure Detalle(var Datos : _CuentasPorPagar);
    procedure EjecutarAutomatico(var Datos : _CuentasPorPagar);
    procedure EjecutarManual(var Datos : _CuentasPorPagar);
    procedure EjecutarVencido(var Datos : _CuentasPorPagar);
    procedure EjecutarModificado(var Datos : _CuentasPorPagar);
    procedure EjecutarSeleccionado;
    procedure iniciarParametrosDetalle(var Datos : _CuentasPorPagar);
    procedure CancelarTipoPago(valor : integer);
    procedure pagoModificado(valor : string);
    function crearTipoPago(valor : string; var Datos : _CuentasPorPagar) : integer;
  published
    property FECHA   : TDatetime read GetFECHA;
  end;

var
  dmCuentasPorPagar: TdmCuentasPorPagar;

implementation

uses
  IBModulo;

{$R *.DFM}

procedure TdmCuentasPorPagar.DataModuleCreate(Sender: TObject);
begin
   refreshPreferencias;
end;

procedure TdmCuentasPorPagar.pagoModificado(valor : string);
begin
   spMODIFICAR_CXP_PAGO.ParamByName('P_ID').AsInteger     := dsDetalle.DataSet.FieldByName('R_ID').AsInteger;
   spMODIFICAR_CXP_PAGO.ParamByName('P_IMPORTE').AsString := valor;
   spMODIFICAR_CXP_PAGO.ExecProc;
   spMODIFICAR_CXP_PAGO.Transaction.CommitRetaining;
   dsDetalle.DataSet.Close;
   dsDetalle.DataSet.Open;
end;

procedure TdmCuentasPorPagar.CancelarTipoPago(valor : integer);
begin
   spP_CXP_CANCELAR2.ParamByName('P_ID').AsInteger := valor;
   spP_CXP_CANCELAR2.ExecProc;
   spP_CXP_CANCELAR2.Transaction.CommitRetaining;
end;

function TdmCuentasPorPagar.crearTipoPago(valor : string; var Datos : _CuentasPorPagar) : integer;
var
   tmp : integer;
begin
   tmp := 0;
   if (valor = 'MANUAL') then
   begin
      spCREAR_CXP_MANUAL.ParamByName('P_PROVEEDOR').AsInteger := Datos.PROVEEDOR;
      spCREAR_CXP_MANUAL.ParamByName('P_USUARIO').AsInteger   := Datos.USUARIO;
      spCREAR_CXP_MANUAL.ExecProc;
      spCREAR_CXP_MANUAL.Transaction.CommitRetaining;
      tmp := spCREAR_CXP_MANUAL.ParamByName('R_CXP_PAGO').AsInteger;
   end
   else
      if valor = 'AUTOMATICO' then
      begin
         spCREAR_CXP_AUTOMATICA.ParamByName('P_PROVEEDOR').AsInteger := Datos.PROVEEDOR;
         spCREAR_CXP_AUTOMATICA.ParamByName('P_USUARIO').AsInteger   := Datos.USUARIO;
         spCREAR_CXP_AUTOMATICA.ParamByName('P_TOTAL').AsFloat       := Datos.IMPORTE_A_PAGAR;
         spCREAR_CXP_AUTOMATICA.ParamByName('P_RESTO').AsFloat       := Datos.RESTO;
         spCREAR_CXP_AUTOMATICA.ExecProc;
         spCREAR_CXP_AUTOMATICA.Transaction.CommitRetaining;
         tmp := spCREAR_CXP_AUTOMATICA.ParamByName('R_CXP_PAGO').AsInteger;
      end
      else
         if valor = 'MODIFICADO' then
         begin
            //crear pago seleccionado
            spCREAR_CXP_SELECCIONADO.ParamByName('P_PROVEEDOR').AsInteger := Datos.PROVEEDOR;
            spCREAR_CXP_SELECCIONADO.ParamByName('P_USUARIO').AsInteger   := Datos.USUARIO;
            spCREAR_CXP_SELECCIONADO.ExecProc;
            spCREAR_CXP_SELECCIONADO.Transaction.CommitRetaining;
            tmp  := spCREAR_CXP_SELECCIONADO.ParamByName('R_CXP_PAGO').AsInteger;
         end;
   Result := tmp;
end;

procedure TdmCuentasPorPagar.EjecutarSeleccionado;
begin
   spSELECCIONAR_PAGO_BIS.ParamByName('P_ID').AsInteger := dsDetalle.DataSet.FieldByName('R_ID').AsInteger;
   spSELECCIONAR_PAGO_BIS.ExecProc;
   spSELECCIONAR_PAGO_BIS.Transaction.CommitRetaining;
   dsDetalle.DataSet.Close;
   dsDetalle.DataSet.Open;
end;

procedure TdmCuentasPorPagar.refreshPreferencias;
begin
   if dsPreferencias.DataSet.State = dsInactive then
      dsPreferencias.DataSet.Open
   else
      begin
         dsPreferencias.DataSet.Close;
         dsPreferencias.DataSet.Open;
      end;
end;

procedure TdmCuentasPorPagar.EjecutarAutomatico(var Datos : _CuentasPorPagar);
begin
  spSELECCION_AUTOMATICA_BIS.ParamByName('P_PROVEEDOR').AsInteger := Datos.PROVEEDOR;
  spSELECCION_AUTOMATICA_BIS.ParamByName('P_CANTIDAD').AsFloat  := Datos.IMPORTE_A_PAGAR;
  spSELECCION_AUTOMATICA_BIS.ExecProc;
  spSELECCION_AUTOMATICA_BIS.Transaction.CommitRetaining;
  Datos.RESTO := spSELECCION_AUTOMATICA_BIS.ParamByName('R_RESTO').AsFloat;
  Detalle(Datos);
end;

procedure TdmCuentasPorPagar.EjecutarManual(var Datos : _CuentasPorPagar);
begin
   qyPagar.Close;
   qyPagar.ParamByName('P_PROVEEDOR').AsInteger := Datos.PROVEEDOR;
   qyPagar.Open;
   Datos.IMPORTE_A_PAGAR := qyPagar.FieldByName('TOTAL').AsFloat;
   Datos.RESTO           := 0.00;
end;

procedure TdmCuentasPorPagar.EjecutarVencido(var Datos : _CuentasPorPagar);
begin
   spSELECCION_VENCIDOS_BIS.ParamByName('P_PROVEEDOR').AsInteger := Datos.PROVEEDOR;
   spSELECCION_VENCIDOS_BIS.ExecProc;
   spSELECCION_VENCIDOS_BIS.Transaction.CommitRetaining;
   Datos.IMPORTE_A_PAGAR := spSELECCION_VENCIDOS_BIS.ParamByName('R_TOTAL_VENCIDO').AsFloat;
   Datos.RESTO           := 0.00;
   Detalle(Datos);
end;

procedure TdmCuentasPorPagar.EjecutarModificado(var Datos : _CuentasPorPagar);
begin
   qyPagoSeleccionado.Close;
   qyPagoSeleccionado.ParamByName('P_PROVEEDOR').AsInteger := Datos.PROVEEDOR;
   qyPagoSeleccionado.Open;
   Datos.IMPORTE_A_PAGAR := qyPagoSeleccionado.FieldByName('TOTAL').AsFloat;
   Datos.RESTO           := 0.00;
end;

procedure TdmCuentasPorPagar.iniciarParametrosDetalle(var Datos : _CuentasPorPagar);
begin
   //quitar seleccion, si hay previamente.
   TIBXPreferencias.Filter := 'ID = 38';//Quitar seleccion en cxp
   if UpperCase(TIBXPreferencias.FieldByName('VALOR').AsString) = 'SI' then
   begin
      spQUITAR_SELECCION_BIS.ParamByName('P_PROVEEDOR').AsInteger := Datos.PROVEEDOR;
      spQUITAR_SELECCION_BIS.ExecProc;
      spQUITAR_SELECCION_BIS.Transaction.CommitRetaining;
   end;
   //pasar saldo a pago modificado
   spCXP_CAMPO_PAGO_MODIFICADO.ParamByName('P_PROVEEDOR').AsInteger := Datos.PROVEEDOR;
   spCXP_CAMPO_PAGO_MODIFICADO.ExecProc;
   spCXP_CAMPO_PAGO_MODIFICADO.Transaction.CommitRetaining;
end;

procedure TdmCuentasPorPagar.Proveedor(var Datos : _CuentasPorPagar);
begin
   //encabezado
   qyEstadoDeCuentaEnc.Close;
   qyEstadoDeCuentaEnc.ParamByName('P_PROVEEDOR').AsInteger := Datos.PROVEEDOR;
   qyEstadoDeCuentaEnc.Open;
   Datos.FECHA_ULT_COMPRA := qyEstadoDeCuentaEnc.FieldByName('R_FECHA_ULT_COMPRA').AsDatetime;
   Datos.FECHA_ULT_PAGO   := qyEstadoDeCuentaEnc.FieldByName('R_FECHA_ULT_PAGO').AsDateTime;
   Datos.SALDO_PROVEEDOR  := qyEstadoDeCuentaEnc.FieldByName('R_SALDO_PROVEEDOR').AsFloat;
   Datos.SALDO_T_VENCIDO  := qyEstadoDeCuentaEnc.FieldByName('R_TOTAL_VENCIDO').AsFloat;
   Datos.TELEFONO         := qyEstadoDeCuentaEnc.FieldByName('R_TELEFONO').AsString;

   Datos.FOTO.Clear;
   TBlobField(qyEstadoDeCuentaEnc.FieldByName('R_FOTO')).SaveToStream(Datos.FOTO);
   Detalle(Datos);
end;

procedure TdmCuentasPorPagar.Detalle(var Datos : _CuentasPorPagar);
begin
   //detalle
   if Datos.ESTATUS = 'Pendiente de Pago' then
   begin
      dsDetalle.DataSet := qyPendienteDePago;
      qyPendienteDePago.Close;
      qyPendienteDePago.ParamByName('P_PROVEEDOR').AsInteger := Datos.PROVEEDOR;
      qyPendienteDePago.Open;
   end
   else
   if Datos.ESTATUS = 'Pagado' then
   begin
      dsDetalle.DataSet := qyPagado;
      qyPagado.Close;
      qyPagado.ParamByName('P_PROVEEDOR').AsInteger := Datos.PROVEEDOR;
      qyPagado.Open;
   end
   else
   if Datos.ESTATUS = 'Ambos' then
   begin
      dsDetalle.DataSet := qyTodos;
      qyTodos.Close;
      qyTodos.ParamByName('P_PROVEEDOR').AsInteger := Datos.PROVEEDOR;
      qyTodos.Open;
   end;
end;

procedure TdmCuentasPorPagar.LoadDatoUsuario(var Datos : _CuentasPorPagar);
begin
   if not(dsUsuario.DataSet.IsEmpty) then
   begin
      Datos.USUARIO_NOMBRE := dsUsuario.DataSet.FieldByName('NOMBRE').AsString;
   end
   else
      begin
         Datos.USUARIO_NOMBRE := '<FALTA>';
      end;
end;

procedure TdmCuentasPorPagar.LoadDatosCaja(var Datos : _CuentasPorPagar);
begin
   if not(dsVer_Datos_Cajero.DataSet.IsEmpty) then
   begin
      Datos.ALMACEN        := dsVer_Datos_Cajero.DataSet.FieldByName('R_ALMACEN').AsInteger;
      Datos.ALMACEN_NOMBRE := dsVer_Datos_Cajero.DataSet.FieldByName('R_ALMACEN_NOMBRE').AsString;
      Datos.CAJA           := dsVer_Datos_Cajero.DataSet.FieldByName('R_ID').AsInteger;
      Datos.CAJA_NOMBRE    := dsVer_Datos_Cajero.DataSet.FieldByName('R_NOMBRE').AsString;
      Datos.CAJAS          := dsVer_Datos_Cajero.DataSet.FieldByName('R_REGISTROS').AsInteger;
   end
   else
      begin
         Datos.ALMACEN        := 0;
         Datos.ALMACEN_NOMBRE := '<FALTA>';
         Datos.CAJA           := 0;
         Datos.CAJA_NOMBRE    := '<FALTA>';
         Datos.CAJAS          := 0;
      end;
end;

procedure TdmCuentasPorPagar.Usuario(valor : integer);
begin
   qyUsuario.Close;
   qyUsuario.ParamByName('P_USUARIO').AsInteger := valor;
   qyUsuario.Open;
end;

procedure TdmCuentasPorPagar.DatosCaja(valor : integer);
begin
   qyVer_Datos_Cajero.Close;
   qyVer_Datos_Cajero.ParamByName('P_USUARIO').AsInteger := valor;
   qyVer_Datos_Cajero.Open;
end;

function TdmCuentasPorPagar.GetFECHA : TDatetime;
begin
   dsFechaServidor.DataSet.Close;
   dsFechaServidor.DataSet.Open;
   Result := dsFechaServidor.DataSet.FieldByName('R_FECHA').AsDatetime;
end;

end.
