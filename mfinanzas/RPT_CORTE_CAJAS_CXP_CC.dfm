object frmRPT_CORTE_CAJAS_CXP_CC: TfrmRPT_CORTE_CAJAS_CXP_CC
  Left = 222
  Top = 346
  Caption = 'frmRPT_CORTE_CAJAS_CXP_CC'
  ClientHeight = 441
  ClientWidth = 847
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
  object qyCorte: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      
        'SELECT R_CAJA, R_CAJA_NOMBRE, R_CC_PAGO, R_CC_PAGO_NOMBRE, SUM(R' +
        '_MONTO) R_MONTO, R_FECHA'
      'FROM CORTE_CXP_CC(:P_FECHA, :P_CAJA)'
      
        'GROUP BY R_CAJA, R_CAJA_NOMBRE, R_CC_PAGO, R_CC_PAGO_NOMBRE, R_F' +
        'ECHA')
    Left = 8
    Top = 9
    ParamData = <
      item
        DataType = ftString
        Name = 'P_FECHA'
        ParamType = ptUnknown
        Value = '17/05/2003'
      end
      item
        DataType = ftString
        Name = 'P_CAJA'
        ParamType = ptUnknown
        Value = '16'
      end>
    object qyCorteR_CAJA: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_CAJA'
      ReadOnly = True
    end
    object qyCorteR_CAJA_NOMBRE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_CAJA_NOMBRE'
      ReadOnly = True
      Size = 100
    end
    object qyCorteR_CC_PAGO: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_CC_PAGO'
      ReadOnly = True
    end
    object qyCorteR_CC_PAGO_NOMBRE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_CC_PAGO_NOMBRE'
      ReadOnly = True
      Size = 100
    end
    object qyCorteR_MONTO: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_MONTO'
      ReadOnly = True
    end
    object qyCorteR_FECHA: TDateTimeField
      FieldName = 'R_FECHA'
    end
  end
  object qyResumen: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT R_CC_PAGO, R_CC_PAGO_NOMBRE, SUM(R_MONTO) R_MONTO'
      'FROM CORTE_CXP_CC(:P_FECHA, :P_CAJA)'
      'GROUP BY R_CC_PAGO, R_CC_PAGO_NOMBRE')
    Left = 40
    Top = 9
    ParamData = <
      item
        DataType = ftString
        Name = 'P_FECHA'
        ParamType = ptUnknown
        Value = '17/05/2003'
      end
      item
        DataType = ftString
        Name = 'P_CAJA'
        ParamType = ptUnknown
        Value = '16'
      end>
    object qyResumenR_CC_PAGO: TIntegerField
      FieldName = 'R_CC_PAGO'
    end
    object qyResumenR_CC_PAGO_NOMBRE: TIBStringField
      FieldName = 'R_CC_PAGO_NOMBRE'
      Size = 100
    end
    object qyResumenR_MONTO: TFloatField
      FieldName = 'R_MONTO'
    end
  end
end
