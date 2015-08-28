inherited frmElegir_Empresa: TfrmElegir_Empresa
  Left = 411
  Top = 109
  BorderStyle = bsNone
  Caption = 'Elegir Empresa'
  ClientHeight = 206
  ClientWidth = 508
  Color = clWhite
  OldCreateOrder = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 68
    Width = 96
    Height = 16
    Caption = 'Elegir Empresa'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel [1]
    Left = 7
    Top = 180
    Width = 40
    Height = 16
    Caption = 'version'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object laVersion: TLabel [2]
    Left = 58
    Top = 180
    Width = 29
    Height = 16
    Caption = '0.0.0'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  inherited fpPadre: TPanel
    Width = 508
    Height = 65
    Color = clWhite
    object dtNombre: TDBText [0]
      Left = 5
      Top = 2
      Width = 302
      Height = 17
      DataField = 'NOMBRE'
      DataSource = dmIBData.dsPreferencias
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object fcLabel1: TLabel [1]
      Left = 5
      Top = 25
      Width = 119
      Height = 33
      Caption = 'APM/ERP'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -24
      Font.Name = 'Arial Black'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    inherited Panel1: TPanel
      Width = 508
    end
  end
  object cbEmpresas: TDBLookupComboBox
    Left = 8
    Top = 88
    Width = 489
    Height = 32
    DropDownWidth = 350
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Arial'
    Font.Style = []
    KeyField = 'ID'
    ListField = 'NOMBRE'
    ListSource = dsEmpresa
    ParentFont = False
    TabOrder = 1
  end
  object buAceptar: TButton
    Left = 422
    Top = 162
    Width = 75
    Height = 33
    Caption = 'Aceptar'
    Default = True
    TabOrder = 2
    OnClick = buAceptarClick
  end
  object buCancelar: TButton
    Left = 343
    Top = 162
    Width = 75
    Height = 33
    Caption = 'Cancelar'
    ModalResult = 2
    TabOrder = 3
  end
  object dsEmpresa: TDataSource
    DataSet = TEmpresas
    Left = 272
    Top = 76
  end
  object TEmpresas: TIBTable
    Database = dmIBModulo.ibInformar
    Transaction = dmIBModulo.ibInformarTransaccion
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NOMBRE'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'NOMBRE_AWR'
        DataType = ftString
        Size = 50
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY82'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end>
    StoreDefs = True
    TableName = 'EMPRESAS'
    Left = 240
    Top = 76
    object TEmpresasID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object TEmpresasNOMBRE: TIBStringField
      FieldName = 'NOMBRE'
      Size = 100
    end
    object TEmpresasNOMBRE_AWR: TIBStringField
      FieldName = 'NOMBRE_AWR'
      Size = 50
    end
  end
end
