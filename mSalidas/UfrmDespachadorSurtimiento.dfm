object frmDespachadorSurtimiento: TfrmDespachadorSurtimiento
  Left = 488
  Top = 147
  Width = 665
  Height = 434
  Caption = 'Despachador Surtimiento'
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object paBotones: TPanel
    Left = 0
    Top = 346
    Width = 657
    Height = 54
    Align = alBottom
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 17
      Width = 66
      Height = 19
      Caption = 'Usted es:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object laNombre: TLabel
      Left = 78
      Top = 17
      Width = 79
      Height = 19
      Caption = 'laNombre'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object buSalir: TBitBtn
      Left = 558
      Top = 5
      Width = 80
      Height = 45
      Caption = 'Salir'
      ModalResult = 5
      TabOrder = 0
      OnClick = buSalirClick
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000120B0000120B00000000000000000000FFFFFFFFFFFF
        FFFFFFF5F5F5E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E7E7E7EBEBEBFCFCFCFFFFFFFFFFFFFF
        FFFFFFFFFFFCFCFCB9B9C072749F6466A065679F65689F65689F6568A06568A1
        6567A06466A16465A16465A16464A16264A16262A16263A063649F64659D8282
        9DDCDCDCFFFFFFFFFFFFFFFFFFB2B2BE4749C43A3DDE2D2FD92D2EDD2E2EE02E
        2EE52E2EEA2E2EED2B2DF12A2BF52A2AF82E30F93438FB383DFC3C42FF4149FF
        454EFF4B56FF515AF35F60A0E4E4E4FFFFFFEEEEEF5354B91F1FD20201B50000
        BA0000C00000C50000CA0000CD0000D00000D70100DD0000E20000E20000E40A
        11E7171EEA1B25EC202EED2634EF3646FA4956F38C8DA8CECED1D1D1D72222C3
        0202B50000B50000BC0000C10000C50000C71B1BD25D5DE39191EFA8A8F4A5A5
        F58283F2484AEC0E14E70C15E81F29EB2430EB2A38ED2F3FEF3B4DFF6467ADA2
        A3B7CBCBD21010B70000B50000B60000BB0000BE0303C26767DEDADAF8FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFF9F9FFBDBFF94047EC0D18E9222FEC2A37EC3040
        EF384BFF5B60AD9B9CB5CCCCD21010B10000B50000B50000B90101BC8E8EE4FF
        FFFFFFFFFFF5F5FABDBDEE9393E79D9DEBD1D2F5FCFDFEFFFFFFEAEBFD555DEF
        121FEA2A38ED2F3FEF384AFE5B60A99C9CB3CCCCD21010AD0101B30101B30000
        B47171D9FFFFFFFFFFFFC2C2ED3E3ED10404D00000D60000DC0F0FDE6D6DE5EB
        ECF9FFFFFFE5E6FC3C47ED1E2CEC2F3EEF3647FD5A5FA79C9CB3CCCCD11414A9
        0D0DB60404B42626C1E1E1F7FFFFFFCCCCEF1C1CC90000CD0000D50000D90000
        DF0000E30000E05456E5F7F7FBFFFFFFA9ADF71725EA2A39EF3344FB595EA39C
        9DB1CCCCD11616A31818B70909B37272D5FFFFFFFEFEFD6060D50E0ECB2424D6
        2020D81616DB0909DD0101E10000E50102E1A1A3F0FFFFFFE3E4FD3540ED1E2C
        ED2E3EF9585DA29C9CB1CCCCD118189E2020B61717B5A0A0E2FFFFFFE0E0F536
        36CD2424CE3030D63232DA3636DE3434E12525E40F0FE40000E35D5EEBFFFFFF
        F8F8FE545BEF1420ED2A38F5575BA19B9CB0CCCCD01A1A9A2929B72424B7AFAF
        E5FFFFFFDADAF53737CB3131CE3A3AD43535D73131D93838DF4444E44343E81D
        1DE75455ECFBFBFEFEFEFF5A60EF0D18EB2430F35659A09B9CB0CCCCD01E1E96
        3434B92B2BB6A0A0DEFFFFFFEAEAF95151D03737CD3D3DD25C5CDCB2B2F08B8B
        EB4646E14C4CE54242E89393F3FFFFFFF1F1FC4146EA0811EA1D27F154579F9B
        9CB0CCCCD02020923F3FBB3636B87979CDFCFCFDFFFFFF9696E13838CA3E3ED0
        A6A6EBFFFFFFE7E7FB5F5FE34949E25656E6D4D4F9FFFFFFD8D9F81617E3070B
        E9151BED52539E9B9BB0CCCCCF22228F4A4ABB4848BC4D4DBCD8D8ECFFFFFFEF
        EFFA7979D94141CCADADEBFFFFFFECECFB6969E15050E0B1B1F2FFFFFFFFFFFF
        B0B0EC3333E80303E7070AEA4F509C9A9AB0CCCCCF25258F5353BD5858BE4D4D
        BD7F7FCAF7F7F9FFFFFFF2F2FC7676D9A8A8E7FFFFFFE8E8F97777E2BBBBF2FF
        FFFFFFFFFFD9D9EF7171E37878EE3D3DE90000E64C4C9B9A9AAFCCCCCF28288E
        5D5DBE6161BF6161C15757C09494CEF3F3F7FEFEFB8888D7ACACE7FFFFFFE4E4
        F99292E2EDEDFAFFFFFFDCDCED8181DC7373E77F7FE98282ED2C2CE44C4C989A
        9AAFCCCCCF30308F6A6AC16B6BC06A6AC26C6CC56464C38383C78D8DCA6767CA
        BABAE9FFFFFFEDEDFB8484DBA2A2D8B5B5DB8181D87B7BE28585E58585E59090
        E97474EA5252969A9AADCCCCCF3838937676C47373BF7373C27676C57777C973
        73C97373CC7373CEC2C2EAFFFFFFF0F0FA8F8FDD7878D57F7FD88787DF8D8DE1
        8E8EE28F8FE29696E68A8AEB5B5B969A9AADCECED14F4F9F8181C67D7DC17E7E
        C47F7FC68181C98383CC8585CE7F7FCDBABAE2FFFFFFE9E9F39292D88D8DDA93
        93DC9595DD9696DE9797DF9999DF9F9FE29C9CEB6D6D9D9E9EB0DEDEE07474B0
        8F8FCA8282C08686C48888C78989C98B8BCC8D8DCE8E8ED09292CEADADD0A2A2
        D19393D69999D99A9ADA9D9DDA9E9EDCA0A0DDA1A1DDA3A3DEBCBCF39191ACBB
        BBC4FFFFFF9191ADA6A6DBA1A1CF9797C99898CD9A9ACF9D9DD19E9ED3A1A1D5
        A1A1D79C9CD5A1A1D9A8A8DDAAAADEACACDFADADE0B0B0E0B2B2E1B5B5E1D2D2
        F4C0C0E4C4C4CBF4F4F4FFFFFFEEEEF29898BDA9A9D1B8B8DCB9B9DDBCBCDEBF
        BFE1C1C1E2C3C3E4C6C6E6C9C9E7CBCBE8CDCDE9D0D0EAD1D1EBD3D3EBD3D3EC
        D5D5ECD5D5EDBBBBD5B5B5CAFFFFFFFFFFFFFFFFFFFFFFFFFDFDFEBEBECC9E9E
        B2A1A1B4A1A1B5A2A2B5A3A3B6A3A3B6A5A5B6A5A5B7A5A5B7A6A6B7A6A6B7A7
        A7B7A7A7B7A7A7B7A6A6B6A6A6B8DBDBE1FFFFFFFFFFFFFFFFFF}
    end
  end
  object dgPedidos: TDBGrid
    Left = 0
    Top = 0
    Width = 657
    Height = 346
    Align = alClient
    DataSource = dsDespachadorSurtimiento
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
  object qyDespachadorSurtimiento: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    SQL.Strings = (
      'SELECT *'
      'FROM TL_DESPACHADOR_SURT(:P_ID)')
    Left = 152
    Top = 81
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_ID'
        ParamType = ptUnknown
      end>
    object qyDespachadorSurtimientoR_PEDIDO: TIntegerField
      FieldName = 'R_PEDIDO'
      Origin = 'TL_DESPACHADOR_SURT.R_PEDIDO'
    end
    object qyDespachadorSurtimientoR_ALMACEN: TIntegerField
      FieldName = 'R_ALMACEN'
      Origin = 'TL_DESPACHADOR_SURT.R_ALMACEN'
    end
    object qyDespachadorSurtimientoR_DESPACHADOR: TIntegerField
      FieldName = 'R_DESPACHADOR'
      Origin = 'TL_DESPACHADOR_SURT.R_DESPACHADOR'
    end
    object qyDespachadorSurtimientoR_DESPACHADOR_U: TIntegerField
      FieldName = 'R_DESPACHADOR_U'
      Origin = 'TL_DESPACHADOR_SURT.R_DESPACHADOR_U'
    end
    object qyDespachadorSurtimientoR_DESPACHADOR_U_N: TIBStringField
      FieldName = 'R_DESPACHADOR_U_N'
      Origin = 'TL_DESPACHADOR_SURT.R_DESPACHADOR_U_N'
      Size = 100
    end
    object qyDespachadorSurtimientoR_MI: TIntegerField
      FieldName = 'R_MI'
      Origin = 'TL_DESPACHADOR_SURT.R_MI'
    end
  end
  object dsDespachadorSurtimiento: TDataSource
    DataSet = qyDespachadorSurtimiento
    Left = 184
    Top = 81
  end
  object spP_DESPACHADOR_A_SURTIMIENTO: TIBStoredProc
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    StoredProcName = 'P_DESPACHADOR_A_SURTIMIENTO'
    Left = 152
    Top = 112
    ParamData = <
      item
        DataType = ftInteger
        Name = 'P_ID'
        ParamType = ptInput
        Value = '0'
      end>
  end
end
