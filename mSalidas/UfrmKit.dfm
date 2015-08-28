object frmKit: TfrmKit
  Left = 516
  Top = 154
  Width = 490
  Height = 340
  ActiveControl = edMaterial
  Caption = 'Kit'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object laMaterial: TLabel
    Left = 8
    Top = 9
    Width = 71
    Height = 13
    Caption = '&Material (Enter)'
    FocusControl = edMaterial
    Transparent = True
  end
  object Label10: TLabel
    Left = 151
    Top = 8
    Width = 56
    Height = 13
    Caption = 'Descripcion'
    Transparent = True
  end
  object Label1: TLabel
    Left = 8
    Top = 104
    Width = 73
    Height = 13
    Caption = 'BOM Ingenieria'
  end
  object Label2: TLabel
    Left = 8
    Top = 52
    Width = 42
    Height = 13
    Caption = 'Cantidad'
  end
  object paBotones: TPanel
    Left = 0
    Top = 268
    Width = 482
    Height = 38
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 4
    object buAgregar: TBitBtn
      Left = 264
      Top = 7
      Width = 97
      Height = 25
      Caption = 'Agregar'
      ModalResult = 1
      TabOrder = 0
      OnClick = buAgregarClick
    end
    object buCancelar: TBitBtn
      Left = 367
      Top = 7
      Width = 97
      Height = 25
      Caption = 'Cancelar'
      ModalResult = 2
      TabOrder = 1
    end
  end
  object edMaterial: TEdit
    Left = 8
    Top = 24
    Width = 140
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 0
    OnKeyPress = edMaterialKeyPress
  end
  object edDMaterial: TEdit
    Left = 151
    Top = 24
    Width = 311
    Height = 21
    TabStop = False
    Color = clBackground
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
  end
  object dgPartidas: TDBGrid
    Left = 8
    Top = 120
    Width = 457
    Height = 129
    TabStop = False
    DataSource = dsBomIng
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object edCantidad: TEdit
    Left = 7
    Top = 68
    Width = 140
    Height = 21
    TabOrder = 2
  end
  object qyBomIng: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    SQL.Strings = (
      'SELECT B.*, C.NOMBRE R_COLOR_N'
      'FROM MATERIALES_BOM_ING B LEFT JOIN COLORES C ON B.COLOR = C.ID'
      'WHERE MATERIAL = :P_MATERIAL')
    Left = 368
    Top = 184
    ParamData = <
      item
        DataType = ftString
        Name = 'P_MATERIAL'
        ParamType = ptUnknown
        Value = '0'
      end>
    object qyBomIngID: TIntegerField
      FieldName = 'ID'
      Origin = 'MATERIALES_BOM_ING.ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qyBomIngMATERIAL: TIntegerField
      FieldName = 'MATERIAL'
      Origin = 'MATERIALES_BOM_ING.MATERIAL'
      Required = True
    end
    object qyBomIngCOLOR: TIntegerField
      FieldName = 'COLOR'
      Origin = 'MATERIALES_BOM_ING.COLOR'
    end
    object qyBomIngFECHA_ALTA: TDateTimeField
      FieldName = 'FECHA_ALTA'
      Origin = 'MATERIALES_BOM_ING.FECHA_ALTA'
    end
    object qyBomIngFECHA_ULT_ACT: TDateTimeField
      FieldName = 'FECHA_ULT_ACT'
      Origin = 'MATERIALES_BOM_ING.FECHA_ULT_ACT'
    end
    object qyBomIngOBSERVACIONES: TBlobField
      FieldName = 'OBSERVACIONES'
      Origin = 'MATERIALES_BOM_ING.OBSERVACIONES'
      ProviderFlags = [pfInUpdate]
      BlobType = ftBlob
      Size = 8
    end
    object qyBomIngESTATUS: TIBStringField
      FieldName = 'ESTATUS'
      Origin = 'MATERIALES_BOM_ING.ESTATUS'
    end
    object qyBomIngR_COLOR_N: TIBStringField
      FieldName = 'R_COLOR_N'
      Origin = 'COLORES.NOMBRE'
      Size = 50
    end
  end
  object dsBomIng: TDataSource
    DataSet = qyBomIng
    Left = 400
    Top = 184
  end
  object spA_KIT_PEDIDO: TIBStoredProc
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    StoredProcName = 'A_KIT_PEDIDO'
    Left = 336
    Top = 184
    ParamData = <
      item
        DataType = ftInteger
        Name = 'P_PEDIDO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'P_BOM_ING'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'P_CANTIDAD'
        ParamType = ptInput
      end>
  end
end
