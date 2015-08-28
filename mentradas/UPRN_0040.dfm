object PRN_0040: TPRN_0040
  Left = 379
  Top = 450
  Width = 238
  Height = 251
  Caption = 'PRN_0040'
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
  object qyEncPI: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    SQL.Strings = (
      'SELECT *'
      'FROM PI_ENCABEZADO(:P_ID)')
    Left = 16
    Top = 8
    ParamData = <
      item
        DataType = ftString
        Name = 'P_ID'
        ParamType = ptUnknown
        Value = '3'
      end>
  end
  object qyDetPI: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    SQL.Strings = (
      'SELECT *'
      'FROM PI_PARTIDAS(:P_ID, :P_ENTRADA)')
    Left = 16
    Top = 40
    ParamData = <
      item
        DataType = ftString
        Name = 'P_ID'
        ParamType = ptUnknown
        Value = '3'
      end
      item
        DataType = ftString
        Name = 'P_ENTRADA'
        ParamType = ptUnknown
        Value = '53'
      end>
  end
end
