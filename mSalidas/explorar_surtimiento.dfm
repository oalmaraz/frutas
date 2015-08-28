inherited frmExplorar_surtimiento: TfrmExplorar_surtimiento
  Left = 445
  Top = 172
  Caption = 'Explorar Surtimiento'
  ClientHeight = 467
  ClientWidth = 792
  ExplicitWidth = 320
  ExplicitHeight = 240
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter [0]
    Left = 0
    Top = 257
    Width = 792
    Height = 3
    Cursor = crVSplit
    Align = alTop
  end
  inherited fpPadre: TPanel
    Width = 792
    ExplicitWidth = 792
    inherited Panel1: TPanel
      Width = 792
      ExplicitWidth = 792
    end
    inherited ibConstructor: TBitBtn
      Left = 432
      Visible = False
      ExplicitLeft = 432
    end
    inherited ibImprimir: TBitBtn
      Left = 81
      ExplicitLeft = 81
    end
    inherited ibPantalla: TBitBtn
      Left = 512
      Visible = False
      ExplicitLeft = 512
    end
    inherited ibExportarXLS: TBitBtn
      Left = 173
      ExplicitLeft = 173
    end
    inherited ibExportarHTML: TBitBtn
      Left = 250
      ExplicitLeft = 250
    end
    inherited ibExportarXML: TBitBtn
      Left = 327
      TabOrder = 8
      ExplicitLeft = 327
    end
    object paInsuficiencias: TPanel
      Left = 694
      Top = 19
      Width = 39
      Height = 43
      Align = alRight
      BevelOuter = bvNone
      Color = clWhite
      TabOrder = 7
      object buInsuficiencias: TBitBtn
        Left = 3
        Top = 23
        Width = 32
        Height = 32
        Cursor = crHandPoint
        TabOrder = 0
        OnClick = buInsuficienciasClick
      end
    end
  end
  inherited Panel2: TPanel
    Top = 445
    Width = 792
    ExplicitTop = 445
    ExplicitWidth = 792
  end
  inherited dgExplorar: TDBGrid
    Width = 792
    Height = 168
    Align = alTop
  end
  inherited paExplorarBusqueda: TPanel
    Width = 792
    ExplicitWidth = 792
  end
  object dgPartidas: TDBGrid [5]
    Left = 0
    Top = 260
    Width = 792
    Height = 185
    Align = alClient
    Color = clInfoBk
    DataSource = dsPartidas
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  inherited dsFuente: TDataSource
    OnDataChange = dsFuenteDataChange
  end
  inherited qyExplorar: TIBQuery
    BeforeOpen = qyExplorarBeforeOpen
    SQL.Strings = (
      'SELECT P.ID R_ID, '
      '       P.CLAVE R_CLAVE, '
      '       P.FECHA_ALTA R_FECHA_ALTA, '
      '       S.CLAVE R_C_CLAVE,'
      '       S.NOMBRE R_CLIENTE, '
      '       S.RAZON_SOCIAL R_RAZON_SOCIAL, '
      '       PAIS.CODIGO_TEL R_CODIGO_PAIS,'
      '       E.CODIGO_TEL R_CODIGO_ESTADO,'
      '       S.TEL_PRINCIPAL R_TELEFONO,'
      '       CE.CLAVE R_E_CLAVE,'
      '       CE.NOMBRE R_EXTENSION, '
      '       P.FECHA_VALIDEZ R_FECHA_VALIDEZ, '
      '       P.GRANTOTAL R_GRANTOTAL, '
      '       P.PRIORIDAD R_PRIORIDAD, '
      '       P.CONSECUTIVO R_CONSECUTIVO, '
      '       C.DESCRIPCION R_CIUDAD,'
      '       E.DESCRIPCION R_ESTADO,'
      '       PAIS.DESCRIPCION R_PAIS,'
      '       P.ESTATUS R_ESTATUS, '
      '       S2.CLAVE R_V_CLAVE,'
      '       S2.NOMBRE R_VENDEDOR,'
      '       A.CLAVE R_ALMACEN,'
      '       CC.CLAVE R_CC_CLAVE, CC.NOMBRE R_CC_NOMBRE,'
      '       P.SEGURO_SUBTOTAL R_SEGURO_SUBTOTAL,'
      '       P.SEGURO_IVA R_SEGURO_IVA'
      
        'FROM (PEDIDOS P LEFT JOIN SUJETOS_CLIENTES SC ON P.CLIENTE = SC.' +
        'ID)'
      '     LEFT JOIN SUJETOS S ON SC.SUJETO = S.ID'
      '     LEFT JOIN CLIENTES_EXTENSIONES CE ON P.EXTENSION = CE.ID'
      '     LEFT JOIN DOMICILIOS D ON S.DOMICILIO = D.ID'
      '     LEFT JOIN ENTIDAD_GEOGRAFICA C ON D.CIUDAD = C.ID'
      '     LEFT JOIN ENTIDAD_GEOGRAFICA E ON C.LINK   = E.ID'
      '     LEFT JOIN ENTIDAD_GEOGRAFICA PAIS ON E.LINK   = PAIS.ID'
      '     LEFT JOIN SUJETOS_VENDEDORES SV ON SC.VENDEDOR = SV.ID'
      '     LEFT JOIN SUJETOS S2 ON SV.SUJETO = S2.ID'
      '     LEFT JOIN ALMACENES A ON P.ALMACEN = A.ID'
      
        '     LEFT JOIN CONDICIONES_COMERCIALES CC ON P.CONDICION_COMERCI' +
        'AL = CC.ID'
      'WHERE (P.ESTATUS = :P_ESTATUS1 OR P.ESTATUS = :P_ESTATUS2) '
      '               AND P.ID = 0')
    ParamData = <
      item
        DataType = ftString
        Name = 'P_ESTATUS1'
        ParamType = ptUnknown
        Value = 'Sin Afectar'
      end
      item
        DataType = ftString
        Name = 'P_ESTATUS2'
        ParamType = ptUnknown
        Value = 'Autorizar'
      end>
    object qyExplorarR_ID: TIntegerField
      FieldName = 'R_ID'
      Origin = 'PEDIDOS.ID'
      Required = True
    end
    object qyExplorarR_CLAVE: TIBStringField
      FieldName = 'R_CLAVE'
      Origin = 'PEDIDOS.CLAVE'
    end
    object qyExplorarR_FECHA_ALTA: TDateTimeField
      FieldName = 'R_FECHA_ALTA'
      Origin = 'PEDIDOS.FECHA_ALTA'
    end
    object qyExplorarR_C_CLAVE: TIBStringField
      FieldName = 'R_C_CLAVE'
      Origin = 'SUJETOS.CLAVE'
      Size = 50
    end
    object qyExplorarR_CLIENTE: TIBStringField
      FieldName = 'R_CLIENTE'
      Origin = 'SUJETOS.NOMBRE'
      Size = 100
    end
    object qyExplorarR_RAZON_SOCIAL: TIBStringField
      FieldName = 'R_RAZON_SOCIAL'
      Origin = 'SUJETOS.RAZON_SOCIAL'
      Size = 100
    end
    object qyExplorarR_CODIGO_PAIS: TIBStringField
      FieldName = 'R_CODIGO_PAIS'
      Origin = 'ENTIDAD_GEOGRAFICA.CODIGO_TEL'
      Size = 10
    end
    object qyExplorarR_CODIGO_ESTADO: TIBStringField
      FieldName = 'R_CODIGO_ESTADO'
      Origin = 'ENTIDAD_GEOGRAFICA.CODIGO_TEL'
      Size = 10
    end
    object qyExplorarR_TELEFONO: TIBStringField
      FieldName = 'R_TELEFONO'
      Origin = 'SUJETOS.TEL_PRINCIPAL'
    end
    object qyExplorarR_E_CLAVE: TIBStringField
      FieldName = 'R_E_CLAVE'
      Origin = 'CLIENTES_EXTENSIONES.CLAVE'
    end
    object qyExplorarR_EXTENSION: TIBStringField
      FieldName = 'R_EXTENSION'
      Origin = 'CLIENTES_EXTENSIONES.NOMBRE'
      Size = 100
    end
    object qyExplorarR_FECHA_VALIDEZ: TDateTimeField
      FieldName = 'R_FECHA_VALIDEZ'
      Origin = 'PEDIDOS.FECHA_VALIDEZ'
    end
    object qyExplorarR_GRANTOTAL: TFloatField
      FieldName = 'R_GRANTOTAL'
      Origin = 'PEDIDOS.GRANTOTAL'
    end
    object qyExplorarR_PRIORIDAD: TIBStringField
      FieldName = 'R_PRIORIDAD'
      Origin = 'PEDIDOS.PRIORIDAD'
      FixedChar = True
      Size = 2
    end
    object qyExplorarR_CONSECUTIVO: TIntegerField
      FieldName = 'R_CONSECUTIVO'
      Origin = 'PEDIDOS.CONSECUTIVO'
    end
    object qyExplorarR_CIUDAD: TIBStringField
      FieldName = 'R_CIUDAD'
      Origin = 'ENTIDAD_GEOGRAFICA.DESCRIPCION'
      Size = 100
    end
    object qyExplorarR_ESTADO: TIBStringField
      FieldName = 'R_ESTADO'
      Origin = 'ENTIDAD_GEOGRAFICA.DESCRIPCION'
      Size = 100
    end
    object qyExplorarR_PAIS: TIBStringField
      FieldName = 'R_PAIS'
      Origin = 'ENTIDAD_GEOGRAFICA.DESCRIPCION'
      Size = 100
    end
    object qyExplorarR_ESTATUS: TIBStringField
      FieldName = 'R_ESTATUS'
      Origin = 'PEDIDOS.ESTATUS'
    end
    object qyExplorarR_V_CLAVE: TIBStringField
      FieldName = 'R_V_CLAVE'
      Origin = 'SUJETOS.CLAVE'
      Size = 50
    end
    object qyExplorarR_VENDEDOR: TIBStringField
      FieldName = 'R_VENDEDOR'
      Origin = 'SUJETOS.NOMBRE'
      Size = 100
    end
    object qyExplorarR_ALMACEN: TIBStringField
      FieldName = 'R_ALMACEN'
      Origin = 'ALMACENES.CLAVE'
    end
    object qyExplorarR_CC_CLAVE: TIBStringField
      FieldName = 'R_CC_CLAVE'
      Origin = 'CONDICIONES_COMERCIALES.CLAVE'
    end
    object qyExplorarR_CC_NOMBRE: TIBStringField
      FieldName = 'R_CC_NOMBRE'
      Origin = 'CONDICIONES_COMERCIALES.NOMBRE'
      Size = 100
    end
    object qyExplorarR_SEGURO_SUBTOTAL: TFloatField
      FieldName = 'R_SEGURO_SUBTOTAL'
      Origin = 'PEDIDOS.SEGURO_SUBTOTAL'
    end
    object qyExplorarR_SEGURO_IVA: TFloatField
      FieldName = 'R_SEGURO_IVA'
      Origin = 'PEDIDOS.SEGURO_IVA'
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
  object qyPartidas: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = dsFuente
    ParamCheck = True
    SQL.Strings = (
      'SELECT *'
      'FROM PEDIDOS_PARTIDAS(:R_ID)')
    Left = 62
    Top = 295
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'R_ID'
        ParamType = ptUnknown
      end>
    object qyPartidasR_ROWS: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_ROWS'
      ReadOnly = True
    end
    object qyPartidasR_ID: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_ID'
      ReadOnly = True
    end
    object qyPartidasR_PEDIDO: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_PEDIDO'
      ReadOnly = True
    end
    object qyPartidasR_MATERIAL: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_MATERIAL'
      ReadOnly = True
    end
    object qyPartidasR_CLAVE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_CLAVE'
      ReadOnly = True
    end
    object qyPartidasR_DESCRIPCION: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_DESCRIPCION'
      ReadOnly = True
      Size = 100
    end
    object qyPartidasR_UNIDAD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_UNIDAD'
      ReadOnly = True
    end
    object qyPartidasR_DESCRIPCION_UNIDAD: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_DESCRIPCION_UNIDAD'
      ReadOnly = True
      Size = 50
    end
    object qyPartidasR_CANTIDAD: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_CANTIDAD'
      ReadOnly = True
      DisplayFormat = '###,###,###,##0.00'
    end
    object qyPartidasR_CANTIDAD_ENTREGADA: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_CANTIDAD_ENTREGADA'
      ReadOnly = True
      DisplayFormat = '###,###,###,##0.00'
    end
    object qyPartidasR_PRECIO: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_PRECIO'
      ReadOnly = True
      DisplayFormat = '$ ###,###,###,##0.00'
    end
    object qyPartidasR_SUBTOTAL: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_SUBTOTAL'
      ReadOnly = True
      DisplayFormat = '$ ###,###,###,##0.00'
    end
    object qyPartidasR_IVA: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_IVA'
      ReadOnly = True
      DisplayFormat = '$ ###,###,###,##0.00'
    end
    object qyPartidasR_IEPS: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_IEPS'
      ReadOnly = True
      DisplayFormat = '$ ###,###,###,##0.00'
    end
    object qyPartidasR_IMPUESTO1: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_IMPUESTO1'
      ReadOnly = True
      DisplayFormat = '$ ###,###,###,##0.00'
    end
    object qyPartidasR_IMPUESTO2: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_IMPUESTO2'
      ReadOnly = True
      DisplayFormat = '$ ###,###,###,##0.00'
    end
    object qyPartidasR_TOTAL: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_TOTAL'
      ReadOnly = True
      DisplayFormat = '$ ###,###,###,##0.00'
    end
    object qyPartidasR_DESCUENTO_PORC: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_DESCUENTO_PORC'
      ReadOnly = True
      DisplayFormat = '##0.00 %'
    end
    object qyPartidasR_DP: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_DP'
      ReadOnly = True
      DisplayFormat = '$ ###,###,###,##0.00'
    end
    object qyPartidasR_DG: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_DG'
      ReadOnly = True
      DisplayFormat = '$ ###,###,###,##0.00'
    end
    object qyPartidasR_GT: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_GT'
      ReadOnly = True
      DisplayFormat = '$ ###,###,###,##0.00'
    end
    object qyPartidasR_ESTATUS: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_ESTATUS'
      ReadOnly = True
    end
    object qyPartidasR_COTIZACION: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_COTIZACION'
      ReadOnly = True
    end
    object qyPartidasR_CLAVE_COTIZACION: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_CLAVE_COTIZACION'
      ReadOnly = True
    end
    object qyPartidasR_PRECIO_SIN_IMPUESTOS: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_PRECIO_SIN_IMPUESTOS'
      ReadOnly = True
    end
    object qyPartidasR_CAJAS: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_CAJAS'
      ReadOnly = True
    end
    object qyPartidasR_IVA_PORC: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_IVA_PORC'
      ReadOnly = True
    end
    object qyPartidasR_IEPS_PORC: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_IEPS_PORC'
      ReadOnly = True
    end
    object qyPartidasR_IMPUESTO1_PORC: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_IMPUESTO1_PORC'
      ReadOnly = True
    end
    object qyPartidasR_IMPUESTO2_PORC: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_IMPUESTO2_PORC'
      ReadOnly = True
    end
    object qyPartidasR_MATERIAL_CBARRAS: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_MATERIAL_CBARRAS'
      ReadOnly = True
    end
    object qyPartidasR_MATERIAL_OBSERVACIONES: TBlobField
      FieldKind = fkInternalCalc
      FieldName = 'R_MATERIAL_OBSERVACIONES'
      ReadOnly = True
      Size = 8
    end
    object qyPartidasR_MATERIAL_FOTO: TBlobField
      FieldKind = fkInternalCalc
      FieldName = 'R_MATERIAL_FOTO'
      ReadOnly = True
      Size = 8
    end
    object qyPartidasR_PZAS_X_CAJA: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_PZAS_X_CAJA'
      ReadOnly = True
    end
    object qyPartidasR_COMENTARIO: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_COMENTARIO'
      ReadOnly = True
      Size = 50
    end
    object qyPartidasR_MEDIDA: TIntegerField
      FieldName = 'R_MEDIDA'
      Origin = 'PEDIDOS_PARTIDAS.R_MEDIDA'
    end
    object qyPartidasR_MEDIDA_DESCRIPCION: TIBStringField
      FieldName = 'R_MEDIDA_DESCRIPCION'
      Origin = 'PEDIDOS_PARTIDAS.R_MEDIDA_DESCRIPCION'
    end
    object qyPartidasR_COLOR: TIntegerField
      FieldName = 'R_COLOR'
      Origin = 'PEDIDOS_PARTIDAS.R_COLOR'
    end
    object qyPartidasR_COLOR_NOMBRE: TIBStringField
      FieldName = 'R_COLOR_NOMBRE'
      Origin = 'PEDIDOS_PARTIDAS.R_COLOR_NOMBRE'
      Size = 50
    end
    object qyPartidasR_CLIENTE_MAT_C: TIBStringField
      FieldName = 'R_CLIENTE_MAT_C'
      Origin = 'PEDIDOS_PARTIDAS.R_CLIENTE_MAT_C'
    end
    object qyPartidasR_CLIENTE_MAT_D: TIBStringField
      FieldName = 'R_CLIENTE_MAT_D'
      Origin = 'PEDIDOS_PARTIDAS.R_CLIENTE_MAT_D'
      Size = 100
    end
    object qyPartidasR_F_PROM_ENT: TDateTimeField
      FieldName = 'R_F_PROM_ENT'
      Origin = 'PEDIDOS_PARTIDAS.R_F_PROM_ENT'
    end
    object qyPartidasR_PNC: TFloatField
      FieldName = 'R_PNC'
      Origin = 'PEDIDOS_PARTIDAS.R_PNC'
      DisplayFormat = '$ ###,###,###,##0.00'
    end
    object qyPartidasR_CANTIDAD_PENDIENTE: TFloatField
      FieldName = 'R_CANTIDAD_PENDIENTE'
      Origin = 'PEDIDOS_PARTIDAS.R_CANTIDAD_PENDIENTE'
    end
    object qyPartidasR_SERIE: TIBStringField
      FieldName = 'R_SERIE'
      Origin = 'PEDIDOS_PARTIDAS.R_SERIE'
      Size = 50
    end
    object qyPartidasR_NUM_SERIE: TIBStringField
      FieldName = 'R_NUM_SERIE'
      Origin = 'PEDIDOS_PARTIDAS.R_NUM_SERIE'
      Size = 2
    end
    object qyPartidasR_COSTO_ULT_COMPRA: TFloatField
      FieldName = 'R_COSTO_ULT_COMPRA'
      Origin = 'PEDIDOS_PARTIDAS.R_COSTO_ULT_COMPRA'
    end
    object qyPartidasR_DG_PORC: TFloatField
      FieldName = 'R_DG_PORC'
      Origin = 'PEDIDOS_PARTIDAS.R_DG_PORC'
      DisplayFormat = '##0.00 %'
    end
  end
  object dsPartidas: TDataSource
    DataSet = qyPartidas
    Left = 94
    Top = 295
  end
  object spP_PEDIDOS_PREVALIDACION: TIBStoredProc
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    StoredProcName = 'P_PEDIDOS_PREVALIDACION'
    Left = 296
    Top = 176
    ParamData = <
      item
        DataType = ftInteger
        Name = 'P_ID'
        ParamType = ptInput
        Value = '0'
      end>
  end
  object spP_PEDIDOS_VALIDACION: TIBStoredProc
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    StoredProcName = 'P_PEDIDOS_VALIDACION'
    Left = 328
    Top = 176
    ParamData = <
      item
        DataType = ftInteger
        Name = 'P_ID'
        ParamType = ptInput
        Value = '0'
      end>
  end
  object spP_PEDIDOS_LIBERADO: TIBStoredProc
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    StoredProcName = 'P_PEDIDOS_LIBERADO'
    Left = 360
    Top = 176
    ParamData = <
      item
        DataType = ftInteger
        Name = 'R_FACTURAS'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'R_FACTURA'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'R_MI'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'P_ID'
        ParamType = ptInput
        Value = '0'
      end>
  end
  object spM_PEDIDO_CANTIDAD: TIBStoredProc
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    StoredProcName = 'M_PEDIDO_CANTIDAD'
    Left = 296
    Top = 208
    ParamData = <
      item
        DataType = ftInteger
        Name = 'R_ID'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'P_ID'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'P_CANTIDAD'
        ParamType = ptInput
        Value = '0'
      end>
  end
  object spP_PEDIDO_CANCELAR: TIBStoredProc
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    StoredProcName = 'P_PEDIDO_CANCELAR'
    Left = 360
    Top = 208
    ParamData = <
      item
        DataType = ftInteger
        Name = 'P_ID'
        ParamType = ptInput
        Value = '0'
      end>
  end
  object spM_PEDIDO_PRECIO: TIBStoredProc
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    StoredProcName = 'M_PEDIDO_PRECIO'
    Left = 328
    Top = 208
    ParamData = <
      item
        DataType = ftInteger
        Name = 'R_ID'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'P_ID'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'P_PRECIO'
        ParamType = ptInput
        Value = '0'
      end>
  end
end
