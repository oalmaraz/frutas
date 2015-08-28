object dmReportes: TdmReportes
  OldCreateOrder = False
  Height = 523
  Width = 1005
  object IBDatabase1: TIBDatabase
    DatabaseName = 'pepetrueno:D:\empresas\apm\SISTEMA.AWR'
    Params.Strings = (
      'user_name=sysdba'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = IBTransaction1
    ServerType = 'IBServer'
    SQLDialect = 1
    Left = 32
    Top = 16
  end
  object IBTransaction1: TIBTransaction
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 164
    Top = 16
  end
  object qyConteos_Diferencias: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT *'
      'FROM CONTEOS_DIFERENCIAS(:P_MI)')
    Left = 164
    Top = 67
    ParamData = <
      item
        DataType = ftString
        Name = 'P_MI'
        ParamType = ptUnknown
        Value = '1098'
      end>
  end
  object dsConteos_Diferencias: TDataSource
    DataSet = qyConteos_Diferencias
    Left = 164
    Top = 110
  end
  object qyMI_Encabezado: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT *'
      'FROM MI_ENCABEZADO(:P_MI)')
    Left = 32
    Top = 67
    ParamData = <
      item
        DataType = ftString
        Name = 'P_MI'
        ParamType = ptUnknown
        Value = '1098'
      end>
  end
  object dsMI_Encabezado: TDataSource
    DataSet = qyMI_Encabezado
    Left = 32
    Top = 110
  end
  object qyFR_Compras: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT *'
      
        'FROM FR_COMPRAS(:P_FECHA_INI, :P_FECHA_FIN, :P_PROVEEDOR, :P_MON' +
        'EDA, :P_ALMACEN, :P_LINEA, :P_INCLUIR)'
      
        'ORDER BY R_LINEA, R_MONEDA, R_PROVEEDOR, R_MATERIAL_CLAVE, R_FEC' +
        'HA_DESEMPAQUE DESC')
    Left = 280
    Top = 67
    ParamData = <
      item
        DataType = ftString
        Name = 'P_FECHA_INI'
        ParamType = ptUnknown
        Value = '01/01/2005'
      end
      item
        DataType = ftString
        Name = 'P_FECHA_FIN'
        ParamType = ptUnknown
        Value = '01/01/2007'
      end
      item
        DataType = ftString
        Name = 'P_PROVEEDOR'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'P_MONEDA'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'P_ALMACEN'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'P_LINEA'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'P_INCLUIR'
        ParamType = ptUnknown
        Value = 'No'
      end>
  end
  object dsFR_Compras: TDataSource
    DataSet = qyFR_Compras
    Left = 280
    Top = 110
  end
  object qyParametros: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS(:P_1,:P_2,:P_3,:P_4,:P_5)')
    Left = 520
    Top = 67
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'P_2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'P_3'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'P_4'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'P_5'
        ParamType = ptUnknown
      end>
  end
  object dsParametros: TDataSource
    DataSet = qyParametros
    Left = 520
    Top = 110
  end
  object dsFR_ComprasConsolidado: TDataSource
    DataSet = qyFR_ComprasConsolidado
    Left = 395
    Top = 110
  end
  object qyFR_ComprasConsolidado: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT R_MONEDA, R_MONEDA_CLAVE, R_MONEDA_DESCRIPCION,'
      '       R_MATERIAL, R_MATERIAL_CLAVE, R_MATERIAL_DESCRIPCION,'
      '       R_PROVEEDOR, R_PROVEEDOR_CLAVE, R_PROVEEDOR_NOMBRE,'
      '       SUM(R_CANTIDAD) R_CANTIDAD, SUM(R_TOTAL) R_TOTAL,'
      '       R_LINEA,'
      '       R_LINEA_DESCRIPCION '
      
        'FROM FR_COMPRAS(:P_FECHA_INI, :P_FECHA_FIN, :P_PROVEEDOR, :P_MON' +
        'EDA, :P_ALMACEN, :P_LINEA, :P_INCLUIR)'
      
        'GROUP BY R_LINEA, R_LINEA_DESCRIPCION, R_MONEDA, R_MONEDA_CLAVE,' +
        ' R_MONEDA_DESCRIPCION, R_MATERIAL, R_MATERIAL_CLAVE, R_MATERIAL_' +
        'DESCRIPCION,'
      '         R_PROVEEDOR, R_PROVEEDOR_CLAVE, R_PROVEEDOR_NOMBRE'
      'ORDER BY R_MONEDA, R_PROVEEDOR, R_MATERIAL_CLAVE')
    Left = 395
    Top = 67
    ParamData = <
      item
        DataType = ftString
        Name = 'P_FECHA_INI'
        ParamType = ptUnknown
        Value = '01/01/2004'
      end
      item
        DataType = ftString
        Name = 'P_FECHA_FIN'
        ParamType = ptUnknown
        Value = '01/01/2007'
      end
      item
        DataType = ftString
        Name = 'P_PROVEEDOR'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'P_MONEDA'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'P_ALMACEN'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'P_LINEA'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'P_INCLUIR'
        ParamType = ptUnknown
        Value = 'Si'
      end>
  end
  object qyEncCotizacion: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT *'
      'FROM COTIZACION_ENCABEZADO(:P_ID, :P_LETRAS)')
    Left = 32
    Top = 224
    ParamData = <
      item
        DataType = ftString
        Name = 'P_ID'
        ParamType = ptUnknown
        Value = '20'
      end
      item
        DataType = ftString
        Name = 'P_LETRAS'
        ParamType = ptUnknown
      end>
  end
  object qyDetCotizacion: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT *'
      'FROM COTIZACION_PARTIDAS(:P_ID)')
    Left = 164
    Top = 224
    ParamData = <
      item
        DataType = ftString
        Name = 'P_ID'
        ParamType = ptUnknown
        Value = '20'
      end>
  end
  object dsEncCotizacion: TDataSource
    DataSet = qyEncCotizacion
    Left = 32
    Top = 265
  end
  object dsDetCotizacion: TDataSource
    DataSet = qyDetCotizacion
    Left = 164
    Top = 265
  end
end
