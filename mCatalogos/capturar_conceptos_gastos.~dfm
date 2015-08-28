inherited frmCapturar_Conceptos_Gastos: TfrmCapturar_Conceptos_Gastos
  Left = 283
  Top = 281
  Caption = 'Conceptos Gastos'
  PixelsPerInch = 96
  TextHeight = 13
  inherited paLienzo: TPanel
    object Label7: TLabel
      Left = 8
      Top = 8
      Width = 46
      Height = 13
      Caption = 'C&oncepto'
      FocusControl = deConcepto
      Transparent = True
    end
    object Label23: TLabel
      Left = 344
      Top = 7
      Width = 36
      Height = 13
      Caption = '&Porc. %'
      FocusControl = dePorc
      Transparent = True
    end
    object deConcepto: TDBEdit
      Left = 8
      Top = 24
      Width = 332
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CONCEPTO'
      DataSource = dsFuente
      TabOrder = 0
    end
    object dePorc: TDBEdit
      Left = 344
      Top = 23
      Width = 56
      Height = 21
      DataField = 'PORC'
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
        Name = 'CONCEPTO'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'PORC'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY309'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end>
    IndexFieldNames = 'ID'
    MasterFields = 'R_ID'
    StoreDefs = True
    TableName = 'CONCEPTOS_GASTOS'
    object TCapturarID: TIntegerField [0]
      FieldName = 'ID'
      Required = True
    end
    object TCapturarCONCEPTO: TIBStringField [1]
      FieldName = 'CONCEPTO'
      Size = 100
    end
    object TCapturarPORC: TFloatField [2]
      FieldName = 'PORC'
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
        Value = 'CONCEPTOS_GASTOS'
      end>
  end
end
