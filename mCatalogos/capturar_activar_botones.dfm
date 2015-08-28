object frmCapturar_activar_botones: TfrmCapturar_activar_botones
  Left = 462
  Top = 119
  Caption = 'Activar Botones'
  ClientHeight = 277
  ClientWidth = 202
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object dgBotones: TDBGrid
    Left = 0
    Top = 0
    Width = 202
    Height = 277
    Align = alClient
    DataSource = dsBotones
    PopupMenu = ppMenu
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object dsBotones: TDataSource
    DataSet = qyBotones
    Left = 104
    Top = 192
  end
  object qyBotones: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT *'
      'FROM VER_USUARIOS_BOTONES(:P_FORMA, :P_USUARIO)')
    Left = 72
    Top = 192
    ParamData = <
      item
        DataType = ftString
        Name = 'P_FORMA'
        ParamType = ptUnknown
        Value = 'frmExplorar_monedas'
      end
      item
        DataType = ftString
        Name = 'P_USUARIO'
        ParamType = ptUnknown
        Value = '4'
      end>
    object qyBotonesID: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ID'
      ReadOnly = True
    end
    object qyBotonesR_ACTIVO: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_ACTIVO'
      ReadOnly = True
      Size = 2
    end
    object qyBotonesR_NOMBRE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_NOMBRE'
      ReadOnly = True
      Size = 50
    end
  end
  object TFormas_botones_usuarios: TIBTable
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    AfterPost = TFormas_botones_usuariosAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    IndexFieldNames = 'ID'
    MasterFields = 'ID'
    MasterSource = dsBotones
    TableName = 'FORMAS_BOTONES_USUARIOS'
    UniDirectional = False
    Left = 40
    Top = 192
    object TFormas_botones_usuariosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object TFormas_botones_usuariosMENU_USUARIO: TIntegerField
      FieldName = 'MENU_USUARIO'
    end
    object TFormas_botones_usuariosFORMA_BOTON: TIntegerField
      FieldName = 'FORMA_BOTON'
    end
    object TFormas_botones_usuariosACTIVO: TIBStringField
      FieldName = 'ACTIVO'
      Size = 2
    end
  end
  object ppMenu: TPopupMenu
    OnPopup = ppMenuPopup
    Left = 136
    Top = 192
    object mmActivar: TMenuItem
      Caption = 'Activar'
      Checked = True
      OnClick = mmActivarClick
    end
  end
end
