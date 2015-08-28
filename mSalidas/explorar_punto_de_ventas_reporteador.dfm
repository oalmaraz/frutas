inherited frmExplorar_punto_de_ventas_rep: TfrmExplorar_punto_de_ventas_rep
  Left = 307
  Top = 329
  ActiveControl = nil
  Caption = 'Explorar Punto de Ventas (Reporteador)'
  ClientHeight = 362
  ExplicitHeight = 401
  PixelsPerInch = 96
  TextHeight = 13
  inherited fpPadre: TPanel
    ExplicitWidth = 737
    inherited Panel1: TPanel
      ExplicitWidth = 737
    end
    inherited ibImprimir: TBitBtn
      Left = 655
      Visible = False
      ExplicitLeft = 655
    end
    inherited ibPantalla: TBitBtn
      Left = 577
      Visible = False
      ExplicitLeft = 577
    end
    inherited ibExportarXLS: TBitBtn
      Left = 157
      ExplicitLeft = 157
    end
    inherited ibExportarHTML: TBitBtn
      Left = 234
      ExplicitLeft = 234
    end
    inherited ibExportarXML: TBitBtn
      Left = 311
      ExplicitLeft = 311
    end
  end
  inherited Panel2: TPanel
    Top = 340
    ExplicitTop = 340
    ExplicitWidth = 737
  end
  inherited dgExplorar: TDBGrid
    Height = 251
  end
  inherited paExplorarBusqueda: TPanel
    Visible = False
    ExplicitWidth = 737
  end
  inherited qyExplorar: TIBQuery
    SQL.Strings = (
      'SELECT *'
      
        'FROM REPORTEADOR_PUNTO_DE_VENTAS(:P_POSICION, :P_REGISTRO, :P_RE' +
        'GISTROS, :P_A_DONDE)')
    ParamData = <
      item
        DataType = ftString
        Name = 'P_POSICION'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'P_REGISTRO'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'P_REGISTROS'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'P_A_DONDE'
        ParamType = ptUnknown
        Value = '0'
      end>
    object qyExplorarR_ID: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_ID'
      ReadOnly = True
    end
    object qyExplorarR_FOLIO_DE_VENTA: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_FOLIO_DE_VENTA'
      ReadOnly = True
    end
    object qyExplorarR_SUBTOTAL: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_SUBTOTAL'
      ReadOnly = True
    end
    object qyExplorarR_IVA: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_IVA'
      ReadOnly = True
    end
    object qyExplorarR_IEPS: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_IEPS'
      ReadOnly = True
    end
    object qyExplorarR_IMPUESTO1: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_IMPUESTO1'
      ReadOnly = True
    end
    object qyExplorarR_IMPUESTO2: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_IMPUESTO2'
      ReadOnly = True
    end
    object qyExplorarR_TOTAL: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_TOTAL'
      ReadOnly = True
    end
    object qyExplorarR_DESCUENTO_GLOBAL_PORC: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_DESCUENTO_GLOBAL_PORC'
      ReadOnly = True
    end
    object qyExplorarR_DESCUENTO_CANTIDAD_GLOBAL: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_DESCUENTO_CANTIDAD_GLOBAL'
      ReadOnly = True
    end
    object qyExplorarR_DESCUENTO_CANTIDAD_PARCIAL: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_DESCUENTO_CANTIDAD_PARCIAL'
      ReadOnly = True
    end
    object qyExplorarR_GRANTOTAL: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_GRANTOTAL'
      ReadOnly = True
    end
    object qyExplorarR_ESTATUS: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_ESTATUS'
      ReadOnly = True
    end
    object qyExplorarR_CONDICION_COMERCIAL: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_CONDICION_COMERCIAL'
      ReadOnly = True
    end
    object qyExplorarR_CAMBIO_ENTREGADO: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_CAMBIO_ENTREGADO'
      ReadOnly = True
    end
    object qyExplorarR_TOTAL_REF_PAGOS: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_TOTAL_REF_PAGOS'
      ReadOnly = True
    end
    object qyExplorarR_SALDO: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_SALDO'
      ReadOnly = True
    end
    object qyExplorarR_CLIENTE: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_CLIENTE'
      ReadOnly = True
    end
    object qyExplorarR_NOMBRE_CLIENTE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_NOMBRE_CLIENTE'
      ReadOnly = True
      Size = 100
    end
    object qyExplorarR_EXTENSION: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_EXTENSION'
      ReadOnly = True
    end
    object qyExplorarR_NOMBRE_EXTENSION: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_NOMBRE_EXTENSION'
      ReadOnly = True
      Size = 100
    end
    object qyExplorarR_MONEDA: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_MONEDA'
      ReadOnly = True
    end
    object qyExplorarR_FOLIO_HISTORICO: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_FOLIO_HISTORICO'
      ReadOnly = True
    end
    object qyExplorarR_LIMITE_CREDITO: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_LIMITE_CREDITO'
      ReadOnly = True
    end
    object qyExplorarR_LIMITE_DISPONIBLE: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_LIMITE_DISPONIBLE'
      ReadOnly = True
    end
    object qyExplorarR_CAJA: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_CAJA'
      ReadOnly = True
    end
    object qyExplorarR_CAJA_NOMBRE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_CAJA_NOMBRE'
      ReadOnly = True
      Size = 100
    end
    object qyExplorarR_FECHA_ALTA: TDateTimeField
      FieldKind = fkInternalCalc
      FieldName = 'R_FECHA_ALTA'
      ReadOnly = True
    end
    object qyExplorarR_CAJERO: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_CAJERO'
      ReadOnly = True
    end
    object qyExplorarR_CAJERO_NOMBRE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_CAJERO_NOMBRE'
      ReadOnly = True
      Size = 100
    end
    object qyExplorarR_DV_ID: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_DV_ID'
      ReadOnly = True
    end
    object qyExplorarR_DV_PUNTO_DE_VENTA: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_DV_PUNTO_DE_VENTA'
      ReadOnly = True
    end
    object qyExplorarR_DV_MATERIAL: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_DV_MATERIAL'
      ReadOnly = True
    end
    object qyExplorarR_DV_MATERIAL_CLAVE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_DV_MATERIAL_CLAVE'
      ReadOnly = True
    end
    object qyExplorarR_DV_MATERIAL_DESCRIPCION: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_DV_MATERIAL_DESCRIPCION'
      ReadOnly = True
      Size = 100
    end
    object qyExplorarR_DV_CANTIDAD: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_DV_CANTIDAD'
      ReadOnly = True
    end
    object qyExplorarR_DV_UNIDAD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_DV_UNIDAD'
      ReadOnly = True
    end
    object qyExplorarR_DV_UNIDAD_DESCRIPCION: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_DV_UNIDAD_DESCRIPCION'
      ReadOnly = True
      Size = 50
    end
    object qyExplorarR_DV_PRECIO_VENTA: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_DV_PRECIO_VENTA'
      ReadOnly = True
    end
    object qyExplorarR_DV_COSTO_COMPRA: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_DV_COSTO_COMPRA'
      ReadOnly = True
    end
    object qyExplorarR_DV_VENDEDOR: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_DV_VENDEDOR'
      ReadOnly = True
    end
    object qyExplorarR_DV_VENDEDOR_NOMBRE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_DV_VENDEDOR_NOMBRE'
      ReadOnly = True
      Size = 100
    end
    object qyExplorarR_DV_DESCUENTO_PORC: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_DV_DESCUENTO_PORC'
      ReadOnly = True
    end
    object qyExplorarR_DV_SUBTOTAL: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_DV_SUBTOTAL'
      ReadOnly = True
    end
    object qyExplorarR_DV_IVA: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_DV_IVA'
      ReadOnly = True
    end
    object qyExplorarR_DV_IEPS: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_DV_IEPS'
      ReadOnly = True
    end
    object qyExplorarR_DV_IMPUESTO1: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_DV_IMPUESTO1'
      ReadOnly = True
    end
    object qyExplorarR_DV_IMPUESTO2: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_DV_IMPUESTO2'
      ReadOnly = True
    end
    object qyExplorarR_DV_IVA_PORC: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_DV_IVA_PORC'
      ReadOnly = True
    end
    object qyExplorarR_DV_IEPS_PORC: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_DV_IEPS_PORC'
      ReadOnly = True
    end
    object qyExplorarR_DV_IMPUESTO1_PORC: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_DV_IMPUESTO1_PORC'
      ReadOnly = True
    end
    object qyExplorarR_DV_IMPUESTO2_PORC: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_DV_IMPUESTO2_PORC'
      ReadOnly = True
    end
    object qyExplorarR_DV_IVA_DP: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_DV_IVA_DP'
      ReadOnly = True
    end
    object qyExplorarR_DV_IEPS_DP: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_DV_IEPS_DP'
      ReadOnly = True
    end
    object qyExplorarR_DV_IMPUESTO1_DP: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_DV_IMPUESTO1_DP'
      ReadOnly = True
    end
    object qyExplorarR_DV_IMPUESTO2_DP: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_DV_IMPUESTO2_DP'
      ReadOnly = True
    end
    object qyExplorarR_DV_SUBTOTAL_DP: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_DV_SUBTOTAL_DP'
      ReadOnly = True
    end
    object qyExplorarR_DV_IVA_DG: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_DV_IVA_DG'
      ReadOnly = True
    end
    object qyExplorarR_DV_IEPS_DG: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_DV_IEPS_DG'
      ReadOnly = True
    end
    object qyExplorarR_DV_IMPUESTO1_DG: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_DV_IMPUESTO1_DG'
      ReadOnly = True
    end
    object qyExplorarR_DV_IMPUESTO2_DG: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_DV_IMPUESTO2_DG'
      ReadOnly = True
    end
    object qyExplorarR_DV_SUBTOTAL_DG: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_DV_SUBTOTAL_DG'
      ReadOnly = True
    end
    object qyExplorarR_DV_ESTATUS: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_DV_ESTATUS'
      ReadOnly = True
    end
    object qyExplorarR_C_ID: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_C_ID'
      ReadOnly = True
    end
    object qyExplorarR_C_FOLIO_DE_VENTA: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_C_FOLIO_DE_VENTA'
      ReadOnly = True
    end
    object qyExplorarR_C_FOLIO_DE_VENTA_DETALLE: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_C_FOLIO_DE_VENTA_DETALLE'
      ReadOnly = True
    end
    object qyExplorarR_C_CAJAS: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_C_CAJAS'
      ReadOnly = True
      Size = 2
    end
    object qyExplorarR_C_COBRO: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_C_COBRO'
      ReadOnly = True
      Size = 2
    end
    object qyExplorarR_C_NUM_CAJAS: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_C_NUM_CAJAS'
      ReadOnly = True
    end
    object qyExplorarR_C_TIPO_CAJA: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_C_TIPO_CAJA'
      ReadOnly = True
    end
    object qyExplorarR_C_TIPO_CAJA_CLAVE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_C_TIPO_CAJA_CLAVE'
      ReadOnly = True
    end
    object qyExplorarR_C_TIPO_CAJA_DESCRIPCION: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_C_TIPO_CAJA_DESCRIPCION'
      ReadOnly = True
      Size = 100
    end
    object qyExplorarR_C_PRECIO: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_C_PRECIO'
      ReadOnly = True
    end
    object qyExplorarR_C_CALIDADES: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_C_CALIDADES'
      ReadOnly = True
    end
    object qyExplorarR_ALMACEN: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_ALMACEN'
      ReadOnly = True
    end
    object qyExplorarR_ALMACEN_CLAVE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_ALMACEN_CLAVE'
      ReadOnly = True
    end
    object qyExplorarR_ALMACEN_NOMBRE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_ALMACEN_NOMBRE'
      ReadOnly = True
      Size = 100
    end
  end
end
