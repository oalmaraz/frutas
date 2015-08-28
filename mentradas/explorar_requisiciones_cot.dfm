inherited frmExplorar_requisicion_cotizaciones: TfrmExplorar_requisicion_cotizaciones
  Left = 239
  Top = 185
  Caption = 'Explorar Cotizaciones de Requisiciones'
  ClientHeight = 497
  ClientWidth = 775
  ExplicitWidth = 320
  ExplicitHeight = 240
  PixelsPerInch = 96
  TextHeight = 13
  inherited fpPadre: TPanel
    Width = 775
    ExplicitWidth = 775
    inherited Panel1: TPanel
      Width = 775
      ExplicitWidth = 775
    end
  end
  inherited Panel2: TPanel
    Top = 475
    Width = 775
    ExplicitTop = 475
    ExplicitWidth = 775
  end
  inherited dgExplorar: TDBGrid
    Width = 775
    Height = 386
  end
  inherited paExplorarBusqueda: TPanel
    Width = 775
    ExplicitWidth = 775
    inherited laCampo: TLabel
      Width = 88
      Caption = 'R_CLAVE'
      ExplicitWidth = 88
    end
    inherited edExplorarValor: TEdit
      Left = 118
      ExplicitLeft = 118
    end
  end
  inherited qyExplorar: TIBQuery
    SQL.Strings = (
      
        'SELECT RC.ID R_ID, R.CLAVE R_CLAVE, D.DESCRIPCION R_DEPARTAMENTO' +
        ', R.FECHA_ENTREGA R_FECHA_ENTREGA, RC.NOMBRE R_NOMBRE, RC.RAZON_' +
        'SOCIAL R_RAZON_SOCIAL, RC.FECHA_VALIDEZ R_FECHA_VALIDEZ, P.COMPR' +
        'A_MINIMA, P.DESCUENTO_PORC, RC.FECHA_ALTA R_FECHA'
      
        'FROM (REQUISICIONES_COTIZACIONES RC LEFT JOIN REQUISICIONES R ON' +
        ' RC.REQUISICION = R.ID)'
      '     LEFT JOIN DEPARTAMENTOS D ON R.DEPARTAMENTO = D.ID'
      '     LEFT JOIN SUJETOS_PROVEEDORES P ON RC.PROVEEDOR = P.ID'
      'WHERE RC.ID = 0')
    object qyExplorarR_ID: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_ID'
      ReadOnly = True
    end
    object qyExplorarR_CLAVE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_CLAVE'
      ReadOnly = True
    end
    object qyExplorarR_DEPARTAMENTO: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_DEPARTAMENTO'
      ReadOnly = True
      Size = 100
    end
    object qyExplorarR_FECHA_ENTREGA: TDateTimeField
      FieldKind = fkInternalCalc
      FieldName = 'R_FECHA_ENTREGA'
      ReadOnly = True
      DisplayFormat = 'dd/mmm/yyyy'
    end
    object qyExplorarR_NOMBRE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_NOMBRE'
      ReadOnly = True
      Size = 100
    end
    object qyExplorarR_RAZON_SOCIAL: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_RAZON_SOCIAL'
      ReadOnly = True
      Size = 100
    end
    object qyExplorarR_FECHA_VALIDEZ: TDateTimeField
      FieldKind = fkInternalCalc
      FieldName = 'R_FECHA_VALIDEZ'
      ReadOnly = True
      DisplayFormat = 'dd/mmm/yyyy'
    end
    object qyExplorarCOMPRA_MINIMA: TFloatField
      FieldName = 'COMPRA_MINIMA'
      Origin = 'SUJETOS_PROVEEDORES.COMPRA_MINIMA'
      DisplayFormat = '###,###,##0.00'
    end
    object qyExplorarDESCUENTO_PORC: TFloatField
      FieldName = 'DESCUENTO_PORC'
      Origin = 'SUJETOS_PROVEEDORES.DESCUENTO_PORC'
      DisplayFormat = '#0.00 %'
    end
    object qyExplorarR_FECHA: TDateTimeField
      FieldName = 'R_FECHA'
      Origin = 'REQUISICIONES_COTIZACIONES.FECHA_ALTA'
    end
  end
end
