object frmDiccionario: TfrmDiccionario
  Left = 323
  Top = 42
  Caption = 'Diccionario'
  ClientHeight = 461
  ClientWidth = 854
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
  object paDescripciones: TPanel
    Left = 0
    Top = 321
    Width = 854
    Height = 140
    Align = alBottom
    BevelOuter = bvNone
    BorderWidth = 4
    Color = clWhite
    TabOrder = 0
    ExplicitTop = 309
    ExplicitWidth = 1363
    object Label1: TLabel
      Left = 4
      Top = 4
      Width = 1355
      Height = 20
      Align = alTop
      AutoSize = False
      Caption = 'Definicion'
      Transparent = True
      Layout = tlCenter
    end
    object Label2: TLabel
      Left = 4
      Top = 73
      Width = 1355
      Height = 20
      Align = alTop
      AutoSize = False
      Caption = 'Mensaje'
      Transparent = True
      Layout = tlCenter
    end
    object meDefinicion: TMemo
      Left = 4
      Top = 24
      Width = 1355
      Height = 49
      Align = alTop
      Enabled = False
      TabOrder = 0
    end
    object meMensaje: TMemo
      Left = 4
      Top = 93
      Width = 1355
      Height = 41
      Align = alTop
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 854
    Height = 61
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitWidth = 1363
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 1363
      Height = 21
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Diccionario'
      Color = 12615680
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object buGuardar: TBitBtn
      Left = 8
      Top = 24
      Width = 121
      Height = 33
      Caption = '&Guardar'
      TabOrder = 1
    end
    object buSeleccionados: TBitBtn
      Left = 132
      Top = 24
      Width = 121
      Height = 33
      Caption = 'Generar &Seleccionados'
      TabOrder = 2
    end
    object buTodos: TBitBtn
      Left = 256
      Top = 24
      Width = 121
      Height = 33
      Caption = 'Generar &Todos'
      TabOrder = 3
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 61
    Width = 854
    Height = 58
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 2
    ExplicitWidth = 1363
    object Bevel1: TBevel
      Left = 120
      Top = 4
      Width = 510
      Height = 22
    end
    object Label3: TLabel
      Left = 34
      Top = 6
      Width = 81
      Height = 16
      Caption = 'Base de Datos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 7
      Top = 32
      Width = 108
      Height = 16
      Caption = 'Archivo Diccionario'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object laBase: TLabel
      Left = 123
      Top = 7
      Width = 93
      Height = 14
      Caption = 'ruta\nombre.awr'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object edDiccionario: TEdit
      Left = 120
      Top = 29
      Width = 510
      Height = 22
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = 'ruta\diccionario.ini'
    end
    object buConectar: TBitBtn
      Left = 635
      Top = 3
      Width = 75
      Height = 25
      Caption = 'Conectar'
      TabOrder = 1
    end
    object buBuscar: TBitBtn
      Left = 635
      Top = 28
      Width = 75
      Height = 25
      Caption = 'Buscar'
      TabOrder = 2
    end
  end
  object Q1: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT RC.RDB$CONSTRAINT_NAME as Nombre,'
      '  RC.RDB$CONSTRAINT_TYPE as Tipo,'
      '  RC.RDB$RELATION_NAME as Tabla,'
      '  CC.RDB$TRIGGER_NAME as Campo,'
      '  RC.RDB$INDEX_NAME as Indice,'
      '  T.RDB$TRIGGER_SOURCE as Definicion'
      'FROM RDB$CHECK_CONSTRAINTS CC'
      '  RIGHT JOIN RDB$RELATION_CONSTRAINTS RC'
      '    ON CC.RDB$CONSTRAINT_NAME = RC.RDB$CONSTRAINT_NAME'
      '  LEFT JOIN RDB$TRIGGERS T'
      '    ON CC.RDB$TRIGGER_NAME = T.RDB$TRIGGER_NAME'
      'ORDER BY RC.RDB$CONSTRAINT_TYPE, RC.RDB$CONSTRAINT_NAME')
    UniDirectional = True
    Left = 222
    Top = 236
  end
  object q2: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT RC.RDB$RELATION_NAME as Tabla,'
      '  S.RDB$FIELD_NAME as Campo'
      'FROM RDB$RELATION_CONSTRAINTS RC'
      '  INNER JOIN RDB$INDEX_SEGMENTS S'
      '    ON RC.RDB$INDEX_NAME = S.RDB$INDEX_NAME'
      'WHERE RC.RDB$INDEX_NAME = :Indice'
      'ORDER BY S.RDB$FIELD_POSITION')
    Left = 252
    Top = 236
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Indice'
        ParamType = ptUnknown
      end>
  end
  object q3: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT RC.RDB$CONSTRAINT_NAME as NombreFK,'
      '  RC.RDB$CONST_NAME_UQ as ConstrRef,'
      '  RELC.RDB$RELATION_NAME as TablaRef,'
      '  RELC.RDB$INDEX_NAME as IndiceRef,'
      '  IND.RDB$FIELD_NAME as CampoRef'
      'FROM RDB$REF_CONSTRAINTS RC'
      '  LEFT JOIN RDB$RELATION_CONSTRAINTS RELC'
      '    ON RC.RDB$CONST_NAME_UQ = RELC.RDB$CONSTRAINT_NAME'
      '  LEFT JOIN RDB$INDEX_SEGMENTS IND'
      '    ON RELC.RDB$INDEX_NAME = IND.RDB$INDEX_NAME'
      'WHERE RC.RDB$CONSTRAINT_NAME = :FK'
      'ORDER BY IND.RDB$FIELD_POSITION')
    Left = 283
    Top = 236
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'FK'
        ParamType = ptUnknown
      end>
  end
  object OpenDialog2: TOpenDialog
    DefaultExt = 'ini'
    Filter = 
      'Diccionarios de mensajes (*.ini)|*.ini|Todos los archivos (*.*)|' +
      '*.*'
    Left = 590
    Top = 28
  end
end
