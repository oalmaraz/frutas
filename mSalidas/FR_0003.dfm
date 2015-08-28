object frmFR_0003: TfrmFR_0003
  Left = 764
  Top = 205
  Caption = 'FR_0003'
  ClientHeight = 205
  ClientWidth = 240
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object qyVerificarFolio: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT *'
      'FROM VERIFICAR_FOLIO_COTIZACION(:P_ID, :P_FOLIO)')
    Left = 160
    Top = 16
    ParamData = <
      item
        DataType = ftString
        Name = 'P_ID'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'P_FOLIO'
        ParamType = ptUnknown
        Value = '0'
      end>
    object qyVerificarFolioR_ACEPTADO: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_ACEPTADO'
      ReadOnly = True
      Size = 2
    end
  end
  object spAUTO_FOLIO: TIBStoredProc
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    StoredProcName = 'AUTO_FOLIO'
    Left = 64
    Top = 16
    ParamData = <
      item
        DataType = ftInteger
        Name = 'R_FOLIO'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'P_MODULO'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = 'P_SUBCLASE'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'P_AFECTAR'
        ParamType = ptInput
        Value = 'No'
      end>
  end
  object spMODIFICAR_FOLIO: TIBStoredProc
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    StoredProcName = 'MODIFICAR_FOLIO'
    Left = 96
    Top = 16
    ParamData = <
      item
        DataType = ftInteger
        Name = 'P_MODULO'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = 'P_SUBCLASE'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = 'P_CONSECUTIVO'
        ParamType = ptInput
        Value = '0'
      end>
  end
  object spACTUALIZA_COTIZACION: TIBStoredProc
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    StoredProcName = 'ACTUALIZA_COTIZACION'
    Left = 128
    Top = 16
    ParamData = <
      item
        DataType = ftInteger
        Name = 'P_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'P_FOLIO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'P_USUARIO'
        ParamType = ptInput
      end>
  end
end
