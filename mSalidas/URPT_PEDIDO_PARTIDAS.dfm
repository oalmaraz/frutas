object RPT_PEDIDO_PARTIDAS: TRPT_PEDIDO_PARTIDAS
  Left = 301
  Top = 183
  Caption = 'RPT_PEDIDO_PARTIDAS'
  ClientHeight = 529
  ClientWidth = 782
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 184
    Top = 16
    Width = 105
    Height = 105
  end
  object Button1: TButton
    Left = 352
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object qyPedidoPartidas: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT *'
      'FROM PEDIDOS_PARTIDAS(:P_PEDIDO)')
    Left = 8
    Top = 8
    ParamData = <
      item
        DataType = ftString
        Name = 'P_PEDIDO'
        ParamType = ptUnknown
        Value = '669'
      end>
    object qyPedidoPartidasR_ID: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_ID'
      ReadOnly = True
    end
    object qyPedidoPartidasR_PEDIDO: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_PEDIDO'
      ReadOnly = True
    end
    object qyPedidoPartidasR_MATERIAL: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_MATERIAL'
      ReadOnly = True
    end
    object qyPedidoPartidasR_CLAVE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_CLAVE'
      ReadOnly = True
    end
    object qyPedidoPartidasR_DESCRIPCION: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_DESCRIPCION'
      ReadOnly = True
      Size = 100
    end
    object qyPedidoPartidasR_UNIDAD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_UNIDAD'
      ReadOnly = True
    end
    object qyPedidoPartidasR_DESCRIPCION_UNIDAD: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_DESCRIPCION_UNIDAD'
      ReadOnly = True
      Size = 50
    end
    object qyPedidoPartidasR_CANTIDAD: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_CANTIDAD'
      ReadOnly = True
    end
    object qyPedidoPartidasR_CANTIDAD_ENTREGADA: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_CANTIDAD_ENTREGADA'
      ReadOnly = True
    end
    object qyPedidoPartidasR_PRECIO: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_PRECIO'
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
    end
    object qyPedidoPartidasR_SUBTOTAL: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_SUBTOTAL'
      ReadOnly = True
    end
    object qyPedidoPartidasR_IVA: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_IVA'
      ReadOnly = True
    end
    object qyPedidoPartidasR_IEPS: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_IEPS'
      ReadOnly = True
    end
    object qyPedidoPartidasR_IMPUESTO1: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_IMPUESTO1'
      ReadOnly = True
    end
    object qyPedidoPartidasR_IMPUESTO2: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_IMPUESTO2'
      ReadOnly = True
    end
    object qyPedidoPartidasR_TOTAL: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_TOTAL'
      ReadOnly = True
    end
    object qyPedidoPartidasR_DESCUENTO_PORC: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_DESCUENTO_PORC'
      ReadOnly = True
    end
    object qyPedidoPartidasR_DP: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_DP'
      ReadOnly = True
    end
    object qyPedidoPartidasR_DG: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_DG'
      ReadOnly = True
    end
    object qyPedidoPartidasR_GT: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_GT'
      ReadOnly = True
    end
    object qyPedidoPartidasR_ESTATUS: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_ESTATUS'
      ReadOnly = True
    end
    object qyPedidoPartidasR_COTIZACION: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_COTIZACION'
      ReadOnly = True
    end
    object qyPedidoPartidasR_CLAVE_COTIZACION: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_CLAVE_COTIZACION'
      ReadOnly = True
    end
    object qyPedidoPartidasR_PRECIO_SIN_IMPUESTOS: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_PRECIO_SIN_IMPUESTOS'
      ReadOnly = True
    end
    object qyPedidoPartidasR_CAJAS: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_CAJAS'
      ReadOnly = True
    end
    object qyPedidoPartidasR_ROWS: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_ROWS'
      ReadOnly = True
    end
    object qyPedidoPartidasR_IVA_PORC: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_IVA_PORC'
      ReadOnly = True
    end
    object qyPedidoPartidasR_IEPS_PORC: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_IEPS_PORC'
      ReadOnly = True
    end
    object qyPedidoPartidasR_IMPUESTO1_PORC: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_IMPUESTO1_PORC'
      ReadOnly = True
    end
    object qyPedidoPartidasR_IMPUESTO2_PORC: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_IMPUESTO2_PORC'
      ReadOnly = True
    end
    object qyPedidoPartidasR_MATERIAL_CBARRAS: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_MATERIAL_CBARRAS'
      ReadOnly = True
    end
    object qyPedidoPartidasR_MATERIAL_OBSERVACIONES: TBlobField
      FieldKind = fkInternalCalc
      FieldName = 'R_MATERIAL_OBSERVACIONES'
      ReadOnly = True
      Size = 8
    end
    object qyPedidoPartidasR_MATERIAL_FOTO: TBlobField
      FieldKind = fkInternalCalc
      FieldName = 'R_MATERIAL_FOTO'
      ReadOnly = True
      Size = 8
    end
    object qyPedidoPartidasR_PZAS_X_CAJA: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_PZAS_X_CAJA'
      ReadOnly = True
    end
    object qyPedidoPartidasR_COMENTARIO: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_COMENTARIO'
      ReadOnly = True
      Size = 50
    end
  end
  object dsPedidoPartidas: TDataSource
    DataSet = qyPedidoPartidas
    Left = 40
    Top = 8
  end
end
