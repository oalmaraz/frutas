object frmPRN_0027_A: TfrmPRN_0027_A
  Left = 338
  Top = 160
  Width = 624
  Height = 497
  Caption = 'PRN_0027 A'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 120
    Top = 16
    Width = 320
    Height = 120
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBGrid2: TDBGrid
    Left = 128
    Top = 160
    Width = 320
    Height = 120
    DataSource = DataSource2
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object qyEncabezado: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    SQL.Strings = (
      'SELECT *'
      'FROM FACTURA_ENCABEZADO(:P_ID)')
    Left = 8
    Top = 8
    ParamData = <
      item
        DataType = ftString
        Name = 'P_ID'
        ParamType = ptUnknown
        Value = '533'
      end>
  end
  object qyDetalle: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    SQL.Strings = (
      'SELECT *'
      'FROM FACTURAS_PARTIDAS2(:P_FACTURA)'
      '')
    Left = 8
    Top = 40
    ParamData = <
      item
        DataType = ftString
        Name = 'P_FACTURA'
        ParamType = ptUnknown
        Value = '533'
      end>
  end
  object DataSource1: TDataSource
    DataSet = qyEncabezado
    Left = 56
    Top = 16
  end
  object DataSource2: TDataSource
    DataSet = qyDetalle
    Left = 48
    Top = 56
  end
end
