inherited frmCapturar_tabuladores: TfrmCapturar_tabuladores
  Left = 416
  Top = 368
  Caption = 'Tabuladores'
  ClientWidth = 653
  PixelsPerInch = 96
  TextHeight = 13
  inherited paLienzo: TPanel
    Width = 653
    object Label1: TLabel
      Left = 11
      Top = 8
      Width = 27
      Height = 13
      Caption = 'Cla&ve'
      FocusControl = deClave
      Transparent = True
    end
    object Label2: TLabel
      Left = 170
      Top = 8
      Width = 62
      Height = 13
      Caption = '&Limite Inferior'
      FocusControl = deLimiteInf
      Transparent = True
    end
    object Label3: TLabel
      Left = 296
      Top = 8
      Width = 69
      Height = 13
      Caption = 'Limite &Superior'
      FocusControl = deLimiteSup
      Transparent = True
    end
    object Label4: TLabel
      Left = 422
      Top = 8
      Width = 57
      Height = 13
      Caption = '&Monto Base'
      FocusControl = deMonto
      Transparent = True
    end
    object Label5: TLabel
      Left = 549
      Top = 8
      Width = 51
      Height = 13
      Caption = '&Porcentaje'
      FocusControl = dePorcentaje
      Transparent = True
    end
    object deClave: TDBEdit
      Left = 11
      Top = 24
      Width = 153
      Height = 21
      DataField = 'CLAVE'
      DataSource = dsFuente
      TabOrder = 0
    end
    object deLimiteInf: TDBEdit
      Left = 170
      Top = 24
      Width = 121
      Height = 21
      DataField = 'LIMITE_INF'
      DataSource = dsFuente
      TabOrder = 1
    end
    object deLimiteSup: TDBEdit
      Left = 296
      Top = 24
      Width = 121
      Height = 21
      DataField = 'LIMITE_SUP'
      DataSource = dsFuente
      TabOrder = 2
    end
    object deMonto: TDBEdit
      Left = 422
      Top = 24
      Width = 121
      Height = 21
      DataField = 'BASE_MONTO'
      DataSource = dsFuente
      TabOrder = 3
    end
    object dePorcentaje: TDBEdit
      Left = 549
      Top = 24
      Width = 88
      Height = 21
      DataField = 'PORCENTAJE'
      DataSource = dsFuente
      TabOrder = 4
    end
  end
  inherited fpPadre: TPanel
    Width = 653
    inherited Panel1: TPanel
      Width = 653
    end
  end
  inherited Panel2: TPanel
    Width = 653
  end
  inherited TCapturar: TIBTable
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    IndexFieldNames = 'ID'
    MasterFields = 'R_ID'
    TableName = 'TABULADORES'
    object TCapturarID: TIntegerField [0]
      FieldName = 'ID'
      Required = True
    end
    object TCapturarCLAVE: TIBStringField [1]
      FieldName = 'CLAVE'
    end
    object TCapturarLIMITE_INF: TFloatField [2]
      FieldName = 'LIMITE_INF'
    end
    object TCapturarLIMITE_SUP: TFloatField [3]
      FieldName = 'LIMITE_SUP'
    end
    object TCapturarBASE_MONTO: TFloatField [4]
      FieldName = 'BASE_MONTO'
    end
    object TCapturarPORCENTAJE: TFloatField [5]
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
        Value = 'TABULADORES'
      end>
  end
end
