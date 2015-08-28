object frmTabulador: TfrmTabulador
  Left = 464
  Top = 223
  ActiveControl = edClave
  BorderStyle = bsNone
  Caption = 'frmTabulador'
  ClientHeight = 170
  ClientWidth = 754
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
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
  object laTitulo: TLabel
    Left = 12
    Top = 8
    Width = 142
    Height = 15
    Alignment = taCenter
    AutoSize = False
    Caption = 'Tabulador'
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
    Width = 568
    Height = 3
    Brush.Color = 11106843
    Pen.Color = 14789952
  end
  object Label1: TLabel
    Left = 307
    Top = 48
    Width = 44
    Height = 14
    Caption = 'Limite 2'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 195
    Top = 48
    Width = 44
    Height = 14
    Caption = 'Limite 1'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 419
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
  object Label4: TLabel
    Left = 8
    Top = 48
    Width = 30
    Height = 14
    Caption = 'Clave'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 533
    Top = 48
    Width = 35
    Height = 14
    Caption = 'Anexo'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edLimite2: TEdit
    Left = 307
    Top = 64
    Width = 110
    Height = 26
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object edLimite1: TEdit
    Left = 195
    Top = 64
    Width = 110
    Height = 26
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object edValor: TEdit
    Left = 419
    Top = 64
    Width = 110
    Height = 26
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
  end
  object edClave: TEdit
    Left = 6
    Top = 64
    Width = 187
    Height = 26
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object buAceptar: TBitBtn
    Left = 670
    Top = 125
    Width = 75
    Height = 25
    Caption = 'Aceptar'
    Default = True
    TabOrder = 6
    OnClick = buAceptarClick
  end
  object buCancelar: TBitBtn
    Left = 590
    Top = 125
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 5
    OnClick = buCancelarClick
  end
  object edAnexo: TEdit
    Left = 531
    Top = 64
    Width = 214
    Height = 26
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
  end
  object spA_TABULADOR: TIBStoredProc
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    StoredProcName = 'A_TABULADOR'
    Left = 432
    Top = 8
    ParamData = <
      item
        DataType = ftInteger
        Name = 'P_LINK'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'P_CLAVE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'P_LIMITE_1'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'P_LIMITE_2'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'P_CANTIDAD'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'P_ANEXO'
        ParamType = ptInput
      end>
  end
  object dsRefresh: TDataSource
    Left = 464
    Top = 8
  end
  object spM_TABULADOR: TIBStoredProc
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    StoredProcName = 'M_TABULADOR'
    Left = 392
    Top = 8
    ParamData = <
      item
        DataType = ftInteger
        Name = 'P_ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'P_CLAVE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'P_LIMITE_1'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'P_LIMITE_2'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'P_CANTIDAD'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'P_ANEXO'
        ParamType = ptInput
      end>
  end
end
