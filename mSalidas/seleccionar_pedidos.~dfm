inherited frmSeleccionar_pedidos: TfrmSeleccionar_pedidos
  Left = 268
  Top = 204
  Caption = 'Seleccionar Pedidos'
  PixelsPerInch = 96
  TextHeight = 13
  inherited qySeleccionar: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    SQL.Strings = (
      'SELECT *'
      'FROM PEDIDOS')
    object qySeleccionarID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qySeleccionarCLAVE: TIBStringField
      FieldName = 'CLAVE'
    end
    object qySeleccionarFECHA_ALTA: TDateTimeField
      FieldName = 'FECHA_ALTA'
      DisplayFormat = 'dd/mmm/yyyy'
    end
    object qySeleccionarFECHA_VALIDEZ: TDateTimeField
      FieldName = 'FECHA_VALIDEZ'
      DisplayFormat = 'dd/mmm/yyyy'
    end
    object qySeleccionarESTATUS: TIBStringField
      FieldName = 'ESTATUS'
    end
    object qySeleccionarPRIORIDAD: TIBStringField
      FieldName = 'PRIORIDAD'
      Size = 2
    end
  end
  inherited spAdd: TIBStoredProc
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    StoredProcName = 'ADD_PEDIDO_A_FACTURA'
    ParamData = <
      item
        DataType = ftInteger
        Name = 'P_PEDIDO'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = 'P_FACTURA'
        ParamType = ptInput
        Value = '0'
      end>
  end
  object dsTotales: TDataSource
    Left = 520
    Top = 336
  end
end
