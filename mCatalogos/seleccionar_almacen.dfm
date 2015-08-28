inherited frmSeleccionar_Almacen: TfrmSeleccionar_Almacen
  Left = 294
  Top = 105
  Caption = 'frmSeleccionar_Almacen'
  PixelsPerInch = 96
  TextHeight = 13
  inherited qySeleccionar: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    SQL.Strings = (
      'SELECT *'
      'FROM VER_ALMACEN_ES(:P_CAMPO, :P_VALOR)')
    ParamData = <
      item
        DataType = ftString
        Name = 'P_CAMPO'
        ParamType = ptUnknown
        Value = 'R_NOMBRE'
      end
      item
        DataType = ftString
        Name = 'P_VALOR'
        ParamType = ptUnknown
        Value = 'A'
      end>
    object qySeleccionarR_ID: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_ID'
      ReadOnly = True
    end
    object qySeleccionarR_CLAVE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_CLAVE'
      ReadOnly = True
    end
    object qySeleccionarR_NOMBRE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_NOMBRE'
      ReadOnly = True
      Size = 100
    end
    object qySeleccionarR_COMPRA: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_COMPRA'
      ReadOnly = True
      Size = 2
    end
    object qySeleccionarR_VENDE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_VENDE'
      ReadOnly = True
      Size = 2
    end
    object qySeleccionarR_TRANSFORMA: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_TRANSFORMA'
      ReadOnly = True
      Size = 2
    end
    object qySeleccionarR_FECHA_ALTA: TDateTimeField
      FieldKind = fkInternalCalc
      FieldName = 'R_FECHA_ALTA'
      ReadOnly = True
    end
    object qySeleccionarR_RESPONSABLE: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_RESPONSABLE'
      ReadOnly = True
    end
    object qySeleccionarR_OBSERVACIONES: TBlobField
      FieldKind = fkInternalCalc
      FieldName = 'R_OBSERVACIONES'
      ReadOnly = True
      Size = 8
    end
    object qySeleccionarR_SERIE_FACTURA: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_SERIE_FACTURA'
      ReadOnly = True
      Size = 10
    end
    object qySeleccionarR_CONSECUTIVO: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_CONSECUTIVO'
      ReadOnly = True
    end
    object qySeleccionarR_FECHA_ULT_INV: TDateTimeField
      FieldKind = fkInternalCalc
      FieldName = 'R_FECHA_ULT_INV'
      ReadOnly = True
    end
    object qySeleccionarR_ESTATUS: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_ESTATUS'
      ReadOnly = True
    end
    object qySeleccionarR_RESPONSABLE_NOMBRE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_RESPONSABLE_NOMBRE'
      ReadOnly = True
      Size = 100
    end
  end
end
