object dmIBData: TdmIBData
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 363
  Top = 303
  Height = 653
  Width = 930
  object taPreferencias: TIBTable
    Database = dmIBModulo.ibInformar
    Transaction = dmIBModulo.ibInformarTransaccion
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'LICENCIAS'
        DataType = ftInteger
      end
      item
        Name = 'SERVER_ACTIVO'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'AUTORUN'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'OCULTAR'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'VERSION'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'EMPRESA'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'NOMBRE'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'CREADO'
        DataType = ftDateTime
      end
      item
        Name = 'ACTUALIZADO'
        DataType = ftDateTime
      end
      item
        Name = 'HECHO_POR'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'ACRONIMO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'FECHA'
        DataType = ftDateTime
      end>
    Filter = 'ID = 1'
    Filtered = True
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY12'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end>
    StoreDefs = True
    TableName = 'PREFERENCIAS'
    Left = 24
    Top = 64
    object taPreferenciasID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object taPreferenciasLICENCIAS: TIntegerField
      FieldName = 'LICENCIAS'
    end
    object taPreferenciasSERVER_ACTIVO: TIBStringField
      FieldName = 'SERVER_ACTIVO'
      Size = 2
    end
    object taPreferenciasAUTORUN: TIBStringField
      FieldName = 'AUTORUN'
      Size = 2
    end
    object taPreferenciasOCULTAR: TIBStringField
      FieldName = 'OCULTAR'
      Size = 2
    end
    object taPreferenciasVERSION: TIBStringField
      FieldName = 'VERSION'
    end
    object taPreferenciasEMPRESA: TIBStringField
      FieldName = 'EMPRESA'
      Size = 100
    end
    object taPreferenciasNOMBRE: TIBStringField
      FieldName = 'NOMBRE'
      Size = 100
    end
    object taPreferenciasCREADO: TDateTimeField
      FieldName = 'CREADO'
    end
    object taPreferenciasACTUALIZADO: TDateTimeField
      FieldName = 'ACTUALIZADO'
    end
    object taPreferenciasHECHO_POR: TIBStringField
      FieldName = 'HECHO_POR'
      Size = 100
    end
    object taPreferenciasACRONIMO: TIBStringField
      FieldName = 'ACRONIMO'
    end
    object taPreferenciasFECHA: TDateTimeField
      FieldName = 'FECHA'
    end
  end
  object dsPreferencias: TDataSource
    DataSet = taPreferencias
    Left = 8
    Top = 56
  end
  object TFiltroUsuarios: TIBTable
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    AfterOpen = TFiltroUsuariosAfterOpen
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'SUJETO'
        DataType = ftInteger
      end
      item
        Name = 'USUARIO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'PSECRETA'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'BAJA'
        Attributes = [faFixed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'NIVEL'
        DataType = ftInteger
      end
      item
        Name = 'ALMACEN'
        DataType = ftInteger
      end>
    Filter = 'ID = 0'
    Filtered = True
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY8'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'RDB$FOREIGN9'
        Fields = 'SUJETO'
      end
      item
        Name = 'RDB$FOREIGN657'
        Fields = 'ALMACEN'
      end>
    StoreDefs = True
    TableName = 'SUJETOS_USUARIOS'
    Left = 24
    Top = 285
    object TFiltroUsuariosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object TFiltroUsuariosSUJETO: TIntegerField
      FieldName = 'SUJETO'
    end
    object TFiltroUsuariosUSUARIO: TIBStringField
      FieldName = 'USUARIO'
    end
    object TFiltroUsuariosBAJA: TIBStringField
      FieldName = 'BAJA'
      Size = 2
    end
    object TFiltroUsuariosNIVEL: TIntegerField
      FieldName = 'NIVEL'
    end
    object TFiltroUsuariosPSECRETA: TIBStringField
      FieldName = 'PSECRETA'
    end
    object TFiltroUsuariosALMACEN: TIntegerField
      FieldName = 'ALMACEN'
    end
  end
  object qyMenuSupervisorMenu: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * '
      'FROM MENU_SUPERVISOR'
      '')
    Left = 24
    Top = 116
  end
  object qyMenuSupervisorArbol: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * '
      'FROM MENU_SUPERVISOR'
      
        'WHERE (R_NOMBRE_INTERNO <> '#39'linea'#39') AND (R_NOMBRE_EXTERNO <> '#39'no' +
        'crear'#39')'
      '')
    Left = 24
    Top = 177
  end
  object dsMenuSupervisorMenu: TDataSource
    DataSet = qyMenuSupervisorMenu
    Left = 8
    Top = 120
  end
  object dsMenuSupervisorArbol: TDataSource
    DataSet = qyMenuSupervisorArbol
    Left = 8
    Top = 168
  end
  object TFiltroEmpresas: TIBTable
    Database = dmIBModulo.ibInformar
    Transaction = dmIBModulo.ibInformarTransaccion
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NOMBRE'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'NOMBRE_AWR'
        DataType = ftString
        Size = 50
      end>
    Filter = 'ID > 0'
    Filtered = True
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY82'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end>
    StoreDefs = True
    TableName = 'EMPRESAS'
    Left = 28
    Top = 236
    object TFiltroEmpresasID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object TFiltroEmpresasNOMBRE: TIBStringField
      FieldName = 'NOMBRE'
      Size = 100
    end
    object TFiltroEmpresasNOMBRE_AWR: TIBStringField
      FieldName = 'NOMBRE_AWR'
      Size = 50
    end
  end
  object spFECHA_SERVIDOR: TIBStoredProc
    Database = dmIBModulo.ibInformar
    Transaction = dmIBModulo.ibInformarTransaccion
    StoredProcName = 'FECHA_SERVIDOR'
    Params = <
      item
        DataType = ftDateTime
        Name = 'R_FECHA'
        ParamType = ptOutput
      end>
    Left = 24
    Top = 8
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'R_FECHA'
        ParamType = ptOutput
      end>
  end
  object qyMenuUsuario: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * '
      'FROM MENU_USUARIO(:P_USUARIO)')
    Left = 136
    Top = 12
    ParamData = <
      item
        DataType = ftString
        Name = 'P_USUARIO'
        ParamType = ptUnknown
        Value = '0'
      end>
  end
  object qyMenuUsuarioArbol: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    CachedUpdates = False
    SQL.Strings = (
      'SELECT *'
      'FROM MENU_USUARIO(:P_USUARIO)'
      
        'WHERE (R_NOMBRE_INTERNO <> '#39'linea'#39') AND (R_NOMBRE_EXTERNO <> '#39'no' +
        'crear'#39')'
      '')
    Left = 136
    Top = 65
    ParamData = <
      item
        DataType = ftString
        Name = 'P_USUARIO'
        ParamType = ptUnknown
        Value = '0'
      end>
  end
  object dsMenuUsuario: TDataSource
    DataSet = qyMenuUsuario
    Left = 128
    Top = 8
  end
  object dsMenuUsuarioArbol: TDataSource
    DataSet = qyMenuUsuarioArbol
    Left = 128
    Top = 57
  end
  object TSujetos: TIBTable
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    CachedUpdates = False
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
        Name = 'CLAVE'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'NOMBRE'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'RAZON_SOCIAL'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'FACTURAR_A'
        DataType = ftString
        Size = 12
      end
      item
        Name = 'RFC'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CURP'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'E_MAIL'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'WWWW'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'SEXO'
        DataType = ftString
        Size = 11
      end
      item
        Name = 'CUENTA'
        DataType = ftInteger
      end
      item
        Name = 'DOMICILIO'
        DataType = ftInteger
      end
      item
        Name = 'TELEFONOS'
        DataType = ftInteger
      end
      item
        Name = 'CONTACTOS'
        DataType = ftInteger
      end
      item
        Name = 'FOTO'
        DataType = ftBlob
        Size = 8
      end
      item
        Name = 'TEL_PRINCIPAL'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'OBSERVACIONES'
        DataType = ftBlob
        Size = 8
      end
      item
        Name = 'ESTATUS'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY3'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'IDX_SUJETOS_C'
        Fields = 'CLAVE'
      end
      item
        Name = 'IDX_SUJETOS_N'
        Fields = 'NOMBRE'
      end
      item
        Name = 'RDB$FOREIGN481'
        Fields = 'CUENTA'
      end>
    IndexFieldNames = 'ID'
    MasterFields = 'SUJETO'
    MasterSource = dsFiltroUsuarios
    StoreDefs = True
    TableName = 'SUJETOS'
    Left = 24
    Top = 328
    object TSujetosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object TSujetosCLAVE: TIBStringField
      FieldName = 'CLAVE'
      Size = 50
    end
    object TSujetosNOMBRE: TIBStringField
      FieldName = 'NOMBRE'
      Size = 100
    end
    object TSujetosRAZON_SOCIAL: TIBStringField
      FieldName = 'RAZON_SOCIAL'
      Size = 100
    end
    object TSujetosRFC: TIBStringField
      FieldName = 'RFC'
    end
    object TSujetosCURP: TIBStringField
      FieldName = 'CURP'
    end
    object TSujetosDOMICILIO: TIntegerField
      FieldName = 'DOMICILIO'
    end
    object TSujetosTELEFONOS: TIntegerField
      FieldName = 'TELEFONOS'
    end
    object TSujetosCONTACTOS: TIntegerField
      FieldName = 'CONTACTOS'
    end
    object TSujetosFECHA_ALTA: TDateTimeField
      FieldName = 'FECHA_ALTA'
    end
    object TSujetosFACTURAR_A: TIBStringField
      FieldName = 'FACTURAR_A'
      Size = 12
    end
    object TSujetosE_MAIL: TIBStringField
      FieldName = 'E_MAIL'
      Size = 50
    end
    object TSujetosWWWW: TIBStringField
      FieldName = 'WWWW'
      Size = 100
    end
    object TSujetosOBSERVACIONES: TBlobField
      FieldName = 'OBSERVACIONES'
      BlobType = ftBlob
      Size = 8
    end
    object TSujetosSEXO: TIBStringField
      FieldName = 'SEXO'
      Size = 11
    end
    object TSujetosFOTO: TBlobField
      FieldName = 'FOTO'
      BlobType = ftBlob
      Size = 8
    end
    object TSujetosCUENTA: TIntegerField
      FieldName = 'CUENTA'
    end
    object TSujetosTEL_PRINCIPAL: TIBStringField
      FieldName = 'TEL_PRINCIPAL'
    end
  end
  object dsFiltroUsuarios: TDataSource
    DataSet = TFiltroUsuarios
    Left = 16
    Top = 280
  end
  object TFiltroUnidades: TIBTable
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    CachedUpdates = False
    Filter = 'ID = -17'
    Filtered = True
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY77'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end>
    StoreDefs = True
    TableName = 'UNIDADES'
    Left = 136
    Top = 119
  end
  object TFiltroMateriales: TIBTable
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    CachedUpdates = False
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
        Name = 'DESCRIPCION'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'UNIDAD_BASE'
        DataType = ftInteger
      end
      item
        Name = 'LINEA'
        DataType = ftInteger
      end
      item
        Name = 'UNIDADES_COMPRADAS'
        DataType = ftFloat
      end
      item
        Name = 'UNIDADES_VENDIDAS'
        DataType = ftFloat
      end
      item
        Name = 'UNIDADES_PRODUCIDAS'
        DataType = ftFloat
      end
      item
        Name = 'LARGO'
        DataType = ftFloat
      end
      item
        Name = 'ANCHO'
        DataType = ftFloat
      end
      item
        Name = 'ALTO'
        DataType = ftFloat
      end
      item
        Name = 'UNIDAD_LAA'
        DataType = ftInteger
      end
      item
        Name = 'LOTE'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'NUM_SERIE'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'CONSOLIDADO'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'COSTO_PROMEDIO'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'COSTO_PEPS'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'COSTO_UEPS'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'FECHA_CERO_EXIST'
        DataType = ftDateTime
      end
      item
        Name = 'FECHA_ULTIMA_COMPRA'
        DataType = ftDateTime
      end
      item
        Name = 'CODIGO_BARRAS'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'IVA_PORC'
        DataType = ftFloat
      end
      item
        Name = 'IEPS_PORC'
        DataType = ftFloat
      end
      item
        Name = 'IMPUESTO_1_PORC'
        DataType = ftFloat
      end
      item
        Name = 'IMPUESTO_2_PORC'
        DataType = ftFloat
      end
      item
        Name = 'OBSERVACIONES'
        DataType = ftBlob
        Size = 8
      end
      item
        Name = 'FOTO'
        DataType = ftBlob
        Size = 8
      end
      item
        Name = 'DIAS_DE_VIGENCIA'
        DataType = ftInteger
      end>
    Filter = 'ID = -17'
    Filtered = True
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY78'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'RDB$FOREIGN79'
        Fields = 'UNIDAD_BASE'
      end
      item
        Name = 'RDB$FOREIGN80'
        Fields = 'LINEA'
      end
      item
        Name = 'RDB$FOREIGN81'
        Fields = 'UNIDAD_LAA'
      end>
    StoreDefs = True
    TableName = 'MATERIALES'
    Left = 136
    Top = 168
    object TFiltroMaterialesID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object TFiltroMaterialesCLAVE: TIBStringField
      FieldName = 'CLAVE'
    end
    object TFiltroMaterialesDESCRIPCION: TIBStringField
      FieldName = 'DESCRIPCION'
      Size = 100
    end
    object TFiltroMaterialesUNIDAD_BASE: TIntegerField
      FieldName = 'UNIDAD_BASE'
    end
    object TFiltroMaterialesLINEA: TIntegerField
      FieldName = 'LINEA'
    end
    object TFiltroMaterialesUNIDADES_COMPRADAS: TFloatField
      FieldName = 'UNIDADES_COMPRADAS'
    end
    object TFiltroMaterialesUNIDADES_VENDIDAS: TFloatField
      FieldName = 'UNIDADES_VENDIDAS'
    end
    object TFiltroMaterialesUNIDADES_PRODUCIDAS: TFloatField
      FieldName = 'UNIDADES_PRODUCIDAS'
    end
    object TFiltroMaterialesLARGO: TFloatField
      FieldName = 'LARGO'
    end
    object TFiltroMaterialesANCHO: TFloatField
      FieldName = 'ANCHO'
    end
    object TFiltroMaterialesALTO: TFloatField
      FieldName = 'ALTO'
    end
    object TFiltroMaterialesUNIDAD_LAA: TIntegerField
      FieldName = 'UNIDAD_LAA'
    end
    object TFiltroMaterialesLOTE: TIBStringField
      FieldName = 'LOTE'
      Size = 2
    end
    object TFiltroMaterialesNUM_SERIE: TIBStringField
      FieldName = 'NUM_SERIE'
      Size = 2
    end
    object TFiltroMaterialesCONSOLIDADO: TIBStringField
      FieldName = 'CONSOLIDADO'
      Size = 2
    end
    object TFiltroMaterialesCOSTO_PROMEDIO: TIBStringField
      FieldName = 'COSTO_PROMEDIO'
      Size = 2
    end
    object TFiltroMaterialesCOSTO_PEPS: TIBStringField
      FieldName = 'COSTO_PEPS'
      Size = 2
    end
    object TFiltroMaterialesCOSTO_UEPS: TIBStringField
      FieldName = 'COSTO_UEPS'
      Size = 2
    end
    object TFiltroMaterialesFECHA_CERO_EXIST: TDateTimeField
      FieldName = 'FECHA_CERO_EXIST'
    end
    object TFiltroMaterialesFECHA_ULTIMA_COMPRA: TDateTimeField
      FieldName = 'FECHA_ULTIMA_COMPRA'
    end
    object TFiltroMaterialesCODIGO_BARRAS: TIBStringField
      FieldName = 'CODIGO_BARRAS'
    end
    object TFiltroMaterialesIVA_PORC: TFloatField
      FieldName = 'IVA_PORC'
    end
    object TFiltroMaterialesIEPS_PORC: TFloatField
      FieldName = 'IEPS_PORC'
    end
    object TFiltroMaterialesIMPUESTO_1_PORC: TFloatField
      FieldName = 'IMPUESTO_1_PORC'
    end
    object TFiltroMaterialesIMPUESTO_2_PORC: TFloatField
      FieldName = 'IMPUESTO_2_PORC'
    end
    object TFiltroMaterialesOBSERVACIONES: TBlobField
      FieldName = 'OBSERVACIONES'
      BlobType = ftBlob
      Size = 8
    end
    object TFiltroMaterialesFOTO: TBlobField
      FieldName = 'FOTO'
      BlobType = ftBlob
      Size = 8
    end
    object TFiltroMaterialesDIAS_DE_VIGENCIA: TIntegerField
      FieldName = 'DIAS_DE_VIGENCIA'
    end
  end
  object TFiltroUsuariosAutorizacion: TIBTable
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'SUJETO'
        DataType = ftInteger
      end
      item
        Name = 'USUARIO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'PSECRETA'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'BAJA'
        Attributes = [faFixed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'NIVEL'
        DataType = ftInteger
      end>
    Filter = 'ID = 0'
    Filtered = True
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY8'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'RDB$FOREIGN9'
        Fields = 'SUJETO'
      end>
    StoreDefs = True
    TableName = 'SUJETOS_USUARIOS'
    Left = 136
    Top = 216
    object TFiltroUsuariosAutorizacionID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object TFiltroUsuariosAutorizacionSUJETO: TIntegerField
      FieldName = 'SUJETO'
    end
    object TFiltroUsuariosAutorizacionUSUARIO: TIBStringField
      FieldName = 'USUARIO'
    end
    object TFiltroUsuariosAutorizacionBAJA: TIBStringField
      FieldName = 'BAJA'
      Size = 2
    end
    object TFiltroUsuariosAutorizacionNIVEL: TIntegerField
      FieldName = 'NIVEL'
    end
    object TFiltroUsuariosAutorizacionPSECRETA: TIBStringField
      FieldName = 'PSECRETA'
    end
  end
  object dsFiltroUsuariosAutorizacion: TDataSource
    DataSet = TFiltroUsuariosAutorizacion
    Left = 128
    Top = 208
  end
  object TSujetosAutorizacion: TIBTable
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    CachedUpdates = False
    IndexFieldNames = 'ID'
    MasterFields = 'SUJETO'
    MasterSource = dsFiltroUsuariosAutorizacion
    TableName = 'SUJETOS'
    Left = 136
    Top = 264
    object TSujetosAutorizacionID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object TSujetosAutorizacionCLAVE: TIBStringField
      FieldName = 'CLAVE'
      Size = 50
    end
    object TSujetosAutorizacionNOMBRE: TIBStringField
      FieldName = 'NOMBRE'
      Size = 100
    end
    object TSujetosAutorizacionRAZON_SOCIAL: TIBStringField
      FieldName = 'RAZON_SOCIAL'
      Size = 100
    end
    object TSujetosAutorizacionRFC: TIBStringField
      FieldName = 'RFC'
    end
    object TSujetosAutorizacionCURP: TIBStringField
      FieldName = 'CURP'
    end
    object TSujetosAutorizacionDOMICILIO: TIntegerField
      FieldName = 'DOMICILIO'
    end
    object TSujetosAutorizacionTELEFONOS: TIntegerField
      FieldName = 'TELEFONOS'
    end
    object TSujetosAutorizacionCONTACTOS: TIntegerField
      FieldName = 'CONTACTOS'
    end
    object TSujetosAutorizacionFECHA_ALTA: TDateTimeField
      FieldName = 'FECHA_ALTA'
    end
    object TSujetosAutorizacionFACTURAR_A: TIBStringField
      FieldName = 'FACTURAR_A'
      Size = 12
    end
    object TSujetosAutorizacionE_MAIL: TIBStringField
      FieldName = 'E_MAIL'
      Size = 50
    end
    object TSujetosAutorizacionWWWW: TIBStringField
      FieldName = 'WWWW'
      Size = 100
    end
    object TSujetosAutorizacionOBSERVACIONES: TBlobField
      FieldName = 'OBSERVACIONES'
      BlobType = ftBlob
    end
    object TSujetosAutorizacionSEXO: TIBStringField
      FieldName = 'SEXO'
      Size = 11
    end
    object TSujetosAutorizacionFOTO: TBlobField
      FieldName = 'FOTO'
      BlobType = ftBlob
    end
  end
  object TPreferencias: TIBTable
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NOMBRE'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'TIPO'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'VALOR'
        DataType = ftString
        Size = 20
      end>
    Filter = 'ID = -17'
    Filtered = True
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY110'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end>
    StoreDefs = True
    TableName = 'PREFERENCIAS'
    Left = 136
    Top = 328
  end
  object TFiltroRequisiciones: TIBTable
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    CachedUpdates = False
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
        Name = 'DEPARTAMENTO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'USUARIO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'PRESUPUESTADO'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'PRIORIDAD'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'FECHA_ENTREGA'
        DataType = ftDateTime
      end
      item
        Name = 'ORDEN_COMPRA'
        DataType = ftInteger
      end
      item
        Name = 'ESTATUS'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'FECHA_ALTA'
        DataType = ftDateTime
      end>
    Filter = 'ID = -17'
    Filtered = True
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY19'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'RDB$FOREIGN22'
        Fields = 'DEPARTAMENTO'
      end
      item
        Name = 'RDB$FOREIGN23'
        Fields = 'USUARIO'
      end
      item
        Name = 'RDB$FOREIGN24'
        Fields = 'ORDEN_COMPRA'
      end>
    StoreDefs = True
    TableName = 'REQUISICIONES'
    Left = 240
    Top = 8
    object TFiltroRequisicionesID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object TFiltroRequisicionesCLAVE: TIBStringField
      FieldName = 'CLAVE'
    end
    object TFiltroRequisicionesDEPARTAMENTO: TIntegerField
      FieldName = 'DEPARTAMENTO'
      Required = True
    end
    object TFiltroRequisicionesUSUARIO: TIntegerField
      FieldName = 'USUARIO'
      Required = True
    end
    object TFiltroRequisicionesPRESUPUESTADO: TIBStringField
      FieldName = 'PRESUPUESTADO'
      Size = 2
    end
    object TFiltroRequisicionesPRIORIDAD: TIBStringField
      FieldName = 'PRIORIDAD'
      Size = 14
    end
    object TFiltroRequisicionesFECHA_ENTREGA: TDateTimeField
      FieldName = 'FECHA_ENTREGA'
    end
    object TFiltroRequisicionesORDEN_COMPRA: TIntegerField
      FieldName = 'ORDEN_COMPRA'
    end
    object TFiltroRequisicionesESTATUS: TIBStringField
      FieldName = 'ESTATUS'
    end
    object TFiltroRequisicionesFECHA_ALTA: TDateTimeField
      FieldName = 'FECHA_ALTA'
    end
  end
  object TFiltroMonedas: TIBTable
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'CLAVE'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'DESCRIPCION'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'FECHA_ULT_ACT'
        DataType = ftDateTime
      end
      item
        Name = 'PARIDAD'
        DataType = ftFloat
      end>
    Filter = 'ID = -17'
    Filtered = True
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY10'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end>
    StoreDefs = True
    TableName = 'MONEDAS'
    Left = 240
    Top = 56
  end
  object TFiltroBotones: TIBTable
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    CachedUpdates = False
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
    Filter = 'ID = -17'
    Filtered = True
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY83'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end>
    StoreDefs = True
    TableName = 'BOTONES'
    Left = 240
    Top = 104
    object TFiltroBotonesID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object TFiltroBotonesNOMBRE: TIBStringField
      FieldName = 'NOMBRE'
      Size = 50
    end
  end
  object TFiltroAlmacenes: TIBTable
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    CachedUpdates = False
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
        Attributes = [faFixed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'VENDE'
        Attributes = [faFixed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'TRANSFORMA'
        Attributes = [faFixed]
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
      end
      item
        Name = 'SERIE_NC'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'SERIE_NVENTA'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'SERIE_NCARGO'
        DataType = ftString
        Size = 10
      end>
    Filter = 'ID = -17'
    Filtered = True
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
    StoreDefs = True
    TableName = 'ALMACENES'
    Left = 240
    Top = 152
    object TFiltroAlmacenesID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object TFiltroAlmacenesCLAVE: TIBStringField
      FieldName = 'CLAVE'
    end
    object TFiltroAlmacenesNOMBRE: TIBStringField
      FieldName = 'NOMBRE'
      Size = 100
    end
    object TFiltroAlmacenesCOMPRA: TIBStringField
      FieldName = 'COMPRA'
      FixedChar = True
      Size = 2
    end
    object TFiltroAlmacenesVENDE: TIBStringField
      FieldName = 'VENDE'
      FixedChar = True
      Size = 2
    end
    object TFiltroAlmacenesTRANSFORMA: TIBStringField
      FieldName = 'TRANSFORMA'
      FixedChar = True
      Size = 2
    end
    object TFiltroAlmacenesFECHA_ALTA: TDateTimeField
      FieldName = 'FECHA_ALTA'
    end
    object TFiltroAlmacenesRESPONSABLE: TIntegerField
      FieldName = 'RESPONSABLE'
      Required = True
    end
    object TFiltroAlmacenesOBSERVACIONES: TBlobField
      FieldName = 'OBSERVACIONES'
      BlobType = ftBlob
      Size = 8
    end
    object TFiltroAlmacenesSERIE_FACTURA: TIBStringField
      FieldName = 'SERIE_FACTURA'
      Size = 10
    end
    object TFiltroAlmacenesCONSECUTIVO: TIntegerField
      FieldName = 'CONSECUTIVO'
    end
    object TFiltroAlmacenesFECHA_ULT_INV: TDateTimeField
      FieldName = 'FECHA_ULT_INV'
    end
    object TFiltroAlmacenesESTATUS: TIBStringField
      FieldName = 'ESTATUS'
    end
    object TFiltroAlmacenesSERIE_NC: TIBStringField
      FieldName = 'SERIE_NC'
      Size = 10
    end
    object TFiltroAlmacenesSERIE_NVENTA: TIBStringField
      FieldName = 'SERIE_NVENTA'
      Size = 10
    end
    object TFiltroAlmacenesSERIE_NCARGO: TIBStringField
      FieldName = 'SERIE_NCARGO'
      Size = 10
    end
  end
  object TFiltroVistaUsuarios: TIBTable
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NOMBRE'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'BAJA'
        DataType = ftString
        Size = 2
      end>
    Filter = 'ID = -17'
    Filtered = True
    ReadOnly = True
    StoreDefs = True
    TableName = 'VISTA_USUARIOS'
    TableTypes = [ttView]
    Left = 240
    Top = 216
    object TFiltroVistaUsuariosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object TFiltroVistaUsuariosNOMBRE: TIBStringField
      FieldName = 'NOMBRE'
      Size = 100
    end
    object TFiltroVistaUsuariosBAJA: TIBStringField
      FieldName = 'BAJA'
      Size = 2
    end
  end
  object TFiltroOrdenesDeCompras: TIBTable
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'ID'
        DataType = ftInteger
      end
      item
        Name = 'CLAVE'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'FECHA_ALTA'
        DataType = ftDateTime
      end
      item
        Name = 'PROVEEDOR'
        DataType = ftInteger
      end
      item
        Name = 'CONDICION_COMERCIAL'
        DataType = ftInteger
      end
      item
        Name = 'ANTICIPO'
        DataType = ftFloat
      end
      item
        Name = 'FECHA_ENTREGA'
        DataType = ftDateTime
      end
      item
        Name = 'FECHA_ENTREGA_REAL'
        DataType = ftDateTime
      end
      item
        Name = 'DEPARTAMENTO'
        DataType = ftInteger
      end
      item
        Name = 'PRIORIDAD'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'ALMACEN'
        DataType = ftInteger
      end
      item
        Name = 'SUBTOTAL'
        DataType = ftFloat
      end
      item
        Name = 'IVA'
        DataType = ftFloat
      end
      item
        Name = 'IEPS'
        DataType = ftFloat
      end
      item
        Name = 'IMPUESTO1'
        DataType = ftFloat
      end
      item
        Name = 'IMPUESTO2'
        DataType = ftFloat
      end
      item
        Name = 'TOTAL'
        DataType = ftFloat
      end
      item
        Name = 'DESCUENTO_GLOBAL_PORC'
        DataType = ftFloat
      end
      item
        Name = 'DESCUENTO_CANTIDAD'
        DataType = ftFloat
      end
      item
        Name = 'MONEDA'
        DataType = ftInteger
      end
      item
        Name = 'COMPRADOR'
        DataType = ftInteger
      end
      item
        Name = 'FECHA_CANCELACION'
        DataType = ftDateTime
      end
      item
        Name = 'DESCUENTO_CANTIDAD_PARCIAL'
        DataType = ftFloat
      end
      item
        Name = 'GRAN_TOTAL'
        DataType = ftFloat
      end
      item
        Name = 'OBSERVACIONES'
        DataType = ftBlob
      end
      item
        Name = 'CONSECUTIVO'
        DataType = ftInteger
      end
      item
        Name = 'ESTATUS'
        DataType = ftString
        Size = 20
      end>
    Filter = 'ID = -17'
    Filtered = True
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY5'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'RDB$FOREIGN6'
        Fields = 'PROVEEDOR'
      end
      item
        Name = 'RDB$FOREIGN7'
        Fields = 'CONDICION_COMERCIAL'
      end
      item
        Name = 'RDB$FOREIGN8'
        Fields = 'DEPARTAMENTO'
      end
      item
        Name = 'RDB$FOREIGN10'
        Fields = 'ALMACEN'
      end
      item
        Name = 'RDB$FOREIGN11'
        Fields = 'MONEDA'
      end
      item
        Name = 'RDB$FOREIGN12'
        Fields = 'COMPRADOR'
      end>
    StoreDefs = True
    TableName = 'ORDENES_DE_COMPRAS'
    Left = 240
    Top = 264
    object TFiltroOrdenesDeComprasID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object TFiltroOrdenesDeComprasCLAVE: TIBStringField
      FieldName = 'CLAVE'
    end
    object TFiltroOrdenesDeComprasFECHA_ALTA: TDateTimeField
      FieldName = 'FECHA_ALTA'
    end
    object TFiltroOrdenesDeComprasPROVEEDOR: TIntegerField
      FieldName = 'PROVEEDOR'
      Required = True
    end
    object TFiltroOrdenesDeComprasCONDICION_COMERCIAL: TIntegerField
      FieldName = 'CONDICION_COMERCIAL'
      Required = True
    end
    object TFiltroOrdenesDeComprasANTICIPO: TFloatField
      FieldName = 'ANTICIPO'
    end
    object TFiltroOrdenesDeComprasFECHA_ENTREGA: TDateTimeField
      FieldName = 'FECHA_ENTREGA'
    end
    object TFiltroOrdenesDeComprasFECHA_ENTREGA_REAL: TDateTimeField
      FieldName = 'FECHA_ENTREGA_REAL'
    end
    object TFiltroOrdenesDeComprasDEPARTAMENTO: TIntegerField
      FieldName = 'DEPARTAMENTO'
      Required = True
    end
    object TFiltroOrdenesDeComprasPRIORIDAD: TIBStringField
      FieldName = 'PRIORIDAD'
      Size = 2
    end
    object TFiltroOrdenesDeComprasALMACEN: TIntegerField
      FieldName = 'ALMACEN'
      Required = True
    end
    object TFiltroOrdenesDeComprasSUBTOTAL: TFloatField
      FieldName = 'SUBTOTAL'
    end
    object TFiltroOrdenesDeComprasIVA: TFloatField
      FieldName = 'IVA'
    end
    object TFiltroOrdenesDeComprasIEPS: TFloatField
      FieldName = 'IEPS'
    end
    object TFiltroOrdenesDeComprasIMPUESTO1: TFloatField
      FieldName = 'IMPUESTO1'
    end
    object TFiltroOrdenesDeComprasIMPUESTO2: TFloatField
      FieldName = 'IMPUESTO2'
    end
    object TFiltroOrdenesDeComprasTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object TFiltroOrdenesDeComprasDESCUENTO_GLOBAL_PORC: TFloatField
      FieldName = 'DESCUENTO_GLOBAL_PORC'
    end
    object TFiltroOrdenesDeComprasDESCUENTO_CANTIDAD: TFloatField
      FieldName = 'DESCUENTO_CANTIDAD'
    end
    object TFiltroOrdenesDeComprasMONEDA: TIntegerField
      FieldName = 'MONEDA'
      Required = True
    end
    object TFiltroOrdenesDeComprasCOMPRADOR: TIntegerField
      FieldName = 'COMPRADOR'
      Required = True
    end
    object TFiltroOrdenesDeComprasFECHA_CANCELACION: TDateTimeField
      FieldName = 'FECHA_CANCELACION'
    end
    object TFiltroOrdenesDeComprasESTATUS: TIBStringField
      FieldName = 'ESTATUS'
    end
    object TFiltroOrdenesDeComprasDESCUENTO_CANTIDAD_PARCIAL: TFloatField
      FieldName = 'DESCUENTO_CANTIDAD_PARCIAL'
    end
    object TFiltroOrdenesDeComprasGRAN_TOTAL: TFloatField
      FieldName = 'GRAN_TOTAL'
    end
    object TFiltroOrdenesDeComprasOBSERVACIONES: TBlobField
      FieldName = 'OBSERVACIONES'
      BlobType = ftBlob
    end
    object TFiltroOrdenesDeComprasCONSECUTIVO: TIntegerField
      FieldName = 'CONSECUTIVO'
    end
  end
  object dsFiltroEmpresas: TDataSource
    DataSet = TFiltroEmpresas
    Left = 16
    Top = 224
  end
  object TFiltroCondicionesComerciales: TIBTable
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'TIPO'
        DataType = ftString
        Size = 11
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
        Name = 'NUM_PAGOS'
        DataType = ftInteger
      end
      item
        Name = 'INTERVALO_ENTRE_PAGOS'
        DataType = ftInteger
      end
      item
        Name = 'DESPLAZAMIENTO_1_PAGO'
        DataType = ftInteger
      end
      item
        Name = 'DESCUENTO_PORCENTAJE'
        DataType = ftFloat
      end
      item
        Name = 'FINANCIAMIENTO'
        DataType = ftInteger
      end
      item
        Name = 'MORATORIO'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'PUNTO_DE_VENTA'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'REQUIERE_AUTORIZACION'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'REQUIERE_FOLIO'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'PAGOS'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'REQUIERE_REFERENCIA'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'REQUIERE_FECHA'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'REQUIERE_BANCO'
        DataType = ftString
        Size = 2
      end>
    Filter = 'ID = -17'
    Filtered = True
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY46'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'RDB$FOREIGN47'
        Fields = 'FINANCIAMIENTO'
      end>
    StoreDefs = True
    TableName = 'CONDICIONES_COMERCIALES'
    Left = 240
    Top = 328
    object TFiltroCondicionesComercialesID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object TFiltroCondicionesComercialesTIPO: TIBStringField
      FieldName = 'TIPO'
      Size = 11
    end
    object TFiltroCondicionesComercialesCLAVE: TIBStringField
      FieldName = 'CLAVE'
    end
    object TFiltroCondicionesComercialesNOMBRE: TIBStringField
      FieldName = 'NOMBRE'
      Size = 100
    end
    object TFiltroCondicionesComercialesNUM_PAGOS: TIntegerField
      FieldName = 'NUM_PAGOS'
    end
    object TFiltroCondicionesComercialesINTERVALO_ENTRE_PAGOS: TIntegerField
      FieldName = 'INTERVALO_ENTRE_PAGOS'
    end
    object TFiltroCondicionesComercialesDESPLAZAMIENTO_1_PAGO: TIntegerField
      FieldName = 'DESPLAZAMIENTO_1_PAGO'
    end
    object TFiltroCondicionesComercialesDESCUENTO_PORCENTAJE: TFloatField
      FieldName = 'DESCUENTO_PORCENTAJE'
    end
    object TFiltroCondicionesComercialesFINANCIAMIENTO: TIntegerField
      FieldName = 'FINANCIAMIENTO'
    end
    object TFiltroCondicionesComercialesPUNTO_DE_VENTA: TIBStringField
      FieldName = 'PUNTO_DE_VENTA'
      Size = 2
    end
    object TFiltroCondicionesComercialesMORATORIO: TIBStringField
      FieldName = 'MORATORIO'
      Size = 2
    end
    object TFiltroCondicionesComercialesPAGOS: TIBStringField
      FieldName = 'PAGOS'
      Size = 2
    end
    object TFiltroCondicionesComercialesREQUIERE_AUTORIZACION: TIBStringField
      FieldName = 'REQUIERE_AUTORIZACION'
      Size = 2
    end
    object TFiltroCondicionesComercialesREQUIERE_FOLIO: TIBStringField
      FieldName = 'REQUIERE_FOLIO'
      Size = 2
    end
    object TFiltroCondicionesComercialesREQUIERE_REFERENCIA: TIBStringField
      FieldName = 'REQUIERE_REFERENCIA'
      Size = 2
    end
    object TFiltroCondicionesComercialesREQUIERE_FECHA: TIBStringField
      FieldName = 'REQUIERE_FECHA'
      Size = 2
    end
    object TFiltroCondicionesComercialesREQUIERE_BANCO: TIBStringField
      FieldName = 'REQUIERE_BANCO'
      Size = 2
    end
  end
  object TFiltroMaterialesUnidades: TIBTable
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'MATERIAL'
        DataType = ftInteger
      end
      item
        Name = 'UNIDAD'
        DataType = ftInteger
      end
      item
        Name = 'FACTOR'
        DataType = ftFloat
      end>
    Filter = 'ID = -3'
    Filtered = True
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY82'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'RDB$FOREIGN83'
        Fields = 'MATERIAL'
      end
      item
        Name = 'RDB$FOREIGN84'
        Fields = 'UNIDAD'
      end>
    StoreDefs = True
    TableName = 'MATERIALES_UNIDADES'
    Left = 136
    Top = 376
    object TFiltroMaterialesUnidadesID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object TFiltroMaterialesUnidadesMATERIAL: TIntegerField
      FieldName = 'MATERIAL'
    end
    object TFiltroMaterialesUnidadesUNIDAD: TIntegerField
      FieldName = 'UNIDAD'
    end
    object TFiltroMaterialesUnidadesFACTOR: TFloatField
      FieldName = 'FACTOR'
    end
  end
  object TFiltroClientes: TIBTable
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    BeforeOpen = TFiltroClientesBeforeOpen
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'SUJETO'
        DataType = ftInteger
      end
      item
        Name = 'LIMITE_CREDITO'
        DataType = ftFloat
      end
      item
        Name = 'MONEDA'
        DataType = ftInteger
      end
      item
        Name = 'ACUMULADO_COMPRAS'
        DataType = ftFloat
      end
      item
        Name = 'ACUMULADO_PAGOS'
        DataType = ftFloat
      end
      item
        Name = 'NUM_PAGOS_EXTEMPORANEOS'
        DataType = ftInteger
      end
      item
        Name = 'VENDEDOR'
        DataType = ftInteger
      end
      item
        Name = 'FORMAS_DE_PAGO'
        DataType = ftInteger
      end
      item
        Name = 'SERIE_FACTURA'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'TRANSPORTISTA'
        DataType = ftInteger
      end
      item
        Name = 'APLICAR_PRECIO_MAYOREO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'CLASIFICACION'
        DataType = ftInteger
      end
      item
        Name = 'DIAS_DE_RETARDO'
        DataType = ftInteger
      end
      item
        Name = 'REMITENTE'
        DataType = ftInteger
      end
      item
        Name = 'INCLUIR_EN_DECLARACION'
        Attributes = [faFixed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'PRIORIDAD'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'CONGELAR_VENTA'
        Attributes = [faFixed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'PROMOCION'
        DataType = ftInteger
      end
      item
        Name = 'DIA_FACTURA_REVISION'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'DFR_HORA_DE'
        DataType = ftDateTime
      end
      item
        Name = 'DFR_HORA_A'
        DataType = ftDateTime
      end
      item
        Name = 'DIA_ENTREGA_CHEQUES'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'DEC_HORA_DE'
        DataType = ftDateTime
      end
      item
        Name = 'DEC_HORA_A'
        DataType = ftDateTime
      end
      item
        Name = 'FIRMA'
        DataType = ftBlob
        Size = 8
      end
      item
        Name = 'CREDITO_DISPONIBLE'
        DataType = ftFloat
      end
      item
        Name = 'DESCUENTO_PORC'
        DataType = ftFloat
      end
      item
        Name = 'DP_PORC'
        DataType = ftFloat
      end
      item
        Name = 'RECOMENDADO_POR'
        DataType = ftInteger
      end
      item
        Name = 'MANO_I_IMG_IND'
        DataType = ftBlob
        Size = 8
      end
      item
        Name = 'MANO_I_HUE_IND'
        DataType = ftBlob
        Size = 8
      end
      item
        Name = 'MANO_I_VER_IND'
        Attributes = [faFixed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'MANO_I_IMG_PUL'
        DataType = ftBlob
        Size = 8
      end
      item
        Name = 'MANO_I_HUE_PUL'
        DataType = ftBlob
        Size = 8
      end
      item
        Name = 'MANO_I_VER_PUL'
        Attributes = [faFixed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'MANO_D_IMG_IND'
        DataType = ftBlob
        Size = 8
      end
      item
        Name = 'MANO_D_HUE_IND'
        DataType = ftBlob
        Size = 8
      end
      item
        Name = 'MANO_D_VER_IND'
        Attributes = [faFixed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'MANO_D_IMG_PUL'
        DataType = ftBlob
        Size = 8
      end
      item
        Name = 'MANO_D_HUE_PUL'
        DataType = ftBlob
        Size = 8
      end
      item
        Name = 'MANO_D_VER_PUL'
        Attributes = [faFixed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'ESTATUS'
        DataType = ftString
        Size = 20
      end>
    Filter = 'ID = 0'
    Filtered = True
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY49'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'RDB$FOREIGN50'
        Fields = 'SUJETO'
      end
      item
        Name = 'RDB$FOREIGN51'
        Fields = 'MONEDA'
      end
      item
        Name = 'RDB$FOREIGN52'
        Fields = 'VENDEDOR'
      end
      item
        Name = 'RDB$FOREIGN53'
        Fields = 'FORMAS_DE_PAGO'
      end
      item
        Name = 'RDB$FOREIGN54'
        Fields = 'TRANSPORTISTA'
      end
      item
        Name = 'RDB$FOREIGN55'
        Fields = 'CLASIFICACION'
      end
      item
        Name = 'RDB$FOREIGN56'
        Fields = 'REMITENTE'
      end
      item
        Name = 'RDB$FOREIGN57'
        Fields = 'PROMOCION'
      end
      item
        Name = 'RDB$FOREIGN337'
        Fields = 'RECOMENDADO_POR'
      end>
    StoreDefs = True
    TableName = 'SUJETOS_CLIENTES'
    Left = 240
    Top = 376
    object TFiltroClientesID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object TFiltroClientesSUJETO: TIntegerField
      FieldName = 'SUJETO'
    end
    object TFiltroClientesLIMITE_CREDITO: TFloatField
      FieldName = 'LIMITE_CREDITO'
    end
    object TFiltroClientesMONEDA: TIntegerField
      FieldName = 'MONEDA'
    end
    object TFiltroClientesACUMULADO_COMPRAS: TFloatField
      FieldName = 'ACUMULADO_COMPRAS'
    end
    object TFiltroClientesACUMULADO_PAGOS: TFloatField
      FieldName = 'ACUMULADO_PAGOS'
    end
    object TFiltroClientesNUM_PAGOS_EXTEMPORANEOS: TIntegerField
      FieldName = 'NUM_PAGOS_EXTEMPORANEOS'
    end
    object TFiltroClientesVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
    end
    object TFiltroClientesFORMAS_DE_PAGO: TIntegerField
      FieldName = 'FORMAS_DE_PAGO'
    end
    object TFiltroClientesSERIE_FACTURA: TIBStringField
      FieldName = 'SERIE_FACTURA'
      Size = 10
    end
    object TFiltroClientesTRANSPORTISTA: TIntegerField
      FieldName = 'TRANSPORTISTA'
    end
    object TFiltroClientesAPLICAR_PRECIO_MAYOREO: TIBStringField
      FieldName = 'APLICAR_PRECIO_MAYOREO'
      Size = 2
    end
    object TFiltroClientesCLASIFICACION: TIntegerField
      FieldName = 'CLASIFICACION'
    end
    object TFiltroClientesDIAS_DE_RETARDO: TIntegerField
      FieldName = 'DIAS_DE_RETARDO'
    end
    object TFiltroClientesREMITENTE: TIntegerField
      FieldName = 'REMITENTE'
    end
    object TFiltroClientesINCLUIR_EN_DECLARACION: TIBStringField
      FieldName = 'INCLUIR_EN_DECLARACION'
      Size = 2
    end
    object TFiltroClientesPRIORIDAD: TIBStringField
      FieldName = 'PRIORIDAD'
      Size = 14
    end
    object TFiltroClientesCONGELAR_VENTA: TIBStringField
      FieldName = 'CONGELAR_VENTA'
      Size = 2
    end
    object TFiltroClientesPROMOCION: TIntegerField
      FieldName = 'PROMOCION'
    end
    object TFiltroClientesDIA_FACTURA_REVISION: TIBStringField
      FieldName = 'DIA_FACTURA_REVISION'
      Size = 14
    end
    object TFiltroClientesDFR_HORA_DE: TDateTimeField
      FieldName = 'DFR_HORA_DE'
    end
    object TFiltroClientesDFR_HORA_A: TDateTimeField
      FieldName = 'DFR_HORA_A'
    end
    object TFiltroClientesDIA_ENTREGA_CHEQUES: TIBStringField
      FieldName = 'DIA_ENTREGA_CHEQUES'
      Size = 14
    end
    object TFiltroClientesDEC_HORA_DE: TDateTimeField
      FieldName = 'DEC_HORA_DE'
    end
    object TFiltroClientesDEC_HORA_A: TDateTimeField
      FieldName = 'DEC_HORA_A'
    end
    object TFiltroClientesFIRMA: TBlobField
      FieldName = 'FIRMA'
      BlobType = ftBlob
      Size = 8
    end
    object TFiltroClientesESTATUS: TIBStringField
      FieldName = 'ESTATUS'
    end
    object TFiltroClientesCREDITO_DISPONIBLE: TFloatField
      FieldName = 'CREDITO_DISPONIBLE'
    end
    object TFiltroClientesDESCUENTO_PORC: TFloatField
      FieldName = 'DESCUENTO_PORC'
    end
    object TFiltroClientesDP_PORC: TFloatField
      FieldName = 'DP_PORC'
    end
  end
  object TSujetosCliente: TIBTable
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    BeforeOpen = TSujetosClienteBeforeOpen
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'ID'
        DataType = ftInteger
      end
      item
        Name = 'CLAVE'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'NOMBRE'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'RAZON_SOCIAL'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'RFC'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CURP'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DOMICILIO'
        DataType = ftInteger
      end
      item
        Name = 'TELEFONOS'
        DataType = ftInteger
      end
      item
        Name = 'CONTACTOS'
        DataType = ftInteger
      end
      item
        Name = 'FECHA_ALTA'
        DataType = ftDateTime
      end
      item
        Name = 'FACTURAR_A'
        DataType = ftString
        Size = 12
      end
      item
        Name = 'E_MAIL'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'WWWW'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'OBSERVACIONES'
        DataType = ftBlob
      end
      item
        Name = 'SEXO'
        DataType = ftString
        Size = 11
      end
      item
        Name = 'FOTO'
        DataType = ftBlob
      end
      item
        Name = 'TEL_PRINCIPAL'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CUENTA'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY3'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end>
    IndexFieldNames = 'ID'
    MasterFields = 'SUJETO'
    MasterSource = dsFiltroClientes
    StoreDefs = True
    TableName = 'SUJETOS'
    Left = 240
    Top = 424
    object TSujetosClienteID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object TSujetosClienteCLAVE: TIBStringField
      FieldName = 'CLAVE'
      Size = 50
    end
    object TSujetosClienteNOMBRE: TIBStringField
      FieldName = 'NOMBRE'
      Size = 100
    end
    object TSujetosClienteRAZON_SOCIAL: TIBStringField
      FieldName = 'RAZON_SOCIAL'
      Size = 100
    end
    object TSujetosClienteRFC: TIBStringField
      FieldName = 'RFC'
    end
    object TSujetosClienteCURP: TIBStringField
      FieldName = 'CURP'
    end
    object TSujetosClienteDOMICILIO: TIntegerField
      FieldName = 'DOMICILIO'
    end
    object TSujetosClienteTELEFONOS: TIntegerField
      FieldName = 'TELEFONOS'
    end
    object TSujetosClienteCONTACTOS: TIntegerField
      FieldName = 'CONTACTOS'
    end
    object TSujetosClienteFECHA_ALTA: TDateTimeField
      FieldName = 'FECHA_ALTA'
    end
    object TSujetosClienteFACTURAR_A: TIBStringField
      FieldName = 'FACTURAR_A'
      Size = 12
    end
    object TSujetosClienteE_MAIL: TIBStringField
      FieldName = 'E_MAIL'
      Size = 50
    end
    object TSujetosClienteWWWW: TIBStringField
      FieldName = 'WWWW'
      Size = 100
    end
    object TSujetosClienteOBSERVACIONES: TBlobField
      FieldName = 'OBSERVACIONES'
      BlobType = ftBlob
    end
    object TSujetosClienteSEXO: TIBStringField
      FieldName = 'SEXO'
      Size = 11
    end
    object TSujetosClienteFOTO: TBlobField
      FieldName = 'FOTO'
      BlobType = ftBlob
    end
    object TSujetosClienteTEL_PRINCIPAL: TIBStringField
      FieldName = 'TEL_PRINCIPAL'
    end
    object TSujetosClienteCUENTA: TIntegerField
      FieldName = 'CUENTA'
    end
  end
  object dsFiltroClientes: TDataSource
    DataSet = TFiltroClientes
    Left = 240
    Top = 392
  end
  object TFiltroClientesExtensiones: TIBTable
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'SUJETO_CLIENTE'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'FECHA_ALTA'
        DataType = ftDateTime
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
        Name = 'FOTO'
        DataType = ftBlob
      end
      item
        Name = 'FIRMA'
        DataType = ftBlob
      end
      item
        Name = 'LIMITE_CREDITO'
        DataType = ftFloat
      end
      item
        Name = 'ESTATUS'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DOMICILIO'
        DataType = ftString
        Size = 100
      end>
    Filter = 'ID = 0'
    Filtered = True
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY232'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'RDB$FOREIGN233'
        Fields = 'SUJETO_CLIENTE'
      end>
    StoreDefs = True
    TableName = 'CLIENTES_EXTENSIONES'
    Left = 240
    Top = 520
    object TFiltroClientesExtensionesID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object TFiltroClientesExtensionesSUJETO_CLIENTE: TIntegerField
      FieldName = 'SUJETO_CLIENTE'
      Required = True
    end
    object TFiltroClientesExtensionesFECHA_ALTA: TDateTimeField
      FieldName = 'FECHA_ALTA'
    end
    object TFiltroClientesExtensionesCLAVE: TIBStringField
      FieldName = 'CLAVE'
    end
    object TFiltroClientesExtensionesNOMBRE: TIBStringField
      FieldName = 'NOMBRE'
      Size = 100
    end
    object TFiltroClientesExtensionesFOTO: TBlobField
      FieldName = 'FOTO'
      BlobType = ftBlob
    end
    object TFiltroClientesExtensionesFIRMA: TBlobField
      FieldName = 'FIRMA'
      BlobType = ftBlob
    end
    object TFiltroClientesExtensionesLIMITE_CREDITO: TFloatField
      FieldName = 'LIMITE_CREDITO'
    end
    object TFiltroClientesExtensionesESTATUS: TIBStringField
      FieldName = 'ESTATUS'
    end
    object TFiltroClientesExtensionesDOMICILIO: TIBStringField
      FieldName = 'DOMICILIO'
      Size = 100
    end
  end
  object TFiltroCajas: TIBTable
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NOMBRE'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'ALMACEN'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'USUARIO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'TIPO_DE_CAJA'
        DataType = ftString
        Size = 11
      end
      item
        Name = 'ESTATUS'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'MODULO_FUNCION'
        Attributes = [faRequired]
        DataType = ftInteger
      end>
    Filter = 'ID = 0'
    Filtered = True
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY227'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'RDB$FOREIGN228'
        Fields = 'ALMACEN'
      end
      item
        Name = 'RDB$FOREIGN229'
        Fields = 'USUARIO'
      end
      item
        Name = 'RDB$FOREIGN255'
        Fields = 'MODULO_FUNCION'
      end>
    StoreDefs = True
    TableName = 'CAJAS'
    Left = 136
    Top = 432
    object TFiltroCajasID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object TFiltroCajasNOMBRE: TIBStringField
      FieldName = 'NOMBRE'
      Size = 100
    end
    object TFiltroCajasALMACEN: TIntegerField
      FieldName = 'ALMACEN'
      Required = True
    end
    object TFiltroCajasUSUARIO: TIntegerField
      FieldName = 'USUARIO'
      Required = True
    end
    object TFiltroCajasTIPO_DE_CAJA: TIBStringField
      FieldName = 'TIPO_DE_CAJA'
      Size = 11
    end
    object TFiltroCajasESTATUS: TIBStringField
      FieldName = 'ESTATUS'
    end
    object TFiltroCajasMODULO_FUNCION: TIntegerField
      FieldName = 'MODULO_FUNCION'
      Required = True
    end
  end
  object TFiltroBancos: TIBTable
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    BeforeOpen = TFiltroBancosBeforeOpen
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'SUJETO'
        DataType = ftInteger
      end
      item
        Name = 'SUCURSAL'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'CUENTA'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'MONEDA'
        DataType = ftInteger
      end
      item
        Name = 'TIPO_CTA'
        DataType = ftInteger
      end>
    Filter = 'ID = 0'
    Filtered = True
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY12'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'RDB$FOREIGN13'
        Fields = 'SUJETO'
      end
      item
        Name = 'RDB$FOREIGN14'
        Fields = 'MONEDA'
      end
      item
        Name = 'RDB$FOREIGN15'
        Fields = 'TIPO_CTA'
      end>
    StoreDefs = True
    TableName = 'SUJETOS_BANCOS'
    Left = 328
    Top = 8
    object TFiltroBancosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object TFiltroBancosSUJETO: TIntegerField
      FieldName = 'SUJETO'
    end
    object TFiltroBancosSUCURSAL: TIBStringField
      FieldName = 'SUCURSAL'
      Size = 50
    end
    object TFiltroBancosCUENTA: TIBStringField
      FieldName = 'CUENTA'
      Size = 50
    end
    object TFiltroBancosMONEDA: TIntegerField
      FieldName = 'MONEDA'
    end
    object TFiltroBancosTIPO_CTA: TIntegerField
      FieldName = 'TIPO_CTA'
    end
  end
  object TSujetosBanco: TIBTable
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'CLAVE'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'NOMBRE'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'RAZON_SOCIAL'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'RFC'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CURP'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DOMICILIO'
        DataType = ftInteger
      end
      item
        Name = 'TELEFONOS'
        DataType = ftInteger
      end
      item
        Name = 'CONTACTOS'
        DataType = ftInteger
      end
      item
        Name = 'FECHA_ALTA'
        DataType = ftDateTime
      end
      item
        Name = 'FACTURAR_A'
        DataType = ftString
        Size = 12
      end
      item
        Name = 'E_MAIL'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'WWWW'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'OBSERVACIONES'
        DataType = ftBlob
        Size = 8
      end
      item
        Name = 'SEXO'
        DataType = ftString
        Size = 11
      end
      item
        Name = 'FOTO'
        DataType = ftBlob
        Size = 8
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY3'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end>
    IndexFieldNames = 'ID'
    MasterFields = 'SUJETO'
    MasterSource = dsFiltroBancos
    StoreDefs = True
    TableName = 'SUJETOS'
    Left = 352
    Top = 40
    object TSujetosBancoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object TSujetosBancoCLAVE: TIBStringField
      FieldName = 'CLAVE'
      Size = 50
    end
    object TSujetosBancoNOMBRE: TIBStringField
      FieldName = 'NOMBRE'
      Size = 100
    end
    object TSujetosBancoRAZON_SOCIAL: TIBStringField
      FieldName = 'RAZON_SOCIAL'
      Size = 100
    end
    object TSujetosBancoRFC: TIBStringField
      FieldName = 'RFC'
    end
    object TSujetosBancoCURP: TIBStringField
      FieldName = 'CURP'
    end
    object TSujetosBancoDOMICILIO: TIntegerField
      FieldName = 'DOMICILIO'
    end
    object TSujetosBancoTELEFONOS: TIntegerField
      FieldName = 'TELEFONOS'
    end
    object TSujetosBancoCONTACTOS: TIntegerField
      FieldName = 'CONTACTOS'
    end
    object TSujetosBancoFECHA_ALTA: TDateTimeField
      FieldName = 'FECHA_ALTA'
    end
    object TSujetosBancoFACTURAR_A: TIBStringField
      FieldName = 'FACTURAR_A'
      Size = 12
    end
    object TSujetosBancoE_MAIL: TIBStringField
      FieldName = 'E_MAIL'
      Size = 50
    end
    object TSujetosBancoWWWW: TIBStringField
      FieldName = 'WWWW'
      Size = 100
    end
    object TSujetosBancoOBSERVACIONES: TBlobField
      FieldName = 'OBSERVACIONES'
      BlobType = ftBlob
      Size = 8
    end
    object TSujetosBancoSEXO: TIBStringField
      FieldName = 'SEXO'
      Size = 11
    end
    object TSujetosBancoFOTO: TBlobField
      FieldName = 'FOTO'
      BlobType = ftBlob
      Size = 8
    end
  end
  object dsFiltroBancos: TDataSource
    DataSet = TFiltroBancos
    Left = 336
    Top = 24
  end
  object TFiltroSujetos: TIBTable
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    BeforeOpen = TFiltroSujetosBeforeOpen
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'CLAVE'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'NOMBRE'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'RAZON_SOCIAL'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'RFC'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CURP'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DOMICILIO'
        DataType = ftInteger
      end
      item
        Name = 'TELEFONOS'
        DataType = ftInteger
      end
      item
        Name = 'CONTACTOS'
        DataType = ftInteger
      end
      item
        Name = 'FECHA_ALTA'
        DataType = ftDateTime
      end
      item
        Name = 'FACTURAR_A'
        DataType = ftString
        Size = 12
      end
      item
        Name = 'E_MAIL'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'WWWW'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'OBSERVACIONES'
        DataType = ftBlob
      end
      item
        Name = 'SEXO'
        DataType = ftString
        Size = 11
      end
      item
        Name = 'FOTO'
        DataType = ftBlob
      end>
    Filter = 'ID = 0'
    Filtered = True
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY3'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end>
    StoreDefs = True
    TableName = 'SUJETOS'
    Left = 328
    Top = 87
  end
  object dsFiltroSujetos: TDataSource
    DataSet = TFiltroSujetos
    Left = 342
    Top = 97
  end
  object TFiltroSujetosClientes: TIBTable
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    CachedUpdates = False
    IndexFieldNames = 'SUJETO'
    MasterFields = 'ID'
    MasterSource = dsFiltroSujetos
    TableName = 'SUJETOS_CLIENTES'
    Left = 361
    Top = 109
  end
  object TFiltroExtensiones: TIBTable
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'SUJETO_CLIENTE'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'FECHA_ALTA'
        DataType = ftDateTime
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
        Name = 'FOTO'
        DataType = ftBlob
        Size = 8
      end
      item
        Name = 'FIRMA'
        DataType = ftBlob
        Size = 8
      end
      item
        Name = 'LIMITE_CREDITO'
        DataType = ftFloat
      end
      item
        Name = 'ESTATUS'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DOMICILIO'
        DataType = ftString
        Size = 100
      end>
    Filter = 'ID = 0'
    Filtered = True
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY232'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'RDB$FOREIGN233'
        Fields = 'SUJETO_CLIENTE'
      end>
    StoreDefs = True
    TableName = 'CLIENTES_EXTENSIONES'
    Left = 328
    Top = 160
  end
  object TFiltroCXC: TIBTable
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    OnCalcFields = TFiltroBancosBeforeOpen
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'REFERENCIA'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'NUMERO_DE_DOCUMENTOS'
        DataType = ftInteger
      end
      item
        Name = 'DOCUMENTO'
        DataType = ftInteger
      end
      item
        Name = 'CLIENTE'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'PUNTO_DE_VENTA_REF_PAGO'
        DataType = ftInteger
      end
      item
        Name = 'FECHA'
        DataType = ftDateTime
      end
      item
        Name = 'FECHA_VENCIMIENTO'
        DataType = ftDateTime
      end
      item
        Name = 'ALMACEN'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'IMPORTE_INICIAL'
        DataType = ftFloat
      end
      item
        Name = 'SALDO_ACTUAL'
        DataType = ftFloat
      end
      item
        Name = 'FINANCIAMIENTO'
        DataType = ftFloat
      end
      item
        Name = 'GASTOS'
        DataType = ftFloat
      end
      item
        Name = 'ETAPA_COBRANZA'
        DataType = ftInteger
      end
      item
        Name = 'MORATORIOS'
        DataType = ftFloat
      end
      item
        Name = 'OTROS'
        DataType = ftFloat
      end
      item
        Name = 'FECHA_ULM_ACT'
        DataType = ftDateTime
      end
      item
        Name = 'EXTENSION'
        DataType = ftInteger
      end
      item
        Name = 'SEL'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'ESTATUS'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ID_REFERENCIA'
        DataType = ftInteger
      end
      item
        Name = 'TABLA_REFERENCIA'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'PAGO_MODIFICADO'
        DataType = ftFloat
      end>
    Filter = 'ID = 0'
    Filtered = True
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY275'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'RDB$FOREIGN276'
        Fields = 'PUNTO_DE_VENTA_REF_PAGO'
      end
      item
        Name = 'RDB$FOREIGN277'
        Fields = 'CLIENTE'
      end
      item
        Name = 'RDB$FOREIGN278'
        Fields = 'ALMACEN'
      end
      item
        Name = 'RDB$FOREIGN279'
        Fields = 'ETAPA_COBRANZA'
      end
      item
        Name = 'RDB$FOREIGN280'
        Fields = 'EXTENSION'
      end>
    StoreDefs = True
    TableName = 'CUENTAS_POR_COBRAR'
    Left = 328
    Top = 208
    object TFiltroCXCID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object TFiltroCXCREFERENCIA: TIBStringField
      FieldName = 'REFERENCIA'
    end
    object TFiltroCXCNUMERO_DE_DOCUMENTOS: TIntegerField
      FieldName = 'NUMERO_DE_DOCUMENTOS'
    end
    object TFiltroCXCDOCUMENTO: TIntegerField
      FieldName = 'DOCUMENTO'
    end
    object TFiltroCXCCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      Required = True
    end
    object TFiltroCXCPUNTO_DE_VENTA_REF_PAGO: TIntegerField
      FieldName = 'PUNTO_DE_VENTA_REF_PAGO'
    end
    object TFiltroCXCFECHA: TDateTimeField
      FieldName = 'FECHA'
    end
    object TFiltroCXCFECHA_VENCIMIENTO: TDateTimeField
      FieldName = 'FECHA_VENCIMIENTO'
    end
    object TFiltroCXCALMACEN: TIntegerField
      FieldName = 'ALMACEN'
      Required = True
    end
    object TFiltroCXCIMPORTE_INICIAL: TFloatField
      FieldName = 'IMPORTE_INICIAL'
    end
    object TFiltroCXCSALDO_ACTUAL: TFloatField
      FieldName = 'SALDO_ACTUAL'
    end
    object TFiltroCXCFINANCIAMIENTO: TFloatField
      FieldName = 'FINANCIAMIENTO'
    end
    object TFiltroCXCGASTOS: TFloatField
      FieldName = 'GASTOS'
    end
    object TFiltroCXCETAPA_COBRANZA: TIntegerField
      FieldName = 'ETAPA_COBRANZA'
    end
    object TFiltroCXCMORATORIOS: TFloatField
      FieldName = 'MORATORIOS'
    end
    object TFiltroCXCOTROS: TFloatField
      FieldName = 'OTROS'
    end
    object TFiltroCXCFECHA_ULM_ACT: TDateTimeField
      FieldName = 'FECHA_ULM_ACT'
    end
    object TFiltroCXCEXTENSION: TIntegerField
      FieldName = 'EXTENSION'
    end
    object TFiltroCXCSEL: TIBStringField
      FieldName = 'SEL'
      Size = 2
    end
    object TFiltroCXCESTATUS: TIBStringField
      FieldName = 'ESTATUS'
    end
    object TFiltroCXCID_REFERENCIA: TIntegerField
      FieldName = 'ID_REFERENCIA'
    end
    object TFiltroCXCTABLA_REFERENCIA: TIBStringField
      FieldName = 'TABLA_REFERENCIA'
      Size = 50
    end
    object TFiltroCXCPAGO_MODIFICADO: TFloatField
      FieldName = 'PAGO_MODIFICADO'
    end
  end
  object TFiltroSujetosP: TIBTable
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    BeforeOpen = TFiltroSujetosPBeforeOpen
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'CLAVE'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'NOMBRE'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'RAZON_SOCIAL'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'RFC'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CURP'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DOMICILIO'
        DataType = ftInteger
      end
      item
        Name = 'TELEFONOS'
        DataType = ftInteger
      end
      item
        Name = 'CONTACTOS'
        DataType = ftInteger
      end
      item
        Name = 'FECHA_ALTA'
        DataType = ftDateTime
      end
      item
        Name = 'FACTURAR_A'
        DataType = ftString
        Size = 12
      end
      item
        Name = 'E_MAIL'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'WWWW'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'OBSERVACIONES'
        DataType = ftBlob
      end
      item
        Name = 'SEXO'
        DataType = ftString
        Size = 11
      end
      item
        Name = 'FOTO'
        DataType = ftBlob
      end>
    Filter = 'ID = 0'
    Filtered = True
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY3'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end>
    StoreDefs = True
    TableName = 'SUJETOS'
    Left = 328
    Top = 256
  end
  object TFiltroSujetosProveedores: TIBTable
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    CachedUpdates = False
    IndexFieldNames = 'SUJETO'
    MasterFields = 'ID'
    MasterSource = dsFiltroSujetosP
    TableName = 'SUJETOS_PROVEEDORES'
    Left = 328
    Top = 282
  end
  object dsFiltroSujetosP: TDataSource
    DataSet = TFiltroSujetosP
    Left = 328
    Top = 270
  end
  object TFiltroChequeras: TIBTable
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'BANCO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'CUENTA_DE_CHEQUES'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'FECHA_ULT_CHEQUE_IMP'
        DataType = ftDateTime
      end
      item
        Name = 'SALDO'
        DataType = ftFloat
      end
      item
        Name = 'MONEDA'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'FOLIO_CHEQUE_INICIAL'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'REPORTE_CHEQUES'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'REPORTE_DEPOSITOS'
        DataType = ftString
        Size = 100
      end>
    Filter = 'ID = -17'
    Filtered = True
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY154'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'RDB$FOREIGN155'
        Fields = 'BANCO'
      end
      item
        Name = 'RDB$FOREIGN156'
        Fields = 'MONEDA'
      end>
    StoreDefs = True
    TableName = 'CHEQUERAS'
    Left = 328
    Top = 328
  end
  object TFiltroCXP: TIBTable
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    CachedUpdates = False
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
        Name = 'PROVEEDOR'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'CONDICION_COMERCIAL'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NOTA_ENTRADA'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'FECHA_VENCIMIENTO'
        DataType = ftDateTime
      end
      item
        Name = 'SUBTOTAL'
        DataType = ftFloat
      end
      item
        Name = 'IVA'
        DataType = ftFloat
      end
      item
        Name = 'IEPS'
        DataType = ftFloat
      end
      item
        Name = 'IMPUESTO1'
        DataType = ftFloat
      end
      item
        Name = 'IMPUESTO2'
        DataType = ftFloat
      end
      item
        Name = 'DESCUENTOS'
        DataType = ftFloat
      end
      item
        Name = 'TOTAL'
        DataType = ftFloat
      end
      item
        Name = 'SALDO_ACTUAL'
        DataType = ftFloat
      end
      item
        Name = 'ESTATUS'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'REFERENCIA'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'NUMERO_DE_DOCUMENTOS'
        DataType = ftInteger
      end
      item
        Name = 'DOCUMENTO'
        DataType = ftInteger
      end
      item
        Name = 'ID_REFERENCIA'
        DataType = ftInteger
      end
      item
        Name = 'TABLA_REFERENCIA'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'SEL'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'PAGO_MODIFICADO'
        DataType = ftFloat
      end>
    Filter = 'ID = 0'
    Filtered = True
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY68'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'RDB$FOREIGN70'
        Fields = 'PROVEEDOR'
      end
      item
        Name = 'RDB$FOREIGN75'
        Fields = 'CONDICION_COMERCIAL'
      end
      item
        Name = 'RDB$FOREIGN77'
        Fields = 'NOTA_ENTRADA'
      end>
    StoreDefs = True
    TableName = 'CUENTAS_X_PAGAR'
    Left = 384
    Top = 208
    object TFiltroCXPID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object TFiltroCXPFECHA_ALTA: TDateTimeField
      FieldName = 'FECHA_ALTA'
    end
    object TFiltroCXPPROVEEDOR: TIntegerField
      FieldName = 'PROVEEDOR'
      Required = True
    end
    object TFiltroCXPCONDICION_COMERCIAL: TIntegerField
      FieldName = 'CONDICION_COMERCIAL'
      Required = True
    end
    object TFiltroCXPNOTA_ENTRADA: TIntegerField
      FieldName = 'NOTA_ENTRADA'
      Required = True
    end
    object TFiltroCXPFECHA_VENCIMIENTO: TDateTimeField
      FieldName = 'FECHA_VENCIMIENTO'
    end
    object TFiltroCXPSUBTOTAL: TFloatField
      FieldName = 'SUBTOTAL'
    end
    object TFiltroCXPIVA: TFloatField
      FieldName = 'IVA'
    end
    object TFiltroCXPIEPS: TFloatField
      FieldName = 'IEPS'
    end
    object TFiltroCXPIMPUESTO1: TFloatField
      FieldName = 'IMPUESTO1'
    end
    object TFiltroCXPIMPUESTO2: TFloatField
      FieldName = 'IMPUESTO2'
    end
    object TFiltroCXPDESCUENTOS: TFloatField
      FieldName = 'DESCUENTOS'
    end
    object TFiltroCXPTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object TFiltroCXPSALDO_ACTUAL: TFloatField
      FieldName = 'SALDO_ACTUAL'
    end
    object TFiltroCXPESTATUS: TIBStringField
      FieldName = 'ESTATUS'
    end
    object TFiltroCXPREFERENCIA: TIBStringField
      FieldName = 'REFERENCIA'
    end
    object TFiltroCXPNUMERO_DE_DOCUMENTOS: TIntegerField
      FieldName = 'NUMERO_DE_DOCUMENTOS'
    end
    object TFiltroCXPDOCUMENTO: TIntegerField
      FieldName = 'DOCUMENTO'
    end
    object TFiltroCXPID_REFERENCIA: TIntegerField
      FieldName = 'ID_REFERENCIA'
    end
    object TFiltroCXPTABLA_REFERENCIA: TIBStringField
      FieldName = 'TABLA_REFERENCIA'
      Size = 50
    end
    object TFiltroCXPSEL: TIBStringField
      FieldName = 'SEL'
      Size = 2
    end
    object TFiltroCXPPAGO_MODIFICADO: TFloatField
      FieldName = 'PAGO_MODIFICADO'
    end
  end
  object TFiltroProveedores: TIBTable
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    BeforeOpen = TFiltroProveedoresBeforeOpen
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'ID'
        DataType = ftInteger
      end
      item
        Name = 'SUJETO'
        DataType = ftInteger
      end
      item
        Name = 'DESCUENTO_PORC'
        DataType = ftFloat
      end
      item
        Name = 'FORMAS_DE_PAGO'
        DataType = ftInteger
      end
      item
        Name = 'COMPRA_MINIMA'
        DataType = ftFloat
      end
      item
        Name = 'ACUMULADO_COMPRA'
        DataType = ftFloat
      end
      item
        Name = 'PRIORIDAD'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'CLASIFICACION'
        DataType = ftInteger
      end
      item
        Name = 'INCLUIR_EN_DECLARACION'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'MONEDA'
        DataType = ftInteger
      end
      item
        Name = 'DIAS_DE_RETARDO'
        DataType = ftInteger
      end
      item
        Name = 'RECIBIR_POR'
        DataType = ftInteger
      end
      item
        Name = 'CONGELAR_PAGO'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'DIA_FACTURA_REVISION'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'DFR_HORA_DE'
        DataType = ftDateTime
      end
      item
        Name = 'DFR_HORA_A'
        DataType = ftDateTime
      end
      item
        Name = 'DIA_ENTREGA_CHEQUES'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'DEC_HORA_DE'
        DataType = ftDateTime
      end
      item
        Name = 'DEC_HORA_A'
        DataType = ftDateTime
      end
      item
        Name = 'TIPO_NACIONALIDAD'
        DataType = ftString
        Size = 11
      end>
    Filter = 'ID = 0'
    Filtered = True
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY61'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'RDB$FOREIGN62'
        Fields = 'SUJETO'
      end
      item
        Name = 'RDB$FOREIGN63'
        Fields = 'FORMAS_DE_PAGO'
      end
      item
        Name = 'RDB$FOREIGN64'
        Fields = 'CLASIFICACION'
      end
      item
        Name = 'RDB$FOREIGN65'
        Fields = 'MONEDA'
      end
      item
        Name = 'RDB$FOREIGN66'
        Fields = 'RECIBIR_POR'
      end>
    StoreDefs = True
    TableName = 'SUJETOS_PROVEEDORES'
    Left = 328
    Top = 376
    object TFiltroProveedoresID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object TFiltroProveedoresSUJETO: TIntegerField
      FieldName = 'SUJETO'
    end
    object TFiltroProveedoresDESCUENTO_PORC: TFloatField
      FieldName = 'DESCUENTO_PORC'
    end
    object TFiltroProveedoresFORMAS_DE_PAGO: TIntegerField
      FieldName = 'FORMAS_DE_PAGO'
    end
    object TFiltroProveedoresCOMPRA_MINIMA: TFloatField
      FieldName = 'COMPRA_MINIMA'
    end
    object TFiltroProveedoresACUMULADO_COMPRA: TFloatField
      FieldName = 'ACUMULADO_COMPRA'
    end
    object TFiltroProveedoresPRIORIDAD: TIBStringField
      FieldName = 'PRIORIDAD'
      Size = 14
    end
    object TFiltroProveedoresCLASIFICACION: TIntegerField
      FieldName = 'CLASIFICACION'
    end
    object TFiltroProveedoresINCLUIR_EN_DECLARACION: TIBStringField
      FieldName = 'INCLUIR_EN_DECLARACION'
      Size = 2
    end
    object TFiltroProveedoresMONEDA: TIntegerField
      FieldName = 'MONEDA'
    end
    object TFiltroProveedoresDIAS_DE_RETARDO: TIntegerField
      FieldName = 'DIAS_DE_RETARDO'
    end
    object TFiltroProveedoresRECIBIR_POR: TIntegerField
      FieldName = 'RECIBIR_POR'
    end
    object TFiltroProveedoresCONGELAR_PAGO: TIBStringField
      FieldName = 'CONGELAR_PAGO'
      Size = 2
    end
    object TFiltroProveedoresDIA_FACTURA_REVISION: TIBStringField
      FieldName = 'DIA_FACTURA_REVISION'
      Size = 14
    end
    object TFiltroProveedoresDFR_HORA_DE: TDateTimeField
      FieldName = 'DFR_HORA_DE'
    end
    object TFiltroProveedoresDFR_HORA_A: TDateTimeField
      FieldName = 'DFR_HORA_A'
    end
    object TFiltroProveedoresDIA_ENTREGA_CHEQUES: TIBStringField
      FieldName = 'DIA_ENTREGA_CHEQUES'
      Size = 14
    end
    object TFiltroProveedoresDEC_HORA_DE: TDateTimeField
      FieldName = 'DEC_HORA_DE'
    end
    object TFiltroProveedoresDEC_HORA_A: TDateTimeField
      FieldName = 'DEC_HORA_A'
    end
    object TFiltroProveedoresTIPO_NACIONALIDAD: TIBStringField
      FieldName = 'TIPO_NACIONALIDAD'
      Size = 11
    end
  end
  object dsFiltroProveedores: TDataSource
    DataSet = TFiltroProveedores
    Left = 328
    Top = 392
  end
  object TSujetosProveedor: TIBTable
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'ID'
        DataType = ftInteger
      end
      item
        Name = 'CLAVE'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'NOMBRE'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'RAZON_SOCIAL'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'RFC'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CURP'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DOMICILIO'
        DataType = ftInteger
      end
      item
        Name = 'TELEFONOS'
        DataType = ftInteger
      end
      item
        Name = 'CONTACTOS'
        DataType = ftInteger
      end
      item
        Name = 'FECHA_ALTA'
        DataType = ftDateTime
      end
      item
        Name = 'FACTURAR_A'
        DataType = ftString
        Size = 12
      end
      item
        Name = 'E_MAIL'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'WWWW'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'OBSERVACIONES'
        DataType = ftBlob
      end
      item
        Name = 'SEXO'
        DataType = ftString
        Size = 11
      end
      item
        Name = 'FOTO'
        DataType = ftBlob
      end
      item
        Name = 'TEL_PRINCIPAL'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY3'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end>
    IndexFieldNames = 'ID'
    MasterFields = 'SUJETO'
    MasterSource = dsFiltroProveedores
    StoreDefs = True
    TableName = 'SUJETOS'
    Left = 328
    Top = 416
    object TSujetosProveedorID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object TSujetosProveedorCLAVE: TIBStringField
      FieldName = 'CLAVE'
      Size = 50
    end
    object TSujetosProveedorNOMBRE: TIBStringField
      FieldName = 'NOMBRE'
      Size = 100
    end
    object TSujetosProveedorRAZON_SOCIAL: TIBStringField
      FieldName = 'RAZON_SOCIAL'
      Size = 100
    end
    object TSujetosProveedorRFC: TIBStringField
      FieldName = 'RFC'
    end
    object TSujetosProveedorCURP: TIBStringField
      FieldName = 'CURP'
    end
    object TSujetosProveedorDOMICILIO: TIntegerField
      FieldName = 'DOMICILIO'
    end
    object TSujetosProveedorTELEFONOS: TIntegerField
      FieldName = 'TELEFONOS'
    end
    object TSujetosProveedorCONTACTOS: TIntegerField
      FieldName = 'CONTACTOS'
    end
    object TSujetosProveedorFECHA_ALTA: TDateTimeField
      FieldName = 'FECHA_ALTA'
    end
    object TSujetosProveedorFACTURAR_A: TIBStringField
      FieldName = 'FACTURAR_A'
      Size = 12
    end
    object TSujetosProveedorE_MAIL: TIBStringField
      FieldName = 'E_MAIL'
      Size = 50
    end
    object TSujetosProveedorWWWW: TIBStringField
      FieldName = 'WWWW'
      Size = 100
    end
    object TSujetosProveedorOBSERVACIONES: TBlobField
      FieldName = 'OBSERVACIONES'
      BlobType = ftBlob
    end
    object TSujetosProveedorSEXO: TIBStringField
      FieldName = 'SEXO'
      Size = 11
    end
    object TSujetosProveedorFOTO: TBlobField
      FieldName = 'FOTO'
      BlobType = ftBlob
    end
    object TSujetosProveedorTEL_PRINCIPAL: TIBStringField
      FieldName = 'TEL_PRINCIPAL'
    end
  end
  object TFiltroEmpresa: TIBTable
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    BeforeOpen = TFiltroEmpresaBeforeOpen
    CachedUpdates = False
    TableName = 'SUJETOS_EMPRESA'
    Left = 456
    Top = 8
    object TFiltroEmpresaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object TFiltroEmpresaSUJETO: TIntegerField
      FieldName = 'SUJETO'
    end
    object TFiltroEmpresaID_INFORMAR: TIntegerField
      FieldName = 'ID_INFORMAR'
    end
    object TFiltroEmpresaESTATUS: TIBStringField
      FieldName = 'ESTATUS'
    end
    object TFiltroEmpresaTILEMODE: TIBStringField
      FieldName = 'TILEMODE'
    end
  end
  object TSujetosEmpresa: TIBTable
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'CLAVE'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'NOMBRE'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'RAZON_SOCIAL'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'RFC'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CURP'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DOMICILIO'
        DataType = ftInteger
      end
      item
        Name = 'TELEFONOS'
        DataType = ftInteger
      end
      item
        Name = 'CONTACTOS'
        DataType = ftInteger
      end
      item
        Name = 'FECHA_ALTA'
        DataType = ftDateTime
      end
      item
        Name = 'FACTURAR_A'
        DataType = ftString
        Size = 12
      end
      item
        Name = 'E_MAIL'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'WWWW'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'OBSERVACIONES'
        DataType = ftBlob
      end
      item
        Name = 'SEXO'
        DataType = ftString
        Size = 11
      end
      item
        Name = 'FOTO'
        DataType = ftBlob
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY3'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end>
    IndexFieldNames = 'ID'
    MasterFields = 'SUJETO'
    MasterSource = dsFiltroEmpresa
    StoreDefs = True
    TableName = 'SUJETOS'
    Left = 480
    Top = 36
    object TSujetosEmpresaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object TSujetosEmpresaCLAVE: TIBStringField
      FieldName = 'CLAVE'
      Size = 50
    end
    object TSujetosEmpresaNOMBRE: TIBStringField
      FieldName = 'NOMBRE'
      Size = 100
    end
    object TSujetosEmpresaRAZON_SOCIAL: TIBStringField
      FieldName = 'RAZON_SOCIAL'
      Size = 100
    end
    object TSujetosEmpresaRFC: TIBStringField
      FieldName = 'RFC'
    end
    object TSujetosEmpresaCURP: TIBStringField
      FieldName = 'CURP'
    end
    object TSujetosEmpresaDOMICILIO: TIntegerField
      FieldName = 'DOMICILIO'
    end
    object TSujetosEmpresaTELEFONOS: TIntegerField
      FieldName = 'TELEFONOS'
    end
    object TSujetosEmpresaCONTACTOS: TIntegerField
      FieldName = 'CONTACTOS'
    end
    object TSujetosEmpresaFECHA_ALTA: TDateTimeField
      FieldName = 'FECHA_ALTA'
    end
    object TSujetosEmpresaFACTURAR_A: TIBStringField
      FieldName = 'FACTURAR_A'
      Size = 12
    end
    object TSujetosEmpresaE_MAIL: TIBStringField
      FieldName = 'E_MAIL'
      Size = 50
    end
    object TSujetosEmpresaWWWW: TIBStringField
      FieldName = 'WWWW'
      Size = 100
    end
    object TSujetosEmpresaOBSERVACIONES: TBlobField
      FieldName = 'OBSERVACIONES'
      BlobType = ftBlob
    end
    object TSujetosEmpresaSEXO: TIBStringField
      FieldName = 'SEXO'
      Size = 11
    end
    object TSujetosEmpresaFOTO: TBlobField
      FieldName = 'FOTO'
      BlobType = ftBlob
    end
  end
  object dsFiltroEmpresa: TDataSource
    DataSet = TFiltroEmpresa
    Left = 464
    Top = 24
  end
  object dsSujetosEmpresa: TDataSource
    DataSet = TSujetosEmpresa
    Left = 490
    Top = 50
  end
  object TFiltroNEntrada: TIBTable
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    CachedUpdates = False
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
        Name = 'FACTURA_PROVEEDOR'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'ORDEN_COMPRA'
        DataType = ftInteger
      end
      item
        Name = 'DESEMPAQUE'
        DataType = ftInteger
      end
      item
        Name = 'FECHA_ALTA'
        DataType = ftDateTime
      end
      item
        Name = 'ALMACEN'
        DataType = ftInteger
      end
      item
        Name = 'TOTAL'
        DataType = ftFloat
      end
      item
        Name = 'IVA'
        DataType = ftFloat
      end
      item
        Name = 'IEPS'
        DataType = ftFloat
      end
      item
        Name = 'IMPUESTO1'
        DataType = ftFloat
      end
      item
        Name = 'IMPUESTO2'
        DataType = ftFloat
      end
      item
        Name = 'MONEDA'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ESTATUS'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'SUBTOTAL'
        DataType = ftFloat
      end
      item
        Name = 'GRANTOTAL'
        DataType = ftFloat
      end
      item
        Name = 'DESCUENTO_GLOBAL'
        DataType = ftFloat
      end
      item
        Name = 'DESCUENTO_PARCIAL'
        DataType = ftFloat
      end
      item
        Name = 'RETENCION'
        DataType = ftFloat
      end
      item
        Name = 'BONIFICACION_XTRA'
        DataType = ftFloat
      end
      item
        Name = 'ID_REFERENCIA'
        DataType = ftInteger
      end
      item
        Name = 'TABLA_REFERENCIA'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'DESCUENTO_XTRA'
        DataType = ftFloat
      end
      item
        Name = 'PROVEEDOR'
        DataType = ftInteger
      end
      item
        Name = 'OBSERVACIONES'
        DataType = ftBlob
        Size = 8
      end
      item
        Name = 'CONSECUTIVO'
        DataType = ftInteger
      end
      item
        Name = 'CONDICION_COMERCIAL'
        DataType = ftInteger
      end>
    Filter = 'ID = 0'
    Filtered = True
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY91'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'RDB$FOREIGN92'
        Fields = 'ORDEN_COMPRA'
      end
      item
        Name = 'RDB$FOREIGN95'
        Fields = 'DESEMPAQUE'
      end
      item
        Name = 'RDB$FOREIGN98'
        Fields = 'ALMACEN'
      end
      item
        Name = 'RDB$FOREIGN99'
        Fields = 'MONEDA'
      end
      item
        Name = 'RDB$FOREIGN130'
        Fields = 'CONDICION_COMERCIAL'
      end>
    StoreDefs = True
    TableName = 'NOTAS_DE_ENTRADA'
    Left = 464
    Top = 96
    object TFiltroNEntradaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object TFiltroNEntradaCLAVE: TIBStringField
      FieldName = 'CLAVE'
    end
    object TFiltroNEntradaFACTURA_PROVEEDOR: TIBStringField
      FieldName = 'FACTURA_PROVEEDOR'
      Size = 10
    end
    object TFiltroNEntradaORDEN_COMPRA: TIntegerField
      FieldName = 'ORDEN_COMPRA'
    end
    object TFiltroNEntradaDESEMPAQUE: TIntegerField
      FieldName = 'DESEMPAQUE'
    end
    object TFiltroNEntradaFECHA_ALTA: TDateTimeField
      FieldName = 'FECHA_ALTA'
    end
    object TFiltroNEntradaALMACEN: TIntegerField
      FieldName = 'ALMACEN'
    end
    object TFiltroNEntradaTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object TFiltroNEntradaIVA: TFloatField
      FieldName = 'IVA'
    end
    object TFiltroNEntradaIEPS: TFloatField
      FieldName = 'IEPS'
    end
    object TFiltroNEntradaIMPUESTO1: TFloatField
      FieldName = 'IMPUESTO1'
    end
    object TFiltroNEntradaIMPUESTO2: TFloatField
      FieldName = 'IMPUESTO2'
    end
    object TFiltroNEntradaMONEDA: TIntegerField
      FieldName = 'MONEDA'
      Required = True
    end
    object TFiltroNEntradaESTATUS: TIBStringField
      FieldName = 'ESTATUS'
    end
    object TFiltroNEntradaSUBTOTAL: TFloatField
      FieldName = 'SUBTOTAL'
    end
    object TFiltroNEntradaGRANTOTAL: TFloatField
      FieldName = 'GRANTOTAL'
    end
    object TFiltroNEntradaDESCUENTO_GLOBAL: TFloatField
      FieldName = 'DESCUENTO_GLOBAL'
    end
    object TFiltroNEntradaDESCUENTO_PARCIAL: TFloatField
      FieldName = 'DESCUENTO_PARCIAL'
    end
    object TFiltroNEntradaRETENCION: TFloatField
      FieldName = 'RETENCION'
    end
    object TFiltroNEntradaBONIFICACION_XTRA: TFloatField
      FieldName = 'BONIFICACION_XTRA'
    end
    object TFiltroNEntradaID_REFERENCIA: TIntegerField
      FieldName = 'ID_REFERENCIA'
    end
    object TFiltroNEntradaTABLA_REFERENCIA: TIBStringField
      FieldName = 'TABLA_REFERENCIA'
      Size = 50
    end
    object TFiltroNEntradaDESCUENTO_XTRA: TFloatField
      FieldName = 'DESCUENTO_XTRA'
    end
    object TFiltroNEntradaPROVEEDOR: TIntegerField
      FieldName = 'PROVEEDOR'
    end
    object TFiltroNEntradaOBSERVACIONES: TBlobField
      FieldName = 'OBSERVACIONES'
      BlobType = ftBlob
      Size = 8
    end
    object TFiltroNEntradaCONSECUTIVO: TIntegerField
      FieldName = 'CONSECUTIVO'
    end
    object TFiltroNEntradaCONDICION_COMERCIAL: TIntegerField
      FieldName = 'CONDICION_COMERCIAL'
    end
  end
  object TFiltroLineas: TIBTable
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'LINK'
        DataType = ftInteger
      end
      item
        Name = 'DESCRIPCION'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'ESTATUS'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ORDEN'
        DataType = ftInteger
      end
      item
        Name = 'MEDIDA'
        DataType = ftInteger
      end
      item
        Name = 'GRUPO_COLORES'
        DataType = ftInteger
      end>
    Filter = 'ID = 0'
    Filtered = True
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY75'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'RDB$FOREIGN76'
        Fields = 'LINK'
      end
      item
        Name = 'RDB$FOREIGN251'
        Fields = 'MEDIDA'
      end
      item
        Name = 'RDB$FOREIGN282'
        Fields = 'GRUPO_COLORES'
      end>
    StoreDefs = True
    TableName = 'LINEAS'
    Left = 464
    Top = 144
    object TFiltroLineasID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object TFiltroLineasLINK: TIntegerField
      FieldName = 'LINK'
    end
    object TFiltroLineasDESCRIPCION: TIBStringField
      FieldName = 'DESCRIPCION'
      Size = 100
    end
    object TFiltroLineasESTATUS: TIBStringField
      FieldName = 'ESTATUS'
    end
    object TFiltroLineasORDEN: TIntegerField
      FieldName = 'ORDEN'
    end
    object TFiltroLineasMEDIDA: TIntegerField
      FieldName = 'MEDIDA'
    end
    object TFiltroLineasGRUPO_COLORES: TIntegerField
      FieldName = 'GRUPO_COLORES'
    end
  end
  object TFiltroRemitentes: TIBTable
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    BeforeOpen = TFiltroRemitentesBeforeOpen
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'SUJETO'
        DataType = ftInteger
      end
      item
        Name = 'ENVIAR_POR'
        DataType = ftInteger
      end>
    Filter = 'ID = 0'
    Filtered = True
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY42'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'RDB$FOREIGN43'
        Fields = 'SUJETO'
      end
      item
        Name = 'RDB$FOREIGN44'
        Fields = 'ENVIAR_POR'
      end>
    StoreDefs = True
    TableName = 'SUJETOS_REMITENTES'
    Left = 328
    Top = 464
  end
  object dsFiltroRemitentes: TDataSource
    DataSet = TFiltroRemitentes
    Left = 328
    Top = 480
  end
  object TSujetosRemitentes: TIBTable
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'CLAVE'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'NOMBRE'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'RAZON_SOCIAL'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'RFC'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CURP'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DOMICILIO'
        DataType = ftInteger
      end
      item
        Name = 'TELEFONOS'
        DataType = ftInteger
      end
      item
        Name = 'CONTACTOS'
        DataType = ftInteger
      end
      item
        Name = 'FECHA_ALTA'
        DataType = ftDateTime
      end
      item
        Name = 'FACTURAR_A'
        DataType = ftString
        Size = 12
      end
      item
        Name = 'E_MAIL'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'WWWW'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'OBSERVACIONES'
        DataType = ftBlob
        Size = 8
      end
      item
        Name = 'SEXO'
        DataType = ftString
        Size = 11
      end
      item
        Name = 'FOTO'
        DataType = ftBlob
        Size = 8
      end
      item
        Name = 'TEL_PRINCIPAL'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY3'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end>
    IndexFieldNames = 'ID'
    MasterFields = 'SUJETO'
    MasterSource = dsFiltroRemitentes
    StoreDefs = True
    TableName = 'SUJETOS'
    Left = 328
    Top = 496
    object IntegerField8: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object IBStringField7: TIBStringField
      FieldName = 'CLAVE'
      Size = 50
    end
    object IBStringField8: TIBStringField
      FieldName = 'NOMBRE'
      Size = 100
    end
    object IBStringField9: TIBStringField
      FieldName = 'RAZON_SOCIAL'
      Size = 100
    end
    object IBStringField10: TIBStringField
      FieldName = 'RFC'
    end
    object IBStringField11: TIBStringField
      FieldName = 'CURP'
    end
    object IntegerField9: TIntegerField
      FieldName = 'DOMICILIO'
    end
    object IntegerField10: TIntegerField
      FieldName = 'TELEFONOS'
    end
    object IntegerField11: TIntegerField
      FieldName = 'CONTACTOS'
    end
    object DateTimeField5: TDateTimeField
      FieldName = 'FECHA_ALTA'
    end
    object IBStringField12: TIBStringField
      FieldName = 'FACTURAR_A'
      Size = 12
    end
    object IBStringField13: TIBStringField
      FieldName = 'E_MAIL'
      Size = 50
    end
    object IBStringField14: TIBStringField
      FieldName = 'WWWW'
      Size = 100
    end
    object BlobField1: TBlobField
      FieldName = 'OBSERVACIONES'
      BlobType = ftBlob
      Size = 8
    end
    object IBStringField15: TIBStringField
      FieldName = 'SEXO'
      Size = 11
    end
    object BlobField2: TBlobField
      FieldName = 'FOTO'
      BlobType = ftBlob
      Size = 8
    end
    object IBStringField16: TIBStringField
      FieldName = 'TEL_PRINCIPAL'
    end
  end
  object dsFiltroAlmacenes: TDataSource
    DataSet = TFiltroAlmacenes
    Left = 240
    Top = 160
  end
  object spFECHA_SERVIDOR_SH: TIBStoredProc
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    StoredProcName = 'FECHA_SERVIDOR_SH'
    Params = <
      item
        DataType = ftDateTime
        Name = 'R_FECHA'
        ParamType = ptOutput
      end>
    Left = 24
    Top = 384
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'R_FECHA'
        ParamType = ptOutput
      end>
  end
  object TFiltroCajas2: TIBTable
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NOMBRE'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'ALMACEN'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'USUARIO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'TIPO_DE_CAJA'
        DataType = ftString
        Size = 11
      end
      item
        Name = 'ESTATUS'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'MODULO_FUNCION'
        Attributes = [faRequired]
        DataType = ftInteger
      end>
    Filter = 'ID = -17 AND TIPO_DE_CAJA = '#39'Ventas'#39
    Filtered = True
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY227'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'RDB$FOREIGN228'
        Fields = 'ALMACEN'
      end
      item
        Name = 'RDB$FOREIGN229'
        Fields = 'USUARIO'
      end
      item
        Name = 'RDB$FOREIGN255'
        Fields = 'MODULO_FUNCION'
      end>
    StoreDefs = True
    TableName = 'CAJAS'
    Left = 136
    Top = 480
  end
  object dsFiltroCajas2: TDataSource
    DataSet = TFiltroCajas2
    Left = 136
    Top = 496
  end
  object qyAlmacenes: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    CachedUpdates = False
    SQL.Strings = (
      'SELECT *'
      'FROM ALMACENES'
      'WHERE (ESTATUS = "En Operacion") AND (ID > 0)'
      'ORDER BY NOMBRE')
    Left = 464
    Top = 200
    object qyAlmacenesID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qyAlmacenesCLAVE: TIBStringField
      FieldName = 'CLAVE'
    end
    object qyAlmacenesNOMBRE: TIBStringField
      FieldName = 'NOMBRE'
      Size = 100
    end
    object qyAlmacenesCOMPRA: TIBStringField
      FieldName = 'COMPRA'
      Size = 2
    end
    object qyAlmacenesVENDE: TIBStringField
      FieldName = 'VENDE'
      Size = 2
    end
    object qyAlmacenesTRANSFORMA: TIBStringField
      FieldName = 'TRANSFORMA'
      Size = 2
    end
    object qyAlmacenesFECHA_ALTA: TDateTimeField
      FieldName = 'FECHA_ALTA'
    end
    object qyAlmacenesRESPONSABLE: TIntegerField
      FieldName = 'RESPONSABLE'
      Required = True
    end
    object qyAlmacenesOBSERVACIONES: TBlobField
      FieldName = 'OBSERVACIONES'
      BlobType = ftBlob
      Size = 8
    end
    object qyAlmacenesSERIE_FACTURA: TIBStringField
      FieldName = 'SERIE_FACTURA'
      Size = 10
    end
    object qyAlmacenesCONSECUTIVO: TIntegerField
      FieldName = 'CONSECUTIVO'
    end
    object qyAlmacenesFECHA_ULT_INV: TDateTimeField
      FieldName = 'FECHA_ULT_INV'
    end
    object qyAlmacenesESTATUS: TIBStringField
      FieldName = 'ESTATUS'
    end
    object qyAlmacenesSERIE_NC: TIBStringField
      FieldName = 'SERIE_NC'
      Size = 10
    end
    object qyAlmacenesSERIE_NVENTA: TIBStringField
      FieldName = 'SERIE_NVENTA'
      Size = 10
    end
    object qyAlmacenesSERIE_NCARGO: TIBStringField
      FieldName = 'SERIE_NCARGO'
      Size = 10
    end
  end
  object dsAlmacenes: TDataSource
    DataSet = qyAlmacenes
    Left = 464
    Top = 210
  end
  object qyMonedas: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    CachedUpdates = False
    SQL.Strings = (
      'SELECT *'
      'FROM MONEDAS'
      'WHERE (ID > 0)'
      'ORDER BY CLAVE')
    Left = 464
    Top = 256
    object qyMonedasID: TIntegerField
      FieldName = 'ID'
      Origin = 'MONEDAS.ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qyMonedasCLAVE: TIBStringField
      FieldName = 'CLAVE'
      Origin = 'MONEDAS.CLAVE'
      Size = 10
    end
    object qyMonedasDESCRIPCION: TIBStringField
      FieldName = 'DESCRIPCION'
      Origin = 'MONEDAS.DESCRIPCION'
      Size = 50
    end
    object qyMonedasFECHA_ULT_ACT: TDateTimeField
      FieldName = 'FECHA_ULT_ACT'
      Origin = 'MONEDAS.FECHA_ULT_ACT'
    end
    object qyMonedasPARIDAD: TFloatField
      FieldName = 'PARIDAD'
      Origin = 'MONEDAS.PARIDAD'
    end
  end
  object dsMonedas: TDataSource
    DataSet = qyMonedas
    Left = 464
    Top = 272
  end
  object qyEspecialidades: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    CachedUpdates = False
    SQL.Strings = (
      'SELECT *'
      'FROM ESPECIALIDADES'
      'ORDER BY NOMBRE')
    Left = 464
    Top = 320
    object qyEspecialidadesID: TIntegerField
      FieldName = 'ID'
      Origin = 'ESPECIALIDADES.ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qyEspecialidadesNOMBRE: TIBStringField
      FieldName = 'NOMBRE'
      Origin = 'ESPECIALIDADES.NOMBRE'
      Size = 100
    end
  end
  object dsEspecialidades: TDataSource
    DataSet = qyEspecialidades
    Left = 464
    Top = 328
  end
  object qyCComerciales: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    CachedUpdates = False
    SQL.Strings = (
      'SELECT *'
      'FROM CONDICIONES_COMERCIALES'
      'WHERE (ID > 0)'
      'ORDER BY CLAVE')
    Left = 464
    Top = 376
    object qyCComercialesID: TIntegerField
      FieldName = 'ID'
      Origin = 'CONDICIONES_COMERCIALES.ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qyCComercialesTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = 'CONDICIONES_COMERCIALES.TIPO'
      Size = 11
    end
    object qyCComercialesCLAVE: TIBStringField
      FieldName = 'CLAVE'
      Origin = 'CONDICIONES_COMERCIALES.CLAVE'
    end
    object qyCComercialesNOMBRE: TIBStringField
      FieldName = 'NOMBRE'
      Origin = 'CONDICIONES_COMERCIALES.NOMBRE'
      Size = 100
    end
    object qyCComercialesNUM_PAGOS: TIntegerField
      FieldName = 'NUM_PAGOS'
      Origin = 'CONDICIONES_COMERCIALES.NUM_PAGOS'
    end
    object qyCComercialesINTERVALO_ENTRE_PAGOS: TIntegerField
      FieldName = 'INTERVALO_ENTRE_PAGOS'
      Origin = 'CONDICIONES_COMERCIALES.INTERVALO_ENTRE_PAGOS'
    end
    object qyCComercialesDESPLAZAMIENTO_1_PAGO: TIntegerField
      FieldName = 'DESPLAZAMIENTO_1_PAGO'
      Origin = 'CONDICIONES_COMERCIALES.DESPLAZAMIENTO_1_PAGO'
    end
    object qyCComercialesDESCUENTO_PORCENTAJE: TFloatField
      FieldName = 'DESCUENTO_PORCENTAJE'
      Origin = 'CONDICIONES_COMERCIALES.DESCUENTO_PORCENTAJE'
    end
    object qyCComercialesFINANCIAMIENTO: TIntegerField
      FieldName = 'FINANCIAMIENTO'
      Origin = 'CONDICIONES_COMERCIALES.FINANCIAMIENTO'
    end
    object qyCComercialesMORATORIO: TIBStringField
      FieldName = 'MORATORIO'
      Origin = 'CONDICIONES_COMERCIALES.MORATORIO'
      FixedChar = True
      Size = 2
    end
    object qyCComercialesPUNTO_DE_VENTA: TIBStringField
      FieldName = 'PUNTO_DE_VENTA'
      Origin = 'CONDICIONES_COMERCIALES.PUNTO_DE_VENTA'
      FixedChar = True
      Size = 2
    end
    object qyCComercialesREQUIERE_AUTORIZACION: TIBStringField
      FieldName = 'REQUIERE_AUTORIZACION'
      Origin = 'CONDICIONES_COMERCIALES.REQUIERE_AUTORIZACION'
      FixedChar = True
      Size = 2
    end
    object qyCComercialesREQUIERE_FOLIO: TIBStringField
      FieldName = 'REQUIERE_FOLIO'
      Origin = 'CONDICIONES_COMERCIALES.REQUIERE_FOLIO'
      FixedChar = True
      Size = 2
    end
    object qyCComercialesPAGOS: TIBStringField
      FieldName = 'PAGOS'
      Origin = 'CONDICIONES_COMERCIALES.PAGOS'
      FixedChar = True
      Size = 2
    end
    object qyCComercialesREQUIERE_REFERENCIA: TIBStringField
      FieldName = 'REQUIERE_REFERENCIA'
      Origin = 'CONDICIONES_COMERCIALES.REQUIERE_REFERENCIA'
      FixedChar = True
      Size = 2
    end
    object qyCComercialesREQUIERE_FECHA: TIBStringField
      FieldName = 'REQUIERE_FECHA'
      Origin = 'CONDICIONES_COMERCIALES.REQUIERE_FECHA'
      FixedChar = True
      Size = 2
    end
    object qyCComercialesREQUIERE_BANCO: TIBStringField
      FieldName = 'REQUIERE_BANCO'
      Origin = 'CONDICIONES_COMERCIALES.REQUIERE_BANCO'
      FixedChar = True
      Size = 2
    end
    object qyCComercialesPAGOS_CXP: TIBStringField
      FieldName = 'PAGOS_CXP'
      Origin = 'CONDICIONES_COMERCIALES.PAGOS_CXP'
      FixedChar = True
      Size = 2
    end
    object qyCComercialesPLANES_DE_PAGO: TIBStringField
      FieldName = 'PLANES_DE_PAGO'
      Origin = 'CONDICIONES_COMERCIALES.PLANES_DE_PAGO'
      FixedChar = True
      Size = 2
    end
    object qyCComercialesACTIVAR_ALMACEN: TIBStringField
      FieldName = 'ACTIVAR_ALMACEN'
      Origin = 'CONDICIONES_COMERCIALES.ACTIVAR_ALMACEN'
      FixedChar = True
      Size = 2
    end
  end
  object dsCComerciales: TDataSource
    DataSet = qyCComerciales
    Left = 464
    Top = 385
  end
  object qyFiltroBancos: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    CachedUpdates = False
    SQL.Strings = (
      'SELECT B.ID, S.CLAVE, S.NOMBRE'
      'FROM SUJETOS_BANCOS B LEFT JOIN SUJETOS S ON B.SUJETO = S.ID'
      'WHERE (B.ID = :P_ID)')
    Left = 464
    Top = 440
    ParamData = <
      item
        DataType = ftString
        Name = 'P_ID'
        ParamType = ptUnknown
        Value = '0'
      end>
    object qyFiltroBancosID: TIntegerField
      FieldName = 'ID'
      Origin = 'SUJETOS_BANCOS.ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qyFiltroBancosCLAVE: TIBStringField
      FieldName = 'CLAVE'
      Origin = 'SUJETOS.CLAVE'
      Size = 50
    end
    object qyFiltroBancosNOMBRE: TIBStringField
      FieldName = 'NOMBRE'
      Origin = 'SUJETOS.NOMBRE'
      Size = 100
    end
  end
  object TPImpresos: TIBTable
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'LINK'
        DataType = ftInteger
      end
      item
        Name = 'DESCRIPCION'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'ORDEN'
        DataType = ftInteger
      end
      item
        Name = 'MATERIAL'
        DataType = ftInteger
      end
      item
        Name = 'FACTOR'
        DataType = ftFloat
      end
      item
        Name = 'RELACION'
        DataType = ftInteger
      end
      item
        Name = 'ESTATUS'
        DataType = ftString
        Size = 20
      end>
    Filter = 'ID = 0'
    Filtered = True
    IndexDefs = <
      item
        Name = 'RDB$FOREIGN331'
        Fields = 'LINK'
      end
      item
        Name = 'RDB$FOREIGN339'
        Fields = 'MATERIAL'
      end
      item
        Name = 'RDB$FOREIGN340'
        Fields = 'LINK'
      end
      item
        Name = 'RDB$FOREIGN341'
        Fields = 'LINK'
      end
      item
        Name = 'RDB$FOREIGN342'
        Fields = 'LINK'
      end
      item
        Name = 'RDB$PRIMARY41'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end>
    StoreDefs = True
    TableName = 'PROCESOS_IMPRESOS'
    Left = 464
    Top = 488
    object TPImpresosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object TPImpresosLINK: TIntegerField
      FieldName = 'LINK'
    end
    object TPImpresosDESCRIPCION: TIBStringField
      FieldName = 'DESCRIPCION'
      Size = 100
    end
    object TPImpresosORDEN: TIntegerField
      FieldName = 'ORDEN'
    end
    object TPImpresosMATERIAL: TIntegerField
      FieldName = 'MATERIAL'
    end
    object TPImpresosFACTOR: TFloatField
      FieldName = 'FACTOR'
    end
    object TPImpresosRELACION: TIntegerField
      FieldName = 'RELACION'
    end
    object TPImpresosESTATUS: TIBStringField
      FieldName = 'ESTATUS'
    end
  end
  object qyUnidades: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    CachedUpdates = False
    SQL.Strings = (
      'SELECT *'
      'FROM UNIDADES'
      'WHERE (ID > 0)'
      'ORDER BY CLAVE')
    Left = 528
    Top = 256
    object qyUnidadesID: TIntegerField
      FieldName = 'ID'
      Origin = 'UNIDADES.ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qyUnidadesCLAVE: TIBStringField
      FieldName = 'CLAVE'
      Origin = 'UNIDADES.CLAVE'
      Size = 10
    end
    object qyUnidadesDESCRIPCION: TIBStringField
      FieldName = 'DESCRIPCION'
      Origin = 'UNIDADES.DESCRIPCION'
      Size = 50
    end
  end
  object dsUnidades: TDataSource
    DataSet = qyUnidades
    Left = 528
    Top = 272
  end
  object qyTransportistas: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    CachedUpdates = False
    SQL.Strings = (
      'SELECT T.ID ID, S.NOMBRE NOMBRE'
      'FROM SUJETOS_TRANSPORTISTAS T, SUJETOS S'
      'WHERE (ID > 0) AND (T.SUJETO = S.ID)'
      'ORDER BY NOMBRE')
    Left = 528
    Top = 320
    object qyTransportistasID: TIntegerField
      FieldName = 'ID'
      Origin = 'SUJETOS_TRANSPORTISTAS.ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qyTransportistasNOMBRE: TIBStringField
      FieldName = 'NOMBRE'
      Origin = 'SUJETOS.NOMBRE'
      Size = 100
    end
  end
  object dsTransportistas: TDataSource
    DataSet = qyTransportistas
    Left = 528
    Top = 328
  end
  object TDomicilioCliente: TIBTable
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    CachedUpdates = False
    IndexFieldNames = 'ID'
    MasterFields = 'DOMICILIO'
    MasterSource = dsSujetosCliente
    TableName = 'DOMICILIOS'
    Left = 240
    Top = 464
  end
  object dsSujetosCliente: TDataSource
    DataSet = TSujetosCliente
    Left = 240
    Top = 440
  end
  object TFiltroTelefonosTipos: TIBTable
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'TIPO'
        DataType = ftString
        Size = 50
      end>
    Filter = 'ID = 0'
    Filtered = True
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY480'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end>
    StoreDefs = True
    TableName = 'TELEFONOS_TIPOS'
    Left = 560
    Top = 440
    object TFiltroTelefonosTiposID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object TFiltroTelefonosTiposTIPO: TIBStringField
      FieldName = 'TIPO'
      Size = 50
    end
  end
end
