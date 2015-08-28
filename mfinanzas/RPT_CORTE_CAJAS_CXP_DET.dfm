object frmRPT_CORTE_CAJAS_CXP_DET: TfrmRPT_CORTE_CAJAS_CXP_DET
  Left = 152
  Top = 254
  Caption = 'frmRPT_CORTE_CAJAS_CXP_DET'
  ClientHeight = 441
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
  object qyDetalle: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT *'
      'FROM CORTE_CXP_DETALLE(:P_FECHA, :P_CAJA)')
    Left = 8
    Top = 8
    ParamData = <
      item
        DataType = ftString
        Name = 'P_FECHA'
        ParamType = ptUnknown
        Value = '16/05/2003'
      end
      item
        DataType = ftString
        Name = 'P_CAJA'
        ParamType = ptUnknown
        Value = '16'
      end>
    object qyDetalleR_ID: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_ID'
      ReadOnly = True
    end
    object qyDetalleR_FOLIO_PAGO: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_FOLIO_PAGO'
      ReadOnly = True
    end
    object qyDetalleR_FECHA_ALTA: TDateTimeField
      FieldKind = fkInternalCalc
      FieldName = 'R_FECHA_ALTA'
      ReadOnly = True
    end
    object qyDetalleR_USUARIO: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_USUARIO'
      ReadOnly = True
    end
    object qyDetalleR_USUARIO_NOMBRE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_USUARIO_NOMBRE'
      ReadOnly = True
      Size = 100
    end
    object qyDetalleR_CAJA: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_CAJA'
      ReadOnly = True
    end
    object qyDetalleR_CAJA_NOMBRE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_CAJA_NOMBRE'
      ReadOnly = True
      Size = 100
    end
    object qyDetalleR_GRANTOTAL: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_GRANTOTAL'
      ReadOnly = True
    end
    object qyDetalleR_ESTATUS: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_ESTATUS'
      ReadOnly = True
    end
    object qyDetalleR_DET_ID: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_DET_ID'
      ReadOnly = True
    end
    object qyDetalleR_DET_CXP_PAGOS: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_DET_CXP_PAGOS'
      ReadOnly = True
    end
    object qyDetalleR_DET_CUENTA_X_PAGAR: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_DET_CUENTA_X_PAGAR'
      ReadOnly = True
    end
    object qyDetalleR_DET_FECHA_DOCUMENTO: TDateTimeField
      FieldKind = fkInternalCalc
      FieldName = 'R_DET_FECHA_DOCUMENTO'
      ReadOnly = True
    end
    object qyDetalleR_DET_FECHA_VENCIMIENTO: TDateTimeField
      FieldKind = fkInternalCalc
      FieldName = 'R_DET_FECHA_VENCIMIENTO'
      ReadOnly = True
    end
    object qyDetalleR_DET_IMPORTE: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_DET_IMPORTE'
      ReadOnly = True
    end
    object qyDetalleR_DET_IMPORTE_INICIAL: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_DET_IMPORTE_INICIAL'
      ReadOnly = True
    end
    object qyDetalleR_DET_NUMERO_DE_DOCUMENTOS: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_DET_NUMERO_DE_DOCUMENTOS'
      ReadOnly = True
    end
    object qyDetalleR_DET_DOCUMENTO: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_DET_DOCUMENTO'
      ReadOnly = True
    end
    object qyDetalleR_DET_ESTATUS: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_DET_ESTATUS'
      ReadOnly = True
    end
    object qyDetalleR_REFERENCIA: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_REFERENCIA'
      ReadOnly = True
    end
    object qyDetalleR_PROVEEDOR: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_PROVEEDOR'
      ReadOnly = True
    end
    object qyDetalleR_PROVEEDOR_NOMBRE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_PROVEEDOR_NOMBRE'
      ReadOnly = True
      Size = 100
    end
    object qyDetalleR_GRANTOTAL_DETALLE: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_GRANTOTAL_DETALLE'
      ReadOnly = True
    end
  end
  object dsDetalle: TDataSource
    DataSet = qyDetalle
    Left = 40
    Top = 8
  end
end
