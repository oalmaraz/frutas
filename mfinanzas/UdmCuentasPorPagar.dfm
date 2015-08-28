object dmCuentasPorPagar: TdmCuentasPorPagar
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 238
  Top = 193
  Height = 599
  Width = 990
  object qyEstadoDeCuentaEnc: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    SQL.Strings = (
      'SELECT *'
      'FROM ESTADOS_DE_CUENTA_ENC_CXP(:P_PROVEEDOR)')
    Left = 48
    Top = 8
    ParamData = <
      item
        DataType = ftString
        Name = 'P_PROVEEDOR'
        ParamType = ptUnknown
        Value = '0'
      end>
    object qyEstadoDeCuentaEncR_SALDO_PROVEEDOR: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_SALDO_PROVEEDOR'
      ReadOnly = True
    end
    object qyEstadoDeCuentaEncR_TOTAL_VENCIDO: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_TOTAL_VENCIDO'
      ReadOnly = True
    end
    object qyEstadoDeCuentaEncR_FECHA_ULT_COMPRA: TDateTimeField
      FieldKind = fkInternalCalc
      FieldName = 'R_FECHA_ULT_COMPRA'
      ReadOnly = True
    end
    object qyEstadoDeCuentaEncR_FECHA_ULT_PAGO: TDateTimeField
      FieldKind = fkInternalCalc
      FieldName = 'R_FECHA_ULT_PAGO'
      ReadOnly = True
    end
    object qyEstadoDeCuentaEncR_FOTO: TBlobField
      FieldKind = fkInternalCalc
      FieldName = 'R_FOTO'
      ReadOnly = True
      BlobType = ftBlob
      Size = 8
    end
    object qyEstadoDeCuentaEncR_CLAVE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_CLAVE'
      ReadOnly = True
      Size = 50
    end
    object qyEstadoDeCuentaEncR_NOMBRE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_NOMBRE'
      ReadOnly = True
      Size = 100
    end
    object qyEstadoDeCuentaEncR_TELEFONO: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_TELEFONO'
      ReadOnly = True
    end
  end
  object dsEstadoDeCuentaEnc: TDataSource
    DataSet = qyEstadoDeCuentaEnc
    Left = 48
    Top = 64
  end
  object qyIBXFechaServidor: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    SQL.Strings = (
      'SELECT *'
      'FROM FECHA_SERVIDOR')
    Left = 48
    Top = 125
    object qyIBXFechaServidorR_FECHA: TDateTimeField
      FieldKind = fkInternalCalc
      FieldName = 'R_FECHA'
      ReadOnly = True
    end
  end
  object dsFechaServidor: TDataSource
    DataSet = qyIBXFechaServidor
    Left = 48
    Top = 184
  end
  object qyVer_Datos_Cajero: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    SQL.Strings = (
      'SELECT *'
      'FROM VER_DATOS_CAJERO(:P_USUARIO, "Pagos")')
    Left = 184
    Top = 8
    ParamData = <
      item
        DataType = ftString
        Name = 'P_USUARIO'
        ParamType = ptUnknown
        Value = '1'
      end>
    object qyVer_Datos_CajeroR_ID: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_ID'
      ReadOnly = True
    end
    object qyVer_Datos_CajeroR_NOMBRE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_NOMBRE'
      ReadOnly = True
      Size = 100
    end
    object qyVer_Datos_CajeroR_ALMACEN: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_ALMACEN'
      ReadOnly = True
    end
    object qyVer_Datos_CajeroR_ALMACEN_CLAVE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_ALMACEN_CLAVE'
      ReadOnly = True
    end
    object qyVer_Datos_CajeroR_ALMACEN_OBSERVACIONES: TBlobField
      FieldKind = fkInternalCalc
      FieldName = 'R_ALMACEN_OBSERVACIONES'
      ReadOnly = True
      BlobType = ftBlob
      Size = 8
    end
    object qyVer_Datos_CajeroR_USUARIO: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_USUARIO'
      ReadOnly = True
    end
    object qyVer_Datos_CajeroR_NOMBRE_USUARIO: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_NOMBRE_USUARIO'
      ReadOnly = True
      Size = 100
    end
    object qyVer_Datos_CajeroR_BAJA: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_BAJA'
      ReadOnly = True
      Size = 2
    end
    object qyVer_Datos_CajeroR_ESTATUS: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_ESTATUS'
      ReadOnly = True
    end
    object qyVer_Datos_CajeroR_REGISTROS: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_REGISTROS'
      ReadOnly = True
    end
    object qyVer_Datos_CajeroR_MODULO_FUNCION: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_MODULO_FUNCION'
      ReadOnly = True
    end
    object qyVer_Datos_CajeroR_EMPRESA_NOMBRE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_EMPRESA_NOMBRE'
      ReadOnly = True
      Size = 100
    end
    object qyVer_Datos_CajeroR_FECHA_SERVIDOR: TDateTimeField
      FieldKind = fkInternalCalc
      FieldName = 'R_FECHA_SERVIDOR'
      ReadOnly = True
    end
    object qyVer_Datos_CajeroR_NIVEL: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_NIVEL'
      ReadOnly = True
    end
    object qyVer_Datos_CajeroR_ALMACEN_NOMBRE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_ALMACEN_NOMBRE'
      ReadOnly = True
      Size = 100
    end
  end
  object dsVer_Datos_Cajero: TDataSource
    DataSet = qyVer_Datos_Cajero
    Left = 184
    Top = 64
  end
  object qyPendienteDePago: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    SQL.Strings = (
      'SELECT *'
      'FROM ESTADOS_DE_CUENTA_DET_PP(:P_PROVEEDOR)')
    Left = 48
    Top = 240
    ParamData = <
      item
        DataType = ftString
        Name = 'P_PROVEEDOR'
        ParamType = ptUnknown
        Value = '0'
      end>
    object qyPendienteDePagoR_ID: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_ID'
      ReadOnly = True
    end
    object qyPendienteDePagoR_REFERENCIA: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_REFERENCIA'
      ReadOnly = True
    end
    object qyPendienteDePagoR_NUMERO_DE_DOCUMENTOS: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_NUMERO_DE_DOCUMENTOS'
      ReadOnly = True
    end
    object qyPendienteDePagoR_DOCUMENTO: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_DOCUMENTO'
      ReadOnly = True
    end
    object qyPendienteDePagoR_PROVEEDOR: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_PROVEEDOR'
      ReadOnly = True
    end
    object qyPendienteDePagoR_PROVEEDOR_CLAVE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_PROVEEDOR_CLAVE'
      ReadOnly = True
      Size = 50
    end
    object qyPendienteDePagoR_PROVEEDOR_NOMBRE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_PROVEEDOR_NOMBRE'
      ReadOnly = True
      Size = 100
    end
    object qyPendienteDePagoR_FECHA: TDateTimeField
      FieldKind = fkInternalCalc
      FieldName = 'R_FECHA'
      ReadOnly = True
    end
    object qyPendienteDePagoR_FECHA_VENCIMIENTO: TDateTimeField
      FieldKind = fkInternalCalc
      FieldName = 'R_FECHA_VENCIMIENTO'
      ReadOnly = True
    end
    object qyPendienteDePagoR_ALMACEN: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_ALMACEN'
      ReadOnly = True
    end
    object qyPendienteDePagoR_ALMACEN_NOMBRE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_ALMACEN_NOMBRE'
      ReadOnly = True
      Size = 100
    end
    object qyPendienteDePagoR_IMPORTE_INICIAL: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_IMPORTE_INICIAL'
      ReadOnly = True
      DisplayFormat = '$ ###,###,##0.00'
    end
    object qyPendienteDePagoR_SALDO_ACTUAL: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_SALDO_ACTUAL'
      ReadOnly = True
      DisplayFormat = '$ ###,###,##0.00'
    end
    object qyPendienteDePagoR_ESTATUS: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_ESTATUS'
      ReadOnly = True
    end
    object qyPendienteDePagoR_SEL: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_SEL'
      ReadOnly = True
      Size = 2
    end
    object qyPendienteDePagoR_VENCIMIENTOS: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_VENCIMIENTOS'
      ReadOnly = True
    end
    object qyPendienteDePagoR_PAGO_MODIFICADO: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_PAGO_MODIFICADO'
      ReadOnly = True
      DisplayFormat = '$ ###,###,##0.00'
    end
    object qyPendienteDePagoR_COLOR: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_COLOR'
      ReadOnly = True
      Size = 6
    end
    object qyPendienteDePagoR_NCARGO_SINAFECTAR: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_NCARGO_SINAFECTAR'
      ReadOnly = True
      DisplayFormat = '$ ###,###,##0.00'
    end
    object qyPendienteDePagoR_NCARGO_AFECTADAS: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_NCARGO_AFECTADAS'
      ReadOnly = True
      DisplayFormat = '$ ###,###,##0.00'
    end
    object qyPendienteDePagoR_NCARGO_SINAFECTAR_COUNT: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_NCARGO_SINAFECTAR_COUNT'
      ReadOnly = True
    end
    object qyPendienteDePagoR_NCARGO_AFECTADAS_COUNT: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_NCARGO_AFECTADAS_COUNT'
      ReadOnly = True
    end
    object qyPendienteDePagoR_NCARGO_SINAFECTAR_ACUM: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_NCARGO_SINAFECTAR_ACUM'
      ReadOnly = True
      DisplayFormat = '$ ###,###,##0.00'
    end
    object qyPendienteDePagoR_NCARGO_AFECTADAS_ACUM: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_NCARGO_AFECTADAS_ACUM'
      ReadOnly = True
      DisplayFormat = '$ ###,###,##0.00'
    end
    object qyPendienteDePagoR_PAGO_MODIFICADO_ACUM: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_PAGO_MODIFICADO_ACUM'
      ReadOnly = True
      DisplayFormat = '$ ###,###,##0.00'
    end
    object qyPendienteDePagoR_MONEDA: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_MONEDA'
      ReadOnly = True
    end
    object qyPendienteDePagoR_MONEDA_CLAVE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_MONEDA_CLAVE'
      ReadOnly = True
      Size = 10
    end
    object qyPendienteDePagoR_MONEDA_DESCRIPCION: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_MONEDA_DESCRIPCION'
      ReadOnly = True
      Size = 50
    end
  end
  object qyPagado: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    SQL.Strings = (
      'SELECT *'
      'FROM ESTADOS_DE_CUENTA_DET_P(:P_PROVEEDOR)')
    Left = 144
    Top = 240
    ParamData = <
      item
        DataType = ftString
        Name = 'P_PROVEEDOR'
        ParamType = ptUnknown
        Value = '0'
      end>
    object qyPagadoR_ID: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_ID'
      ReadOnly = True
    end
    object qyPagadoR_REFERENCIA: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_REFERENCIA'
      ReadOnly = True
    end
    object qyPagadoR_NUMERO_DE_DOCUMENTOS: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_NUMERO_DE_DOCUMENTOS'
      ReadOnly = True
    end
    object qyPagadoR_DOCUMENTO: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_DOCUMENTO'
      ReadOnly = True
    end
    object qyPagadoR_PROVEEDOR: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_PROVEEDOR'
      ReadOnly = True
    end
    object qyPagadoR_PROVEEDOR_CLAVE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_PROVEEDOR_CLAVE'
      ReadOnly = True
      Size = 50
    end
    object qyPagadoR_PROVEEDOR_NOMBRE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_PROVEEDOR_NOMBRE'
      ReadOnly = True
      Size = 100
    end
    object qyPagadoR_FECHA: TDateTimeField
      FieldKind = fkInternalCalc
      FieldName = 'R_FECHA'
      ReadOnly = True
    end
    object qyPagadoR_FECHA_VENCIMIENTO: TDateTimeField
      FieldKind = fkInternalCalc
      FieldName = 'R_FECHA_VENCIMIENTO'
      ReadOnly = True
    end
    object qyPagadoR_ALMACEN: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_ALMACEN'
      ReadOnly = True
    end
    object qyPagadoR_ALMACEN_NOMBRE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_ALMACEN_NOMBRE'
      ReadOnly = True
      Size = 100
    end
    object qyPagadoR_IMPORTE_INICIAL: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_IMPORTE_INICIAL'
      ReadOnly = True
      DisplayFormat = '$ ###,###,##0.00'
    end
    object qyPagadoR_SALDO_ACTUAL: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_SALDO_ACTUAL'
      ReadOnly = True
      DisplayFormat = '$ ###,###,##0.00'
    end
    object qyPagadoR_ESTATUS: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_ESTATUS'
      ReadOnly = True
    end
    object qyPagadoR_SEL: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_SEL'
      ReadOnly = True
      Size = 2
    end
    object qyPagadoR_VENCIMIENTOS: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_VENCIMIENTOS'
      ReadOnly = True
    end
    object qyPagadoR_PAGO_MODIFICADO: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_PAGO_MODIFICADO'
      ReadOnly = True
      DisplayFormat = '$ ###,###,##0.00'
    end
    object qyPagadoR_COLOR: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_COLOR'
      ReadOnly = True
      Size = 6
    end
    object qyPagadoR_NCARGO_SINAFECTAR: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_NCARGO_SINAFECTAR'
      ReadOnly = True
      DisplayFormat = '$ ###,###,##0.00'
    end
    object qyPagadoR_NCARGO_AFECTADAS: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_NCARGO_AFECTADAS'
      ReadOnly = True
      DisplayFormat = '$ ###,###,##0.00'
    end
    object qyPagadoR_NCARGO_SINAFECTAR_COUNT: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_NCARGO_SINAFECTAR_COUNT'
      ReadOnly = True
    end
    object qyPagadoR_NCARGO_AFECTADAS_COUNT: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_NCARGO_AFECTADAS_COUNT'
      ReadOnly = True
    end
    object qyPagadoR_NCARGO_SINAFECTAR_ACUM: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_NCARGO_SINAFECTAR_ACUM'
      ReadOnly = True
      DisplayFormat = '$ ###,###,##0.00'
    end
    object qyPagadoR_NCARGO_AFECTADAS_ACUM: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_NCARGO_AFECTADAS_ACUM'
      ReadOnly = True
      DisplayFormat = '$ ###,###,##0.00'
    end
    object qyPagadoR_PAGO_MODIFICADO_ACUM: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_PAGO_MODIFICADO_ACUM'
      ReadOnly = True
      DisplayFormat = '$ ###,###,##0.00'
    end
    object qyPagadoR_MONEDA: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_MONEDA'
      ReadOnly = True
    end
    object qyPagadoR_MONEDA_CLAVE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_MONEDA_CLAVE'
      ReadOnly = True
      Size = 10
    end
    object qyPagadoR_MONEDA_DESCRIPCION: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_MONEDA_DESCRIPCION'
      ReadOnly = True
      Size = 50
    end
  end
  object qyTodos: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    SQL.Strings = (
      'SELECT *'
      'FROM ESTADOS_DE_CUENTA_DET_P_DIF_CANCELADO(:P_PROVEEDOR)')
    Left = 232
    Top = 240
    ParamData = <
      item
        DataType = ftString
        Name = 'P_PROVEEDOR'
        ParamType = ptUnknown
        Value = '0'
      end>
    object qyTodosR_ID: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_ID'
      ReadOnly = True
    end
    object qyTodosR_REFERENCIA: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_REFERENCIA'
      ReadOnly = True
    end
    object qyTodosR_NUMERO_DE_DOCUMENTOS: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_NUMERO_DE_DOCUMENTOS'
      ReadOnly = True
    end
    object qyTodosR_DOCUMENTO: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_DOCUMENTO'
      ReadOnly = True
    end
    object qyTodosR_PROVEEDOR: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_PROVEEDOR'
      ReadOnly = True
    end
    object qyTodosR_PROVEEDOR_CLAVE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_PROVEEDOR_CLAVE'
      ReadOnly = True
      Size = 50
    end
    object qyTodosR_PROVEEDOR_NOMBRE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_PROVEEDOR_NOMBRE'
      ReadOnly = True
      Size = 100
    end
    object qyTodosR_FECHA: TDateTimeField
      FieldKind = fkInternalCalc
      FieldName = 'R_FECHA'
      ReadOnly = True
    end
    object qyTodosR_FECHA_VENCIMIENTO: TDateTimeField
      FieldKind = fkInternalCalc
      FieldName = 'R_FECHA_VENCIMIENTO'
      ReadOnly = True
    end
    object qyTodosR_ALMACEN: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_ALMACEN'
      ReadOnly = True
    end
    object qyTodosR_ALMACEN_NOMBRE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_ALMACEN_NOMBRE'
      ReadOnly = True
      Size = 100
    end
    object qyTodosR_IMPORTE_INICIAL: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_IMPORTE_INICIAL'
      ReadOnly = True
      DisplayFormat = '$ ###,###,##0.00'
    end
    object qyTodosR_SALDO_ACTUAL: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_SALDO_ACTUAL'
      ReadOnly = True
      DisplayFormat = '$ ###,###,##0.00'
    end
    object qyTodosR_ESTATUS: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_ESTATUS'
      ReadOnly = True
    end
    object qyTodosR_SEL: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_SEL'
      ReadOnly = True
      Size = 2
    end
    object qyTodosR_VENCIMIENTOS: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_VENCIMIENTOS'
      ReadOnly = True
    end
    object qyTodosR_PAGO_MODIFICADO: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_PAGO_MODIFICADO'
      ReadOnly = True
      DisplayFormat = '$ ###,###,##0.00'
    end
    object qyTodosR_COLOR: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_COLOR'
      ReadOnly = True
      Size = 6
    end
    object qyTodosR_NCARGO_SINAFECTAR: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_NCARGO_SINAFECTAR'
      ReadOnly = True
      DisplayFormat = '$ ###,###,##0.00'
    end
    object qyTodosR_NCARGO_AFECTADAS: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_NCARGO_AFECTADAS'
      ReadOnly = True
      DisplayFormat = '$ ###,###,##0.00'
    end
    object qyTodosR_NCARGO_SINAFECTAR_COUNT: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_NCARGO_SINAFECTAR_COUNT'
      ReadOnly = True
    end
    object qyTodosR_NCARGO_AFECTADAS_COUNT: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_NCARGO_AFECTADAS_COUNT'
      ReadOnly = True
    end
    object qyTodosR_NCARGO_SINAFECTAR_ACUM: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_NCARGO_SINAFECTAR_ACUM'
      ReadOnly = True
      DisplayFormat = '$ ###,###,##0.00'
    end
    object qyTodosR_NCARGO_AFECTADAS_ACUM: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_NCARGO_AFECTADAS_ACUM'
      ReadOnly = True
      DisplayFormat = '$ ###,###,##0.00'
    end
    object qyTodosR_PAGO_MODIFICADO_ACUM: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_PAGO_MODIFICADO_ACUM'
      ReadOnly = True
      DisplayFormat = '$ ###,###,##0.00'
    end
    object qyTodosR_MONEDA: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_MONEDA'
      ReadOnly = True
    end
    object qyTodosR_MONEDA_CLAVE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_MONEDA_CLAVE'
      ReadOnly = True
      Size = 10
    end
    object qyTodosR_MONEDA_DESCRIPCION: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_MONEDA_DESCRIPCION'
      ReadOnly = True
      Size = 50
    end
  end
  object dsDetalle: TDataSource
    Left = 144
    Top = 296
  end
  object qyUsuario: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    SQL.Strings = (
      'SELECT S.NOMBRE'
      'FROM SUJETOS_USUARIOS SU, SUJETOS S'
      'WHERE (SU.ID = :P_USUARIO) AND (SU.SUJETO = S.ID)')
    Left = 296
    Top = 8
    ParamData = <
      item
        DataType = ftString
        Name = 'P_USUARIO'
        ParamType = ptUnknown
        Value = '0'
      end>
    object qyUsuarioNOMBRE: TIBStringField
      FieldName = 'NOMBRE'
      Size = 100
    end
  end
  object dsUsuario: TDataSource
    DataSet = qyUsuario
    Left = 296
    Top = 64
  end
  object TIBXPreferencias: TIBTable
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NOMBRE'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'TIPO'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'VALOR'
        DataType = ftString
        Size = 20
      end>
    Filter = 'ID = -3'
    Filtered = True
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY110'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end>
    StoreDefs = True
    TableName = 'PREFERENCIAS'
    Left = 320
    Top = 240
    object TIBXPreferenciasID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object TIBXPreferenciasNOMBRE: TIBStringField
      FieldName = 'NOMBRE'
      Size = 100
    end
    object TIBXPreferenciasTIPO: TIBStringField
      FieldName = 'TIPO'
      Size = 14
    end
    object TIBXPreferenciasVALOR: TIBStringField
      FieldName = 'VALOR'
    end
  end
  object dsPreferencias: TDataSource
    DataSet = TIBXPreferencias
    Left = 320
    Top = 296
  end
  object spSELECCIONAR_PAGO_BIS: TIBStoredProc
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    StoredProcName = 'SELECCIONAR_PAGO_BIS'
    Left = 480
    Top = 8
    ParamData = <
      item
        DataType = ftInteger
        Name = 'P_ID'
        ParamType = ptInput
        Value = '0'
      end>
  end
  object spSELECCION_AUTOMATICA_BIS: TIBStoredProc
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    StoredProcName = 'SELECCION_AUTOMATICA_BIS'
    Left = 480
    Top = 65
    ParamData = <
      item
        DataType = ftFloat
        Name = 'R_RESTO'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'P_PROVEEDOR'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'P_CANTIDAD'
        ParamType = ptInput
        Value = '0'
      end>
  end
  object spSELECCION_VENCIDOS_BIS: TIBStoredProc
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    StoredProcName = 'SELECCION_VENCIDOS_BIS'
    Left = 480
    Top = 123
    ParamData = <
      item
        DataType = ftFloat
        Name = 'R_TOTAL_VENCIDO'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'P_PROVEEDOR'
        ParamType = ptInput
        Value = '0'
      end>
  end
  object spCREAR_CXP_MANUAL: TIBStoredProc
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    StoredProcName = 'CREAR_CXP_MANUAL'
    Left = 480
    Top = 237
    ParamData = <
      item
        DataType = ftInteger
        Name = 'R_CXP_PAGO'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'P_PROVEEDOR'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'P_USUARIO'
        ParamType = ptInput
      end>
  end
  object spCREAR_CXP_AUTOMATICA: TIBStoredProc
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    StoredProcName = 'CREAR_CXP_AUTOMATICA'
    Left = 480
    Top = 180
    ParamData = <
      item
        DataType = ftInteger
        Name = 'R_CXP_PAGO'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'P_PROVEEDOR'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'P_USUARIO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'P_TOTAL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'P_RESTO'
        ParamType = ptInput
      end>
  end
  object spCREAR_CXP_SELECCIONADO: TIBStoredProc
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    StoredProcName = 'CREAR_CXP_SELECCIONADO'
    Left = 480
    Top = 295
    ParamData = <
      item
        DataType = ftFloat
        Name = 'R_CXP_PAGO'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'P_PROVEEDOR'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'P_USUARIO'
        ParamType = ptInput
      end>
  end
  object spQUITAR_SELECCION_BIS: TIBStoredProc
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    StoredProcName = 'QUITAR_SELECCION_BIS'
    Left = 480
    Top = 352
    ParamData = <
      item
        DataType = ftInteger
        Name = 'P_PROVEEDOR'
        ParamType = ptInput
      end>
  end
  object spP_CXP_CANCELAR2: TIBStoredProc
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    StoredProcName = 'P_CXP_CANCELAR2'
    Left = 672
    Top = 123
    ParamData = <
      item
        DataType = ftInteger
        Name = 'P_ID'
        ParamType = ptInput
        Value = '0'
      end>
  end
  object spMODIFICAR_CXP_PAGO: TIBStoredProc
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    StoredProcName = 'MODIFICAR_CXP_PAGO'
    Left = 672
    Top = 8
    ParamData = <
      item
        DataType = ftInteger
        Name = 'P_ID'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'P_IMPORTE'
        ParamType = ptInput
        Value = '0'
      end>
  end
  object spCXP_CAMPO_PAGO_MODIFICADO: TIBStoredProc
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    StoredProcName = 'CXP_CAMPO_PAGO_MODIFICADO'
    Left = 672
    Top = 65
    ParamData = <
      item
        DataType = ftInteger
        Name = 'P_PROVEEDOR'
        ParamType = ptInput
        Value = '0'
      end>
  end
  object qyPagar: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    SQL.Strings = (
      'SELECT SUM(SALDO_ACTUAL) TOTAL'
      'FROM CUENTAS_X_PAGAR'
      
        'WHERE (ESTATUS = "Pendiente de Pago") AND (SEL = "Si")  AND (PRO' +
        'VEEDOR = :P_PROVEEDOR)')
    Left = 296
    Top = 125
    ParamData = <
      item
        DataType = ftString
        Name = 'P_PROVEEDOR'
        ParamType = ptUnknown
        Value = '0'
      end>
  end
  object qyPagoSeleccionado: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    SQL.Strings = (
      'SELECT SUM(PAGO_MODIFICADO) TOTAL'
      'FROM CUENTAS_X_PAGAR'
      
        'WHERE (ESTATUS = "Pendiente de Pago") AND (SEL = "Si")  AND (PRO' +
        'VEEDOR = :P_PROVEEDOR)')
    Left = 296
    Top = 184
    ParamData = <
      item
        DataType = ftString
        Name = 'P_PROVEEDOR'
        ParamType = ptUnknown
        Value = '0'
      end>
  end
end
