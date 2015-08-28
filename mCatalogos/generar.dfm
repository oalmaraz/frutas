object frmGenerar: TfrmGenerar
  Left = 320
  Top = 0
  Width = 756
  Height = 655
  ActiveControl = edPrecio
  Caption = 'Generar'
  Color = clBtnFace
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
  object Label1: TLabel
    Left = 248
    Top = 52
    Width = 66
    Height = 13
    Caption = '<ARTICULO>'
  end
  object Label2: TLabel
    Left = 8
    Top = 93
    Width = 85
    Height = 13
    Caption = '<DESCRIPCION>'
  end
  object Label5: TLabel
    Left = 8
    Top = 134
    Width = 63
    Height = 13
    Caption = '<CBARRAS>'
  end
  object Label3: TLabel
    Left = 8
    Top = 8
    Width = 101
    Height = 13
    Caption = 'Formato de Impresion'
    Transparent = True
  end
  object Label4: TLabel
    Left = 8
    Top = 175
    Width = 52
    Height = 13
    Caption = '<PRECIO>'
  end
  object Label6: TLabel
    Left = 8
    Top = 263
    Width = 72
    Height = 13
    Caption = '<ETIQUETA1>'
  end
  object Label7: TLabel
    Left = 151
    Top = 263
    Width = 72
    Height = 13
    Caption = '<ETIQUETA2>'
  end
  object Label8: TLabel
    Left = 295
    Top = 263
    Width = 72
    Height = 13
    Caption = '<ETIQUETA3>'
  end
  object Label9: TLabel
    Left = 438
    Top = 263
    Width = 72
    Height = 13
    Caption = '<ETIQUETA4>'
  end
  object Label10: TLabel
    Left = 581
    Top = 263
    Width = 72
    Height = 13
    Caption = '<ETIQUETA5>'
  end
  object Label11: TLabel
    Left = 384
    Top = 215
    Width = 63
    Height = 13
    Caption = '<CUANTAS>'
  end
  object Label12: TLabel
    Left = 8
    Top = 52
    Width = 63
    Height = 13
    Caption = '<ALMACEN>'
  end
  object Label13: TLabel
    Left = 248
    Top = 132
    Width = 44
    Height = 13
    Caption = '<SERIE>'
  end
  object Label14: TLabel
    Left = 8
    Top = 215
    Width = 47
    Height = 13
    Caption = '<FECHA>'
  end
  object Label15: TLabel
    Left = 488
    Top = 52
    Width = 54
    Height = 13
    Caption = '<MEDIDA>'
  end
  object Label16: TLabel
    Left = 607
    Top = 52
    Width = 49
    Height = 13
    Caption = '<COLOR>'
  end
  object Label17: TLabel
    Left = 488
    Top = 92
    Width = 49
    Height = 13
    Caption = '<CORTA>'
  end
  object Label18: TLabel
    Left = 126
    Top = 175
    Width = 112
    Height = 13
    Caption = '<PRECIO_MAYOREO>'
  end
  object Label19: TLabel
    Left = 248
    Top = 175
    Width = 113
    Height = 13
    Caption = '<PRECIO_MENUDEO>'
  end
  object Label20: TLabel
    Left = 488
    Top = 132
    Width = 84
    Height = 13
    Caption = '<CUC_CADENA>'
  end
  object Label21: TLabel
    Left = 126
    Top = 215
    Width = 68
    Height = 13
    Caption = '<FECHA_OC>'
  end
  object Label22: TLabel
    Left = 248
    Top = 215
    Width = 128
    Height = 13
    Caption = '<FECHA_DESEMPAQUE>'
  end
  object edArticulo: TEdit
    Left = 248
    Top = 68
    Width = 233
    Height = 21
    TabOrder = 2
  end
  object edDescripcion: TEdit
    Left = 8
    Top = 109
    Width = 473
    Height = 21
    TabOrder = 5
  end
  object buImprimir: TButton
    Left = 616
    Top = 8
    Width = 105
    Height = 39
    Caption = 'Imprimir'
    Default = True
    TabOrder = 22
    OnClick = buImprimirClick
  end
  object edCBarras: TEdit
    Left = 8
    Top = 150
    Width = 233
    Height = 21
    TabOrder = 7
  end
  object edPlantilla: TMemo
    Left = 8
    Top = 308
    Width = 713
    Height = 140
    TabStop = False
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    ScrollBars = ssBoth
    TabOrder = 23
  end
  object edGenerado: TMemo
    Left = 8
    Top = 454
    Width = 713
    Height = 140
    TabStop = False
    ScrollBars = ssBoth
    TabOrder = 24
    WantReturns = False
  end
  object cbFormatos: TComboBox
    Left = 8
    Top = 24
    Width = 209
    Height = 21
    ItemHeight = 13
    TabOrder = 0
    Text = 'EAN13'
    Items.Strings = (
      '3 de 9'
      'EAN13'
      'UPC A'
      'CODE128')
  end
  object edPrecio: TEdit
    Left = 8
    Top = 191
    Width = 115
    Height = 21
    TabOrder = 10
  end
  object edEtiqueta1: TEdit
    Left = 8
    Top = 279
    Width = 140
    Height = 21
    TabOrder = 17
  end
  object edEtiqueta2: TEdit
    Left = 151
    Top = 279
    Width = 140
    Height = 21
    TabOrder = 18
  end
  object edEtiqueta3: TEdit
    Left = 295
    Top = 279
    Width = 140
    Height = 21
    TabOrder = 19
  end
  object edEtiqueta4: TEdit
    Left = 438
    Top = 279
    Width = 140
    Height = 21
    TabOrder = 20
  end
  object edEtiqueta5: TEdit
    Left = 581
    Top = 279
    Width = 140
    Height = 21
    TabOrder = 21
  end
  object edCuantas: TEdit
    Left = 384
    Top = 231
    Width = 97
    Height = 21
    TabOrder = 16
    Text = '1'
  end
  object edAlmacen: TEdit
    Left = 8
    Top = 68
    Width = 233
    Height = 21
    TabOrder = 1
  end
  object meBat: TMemo
    Left = 624
    Top = 200
    Width = 97
    Height = 61
    TabStop = False
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    ScrollBars = ssBoth
    TabOrder = 25
    Visible = False
  end
  object edSerie: TEdit
    Left = 248
    Top = 150
    Width = 233
    Height = 21
    TabOrder = 8
  end
  object edFecha: TEdit
    Left = 8
    Top = 231
    Width = 113
    Height = 21
    TabOrder = 13
  end
  object edMedida: TEdit
    Left = 488
    Top = 68
    Width = 114
    Height = 21
    TabOrder = 3
  end
  object edColor: TEdit
    Left = 607
    Top = 68
    Width = 114
    Height = 21
    TabOrder = 4
  end
  object edCorta: TEdit
    Left = 488
    Top = 109
    Width = 233
    Height = 21
    TabOrder = 6
  end
  object edPrecioMayoreo: TEdit
    Left = 126
    Top = 191
    Width = 115
    Height = 21
    TabOrder = 11
  end
  object edPrecioMenudeo: TEdit
    Left = 248
    Top = 191
    Width = 115
    Height = 21
    TabOrder = 12
  end
  object edCUC_Cadena: TEdit
    Left = 488
    Top = 150
    Width = 114
    Height = 21
    TabOrder = 9
  end
  object edFechaOC: TEdit
    Left = 126
    Top = 231
    Width = 113
    Height = 21
    TabOrder = 14
  end
  object edFechaDesempaque: TEdit
    Left = 248
    Top = 231
    Width = 129
    Height = 21
    TabOrder = 15
  end
end
