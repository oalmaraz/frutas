object dmDocumentoPagosCXP: TdmDocumentoPagosCXP
  OldCreateOrder = False
  Left = 192
  Top = 107
  Height = 480
  Width = 696
  object qyPartidas: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    SQL.Strings = (
      'SELECT *'
      'FROM DOCUMENTO_PAGOS_CXP(:P_DOCUMENTO)')
    Left = 32
    Top = 16
    ParamData = <
      item
        DataType = ftString
        Name = 'P_DOCUMENTO'
        ParamType = ptUnknown
      end>
    object qyPartidasR_CXP_PAGOS: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_CXP_PAGOS'
      ReadOnly = True
    end
    object qyPartidasR_TOTAL_DOCUMENTO: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_TOTAL_DOCUMENTO'
      ReadOnly = True
      DisplayFormat = '$ ###,###,##0.00'
    end
    object qyPartidasR_FOLIO_PAGO: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_FOLIO_PAGO'
      ReadOnly = True
    end
    object qyPartidasR_FECHA_PAGO: TDateTimeField
      FieldKind = fkInternalCalc
      FieldName = 'R_FECHA_PAGO'
      ReadOnly = True
    end
    object qyPartidasR_CAJA: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_CAJA'
      ReadOnly = True
    end
    object qyPartidasR_CAJA_NOMBRE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_CAJA_NOMBRE'
      ReadOnly = True
      Size = 100
    end
    object qyPartidasR_CAJERO: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_CAJERO'
      ReadOnly = True
    end
    object qyPartidasR_CAJERO_NOMBRE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_CAJERO_NOMBRE'
      ReadOnly = True
      Size = 100
    end
    object qyPartidasR_TOTAL_PAGO: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_TOTAL_PAGO'
      ReadOnly = True
      DisplayFormat = '$ ###,###,##0.00'
    end
    object qyPartidasR_MONEDA: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_MONEDA'
      ReadOnly = True
    end
    object qyPartidasR_MONEDA_CLAVE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_MONEDA_CLAVE'
      ReadOnly = True
      Size = 10
    end
    object qyPartidasR_MONEDA_DESCRIPCION: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_MONEDA_DESCRIPCION'
      ReadOnly = True
      Size = 50
    end
    object qyPartidasR_ESTATUS_PAGO: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_ESTATUS_PAGO'
      ReadOnly = True
    end
    object qyPartidasR_FECHA: TDateTimeField
      FieldKind = fkInternalCalc
      FieldName = 'R_FECHA'
      ReadOnly = True
    end
  end
  object dsPartidas: TDataSource
    DataSet = qyPartidas
    Left = 32
    Top = 64
  end
end
