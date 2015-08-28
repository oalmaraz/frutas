object dmMedidas: TdmMedidas
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 322
  Top = 258
  Height = 480
  Width = 696
  object dsMedidas: TDataSource
    DataSet = TIBXMedidas
    Left = 80
    Top = 112
  end
  object spIBXInsert: TIBStoredProc
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    StoredProcName = 'INSERT_MEDIDAS'
    Left = 160
    Top = 16
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
        DataType = ftInteger
        Name = 'P_ORDEN'
        ParamType = ptInput
      end>
  end
  object spIBXUpdate: TIBStoredProc
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    StoredProcName = 'UPDATE_MEDIDAS'
    Left = 248
    Top = 16
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
        DataType = ftInteger
        Name = 'P_ORDEN'
        ParamType = ptInput
      end>
  end
  object qyIBXEliminar: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    SQL.Strings = (
      'DELETE FROM MEDIDAS'
      'WHERE ID = :P_ID')
    Left = 336
    Top = 16
    ParamData = <
      item
        DataType = ftString
        Name = 'P_ID'
        ParamType = ptUnknown
        Value = '0'
      end>
  end
  object TIBXMedidas: TIBTable
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
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
        Size = 20
      end
      item
        Name = 'ORDEN'
        DataType = ftInteger
      end>
    Filter = 'ID <> -3'
    Filtered = True
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY28'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'RDB$FOREIGN191'
        Fields = 'LINK'
      end
      item
        Name = 'IDX_MEDIDAS'
        Fields = 'ORDEN'
      end>
    IndexName = 'IDX_MEDIDAS'
    StoreDefs = True
    TableName = 'MEDIDAS'
    Left = 80
    Top = 16
    object TIBXMedidasID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object TIBXMedidasLINK: TIntegerField
      FieldName = 'LINK'
    end
    object TIBXMedidasDESCRIPCION: TIBStringField
      FieldName = 'DESCRIPCION'
    end
    object TIBXMedidasORDEN: TIntegerField
      FieldName = 'ORDEN'
    end
  end
end
