inherited frmSeleccionar_Unidades: TfrmSeleccionar_Unidades
  Left = 273
  Top = 74
  Caption = 'Seleccionar Unidades'
  PixelsPerInch = 96
  TextHeight = 13
  inherited qySeleccionar: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    SQL.Strings = (
      'SELECT *'
      'FROM UNIDADES')
  end
  inherited spAdd: TIBStoredProc
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    StoredProcName = 'ADD_UNIDAD_MATERIAL'
    ParamData = <
      item
        DataType = ftInteger
        Name = 'P_MATERIAL'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = 'P_UNIDAD'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'P_FACTOR'
        ParamType = ptInput
        Value = '0'
      end>
  end
  inherited spDel: TIBStoredProc
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    StoredProcName = 'DEL_UNIDAD_MATERIAL'
    ParamData = <
      item
        DataType = ftInteger
        Name = 'P_UNIDAD'
        ParamType = ptInput
        Value = '0'
      end>
  end
end
