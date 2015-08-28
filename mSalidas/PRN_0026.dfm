object frmPRN_0026: TfrmPRN_0026
  Left = 546
  Top = 480
  Caption = 'PRN_0026'
  ClientHeight = 227
  ClientWidth = 353
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
  object qyEncabezadoPedidos: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT *'
      'FROM PEDIDOS_ENCABEZADO(:P_ID)')
    Left = 8
    Top = 8
    ParamData = <
      item
        DataType = ftString
        Name = 'P_ID'
        ParamType = ptUnknown
        Value = '373'
      end>
  end
  object qyPartidasPedidos: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT *'
      'FROM TL_PEDIDOS_PARTIDAS(:P_ID)')
    Left = 8
    Top = 40
    ParamData = <
      item
        DataType = ftString
        Name = 'P_ID'
        ParamType = ptUnknown
        Value = '373'
      end>
  end
  object qyVerificarFolio: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT *'
      'FROM VERIFICAR_FOLIO_REMISION(:P_PEDIDO, :P_FOLIO, :P_ALMACEN)')
    Left = 104
    Top = 8
    ParamData = <
      item
        DataType = ftString
        Name = 'P_PEDIDO'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'P_FOLIO'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'P_ALMACEN'
        ParamType = ptUnknown
      end>
    object qyVerificarFolioR_ACEPTADO: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_ACEPTADO'
      ReadOnly = True
      Size = 2
    end
  end
  object spMODIFICAR_FOLIO_REMISION: TIBStoredProc
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    StoredProcName = 'MODIFICAR_FOLIO_REMISION'
    Left = 40
    Top = 137
    ParamData = <
      item
        DataType = ftInteger
        Name = 'P_MODULO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'P_SUBCLASE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'P_CONSECUTIVO'
        ParamType = ptInput
      end>
  end
  object qyACTUALIZA_PEDIDO: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      
        'EXECUTE PROCEDURE ACTUALIZA_PEDIDO(:P_PEDIDO, :P_FOLIO, :P_USUAR' +
        'IO)')
    Left = 136
    Top = 8
    ParamData = <
      item
        DataType = ftString
        Name = 'P_PEDIDO'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'P_FOLIO'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'P_USUARIO'
        ParamType = ptUnknown
      end>
  end
  object qyPartidasPedidosM: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT *'
      'FROM PEDIDOS_PARTIDAS_M(:P_ID)')
    Left = 40
    Top = 40
    ParamData = <
      item
        DataType = ftString
        Name = 'P_ID'
        ParamType = ptUnknown
        Value = '373'
      end>
  end
  object spACT_FOLIO_PEDIDO: TIBStoredProc
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    StoredProcName = 'ACT_FOLIO_PEDIDO'
    Left = 168
    Top = 136
    ParamData = <
      item
        DataType = ftInteger
        Name = 'P_FOLIO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'P_FOLIO_ACEPTADO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'P_ALMACEN'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'P_PEDIDO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'P_USUARIO'
        ParamType = ptInput
      end>
  end
  object spAUTO_FOLIO: TIBStoredProc
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    StoredProcName = 'AUTO_FOLIO'
    Left = 200
    Top = 136
    ParamData = <
      item
        DataType = ftInteger
        Name = 'R_FOLIO'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'P_MODULO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'P_SUBCLASE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'P_AFECTAR'
        ParamType = ptInput
      end>
  end
  object spVERIFICAR_FOLIO_EVENTO: TIBStoredProc
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    StoredProcName = 'VERIFICAR_FOLIO_EVENTO'
    Left = 200
    Top = 104
    ParamData = <
      item
        DataType = ftString
        Name = 'R_ACEPTADO'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'P_PEDIDO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'P_FOLIO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'P_EVENTO'
        ParamType = ptInput
      end>
  end
  object spACT_FOLIO_PEDIDO_E: TIBStoredProc
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    StoredProcName = 'ACT_FOLIO_PEDIDO_E'
    Left = 168
    Top = 104
    ParamData = <
      item
        DataType = ftInteger
        Name = 'P_FOLIO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'P_FOLIO_ACEPTADO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'P_ALMACEN'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'P_PEDIDO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'P_USUARIO'
        ParamType = ptInput
      end>
  end
end
