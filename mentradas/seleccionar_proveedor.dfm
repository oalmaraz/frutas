inherited frmSeleccionar_proveedor: TfrmSeleccionar_proveedor
  Left = 255
  Top = 243
  Caption = 'Seleccionar Proveedor'
  PixelsPerInch = 96
  TextHeight = 13
  inherited fpPadre: TPanel
    inherited ibTodos: TBitBtn
      Visible = False
    end
  end
  inherited qySeleccionar: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    SQL.Strings = (
      'SELECT *'
      'FROM VER_PROVEEDOR_ES(:P_CAMPO, :P_VALOR)')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_CAMPO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'P_VALOR'
        ParamType = ptUnknown
      end>
    object qySeleccionarR_ID: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_ID'
      ReadOnly = True
    end
    object qySeleccionarR_DESCUENTO_PORC: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_DESCUENTO_PORC'
      ReadOnly = True
    end
    object qySeleccionarR_COMPRA_MINIMA: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_COMPRA_MINIMA'
      ReadOnly = True
      DisplayFormat = '$ ###,###,##0.00'
    end
    object qySeleccionarR_CLAVE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_CLAVE'
      ReadOnly = True
      Size = 50
    end
    object qySeleccionarR_NOMBRE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_NOMBRE'
      ReadOnly = True
      Size = 100
    end
    object qySeleccionarR_RAZON_SOCIAL: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_RAZON_SOCIAL'
      ReadOnly = True
      Size = 100
    end
    object qySeleccionarR_TELEFONO: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_TELEFONO'
      ReadOnly = True
    end
  end
  object spCXP_CAMPO_PAGO_MODIFICADO: TIBStoredProc
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    StoredProcName = 'CXP_CAMPO_PAGO_MODIFICADO'
    Left = 584
    Top = 240
    ParamData = <
      item
        DataType = ftInteger
        Name = 'P_PROVEEDOR'
        ParamType = ptInput
        Value = '0'
      end>
  end
end
