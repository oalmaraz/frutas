inherited frmCapturar_presentaciones: TfrmCapturar_presentaciones
  Left = 303
  Top = 204
  Caption = 'Presentaciones'
  PixelsPerInch = 96
  TextHeight = 13
  inherited paLienzo: TPanel
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 56
      Height = 13
      Caption = 'Descripcion'
    end
    object deDescripcion: TDBEdit
      Left = 8
      Top = 24
      Width = 350
      Height = 21
      DataField = 'DESCRIPCION'
      DataSource = dsFuente
      TabOrder = 0
    end
  end
  inherited TCapturar: TIBTable
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    IndexFieldNames = 'ID'
    MasterFields = 'R_ID'
    TableName = 'PRESENTACIONES'
    object TCapturarID: TIntegerField [0]
      FieldName = 'ID'
    end
    object TCapturarDESCRIPCION: TIBStringField [1]
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
        Value = 'PRESENTACIONES'
      end>
  end
end
