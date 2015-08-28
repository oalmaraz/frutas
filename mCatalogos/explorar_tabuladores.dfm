inherited frmExplorar_tabuladores: TfrmExplorar_tabuladores
  Left = 214
  Top = 206
  ActiveControl = nil
  Caption = 'Explorar Tabuladores'
  ClientHeight = 362
  ClientWidth = 619
  PixelsPerInch = 96
  TextHeight = 13
  inherited fpPadre: TPanel
    Width = 619
    inherited Panel1: TPanel
      Width = 619
    end
  end
  inherited Panel2: TPanel
    Top = 340
    Width = 619
  end
  inherited dgExplorar: TDBGrid
    Width = 619
    Height = 251
  end
  inherited paExplorarBusqueda: TPanel
    Width = 619
  end
  inherited qyExplorar: TIBQuery
    SQL.Strings = (
      
        'SELECT ID R_ID, CLAVE R_CLAVE, LIMITE_INF R_LIMITE_INF, LIMITE_S' +
        'UP R_LIMITE_SUP, BASE_MONTO R_BASE_MONTO, PORCENTAJE R_PORCENTAJ' +
        'E'
      'FROM TABULADORES'
      'WHERE ID = 0')
    object qyExplorarR_ID: TIntegerField
      FieldName = 'R_ID'
      Origin = 'TABULADORES.ID'
      Required = True
    end
    object qyExplorarR_CLAVE: TIBStringField
      FieldName = 'R_CLAVE'
      Origin = 'TABULADORES.CLAVE'
    end
    object qyExplorarR_LIMITE_INF: TFloatField
      FieldName = 'R_LIMITE_INF'
      Origin = 'TABULADORES.LIMITE_INF'
    end
    object qyExplorarR_LIMITE_SUP: TFloatField
      FieldName = 'R_LIMITE_SUP'
      Origin = 'TABULADORES.LIMITE_SUP'
    end
    object qyExplorarR_BASE_MONTO: TFloatField
      FieldName = 'R_BASE_MONTO'
      Origin = 'TABULADORES.BASE_MONTO'
    end
    object qyExplorarR_PORCENTAJE: TFloatField
      FieldName = 'R_PORCENTAJE'
      Origin = 'TABULADORES.PORCENTAJE'
    end
  end
end
