inherited frmExplorar_condiciones_comerciales: TfrmExplorar_condiciones_comerciales
  Left = 534
  Top = 213
  Caption = 'Explorar Condiciones Comerciales'
  ClientHeight = 373
  ClientWidth = 623
  ExplicitWidth = 320
  ExplicitHeight = 240
  PixelsPerInch = 96
  TextHeight = 13
  inherited fpPadre: TPanel
    Width = 623
    ExplicitWidth = 623
    inherited Panel1: TPanel
      Width = 623
      ExplicitWidth = 623
    end
  end
  inherited Panel2: TPanel
    Top = 351
    Width = 623
    ExplicitTop = 351
    ExplicitWidth = 623
  end
  inherited dgExplorar: TDBGrid
    Width = 623
    Height = 262
  end
  inherited paExplorarBusqueda: TPanel
    Width = 623
    ExplicitWidth = 623
  end
  inherited qyExplorar: TIBQuery
    SQL.Strings = (
      
        'SELECT ID R_ID, CLAVE R_CLAVE, NOMBRE R_NOMBRE, PUNTO_DE_VENTA R' +
        '_PVTA, PAGOS R_PCXC, PAGOS_CXP R_PCXP, PLANES_DE_PAGO R_PLANES, ' +
        'DAR_CAMBIO R_DAR_CAMBIO'
      'FROM CONDICIONES_COMERCIALES'
      'WHERE ID = 0')
    object qyExplorarR_ID: TIntegerField
      FieldName = 'R_ID'
      Required = True
    end
    object qyExplorarR_CLAVE: TIBStringField
      FieldName = 'R_CLAVE'
    end
    object qyExplorarR_NOMBRE: TIBStringField
      FieldName = 'R_NOMBRE'
      Size = 100
    end
    object qyExplorarR_PVTA: TIBStringField
      FieldName = 'R_PVTA'
      Size = 2
    end
    object qyExplorarR_PCXC: TIBStringField
      FieldName = 'R_PCXC'
      Size = 2
    end
    object qyExplorarR_PCXP: TIBStringField
      FieldName = 'R_PCXP'
      Size = 2
    end
    object qyExplorarR_PLANES: TIBStringField
      FieldName = 'R_PLANES'
      Size = 2
    end
    object qyExplorarR_DAR_CAMBIO: TIBStringField
      FieldName = 'R_DAR_CAMBIO'
      Origin = 'CONDICIONES_COMERCIALES.DAR_CAMBIO'
      FixedChar = True
      Size = 2
    end
  end
end
