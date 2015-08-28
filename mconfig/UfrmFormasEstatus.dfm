object frmFormasEstatus: TfrmFormasEstatus
  Left = 67
  Top = 21
  Caption = 'Formas-Estatus'
  ClientHeight = 631
  ClientWidth = 932
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object paEncabezado: TPanel
    Left = 0
    Top = 0
    Width = 932
    Height = 52
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 940
    object Bevel1: TBevel
      Left = 0
      Top = 0
      Width = 940
      Height = 52
      Align = alClient
      Shape = bsBottomLine
    end
    object Label1: TLabel
      Left = 8
      Top = 4
      Width = 29
      Height = 13
      Caption = 'Forma'
      Transparent = True
    end
    object Label2: TLabel
      Left = 229
      Top = 4
      Width = 54
      Height = 13
      Caption = 'Num.Forma'
      Transparent = True
    end
    object Label3: TLabel
      Left = 303
      Top = 4
      Width = 60
      Height = 13
      Caption = 'Num.Estatus'
      Transparent = True
    end
    object buGenerar: TBitBtn
      Left = 380
      Top = 6
      Width = 79
      Height = 39
      Caption = 'Generar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = buGenerarClick
    end
    object deNombre: TEdit
      Left = 8
      Top = 20
      Width = 217
      Height = 21
      MaxLength = 50
      TabOrder = 0
    end
    object ceNumero: TEdit
      Left = 229
      Top = 20
      Width = 70
      Height = 21
      TabOrder = 1
    end
    object ceEstatus: TEdit
      Left = 303
      Top = 20
      Width = 70
      Height = 21
      TabOrder = 2
    end
  end
  object paDetalle: TPanel
    Left = 0
    Top = 52
    Width = 932
    Height = 579
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitWidth = 940
    ExplicitHeight = 584
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 940
      Height = 208
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Panel1'
      TabOrder = 0
      object Panel2: TPanel
        Left = 848
        Top = 0
        Width = 92
        Height = 208
        Align = alRight
        BevelOuter = bvNone
        Color = clInfoBk
        TabOrder = 0
        object ibNuevoEstatus: TBitBtn
          Left = 7
          Top = 8
          Width = 79
          Height = 39
          Caption = 'Nuevo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnClick = ibNuevoEstatusClick
        end
        object ibGuardarEstatus: TBitBtn
          Left = 7
          Top = 48
          Width = 79
          Height = 39
          Caption = 'Guardar'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = ibGuardarEstatusClick
        end
        object ibCancelarEstatus: TBitBtn
          Left = 7
          Top = 88
          Width = 79
          Height = 39
          Caption = 'Cancelar'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnClick = ibCancelarEstatusClick
        end
      end
      object paEstatus: TPanel
        Left = 521
        Top = 0
        Width = 327
        Height = 208
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 1
        object Label5: TLabel
          Left = 0
          Top = 0
          Width = 45
          Height = 16
          Align = alTop
          Alignment = taCenter
          Caption = 'Estatus'
          Color = 12166974
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object dgEstatus: TDBGrid
          Left = 0
          Top = 16
          Width = 327
          Height = 192
          Align = alClient
          DataSource = dsEstatus
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'ESTATUS'
              Title.Caption = 'Estatus'
              Visible = True
            end
            item
              Expanded = False
              Title.Caption = 'E'
              Visible = True
            end>
        end
      end
      object paFormas: TPanel
        Left = 0
        Top = 0
        Width = 521
        Height = 208
        Align = alClient
        BevelOuter = bvNone
        Caption = 'paFormas'
        TabOrder = 2
        object Label7: TLabel
          Left = 0
          Top = 0
          Width = 44
          Height = 16
          Align = alTop
          Alignment = taCenter
          Caption = 'Formas'
          Color = clHighlight
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object dxDBGrid1: TDBGrid
          Left = 0
          Top = 16
          Width = 521
          Height = 192
          Align = alClient
          DataSource = dsFormas
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'NOMBRE'
              Title.Caption = 'Nombre'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FORMA'
              Title.Caption = 'Identificador'
              Visible = True
            end
            item
              Expanded = False
              Title.Caption = 'E'
              Visible = True
            end>
        end
      end
    end
    object Panel3: TPanel
      Left = 0
      Top = 208
      Width = 940
      Height = 376
      Align = alClient
      BevelOuter = bvNone
      Caption = 'Panel3'
      TabOrder = 1
      object Label6: TLabel
        Left = 0
        Top = 0
        Width = 59
        Height = 16
        Align = alTop
        Alignment = taCenter
        Caption = 'Cambiar a'
        Color = 12166974
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Panel4: TPanel
        Left = 848
        Top = 16
        Width = 92
        Height = 360
        Align = alRight
        BevelOuter = bvNone
        Color = clInfoBk
        TabOrder = 0
        object ibNuevoEValido: TBitBtn
          Left = 7
          Top = 8
          Width = 79
          Height = 39
          Caption = 'Nuevo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnClick = ibNuevoEValidoClick
        end
        object ibGuardarEValido: TBitBtn
          Left = 7
          Top = 48
          Width = 79
          Height = 39
          Caption = 'Guardar'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = fcImageBtn5Click
        end
        object ibCancelarEValido: TBitBtn
          Left = 7
          Top = 88
          Width = 79
          Height = 39
          Caption = 'Cancelar'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnClick = fcImageBtn6Click
        end
      end
      object dgDetalle: TDBGrid
        Left = 0
        Top = 16
        Width = 848
        Height = 360
        Align = alClient
        DataSource = dsEstatusDet
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
  end
  object qyFormas: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT NOMBRE, FORMA'
      'FROM ESTATUS_PROCESOS'
      'GROUP BY NOMBRE, FORMA'
      'ORDER BY FORMA')
    Left = 152
    Top = 80
    object qyFormasNOMBRE: TIBStringField
      FieldName = 'NOMBRE'
      Size = 50
    end
    object qyFormasFORMA: TIntegerField
      FieldName = 'FORMA'
    end
  end
  object dsFormas: TDataSource
    DataSet = qyFormas
    Left = 184
    Top = 80
  end
  object spGENERAR_FORMA: TIBStoredProc
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    StoredProcName = 'GENERAR_FORMA'
    Left = 152
    Top = 112
    ParamData = <
      item
        DataType = ftString
        Name = 'P_NOMBRE'
        ParamType = ptInput
        Value = 'Ninguno'
      end
      item
        DataType = ftInteger
        Name = 'P_FORMA'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = 'P_NUMERO'
        ParamType = ptInput
        Value = '0'
      end>
  end
  object spDEL_FORMA: TIBStoredProc
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    StoredProcName = 'DEL_FORMA'
    Left = 152
    Top = 144
    ParamData = <
      item
        DataType = ftInteger
        Name = 'P_FORMA'
        ParamType = ptInput
        Value = '0'
      end>
  end
  object qyEstatus: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    AfterPost = qyEstatusAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = dsFormas
    ParamCheck = True
    SQL.Strings = (
      'SELECT *'
      'FROM ESTATUS_PROCESOS'
      'WHERE FORMA = :FORMA'
      'ORDER BY ID')
    UpdateObject = sqlEstatus
    Left = 400
    Top = 152
    ParamData = <
      item
        DataType = ftInteger
        Name = 'FORMA'
        ParamType = ptUnknown
      end>
    object qyEstatusID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qyEstatusESTATUS: TIBStringField
      FieldName = 'ESTATUS'
    end
    object qyEstatusNOMBRE: TIBStringField
      FieldName = 'NOMBRE'
      Size = 50
    end
    object qyEstatusFORMA: TIntegerField
      FieldName = 'FORMA'
    end
  end
  object dsEstatus: TDataSource
    DataSet = qyEstatus
    OnDataChange = dsEstatusDataChange
    Left = 432
    Top = 152
  end
  object sqlEstatus: TIBUpdateSQL
    ModifySQL.Strings = (
      'UPDATE ESTATUS_PROCESOS'
      'SET ESTATUS = :ESTATUS'
      'WHERE ID = :ID')
    InsertSQL.Strings = (
      'INSERT INTO ESTATUS_PROCESOS(ID, NOMBRE, FORMA, ESTATUS)'
      'VALUES(:ID, :NOMBRE, :FORMA, :ESTATUS);'
      '')
    DeleteSQL.Strings = (
      'DELETE FROM ESTATUS_PROCESOS'
      'WHERE ID = :ID')
    Left = 400
    Top = 184
  end
  object spID: TIBStoredProc
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    StoredProcName = 'ID'
    Left = 432
    Top = 184
    ParamData = <
      item
        DataType = ftInteger
        Name = 'R_ID'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'P_QUIEN'
        ParamType = ptInput
        Value = 'ESTATUS'
      end>
  end
  object qyEstatusDet: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    AfterPost = qyEstatusDetAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = dsEstatus
    ParamCheck = True
    SQL.Strings = (
      'SELECT *'
      
        'FROM ESTATUS_PROCESOS_DET D LEFT JOIN SUJETOS_USUARIOS U ON D.US' +
        'UARIO = U.ID'
      
        '                                                               L' +
        'EFT JOIN SUJETOS S ON U.SUJETO = S.ID'
      'WHERE D.PROCESO = :ID'
      'ORDER BY D.ID')
    UpdateObject = sqlEstatusValidos
    Left = 424
    Top = 416
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptUnknown
      end>
    object qyEstatusDetID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qyEstatusDetPROCESO: TIntegerField
      FieldName = 'PROCESO'
      Required = True
    end
    object qyEstatusDetESTATUS: TIBStringField
      FieldName = 'ESTATUS'
      Required = True
    end
    object qyEstatusDetAUTORIZACION: TIBStringField
      FieldName = 'AUTORIZACION'
      Size = 2
    end
    object qyEstatusDetSTOREPROC: TIBStringField
      FieldName = 'STOREPROC'
      Size = 50
    end
    object qyEstatusDetNIVEL: TIntegerField
      FieldName = 'NIVEL'
      Origin = 'ESTATUS_PROCESOS_DET.NIVEL'
    end
    object qyEstatusDetVER: TIBStringField
      FieldName = 'VER'
      Origin = 'ESTATUS_PROCESOS_DET.VER'
      FixedChar = True
      Size = 2
    end
    object qyEstatusDetCORREO: TIBStringField
      FieldName = 'CORREO'
      Origin = 'ESTATUS_PROCESOS_DET.CORREO'
      FixedChar = True
      Size = 2
    end
    object qyEstatusDetASUNTO: TIBStringField
      FieldName = 'ASUNTO'
      Origin = 'ESTATUS_PROCESOS_DET.ASUNTO'
      Size = 100
    end
    object qyEstatusDetORDEN: TIntegerField
      FieldName = 'ORDEN'
      Origin = 'ESTATUS_PROCESOS_DET.ORDEN'
    end
    object qyEstatusDetUSUARIO: TIntegerField
      FieldName = 'USUARIO'
      Origin = 'ESTATUS_PROCESOS_DET.USUARIO'
    end
    object qyEstatusDetNOMBRE: TIBStringField
      FieldName = 'NOMBRE'
      Origin = 'SUJETOS.NOMBRE'
      Size = 100
    end
    object qyEstatusDetIMPRIMIR: TIBStringField
      FieldName = 'IMPRIMIR'
      Origin = 'ESTATUS_PROCESOS_DET.IMPRIMIR'
      FixedChar = True
      Size = 2
    end
  end
  object dsEstatusDet: TDataSource
    DataSet = qyEstatusDet
    OnDataChange = dsEstatusDetDataChange
    Left = 456
    Top = 416
  end
  object spIDDetalle: TIBStoredProc
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    StoredProcName = 'ID'
    Left = 456
    Top = 448
    ParamData = <
      item
        DataType = ftInteger
        Name = 'R_ID'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'P_QUIEN'
        ParamType = ptInput
        Value = 'ESTATUS_DETALLE'
      end>
  end
  object sqlEstatusValidos: TIBUpdateSQL
    ModifySQL.Strings = (
      'UPDATE ESTATUS_PROCESOS_DET'
      'SET ESTATUS      = :ESTATUS,'
      '    AUTORIZACION = :AUTORIZACION,'
      '    STOREPROC    = :STOREPROC,'
      '    NIVEL        = :NIVEL,'
      '    VER          = :VER,'
      '    CORREO       = :CORREO, '
      '    ASUNTO       = :ASUNTO,'
      '    ORDEN        = :ORDEN,'
      '    USUARIO      = :USUARIO,'
      '    IMPRIMIR = :IMPRIMIR'
      'WHERE ID = :ID'
      ''
      ' '
      ' ')
    InsertSQL.Strings = (
      
        'INSERT INTO ESTATUS_PROCESOS_DET(ID, PROCESO, ESTATUS, AUTORIZAC' +
        'ION, STOREPROC, NIVEL, VER, CORREO, ASUNTO, ORDEN, IMPRIMIR)'
      
        'VALUES(:ID, :PROCESO, :ESTATUS, :AUTORIZACION, :STOREPROC, :NIVE' +
        'L, :VER, :CORREO, :ASUNTO, :ORDEN, :IMPRIMIR)')
    DeleteSQL.Strings = (
      'DELETE FROM ESTATUS_PROCESOS_DET'
      'WHERE ID = :ID')
    Left = 424
    Top = 448
  end
end
