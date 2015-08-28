object frmConsultaPrecios: TfrmConsultaPrecios
  Left = 159
  Top = 68
  ActiveControl = edCodigo
  BorderStyle = bsNone
  Caption = 'Consulta de Precios'
  ClientHeight = 525
  ClientWidth = 936
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  PopupMenu = ppFunciones
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object dgExplorar: TDBGrid
    Left = 0
    Top = 129
    Width = 936
    Height = 330
    Align = alClient
    BorderStyle = bsNone
    Color = clWhite
    DataSource = dsBusqueda
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object paEncabezado: TPanel
    Left = 0
    Top = 0
    Width = 936
    Height = 129
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 1
    object Label7: TLabel
      Left = 353
      Top = 10
      Width = 63
      Height = 19
      Caption = '&Producto'
      FocusControl = edCodigo
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label1: TLabel
      Left = 492
      Top = 72
      Width = 43
      Height = 19
      Caption = 'Precio'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 587
      Top = 72
      Width = 59
      Height = 19
      Caption = '% Desc.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label3: TLabel
      Left = 675
      Top = 72
      Width = 88
      Height = 19
      Caption = 'Precio Venta'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label4: TLabel
      Left = 271
      Top = 72
      Width = 81
      Height = 19
      Caption = 'Descripcion'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label5: TLabel
      Left = 65
      Top = 72
      Width = 38
      Height = 19
      Caption = 'Clave'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object laCom1: TLabel
      Left = 704
      Top = 22
      Width = 52
      Height = 11
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'com1: off'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Bevel1: TBevel
      Left = 0
      Top = 123
      Width = 936
      Height = 6
      Align = alBottom
      Shape = bsBottomLine
    end
    object edCodigo: TEdit
      Left = 8
      Top = 35
      Width = 761
      Height = 27
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 100
      ParentFont = False
      TabOrder = 0
      OnKeyPress = edCodigoKeyPress
    end
    object deClave: TDBEdit
      Left = 8
      Top = 94
      Width = 152
      Height = 27
      TabStop = False
      DataField = 'R_CLAVE'
      DataSource = dsBusqueda
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object deDescripcion: TDBEdit
      Left = 163
      Top = 94
      Width = 297
      Height = 27
      TabStop = False
      DataField = 'R_DESCRIPCION'
      DataSource = dsBusqueda
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object dePrecio: TDBEdit
      Left = 463
      Top = 94
      Width = 100
      Height = 27
      TabStop = False
      DataField = 'R_PRECIO'
      DataSource = dsBusqueda
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object dePorc: TDBEdit
      Left = 566
      Top = 94
      Width = 100
      Height = 27
      TabStop = False
      DataField = 'R_OFERTA_PORC'
      DataSource = dsBusqueda
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
    object deVenta: TDBEdit
      Left = 669
      Top = 94
      Width = 100
      Height = 27
      TabStop = False
      DataField = 'R_PRECIO_OFERTA'
      DataSource = dsBusqueda
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
    end
    object deId: TDBEdit
      Left = 832
      Top = 94
      Width = 88
      Height = 27
      TabStop = False
      DataField = 'R_ID'
      DataSource = dsBusqueda
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
    end
  end
  object paFunciones: TPanel
    Left = 0
    Top = 459
    Width = 936
    Height = 66
    Align = alBottom
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 2
    object Panel1: TPanel
      Left = 840
      Top = 0
      Width = 70
      Height = 66
      Align = alLeft
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = clWhite
      TabOrder = 0
      object Label17: TLabel
        Left = 2
        Top = 2
        Width = 66
        Height = 16
        Align = alTop
        Alignment = taCenter
        Caption = 'F12'
        Color = 7697919
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
      end
      object laF12: TLabel
        Left = 2
        Top = 18
        Width = 66
        Height = 46
        Cursor = crHandPoint
        Align = alClient
        Alignment = taCenter
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
      end
    end
    object Panel2: TPanel
      Left = 770
      Top = 0
      Width = 70
      Height = 66
      Align = alLeft
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = clWhite
      TabOrder = 1
      object Label19: TLabel
        Left = 2
        Top = 2
        Width = 66
        Height = 16
        Align = alTop
        Alignment = taCenter
        Caption = 'F11'
        Color = 7697919
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
      end
      object laF11: TLabel
        Left = 2
        Top = 18
        Width = 66
        Height = 46
        Cursor = crHandPoint
        Align = alClient
        Alignment = taCenter
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
        WordWrap = True
      end
    end
    object Panel3: TPanel
      Left = 700
      Top = 0
      Width = 70
      Height = 66
      Align = alLeft
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = clWhite
      TabOrder = 2
      object Label21: TLabel
        Left = 2
        Top = 2
        Width = 66
        Height = 16
        Align = alTop
        Alignment = taCenter
        Caption = 'F10'
        Color = 7697919
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
      end
      object laF10: TLabel
        Left = 2
        Top = 18
        Width = 66
        Height = 46
        Cursor = crHandPoint
        Align = alClient
        Alignment = taCenter
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
        WordWrap = True
      end
    end
    object Panel4: TPanel
      Left = 630
      Top = 0
      Width = 70
      Height = 66
      Align = alLeft
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = clWhite
      TabOrder = 3
      object Label23: TLabel
        Left = 2
        Top = 2
        Width = 66
        Height = 16
        Align = alTop
        Alignment = taCenter
        Caption = 'F9'
        Color = 7697919
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
      end
      object laF9: TLabel
        Left = 2
        Top = 18
        Width = 66
        Height = 46
        Cursor = crHandPoint
        Align = alClient
        Alignment = taCenter
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
        WordWrap = True
      end
    end
    object Panel5: TPanel
      Left = 560
      Top = 0
      Width = 70
      Height = 66
      Align = alLeft
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = clWhite
      TabOrder = 4
      object Label28: TLabel
        Left = 2
        Top = 2
        Width = 66
        Height = 16
        Align = alTop
        Alignment = taCenter
        Caption = 'F8'
        Color = 7697919
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
      end
      object laF8: TLabel
        Left = 2
        Top = 18
        Width = 66
        Height = 46
        Cursor = crHandPoint
        Align = alClient
        Alignment = taCenter
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
        WordWrap = True
      end
    end
    object Panel6: TPanel
      Left = 490
      Top = 0
      Width = 70
      Height = 66
      Align = alLeft
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = clWhite
      TabOrder = 5
      object Label33: TLabel
        Left = 2
        Top = 2
        Width = 66
        Height = 16
        Align = alTop
        Alignment = taCenter
        Caption = 'F7'
        Color = 7697919
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
      end
      object laF7: TLabel
        Left = 2
        Top = 18
        Width = 66
        Height = 46
        Cursor = crHandPoint
        Align = alClient
        Alignment = taCenter
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
        WordWrap = True
      end
    end
    object Panel7: TPanel
      Left = 420
      Top = 0
      Width = 70
      Height = 66
      Align = alLeft
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = clWhite
      TabOrder = 6
      object Label40: TLabel
        Left = 2
        Top = 2
        Width = 66
        Height = 16
        Align = alTop
        Alignment = taCenter
        Caption = 'F6'
        Color = 7697919
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
      end
      object laF6: TLabel
        Left = 2
        Top = 18
        Width = 66
        Height = 46
        Cursor = crHandPoint
        Align = alClient
        Alignment = taCenter
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
        WordWrap = True
      end
    end
    object Panel8: TPanel
      Left = 350
      Top = 0
      Width = 70
      Height = 66
      Align = alLeft
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = clWhite
      TabOrder = 7
      object Label42: TLabel
        Left = 2
        Top = 2
        Width = 66
        Height = 16
        Align = alTop
        Alignment = taCenter
        Caption = 'F5'
        Color = 7697919
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
      end
      object laF5: TLabel
        Left = 2
        Top = 18
        Width = 66
        Height = 46
        Cursor = crHandPoint
        Align = alClient
        Alignment = taCenter
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
        WordWrap = True
      end
    end
    object Panel9: TPanel
      Left = 280
      Top = 0
      Width = 70
      Height = 66
      Align = alLeft
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = clWhite
      TabOrder = 8
      object Label44: TLabel
        Left = 2
        Top = 2
        Width = 66
        Height = 16
        Align = alTop
        Alignment = taCenter
        Caption = 'F4'
        Color = 7697919
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
      end
      object laF4: TLabel
        Left = 2
        Top = 18
        Width = 66
        Height = 46
        Cursor = crHandPoint
        Align = alClient
        Alignment = taCenter
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
        WordWrap = True
      end
    end
    object Panel10: TPanel
      Left = 210
      Top = 0
      Width = 70
      Height = 66
      Align = alLeft
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = clWhite
      TabOrder = 9
      object Label46: TLabel
        Left = 2
        Top = 2
        Width = 66
        Height = 16
        Align = alTop
        Alignment = taCenter
        Caption = 'F3'
        Color = 7697919
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
      end
      object laF3: TLabel
        Left = 2
        Top = 18
        Width = 66
        Height = 46
        Cursor = crHandPoint
        Align = alClient
        Alignment = taCenter
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
        WordWrap = True
      end
    end
    object Panel11: TPanel
      Left = 140
      Top = 0
      Width = 70
      Height = 66
      Align = alLeft
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = clWhite
      TabOrder = 10
      object Label48: TLabel
        Left = 2
        Top = 2
        Width = 66
        Height = 16
        Align = alTop
        Alignment = taCenter
        Caption = 'F2'
        Color = 7697919
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
      end
      object laF2: TLabel
        Left = 2
        Top = 18
        Width = 66
        Height = 46
        Cursor = crHandPoint
        Align = alClient
        Alignment = taCenter
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
        WordWrap = True
      end
    end
    object Panel14: TPanel
      Left = 70
      Top = 0
      Width = 70
      Height = 66
      Align = alLeft
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = clWhite
      TabOrder = 11
      object Label6: TLabel
        Left = 2
        Top = 2
        Width = 66
        Height = 16
        Align = alTop
        Alignment = taCenter
        Caption = 'F1'
        Color = 7697919
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
      end
      object laF1: TLabel
        Left = 2
        Top = 18
        Width = 66
        Height = 46
        Cursor = crHandPoint
        Align = alClient
        Alignment = taCenter
        Caption = 'Agregar Partida'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
        WordWrap = True
        OnClick = laF1Click
      end
    end
    object Panel15: TPanel
      Left = 0
      Top = 0
      Width = 70
      Height = 66
      Align = alLeft
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = clWhite
      TabOrder = 12
      object Label9: TLabel
        Left = 2
        Top = 2
        Width = 66
        Height = 16
        Align = alTop
        Alignment = taCenter
        Caption = 'Esc'
        Color = 16761154
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
      end
      object laSalir: TLabel
        Left = 2
        Top = 18
        Width = 66
        Height = 46
        Cursor = crHandPoint
        Align = alClient
        Alignment = taCenter
        Caption = 'Menu Anterior'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
        WordWrap = True
        OnClick = laSalirClick
      end
    end
  end
  object qyBusqueda: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    OnCalcFields = qyBusquedaCalcFields
    SQL.Strings = (
      'SELECT *'
      
        'FROM TL_MATERIALES_PRECIOS(:P_ALMACEN, :P_CLIENTE, :P_EXTENSION,' +
        ' :P_MONEDA, :P_CLAVE, :P_CODIGO_BARRAS, :P_DESCRIPCION)')
    Left = 200
    Top = 219
    ParamData = <
      item
        DataType = ftString
        Name = 'P_ALMACEN'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'P_CLIENTE'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'P_EXTENSION'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'P_MONEDA'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'P_CLAVE'
        ParamType = ptUnknown
        Value = 'NADA'
      end
      item
        DataType = ftString
        Name = 'P_CODIGO_BARRAS'
        ParamType = ptUnknown
        Value = 'NADA'
      end
      item
        DataType = ftString
        Name = 'P_DESCRIPCION'
        ParamType = ptUnknown
        Value = 'NADA'
      end>
    object qyBusquedaR_ID: TIntegerField
      FieldName = 'R_ID'
      Origin = 'TL_MATERIALES_PRECIOS.R_ID'
    end
    object qyBusquedaR_CLAVE: TIBStringField
      FieldName = 'R_CLAVE'
      Origin = 'TL_MATERIALES_PRECIOS.R_CLAVE'
    end
    object qyBusquedaR_DESCRIPCION: TIBStringField
      FieldName = 'R_DESCRIPCION'
      Origin = 'TL_MATERIALES_PRECIOS.R_DESCRIPCION'
      Size = 100
    end
    object qyBusquedaR_CODIGO_BARRAS: TIBStringField
      FieldName = 'R_CODIGO_BARRAS'
      Origin = 'TL_MATERIALES_PRECIOS.R_CODIGO_BARRAS'
    end
    object qyBusquedaR_UNIDAD_BASE: TIntegerField
      FieldName = 'R_UNIDAD_BASE'
      Origin = 'TL_MATERIALES_PRECIOS.R_UNIDAD_BASE'
    end
    object qyBusquedaR_UNIDAD_BASE_C: TIBStringField
      FieldName = 'R_UNIDAD_BASE_C'
      Origin = 'TL_MATERIALES_PRECIOS.R_UNIDAD_BASE_C'
      Size = 10
    end
    object qyBusquedaR_UNIDAD_BASE_D: TIBStringField
      FieldName = 'R_UNIDAD_BASE_D'
      Origin = 'TL_MATERIALES_PRECIOS.R_UNIDAD_BASE_D'
      Size = 50
    end
    object qyBusquedaR_NUM_SERIE: TIBStringField
      FieldName = 'R_NUM_SERIE'
      Origin = 'TL_MATERIALES_PRECIOS.R_NUM_SERIE'
      Size = 2
    end
    object qyBusquedaR_ESTATUS: TIBStringField
      FieldName = 'R_ESTATUS'
      Origin = 'TL_MATERIALES_PRECIOS.R_ESTATUS'
    end
    object qyBusquedaR_PRECIO: TFloatField
      FieldName = 'R_PRECIO'
      Origin = 'TL_MATERIALES_PRECIOS.R_PRECIO'
      DisplayFormat = '###,###,##0.00'
    end
    object qyBusquedaR_OFERTA_PORC: TFloatField
      FieldName = 'R_OFERTA_PORC'
      Origin = 'TL_MATERIALES_PRECIOS.R_OFERTA_PORC'
      DisplayFormat = '###,###,##0.00 %'
    end
    object qyBusquedaR_PRECIO_OFERTA: TFloatField
      FieldName = 'R_PRECIO_OFERTA'
      Origin = 'TL_MATERIALES_PRECIOS.R_PRECIO_OFERTA'
      DisplayFormat = '###,###,##0.00'
    end
    object qyBusquedar_pintar: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'r_pintar'
      Calculated = True
    end
  end
  object dsBusqueda: TDataSource
    DataSet = qyBusqueda
    Left = 234
    Top = 219
  end
  object ppFunciones: TPopupMenu
    Left = 301
    Top = 219
    object itemF1: TMenuItem
      Caption = 'Agregar Partida'
      ShortCut = 112
      OnClick = itemF1Click
    end
  end
end
