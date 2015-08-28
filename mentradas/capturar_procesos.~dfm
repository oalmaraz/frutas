inherited frmCapturar_procesos: TfrmCapturar_procesos
  Top = 41
  Caption = 'Capturar Procesos'
  ClientHeight = 504
  PixelsPerInch = 96
  TextHeight = 13
  inherited paLienzo: TPanel
    Height = 422
  end
  inherited Panel2: TPanel
    Top = 482
  end
  object qyEstatusProcesos: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    DataSource = dsFuente
    SQL.Strings = (
      'SELECT *'
      'FROM ESTATUS_PROCESOS'
      'WHERE (FORMA = :FORMA) AND (ESTATUS = :ESTATUS)')
    Left = 288
    Top = 367
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'FORMA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ESTATUS'
        ParamType = ptUnknown
      end>
  end
  object dsEstatusProcesos: TDataSource
    DataSet = qyEstatusProcesos
    Left = 320
    Top = 367
  end
  object TEstatusProcesosDetalle: TIBTable
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'PROCESO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ESTATUS'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'AUTORIZACION'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'STOREPROC'
        DataType = ftString
        Size = 50
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY117'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'RDB$FOREIGN118'
        Fields = 'PROCESO'
      end>
    IndexFieldNames = 'PROCESO'
    MasterFields = 'ID'
    MasterSource = dsEstatusProcesos
    StoreDefs = True
    TableName = 'ESTATUS_PROCESOS_DET'
    Left = 352
    Top = 367
    object TEstatusProcesosDetalleID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object TEstatusProcesosDetallePROCESO: TIntegerField
      FieldName = 'PROCESO'
      Required = True
    end
    object TEstatusProcesosDetalleESTATUS: TIBStringField
      FieldName = 'ESTATUS'
    end
    object TEstatusProcesosDetalleAUTORIZACION: TIBStringField
      FieldName = 'AUTORIZACION'
      Size = 2
    end
    object TEstatusProcesosDetalleSTOREPROC: TIBStringField
      FieldName = 'STOREPROC'
      Size = 50
    end
  end
  object dsEstatusProcesosDetalle: TDataSource
    DataSet = TEstatusProcesosDetalle
    Left = 384
    Top = 367
  end
  object spEstatus: TIBStoredProc
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    Left = 416
    Top = 367
  end
end
