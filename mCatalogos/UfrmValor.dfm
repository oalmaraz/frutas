object frmValor: TfrmValor
  Left = 310
  Top = 295
  BorderStyle = bsNone
  Caption = 'Valor'
  ClientHeight = 164
  ClientWidth = 249
  Color = clWhite
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
  object Shape1: TShape
    Left = 6
    Top = 7
    Width = 155
    Height = 18
    Brush.Color = 14789952
    Pen.Color = 11764252
    Shape = stRoundRect
  end
  object Label1: TLabel
    Left = 56
    Top = 48
    Width = 28
    Height = 14
    Caption = 'Valor'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object laTitulo: TLabel
    Left = 12
    Top = 8
    Width = 142
    Height = 15
    Alignment = taCenter
    AutoSize = False
    Caption = 'Titulo'
    Color = clBtnFace
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Shape2: TShape
    Left = 169
    Top = 15
    Width = 57
    Height = 3
    Brush.Color = 11106843
    Pen.Color = 14789952
  end
  object buCancelar: TBitBtn
    Left = 52
    Top = 126
    Width = 73
    Height = 22
    Cursor = crHandPoint
    Caption = 'Cancelar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    OnClick = buCancelarClick
  end
  object buAceptar: TBitBtn
    Left = 128
    Top = 126
    Width = 73
    Height = 22
    Cursor = crHandPoint
    Caption = 'Aceptar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    OnClick = buAceptarClick
  end
  object cbPorPorc: TCheckBox
    Left = 97
    Top = 41
    Width = 96
    Height = 17
    Cursor = crHandPoint
    TabStop = False
    Caption = 'Por Porcentaje'
    TabOrder = 0
    Visible = False
  end
  object edValor: TEdit
    Left = 56
    Top = 64
    Width = 137
    Height = 26
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
end
