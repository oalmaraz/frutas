object frmRPT_CORTE_CAJAS_CXP: TfrmRPT_CORTE_CAJAS_CXP
  Left = 92
  Top = 194
  Caption = 'frmRPT_CORTE_CAJAS_CXP'
  ClientHeight = 441
  ClientWidth = 868
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object qyCorteCXP: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT *'
      'FROM CORTE_CXP(:P_FECHA, :P_CAJA)')
    Left = 16
    Top = 16
    ParamData = <
      item
        DataType = ftString
        Name = 'P_FECHA'
        ParamType = ptUnknown
        Value = '16/05/2003'
      end
      item
        DataType = ftString
        Name = 'P_CAJA'
        ParamType = ptUnknown
        Value = '16'
      end>
    object qyCorteCXPR_ID: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_ID'
      ReadOnly = True
    end
    object qyCorteCXPR_FOLIO_PAGO: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_FOLIO_PAGO'
      ReadOnly = True
    end
    object qyCorteCXPR_FECHA_ALTA: TDateTimeField
      FieldKind = fkInternalCalc
      FieldName = 'R_FECHA_ALTA'
      ReadOnly = True
    end
    object qyCorteCXPR_USUARIO: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_USUARIO'
      ReadOnly = True
    end
    object qyCorteCXPR_USUARIO_NOMBRE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_USUARIO_NOMBRE'
      ReadOnly = True
      Size = 100
    end
    object qyCorteCXPR_CAJA: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_CAJA'
      ReadOnly = True
    end
    object qyCorteCXPR_CAJA_NOMBRE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_CAJA_NOMBRE'
      ReadOnly = True
      Size = 100
    end
    object qyCorteCXPR_GRANTOTAL: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_GRANTOTAL'
      ReadOnly = True
    end
    object qyCorteCXPR_ESTATUS: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_ESTATUS'
      ReadOnly = True
    end
  end
  object dsCorteCXP: TDataSource
    DataSet = qyCorteCXP
    Left = 48
    Top = 16
  end
end
