object frmSeleccionarTEntrega: TfrmSeleccionarTEntrega
  Left = 405
  Top = 75
  Caption = 'Seleccionar Tiempos de Entrega'
  ClientHeight = 507
  ClientWidth = 672
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object paBusqueda: TPanel
    Left = 0
    Top = 0
    Width = 672
    Height = 52
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Seleccion'
    Color = 12505816
    TabOrder = 0
    ExplicitWidth = 680
    object buBusqueda: TBitBtn
      Left = 4
      Top = 22
      Width = 188
      Height = 27
      Caption = 'E.DESCRIPCION'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        42020000424D4202000000000000420000002800000010000000100000000100
        1000030000000002000000000000000000000000000000000000007C0000E003
        00001F0000001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7CFF7FFF7F1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7CFF7FFF7FFF7FFF7FFF7F00000000FF7FFF7FFF7FFF7F
        FF7F1F7C1F7C1F7CFF7F00000000000000000000FF7F18630000000000000000
        0000FF7F1F7C1F7C1F7CFF7F1042FF7FFF7FFF7FFF7FFF7F1863FF7F18630000
        FF7F1F7C1F7C1F7C1F7C1F7CFF7F1042FF7FFF7FFF7F1863FF7F18630000FF7F
        1F7C1F7C1F7C1F7CFF7FFF7FFF7F1042FF7FFF7FFF7FFF7F1863FF7F0000FF7F
        FF7FFF7F1F7CFF7F00000000FF7F1042FF7FFF7FFF7F1863FF7F18630000FF7F
        00000000FF7F1F7CFF7FFF7FFF7F1042FF7FFF7FFF7FFF7F1863FF7F0000FF7F
        FF7FFF7F1F7C1F7C1F7C1F7C1F7CFF7F1042FF7FFF7F1863FF7F0000FF7F1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7CFF7FE0031042186318630000E003FF7F1F7C
        1F7C1F7C1F7C1F7C1F7C1F7CFF7F0000FF7FFF7F10420000FF7FFF7F0000FF7F
        1F7C1F7C1F7C1F7C1F7CFF7F0000FF7F1F7CFF7F10420000FF7F1F7CFF7F0000
        FF7F1F7C1F7C1F7C1F7CFF7FFF7F1F7C1F7C1F7CFF7FFF7F1F7C1F7C1F7CFF7F
        FF7F1F7C1F7C}
      ParentFont = False
      Spacing = 9
      TabOrder = 3
      OnClick = buBusquedaClick
    end
    object buEjecutar: TBitBtn
      Left = 339
      Top = 20
      Width = 68
      Height = 31
      Caption = '&Ejecutar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000130B0000130B00000001000000010000F0F0F0000E10
        100000000000B2B2B200303030008D9E8F00C4E9CC0028292900A1A1A1005151
        5100748D77009CD5A3008CBE8C0040404000818181006061600037373700AFD7
        B20080B68000415A4000C1C1C100B7E0BD0062756400D0D0D0002020200078AD
        72009BC29E0066A56500569B4F003F793300171A1B0048484700E1E1E1007070
        7000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000B0B0B0E0208
        0B0B0B0B0B0B0B0B0B0B0B0B0B210A07080B0B0B0B0B0B0B0B0B0B0B0B201E15
        07030B0B0B0B0B0B0B0B0B0B0B0B090C1A1E170B0B0B0B0B0B0B0B0B0B0B141F
        061D1E170B0B0B0B0B0B0B0B0B0B0B18110C1D1E170B0B0B0B0B0B0B0B0B0B08
        0F151C1D1E170B0B0B0B040202020202011C1C1C1D1E170B0B0B00181A060C12
        19191B1B1C1D1E170B0B0B171811150C1219190C06061A04000B0B0B14071515
        0C1216020202020204000B0B0B081006110C12130F0B0B0B0B0B0B0B0B0B0F09
        060B0C0C0D0F0B0B0B0B0B0B0B0B0B090A060B0C0C0D0E0B0B0B0B0B0B0B0B00
        04050606060607080B0B0B0B0B0B0B0B0001020202020202030B}
      ParentFont = False
      TabOrder = 1
      OnClick = buEjecutarClick
    end
    object buTodos: TBitBtn
      Left = 409
      Top = 20
      Width = 68
      Height = 31
      Caption = '&Todos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = buTodosClick
    end
    object edDato: TEdit
      Left = 195
      Top = 25
      Width = 141
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
      OnKeyPress = edDatoKeyPress
    end
  end
  object dgExplorar: TDBGrid
    Left = 0
    Top = 52
    Width = 672
    Height = 433
    Align = alClient
    Color = clInfoBk
    DataSource = dsBusqueda
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnKeyUp = dgExplorarKeyUp
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 52
    Width = 672
    Height = 433
    Align = alClient
    Color = clInfoBk
    DataSource = dsBusqueda
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnKeyUp = dgExplorarKeyUp
  end
  object Panel2: TPanel
    Left = 0
    Top = 485
    Width = 672
    Height = 22
    Align = alBottom
    TabOrder = 3
    ExplicitTop = 490
    ExplicitWidth = 680
    object buInicio: TBitBtn
      Left = 94
      Top = 2
      Width = 26
      Height = 18
      Glyph.Data = {
        9A020000424D9A02000000000000360000002800000016000000090000000100
        18000000000064020000C21E0000C21E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000
        00848284FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF848284000000FFFFFFC6
        D0F4848284FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF848284848284FFFFFF
        0000000000848284FFFFFFFFFFFFFFFFFFFFFFFF848284000000000000000000
        FFFFFFC6D0F4848284FFFFFFFFFFFFFFFFFFFFFFFF848284848284C6D0F48482
        84FFFFFF0000000000848284FFFFFFFFFFFF8482840000000000000000000000
        00000000FFFFFFC6D0F4848284FFFFFFFFFFFF848284848284C6D0F4C6D0F4C6
        D0F4848284FFFFFF000000000084828484828400000000000000000000000000
        0000000000000000FFFFFFC6D0F4848284848284848284C6D0F4C6D0F4C6D0F4
        C6D0F4C6D0F4848284FFFFFF0000000000848284FFFFFFFFFFFF848284000000
        000000000000000000000000FFFFFFC6D0F4848284FFFFFFFFFFFFC6D0F4C6D0
        F4C6D0F4C6D0F4C6D0F4848284FFFFFF0000000000848284FFFFFFFFFFFFFFFF
        FFFFFFFF848284000000000000000000FFFFFFC6D0F4848284FFFFFFFFFFFFFF
        FFFFFFFFFFC6D0F4C6D0F4C6D0F4848284FFFFFF0000000000848284FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF848284000000FFFFFFC6D0F4848284FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6D0F4848284FFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
      TabOrder = 0
    end
    object buAnterior: TBitBtn
      Left = 123
      Top = 2
      Width = 26
      Height = 18
      Glyph.Data = {
        2E020000424D2E02000000000000360000002800000012000000090000000100
        180000000000F8010000C21E0000C21E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF848284000040FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF84
        8284848284FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF84828400004000004000
        0040FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF848284848284C6D0F4848284FFFFFF
        0000FFFFFFFFFFFF848284000040000040000040000040000040FFFFFFFFFFFF
        FFFFFF848284848284C6D0F4C6D0F4C6D0F4848284FFFFFF0000848284000040
        000040000040000040000040000040000040FFFFFF848284848284C6D0F4C6D0
        F4C6D0F4C6D0F4C6D0F4848284FFFFFF0000FFFFFFFFFFFF8482840000400000
        40000040000040000040FFFFFFFFFFFFFFFFFFC6D0F4C6D0F4C6D0F4C6D0F4C6
        D0F4848284FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF84828400004000004000
        0040FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6D0F4C6D0F4C6D0F4848284FFFFFF
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF848284000040FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6D0F4848284FFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
      NumGlyphs = 2
      TabOrder = 1
    end
    object buFin: TBitBtn
      Left = 180
      Top = 2
      Width = 26
      Height = 18
      Glyph.Data = {
        9A020000424D9A02000000000000360000002800000016000000090000000100
        18000000000064020000C21E0000C21E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
        FF000000848284FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF848284000000FF
        FFFF848284C6D0F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF848284C6D0F4
        0000FFFFFF000000000000000000848284FFFFFFFFFFFFFFFFFFFFFFFF848284
        000000FFFFFF848284C6D0F4C6D0F4C6D0F4FFFFFFFFFFFFFFFFFFFFFFFF8482
        84C6D0F40000FFFFFF000000000000000000000000000000848284FFFFFFFFFF
        FF848284000000FFFFFF848284C6D0F4C6D0F4C6D0F4C6D0F4C6D0F4FFFFFFFF
        FFFF848284C6D0F40000FFFFFF00000000000000000000000000000000000000
        0000848284848284000000FFFFFF848284C6D0F4C6D0F4C6D0F4C6D0F4C6D0F4
        848284848284848284C6D0F40000FFFFFF000000000000000000000000000000
        848284FFFFFFFFFFFF848284000000FFFFFF848284C6D0F4C6D0F4C6D0F48482
        84848284FFFFFFFFFFFF848284C6D0F40000FFFFFF0000000000000000008482
        84FFFFFFFFFFFFFFFFFFFFFFFF848284000000FFFFFF848284C6D0F484828484
        8284FFFFFFFFFFFFFFFFFFFFFFFF848284C6D0F40000FFFFFF000000848284FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF848284000000FFFFFF848284848284
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF848284C6D0F40000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
      TabOrder = 2
    end
    object buSiguiente: TBitBtn
      Left = 151
      Top = 2
      Width = 26
      Height = 18
      Glyph.Data = {
        2E020000424D2E02000000000000360000002800000012000000090000000100
        180000000000F8010000C21E0000C21E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFF000040848284FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF848284C6D0F4FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFF000040000040000040848284FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF848284C6D0F4C6D0F4C6D0F4FFFFFFFFFFFFFFFFFFFFFFFF
        0000FFFFFF000040000040000040000040000040848284FFFFFFFFFFFFFFFFFF
        848284C6D0F4C6D0F4C6D0F4C6D0F4C6D0F4FFFFFFFFFFFF0000FFFFFF000040
        000040000040000040000040000040000040848284FFFFFF848284C6D0F4C6D0
        F4C6D0F4C6D0F4C6D0F48482848482840000FFFFFF0000400000400000400000
        40000040848284FFFFFFFFFFFFFFFFFF848284C6D0F4C6D0F4C6D0F484828484
        8284FFFFFFFFFFFF0000FFFFFF000040000040000040848284FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF848284C6D0F4848284848284FFFFFFFFFFFFFFFFFFFFFFFF
        0000FFFFFF000040848284FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        848284848284FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
      NumGlyphs = 2
      TabOrder = 3
    end
    object ibSalir: TBitBtn
      Left = 212
      Top = 2
      Width = 36
      Height = 18
      Glyph.Data = {
        5E060000424D5E06000000000000360400002800000017000000170000000100
        08000000000028020000C21E0000C21E00000001000000000000FFFFFF00F3FA
        FF00F2F4FD00EEF1FC00EAEDFC00E4E9FC00DDE4FB00D9DEFA00D4DCFA00B9C4
        F500B5C1F500ACBBF400A2B8F600A4B3F2009FB3F4009AACF20096A8F10092A5
        F00091A3EF008FA9F4008AA5F3008EA1EF008B9FEF00859AEE008196ED007C93
        ED00788DEC00758DEB006E90F000658BF1006F88EB006B84EA006681EA005D81
        EE00647DE9005E79E8005A75E8005B75E7005772E8005571E700516EE7004D75
        EC00496CE8004C6AE6004967E5004569E7004463E5004D67D100405FE400445F
        CB004A61BC00445CB9003D6BEC003C64E6003361E9003B5DE300345AE4003256
        E2002C5CE9002D5AE6002D53E2002658E8002553E6002A4FE100244CE2003052
        DC002D51DC002750DC002A4EDB00234DDD002046DF002949CB002748CD002244
        CA002142C7001A51EA001750EA001B4DE400124BE900164AE4001245E1000D46
        E8000B41E4001F4DDF001D44DD001C41CB003F56B000063CE200183ED500143D
        DE00153CD6001A3DC600143DCF001437C5000F3BD0000E37DB000A32D1000337
        DF000032D7000E39CD000937CF000E32C3000432CF00012FCD00002BC5001A36
        A9001433AA001532A700102FA800112EA4000F30AB000025B2000A2CAB000C2A
        A3000629AC000225AA000021A200000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000FFFFFF00000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000003371716D6D6D6C707072737373560000000000000000003165
        5B554A495555555C636366676F5600000000000000005F543C393738383B3C3E
        4D4F525767730000000000000000594038372E230E010113344B515266730000
        00000000000054392E2B00020B35350C02004E51647200000000000000004637
        2B1F03192B35353A1C02364F5E70000000000000000040372B0B0D2B2B00003A
        3D0E144D5C700000000000000000392B2600282B2B00003C3E3E024D556A0000
        00000000000039282400282B2C00003C3E400140496A00000000000000003723
        22090D2B2C00003C400F103F4869000000000000000037221F18041A2C30373C
        20032B3C476900000000000000002E1F1F1F00040D2E371003003C3C47690000
        0000000000002B19171B20190A00000D222E3739496B00000000000000002716
        15181E1F22232327272B2E37496B00000000000000001B19171B1F2222242428
        282B37395B320000000000000000001B282B2E37373737393C3C40542F000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000}
      TabOrder = 4
    end
    object deID: TDBEdit
      Left = 1
      Top = 2
      Width = 88
      Height = 18
      BorderStyle = bsNone
      Enabled = False
      TabOrder = 5
    end
  end
  object IBDatabase1: TIBDatabase
    DatabaseName = 'D:\Projects\D_L_APM\apm\Bases\SISTEMA.AWR'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = IBTransaction1
    ServerType = 'IBServer'
    SQLDialect = 1
    Left = 112
    Top = 224
  end
  object IBTransaction1: TIBTransaction
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 112
    Top = 256
  end
  object qyBusqueda: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      
        'SELECT E.ID ID, E.DESCRIPCION DESCRIPCION, E.PESO PESO, E.TARIFA' +
        ','
      '       U.CLAVE UNIDAD,'
      '       M.CLAVE MONEDA,'
      '       S.NOMBRE TRANSPORTISTA'
      'FROM TIEMPOS_DE_ENTREGA E LEFT JOIN MONEDAS M ON E.MONEDA = M.ID'
      
        '                          LEFT JOIN SUJETOS_TRANSPORTISTAS T ON ' +
        ' E.TRANSPORTISTA = T.ID'
      '                          LEFT JOIN SUJETOS S ON T.SUJETO = S.ID'
      
        '                          LEFT JOIN UNIDADES U ON E.UNIDAD = U.I' +
        'D'
      'WHERE (E.ID = 0)')
    Left = 208
    Top = 224
    object qyBusquedaID: TIntegerField
      FieldName = 'ID'
      Origin = 'TIEMPOS_DE_ENTREGA.ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qyBusquedaDESCRIPCION: TIBStringField
      FieldName = 'DESCRIPCION'
      Origin = 'TIEMPOS_DE_ENTREGA.DESCRIPCION'
      Size = 50
    end
    object qyBusquedaPESO: TFloatField
      FieldName = 'PESO'
      Origin = 'TIEMPOS_DE_ENTREGA.PESO'
    end
    object qyBusquedaTARIFA: TFloatField
      FieldName = 'TARIFA'
      Origin = 'TIEMPOS_DE_ENTREGA.TARIFA'
      DisplayFormat = '###,###,##0.00'
    end
    object qyBusquedaUNIDAD: TIBStringField
      FieldName = 'UNIDAD'
      Origin = 'UNIDADES.CLAVE'
      Size = 10
    end
    object qyBusquedaMONEDA: TIBStringField
      FieldName = 'MONEDA'
      Origin = 'MONEDAS.CLAVE'
      Size = 10
    end
    object qyBusquedaTRANSPORTISTA: TIBStringField
      FieldName = 'TRANSPORTISTA'
      Origin = 'SUJETOS.NOMBRE'
      Size = 100
    end
  end
  object dsBusqueda: TDataSource
    DataSet = qyBusqueda
    Left = 208
    Top = 256
  end
  object pmCampos: TPopupMenu
    Left = 256
    Top = 224
    object itemID: TMenuItem
      Caption = 'ID'
      OnClick = itemIDClick
    end
    object itemDESCRIPCION: TMenuItem
      Caption = 'DESCRIPCION'
      OnClick = itemDESCRIPCIONClick
    end
    object itemTRANSPORTISTA: TMenuItem
      Caption = 'TRANSPORTISTA'
      OnClick = itemTRANSPORTISTAClick
    end
  end
  object spA_Z_TE: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'A_Z_TE'
    Left = 208
    Top = 296
    ParamData = <
      item
        DataType = ftInteger
        Name = 'P_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'P_TE'
        ParamType = ptInput
      end>
  end
end
