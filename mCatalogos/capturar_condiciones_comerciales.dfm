inherited frmCapturar_condiciones_comerciales: TfrmCapturar_condiciones_comerciales
  Left = 335
  Top = 47
  Caption = 'Condiciones Comerciales'
  ClientHeight = 504
  ClientWidth = 827
  ExplicitWidth = 320
  ExplicitHeight = 240
  PixelsPerInch = 96
  TextHeight = 13
  inherited paLienzo: TPanel
    Width = 827
    Height = 422
    ExplicitWidth = 827
    ExplicitHeight = 422
    object Label2: TLabel
      Left = 8
      Top = 8
      Width = 27
      Height = 13
      Caption = 'Cla&ve'
      FocusControl = deClave
    end
    object Label3: TLabel
      Left = 136
      Top = 8
      Width = 37
      Height = 13
      Caption = 'Nombre'
      FocusControl = deNombre
    end
    object Label4: TLabel
      Left = 136
      Top = 56
      Width = 58
      Height = 13
      Caption = 'Nu&m. Pagos'
      FocusControl = ceNumPagos
    end
    object Label5: TLabel
      Left = 264
      Top = 56
      Width = 112
      Height = 13
      Caption = 'I&nvetervalo entre pagos'
      FocusControl = ceInvtervalo
    end
    object Label6: TLabel
      Left = 392
      Top = 56
      Width = 124
      Height = 13
      Caption = 'Desplazamiento &1er. Pago'
      FocusControl = ceDesplazamiento
    end
    object Label7: TLabel
      Left = 520
      Top = 56
      Width = 106
      Height = 13
      Caption = 'Descuento Porcenta&je'
      FocusControl = ceDescuentoPorcentaje
    end
    object Label8: TLabel
      Left = 8
      Top = 104
      Width = 71
      Height = 13
      Caption = '&Financiamiento'
      FocusControl = cbFinanciamientos
    end
    object sbRefresh: TSpeedButton
      Left = 239
      Top = 120
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
      OnClick = sbRefreshClick
    end
    object sbBorrar: TSpeedButton
      Left = 263
      Top = 120
      Width = 21
      Height = 21
      Hint = 'Borrar'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF95
        DF9588D78845816F63AB7CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF6EC291409A602A8F9F28698F2580B61C729455BD60FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF95DF954AAB603594B451A3BF4A
        B1E253BBE450BCEF1C7CC2155F7871D471FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        A6E4A6207D7C4691B163CDF845B0E450BCF955C2F440AADF44A8DA1A82CF155F
        7855BD60FFFFFFFFFFFFFFFFFF71D471207D7C206F916AD2F447AFF45AC8F950
        BCF940AAF455C2F44FB4E53AA4D90054AA409A60B8E9B8FFFFFF78C883388F91
        6DD1F166D4F156BAF14BAEF44AAEF154BAFF53BBEB53BBEB4AA3E14093DD3D88
        D2054E966EB683FFFFFF15788A2382AD2E94BF2089BF48B3E953BFF44AB6FF40
        AAE950BCEF3AA4D9407ECB3587CF4577CF0547AF20656091CF9195D28AB1D2A6
        FFFFFFFFFFFF4197AB288BB645B1E44599D9357CC92A65BF4887CF306BC440AA
        DF40AADF0054AA588A7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA8DACB4C8EA445
        8ED9357CC92A65BF3D92DA50BCF940AAF440AADF0054AA5F8A7FFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3A76A43181D46DD1FF60CFEA40AAF450BC
        F9258DD90A5A91669C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9D
        D2C154AFD44AAEE942ABD83886B7528CBA36598B4AAB60ADDFB1FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB4BBB49FA79F9B99
        9B3F5663606540FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFD1E2C6677D5C7CC1CA3C9BDF3C332798AF8DFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF95DF958A8F
        8A8A8F8ADBBBBB95BB8AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      ParentShowHint = False
      ShowHint = True
      OnClick = sbBorrarClick
    end
    object Label1: TLabel
      Left = 520
      Top = 8
      Width = 49
      Height = 13
      Caption = 'Aplicacion'
      FocusControl = deNombre
    end
    object Label9: TLabel
      Left = 8
      Top = 56
      Width = 38
      Height = 13
      Caption = 'Servicio'
      FocusControl = deNombre
    end
    object ceDescuentoPorcentaje: TDBEdit
      Left = 520
      Top = 72
      Width = 124
      Height = 21
      DataField = 'DESCUENTO_PORCENTAJE'
      DataSource = dsFuente
      TabOrder = 7
    end
    object ceDesplazamiento: TDBEdit
      Left = 392
      Top = 72
      Width = 124
      Height = 21
      DataField = 'DESPLAZAMIENTO_1_PAGO'
      DataSource = dsFuente
      TabOrder = 6
    end
    object ceInvtervalo: TDBEdit
      Left = 264
      Top = 72
      Width = 124
      Height = 21
      DataField = 'INTERVALO_ENTRE_PAGOS'
      DataSource = dsFuente
      TabOrder = 5
    end
    object ceNumPagos: TDBEdit
      Left = 136
      Top = 72
      Width = 124
      Height = 21
      DataField = 'NUM_PAGOS'
      DataSource = dsFuente
      TabOrder = 4
    end
    object deClave: TDBEdit
      Left = 8
      Top = 24
      Width = 124
      Height = 21
      DataField = 'CLAVE'
      DataSource = dsFuente
      TabOrder = 0
    end
    object deNombre: TDBEdit
      Left = 136
      Top = 24
      Width = 380
      Height = 21
      DataField = 'NOMBRE'
      DataSource = dsFuente
      TabOrder = 1
    end
    object cbMoratorio: TDBCheckBox
      Left = 216
      Top = 184
      Width = 121
      Height = 17
      Caption = '&Moratorio'
      DataField = 'MORATORIO'
      DataSource = dsFuente
      TabOrder = 17
      ValueChecked = 'Si'
      ValueUnchecked = 'No'
    end
    object cbPuntoVenta: TDBCheckBox
      Left = 8
      Top = 144
      Width = 121
      Height = 17
      Caption = '&Punto de Venta'
      DataField = 'PUNTO_DE_VENTA'
      DataSource = dsFuente
      TabOrder = 9
      ValueChecked = 'Si'
      ValueUnchecked = 'No'
    end
    object cbPagos: TDBCheckBox
      Left = 8
      Top = 164
      Width = 161
      Height = 17
      Caption = 'P&agos (Cuentas por Cobrar)'
      DataField = 'PAGOS'
      DataSource = dsFuente
      TabOrder = 10
      ValueChecked = 'Si'
      ValueUnchecked = 'No'
    end
    object cbAutorizacion: TDBCheckBox
      Left = 8
      Top = 245
      Width = 145
      Height = 17
      Caption = 'Requiere Autori&zacion'
      DataField = 'REQUIERE_AUTORIZACION'
      DataSource = dsFuente
      TabOrder = 15
      ValueChecked = 'Si'
      ValueUnchecked = 'No'
    end
    object cbFolio: TDBCheckBox
      Left = 8
      Top = 285
      Width = 121
      Height = 17
      Caption = 'Requiere F&olio'
      DataField = 'REQUIERE_FOLIO'
      DataSource = dsFuente
      TabOrder = 18
      ValueChecked = 'Si'
      ValueUnchecked = 'No'
    end
    object cbFecha: TDBCheckBox
      Left = 8
      Top = 204
      Width = 121
      Height = 17
      Caption = 'Requiere &Fecha'
      DataField = 'REQUIERE_FECHA'
      DataSource = dsFuente
      TabOrder = 13
      ValueChecked = 'Si'
      ValueUnchecked = 'No'
    end
    object cbBanco: TDBCheckBox
      Left = 8
      Top = 265
      Width = 121
      Height = 17
      Caption = 'Requiere &Banco'
      DataField = 'REQUIERE_BANCO'
      DataSource = dsFuente
      TabOrder = 16
      ValueChecked = 'Si'
      ValueUnchecked = 'No'
    end
    object cbReferencia: TDBCheckBox
      Left = 8
      Top = 225
      Width = 124
      Height = 17
      Caption = 'Requiere &Referencia'
      DataField = 'REQUIERE_REFERENCIA'
      DataSource = dsFuente
      TabOrder = 14
      ValueChecked = 'Si'
      ValueUnchecked = 'No'
    end
    object cbPagosCXP: TDBCheckBox
      Left = 8
      Top = 184
      Width = 153
      Height = 17
      Caption = 'P&agos (Cuentas por Pagar)'
      DataField = 'PAGOS_CXP'
      DataSource = dsFuente
      TabOrder = 11
      ValueChecked = 'Si'
      ValueUnchecked = 'No'
    end
    object cbPlanes: TDBCheckBox
      Left = 216
      Top = 164
      Width = 177
      Height = 17
      Caption = 'Planes de Pago (Cotizaciones)'
      DataField = 'PLANES_DE_PAGO'
      DataSource = dsFuente
      TabOrder = 12
      ValueChecked = 'Si'
      ValueUnchecked = 'No'
    end
    object cbFinanciamientos: TDBLookupComboBox
      Left = 8
      Top = 120
      Width = 228
      Height = 21
      DataField = 'FINANCIAMIENTO'
      DataSource = dsFuente
      DropDownWidth = 300
      KeyField = 'ID'
      ListField = 'descripcion_corta;PORCENTAJE'
      ListSource = dsFinanciamientos
      TabOrder = 8
    end
    object cbActivarAlmacen: TDBCheckBox
      Left = 216
      Top = 144
      Width = 129
      Height = 17
      Caption = 'Activar Almacen'
      DataField = 'ACTIVAR_ALMACEN'
      DataSource = dsFuente
      TabOrder = 19
      ValueChecked = 'Si'
      ValueUnchecked = 'No'
    end
    object cbDarCambio: TDBCheckBox
      Left = 216
      Top = 205
      Width = 121
      Height = 17
      Caption = '&Dar Cambio'
      DataField = 'DAR_CAMBIO'
      DataSource = dsFuente
      TabOrder = 20
      ValueChecked = 'Si'
      ValueUnchecked = 'No'
    end
    object deAplicacion: TDBEdit
      Left = 520
      Top = 24
      Width = 124
      Height = 21
      DataField = 'APLICACION'
      DataSource = dsFuente
      TabOrder = 2
    end
    object deServicio: TDBEdit
      Left = 8
      Top = 72
      Width = 124
      Height = 21
      DataField = 'SERVICIO'
      DataSource = dsFuente
      TabOrder = 3
    end
  end
  inherited fpPadre: TPanel
    Width = 827
    ExplicitWidth = 827
    inherited Panel1: TPanel
      Width = 827
      ExplicitWidth = 827
    end
    object ibCC: TBitBtn
      Left = 543
      Top = 23
      Width = 66
      Height = 34
      Cursor = crHandPoint
      Caption = 'Gral.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Glyph.Data = {
        B6080000424DB608000000000000360400002800000024000000200000000100
        0800000000008004000000000000000000000001000000000000B7885C00C7A8
        8B00E1D3C600EEE1D500F2EAE30093561C00A4602000854E1A00A1774F00DCC5
        AE00E8D7C700232424009697970017ABFA00169BE4002CB0F600217FB5001E49
        60004BADE50062C5F90091D6FB00C2E7FB00DDF1FC00DBDCDD00BBBCBD00ADAE
        AF00EFF5FC00C1CFF2000611D9003640DB005B62E6009B9FF000A3A3A400FFFF
        FF00FDFDFD00F9F9F900F6F6F600F1F1F100EAEAEA00E3E3E300DEDEDE00DDDD
        DD00DBDBDB00D9D9D900D6D6D600D3D3D300CECECE00C5C5C500B4B4B4008787
        87007878780065656500505050003C3C3C002D2D2D001B1B1B00101010000808
        0800040404000000000000000000000000000000000000000000000000000000
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
        0000000000000000000000000000000000000000000000000000010101010101
        0101010101010101010101010101010101010101010101010101010101010101
        010101010101010101162E182E0A292504010101010101010101010101010101
        010101010101010101010101011B353B383836310C2E1B160101010101010101
        0101010101010101010101010101010101013B1109313536363635080C180A25
        0101010101010101010101010101010101010101010938081B142918180C3333
        353634320C0925160101010101010101010101160101010101183B00130D0F13
        1318141B09193133340611330C2E01010101010101162E0C3201290101093B31
        180F0E0D0E0E100F1313142E1B0931000834120A010101010125003B0B3B350C
        0A183831140D120F120D0E0E0D0F0F130F0F2921162E331801010101012E110B
        0132343B110C0B00130E0E0F100F130F120F0E0D0D0E0D0F121B310001010101
        01090B3425211409073B380C25130F120D0E0E10100D0F0F0F0F0D0F0E13000C
        0101010101000B3225212121043338310A212121212E14130F0D0D0D0D0D0D0F
        0E143100010101010133381221292E2121093801162E2E212121212121212129
        13130D120D14310C0101010125340B2E212118182E310B3204212E2E2E2E2E2E
        2E2921212121211B2125000C010101012E0B110A042E2E251B330B12252E0429
        212521160A2E0A18292E25042121191E01010101183B331621211B192E000B09
        00050634000109092E04210425182E2E1621000C010101010C3B002121161621
        1608380C18340535350735070600080109090A1B21210C010401010133380C21
        14101E1D12090B1F09353407053535053507073407060600000A0C010101012E
        340B2E1B101C1C1C1C320B1F0907070736053405350607070507060707000C01
        010101250B3521121C1C1C1C1D0E3619290C0006340707070534070507070505
        07010C000101012E383329101C162E100F0D1134042121212121042909090000
        0606070707010C31160101013B0C161D1C252121250F0E110B0B360B33310C2E
        252121212121212125040C01010101330B09211E1C1C1D16212121130D0D1621
        2E1B1E00110B3634333231092E1F310101010135350A211E1C1C1C100F142125
        0F0F212121212121091F042E0C0C0C313208192E010101361104211B1E1C1C0E
        0D0D0D0F0F0F21162516040A320C010101010101012501010101010036310A21
        251E1F1F0F0D120D0E1604162925251B0C092501010101010101010101010101
        0C3534321F2E042114120F13142125161B160419082E01010101010101010101
        01010101012519081106330C0921161621250A160A16291F3104010101010101
        0101010101010101010101012518313333320C0A2516162E162E250C0C250101
        010101010101010101010101010101010101012518000833310C2E1B212E2E00
        0C16010101010101010101010101010101010101010101010101010A1F003332
        0025090809010101010101010101010101010101010101010101010101010101
        01292E010806331F1B0101010101010101010101010101010101010101010101
        0101010101010116211601010101010101010101010101010101}
      ParentFont = False
      TabOrder = 5
      OnClick = ibCCClick
    end
  end
  inherited Panel2: TPanel
    Top = 482
    Width = 827
    ExplicitTop = 482
    ExplicitWidth = 827
  end
  inherited dsFuente: TDataSource
    Left = 456
    Top = 296
  end
  inherited qyBotones: TIBQuery
    Left = 392
    Top = 296
  end
  inherited TCapturar: TIBTable
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'TIPO'
        DataType = ftString
        Size = 11
      end
      item
        Name = 'CLAVE'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'NOMBRE'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'NUM_PAGOS'
        DataType = ftInteger
      end
      item
        Name = 'INTERVALO_ENTRE_PAGOS'
        DataType = ftInteger
      end
      item
        Name = 'DESPLAZAMIENTO_1_PAGO'
        DataType = ftInteger
      end
      item
        Name = 'DESCUENTO_PORCENTAJE'
        DataType = ftFloat
      end
      item
        Name = 'FINANCIAMIENTO'
        DataType = ftInteger
      end
      item
        Name = 'MORATORIO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'PUNTO_DE_VENTA'
        Attributes = [faFixed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'REQUIERE_AUTORIZACION'
        Attributes = [faFixed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'REQUIERE_FOLIO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'PAGOS'
        Attributes = [faFixed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'REQUIERE_REFERENCIA'
        Attributes = [faFixed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'REQUIERE_FECHA'
        Attributes = [faFixed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'REQUIERE_BANCO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'PAGOS_CXP'
        Attributes = [faFixed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'PLANES_DE_PAGO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'ACTIVAR_ALMACEN'
        Attributes = [faFixed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'DAR_CAMBIO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'APLICACION'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'SERVICIO'
        DataType = ftString
        Size = 50
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY46'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'RDB$FOREIGN47'
        Fields = 'FINANCIAMIENTO'
      end>
    IndexFieldNames = 'ID'
    MasterFields = 'R_ID'
    StoreDefs = True
    TableName = 'CONDICIONES_COMERCIALES'
    Left = 424
    Top = 296
    object TCapturarID: TIntegerField [0]
      FieldName = 'ID'
      Required = True
    end
    object TCapturarTIPO: TIBStringField [1]
      FieldName = 'TIPO'
      Size = 11
    end
    object TCapturarCLAVE: TIBStringField [2]
      FieldName = 'CLAVE'
    end
    object TCapturarNOMBRE: TIBStringField [3]
      FieldName = 'NOMBRE'
      Size = 100
    end
    object TCapturarNUM_PAGOS: TIntegerField [4]
      FieldName = 'NUM_PAGOS'
    end
    object TCapturarINTERVALO_ENTRE_PAGOS: TIntegerField [5]
      FieldName = 'INTERVALO_ENTRE_PAGOS'
    end
    object TCapturarDESPLAZAMIENTO_1_PAGO: TIntegerField [6]
      FieldName = 'DESPLAZAMIENTO_1_PAGO'
    end
    object TCapturarDESCUENTO_PORCENTAJE: TFloatField [7]
      FieldName = 'DESCUENTO_PORCENTAJE'
    end
    object TCapturarFINANCIAMIENTO: TIntegerField [8]
      FieldName = 'FINANCIAMIENTO'
    end
    object TCapturarMORATORIO: TIBStringField [9]
      FieldName = 'MORATORIO'
      Size = 2
    end
    object TCapturarPUNTO_DE_VENTA: TIBStringField [10]
      FieldName = 'PUNTO_DE_VENTA'
      Size = 2
    end
    object TCapturarREQUIERE_AUTORIZACION: TIBStringField [11]
      FieldName = 'REQUIERE_AUTORIZACION'
      Size = 2
    end
    object TCapturarREQUIERE_FOLIO: TIBStringField [12]
      FieldName = 'REQUIERE_FOLIO'
      Size = 2
    end
    object TCapturarPAGOS: TIBStringField [13]
      FieldName = 'PAGOS'
      Size = 2
    end
    object TCapturarREQUIERE_REFERENCIA: TIBStringField [14]
      FieldName = 'REQUIERE_REFERENCIA'
      Size = 2
    end
    object TCapturarREQUIERE_FECHA: TIBStringField [15]
      FieldName = 'REQUIERE_FECHA'
      Size = 2
    end
    object TCapturarREQUIERE_BANCO: TIBStringField [16]
      FieldName = 'REQUIERE_BANCO'
      Size = 2
    end
    object TCapturarPAGOS_CXP: TIBStringField [17]
      FieldName = 'PAGOS_CXP'
      Size = 2
    end
    object TCapturarPLANES_DE_PAGO: TIBStringField [18]
      FieldName = 'PLANES_DE_PAGO'
      Size = 2
    end
    object TCapturarACTIVAR_ALMACEN: TIBStringField [19]
      FieldName = 'ACTIVAR_ALMACEN'
      Size = 2
    end
    object TCapturarDAR_CAMBIO: TIBStringField [20]
      FieldName = 'DAR_CAMBIO'
      FixedChar = True
      Size = 2
    end
    object TCapturarAPLICACION: TIBStringField [21]
      FieldName = 'APLICACION'
      Size = 50
    end
    object TCapturarSERVICIO: TIBStringField [22]
      FieldName = 'SERVICIO'
      Size = 50
    end
  end
  inherited spID: TIBStoredProc
    Left = 488
    Top = 296
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
        Value = 'CONDICIONES_COMERCIALES'
      end>
  end
  object TFinanciamientos: TIBTable
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    OnCalcFields = TFinanciamientosCalcFields
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'CLAVE'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DESCRIPCION'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'PORCENTAJE'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY45'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end>
    IndexFieldNames = 'ID'
    StoreDefs = True
    TableName = 'FINANCIAMIENTOS'
    UniDirectional = False
    Left = 472
    Top = 223
    object TFinanciamientosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object TFinanciamientosCLAVE: TIBStringField
      FieldName = 'CLAVE'
    end
    object TFinanciamientosDESCRIPCION: TIBStringField
      FieldName = 'DESCRIPCION'
      Size = 100
    end
    object TFinanciamientosPORCENTAJE: TFloatField
      FieldName = 'PORCENTAJE'
      DisplayFormat = '###,##0.00 %'
    end
    object TFinanciamientosdescripcion_corta: TIBStringField
      FieldKind = fkCalculated
      FieldName = 'descripcion_corta'
      Size = 35
      Calculated = True
    end
  end
  object dsFinanciamientos: TDataSource
    DataSet = TFinanciamientos
    Left = 504
    Top = 223
  end
  object spCAMBIO_GRAL_CCOMERCIAL: TIBStoredProc
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    StoredProcName = 'CAMBIO_GRAL_CCOMERCIAL'
    Left = 520
    Top = 296
    ParamData = <
      item
        DataType = ftInteger
        Name = 'P_CCOMERCIAL'
        ParamType = ptInput
      end>
  end
end
