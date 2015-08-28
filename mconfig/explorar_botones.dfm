inherited frmExplorar_botones: TfrmExplorar_botones
  Left = 328
  Top = 389
  ActiveControl = nil
  Caption = 'Explorar Botones'
  ClientHeight = 458
  ClientWidth = 760
  ExplicitWidth = 776
  ExplicitHeight = 497
  PixelsPerInch = 96
  TextHeight = 13
  inherited fpPadre: TPanel
    Width = 760
    ExplicitWidth = 760
    inherited Panel1: TPanel
      Width = 760
      ExplicitWidth = 760
    end
  end
  inherited Panel2: TPanel
    Top = 436
    Width = 760
    ExplicitTop = 436
    ExplicitWidth = 760
  end
  inherited dgExplorar: TDBGrid
    Width = 760
    Height = 347
  end
  inherited paExplorarBusqueda: TPanel
    Width = 760
    ExplicitWidth = 760
    inherited laCampo: TLabel
      Width = 73
      Caption = 'Nombre'
      ExplicitWidth = 73
    end
    inherited edExplorarValor: TEdit
      Left = 102
      Width = 171
      ExplicitLeft = 102
      ExplicitWidth = 171
    end
  end
  inherited qyExplorar: TIBQuery
    SQL.Strings = (
      'SELECT ID R_ID, NOMBRE R_NOMBRE'
      'FROM BOTONES'
      'WHERE ID = 0')
    object qyExplorarR_ID: TIntegerField
      FieldName = 'R_ID'
      Origin = 'BOTONES.ID'
      Required = True
    end
    object qyExplorarR_NOMBRE: TIBStringField
      FieldName = 'R_NOMBRE'
      Origin = 'BOTONES.NOMBRE'
      Size = 50
    end
  end
end
