object frmRPT_CORTE_CAJAS_CC_PV: TfrmRPT_CORTE_CAJAS_CC_PV
  Left = 134
  Top = 138
  Caption = 'Reporte Corte de Cajas Condiciones Comerciales Punto de Ventas'
  ClientHeight = 441
  ClientWidth = 828
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
  object qyResumen: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT *'
      
        'FROM GRAL_CORTE_CAJAS_FPAGO_RESUMEN(:P_FECHA_DEL, :P_FECHA_AL, :' +
        'P_CAJA, :P_ALMACEN, :P_OPCION)')
    Left = 40
    Top = 6
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
        Value = '2'
      end
      item
        DataType = ftString
        Name = 'P_OPCION'
        ParamType = ptUnknown
        Value = '6'
      end>
    object qyResumenR_REFERENCIA_PAGO: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_REFERENCIA_PAGO'
      ReadOnly = True
    end
    object qyResumenR_REFERENCIA_NOMBRE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_REFERENCIA_NOMBRE'
      ReadOnly = True
      Size = 100
    end
    object qyResumenR_MONTO_VENTA: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_MONTO_VENTA'
      ReadOnly = True
      DisplayFormat = '$ ###,###,##0.00'
    end
    object qyResumenR_MONTO_COLECTA: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_MONTO_COLECTA'
      ReadOnly = True
      DisplayFormat = '$ ###,###,##0.00'
    end
    object qyResumenR_SALDO: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_SALDO'
      ReadOnly = True
      DisplayFormat = '$ ###,###,##0.00'
    end
    object qyResumenR_PRIORIDAD: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_PRIORIDAD'
      ReadOnly = True
      Size = 2
    end
  end
  object qyCorte: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT *'
      
        'FROM GRAL_CORTE_CAJAS_FORMAS_PAGO(:P_FECHA_DEL, :P_FECHA_AL, :P_' +
        'CAJA, :P_ALMACEN, :P_OPCION)')
    Left = 8
    Top = 6
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
        Value = '03/12/2003'
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
        DataType = ftString
        Name = 'P_OPCION'
        ParamType = ptUnknown
        Value = '6'
      end>
    object IntegerField1: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_REFERENCIA_PAGO'
      ReadOnly = True
    end
    object IBStringField1: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_REFERENCIA_NOMBRE'
      ReadOnly = True
      Size = 100
    end
    object FloatField1: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_MONTO_VENTA'
      ReadOnly = True
    end
    object FloatField2: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_MONTO_COLECTA'
      ReadOnly = True
    end
    object FloatField3: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_SALDO'
      ReadOnly = True
    end
    object IntegerField2: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_CAJA'
      ReadOnly = True
    end
    object IBStringField2: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_CAJA_NOMBRE'
      ReadOnly = True
      Size = 100
    end
    object qyCorteR_FECHA: TDateTimeField
      FieldKind = fkInternalCalc
      FieldName = 'R_FECHA'
      ReadOnly = True
    end
    object qyCorteR_ALMACEN: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_ALMACEN'
      ReadOnly = True
    end
    object qyCorteR_ALMACEN_CLAVE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_ALMACEN_CLAVE'
      ReadOnly = True
    end
    object qyCorteR_ALMACEN_NOMBRE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_ALMACEN_NOMBRE'
      ReadOnly = True
      Size = 100
    end
    object qyCorteR_PRIORIDAD: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_PRIORIDAD'
      ReadOnly = True
      Size = 2
    end
  end
end
