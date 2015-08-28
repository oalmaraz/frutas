object frmCFF: TfrmCFF
  Left = 738
  Top = 124
  BorderStyle = bsNone
  Caption = 'Facturacion'
  ClientHeight = 176
  ClientWidth = 257
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
  object Label1: TLabel
    Left = 65
    Top = 73
    Width = 127
    Height = 29
    Caption = 'Impresion...'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object buCFI: TBitBtn
    Left = 16
    Top = 16
    Width = 225
    Height = 50
    Cursor = crHandPoint
    Caption = 'Generar Comprobante Fiscal Impreso'
    TabOrder = 0
    Visible = False
    OnClick = buCFIClick
  end
  object buCFD: TBitBtn
    Left = 16
    Top = 111
    Width = 225
    Height = 50
    Cursor = crHandPoint
    Caption = 'Generar Comprobante Fiscal Digital'
    TabOrder = 1
    Visible = False
    OnClick = buCFDClick
  end
  object qyContinuacion: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT *'
      'FROM FACTURAS_ENLACE(:P_FACTURA)')
    Left = 16
    Top = 75
    ParamData = <
      item
        DataType = ftString
        Name = 'P_FACTURA'
        ParamType = ptUnknown
        Value = '0'
      end>
    object qyContinuacionR_CONSECUTIVO: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_CONSECUTIVO'
      ReadOnly = True
    end
    object qyContinuacionR_ID: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_ID'
      ReadOnly = True
    end
    object qyContinuacionR_FACTURA: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_FACTURA'
      ReadOnly = True
    end
    object qyContinuacionR_CUANTAS: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_CUANTAS'
      ReadOnly = True
    end
  end
end
