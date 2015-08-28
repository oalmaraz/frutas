inherited frmExplorar_almacenes: TfrmExplorar_almacenes
  Left = 358
  Top = 240
  Caption = 'Explorar Almacenes'
  ClientHeight = 383
  ClientWidth = 693
  ExplicitWidth = 320
  ExplicitHeight = 240
  PixelsPerInch = 96
  TextHeight = 13
  inherited fpPadre: TPanel
    Width = 693
    ExplicitWidth = 693
    inherited Panel1: TPanel
      Width = 693
      ExplicitWidth = 693
    end
  end
  inherited Panel2: TPanel
    Top = 361
    Width = 693
    ExplicitTop = 361
    ExplicitWidth = 693
  end
  inherited dgExplorar: TDBGrid
    Width = 693
    Height = 272
  end
  inherited paExplorarBusqueda: TPanel
    Width = 693
    ExplicitWidth = 693
  end
  inherited qyExplorar: TIBQuery
    SQL.Strings = (
      
        'SELECT ID R_ID, CLAVE R_CLAVE, NOMBRE R_NOMBRE, COMPRA R_COMPRA,' +
        ' VENDE R_VENDE, TRANSFORMA R_TRANSFORMA, FECHA_ALTA R_FECHA'
      'FROM ALMACENES'
      'WHERE ID = 0')
    object qyExplorarR_ID: TIntegerField
      FieldName = 'R_ID'
      Origin = 'ALMACENES.ID'
      Required = True
    end
    object qyExplorarR_CLAVE: TIBStringField
      FieldName = 'R_CLAVE'
      Origin = 'ALMACENES.CLAVE'
    end
    object qyExplorarR_NOMBRE: TIBStringField
      FieldName = 'R_NOMBRE'
      Origin = 'ALMACENES.NOMBRE'
      Size = 100
    end
    object qyExplorarR_COMPRA: TIBStringField
      FieldName = 'R_COMPRA'
      Origin = 'ALMACENES.COMPRA'
      FixedChar = True
      Size = 2
    end
    object qyExplorarR_VENDE: TIBStringField
      FieldName = 'R_VENDE'
      Origin = 'ALMACENES.VENDE'
      FixedChar = True
      Size = 2
    end
    object qyExplorarR_TRANSFORMA: TIBStringField
      FieldName = 'R_TRANSFORMA'
      Origin = 'ALMACENES.TRANSFORMA'
      FixedChar = True
      Size = 2
    end
    object qyExplorarR_FECHA: TDateTimeField
      FieldName = 'R_FECHA'
      Origin = 'ALMACENES.FECHA_ALTA'
    end
  end
end
