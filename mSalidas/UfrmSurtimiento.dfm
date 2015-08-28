object frmSurtimiento: TfrmSurtimiento
  Left = 239
  Top = 27
  ActiveControl = edFiltro
  BorderStyle = bsNone
  Caption = 'Surtimiento'
  ClientHeight = 581
  ClientWidth = 1011
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 323
    Top = 153
    Height = 428
  end
  object Panel2: TPanel
    Left = 0
    Top = 24
    Width = 1011
    Height = 129
    Align = alTop
    BevelOuter = bvNone
    BorderWidth = 1
    Color = clInfoBk
    TabOrder = 0
    object Label3: TLabel
      Left = 6
      Top = 104
      Width = 87
      Height = 16
      Caption = '&Filtro ID Pedido'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object buHoy: TBitBtn
      Left = 101
      Top = 30
      Width = 90
      Height = 62
      Cursor = crHandPoint
      Caption = 'Hoy'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = buHoyClick
    end
    object buAyer: TBitBtn
      Left = 197
      Top = 30
      Width = 90
      Height = 62
      Cursor = crHandPoint
      Caption = 'Ayer'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = buAyerClick
    end
    object buAmbos: TBitBtn
      Left = 293
      Top = 30
      Width = 90
      Height = 62
      Cursor = crHandPoint
      Caption = 'Ambos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = buAmbosClick
    end
    object buTodos: TBitBtn
      Left = 389
      Top = 30
      Width = 90
      Height = 62
      Cursor = crHandPoint
      Caption = 'Todos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnClick = buTodosClick
    end
    object buBuscar: TBitBtn
      Left = 216
      Top = 98
      Width = 72
      Height = 28
      Cursor = crHandPoint
      Caption = 'Buscar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      Glyph.Data = {
        0E060000424D0E06000000000000360000002800000016000000160000000100
        180000000000D8050000120B0000120B00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFCFCFCF8F8F8F5F5F5F5F5F5FDFDFDFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFF3F3F3E9E9E9EDEDEDE7E7E7E3E3E3E8E8E8DFDFDFF3F3
        F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFF6F6F6ECEC
        ECEAEAEADFDFDFE1E1E1FFFFFFB6B6B6818181707071646464636363616161C4
        C4C4F9F9F9E4E4E4F8F8F8FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFEEEEEEE0
        E0E0E5E5E5DEDEDEDDDDDDE1E1E1B5B5B55856568D8D8EC3C3C2E3E3E1F2F2F2
        C5C5C25F5F5FDBDADAFFFFFFEDEDEDF9F9F9FFFFFFFFFFFF0000FFFFFFFFFFFF
        D8D8D88E8E8E6B6B6B676767707070E6E6E6515355B1BCBAFFFFFFFFFFFCFFFF
        FBFFFFFFFFFFF45E5D5D2F3235BDBDBDFFFFFFF2F2F2F8F8F8FBFBFB0000FFFF
        FFECECEC595959878788D2D1D0F6F6F5878F96333539717875DEE8CEF7F6D9D8
        D7BEB4B4A28F8E856464618C8A8A4049532B343FE3E2E2FFFFFFF3F3F3E1E1E1
        0000FFFFFF838383B9B8ACFFFFFFFFFFFCFFFFF7959B9D383B3F60605C717068
        67676470707289898BAFAFB0E8E8E8FFFFFFD4D3D33F4144545454F7F7F7FFFF
        FFFFFFFF0000B2B2B36D6C68FFFFE7E8E8CCA2A2936C6C69777676D9D9D9E4E4
        E4DADADAFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCECE3B3B3B6C
        6C6CE7E7E7AFAFAF0000818080505355626C6F414142A5A5A7E3E3E3FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        B9B9B939393A3D3E4021272D0000FFFFFFBEBEBE3C444E35383C898888F4F4F4
        FFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF9898982B3642242D370000FFFFFFFFFFFFFCFCFC9E9D9D3A3A
        3B3D3D3DB1B1B1FFFFFFFFFFFF565A5E66686BFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF76787B66696D0000FFFFFFFFFFFFFFFFFFFF
        FFFFDFDFDF6C6B6B3436385F6469737678252F3AA3A4A5FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFA7A7A82B333C252E38919293FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEEEEDAD9D8FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      OnClick = buBuscarClick
    end
    object buOcultarVer: TBitBtn
      Left = 6
      Top = 30
      Width = 90
      Height = 62
      Cursor = crHandPoint
      Caption = 'Ocultar Pedidos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
      OnClick = buOcultarVerClick
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 1009
      Height = 24
      Align = alTop
      BevelOuter = bvNone
      Color = 8667648
      TabOrder = 0
      object Label2: TLabel
        Left = 0
        Top = 0
        Width = 73
        Height = 24
        Align = alLeft
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Cliente: '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
      end
      object LMDDBSimpleLabel1: TLabel
        Left = 73
        Top = 0
        Width = 4
        Height = 18
        Align = alLeft
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ShowAccelChar = False
      end
      object Label1: TLabel
        Left = 77
        Top = 0
        Width = 120
        Height = 24
        Align = alLeft
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Razon Social: '
        Font.Charset = ANSI_CHARSET
        Font.Color = clYellow
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
      end
      object LMDDBSimpleLabel2: TLabel
        Left = 197
        Top = 0
        Width = 4
        Height = 18
        Align = alLeft
        Font.Charset = ANSI_CHARSET
        Font.Color = clYellow
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ShowAccelChar = False
      end
      object Label4: TLabel
        Left = 201
        Top = 0
        Width = 115
        Height = 24
        Align = alLeft
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Vendedor: '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
      end
      object LMDDBSimpleLabel3: TLabel
        Left = 316
        Top = 0
        Width = 4
        Height = 18
        Align = alLeft
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ShowAccelChar = False
      end
    end
    object Panel4: TPanel
      Left = 728
      Top = 25
      Width = 282
      Height = 103
      Align = alRight
      BevelOuter = bvNone
      Color = clInfoBk
      TabOrder = 1
      object buSalir: TBitBtn
        Left = 178
        Top = 5
        Width = 100
        Height = 62
        Cursor = crHandPoint
        Caption = 'Salir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Glyph.Data = {
          360C0000424D360C000000000000360000002800000020000000200000000100
          180000000000000C0000120B0000120B000000000000000000000000FF0000FF
          0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
          FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
          00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
          0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
          FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
          00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
          0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
          FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
          00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
          0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
          FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
          00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
          0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0A0AFC3535
          ED6666E19392D29796D39999D38988D65D5DE42D2DF00908FC0000FF0000FF00
          00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
          0000FF0000FF0000FF0000FF0000FF0000FF0000FF2B2AF18585D7C4C3CCDFDF
          CDE0DFD2DEDDD7DEDED8DEDDD8DEDED6DFDFD1DFDECCC1C0CD7B7ADB2020F400
          00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
          0000FF0000FF0000FF0000FF0000FF1414F78E8DD3CECDCADBDAD1DBDBD9E1E0
          DFE5E5E4E8E8E7E9E9E7E9E9E8E8E7E7E5E5E4E0E0DFDBDBD8DCDBD0CDCDC981
          81D60C0CFA0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
          0000FF0000FF0000FF0000FF3C3CE8C0C0C4D7D6CCD9D9D8E3E2E2E6E6E3E2E1
          D9DAD8CCD1CFC3CCCABFCCCAC0D2D1C4DBD9CEE3E2DBE6E6E4E2E1E1D9D8D7D7
          D6CBBCBCC42A2AEF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
          0000FF0000FF0000FF4C4CE1CCCBC1D2D2CEDDDCDCE2E2DED5D3C7B5B3B0898A
          A86465A84C4EAB4042AD4143AD4E50AB6869A88F8FA9BAB8B3D8D6CAE3E2E0DB
          DBDAD3D2CDC2C1C22E2EEC0000FF0000FF0000FF0000FF0000FF0000FF0000FF
          0000FF0000FF3737E7C8C7BDD0CFCDDDDCDBDBD9CFB1B0AE6567A92427B2050A
          BC0108C90110D70118E20117E1010ED50107C7070CBB2B2DB26F70A9B9B8B2DD
          DCD3DCDBDAD0CFCBC1C0BD2323F00000FF0000FF0000FF0000FF0000FF0000FF
          0000FF1A1AF1B1B0BECDCCC8D9D9D7D4D3C78C8CAD2427B30103BA0117CD0434
          E30346F0014EF60154F90153F9014EF50345EF0331E10113CB0104B92F31B299
          99AED8D7CCD8D8D6CDCCC6A8A7C12020ED0000FF0000FF0000FF0000FF0000FF
          0C0CF7B1B0A8C8C7C3D4D3D2D7D6CA7E80B30A0DB3010DBF0330DE013BEC013A
          EC0E46EB2B5AEC3E67ED3D66ED2959EC0C45EB013AEC013BEB032DDB0109BD12
          16B48E90B4DAD9CED2D1D1CAC9C2A9A8A90505FC0000FF0000FF0000FF0000FF
          3333E6C5C4B0CBCAC8DBDAD09597BC080BB20113C50132E60136EA3C65EE9DB1
          F6E5EAFCFFFFFFFFFFFFFFFFFFFFFFFFE1E7FC95ABF53560ED0135EB0130E401
          0EC21215B4A8A8BFDADAD1C9C8C7C3C2AF1E1EF10000FF0000FF0000FF0000FF
          6A69CFC5C4B9D2D1CDC7C7CB2227B5010CC60130E81044EB9BB0F6FFFFFFFFFF
          FFD4DDFB9BAFF67E97F47F98F49EB1F6D9E1FBFFFFFFFFFFFF8FA7F50A3FEB01
          2DE60107C3343AB8D2D1CDCFCECCC6C5B65151DA0000FF0000FF0000FF0000FF
          9392BEC5C4BEDDDBD07A7CC50101C0012CE6164AECC6D2FAFFFFFFBCCAF94066
          EF0538EB012EEA012DEA012EEA012EEA073AEB466CEFC6D2FAFFFFFFBBCAF910
          45EB0127E30101BF9193C9DADACFC4C3BB8181C60000FF0000FF0000FF0808FC
          ABAAB4C6C5C1D7D6D32F33C40118DC053CEAB6C6F8FFFFFF88A1F50334EA0130
          EA0538EB0739EB0130EB0133EB083AEB0538EB012FEA0637EA97ACF6FFFFFFA7
          BAF70238E90110D9474BC7DCDBD2C5C4BE9291C00000FF0000FF0000FF0808FB
          BBB9ACCBC9C1C0C0D50B1BD1012BE75F83F1FFFFFFA2B5F70130EA0436EB0839
          EB0739EC0637EC4F71F2345BF00534EC0839EC0839EB0236EB0133EAB1C1F8FF
          FFFF4E77F00125E51C2AD0CECDD5C8C6BF9E9DBB0202FE0000FF0000FF0707FC
          AAA9B4CECBC1AEB0D90122DD043BE9CDD8FAF3F5FD1D4CEC0134EA083AEB0839
          EC0435EC1643EEF9FAFEB6C3F9012EEC0838EC0839EC083AEB0132EA2957EDFA
          FBFEBAC9F90134E90B2ADCBFC1D8CAC9BD9190C00000FF0000FF0000FF0000FF
          9190BFCDCABDABB3DF012DE62255ECFFFFFFACBDF80130E9073AEB0739EB0838
          EC0434EC1A45EEF5F7FEB9C5F9012FED0837ED0839EC0739EB063AEB0133E9BE
          CBF9F7F9FE144AEB0735E6BDC2DCCAC7B97F7FC80000FF0000FF0000FF0000FF
          6766D5CDCAB5A4B2DC0133EA3C67EDFFFFFF7F99F4012FE9073AEB0739EB0838
          EC0434EC1A44EEF4F6FDB7C3F9012EED0837ED0838EC0739EB073AEB012FE993
          A9F6FFFFFF2B5AEC043DEBB6BED7CBC8B24C4BE00000FF0000FF0000FF0000FF
          2323F1CECAAE9DAACF0136EA3965EDFFFFFF829CF4012EE9073AEB0739EB0838
          EC0434EC1A44EEF4F6FDB7C3F9012EED0837ED0838EC0739EB073AEB012FE996
          ACF6FFFFFF2858EC053FE9AFB6CBC1BFB21313F80000FF0000FF0000FF0000FF
          0000FF9896C3B0B7C20842E81A4EEBFBFCFEB8C6F90131E9063AEB0739EB0839
          EC0434EC1945EEF4F6FEB7C4F9012FEC0838EC0839EC0739EB0539EB0135EAC9
          D4FAF1F4FD0D44EB184DE6C0C1BD7A78CF0000FF0000FF0000FF0000FF0000FF
          0000FF1E1EF4C6C3B52F5EE10131EABDCBF8FAFBFE2C58ED0132EA083AEB0739
          EB0435EC1945EEF4F6FDB7C4F90130EC0838EC0739EB083AEB0130E93A64EFFF
          FFFFABBDF7012DEA466DDCC9C5B50F0FFA0000FF0000FF0000FF0000FF0000FF
          0000FF0000FF5F5CDF5D6CD8002CEB4A72EEFFFFFFBBC9F90637EA0134EA073A
          EB0336EB1846EDF4F6FEB7C4F90131EB0739EB073AEB0133EA0D3DEBCAD5FAFF
          FFFF3B66ED0032EA7581D04341E90000FF0000FF0000FF0000FF0000FF0000FF
          0000FF0000FF0000FF6B6BDC172AF0002DEA99B0F6FFFFFFAABCF81341EB012F
          E90236EB1847EDF4F6FEB7C4F90132EB0639EB012EE91A47ECB7C6F9FFFFFF89
          A3F4002BEA2438EB4E4DE70000FF0000FF0000FF0000FF0000FF0000FF0000FF
          0000FF0000FF0000FF0000FF3135F00917F7073AE9A6B9F7FFFFFFDCE4FC5C7C
          F10234EA1647ECF4F6FEB7C5F80131E90639EB6583F2E5EBFDFFFFFF98AEF603
          37E80E1DF52C2EF20000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
          0000FF0000FF0000FF0000FF0000FF090AFD040CFB000BFA7493F3F5F7FEE5EA
          FD093CEA1546ECF9FBFEBCC9F9012FE91446EBF2F5FEEFF3FE698AF2000AFA04
          0CFB0708FD0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
          0000FF0000FF0000FF0000FF0000FF0000FF0000FF0307FD0109FB0A18F92C5B
          EC0138E90E42EBD8E0FB98ADF60133E9033AE92F5DED0816F90108FB0205FE00
          00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
          0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0205FD0208
          FB020CFA000BFA1447E80B41E7020CFA020CFA0208FC0204FE0000FF0000FF00
          00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
          0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
          FF0000FF0101FF0000FF0000FF0101FF0000FF0000FF0000FF0000FF0000FF00
          00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
          0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
          FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
          00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
          0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
          FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
          00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF}
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = buSalirClick
      end
      object buSelTodos: TBitBtn
        Left = 178
        Top = 73
        Width = 100
        Height = 28
        Cursor = crHandPoint
        Caption = 'Seleccionar Todos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = buSelTodosClick
      end
      object buQuitarTodos: TBitBtn
        Left = 75
        Top = 73
        Width = 100
        Height = 28
        Cursor = crHandPoint
        Caption = 'Quitar Todos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnClick = buQuitarTodosClick
      end
    end
    object edFiltro: TEdit
      Left = 102
      Top = 99
      Width = 110
      Height = 27
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnKeyPress = edFiltroKeyPress
    end
  end
  object dgPedidos: TDBGrid
    Left = 0
    Top = 153
    Width = 323
    Height = 428
    Align = alLeft
    DataSource = dsLiberados
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Panel6: TPanel
    Left = 0
    Top = 0
    Width = 1011
    Height = 24
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Surtimiento'
    Color = 13526784
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object Panel7: TPanel
      Left = 941
      Top = 0
      Width = 70
      Height = 24
      Align = alRight
      BevelOuter = bvNone
      Color = clWhite
      TabOrder = 0
      object buAvisoSi: TBitBtn
        Left = 39
        Top = 4
        Width = 21
        Height = 20
        Cursor = crHandPoint
        TabOrder = 0
        OnClick = buAvisoSiClick
      end
      object buAvisoNo: TBitBtn
        Left = 6
        Top = 4
        Width = 22
        Height = 20
        Cursor = crHandPoint
        TabOrder = 1
        Visible = False
        OnClick = buAvisoNoClick
      end
    end
  end
  object dgPartidas: TDBGrid
    Left = 326
    Top = 153
    Width = 685
    Height = 428
    Align = alClient
    DataSource = dsPartidas
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object qyPartidas: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = dsLiberados
    ParamCheck = True
    SQL.Strings = (
      'SELECT *'
      'FROM TL_PARTIDAS_SURTIMIENTO(:R_ID)')
    Left = 576
    Top = 88
    ParamData = <
      item
        DataType = ftInteger
        Name = 'R_ID'
        ParamType = ptUnknown
      end>
    object qyPartidasR_ID: TIntegerField
      FieldName = 'R_ID'
      Origin = 'TL_PARTIDAS_SURTIMIENTO.R_ID'
    end
    object qyPartidasR_PEDIDO: TIntegerField
      FieldName = 'R_PEDIDO'
      Origin = 'TL_PARTIDAS_SURTIMIENTO.R_PEDIDO'
    end
    object qyPartidasR_MATERIAL: TIntegerField
      FieldName = 'R_MATERIAL'
      Origin = 'TL_PARTIDAS_SURTIMIENTO.R_MATERIAL'
    end
    object qyPartidasR_CLAVE: TIBStringField
      FieldName = 'R_CLAVE'
      Origin = 'TL_PARTIDAS_SURTIMIENTO.R_CLAVE'
    end
    object qyPartidasR_DESCRIPCION: TIBStringField
      FieldName = 'R_DESCRIPCION'
      Origin = 'TL_PARTIDAS_SURTIMIENTO.R_DESCRIPCION'
      Size = 100
    end
    object qyPartidasR_UNIDAD: TIntegerField
      FieldName = 'R_UNIDAD'
      Origin = 'TL_PARTIDAS_SURTIMIENTO.R_UNIDAD'
    end
    object qyPartidasR_UNIDAD_C: TIBStringField
      FieldName = 'R_UNIDAD_C'
      Origin = 'TL_PARTIDAS_SURTIMIENTO.R_UNIDAD_C'
      Size = 10
    end
    object qyPartidasR_DESCRIPCION_UNIDAD: TIBStringField
      FieldName = 'R_DESCRIPCION_UNIDAD'
      Origin = 'TL_PARTIDAS_SURTIMIENTO.R_DESCRIPCION_UNIDAD'
      Size = 50
    end
    object qyPartidasR_CANTIDAD: TFloatField
      FieldName = 'R_CANTIDAD'
      Origin = 'TL_PARTIDAS_SURTIMIENTO.R_CANTIDAD'
    end
    object qyPartidasR_CANTIDAD_ENTREGADA: TFloatField
      FieldName = 'R_CANTIDAD_ENTREGADA'
      Origin = 'TL_PARTIDAS_SURTIMIENTO.R_CANTIDAD_ENTREGADA'
    end
    object qyPartidasR_CANTIDAD_PENDIENTE: TFloatField
      FieldName = 'R_CANTIDAD_PENDIENTE'
      Origin = 'TL_PARTIDAS_SURTIMIENTO.R_CANTIDAD_PENDIENTE'
    end
    object qyPartidasR_ESTATUS: TIBStringField
      FieldName = 'R_ESTATUS'
      Origin = 'TL_PARTIDAS_SURTIMIENTO.R_ESTATUS'
    end
    object qyPartidasR_CAJAS: TIntegerField
      FieldName = 'R_CAJAS'
      Origin = 'TL_PARTIDAS_SURTIMIENTO.R_CAJAS'
    end
    object qyPartidasR_ROWS: TIntegerField
      FieldName = 'R_ROWS'
      Origin = 'TL_PARTIDAS_SURTIMIENTO.R_ROWS'
    end
    object qyPartidasR_MATERIAL_CBARRAS: TIBStringField
      FieldName = 'R_MATERIAL_CBARRAS'
      Origin = 'TL_PARTIDAS_SURTIMIENTO.R_MATERIAL_CBARRAS'
    end
    object qyPartidasR_MATERIAL_OBSERVACIONES: TBlobField
      FieldName = 'R_MATERIAL_OBSERVACIONES'
      Origin = 'TL_PARTIDAS_SURTIMIENTO.R_MATERIAL_OBSERVACIONES'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object qyPartidasR_MATERIAL_FOTO: TBlobField
      FieldName = 'R_MATERIAL_FOTO'
      Origin = 'TL_PARTIDAS_SURTIMIENTO.R_MATERIAL_FOTO'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object qyPartidasR_PZAS_X_CAJA: TIntegerField
      FieldName = 'R_PZAS_X_CAJA'
      Origin = 'TL_PARTIDAS_SURTIMIENTO.R_PZAS_X_CAJA'
    end
    object qyPartidasR_COMENTARIO: TIBStringField
      FieldName = 'R_COMENTARIO'
      Origin = 'TL_PARTIDAS_SURTIMIENTO.R_COMENTARIO'
      Size = 50
    end
    object qyPartidasR_MEDIDA: TIntegerField
      FieldName = 'R_MEDIDA'
      Origin = 'TL_PARTIDAS_SURTIMIENTO.R_MEDIDA'
    end
    object qyPartidasR_MEDIDA_DESCRIPCION: TIBStringField
      FieldName = 'R_MEDIDA_DESCRIPCION'
      Origin = 'TL_PARTIDAS_SURTIMIENTO.R_MEDIDA_DESCRIPCION'
    end
    object qyPartidasR_COLOR: TIntegerField
      FieldName = 'R_COLOR'
      Origin = 'TL_PARTIDAS_SURTIMIENTO.R_COLOR'
    end
    object qyPartidasR_COLOR_NOMBRE: TIBStringField
      FieldName = 'R_COLOR_NOMBRE'
      Origin = 'TL_PARTIDAS_SURTIMIENTO.R_COLOR_NOMBRE'
      Size = 50
    end
    object qyPartidasR_F_PROM_ENT: TDateTimeField
      FieldName = 'R_F_PROM_ENT'
      Origin = 'TL_PARTIDAS_SURTIMIENTO.R_F_PROM_ENT'
    end
    object qyPartidasR_SERIE: TIBStringField
      FieldName = 'R_SERIE'
      Origin = 'TL_PARTIDAS_SURTIMIENTO.R_SERIE'
      Size = 50
    end
    object qyPartidasR_NUM_SERIE: TIBStringField
      FieldName = 'R_NUM_SERIE'
      Origin = 'TL_PARTIDAS_SURTIMIENTO.R_NUM_SERIE'
      Size = 2
    end
    object qyPartidasR_PRECIO: TFloatField
      FieldName = 'R_PRECIO'
      Origin = 'TL_PARTIDAS_SURTIMIENTO.R_PRECIO'
    end
    object qyPartidasR_SEL: TIBStringField
      FieldName = 'R_SEL'
      Origin = 'TL_PARTIDAS_SURTIMIENTO.R_SEL'
      Size = 2
    end
    object qyPartidasR_SURTIDO_POR: TIntegerField
      FieldName = 'R_SURTIDO_POR'
      Origin = 'TL_PARTIDAS_SURTIMIENTO.R_SURTIDO_POR'
    end
    object qyPartidasR_SURTIDO_POR_C: TIBStringField
      FieldName = 'R_SURTIDO_POR_C'
      Origin = 'TL_PARTIDAS_SURTIMIENTO.R_SURTIDO_POR_C'
      Size = 50
    end
    object qyPartidasR_SURTIDO_POR_N: TIBStringField
      FieldName = 'R_SURTIDO_POR_N'
      Origin = 'TL_PARTIDAS_SURTIMIENTO.R_SURTIDO_POR_N'
      Size = 100
    end
  end
  object dsPartidas: TDataSource
    DataSet = qyPartidas
    Left = 608
    Top = 88
  end
  object qyLiberados: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT *'
      
        'FROM TL_PEDIDOS_SURTIMIENTO(:P_ID, :P_CLAVE, :P_HOY, :P_AYER, :P' +
        '_AMBOS)')
    Left = 512
    Top = 88
    ParamData = <
      item
        DataType = ftString
        Name = 'P_ID'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'P_CLAVE'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'P_HOY'
        ParamType = ptUnknown
        Value = 'No'
      end
      item
        DataType = ftString
        Name = 'P_AYER'
        ParamType = ptUnknown
        Value = 'No'
      end
      item
        DataType = ftString
        Name = 'P_AMBOS'
        ParamType = ptUnknown
        Value = 'No'
      end>
    object qyLiberadosR_ROW: TIntegerField
      FieldName = 'R_ROW'
      Origin = 'TL_PEDIDOS_SURTIMIENTO.R_ROW'
    end
    object qyLiberadosR_ID: TIntegerField
      FieldName = 'R_ID'
      Origin = 'TL_PEDIDOS_SURTIMIENTO.R_ID'
    end
    object qyLiberadosR_PEDIDO: TIntegerField
      FieldName = 'R_PEDIDO'
      Origin = 'TL_PEDIDOS_SURTIMIENTO.R_PEDIDO'
    end
    object qyLiberadosR_PEDIDO_CLAVE: TIBStringField
      FieldName = 'R_PEDIDO_CLAVE'
      Origin = 'TL_PEDIDOS_SURTIMIENTO.R_PEDIDO_CLAVE'
    end
    object qyLiberadosR_CLIENTE: TIBStringField
      FieldName = 'R_CLIENTE'
      Origin = 'TL_PEDIDOS_SURTIMIENTO.R_CLIENTE'
      Size = 50
    end
    object qyLiberadosR_CLIENTE_NOMBRE: TIBStringField
      FieldName = 'R_CLIENTE_NOMBRE'
      Origin = 'TL_PEDIDOS_SURTIMIENTO.R_CLIENTE_NOMBRE'
      Size = 100
    end
    object qyLiberadosR_CLIENTE_RSOCIAL: TIBStringField
      FieldName = 'R_CLIENTE_RSOCIAL'
      Origin = 'TL_PEDIDOS_SURTIMIENTO.R_CLIENTE_RSOCIAL'
      Size = 100
    end
    object qyLiberadosR_EXTENSION: TIBStringField
      FieldName = 'R_EXTENSION'
      Origin = 'TL_PEDIDOS_SURTIMIENTO.R_EXTENSION'
    end
    object qyLiberadosR_EXTENSION_NOMBRE: TIBStringField
      FieldName = 'R_EXTENSION_NOMBRE'
      Origin = 'TL_PEDIDOS_SURTIMIENTO.R_EXTENSION_NOMBRE'
      Size = 100
    end
    object qyLiberadosR_GRANTOTAL: TFloatField
      FieldName = 'R_GRANTOTAL'
      Origin = 'TL_PEDIDOS_SURTIMIENTO.R_GRANTOTAL'
    end
    object qyLiberadosR_PRIORIDAD: TIBStringField
      FieldName = 'R_PRIORIDAD'
      Origin = 'TL_PEDIDOS_SURTIMIENTO.R_PRIORIDAD'
      Size = 2
    end
    object qyLiberadosR_FECHA: TDateTimeField
      FieldName = 'R_FECHA'
      Origin = 'TL_PEDIDOS_SURTIMIENTO.R_FECHA'
    end
    object qyLiberadosR_NUM_PART: TIntegerField
      FieldName = 'R_NUM_PART'
      Origin = 'TL_PEDIDOS_SURTIMIENTO.R_NUM_PART'
    end
    object qyLiberadosR_ESTATUS: TIBStringField
      FieldName = 'R_ESTATUS'
      Origin = 'TL_PEDIDOS_SURTIMIENTO.R_ESTATUS'
    end
    object qyLiberadosR_VENDEDOR: TIntegerField
      FieldName = 'R_VENDEDOR'
      Origin = 'TL_PEDIDOS_SURTIMIENTO.R_VENDEDOR'
    end
    object qyLiberadosR_VENDEDOR_C: TIBStringField
      FieldName = 'R_VENDEDOR_C'
      Origin = 'TL_PEDIDOS_SURTIMIENTO.R_VENDEDOR_C'
      Size = 50
    end
    object qyLiberadosR_VENDEDOR_N: TIBStringField
      FieldName = 'R_VENDEDOR_N'
      Origin = 'TL_PEDIDOS_SURTIMIENTO.R_VENDEDOR_N'
      Size = 100
    end
    object qyLiberadosR_ALMACEN: TIntegerField
      FieldName = 'R_ALMACEN'
      Origin = 'TL_PEDIDOS_SURTIMIENTO.R_ALMACEN'
    end
  end
  object dsLiberados: TDataSource
    DataSet = qyLiberados
    Left = 544
    Top = 88
  end
  object eventsSurtimiento: TIBEvents
    AutoRegister = False
    Database = dmIBModulo.ibSistema
    Registered = False
    OnEventAlert = eventsSurtimientoEventAlert
    Left = 552
    Top = 40
  end
  object spA_DESPACHADOR_SURTIMIENTO: TIBStoredProc
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    StoredProcName = 'A_DESPACHADOR_SURTIMIENTO'
    Left = 184
    Top = 384
    ParamData = <
      item
        DataType = ftInteger
        Name = 'R_PEDIDO'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'R_CUANTOS'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'P_ORIGEN'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'P_USUARIO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'P_QUIEN'
        ParamType = ptInput
      end>
  end
  object spA_SURTIMIENTO_MI: TIBStoredProc
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    StoredProcName = 'A_SURTIMIENTO_MI'
    Left = 432
    Top = 80
    ParamData = <
      item
        DataType = ftInteger
        Name = 'R_MI'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'P_ID'
        ParamType = ptInput
      end>
  end
  object spP_ADD_MI_PEDIDO: TIBStoredProc
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    StoredProcName = 'P_ADD_MI_PEDIDO'
    Left = 464
    Top = 80
    ParamData = <
      item
        DataType = ftInteger
        Name = 'R_MI'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'P_ID'
        ParamType = ptInput
      end>
  end
  object spM_SURTIMIENTO_USR: TIBStoredProc
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    StoredProcName = 'M_SURTIMIENTO_USR'
    Left = 496
    Top = 304
    ParamData = <
      item
        DataType = ftInteger
        Name = 'R_ID'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'P_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'P_USUARIO'
        ParamType = ptInput
      end>
  end
  object spM_SURTIMIENTO_USR_TODOS: TIBStoredProc
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    StoredProcName = 'M_SURTIMIENTO_USR_TODOS'
    Left = 432
    Top = 112
    ParamData = <
      item
        DataType = ftInteger
        Name = 'R_ID'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'P_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'P_USUARIO'
        ParamType = ptInput
      end>
  end
end
