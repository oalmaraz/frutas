object frmImagen: TfrmImagen
  Left = 239
  Top = 114
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  BorderStyle = bsNone
  Caption = 'Imagen'
  ClientHeight = 420
  ClientWidth = 414
  Color = 14789952
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDblClick = FormDblClick
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object imImagen: TImage
    Left = 16
    Top = 28
    Width = 73
    Height = 69
    AutoSize = True
    OnDblClick = imImagenDblClick
  end
  object Label1: TLabel
    Left = 6
    Top = 4
    Width = 236
    Height = 13
    Caption = 'Doble Cilck para cerrar la Imagen o Enter'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object laButtom: TLabel
    Left = 6
    Top = 348
    Width = 236
    Height = 13
    Caption = 'Enter para cerrar la Imagen o Doble Cilck'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
end
