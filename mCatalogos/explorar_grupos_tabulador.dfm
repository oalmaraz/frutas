inherited frmExplorar_grupos_tabulador: TfrmExplorar_grupos_tabulador
  Left = 390
  Top = 355
  Caption = 'Explorar Grupo Tabulador'
  ClientWidth = 666
  ExplicitWidth = 320
  ExplicitHeight = 240
  PixelsPerInch = 96
  TextHeight = 13
  inherited fpPadre: TPanel
    Width = 666
    ExplicitWidth = 666
    inherited Panel1: TPanel
      Width = 666
      ExplicitWidth = 666
    end
  end
  inherited Panel2: TPanel
    Width = 666
    ExplicitWidth = 666
  end
  inherited dgExplorar: TDBGrid
    Width = 666
  end
  inherited paExplorarBusqueda: TPanel
    Width = 666
    ExplicitWidth = 666
  end
  inherited qyExplorar: TIBQuery
    SQL.Strings = (
      
        'SELECT ID R_ID, NOMBRE R_NOMBRE, POR_PORC R_PORC, POR_VALOR R_VA' +
        'LOR, ESTATUS R_ESTATUS'
      'FROM GRUPO_TABULADOR'
      'WHERE ID = 0')
    object qyExplorarR_ID: TIntegerField
      FieldName = 'R_ID'
      Origin = 'GRUPO_TABULADOR.ID'
      Required = True
    end
    object qyExplorarR_NOMBRE: TIBStringField
      FieldName = 'R_NOMBRE'
      Origin = 'GRUPO_TABULADOR.NOMBRE'
      Size = 100
    end
    object qyExplorarR_PORC: TIBStringField
      FieldName = 'R_PORC'
      Origin = 'GRUPO_TABULADOR.POR_PORC'
      FixedChar = True
      Size = 2
    end
    object qyExplorarR_VALOR: TIBStringField
      FieldName = 'R_VALOR'
      Origin = 'GRUPO_TABULADOR.POR_VALOR'
      FixedChar = True
      Size = 2
    end
    object qyExplorarR_ESTATUS: TIBStringField
      FieldName = 'R_ESTATUS'
      Origin = 'GRUPO_TABULADOR.ESTATUS'
    end
  end
end
