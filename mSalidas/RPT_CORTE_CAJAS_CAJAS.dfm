object frmRPT_CORTE_CAJAS_CAJAS: TfrmRPT_CORTE_CAJAS_CAJAS
  Left = 199
  Top = 243
  Caption = 'Corte de Cajas'
  ClientHeight = 565
  ClientWidth = 840
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
  object qyResumenCajas: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      
        'SELECT R_COBRO, R_TIPO_CAJA, R_TIPO_NOMBRE, SUM(R_TOTAL_CAJAS) T' +
        'OTAL, R_CALIDADES, SUM(R_NUM_CAJAS) NUM_CAJAS'
      'FROM CORTE_CAJAS_CAJAS(:P_CAJA, :P_FECHA, :P_ALMACEN)'
      'GROUP BY R_COBRO, R_TIPO_CAJA, R_TIPO_NOMBRE, R_CALIDADES')
    Left = 40
    Top = 8
    ParamData = <
      item
        DataType = ftString
        Name = 'P_CAJA'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'P_FECHA'
        ParamType = ptUnknown
        Value = '30/10/2002'
      end
      item
        DataType = ftString
        Name = 'P_ALMACEN'
        ParamType = ptUnknown
        Value = '2'
      end>
    object qyResumenCajasR_COBRO: TIBStringField
      FieldName = 'R_COBRO'
      Size = 2
    end
    object qyResumenCajasR_TIPO_CAJA: TIntegerField
      FieldName = 'R_TIPO_CAJA'
    end
    object qyResumenCajasR_TIPO_NOMBRE: TIBStringField
      FieldName = 'R_TIPO_NOMBRE'
      Size = 100
    end
    object qyResumenCajasTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object qyResumenCajasR_CALIDADES: TIBStringField
      FieldName = 'R_CALIDADES'
    end
    object qyResumenCajasNUM_CAJAS: TIntegerField
      FieldName = 'NUM_CAJAS'
    end
  end
  object qyDetalleCajas: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT *'
      'FROM CORTE_CAJAS_CAJAS(:P_CAJA, :P_FECHA, :P_ALMACEN)')
    Left = 8
    Top = 8
    ParamData = <
      item
        DataType = ftString
        Name = 'P_CAJA'
        ParamType = ptUnknown
        Value = '4'
      end
      item
        DataType = ftString
        Name = 'P_FECHA'
        ParamType = ptUnknown
        Value = '12/03/2003'
      end
      item
        DataType = ftString
        Name = 'P_ALMACEN'
        ParamType = ptUnknown
        Value = '2'
      end>
    object qyDetalleCajasR_ID: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_ID'
      ReadOnly = True
    end
    object qyDetalleCajasR_FOLIO_DE_VENTA: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_FOLIO_DE_VENTA'
      ReadOnly = True
    end
    object qyDetalleCajasR_CAJA: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_CAJA'
      ReadOnly = True
    end
    object qyDetalleCajasR_CAJA_NOMBRE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_CAJA_NOMBRE'
      ReadOnly = True
      Size = 100
    end
    object qyDetalleCajasR_CLIENTE: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_CLIENTE'
      ReadOnly = True
    end
    object qyDetalleCajasR_CLIENTE_NOMBRE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_CLIENTE_NOMBRE'
      ReadOnly = True
      Size = 100
    end
    object qyDetalleCajasR_EXTENSION: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_EXTENSION'
      ReadOnly = True
    end
    object qyDetalleCajasR_EXTENSION_NOMBRE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_EXTENSION_NOMBRE'
      ReadOnly = True
      Size = 100
    end
    object qyDetalleCajasR_FECHA: TDateTimeField
      FieldKind = fkInternalCalc
      FieldName = 'R_FECHA'
      ReadOnly = True
    end
    object qyDetalleCajasR_GRANTOTAL: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_GRANTOTAL'
      ReadOnly = True
    end
    object qyDetalleCajasR_CAMBIO: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_CAMBIO'
      ReadOnly = True
    end
    object qyDetalleCajasR_COBRO: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_COBRO'
      ReadOnly = True
      Size = 2
    end
    object qyDetalleCajasR_NUM_CAJAS: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_NUM_CAJAS'
      ReadOnly = True
    end
    object qyDetalleCajasR_TIPO_CAJA: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_TIPO_CAJA'
      ReadOnly = True
    end
    object qyDetalleCajasR_TIPO_NOMBRE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_TIPO_NOMBRE'
      ReadOnly = True
      Size = 100
    end
    object qyDetalleCajasR_TOTAL_CAJAS: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_TOTAL_CAJAS'
      ReadOnly = True
    end
    object qyDetalleCajasR_CALIDADES: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_CALIDADES'
      ReadOnly = True
    end
  end
end
