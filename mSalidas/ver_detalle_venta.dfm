inherited frmVerDetalleHijo: TfrmVerDetalleHijo
  Left = 251
  Top = 213
  Caption = 'Detalle'
  ClientWidth = 710
  PixelsPerInch = 96
  TextHeight = 13
  inherited fpPadre: TPanel
    Width = 710
    Height = 57
    object Label1: TLabel [0]
      Left = 0
      Top = 18
      Width = 252
      Height = 37
      Caption = 'Detalle de Venta'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -32
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    inherited Panel1: TPanel
      Width = 710
    end
  end
  inherited Panel2: TPanel
    Width = 710
  end
  object dxDBGrid1: TDBGrid [2]
    Left = 0
    Top = 57
    Width = 710
    Height = 106
    Align = alClient
    DataSource = dsFuente
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  inherited dsFuente: TDataSource
    DataSet = qyPartidas
  end
  inherited qyBotones: TIBQuery
    Active = True
  end
  object qyPartidas: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    SQL.Strings = (
      'SELECT *'
      'FROM PVENTAS_PARTIDAS(:P_ID)')
    Left = 96
    Top = 336
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_ID'
        ParamType = ptUnknown
      end>
    object qyPartidasR_ID: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_ID'
      ReadOnly = True
    end
    object qyPartidasR_PUNTO_DE_VENTA: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_PUNTO_DE_VENTA'
      ReadOnly = True
    end
    object qyPartidasR_MATERIAL: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_MATERIAL'
      ReadOnly = True
    end
    object qyPartidasR_CLAVE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_CLAVE'
      ReadOnly = True
    end
    object qyPartidasR_DESCRIPCION: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_DESCRIPCION'
      ReadOnly = True
      Size = 100
    end
    object qyPartidasR_UNIDAD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_UNIDAD'
      ReadOnly = True
    end
    object qyPartidasR_DESCRIPCION_UNIDAD: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_DESCRIPCION_UNIDAD'
      ReadOnly = True
      Size = 50
    end
    object qyPartidasR_CANTIDAD: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_CANTIDAD'
      ReadOnly = True
      DisplayFormat = '###,###,###,##0.00'
    end
    object qyPartidasR_PRECIO: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_PRECIO'
      ReadOnly = True
      DisplayFormat = '$ ###,###,###,##0.00'
    end
    object qyPartidasR_SUBTOTAL: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_SUBTOTAL'
      ReadOnly = True
      DisplayFormat = '$ ###,###,###,##0.00'
    end
    object qyPartidasR_IVA: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_IVA'
      ReadOnly = True
      DisplayFormat = '$ ###,###,###,##0.00'
    end
    object qyPartidasR_IMPUESTO1: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_IMPUESTO1'
      ReadOnly = True
      DisplayFormat = '$ ###,###,###,##0.00'
    end
    object qyPartidasR_IEPS: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_IEPS'
      ReadOnly = True
      DisplayFormat = '$ ###,###,###,##0.00'
    end
    object qyPartidasR_IMPUESTO2: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_IMPUESTO2'
      ReadOnly = True
      DisplayFormat = '$ ###,###,###,##0.00'
    end
    object qyPartidasR_TOTAL: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_TOTAL'
      ReadOnly = True
      DisplayFormat = '$ ###,###,###,##0.00'
    end
    object qyPartidasR_DESCUENTO_PORC: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_DESCUENTO_PORC'
      ReadOnly = True
      DisplayFormat = '##0.00 %'
    end
    object qyPartidasR_DP: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_DP'
      ReadOnly = True
      DisplayFormat = '$ ###,###,###,##0.00'
    end
    object qyPartidasR_DG: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_DG'
      ReadOnly = True
      DisplayFormat = '$ ###,###,###,##0.00'
    end
    object qyPartidasR_GT: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_GT'
      ReadOnly = True
      DisplayFormat = '$ ###,###,###,##0.00'
    end
    object qyPartidasR_ESTATUS: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_ESTATUS'
      ReadOnly = True
    end
  end
end
