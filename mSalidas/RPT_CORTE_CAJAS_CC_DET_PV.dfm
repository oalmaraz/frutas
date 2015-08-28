object frmRPT_CORTE_CAJAS_CC_DET_PV: TfrmRPT_CORTE_CAJAS_CC_DET_PV
  Left = 233
  Top = 183
  Caption = 'Corte de Cajas Condiciones Comerciales Detalle Punto de Ventas'
  ClientHeight = 506
  ClientWidth = 867
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object qyCorteDetalle: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT *'
      
        'FROM GRAL_CORTE_CAJAS_FPAGO_DETALLE(:P_FECHA_DEL, :P_FECHA_AL, :' +
        'P_CAJA, :P_ALMACEN, :P_OPCION)')
    Left = 8
    Top = 10
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_FECHA_DEL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'P_FECHA_AL'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'P_CAJA'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'P_ALMACEN'
        ParamType = ptUnknown
        Value = '2'
      end
      item
        DataType = ftUnknown
        Name = 'P_OPCION'
        ParamType = ptUnknown
      end>
    object qyCorteDetalleR_ID: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_ID'
      ReadOnly = True
    end
    object qyCorteDetalleR_FOLIO_DE_VENTA: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_FOLIO_DE_VENTA'
      ReadOnly = True
    end
    object qyCorteDetalleR_CAJA: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_CAJA'
      ReadOnly = True
    end
    object qyCorteDetalleR_CAJA_NOMBRE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_CAJA_NOMBRE'
      ReadOnly = True
      Size = 100
    end
    object qyCorteDetalleR_CLIENTE: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_CLIENTE'
      ReadOnly = True
    end
    object qyCorteDetalleR_CLIENTE_NOMBRE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_CLIENTE_NOMBRE'
      ReadOnly = True
      Size = 100
    end
    object qyCorteDetalleR_EXTENSION: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_EXTENSION'
      ReadOnly = True
    end
    object qyCorteDetalleR_EXTENSION_NOMBRE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_EXTENSION_NOMBRE'
      ReadOnly = True
      Size = 100
    end
    object qyCorteDetalleR_FECHA: TDateTimeField
      FieldKind = fkInternalCalc
      FieldName = 'R_FECHA'
      ReadOnly = True
    end
    object qyCorteDetalleR_GRANTOTAL: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_GRANTOTAL'
      ReadOnly = True
    end
    object qyCorteDetalleR_CAMBIO: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_CAMBIO'
      ReadOnly = True
    end
    object qyCorteDetalleR_MONTO: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_MONTO'
      ReadOnly = True
    end
    object qyCorteDetalleR_REFERENCIA_PAGO: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_REFERENCIA_PAGO'
      ReadOnly = True
    end
    object qyCorteDetalleR_REFERENCIA_NOMBRE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_REFERENCIA_NOMBRE'
      ReadOnly = True
      Size = 100
    end
    object qyCorteDetalleR_QUE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_QUE'
      ReadOnly = True
      Size = 7
    end
    object qyCorteDetalleR_QUE_CLAVE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_QUE_CLAVE'
      ReadOnly = True
    end
    object qyCorteDetalleR_PRIORIDAD: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_PRIORIDAD'
      ReadOnly = True
      Size = 2
    end
    object qyCorteDetalleR_ALMACEN: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_ALMACEN'
      ReadOnly = True
    end
    object qyCorteDetalleR_ALMACEN_CLAVE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_ALMACEN_CLAVE'
      ReadOnly = True
    end
    object qyCorteDetalleR_ALMACEN_NOMBRE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_ALMACEN_NOMBRE'
      ReadOnly = True
      Size = 100
    end
    object qyCorteDetalleR_FECHA_ALTA: TDateTimeField
      FieldKind = fkInternalCalc
      FieldName = 'R_FECHA_ALTA'
      ReadOnly = True
    end
  end
  object qyResumenDetalle: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT SUM(R_MONTO) R_GRANTOTAL'
      
        'FROM GRAL_CORTE_CAJAS_CCOMERCIAL(:P_FECHA_DEL, :P_FECHA_AL, :P_C' +
        'AJA, :P_ALMACEN, :P_OPCION)')
    Left = 40
    Top = 11
    ParamData = <
      item
        DataType = ftString
        Name = 'P_FECHA_DEL'
        ParamType = ptUnknown
        Value = '03/12/2001'
      end
      item
        DataType = ftString
        Name = 'P_FECHA_AL'
        ParamType = ptUnknown
        Value = '03/12/2001'
      end
      item
        DataType = ftString
        Name = 'P_CAJA'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'P_ALMACEN'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'P_OPCION'
        ParamType = ptUnknown
        Value = '9'
      end>
    object qyResumenDetalleR_GRANTOTAL: TFloatField
      FieldName = 'R_GRANTOTAL'
    end
  end
end
