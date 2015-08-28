inherited frmCapturar_unidades: TfrmCapturar_unidades
  Left = 345
  Top = 233
  Caption = 'Unidades'
  PixelsPerInch = 96
  TextHeight = 13
  inherited paLienzo: TPanel
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 27
      Height = 13
      Caption = 'Cla&ve'
      FocusControl = deClave
    end
    object Label2: TLabel
      Left = 119
      Top = 8
      Width = 56
      Height = 13
      Caption = 'Descripcio&n'
      FocusControl = deDescripcion
    end
    object deClave: TDBEdit
      Left = 8
      Top = 24
      Width = 105
      Height = 21
      DataField = 'CLAVE'
      DataSource = dsFuente
      TabOrder = 0
    end
    object deDescripcion: TDBEdit
      Left = 119
      Top = 24
      Width = 250
      Height = 21
      DataField = 'DESCRIPCION'
      DataSource = dsFuente
      TabOrder = 1
    end
  end
  inherited TCapturar: TIBTable
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
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
        Name = 'RDB$PRIMARY15'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end>
    IndexFieldNames = 'ID'
    MasterFields = 'R_ID'
    MasterSource = frmExplorar_unidades.dsFuente
    StoreDefs = True
    TableName = 'UNIDADES'
    object TCapturarID: TIntegerField [0]
      FieldName = 'ID'
      Required = True
    end
    object TCapturarCLAVE: TIBStringField [1]
      FieldName = 'CLAVE'
      Size = 10
    end
    object TCapturarDESCRIPCION: TIBStringField [2]
      FieldName = 'DESCRIPCION'
      Size = 50
    end
  end
  inherited spID: TIBStoredProc
    ParamData = <
      item
        DataType = ftInteger
        Name = 'R_ID'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'P_QUIEN'
        ParamType = ptInput
        Value = 'UNIDADES'
      end>
  end
end
