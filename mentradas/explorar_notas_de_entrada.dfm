inherited frmExplorar_notas_de_entrada: TfrmExplorar_notas_de_entrada
  Left = 250
  Top = 90
  Caption = 'Explorar Entradas o Servicios'
  ClientHeight = 470
  ClientWidth = 938
  ExplicitWidth = 320
  ExplicitHeight = 240
  PixelsPerInch = 96
  TextHeight = 13
  inherited fpPadre: TPanel
    Width = 938
    ExplicitWidth = 938
    inherited Panel1: TPanel
      Width = 938
      ExplicitWidth = 938
    end
  end
  inherited Panel2: TPanel
    Top = 448
    Width = 938
    ExplicitTop = 448
    ExplicitWidth = 938
  end
  inherited dgExplorar: TDBGrid
    Width = 938
    Height = 359
  end
  inherited paExplorarBusqueda: TPanel
    Width = 938
    ExplicitWidth = 938
  end
  inherited qyExplorar: TIBQuery
    SQL.Strings = (
      
        'SELECT NE.ID R_ID, NE.CLAVE R_CLAVE_NOTA, NE.FECHA_ALTA R_FECHA_' +
        'ALTA, NE.FACTURA_PROVEEDOR R_FACTURA_PROVEEDOR, OC.CLAVE R_CLAVE' +
        '_ORDEN, A.CLAVE R_CLAVE_ALMACEN, NE.ESTATUS R_ESTATUS, NE.GRANTO' +
        'TAL R_GRANTOTAL,'
      'NE.ORDEN_COMPRA R_OCOMPRA,'
      'NE.DESEMPAQUE R_DESEMPAQUE,'
      'NE.CONSECUTIVO R_FOLIO,'
      'OC.CONSECUTIVO R_OC_FOLIO,'
      'S.CLAVE R_PROVEEDOR_C,'
      'S.NOMBRE R_PROVEEDOR_N,'
      'NE.FECHA_FACT_PROVEEDOR R_FECHA_FACT_PROVEEDOR,'
      'NE.CONTRARECIBO R_CONTRARECIBO'
      
        'FROM (NOTAS_DE_ENTRADA NE LEFT JOIN ORDENES_DE_COMPRAS OC ON NE.' +
        'ORDEN_COMPRA = OC.ID)'
      '     LEFT JOIN ALMACENES A ON NE.ALMACEN = A.ID'
      '     LEFT JOIN SUJETOS_PROVEEDORES P ON NE.PROVEEDOR = P.ID'
      '     LEFT JOIN SUJETOS S ON P.SUJETO = S.ID'
      'WHERE NE.ID = 0')
    object qyExplorarR_ID: TIntegerField
      FieldName = 'R_ID'
      Origin = 'NOTAS_DE_ENTRADA.ID'
      Required = True
    end
    object qyExplorarR_CLAVE_NOTA: TIBStringField
      FieldName = 'R_CLAVE_NOTA'
      Origin = 'NOTAS_DE_ENTRADA.CLAVE'
    end
    object qyExplorarR_FECHA_ALTA: TDateTimeField
      FieldName = 'R_FECHA_ALTA'
      Origin = 'NOTAS_DE_ENTRADA.FECHA_ALTA'
    end
    object qyExplorarR_FACTURA_PROVEEDOR: TIBStringField
      FieldName = 'R_FACTURA_PROVEEDOR'
      Origin = 'NOTAS_DE_ENTRADA.FACTURA_PROVEEDOR'
      Size = 10
    end
    object qyExplorarR_CLAVE_ORDEN: TIBStringField
      FieldName = 'R_CLAVE_ORDEN'
      Origin = 'ORDENES_DE_COMPRAS.CLAVE'
    end
    object qyExplorarR_CLAVE_ALMACEN: TIBStringField
      FieldName = 'R_CLAVE_ALMACEN'
      Origin = 'ALMACENES.CLAVE'
    end
    object qyExplorarR_ESTATUS: TIBStringField
      FieldName = 'R_ESTATUS'
      Origin = 'NOTAS_DE_ENTRADA.ESTATUS'
    end
    object qyExplorarR_GRANTOTAL: TFloatField
      FieldName = 'R_GRANTOTAL'
      Origin = 'NOTAS_DE_ENTRADA.GRANTOTAL'
    end
    object qyExplorarR_OCOMPRA: TIntegerField
      FieldName = 'R_OCOMPRA'
      Origin = 'NOTAS_DE_ENTRADA.ORDEN_COMPRA'
    end
    object qyExplorarR_DESEMPAQUE: TIntegerField
      FieldName = 'R_DESEMPAQUE'
      Origin = 'NOTAS_DE_ENTRADA.DESEMPAQUE'
    end
    object qyExplorarR_FOLIO: TIntegerField
      FieldName = 'R_FOLIO'
      Origin = 'NOTAS_DE_ENTRADA.CONSECUTIVO'
      DisplayFormat = '###,###,##0'
    end
    object qyExplorarR_OC_FOLIO: TIntegerField
      FieldName = 'R_OC_FOLIO'
      Origin = 'ORDENES_DE_COMPRAS.CONSECUTIVO'
      DisplayFormat = '###,###,##0'
    end
    object qyExplorarR_PROVEEDOR_C: TIBStringField
      FieldName = 'R_PROVEEDOR_C'
      Origin = 'SUJETOS.CLAVE'
      Size = 50
    end
    object qyExplorarR_PROVEEDOR_N: TIBStringField
      FieldName = 'R_PROVEEDOR_N'
      Origin = 'SUJETOS.NOMBRE'
      Size = 100
    end
    object qyExplorarR_CONTRARECIBO: TIntegerField
      FieldName = 'R_CONTRARECIBO'
      Origin = 'NOTAS_DE_ENTRADA.CONTRARECIBO'
    end
    object qyExplorarR_FECHA_FACT_PROVEEDOR: TDateTimeField
      FieldName = 'R_FECHA_FACT_PROVEEDOR'
      Origin = 'NOTAS_DE_ENTRADA.FECHA_FACT_PROVEEDOR'
    end
  end
end
