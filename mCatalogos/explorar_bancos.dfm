inherited frmExplorar_bancos: TfrmExplorar_bancos
  Left = 395
  Top = 450
  Caption = 'Explorar Bancos'
  ClientHeight = 373
  ClientWidth = 623
  PixelsPerInch = 96
  TextHeight = 13
  inherited fpPadre: TPanel
    Width = 623
    inherited Panel1: TPanel
      Width = 623
    end
  end
  inherited Panel2: TPanel
    Top = 351
    Width = 623
  end
  inherited dgExplorar: TDBGrid
    Width = 623
    Height = 262
  end
  inherited paExplorarBusqueda: TPanel
    Width = 623
    inherited laCampo: TLabel
      Width = 66
      Caption = 'Cuenta'
    end
    inherited edExplorarValor: TEdit
      Left = 93
    end
  end
  inherited qyExplorar: TIBQuery
    SQL.Strings = (
      
        'SELECT SB.ID R_ID, S.NOMBRE R_NOMBRE, SB.SUCURSAL R_SUCURSAL, SB' +
        '.CUENTA R_CUENTA, M.DESCRIPCION R_MONEDA,'
      '       S.FECHA_ALTA R_FECHA_ALTA'
      'FROM (SUJETOS_BANCOS SB LEFT JOIN SUJETOS S ON SB.SUJETO = S.ID)'
      '     LEFT JOIN MONEDAS M ON SB.MONEDA = M.ID'
      'WHERE SB.ID = 0')
    object qyExplorarR_ID: TIntegerField
      FieldName = 'R_ID'
      Origin = 'SUJETOS_BANCOS.ID'
      Required = True
    end
    object qyExplorarR_NOMBRE: TIBStringField
      FieldName = 'R_NOMBRE'
      Origin = 'SUJETOS.NOMBRE'
      Size = 100
    end
    object qyExplorarR_SUCURSAL: TIBStringField
      FieldName = 'R_SUCURSAL'
      Origin = 'SUJETOS_BANCOS.SUCURSAL'
      Size = 50
    end
    object qyExplorarR_CUENTA: TIBStringField
      FieldName = 'R_CUENTA'
      Origin = 'SUJETOS_BANCOS.CUENTA'
      Size = 50
    end
    object qyExplorarR_MONEDA: TIBStringField
      FieldName = 'R_MONEDA'
      Origin = 'MONEDAS.DESCRIPCION'
      Size = 50
    end
    object qyExplorarR_FECHA_ALTA: TDateTimeField
      FieldName = 'R_FECHA_ALTA'
      Origin = 'SUJETOS.FECHA_ALTA'
    end
  end
end
