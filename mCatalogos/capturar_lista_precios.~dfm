inherited frmCapturar_lista_precios: TfrmCapturar_lista_precios
  Left = 347
  Top = 71
  Caption = 'Lista de Precios'
  ClientHeight = 460
  ClientWidth = 756
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited paLienzo: TPanel
    Width = 756
    Height = 378
    object Label6: TLabel
      Left = 8
      Top = 8
      Width = 71
      Height = 13
      Caption = 'Material (Enter)'
    end
    object Label9: TLabel
      Left = 160
      Top = 8
      Width = 30
      Height = 13
      Caption = '&Fecha'
      FocusControl = deFecha
      Transparent = True
    end
    object Label14: TLabel
      Left = 248
      Top = 8
      Width = 66
      Height = 13
      Caption = '&Precio Minimo'
      FocusControl = cePrecio_Minimo
      Transparent = True
    end
    object Label3: TLabel
      Left = 340
      Top = 8
      Width = 69
      Height = 13
      Caption = 'Precio Ma&ximo'
      FocusControl = cePrecio_Maximo
    end
    object Label22: TLabel
      Left = 8
      Top = 48
      Width = 96
      Height = 13
      Caption = 'Material Descripcion'
    end
    object Label1: TLabel
      Left = 432
      Top = 8
      Width = 35
      Height = 13
      Caption = '&Estatus'
      FocusControl = cbEstatus
    end
    object edMaterial: TEdit
      Left = 8
      Top = 24
      Width = 147
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
      OnKeyPress = edMaterialKeyPress
    end
    object deFecha: TEdit
      Left = 160
      Top = 24
      Width = 83
      Height = 21
      TabStop = False
      TabOrder = 1
      OnEnter = deFechaEnter
    end
    object cePrecio_Minimo: TEdit
      Left = 248
      Top = 24
      Width = 86
      Height = 21
      TabOrder = 2
    end
    object cePrecio_Maximo: TEdit
      Left = 340
      Top = 24
      Width = 86
      Height = 21
      TabOrder = 3
      OnEnter = cePrecio_MaximoEnter
    end
    object edDescripcion: TEdit
      Left = 8
      Top = 63
      Width = 418
      Height = 21
      TabStop = False
      Color = clBackground
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
      Text = 'producto sin nombre'
    end
    object cbEstatus: TDBComboBox
      Left = 432
      Top = 24
      Width = 121
      Height = 21
      DataField = 'ESTATUS'
      DataSource = dsFuente
      ItemHeight = 13
      Items.Strings = (
        'Activo'
        'Cancelado')
      TabOrder = 4
    end
  end
  inherited fpPadre: TPanel
    Width = 756
    inherited Panel1: TPanel
      Width = 756
    end
  end
  inherited Panel2: TPanel
    Top = 438
    Width = 756
  end
  inherited TCapturar: TIBTable
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    Active = True
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'FECHA'
        DataType = ftDateTime
      end
      item
        Name = 'FECHA_U_ACT_1'
        DataType = ftDateTime
      end
      item
        Name = 'FECHA_U_ACT_2'
        DataType = ftDateTime
      end
      item
        Name = 'NOMBRE_LISTA_PRECIO'
        DataType = ftInteger
      end
      item
        Name = 'MATERIAL'
        DataType = ftInteger
      end
      item
        Name = 'PRECIO_MINIMO'
        DataType = ftFloat
      end
      item
        Name = 'PRECIO_MAXIMO'
        DataType = ftFloat
      end
      item
        Name = 'USUARIO'
        DataType = ftInteger
      end
      item
        Name = 'INCLUIR'
        Attributes = [faFixed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'ENVIAR'
        Attributes = [faFixed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'COMM_ID_EXTERNO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'MODIFICO'
        DataType = ftInteger
      end
      item
        Name = 'PRECIO_MINIMO_ANT'
        DataType = ftFloat
      end
      item
        Name = 'PRECIO_MAXIMO_ANT'
        DataType = ftFloat
      end
      item
        Name = 'ESTATUS'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY14'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'RDB$FOREIGN16'
        Fields = 'NOMBRE_LISTA_PRECIO'
      end
      item
        Name = 'RDB$FOREIGN17'
        Fields = 'MATERIAL'
      end
      item
        Name = 'RDB$FOREIGN274'
        Fields = 'USUARIO'
      end>
    IndexFieldNames = 'ID'
    MasterFields = 'R_ID'
    StoreDefs = True
    TableName = 'LISTA_PRECIOS'
    object TCapturarID: TIntegerField [0]
      FieldName = 'ID'
      Required = True
    end
    object TCapturarNOMBRE_LISTA_PRECIO: TIntegerField [1]
      FieldName = 'NOMBRE_LISTA_PRECIO'
    end
    object TCapturarMATERIAL: TIntegerField [2]
      FieldName = 'MATERIAL'
    end
    object TCapturarFECHA: TDateTimeField [3]
      FieldName = 'FECHA'
    end
    object TCapturarPRECIO_MINIMO: TFloatField [4]
      FieldName = 'PRECIO_MINIMO'
    end
    object TCapturarPRECIO_MAXIMO: TFloatField [5]
      FieldName = 'PRECIO_MAXIMO'
    end
    object TCapturarUSUARIO: TIntegerField [6]
      FieldName = 'USUARIO'
    end
    object TCapturarINCLUIR: TIBStringField [7]
      FieldName = 'INCLUIR'
      Size = 2
    end
    object TCapturarESTATUS: TIBStringField [8]
      FieldName = 'ESTATUS'
    end
    object TCapturarFECHA_U_ACT_1: TDateTimeField [9]
      FieldName = 'FECHA_U_ACT_1'
    end
    object TCapturarFECHA_U_ACT_2: TDateTimeField [10]
      FieldName = 'FECHA_U_ACT_2'
    end
    object TCapturarENVIAR: TIBStringField [11]
      FieldName = 'ENVIAR'
      FixedChar = True
      Size = 2
    end
    object TCapturarCOMM_ID_EXTERNO: TIBStringField [12]
      FieldName = 'COMM_ID_EXTERNO'
    end
    object TCapturarPRECIO_MINIMO_ANT: TFloatField [13]
      FieldName = 'PRECIO_MINIMO_ANT'
    end
    object TCapturarPRECIO_MAXIMO_ANT: TFloatField [14]
      FieldName = 'PRECIO_MAXIMO_ANT'
    end
    object TCapturarMODIFICO: TIntegerField [15]
      FieldName = 'MODIFICO'
    end
  end
  inherited spID: TIBStoredProc
    ParamData = <
      item
        DataType = ftInteger
        Name = 'R_ID'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'P_QUIEN'
        ParamType = ptInput
        Value = 'LISTA_PRECIOS'
      end>
  end
  object qyIBXMateriales: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    SQL.Strings = (
      'SELECT *'
      'FROM MATERIALES'
      'WHERE CLAVE = :P_CLAVE')
    Left = 280
    Top = 368
    ParamData = <
      item
        DataType = ftString
        Name = 'P_CLAVE'
        ParamType = ptUnknown
      end>
    object qyIBXMaterialesID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qyIBXMaterialesCLAVE: TIBStringField
      FieldName = 'CLAVE'
    end
    object qyIBXMaterialesDESCRIPCION: TIBStringField
      FieldName = 'DESCRIPCION'
      Size = 100
    end
    object qyIBXMaterialesUNIDAD_BASE: TIntegerField
      FieldName = 'UNIDAD_BASE'
    end
    object qyIBXMaterialesLINEA: TIntegerField
      FieldName = 'LINEA'
    end
    object qyIBXMaterialesUNIDADES_COMPRADAS: TFloatField
      FieldName = 'UNIDADES_COMPRADAS'
    end
    object qyIBXMaterialesUNIDADES_VENDIDAS: TFloatField
      FieldName = 'UNIDADES_VENDIDAS'
    end
    object qyIBXMaterialesUNIDADES_PRODUCIDAS: TFloatField
      FieldName = 'UNIDADES_PRODUCIDAS'
    end
    object qyIBXMaterialesLARGO: TFloatField
      FieldName = 'LARGO'
    end
    object qyIBXMaterialesANCHO: TFloatField
      FieldName = 'ANCHO'
    end
    object qyIBXMaterialesALTO: TFloatField
      FieldName = 'ALTO'
    end
    object qyIBXMaterialesUNIDAD_LAA: TIntegerField
      FieldName = 'UNIDAD_LAA'
    end
    object qyIBXMaterialesLOTE: TIBStringField
      FieldName = 'LOTE'
      Size = 2
    end
    object qyIBXMaterialesNUM_SERIE: TIBStringField
      FieldName = 'NUM_SERIE'
      Size = 2
    end
    object qyIBXMaterialesCONSOLIDADO: TIBStringField
      FieldName = 'CONSOLIDADO'
      Size = 2
    end
    object qyIBXMaterialesCOSTO_PROMEDIO: TIBStringField
      FieldName = 'COSTO_PROMEDIO'
      Size = 2
    end
    object qyIBXMaterialesCOSTO_PEPS: TIBStringField
      FieldName = 'COSTO_PEPS'
      Size = 2
    end
    object qyIBXMaterialesCOSTO_UEPS: TIBStringField
      FieldName = 'COSTO_UEPS'
      Size = 2
    end
    object qyIBXMaterialesFECHA_CERO_EXIST: TDateTimeField
      FieldName = 'FECHA_CERO_EXIST'
    end
    object qyIBXMaterialesFECHA_ULTIMA_COMPRA: TDateTimeField
      FieldName = 'FECHA_ULTIMA_COMPRA'
    end
    object qyIBXMaterialesCODIGO_BARRAS: TIBStringField
      FieldName = 'CODIGO_BARRAS'
    end
    object qyIBXMaterialesIVA_PORC: TFloatField
      FieldName = 'IVA_PORC'
    end
    object qyIBXMaterialesIEPS_PORC: TFloatField
      FieldName = 'IEPS_PORC'
    end
    object qyIBXMaterialesIMPUESTO_1_PORC: TFloatField
      FieldName = 'IMPUESTO_1_PORC'
    end
    object qyIBXMaterialesIMPUESTO_2_PORC: TFloatField
      FieldName = 'IMPUESTO_2_PORC'
    end
    object qyIBXMaterialesOBSERVACIONES: TBlobField
      FieldName = 'OBSERVACIONES'
      BlobType = ftBlob
      Size = 8
    end
    object qyIBXMaterialesFOTO: TBlobField
      FieldName = 'FOTO'
      BlobType = ftBlob
      Size = 8
    end
    object qyIBXMaterialesDIAS_DE_VIGENCIA: TIntegerField
      FieldName = 'DIAS_DE_VIGENCIA'
    end
    object qyIBXMaterialesCOSTO_ULT_COMPRA: TFloatField
      FieldName = 'COSTO_ULT_COMPRA'
    end
    object qyIBXMaterialesNUM_ETIQUETAS: TIntegerField
      FieldName = 'NUM_ETIQUETAS'
    end
    object qyIBXMaterialesACTIVO_FIJO: TIBStringField
      FieldName = 'ACTIVO_FIJO'
      Size = 2
    end
    object qyIBXMaterialesCALIDAD: TIntegerField
      FieldName = 'CALIDAD'
    end
  end
  object dsMateriales: TDataSource
    DataSet = qyIBXMateriales
    Left = 312
    Top = 368
  end
  object qyRepetido: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    SQL.Strings = (
      'SELECT COUNT(*) R_CUANTOS'
      'FROM LISTA_PRECIOS L, NOMBRE_LISTA_PRECIOS N'
      'WHERE (L.NOMBRE_LISTA_PRECIO = N.ID) AND '
      '               (L.NOMBRE_LISTA_PRECIO = :P_GRUPO)  AND'
      
        '               (L.MATERIAL                          = :P_MATERIA' +
        'L)')
    Left = 344
    Top = 367
    ParamData = <
      item
        DataType = ftString
        Name = 'P_GRUPO'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'P_MATERIAL'
        ParamType = ptUnknown
        Value = '0'
      end>
    object qyRepetidoR_CUANTOS: TIntegerField
      FieldName = 'R_CUANTOS'
      ProviderFlags = []
    end
  end
end
