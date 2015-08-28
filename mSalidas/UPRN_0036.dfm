object PRN_0036: TPRN_0036
  Left = 511
  Top = 260
  Caption = 'PRN_0036'
  ClientHeight = 278
  ClientWidth = 287
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object qyEncCotizacion: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT *'
      'FROM COTIZACION_ENCABEZADO(:P_ID, :P_LETRAS)')
    Left = 8
    Top = 8
    ParamData = <
      item
        DataType = ftString
        Name = 'P_ID'
        ParamType = ptUnknown
        Value = '17'
      end
      item
        DataType = ftString
        Name = 'P_LETRAS'
        ParamType = ptUnknown
      end>
    object qyEncCotizacionR_EMPRESA_CLAVE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_EMPRESA_CLAVE'
      ReadOnly = True
      Size = 50
    end
    object qyEncCotizacionR_EMPRESA_NOMBRE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_EMPRESA_NOMBRE'
      ReadOnly = True
      Size = 100
    end
    object qyEncCotizacionR_EMPRESA_RAZON_SOCIAL: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_EMPRESA_RAZON_SOCIAL'
      ReadOnly = True
      Size = 100
    end
    object qyEncCotizacionR_EMPRESA_FACTURAR: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_EMPRESA_FACTURAR'
      ReadOnly = True
      Size = 100
    end
    object qyEncCotizacionR_EMPRESA_RFC: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_EMPRESA_RFC'
      ReadOnly = True
    end
    object qyEncCotizacionR_EMPRESA_CURP: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_EMPRESA_CURP'
      ReadOnly = True
    end
    object qyEncCotizacionR_EMPRESA_TELEFONO1: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_EMPRESA_TELEFONO1'
      ReadOnly = True
    end
    object qyEncCotizacionR_EMPRESA_TELEFONO2: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_EMPRESA_TELEFONO2'
      ReadOnly = True
    end
    object qyEncCotizacionR_EMPRESA_CALLE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_EMPRESA_CALLE'
      ReadOnly = True
      Size = 100
    end
    object qyEncCotizacionR_EMPRESA_ENTRE_CALLE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_EMPRESA_ENTRE_CALLE'
      ReadOnly = True
      Size = 50
    end
    object qyEncCotizacionR_EMPRESA_Y_CALLE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_EMPRESA_Y_CALLE'
      ReadOnly = True
      Size = 50
    end
    object qyEncCotizacionR_EMPRESA_NUM_EXT: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_EMPRESA_NUM_EXT'
      ReadOnly = True
      Size = 10
    end
    object qyEncCotizacionR_EMPRESA_NUM_INT: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_EMPRESA_NUM_INT'
      ReadOnly = True
      Size = 10
    end
    object qyEncCotizacionR_EMPRESA_LETRA: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_EMPRESA_LETRA'
      ReadOnly = True
      Size = 10
    end
    object qyEncCotizacionR_EMPRESA_CP: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_EMPRESA_CP'
      ReadOnly = True
      Size = 10
    end
    object qyEncCotizacionR_EMPRESA_COLONIA: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_EMPRESA_COLONIA'
      ReadOnly = True
      Size = 50
    end
    object qyEncCotizacionR_EMPRESA_CIUDAD: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_EMPRESA_CIUDAD'
      ReadOnly = True
      Size = 304
    end
    object qyEncCotizacionR_ID: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_ID'
      ReadOnly = True
    end
    object qyEncCotizacionR_CLAVE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_CLAVE'
      ReadOnly = True
    end
    object qyEncCotizacionR_FECHA_ALTA: TDateTimeField
      FieldKind = fkInternalCalc
      FieldName = 'R_FECHA_ALTA'
      ReadOnly = True
    end
    object qyEncCotizacionR_FECHA_VALIDEZ: TDateTimeField
      FieldKind = fkInternalCalc
      FieldName = 'R_FECHA_VALIDEZ'
      ReadOnly = True
    end
    object qyEncCotizacionR_FECHA_CANCELACION: TDateTimeField
      FieldKind = fkInternalCalc
      FieldName = 'R_FECHA_CANCELACION'
      ReadOnly = True
    end
    object qyEncCotizacionR_CLIENTE: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_CLIENTE'
      ReadOnly = True
    end
    object qyEncCotizacionR_CLIENTE_NOMBRE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_CLIENTE_NOMBRE'
      ReadOnly = True
      Size = 100
    end
    object qyEncCotizacionR_CLIENTE_RAZON_SOCIAL: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_CLIENTE_RAZON_SOCIAL'
      ReadOnly = True
      Size = 100
    end
    object qyEncCotizacionR_CLIENTE_TELEFONO: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_CLIENTE_TELEFONO'
      ReadOnly = True
    end
    object qyEncCotizacionR_CONDICION_COMERCIAL: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_CONDICION_COMERCIAL'
      ReadOnly = True
    end
    object qyEncCotizacionR_CC_CLAVE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_CC_CLAVE'
      ReadOnly = True
    end
    object qyEncCotizacionR_CC_NOMBRE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_CC_NOMBRE'
      ReadOnly = True
      Size = 100
    end
    object qyEncCotizacionR_ANTICIPO: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_ANTICIPO'
      ReadOnly = True
    end
    object qyEncCotizacionR_OBSERVACIONES: TBlobField
      FieldKind = fkInternalCalc
      FieldName = 'R_OBSERVACIONES'
      ReadOnly = True
      Size = 8
    end
    object qyEncCotizacionR_SUBTOTAL: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_SUBTOTAL'
      ReadOnly = True
    end
    object qyEncCotizacionR_IVA: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_IVA'
      ReadOnly = True
    end
    object qyEncCotizacionR_IEPS: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_IEPS'
      ReadOnly = True
    end
    object qyEncCotizacionR_IMPUESTO1: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_IMPUESTO1'
      ReadOnly = True
    end
    object qyEncCotizacionR_IMPUESTO2: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_IMPUESTO2'
      ReadOnly = True
    end
    object qyEncCotizacionR_TOTAL: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_TOTAL'
      ReadOnly = True
    end
    object qyEncCotizacionR_DESCUENTO_GLOBAL_PORC: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_DESCUENTO_GLOBAL_PORC'
      ReadOnly = True
    end
    object qyEncCotizacionR_DESCUENTO_CANTIDAD_GLOBAL: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_DESCUENTO_CANTIDAD_GLOBAL'
      ReadOnly = True
    end
    object qyEncCotizacionR_DESCUENTO_CANTIDAD_PARCIAL: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_DESCUENTO_CANTIDAD_PARCIAL'
      ReadOnly = True
    end
    object qyEncCotizacionR_GRANTOTAL: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_GRANTOTAL'
      ReadOnly = True
    end
    object qyEncCotizacionR_MONEDA: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_MONEDA'
      ReadOnly = True
    end
    object qyEncCotizacionR_MONEDA_CLAVE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_MONEDA_CLAVE'
      ReadOnly = True
      Size = 10
    end
    object qyEncCotizacionR_MONEDA_DESCRIPCION: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_MONEDA_DESCRIPCION'
      ReadOnly = True
      Size = 50
    end
    object qyEncCotizacionR_ESTATUS: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_ESTATUS'
      ReadOnly = True
    end
    object qyEncCotizacionR_CONSECUTIVO: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_CONSECUTIVO'
      ReadOnly = True
    end
    object qyEncCotizacionR_VENDEDOR: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_VENDEDOR'
      ReadOnly = True
    end
    object qyEncCotizacionR_USUARIO_NOMBRE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_USUARIO_NOMBRE'
      ReadOnly = True
      Size = 100
    end
    object qyEncCotizacionR_PAGOS: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_PAGOS'
      ReadOnly = True
    end
    object qyEncCotizacionR_FINANCIAMIENTO: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_FINANCIAMIENTO'
      ReadOnly = True
    end
    object qyEncCotizacionR_FINANCIAMIENTO_PORC: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_FINANCIAMIENTO_PORC'
      ReadOnly = True
    end
    object qyEncCotizacionR_IVA_NETO: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_IVA_NETO'
      ReadOnly = True
    end
    object qyEncCotizacionR_IEPS_NETO: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_IEPS_NETO'
      ReadOnly = True
    end
    object qyEncCotizacionR_IMPUESTO1_NETO: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_IMPUESTO1_NETO'
      ReadOnly = True
    end
    object qyEncCotizacionR_IMPUESTO2_NETO: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_IMPUESTO2_NETO'
      ReadOnly = True
    end
    object qyEncCotizacionR_SUBTOTAL_NETO: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_SUBTOTAL_NETO'
      ReadOnly = True
    end
    object qyEncCotizacionR_CANTIDAD_CON_LETRAS: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_CANTIDAD_CON_LETRAS'
      ReadOnly = True
      Size = 100
    end
    object qyEncCotizacionR_SUBTOTAL_DP: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_SUBTOTAL_DP'
      ReadOnly = True
    end
    object qyEncCotizacionR_SUBTOTAL_DG: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_SUBTOTAL_DG'
      ReadOnly = True
    end
    object qyEncCotizacionR_TOTAL_NETO: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_TOTAL_NETO'
      ReadOnly = True
    end
  end
  object qyDetCotizacion: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT *'
      'FROM COTIZACION_PARTIDAS(:P_ID)')
    Left = 8
    Top = 40
    ParamData = <
      item
        DataType = ftString
        Name = 'P_ID'
        ParamType = ptUnknown
        Value = '17'
      end>
  end
  object qyVerificarFolio: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT *'
      'FROM VERIFICAR_FOLIO_COTIZACION(:P_ID, :P_FOLIO)')
    Left = 104
    Top = 72
    ParamData = <
      item
        DataType = ftString
        Name = 'P_ID'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'P_FOLIO'
        ParamType = ptUnknown
        Value = '0'
      end>
    object qyVerificarFolioR_ACEPTADO: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_ACEPTADO'
      ReadOnly = True
      Size = 2
    end
  end
  object spAUTO_FOLIO: TIBStoredProc
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    StoredProcName = 'AUTO_FOLIO'
    Left = 8
    Top = 72
    ParamData = <
      item
        DataType = ftInteger
        Name = 'R_FOLIO'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'P_MODULO'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = 'P_SUBCLASE'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'P_AFECTAR'
        ParamType = ptInput
        Value = 'No'
      end>
  end
  object spMODIFICAR_FOLIO: TIBStoredProc
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    StoredProcName = 'MODIFICAR_FOLIO'
    Left = 40
    Top = 72
    ParamData = <
      item
        DataType = ftInteger
        Name = 'P_MODULO'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = 'P_SUBCLASE'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = 'P_CONSECUTIVO'
        ParamType = ptInput
        Value = '0'
      end>
  end
  object spACTUALIZA_COTIZACION: TIBStoredProc
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    StoredProcName = 'ACTUALIZA_COTIZACION'
    Left = 72
    Top = 72
    ParamData = <
      item
        DataType = ftInteger
        Name = 'P_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'P_FOLIO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'P_USUARIO'
        ParamType = ptInput
      end>
  end
end
