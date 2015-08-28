inherited frmSeleccionar_zona_comprador: TfrmSeleccionar_zona_comprador
  Left = 222
  Top = 260
  Caption = 'Seleccionar Zona Comprador'
  PixelsPerInch = 96
  TextHeight = 13
  inherited qySeleccionar: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    SQL.Strings = (
      'SELECT *'
      'FROM ESTADOS_Y_CIUDADES(:CUAL)')
    ParamData = <
      item
        DataType = ftString
        Name = 'CUAL'
        ParamType = ptUnknown
        Value = 'AMBOS'
      end>
    object qySeleccionarR_ID: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_ID'
      ReadOnly = True
    end
    object qySeleccionarR_DESCRIPCION: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_DESCRIPCION'
      ReadOnly = True
      Size = 202
    end
  end
  inherited spAdd: TIBStoredProc
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    StoredProcName = 'ADD_ZONA_COMPRADOR'
    ParamData = <
      item
        DataType = ftInteger
        Name = 'P_COMPRADOR'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = 'P_ZONA'
        ParamType = ptInput
        Value = '0'
      end>
  end
  inherited spDel: TIBStoredProc
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    StoredProcName = 'DEL_ZONA_COMPRADOR'
    ParamData = <
      item
        DataType = ftInteger
        Name = 'P_ZONA'
        ParamType = ptInput
        Value = '0'
      end>
  end
end
