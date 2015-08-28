object PRN_0004: TPRN_0004
  Left = 282
  Top = 241
  Caption = 'PRN_0004'
  ClientHeight = 460
  ClientWidth = 895
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
  object qyEmpresa: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT *'
      'FROM VER_EMPRESA')
    Left = 16
    Top = 24
    object qyEmpresaR_CLAVE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_CLAVE'
      ReadOnly = True
      Size = 50
    end
    object qyEmpresaR_NOMBRE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_NOMBRE'
      ReadOnly = True
      Size = 100
    end
    object qyEmpresaR_RAZON_SOCIAL: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_RAZON_SOCIAL'
      ReadOnly = True
      Size = 100
    end
    object qyEmpresaR_TELEFONO: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_TELEFONO'
      ReadOnly = True
    end
    object qyEmpresaR_RFC: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_RFC'
      ReadOnly = True
    end
    object qyEmpresaR_CURP: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_CURP'
      ReadOnly = True
    end
    object qyEmpresaR_FAX: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_FAX'
      ReadOnly = True
    end
    object qyEmpresaR_CIUDAD_DESCRIPCION: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_CIUDAD_DESCRIPCION'
      ReadOnly = True
      Size = 304
    end
  end
  object qyMovimientos: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT *'
      
        'FROM MOVIMIENTOS_CXP(:P_PROVEEDOR, :P_DEL, :P_AL, :P_ESTATUS, :P' +
        '_MONEDA)')
    Left = 16
    Top = 56
    ParamData = <
      item
        DataType = ftString
        Name = 'P_PROVEEDOR'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'P_DEL'
        ParamType = ptUnknown
        Value = '01/01/2003'
      end
      item
        DataType = ftString
        Name = 'P_AL'
        ParamType = ptUnknown
        Value = '01/05/2004'
      end
      item
        DataType = ftString
        Name = 'P_ESTATUS'
        ParamType = ptUnknown
        Value = 'Ambos'
      end
      item
        DataType = ftString
        Name = 'P_MONEDA'
        ParamType = ptUnknown
        Value = '0'
      end>
    object qyMovimientosR_ID: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_ID'
      ReadOnly = True
    end
    object qyMovimientosR_PROVEEDOR: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_PROVEEDOR'
      ReadOnly = True
    end
    object qyMovimientosR_PROVEEDOR_CLAVE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_PROVEEDOR_CLAVE'
      ReadOnly = True
      Size = 50
    end
    object qyMovimientosR_PROVEEDOR_NOMBRE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_PROVEEDOR_NOMBRE'
      ReadOnly = True
      Size = 100
    end
    object qyMovimientosR_FECHA: TDateTimeField
      FieldKind = fkInternalCalc
      FieldName = 'R_FECHA'
      ReadOnly = True
    end
    object qyMovimientosR_REFERENCIA: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_REFERENCIA'
      ReadOnly = True
    end
    object qyMovimientosR_DOCUMENTO: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_DOCUMENTO'
      ReadOnly = True
    end
    object qyMovimientosR_CARGO: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_CARGO'
      ReadOnly = True
      DisplayFormat = '$ ###,###,##0.00'
    end
    object qyMovimientosR_ABONO: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_ABONO'
      ReadOnly = True
      DisplayFormat = '$ ###,###,##0.00'
    end
    object qyMovimientosR_SALDO_ACTUAL: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_SALDO_ACTUAL'
      ReadOnly = True
      DisplayFormat = '$ ###,###,##0.00'
    end
    object qyMovimientosR_ESTATUS: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_ESTATUS'
      ReadOnly = True
    end
    object qyMovimientosR_MONEDA: TIntegerField
      FieldName = 'R_MONEDA'
      Origin = 'MOVIMIENTOS_CXP.R_MONEDA'
    end
    object qyMovimientosR_MONEDA_CLAVE: TIBStringField
      FieldName = 'R_MONEDA_CLAVE'
      Origin = 'MOVIMIENTOS_CXP.R_MONEDA_CLAVE'
      Size = 10
    end
    object qyMovimientosR_MONEDA_DESCRIPCION: TIBStringField
      FieldName = 'R_MONEDA_DESCRIPCION'
      Origin = 'MOVIMIENTOS_CXP.R_MONEDA_DESCRIPCION'
      Size = 50
    end
  end
  object dsMovimientos: TDataSource
    DataSet = qyMovimientos
    Left = 16
    Top = 88
  end
end
