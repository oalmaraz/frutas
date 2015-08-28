inherited frmSeleccionar_cotizaciones: TfrmSeleccionar_cotizaciones
  Caption = 'Seleccionar Cotizaciones'
  PixelsPerInch = 96
  TextHeight = 13
  inherited qySeleccionar: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    SQL.Strings = (
      'SELECT *'
      'FROM COTIZACIONES')
    object qySeleccionarID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qySeleccionarCLAVE: TIBStringField
      FieldName = 'CLAVE'
    end
    object qySeleccionarFECHA_ALTA: TDateTimeField
      FieldName = 'FECHA_ALTA'
      DisplayFormat = 'dd/mmm/yyyy'
    end
    object qySeleccionarFECHA_VALIDEZ: TDateTimeField
      FieldName = 'FECHA_VALIDEZ'
      DisplayFormat = 'dd/mmm/yyyy'
    end
    object qySeleccionarFECHA_CANCELACION: TDateTimeField
      FieldName = 'FECHA_CANCELACION'
    end
    object qySeleccionarCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
    end
    object qySeleccionarNOMBRE: TIBStringField
      FieldName = 'NOMBRE'
      Size = 100
    end
    object qySeleccionarRAZON_SOCIAL: TIBStringField
      FieldName = 'RAZON_SOCIAL'
      Size = 100
    end
    object qySeleccionarTELEFONO: TIBStringField
      FieldName = 'TELEFONO'
    end
    object qySeleccionarPEDIDO: TIntegerField
      FieldName = 'PEDIDO'
    end
    object qySeleccionarMONEDA: TIntegerField
      FieldName = 'MONEDA'
      Required = True
    end
    object qySeleccionarCONDICION_COMERCIAL: TIntegerField
      FieldName = 'CONDICION_COMERCIAL'
    end
    object qySeleccionarANTICIPO: TFloatField
      FieldName = 'ANTICIPO'
    end
    object qySeleccionarOBSERVACIONES: TBlobField
      FieldName = 'OBSERVACIONES'
      BlobType = ftBlob
      Size = 8
    end
    object qySeleccionarSUBTOTAL: TFloatField
      FieldName = 'SUBTOTAL'
    end
    object qySeleccionarIVA: TFloatField
      FieldName = 'IVA'
    end
    object qySeleccionarIEPS: TFloatField
      FieldName = 'IEPS'
    end
    object qySeleccionarIMPUESTO1: TFloatField
      FieldName = 'IMPUESTO1'
    end
    object qySeleccionarIMPUESTO2: TFloatField
      FieldName = 'IMPUESTO2'
    end
    object qySeleccionarTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object qySeleccionarDESCUENTO_GLOBAL_PORC: TFloatField
      FieldName = 'DESCUENTO_GLOBAL_PORC'
    end
    object qySeleccionarDESCUENTO_CANTIDAD_GLOBAL: TFloatField
      FieldName = 'DESCUENTO_CANTIDAD_GLOBAL'
    end
    object qySeleccionarDESCUENTO_CANTIDAD_PARCIAL: TFloatField
      FieldName = 'DESCUENTO_CANTIDAD_PARCIAL'
    end
    object qySeleccionarGRANTOTAL: TFloatField
      FieldName = 'GRANTOTAL'
      DisplayFormat = '$ ###,###,###,##0.00'
    end
    object qySeleccionarVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
      Required = True
    end
    object qySeleccionarESTATUS: TIBStringField
      FieldName = 'ESTATUS'
    end
  end
  inherited spAdd: TIBStoredProc
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    StoredProcName = 'ADD_COTIZACION_A_PEDIDO'
    ParamData = <
      item
        DataType = ftInteger
        Name = 'P_PEDIDO'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = 'P_COTIZACION'
        ParamType = ptInput
        Value = '0'
      end>
  end
  object dsTotales: TDataSource
    Left = 520
    Top = 336
  end
end
