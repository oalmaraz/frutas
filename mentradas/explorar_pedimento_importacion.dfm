inherited frmExplorar_pedimento_importacion: TfrmExplorar_pedimento_importacion
  Left = 261
  Top = 262
  Caption = 'Explorar Pedimento Importacion'
  ClientWidth = 712
  ExplicitWidth = 320
  ExplicitHeight = 240
  PixelsPerInch = 96
  TextHeight = 13
  inherited fpPadre: TPanel
    Width = 712
    ExplicitWidth = 712
    inherited Panel1: TPanel
      Width = 712
      ExplicitWidth = 712
    end
  end
  inherited Panel2: TPanel
    Width = 712
    ExplicitWidth = 712
  end
  inherited dgExplorar: TDBGrid
    Width = 712
  end
  inherited paExplorarBusqueda: TPanel
    Width = 712
    ExplicitWidth = 712
    inherited laCampo: TLabel
      Width = 99
      Caption = 'Pedimento'
      ExplicitWidth = 99
    end
    inherited edExplorarValor: TEdit
      Left = 128
      ExplicitLeft = 128
    end
  end
  inherited qyExplorar: TIBQuery
    SQL.Strings = (
      
        'SELECT ID R_ID, FECHA R_FECHA, PEDIMENTO R_PEDIMENTO, INCREMENTA' +
        'BLES R_INCREMENTABLES, TOTAL R_TOTAL'
      'FROM PEDIMENTO_IMPORTACION'
      'WHERE ID = 0')
    object qyExplorarR_ID: TIntegerField
      FieldName = 'R_ID'
      Required = True
    end
    object qyExplorarR_FECHA: TDateTimeField
      FieldName = 'R_FECHA'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object qyExplorarR_PEDIMENTO: TIBStringField
      FieldName = 'R_PEDIMENTO'
    end
    object qyExplorarR_INCREMENTABLES: TFloatField
      FieldName = 'R_INCREMENTABLES'
      DisplayFormat = '$ ###,###,###,##0.0000'
    end
    object qyExplorarR_TOTAL: TFloatField
      FieldName = 'R_TOTAL'
      DisplayFormat = '$ ###,###,###,##0.0000'
    end
  end
end
