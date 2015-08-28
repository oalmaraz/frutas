object frmRPT_CORTE_CAJAS_CXP_CC_DET: TfrmRPT_CORTE_CAJAS_CXP_CC_DET
  Left = 223
  Top = 277
  Caption = 'frmRPT_CORTE_CAJAS_CXP_CC_DET'
  ClientHeight = 441
  ClientWidth = 822
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
      'FROM CORTE_CXP_CC_DETALLE(:P_FECHA, :P_CAJA)')
    Left = 8
    Top = 8
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
    object qyCorteDetalleR_ID: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_ID'
      ReadOnly = True
    end
    object qyCorteDetalleR_FOLIO_PAGO: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_FOLIO_PAGO'
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
    object qyCorteDetalleR_ESTATUS: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_ESTATUS'
      ReadOnly = True
    end
    object qyCorteDetalleR_CC_PAGO: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_CC_PAGO'
      ReadOnly = True
    end
    object qyCorteDetalleR_CC_PAGO_NOMBRE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_CC_PAGO_NOMBRE'
      ReadOnly = True
      Size = 100
    end
    object qyCorteDetalleR_MONTO: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_MONTO'
      ReadOnly = True
    end
    object qyCorteDetalleR_ESTATUS_DETALLE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_ESTATUS_DETALLE'
      ReadOnly = True
    end
  end
end
