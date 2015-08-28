object dmHorizontal: TdmHorizontal
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 285
  Top = 161
  Height = 479
  Width = 741
  object dsVerMaterialesMedidas: TDataSource
    DataSet = qyIBXVerMaterialesMedidas
    Left = 192
    Top = 64
  end
  object qyIBXVerMaterialesMedidas: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    SQL.Strings = (
      'SELECT *'
      'FROM VER_MATERIALES_MEDIDAS(:P_MATERIAL)')
    Left = 192
    Top = 16
    ParamData = <
      item
        DataType = ftString
        Name = 'P_MATERIAL'
        ParamType = ptUnknown
        Value = '0'
      end>
    object qyIBXVerMaterialesMedidasR_ID: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_ID'
      ReadOnly = True
    end
    object qyIBXVerMaterialesMedidasR_ID_MEDIDA: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_ID_MEDIDA'
      ReadOnly = True
    end
    object qyIBXVerMaterialesMedidasR_DESCRIPCION: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_DESCRIPCION'
      ReadOnly = True
    end
    object qyIBXVerMaterialesMedidasR_CODIGO_BARRAS: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_CODIGO_BARRAS'
      ReadOnly = True
    end
    object qyIBXVerMaterialesMedidasR_ORDEN: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_ORDEN'
      ReadOnly = True
    end
  end
  object qyIBXColumnas: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    SQL.Strings = (
      'SELECT COUNT(*) CUANTOS'
      'FROM VER_MATERIALES_MEDIDAS(:P_MATERIAL)')
    Left = 320
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_MATERIAL'
        ParamType = ptUnknown
      end>
    object qyIBXColumnasCUANTOS: TIntegerField
      FieldName = 'CUANTOS'
    end
  end
  object dsMaterialesColores: TDataSource
    DataSet = qyIBXMaterialesColores
    Left = 56
    Top = 64
  end
  object qyIBXMaterialesColores: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    SQL.Strings = (
      'SELECT *'
      'FROM VER_COLORES_MATERIAL(:P_MATERIAL)')
    Left = 56
    Top = 16
    ParamData = <
      item
        DataType = ftString
        Name = 'P_MATERIAL'
        ParamType = ptUnknown
        Value = '0'
      end>
    object qyIBXMaterialesColoresR_ORDEN: TIntegerField
      FieldName = 'R_ORDEN'
      Origin = 'VER_COLORES_MATERIAL.R_ORDEN'
    end
    object qyIBXMaterialesColoresR_COLOR: TIntegerField
      FieldName = 'R_COLOR'
      Origin = 'VER_COLORES_MATERIAL.R_COLOR'
    end
    object qyIBXMaterialesColoresR_COLOR_NOMBRE: TIBStringField
      FieldName = 'R_COLOR_NOMBRE'
      Origin = 'VER_COLORES_MATERIAL.R_COLOR_NOMBRE'
      Size = 50
    end
  end
  object qyIBXRenglones: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    SQL.Strings = (
      'SELECT COUNT(*) CUANTOS'
      'FROM VER_MATERIALES_COLORES(:P_MATERIAL)')
    Left = 408
    Top = 16
    ParamData = <
      item
        DataType = ftString
        Name = 'P_MATERIAL'
        ParamType = ptUnknown
        Value = '0'
      end>
    object qyIBXRenglonesCUANTOS: TIntegerField
      FieldName = 'CUANTOS'
    end
  end
  object TIBXPreferencias: TIBTable
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NOMBRE'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'TIPO'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'VALOR'
        DataType = ftString
        Size = 20
      end>
    Filter = 'ID = -17'
    Filtered = True
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY110'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end>
    StoreDefs = True
    TableName = 'PREFERENCIAS'
    Left = 56
    Top = 216
    object TIBXPreferenciasID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object TIBXPreferenciasNOMBRE: TIBStringField
      FieldName = 'NOMBRE'
      Size = 100
    end
    object TIBXPreferenciasTIPO: TIBStringField
      FieldName = 'TIPO'
      Size = 14
    end
    object TIBXPreferenciasVALOR: TIBStringField
      FieldName = 'VALOR'
    end
  end
  object dsPreferencias: TDataSource
    DataSet = TIBXPreferencias
    Left = 56
    Top = 259
  end
end
