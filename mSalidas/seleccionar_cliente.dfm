inherited frmSeleccionar_cliente: TfrmSeleccionar_cliente
  Left = 211
  Top = 176
  Caption = 'Seleccionar Cliente'
  ClientWidth = 759
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited fpPadre: TPanel
    Width = 759
    inherited Panel1: TPanel
      Width = 759
      TabOrder = 6
    end
    inherited ibTodos: TBitBtn
      Left = 656
      Visible = False
    end
    object ibAceptar: TBitBtn
      Left = 463
      Top = 21
      Width = 61
      Height = 30
      Caption = 'Aceptar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 3
      Visible = False
      OnClick = sbDownClick
      Glyph.Data = {
        9E020000424D9E0200000000000036000000280000000E0000000E0000000100
        1800000000006802000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFF0C4C4E18484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF0000FFFFFFFFFFFFFFFFFFDC7070C00000D75C5CFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFDF8F8C51414C000
        00C00000F1C8C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
        FFFFFFFFE8A0A0C00000C20808C00000D45050FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFCF4F4C82020C00000E18484CC3030C00000EF
        C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFD34C4CC00000C2
        0808F9E8E8F0C4C4C00000CD3434FEFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        0000FFFFFFF0C4C4C61818E08080FFFFFFFFFFFFDB6C6CC00000E59494FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FCF4F4CB2C2CC30C0CF7E0E0FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5D8D8C30C0CD04040FFFFFFFFFFFFFFFF
        FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECB4
        B4C10404E28888FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFE79C9CC10404EFC0C0FFFFFFFFFFFF0000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE49090C6
        1818F5D8D8FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFEAACACCC3030F9E8E80000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D0D0D75C5C
        0000}
      Layout = blGlyphRight
    end
    object ibTeclado: TBitBtn
      Left = 592
      Top = 21
      Width = 61
      Height = 30
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 4
      Visible = False
      OnClick = ibTecladoClick
      Glyph.Data = {
        36080000424D3608000000000000360400002800000020000000200000000100
        0800000000000004000000000000000000000001000000010000FFFFFF00CCFF
        FF0099FFFF0066FFFF0033FFFF0000FFFF00FFCCFF00CCCCFF0099CCFF0066CC
        FF0033CCFF0000CCFF00FF99FF00CC99FF009999FF006699FF003399FF000099
        FF00FF66FF00CC66FF009966FF006666FF003366FF000066FF00FF33FF00CC33
        FF009933FF006633FF003333FF000033FF00FF00FF00CC00FF009900FF006600
        FF003300FF000000FF00FFFFCC00CCFFCC0099FFCC0066FFCC0033FFCC0000FF
        CC00FFCCCC00CCCCCC0099CCCC0066CCCC0033CCCC0000CCCC00FF99CC00CC99
        CC009999CC006699CC003399CC000099CC00FF66CC00CC66CC009966CC006666
        CC003366CC000066CC00FF33CC00CC33CC009933CC006633CC003333CC000033
        CC00FF00CC00CC00CC009900CC006600CC003300CC000000CC00FFFF9900CCFF
        990099FF990066FF990033FF990000FF9900FFCC9900CCCC990099CC990066CC
        990033CC990000CC9900FF999900CC9999009999990066999900339999000099
        9900FF669900CC66990099669900666699003366990000669900FF339900CC33
        990099339900663399003333990000339900FF009900CC009900990099006600
        99003300990000009900FFFF6600CCFF660099FF660066FF660033FF660000FF
        6600FFCC6600CCCC660099CC660066CC660033CC660000CC6600FF996600CC99
        660099996600669966003399660000996600FF666600CC666600996666006666
        66003366660000666600FF336600CC3366009933660066336600333366000033
        6600FF006600CC00660099006600660066003300660000006600FFFF3300CCFF
        330099FF330066FF330033FF330000FF3300FFCC3300CCCC330099CC330066CC
        330033CC330000CC3300FF993300CC9933009999330066993300339933000099
        3300FF663300CC66330099663300666633003366330000663300FF333300CC33
        330099333300663333003333330000333300FF003300CC003300990033006600
        33003300330000003300FFFF0000CCFF000099FF000066FF000033FF000000FF
        0000FFCC0000CCCC000099CC000066CC000033CC000000CC0000FF990000CC99
        000099990000669900003399000000990000FF660000CC660000996600006666
        00003366000000660000FF330000CC3300009933000066330000333300000033
        0000FF000000CC0000009900000066000000330000000000EE000000DD000000
        BB000000AA0000008800000077000000550000004400000022000000110000EE
        000000DD000000BB000000AA0000008800000077000000550000004400000022
        000000110000EE000000DD000000BB000000AA00000088000000770000005500
        0000440000002200000011000000EEEEEE00DDDDDD00BBBBBB00AAAAAA008888
        8800777777005555550044444400222222001111110000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000FFFF0000000000000000000000
        0000000000000000000000000000000000FFFFF6C9FF00000000000000000000
        000000000000000000000000000000FFFFF6F6F6F6C9FF000000000000000000
        00000000000000000000000000FFFFF6F6F6FDFBF6C9FF000000000000000000
        0000000000000000000000FFFFF6F6F6FDFBFBFDFDF6C9FF0000000000000000
        000000000000000000FFFFF6F6F6FDFBFBFDFDFBFBF6C9FF0000000000000000
        00000000000000FFFFF6F6F6FDFDF5FDFDFBFBFDFDFBF6C9FF00000000000000
        0000000000FFFFF6F6F6FDFBFBFDFB2BFBFDFDFBFBFDF6C9FF00000000000000
        000000FFFFF6F6F6FDFBFBFDFDFBFBF5FDFBFBFDFDFBFBF6C9FF000000000000
        00FFFFF6F6F6FDFBFBFDFDFBFBFDFDFB2BFDFDFBFBFDFDF8C9FF0000000000FF
        FFF6F6F6FDFBFBFDFDFBFBFDFDFBFBFDF5FBFBFDFDFBFBF500FF000000FFFFF6
        F6F6FDFBFBFDFDFBFBFDFDFBFBFDFDFBFB2BFDFBFB2B00FFFF0000FFFFF6F6F6
        FDFAFAFDFDFBFBFDFDFBFBFDFDFBFBFDFDFB2B2BF500C9FF0000FFF6F6F6ACFA
        FAACACFAFAFDFDFBFBFDFDFBFBFDFDFBFB2BF5002BF8F6F8FF00FFF6FCFAFAFC
        FCFAFAACACFAFAACACFAFAACACFAFA2BF5002BF82BF500FAFF00FFF6FCFCFCFA
        FAFCFCFAFAACACFAFAACACFAFA00F5002BF82BF500FAFFFF000000FF00F9F9FC
        FCFAFAFCFCFAFAACACFAFA2BF5002BF82BF500FAFFFF0000000000FF00FCFCF9
        F9FCFCFAFAFCFCFAFA2BF5002BF82BF500FAFFFF0000000000000000FF00F9FC
        FCF9F9FCFCF9F9F6F5002BF82BF500FAFFFF00000000000000000000FF00FCF9
        F9FCFCF9F9F6F5002BF82BF500FAFFFF00000000000000000000000000FF00FC
        FCF9F9F5F5002BF82BF500FAFFFF000000000000000000000000000000FF00F9
        F9F5F5002BF82BF500FAFFFF000000000000000000000000000000000000FFF5
        00FFC9F5F5F500FAFFFF000000000000000000000000000000000000000000FF
        FF00FF0000FAFFFF000000000000000000000000000000000000000000000000
        000000FFFFFF0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      Layout = blGlyphRight
    end
    object ibCancelar: TBitBtn
      Left = 528
      Top = 21
      Width = 61
      Height = 30
      Caption = 'Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 5
      Visible = False
      OnClick = ibSalirClick
      Glyph.Data = {
        9E020000424D9E0200000000000036000000280000000E0000000E0000000100
        1800000000006802000000000000000000000000000000000000FFFFFFFFFFFF
        EBB0B0C51414CD3434F9E8E8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF0000FFFFFFF4D4D4C20808C00000C00000CC3030FEFCFCFFFFFFFFFF
        FFF9E8E8D55454C10404E18484FFFFFF0000FFFFFFD04040C00000C00000C000
        00C00000E18484FFFFFFF5D8D8C82020C00000C00000C00000EDB8B80000FFFF
        FFFEFCFCEBB0B0C71C1CC00000C00000C20808F3D0D0C71C1CC00000C00000C0
        0000C00000CD34340000FFFFFFFFFFFFFFFFFFF9E8E8CA2828C00000C00000C1
        0404C00000C00000C20808DC7070F2CCCCFEFCFC0000FFFFFFFFFFFFFFFFFFFF
        FFFFF8E4E4C61818C00000C00000C00000CA2828F4D4D4FFFFFFFFFFFFFFFFFF
        0000FFFFFFFFFFFFFFFFFFFFFFFFF7E0E0C61818C00000C00000C00000D86060
        FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFDF8F8CC3030C00000
        C00000C00000C00000C00000DB6C6CFEFCFCFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFE08080C00000C00000C71C1CE28888C00000C00000C00000CE3838F2CC
        CCFFFFFF0000FFFFFFFFFFFFFFFFFFC61818C00000C00000EAA8A8FFFFFFD144
        44C00000C00000C00000C00000E288880000FFFFFFFFFFFFFFFFFFC41010C000
        00CB2C2CFFFFFFFFFFFFF9E8E8CA2828C00000C00000C10404F7E0E00000FFFF
        FFFFFFFFFFFFFFE59494C00000E18484FFFFFFFFFFFFFFFFFFF9E8E8D45050C1
        0404E18484FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFE28888F1C8C8FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        0000}
      Layout = blGlyphRight
    end
  end
  inherited Panel2: TPanel
    Width = 759
  end
  inherited dgExplorar: TDBGrid
    Width = 759
  end
  inherited qySeleccionar: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    SQL.Strings = (
      'SELECT *'
      'FROM VER_CLIENTE_S(:P_CAMPO, :P_VALOR)')
    ParamData = <
      item
        DataType = ftString
        Name = 'P_CAMPO'
        ParamType = ptUnknown
        Value = 'NADA'
      end
      item
        DataType = ftString
        Name = 'P_VALOR'
        ParamType = ptUnknown
        Value = 'NADA'
      end>
    object qySeleccionarR_ID: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_ID'
      ReadOnly = True
    end
    object qySeleccionarR_CLAVE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_CLAVE'
      ReadOnly = True
      Size = 50
    end
    object qySeleccionarR_NOMBRE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_NOMBRE'
      ReadOnly = True
      Size = 100
    end
    object qySeleccionarR_RAZON_SOCIAL: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_RAZON_SOCIAL'
      ReadOnly = True
      Size = 100
    end
    object qySeleccionarR_CLASIFICACION: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_CLASIFICACION'
      ReadOnly = True
      Size = 50
    end
    object qySeleccionarR_TELEFONO: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_TELEFONO'
      ReadOnly = True
    end
  end
end
