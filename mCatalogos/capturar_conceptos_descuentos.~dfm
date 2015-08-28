inherited frmCapturar_conceptos_descuentos: TfrmCapturar_conceptos_descuentos
  Left = 267
  Top = 186
  Caption = 'Conceptos Descuentos'
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
      Left = 142
      Top = 8
      Width = 56
      Height = 13
      Caption = 'Descripcio&n'
      FocusControl = deDescripcion
    end
    object Label3: TLabel
      Left = 462
      Top = 8
      Width = 39
      Height = 13
      Caption = 'De&sc. %'
      FocusControl = ceDescuento
    end
    object deClave: TDBEdit
      Left = 8
      Top = 24
      Width = 129
      Height = 21
      DataField = 'CLAVE'
      DataSource = dsFuente
      TabOrder = 0
    end
    object deDescripcion: TDBEdit
      Left = 142
      Top = 24
      Width = 315
      Height = 21
      DataField = 'DESCRIPCION'
      DataSource = dsFuente
      TabOrder = 1
    end
    object ceDescuento: TDBEdit
      Left = 462
      Top = 24
      Width = 83
      Height = 21
      DataField = 'DESCUENTO_PORC'
      DataSource = dsFuente
      TabOrder = 2
    end
  end
  inherited qyBotones: TIBQuery
    Left = 88
    Top = 336
  end
  inherited TCapturar: TIBTable
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    IndexFieldNames = 'ID'
    MasterFields = 'R_ID'
    MasterSource = frmExplorar_Conceptos_Descuentos.dsFuente
    TableName = 'CONCEPTOS_DESCUENTOS_NC'
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
    object TCapturarDESCUENTO_PORC: TFloatField [3]
      FieldName = 'DESCUENTO_PORC'
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
        Value = 'DESCUENTOS'
      end>
  end
end
