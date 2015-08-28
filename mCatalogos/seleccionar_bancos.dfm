inherited frmSeleccionar_bancos: TfrmSeleccionar_bancos
  Left = 311
  Top = 117
  Caption = 'Seleccionar Bancos Cliente'
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
    StoredProcName = 'ADD_BANCO_CLIENTE'
    ParamData = <
      item
        DataType = ftInteger
        Name = 'P_CLIENTE'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = 'P_BANCO'
        ParamType = ptInput
        Value = '0'
      end>
  end
  inherited spDel: TIBStoredProc
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    StoredProcName = 'DEL_BANCO_CLIENTE'
    ParamData = <
      item
        DataType = ftInteger
        Name = 'P_BANCO'
        ParamType = ptInput
        Value = '0'
      end>
  end
end
