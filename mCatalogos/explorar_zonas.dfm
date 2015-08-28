inherited frmExplorar_zonas: TfrmExplorar_zonas
  Left = 359
  Top = 129
  Caption = 'Explorar Zonas'
  ExplicitWidth = 320
  ExplicitHeight = 240
  PixelsPerInch = 96
  TextHeight = 13
  inherited qyExplorar: TIBQuery
    SQL.Strings = (
      'SELECT ID R_ID, DESCRIPCION R_DESCRIPCION'
      'FROM ZONAS'
      'WHERE ID = 0')
    object qyExplorarR_ID: TIntegerField
      FieldName = 'R_ID'
      Origin = 'ZONAS.ID'
      Required = True
    end
    object qyExplorarR_DESCRIPCION: TIBStringField
      FieldName = 'R_DESCRIPCION'
      Origin = 'ZONAS.DESCRIPCION'
      Size = 50
    end
  end
end
