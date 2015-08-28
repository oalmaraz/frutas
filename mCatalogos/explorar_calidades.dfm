inherited frmExplorar_Calidades: TfrmExplorar_Calidades
  Left = 343
  Top = 328
  ActiveControl = nil
  Caption = 'Explorar Calidades'
  ClientHeight = 372
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
    Top = 350
    Width = 623
    ExplicitTop = 350
    ExplicitWidth = 623
  end
  inherited dgExplorar: TDBGrid
    Width = 623
    Height = 261
  end
  inherited paExplorarBusqueda: TPanel
    Width = 623
    ExplicitWidth = 623
    inherited laCampo: TLabel
      Width = 73
      Caption = 'Nombre'
      ExplicitWidth = 73
    end
    inherited edExplorarValor: TEdit
      Left = 103
      Width = 162
      ExplicitLeft = 103
      ExplicitWidth = 162
    end
  end
  inherited qyExplorar: TIBQuery
    SQL.Strings = (
      'SELECT ID R_ID, NOMBRE R_NOMBRE'
      'FROM CALIDADES'
      'WHERE ID = 0')
    object qyExplorarR_ID: TIntegerField
      FieldName = 'R_ID'
      Origin = 'CALIDADES.ID'
      Required = True
    end
    object qyExplorarR_NOMBRE: TIBStringField
      FieldName = 'R_NOMBRE'
      Origin = 'CALIDADES.NOMBRE'
      Size = 100
    end
  end
end
