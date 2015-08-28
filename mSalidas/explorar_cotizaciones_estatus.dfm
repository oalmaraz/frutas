inherited frmExplorar_cotizaciones_estatus: TfrmExplorar_cotizaciones_estatus
  Left = 195
  Top = 66
  Caption = 'Explorar Cotizaciones (Estatus)'
  ClientHeight = 586
  ClientWidth = 1004
  ExplicitWidth = 1020
  ExplicitHeight = 625
  PixelsPerInch = 96
  TextHeight = 13
  inherited fpPadre: TPanel
    Width = 1004
    ExplicitWidth = 1004
    inherited Panel1: TPanel
      Width = 1004
      ExplicitWidth = 1004
    end
  end
  inherited Panel2: TPanel
    Top = 564
    Width = 1004
    ExplicitTop = 564
    ExplicitWidth = 1004
  end
  inherited dgExplorar: TDBGrid
    Width = 1004
    Height = 475
  end
  inherited paExplorarBusqueda: TPanel
    Width = 1004
    ExplicitWidth = 1004
  end
  inherited qyExplorar: TIBQuery
    OnCalcFields = qyExplorarCalcFields
    SQL.Strings = (
      'SELECT C.ID R_ID, '
      '       C.CLAVE R_CLAVE, '
      '       C.FECHA_ALTA R_FECHA_ALTA, '
      '       C.NOMBRE R_NOMBRE, '
      '       C.RAZON_SOCIAL R_RAZON_SOCIAL, '
      '       C.FECHA_VALIDEZ R_FECHA_VALIDEZ,'
      '       C.GRANTOTAL R_GRANTOTAL,'
      '       C.ESTATUS R_ESTATUS,'
      '       C.SEGURO_SUBTOTAL R_SEGURO_SUBTOTAL,'
      '       C.SEGURO_IVA R_SEGURO_IVA,'
      '       C.PROYECTO R_PROYECTO'
      'FROM COTIZACIONES C'
      'WHERE ('
      '         ((:P_OPCION1  = 0) AND (C.ESTATUS = :P_ESTATUS1)) OR'
      '          (:P_OPCION2 <> 0)'
      '      )'
      'AND (C.ID = 0)')
    ParamData = <
      item
        DataType = ftString
        Name = 'P_OPCION1'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'P_ESTATUS1'
        ParamType = ptUnknown
        Value = 'Sin Afectar'
      end
      item
        DataType = ftString
        Name = 'P_OPCION2'
        ParamType = ptUnknown
        Value = '0'
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
