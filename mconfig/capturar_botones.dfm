inherited frmCapturar_botones: TfrmCapturar_botones
  Left = 316
  Top = 204
  Caption = 'Botones'
  ClientHeight = 331
  ClientWidth = 672
  ExplicitWidth = 688
  ExplicitHeight = 370
  PixelsPerInch = 96
  TextHeight = 13
  inherited paLienzo: TPanel
    Width = 672
    Height = 249
    ExplicitWidth = 672
    ExplicitHeight = 249
    object Label1: TLabel
      Left = 12
      Top = 16
      Width = 28
      Height = 13
      Caption = 'Boton'
    end
  end
  inherited fpPadre: TPanel
    Width = 672
    ExplicitWidth = 672
    inherited Panel1: TPanel
      Width = 672
      ExplicitWidth = 672
    end
  end
  inherited Panel2: TPanel
    Top = 309
    Width = 672
    ExplicitTop = 309
    ExplicitWidth = 672
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
        Name = 'RDB$PRIMARY83'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end>
    IndexFieldNames = 'ID'
    MasterFields = 'R_ID'
    MasterSource = frmExplorar_botones.dsFuente
    StoreDefs = True
    TableName = 'BOTONES'
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
        Value = 'BOTONES'
      end>
  end
end
