inherited frmExplorar_grupos_colores: TfrmExplorar_grupos_colores
  Left = 304
  Top = 444
  Caption = 'Explorar Grupos Colores'
  ClientWidth = 704
  ExplicitWidth = 320
  ExplicitHeight = 240
  PixelsPerInch = 96
  TextHeight = 13
  inherited fpPadre: TPanel
    Width = 704
    ExplicitWidth = 704
    inherited Panel1: TPanel
      Width = 704
      ExplicitWidth = 704
    end
  end
  inherited Panel2: TPanel
    Width = 704
    ExplicitWidth = 704
  end
  inherited dgExplorar: TDBGrid
    Width = 704
  end
  inherited paExplorarBusqueda: TPanel
    Width = 704
    ExplicitWidth = 704
    inherited laCampo: TLabel
      Width = 73
      Caption = 'Nombre'
      ExplicitWidth = 73
    end
    inherited edExplorarValor: TEdit
      Left = 102
      ExplicitLeft = 102
    end
  end
  inherited qyExplorar: TIBQuery
    SQL.Strings = (
      'SELECT ID R_ID, NOMBRE R_NOMBRE'
      'FROM GRUPO_COLORES'
      'WHERE ID = 0')
    object qyExplorarR_ID: TIntegerField
      FieldName = 'R_ID'
      Origin = 'GRUPO_COLORES.ID'
      Required = True
    end
    object qyExplorarR_NOMBRE: TIBStringField
      FieldName = 'R_NOMBRE'
      Origin = 'GRUPO_COLORES.NOMBRE'
      Size = 100
    end
  end
end
