object dmIBModulo: TdmIBModulo
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 450
  Width = 638
  object ibInformar: TIBDatabase
    DatabaseName = 'C:\empresas\Ancora\Data\INFORMAR.AWR'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = ibInformarTransaccion
    ServerType = 'IBServer'
    SQLDialect = 1
    Left = 40
    Top = 8
  end
  object ibSistema: TIBDatabase
    DatabaseName = '192.168.44.129:D:\EMPRESAS\APM\SISTEMA.AWR'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = ibSistemaTransaccion
    ServerType = 'IBServer'
    SQLDialect = 1
    Left = 168
    Top = 8
  end
  object ibInformarTransaccion: TIBTransaction
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 40
    Top = 65
  end
  object ibSistemaTransaccion: TIBTransaction
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 168
    Top = 65
  end
  object ibInterEmpresas: TIBDatabase
    DatabaseName = 'D:\Proyecto (apm)\Bases\InterEmpresas.AWR'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=senior')
    LoginPrompt = False
    DefaultTransaction = ibInterEmpresasTransaccion
    ServerType = 'IBServer'
    SQLDialect = 1
    Left = 304
    Top = 8
  end
  object ibInterEmpresasTransaccion: TIBTransaction
    Left = 304
    Top = 65
  end
  object IBQuery1: TIBQuery
    Database = ibSistema
    Transaction = ibSistemaTransaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT *'
      'FROM CODIGOS_CAJON')
    Left = 40
    Top = 144
  end
end
