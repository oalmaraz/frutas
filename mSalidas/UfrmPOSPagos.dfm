inherited frmPOSPagos: TfrmPOSPagos
  Left = 270
  ActiveControl = buF5
  BorderStyle = bsNone
  Caption = 'Pagar'
  ClientHeight = 650
  ClientWidth = 919
  Color = clWhite
  OldCreateOrder = True
  WindowState = wsNormal
  ExplicitTop = 8
  ExplicitWidth = 919
  PixelsPerInch = 96
  TextHeight = 13
  inherited paBotones: TPanel
    Left = 247
    Top = 80
    Width = 230
    Height = 570
    Align = alLeft
    Color = clWhite
    ExplicitLeft = 247
    ExplicitTop = 80
    ExplicitWidth = 230
    ExplicitHeight = 570
    inherited Label15: TLabel
      Left = 576
      Visible = False
      ExplicitLeft = 576
    end
    inherited Label1: TLabel
      Left = 576
      Visible = False
      ExplicitLeft = 576
    end
    inherited deCliente: TDBEdit
      Left = 624
      Width = 105
      TabOrder = 6
      Visible = False
      ExplicitLeft = 624
      ExplicitWidth = 105
    end
    inherited deExtension: TDBEdit
      Left = 624
      Width = 105
      TabOrder = 7
      Visible = False
      ExplicitLeft = 624
      ExplicitWidth = 105
    end
    inherited buF8: TBitBtn
      Top = 69
      Width = 70
      Height = 60
      TabOrder = 3
      ExplicitTop = 69
      ExplicitWidth = 70
      ExplicitHeight = 60
    end
    inherited buF9: TBitBtn
      Left = 81
      Top = 69
      Width = 70
      Height = 60
      TabOrder = 4
      ExplicitLeft = 81
      ExplicitTop = 69
      ExplicitWidth = 70
      ExplicitHeight = 60
    end
    object buF5: TBitBtn [6]
      Left = 8
      Top = 4
      Width = 70
      Height = 60
      Caption = 'F5 Efectivo'
      TabOrder = 0
      OnClick = buF5Click
    end
    object buF6: TBitBtn [7]
      Left = 81
      Top = 4
      Width = 70
      Height = 60
      Caption = 'F6 Tarjeta de Credito'
      TabOrder = 1
      OnClick = buF6Click
    end
    object buF7: TBitBtn [8]
      Left = 153
      Top = 4
      Width = 70
      Height = 60
      Caption = 'F7 Vales'
      TabOrder = 2
      OnClick = buF7Click
    end
    inherited buF10: TBitBtn
      Left = 153
      Top = 69
      Width = 70
      Height = 60
      TabOrder = 5
      ExplicitLeft = 153
      ExplicitTop = 69
      ExplicitWidth = 70
      ExplicitHeight = 60
    end
    inherited buF12Imp: TBitBtn
      Left = 8
      Top = 134
      Width = 215
      Height = 60
      TabOrder = 8
      ExplicitLeft = 8
      ExplicitTop = 134
      ExplicitWidth = 215
      ExplicitHeight = 60
    end
    inherited buVentas: TBitBtn
      Left = 283
      Top = 12
      TabOrder = 9
      TabStop = False
      ExplicitLeft = 283
      ExplicitTop = 12
    end
  end
  inherited paFacturar: TPanel
    Top = 60
    Width = 919
    Height = 20
    Color = clWhite
    ExplicitTop = 60
    ExplicitWidth = 919
    ExplicitHeight = 20
    inherited cbFacturar: TCheckBox
      Left = 28
      Top = -1
      ExplicitLeft = 28
      ExplicitTop = -1
    end
  end
  inherited paCaptura: TPanel
    Left = 477
    Top = 80
    Width = 442
    Height = 570
    Align = alClient
    Color = clWhite
    ExplicitLeft = 477
    ExplicitTop = 80
    ExplicitWidth = 442
    ExplicitHeight = 570
    inherited Label3: TLabel
      Left = 150
      ExplicitLeft = 150
    end
    inherited laBanco: TLabel
      Left = 237
      ExplicitLeft = 237
    end
    inherited laFecha: TLabel
      Left = 150
      ExplicitLeft = 150
    end
    inherited laReferencia: TLabel
      Left = 237
      ExplicitLeft = 237
    end
    inherited laFolio: TLabel
      Left = 360
      ExplicitLeft = 360
    end
    inherited sbRBancos: TSpeedButton
      Left = 385
      ExplicitLeft = 385
    end
    inherited laCuenta: TLabel
      Left = 408
      ExplicitLeft = 408
    end
    inherited edAlmacen: TEdit
      Width = 140
      ExplicitWidth = 140
    end
    inherited buDoc: TButton
      Left = 237
      ExplicitLeft = 237
    end
    inherited edCComercial: TEdit
      Width = 140
      ExplicitWidth = 140
    end
    inherited edMonto: TEdit
      Left = 150
      ExplicitLeft = 150
    end
    inherited edFecha: TDateTimePicker
      Left = 150
      ExplicitLeft = 150
    end
    inherited edReferencia: TEdit
      Left = 237
      ExplicitLeft = 237
    end
    inherited edFolio: TEdit
      Left = 360
      ExplicitLeft = 360
    end
    inherited cbAlmacenes: TDBLookupComboBox
      Width = 140
      ExplicitWidth = 140
    end
    inherited cbBancos: TDBLookupComboBox
      Left = 237
      ExplicitLeft = 237
    end
    inherited deCuenta: TDBEdit
      Left = 408
      ExplicitLeft = 408
    end
  end
  inherited paContenedorTotales: TPanel
    Top = 0
    Width = 919
    Height = 60
    Align = alTop
    Color = clWhite
    ExplicitTop = 0
    ExplicitWidth = 919
    ExplicitHeight = 60
    inherited Label9: TLabel
      Left = 640
      Top = 139
      Visible = False
      ExplicitLeft = 640
      ExplicitTop = 139
    end
    inherited dtCredito: TDBText
      Left = 640
      Top = 153
      Visible = False
      ExplicitLeft = 640
      ExplicitTop = 153
    end
    inherited Label10: TLabel
      Left = 640
      Top = 182
      Visible = False
      ExplicitLeft = 640
      ExplicitTop = 182
    end
    inherited dtCreditoDisp: TDBText
      Left = 640
      Top = 197
      Visible = False
      ExplicitLeft = 640
      ExplicitTop = 197
    end
    object Bevel1: TBevel [4]
      Left = 0
      Top = 34
      Width = 919
      Height = 4
      Align = alBottom
      Shape = bsBottomLine
    end
    object fcImager5: TImage [5]
      Left = 917
      Top = 2
      Width = 2
      Height = 32
      Align = alRight
      Picture.Data = {
        0A544A504547496D61676577020000FFD8FFE000104A46494600010101004800
        480000FFDB0043000503040404030504040405050506070C08070707070F0B0B
        090C110F1212110F111113161C1713141A1511111821181A1D1D1F1F1F131722
        24221E241C1E1F1EFFDB0043010505050706070E08080E1E1411141E1E1E1E1E
        1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E
        1E1E1E1E1E1E1E1E1E1E1E1E1EFFC00011080002000203012200021101031101
        FFC4001F0000010501010101010100000000000000000102030405060708090A
        0BFFC400B5100002010303020403050504040000017D01020300041105122131
        410613516107227114328191A1082342B1C11552D1F02433627282090A161718
        191A25262728292A3435363738393A434445464748494A535455565758595A63
        6465666768696A737475767778797A838485868788898A92939495969798999A
        A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
        D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
        01010101010101010000000000000102030405060708090A0BFFC400B5110002
        0102040403040705040400010277000102031104052131061241510761711322
        328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
        292A35363738393A434445464748494A535455565758595A636465666768696A
        737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
        A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
        E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00F8CA
        8A28A00FFFD9}
    end
    object fcImager4: TImage [6]
      Left = 0
      Top = 0
      Width = 919
      Height = 2
      Align = alTop
      Picture.Data = {
        0A544A504547496D61676577020000FFD8FFE000104A46494600010101004800
        480000FFDB0043000503040404030504040405050506070C08070707070F0B0B
        090C110F1212110F111113161C1713141A1511111821181A1D1D1F1F1F131722
        24221E241C1E1F1EFFDB0043010505050706070E08080E1E1411141E1E1E1E1E
        1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E
        1E1E1E1E1E1E1E1E1E1E1E1E1EFFC00011080002000203012200021101031101
        FFC4001F0000010501010101010100000000000000000102030405060708090A
        0BFFC400B5100002010303020403050504040000017D01020300041105122131
        410613516107227114328191A1082342B1C11552D1F02433627282090A161718
        191A25262728292A3435363738393A434445464748494A535455565758595A63
        6465666768696A737475767778797A838485868788898A92939495969798999A
        A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
        D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
        01010101010101010000000000000102030405060708090A0BFFC400B5110002
        0102040403040705040400010277000102031104052131061241510761711322
        328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
        292A35363738393A434445464748494A535455565758595A636465666768696A
        737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
        A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
        E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00F8CA
        8A28A00FFFD9}
    end
    inherited paTotales: TPanel
      Top = 2
      Width = 665
      Height = 32
      BevelInner = bvNone
      BevelOuter = bvNone
      Color = clWhite
      ExplicitTop = 2
      ExplicitWidth = 665
      ExplicitHeight = 32
      inherited Label6: TLabel
        Left = 66
        Top = 5
        Width = 160
        Height = 24
        Alignment = taCenter
        Font.Charset = ANSI_CHARSET
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ExplicitLeft = 66
        ExplicitTop = 5
        ExplicitWidth = 160
        ExplicitHeight = 24
      end
      inherited dtCambio: TDBText
        Left = 66
        Top = 28
        Width = 160
        Alignment = taCenter
        Font.Charset = ANSI_CHARSET
        Font.Name = 'Tahoma'
        Font.Style = []
        ExplicitLeft = 66
        ExplicitTop = 28
        ExplicitWidth = 160
      end
      inherited Label7: TLabel
        Left = 253
        Top = 5
        Width = 160
        Height = 24
        Alignment = taCenter
        Font.Charset = ANSI_CHARSET
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ExplicitLeft = 253
        ExplicitTop = 5
        ExplicitWidth = 160
        ExplicitHeight = 24
      end
      inherited Label8: TLabel
        Left = 436
        Top = 5
        Width = 221
        Height = 24
        Alignment = taCenter
        Font.Charset = ANSI_CHARSET
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ExplicitLeft = 436
        ExplicitTop = 5
        ExplicitWidth = 221
        ExplicitHeight = 24
      end
      inherited dtTotal: TDBText
        Left = 466
        Top = 28
        Width = 160
        Alignment = taCenter
        Font.Charset = ANSI_CHARSET
        Font.Name = 'Tahoma'
        Font.Style = []
        ExplicitLeft = 466
        ExplicitTop = 28
        ExplicitWidth = 160
      end
      inherited laF4: TLabel
        Left = 253
        Top = 29
        Width = 20
        Height = 23
        Font.Charset = ANSI_CHARSET
        Font.Name = 'Tahoma'
        Font.Style = []
        ExplicitLeft = 253
        ExplicitTop = 29
        ExplicitWidth = 20
        ExplicitHeight = 23
      end
      object fcImager1: TImage [6]
        Left = 0
        Top = 0
        Width = 2
        Height = 32
        Align = alLeft
        Picture.Data = {
          0A544A504547496D61676577020000FFD8FFE000104A46494600010101004800
          480000FFDB0043000503040404030504040405050506070C08070707070F0B0B
          090C110F1212110F111113161C1713141A1511111821181A1D1D1F1F1F131722
          24221E241C1E1F1EFFDB0043010505050706070E08080E1E1411141E1E1E1E1E
          1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E
          1E1E1E1E1E1E1E1E1E1E1E1E1EFFC00011080002000203012200021101031101
          FFC4001F0000010501010101010100000000000000000102030405060708090A
          0BFFC400B5100002010303020403050504040000017D01020300041105122131
          410613516107227114328191A1082342B1C11552D1F02433627282090A161718
          191A25262728292A3435363738393A434445464748494A535455565758595A63
          6465666768696A737475767778797A838485868788898A92939495969798999A
          A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
          D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
          01010101010101010000000000000102030405060708090A0BFFC400B5110002
          0102040403040705040400010277000102031104052131061241510761711322
          328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
          292A35363738393A434445464748494A535455565758595A636465666768696A
          737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
          A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
          E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00F8CA
          8A28A00FFFD9}
      end
      inherited laSaldo: TBitBtn
        Left = 253
        Top = 28
        Width = 160
        Font.Charset = ANSI_CHARSET
        Font.Name = 'Tahoma'
        Font.Style = []
        ExplicitLeft = 253
        ExplicitTop = 28
        ExplicitWidth = 160
      end
    end
    inherited Panel2: TPanel
      Top = 38
      Width = 919
      ExplicitTop = 38
      ExplicitWidth = 919
    end
  end
  inherited dgFormaPago: TDBGrid
    Left = 29
    Top = 80
    Width = 218
    Height = 570
    Align = alLeft
  end
  object Panel1: TPanel [5]
    Left = 0
    Top = 80
    Width = 29
    Height = 570
    Align = alLeft
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 5
  end
  inherited qyIBXAlmacenes: TIBQuery
    Left = 160
    Top = 130
  end
  inherited dsAlmacenes: TDataSource
    Left = 192
    Top = 130
  end
  inherited dsBancos: TDataSource
    Left = 488
    Top = 146
  end
  inherited qyBancos: TIBQuery
    Left = 848
    Top = 146
  end
  inherited qyBlackBoxME1: TIBQuery
    Left = 192
    Top = 162
  end
  inherited qyBlackBoxME3: TIBQuery
    Left = 848
    Top = 178
  end
  inherited spP_ME_AFECTAR: TIBStoredProc
    Left = 152
    Top = 194
  end
  inherited spP_MONEDERO_AFECTAR: TIBStoredProc
    Left = 848
    Top = 209
  end
  inherited spDAME_PUNTOS: TIBStoredProc
    Left = 192
    Top = 193
  end
  inherited dsEncabezado: TDataSource
    Left = 584
    Top = 176
  end
  inherited dsCliente: TDataSource
    Left = 552
    Top = 176
  end
  inherited spGENERAR_CUPON_AJUSTE: TIBStoredProc
    Left = 648
    Top = 177
  end
  inherited spCUPONES_PUNTO_DE_VTAS: TIBStoredProc
    Left = 616
    Top = 177
  end
  inherited spMODIFICAR_FOLIO: TIBStoredProc
    Left = 160
    Top = 161
  end
  inherited pmFormas: TPopupMenu
    Left = 128
    Top = 160
    object itemF5: TMenuItem [1]
      Caption = 'Efectivo'
      ShortCut = 116
      OnClick = itemF5Click
    end
    object itemTCredito: TMenuItem [2]
      Caption = 'Tarjeta de Credito'
      ShortCut = 117
      OnClick = itemTCreditoClick
    end
    object itemVales: TMenuItem [3]
      Caption = 'Vales'
      ShortCut = 118
      OnClick = itemValesClick
    end
  end
  inherited spTOTAL_FORMA_PAGOS: TIBStoredProc
    Left = 96
    Top = 160
  end
  inherited qyBotones: TIBQuery
    Left = 61
    Top = 160
  end
  inherited qyCComerciales: TIBQuery
    Left = 0
    Top = 193
  end
  inherited dsFuente: TDataSource
    Left = 31
    Top = 193
  end
  inherited spADD_FORMAS_DE_PAGO_PVTA: TIBQuery
    Left = 61
    Top = 193
  end
  inherited spAFECTA_PUNTO_DE_VENTA: TIBStoredProc
    Left = 120
    Top = 193
  end
  inherited spFOLIO_ALMACEN: TIBStoredProc
    Left = 520
    Top = 145
  end
  inherited spFOLIO_NOTA_DE_VENTA: TIBStoredProc
    Left = 584
    Top = 207
  end
  inherited spVALES_PUNTO_DE_VTAS: TIBStoredProc
    Left = 616
    Top = 207
  end
  inherited spP_VALES_AFECTAR: TIBStoredProc
    Left = 648
    Top = 207
  end
  inherited qyVales: TIBQuery
    Left = 680
    Top = 207
  end
  inherited qyVALIDAR_LIMITE: TIBQuery
    Left = 520
    Top = 177
  end
  inherited qyActualizar: TIBQuery
    Left = 65534
    Top = 160
  end
  inherited spME_REG_PUNTO_DE_VTAS: TIBStoredProc
    Left = 680
    Top = 177
  end
  inherited qyMonedero: TIBQuery
    Left = 712
    Top = 207
  end
  inherited dsEstatus: TDataSource
    Left = 554
    Top = 208
  end
  inherited qyEstatus: TIBQuery
    Left = 522
    Top = 208
  end
  inherited spEstatus: TIBStoredProc
    Left = 489
    Top = 208
  end
end
