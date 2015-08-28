inherited frmExplorar_vendedores: TfrmExplorar_vendedores
  Left = 402
  Top = 333
  Caption = 'Explorar Vendedores'
  ClientHeight = 362
  ClientWidth = 604
  ExplicitWidth = 320
  ExplicitHeight = 240
  PixelsPerInch = 96
  TextHeight = 13
  inherited fpPadre: TPanel
    Width = 604
    ExplicitWidth = 604
    inherited Panel1: TPanel
      Width = 604
      ExplicitWidth = 604
    end
  end
  inherited Panel2: TPanel
    Top = 340
    Width = 604
    ExplicitTop = 340
    ExplicitWidth = 604
  end
  inherited dgExplorar: TDBGrid
    Width = 604
    Height = 251
  end
  inherited paExplorarBusqueda: TPanel
    Width = 604
    ExplicitWidth = 604
  end
  inherited qyExplorar: TIBQuery
    SQL.Strings = (
      
        'SELECT SV.ID R_ID, S.CLAVE R_CLAVE, S.NOMBRE R_NOMBRE, C.DESCRIP' +
        'CION R_CLASIFICACION,  S.FECHA_ALTA R_FECHA_ALTA '
      
        'FROM (SUJETOS_VENDEDORES SV LEFT JOIN  SUJETOS S ON SV.SUJETO = ' +
        'S.ID)'
      
        '           LEFT JOIN CLASIFICACIONES C ON SV.CLASIFICACION = C.I' +
        'D'
      'WHERE SV.ID = 0')
    object qyExplorarR_ID: TIntegerField
      FieldName = 'R_ID'
      Origin = 'SUJETOS_VENDEDORES.ID'
      Required = True
    end
    object qyExplorarR_CLAVE: TIBStringField
      FieldName = 'R_CLAVE'
      Origin = 'SUJETOS.CLAVE'
      Size = 50
    end
    object qyExplorarR_NOMBRE: TIBStringField
      FieldName = 'R_NOMBRE'
      Origin = 'SUJETOS.NOMBRE'
      Size = 100
    end
    object qyExplorarR_CLASIFICACION: TIBStringField
      FieldName = 'R_CLASIFICACION'
      Origin = 'CLASIFICACIONES.DESCRIPCION'
      Size = 50
    end
    object qyExplorarR_FECHA_ALTA: TDateTimeField
      FieldName = 'R_FECHA_ALTA'
      Origin = 'SUJETOS.FECHA_ALTA'
    end
  end
end
