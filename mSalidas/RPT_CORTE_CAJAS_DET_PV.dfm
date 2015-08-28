object frmRPT_CORTE_CAJAS_DET_PV: TfrmRPT_CORTE_CAJAS_DET_PV
  Left = 77
  Top = 133
  Caption = 'Corte de Cajas Detalle Punto de Ventas'
  ClientHeight = 441
  ClientWidth = 887
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
  object dsDetalle: TDataSource
    DataSet = qyDetalle
    Left = 48
    Top = 12
  end
  object qyDetalle: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT *'
      
        'FROM GRAL_CORTE_CAJAS_DETALLE(:P_FECHA_DEL, :P_FECHA_AL, :P_CAJA' +
        ', :P_ALMACEN, :P_OPCION)')
    Left = 16
    Top = 12
    ParamData = <
      item
        DataType = ftString
        Name = 'P_FECHA_DEL'
        ParamType = ptUnknown
        Value = '03/12/2001'
      end
      item
        DataType = ftString
        Name = 'P_FECHA_AL'
        ParamType = ptUnknown
        Value = '03/12/2001'
      end
      item
        DataType = ftString
        Name = 'P_CAJA'
        ParamType = ptUnknown
        Value = '4'
      end
      item
        DataType = ftString
        Name = 'P_ALMACEN'
        ParamType = ptUnknown
        Value = '2'
      end
      item
        DataType = ftString
        Name = 'P_OPCION'
        ParamType = ptUnknown
        Value = '0'
      end>
    object qyDetalleR_ID: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_ID'
      ReadOnly = True
    end
    object qyDetalleR_FOLIO_DE_VENTA: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_FOLIO_DE_VENTA'
      ReadOnly = True
    end
    object qyDetalleR_CAJA: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_CAJA'
      ReadOnly = True
    end
    object qyDetalleR_CAJA_NOMBRE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_CAJA_NOMBRE'
      ReadOnly = True
      Size = 100
    end
    object qyDetalleR_CLIENTE: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_CLIENTE'
      ReadOnly = True
    end
    object qyDetalleR_CLIENTE_NOMBRE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_CLIENTE_NOMBRE'
      ReadOnly = True
      Size = 100
    end
    object qyDetalleR_EXTENSION: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_EXTENSION'
      ReadOnly = True
    end
    object qyDetalleR_EXTENSION_NOMBRE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_EXTENSION_NOMBRE'
      ReadOnly = True
      Size = 100
    end
    object qyDetalleR_FECHA: TDateTimeField
      FieldKind = fkInternalCalc
      FieldName = 'R_FECHA'
      ReadOnly = True
    end
    object qyDetalleR_GRANTOTAL: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_GRANTOTAL'
      ReadOnly = True
    end
    object qyDetalleR_CAMBIO: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_CAMBIO'
      ReadOnly = True
    end
    object qyDetalleR_ID_DETALLE: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_ID_DETALLE'
      ReadOnly = True
    end
    object qyDetalleR_PUNTO_DE_VENTA: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_PUNTO_DE_VENTA'
      ReadOnly = True
    end
    object qyDetalleR_MATERIAL: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_MATERIAL'
      ReadOnly = True
    end
    object qyDetalleR_MATERIAL_NOMBRE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_MATERIAL_NOMBRE'
      ReadOnly = True
      Size = 100
    end
    object qyDetalleR_CANTIDAD: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_CANTIDAD'
      ReadOnly = True
    end
    object qyDetalleR_UNIDAD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_UNIDAD'
      ReadOnly = True
    end
    object qyDetalleR_UNIDAD_DESCRIPCION: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_UNIDAD_DESCRIPCION'
      ReadOnly = True
      Size = 50
    end
    object qyDetalleR_PRECIO_VENTA: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_PRECIO_VENTA'
      ReadOnly = True
    end
    object qyDetalleR_VENDEDOR: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_VENDEDOR'
      ReadOnly = True
    end
    object qyDetalleR_VENDEDOR_NOMBRE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_VENDEDOR_NOMBRE'
      ReadOnly = True
      Size = 100
    end
    object qyDetalleR_SUBTOTAL: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_SUBTOTAL'
      ReadOnly = True
    end
    object qyDetalleR_TOTAL: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_TOTAL'
      ReadOnly = True
    end
    object qyDetalleR_GRANTOTAL_DETALLE: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_GRANTOTAL_DETALLE'
      ReadOnly = True
    end
    object qyDetalleR_ESTATUS: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_ESTATUS'
      ReadOnly = True
    end
    object qyDetalleR_UNIDAD_CLAVE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_UNIDAD_CLAVE'
      ReadOnly = True
      Size = 10
    end
    object qyDetalleR_CAJAS: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_CAJAS'
      ReadOnly = True
    end
    object qyDetalleR_QUE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_QUE'
      ReadOnly = True
      Size = 7
    end
    object qyDetalleR_QUE_CLAVE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_QUE_CLAVE'
      ReadOnly = True
    end
    object qyDetalleR_TOTAL_CAJAS: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_TOTAL_CAJAS'
      ReadOnly = True
    end
    object qyDetalleR_TIPO_CAJA_CLAVE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_TIPO_CAJA_CLAVE'
      ReadOnly = True
    end
    object qyDetalleR_TIPO_CAJA_DESCRIPCION: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_TIPO_CAJA_DESCRIPCION'
      ReadOnly = True
      Size = 100
    end
    object qyDetalleR_PRIORIDAD: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_PRIORIDAD'
      ReadOnly = True
      Size = 2
    end
    object qyDetalleR_ALMACEN: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_ALMACEN'
      ReadOnly = True
    end
    object qyDetalleR_ALMACEN_CLAVE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_ALMACEN_CLAVE'
      ReadOnly = True
    end
    object qyDetalleR_ALMACEN_NOMBRE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_ALMACEN_NOMBRE'
      ReadOnly = True
      Size = 100
    end
  end
end
