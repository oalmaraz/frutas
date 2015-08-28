inherited frmExplorar_tabulador_nlp: TfrmExplorar_tabulador_nlp
  Left = 414
  Top = 469
  ActiveControl = nil
  Caption = 'Explorar Tabuladores'
  ClientHeight = 362
  ClientWidth = 791
  PixelsPerInch = 96
  TextHeight = 13
  inherited fpPadre: TPanel
    Width = 791
    inherited Panel1: TPanel
      Width = 791
    end
  end
  inherited Panel2: TPanel
    Top = 340
    Width = 791
  end
  inherited dgExplorar: TDBGrid
    Width = 791
    Height = 251
  end
  inherited paExplorarBusqueda: TPanel
    Width = 791
  end
  inherited qyExplorar: TIBQuery
    SQL.Strings = (
      'SELECT T.ID          R_ID, '
      '       T.NLP         R_NLP, '
      '       T.MATERIAL    R_MATERIAL,'
      '       T.LIMITE_INF  R_LIMITE_INF, '
      '       T.LIMITE_SUP  R_LIMITE_SUP, '
      '       T.BASE_MONTO  R_BASE_MONTO, '
      '       T.PORCENTAJE  R_PORCENTAJE,'
      '       N.DESCRIPCION R_NLP_D,'
      '       M.CLAVE       R_MATERIAL_C,'
      '       M.DESCRIPCION R_MATERIAL_D   '
      'FROM TABULADOR_NLP T, NOMBRE_LISTA_PRECIOS N, MATERIALES M'
      'WHERE (T.NLP = N.ID) AND (T.MATERIAL = M.ID) AND'
      '      ID = 0')
    object qyExplorarR_ID: TIntegerField
      FieldName = 'R_ID'
      Origin = 'TABULADOR_NLP.ID'
      Required = True
    end
    object qyExplorarR_NLP: TIntegerField
      FieldName = 'R_NLP'
      Origin = 'TABULADOR_NLP.NLP'
      Required = True
    end
    object qyExplorarR_MATERIAL: TIntegerField
      FieldName = 'R_MATERIAL'
      Origin = 'TABULADOR_NLP.MATERIAL'
      Required = True
    end
    object qyExplorarR_LIMITE_INF: TFloatField
      FieldName = 'R_LIMITE_INF'
      Origin = 'TABULADOR_NLP.LIMITE_INF'
    end
    object qyExplorarR_LIMITE_SUP: TFloatField
      FieldName = 'R_LIMITE_SUP'
      Origin = 'TABULADOR_NLP.LIMITE_SUP'
    end
    object qyExplorarR_BASE_MONTO: TFloatField
      FieldName = 'R_BASE_MONTO'
      Origin = 'TABULADOR_NLP.BASE_MONTO'
    end
    object qyExplorarR_PORCENTAJE: TFloatField
      FieldName = 'R_PORCENTAJE'
      Origin = 'TABULADOR_NLP.PORCENTAJE'
    end
    object qyExplorarR_NLP_D: TIBStringField
      FieldName = 'R_NLP_D'
      Origin = 'NOMBRE_LISTA_PRECIOS.DESCRIPCION'
      Size = 100
    end
    object qyExplorarR_MATERIAL_C: TIBStringField
      FieldName = 'R_MATERIAL_C'
      Origin = 'MATERIALES.CLAVE'
    end
    object qyExplorarR_MATERIAL_D: TIBStringField
      FieldName = 'R_MATERIAL_D'
      Origin = 'MATERIALES.DESCRIPCION'
      Size = 100
    end
  end
end
