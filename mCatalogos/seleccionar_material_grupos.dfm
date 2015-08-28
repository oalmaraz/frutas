inherited frmSeleccionar_material_grupos: TfrmSeleccionar_material_grupos
  Left = 316
  Top = 142
  Caption = 'Seleccionar Material'
  PixelsPerInch = 96
  TextHeight = 13
  inherited fpPadre: TPanel
    inherited ibTodos: TBitBtn
      Visible = False
    end
  end
  inherited dsFuente: TDataSource
    Left = 8
    Top = 216
  end
  inherited qyBotones: TIBQuery
    Left = 8
    Top = 280
  end
  inherited qySeleccionar: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    SQL.Strings = (
      'SELECT *'
      'FROM SELECCIONAR_MATERIAL_ES(:P_CAMPO, :P_VALOR)')
    Left = 40
    Top = 216
    ParamData = <
      item
        DataType = ftString
        Name = 'P_CAMPO'
        ParamType = ptUnknown
        Value = 'R_DESCRIPCION'
      end
      item
        DataType = ftString
        Name = 'P_VALOR'
        ParamType = ptUnknown
        Value = 'a'
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
    object qySeleccionarR_DESCRIPCION: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_DESCRIPCION'
      ReadOnly = True
      Size = 100
    end
    object qySeleccionarR_UNIDAD_BASE: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_UNIDAD_BASE'
      ReadOnly = True
    end
    object qySeleccionarR_DESCRIPCION_UNIDAD: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_DESCRIPCION_UNIDAD'
      ReadOnly = True
      Size = 50
    end
    object qySeleccionarR_CODIGO_BARRAS: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_CODIGO_BARRAS'
      ReadOnly = True
    end
    object qySeleccionarR_CALIDAD: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_CALIDAD'
      ReadOnly = True
    end
  end
  inherited pmCampos: TPopupMenu
    Left = 72
    Top = 216
  end
  inherited spAdd: TIBStoredProc
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    StoredProcName = 'ADD_MATERIAL_A_GRUPO'
    Left = 40
    Top = 248
    ParamData = <
      item
        DataType = ftInteger
        Name = 'P_GRUPO'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = 'P_MATERIAL'
        ParamType = ptInput
        Value = '0'
      end>
  end
  inherited spDel: TIBStoredProc
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    StoredProcName = 'DEL_MATERIAL_A_GRUPO'
    Left = 72
    Top = 248
    ParamData = <
      item
        DataType = ftInteger
        Name = 'P_ID'
        ParamType = ptInput
        Value = '0'
      end>
  end
  inherited dsDestino: TDataSource
    Left = 8
    Top = 248
  end
end
