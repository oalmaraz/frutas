object frmFacturasGastos: TfrmFacturasGastos
  Left = 670
  Top = 211
  Width = 527
  Height = 247
  Caption = 'Gastos'
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 0
    Width = 519
    Height = 147
    Align = alClient
    Shape = bsFrame
  end
  object laCliente: TLabel
    Left = 8
    Top = 12
    Width = 28
    Height = 13
    Caption = 'Gasto'
    Transparent = True
  end
  object Label86: TLabel
    Left = 8
    Top = 52
    Width = 36
    Height = 13
    Caption = 'Factura'
    Transparent = True
  end
  object Label19: TLabel
    Left = 8
    Top = 92
    Width = 35
    Height = 13
    Caption = 'Importe'
    Transparent = True
  end
  object paAdmin: TPanel
    Left = 0
    Top = 147
    Width = 519
    Height = 66
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = clWhite
    TabOrder = 3
    object Panel34: TPanel
      Left = 72
      Top = 2
      Width = 70
      Height = 62
      Align = alLeft
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = clWhite
      TabOrder = 0
      object Label71: TLabel
        Left = 2
        Top = 2
        Width = 66
        Height = 16
        Align = alTop
        Alignment = taCenter
        Caption = 'F1'
        Color = clBtnFace
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
        Height = 42
        Cursor = crHandPoint
        Align = alClient
        Alignment = taCenter
        Caption = 'Aceptar'
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
    object Panel35: TPanel
      Left = 2
      Top = 2
      Width = 70
      Height = 62
      Align = alLeft
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = clWhite
      TabOrder = 1
      object Label73: TLabel
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
      object laEsc: TLabel
        Left = 2
        Top = 18
        Width = 66
        Height = 42
        Cursor = crHandPoint
        Align = alClient
        Alignment = taCenter
        Caption = 'Cerrar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
        WordWrap = True
        OnClick = laEscClick
      end
    end
  end
  object edGasto: TEdit
    Left = 8
    Top = 27
    Width = 389
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 0
  end
  object edFactura: TEdit
    Left = 8
    Top = 67
    Width = 165
    Height = 21
    MaxLength = 50
    TabOrder = 1
  end
  object edImporte: TEdit
    Left = 8
    Top = 107
    Width = 165
    Height = 21
    TabOrder = 2
  end
  object spA_GASTO_FACTURA: TIBStoredProc
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    StoredProcName = 'A_GASTO_FACTURA'
    Left = 336
    Top = 96
    ParamData = <
      item
        DataType = ftInteger
        Name = 'R_ID'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'P_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'P_LINK'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'P_LINK_GASTO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'P_FACTURA'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'P_IMPORTE'
        ParamType = ptInput
      end>
  end
end
