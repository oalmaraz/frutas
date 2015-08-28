inherited frmExplorar_cotizaciones: TfrmExplorar_cotizaciones
  Left = 396
  Top = 232
  Caption = 'Explorar Cotizaciones'
  ClientHeight = 547
  ClientWidth = 961
  ExplicitWidth = 977
  ExplicitHeight = 586
  PixelsPerInch = 96
  TextHeight = 13
  inherited fpPadre: TPanel
    Width = 961
    ExplicitWidth = 961
    inherited Panel1: TPanel
      Width = 961
      ExplicitWidth = 961
    end
  end
  inherited Panel2: TPanel
    Top = 525
    Width = 961
    ExplicitTop = 525
    ExplicitWidth = 961
  end
  inherited dgExplorar: TDBGrid
    Width = 961
    Height = 436
  end
  inherited paExplorarBusqueda: TPanel
    Width = 961
    ExplicitWidth = 961
  end
  inherited qyExplorar: TIBQuery
    OnCalcFields = qyExplorarCalcFields
    SQL.Strings = (
      
        'SELECT ID R_ID, CLAVE R_CLAVE, FECHA_ALTA R_FECHA_ALTA, NOMBRE R' +
        '_NOMBRE, RAZON_SOCIAL R_RAZON_SOCIAL, FECHA_VALIDEZ R_FECHA_VALI' +
        'DEZ,'
      '       GRANTOTAL R_GRANTOTAL, '
      '       ESTATUS R_ESTATUS, '
      '       SEGURO_SUBTOTAL R_SEGURO_SUBTOTAL,'
      '       SEGURO_IVA R_SEGURO_IVA,'
      '       PROYECTO R_PROYECTO'
      'FROM COTIZACIONES'
      'WHERE ('
      
        '                  ((:P_VENDEDOR <> 0) AND (VENDEDOR = :P_VENDEDO' +
        'R)) OR'
      '                   (:P_VENDEDOR   = 0)'
      '               )'
      '               AND (ID = 0)')
    ParamData = <
      item
        DataType = ftString
        Name = 'P_VENDEDOR'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'P_VENDEDOR'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'P_VENDEDOR'
        ParamType = ptUnknown
      end>
    object qyExplorarR_ID: TIntegerField
      FieldName = 'R_ID'
      Origin = 'COTIZACIONES.ID'
      Required = True
    end
    object qyExplorarR_CLAVE: TIBStringField
      FieldName = 'R_CLAVE'
      Origin = 'COTIZACIONES.CLAVE'
    end
    object qyExplorarR_FECHA_ALTA: TDateTimeField
      FieldName = 'R_FECHA_ALTA'
      Origin = 'COTIZACIONES.FECHA_ALTA'
    end
    object qyExplorarR_NOMBRE: TIBStringField
      FieldName = 'R_NOMBRE'
      Origin = 'COTIZACIONES.NOMBRE'
      Size = 100
    end
    object qyExplorarR_RAZON_SOCIAL: TIBStringField
      FieldName = 'R_RAZON_SOCIAL'
      Origin = 'COTIZACIONES.RAZON_SOCIAL'
      Size = 100
    end
    object qyExplorarR_FECHA_VALIDEZ: TDateTimeField
      FieldName = 'R_FECHA_VALIDEZ'
      Origin = 'COTIZACIONES.FECHA_VALIDEZ'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object qyExplorarR_GRANTOTAL: TFloatField
      FieldName = 'R_GRANTOTAL'
      Origin = 'COTIZACIONES.GRANTOTAL'
    end
    object qyExplorarR_ESTATUS: TIBStringField
      FieldName = 'R_ESTATUS'
      Origin = 'COTIZACIONES.ESTATUS'
    end
    object qyExplorarR_SEGURO_SUBTOTAL: TFloatField
      FieldName = 'R_SEGURO_SUBTOTAL'
      Origin = 'COTIZACIONES.SEGURO_SUBTOTAL'
    end
    object qyExplorarR_SEGURO_IVA: TFloatField
      FieldName = 'R_SEGURO_IVA'
      Origin = 'COTIZACIONES.SEGURO_IVA'
    end
    object qyExplorarR_PROYECTO: TIBStringField
      FieldName = 'R_PROYECTO'
      Origin = 'COTIZACIONES.PROYECTO'
      Size = 100
    end
    object qyExplorarseguro: TFloatField
      FieldKind = fkCalculated
      FieldName = 'seguro'
      Calculated = True
    end
    object qyExplorarsupertotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'supertotal'
      Calculated = True
    end
  end
  object qyEsVendedor: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT *'
      'FROM T_ES_VENDEDOR(:P_USUARIO)')
    Left = 61
    Top = 280
    ParamData = <
      item
        DataType = ftString
        Name = 'P_USUARIO'
        ParamType = ptUnknown
        Value = '0'
      end>
  end
end
