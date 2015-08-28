inherited frmCapturar_preconfiguracion_touchScreen: TfrmCapturar_preconfiguracion_touchScreen
  Left = 309
  Top = 144
  Caption = 'Capturar Pre-Configuracion touchScreen'
  PixelsPerInch = 96
  TextHeight = 13
  inherited paLienzo: TPanel
    object Label2: TLabel
      Left = 323
      Top = 8
      Width = 37
      Height = 13
      Caption = '&Material'
      FocusControl = cbMateriales
    end
    object Label4: TLabel
      Left = 513
      Top = 8
      Width = 34
      Height = 13
      Caption = '&Unidad'
      FocusControl = cbUnidades
    end
    object Label6: TLabel
      Left = 458
      Top = 48
      Width = 29
      Height = 13
      Caption = 'Orde&n'
      FocusControl = seOrden
    end
    object laTipoCaja: TLabel
      Left = 8
      Top = 48
      Width = 60
      Height = 13
      Caption = '&Tipo de Caja'
      FocusControl = cbTipoDeCajas
    end
    object laAlmacen: TLabel
      Left = 8
      Top = 8
      Width = 41
      Height = 13
      Caption = '&Almacen'
      FocusControl = cbAlmacenes
    end
    object Label1: TLabel
      Left = 173
      Top = 8
      Width = 29
      Height = 13
      Caption = '&Grupo'
      FocusControl = cbGrupos
    end
    object cbTipoDeCajas: TDBLookupComboBox
      Left = 8
      Top = 64
      Width = 161
      Height = 21
      DataField = 'TIPO_CAJA'
      DataSource = dsFuente
      KeyField = 'R_ID'
      ListField = 'R_DESCRIPCION'
      ListSource = dsVerMaterialesCajas
      TabOrder = 8
    end
    object cbConCajas: TDBCheckBox
      Left = 176
      Top = 67
      Width = 71
      Height = 18
      Caption = 'C&on Cajas'
      DataField = 'CON_CAJAS'
      DataSource = dsFuente
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      ValueChecked = 'Si'
      ValueUnchecked = 'No'
    end
    object cbCobrarCajas: TDBCheckBox
      Left = 272
      Top = 67
      Width = 83
      Height = 18
      Caption = 'Co&brar Cajas'
      DataField = 'COBRAR_CAJAS'
      DataSource = dsFuente
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      ValueChecked = 'Si'
      ValueUnchecked = 'No'
    end
    object seOrden: TDBEdit
      Left = 458
      Top = 64
      Width = 49
      Height = 21
      DataField = 'ORDEN_VISUALIZACION'
      DataSource = dsFuente
      TabOrder = 7
    end
    object cbUnidades: TDBLookupComboBox
      Left = 513
      Top = 24
      Width = 123
      Height = 21
      DataField = 'MATERIAL_UNIDAD'
      DataSource = dsFuente
      KeyField = 'R_UNIDAD'
      ListField = 'R_DESCRIPCION'
      ListSource = dsVer_Unidades_Material
      TabOrder = 3
    end
    object cbAlmacenes: TDBLookupComboBox
      Left = 8
      Top = 23
      Width = 161
      Height = 21
      DataField = 'ALMACEN'
      DataSource = dsFuente
      KeyField = 'ID'
      ListField = 'NOMBRE'
      ListSource = dsAlmacenes
      TabOrder = 0
    end
    object cbGrupos: TDBLookupComboBox
      Left = 173
      Top = 23
      Width = 145
      Height = 21
      DataField = 'GRUPO_MATERIAL'
      DataSource = dsFuente
      KeyField = 'ID'
      ListField = 'NOMBRE'
      ListSource = dsGrupos_Materiales
      TabOrder = 1
    end
    object cbMateriales: TDBLookupComboBox
      Left = 323
      Top = 23
      Width = 184
      Height = 21
      DataField = 'MATERIAL'
      DataSource = dsFuente
      KeyField = 'R_MATERIAL'
      ListField = 'R_MATERIAL_DESCRIPCION'
      ListSource = dsGrupos_Materiales_Detalle
      TabOrder = 2
    end
    object cbVisualizar: TDBCheckBox
      Left = 368
      Top = 67
      Width = 67
      Height = 18
      Caption = 'Visuali&zar'
      DataField = 'VISUALIZAR'
      DataSource = dsFuente
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      ValueChecked = 'Si'
      ValueUnchecked = 'No'
    end
  end
  inherited qyBotones: TIBQuery
    Left = 88
  end
  inherited TCapturar: TIBTable
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    IndexFieldNames = 'ID'
    MasterFields = 'R_ID'
    TableName = 'PRECONFIGURACION_TOUCHSCREEN'
    object TCapturarID: TIntegerField [0]
      FieldName = 'ID'
      Required = True
    end
    object TCapturarALMACEN: TIntegerField [1]
      FieldName = 'ALMACEN'
    end
    object TCapturarGRUPO_MATERIAL: TIntegerField [2]
      FieldName = 'GRUPO_MATERIAL'
    end
    object TCapturarMATERIAL: TIntegerField [3]
      FieldName = 'MATERIAL'
    end
    object TCapturarMATERIAL_UNIDAD: TIntegerField [4]
      FieldName = 'MATERIAL_UNIDAD'
    end
    object TCapturarCON_CAJAS: TIBStringField [5]
      FieldName = 'CON_CAJAS'
      Size = 2
    end
    object TCapturarTIPO_CAJA: TIntegerField [6]
      FieldName = 'TIPO_CAJA'
    end
    object TCapturarCOBRAR_CAJAS: TIBStringField [7]
      FieldName = 'COBRAR_CAJAS'
      Size = 2
    end
    object TCapturarVISUALIZAR: TIBStringField [8]
      FieldName = 'VISUALIZAR'
      Size = 2
    end
    object TCapturarORDEN_VISUALIZACION: TIntegerField [9]
      FieldName = 'ORDEN_VISUALIZACION'
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
        Value = 'PRECONFIGURACION_TOUCHSCREEN'
      end>
  end
  object dsVer_Unidades_Material: TDataSource
    DataSet = qyVer_Unidades_Material
    Left = 592
    Top = 71
  end
  object qyVer_Unidades_Material: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    SQL.Strings = (
      'SELECT *'
      'FROM VER_UNIDADES_MATERIAL(:P_MATERIAL)')
    Left = 560
    Top = 71
    ParamData = <
      item
        DataType = ftString
        Name = 'P_MATERIAL'
        ParamType = ptUnknown
        Value = '0'
      end>
  end
  object dsAlmacenes: TDataSource
    DataSet = TAlmacenes
    Left = 112
    Top = 71
  end
  object TAlmacenes: TIBTable
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'CLAVE'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'NOMBRE'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'COMPRA'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'VENDE'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'TRANSFORMA'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'FECHA_ALTA'
        DataType = ftDateTime
      end
      item
        Name = 'RESPONSABLE'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'OBSERVACIONES'
        DataType = ftBlob
        Size = 8
      end
      item
        Name = 'SERIE_FACTURA'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'CONSECUTIVO'
        DataType = ftInteger
      end
      item
        Name = 'FECHA_ULT_INV'
        DataType = ftDateTime
      end
      item
        Name = 'ESTATUS'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY73'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'RDB$FOREIGN74'
        Fields = 'RESPONSABLE'
      end>
    IndexFieldNames = 'ID'
    StoreDefs = True
    TableName = 'ALMACENES'
    Left = 80
    Top = 71
    object TAlmacenesID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object TAlmacenesCLAVE: TIBStringField
      FieldName = 'CLAVE'
    end
    object TAlmacenesNOMBRE: TIBStringField
      FieldName = 'NOMBRE'
      Size = 100
    end
    object TAlmacenesCOMPRA: TIBStringField
      FieldName = 'COMPRA'
      Size = 2
    end
    object TAlmacenesVENDE: TIBStringField
      FieldName = 'VENDE'
      Size = 2
    end
    object TAlmacenesTRANSFORMA: TIBStringField
      FieldName = 'TRANSFORMA'
      Size = 2
    end
    object TAlmacenesFECHA_ALTA: TDateTimeField
      FieldName = 'FECHA_ALTA'
    end
    object TAlmacenesRESPONSABLE: TIntegerField
      FieldName = 'RESPONSABLE'
      Required = True
    end
    object TAlmacenesOBSERVACIONES: TBlobField
      FieldName = 'OBSERVACIONES'
      BlobType = ftBlob
      Size = 8
    end
    object TAlmacenesSERIE_FACTURA: TIBStringField
      FieldName = 'SERIE_FACTURA'
      Size = 10
    end
    object TAlmacenesCONSECUTIVO: TIntegerField
      FieldName = 'CONSECUTIVO'
    end
    object TAlmacenesFECHA_ULT_INV: TDateTimeField
      FieldName = 'FECHA_ULT_INV'
    end
    object TAlmacenesESTATUS: TIBStringField
      FieldName = 'ESTATUS'
    end
  end
  object TGrupos_Materiales: TIBTable
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NOMBRE'
        DataType = ftString
        Size = 50
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY109'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end>
    StoreDefs = True
    TableName = 'GRUPOS_MATERIALES'
    Left = 232
    Top = 71
    object TGrupos_MaterialesID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object TGrupos_MaterialesNOMBRE: TIBStringField
      FieldName = 'NOMBRE'
      Size = 50
    end
  end
  object dsGrupos_Materiales: TDataSource
    DataSet = TGrupos_Materiales
    OnDataChange = dsGrupos_MaterialesDataChange
    Left = 264
    Top = 71
  end
  object qyGrupos_Materiales_Detalle: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    SQL.Strings = (
      'SELECT *'
      'FROM VER_MATERIALES_EN_GRUPO(:P_GRUPO)')
    Left = 392
    Top = 71
    ParamData = <
      item
        DataType = ftString
        Name = 'P_GRUPO'
        ParamType = ptUnknown
        Value = '0'
      end>
    object qyGrupos_Materiales_DetalleR_ID: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_ID'
      ReadOnly = True
    end
    object qyGrupos_Materiales_DetalleR_GRUPO_MATERIAL: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_GRUPO_MATERIAL'
      ReadOnly = True
    end
    object qyGrupos_Materiales_DetalleR_MATERIAL: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_MATERIAL'
      ReadOnly = True
    end
    object qyGrupos_Materiales_DetalleR_MATERIAL_CLAVE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_MATERIAL_CLAVE'
      ReadOnly = True
    end
    object qyGrupos_Materiales_DetalleR_MATERIAL_DESCRIPCION: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_MATERIAL_DESCRIPCION'
      ReadOnly = True
      Size = 100
    end
    object qyGrupos_Materiales_DetalleR_UNIDAD_BASE: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_UNIDAD_BASE'
      ReadOnly = True
    end
    object qyGrupos_Materiales_DetalleR_CALIDAD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_CALIDAD'
      ReadOnly = True
    end
    object qyGrupos_Materiales_DetalleR_UNIDAD_BASE_DESCRIPCION: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_UNIDAD_BASE_DESCRIPCION'
      ReadOnly = True
      Size = 50
    end
    object qyGrupos_Materiales_DetalleR_CALIDAD_NOMBRE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_CALIDAD_NOMBRE'
      ReadOnly = True
    end
  end
  object dsGrupos_Materiales_Detalle: TDataSource
    DataSet = qyGrupos_Materiales_Detalle
    OnDataChange = dsGrupos_Materiales_DetalleDataChange
    Left = 424
    Top = 71
  end
  object qyVerMaterialesCajas: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    SQL.Strings = (
      'SELECT *'
      'FROM VER_MATERIAL_ES("R_DESCRIPCION","caja")')
    Left = 80
    Top = 111
    object qyVerMaterialesCajasR_ID: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_ID'
      ReadOnly = True
    end
    object qyVerMaterialesCajasR_CLAVE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_CLAVE'
      ReadOnly = True
    end
    object qyVerMaterialesCajasR_DESCRIPCION: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_DESCRIPCION'
      ReadOnly = True
      Size = 100
    end
    object qyVerMaterialesCajasR_UNIDAD_BASE: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_UNIDAD_BASE'
      ReadOnly = True
    end
    object qyVerMaterialesCajasR_DESCRIPCION_UNIDAD: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_DESCRIPCION_UNIDAD'
      ReadOnly = True
      Size = 50
    end
    object qyVerMaterialesCajasR_CODIGO_BARRAS: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_CODIGO_BARRAS'
      ReadOnly = True
    end
  end
  object dsVerMaterialesCajas: TDataSource
    DataSet = qyVerMaterialesCajas
    Left = 112
    Top = 111
  end
end
