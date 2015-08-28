inherited frmCapturar_Despachador: TfrmCapturar_Despachador
  Tag = 24
  Left = 269
  Top = 234
  Caption = 'Despachador'
  ClientHeight = 464
  ClientWidth = 884
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter [0]
    Left = 445
    Top = 114
    Width = 3
    Height = 328
    Cursor = crHSplit
  end
  inherited paLienzo: TPanel
    Width = 884
    Height = 54
    Align = alTop
    inherited laHEstatus: TLabel
      Left = 170
    end
    object Label2: TLabel [1]
      Left = 8
      Top = 8
      Width = 30
      Height = 13
      Caption = 'F. Alta'
      Transparent = True
    end
    inherited buAplicar: TBitBtn
      Left = 308
      TabOrder = 3
    end
    inherited edHEstatus: TDBEdit
      Left = 186
      TabOrder = 2
    end
    inherited cbHEstatus: TDBLookupComboBox
      Left = 170
    end
    object deFechaAlta: TDBEdit
      Left = 8
      Top = 24
      Width = 153
      Height = 21
      DataField = 'FECHA_ALTA'
      DataSource = dsFuente
      TabOrder = 0
    end
  end
  inherited fpPadre: TPanel
    Width = 884
    inherited Panel1: TPanel
      Width = 884
    end
  end
  inherited Panel2: TPanel
    Top = 442
    Width = 884
  end
  object dgPedidos: TDBGrid [4]
    Left = 0
    Top = 114
    Width = 445
    Height = 328
    Align = alLeft
    DataSource = dsPedidos
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object dgFacturas: TDBGrid [5]
    Left = 448
    Top = 114
    Width = 436
    Height = 328
    Align = alClient
    DataSource = dsFacturas
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  inherited TCapturar: TIBTable
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    AfterOpen = TCapturarAfterOpen
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'FECHA_ALTA'
        DataType = ftDateTime
      end
      item
        Name = 'USUARIO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ESTATUS'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY44'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'RDB$FOREIGN88'
        Fields = 'USUARIO'
      end>
    IndexFieldNames = 'ID'
    MasterFields = 'R_ID'
    StoreDefs = True
    TableName = 'DESPACHADOR'
    object TCapturarID: TIntegerField [0]
      FieldName = 'ID'
    end
    object TCapturarFECHA_ALTA: TDateTimeField [1]
      FieldName = 'FECHA_ALTA'
    end
    object TCapturarUSUARIO: TIntegerField [2]
      FieldName = 'USUARIO'
    end
    object TCapturarESTATUS: TIBStringField [3]
      FieldName = 'ESTATUS'
    end
  end
  object qyPedidos: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    DataSource = dsFuente
    SQL.Strings = (
      '      SELECT DD.ID R_ID,'
      '             S.CLAVE R_CLIENTE,'
      '             S.NOMBRE R_C_NOMBRE,'
      '             S.RAZON_SOCIAL R_C_RSOCIAL,'
      '             CE.CLAVE R_EXTENSION,'
      '             CE.NOMBRE R_E_NOMBRE,'
      '             P.ID R_P_ID,'
      '             P.CLAVE R_P_CLAVE,'
      '             P.CONSECUTIVO R_P_FOLIO,'
      '             P.GRANTOTAL R_P_GRANTOTAL,'
      '             P.ESTATUS R_P_ESTATUS,'
      '             A.CLAVE R_ALMACEN,'
      '             A.NOMBRE R_A_NOMBRE,'
      '             CC.CLAVE R_CCOMERCIAL'
      
        '      FROM (DESPACHADOR_DETALLE DD LEFT JOIN PEDIDOS P ON DD.ID_' +
        'REFERENCIA = P.ID)'
      '           LEFT JOIN SUJETOS_CLIENTES SC ON P.CLIENTE = SC.ID'
      '           LEFT JOIN SUJETOS S           ON SC.SUJETO = S.ID'
      
        '           LEFT JOIN CLIENTES_EXTENSIONES CE ON P.EXTENSION = CE' +
        '.ID'
      '           LEFT JOIN ALMACENES A ON P.ALMACEN = A.ID'
      
        '           LEFT JOIN CONDICIONES_COMERCIALES CC ON P.CONDICION_C' +
        'OMERCIAL = CC.ID'
      
        '      WHERE (DD.TABLA_REFERENCIA = '#39'PEDIDOS'#39') AND (DD.LINK = :ID' +
        ')'
      '      ORDER BY DD.ID')
    Left = 112
    Top = 304
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptUnknown
      end>
    object qyPedidosR_ID: TIntegerField
      FieldName = 'R_ID'
      Origin = 'DESPACHADOR_DETALLE.ID'
      Required = True
    end
    object qyPedidosR_CLIENTE: TIBStringField
      FieldName = 'R_CLIENTE'
      Origin = 'SUJETOS.CLAVE'
      Size = 50
    end
    object qyPedidosR_C_NOMBRE: TIBStringField
      FieldName = 'R_C_NOMBRE'
      Origin = 'SUJETOS.NOMBRE'
      Size = 100
    end
    object qyPedidosR_C_RSOCIAL: TIBStringField
      FieldName = 'R_C_RSOCIAL'
      Origin = 'SUJETOS.RAZON_SOCIAL'
      Size = 100
    end
    object qyPedidosR_EXTENSION: TIBStringField
      FieldName = 'R_EXTENSION'
      Origin = 'CLIENTES_EXTENSIONES.CLAVE'
    end
    object qyPedidosR_E_NOMBRE: TIBStringField
      FieldName = 'R_E_NOMBRE'
      Origin = 'CLIENTES_EXTENSIONES.NOMBRE'
      Size = 100
    end
    object qyPedidosR_P_ID: TIntegerField
      FieldName = 'R_P_ID'
      Origin = 'PEDIDOS.ID'
    end
    object qyPedidosR_P_CLAVE: TIBStringField
      FieldName = 'R_P_CLAVE'
      Origin = 'PEDIDOS.CLAVE'
    end
    object qyPedidosR_P_FOLIO: TIntegerField
      FieldName = 'R_P_FOLIO'
      Origin = 'PEDIDOS.CONSECUTIVO'
    end
    object qyPedidosR_P_GRANTOTAL: TFloatField
      FieldName = 'R_P_GRANTOTAL'
      Origin = 'PEDIDOS.GRANTOTAL'
      DisplayFormat = '$ ###,###,##0.00'
    end
    object qyPedidosR_P_ESTATUS: TIBStringField
      FieldName = 'R_P_ESTATUS'
      Origin = 'PEDIDOS.ESTATUS'
    end
    object qyPedidosR_ALMACEN: TIBStringField
      FieldName = 'R_ALMACEN'
      Origin = 'ALMACENES.CLAVE'
    end
    object qyPedidosR_A_NOMBRE: TIBStringField
      FieldName = 'R_A_NOMBRE'
      Origin = 'ALMACENES.NOMBRE'
      Size = 100
    end
    object qyPedidosR_CCOMERCIAL: TIBStringField
      FieldName = 'R_CCOMERCIAL'
      Origin = 'CONDICIONES_COMERCIALES.CLAVE'
    end
  end
  object dsPedidos: TDataSource
    DataSet = qyPedidos
    Left = 144
    Top = 304
  end
  object qyFacturas: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    DataSource = dsFuente
    SQL.Strings = (
      'SELECT DD.ID R_ID,'
      '       S.CLAVE R_C_CLAVE,'
      '       S.NOMBRE R_C_NOMBRE,'
      '       S.RAZON_SOCIAL R_C_RSOCIAL,'
      '       CE.NOMBRE R_E_NOMBRE,'
      '       F.ID R_F_ID,'
      '       F.CLAVE R_F_CLAVE,'
      '       F.SERIE_FACTURA R_F_SERIE,'
      '       F.CONSECUTIVO R_F_FOLIO,'
      '       F.GRANTOTAL R_F_GRANTOTAL, '
      '       F.ESTATUS R_F_ESTATUS,'
      '       A.CLAVE R_A_CLAVE,'
      '       A.NOMBRE R_A_NOMBRE,'
      '       CC.CLAVE R_CCOMERCIAL  '
      
        'FROM (DESPACHADOR_DETALLE DD LEFT JOIN FACTURAS F ON DD.ID_REFER' +
        'ENCIA = F.ID)'
      '     LEFT JOIN SUJETOS_CLIENTES SC ON F.CLIENTE = SC.ID'
      '     LEFT JOIN SUJETOS S ON SC.SUJETO    = S.ID'
      '     LEFT JOIN CLIENTES_EXTENSIONES CE ON F.EXTENSION = CE.ID'
      '     LEFT JOIN ALMACENES A ON F.ALMACEN = A.ID '
      
        '     LEFT JOIN CONDICIONES_COMERCIALES CC ON F.CONDICION_COMERCI' +
        'AL = CC.ID'
      'WHERE (DD.TABLA_REFERENCIA = '#39'FACTURAS'#39') AND (DD.LINK = :ID) '
      'ORDER BY DD.ID')
    Left = 176
    Top = 304
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptUnknown
      end>
    object qyFacturasR_ID: TIntegerField
      FieldName = 'R_ID'
      Origin = 'DESPACHADOR_DETALLE.ID'
      Required = True
    end
    object qyFacturasR_C_CLAVE: TIBStringField
      FieldName = 'R_C_CLAVE'
      Origin = 'SUJETOS.CLAVE'
      Size = 50
    end
    object qyFacturasR_C_NOMBRE: TIBStringField
      FieldName = 'R_C_NOMBRE'
      Origin = 'SUJETOS.NOMBRE'
      Size = 100
    end
    object qyFacturasR_C_RSOCIAL: TIBStringField
      FieldName = 'R_C_RSOCIAL'
      Origin = 'SUJETOS.RAZON_SOCIAL'
      Size = 100
    end
    object qyFacturasR_E_NOMBRE: TIBStringField
      FieldName = 'R_E_NOMBRE'
      Origin = 'CLIENTES_EXTENSIONES.NOMBRE'
      Size = 100
    end
    object qyFacturasR_F_ID: TIntegerField
      FieldName = 'R_F_ID'
      Origin = 'FACTURAS.ID'
    end
    object qyFacturasR_F_CLAVE: TIBStringField
      FieldName = 'R_F_CLAVE'
      Origin = 'FACTURAS.CLAVE'
    end
    object qyFacturasR_F_SERIE: TIBStringField
      FieldName = 'R_F_SERIE'
      Origin = 'FACTURAS.SERIE_FACTURA'
      Size = 10
    end
    object qyFacturasR_F_FOLIO: TIntegerField
      FieldName = 'R_F_FOLIO'
      Origin = 'FACTURAS.CONSECUTIVO'
    end
    object qyFacturasR_F_GRANTOTAL: TFloatField
      FieldName = 'R_F_GRANTOTAL'
      Origin = 'FACTURAS.GRANTOTAL'
      DisplayFormat = '$ ###,###,##0.00'
    end
    object qyFacturasR_F_ESTATUS: TIBStringField
      FieldName = 'R_F_ESTATUS'
      Origin = 'FACTURAS.ESTATUS'
    end
    object qyFacturasR_A_CLAVE: TIBStringField
      FieldName = 'R_A_CLAVE'
      Origin = 'ALMACENES.CLAVE'
    end
    object qyFacturasR_A_NOMBRE: TIBStringField
      FieldName = 'R_A_NOMBRE'
      Origin = 'ALMACENES.NOMBRE'
      Size = 100
    end
    object qyFacturasR_CCOMERCIAL: TIBStringField
      FieldName = 'R_CCOMERCIAL'
      Origin = 'CONDICIONES_COMERCIALES.CLAVE'
    end
  end
  object dsFacturas: TDataSource
    DataSet = qyFacturas
    Left = 208
    Top = 304
  end
  object spACT_CLIENTE_PEDIDO: TIBStoredProc
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    StoredProcName = 'ACT_CLIENTE_PEDIDO'
    Left = 368
    Top = 368
    ParamData = <
      item
        DataType = ftInteger
        Name = 'P_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'P_CLIENTE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'P_EXTENSION'
        ParamType = ptInput
      end>
  end
  object spACT_CLIENTE_FACTURA: TIBStoredProc
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    StoredProcName = 'ACT_CLIENTE_FACTURA'
    Left = 400
    Top = 368
    ParamData = <
      item
        DataType = ftInteger
        Name = 'P_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'P_CLIENTE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'P_EXTENSION'
        ParamType = ptInput
      end>
  end
  object spDESPACHADOR_AGRUPAR_FAC: TIBStoredProc
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    StoredProcName = 'DESPACHADOR_AGRUPAR_FAC'
    Left = 432
    Top = 368
    ParamData = <
      item
        DataType = ftInteger
        Name = 'P_ID'
        ParamType = ptInput
      end>
  end
  object spDESPACHADOR_AGRUPAR_PED: TIBStoredProc
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    StoredProcName = 'DESPACHADOR_AGRUPAR_PED'
    Left = 464
    Top = 368
    ParamData = <
      item
        DataType = ftInteger
        Name = 'P_ID'
        ParamType = ptInput
      end>
  end
  object spQUITAR_IMPUESTOS_PEDIDO: TIBStoredProc
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    StoredProcName = 'QUITAR_IMPUESTOS_PEDIDO'
    Left = 496
    Top = 368
    ParamData = <
      item
        DataType = ftInteger
        Name = 'P_ID'
        ParamType = ptInput
      end>
  end
  object spAUMENTAR_IMPUESTOS_PEDIDO: TIBStoredProc
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    StoredProcName = 'AUMENTAR_IMPUESTOS_PEDIDO'
    Left = 528
    Top = 368
    ParamData = <
      item
        DataType = ftInteger
        Name = 'P_ID'
        ParamType = ptInput
      end>
  end
end
