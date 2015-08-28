inherited frmExplorar_tipos_de_formas: TfrmExplorar_tipos_de_formas
  Left = 379
  Top = 241
  ActiveControl = nil
  Caption = 'Explorar tipos de formas'
  ClientHeight = 442
  ClientWidth = 734
  ExplicitWidth = 750
  ExplicitHeight = 481
  PixelsPerInch = 96
  TextHeight = 13
  inherited fpPadre: TPanel
    Width = 734
    ExplicitWidth = 734
    inherited Panel1: TPanel
      Width = 734
      ExplicitWidth = 734
    end
  end
  inherited Panel2: TPanel
    Top = 420
    Width = 734
    ExplicitTop = 420
    ExplicitWidth = 734
  end
  inherited dgExplorar: TDBGrid
    Width = 734
    Height = 331
  end
  inherited paExplorarBusqueda: TPanel
    Width = 734
    Visible = False
    ExplicitWidth = 734
  end
  inherited qyExplorar: TIBQuery
    SQL.Strings = (
      'SELECT ID R_ID, NOMBRE R_NOMBRE'
      'FROM FORMAS'
      'WHERE ID = 0')
    object qyExplorarR_ID: TIntegerField
      FieldName = 'R_ID'
      Origin = 'FORMAS.ID'
      Required = True
    end
    object qyExplorarR_NOMBRE: TIBStringField
      FieldName = 'R_NOMBRE'
      Origin = 'FORMAS.NOMBRE'
      Size = 50
    end
  end
end
