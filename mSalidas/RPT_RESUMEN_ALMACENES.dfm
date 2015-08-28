object frmRPT_RESUMEN_ALMACENES: TfrmRPT_RESUMEN_ALMACENES
  Left = 510
  Top = 155
  Caption = 'Resumen Almacenes'
  ClientHeight = 581
  ClientWidth = 804
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object qyResumenAlmacen: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT *'
      
        'FROM GRAL_CORTE_ALMACENES (:P_FECHA_DEL, :P_FECHA_AL, :P_ALMACEN' +
        ')')
    Left = 8
    Top = 7
    ParamData = <
      item
        DataType = ftString
        Name = 'P_FECHA_DEL'
        ParamType = ptUnknown
        Value = '21/07/2003'
      end
      item
        DataType = ftString
        Name = 'P_FECHA_AL'
        ParamType = ptUnknown
        Value = '21/07/2003'
      end
      item
        DataType = ftString
        Name = 'P_ALMACEN'
        ParamType = ptUnknown
        Value = '0'
      end>
  end
  object qyResumenAlmacenes: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT SUM(R_TOTAL_VENTAS_DEL_DIA) R_TOTAL_VENTAS_DEL_DIA,'
      
        '              SUM(R_TOTAL_RECUP_EFECTIVO) R_TOTAL_RECUP_EFECTIVO' +
        ','
      
        '              SUM(R_TOTAL_TARJETA_CREDITO) R_TOTAL_TARJETA_CREDI' +
        'TO,'
      
        '              SUM(R_TOTAL_VENTAS_DIA_PRIORIDAD) R_TOTAL_VENTAS_D' +
        'IA_PRIORIDAD,'
      
        '              SUM(R_TOTAL_RECUP_EFECTIVO_PRIOR) R_TOTAL_RECUP_EF' +
        'ECTIVO_PRIOR,'
      '              SUM(R_TOTAL_INTERESES) R_TOTAL_INTERESES'
      
        'FROM GRAL_CORTE_ALMACENES (:P_FECHA_DEL, :P_FECHA_AL, :P_ALMACEN' +
        ')')
    Left = 40
    Top = 7
    ParamData = <
      item
        DataType = ftString
        Name = 'P_FECHA_DEL'
        ParamType = ptUnknown
        Value = '21/07/2003'
      end
      item
        DataType = ftString
        Name = 'P_FECHA_AL'
        ParamType = ptUnknown
        Value = '21/07/2003'
      end
      item
        DataType = ftString
        Name = 'P_ALMACEN'
        ParamType = ptUnknown
        Value = '0'
      end>
  end
end
