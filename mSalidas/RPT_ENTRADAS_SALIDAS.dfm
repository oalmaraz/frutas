object frmRPT_ENTRADAS_SALIDAS: TfrmRPT_ENTRADAS_SALIDAS
  Left = 161
  Top = 176
  Caption = 'Entradas y Salidas'
  ClientHeight = 518
  ClientWidth = 825
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
  object qyResumenEntSal: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT *'
      
        'FROM GRAL_CORTE_CAJAS_TOTALES(:P_FECHA_DEL, :P_FECHA_AL, :P_ALMA' +
        'CEN)'
      
        'ORDER BY R_FECHA, R_ALMACEN, R_TIPO DESC, R_PRIORIDAD, R_CC_NOMB' +
        'RE DESC')
    Left = 8
    Top = 9
    ParamData = <
      item
        DataType = ftString
        Name = 'P_FECHA_DEL'
        ParamType = ptUnknown
        Value = '02/07/2003'
      end
      item
        DataType = ftString
        Name = 'P_FECHA_AL'
        ParamType = ptUnknown
        Value = '02/07/2003'
      end
      item
        DataType = ftString
        Name = 'P_ALMACEN'
        ParamType = ptUnknown
        Value = '0'
      end>
    object qyResumenEntSalR_ALMACEN: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_ALMACEN'
      ReadOnly = True
    end
    object qyResumenEntSalR_ALMACEN_CLAVE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_ALMACEN_CLAVE'
      ReadOnly = True
    end
    object qyResumenEntSalR_ALMACEN_NOMBRE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_ALMACEN_NOMBRE'
      ReadOnly = True
      Size = 100
    end
    object qyResumenEntSalR_GRANTOTAL: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_GRANTOTAL'
      ReadOnly = True
    end
    object qyResumenEntSalR_PRIORIDAD: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_PRIORIDAD'
      ReadOnly = True
      Size = 2
    end
    object qyResumenEntSalR_CC: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_CC'
      ReadOnly = True
    end
    object qyResumenEntSalR_CC_NOMBRE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_CC_NOMBRE'
      ReadOnly = True
      Size = 100
    end
    object qyResumenEntSalR_TIPO: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_TIPO'
      ReadOnly = True
      Size = 6
    end
    object qyResumenEntSalR_FECHA: TDateTimeField
      FieldKind = fkInternalCalc
      FieldName = 'R_FECHA'
      ReadOnly = True
    end
  end
  object qyEntradasSalidas: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      
        'SELECT R_TIPO, R_CC_NOMBRE, SUM(R_GRANTOTAL) R_GRANTOTAL, R_PRIO' +
        'RIDAD'
      
        'FROM GRAL_CORTE_CAJAS_TOTALES(:P_FECHA_DEL, :P_FECHA_AL, :P_ALMA' +
        'CEN)'
      'GROUP BY R_TIPO, R_CC_NOMBRE, R_PRIORIDAD'
      'ORDER BY R_TIPO DESC, R_PRIORIDAD, R_CC_NOMBRE DESC')
    Left = 40
    Top = 9
    ParamData = <
      item
        DataType = ftString
        Name = 'P_FECHA_DEL'
        ParamType = ptUnknown
        Value = '02/07/2003'
      end
      item
        DataType = ftString
        Name = 'P_FECHA_AL'
        ParamType = ptUnknown
        Value = '07/07/2003'
      end
      item
        DataType = ftString
        Name = 'P_ALMACEN'
        ParamType = ptUnknown
        Value = '2'
      end>
    object qyEntradasSalidasR_TIPO: TIBStringField
      FieldName = 'R_TIPO'
      Size = 6
    end
    object qyEntradasSalidasR_CC_NOMBRE: TIBStringField
      FieldName = 'R_CC_NOMBRE'
      Size = 100
    end
    object qyEntradasSalidasR_GRANTOTAL: TFloatField
      FieldName = 'R_GRANTOTAL'
    end
    object qyEntradasSalidasR_PRIORIDAD: TIBStringField
      FieldName = 'R_PRIORIDAD'
      Size = 2
    end
  end
end
