object frmAltaRapidaMateriales: TfrmAltaRapidaMateriales
  Left = 313
  Top = 90
  ActiveControl = edDescripcion
  Caption = 'Alta Rapida Materiales'
  ClientHeight = 328
  ClientWidth = 453
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object paBotones: TPanel
    Left = 0
    Top = 0
    Width = 453
    Height = 39
    Align = alTop
    BevelOuter = bvNone
    Color = 13354440
    TabOrder = 0
    ExplicitWidth = 461
    object ibNuevo: TBitBtn
      Left = 8
      Top = 3
      Width = 65
      Height = 34
      Hint = 'Ejecutar'
      Caption = '&Ejecutar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C0000330B0000330B00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF0000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        6F686F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F101010A0A0A0A0A7A0A0A0
        A0A0A0A09F9F9F9F9F9F9F989F9090908087807F787F7070701F1F1F000000FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        9F9F9F4E4E4E4B4B4B4949494646464343434242423F3F3FC0C0C0BEBEBEBDBD
        BDBBBBBBB9B9B9B8B8B8B6B6B6B4B4B4B3B3B3B1B1B1B0B0B04F484F9F989F00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        9F9F9F5151514E4E4E4B4B4B494949464646434343424242C1C1C1C0C0C0BEBE
        BEBDBDBDBBBBBBB9B9B9B8B8B8B6B6B6B4B4B4B3B3B3B1B1B1606060B0B7B07F
        7F7F000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        9F9F9F5252525151514E4E4E4B4B4B494949464646434343C3C3C3C1C1C1C0C0
        C0BEBEBEBDBDBDBBBBBBB9B9B9B8B8B8B6B6B6B4B4B4B3B3B3707070CFC8CF9F
        9F9FAFA8AF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        9F9F9F5656565252525151514E4E4E4B4B4B494949464646C4C4C4C3C3C3C1C1
        C1C0C0C0BEBEBEBDBDBDBBBBBBB9B9B9B9B9B9B5B5B5B4B4B4808780E0E0E0C0
        C7C0BFBFBFAFA8AF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        9F9F9F5757575656565252525151514E4E4E4B4B4B494949C6C6C6C4C4C4C3C3
        C3C1C1C1C0C0C0BDBDBDBDBDBDB9B9B9B9B9B9BFB8BFB5B5B59F989FFFFF00FF
        FF00F0F7F0E0E7E0D0D0D0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        9F9F9F5A5A5A5757575656565252525151514E4E4E4B4B4BC8C8C8C6C6C6C4C4
        C4C3C3C3C1C1C1C1C1C1BDBDBDBDBDBDB9B9B9B9B9B9BFB8BFB5B5B5A0A0A0A0
        A0A0A0A0A09097908F888F707070000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        9F9F9F5D5D5D5A5A5A5656565656565151515151514E4E4EC9C9C9C8C8C8C6C6
        C6C4C4C4C3C3C3C0C0C0C1C1C1BDBDBDBDBDBDB9B9B9B9B9B9BFB8BFB5B5B5B5
        B5B5B1B1B1B1B1B1B1B1B1808780000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        9F9F9F5F5F5F5D5D5D5A5A5A575757565656515151515151CBCBCBC9C9C9C8C8
        C8C6C6C6C4C4C4C1C1C1C1C1C1C1C1C1BDBDBDBDBDBDB9B9B9B9B9B9BFB8BFB5
        B5B5B5B5B5B1B1B1B1B1B19F989F000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        9F9F9F6262625F5F5F5D5D5D5A5A5A565656565656515151CDCDCDCBCBCBC9C9
        C9C8C8C8C6C6C6C4C4C4C1C1C1C1C1C1C1C1C1BDBDBDBDBDBDB9B9B9B9B9B9BF
        B8BFB5B5B5B5B5B5B1B1B19F989F000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        9F9F9F878779E6E6B16B6B66DEDEACFAFABD9D9D82565656CECECECDCDCDCBCB
        CBC9C9C9C8C8C8C5C5C5C4C4C4C1C1C1C1C1C1C1C1C1BDBDBDBDBDBDB9B9B9B9
        B9B9BFB8BFB5B5B5B5B5B59F9F9F000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        9F9F9FE1E2AE8E8E7CB0B0919D9D857A7A6FF7F7BB505750D0D0D0CECECECDCD
        CDCBCBCBC9C9C9C8C8C8C4C4C4C4C4C4C1C1C1C1C1C1C1C1C1BDBDBDBDBDBDB9
        B9B9B9B9B9BFB8BFB5B5B59F9F9F000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        9F9F9FFFFFC0606760CBCBA1898979686865F5F5BA5A5A5AD1D1D1D0D0D0CECE
        CECDCDCDCBCBCBC9C9C9CFC8CFC4C4C4C4C4C4C1C1C1C1C1C1C1C1C1BDBDBDBD
        BDBDB9B9B9B9B9B9BFB8BF9F9F9F000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        9F9F9FF4F3BA87817DEBECB478786FC4C49DAAAA8C5F5F5FD3D3D3D1D1D1D0D0
        D0CECECECDCDCDCBCBCB818181000000A1A1A1C4C4C4C1C1C1C1C1C1C1C1C1BD
        BDBDBDBDBDB9B9B9B9B9B9A0A0A0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        9F9F9FA7A78EF8F8BCFFFFC0FFFFC0FFFFC0FFFFC05F5F5FD5D5D5D3D3D3D1D1
        D1D0D0D0CECECECDCDCD707070748D77282929A1A1A1C4C4C4C1C1C1C1C1C1C1
        C1C1BDBDBDBDBDBDB9B9B9A0A0A0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        9F9F9F6F6F6F6F6F6F6F686F6F686F606760626262626262D6D6D6D5D5D5D3D3
        D3D1D1D1D0D0D0CECECEE1E1E1171A1BB7E0BD282929B2B2B2C4C4C4C1C1C1C1
        C1C1C1C1C1BDBDBDBDBDBDA0A7A0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        9F9F9FFFFFC0FFFFC0FFFFC0FFFFC0FFFFC0FFFFC0FFFFC0FFFFC0D6D6D6D5D5
        D5D0D0D0D0D0D0D0D0D0CECECE5151518CBE8C9BC29E171A1BD0D0D0C4C4C4C1
        C1C1C1C1C1C1C1C1BDBDBDA0A7A0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        9F9F9F969B85B7B798757572737371D4D4A8A5A08D606760D9D9D9DCDCDCD6D6
        D6D6D6D6D0D0D0D0D0D0D0D0D0C1C1C1484847C4E9CC3F7933171A1BD0D0D0C4
        C4C4C1C1C1C1C1C1C1C1C1A0A7A0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        9F9F9FFBFBBD747B727070706F6F6F7E7E78FDFDBF6F686FD9D9D9D9D9D9DCDC
        DCD6D6D6D6D6D6D0D0D0D0D0D0D0D0D0202020AFD7B28CBE8C3F7933171A1BD0
        D0D0C4C4C4C1C1C1C1C1C1A0A7A0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        9F9F9FE5E3B3B5B997747B72767673B7B797D9D9AA6F686FDCDCDCD9D9D9D9D9
        D9DCDCDCD6D6D6D6D6D6D0D0D0D0D0D0A1A1A1606160B7E0BD569B4F3F793317
        1A1BD0D0D0C4C4C4C1C1C1AFA8AF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        9F9F9F938D89DBD9AEFBFBBDFBFBBDD2D2A77C7C766F6F6FDEDEDEDCDCDCD9D9
        D93030300000000000000000000000000000000E1010569B4F569B4F569B4F3F
        7933171A1BD0D0D0C4C4C4AFA8AF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        9F9F9F7F7F7F7F787F7F787F7077707077707070706F6F6FE0E0E0DEDEDEDCDC
        DCF0F0F02020209BC29EC4E9CC8CBE8C80B68078AD7278AD7266A56566A56556
        9B4F3F7933171A1BD0D0D0AFAFAF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        9F9F9FFFFFC0FFFFC0FFFFC0FFFFC0FFFFC0FFFFC0FFFFC0FFFFC0E0E0E0DCDC
        DCDCDCDCD0D0D0202020AFD7B2B7E0BD8CBE8C80B68078AD7278AD728CBE8CC4
        E9CCC4E9CC9BC29E303030F0F0F0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        9F9F9FA1A191BFBFA0858582837C81D9D7ADA5AA8E707770E3E3E3E1E1E1E0E0
        E0DCDCDCDCDCDCC1C1C1282929B7E0BDB7E0BD8CBE8C80B68062756400000000
        0000000000000000000000303030F0F0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        9F9F9FFBFBBE8383828080807F7F7F8D8686FDFDBF707770E5E5E5E3E3E3E1E1
        E1E0E0E0DCDCDCDCDCDCA1A1A1373737C4E9CCAFD7B28CBE8C80B680415A4060
        6160CECECECECECEC9C9C9B0B0B0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        9F9F9FE5E7B3BDC19F838382858583BFBF9FDDDBAF7F787FE5E5E5E5E5E5E3E3
        E3E0E0E0E0E0E0DCDCDCDCDCDC606160515151C4E9CC9CD5A38CBE8C8CBE8C40
        4040606160CECECECECECEB0B0B0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        9F9F9FA09A96DBDDAEFBFBBEFBFBBED7D7AC8B8B857F787FE8E8E8E5E5E5E5E5
        E5E0E0E0E0E0E0E0E0E0DCDCDCDCDCDC515151748D77C4E9CC9CD5A38CBE8C8C
        BE8C404040818181CECECEB0B7B0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9FFFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00F0F0F03030308D9E8FC4E9CCC4E9CCC4
        E9CCC4E9CC282929A1A1A1E0E0E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F00E101000000000000000
        0000000000000000000000B2B2B2FFFFFFFFFFFFFFFFFFFFFFFF}
      Layout = blGlyphRight
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = ibNuevoClick
    end
  end
  object paLienzo: TPanel
    Left = 0
    Top = 39
    Width = 453
    Height = 289
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = clWhite
    TabOrder = 1
    ExplicitWidth = 461
    ExplicitHeight = 294
    object Label5: TLabel
      Left = 142
      Top = 12
      Width = 56
      Height = 13
      Caption = '&Descripcion'
      FocusControl = edDescripcion
      Transparent = True
    end
    object Label4: TLabel
      Left = 8
      Top = 12
      Width = 27
      Height = 13
      Caption = 'Cla&ve'
      FocusControl = edClave
      Transparent = True
    end
    object Label2: TLabel
      Left = 8
      Top = 132
      Width = 54
      Height = 13
      Caption = '# E&tiquetas'
      FocusControl = ceNumEtiquetas
      Transparent = True
    end
    object Label10: TLabel
      Left = 8
      Top = 92
      Width = 61
      Height = 13
      Caption = '&Unidad Base'
      Transparent = True
    end
    object sbRefreshUnidades: TSpeedButton
      Left = 117
      Top = 107
      Width = 21
      Height = 21
      Hint = 'Actualizar'
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
      ParentShowHint = False
      ShowHint = True
      OnClick = sbRefreshUnidadesClick
    end
    object Label3: TLabel
      Left = 397
      Top = 12
      Width = 26
      Height = 13
      Caption = '&I.V.A.'
      FocusControl = ceIVA
      Transparent = True
    end
    object laClienteDEL: TLabel
      Left = 142
      Top = 52
      Width = 113
      Height = 13
      Caption = '&Linea/Sub-Linea (Enter)'
      FocusControl = edLinea
      Transparent = True
    end
    object Shape5: TShape
      Left = 8
      Top = 179
      Width = 130
      Height = 18
      Brush.Color = 14789952
      Pen.Color = 11764252
      Shape = stRoundRect
    end
    object Label15: TLabel
      Left = 21
      Top = 181
      Width = 105
      Height = 13
      Caption = 'Manejo Inventario'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object laCodigoBarras: TBitBtn
      Left = 8
      Top = 52
      Width = 66
      Height = 13
      Cursor = crHandPoint
      Caption = 'Codigo &Barras'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
      OnClick = laCodigoBarrasClick
    end
    object edDescripcion: TEdit
      Left = 142
      Top = 27
      Width = 251
      Height = 21
      MaxLength = 100
      TabOrder = 1
    end
    object edClave: TEdit
      Left = 8
      Top = 27
      Width = 130
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 20
      TabOrder = 0
    end
    object ceActivoFijo: TCheckBox
      Left = 65
      Top = 147
      Width = 73
      Height = 17
      TabStop = False
      Caption = 'A&ctivo Fijo'
      TabOrder = 6
    end
    object edCodigoBarras: TEdit
      Left = 8
      Top = 67
      Width = 130
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 20
      TabOrder = 3
      OnKeyPress = edCodigoBarrasKeyPress
    end
    object ceNumEtiquetas: TEdit
      Left = 8
      Top = 147
      Width = 54
      Height = 21
      TabOrder = 5
    end
    object ceIVA: TEdit
      Left = 397
      Top = 27
      Width = 53
      Height = 21
      TabStop = False
      TabOrder = 2
    end
    object edLinea: TEdit
      Left = 142
      Top = 67
      Width = 160
      Height = 21
      Color = clBackground
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
      Text = '<FALTA>'
      OnKeyPress = edLineaKeyPress
    end
    object cbConsolidado: TCheckBox
      Left = 8
      Top = 200
      Width = 130
      Height = 17
      Caption = 'Consolidad'
      TabOrder = 7
    end
    object cbSerie: TCheckBox
      Left = 8
      Top = 222
      Width = 130
      Height = 17
      Caption = 'Serie'
      TabOrder = 8
    end
    object cbLote: TCheckBox
      Left = 8
      Top = 244
      Width = 130
      Height = 17
      Caption = 'Lote'
      TabOrder = 10
    end
    object Panel2: TPanel
      Left = 2
      Top = 265
      Width = 449
      Height = 22
      Align = alBottom
      TabOrder = 9
      ExplicitTop = 270
      ExplicitWidth = 457
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
        TabOrder = 0
        OnClick = ibSalirClick
      end
    end
    object cbUnidades: TDBLookupComboBox
      Left = 7
      Top = 107
      Width = 108
      Height = 21
      TabOrder = 12
    end
  end
end