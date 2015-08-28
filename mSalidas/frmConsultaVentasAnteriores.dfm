object fmConsultaVentasAnteriores: TfmConsultaVentasAnteriores
  Left = 400
  Top = 162
  Width = 630
  Height = 570
  Caption = 'Consultas de Ventas Anteriores'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 11
    Top = 11
    Width = 89
    Height = 16
    Caption = 'Fecha I&nicial'
    FocusControl = dxDateFechaInicial
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label3: TLabel
    Left = 291
    Top = 11
    Width = 82
    Height = 16
    Caption = 'Fecha &Final'
    FocusControl = dxDateFechaFinal
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label5: TLabel
    Left = 11
    Top = 30
    Width = 49
    Height = 16
    Caption = '&Cliente'
    FocusControl = btnCliente
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label9: TLabel
    Left = 11
    Top = 52
    Width = 68
    Height = 16
    Caption = '&Extension'
    FocusControl = btnExtension
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object bbBuscar: TBitBtn
    Left = 413
    Top = 40
    Width = 130
    Height = 25
    Caption = 'F3 - Buscar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    OnClick = bbBuscarClick
  end
  object bbSalir: TBitBtn
    Left = 391
    Top = 508
    Width = 170
    Height = 25
    Caption = 'F8 - Salir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
    OnClick = bbSalirClick
  end
  object dxDateFechaInicial: TDateTimePicker
    Left = 112
    Top = 6
    Width = 169
    Height = 21
    CalAlignment = dtaLeft
    Date = 42123.7502405208
    Time = 42123.7502405208
    DateFormat = dfShort
    DateMode = dmComboBox
    Kind = dtkDate
    ParseInput = False
    TabOrder = 0
  end
  object dxDateFechaFinal: TDateTimePicker
    Left = 384
    Top = 6
    Width = 169
    Height = 21
    CalAlignment = dtaLeft
    Date = 42123.7502526389
    Time = 42123.7502526389
    DateFormat = dfShort
    DateMode = dmComboBox
    Kind = dtkDate
    ParseInput = False
    TabOrder = 1
  end
  object DBGPuntoVenta: TDBGrid
    Left = 8
    Top = 84
    Width = 605
    Height = 190
    DataSource = dsPuntoVenta
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Title.Caption = 'Id'
        Width = 44
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CONSECUTIVO'
        Title.Caption = 'Folio'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SERIE_FACTURA'
        Title.Caption = 'Serie'
        Width = 35
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLIENTE'
        Title.Caption = 'Cliente'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EXTENSION'
        Title.Caption = 'Extension'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FECHA_ALTA'
        Title.Caption = 'Fecha Alta'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'GRANTOTAL'
        Title.Caption = 'Gran Total'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMBRE'
        Title.Caption = 'Nombre'
        Width = 169
        Visible = True
      end>
  end
  object DBgDetalle: TDBGrid
    Left = 8
    Top = 284
    Width = 605
    Height = 213
    DataSource = dsPuntoVentaDetalle
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Title.Caption = 'Id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRIPCION'
        Title.Caption = 'Material'
        Width = 225
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CANTIDAD'
        Title.Caption = 'Cantidad'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UNIDADESDESCRIP'
        Title.Caption = 'Unidad'
        Width = 95
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRECIO'
        Title.Caption = 'Precio Venta'
        Visible = True
      end>
  end
  object edExtension: TEdit
    Left = 112
    Top = 51
    Width = 121
    Height = 21
    Color = clMenu
    Enabled = False
    TabOrder = 4
  end
  object edCliente: TEdit
    Left = 112
    Top = 29
    Width = 121
    Height = 21
    Color = clMenu
    Enabled = False
    TabOrder = 5
  end
  object btnCliente: TBitBtn
    Left = 241
    Top = 30
    Width = 24
    Height = 20
    Caption = '...'
    TabOrder = 6
    OnClick = btnClienteClick
  end
  object btnExtension: TBitBtn
    Left = 241
    Top = 53
    Width = 24
    Height = 20
    Caption = '...'
    TabOrder = 7
    OnClick = btnExtensionClick
  end
  object PopupMenu1: TPopupMenu
    Left = 200
    Top = 114
    object Buscar1: TMenuItem
      Caption = 'Buscar'
      ShortCut = 114
      OnClick = Buscar1Click
    end
    object Salir1: TMenuItem
      Caption = 'Salir'
      ShortCut = 119
      OnClick = Salir1Click
    end
  end
  object dsPuntoVenta: TDataSource
    DataSet = IBQYFacturas
    OnDataChange = dsPuntoVentaDataChange
    Left = 280
    Top = 208
  end
  object IBQYFacturas: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    SQL.Strings = (
      'SELECT *'
      'from FACTURAS')
    Left = 350
    Top = 222
  end
  object dsPuntoVentaDetalle: TDataSource
    DataSet = IBQyFacturasDetalle
    Left = 431
    Top = 344
  end
  object IBQyFacturasDetalle: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    ObjectView = True
    SQL.Strings = (
      'SELECT FACTURAS_DETALLE.ID,'
      'FACTURAS_DETALLE.MATERIAL,'
      'FACTURAS_DETALLE.CANTIDAD,'
      'FACTURAS_DETALLE.UNIDAD,'
      'FACTURAS_DETALLE.PRECIO,'
      'MATERIALES.DESCRIPCION,'
      'UNIDADES.DESCRIPCION UNIDADESDESCRIP'
      'FROM FACTURAS_DETALLE, MATERIALES, UNIDADES'
      'WHERE FACTURAS_DETALLE.MATERIAL = MATERIALES.ID'
      'AND FACTURAS_DETALLE.UNIDAD = UNIDADES.ID'
      'AND FACTURAS_DETALLE.FACTURA = :aFactura')
    Left = 462
    Top = 342
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'aFactura'
        ParamType = ptUnknown
      end>
    object IBQyFacturasDetalleID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object IBQyFacturasDetalleMATERIAL: TIntegerField
      FieldName = 'MATERIAL'
      Required = True
    end
    object IBQyFacturasDetalleCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
    end
    object IBQyFacturasDetalleUNIDAD: TIntegerField
      FieldName = 'UNIDAD'
      Required = True
    end
    object IBQyFacturasDetalleDESCRIPCION: TIBStringField
      FieldName = 'DESCRIPCION'
      Size = 100
    end
    object IBQyFacturasDetallePRECIO: TFloatField
      FieldName = 'PRECIO'
    end
    object IBQyFacturasDetalleUNIDADESDESCRIP: TIBStringField
      FieldName = 'UNIDADESDESCRIP'
      Size = 50
    end
  end
  object IBQyComodin: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    SQL.Strings = (
      '')
    Left = 384
    Top = 224
  end
end
