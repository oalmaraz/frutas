inherited frmCapturar_financiamientos: TfrmCapturar_financiamientos
  Left = 315
  Top = 191
  Caption = 'Financiamientos'
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
      Transparent = True
    end
    object Label2: TLabel
      Left = 138
      Top = 8
      Width = 56
      Height = 13
      Caption = 'D&escripcion'
      FocusControl = deDescripcion
      Transparent = True
    end
    object Label3: TLabel
      Left = 468
      Top = 8
      Width = 51
      Height = 13
      Caption = '&Porcentaje'
      FocusControl = dePorcentaje
      Transparent = True
    end
    object deClave: TDBEdit
      Left = 8
      Top = 24
      Width = 124
      Height = 21
      DataField = 'CLAVE'
      DataSource = dsFuente
      TabOrder = 0
    end
    object deDescripcion: TDBEdit
      Left = 138
      Top = 24
      Width = 324
      Height = 21
      DataField = 'DESCRIPCION'
      DataSource = dsFuente
      MaxLength = 20
      TabOrder = 1
    end
    object dePorcentaje: TDBEdit
      Left = 468
      Top = 24
      Width = 69
      Height = 21
      DataField = 'PORCENTAJE'
      DataSource = dsFuente
      TabOrder = 2
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
        Size = 20
      end
      item
        Name = 'DESCRIPCION'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'PORCENTAJE'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY45'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end>
    IndexFieldNames = 'ID'
    MasterFields = 'R_ID'
    MasterSource = frmExplorar_financiamientos.dsFuente
    StoreDefs = True
    TableName = 'FINANCIAMIENTOS'
    object TCapturarID: TIntegerField [0]
      FieldName = 'ID'
      Required = True
    end
    object TCapturarCLAVE: TIBStringField [1]
      FieldName = 'CLAVE'
    end
    object TCapturarDESCRIPCION: TIBStringField [2]
      FieldName = 'DESCRIPCION'
      Size = 100
    end
    object TCapturarPORCENTAJE: TFloatField [3]
      FieldName = 'PORCENTAJE'
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
        Value = 'FINANCIAMIENTOS'
      end>
  end
end
