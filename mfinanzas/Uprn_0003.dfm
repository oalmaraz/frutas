object PRN_0003: TPRN_0003
  Left = 109
  Top = 239
  Width = 895
  Height = 480
  Caption = 'PRN_0003'
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
    SQL.Strings = (
      'SELECT *'
      
        'FROM MOVIMIENTOS_COMPRAS_Y_CXP_PAGOS(:P_PROVEEDOR,  :P_DEL, :P_A' +
        'L, :P_MONEDA)'
      'ORDER BY R_MONEDA, R_FECHA'
      ''
      '')
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
        Name = 'P_MONEDA'
        ParamType = ptUnknown
        Value = '0'
      end>
    object qyMovimientosR_PROVEEDOR: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_PROVEEDOR'
      ReadOnly = True
    end
    object qyMovimientosR_FECHA: TDateTimeField
      FieldKind = fkInternalCalc
      FieldName = 'R_FECHA'
      ReadOnly = True
    end
    object qyMovimientosR_CLAVE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_CLAVE'
      ReadOnly = True
    end
    object qyMovimientosR_MOVIMIENTO: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_MOVIMIENTO'
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
    object qyMovimientosR_MONEDA: TIntegerField
      FieldName = 'R_MONEDA'
      Origin = 'MOVIMIENTOS_COMPRAS_Y_CXP_PAGOS.R_MONEDA'
    end
    object qyMovimientosR_MONEDA_CLAVE: TIBStringField
      FieldName = 'R_MONEDA_CLAVE'
      Origin = 'MOVIMIENTOS_COMPRAS_Y_CXP_PAGOS.R_MONEDA_CLAVE'
      Size = 10
    end
    object qyMovimientosR_MONEDA_DESCRIPCION: TIBStringField
      FieldName = 'R_MONEDA_DESCRIPCION'
      Origin = 'MOVIMIENTOS_COMPRAS_Y_CXP_PAGOS.R_MONEDA_DESCRIPCION'
      Size = 50
    end
  end
end
