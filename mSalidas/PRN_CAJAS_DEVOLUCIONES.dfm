object frmPRN_CAJAS_DEVOLUCIONES: TfrmPRN_CAJAS_DEVOLUCIONES
  Left = 331
  Top = 249
  Caption = 'Cajas Devoluciones'
  ClientHeight = 461
  ClientWidth = 854
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
  object qyDatos: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT *'
      
        'FROM TL_PVTA_DEVOLUCIONES(:P_FECHA_INI, :P_FECHA_FIN, :P_CAJA, :' +
        'P_ALMACEN, :P_PRIORIDAD)'
      'ORDER BY R_ALMACEN, R_CAJA, R_FOLIO')
    Left = 32
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_FECHA_INI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'P_FECHA_FIN'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'P_CAJA'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'P_ALMACEN'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'P_PRIORIDAD'
        ParamType = ptUnknown
        Value = 'Ambos'
      end>
    object qyDatosR_ID: TIntegerField
      FieldName = 'R_ID'
      Origin = 'TL_PVTA_DEVOLUCIONES.R_ID'
    end
    object qyDatosR_FECHA_ALTA: TDateTimeField
      FieldName = 'R_FECHA_ALTA'
      Origin = 'TL_PVTA_DEVOLUCIONES.R_FECHA_ALTA'
    end
    object qyDatosR_FOLIO: TIntegerField
      FieldName = 'R_FOLIO'
      Origin = 'TL_PVTA_DEVOLUCIONES.R_FOLIO'
    end
    object qyDatosR_ALMACEN: TIntegerField
      FieldName = 'R_ALMACEN'
      Origin = 'TL_PVTA_DEVOLUCIONES.R_ALMACEN'
    end
    object qyDatosR_ALMACEN_C: TIBStringField
      FieldName = 'R_ALMACEN_C'
      Origin = 'TL_PVTA_DEVOLUCIONES.R_ALMACEN_C'
    end
    object qyDatosR_ALMACEN_N: TIBStringField
      FieldName = 'R_ALMACEN_N'
      Origin = 'TL_PVTA_DEVOLUCIONES.R_ALMACEN_N'
      Size = 100
    end
    object qyDatosR_CAJA: TIntegerField
      FieldName = 'R_CAJA'
      Origin = 'TL_PVTA_DEVOLUCIONES.R_CAJA'
    end
    object qyDatosR_CAJA_NOMBRE: TIBStringField
      FieldName = 'R_CAJA_NOMBRE'
      Origin = 'TL_PVTA_DEVOLUCIONES.R_CAJA_NOMBRE'
      Size = 100
    end
    object qyDatosR_CAJERO_C: TIBStringField
      FieldName = 'R_CAJERO_C'
      Origin = 'TL_PVTA_DEVOLUCIONES.R_CAJERO_C'
    end
    object qyDatosR_CAJERO_N: TIBStringField
      FieldName = 'R_CAJERO_N'
      Origin = 'TL_PVTA_DEVOLUCIONES.R_CAJERO_N'
      Size = 100
    end
    object qyDatosR_CLIENTE_C: TIBStringField
      FieldName = 'R_CLIENTE_C'
      Origin = 'TL_PVTA_DEVOLUCIONES.R_CLIENTE_C'
      Size = 50
    end
    object qyDatosR_CLIENTE_N: TIBStringField
      FieldName = 'R_CLIENTE_N'
      Origin = 'TL_PVTA_DEVOLUCIONES.R_CLIENTE_N'
      Size = 100
    end
    object qyDatosR_CLIENTE_EMAIL: TIBStringField
      FieldName = 'R_CLIENTE_EMAIL'
      Origin = 'TL_PVTA_DEVOLUCIONES.R_CLIENTE_EMAIL'
      Size = 50
    end
    object qyDatosR_EXTENSION_N: TIBStringField
      FieldName = 'R_EXTENSION_N'
      Origin = 'TL_PVTA_DEVOLUCIONES.R_EXTENSION_N'
      Size = 100
    end
    object qyDatosR_PRIORIDAD: TIBStringField
      FieldName = 'R_PRIORIDAD'
      Origin = 'TL_PVTA_DEVOLUCIONES.R_PRIORIDAD'
    end
    object qyDatosR_GRANTOTAL: TFloatField
      FieldName = 'R_GRANTOTAL'
      Origin = 'TL_PVTA_DEVOLUCIONES.R_GRANTOTAL'
    end
  end
end
