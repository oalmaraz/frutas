inherited frmCapturar_monedas: TfrmCapturar_monedas
  Left = 318
  Top = 170
  Caption = 'Moneda'
  ClientHeight = 458
  ClientWidth = 921
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited paLienzo: TPanel
    Width = 921
    Height = 142
    Align = alTop
    object Label1: TLabel
      Left = 13
      Top = 8
      Width = 27
      Height = 13
      Caption = 'Cla&ve'
      FocusControl = deClave
    end
    object Label2: TLabel
      Left = 176
      Top = 49
      Width = 36
      Height = 13
      Caption = '&Paridad'
      FocusControl = deParidad
    end
    object Label3: TLabel
      Left = 176
      Top = 8
      Width = 56
      Height = 13
      Caption = 'Descripcio&n'
      FocusControl = deDescripcion
    end
    object Label4: TLabel
      Left = 13
      Top = 49
      Width = 66
      Height = 13
      Caption = 'Moneda Base'
    end
    object Label5: TLabel
      Left = 493
      Top = 8
      Width = 128
      Height = 13
      Caption = 'Fecha Ultima Actualizacion'
      Transparent = True
    end
    object Label6: TLabel
      Left = 13
      Top = 88
      Width = 103
      Height = 13
      Caption = 'Moneda Internacional'
    end
    object Label7: TLabel
      Left = 13
      Top = 126
      Width = 37
      Height = 13
      Caption = 'Historial'
    end
    object Label8: TLabel
      Left = 164
      Top = 68
      Width = 8
      Height = 13
      Caption = '='
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 406
      Top = 49
      Width = 103
      Height = 13
      Caption = 'Moneda Internacional'
    end
    object buMBase: TSpeedButton
      Left = 284
      Top = 63
      Width = 23
      Height = 22
      Cursor = crHandPoint
      Caption = '.$.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = buMBaseClick
    end
    object deClave: TDBEdit
      Left = 13
      Top = 24
      Width = 156
      Height = 21
      DataField = 'CLAVE'
      DataSource = dsFuente
      TabOrder = 0
    end
    object deDescripcion: TDBEdit
      Left = 176
      Top = 24
      Width = 313
      Height = 21
      DataField = 'DESCRIPCION'
      DataSource = dsFuente
      TabOrder = 1
    end
    object deParidad: TDBEdit
      Left = 176
      Top = 64
      Width = 105
      Height = 21
      DataField = 'PARIDAD'
      DataSource = dsFuente
      TabOrder = 4
      OnChange = deParidadChange
    end
    object edMonedaBase: TEdit
      Left = 13
      Top = 64
      Width = 148
      Height = 21
      TabStop = False
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
      Text = 'edMonedaBase'
    end
    object edMonedaInternacional: TEdit
      Left = 13
      Top = 103
      Width = 148
      Height = 21
      TabStop = False
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
      Text = 'edMonedaInternacional'
    end
    object dePDescripcion: TDBEdit
      Left = 406
      Top = 64
      Width = 219
      Height = 21
      TabStop = False
      CharCase = ecUpperCase
      Color = clBackground
      DataField = 'DESCRIPCION'
      DataSource = dsFuente
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
    end
    object deFUltAct: TDBEdit
      Left = 493
      Top = 24
      Width = 132
      Height = 21
      TabStop = False
      CharCase = ecUpperCase
      Color = clBackground
      DataField = 'FECHA_ULT_ACT'
      DataSource = dsFuente
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object dxDBCurrencyEdit1: TDBEdit
      Left = 312
      Top = 64
      Width = 89
      Height = 21
      Color = clBtnFace
      DataField = 'PARIDAD_FALSA'
      DataSource = dsFuente
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
    end
  end
  inherited fpPadre: TPanel
    Width = 921
    inherited Panel1: TPanel
      Width = 921
    end
  end
  inherited Panel2: TPanel
    Top = 436
    Width = 921
  end
  object dgHistorico: TDBGrid [3]
    Left = 0
    Top = 202
    Width = 921
    Height = 234
    Align = alClient
    DataSource = dsMonedas_Historico
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  inherited TCapturar: TIBTable
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    AfterOpen = TCapturarAfterOpen
    OnCalcFields = nil
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
      end
      item
        Name = 'FECHA_ULT_ACT'
        DataType = ftDateTime
      end
      item
        Name = 'PARIDAD'
        DataType = ftFloat
      end
      item
        Name = 'PARIDAD_FALSA'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY10'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end>
    IndexFieldNames = 'ID'
    MasterFields = 'R_ID'
    StoreDefs = True
    TableName = 'MONEDAS'
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
    object TCapturarFECHA_ULT_ACT: TDateTimeField [3]
      FieldName = 'FECHA_ULT_ACT'
    end
    object TCapturarPARIDAD: TFloatField [4]
      FieldName = 'PARIDAD'
    end
    object TCapturarPARIDAD_FALSA: TFloatField [5]
      FieldName = 'PARIDAD_FALSA'
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
        Value = 'MONEDAS'
      end>
  end
  object qyMonedas_Historico: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    DataSource = dsFuente
    SQL.Strings = (
      'SELECT *'
      'FROM HISTORICO_MONEDAS(:ID)')
    Left = 24
    Top = 336
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptUnknown
      end>
    object qyMonedas_HistoricoR_ID: TIntegerField
      FieldName = 'R_ID'
      Origin = 'HISTORICO_MONEDAS.R_ID'
    end
    object qyMonedas_HistoricoR_MONEDA: TIntegerField
      FieldName = 'R_MONEDA'
      Origin = 'HISTORICO_MONEDAS.R_MONEDA'
    end
    object qyMonedas_HistoricoR_FECHA_CAMBIO: TDateTimeField
      FieldName = 'R_FECHA_CAMBIO'
      Origin = 'HISTORICO_MONEDAS.R_FECHA_CAMBIO'
      DisplayFormat = 'dd/mm/yyyy hh:mm:ss am/pm'
    end
    object qyMonedas_HistoricoR_MBASE: TIntegerField
      FieldName = 'R_MBASE'
      Origin = 'HISTORICO_MONEDAS.R_MBASE'
    end
    object qyMonedas_HistoricoR_MBASE_PARIDAD: TFloatField
      FieldName = 'R_MBASE_PARIDAD'
      Origin = 'HISTORICO_MONEDAS.R_MBASE_PARIDAD'
    end
    object qyMonedas_HistoricoR_MBASE_CLAVE: TIBStringField
      FieldName = 'R_MBASE_CLAVE'
      Origin = 'HISTORICO_MONEDAS.R_MBASE_CLAVE'
      Size = 10
    end
    object qyMonedas_HistoricoR_ROW: TIntegerField
      FieldName = 'R_ROW'
      Origin = 'HISTORICO_MONEDAS.R_ROW'
    end
    object qyMonedas_HistoricoR_PARIDAD_FALSA: TFloatField
      FieldName = 'R_PARIDAD_FALSA'
      Origin = 'HISTORICO_MONEDAS.R_PARIDAD_FALSA'
    end
    object qyMonedas_HistoricoR_PARIDAD: TFloatField
      FieldName = 'R_PARIDAD'
      Origin = 'HISTORICO_MONEDAS.R_PARIDAD'
    end
  end
  object dsMonedas_Historico: TDataSource
    DataSet = qyMonedas_Historico
    Left = 56
    Top = 336
  end
  object spADD_MONEDAS_HISTORICO: TIBStoredProc
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    StoredProcName = 'ADD_MONEDAS_HISTORICO'
    Left = 120
    Top = 368
    ParamData = <
      item
        DataType = ftInteger
        Name = 'P_ID'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'P_PARIDAD'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'P_PARIDAD_FALSA'
        ParamType = ptInput
      end>
  end
end
