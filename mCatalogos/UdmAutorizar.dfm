object dmAutorizar: TdmAutorizar
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 194
  Top = 215
  Height = 441
  Width = 696
  object dsPreferencias: TDataSource
    DataSet = TIBXPreferencias
    Left = 48
    Top = 128
  end
  object TIBXPreferencias: TIBTable
    Database = dmIBModulo.ibInformar
    Transaction = dmIBModulo.ibInformarTransaccion
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
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY12'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end>
    StoreDefs = True
    TableName = 'PREFERENCIAS'
    Left = 48
    Top = 8
    object TIBXPreferenciasID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object TIBXPreferenciasLICENCIAS: TIntegerField
      FieldName = 'LICENCIAS'
    end
    object TIBXPreferenciasSERVER_ACTIVO: TIBStringField
      FieldName = 'SERVER_ACTIVO'
      Size = 2
    end
    object TIBXPreferenciasAUTORUN: TIBStringField
      FieldName = 'AUTORUN'
      Size = 2
    end
    object TIBXPreferenciasOCULTAR: TIBStringField
      FieldName = 'OCULTAR'
      Size = 2
    end
    object TIBXPreferenciasVERSION: TIBStringField
      FieldName = 'VERSION'
    end
    object TIBXPreferenciasEMPRESA: TIBStringField
      FieldName = 'EMPRESA'
      Size = 100
    end
    object TIBXPreferenciasNOMBRE: TIBStringField
      FieldName = 'NOMBRE'
      Size = 100
    end
    object TIBXPreferenciasCREADO: TDateTimeField
      FieldName = 'CREADO'
    end
    object TIBXPreferenciasACTUALIZADO: TDateTimeField
      FieldName = 'ACTUALIZADO'
    end
    object TIBXPreferenciasHECHO_POR: TIBStringField
      FieldName = 'HECHO_POR'
      Size = 100
    end
    object TIBXPreferenciasACRONIMO: TIBStringField
      FieldName = 'ACRONIMO'
    end
    object TIBXPreferenciasFECHA: TDateTimeField
      FieldName = 'FECHA'
    end
  end
  object TIBXUsuario: TIBTable
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    AfterOpen = TIBXUsuarioAfterOpen
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
        DataType = ftString
        Size = 2
      end
      item
        Name = 'NIVEL'
        DataType = ftInteger
      end>
    Filter = 'USUARIO = '#39#39
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
    Left = 184
    Top = 8
    object TIBXUsuarioID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object TIBXUsuarioSUJETO: TIntegerField
      FieldName = 'SUJETO'
    end
    object TIBXUsuarioUSUARIO: TIBStringField
      FieldName = 'USUARIO'
    end
    object TIBXUsuarioBAJA: TIBStringField
      FieldName = 'BAJA'
      Size = 2
    end
    object TIBXUsuarioNIVEL: TIntegerField
      FieldName = 'NIVEL'
    end
    object TIBXUsuarioPSECRETA: TIBStringField
      FieldName = 'PSECRETA'
    end
  end
  object TIBXSujetosUsuario: TIBTable
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    IndexFieldNames = 'ID'
    MasterFields = 'SUJETO'
    MasterSource = dsUsuarios
    TableName = 'SUJETOS'
    Left = 296
    Top = 8
    object TIBXSujetosUsuarioID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object TIBXSujetosUsuarioCLAVE: TIBStringField
      FieldName = 'CLAVE'
      Size = 50
    end
    object TIBXSujetosUsuarioNOMBRE: TIBStringField
      FieldName = 'NOMBRE'
      Size = 100
    end
    object TIBXSujetosUsuarioRAZON_SOCIAL: TIBStringField
      FieldName = 'RAZON_SOCIAL'
      Size = 100
    end
    object TIBXSujetosUsuarioRFC: TIBStringField
      FieldName = 'RFC'
    end
    object TIBXSujetosUsuarioCURP: TIBStringField
      FieldName = 'CURP'
    end
    object TIBXSujetosUsuarioDOMICILIO: TIntegerField
      FieldName = 'DOMICILIO'
    end
    object TIBXSujetosUsuarioTELEFONOS: TIntegerField
      FieldName = 'TELEFONOS'
    end
    object TIBXSujetosUsuarioCONTACTOS: TIntegerField
      FieldName = 'CONTACTOS'
    end
    object TIBXSujetosUsuarioFECHA_ALTA: TDateTimeField
      FieldName = 'FECHA_ALTA'
    end
    object TIBXSujetosUsuarioFACTURAR_A: TIBStringField
      FieldName = 'FACTURAR_A'
      Size = 12
    end
    object TIBXSujetosUsuarioE_MAIL: TIBStringField
      FieldName = 'E_MAIL'
      Size = 50
    end
    object TIBXSujetosUsuarioWWWW: TIBStringField
      FieldName = 'WWWW'
      Size = 100
    end
    object TIBXSujetosUsuarioOBSERVACIONES: TBlobField
      FieldName = 'OBSERVACIONES'
      BlobType = ftBlob
    end
    object TIBXSujetosUsuarioSEXO: TIBStringField
      FieldName = 'SEXO'
      Size = 11
    end
    object TIBXSujetosUsuarioFOTO: TBlobField
      FieldName = 'FOTO'
      BlobType = ftBlob
    end
  end
  object dsUsuarios: TDataSource
    DataSet = TIBXUsuario
    Left = 184
    Top = 128
  end
  object dsSujetosUsuarios: TDataSource
    DataSet = TIBXSujetosUsuario
    Left = 296
    Top = 128
  end
end
