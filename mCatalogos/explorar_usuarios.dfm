inherited frmExplorar_Usuarios: TfrmExplorar_Usuarios
  Left = 134
  Top = 175
  Caption = 'Explorar Usuarios'
  ClientHeight = 362
  ClientWidth = 619
  PixelsPerInch = 96
  TextHeight = 13
  inherited fpPadre: TPanel
    Width = 619
    inherited Panel1: TPanel
      Width = 619
    end
  end
  inherited Panel2: TPanel
    Top = 340
    Width = 619
  end
  inherited dgExplorar: TDBGrid
    Width = 619
    Height = 251
  end
  inherited paExplorarBusqueda: TPanel
    Width = 619
    inherited laCampo: TLabel
      Width = 72
      Caption = 'Usuario'
    end
    inherited edExplorarValor: TEdit
      Left = 97
    end
    inherited edExplorarDel: TDateTimePicker
      Left = 97
    end
    inherited edExplorarAl: TDateTimePicker
      Left = 180
    end
  end
  inherited qyExplorar: TIBQuery
    SQL.Strings = (
      
        'SELECT SU.ID R_ID, SU.USUARIO R_USUARIO, S.NOMBRE R_NOMBRE, SU.B' +
        'AJA R_BAJA,'
      '       S.FECHA_ALTA R_FECHA, SU.NIVEL R_NIVEL'
      'FROM SUJETOS_USUARIOS SU LEFT JOIN SUJETOS S ON SU.SUJETO = S.ID'
      'WHERE SU.ID = 0')
    object qyExplorarR_ID: TIntegerField
      FieldName = 'R_ID'
      Origin = 'SUJETOS_USUARIOS.ID'
      Required = True
    end
    object qyExplorarR_USUARIO: TIBStringField
      FieldName = 'R_USUARIO'
      Origin = 'SUJETOS_USUARIOS.USUARIO'
    end
    object qyExplorarR_NOMBRE: TIBStringField
      FieldName = 'R_NOMBRE'
      Origin = 'SUJETOS.NOMBRE'
      Size = 100
    end
    object qyExplorarR_BAJA: TIBStringField
      FieldName = 'R_BAJA'
      Origin = 'SUJETOS_USUARIOS.BAJA'
      FixedChar = True
      Size = 2
    end
    object qyExplorarR_FECHA: TDateTimeField
      FieldName = 'R_FECHA'
      Origin = 'SUJETOS.FECHA_ALTA'
    end
    object qyExplorarR_NIVEL: TIntegerField
      FieldName = 'R_NIVEL'
      Origin = 'SUJETOS_USUARIOS.NIVEL'
    end
  end
end
