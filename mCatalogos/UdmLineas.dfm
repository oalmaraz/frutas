object dmLineas: TdmLineas
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 285
  Top = 161
  Height = 480
  Width = 868
  object TIBXLineas: TIBTable
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    AfterOpen = TIBXLineasAfterOpen
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'LINK'
        DataType = ftInteger
      end
      item
        Name = 'DESCRIPCION'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'ORDEN'
        DataType = ftInteger
      end
      item
        Name = 'MEDIDA'
        DataType = ftInteger
      end
      item
        Name = 'GRUPO_COLORES'
        DataType = ftInteger
      end
      item
        Name = 'FACTOR_MAYOR'
        DataType = ftFloat
      end
      item
        Name = 'FACTOR_MENOR_O_IGUAL'
        DataType = ftFloat
      end
      item
        Name = 'FACTOR_K'
        DataType = ftFloat
      end
      item
        Name = 'FACTOR_K_SEP'
        DataType = ftFloat
      end
      item
        Name = 'FACTOR_RP_COLOR'
        DataType = ftFloat
      end
      item
        Name = 'FACTOR_RP_K_SEL'
        DataType = ftFloat
      end
      item
        Name = 'FACTOR_RP_K_SEP'
        DataType = ftFloat
      end
      item
        Name = 'FACTOR_RP_C_SEP'
        DataType = ftFloat
      end
      item
        Name = 'DESCUENTO_PORC'
        DataType = ftFloat
      end
      item
        Name = 'ESTATUS'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY75'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'RDB$FOREIGN76'
        Fields = 'LINK'
      end
      item
        Name = 'RDB$FOREIGN251'
        Fields = 'MEDIDA'
      end
      item
        Name = 'RDB$FOREIGN282'
        Fields = 'GRUPO_COLORES'
      end>
    StoreDefs = True
    TableName = 'LINEAS'
    Left = 32
    Top = 16
    object TIBXLineasID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object TIBXLineasLINK: TIntegerField
      FieldName = 'LINK'
    end
    object TIBXLineasDESCRIPCION: TIBStringField
      FieldName = 'DESCRIPCION'
      Size = 100
    end
    object TIBXLineasESTATUS: TIBStringField
      FieldName = 'ESTATUS'
    end
    object TIBXLineasORDEN: TIntegerField
      FieldName = 'ORDEN'
    end
    object TIBXLineasMEDIDA: TIntegerField
      FieldName = 'MEDIDA'
    end
    object TIBXLineasGRUPO_COLORES: TIntegerField
      FieldName = 'GRUPO_COLORES'
    end
    object TIBXLineasFACTOR_MAYOR: TFloatField
      FieldName = 'FACTOR_MAYOR'
    end
    object TIBXLineasFACTOR_MENOR_O_IGUAL: TFloatField
      FieldName = 'FACTOR_MENOR_O_IGUAL'
    end
    object TIBXLineasFACTOR_K: TFloatField
      FieldName = 'FACTOR_K'
    end
    object TIBXLineasFACTOR_K_SEP: TFloatField
      FieldName = 'FACTOR_K_SEP'
    end
    object TIBXLineasFACTOR_RP_COLOR: TFloatField
      FieldName = 'FACTOR_RP_COLOR'
    end
    object TIBXLineasFACTOR_RP_K_SEL: TFloatField
      FieldName = 'FACTOR_RP_K_SEL'
    end
    object TIBXLineasFACTOR_RP_K_SEP: TFloatField
      FieldName = 'FACTOR_RP_K_SEP'
    end
    object TIBXLineasFACTOR_RP_C_SEP: TFloatField
      FieldName = 'FACTOR_RP_C_SEP'
    end
    object TIBXLineasDESCUENTO_PORC: TFloatField
      FieldName = 'DESCUENTO_PORC'
    end
  end
  object dsLineas: TDataSource
    DataSet = TIBXLineas
    Left = 32
    Top = 112
  end
  object qyIBXEliminar: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    SQL.Strings = (
      'DELETE FROM LINEAS'
      'WHERE ID = :P_ID')
    Left = 312
    Top = 248
    ParamData = <
      item
        DataType = ftString
        Name = 'P_ID'
        ParamType = ptUnknown
        Value = '0'
      end>
  end
  object dsRaizMedidas: TDataSource
    DataSet = qyIBXRaizMedidas
    Left = 117
    Top = 112
  end
  object qyIBXRaizMedidas: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    SQL.Strings = (
      'SELECT *'
      'FROM RAIZ_MEDIDAS')
    Left = 117
    Top = 16
    object qyIBXRaizMedidasR_ID: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_ID'
      ReadOnly = True
    end
    object qyIBXRaizMedidasR_DESCRIPCION: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_DESCRIPCION'
      ReadOnly = True
    end
  end
  object dsHijoMedidas: TDataSource
    DataSet = qyIBXHijoMedidas
    Left = 216
    Top = 112
  end
  object qyIBXHijoMedidas: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    DataSource = dsLineas
    SQL.Strings = (
      'SELECT *'
      'FROM HIJOS_MEDIDAS(:MEDIDA)')
    Left = 216
    Top = 16
    ParamData = <
      item
        DataType = ftInteger
        Name = 'MEDIDA'
        ParamType = ptUnknown
      end>
    object qyIBXHijoMedidasR_ID: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_ID'
      ReadOnly = True
    end
    object qyIBXHijoMedidasR_DESCRIPCION: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_DESCRIPCION'
      ReadOnly = True
    end
  end
  object dsPreferencias: TDataSource
    DataSet = TIBXPreferencias
    Left = 320
    Top = 112
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
    Filter = 'ID = 0'
    Filtered = True
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY110'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end>
    StoreDefs = True
    TableName = 'PREFERENCIAS'
    Left = 320
    Top = 16
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
  object TIBXGrupoColores: TIBTable
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    IndexFieldNames = 'ID'
    TableName = 'GRUPO_COLORES'
    Left = 400
    Top = 16
    object TIBXGrupoColoresID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object TIBXGrupoColoresNOMBRE: TIBStringField
      FieldName = 'NOMBRE'
      Size = 100
    end
  end
  object dsGrupoColores: TDataSource
    DataSet = TIBXGrupoColores
    Left = 400
    Top = 112
  end
  object qyIBXHijoColores: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    DataSource = dsLineas
    SQL.Strings = (
      'SELECT *'
      'FROM HIJOS_COLORES(:GRUPO_COLORES)')
    Left = 496
    Top = 16
    ParamData = <
      item
        DataType = ftString
        Name = 'GRUPO_COLORES'
        ParamType = ptUnknown
      end>
    object qyIBXHijoColoresR_COLOR: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_COLOR'
      ReadOnly = True
    end
    object qyIBXHijoColoresR_COLOR_NOMBRE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_COLOR_NOMBRE'
      ReadOnly = True
      Size = 50
    end
  end
  object dsHijoColores: TDataSource
    DataSet = qyIBXHijoColores
    Left = 496
    Top = 112
  end
  object spUPDATE_LINEAS: TIBStoredProc
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    StoredProcName = 'UPDATE_LINEAS'
    Left = 176
    Top = 216
    ParamData = <
      item
        DataType = ftInteger
        Name = 'P_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'P_LINK'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'P_DESCRIPCION'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'P_ESTATUS'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'P_ORDEN'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'P_MEDIDA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'P_GRUPO_COLORES'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'P_PORCENTAJE'
        ParamType = ptInput
      end>
  end
  object spINSERT_LINEAS: TIBStoredProc
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    StoredProcName = 'INSERT_LINEAS'
    Left = 48
    Top = 216
    ParamData = <
      item
        DataType = ftInteger
        Name = 'R_ID'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'P_DESCRIPCION'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'P_ESTATUS'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'P_ORDEN'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'P_MEDIDA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'P_GRUPO_COLORES'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'P_PORCENTAJE'
        ParamType = ptInput
      end>
  end
end
