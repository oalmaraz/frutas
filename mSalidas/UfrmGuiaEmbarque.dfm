object frmGuiaDeEmbarque: TfrmGuiaDeEmbarque
  Left = 441
  Top = 157
  Width = 424
  Height = 292
  Caption = 'Guia de Emparque'
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
  object qyEncabezado: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    SQL.Strings = (
      'SELECT *'
      'FROM FACTURA_ENCABEZADO(:P_FACTURA)')
    Left = 8
    Top = 56
    ParamData = <
      item
        DataType = ftString
        Name = 'P_FACTURA'
        ParamType = ptUnknown
      end>
  end
  object dsEncabezado: TDataSource
    DataSet = qyEncabezado
    Left = 40
    Top = 56
  end
  object dsDetalle: TDataSource
    DataSet = qyDetalle
    Left = 40
    Top = 88
  end
  object qyDetalle: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    SQL.Strings = (
      'SELECT *'
      'FROM FACTURAS_PARTIDAS2(:P_FACTURA)')
    Left = 8
    Top = 88
    ParamData = <
      item
        DataType = ftString
        Name = 'P_FACTURA'
        ParamType = ptUnknown
      end>
  end
end
