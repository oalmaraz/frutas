inherited frmExplorar_clasificaciones: TfrmExplorar_clasificaciones
  Left = 349
  Top = 350
  ActiveControl = nil
  Caption = 'Explorar Clasificaciones'
  ClientHeight = 373
  ClientWidth = 623
  PixelsPerInch = 96
  TextHeight = 13
  inherited fpPadre: TPanel
    Width = 623
    inherited Panel1: TPanel
      Width = 623
    end
  end
  inherited Panel2: TPanel
    Top = 351
    Width = 623
  end
  inherited dgExplorar: TDBGrid
    Width = 623
    Height = 262
  end
  inherited paExplorarBusqueda: TPanel
    Width = 623
    inherited laCampo: TLabel
      Width = 112
      Caption = 'Descripcion'
    end
    inherited edExplorarValor: TEdit
      Left = 136
      Width = 153
    end
  end
  inherited qyExplorar: TIBQuery
    SQL.Strings = (
      'SELECT ID R_ID, DESCRIPCION R_DESCRIPCION'
      'FROM CLASIFICACIONES'
      'WHERE ID = 0')
    object qyExplorarR_ID: TIntegerField
      FieldName = 'R_ID'
      Origin = 'CLASIFICACIONES.ID'
      Required = True
    end
    object qyExplorarR_DESCRIPCION: TIBStringField
      FieldName = 'R_DESCRIPCION'
      Origin = 'CLASIFICACIONES.DESCRIPCION'
      Size = 50
    end
  end
end
