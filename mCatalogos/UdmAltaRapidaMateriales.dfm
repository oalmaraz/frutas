object dmAltaRapidaMateriales: TdmAltaRapidaMateriales
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 479
  Width = 741
  object TIBXUnidades: TIBTable
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'CLAVE'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'DESCRIPCION'
        DataType = ftString
        Size = 50
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY77'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end>
    StoreDefs = True
    TableName = 'UNIDADES'
    UniDirectional = False
    Left = 32
    Top = 16
    object TIBXUnidadesID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object TIBXUnidadesCLAVE: TIBStringField
      FieldName = 'CLAVE'
      Size = 10
    end
    object TIBXUnidadesDESCRIPCION: TIBStringField
      FieldName = 'DESCRIPCION'
      Size = 50
    end
  end
  object dsUnidades: TDataSource
    DataSet = TIBXUnidades
    Left = 32
    Top = 80
  end
  object TIBXPreferencias: TIBTable
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    BufferChunks = 1000
    CachedUpdates = False
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
    UniDirectional = False
    Left = 132
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
  object dsPreferencias: TDataSource
    DataSet = TIBXPreferencias
    Left = 132
    Top = 75
  end
  object spIBXALTA_RAPIDA_MATERIALES: TIBStoredProc
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    StoredProcName = 'ALTA_RAPIDA_MATERIALES'
    Left = 288
    Top = 16
    ParamData = <
      item
        DataType = ftInteger
        Name = 'R_ID'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'P_CLAVE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'P_DESCRIPCION'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'P_IVA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'P_CODIGO_BARRAS'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'P_UNIDAD'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'P_ETIQUETAS'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'P_ACTIVO_FIJO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'P_CONSOLIDADO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'P_SERIE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'P_LOTE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'P_LINEA'
        ParamType = ptInput
      end>
  end
  object spMODIFICAR_FOLIO: TIBStoredProc
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    StoredProcName = 'MODIFICAR_FOLIO'
    Left = 288
    Top = 96
    ParamData = <
      item
        DataType = ftInteger
        Name = 'P_MODULO'
        ParamType = ptInput
        Value = '18'
      end
      item
        DataType = ftInteger
        Name = 'P_SUBCLASE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'P_CONSECUTIVO'
        ParamType = ptInput
      end>
  end
  object spAUTO_FOLIO: TIBStoredProc
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    StoredProcName = 'AUTO_FOLIO'
    Left = 288
    Top = 152
    ParamData = <
      item
        DataType = ftInteger
        Name = 'R_FOLIO'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'P_MODULO'
        ParamType = ptInput
        Value = '18'
      end
      item
        DataType = ftInteger
        Name = 'P_SUBCLASE'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'P_AFECTAR'
        ParamType = ptInput
        Value = 'Si'
      end>
  end
end
