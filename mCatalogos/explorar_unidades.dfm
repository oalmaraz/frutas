inherited frmExplorar_unidades: TfrmExplorar_unidades
  Left = 214
  Top = 206
  ActiveControl = nil
  Caption = 'Explorar Unidades'
  ClientHeight = 362
  ClientWidth = 619
  ExplicitWidth = 320
  ExplicitHeight = 240
  PixelsPerInch = 96
  TextHeight = 13
  inherited fpPadre: TPanel
    Width = 619
    ExplicitWidth = 619
    inherited Panel1: TPanel
      Width = 619
      ExplicitWidth = 619
    end
  end
  inherited Panel2: TPanel
    Top = 340
    Width = 619
    ExplicitTop = 340
    ExplicitWidth = 619
  end
  inherited dgExplorar: TDBGrid
    Width = 619
    Height = 251
  end
  inherited paExplorarBusqueda: TPanel
    Width = 619
    ExplicitWidth = 619
  end
  inherited qyExplorar: TIBQuery
    SQL.Strings = (
      'SELECT ID R_ID, CLAVE R_CLAVE, DESCRIPCION R_DESCRIPCION'
      'FROM UNIDADES'
      'WHERE ID = 0')
    object qyExplorarR_ID: TIntegerField
      FieldName = 'R_ID'
      Origin = 'UNIDADES.ID'
      Required = True
    end
    object qyExplorarR_CLAVE: TIBStringField
      FieldName = 'R_CLAVE'
      Origin = 'UNIDADES.CLAVE'
      Size = 10
    end
    object qyExplorarR_DESCRIPCION: TIBStringField
      FieldName = 'R_DESCRIPCION'
      Origin = 'UNIDADES.DESCRIPCION'
      Size = 50
    end
  end
end
