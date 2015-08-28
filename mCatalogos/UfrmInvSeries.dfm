object frmInvSeries: TfrmInvSeries
  Left = 398
  Top = 206
  ActiveControl = dgSeries
  Caption = 'Inventario (Series)'
  ClientHeight = 426
  ClientWidth = 752
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
  object dgSeries: TDBGrid
    Left = 8
    Top = 8
    Width = 743
    Height = 371
    BorderStyle = bsNone
    DataSource = dsSeries
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
  object paBotones: TPanel
    Left = 0
    Top = 386
    Width = 752
    Height = 40
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 391
    ExplicitWidth = 760
    object buCancelar: TBitBtn
      Left = 664
      Top = 5
      Width = 81
      Height = 30
      Caption = 'Cancelar'
      ModalResult = 5
      TabOrder = 0
    end
  end
  object qyPEPS: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT *'
      'FROM TL_INV_SERIES(:P_MATERIAL, :P_MEDIDA, :P_COLOR, :P_MONEDA)'
      'ORDER BY R_FECHA_COMPRA ASC')
    Left = 112
    Top = 144
    ParamData = <
      item
        DataType = ftString
        Name = 'P_MATERIAL'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'P_MEDIDA'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'P_COLOR'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'P_MONEDA'
        ParamType = ptUnknown
        Value = '0'
      end>
  end
  object dsSeries: TDataSource
    DataSet = qyPEPS
    Left = 152
    Top = 160
  end
  object qyUEPS: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT *'
      'FROM TL_INV_SERIES(:P_MATERIAL, :P_MEDIDA, :P_COLOR, :P_MONEDA)'
      'ORDER BY R_FECHA_COMPRA DESC')
    Left = 112
    Top = 176
    ParamData = <
      item
        DataType = ftString
        Name = 'P_MATERIAL'
        ParamType = ptUnknown
        Value = '24'
      end
      item
        DataType = ftString
        Name = 'P_MEDIDA'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'P_COLOR'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'P_MONEDA'
        ParamType = ptUnknown
        Value = '1'
      end>
  end
end
