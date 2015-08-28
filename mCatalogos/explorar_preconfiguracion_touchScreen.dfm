inherited frmExplorar_preconfiguracion_touchScreen: TfrmExplorar_preconfiguracion_touchScreen
  Left = 518
  Caption = 'Explorar Pre-Configuracion touchScreen'
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
    TabStop = True
    ExplicitWidth = 619
  end
  inherited qyExplorar: TIBQuery
    SQL.Strings = (
      
        'SELECT PT.ID R_ID, A.CLAVE R_ALMACEN, GM.NOMBRE R_GRUPO_MATERIAL' +
        '_NOMBRE, M.CLAVE R_MATERIAL_CLAVE, M.DESCRIPCION R_MATERIAL_DESC' +
        'RIPCION, U.DESCRIPCION R_MATERIAL_UNIDAD_DESC, PT.VISUALIZAR R_V' +
        'ISUALIZAR, PT.ORDEN_VISUALIZACION R_ORDEN_VISUALIZACION'
      
        'FROM (PRECONFIGURACION_TOUCHSCREEN PT LEFT JOIN  ALMACENES A ON ' +
        'PT.ALMACEN = A.ID)'
      
        '           LEFT JOIN GRUPOS_MATERIALES GM ON PT.GRUPO_MATERIAL =' +
        ' GM.ID'
      '           LEFT JOIN MATERIALES M ON PT.MATERIAL = M.ID'
      '           LEFT JOIN UNIDADES U ON PT.MATERIAL_UNIDAD = U.ID'
      'WHERE PT.ID = 0')
    object qyExplorarR_ID: TIntegerField
      FieldName = 'R_ID'
      Origin = 'PRECONFIGURACION_TOUCHSCREEN.ID'
      Required = True
    end
    object qyExplorarR_GRUPO_MATERIAL_NOMBRE: TIBStringField
      FieldName = 'R_GRUPO_MATERIAL_NOMBRE'
      Origin = 'GRUPOS_MATERIALES.NOMBRE'
      Size = 50
    end
    object qyExplorarR_MATERIAL_CLAVE: TIBStringField
      FieldName = 'R_MATERIAL_CLAVE'
      Origin = 'MATERIALES.CLAVE'
    end
    object qyExplorarR_MATERIAL_DESCRIPCION: TIBStringField
      FieldName = 'R_MATERIAL_DESCRIPCION'
      Origin = 'MATERIALES.DESCRIPCION'
      Size = 100
    end
    object qyExplorarR_MATERIAL_UNIDAD_DESC: TIBStringField
      FieldName = 'R_MATERIAL_UNIDAD_DESC'
      Origin = 'UNIDADES.DESCRIPCION'
      Size = 50
    end
    object qyExplorarR_VISUALIZAR: TIBStringField
      FieldName = 'R_VISUALIZAR'
      Origin = 'PRECONFIGURACION_TOUCHSCREEN.VISUALIZAR'
      FixedChar = True
      Size = 2
    end
    object qyExplorarR_ORDEN_VISUALIZACION: TIntegerField
      FieldName = 'R_ORDEN_VISUALIZACION'
      Origin = 'PRECONFIGURACION_TOUCHSCREEN.ORDEN_VISUALIZACION'
    end
    object qyExplorarR_ALMACEN: TIBStringField
      FieldName = 'R_ALMACEN'
      Origin = 'ALMACENES.CLAVE'
    end
  end
end
