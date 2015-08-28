object MarcoMateriales: TMarcoMateriales
  Left = 0
  Top = 0
  Width = 898
  Height = 100
  TabOrder = 0
  object paMateriales: TPanel
    Left = 0
    Top = 0
    Width = 672
    Height = 100
    Align = alLeft
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = 14933717
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label9: TLabel
      Left = 5
      Top = 6
      Width = 37
      Height = 13
      Caption = 'M&aterial'
      Transparent = True
    end
    object Label13: TLabel
      Left = 137
      Top = 6
      Width = 28
      Height = 13
      Caption = 'Desc.'
      Transparent = True
    end
    object Label1: TLabel
      Left = 395
      Top = 6
      Width = 25
      Height = 13
      Caption = 'Can&t.'
      FocusControl = edCantidad
      Transparent = True
    end
    object Label2: TLabel
      Left = 479
      Top = 6
      Width = 34
      Height = 13
      Caption = '&Unidad'
      FocusControl = cbUnidades
      Transparent = True
    end
    object sbRefreshUnidades: TSpeedButton
      Left = 520
      Top = 3
      Width = 21
      Height = 19
      Hint = 'Actualizar'
      Flat = True
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
    end
    object laPrecioCosto: TLabel
      Left = 544
      Top = 6
      Width = 30
      Height = 13
      Caption = 'Precio'
      FocusControl = edPrecioCosto
      Transparent = True
    end
    object laColor: TLabel
      Left = 79
      Top = 48
      Width = 24
      Height = 13
      Caption = 'Color'
    end
    object sbRefreshColores: TSpeedButton
      Left = 137
      Top = 44
      Width = 21
      Height = 19
      Hint = 'Actualizar'
      Flat = True
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
      OnClick = sbRefreshColoresClick
    end
    object laMedida: TLabel
      Left = 5
      Top = 48
      Width = 35
      Height = 13
      Caption = 'Medida'
    end
    object sbRefreshMedidas: TSpeedButton
      Left = 54
      Top = 44
      Width = 21
      Height = 19
      Hint = 'Actualizar'
      Flat = True
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
      OnClick = sbRefreshMedidasClick
    end
    object laSubTotal: TLabel
      Left = 326
      Top = 47
      Width = 46
      Height = 13
      Caption = 'Sub-Total'
    end
    object laIVA: TLabel
      Left = 395
      Top = 47
      Width = 26
      Height = 13
      Caption = 'I.&V.A.'
      FocusControl = edIVA
    end
    object laIEPS: TLabel
      Left = 464
      Top = 47
      Width = 36
      Height = 13
      Caption = 'I.E.P.S.'
    end
    object laImpuesto1: TLabel
      Left = 533
      Top = 48
      Width = 52
      Height = 13
      Caption = 'Impuesto 1'
    end
    object laImpuesto2: TLabel
      Left = 602
      Top = 48
      Width = 52
      Height = 13
      Caption = 'Impuesto 2'
    end
    object laDescPorc: TLabel
      Left = 631
      Top = 6
      Width = 30
      Height = 13
      Caption = 'Dsc.%'
    end
    object fcLabel1: TLabel
      Left = 167
      Top = 4
      Width = 29
      Height = 17
      AutoSize = False
      Caption = 'Exist.'
      Color = clBackground
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object fcLabel2: TLabel
      Left = 280
      Top = 4
      Width = 27
      Height = 17
      AutoSize = False
      Caption = 'Otros'
      Color = clBackground
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object fcLabel3: TLabel
      Left = 424
      Top = 4
      Width = 20
      Height = 17
      AutoSize = False
      Caption = 'ppc'
      Color = clBackground
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object laComentario: TLabel
      Left = 161
      Top = 47
      Width = 53
      Height = 13
      Caption = 'Comentario'
      FocusControl = edIVA
      Visible = False
    end
    object laPU: TLabel
      Left = 576
      Top = 4
      Width = 10
      Height = 17
      AutoSize = False
      Caption = 'U.'
      Color = clBackground
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object edPPC: TEdit
      Left = 442
      Top = 2
      Width = 34
      Height = 21
      TabStop = False
      Color = clBackground
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object edCantidad: TEdit
      Left = 395
      Top = 22
      Width = 81
      Height = 21
      TabOrder = 6
      OnChange = edCantidadChange
    end
    object buCapturar: TBitBtn
      Left = 395
      Top = 20
      Width = 81
      Height = 25
      Caption = 'Capturar'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000130B0000130B000000000000000000000000C0000090
        0000600000C00000C00000C00000C00000C00000C00000C00000C00000C00000
        C00000C00000C00000C00000C03737372525250000C00000C00000C00000C000
        00C00000C00000C00000C00000C00000C00000C00000C00000C01212424A4A4A
        2525250000C00000C00000C00000C00000C00000C00000C00000C00000C00000
        C00000C00000C00000C04A4A4A4A4A4A25252528286028286028286028286028
        2860282860282860282860282860282860282860282860282860AEDCF8AEDCF8
        AEDCF8AEDCF8AEDCF8AEDCF8AEDCF8AEDCF8AEDCF8AEDCF8AEDCF8AEDCF8AEDC
        F8AEDCF8AEDCF85787A45094DF5094DF6BC6FF6BC6FF6BC6FF6BC6FF6BC6FF6B
        C6FF6BC6FF6BC6FF6BC6FF6BC6FF6BC6FF6BC6FF6BC6FF357CA779B6D579B6D5
        79B6D579B6D579B6D579B6D579B6D579B6D579B6D579B6D579B6D579B6D579B6
        D579B6D579B6D53C74924A4A4A4A4A4A2525250000C00000C00000C0A0696A8E
        55558E55558E55558E55558E55558E55558E55551C00900000C05D5C8C4A4A4A
        2525250000C00000C00000C0EBF0F2E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6D7D7
        D72A2ABA0000C00000C02928B8605F5F2525250000C00000C00000C0EBF0F2D9
        DCDD8C7D9F787DBFEDF5F8D7D7D72A2ABA0000C00000C00000C00000C02928B8
        2928880000C00000C00000C0EBF0F2C8C8C8280040B1B7D9D7D7D72A2ABA0000
        C00000C00000C00000C00000C00000C00000C00000C00000C00000C0EBF0F2C8
        C8C8C5B7B9D7D7D72A2ABA0000C00000C00000C00000C00000C00000C00000C0
        0000C00000C00000C00000C0EBF0F2D7D7D7D7D7D72A2ABA0000C00000C00000
        C00000C00000C00000C00000C00000C00000C00000C00000C00000C0EBF0F2D7
        D7D72A2ABA0000C00000C00000C00000C00000C00000C00000C00000C00000C0
        0000C00000C00000C00000C0DCE1E32A2ABA0000C00000C00000C00000C00000
        C00000C00000C00000C00000C00000C00000C00000C00000C00000C03C3ECF00
        00C00000C00000C00000C00000C00000C00000C00000C00000C0}
      TabOrder = 7
      OnClick = buCapturarClick
    end
    object edPU: TEdit
      Left = 584
      Top = 2
      Width = 44
      Height = 21
      TabStop = False
      Color = clBackground
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object edDescripcion: TEdit
      Left = 137
      Top = 22
      Width = 255
      Height = 21
      TabStop = False
      Color = clBackground
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
      Text = 'ningun material'
    end
    object cbUnidades: TDBLookupComboBox
      Left = 479
      Top = 22
      Width = 62
      Height = 21
      DropDownWidth = 100
      ListSource = dsMateriales_Unidades
      TabOrder = 8
      TabStop = False
    end
    object edPrecioCosto: TEdit
      Left = 544
      Top = 22
      Width = 84
      Height = 21
      TabOrder = 9
      OnChange = edCantidadChange
    end
    object edSubTotal: TEdit
      Left = 326
      Top = 63
      Width = 66
      Height = 21
      TabStop = False
      Color = clBackground
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 14
    end
    object edIVA: TEdit
      Left = 395
      Top = 63
      Width = 66
      Height = 21
      TabStop = False
      TabOrder = 15
    end
    object edIEPS: TEdit
      Left = 464
      Top = 63
      Width = 66
      Height = 21
      TabStop = False
      TabOrder = 16
    end
    object edImpuesto1: TEdit
      Left = 533
      Top = 63
      Width = 66
      Height = 21
      TabStop = False
      TabOrder = 17
    end
    object edImpuesto2: TEdit
      Left = 602
      Top = 63
      Width = 66
      Height = 21
      TabStop = False
      TabOrder = 18
    end
    object edDescuentoPorc: TEdit
      Left = 631
      Top = 22
      Width = 37
      Height = 21
      TabOrder = 10
      OnChange = edCantidadChange
    end
    object edExistencia: TEdit
      Left = 194
      Top = 2
      Width = 85
      Height = 21
      TabStop = False
      Color = clBackground
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object edOtros: TBitBtn
      Left = 305
      Top = 2
      Width = 87
      Height = 25
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      TabStop = False
    end
    object edCBarras: TEdit
      Left = 45
      Top = 2
      Width = 89
      Height = 21
      TabStop = False
      Color = clBackground
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = '9999999999999'
    end
    object edComentario: TEdit
      Left = 161
      Top = 63
      Width = 162
      Height = 21
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
      Text = 'TEXTO EXTRA'
      Visible = False
    end
    object cbMedidas: TDBLookupComboBox
      Left = 5
      Top = 63
      Width = 70
      Height = 21
      TabOrder = 11
    end
    object cbColores: TDBLookupComboBox
      Left = 79
      Top = 63
      Width = 79
      Height = 21
      TabOrder = 12
    end
  end
  object Panel1: TPanel
    Left = 672
    Top = 0
    Width = 226
    Height = 100
    Align = alClient
    Caption = 'paObservaciones'
    TabOrder = 1
    object edObservaciones: TMemo
      Left = 1
      Top = 1
      Width = 224
      Height = 98
      TabStop = False
      Align = alClient
      Color = clBackground
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Lines.Strings = (
        'Text'
        ''
        'o de '
        ''
        'prue'
        ''
        'ba'
        '')
      ParentFont = False
      TabOrder = 0
    end
  end
  object edMaterial: TEdit
    Left = 5
    Top = 22
    Width = 129
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 2
    OnKeyPress = edMaterialKeyPress
  end
  object qyIBXMateriales: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT *'
      'FROM MATERIALES'
      'WHERE CLAVE = :P_CLAVE')
    Left = 704
    Top = 48
    ParamData = <
      item
        DataType = ftString
        Name = 'P_CLAVE'
        ParamType = ptUnknown
      end>
    object qyIBXMaterialesID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qyIBXMaterialesCLAVE: TIBStringField
      FieldName = 'CLAVE'
    end
    object qyIBXMaterialesDESCRIPCION: TIBStringField
      FieldName = 'DESCRIPCION'
      Size = 100
    end
    object qyIBXMaterialesUNIDAD_BASE: TIntegerField
      FieldName = 'UNIDAD_BASE'
    end
    object qyIBXMaterialesLINEA: TIntegerField
      FieldName = 'LINEA'
    end
    object qyIBXMaterialesUNIDADES_COMPRADAS: TFloatField
      FieldName = 'UNIDADES_COMPRADAS'
    end
    object qyIBXMaterialesUNIDADES_VENDIDAS: TFloatField
      FieldName = 'UNIDADES_VENDIDAS'
    end
    object qyIBXMaterialesUNIDADES_PRODUCIDAS: TFloatField
      FieldName = 'UNIDADES_PRODUCIDAS'
    end
    object qyIBXMaterialesLARGO: TFloatField
      FieldName = 'LARGO'
    end
    object qyIBXMaterialesANCHO: TFloatField
      FieldName = 'ANCHO'
    end
    object qyIBXMaterialesALTO: TFloatField
      FieldName = 'ALTO'
    end
    object qyIBXMaterialesUNIDAD_LAA: TIntegerField
      FieldName = 'UNIDAD_LAA'
    end
    object qyIBXMaterialesLOTE: TIBStringField
      FieldName = 'LOTE'
      Size = 2
    end
    object qyIBXMaterialesNUM_SERIE: TIBStringField
      FieldName = 'NUM_SERIE'
      Size = 2
    end
    object qyIBXMaterialesCONSOLIDADO: TIBStringField
      FieldName = 'CONSOLIDADO'
      Size = 2
    end
    object qyIBXMaterialesCOSTO_PROMEDIO: TIBStringField
      FieldName = 'COSTO_PROMEDIO'
      Size = 2
    end
    object qyIBXMaterialesCOSTO_PEPS: TIBStringField
      FieldName = 'COSTO_PEPS'
      Size = 2
    end
    object qyIBXMaterialesCOSTO_UEPS: TIBStringField
      FieldName = 'COSTO_UEPS'
      Size = 2
    end
    object qyIBXMaterialesFECHA_CERO_EXIST: TDateTimeField
      FieldName = 'FECHA_CERO_EXIST'
    end
    object qyIBXMaterialesFECHA_ULTIMA_COMPRA: TDateTimeField
      FieldName = 'FECHA_ULTIMA_COMPRA'
    end
    object qyIBXMaterialesCODIGO_BARRAS: TIBStringField
      FieldName = 'CODIGO_BARRAS'
    end
    object qyIBXMaterialesIVA_PORC: TFloatField
      FieldName = 'IVA_PORC'
    end
    object qyIBXMaterialesIEPS_PORC: TFloatField
      FieldName = 'IEPS_PORC'
    end
    object qyIBXMaterialesIMPUESTO_1_PORC: TFloatField
      FieldName = 'IMPUESTO_1_PORC'
    end
    object qyIBXMaterialesIMPUESTO_2_PORC: TFloatField
      FieldName = 'IMPUESTO_2_PORC'
    end
    object qyIBXMaterialesOBSERVACIONES: TBlobField
      FieldName = 'OBSERVACIONES'
      Size = 8
    end
    object qyIBXMaterialesFOTO: TBlobField
      FieldName = 'FOTO'
      Size = 8
    end
    object qyIBXMaterialesDIAS_DE_VIGENCIA: TIntegerField
      FieldName = 'DIAS_DE_VIGENCIA'
    end
    object qyIBXMaterialesCOSTO_ULT_COMPRA: TFloatField
      FieldName = 'COSTO_ULT_COMPRA'
    end
    object qyIBXMaterialesNUM_ETIQUETAS: TIntegerField
      FieldName = 'NUM_ETIQUETAS'
    end
    object qyIBXMaterialesACTIVO_FIJO: TIBStringField
      FieldName = 'ACTIVO_FIJO'
      Size = 2
    end
    object qyIBXMaterialesCALIDAD: TIntegerField
      FieldName = 'CALIDAD'
    end
  end
  object dsMateriales: TDataSource
    DataSet = qyIBXMateriales
    Left = 735
    Top = 48
  end
  object qyMateriales_Unidades: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT *'
      'FROM VER_UNIDADES_MATERIAL(:P_MATERIAL)')
    Left = 671
    Top = 16
    ParamData = <
      item
        DataType = ftString
        Name = 'P_MATERIAL'
        ParamType = ptUnknown
      end>
    object qyMateriales_UnidadesR_ID: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_ID'
      ReadOnly = True
    end
    object qyMateriales_UnidadesR_MATERIAL: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_MATERIAL'
      ReadOnly = True
    end
    object qyMateriales_UnidadesR_UNIDAD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_UNIDAD'
      ReadOnly = True
    end
    object qyMateriales_UnidadesR_CLAVE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_CLAVE'
      ReadOnly = True
      Size = 10
    end
    object qyMateriales_UnidadesR_DESCRIPCION: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_DESCRIPCION'
      ReadOnly = True
      Size = 50
    end
    object qyMateriales_UnidadesR_FACTOR: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_FACTOR'
      ReadOnly = True
      DisplayFormat = '###,###,##0.000000'
    end
  end
  object dsMateriales_Unidades: TDataSource
    DataSet = qyMateriales_Unidades
    Left = 735
    Top = 16
  end
  object qyMateriales_Medidas: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT *'
      'FROM VER_MATERIALES_MEDIDAS(:P_MATERIAL)')
    Left = 765
    Top = 48
    ParamData = <
      item
        DataType = ftString
        Name = 'P_MATERIAL'
        ParamType = ptUnknown
      end>
    object qyMateriales_MedidasR_ID: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_ID'
      ReadOnly = True
    end
    object qyMateriales_MedidasR_ID_MEDIDA: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_ID_MEDIDA'
      ReadOnly = True
    end
    object qyMateriales_MedidasR_DESCRIPCION: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_DESCRIPCION'
      ReadOnly = True
    end
    object qyMateriales_MedidasR_CODIGO_BARRAS: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_CODIGO_BARRAS'
      ReadOnly = True
    end
  end
  object dsMateriales_Medidas: TDataSource
    DataSet = qyMateriales_Medidas
    Left = 797
    Top = 48
  end
  object qyColores: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT *'
      'FROM COLORES')
    Left = 766
    Top = 16
    object qyColoresID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qyColoresNOMBRE: TIBStringField
      FieldName = 'NOMBRE'
      Size = 50
    end
  end
  object dsColores: TDataSource
    DataSet = qyColores
    Left = 797
    Top = 16
  end
  object TPreferencias: TIBTable
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NOMBRE'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'TIPO'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'VALOR'
        DataType = ftString
        Size = 20
      end>
    Filter = 'ID = -3'
    Filtered = True
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY110'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end>
    StoreDefs = True
    TableName = 'PREFERENCIAS'
    UniDirectional = False
    Left = 703
    Top = 16
  end
  object qyCalculoImpuestos: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT *'
      
        'FROM CALCULA_IMPUESTOS(:P_MATERIAL, :P_CANTIDAD, :P_PRECIO_VENTA' +
        ')')
    Left = 255
    Top = 24
    ParamData = <
      item
        DataType = ftString
        Name = 'P_MATERIAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'P_CANTIDAD'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'P_PRECIO_VENTA'
        ParamType = ptUnknown
      end>
  end
  object qyPrecio_X: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT *'
      
        'FROM PRECIO_X(:P_MATERIAL, :P_ALMACEN, :P_CLIENTE, :P_EXTENSION,' +
        ' :P_MONEDA)')
    Left = 286
    Top = 24
    ParamData = <
      item
        DataType = ftString
        Name = 'P_MATERIAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'P_ALMACEN'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'P_CLIENTE'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'P_EXTENSION'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'P_MONEDA'
        ParamType = ptUnknown
      end>
  end
  object qyExistencia: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT *'
      
        'FROM T_MATERIAL_EXISTENCIAS(:P_MATERIAL, :P_MEDIDA, :P_COLOR, :P' +
        '_ALMACEN, :P_MONEDA)')
    Left = 318
    Top = 24
    ParamData = <
      item
        DataType = ftString
        Name = 'P_MATERIAL'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'P_MEDIDA'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'P_COLOR'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'P_ALMACEN'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'P_MONEDA'
        ParamType = ptUnknown
        Value = '0'
      end>
    object qyExistenciaR_ORIGINAL: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_ORIGINAL'
      ReadOnly = True
      DisplayFormat = '###,###,##0.0000'
      EditFormat = '###,###,##0.0000'
    end
    object qyExistenciaR_OTROS: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_OTROS'
      ReadOnly = True
      DisplayFormat = '###,###,##0.0000'
      EditFormat = '###,###,##0.0000'
    end
  end
  object dsExistencia: TDataSource
    DataSet = qyExistencia
    Left = 350
    Top = 24
  end
  object qyCalculoImpuestosCosto: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT *'
      'FROM CALCULA_IMPUESTOS_COSTO(:P_MATERIAL, :P_CANTIDAD, :P_COSTO)')
    Left = 828
    Top = 16
    ParamData = <
      item
        DataType = ftString
        Name = 'P_MATERIAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'P_CANTIDAD'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'P_COSTO'
        ParamType = ptUnknown
      end>
  end
  object qyCosto_X: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT *'
      'FROM COSTO_X(:P_MATERIAL, :P_PROVEEDOR)')
    Left = 408
    Top = 48
    ParamData = <
      item
        DataType = ftString
        Name = 'P_MATERIAL'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'P_PROVEEDOR'
        ParamType = ptUnknown
        Value = '0'
      end>
  end
  object spCALCULA_PSI: TIBStoredProc
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    StoredProcName = 'CALCULA_PSI'
    Left = 828
    Top = 48
    ParamData = <
      item
        DataType = ftFloat
        Name = 'R_PRECIO'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'P_MATERIAL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'P_PRECIO'
        ParamType = ptInput
      end>
  end
  object qyUnidadPivote: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select *'
      'from T_UNIDAD_PIVOTE(:P_MATERIAL)')
    Left = 256
    Top = 56
    ParamData = <
      item
        DataType = ftString
        Name = 'P_MATERIAL'
        ParamType = ptUnknown
        Value = '0'
      end>
  end
end
