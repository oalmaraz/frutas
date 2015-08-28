object dmNCreditoAlta: TdmNCreditoAlta
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 573
  Width = 906
  object TIBXNotasDeCredito: TIBTable
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    AfterOpen = TIBXNotasDeCreditoAfterOpen
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'CLAVE'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'FECHA_ALTA'
        DataType = ftDateTime
      end
      item
        Name = 'FECHA_CANCELACION'
        DataType = ftDateTime
      end
      item
        Name = 'CLIENTE'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'EXTENSION'
        DataType = ftInteger
      end
      item
        Name = 'CUENTA_POR_COBRAR'
        DataType = ftInteger
      end
      item
        Name = 'OBSERVACIONES'
        DataType = ftBlob
      end
      item
        Name = 'ALMACEN'
        DataType = ftInteger
      end
      item
        Name = 'IVA_PORC'
        DataType = ftFloat
      end
      item
        Name = 'IEPS_PORC'
        DataType = ftFloat
      end
      item
        Name = 'IMPUESTO1_PORC'
        DataType = ftFloat
      end
      item
        Name = 'IMPUESTO2_PORC'
        DataType = ftFloat
      end
      item
        Name = 'SUBTOTAL'
        DataType = ftFloat
      end
      item
        Name = 'IVA'
        DataType = ftFloat
      end
      item
        Name = 'IEPS'
        DataType = ftFloat
      end
      item
        Name = 'IMPUESTO1'
        DataType = ftFloat
      end
      item
        Name = 'IMPUESTO2'
        DataType = ftFloat
      end
      item
        Name = 'TOTAL'
        DataType = ftFloat
      end
      item
        Name = 'MONEDA'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'USUARIO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ESTATUS'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'SERIE_NC'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'CONSECUTIVO'
        DataType = ftInteger
      end
      item
        Name = 'NC'
        DataType = ftInteger
      end
      item
        Name = 'ID_REFERENCIA'
        DataType = ftInteger
      end
      item
        Name = 'TABLA_REFERENCIA'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'DESCUENTO_GLOBAL_PORC'
        DataType = ftFloat
      end
      item
        Name = 'DESCUENTO_CANTIDAD_GLOBAL'
        DataType = ftFloat
      end
      item
        Name = 'DESCUENTO_CANTIDAD_PARCIAL'
        DataType = ftFloat
      end
      item
        Name = 'GRANTOTAL'
        DataType = ftFloat
      end>
    Filter = 'ID = -1'
    Filtered = True
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY22'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'RDB$FOREIGN105'
        Fields = 'CLIENTE'
      end
      item
        Name = 'RDB$FOREIGN107'
        Fields = 'EXTENSION'
      end
      item
        Name = 'RDB$FOREIGN109'
        Fields = 'CUENTA_POR_COBRAR'
      end
      item
        Name = 'RDB$FOREIGN110'
        Fields = 'ALMACEN'
      end
      item
        Name = 'RDB$FOREIGN116'
        Fields = 'MONEDA'
      end
      item
        Name = 'RDB$FOREIGN121'
        Fields = 'USUARIO'
      end
      item
        Name = 'RDB$FOREIGN164'
        Fields = 'NC'
      end>
    StoreDefs = True
    TableName = 'NOTAS_DE_CREDITO'
    UniDirectional = False
    Left = 72
    Top = 16
    object TIBXNotasDeCreditoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object TIBXNotasDeCreditoCLAVE: TIBStringField
      FieldName = 'CLAVE'
    end
    object TIBXNotasDeCreditoFECHA_ALTA: TDateTimeField
      FieldName = 'FECHA_ALTA'
    end
    object TIBXNotasDeCreditoFECHA_CANCELACION: TDateTimeField
      FieldName = 'FECHA_CANCELACION'
    end
    object TIBXNotasDeCreditoCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      Required = True
    end
    object TIBXNotasDeCreditoEXTENSION: TIntegerField
      FieldName = 'EXTENSION'
    end
    object TIBXNotasDeCreditoCUENTA_POR_COBRAR: TIntegerField
      FieldName = 'CUENTA_POR_COBRAR'
    end
    object TIBXNotasDeCreditoOBSERVACIONES: TBlobField
      FieldName = 'OBSERVACIONES'
    end
    object TIBXNotasDeCreditoALMACEN: TIntegerField
      FieldName = 'ALMACEN'
    end
    object TIBXNotasDeCreditoIVA_PORC: TFloatField
      FieldName = 'IVA_PORC'
    end
    object TIBXNotasDeCreditoIEPS_PORC: TFloatField
      FieldName = 'IEPS_PORC'
    end
    object TIBXNotasDeCreditoIMPUESTO1_PORC: TFloatField
      FieldName = 'IMPUESTO1_PORC'
    end
    object TIBXNotasDeCreditoIMPUESTO2_PORC: TFloatField
      FieldName = 'IMPUESTO2_PORC'
    end
    object TIBXNotasDeCreditoSUBTOTAL: TFloatField
      FieldName = 'SUBTOTAL'
    end
    object TIBXNotasDeCreditoIVA: TFloatField
      FieldName = 'IVA'
    end
    object TIBXNotasDeCreditoIEPS: TFloatField
      FieldName = 'IEPS'
    end
    object TIBXNotasDeCreditoIMPUESTO1: TFloatField
      FieldName = 'IMPUESTO1'
    end
    object TIBXNotasDeCreditoIMPUESTO2: TFloatField
      FieldName = 'IMPUESTO2'
    end
    object TIBXNotasDeCreditoTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object TIBXNotasDeCreditoMONEDA: TIntegerField
      FieldName = 'MONEDA'
      Required = True
    end
    object TIBXNotasDeCreditoUSUARIO: TIntegerField
      FieldName = 'USUARIO'
      Required = True
    end
    object TIBXNotasDeCreditoESTATUS: TIBStringField
      FieldName = 'ESTATUS'
    end
    object TIBXNotasDeCreditoSERIE_NC: TIBStringField
      FieldName = 'SERIE_NC'
      Size = 10
    end
    object TIBXNotasDeCreditoCONSECUTIVO: TIntegerField
      FieldName = 'CONSECUTIVO'
    end
    object TIBXNotasDeCreditoNC: TIntegerField
      FieldName = 'NC'
    end
    object TIBXNotasDeCreditoID_REFERENCIA: TIntegerField
      FieldName = 'ID_REFERENCIA'
    end
    object TIBXNotasDeCreditoTABLA_REFERENCIA: TIBStringField
      FieldName = 'TABLA_REFERENCIA'
      Size = 50
    end
    object TIBXNotasDeCreditoDESCUENTO_GLOBAL_PORC: TFloatField
      FieldName = 'DESCUENTO_GLOBAL_PORC'
    end
    object TIBXNotasDeCreditoDESCUENTO_CANTIDAD_GLOBAL: TFloatField
      FieldName = 'DESCUENTO_CANTIDAD_GLOBAL'
    end
    object TIBXNotasDeCreditoDESCUENTO_CANTIDAD_PARCIAL: TFloatField
      FieldName = 'DESCUENTO_CANTIDAD_PARCIAL'
    end
    object TIBXNotasDeCreditoGRANTOTAL: TFloatField
      FieldName = 'GRANTOTAL'
    end
  end
  object dsNotasDeCredito: TDataSource
    DataSet = TIBXNotasDeCredito
    Left = 72
    Top = 112
  end
  object qyIBXAlmacenes: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT *'
      'FROM ALMACENES'
      'ORDER BY NOMBRE')
    Left = 176
    Top = 16
    object qyIBXAlmacenesID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qyIBXAlmacenesCLAVE: TIBStringField
      FieldName = 'CLAVE'
    end
    object qyIBXAlmacenesNOMBRE: TIBStringField
      FieldName = 'NOMBRE'
      Size = 100
    end
    object qyIBXAlmacenesCOMPRA: TIBStringField
      FieldName = 'COMPRA'
      Size = 2
    end
    object qyIBXAlmacenesVENDE: TIBStringField
      FieldName = 'VENDE'
      Size = 2
    end
    object qyIBXAlmacenesTRANSFORMA: TIBStringField
      FieldName = 'TRANSFORMA'
      Size = 2
    end
    object qyIBXAlmacenesFECHA_ALTA: TDateTimeField
      FieldName = 'FECHA_ALTA'
    end
    object qyIBXAlmacenesRESPONSABLE: TIntegerField
      FieldName = 'RESPONSABLE'
      Required = True
    end
    object qyIBXAlmacenesOBSERVACIONES: TBlobField
      FieldName = 'OBSERVACIONES'
      Size = 8
    end
    object qyIBXAlmacenesSERIE_FACTURA: TIBStringField
      FieldName = 'SERIE_FACTURA'
      Size = 10
    end
    object qyIBXAlmacenesCONSECUTIVO: TIntegerField
      FieldName = 'CONSECUTIVO'
    end
    object qyIBXAlmacenesFECHA_ULT_INV: TDateTimeField
      FieldName = 'FECHA_ULT_INV'
    end
    object qyIBXAlmacenesESTATUS: TIBStringField
      FieldName = 'ESTATUS'
    end
    object qyIBXAlmacenesSERIE_NC: TIBStringField
      FieldName = 'SERIE_NC'
      Size = 10
    end
    object qyIBXAlmacenesSERIE_NVENTA: TIBStringField
      FieldName = 'SERIE_NVENTA'
      Size = 10
    end
    object qyIBXAlmacenesSERIE_NCARGO: TIBStringField
      FieldName = 'SERIE_NCARGO'
      Size = 10
    end
  end
  object dsAlmacenes: TDataSource
    DataSet = qyIBXAlmacenes
    Left = 176
    Top = 112
  end
  object qyIBXEstatusProcesos: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    AfterOpen = qyIBXEstatusProcesosAfterOpen
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT *'
      'FROM ESTATUS_PROCESOS'
      'WHERE (FORMA = :P_FORMA) AND (ESTATUS = :P_ESTATUS)')
    Left = 283
    Top = 16
    ParamData = <
      item
        DataType = ftString
        Name = 'P_FORMA'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'P_ESTATUS'
        ParamType = ptUnknown
        Value = 'Sin Afectar'
      end>
    object qyIBXEstatusProcesosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qyIBXEstatusProcesosNOMBRE: TIBStringField
      FieldName = 'NOMBRE'
      Size = 50
    end
    object qyIBXEstatusProcesosFORMA: TIntegerField
      FieldName = 'FORMA'
    end
    object qyIBXEstatusProcesosESTATUS: TIBStringField
      FieldName = 'ESTATUS'
    end
  end
  object dsEstatusProcesos: TDataSource
    DataSet = qyIBXEstatusProcesos
    Left = 283
    Top = 112
  end
  object TIBXEstatusProcesosDetalle: TIBTable
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'PROCESO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ESTATUS'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'AUTORIZACION'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'STOREPROC'
        DataType = ftString
        Size = 50
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY117'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'RDB$FOREIGN118'
        Fields = 'PROCESO'
      end>
    IndexFieldNames = 'PROCESO'
    MasterFields = 'ID'
    MasterSource = dsEstatusProcesos
    StoreDefs = True
    TableName = 'ESTATUS_PROCESOS_DET'
    UniDirectional = False
    Left = 420
    Top = 16
    object TIBXEstatusProcesosDetalleID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object TIBXEstatusProcesosDetallePROCESO: TIntegerField
      FieldName = 'PROCESO'
      Required = True
    end
    object TIBXEstatusProcesosDetalleESTATUS: TIBStringField
      FieldName = 'ESTATUS'
    end
    object TIBXEstatusProcesosDetalleAUTORIZACION: TIBStringField
      FieldName = 'AUTORIZACION'
      Size = 2
    end
    object TIBXEstatusProcesosDetalleSTOREPROC: TIBStringField
      FieldName = 'STOREPROC'
      Size = 50
    end
  end
  object dsEstatusProcesosDetalle: TDataSource
    DataSet = TIBXEstatusProcesosDetalle
    Left = 420
    Top = 112
  end
  object qyIBXFechaServidor: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT *'
      'FROM FECHA_SERVIDOR')
    Left = 552
    Top = 16
    object qyIBXFechaServidorR_FECHA: TDateTimeField
      FieldKind = fkInternalCalc
      FieldName = 'R_FECHA'
      ReadOnly = True
    end
  end
  object dsFechaServidor: TDataSource
    DataSet = qyIBXFechaServidor
    Left = 552
    Top = 112
  end
  object spIBXEstatus: TIBStoredProc
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    Left = 420
    Top = 272
  end
  object qyIBXMonedas: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT *'
      'FROM MONEDAS'
      'ORDER BY DESCRIPCION')
    Left = 72
    Top = 157
    object qyIBXMonedasID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qyIBXMonedasCLAVE: TIBStringField
      FieldName = 'CLAVE'
      Size = 10
    end
    object qyIBXMonedasDESCRIPCION: TIBStringField
      FieldName = 'DESCRIPCION'
      Size = 50
    end
    object qyIBXMonedasFECHA_ULT_ACT: TDateTimeField
      FieldName = 'FECHA_ULT_ACT'
    end
    object qyIBXMonedasPARIDAD: TFloatField
      FieldName = 'PARIDAD'
    end
  end
  object dsMonedas: TDataSource
    DataSet = qyIBXMonedas
    Left = 72
    Top = 253
  end
  object qyIBXCXCDocumentos: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT *'
      'FROM CXC_DOCUMENTOS(:P_ID, :P_TABLA)'
      '')
    Left = 179
    Top = 157
    ParamData = <
      item
        DataType = ftString
        Name = 'P_ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'P_TABLA'
        ParamType = ptUnknown
      end>
    object qyIBXCXCDocumentosR_ID: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_ID'
      ReadOnly = True
    end
    object qyIBXCXCDocumentosR_FECHA: TDateTimeField
      FieldKind = fkInternalCalc
      FieldName = 'R_FECHA'
      ReadOnly = True
    end
    object qyIBXCXCDocumentosR_REFERENCIA: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_REFERENCIA'
      ReadOnly = True
    end
    object qyIBXCXCDocumentosR_DOCUMENTO: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_DOCUMENTO'
      ReadOnly = True
    end
    object qyIBXCXCDocumentosR_NUMERO_DE_DOCUMENTOS: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_NUMERO_DE_DOCUMENTOS'
      ReadOnly = True
    end
    object qyIBXCXCDocumentosR_TOTAL: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_TOTAL'
      ReadOnly = True
    end
    object qyIBXCXCDocumentosR_INTEGRA: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_INTEGRA'
      ReadOnly = True
      Size = 120
    end
  end
  object dsCXCDocumentos: TDataSource
    DataSet = qyIBXCXCDocumentos
    Left = 179
    Top = 253
  end
  object qyIBXUpdate: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'UPDATE NOTAS_DE_CREDITO'
      'SET '
      '   FECHA_ALTA = :P_FECHA,'
      '   CLAVE = :P_CLAVE,'
      '   CLIENTE = :P_CLIENTE, '
      '   EXTENSION = :P_EXTENSION,'
      '   CUENTA_POR_COBRAR = :P_CXC,'
      '   ALMACEN = :P_ALMACEN, '
      '   MONEDA = :P_MONEDA,'
      '   ESTATUS = :P_ESTATUS, '
      '   USUARIO = :P_USUARIO'
      'WHERE ID = :P_ID;')
    Left = 420
    Top = 157
    ParamData = <
      item
        DataType = ftString
        Name = 'P_FECHA'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'P_CLAVE'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'P_CLIENTE'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'P_EXTENSION'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'P_CXC'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'P_ALMACEN'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'P_MONEDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'P_ESTATUS'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'P_USUARIO'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'P_ID'
        ParamType = ptUnknown
      end>
  end
  object spIBXInsert: TIBStoredProc
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    StoredProcName = 'INSERT_NCREDITO'
    Left = 283
    Top = 157
    ParamData = <
      item
        DataType = ftInteger
        Name = 'R_ID'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'P_CLAVE'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'P_FECHA_ALTA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'P_CLIENTE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'P_EXTENSION'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'P_CXC'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'P_ALMACEN'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'P_MONEDA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'P_USUARIO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'P_ESTATUS'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'P_ID_REFERENCIA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'P_TABLA_REFERENCIA'
        ParamType = ptInput
      end>
  end
  object qyIBXEliminar: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'DELETE FROM NOTAS_DE_CREDITO'
      'WHERE ID = :P_ID')
    Left = 552
    Top = 157
    ParamData = <
      item
        DataType = ftString
        Name = 'P_ID'
        ParamType = ptUnknown
        Value = '0'
      end>
  end
  object spADD_PFACTURA_NC: TIBStoredProc
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    StoredProcName = 'ADD_PFACTURA_NC'
    Left = 536
    Top = 264
    ParamData = <
      item
        DataType = ftInteger
        Name = 'P_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'P_PARTIDA'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'P_CANTIDAD'
        ParamType = ptInput
      end>
  end
  object dsNotasDeCreditoDet: TDataSource
    DataSet = qyIBXPartidas
    Left = 72
    Top = 408
  end
  object qyIBXPartidas: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = dsNotasDeCredito
    ParamCheck = True
    SQL.Strings = (
      'SELECT *'
      'FROM NC_PARTIDAS(:ID)')
    Left = 73
    Top = 304
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptUnknown
      end>
    object qyIBXPartidasR_ID: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_ID'
      ReadOnly = True
    end
    object qyIBXPartidasR_NOTA_DE_CREDITO: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_NOTA_DE_CREDITO'
      ReadOnly = True
    end
    object qyIBXPartidasR_CONCEPTO: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_CONCEPTO'
      ReadOnly = True
    end
    object qyIBXPartidasR_DESCRIPCION: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_DESCRIPCION'
      ReadOnly = True
      Size = 100
    end
    object qyIBXPartidasR_DESC_PORC: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_DESC_PORC'
      ReadOnly = True
    end
    object qyIBXPartidasR_AUTOMATICO: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_AUTOMATICO'
      ReadOnly = True
      Size = 2
    end
    object qyIBXPartidasR_PRECIO: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_PRECIO'
      ReadOnly = True
      DisplayFormat = '$ ###,###,##0.00'
    end
    object qyIBXPartidasR_SUBTOTAL: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_SUBTOTAL'
      ReadOnly = True
    end
    object qyIBXPartidasR_IVA: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_IVA'
      ReadOnly = True
    end
    object qyIBXPartidasR_IEPS: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_IEPS'
      ReadOnly = True
    end
    object qyIBXPartidasR_IMPUESTO1: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_IMPUESTO1'
      ReadOnly = True
    end
    object qyIBXPartidasR_IMPUESTO2: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_IMPUESTO2'
      ReadOnly = True
    end
    object qyIBXPartidasR_TOTAL: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_TOTAL'
      ReadOnly = True
      DisplayFormat = '$ ###,###,##0.00'
    end
    object qyIBXPartidasR_ESTATUS: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_ESTATUS'
      ReadOnly = True
    end
    object qyIBXPartidasR_DESCUENTO_PORC: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_DESCUENTO_PORC'
      ReadOnly = True
    end
    object qyIBXPartidasR_DP: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_DP'
      ReadOnly = True
      DisplayFormat = '$ ###,###,##0.00'
    end
    object qyIBXPartidasR_DG: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_DG'
      ReadOnly = True
      DisplayFormat = '$ ###,###,##0.00'
    end
    object qyIBXPartidasR_GT: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_GT'
      ReadOnly = True
      DisplayFormat = '$ ###,###,##0.00'
    end
    object qyIBXPartidasR_ROWS: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_ROWS'
      ReadOnly = True
    end
    object qyIBXPartidasR_CANTIDAD: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_CANTIDAD'
      ReadOnly = True
    end
    object qyIBXPartidasR_MATERIAL: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_MATERIAL'
      ReadOnly = True
    end
    object qyIBXPartidasR_PRECIO_SIN_IMPUESTOS: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_PRECIO_SIN_IMPUESTOS'
      ReadOnly = True
    end
    object qyIBXPartidasR_UNIDAD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_UNIDAD'
      ReadOnly = True
    end
    object qyIBXPartidasR_MATERIAL_CLAVE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_MATERIAL_CLAVE'
      ReadOnly = True
    end
    object qyIBXPartidasR_MATERIAL_DESCRIPCION: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_MATERIAL_DESCRIPCION'
      ReadOnly = True
      Size = 100
    end
    object qyIBXPartidasR_IVA_PORC: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_IVA_PORC'
      ReadOnly = True
    end
    object qyIBXPartidasR_IEPS_PORC: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_IEPS_PORC'
      ReadOnly = True
    end
    object qyIBXPartidasR_IMPUESTO1_PORC: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_IMPUESTO1_PORC'
      ReadOnly = True
    end
    object qyIBXPartidasR_IMPUESTO2_PORC: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_IMPUESTO2_PORC'
      ReadOnly = True
    end
  end
  object spDEL_PARTIDA_NOTA_DE_CREDITO: TIBStoredProc
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    StoredProcName = 'DEL_PARTIDA_NOTA_DE_CREDITO'
    Left = 421
    Top = 367
    ParamData = <
      item
        DataType = ftInteger
        Name = 'P_ID'
        ParamType = ptInput
      end>
  end
  object spACT_NCREDITO: TIBStoredProc
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    StoredProcName = 'ACT_NCREDITO'
    Left = 424
    Top = 416
    ParamData = <
      item
        DataType = ftInteger
        Name = 'R_CONSECUTIVO'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'P_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'P_NC'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'P_MATERIAL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'P_CANTIDAD'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'P_PRECIO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'P_UNIDAD'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'P_SUBTOTAL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'P_IVA'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'P_IEPS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'P_IMPUESTO1'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'P_IMPUESTO2'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'P_PORC_DP'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'P_PORC_DG'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'P_IVA_PORC'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'P_IEPS_PORC'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'P_IMPUESTO1_PORC'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'P_IMPUESTO2_PORC'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'P_PRECIO_SIN_IMPUESTOS'
        ParamType = ptInput
      end>
  end
end
