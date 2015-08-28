object frmRPT_FICHA_DEPOSITO: TfrmRPT_FICHA_DEPOSITO
  Left = 313
  Top = 158
  Caption = 'Ficha de Deposito'
  ClientHeight = 586
  ClientWidth = 886
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object qyFichaDeposito: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT *'
      'FROM FICHA_DEPOSITO(:P_DEL, :P_AL, :P_ALMACEN, :P_OPCION)')
    Left = 4
    Top = 5
    ParamData = <
      item
        DataType = ftString
        Name = 'P_DEL'
        ParamType = ptUnknown
        Value = '07/06/2004'
      end
      item
        DataType = ftString
        Name = 'P_AL'
        ParamType = ptUnknown
        Value = '07/06/2004'
      end
      item
        DataType = ftString
        Name = 'P_ALMACEN'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'P_OPCION'
        ParamType = ptUnknown
        Value = '0'
      end>
  end
end
