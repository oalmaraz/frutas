inherited frmExplorar_rutas: TfrmExplorar_rutas
  Left = 201
  Top = 107
  ActiveControl = nil
  Caption = 'Explorar Rutas'
  ClientHeight = 439
  ClientWidth = 629
  ExplicitWidth = 320
  ExplicitHeight = 240
  PixelsPerInch = 96
  TextHeight = 13
  inherited fpPadre: TPanel
    Width = 629
    ExplicitWidth = 629
    inherited Panel1: TPanel
      Width = 629
      ExplicitWidth = 629
    end
  end
  inherited Panel2: TPanel
    Top = 417
    Width = 629
    ExplicitTop = 417
    ExplicitWidth = 629
  end
  inherited dgExplorar: TDBGrid
    Width = 629
    Height = 328
  end
  inherited paExplorarBusqueda: TPanel
    Width = 629
    ExplicitWidth = 629
    inherited laCampo: TLabel
      Width = 42
      Caption = 'Ruta'
      ExplicitWidth = 42
    end
    inherited edExplorarValor: TEdit
      Left = 71
      Width = 162
      ExplicitLeft = 71
      ExplicitWidth = 162
    end
  end
  inherited qyExplorar: TIBQuery
    SQL.Strings = (
      
        'SELECT R.ID R_ID, R.NOMBRE R_NOMBRE, S.CLAVE R_TRANSPORTISTA_CLA' +
        'VE, S.NOMBRE R_TRANSPORTISTA_NOMBRE'
      
        'FROM (RUTAS R LEFT JOIN SUJETOS_TRANSPORTISTAS ST ON R.TRANSPORT' +
        'ISTA = ST.ID)'
      '           LEFT JOIN SUJETOS S ON ST.SUJETO = S.ID'
      'WHERE R.ID = 0')
    object qyExplorarR_ID: TIntegerField
      FieldName = 'R_ID'
      Origin = 'RUTAS.ID'
      Required = True
    end
    object qyExplorarR_NOMBRE: TIBStringField
      FieldName = 'R_NOMBRE'
      Origin = 'RUTAS.NOMBRE'
      Size = 100
    end
    object qyExplorarR_TRANSPORTISTA_CLAVE: TIBStringField
      FieldName = 'R_TRANSPORTISTA_CLAVE'
      Origin = 'SUJETOS.CLAVE'
      Size = 50
    end
    object qyExplorarR_TRANSPORTISTA_NOMBRE: TIBStringField
      FieldName = 'R_TRANSPORTISTA_NOMBRE'
      Origin = 'SUJETOS.NOMBRE'
      Size = 100
    end
  end
end
