inherited frmExplorar_Conceptos_Descuentos: TfrmExplorar_Conceptos_Descuentos
  Left = 417
  Top = 318
  Caption = 'Explorar Conceptos Descuentos'
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
      
        'SELECT ID R_ID, CLAVE R_CLAVE, DESCRIPCION R_DESCRIPCION, DESCUE' +
        'NTO_PORC R_DESCUENTO_PORC'
      'FROM CONCEPTOS_DESCUENTOS_NC'
      'WHERE ID = 0')
    object qyExplorarR_ID: TIntegerField
      FieldName = 'R_ID'
      Origin = 'CONCEPTOS_DESCUENTOS_NC.ID'
      Required = True
    end
    object qyExplorarR_CLAVE: TIBStringField
      FieldName = 'R_CLAVE'
      Origin = 'CONCEPTOS_DESCUENTOS_NC.CLAVE'
    end
    object qyExplorarR_DESCRIPCION: TIBStringField
      FieldName = 'R_DESCRIPCION'
      Origin = 'CONCEPTOS_DESCUENTOS_NC.DESCRIPCION'
      Size = 100
    end
    object qyExplorarR_DESCUENTO_PORC: TFloatField
      FieldName = 'R_DESCUENTO_PORC'
      Origin = 'CONCEPTOS_DESCUENTOS_NC.DESCUENTO_PORC'
      DisplayFormat = '##0.## %'
    end
  end
end
