object dmDocumentoNCreditoAfectada: TdmDocumentoNCreditoAfectada
  OldCreateOrder = False
  Left = 350
  Top = 181
  Height = 480
  Width = 696
  object qyPartidas: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    SQL.Strings = (
      'SELECT *'
      'FROM DOCUMENTO_NCREDITO_AFECTADAS(:P_DOCUMENTO)')
    Left = 32
    Top = 16
    ParamData = <
      item
        DataType = ftString
        Name = 'P_DOCUMENTO'
        ParamType = ptUnknown
      end>
    object qyPartidasR_ID: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_ID'
      ReadOnly = True
    end
    object qyPartidasR_FECHA_ALTA: TDateTimeField
      FieldKind = fkInternalCalc
      FieldName = 'R_FECHA_ALTA'
      ReadOnly = True
    end
    object qyPartidasR_CLAVE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_CLAVE'
      ReadOnly = True
    end
    object qyPartidasR_SERIE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_SERIE'
      ReadOnly = True
      Size = 10
    end
    object qyPartidasR_CONSECUTIVO: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_CONSECUTIVO'
      ReadOnly = True
    end
    object qyPartidasR_GRANTOTAL: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_GRANTOTAL'
      ReadOnly = True
      DisplayFormat = '$ ###,###,##0.00'
    end
  end
  object dsPartidas: TDataSource
    DataSet = qyPartidas
    Left = 32
    Top = 64
  end
end
