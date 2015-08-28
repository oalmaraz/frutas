inherited frmCapturar_colores: TfrmCapturar_colores
  Left = 498
  Top = 148
  Caption = 'Colores'
  PixelsPerInch = 96
  TextHeight = 13
  inherited paLienzo: TPanel
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 37
      Height = 13
      Caption = 'Nombre'
    end
    object Label2: TLabel
      Left = 8
      Top = 48
      Width = 24
      Height = 13
      Caption = 'Color'
    end
    object Label3: TLabel
      Left = 158
      Top = 148
      Width = 29
      Height = 13
      Caption = 'Orden'
    end
    object Label4: TLabel
      Left = 8
      Top = 88
      Width = 54
      Height = 13
      Caption = 'Color Texto'
    end
    object Label5: TLabel
      Left = 158
      Top = 48
      Width = 24
      Height = 13
      Caption = 'Valor'
    end
    object Label6: TLabel
      Left = 158
      Top = 88
      Width = 24
      Height = 13
      Caption = 'Valor'
    end
    object edOrden: TDBEdit
      Left = 158
      Top = 164
      Width = 49
      Height = 21
      DataField = 'ORDEN'
      DataSource = dsFuente
      TabOrder = 8
    end
    object cbColores: TDBLookupComboBox
      Left = 8
      Top = 64
      Width = 145
      Height = 21
      DataField = 'VALOR'
      DataSource = dsFuente
      TabOrder = 1
    end
    object cbMostrar: TDBCheckBox
      Left = 8
      Top = 129
      Width = 105
      Height = 17
      Caption = 'Mostrar en POS'
      DataField = 'MOSTRAR_POS'
      DataSource = dsFuente
      TabOrder = 5
      ValueChecked = 'Si'
      ValueUnchecked = 'No'
    end
    object edNombre: TDBEdit
      Left = 8
      Top = 24
      Width = 273
      Height = 21
      DataField = 'NOMBRE'
      DataSource = dsFuente
      TabOrder = 0
    end
    object cbColorTexto: TDBLookupComboBox
      Left = 8
      Top = 104
      Width = 145
      Height = 21
      DataField = 'COLOR_TEXTO'
      DataSource = dsFuente
      TabOrder = 3
    end
    object edColor: TDBEdit
      Left = 158
      Top = 64
      Width = 123
      Height = 21
      DataField = 'VALOR'
      DataSource = dsFuente
      TabOrder = 2
    end
    object edColorTexto: TDBEdit
      Left = 158
      Top = 104
      Width = 123
      Height = 21
      DataField = 'COLOR_TEXTO'
      DataSource = dsFuente
      TabOrder = 4
    end
    object cbPigmento: TDBCheckBox
      Left = 8
      Top = 164
      Width = 113
      Height = 17
      Caption = 'Es Color Pigmento'
      DataField = 'PIGMENTOS'
      DataSource = dsFuente
      TabOrder = 7
      ValueChecked = 'Si'
      ValueUnchecked = 'No'
    end
    object cbProceso: TDBCheckBox
      Left = 8
      Top = 147
      Width = 113
      Height = 17
      Caption = 'Es Proceso'
      DataField = 'PROCESOS'
      DataSource = dsFuente
      TabOrder = 6
      ValueChecked = 'Si'
      ValueUnchecked = 'No'
    end
  end
  inherited qyBotones: TIBQuery
    Left = 119
    Top = 368
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
      end
      item
        Name = 'VALOR'
        DataType = ftInteger
      end
      item
        Name = 'COLOR_TEXTO'
        DataType = ftInteger
      end
      item
        Name = 'MOSTRAR_POS'
        Attributes = [faFixed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'PROCESOS'
        Attributes = [faFixed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'PIGMENTOS'
        Attributes = [faFixed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'ORDEN'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY30'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end>
    IndexFieldNames = 'ID'
    MasterFields = 'R_ID'
    StoreDefs = True
    TableName = 'COLORES'
    object TCapturarID: TIntegerField [0]
      FieldName = 'ID'
    end
    object TCapturarNOMBRE: TIBStringField [1]
      FieldName = 'NOMBRE'
      Size = 50
    end
    object TCapturarVALOR: TIntegerField [2]
      FieldName = 'VALOR'
    end
    object TCapturarORDEN: TIntegerField [3]
      FieldName = 'ORDEN'
    end
    object TCapturarMOSTRAR_POS: TIBStringField [4]
      FieldName = 'MOSTRAR_POS'
      Size = 2
    end
    object TCapturarCOLOR_TEXTO: TIntegerField [5]
      FieldName = 'COLOR_TEXTO'
    end
    object TCapturarPROCESOS: TIBStringField [6]
      FieldName = 'PROCESOS'
      FixedChar = True
      Size = 2
    end
    object TCapturarPIGMENTOS: TIBStringField [7]
      FieldName = 'PIGMENTOS'
      Size = 2
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
        Value = 'COLORES'
      end>
  end
end
