object dmDetalleDeLaCompra: TdmDetalleDeLaCompra
  OldCreateOrder = False
  Left = 330
  Top = 105
  Height = 480
  Width = 696
  object qyIBXDetalle: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    SQL.Strings = (
      'SELECT *'
      'FROM CXP_QUE_COMPRE(:P_ID)')
    Left = 32
    Top = 16
    ParamData = <
      item
        DataType = ftString
        Name = 'P_ID'
        ParamType = ptUnknown
        Value = '0'
      end>
    object qyIBXDetalleR_ID: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_ID'
      ReadOnly = True
    end
    object qyIBXDetalleR_CONCEPTO: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_CONCEPTO'
      ReadOnly = True
      Size = 100
    end
    object qyIBXDetalleR_CANTIDAD: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_CANTIDAD'
      ReadOnly = True
    end
    object qyIBXDetalleR_UNIDAD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_UNIDAD'
      ReadOnly = True
    end
    object qyIBXDetalleR_UNIDAD_CLAVE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_UNIDAD_CLAVE'
      ReadOnly = True
      Size = 10
    end
    object qyIBXDetalleR_UNIDAD_DESCRIPCION: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_UNIDAD_DESCRIPCION'
      ReadOnly = True
      Size = 50
    end
    object qyIBXDetalleR_COSTO: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_COSTO'
      ReadOnly = True
      DisplayFormat = '$ ###,###,##0.0000'
    end
  end
  object dsDetalle: TDataSource
    DataSet = qyIBXDetalle
    Left = 32
    Top = 64
  end
end
