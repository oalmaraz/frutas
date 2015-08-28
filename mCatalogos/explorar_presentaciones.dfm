inherited frmExplorar_presentaciones: TfrmExplorar_presentaciones
  Caption = 'Explorar Presentaciones'
  ExplicitWidth = 320
  ExplicitHeight = 240
  PixelsPerInch = 96
  TextHeight = 13
  inherited paExplorarBusqueda: TPanel
    inherited laCampo: TLabel
      Width = 112
      Caption = 'Descripcion'
      ExplicitWidth = 112
    end
    inherited edExplorarValor: TEdit
      Left = 138
      ExplicitLeft = 138
    end
  end
  inherited qyExplorar: TIBQuery
    SQL.Strings = (
      'SELECT P.ID R_ID, P.DESCRIPCION R_DESCRIPCION'
      'FROM PRESENTACIONES P'
      'WHERE P.ID = 0')
    object qyExplorarR_ID: TIntegerField
      FieldName = 'R_ID'
      Origin = 'PRESENTACIONES.ID'
      Required = True
    end
    object qyExplorarR_DESCRIPCION: TIBStringField
      FieldName = 'R_DESCRIPCION'
      Origin = 'PRESENTACIONES.DESCRIPCION'
      Size = 50
    end
  end
end
