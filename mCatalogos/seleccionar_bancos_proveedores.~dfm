inherited frmSeleccionar_Bancos_Proveedores: TfrmSeleccionar_Bancos_Proveedores
  Caption = 'Seleccionar Bancos Proveedor'
  PixelsPerInch = 96
  TextHeight = 13
  inherited qySeleccionar: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    SQL.Strings = (
      'SELECT *'
      'FROM BANCOS')
  end
  inherited spAdd: TIBStoredProc
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    StoredProcName = 'ADD_BANCO_PROVEEDOR'
    ParamData = <
      item
        DataType = ftInteger
        Name = 'P_PROVEEDOR'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = 'P_BANCO'
        ParamType = ptInput
      end>
  end
  inherited spDel: TIBStoredProc
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    StoredProcName = 'DEL_BANCO_PROVEEDOR'
    ParamData = <
      item
        DataType = ftInteger
        Name = 'P_BANCO'
        ParamType = ptInput
        Value = '0'
      end>
  end
end
