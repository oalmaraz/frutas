object frmRTF: TfrmRTF
  Left = 419
  Top = 145
  BorderStyle = bsNone
  Caption = 'Editor'
  ClientHeight = 439
  ClientWidth = 730
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = pmTeclas
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object paEditor: TPanel
    Left = 0
    Top = 36
    Width = 730
    Height = 403
    Align = alClient
    BevelInner = bvLowered
    BevelOuter = bvNone
    Caption = 'paEditor'
    TabOrder = 0
  end
  object paControles: TPanel
    Left = 0
    Top = 0
    Width = 730
    Height = 36
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object Bevel1: TBevel
      Left = 0
      Top = 0
      Width = 730
      Height = 5
      Align = alTop
      Shape = bsBottomLine
    end
    object Bevel2: TBevel
      Left = 386
      Top = 8
      Width = 7
      Height = 21
      Shape = bsLeftLine
    end
    object Bevel3: TBevel
      Left = 308
      Top = 8
      Width = 7
      Height = 21
      Shape = bsLeftLine
    end
    object Bevel4: TBevel
      Left = 489
      Top = 8
      Width = 7
      Height = 21
      Shape = bsLeftLine
      Visible = False
    end
    object Bevel5: TBevel
      Left = 593
      Top = 8
      Width = 7
      Height = 21
      Shape = bsLeftLine
      Visible = False
    end
    object dbRTF: TDBRichEdit
      Left = 616
      Top = 8
      Width = 41
      Height = 17
      DataField = 'RTF'
      DataSource = dsRTF
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TabOrder = 0
      Visible = False
      Zoom = 100
    end
    object cbColors: TComboBox
      Left = 182
      Top = 8
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object cbFonts: TComboBox
      Left = 4
      Top = 8
      Width = 129
      Height = 21
      TabOrder = 2
    end
    object cbSizes: TComboBox
      Left = 137
      Top = 8
      Width = 41
      Height = 21
      TabOrder = 3
    end
  end
  object taRTF: TIBTable
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    BufferChunks = 1000
    CachedUpdates = False
    Filter = 'ID = -3'
    Filtered = True
    UniDirectional = False
    Left = 192
    Top = 169
  end
  object dsRTF: TDataSource
    DataSet = taRTF
    Left = 224
    Top = 169
  end
  object spID: TIBStoredProc
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    StoredProcName = 'ID'
    Left = 160
    Top = 169
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
      end>
  end
  object pmTeclas: TPopupMenu
    OwnerDraw = True
    Left = 257
    Top = 167
    object GuardarPartida1: TMenuItem
      Caption = 'Guardar'
      ShortCut = 120
    end
    object CancelarPartida1: TMenuItem
      Caption = 'Cancelar'
      ShortCut = 121
    end
    object EliminarPartida1: TMenuItem
      Caption = 'Eliminar'
      ShortCut = 122
    end
  end
end
