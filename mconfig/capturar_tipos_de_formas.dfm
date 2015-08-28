inherited frmCapturar_tipos_de_formas: TfrmCapturar_tipos_de_formas
  Left = 268
  Top = 111
  Caption = 'Tipos de Formas'
  PixelsPerInch = 96
  TextHeight = 13
  inherited paLienzo: TPanel
    object Label1: TLabel
      Left = 12
      Top = 16
      Width = 29
      Height = 13
      Caption = '&Forma'
      FocusControl = deNombre
    end
    object deNombre: TDBEdit
      Left = 12
      Top = 32
      Width = 337
      Height = 21
      DataField = 'NOMBRE'
      DataSource = dsFuente
      TabOrder = 0
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
        Name = 'NOMBRE'
        DataType = ftString
        Size = 50
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY81'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end>
    IndexFieldNames = 'ID'
    MasterFields = 'R_ID'
    StoreDefs = True
    TableName = 'FORMAS'
    object TCapturarID: TIntegerField [0]
      FieldName = 'ID'
      Required = True
    end
    object TCapturarNOMBRE: TIBStringField [1]
      FieldName = 'NOMBRE'
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
        Value = 'FORMAS'
      end>
  end
end
