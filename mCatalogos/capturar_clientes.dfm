inherited frmCapturar_clientes: TfrmCapturar_clientes
  Left = 397
  Top = 87
  Caption = 'Clientes'
  ClientHeight = 592
  ClientWidth = 918
  ExplicitWidth = 320
  ExplicitHeight = 240
  PixelsPerInch = 96
  TextHeight = 13
  inherited paLienzo: TPanel
    Width = 918
    Height = 510
    ExplicitWidth = 918
    ExplicitHeight = 510
    inherited fpMasDatos: TPanel
      Top = 405
      Width = 914
      Height = 103
      ExplicitTop = 405
      ExplicitWidth = 914
      ExplicitHeight = 103
      inherited fpMasDatoDentro: TPanel
        Width = 912
        Height = 101
        ExplicitWidth = 912
        ExplicitHeight = 101
        object Label14: TLabel
          Left = 125
          Top = 21
          Width = 78
          Height = 13
          Caption = 'Li&mite de Credito'
          FocusControl = deLimiteCredito
          Transparent = True
        end
        object Label16: TLabel
          Left = 638
          Top = 20
          Width = 93
          Height = 13
          Caption = 'S&erie Factura (ABC)'
          FocusControl = deSerieFactura
          Transparent = True
        end
        object Label18: TLabel
          Left = 638
          Top = 61
          Width = 59
          Height = 13
          Caption = 'Clasificacion'
          Transparent = True
        end
        object Label12: TLabel
          Left = 229
          Top = 21
          Width = 44
          Height = 13
          Caption = 'Monedas'
          Transparent = True
        end
        object Label24: TLabel
          Left = 352
          Top = 21
          Width = 96
          Height = 13
          Caption = 'Dia Fact. a Revision'
          Transparent = True
        end
        object Label27: TLabel
          Left = 352
          Top = 61
          Width = 101
          Height = 13
          Caption = 'Dia Entrega Cheques'
          Transparent = True
        end
        object Label25: TLabel
          Left = 456
          Top = 61
          Width = 14
          Height = 13
          Caption = 'De'
          Transparent = True
        end
        object Label28: TLabel
          Left = 456
          Top = 20
          Width = 14
          Height = 13
          Caption = 'De'
          Transparent = True
        end
        object Label29: TLabel
          Left = 547
          Top = 20
          Width = 7
          Height = 13
          Caption = 'A'
          Transparent = True
        end
        object Label26: TLabel
          Left = 547
          Top = 61
          Width = 7
          Height = 13
          Caption = 'A'
          Transparent = True
        end
        object sbRefreshMonedas: TSpeedButton
          Left = 328
          Top = 37
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
          OnClick = sbRefreshMonedasClick
        end
        object sbRefreshClasificaciones: TSpeedButton
          Left = 737
          Top = 77
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
          OnClick = sbRefreshClasificacionesClick
        end
        object Label2: TLabel
          Left = 125
          Top = 61
          Width = 69
          Height = 13
          Caption = 'Desc.Global %'
          FocusControl = cePorcentaje
          Transparent = True
        end
        object Label58: TLabel
          Left = 229
          Top = 61
          Width = 71
          Height = 13
          Caption = 'Desc.Parcial %'
          FocusControl = edDescParcial
          Transparent = True
        end
        object deLimiteCredito: TDBEdit
          Left = 125
          Top = 37
          Width = 100
          Height = 21
          DataField = 'LIMITE_CREDITO'
          DataSource = dsFuente
          TabOrder = 1
        end
        object deSerieFactura: TDBEdit
          Left = 638
          Top = 37
          Width = 100
          Height = 21
          DataField = 'SERIE_FACTURA'
          DataSource = dsFuente
          TabOrder = 6
        end
        object leClasificacion: TDBLookupComboBox
          Left = 638
          Top = 77
          Width = 97
          Height = 21
          DataField = 'descripcion_clasificacion'
          DataSource = dsFuente
          TabOrder = 9
        end
        object peDiaFactura: TDBComboBox
          Left = 352
          Top = 37
          Width = 100
          Height = 21
          DataField = 'DIA_FACTURA_REVISION'
          DataSource = dsFuente
          Items.Strings = (
            'Sin Clasificar'
            'Lunes'
            'Martes'
            'Miercoles'
            'Jueves'
            'Viernes'
            'Sabado'
            'Domingo')
          TabOrder = 3
        end
        object peDiaEntrega: TDBComboBox
          Left = 352
          Top = 77
          Width = 100
          Height = 21
          DataField = 'DIA_ENTREGA_CHEQUES'
          DataSource = dsFuente
          Items.Strings = (
            'Sin Clasificar'
            'Lunes'
            'Martes'
            'Miercoles'
            'Jueves'
            'Viernes'
            'Sabado'
            'Domingo')
          TabOrder = 10
        end
        object teDEDe: TDBEdit
          Left = 456
          Top = 77
          Width = 88
          Height = 21
          DataField = 'DEC_HORA_DE'
          DataSource = dsFuente
          TabOrder = 11
        end
        object teDFDe: TDBEdit
          Left = 455
          Top = 37
          Width = 88
          Height = 21
          DataField = 'DFR_HORA_DE'
          DataSource = dsFuente
          TabOrder = 4
        end
        object dtDFA: TDBEdit
          Left = 547
          Top = 37
          Width = 88
          Height = 21
          DataField = 'DFR_HORA_A'
          DataSource = dsFuente
          TabOrder = 5
        end
        object teDEA: TDBEdit
          Left = 547
          Top = 77
          Width = 88
          Height = 21
          DataField = 'DEC_HORA_A'
          DataSource = dsFuente
          TabOrder = 12
        end
        object leMonedas: TDBLookupComboBox
          Left = 229
          Top = 37
          Width = 97
          Height = 21
          DataField = 'descripcion_moneda'
          DataSource = dsFuente
          TabOrder = 2
        end
        object paFirma: TPanel
          Left = 3
          Top = 23
          Width = 119
          Height = 74
          BevelOuter = bvLowered
          Color = clWhite
          TabOrder = 0
          object laFirma: TLabel
            Left = 1
            Top = 1
            Width = 114
            Height = 13
            Align = alClient
            Alignment = taCenter
            Caption = 'Sin Firma (57 x 136)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
            Layout = tlCenter
            WordWrap = True
          end
          object imFirma: TImage
            Left = 1
            Top = 1
            Width = 117
            Height = 72
            Align = alClient
            PopupMenu = pmFirma
            Stretch = True
          end
        end
        object cbCongelarVenta: TDBCheckBox
          Left = 87
          Top = -1
          Width = 100
          Height = 17
          Caption = 'Con&gelar Venta'
          Color = 12615680
          DataField = 'CONGELAR_VENTA'
          DataSource = dsFuente
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 13
          ValueChecked = 'Si'
          ValueUnchecked = 'No'
        end
        object cbIncluirEnDeclaracion: TDBCheckBox
          Left = 298
          Top = -1
          Width = 128
          Height = 17
          Caption = 'Incluir en Declaracion'
          Color = 12615680
          DataField = 'INCLUIR_EN_DECLARACION'
          DataSource = dsFuente
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 15
          ValueChecked = 'Si'
          ValueUnchecked = 'No'
        end
        object cbPrecioMayoreo: TDBCheckBox
          Left = 196
          Top = -1
          Width = 98
          Height = 17
          Caption = '&Precio Mayoreo'
          Color = 12615680
          DataField = 'APLICAR_PRECIO_MAYOREO'
          DataSource = dsFuente
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 14
          ValueChecked = 'Si'
          ValueUnchecked = 'No'
        end
        object cePorcentaje: TDBEdit
          Left = 125
          Top = 77
          Width = 100
          Height = 21
          DataField = 'DESCUENTO_PORC'
          DataSource = dsFuente
          TabOrder = 7
        end
        object edDescParcial: TDBEdit
          Left = 229
          Top = 77
          Width = 97
          Height = 21
          DataField = 'DP_PORC'
          DataSource = dsFuente
          TabOrder = 8
        end
        object cbEsDistribuidor: TDBCheckBox
          Left = 434
          Top = -1
          Width = 103
          Height = 17
          Caption = 'Es Distribuidor'
          Color = 12615680
          DataField = 'ES_DISTRIBUIDOR'
          DataSource = dsFuente
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 16
          ValueChecked = 'Si'
          ValueUnchecked = 'No'
        end
        object cbEliminarIVA: TDBCheckBox
          Left = 530
          Top = -1
          Width = 143
          Height = 17
          Caption = 'Eliminar IVA Facturacion'
          Color = 12615680
          DataField = 'ELIMINAR_IVA_FACTURAS'
          DataSource = dsFuente
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 17
          ValueChecked = 'Si'
          ValueUnchecked = 'No'
        end
      end
    end
    inherited pcSujetos: TPageControl
      Width = 914
      Height = 403
      ActivePage = tsExtensiones
      OnChange = pcSujetosChange
      ExplicitWidth = 914
      ExplicitHeight = 403
      inherited tsDatos: TTabSheet
        inherited fpDatos: TPanel
          Width = 906
          Height = 355
          ExplicitWidth = 906
          ExplicitHeight = 355
          inherited Label9: TLabel
            Left = 1
            Top = 116
            ExplicitLeft = 1
            ExplicitTop = 116
          end
          inherited Label4: TLabel
            Left = 672
            Top = 26
            ExplicitLeft = 672
            ExplicitTop = 26
          end
          inherited Label7: TLabel
            Top = 156
            ExplicitTop = 156
          end
          inherited Label8: TLabel
            Left = 121
            Top = 156
            ExplicitLeft = 121
            ExplicitTop = 156
          end
          inherited Label6: TLabel
            Left = 248
            ExplicitLeft = 248
          end
          inherited Label21: TLabel
            Left = 541
            ExplicitLeft = 541
          end
          inherited Label10: TLabel
            Top = 193
            ExplicitTop = 193
          end
          inherited Label11: TLabel
            Top = 231
            ExplicitTop = 231
          end
          inherited laCtaContable: TLabel
            Top = 269
            ExplicitTop = 269
          end
          inherited sbRefreshTelefonosTipos: TSpeedButton
            Left = 746
            ExplicitLeft = 746
          end
          object Label33: TLabel [13]
            Left = 248
            Top = 309
            Width = 35
            Height = 13
            Caption = 'E&status'
            FocusControl = deEstatus
            Transparent = True
          end
          inherited laTelefonoTipo: TLabel
            Left = 672
            ExplicitLeft = 672
          end
          object Label22: TLabel [15]
            Left = 368
            Top = 74
            Width = 37
            Height = 13
            Caption = 'Nombre'
            FocusControl = deRazon
            Transparent = True
          end
          object Label63: TLabel [16]
            Left = 470
            Top = 74
            Width = 50
            Height = 13
            Caption = 'A. Paterno'
            FocusControl = deRazon
            Transparent = True
          end
          object Label64: TLabel [17]
            Left = 571
            Top = 74
            Width = 52
            Height = 13
            Caption = 'A. Materno'
            FocusControl = deRazon
            Transparent = True
          end
          object Label65: TLabel [18]
            Left = 672
            Top = 74
            Width = 86
            Height = 13
            Caption = 'Fecha Nacimiento'
            Transparent = True
          end
          object laIdentificarse: TBitBtn [19]
            Left = 1
            Top = 309
            Width = 147
            Height = 13
            Cursor = crHandPoint
            Caption = 'Identificarse con Codigo Barras'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 27
            OnClick = laIdentificarseClick
          end
          inherited laClave: TBitBtn
            TabOrder = 17
          end
          inherited peFacturar: TDBComboBox
            Left = 1
            Top = 131
            Width = 115
            TabOrder = 10
            ExplicitLeft = 1
            ExplicitTop = 131
            ExplicitWidth = 115
          end
          inherited peSexo: TDBComboBox
            Left = 672
            Top = 41
            Width = 95
            TabOrder = 4
            ExplicitLeft = 672
            ExplicitTop = 41
            ExplicitWidth = 95
          end
          inherited deRazon: TDBEdit
            Width = 270
            TabOrder = 5
            ExplicitWidth = 270
          end
          inherited deRFC: TDBEdit
            Top = 171
            Width = 115
            MaxLength = 0
            TabOrder = 11
            ExplicitTop = 171
            ExplicitWidth = 115
          end
          inherited deCURP: TDBEdit
            Left = 121
            Top = 171
            Width = 120
            MaxLength = 0
            TabOrder = 12
            ExplicitLeft = 121
            ExplicitTop = 171
            ExplicitWidth = 120
          end
          inherited dmObservaciones: TDBMemo
            Left = 248
            Width = 289
            Height = 134
            TabOrder = 15
            ExplicitLeft = 248
            ExplicitWidth = 289
            ExplicitHeight = 134
          end
          inherited deCTelefono: TDBEdit
            Left = 541
            Width = 125
            TabOrder = 16
            ExplicitLeft = 541
            ExplicitWidth = 125
          end
          inherited dgTelefonos: TDBGrid
            Left = 541
            Top = 155
            TabOrder = 18
          end
          inherited ibAdd: TBitBtn
            Left = 720
            TabOrder = 29
            ExplicitLeft = 720
          end
          inherited ibDel: TBitBtn
            Left = 720
            TabOrder = 20
            ExplicitLeft = 720
          end
          inherited ibCanc: TBitBtn
            Left = 720
            Top = 212
            TabOrder = 21
            ExplicitLeft = 720
            ExplicitTop = 212
          end
          inherited ibAcep: TBitBtn
            Left = 720
            Top = 240
            TabOrder = 22
            ExplicitLeft = 720
            ExplicitTop = 240
          end
          inherited deWeb: TDBEdit
            Top = 246
            Width = 240
            TabOrder = 14
            ExplicitTop = 246
            ExplicitWidth = 240
          end
          inherited deEMail: TDBEdit
            Top = 208
            Width = 240
            TabOrder = 28
            ExplicitTop = 208
            ExplicitWidth = 240
          end
          inherited paFoto: TPanel
            BevelInner = bvNone
            inherited imFoto: TImage
              Left = 1
              Top = 1
              Width = 85
              Height = 85
              ExplicitLeft = 1
              ExplicitTop = 1
              ExplicitWidth = 85
              ExplicitHeight = 85
            end
          end
          inherited buActCtas: TBitBtn
            Left = 195
            Top = 284
            TabOrder = 23
            ExplicitLeft = 195
            ExplicitTop = 284
          end
          inherited buLimCtas: TBitBtn
            Left = 218
            Top = 284
            TabOrder = 25
            ExplicitLeft = 218
            ExplicitTop = 284
          end
          object deEstatus: TDBComboBox
            Left = 248
            Top = 324
            Width = 131
            Height = 21
            DataField = 'ESTATUS'
            DataSource = dsFuente
            Items.Strings = (
              'Activo'
              'Suspendido'
              'Cancelado')
            TabOrder = 24
          end
          object edCBarras: TDBEdit
            Left = 1
            Top = 324
            Width = 240
            Height = 21
            DataField = 'CODIGO_BARRAS'
            DataSource = dsFuente
            TabOrder = 26
          end
          object edSepNombre: TDBEdit
            Left = 368
            Top = 89
            Width = 95
            Height = 21
            DataField = 'SEP_NOMBRE'
            DataSource = dsSujetos
            TabOrder = 6
            OnChange = edSepNombreChange
          end
          object edSepAPaterno: TDBEdit
            Left = 470
            Top = 89
            Width = 95
            Height = 21
            DataField = 'SEP_APATERNO'
            DataSource = dsSujetos
            TabOrder = 7
            OnChange = edSepAPaternoChange
          end
          object edSepAMaterno: TDBEdit
            Left = 571
            Top = 89
            Width = 95
            Height = 21
            DataField = 'SEP_AMATERNO'
            DataSource = dsSujetos
            TabOrder = 8
            OnChange = edSepAMaternoChange
          end
          object deFechaNacimiento: TDBEdit
            Left = 672
            Top = 89
            Width = 95
            Height = 21
            DataField = 'FECHA_NAC'
            DataSource = dsSujetos
            TabOrder = 9
          end
        end
      end
      inherited tsDomicilio: TTabSheet
        inherited fpDomicilio: TPanel
          Width = 906
          Height = 355
          ExplicitWidth = 906
          ExplicitHeight = 355
        end
      end
      inherited tsContactos: TTabSheet
        Hint = ''
        inherited paContactos: TPanel
          Width = 721
          Height = 294
          ExplicitWidth = 721
          ExplicitHeight = 294
        end
        inherited fpContacto: TPanel
          Width = 906
          ExplicitWidth = 906
          inherited fpContactos: TPanel
            Width = 892
            ExplicitWidth = 892
            inherited ibModificarContactos: TBitBtn
              Left = 85
              ExplicitLeft = 85
            end
            inherited ibGuardarContactos: TBitBtn
              Left = 162
              ExplicitLeft = 162
            end
            inherited ibCancelarContactos: TBitBtn
              Left = 239
              ExplicitLeft = 239
            end
            inherited ibEliminarContactos: TBitBtn
              Left = 316
              ExplicitLeft = 316
            end
          end
        end
        inherited fpContactosDetalle: TPanel
          Height = 294
          ExplicitHeight = 294
          inherited dgContactos: TDBGrid
            Height = 258
          end
        end
      end
      object tsBancos: TTabSheet
        Hint = 'Bancos'
        Caption = 'Bancos'
        ImageIndex = 3
        ParentShowHint = False
        ShowHint = False
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object dgBancos: TDBGrid
          Left = 0
          Top = 58
          Width = 906
          Height = 297
          Align = alClient
          Color = clInfoBk
          DataSource = dsBancos
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
        end
        object fpBancosD: TPanel
          Left = 0
          Top = 0
          Width = 906
          Height = 58
          Align = alTop
          BevelOuter = bvNone
          Caption = 'click bancos'
          TabOrder = 1
          object fpBancos: TPanel
            Left = 0
            Top = 0
            Width = 906
            Height = 58
            Align = alClient
            BevelOuter = bvNone
            Caption = 'fpBancos'
            Color = 14933717
            TabOrder = 0
            object ibNuevoBanco: TBitBtn
              Left = 8
              Top = 21
              Width = 75
              Height = 34
              Cursor = crHandPoint
              Hint = 'Nuevo'
              Caption = 'nueva'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Glyph.Data = {
                360C0000424D360C000000000000360000002800000020000000200000000100
                180000000000000C0000120B0000120B000000000000000000000000FF0000FF
                0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
                FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
                00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
                0000FF0000FF0000FF0000FF0000FF0000FF0203FE1921F80000FF0000FF0000
                FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
                00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
                0000FF0000FF0000FF0000FF0000FF0000FF0000FF2440EC2D50F90000FF0000
                FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
                00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
                0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0C38F32749FB0000
                FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
                00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
                0000FF0000FF0000FF0000FF0000FF0000FF0000FF3C3BFF2426FE3776EC2445
                FB0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
                00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
                0000FF0000FF0000FF0000FF0000FF0000FF0505FFE5E5FAFFFFFFEBF1F74C97
                EB2749FA0C0BFF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
                00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
                0000FF0000FF0000FF0000FF0000FF0000FF4C4CFBFFFFF7FDFDFCFFFFFDEEF4
                F860C4E57DB5F5ACA9FB5150FE1515FF0000FF0000FF0000FF0000FF0000FF00
                00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
                0000FF0000FF0000FF0000FF0000FF0000FFC3C3F5FDFDF9FBFBFBFAFAFAFFFD
                FBEDF2F555B9E49AE2F2FFFFF7E7E7F8C0C1F86E6EFB2424FE0202FF0000FF00
                00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
                0000FF0000FF0000FF0000FF0000FF2C2CFDEBEBF4FBFBFBFCFCFCFCFCFCFBFB
                FBFFFEFBECF2F554B9E592DAF1FFFAF6FBF9F5FFFFF4FFFFF3D2D2F68C8CF93F
                3FFC0B0BFF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
                0000FF0000FF0000FF0000FF0000FFA1A1F8FEFEF8FBFBFBF7F7F7F8F8F8FBFB
                FBFCFCFCFFFFFDEEF4F855B9E692DAF1FFF9F6F6F4F4F2F3F3F4F4F2FAFAF1FF
                FFF1E2E2F2A7A7F55858FA1A1AFE0000FF0000FF0000FF0000FF0000FF0000FF
                0000FF0000FF0000FF0000FF1818FEE9E9F5FCFCFCFBFBFBF8F8F8F6F6F6F4F4
                F4F5F5F5F7F7F7FFFDFBEEF4F856BAE695DCF3FFFDFAF9F8F8F5F5F5F2F2F2F1
                F1F1F1F1F0F6F6F0FEFEF0EFEFEF4949FA0000FF0000FF0000FF0000FF0000FF
                0000FF0000FF0000FF0000FF7C7CFAFFFFF8FDFDFDFAFAFAF5F5F5F7F7F8FBFB
                FCF9F9FAF7F7F7F5F5F5FAF7F5ECEFF253B7E394DCF3FFFFFCFEFCFCFAFAFAF8
                F8F8F4F4F4F2F2F2EFEFEFFDFDEE4D4DFA0000FF0000FF0000FF0000FF0000FF
                0000FF0000FF0000FF0808FFE0E0F6FDFDFBFBFBFBF6F6F6F9F9F9F8F8F7ECEB
                E6F5F6F8FAFCFFFCFDFFFBFBFCFFFCFAE8EFF254B8E594DCF3FFFBF8FCFBFAFC
                FCFCFCFCFCFBFBFBF8F8F8FEFEF44E4EFB0000FF0000FF0000FF0000FF0000FF
                0000FF0000FF0000FF5E5EFCFFFFF8FCFCFCFAFAFAF8F8F8FBFCFED9D0B8B7A0
                61C3B182D1C6A8E1DCCEEEEDEBF7F8FBFFFFFFF0F6FC56BAE790D8EFFDF7F4F6
                F5F4F6F6F6F9F9F9FCFCFBE1E1FC1919FF0000FF0000FF0000FF0000FF0000FF
                0000FF0000FF0000FFCDCDF8FEFEFBFDFDFDF8F8F8F7F8F9EDEBE5BFA96DBCA1
                57BB9F55B79C53B79E59BBA66CC6B68BD4CBB1EBE3D7E3E8EC56BCEC98E1FBFF
                FDFAFAF9F8F6F6F6FFFFFA8484FD0000FF0000FF0000FF0000FF0000FF0000FF
                0000FF0000FF3939FDFFFFF9FEFEFEFAFAFAF7F7F8FAFAFACCBD93BFA55DC0A7
                61BFA660BFA55EBEA45CBDA25ABA9F55B89D54B79F5DC4AD74BFB49042A1BF95
                DEF8FCF6F2FFFFFFDEDFFF0A0AFF0000FF0000FF0000FF0000FF0000FF0000FF
                0000FF0000FFB1B1FAFFFFFCFDFDFDF9F9F9FCFDFFDBD2BAC2AA66C5AD69C4AB
                68C4AB67C3AA66C2A864C0A762C0A660BFA55FBFA55DBDA259C0A154B39D5C45
                A2BB88CEE0DDCCA0938DCE0000FF0000FF0000FF0000FF0000FF0000FF0000FF
                0000FF1F1FFEE5E5FAFDFDFDFCFCFCFBFBFDE5E1D7C7B278CAB371C9B271C8B1
                70C7B06EC6AE6CC6AD6AC5AC69C4AB67C3AA66C2A964C1A862C0A762C5A75CB6
                9F5D45A3BD81C1C1BFA058AC9465887681110FEF0000FF0000FF0000FF0000FF
                0000FF8D8DFCFFFFFCFEFEFEFAFBFCEEEDE9CEBC8BCFB879CFB87ACDB778CCB6
                77CCB575CBB473CAB272C9B170C8B06EC7AF6DC6AE6BC6AD6AC5AC68C3AB67C8
                AA62B9A36248A7C285C4C3CEB15CC6AA5F0807F90000FF0000FF0000FF0000FF
                0D0DFFE3E3FBFFFFFEFEFEFFF5F5F3D3C59DD4BE81D4BF84D3BE82D2BC80D1BB
                7FD0BA7DCFB97BCEB879CDB678CCB576CBB474CAB372C9B271C8B06FC7AF6DC7
                AF6DCCAE67BDA9694C9CB76CA6A5322DDB0000FF0000FF0000FF0000FF0000FF
                6A6AFDFFFFFCFFFFFFFAFAFAD6CAA9D8C38ADAC68ED9C58CD8C48AD7C289D6C1
                87D4BF84D3BE83D3BD81D2BC7FD1BB7DCFB97CCEB87ACDB778CDB677CCB575CC
                B576CAB271CEB36FC7AC67375DB60715F90000FF0000FF0000FF0000FF0202FF
                D5D5FCFFFFFFFDFDFED9CFB4DCC993E0CD98DFCC96DECA94DCC992DBC890DAC6
                8ED9C58DD8C48BD7C389D6C187D5BF85D4BF83D3BE82D2BC80D1BB7ED0BA7DD0
                B97CCFB87AD2BB75C6AF810808FA0000FF0000FF0000FF0000FF0000FF3C3CFF
                FFFFFEFEFEFFDFD6BEE0CE9BE6D4A1E4D29FE3D19DE1CF9CE0CE9AE0CD98DFCC
                96DECB95DDCA93DBC891DBC78FDAC68ED9C58CD8C38AD6C288D5C186D6C186D4
                BF82D5BF81DAC37D1B19EF0000FF0000FF0000FF0000FF0000FF0000FF5555FF
                FFFFFFE2DAC2E4D3A3EBDBAAE8D8A8E8D7A6E7D6A4E6D5A3E5D4A2E4D3A0E3D1
                9EE2D09CE1CF9BE0CE99E0CD97DECC95DDCA93DCC992DBC890DBC790DAC58DD8
                C58BE4CE83524AD40000FF0000FF0000FF0000FF0000FF0000FF0000FF5656FD
                F4ECC4E8D8AAF0E0B3EEDDB0EDDDAFECDCADEBDBACEADAAAE9D9A9E8D8A7E8D7
                A5E7D6A4E6D4A2E5D3A0E4D29FE2D09DE2CF9BE1CE9AE0CD98E0CD98DDCA94E9
                D58E9084BB0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF3937EE
                F1E3B2FFF3B9FFF1B5FAEBB5F3E4B5F0E1B4EFDFB2EEDEB1EDDEB0EDDDAEECDC
                ADEBDBABEAD9A9E9D8A7E8D7A6E7D6A5E6D5A3E5D4A1E5D3A1E3D19EEDDA99C6
                B6AA0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
                0403FE2220F7635EE6BCB1CEF2E4BDFFF2B8FFF2B6FAEBB6F3E4B6F0E1B4EFE0
                B3EEDFB1EEDEB0EDDDAFECDDADECDBABEADAAAEAD9A9E9D8A8F1DFA2D8C8AC04
                04FE0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
                0000FF0000FF0000FF0000FF0404FE2423F66A64E4C3B7CDF4E6BDFFF3B7FFF2
                B6FAEBB7F3E4B6F1E2B5EFE0B3EFDFB2EEDFB1EEDEB1F5E4ABE6D6B10808FC00
                00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
                0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0505FE2625F56E68
                E4C6BBCBF6E8BDFFF4B8FFF2B7FAEBB7F4E4B7F9EAB4ECDDB80F0EFA0000FF00
                00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
                0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
                FF0000FF0606FE2B29F5736EE3CDC3CAFBEEBDEFE1BE1110FB0000FF0000FF00
                00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
                0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
                FF0000FF0000FF0000FF0000FF0000FF0909FD0606FE0000FF0000FF0000FF00
                00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
                0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
                FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
                00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF}
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              OnClick = ibNuevoBancoClick
            end
            object ibEliminarBanco: TBitBtn
              Left = 86
              Top = 21
              Width = 75
              Height = 34
              Cursor = crHandPoint
              Hint = 'Eliminar'
              Caption = 'eliminar'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Glyph.Data = {
                360C0000424D360C000000000000360000002800000020000000200000000100
                180000000000000C0000120B0000120B000000000000000000000000FF0000FF
                0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
                FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
                00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
                0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
                FF0000FF0000FF0000FF0000FF0000FF0A0AF40606F80000FF0000FF0000FF00
                00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
                0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
                FF0000FF0000FF0404FB2222DD5C55B79B82B6907DAC1D1CE40000FF0000FF00
                00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
                0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
                FF1010EE3D3BC97B6CABC69AC1F4B7F6FAC5FFFFCAFFB895B83937CF0000FF00
                00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
                0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0909F52827D76259
                B49577B8DDA5E0F7B8FFF5B6FFEEB4F9EBBBF8EEBCF9FFC2FFD3A0CA5A53B901
                01FE0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
                0000FF0000FF0000FF0000FF0000FF0202FD1616E84C47BE7F6DAFC49ACAEDB8
                F9F4C2FFEEBDF9EBACF7EEB0F7EEB3F8ECBBF9EFBCF8F7B7F5FFBFFFF1B4DF77
                6AAD0808F60000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
                0000FF0000FF0000FF1010EE3432D16A5FAFAC8BB8D6A2EBE9B0FFE8B8FDEDE6
                EEEFEFEEF1F2F0F0C4F6F0ADF7EFB4F7ECBBFAEFBCF9F8B7F5FDB7F3FFBCFAFF
                BEEE8D78AA1717E90000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
                0000FF0000FF5652BF806DB6C49AD8DDA9FFE6BFFCE8DAEFE3C2F1E7CCF2EFF6
                EDF0F3F0F3EFF2F5E9F5F3BAF7F0B4F8EDBBFAF0BCF9F9B7F4FEB7F3FFB7F1FF
                BAF4FFC4F7AD8CAC2E2DD50000FF0000FF0000FF0000FF0000FF0000FF0000FF
                0000FF201FEEA083DDDCABFFD4A0FCDDC1EFEAEEE7ECF5E8E6CAF1E8BCF5EFE2
                F1EFC7F5F4E9F4F6F8F6F6D3F7F2B1F8EDBBFAF0BCF8F9B7F4FDB6F1FFB7F0FF
                B7EEFFB9EFFFC5FBCB9FB8423EC80000FF0000FF0000FF0000FF0000FF0000FF
                0000FF3231F8DAB0F2CD9EF6D3A6F5E7E2E9EAE9E9EADCEEE6BAF4E6A9F7EBAE
                F7F0CBF6F5FBF5F7FAF7F8C6F7F4B4F8EDBBFAF0BCF8F8B6F2FDB5F0FFB6EEFF
                B6EDFFB7ECFFB7ECFFC3F9E6B1C95F58C20000FF0000FF0000FF0000FF0000FF
                0000FF3532FFDCB2F7CC9BF6DDBEF0EDE8E9E2BAF3DFA5F7E4A8F7E8ACF7EDAC
                F7F5DAF6F7F6F7F9E5F8FAB3F8F5B7F8EDBBF8F0BBF7F7B5F1FBB4EEFEB4ECFF
                B5EBFFB6EBFFB7ECFFB9EBFFC9F69E7EDF0000FF0000FF0000FF0000FF0000FF
                0000FF302DFCD9AEF4CFA2F6E7DCECECEEEAEBE0EEE3B3F6E4A8F7E9ABF7F0B2
                F7F6BEF8FAB9F8FCBAF8FCB5F8F5B7F7EDBCF7EEBBF5F4B3EFF8B2ECFCB3EBFF
                B5EBFFB6ECFFB8ECFFBAECFFC4EA8061F90000FF0000FF0000FF0000FF0000FF
                0000FF2623FDD7AAF5D0A4F5E9E3EBEFF5EBEAE0F0DFA7F7E4A7F8EEC1F6F6EE
                F6F8FBF8FAD0F9FDB1F9FCB7F8F3B6F6EDBBF6EEBAF4F3B1ECF8B1EAFEB4EBFF
                B6EBFFB7ECFFB9ECFFBBECFFC5EB8061F60000FF0000FF0000FF0000FF0000FF
                0000FF2823FDD7A9F4CC9DF5E1C8F1E8DBEFE0B8F4ECD9F4E7B9F6EDCFF6F9FF
                F7FAFCFAF8D0F9FAB5F9F9B5F7F0B2F1E6B5EEEAB6EEF7B4EDFBB2EAFFB5EBFF
                B6ECFFB7ECFFBAECFFBCECFFC6EC7E5EF60000FF0000FF0000FF0000FF0000FF
                0000FF5F58FDD0A4F4CDA0F5D2A5F5D6A8F5EEE0F3F5FCF3F3EAF6F7F4F8FCFF
                FAF8DDFAEEACF5E4A8ECCF98DCC290D3C397D8C598D7DEA1DDFFB5ECFFB7ECFF
                B6ECFFB8ECFFBAECFFBCECFFC7EC8162F60000FF0000FF0000FF0000FF0000FF
                0000FF615AFAD0A4F5CB9FF5CC9DF5D5ACF4F2EDF3F7F5F6F7EAF8F0D8F6DFB7
                ECC996DEBC8CD4BF8DD4D49AE0EBADEFF1BDFAEAB9F6CE99DAD498D4FAB2E8FF
                B9EEFFB9ECFFBBECFFBDECFFC7EC8A6AF50000FF0000FF0000FF0000FF0000FF
                0000FF574FFACFA4F4CA9EF4CEA0F3D2A1F4D8ABF2D2A9EABF91DDB183D4B686
                D5CB95E0E4A6EFF8B2F9FFB5FBFBB4FAEFB9F9EAB6F6F4B3F5E3A4E4D094D2EF
                AAE1FFBCEEFFBDECFFBDECFFC7EC9977F50000FF0000FF0000FF0000FF0000FF
                0000FF5146FBD2A6F4C99EF2C197E9B48CDDA982D4AC83D5C191E1D9A2EFEBAC
                F8F3AEFAF5AEF9F9B5FBFDC5FFFED9FFFEE7FFF9DBFCF5BAF4FDB3F3F6B1EFD7
                9AD7E3A1D8FFBCEBFFC0EFFFC6EDB58DF30000FF0000FF0000FF0000FF0000FF
                0000FF4A3FF7B590DDA380D4A783D5B98FE0D09DEEDFA7F7E5A9FAE8A8F8ECB0
                FBF6C3FFFDD7FFFFE2F1FEDDCDF9C898E6AE7EF5EAEEFFF0FFFFCFFBFFB6F3FF
                B9F4E4A7E1DB9BD3F8B6E6FFC8EFCEA2F10000FF0000FF0000FF0000FF0000FF
                0000FF6454E8B78FE2C89AEFD6A3F7DAA4F8DCA3F7E2ACFAEEC1FFF8D7FFFBDF
                EBF6D1BBEDB987E9AB6AE6A45DDC9343CD8440F4F7F6E0C5CFEFCEDFFFE3FCFF
                C1F5FFBCF5F3B4ECDB9DD4F0B0DCD2A2F30000FF0000FF0000FF0000FF0000FF
                6650FBA27CF9D19FF7D29FF7D9A8F6E7BEFAF5D8FFF9E1F1F3D4C3E9B582DD9C
                5DD99F6FC89058D28D43D79A58CA7826D19A77FCFFFFCCA1A8DDBFC4F9F9FCFA
                E7FAFFD0F9FFBFF5FDBFF4E7ACDDBC8ADB0000FF0000FF0000FF0000FF0000FF
                996FF9E2A8F6E0B8F7EFD3FBF9E4FDF8D8EEE0A779D6974FC97F38CB9979E1CA
                C1DEDBDEBD8C61D58E43D38C40B56412BEB9A4F6F8FAD7C3C2ECE8E7EBECEEDF
                DCE3F8F1F8FFE0FCFFC7F7FFC5F6DEB1E72822F90000FF0000FF0000FF0000FF
                BB9EFBFFECFCFFE4FEFFDAFFF2B6D3D28DABD07C77CE822CC97527A78C87BFB3
                B4C39B75DA8F44D18A3DD07A29898239A8C2A4E3D4D3E9ECEDF0F0F0ECECEDEA
                EBEBF1F2F1F6F3F7FFF0FEFFDBFBFFC9F6EBB8F30604FF0000FF0000FF0000FF
                423EFFD4D0FEFFE8FEFFCAFFF5ADD5D17931CE8A9FC17773D28539D8873AD795
                4DE79B45D48938D2873DC59465A5C6A1D4DCD0DBC9BDE8EAECEDEDEEECECECF1
                F1F1FAFAFAFBFDF9D8CFE5D1B8E9FDE0FAFFC9EE0C08FE0000FF0000FF0000FF
                0000FF0403FF5350FECCBFFEFFE4FBD0763CD57715CA8966BB845CD1873ADE8F
                37D58F43D9A068D5AB91E4E2E3EEF2FAD1C5BDDCCAB7E8EAEDEDEDEDEBEBEBF1
                F1F1FBFCFBF8F8F79B7ECA855CC5E3CCECDFDFFE0907FF0000FF0000FF0000FF
                0000FF0000FF0000FF0101FF4443FFD5B6D2D58034D7862BD58F46CE8F51D89F
                6CDAAA8EC07961B58E80C4B3A6C5B19ED1B396EAE4DEE5E5E6E7E7E8EBEBEBF6
                F6F6FFFFFBF9F2EEC0ABEDBAAEF97E7AFE2B29FF0000FF0000FF0000FF0000FF
                0000FF0000FF0000FF0000FF0000FF0000FF4239F3D0A7ABDCB19ADAB1A2DCC1
                BCE5DCDCE4D7D5DCC3B8DAC1B2DCCBB9D5DDDCCAD7E3D2D8E0E9EAECF9FAFAFF
                FFFCC2C2F74D4AFC1A19FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
                0000FF0000FF0000FF0000FF0000FF0000FF0000FF3333F8FFFFEDFDFEF1F9FD
                F4EFF2EDE4E5E4E5DFD8D6E5C8BBEDD1B5DEEAC2D6EBD5DDE8EAECEEFFFFF7C0
                C0F60808FE0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
                0000FF0000FF0000FF0000FF0000FF0000FF0000FF2323FAA2A2EE4141F67575
                EFABA7F4F1E0DEEFE3A5C6F5B8B3EBDFB5D7EFBCCEE6CCD5DFDCDFE3A2A2EF07
                07FE0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
                0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
                FF0000FF1514FF4247EEADE2C6AFE6E1B5D8E59BA9E59094E3393AF40000FF00
                00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
                0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
                FF0000FF0000FF0000FF0000FF1517FA2225F60B0BFD0000FF0000FF0000FF00
                00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
                0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
                FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
                00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF}
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              OnClick = ibEliminarBancoClick
            end
          end
        end
      end
      object tsReferencias: TTabSheet
        Caption = 'Referencias'
        ImageIndex = 4
        ParentShowHint = False
        ShowHint = False
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Label30: TLabel
          Left = 296
          Top = 44
          Width = 112
          Height = 13
          Caption = 'Acumulado de Compras'
          Transparent = True
        end
        object Label31: TLabel
          Left = 296
          Top = 68
          Width = 101
          Height = 13
          Caption = 'Acumulado de Pagos'
          Transparent = True
        end
        object Label32: TLabel
          Left = 296
          Top = 92
          Width = 106
          Height = 13
          Caption = 'Pagos Extemporaneos'
          Transparent = True
        end
        object Label13: TLabel
          Left = 8
          Top = 105
          Width = 46
          Height = 13
          Caption = 'Vendedor'
          Transparent = True
        end
        object Label17: TLabel
          Left = 8
          Top = 145
          Width = 61
          Height = 13
          Caption = 'Transportista'
          Transparent = True
        end
        object Label15: TLabel
          Left = 8
          Top = 64
          Width = 72
          Height = 13
          Caption = 'Forma de Pago'
          Transparent = True
        end
        object Label20: TLabel
          Left = 8
          Top = 186
          Width = 48
          Height = 13
          Caption = 'Remitente'
          Transparent = True
        end
        object Label19: TLabel
          Left = 8
          Top = 24
          Width = 77
          Height = 13
          Caption = 'Dias de Retardo'
          Transparent = True
        end
        object Label23: TLabel
          Left = 115
          Top = 24
          Width = 41
          Height = 13
          Caption = 'Prioridad'
          Transparent = True
        end
        object sbRefreshVendedor: TSpeedButton
          Left = 220
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
          OnClick = sbRefreshVendedorClick
        end
        object sbFormaDePago: TSpeedButton
          Left = 220
          Top = 80
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
          OnClick = sbFormaDePagoClick
        end
        object sbRefreshTransportista: TSpeedButton
          Left = 220
          Top = 161
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
        end
        object sbRefreshRemitente: TSpeedButton
          Left = 220
          Top = 201
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
          OnClick = sbRefreshRemitenteClick
        end
        object Label39: TLabel
          Left = 8
          Top = 226
          Width = 88
          Height = 13
          Caption = 'Recomendado por'
          Transparent = True
        end
        object sbLimpiarCC: TSpeedButton
          Left = 243
          Top = 80
          Width = 21
          Height = 21
          Hint = 'Limpiar'
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000230B0000230B00000000000000000000FFFFFFFFFFFF
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
          OnClick = sbLimpiarCCClick
        end
        object sbLimpiarVendedor: TSpeedButton
          Left = 243
          Top = 120
          Width = 21
          Height = 21
          Hint = 'Limpiar'
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000230B0000230B00000000000000000000FFFFFFFFFFFF
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
          OnClick = sbLimpiarVendedorClick
        end
        object sbLimpiarTransportista: TSpeedButton
          Left = 243
          Top = 161
          Width = 21
          Height = 21
          Hint = 'Limpiar'
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000230B0000230B00000000000000000000FFFFFFFFFFFF
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
          OnClick = sbLimpiarTransportistaClick
        end
        object sbLimpiarRemitente: TSpeedButton
          Left = 243
          Top = 201
          Width = 21
          Height = 21
          Hint = 'Limpiar'
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000230B0000230B00000000000000000000FFFFFFFFFFFF
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
          OnClick = sbLimpiarRemitenteClick
        end
        object Label61: TLabel
          Left = 296
          Top = 115
          Width = 101
          Height = 13
          Caption = 'Fecha Ultima Compra'
          Transparent = True
        end
        object Label62: TLabel
          Left = 296
          Top = 139
          Width = 90
          Height = 13
          Caption = 'Fecha Ultimo Pago'
          Transparent = True
        end
        object leVendedor: TDBLookupComboBox
          Left = 8
          Top = 121
          Width = 209
          Height = 21
          DataField = 'nombre_vendedor'
          DataSource = dsFuente
          TabOrder = 4
        end
        object leTransportista: TDBLookupComboBox
          Left = 8
          Top = 161
          Width = 209
          Height = 21
          DataField = 'nombre_transportista'
          DataSource = dsFuente
          TabOrder = 5
        end
        object leFormaPago: TDBLookupComboBox
          Left = 8
          Top = 80
          Width = 209
          Height = 21
          DataField = 'nombre_forma'
          DataSource = dsFuente
          TabOrder = 3
        end
        object leRemitente: TDBLookupComboBox
          Left = 8
          Top = 202
          Width = 209
          Height = 21
          DataField = 'nombre_remitente'
          DataSource = dsFuente
          TabOrder = 6
        end
        object ceDiasRetardo: TDBEdit
          Left = 8
          Top = 40
          Width = 102
          Height = 21
          DataField = 'DIAS_DE_RETARDO'
          DataSource = dsFuente
          TabOrder = 1
        end
        object pePrioriodad: TDBComboBox
          Left = 115
          Top = 40
          Width = 102
          Height = 21
          DataField = 'PRIORIDAD'
          DataSource = dsFuente
          Items.Strings = (
            'Sin Clasificar'
            'Alta'
            'Media'
            'Baja')
          TabOrder = 2
        end
        object fpReferencias: TPanel
          Left = 0
          Top = 0
          Width = 906
          Height = 20
          Align = alTop
          BevelOuter = bvNone
          Caption = 'fpReferencias'
          Color = 14933717
          TabOrder = 0
        end
        object deUnidadesCompradas: TDBEdit
          Left = 415
          Top = 40
          Width = 128
          Height = 21
          TabStop = False
          Color = clBackground
          DataField = 'ACUMULADO_COMPRAS'
          DataSource = dsFuente
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 8
        end
        object deAcumuladoDePagos: TDBEdit
          Left = 415
          Top = 64
          Width = 128
          Height = 21
          TabStop = False
          Color = clBackground
          DataField = 'ACUMULADO_PAGOS'
          DataSource = dsFuente
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 9
        end
        object dePagosExtemporaneos: TDBEdit
          Left = 415
          Top = 88
          Width = 128
          Height = 21
          TabStop = False
          Color = clBackground
          DataField = 'NUM_PAGOS_EXTEMPORANEOS'
          DataSource = dsFuente
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 10
        end
        object deRecomendadoPor: TDBEdit
          Left = 8
          Top = 242
          Width = 209
          Height = 21
          Color = clBackground
          DataField = 'recomendadopor_nombre'
          DataSource = dsFuente
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
        end
        object edFechaUltCompra: TDBEdit
          Left = 415
          Top = 111
          Width = 128
          Height = 21
          Color = clBackground
          DataField = 'FECHA_ULT_COMPRA'
          DataSource = dsFuente
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 11
        end
        object edFechaUltPago: TDBEdit
          Left = 415
          Top = 135
          Width = 128
          Height = 21
          Color = clBackground
          DataField = 'FECHA_ULT_PAGO'
          DataSource = dsFuente
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 12
        end
      end
      object tsExtensiones: TTabSheet
        Caption = 'Extensiones'
        ImageIndex = 5
        ParentShowHint = False
        ShowHint = False
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object pcExtensiones: TPageControl
          Left = 0
          Top = 0
          Width = 906
          Height = 355
          ActivePage = tsDescuentos
          Align = alClient
          TabOrder = 0
          OnChange = pcExtensionesChange
          object tsExtensionesMant: TTabSheet
            Caption = 'Mantenimiento'
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object paCapturaExt: TPanel
              Left = 0
              Top = 0
              Width = 898
              Height = 265
              Align = alTop
              BevelInner = bvRaised
              BevelOuter = bvLowered
              Color = 14933717
              TabOrder = 0
              object Label42: TLabel
                Left = 375
                Top = 98
                Width = 30
                Height = 13
                Caption = '&R.F.C.'
                FocusControl = deRFCExt
                Transparent = True
              end
              object Label34: TLabel
                Left = 8
                Top = 57
                Width = 51
                Height = 13
                Caption = 'Fecha Alta'
                Transparent = True
              end
              object Label35: TLabel
                Left = 165
                Top = 57
                Width = 27
                Height = 13
                Caption = 'Clave'
                Transparent = True
              end
              object Label36: TLabel
                Left = 8
                Top = 98
                Width = 37
                Height = 13
                Caption = 'Nombre'
                Transparent = True
              end
              object Label38: TLabel
                Left = 417
                Top = 221
                Width = 35
                Height = 13
                Caption = 'Estatus'
                Transparent = True
              end
              object Label47: TLabel
                Left = 8
                Top = 139
                Width = 23
                Height = 13
                Caption = 'Ca&lle'
                FocusControl = deCalleExtension
              end
              object Label48: TLabel
                Left = 264
                Top = 139
                Width = 51
                Height = 13
                Caption = 'En&tre Calle'
                FocusControl = deEntreExtension
              end
              object Label49: TLabel
                Left = 417
                Top = 139
                Width = 33
                Height = 13
                Caption = '&Y Calle'
                FocusControl = deYExtension
              end
              object Label54: TLabel
                Left = 8
                Top = 180
                Width = 46
                Height = 13
                Caption = 'Num. Ext.'
                FocusControl = deExtExtension
              end
              object Label52: TLabel
                Left = 88
                Top = 180
                Width = 24
                Height = 13
                Caption = 'Let&ra'
                FocusControl = deLetraExtension
              end
              object Label53: TLabel
                Left = 137
                Top = 180
                Width = 43
                Height = 13
                Caption = 'Num. Int.'
              end
              object Label51: TLabel
                Left = 186
                Top = 180
                Width = 20
                Height = 13
                Caption = 'C.&P.'
                FocusControl = deCPExtension
              end
              object Label50: TLabel
                Left = 264
                Top = 180
                Width = 35
                Height = 13
                Caption = 'Colonia'
              end
              object Label55: TLabel
                Left = 417
                Top = 180
                Width = 127
                Height = 13
                Caption = 'Ci&udad (Alt + Flecha abajo)'
              end
              object Label45: TLabel
                Left = 484
                Top = 57
                Width = 61
                Height = 13
                Caption = 'Transportista'
                Transparent = True
              end
              object Label40: TLabel
                Left = 264
                Top = 221
                Width = 125
                Height = 13
                Caption = 'Ref. Cliente<--->Proveedor'
                Transparent = True
              end
              object Label56: TLabel
                Left = 559
                Top = 139
                Width = 25
                Height = 13
                Caption = '&Zona'
                FocusControl = deZonaExtension
              end
              object Label41: TLabel
                Left = 8
                Top = 221
                Width = 48
                Height = 13
                Caption = 'Remitente'
                Transparent = True
              end
              object Shape37: TShape
                Left = 225
                Top = 8
                Width = 177
                Height = 34
                Brush.Color = 14789952
                Pen.Color = 11764252
                Shape = stRoundRect
              end
              object Label44: TLabel
                Left = 287
                Top = 98
                Width = 42
                Height = 13
                Caption = '&Telefono'
                FocusControl = edExtTelefono
                Transparent = True
              end
              object Label46: TLabel
                Left = 375
                Top = 57
                Width = 64
                Height = 13
                Caption = 'Cta. Contable'
                FocusControl = cbCtasExtension
                Transparent = True
              end
              object Label57: TLabel
                Left = 484
                Top = 98
                Width = 42
                Height = 13
                Caption = 'C.&U.R.P.'
                FocusControl = deCURPExt
                Transparent = True
              end
              object Label37: TLabel
                Left = 287
                Top = 57
                Width = 70
                Height = 13
                Caption = 'Lim. de Credito'
                Transparent = True
              end
              object deRFCExt: TDBEdit
                Left = 375
                Top = 114
                Width = 105
                Height = 21
                DataField = 'RFC'
                DataSource = dsClientes_Extensiones
                TabOrder = 11
              end
              object deFechaAltaExtension: TDBEdit
                Left = 8
                Top = 73
                Width = 153
                Height = 21
                DataField = 'FECHA_ALTA'
                DataSource = dsClientes_Extensiones
                Enabled = False
                TabOrder = 0
              end
              object deClaveExtension: TDBEdit
                Left = 165
                Top = 73
                Width = 119
                Height = 21
                DataField = 'CLAVE'
                DataSource = dsClientes_Extensiones
                MaxLength = 50
                TabOrder = 1
              end
              object deNombreExtension: TDBEdit
                Left = 8
                Top = 114
                Width = 276
                Height = 21
                DataField = 'NOMBRE'
                DataSource = dsClientes_Extensiones
                TabOrder = 9
              end
              object peEstatusExtension: TDBComboBox
                Left = 417
                Top = 237
                Width = 118
                Height = 21
                DataField = 'ESTATUS'
                DataSource = dsClientes_Extensiones
                Items.Strings = (
                  'Activo'
                  'Suspendido'
                  'Cancelado')
                TabOrder = 27
              end
              object deCalleExtension: TDBEdit
                Left = 8
                Top = 155
                Width = 253
                Height = 21
                DataField = 'CALLE'
                DataSource = dsDomicilioExtension
                MaxLength = 100
                TabOrder = 13
              end
              object deEntreExtension: TDBEdit
                Left = 264
                Top = 155
                Width = 150
                Height = 21
                DataField = 'ENTRE_CALLE'
                DataSource = dsDomicilioExtension
                MaxLength = 50
                TabOrder = 14
              end
              object deYExtension: TDBEdit
                Left = 417
                Top = 155
                Width = 139
                Height = 21
                DataField = 'Y_CALLE'
                DataSource = dsDomicilioExtension
                MaxLength = 50
                TabOrder = 15
              end
              object deExtExtension: TDBEdit
                Left = 8
                Top = 196
                Width = 75
                Height = 21
                DataField = 'NUM_EXT'
                DataSource = dsDomicilioExtension
                MaxLength = 10
                TabOrder = 17
              end
              object deLetraExtension: TDBEdit
                Left = 88
                Top = 196
                Width = 45
                Height = 21
                DataField = 'LETRA'
                DataSource = dsDomicilioExtension
                MaxLength = 10
                TabOrder = 18
              end
              object deIntExtension: TDBEdit
                Left = 137
                Top = 196
                Width = 45
                Height = 21
                DataField = 'NUM_INT'
                DataSource = dsDomicilioExtension
                MaxLength = 10
                TabOrder = 19
              end
              object deCPExtension: TDBEdit
                Left = 186
                Top = 196
                Width = 75
                Height = 21
                DataField = 'CP'
                DataSource = dsDomicilioExtension
                MaxLength = 10
                TabOrder = 20
              end
              object deColoniaExtension: TDBEdit
                Left = 264
                Top = 196
                Width = 150
                Height = 21
                DataField = 'COLONIA'
                DataSource = dsDomicilioExtension
                MaxLength = 50
                TabOrder = 21
              end
              object cbCiudades: TDBLookupComboBox
                Left = 417
                Top = 196
                Width = 216
                Height = 21
                DataField = 'CIUDAD'
                DataSource = dsDomicilioExtension
                KeyField = 'R_ID'
                ListField = 'R_DESCRIPCION'
                ListSource = dsCiudades
                TabOrder = 24
              end
              object cbTransportistas: TDBLookupComboBox
                Left = 484
                Top = 73
                Width = 149
                Height = 21
                DataField = 'TRANSPORTISTA'
                DataSource = dsClientes_Extensiones
                KeyField = 'R_ID'
                ListField = 'R_NOMBRE'
                ListSource = dsTransportistas
                TabOrder = 8
              end
              object deRefC_P: TDBEdit
                Left = 264
                Top = 237
                Width = 150
                Height = 21
                DataField = 'PROVEEDOR'
                DataSource = dsClientes_Extensiones
                MaxLength = 100
                TabOrder = 26
              end
              object deZonaExtension: TDBEdit
                Left = 559
                Top = 155
                Width = 74
                Height = 21
                DataField = 'ZONA'
                DataSource = dsDomicilioExtension
                MaxLength = 50
                TabOrder = 16
              end
              object cbFactAExt: TDBCheckBox
                Left = 539
                Top = 237
                Width = 94
                Height = 17
                Caption = '&Facturar a Ext.'
                DataField = 'FLAG_FACTURAR'
                DataSource = dsClientes_Extensiones
                TabOrder = 28
                ValueChecked = 'Si'
                ValueUnchecked = 'No'
              end
              object buF11Ext: TBitBtn
                Left = 180
                Top = 3
                Width = 42
                Height = 45
                Cursor = crHandPoint
                Hint = 'Eliminar'
                Caption = 'Eliminar'
                Glyph.Data = {
                  0E100000424D0E100000000000003600000028000000340000001A0000000100
                  180000000000D80F0000000000000000000000000000000000000000FF0000FF
                  0000FF0000FF0000FF0000FF0000FF0000FF307F600030600000FF0000FF0000
                  FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
                  00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
                  C0C0C0C0C0C00000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
                  FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
                  00FF0000FF0000FF0000FF0000FF004F9F3098CF00306000306000679F0000FF
                  0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
                  FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FFC0C0C000
                  00FFC0C0C0C0C0C000679F0000FF0000FF0000FF0000FF0000FF0000FF0000FF
                  0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
                  FF0000FF0000FF0030601F7FCF3098CF3098CF9FFFFF60CFFF00306000306000
                  679F0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
                  0000FF0000FF0000FF0000FF0000FF0000FF0000FFC0C0C0C0C0C00000FF0000
                  FF0000FFC0C0C0C0C0C0C0C0C000679F0000FF0000FF0000FF0000FF0000FF00
                  00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
                  0030600067CF3098CF60CFFF60CFFF3098CF60CFFF3098CF9FFFFF60CFFF0030
                  600000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
                  00FF0000FF0000FF0000FF0000FFC0C0C0C0C0C00000FF0000FF0000FF0000FF
                  0000FF0000FF0000FFC0C0C0C0C0C00000FF0000FF0000FF0000FF0000FF0000
                  FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0030600067CF30
                  98CF4FB0E03098CF3098CF60CFFF60CFFF60CFFF3098CF60CFFF4FB0E0003060
                  00679F0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
                  FF0000FF0000FFC0C0C0C0C0C00000FF0000FF0000FF0000FF0000FF0000FF00
                  00FF0000FF0000FF0000FFC0C0C000679F0000FF0000FF0000FF0000FF0000FF
                  0000FF0000FF0000FF0000FF0000FF0000FF0030600067CF3098CF3098CF4FB0
                  E060CFFF60CFFF60CFFF3098FF3098CF60CFFF60CFFF9FFFFF9FFFFF00306000
                  00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
                  C0C0C00000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
                  FF0000FF0000FF0000FFC0C0C00000FF0000FF0000FF0000FF0000FF0000FF00
                  00FF0000FF0000FF0000FF0000FF0030600067CF3098CF60CFFF4FB0E060CFFF
                  3098CF3098FF60CFFF60CFFF60CFFF3098FF3098CF60CFFF3098CF0030600067
                  9F0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FFC0C0C000
                  00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
                  0000FF0000FF0000FFC0C0C000679F0000FF0000FF0000FF0000FF0000FF0000
                  FF0000FF0000FF003060004FB04F7FCF60CFFF3098E05FBFF04FB0E060CFFF4F
                  B0E04FB0FF4FB0FF4FB0E04FB0FF5FBFFF4FB0E060CFE07FE7FF4FB0E0004F7F
                  0000FF0000FF0000FF0000FF0000FF0000FF0000FFC0C0C0C0C0C0C0C0C00000
                  FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
                  00FF0000FF0000FFC0C0C0004F7F0000FF0000FF0000FF0000FF0000FF0000FF
                  0030600067CF3098CF60CFFF00309F6067CF3098CF60CFFF3098CF60CFFF60CF
                  FF60CFFF3098FF3098CF4FB0FF60CFFF60CFFF60CFFF9FFFFF9FFFFF00306000
                  00FF0000FF0000FF0000FF0000FFC0C0C0C0C0C00000FF0000FFC0C0C0C0C0C0
                  0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
                  FF0000FF0000FFC0C0C0C0C0C00000FF0000FF0000FF0000FF0000FF00306000
                  309F00309F6067CF3098CF60CFFF304FB03098CF3098CF60CFFF3098CF3098FF
                  60CFFF60CFFF60CFFF3098CF00679F00679F00679F9FCF9F0000FF0000FF0000
                  FF0000FF0000FF0000FFC0C0C0C0C0C0C0C0C0C0C0C00000FF0000FFC0C0C0C0
                  C0C00000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FFC0C0C0C0C0C0
                  C0C0C0C0C0C00000FF0000FF0000FF0000FF0000FF0030600067CF3098CF60CF
                  FF3098CF00309F6067CF4FB0E000309F6067CF3098CF3098CF60CFFF60CFFF30
                  98CF00679F00679F9FCF9F0000FF0000FF0000FF0000FF0000FF0000FF0000FF
                  0000FFC0C0C0C0C0C00000FF0000FF0000FFC0C0C0C0C0C00000FFC0C0C0C0C0
                  C00000FF0000FF0000FF0000FF0000FFC0C0C0C0C0C0C0C0C00000FF0000FF00
                  00FF0000FF0000FF0000FF0000FF0000FF0030600067CF3098CF60CFFF3098CF
                  60CFFF3098CF304FB03098CF60CFFF00309F6067CF3098CF00679F00679FB0E7
                  B00000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FFC0
                  C0C00067CF0000FF0000FF0000FF0000FF0000FFC0C0C00000FF0000FFC0C0C0
                  C0C0C00000FFC0C0C0C0C0C0C0C0C00000FF0000FF0000FF0000FF0000FF0000
                  FF0000FF0000FF0000FF0000FF0030600067CF3098CF60CFFF3098FF60CFFF30
                  98FF4FB0E000309F6067CF3098CF60CFFF00309F9FCF9F0000FF0000FF0000FF
                  0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FFC0C0C00000
                  FF0000FF0000FF0000FF0000FF0000FF0000FFC0C0C00000FF0000FF0000FFC0
                  C0C0C0C0C00000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
                  0000FF0000FF0000FF0030600067CF3098CF3098FF8000008000008000008000
                  0080000080000080000080000080000080000080000080000080000080000080
                  00008000008000008000008000008000008000000000FFC0C0C00000FF0000FF
                  0000FFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C00000FF0000FF0030600067CF3098CF8000000000FF0000FF0000FF0000FF
                  0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
                  FF0000FF0000FF0000FF0000FF8000000000FF0000FFC0C0C00000FF0000FFC0
                  C0C00000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
                  0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FFC0C0C00000
                  FF0000FF0000FF30304F7F7F9F8000000000FF0000000000000000FF0000FF00
                  00FF0000FF0000000000000000000000000000000000FF000000000000000000
                  0000000000000000FF8000000000FF0000FF0000FFC0C0C0C0C0C0C0C0C00000
                  FFC0C0C0C0C0C00000FF0000FF0000FF0000FFC0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C00000FFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000FFC0C0C00000FF0000FF
                  603030101010AFA8AF8000000000FF0000000000000000FF0000FF0000FF0000
                  FF0000FF0000FF0000000000000000FF0000FF0000FF0000FF00000000000000
                  00FF0000FF8000000000FF0000FFC0C0C0C0C0C0C0C0C0C0C0C00000FFC0C0C0
                  C0C0C00000FF0000FF0000FF0000FF0000FF0000FFC0C0C0C0C0C00000FF0000
                  FF0000FF0000FFC0C0C0C0C0C00000FF0000FFC0C0C00000FF0000FF60303030
                  98CF4047408000000000FF0000000000000000FF0000FF0000FF0000FF0000FF
                  0000FF0000000000000000FF0000FF0000FF0000FF0000000000000000FF0000
                  FF8000000000FF0000FFC0C0C00000FF0000FFC0C0C00000FFC0C0C0C0C0C000
                  00FF0000FF0000FF0000FF0000FF0000FFC0C0C0C0C0C00000FF0000FF0000FF
                  0000FFC0C0C0C0C0C00000FF0000FFC0C0C00000FF6030301010103098FF60CF
                  FF8000000000FF0000000000000000FF0000FF0000FF0000FF0000FF0000FF00
                  00000000000000FF0000FF0000FF0000FF0000000000000000FF0000FF800000
                  0000FFC0C0C0C0C0C00000FF0000FFC0C0C00000FFC0C0C0C0C0C00000FF0000
                  FF0000FF0000FF0000FF0000FFC0C0C0C0C0C00000FF0000FF0000FF0000FFC0
                  C0C0C0C0C00000FF0000FFC0C0C00000FF603030FFCFCF404740707770800000
                  0000FF0000000000000000000000000000000000FF0000FF0000FF0000000000
                  000000FF0000FF0000FF0000FF0000000000000000FF0000FF8000000000FFC0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C00000FFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  0000FF0000FF0000FFC0C0C0C0C0C00000FF0000FF0000FF0000FFC0C0C0C0C0
                  C00000FF0000FFC0C0C00000FF0000FF0000FF0000FF0000FF8000000000FF00
                  00000000000000FF0000FF0000FF0000FF0000FF0000FF0000000000000000FF
                  0000FF0000FF0000FF0000000000000000FF0000FF8000000000FF0000FF0000
                  FF0000FF0000FFC0C0C00000FFC0C0C0C0C0C00000FF0000FF0000FF0000FF00
                  00FF0000FFC0C0C0C0C0C00000FF0000FF0000FF0000FFC0C0C0C0C0C00000FF
                  0000FFC0C0C00000FF0000FF0000FF0000FF0000FF8000000000FF0000000000
                  000000FF0000FF0000FF0000FF0000000000000000000000000000FF0000FF00
                  00000000000000000000000000FF0000FF8000000000FF0000FF0000FF0000FF
                  0000FFC0C0C00000FFC0C0C0C0C0C00000FF0000FF0000FF0000FFC0C0C0C0C0
                  C0C0C0C0C0C0C00000FF0000FFC0C0C0C0C0C0C0C0C0C0C0C00000FF0000FFC0
                  C0C00000FF0000FF0000FF0000FF0000FF8000000000FF0000000000000000FF
                  0000FF0000FF0000FF0000FF0000000000000000000000FF0000FF0000FF0000
                  000000000000000000FF0000FF8000000000FF0000FF0000FF0000FF0000FFC0
                  C0C00000FFC0C0C0C0C0C00000FF0000FF0000FF0000FF0000FFC0C0C0C0C0C0
                  C0C0C00000FF0000FF0000FFC0C0C0C0C0C0C0C0C00000FF0000FFC0C0C00000
                  FF0000FF0000FF0000FF0000FF8000000000FF00000000000000000000000000
                  00000000FF0000FF0000FF0000000000000000FF0000FF0000FF0000FF000000
                  0000000000FF0000FF8000000000FF0000FF0000FF0000FF0000FFC0C0C00000
                  FFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000FF0000FF0000FFC0C0C0C0C0C000
                  00FF0000FF0000FF0000FFC0C0C0C0C0C00000FF0000FFC0C0C00000FF0000FF
                  0000FF0000FF0000FF8000000000FF0000FF0000FF0000FF0000FF0000FF0000
                  FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
                  00FF0000FF8000000000FF0000FF0000FF0000FF0000FFC0C0C00000FF0000FF
                  0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
                  FF0000FF0000FF0000FF0000FF0000FF0000FFC0C0C00000FF0000FF0000FF00
                  00FF0000FF800000800000800000800000800000800000800000800000800000
                  8000008000008000008000008000008000008000008000008000008000008000
                  008000000000FF0000FF0000FF0000FF0000FFC0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
                NumGlyphs = 2
                ParentShowHint = False
                ShowHint = False
                Spacing = 3
                TabOrder = 35
                OnClick = buF11ExtClick
              end
              object buF10Ext: TBitBtn
                Left = 136
                Top = 3
                Width = 42
                Height = 45
                Cursor = crHandPoint
                Hint = 'Cancelar'
                Caption = 'Cancelar'
                Glyph.Data = {
                  46110000424D46110000000000003600000028000000380000001A0000000100
                  18000000000010110000000000000000000000000000000000000000FF0000FF
                  CAA098D1A89FD2A79ED1A79DD1A69CD1A69BD1A59AD1A499D1A498D1A397D1A3
                  96D1A295D2A294D1A193D2A092CE9B8E0000FF0000FF0000FF0000FF0000FF00
                  00FF0000FF0000FF0000FF0000FF0000FFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C00000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
                  00FF0000FFBBA7BB5256BF5F60C0E3D9DAFEF0DEFFEFDCF4E5D67770BA4146BC
                  B4ABCDFFEAD0FEE9CEFEE8CCFEE7CAFEE5C7FEE4C5FEDDBECE9B8D0000FF0000
                  FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FFC0C0C00000FF00
                  00FFC0C0C00000FF0000FFC0C0C0C0C0C00000FFC0C0C00000FF0000FF0000FF
                  0000FF0000FF0000FF0000FFC0C0C00000FF0000FF0000FF0000FF0000FF0000
                  FF0000FF0000FF0000FF0000FF555AC3184BF80E3FF33844C2E4DADBF4E8DC56
                  56BA0229E70131FA1225C7FEEED5FEEED3FEEDD2FEECD0FEEBCEFEEACCFEE8C8
                  D2A2930000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
                  FFC0C0C00000FF0000FF0F3FF5C0C0C0C0C0C0C0C0C00000FF0000FFC0C0C000
                  00FF0000FF0000FF0000FF0000FF0000FF0000FFC0C0C00000FF0000FF0000FF
                  0000FF0000FF0000FF0000FF0000FF0000FF0000FF585CC12355F9134BFC0F3F
                  F53842C15356BA022AE80133FD0133FB1526C6FEEFD8FEEED6FEEED4FEEDD2FE
                  ECD1FFECCFFEE9CBD2A3940000FF0000FF0000FF0000FF0000FF0000FF0000FF
                  0000FF0000FF0000FFC0C0C0C0C0C00000FF0000FF0000FF0000FF0000FF0000
                  FFC0C0C00000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FFC0C0C000
                  00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FFB8A3B9
                  3A4AC81F54F9134CFD0D40F50733EA0438FD0232FD0F29D2C1B7CDFEF0DBFEF0
                  D9FEEFD8FEEFD5FEEDD3FEEDD1FEEACED2A3970000FF0000FF0000FF0000FF00
                  00FF0000FF0000FF0000FF0000FF0000FFC0C0C00000FFC0C0C00000FF0000FF
                  0000FF0000FFC0C0C00000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
                  FF0000FFC0C0C00000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
                  00FF0000FFDCC1BDC9C1D83948C72055FB124CFD0D45FD093FFD0F2CD7C1B9D2
                  FEF2E0FEF1DEFEF1DCFEF0DAFEEFD8FEEFD6FEEED4FEEBD1D2A4980000FF0000
                  FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FFC0C0C00000FF00
                  00FFC0C0C00000FF0000FF0000FFC0C0C00000FF0000FF0000FF0000FF0000FF
                  0000FF0000FF0000FF0000FFC0C0C00000FF0000FF0000FF0000FF0000FF0000
                  FF0000FF0000FF0000FF0000FFDCC1BDF4EAE67275C91B4DEE1853FC134CFD0E
                  42F83F4CC4EFE5DFFEF4E2FEF3E1FEF2DFFEF1DDFEF0DAFEEFD9FEEFD7FEEDD3
                  D2A5990000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
                  FFC0C0C00000FFC0C0C00000FF0000FF0000FF0000FF0000FFC0C0C00000FF00
                  00FF0000FF0000FF0000FF0000FF0000FF0000FFC0C0C00000FF0000FF0000FF
                  0000FF0000FF0000FF0000FF0000FF0000FF0000FFDDC3BE8587CD2554E82661
                  FD1E5AFD1B52FC154CFE0F40F4434BC0F0E7E0FEF4E3FEF3E1FEF2E0FEF1DEFE
                  F1DCFEF0DAFEEED7D3A69B0000FF0000FF0000FF0000FF0000FF0000FF0000FF
                  0000FF0000FF0000FFC0C0C0C0C0C00000FF0000FFC0C0C0C0C0C00000FF0000
                  FF0000FFC0C0C00000FF0000FF0000FF0000FF0000FF0000FF0000FFC0C0C000
                  00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF8E84BC
                  2F61E83170FD2B68FC2344D72B3DC71E53FA154CFE0F3FF26166C6FEF5E6FEF4
                  E4FEF3E2FEF2E0FEF1DEFEF1DCFEEFDAD2A79C0000FF0000FF0000FF0000FF00
                  00FF0000FF0000FF0000FF0000FF0000FFC0C0C0C0C0C00000FFC0C0C00000FF
                  0000FFC0C0C00000FF0000FFC0C0C00000FF0000FF0000FF0000FF0000FF0000
                  FF0000FFC0C0C00000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
                  00FF0000FF817CC14C87FD3675FD2A4FD8C3C1E1C9C5DF2E3FC61E53F9144DFD
                  0C27CCFEF6E9FEF5E7FEF5E5FEF4E3FEF3E1FEF2E0FEF1DDD2A89D0000FF0000
                  FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FFC0C0C0C0C0C0C0
                  C0C00000FF0000FF0000FF0000FFC0C0C0C0C0C00000FF0000FF0000FF0000FF
                  0000FF0000FF0000FF0000FFC0C0C00000FF0000FF0000FF0000FF0000FF0000
                  FF0000FF0000FF0000FF0000FF8F83BA5F6FD34158D1C2C2E5FEFBF7FEFBF5CA
                  C6DF2F3EC22845D96D71C9FEF7EBFEF6E9FEF5E8FEF5E6FEF4E4FEF3E2FEF2E0
                  D2A99F0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
                  FFC0C0C00000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
                  00FF0000FF0000FF0000FF0000FF0000FF0000FFC0C0C00000FF0000FF0000FF
                  0000FF0000FF0000FF0000FF0000FF0000FF0000FFE5CCC3F6EFECFEFEFEFEFE
                  FCFEFDFAFFFCF8FEFBF6FEFAF4FEF9F2FEF9F0FEF8EEFEF7EDFEF7EAFEF6E9FE
                  F5E7FEF4E5FFF3E2D2AAA00000FF0000FF0000FF0000FF0000FF0000FF0000FF
                  0000FF0000FF0000FFC0C0C00000FF0000FF0000FF0000FF0000FF0000FF0000
                  FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FFC0C0C000
                  00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FFE7CEC5
                  F7F0EDFFFFFFFEFEFEFEFEFDFEFDFBFEFCF9FEFCF7FEFBF5FEFAF3FEF9F1FEF8
                  EFFEF8EEFEF7EBFEF6E9FEF5E7FEF4E4D2AAA10000FF0000FF0000FF0000FF00
                  00FF0000FF0000FF0000FF0000FF0000FFC0C0C00000FF0000FF0000FF0000FF
                  0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
                  FF0000FFC0C0C00000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
                  00FF0000FFE9D1C7F8F1EEFFFFFFFFFFFFFEFEFEFEFEFE800000800000800000
                  8000008000008000008000008000008000008000008000008000008000008000
                  008000008000008000008000008000008000008000000000FFC0C0C00000FF00
                  00FF0000FF0000FF0000FFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C00000FFEBD3C8F8F1EEFFFFFFFFFEFFFFFFFFFFFFFF80
                  00000000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
                  0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF8000000000
                  FFC0C0C00000FF0000FF0000FF0000FF0000FFC0C0C00000FF0000FF0000FF00
                  00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
                  0000FF0000FF0000FF0000FF0000FFC0C0C00000FFECD6CAF9F2EEFFFFFFFFFE
                  FFFFFFFFFFFFFF8000000000FF0000000000000000FF0000FF0000FF0000FF00
                  00000000000000000000000000000000FF0000000000000000000000000000FF
                  0000FF8000000000FFC0C0C00000FF0000FF0000FF0000FF0000FFC0C0C00000
                  FFC0C0C0C0C0C00000FF0000FF0000FF0000FFC0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C00000FFC0C0C0C0C0C0C0C0C0C0C0C00000FF0000FFC0C0C00000FFEFD8CB
                  F9F3EFFFFFFFFFFFFFFFFFFFFFFFFF8000000000FF0000000000000000FF0000
                  FF0000FF0000FF0000FF0000FF0000000000000000FF0000FF00000000000000
                  00FF0000000000000000FF8000000000FFC0C0C00000FF0000FF0000FF0000FF
                  0000FFC0C0C00000FFC0C0C0C0C0C00000FF0000FF0000FF0000FF0000FF0000
                  FFC0C0C0C0C0C00000FF0000FFC0C0C0C0C0C00000FFC0C0C0C0C0C00000FFC0
                  C0C00000FFF0DBCCFAF4EFFFFFFFFFFFFFFFFFFFFFFFFF8000000000FF000000
                  0000000000FF0000FF0000FF0000FF0000FF0000FF0000000000000000FF0000
                  FF0000000000000000FF0000000000000000FF8000000000FFC0C0C00000FF00
                  00FF0000FF0000FF0000FFC0C0C00000FFC0C0C0C0C0C00000FF0000FF0000FF
                  0000FF0000FF0000FFC0C0C0C0C0C00000FF0000FFC0C0C0C0C0C00000FFC0C0
                  C0C0C0C00000FFC0C0C00000FFF2DDCFFBF5F0FFFFFFFFFFFFFFFFFFFFFFFF80
                  00000000FF0000000000000000FF0000FF0000FF0000FF0000FF0000FF000000
                  0000000000FF0000FF0000000000000000FF0000000000000000FF8000000000
                  FFC0C0C00000FF0000FF0000FF0000FF0000FFC0C0C00000FFC0C0C0C0C0C000
                  00FF0000FF0000FF0000FF0000FF0000FFC0C0C0C0C0C00000FF0000FFC0C0C0
                  C0C0C00000FFC0C0C0C0C0C00000FFC0C0C00000FFF4DFD0FCF5F0FFFFFFFFFF
                  FFFFFFFFFFFFFF8000000000FF0000000000000000000000000000000000FF00
                  00FF0000FF0000000000000000FF0000FF0000000000000000FF000000000000
                  0000FF8000000000FFC0C0C00000FF0000FF0000FF0000FF0000FFC0C0C00000
                  FFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000FF0000FF0000FFC0C0C0C0C0C000
                  00FF0000FFC0C0C0C0C0C00000FFC0C0C0C0C0C00000FFC0C0C00000FFF6E2D1
                  FCF5F1FEFEFEFEFEFEFFFFFFFFFFFF8000000000FF0000000000000000FF0000
                  FF0000FF0000FF0000FF0000FF0000000000000000FF0000FF00000000000000
                  00FF0000000000000000FF8000000000FFC0C0C00000FF0000FF0000FF0000FF
                  0000FFC0C0C00000FFC0C0C0C0C0C00000FF0000FF0000FF0000FF0000FF0000
                  FFC0C0C0C0C0C00000FF0000FFC0C0C0C0C0C00000FFC0C0C0C0C0C00000FFC0
                  C0C00000FFF7E4D1FCF4ECFEFEFEFEFEFEFFFFFFFFFFFE8000000000FF000000
                  0000000000FF0000FF0000FF0000FF0000000000000000000000000000FF0000
                  FF0000000000000000FF0000000000000000FF8000000000FFC0C0C00000FF00
                  00FF0000FF0000FF0000FFC0C0C00000FFC0C0C0C0C0C00000FF0000FF0000FF
                  0000FFC0C0C0C0C0C0C0C0C0C0C0C00000FF0000FFC0C0C0C0C0C00000FFC0C0
                  C0C0C0C00000FFC0C0C00000FF0000FFF5D8BDF5DCC5F5DBC4F4D9C4F2D8C280
                  00000000FF0000000000000000FF0000FF0000FF0000FF0000FF000000000000
                  0000000000FF0000FF0000000000000000FF0000000000000000FF8000000000
                  FF0000FFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000FFC0C0C0C0C0C000
                  00FF0000FF0000FF0000FF0000FFC0C0C0C0C0C0C0C0C00000FF0000FFC0C0C0
                  C0C0C00000FFC0C0C0C0C0C00000FFC0C0C00000FF0000FF0000FF0000FF0000
                  FF0000FF0000FF8000000000FF0000000000000000000000000000000000FF00
                  00FF0000FF0000000000000000FF0000FF0000FF000000000000000000000000
                  0000FF8000000000FF0000FF0000FF0000FF0000FF0000FF0000FFC0C0C00000
                  FFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000FF0000FF0000FFC0C0C0C0C0C000
                  00FF0000FF0000FFC0C0C0C0C0C0C0C0C0C0C0C00000FFC0C0C00000FF0000FF
                  0000FF0000FF0000FF0000FF0000FF8000000000FF0000FF0000FF0000FF0000
                  FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
                  00FF0000FF0000FF0000FF8000000000FF0000FF0000FF0000FF0000FF0000FF
                  0000FFC0C0C00000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
                  FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FFC0
                  C0C00000FF0000FF0000FF0000FF0000FF0000FF0000FF800000800000800000
                  8000008000008000008000008000008000008000008000008000008000008000
                  008000008000008000008000008000008000008000000000FF0000FF0000FF00
                  00FF0000FF0000FF0000FFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0}
                NumGlyphs = 2
                ParentShowHint = False
                ShowHint = False
                Spacing = 3
                TabOrder = 34
                OnClick = buF10ExtClick
              end
              object buF9Ext: TBitBtn
                Left = 92
                Top = 3
                Width = 42
                Height = 45
                Cursor = crHandPoint
                Hint = 'Guardar'
                Caption = 'Guardar'
                Glyph.Data = {
                  6E0E0000424D6E0E00000000000036000000280000002E0000001A0000000100
                  180000000000380E0000000000000000000000000000000000000000FF0000FF
                  7342367342367342367342367341367341367341367341367341367341367341
                  367341367341367341367341367341367341360000FF0000FF0000FF0000FF00
                  00FF0000FFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000FF0000FF0000
                  FF0000FF00000000FF966F65B78F7EB78F7EDCB8B0DCB8B0DAB6AED8B3AAD6B1
                  A7D4ADA3D2AAA0CFA79BCEA398CCA195CBA093CA9E92C89D90985F4E985F4E73
                  41360000FF0000FF0000FF0000FFC0C0C00000FF0000FF0000FF0000FF0000FF
                  0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
                  FF0000FFC0C0C00000FF0000FF0000FF00000000FF966F65BA9381BA9381F8F3
                  F1E3DBD2E0D6CDDCCEC3D9C7BCD6C2B5D5BEB0D1B9A9CFB4A4CDB0A0CBAD9DCA
                  AB9BDBBCAE996250996250703C310000FF0000FF0000FF0000FFC0C0C00000FF
                  0000FFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C00000FF0000FFC0C0C00000FF0000FF0000FF00000000
                  FF966F65BB9483BB9483F9F4F2F9F4F2F7F2EFF5EEEBF3EBE6EDE0D9E2CCC0DF
                  C8BBDDC3B6DABEB0D9BBACD7BAAADDBEAF996250996250703C310000FF0000FF
                  0000FF0000FFC0C0C00000FF0000FFC0C0C00000FF0000FF0000FF0000FF0000
                  FF0000FF0000FF0000FF0000FF0000FF0000FFC0C0C00000FF0000FFC0C0C000
                  00FF0000FF0000FF00000000FF976F65BD9886BD9886FAF6F4E3DCD5E2D9D2E0
                  D7CFDED4CBDCCFC6DACEC4D6C2B6D2B9ABD0B6A6CFB2A2CCAF9FDFC1B3996250
                  996250703C310000FF0000FF0000FF0000FFC0C0C00000FF0000FFC0C0C00000
                  FFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000FFC0
                  C0C00000FF0000FFC0C0C00000FF0000FF0000FF00000000FF976F65C19C8BC1
                  9C8BFAF7F5FAF7F5F9F4F2F7F2EFF5EEEBF3EBE6F1E7E2EFE4DEE9D9CFDFC7BA
                  DDC3B6DBBFB1E1C5B8996250996250703C310000FF0000FF0000FF0000FFC0C0
                  C00000FF0000FFC0C0C00000FF0000FF0000FF0000FF0000FF0000FF0000FF00
                  00FF0000FF0000FF0000FFC0C0C00000FF0000FFC0C0C00000FF0000FF0000FF
                  00000000FF977065C29F8FC29F8FFAF7F6E5DFD9E4DDD6E4DCD4E1D9D1E0D6CD
                  DED3CADCCFC6DACDC3D6C1B5D2B9ABD2B8A8E4CABF996451996250703C310000
                  FF0000FF0000FF0000FFC0C0C00000FF0000FFC0C0C00000FFC0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000FFC0C0C00000FF0000FF
                  C0C0C00000FF0000FF0000FF00000000FF977065C4A292C4A292FBF8F7FBF8F7
                  FAF7F5F9F4F2F7F2EFF5F0EDF4EDE9F3EBE6F1E7E2EFE4DEE2CBBFE1C9BDE7D0
                  C49A6452996452703C310000FF0000FF0000FF0000FFC0C0C00000FF0000FFC0
                  C0C00000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
                  0000FFC0C0C00000FF0000FFC0C0C00000FF0000FF0000FF00000000FF977166
                  C7A797C7A696FBF9F8FBF9F8FBF8F7FAF7F5F9F4F2F7F2EFF5F0EDF4EDE9F3EB
                  E6F1E9E4EDDBD3EBD7CDEAD6CC9D66559B6553703C310000FF0000FF0000FF00
                  00FFC0C0C00000FF0000FFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000FF0000FFC0C0C00000FF0000
                  FF0000FF00000000FF987166C9AA9ACBAC9DC9A999C7A797C4A293C3A190C19D
                  8EBE9988BD9886BA9482B8917FB68E7DB48976B0826FAE7F6D9F69579D675670
                  3C310000FF0000FF0000FF0000FFC0C0C00000FF0000FF0000FF0000FF0000FF
                  0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
                  FF0000FFC0C0C00000FF0000FF0000FF00000000FF987167CCAEA0CCAE9FCAAB
                  9BC7A898C5A495C3A191C19E8FBF9A89BD9887BB9583B89180B68F7DB38977A2
                  6D5BA16B599F6A589E6856703C310000FF0000FF0000FF0000FFC0C0C00000FF
                  0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
                  FF0000FF0000FF0000FF0000FF0000FFC0C0C00000FF0000FF0000FF00000000
                  FF987267CFB2A5CFB1A4CCAE9FCAAB9CC9A99AC5A594C4A292C19E8EBF9A8ABC
                  9786BB9583B89180B78F7DA4705DA26E5AA06A599F6958703C310000FF0000FF
                  0000FF0000FFC0C0C00000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
                  FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FFC0C0C000
                  00FF0000FF0000FF00000000FF987268D1B5A7D1B5A7CEB1A3CCAEA0CBAB9CC9
                  A999C5A594C4A292C19E8EBF9A89BD9786BB9583B99281B38775A4705DA26D5A
                  A06A59703C310000FF0000FF0000FF0000FFC0C0C00000FF0000FF0000FF0000
                  FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
                  00FF0000FF0000FFC0C0C00000FF0000FF0000FF00000000FF997369D4BAADD4
                  B9ACFDF9F9FDFAFAFDFBFBFEFCFC800000800000800000800000800000800000
                  8000008000008000008000008000008000008000008000008000000000FFC0C0
                  C00000FF0000FFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  00000000FF99746AD7BEB1D6BDB0FEFDFDA26E5ADBC5B8DBC4B78000000000FF
                  0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
                  FF0000FF8000000000FFC0C0C00000FF0000FFC0C0C0C0C0C00000FF0000FFC0
                  C0C00000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
                  0000FF0000FF0000FFC0C0C000000000FF9A746BD8C1B5D8C0B4FEFDFDA26E5A
                  DEC5B9DAC3B58000000000FF0000000000000000FF0000FF0000FF0000FF0000
                  000000000000000000FF0000FF0000FF8000000000FFC0C0C00000FF0000FFC0
                  C0C0C0C0C00000FF0000FFC0C0C00000FFC0C0C0C0C0C00000FF0000FF0000FF
                  0000FFC0C0C0C0C0C0C0C0C00000FF0000FF0000FFC0C0C000000000FF9A756B
                  DBC4B9DAC3B8FEFDFDA26E5AA26E5AA26E5A8000000000FF0000000000000000
                  FF0000FF0000FF0000FF0000FF0000FF0000000000000000FF0000FF80000000
                  00FFC0C0C00000FF0000FFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000FFC0C0C0
                  C0C0C00000FF0000FF0000FF0000FF0000FF0000FFC0C0C0C0C0C00000FF0000
                  FFC0C0C000000000FF9A756CDCC6BBDBC5B9FEFDFDF7ECE9F8EFECF9F2F08000
                  000000FF0000000000000000FF0000FF0000FF0000FF0000FF0000FF0000FF00
                  00000000000000FF8000000000FFC0C0C00000FF0000FFC0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C00000FFC0C0C0C0C0C00000FF0000FF0000FF0000FF0000FF0000
                  FF0000FFC0C0C0C0C0C00000FFC0C0C000000000FF0000FF9A756C9A756B9A75
                  6B99746A9873699872688000000000FF0000000000000000FF0000FF0000FF00
                  00FF0000FF0000000000000000000000000000FF8000000000FF0000FFC0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000FFC0C0C0C0C0C00000FF0000
                  FF0000FF0000FF0000FFC0C0C0C0C0C0C0C0C0C0C0C00000FFC0C0C000000000
                  FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF8000000000FF00000000
                  00000000000000000000000000FF0000000000000000FF0000000000000000FF
                  8000000000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FFC0C0C00000
                  FFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000FFC0C0C0C0C0C00000FFC0C0C0C0
                  C0C00000FFC0C0C000000000FF0000FF0000FF0000FF0000FF0000FF0000FF00
                  00FF8000000000FF0000000000000000FF0000FF0000FF0000FF000000000000
                  0000FF0000000000000000FF8000000000FF0000FF0000FF0000FF0000FF0000
                  FF0000FF0000FFC0C0C00000FFC0C0C0C0C0C00000FF0000FF0000FF0000FFC0
                  C0C0C0C0C00000FFC0C0C0C0C0C00000FFC0C0C000000000FF0000FF0000FF00
                  00FF0000FF0000FF0000FF0000FF8000000000FF0000000000000000FF0000FF
                  0000FF0000FF0000000000000000FF0000000000000000FF8000000000FF0000
                  FF0000FF0000FF0000FF0000FF0000FF0000FFC0C0C00000FFC0C0C0C0C0C000
                  00FF0000FF0000FF0000FFC0C0C0C0C0C00000FFC0C0C0C0C0C00000FFC0C0C0
                  00000000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF8000000000FF
                  0000000000000000FF0000FF0000FF0000FF0000000000000000FF0000000000
                  000000FF8000000000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FFC0
                  C0C00000FFC0C0C0C0C0C00000FF0000FF0000FF0000FFC0C0C0C0C0C00000FF
                  C0C0C0C0C0C00000FFC0C0C000000000FF0000FF0000FF0000FF0000FF0000FF
                  0000FF0000FF8000000000FF0000000000000000000000000000000000FF0000
                  FF0000000000000000000000FF0000FF8000000000FF0000FF0000FF0000FF00
                  00FF0000FF0000FF0000FFC0C0C00000FFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  0000FF0000FFC0C0C0C0C0C0C0C0C00000FF0000FFC0C0C000000000FF0000FF
                  0000FF0000FF0000FF0000FF0000FF0000FF8000000000FF0000FF0000FF0000
                  FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF80000000
                  00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FFC0C0C00000FF0000FF
                  0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
                  FFC0C0C000000000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF8000
                  0080000080000080000080000080000080000080000080000080000080000080
                  00008000008000008000000000FF0000FF0000FF0000FF0000FF0000FF0000FF
                  0000FFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000}
                NumGlyphs = 2
                ParentShowHint = False
                ShowHint = False
                Spacing = 3
                TabOrder = 33
                OnClick = buF9ExtClick
              end
              object buF8Ext: TBitBtn
                Left = 48
                Top = 3
                Width = 42
                Height = 45
                Cursor = crHandPoint
                Hint = 'Modificar'
                Caption = 'Modific.'
                Glyph.Data = {
                  16120000424D161200000000000036000000280000003A0000001A0000000100
                  180000000000E0110000000000000000000000000000000000000000FF0000FF
                  0000FF0000FF0000FF0000FF0000FF0000FFD9BAB6DCBDB4E9CEC0EACCBEEACC
                  BCEACABAEAC9B8E9C8B6EAC7B3EAC5B2EAC4B0E9C3ADEAC2ABEAC0A9EABFA7EA
                  BEA5E3B098CFA7A00000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
                  0000FF0000FF0000FFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000
                  00FF0000FF0000FF00000000FF0000FF0000FF0000FF0000FF0000FF0000FF00
                  00FFD1ABA5F9F1E9FEF3E3FEF3E1FEF2DFFEF1DEFDF0DAFCEAD2FCE9D0FCE8CD
                  FBE7CBFCE7CAFEECD0FEEBCEFEEACCFEEACAFDE3C3D3A59A0000FF0000FF0000
                  FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FFC0C0C00000FF00
                  00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
                  0000FF0000FF0000FF0000FFC0C0C00000FF0000FF0000FF00000000FF0000FF
                  0000FF0000FF0000FF0000FF0000FF0000FFD0AAA5F9F2EAFEF5E6FEF4E4FEF3
                  E2FEF2E0FDEEDAF9E1C8F9E0C4F9DEC1F8DCBEF9DEC0FEEDD2FEEDD1FEECCFFE
                  EBCDFEE5C6D2A69B0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
                  0000FF0000FF0000FFC0C0C00000FF0000FF0000FF0000FF0000FF0000FFC0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C00000FF0000FF0000FF0000FF0000FFC0C0C000
                  00FF0000FF0000FF00000000FF0000FF0000FF0000FF0000FF0000FF0000FF00
                  00FFD0ABA5FAF2EBFEF6E9FDF2E3FDF1DFFDEFDDFDEEDBFDEDD9FDECD6FCEBD4
                  FCEAD1FCE9CFFCE8CDFDE7CAFCE6C8FEE9CCFEE6CBD3A79C0000FF0000FF0000
                  FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FFC0C0C00000FF00
                  00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
                  0000FF0000FF0000FF0000FFC0C0C00000FF0000FF0000FF00000000FF0000FF
                  0000FF0000FF0000FF0000FF0000FF0000FFD0ABA5FAF3EDFEF7ECFCEBDAFAE7
                  D2FAE3CBF9DDC1F9D8B8F9D2AFF6CEA9B7987EC5B09BF8D8B6F7D5B2F7D4AFFA
                  E2C3FEE8CED2A79D0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
                  0000FF0000FF0000FFC0C0C00000FF0000FFC0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000FF0000FFC0C0C000
                  00FF0000FF0000FF00000000FF0000FF0000FF0000FF0000FF0000FF0000FF00
                  00FFD0AAA5F9F3EEFEF8EEFDF1E2FDE7D0FDDDBDFDD8B5FCD5B2E7D1C1A6B6DB
                  98A7C3F8E7D0FCEAD1FCE9CFFCE8CCFDEBD1FEEAD1D2A89E0000FF0000FF0000
                  FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FFC0C0C00000FF00
                  00FF0000FF0000FF0000FF0000FF0000FF0000FFC0C0C0C0C0C00000FF0000FF
                  0000FF0000FF0000FF0000FFC0C0C00000FF0000FF0000FF00000000FF0000FF
                  0000FF0000FF0000FF0000FF0000FF0000FFD0ABA4F9EEE6FEECDAFBDABEFAD4
                  B3FAD1AFECCAADB4B9CE7EA5E29BBAE8DEDADAF7DABCF7D9B8F7D7B5F6D5B1FB
                  E4C8FEECD5D3A89F0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
                  0000FF0000FF0000FFC0C0C00000FF0000FFC0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000FF0000FFC0C0C000
                  00FF0000FF0000FF00000000FF0000FF0000FF0000FF0000FF0000FF0000FF00
                  00FFD3ABA1F9E6D7FDEAD8FDE4CEFCE1C8E0D4C6469AD983ACE4B4CAECD2E0F2
                  F9EBDAFCECD7FCEBD5FCEAD3FCE9D0FDEDD6FEEDD8D2A9A10000FF0000FF0000
                  FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FFC0C0C00000FF00
                  00FF0000FF0000FF0000FFC0C0C00000FF0000FFC0C0C00000FF0000FF0000FF
                  0000FF0000FF0000FF0000FFC0C0C00000FF0000FF0000FF00000000FF0000FF
                  0000FF0000FF0000FF0000FF0000FF0000FFD6AEA4FAE9DCFDEDDDFCE0C7E3CF
                  BE308DD1029EF459C5FAD2EAFCE3DFDAF8DEC3F8DCBFF8DABDF7D8B9F7D7B5FB
                  E6CCFEEEDBD2AAA20000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
                  0000FF0000FF0000FFC0C0C00000FF0000FFC0C0C0C0C0C0C0C0C00000FF0000
                  FFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000FF0000FFC0C0C000
                  00FF0000FF0000FF00000000FF0000FF0000FF0000FF0000FF0000FF0000FF00
                  00FFD9B2A7FAEDE2FEF5EBE3E8EA3496DE019EF50DB8FE24D2FD8AD1E9FAF0E3
                  FDF0E1FDEFDEFDEEDCFCEED9FDEDD8FDF0DCFEF0DED3ABA30000FF0000FF0000
                  FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FFC0C0C00000FF00
                  00FF0000FFC0C0C00000FF0000FF0000FFC0C0C00000FF0000FF0000FF0000FF
                  0000FF0000FF0000FF0000FFC0C0C00000FF0000FF0000FF00000000FF0000FF
                  0000FF0000FF0000FF0000FF0000FF0000FFDBB8ACFBF6F4E3EEF73595DD019D
                  F40CB6FE29D3FC83D2EAF7E3CFFAE2CBF9E1C8F8DFC5F8DDC1F8DCBEF8DABBFB
                  E9D2FEF2E1D3ACA30000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
                  0000FF0000FF0000FFC0C0C00000FF0000FFC0C0C00000FF0000FF0000FFC0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000FF0000FFC0C0C000
                  00FF0000FF0000FF00000000FF0000FF0000FF0000FF0000FF0000FF0000FF00
                  00FFDDBCB0E6EBF13494DF009CF40AB4FE2AD4FC84D5EFF8F4ECFDF5EAFDF4E8
                  FDF3E6FDF1E4FDF1E1FCF0DFFCEFDDFEF2E2FEF3E4D3ACA50000FF0000FF0000
                  FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FFC0C0C00000FFC0
                  C0C00000FF0000FF0000FFC0C0C00000FF0000FF0000FF0000FF0000FF0000FF
                  0000FF0000FF0000FF0000FFC0C0C00000FF0000FF0000FF00000000FF0000FF
                  0000FF0000FF0000FF0000FF0000FF0000FFCAB6B3348FD8009DF50AB4FE2DD7
                  FD86D4ECF5E4D3F9E4CEF8E1CAF8DFC7F8DDC3F7DCC0F7DABCF7D8B9F7D6B5FA
                  E7D0FDF2E1D2ACA40000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
                  0000FF0000FF0000FFC0C0C0C0C0C00000FF0000FF0000FFC0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000FF0000FFC0C0C000
                  00FF0000FF0000FF00000000FF0000FF0000FF0000FF0000FF0000FF0000FF00
                  00FF358FD7009CF409B3FE2FD5FC86D9F3FAF8F4800000800000800000800000
                  8000008000008000008000008000008000008000008000008000008000008000
                  000000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FFC0C0C00000FF00
                  00FF0000FFC0C0C00000FFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000000000FF0000FF
                  0000FF0000FF0000FF0000FF0000FF3691DD019CF408B1FE31D7FD86D9F0F6E8
                  DAF9E8D68000000000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
                  00FF0000FF0000FF0000FF0000FF8000000000FF0000FF0000FF0000FF0000FF
                  0000FF0000FFC0C0C00000FF0000FF0000FFC0C0C0C0C0C0C0C0C0C0C0C00000
                  FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
                  00FF0000FFC0C0C000000000FF0000FF0000FF0000FF0000FF0000FF3891DC00
                  9DF408B0FE31D7FE8FE3FCFAF8F6FDF8F3FDF7F28000000000FF000000000000
                  0000FF0000FF0000FF0000FF0000FF0000000000000000000000FF0000FF8000
                  000000FF0000FF0000FF0000FF0000FF0000FFC0C0C00000FF0000FF0000FFC0
                  C0C00000FF0000FF0000FFC0C0C00000FFC0C0C0C0C0C00000FF0000FF0000FF
                  0000FF0000FFC0C0C0C0C0C0C0C0C00000FF0000FFC0C0C000000000FF0000FF
                  0000FF0000FF0000FF3B92DD009CF309B0FE34D6FD8BE3FBFBFDFEFCF1E6FBEB
                  DCFBE9DA8000000000FF0000000000000000FF0000FF0000FF0000FF00000000
                  00000000FF0000000000000000FF8000000000FF0000FF0000FF0000FF0000FF
                  C0C0C00000FF0000FF0000FFC0C0C00000FFC0C0C0C0C0C0C0C0C0C0C0C00000
                  FFC0C0C0C0C0C00000FF0000FF0000FF0000FFC0C0C0C0C0C00000FFC0C0C0C0
                  C0C00000FFC0C0C000000000FF0000FF0000FF0000FF398FDA009BF308ADFE38
                  D9FE84CBD7F7F8F8FEFEFEFEFCF9FDFBF8FEFAF78000000000FF000000000000
                  0000FF0000FF0000FF0000FF0000000000000000FF0000000000000000FF8000
                  000000FF0000FF0000FF0000FFC0C0C00000FF0000FF0000FFC0C0C00000FF00
                  00FF0000FF0000FF0000FFC0C0C00000FFC0C0C0C0C0C00000FF0000FF0000FF
                  0000FFC0C0C0C0C0C00000FFC0C0C0C0C0C00000FFC0C0C000000000FF0000FF
                  DEDEDE3B3C3C0A82C509AEFE3AD7FD94E8FDECD2BEFCFAF7FEFEFEFBEEE2FAE8
                  D7F9E7D48000000000FF0000000000000000FF0000FF0000FF0000FF00000000
                  00000000FF0000000000000000FF8000000000FF0000FF0000FFC0C0C00000FF
                  0000FF0000FFC0C0C0C0C0C00000FF0000FFC0C0C0C0C0C0C0C0C0C0C0C00000
                  FFC0C0C0C0C0C00000FF0000FF0000FF0000FFC0C0C0C0C0C00000FFC0C0C0C0
                  C0C00000FFC0C0C000000000FF0000FF48537F5353537A929D5FC8E492E7FB00
                  00FFF2D7C1FCFAF8FEFEFEFEFEFEFAE8D7F9E7D48000000000FF000000000000
                  0000000000000000000000FF0000FF0000000000000000000000FF0000FF8000
                  000000FF0000FFC0C0C0C0C0C00000FF0000FFC0C0C00000FFC0C0C00000FF00
                  00FF0000FF0000FF0000FFC0C0C00000FFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  0000FF0000FFC0C0C0C0C0C0C0C0C00000FF0000FFC0C0C000000000FF6688F2
                  1460DE969CA6E2E2E3E3E3E40000FF0000FFF6DBC4FCF8F4FDFEFEFEFEFEFEFE
                  FEFEFEFE8000000000FF0000000000000000FF0000FF0000FF0000FF00000000
                  00000000FF0000000000000000FF8000000000FFC0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C00000FF0000FFC0C0C00000FF0000FF0000FF0000FF0000FFC0C0C00000
                  FFC0C0C0C0C0C00000FF0000FF0000FF0000FFC0C0C0C0C0C00000FFC0C0C0C0
                  C0C00000FFC0C0C000000000FF8DA7F95996FDB5CDF8C9CFED0000FF0000FF00
                  00FF0000FFF6DABFF5DBC2F4D9C2F3D8C1F2D6C08000000000FF000000000000
                  0000FF0000FF0000FF0000FF0000000000000000FF0000000000000000FF8000
                  000000FFC0C0C0C0C0C0C0C0C0C0C0C00000FF0000FF0000FF0000FFC0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C00000FFC0C0C0C0C0C00000FF0000FF0000FF
                  0000FFC0C0C0C0C0C00000FFC0C0C0C0C0C00000FFC0C0C000000000FF0000FF
                  BBCBFDC4CFFE0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
                  FF0000FF8000000000FF0000000000000000FF0000FF0000FF0000FF00000000
                  00000000FF0000000000000000FF8000000000FF0000FFC0C0C0C0C0C00000FF
                  0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FFC0C0C00000
                  FFC0C0C0C0C0C00000FF0000FF0000FF0000FFC0C0C0C0C0C00000FFC0C0C0C0
                  C0C00000FFC0C0C000000000FF0000FF0000FF0000FF0000FF0000FF0000FF00
                  00FF0000FF0000FF0000FF0000FF0000FF0000FF8000000000FF000000000000
                  0000000000000000000000FF0000FF0000000000000000000000FF0000FF8000
                  000000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
                  00FF0000FF0000FF0000FFC0C0C00000FFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  0000FF0000FFC0C0C0C0C0C0C0C0C00000FF0000FFC0C0C000000000FF0000FF
                  0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
                  FF0000FF8000000000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
                  00FF0000FF0000FF0000FF0000FF8000000000FF0000FF0000FF0000FF0000FF
                  0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FFC0C0C00000
                  FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
                  00FF0000FFC0C0C000000000FF0000FF0000FF0000FF0000FF0000FF0000FF00
                  00FF0000FF0000FF0000FF0000FF0000FF0000FF800000800000800000800000
                  8000008000008000008000008000008000008000008000008000008000008000
                  000000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
                  00FF0000FF0000FF0000FFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000}
                NumGlyphs = 2
                ParentShowHint = False
                ShowHint = False
                Spacing = 3
                TabOrder = 32
                OnClick = buF8ExtClick
              end
              object buF7Ext: TBitBtn
                Left = 4
                Top = 3
                Width = 42
                Height = 45
                Cursor = crHandPoint
                Hint = 'Nuevo'
                Caption = 'Nuevo'
                Glyph.Data = {
                  9E0D0000424D9E0D00000000000036000000280000002C0000001A0000000100
                  180000000000680D0000000000000000000000000000000000000000FF0000FF
                  CAA098D1A89FD2A79ED1A79DD1A69CD1A69BD1A59AD1A499D1A498D1A397D1A3
                  96D1A295D2A294D1A193D2A092CE9B8E0000FF0000FF0000FF0000FF0000FF00
                  00FFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000FF0000FF0000FF0000FF0000
                  FFDBBFBAF1E2DAFEF2E2FDF1E0FEF0DEFFEFDCFEEED9FEEDD7FEECD4FEEBD3FF
                  EAD0FEE9CEFEE8CCFEE7CAFEE5C7FEE4C5FEDDBECE9B8D0000FF0000FF0000FF
                  0000FFC0C0C00000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
                  FF0000FF0000FF0000FF0000FF0000FF0000FF0000FFC0C0C00000FF0000FF00
                  00FF0000FFDCC1BDF4E9E2FEF4E5FEF4E2FEF3E1FEF2DFFEF1DEFEF1DBFEF0D9
                  FEEFD8FEEED5FEEED3FEEDD2FEECD0FEEBCEFEEACCFEE8C8D2A2930000FF0000
                  FF0000FF0000FFC0C0C00000FF0000FF0000FF0000FF0000FF0000FF0000FF00
                  00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FFC0C0C00000FF
                  0000FF0000FF0000FFDCC1BDF4E9E3FEF5E8FEF5E6FEF4E3FEF3E2FEF2E0FEF1
                  DEFEF1DCFEF0DAFEEFD8FEEED6FEEED4FEEDD2FEECD1FFECCFFEE9CBD2A39400
                  00FF0000FF0000FF0000FFC0C0C00000FF0000FF0000FF0000FF0000FF0000FF
                  0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FFC0C0
                  C00000FF0000FF0000FF0000FFDCC1BDF4EAE4FFF6EBFEF6E9FEF5E7FEF4E5FE
                  F3E2FEF3E1FEF2DFFEF1DDFEF0DBFEF0D9FEEFD8FEEFD5FEEDD3FEEDD1FEEACE
                  D2A3970000FF0000FF0000FF0000FFC0C0C00000FF0000FF0000FF0000FF0000
                  FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
                  00FFC0C0C00000FF0000FF0000FF0000FFDCC1BDF3EAE5FEF8EEFEF6EBFEF6E9
                  FEF5E7FEF5E5FEF4E3FEF3E1FEF2E0FEF1DEFEF1DCFEF0DAFEEFD8FEEFD6FEEE
                  D4FEEBD1D2A4980000FF0000FF0000FF0000FFC0C0C00000FF0000FF0000FF00
                  00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
                  0000FF0000FFC0C0C00000FF0000FF0000FF0000FFDCC1BDF4EAE6FEF9F0FEF8
                  EEFEF8ECFEF7EAFEF6E8FEF5E7FEF4E4FEF4E2FEF3E1FEF2DFFEF1DDFEF0DAFE
                  EFD9FEEFD7FEEDD3D2A5990000FF0000FF0000FF0000FFC0C0C00000FF0000FF
                  0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
                  FF0000FF0000FF0000FFC0C0C00000FF0000FF0000FF0000FFDDC3BEF4EBE7FE
                  FAF3FEF9F1FEF8EFFEF8EDFEF7EBFEF6E9FEF5E7FEF5E5FEF4E3FEF3E1FEF2E0
                  FEF1DEFEF1DCFEF0DAFEEED7D3A69B0000FF0000FF0000FF0000FFC0C0C00000
                  FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
                  00FF0000FF0000FF0000FF0000FFC0C0C00000FF0000FF0000FF0000FFDFC5BF
                  F5ECE8FEFBF6FEFAF3FEF9F1FEF8F0FEF8EEFEF7ECFEF6EAFEF6E8FEF5E6FEF4
                  E4FEF3E2FEF2E0FEF1DEFEF1DCFEEFDAD2A79C0000FF0000FF0000FF0000FFC0
                  C0C00000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
                  0000FF0000FF0000FF0000FF0000FF0000FFC0C0C00000FF0000FF0000FF0000
                  FFE1C7C1F5EDE9FEFCF8FEFBF6FEFAF5FEF9F2FEF9F0FEF8EFFEF8EDFFF7EBFE
                  F6E9FEF5E7FEF5E5FEF4E3FEF3E1FEF2E0FEF1DDD2A89D0000FF0000FF0000FF
                  0000FFC0C0C00000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
                  FF0000FF0000FF0000FF0000FF0000FF0000FF0000FFC0C0C00000FF0000FF00
                  00FF0000FFE3CAC2F6EEEBFEFDFBFEFCFAFEFBF7FEFBF5FEFAF3FEF9F1FEF9F0
                  FEF8EEFEF7EBFEF6E9FEF5E8FEF5E6FEF4E4FEF3E2FEF2E0D2A99F0000FF0000
                  FF0000FF0000FFC0C0C00000FF0000FF0000FF0000FF0000FF0000FF0000FF00
                  00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FFC0C0C00000FF
                  0000FF0000FF0000FFE5CCC3F6EFECFEFEFEFEFEFCFEFDFAFFFCF8FEFBF6FEFA
                  F4FEF9F2FEF9F0FEF8EEFEF7EDFEF7EAFEF6E9FEF5E7FEF4E5FFF3E2D2AAA000
                  00FF0000FF0000FF0000FFC0C0C00000FF0000FF0000FF0000FF0000FF0000FF
                  0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FFC0C0
                  C00000FF0000FF0000FF0000FFE7CEC5F7F0EDFFFFFFFEFEFEFEFEFDFEFDFBFE
                  FCF9FEFCF7FEFBF5FEFAF3FEF9F1FEF8EFFEF8EEFEF7EBFEF6E9FEF5E7FEF4E4
                  D2AAA10000FF0000FF0000FF0000FFC0C0C00000FF0000FF0000FF0000FF0000
                  FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
                  00FFC0C0C00000FF0000FF0000FF0000FFE9D1C7F8F1EEFFFFFFFFFFFFFEFEFE
                  FEFEFE8000008000008000008000008000008000008000008000008000008000
                  008000008000008000008000008000000000FFC0C0C00000FF0000FF0000FF00
                  00FF0000FFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000FFEBD3C8F8F1EEFFFFFFFFFE
                  FFFFFFFFFFFFFF8000000000FF0000FF0000FF0000FF0000FF0000FF0000FF00
                  00FF0000FF0000FF0000FF0000FF0000FF8000000000FFC0C0C00000FF0000FF
                  0000FF0000FF0000FFC0C0C00000FF0000FF0000FF0000FF0000FF0000FF0000
                  FF0000FF0000FF0000FF0000FF0000FF0000FFC0C0C00000FFECD6CAF9F2EEFF
                  FFFFFFFEFFFFFFFFFFFFFF8000000000FF0000000000000000FF0000FF0000FF
                  0000FF0000FF0000000000000000FF0000FF0000FF8000000000FFC0C0C00000
                  FF0000FF0000FF0000FF0000FFC0C0C00000FFC0C0C0C0C0C00000FF0000FF00
                  00FF0000FF0000FFC0C0C0C0C0C00000FF0000FF0000FFC0C0C00000FFEFD8CB
                  F9F3EFFFFFFFFFFFFFFFFFFFFFFFFF8000000000FF0000000000000000FF0000
                  FF0000FF0000FF0000FF0000000000000000FF0000FF0000FF8000000000FFC0
                  C0C00000FF0000FF0000FF0000FF0000FFC0C0C00000FFC0C0C0C0C0C00000FF
                  0000FF0000FF0000FF0000FFC0C0C0C0C0C00000FF0000FF0000FFC0C0C00000
                  FFF0DBCCFAF4EFFFFFFFFFFFFFFFFFFFFFFFFF8000000000FF00000000000000
                  00FF0000FF0000FF0000FF0000FF0000000000000000FF0000FF0000FF800000
                  0000FFC0C0C00000FF0000FF0000FF0000FF0000FFC0C0C00000FFC0C0C0C0C0
                  C00000FF0000FF0000FF0000FF0000FFC0C0C0C0C0C00000FF0000FF0000FFC0
                  C0C00000FFF2DDCFFBF5F0FFFFFFFFFFFFFFFFFFFFFFFF8000000000FF000000
                  0000000000FF0000FF0000FF0000FF0000FF0000FF0000000000000000FF0000
                  FF8000000000FFC0C0C00000FF0000FF0000FF0000FF0000FFC0C0C00000FFC0
                  C0C0C0C0C00000FF0000FF0000FF0000FF0000FF0000FFC0C0C0C0C0C00000FF
                  0000FFC0C0C00000FFF4DFD0FCF5F0FFFFFFFFFFFFFFFFFFFFFFFF8000000000
                  FF0000000000000000000000000000000000FF0000FF0000FF00000000000000
                  00FF0000FF8000000000FFC0C0C00000FF0000FF0000FF0000FF0000FFC0C0C0
                  0000FFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000FF0000FF0000FFC0C0C0C0C0
                  C00000FF0000FFC0C0C00000FFF6E2D1FCF5F1FEFEFEFEFEFEFFFFFFFFFFFF80
                  00000000FF0000000000000000FF0000FF0000FF0000FF0000FF0000FF0000FF
                  0000000000000000FF8000000000FFC0C0C00000FF0000FF0000FF0000FF0000
                  FFC0C0C00000FFC0C0C0C0C0C00000FF0000FF0000FF0000FF0000FF0000FF00
                  00FFC0C0C0C0C0C00000FFC0C0C00000FFF7E4D1FCF4ECFEFEFEFEFEFEFFFFFF
                  FFFFFE8000000000FF0000000000000000FF0000FF0000FF0000FF0000FF0000
                  FF0000FF0000000000000000FF8000000000FFC0C0C00000FF0000FF0000FF00
                  00FF0000FFC0C0C00000FFC0C0C0C0C0C00000FF0000FF0000FF0000FF0000FF
                  0000FF0000FFC0C0C0C0C0C00000FFC0C0C00000FF0000FFF5D8BDF5DCC5F5DB
                  C4F4D9C4F2D8C28000000000FF0000000000000000FF0000FF0000FF0000FF00
                  00FF0000FF0000FF0000000000000000FF8000000000FF0000FFC0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C00000FFC0C0C0C0C0C00000FF0000FF0000FF0000
                  FF0000FF0000FF0000FFC0C0C0C0C0C00000FFC0C0C00000FF0000FF0000FF00
                  00FF0000FF0000FF0000FF8000000000FF000000000000000000000000000000
                  0000FF0000000000000000000000000000000000FF8000000000FF0000FF0000
                  FF0000FF0000FF0000FF0000FFC0C0C00000FFC0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C00000FFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000FFC0C0C00000FF0000FF
                  0000FF0000FF0000FF0000FF0000FF8000000000FF0000FF0000FF0000FF0000
                  FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF8000000000FF00
                  00FF0000FF0000FF0000FF0000FF0000FFC0C0C00000FF0000FF0000FF0000FF
                  0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FFC0C0C00000
                  FF0000FF0000FF0000FF0000FF0000FF0000FF80000080000080000080000080
                  0000800000800000800000800000800000800000800000800000800000800000
                  0000FF0000FF0000FF0000FF0000FF0000FF0000FFC0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0}
                NumGlyphs = 2
                ParentShowHint = False
                ShowHint = False
                Spacing = 0
                TabOrder = 31
                OnClick = buF7ExtClick
              end
              object paFotoExt: TPanel
                Left = 637
                Top = 54
                Width = 110
                Height = 110
                Caption = 'FALTA'
                ParentColor = True
                PopupMenu = pmFotoExt
                TabOrder = 29
              end
              object paFirmaExt: TPanel
                Left = 637
                Top = 167
                Width = 110
                Height = 50
                Caption = 'FALTA'
                ParentColor = True
                PopupMenu = pmFirmaExt
                TabOrder = 30
              end
              object deExtRemitente: TDBEdit
                Left = 8
                Top = 237
                Width = 253
                Height = 21
                Color = clBackground
                DataField = 'remitente_nombre'
                DataSource = dsClientes_Extensiones
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 25
              end
              object buCopiar: TBitBtn
                Left = 369
                Top = 12
                Width = 28
                Height = 26
                Cursor = crHandPoint
                Hint = 'Copiar'
                Glyph.Data = {
                  0E100000424D0E100000000000003600000028000000330000001A0000000100
                  180000000000D80F0000000000000000000000000000000000000000FF0000FF
                  0000FF0000FF0000FF0000FF0000FF0000FFFFFFC0FFFFC0FFFFC00000FF0000
                  FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
                  00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
                  C0C0C0C0C0C0C0C0C00000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
                  FF0000FF0000FF0000FF0000FF0000FF0000FF0000000000FF0000FF0000FF00
                  00FF0000FF0000FF007F7F7F0000007F7F007F7F007F7FFFFFC00000FF0000FF
                  0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FFFF00FF0000
                  FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FFC0C0C00000FF00
                  00FF0000FFC0C0C00000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
                  0000FF0000FF0000FFC0C0C00000FF0000000000FF0000FF0000FF0000FF0000
                  FF0000FF007F7F7F0000007F7F007F7F007F7FFFFFC00000FF0000FF0000FF00
                  00FF0000FF0000FF0000FF0000FF0000FF0000FFFF00FF0000FF0000FF0000FF
                  0000FF0000FF0000FF0000FF0000FF0000FF0000FFC0C0C00000FF0000FF0000
                  FFC0C0C00000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
                  00FFC0C0C00000FF0000FF0000000000FF0000FF0000FF0000FF0000FF0000FF
                  0000FF007F7F7F0000007F7F007F7FFFFFC00000FF0000FF0000FF0000FF0000
                  FF0000FF0000FF0000FF0000FFFF00FF0000FF0000FF0000FF0000FF0000FF00
                  00FF0000FF0000FF0000FF0000FF0000FF0000FFC0C0C00000FF0000FFC0C0C0
                  0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FFC0C0C00000
                  FF0000FF0000FF0000000000FF0000FF0000FFFFFFC0FFFFC00000FF0000FF00
                  7F7F7F0000007F7F007F7FFFFFC00000FF0000FF0000FF0000FF0000FF0000FF
                  0000FF0000FFFF00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
                  FFC0C0C0C0C0C00000FF0000FF0000FFC0C0C00000FF0000FFC0C0C00000FF00
                  00FF0000FF0000FF0000FF0000FF0000FF0000FFC0C0C00000FF0000FF0000FF
                  0000FF0000000000FF0000FF007F7F7F0000007F7FFFFFC00000FF007F7F7F00
                  00007F7F007F7FFFFFC0FFFFC0FFFFC0FFFFC0FFFFC00000FF0000FF0000FFFF
                  00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FFC0C0C0
                  0000FFC0C0C00000FF0000FFC0C0C00000FF0000FFC0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C00000FF0000FF0000FFC0C0C00000FF0000FF0000FF0000FF0000FF00
                  00000000FF0000FF7F00007F0000007F7F007F7FFFFFC07F0000007F7F007F7F
                  007F7F007F7F007F7F007F7F007F7F007F7FFFFFC00000FFFF00FF0000FF0000
                  FF0000FF0000FF0000FF0000FF0000FF0000FF0000FFC0C0C0C0C0C00000FF00
                  00FFC0C0C0C0C0C00000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
                  C0C0C00000FFC0C0C00000FF0000FF0000FF0000FF0000FF0000FF0000000000
                  FF0000FF007F7F007F7F7F0000007F7F007F7F007F7F007F7F007F7F007F7F00
                  7F7F007F7F007F7F007F7F007F7FFFFFC0FF00FF0000FF0000FF0000FF0000FF
                  0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FFC0C0C00000FF0000
                  FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FFC0C0C0C0
                  C0C00000FF0000FF0000FF0000FF0000FF0000FF0000FF0000000000FF0000FF
                  FFFFC00000FF007F7F7F0000007F7F007F7F007F7F007F7F007F7F007F7F7F00
                  007F0000007F7F007F7FFF00FFFFFFC0FFFFC00000FF0000FF0000FF0000FF00
                  00FF0000FF0000FF0000FF0000FFC0C0C00000FF0000FFC0C0C00000FF0000FF
                  0000FF0000FF0000FF0000FFC0C0C0C0C0C00000FF0000FFC0C0C0C0C0C0C0C0
                  C00000FF0000FF0000FF0000FF0000FF0000FF0000000000FF0000FF0000FFFF
                  FFC0FFFFC0FFFFC0007F7F007F7F007F7F007F7F007F7FFFFFC0FFFFC00000FF
                  7F0000007F7F007F7F007F7F007F7FFFFFC00000FF0000FF0000FF0000FF0000
                  FF0000FF0000FF0000FF0000FFC0C0C0C0C0C0C0C0C00000FF0000FF0000FF00
                  00FF0000FFC0C0C0C0C0C00000FFC0C0C0C0C0C00000FF0000FF0000FFC0C0C0
                  0000FF0000FF0000FF0000FF0000FF0000000000FF0000FFFFFFC0007F7F007F
                  7F007F7F007F7F007F7F007F7F007F7FFFFFC00000FF0000FF0000FF7F00007F
                  0000007F7F007F7F007F7FFFFFC00000FF0000FF0000FF0000FF0000FF0000FF
                  0000FF0000FFC0C0C00000FF0000FF0000FF0000FF0000FF0000FF0000FFC0C0
                  C00000FF0000FF0000FFC0C0C0C0C0C00000FF0000FF0000FFC0C0C00000FF00
                  00FF0000FF0000FF0000FF0000000000FF0000FF7F0000007F7F007F7F007F7F
                  007F7FFFFFC07F0000007F7F007F7FFFFFC00000FFFF00FF0000FF007F7F7F00
                  00007F7F007F7FFFFFC00000FF0000FF0000FF0000FF0000FF0000FF0000FF00
                  00FFC0C0C00000FF0000FF0000FF0000FFC0C0C0C0C0C00000FF0000FFC0C0C0
                  0000FFC0C0C00000FF0000FFC0C0C00000FF0000FFC0C0C00000FF0000FF0000
                  FF0000FF0000FF0000000000FF007F7F7F0000007F7F007F7F007F7F007F7FFF
                  FFC0007F7F7F0000007F7F007F7FFF00FF0000FF0000FF007F7F7F0000007F7F
                  007F7FFFFFC00000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FFC0C0
                  C00000FF0000FF0000FF0000FFC0C0C00000FFC0C0C00000FF0000FFC0C0C000
                  00FF0000FF0000FFC0C0C00000FF0000FFC0C0C00000FF0000FF0000FF0000FF
                  0000FF0000000000FF007F7F7F00007F0000007F7F007F7F007F7FFFFFC00000
                  FF007F7F7F00007F0000007F7FFFFFC00000FF007F7F7F0000007F7F007F7FFF
                  FFC0FFFFC0FFFFC0FFFFC0FFFFC00000FF0000FF0000FF0000FFC0C0C0C0C0C0
                  0000FF0000FF0000FFC0C0C00000FF0000FFC0C0C0C0C0C00000FFC0C0C00000
                  FF0000FFC0C0C00000FF0000FFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000FF00
                  00000000FF0000FF007F7F7F00007F00007F00000000FF0000FF0000FF007F7F
                  7F00007F0000007F7F007F7FFFFFC07F0000007F7F007F7F007F7F007F7F007F
                  7F007F7F007F7F007F7FFFFFC00000FF0000FF0000FF0000FFC0C0C0C0C0C0C0
                  C0C00000FF0000FF0000FF0000FFC0C0C0C0C0C00000FF0000FFC0C0C0C0C0C0
                  0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FFC0C0C00000000000
                  FF0000FF0000FF007F7F007F7F0000FF0000FF0000FF0000FFFF00FF007F7F00
                  7F7F7F0000007F7F007F7F007F7F007F7F007F7F007F7F007F7F007F7F007F7F
                  007F7F007F7FFFFFC00000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
                  FF0000FF0000FFC0C0C00000FF0000FFC0C0C00000FF0000FF0000FF0000FF00
                  00FF0000FF0000FF0000FF0000FF0000FF0000FFC0C0C00000000000FF0000FF
                  0000FF0000FF0000FF0000FF0000FF0000FFFF00FF0000FFFFFFC00000FF007F
                  7F7F0000007F7F007F7F007F7F007F7F007F7F007F7F7F00007F0000007F7F00
                  7F7FFFFFC00000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
                  C0C0C00000FFC0C0C00000FF0000FFC0C0C00000FF0000FF0000FF0000FF0000
                  FF0000FFC0C0C0C0C0C00000FF0000FFC0C0C00000000000FF0000FF0000FF00
                  00FF0000FF0000FF0000FFFF00FF0000FF0000FF0000FFFFFFC0FFFFC0FFFFC0
                  007F7F007F7F007F7F007F7F007F7FFFFFC0FFFFC00000FF7F00007F00000000
                  FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FFC0C0C00000FF00
                  00FF0000FFC0C0C0C0C0C0C0C0C00000FF0000FF0000FF0000FF0000FFC0C0C0
                  C0C0C00000FFC0C0C0C0C0C00000FF0000000000FF0000FF0000FF0000FF0000
                  FF0000FFFF00FF0000FF0000FF0000FFFFFFC0007F7F007F7F007F7F007F7F00
                  7F7F007F7F007F7FFFFFC00000FF0000FF0000FF0000FF0000FF0000FF0000FF
                  0000FF0000FF0000FF0000FF0000FF0000FFC0C0C00000FF0000FF0000FFC0C0
                  C00000FF0000FF0000FF0000FF0000FF0000FF0000FFC0C0C00000FF0000FF00
                  00FF0000FF0000FF0000FF0000000000FF0000FF0000FF0000FF0000FFFF00FF
                  0000FF0000FF0000FF0000FF7F0000007F7F007F7F007F7F007F7FFFFFC07F00
                  00007F7F007F7FFFFFC00000FF0000FF0000FF0000FF0000FF0000FF0000FF00
                  00FF0000FF0000FF0000FFC0C0C00000FF0000FF0000FF0000FFC0C0C00000FF
                  0000FF0000FF0000FFC0C0C0C0C0C00000FF0000FFC0C0C00000FF0000FF0000
                  FF0000FF0000FF0000000000FF0000FF0000FF0000FFFF00FF0000FF0000FF00
                  00FF0000FF007F7F7F0000007F7F007F7F007F7F007F7FFFFFC0007F7F7F0000
                  007F7F007F7F0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
                  FF0000FFC0C0C00000FF0000FF0000FF0000FF0000FFC0C0C00000FF0000FF00
                  00FF0000FFC0C0C00000FFC0C0C00000FF0000FF0000FF0000FF0000FF0000FF
                  0000FF0000000000FF0000FF0000FFFF00FF0000FF0000FF0000FF0000FF0000
                  FF007F7F7F00007F0000007F7F007F7F007F7FFFFFC00000FF007F7F7F000000
                  7F7F0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FFC0C0C0
                  0000FF0000FF0000FF0000FF0000FF0000FFC0C0C0C0C0C00000FF0000FF0000
                  FFC0C0C00000FF0000FFC0C0C00000FF0000FF0000FF0000FF0000FF0000FF00
                  00000000FF0000FFFF00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
                  007F7F7F00007F00007F00000000FF0000FF0000FF007F7F7F00000000FF0000
                  FF0000FF0000FF0000FF0000FF0000FF0000FF0000FFC0C0C00000FF0000FF00
                  00FF0000FF0000FF0000FF0000FF0000FFC0C0C0C0C0C0C0C0C00000FF0000FF
                  0000FF0000FFC0C0C00000FF0000FF0000FF0000FF0000FF0000FF0000000000
                  FFFF00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
                  7F7F007F7F0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
                  0000FF0000FF0000FF0000FF0000FFC0C0C00000FF0000FF0000FF0000FF0000
                  FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
                  00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF000000FF00FF0000FF
                  0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
                  FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
                  00FF0000FF0000FFC0C0C00000FF0000FF0000FF0000FF0000FF0000FF0000FF
                  0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
                  FF0000FF0000FF0000FF0000FF0000FF0000FF0000000000FF0000FF0000FF00
                  00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
                  0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
                  FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
                  00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
                  0000FF0000FF0000FF0000FF0000FF000000}
                NumGlyphs = 2
                ParentShowHint = False
                ShowHint = True
                TabOrder = 37
                OnClick = buCopiarClick
              end
              object dnMantenimiento: TDBNavigator
                Left = 228
                Top = 11
                Width = 104
                Height = 29
                DataSource = dsClientes_Extensiones
                VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
                Hints.Strings = (
                  'Primer registro'
                  'Anterior registro'
                  'Siguiente registro'
                  'Ultimo registro'
                  'Insert record'
                  'Delete record'
                  'Edit record'
                  'Post edit'
                  'Cancel edit'
                  'Refresh data')
                TabOrder = 36
              end
              object edExtTelefono: TDBEdit
                Left = 287
                Top = 114
                Width = 85
                Height = 21
                DataField = 'TELEFONO'
                DataSource = dsClientes_Extensiones
                TabOrder = 10
              end
              object cbCtasExtension: TDBLookupComboBox
                Left = 375
                Top = 73
                Width = 105
                Height = 21
                DataField = 'CUENTA'
                DataSource = dsClientes_Extensiones
                DropDownWidth = 250
                TabOrder = 5
              end
              object deCURPExt: TDBEdit
                Left = 484
                Top = 114
                Width = 149
                Height = 21
                DataField = 'CURP'
                DataSource = dsClientes_Extensiones
                TabOrder = 12
              end
              object buLimCta: TBitBtn
                Left = 443
                Top = 54
                Width = 18
                Height = 18
                Glyph.Data = {
                  D6020000424DD6020000000000003600000028000000100000000E0000000100
                  180000000000A002000000000000000000000000000000000000FFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF95DF9588D78845816F63AB7CFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6EC291409A602A
                  8F9F28698F2580B61C729455BD60FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFF95DF954AAB603594B451A3BF4AB1E253BBE450BCEF1C7CC2155F7871D4
                  71FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA6E4A6207D7C4691B163CDF845B0E450
                  BCF955C2F440AADF44A8DA1A82CF155F7855BD60FFFFFFFFFFFFFFFFFF71D471
                  207D7C206F916AD2F447AFF45AC8F950BCF940AAF455C2F44FB4E53AA4D90054
                  AA409A60B8E9B8FFFFFF78C883388F916DD1F166D4F156BAF14BAEF44AAEF154
                  BAFF53BBEB53BBEB4AA3E14093DD3D88D2054E966EB683FFFFFF15788A2382AD
                  2E94BF2089BF48B3E953BFF44AB6FF40AAE950BCEF3AA4D9407ECB3587CF4577
                  CF0547AF20656091CF9195D28AB1D2A6FFFFFFFFFFFF4197AB288BB645B1E445
                  99D9357CC92A65BF4887CF306BC440AADF40AADF0054AA588A7FFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFA8DACB4C8EA4458ED9357CC92A65BF3D92DA50BCF940AA
                  F440AADF0054AA5F8A7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3A
                  76A43181D46DD1FF60CFEA40AAF450BCF9258DD90A5A91669C7FFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9DD2C154AFD44AAEE942ABD83886B7528C
                  BA36598B4AAB60ADDFB1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFB4BBB49FA79F9B999B3F5663606540FFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1E2C6677D5C7CC1
                  CA3C9BDF3C332798AF8DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFF95DF958A8F8A8A8F8ADBBBBB95BB8A}
                TabOrder = 3
                TabStop = False
                OnClick = buLimCtaClick
              end
              object buActCta: TBitBtn
                Left = 462
                Top = 54
                Width = 18
                Height = 18
                Glyph.Data = {
                  36030000424D3603000000000000360000002800000010000000100000000100
                  18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFAF9FFF8F6FFF6F300925EFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFEFEFCFCFFFCFA00925E00855D8FDBB68FD8B3D6E6CDFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00925E00925E00925E00
                  925E00925E00925EB0DCBEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFF00925E00925ED5ECDEFFFFFFD4E9D600925EFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF72DEB7FFFFFF00925EFF
                  FFFF00925EFFFFFF72D7ABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFF00925EAFEBD6FFFFFFD3F3E700925E00925EFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD3F5E700925E00925E00
                  925E00925E00966300925EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFD3F5E7AFEBD68EE3C700925E00925EFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFF00925EFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFD
                  FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
                TabOrder = 4
                TabStop = False
                OnClick = buActCtaClick
              end
              object buLimTransportista: TBitBtn
                Left = 596
                Top = 54
                Width = 18
                Height = 18
                Glyph.Data = {
                  D6020000424DD6020000000000003600000028000000100000000E0000000100
                  180000000000A002000000000000000000000000000000000000FFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF95DF9588D78845816F63AB7CFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6EC291409A602A
                  8F9F28698F2580B61C729455BD60FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFF95DF954AAB603594B451A3BF4AB1E253BBE450BCEF1C7CC2155F7871D4
                  71FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA6E4A6207D7C4691B163CDF845B0E450
                  BCF955C2F440AADF44A8DA1A82CF155F7855BD60FFFFFFFFFFFFFFFFFF71D471
                  207D7C206F916AD2F447AFF45AC8F950BCF940AAF455C2F44FB4E53AA4D90054
                  AA409A60B8E9B8FFFFFF78C883388F916DD1F166D4F156BAF14BAEF44AAEF154
                  BAFF53BBEB53BBEB4AA3E14093DD3D88D2054E966EB683FFFFFF15788A2382AD
                  2E94BF2089BF48B3E953BFF44AB6FF40AAE950BCEF3AA4D9407ECB3587CF4577
                  CF0547AF20656091CF9195D28AB1D2A6FFFFFFFFFFFF4197AB288BB645B1E445
                  99D9357CC92A65BF4887CF306BC440AADF40AADF0054AA588A7FFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFA8DACB4C8EA4458ED9357CC92A65BF3D92DA50BCF940AA
                  F440AADF0054AA5F8A7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3A
                  76A43181D46DD1FF60CFEA40AAF450BCF9258DD90A5A91669C7FFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9DD2C154AFD44AAEE942ABD83886B7528C
                  BA36598B4AAB60ADDFB1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFB4BBB49FA79F9B999B3F5663606540FFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1E2C6677D5C7CC1
                  CA3C9BDF3C332798AF8DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFF95DF958A8F8A8A8F8ADBBBBB95BB8A}
                TabOrder = 6
                TabStop = False
                OnClick = buLimTransportistaClick
              end
              object buActTransportista: TBitBtn
                Left = 615
                Top = 54
                Width = 18
                Height = 18
                Glyph.Data = {
                  36030000424D3603000000000000360000002800000010000000100000000100
                  18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFAF9FFF8F6FFF6F300925EFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFEFEFCFCFFFCFA00925E00855D8FDBB68FD8B3D6E6CDFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00925E00925E00925E00
                  925E00925E00925EB0DCBEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFF00925E00925ED5ECDEFFFFFFD4E9D600925EFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF72DEB7FFFFFF00925EFF
                  FFFF00925EFFFFFF72D7ABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFF00925EAFEBD6FFFFFFD3F3E700925E00925EFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD3F5E700925E00925E00
                  925E00925E00966300925EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFD3F5E7AFEBD68EE3C700925E00925EFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFF00925EFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFD
                  FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
                TabOrder = 7
                TabStop = False
                OnClick = buActTransportistaClick
              end
              object ceLimiteCreditoExtension: TDBEdit
                Left = 287
                Top = 73
                Width = 85
                Height = 21
                DataField = 'LIMITE_CREDITO'
                DataSource = dsClientes_Extensiones
                TabOrder = 2
              end
              object buLimCiudad: TBitBtn
                Left = 596
                Top = 177
                Width = 18
                Height = 18
                Glyph.Data = {
                  D6020000424DD6020000000000003600000028000000100000000E0000000100
                  180000000000A002000000000000000000000000000000000000FFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF95DF9588D78845816F63AB7CFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6EC291409A602A
                  8F9F28698F2580B61C729455BD60FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFF95DF954AAB603594B451A3BF4AB1E253BBE450BCEF1C7CC2155F7871D4
                  71FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA6E4A6207D7C4691B163CDF845B0E450
                  BCF955C2F440AADF44A8DA1A82CF155F7855BD60FFFFFFFFFFFFFFFFFF71D471
                  207D7C206F916AD2F447AFF45AC8F950BCF940AAF455C2F44FB4E53AA4D90054
                  AA409A60B8E9B8FFFFFF78C883388F916DD1F166D4F156BAF14BAEF44AAEF154
                  BAFF53BBEB53BBEB4AA3E14093DD3D88D2054E966EB683FFFFFF15788A2382AD
                  2E94BF2089BF48B3E953BFF44AB6FF40AAE950BCEF3AA4D9407ECB3587CF4577
                  CF0547AF20656091CF9195D28AB1D2A6FFFFFFFFFFFF4197AB288BB645B1E445
                  99D9357CC92A65BF4887CF306BC440AADF40AADF0054AA588A7FFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFA8DACB4C8EA4458ED9357CC92A65BF3D92DA50BCF940AA
                  F440AADF0054AA5F8A7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3A
                  76A43181D46DD1FF60CFEA40AAF450BCF9258DD90A5A91669C7FFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9DD2C154AFD44AAEE942ABD83886B7528C
                  BA36598B4AAB60ADDFB1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFB4BBB49FA79F9B999B3F5663606540FFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1E2C6677D5C7CC1
                  CA3C9BDF3C332798AF8DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFF95DF958A8F8A8A8F8ADBBBBB95BB8A}
                TabOrder = 22
                TabStop = False
                OnClick = buLimCiudadClick
              end
              object buActCiudad: TBitBtn
                Left = 615
                Top = 177
                Width = 18
                Height = 18
                Glyph.Data = {
                  36030000424D3603000000000000360000002800000010000000100000000100
                  18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFAF9FFF8F6FFF6F300925EFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFEFEFCFCFFFCFA00925E00855D8FDBB68FD8B3D6E6CDFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00925E00925E00925E00
                  925E00925E00925EB0DCBEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFF00925E00925ED5ECDEFFFFFFD4E9D600925EFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF72DEB7FFFFFF00925EFF
                  FFFF00925EFFFFFF72D7ABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFF00925EAFEBD6FFFFFFD3F3E700925E00925EFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD3F5E700925E00925E00
                  925E00925E00966300925EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFD3F5E7AFEBD68EE3C700925E00925EFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFF00925EFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFD
                  FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
                TabOrder = 23
                TabStop = False
                OnClick = buActCiudadClick
              end
            end
            object dgExtensiones: TDBGrid
              Left = 170
              Top = 265
              Width = 728
              Height = 62
              Align = alClient
              Color = clInfoBk
              DataSource = dsClientes_Extensiones
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              OnDblClick = dgExtensionesDblClick
              OnDragDrop = dgExtensionesDragDrop
              OnDragOver = dgExtensionesDragOver
            end
            object lvCopiaExt: TListView
              Left = 0
              Top = 265
              Width = 170
              Height = 62
              Align = alLeft
              BorderStyle = bsNone
              Color = 14933717
              Columns = <>
              DragMode = dmAutomatic
              LargeImages = imRemitente
              TabOrder = 2
              Visible = False
              OnEndDrag = lvCopiaExtEndDrag
            end
          end
          object tsDescuentos: TTabSheet
            Caption = 'Descuentos'
            ImageIndex = 1
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object dgDescuentos: TDBGrid
              Left = 0
              Top = 52
              Width = 898
              Height = 275
              Align = alClient
              DataSource = dsDescuentos
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
            end
            object Panel18: TPanel
              Left = 0
              Top = 0
              Width = 898
              Height = 52
              Align = alTop
              BevelInner = bvRaised
              BevelOuter = bvLowered
              Color = 14933717
              TabOrder = 1
              object buF7Desc: TBitBtn
                Left = 4
                Top = 3
                Width = 42
                Height = 45
                Cursor = crHandPoint
                Hint = 'Nuevo'
                Caption = 'Nuevo'
                Glyph.Data = {
                  9E0D0000424D9E0D00000000000036000000280000002C0000001A0000000100
                  180000000000680D0000000000000000000000000000000000000000FF0000FF
                  CAA098D1A89FD2A79ED1A79DD1A69CD1A69BD1A59AD1A499D1A498D1A397D1A3
                  96D1A295D2A294D1A193D2A092CE9B8E0000FF0000FF0000FF0000FF0000FF00
                  00FFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000FF0000FF0000FF0000FF0000
                  FFDBBFBAF1E2DAFEF2E2FDF1E0FEF0DEFFEFDCFEEED9FEEDD7FEECD4FEEBD3FF
                  EAD0FEE9CEFEE8CCFEE7CAFEE5C7FEE4C5FEDDBECE9B8D0000FF0000FF0000FF
                  0000FFC0C0C00000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
                  FF0000FF0000FF0000FF0000FF0000FF0000FF0000FFC0C0C00000FF0000FF00
                  00FF0000FFDCC1BDF4E9E2FEF4E5FEF4E2FEF3E1FEF2DFFEF1DEFEF1DBFEF0D9
                  FEEFD8FEEED5FEEED3FEEDD2FEECD0FEEBCEFEEACCFEE8C8D2A2930000FF0000
                  FF0000FF0000FFC0C0C00000FF0000FF0000FF0000FF0000FF0000FF0000FF00
                  00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FFC0C0C00000FF
                  0000FF0000FF0000FFDCC1BDF4E9E3FEF5E8FEF5E6FEF4E3FEF3E2FEF2E0FEF1
                  DEFEF1DCFEF0DAFEEFD8FEEED6FEEED4FEEDD2FEECD1FFECCFFEE9CBD2A39400
                  00FF0000FF0000FF0000FFC0C0C00000FF0000FF0000FF0000FF0000FF0000FF
                  0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FFC0C0
                  C00000FF0000FF0000FF0000FFDCC1BDF4EAE4FFF6EBFEF6E9FEF5E7FEF4E5FE
                  F3E2FEF3E1FEF2DFFEF1DDFEF0DBFEF0D9FEEFD8FEEFD5FEEDD3FEEDD1FEEACE
                  D2A3970000FF0000FF0000FF0000FFC0C0C00000FF0000FF0000FF0000FF0000
                  FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
                  00FFC0C0C00000FF0000FF0000FF0000FFDCC1BDF3EAE5FEF8EEFEF6EBFEF6E9
                  FEF5E7FEF5E5FEF4E3FEF3E1FEF2E0FEF1DEFEF1DCFEF0DAFEEFD8FEEFD6FEEE
                  D4FEEBD1D2A4980000FF0000FF0000FF0000FFC0C0C00000FF0000FF0000FF00
                  00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
                  0000FF0000FFC0C0C00000FF0000FF0000FF0000FFDCC1BDF4EAE6FEF9F0FEF8
                  EEFEF8ECFEF7EAFEF6E8FEF5E7FEF4E4FEF4E2FEF3E1FEF2DFFEF1DDFEF0DAFE
                  EFD9FEEFD7FEEDD3D2A5990000FF0000FF0000FF0000FFC0C0C00000FF0000FF
                  0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
                  FF0000FF0000FF0000FFC0C0C00000FF0000FF0000FF0000FFDDC3BEF4EBE7FE
                  FAF3FEF9F1FEF8EFFEF8EDFEF7EBFEF6E9FEF5E7FEF5E5FEF4E3FEF3E1FEF2E0
                  FEF1DEFEF1DCFEF0DAFEEED7D3A69B0000FF0000FF0000FF0000FFC0C0C00000
                  FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
                  00FF0000FF0000FF0000FF0000FFC0C0C00000FF0000FF0000FF0000FFDFC5BF
                  F5ECE8FEFBF6FEFAF3FEF9F1FEF8F0FEF8EEFEF7ECFEF6EAFEF6E8FEF5E6FEF4
                  E4FEF3E2FEF2E0FEF1DEFEF1DCFEEFDAD2A79C0000FF0000FF0000FF0000FFC0
                  C0C00000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
                  0000FF0000FF0000FF0000FF0000FF0000FFC0C0C00000FF0000FF0000FF0000
                  FFE1C7C1F5EDE9FEFCF8FEFBF6FEFAF5FEF9F2FEF9F0FEF8EFFEF8EDFFF7EBFE
                  F6E9FEF5E7FEF5E5FEF4E3FEF3E1FEF2E0FEF1DDD2A89D0000FF0000FF0000FF
                  0000FFC0C0C00000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
                  FF0000FF0000FF0000FF0000FF0000FF0000FF0000FFC0C0C00000FF0000FF00
                  00FF0000FFE3CAC2F6EEEBFEFDFBFEFCFAFEFBF7FEFBF5FEFAF3FEF9F1FEF9F0
                  FEF8EEFEF7EBFEF6E9FEF5E8FEF5E6FEF4E4FEF3E2FEF2E0D2A99F0000FF0000
                  FF0000FF0000FFC0C0C00000FF0000FF0000FF0000FF0000FF0000FF0000FF00
                  00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FFC0C0C00000FF
                  0000FF0000FF0000FFE5CCC3F6EFECFEFEFEFEFEFCFEFDFAFFFCF8FEFBF6FEFA
                  F4FEF9F2FEF9F0FEF8EEFEF7EDFEF7EAFEF6E9FEF5E7FEF4E5FFF3E2D2AAA000
                  00FF0000FF0000FF0000FFC0C0C00000FF0000FF0000FF0000FF0000FF0000FF
                  0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FFC0C0
                  C00000FF0000FF0000FF0000FFE7CEC5F7F0EDFFFFFFFEFEFEFEFEFDFEFDFBFE
                  FCF9FEFCF7FEFBF5FEFAF3FEF9F1FEF8EFFEF8EEFEF7EBFEF6E9FEF5E7FEF4E4
                  D2AAA10000FF0000FF0000FF0000FFC0C0C00000FF0000FF0000FF0000FF0000
                  FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
                  00FFC0C0C00000FF0000FF0000FF0000FFE9D1C7F8F1EEFFFFFFFFFFFFFEFEFE
                  FEFEFE8000008000008000008000008000008000008000008000008000008000
                  008000008000008000008000008000000000FFC0C0C00000FF0000FF0000FF00
                  00FF0000FFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000FFEBD3C8F8F1EEFFFFFFFFFE
                  FFFFFFFFFFFFFF8000000000FF0000FF0000FF0000FF0000FF0000FF0000FF00
                  00FF0000FF0000FF0000FF0000FF0000FF8000000000FFC0C0C00000FF0000FF
                  0000FF0000FF0000FFC0C0C00000FF0000FF0000FF0000FF0000FF0000FF0000
                  FF0000FF0000FF0000FF0000FF0000FF0000FFC0C0C00000FFECD6CAF9F2EEFF
                  FFFFFFFEFFFFFFFFFFFFFF8000000000FF0000000000000000FF0000FF0000FF
                  0000FF0000FF0000000000000000FF0000FF0000FF8000000000FFC0C0C00000
                  FF0000FF0000FF0000FF0000FFC0C0C00000FFC0C0C0C0C0C00000FF0000FF00
                  00FF0000FF0000FFC0C0C0C0C0C00000FF0000FF0000FFC0C0C00000FFEFD8CB
                  F9F3EFFFFFFFFFFFFFFFFFFFFFFFFF8000000000FF0000000000000000FF0000
                  FF0000FF0000FF0000FF0000000000000000FF0000FF0000FF8000000000FFC0
                  C0C00000FF0000FF0000FF0000FF0000FFC0C0C00000FFC0C0C0C0C0C00000FF
                  0000FF0000FF0000FF0000FFC0C0C0C0C0C00000FF0000FF0000FFC0C0C00000
                  FFF0DBCCFAF4EFFFFFFFFFFFFFFFFFFFFFFFFF8000000000FF00000000000000
                  00FF0000FF0000FF0000FF0000FF0000000000000000FF0000FF0000FF800000
                  0000FFC0C0C00000FF0000FF0000FF0000FF0000FFC0C0C00000FFC0C0C0C0C0
                  C00000FF0000FF0000FF0000FF0000FFC0C0C0C0C0C00000FF0000FF0000FFC0
                  C0C00000FFF2DDCFFBF5F0FFFFFFFFFFFFFFFFFFFFFFFF8000000000FF000000
                  0000000000FF0000FF0000FF0000FF0000FF0000FF0000000000000000FF0000
                  FF8000000000FFC0C0C00000FF0000FF0000FF0000FF0000FFC0C0C00000FFC0
                  C0C0C0C0C00000FF0000FF0000FF0000FF0000FF0000FFC0C0C0C0C0C00000FF
                  0000FFC0C0C00000FFF4DFD0FCF5F0FFFFFFFFFFFFFFFFFFFFFFFF8000000000
                  FF0000000000000000000000000000000000FF0000FF0000FF00000000000000
                  00FF0000FF8000000000FFC0C0C00000FF0000FF0000FF0000FF0000FFC0C0C0
                  0000FFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000FF0000FF0000FFC0C0C0C0C0
                  C00000FF0000FFC0C0C00000FFF6E2D1FCF5F1FEFEFEFEFEFEFFFFFFFFFFFF80
                  00000000FF0000000000000000FF0000FF0000FF0000FF0000FF0000FF0000FF
                  0000000000000000FF8000000000FFC0C0C00000FF0000FF0000FF0000FF0000
                  FFC0C0C00000FFC0C0C0C0C0C00000FF0000FF0000FF0000FF0000FF0000FF00
                  00FFC0C0C0C0C0C00000FFC0C0C00000FFF7E4D1FCF4ECFEFEFEFEFEFEFFFFFF
                  FFFFFE8000000000FF0000000000000000FF0000FF0000FF0000FF0000FF0000
                  FF0000FF0000000000000000FF8000000000FFC0C0C00000FF0000FF0000FF00
                  00FF0000FFC0C0C00000FFC0C0C0C0C0C00000FF0000FF0000FF0000FF0000FF
                  0000FF0000FFC0C0C0C0C0C00000FFC0C0C00000FF0000FFF5D8BDF5DCC5F5DB
                  C4F4D9C4F2D8C28000000000FF0000000000000000FF0000FF0000FF0000FF00
                  00FF0000FF0000FF0000000000000000FF8000000000FF0000FFC0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C00000FFC0C0C0C0C0C00000FF0000FF0000FF0000
                  FF0000FF0000FF0000FFC0C0C0C0C0C00000FFC0C0C00000FF0000FF0000FF00
                  00FF0000FF0000FF0000FF8000000000FF000000000000000000000000000000
                  0000FF0000000000000000000000000000000000FF8000000000FF0000FF0000
                  FF0000FF0000FF0000FF0000FFC0C0C00000FFC0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C00000FFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000FFC0C0C00000FF0000FF
                  0000FF0000FF0000FF0000FF0000FF8000000000FF0000FF0000FF0000FF0000
                  FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF8000000000FF00
                  00FF0000FF0000FF0000FF0000FF0000FFC0C0C00000FF0000FF0000FF0000FF
                  0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FFC0C0C00000
                  FF0000FF0000FF0000FF0000FF0000FF0000FF80000080000080000080000080
                  0000800000800000800000800000800000800000800000800000800000800000
                  0000FF0000FF0000FF0000FF0000FF0000FF0000FFC0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0}
                NumGlyphs = 2
                ParentShowHint = False
                ShowHint = False
                Spacing = 0
                TabOrder = 0
                OnClick = buF7ExtClick
              end
              object buF8Desc: TBitBtn
                Left = 48
                Top = 3
                Width = 42
                Height = 45
                Cursor = crHandPoint
                Hint = 'Modificar'
                Caption = 'Modific.'
                Glyph.Data = {
                  16120000424D161200000000000036000000280000003A0000001A0000000100
                  180000000000E0110000000000000000000000000000000000000000FF0000FF
                  0000FF0000FF0000FF0000FF0000FF0000FFD9BAB6DCBDB4E9CEC0EACCBEEACC
                  BCEACABAEAC9B8E9C8B6EAC7B3EAC5B2EAC4B0E9C3ADEAC2ABEAC0A9EABFA7EA
                  BEA5E3B098CFA7A00000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
                  0000FF0000FF0000FFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000
                  00FF0000FF0000FF00000000FF0000FF0000FF0000FF0000FF0000FF0000FF00
                  00FFD1ABA5F9F1E9FEF3E3FEF3E1FEF2DFFEF1DEFDF0DAFCEAD2FCE9D0FCE8CD
                  FBE7CBFCE7CAFEECD0FEEBCEFEEACCFEEACAFDE3C3D3A59A0000FF0000FF0000
                  FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FFC0C0C00000FF00
                  00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
                  0000FF0000FF0000FF0000FFC0C0C00000FF0000FF0000FF00000000FF0000FF
                  0000FF0000FF0000FF0000FF0000FF0000FFD0AAA5F9F2EAFEF5E6FEF4E4FEF3
                  E2FEF2E0FDEEDAF9E1C8F9E0C4F9DEC1F8DCBEF9DEC0FEEDD2FEEDD1FEECCFFE
                  EBCDFEE5C6D2A69B0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
                  0000FF0000FF0000FFC0C0C00000FF0000FF0000FF0000FF0000FF0000FFC0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C00000FF0000FF0000FF0000FF0000FFC0C0C000
                  00FF0000FF0000FF00000000FF0000FF0000FF0000FF0000FF0000FF0000FF00
                  00FFD0ABA5FAF2EBFEF6E9FDF2E3FDF1DFFDEFDDFDEEDBFDEDD9FDECD6FCEBD4
                  FCEAD1FCE9CFFCE8CDFDE7CAFCE6C8FEE9CCFEE6CBD3A79C0000FF0000FF0000
                  FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FFC0C0C00000FF00
                  00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
                  0000FF0000FF0000FF0000FFC0C0C00000FF0000FF0000FF00000000FF0000FF
                  0000FF0000FF0000FF0000FF0000FF0000FFD0ABA5FAF3EDFEF7ECFCEBDAFAE7
                  D2FAE3CBF9DDC1F9D8B8F9D2AFF6CEA9B7987EC5B09BF8D8B6F7D5B2F7D4AFFA
                  E2C3FEE8CED2A79D0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
                  0000FF0000FF0000FFC0C0C00000FF0000FFC0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000FF0000FFC0C0C000
                  00FF0000FF0000FF00000000FF0000FF0000FF0000FF0000FF0000FF0000FF00
                  00FFD0AAA5F9F3EEFEF8EEFDF1E2FDE7D0FDDDBDFDD8B5FCD5B2E7D1C1A6B6DB
                  98A7C3F8E7D0FCEAD1FCE9CFFCE8CCFDEBD1FEEAD1D2A89E0000FF0000FF0000
                  FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FFC0C0C00000FF00
                  00FF0000FF0000FF0000FF0000FF0000FF0000FFC0C0C0C0C0C00000FF0000FF
                  0000FF0000FF0000FF0000FFC0C0C00000FF0000FF0000FF00000000FF0000FF
                  0000FF0000FF0000FF0000FF0000FF0000FFD0ABA4F9EEE6FEECDAFBDABEFAD4
                  B3FAD1AFECCAADB4B9CE7EA5E29BBAE8DEDADAF7DABCF7D9B8F7D7B5F6D5B1FB
                  E4C8FEECD5D3A89F0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
                  0000FF0000FF0000FFC0C0C00000FF0000FFC0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000FF0000FFC0C0C000
                  00FF0000FF0000FF00000000FF0000FF0000FF0000FF0000FF0000FF0000FF00
                  00FFD3ABA1F9E6D7FDEAD8FDE4CEFCE1C8E0D4C6469AD983ACE4B4CAECD2E0F2
                  F9EBDAFCECD7FCEBD5FCEAD3FCE9D0FDEDD6FEEDD8D2A9A10000FF0000FF0000
                  FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FFC0C0C00000FF00
                  00FF0000FF0000FF0000FFC0C0C00000FF0000FFC0C0C00000FF0000FF0000FF
                  0000FF0000FF0000FF0000FFC0C0C00000FF0000FF0000FF00000000FF0000FF
                  0000FF0000FF0000FF0000FF0000FF0000FFD6AEA4FAE9DCFDEDDDFCE0C7E3CF
                  BE308DD1029EF459C5FAD2EAFCE3DFDAF8DEC3F8DCBFF8DABDF7D8B9F7D7B5FB
                  E6CCFEEEDBD2AAA20000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
                  0000FF0000FF0000FFC0C0C00000FF0000FFC0C0C0C0C0C0C0C0C00000FF0000
                  FFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000FF0000FFC0C0C000
                  00FF0000FF0000FF00000000FF0000FF0000FF0000FF0000FF0000FF0000FF00
                  00FFD9B2A7FAEDE2FEF5EBE3E8EA3496DE019EF50DB8FE24D2FD8AD1E9FAF0E3
                  FDF0E1FDEFDEFDEEDCFCEED9FDEDD8FDF0DCFEF0DED3ABA30000FF0000FF0000
                  FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FFC0C0C00000FF00
                  00FF0000FFC0C0C00000FF0000FF0000FFC0C0C00000FF0000FF0000FF0000FF
                  0000FF0000FF0000FF0000FFC0C0C00000FF0000FF0000FF00000000FF0000FF
                  0000FF0000FF0000FF0000FF0000FF0000FFDBB8ACFBF6F4E3EEF73595DD019D
                  F40CB6FE29D3FC83D2EAF7E3CFFAE2CBF9E1C8F8DFC5F8DDC1F8DCBEF8DABBFB
                  E9D2FEF2E1D3ACA30000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
                  0000FF0000FF0000FFC0C0C00000FF0000FFC0C0C00000FF0000FF0000FFC0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000FF0000FFC0C0C000
                  00FF0000FF0000FF00000000FF0000FF0000FF0000FF0000FF0000FF0000FF00
                  00FFDDBCB0E6EBF13494DF009CF40AB4FE2AD4FC84D5EFF8F4ECFDF5EAFDF4E8
                  FDF3E6FDF1E4FDF1E1FCF0DFFCEFDDFEF2E2FEF3E4D3ACA50000FF0000FF0000
                  FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FFC0C0C00000FFC0
                  C0C00000FF0000FF0000FFC0C0C00000FF0000FF0000FF0000FF0000FF0000FF
                  0000FF0000FF0000FF0000FFC0C0C00000FF0000FF0000FF00000000FF0000FF
                  0000FF0000FF0000FF0000FF0000FF0000FFCAB6B3348FD8009DF50AB4FE2DD7
                  FD86D4ECF5E4D3F9E4CEF8E1CAF8DFC7F8DDC3F7DCC0F7DABCF7D8B9F7D6B5FA
                  E7D0FDF2E1D2ACA40000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
                  0000FF0000FF0000FFC0C0C0C0C0C00000FF0000FF0000FFC0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000FF0000FFC0C0C000
                  00FF0000FF0000FF00000000FF0000FF0000FF0000FF0000FF0000FF0000FF00
                  00FF358FD7009CF409B3FE2FD5FC86D9F3FAF8F4800000800000800000800000
                  8000008000008000008000008000008000008000008000008000008000008000
                  000000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FFC0C0C00000FF00
                  00FF0000FFC0C0C00000FFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000000000FF0000FF
                  0000FF0000FF0000FF0000FF0000FF3691DD019CF408B1FE31D7FD86D9F0F6E8
                  DAF9E8D68000000000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
                  00FF0000FF0000FF0000FF0000FF8000000000FF0000FF0000FF0000FF0000FF
                  0000FF0000FFC0C0C00000FF0000FF0000FFC0C0C0C0C0C0C0C0C0C0C0C00000
                  FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
                  00FF0000FFC0C0C000000000FF0000FF0000FF0000FF0000FF0000FF3891DC00
                  9DF408B0FE31D7FE8FE3FCFAF8F6FDF8F3FDF7F28000000000FF000000000000
                  0000FF0000FF0000FF0000FF0000FF0000000000000000000000FF0000FF8000
                  000000FF0000FF0000FF0000FF0000FF0000FFC0C0C00000FF0000FF0000FFC0
                  C0C00000FF0000FF0000FFC0C0C00000FFC0C0C0C0C0C00000FF0000FF0000FF
                  0000FF0000FFC0C0C0C0C0C0C0C0C00000FF0000FFC0C0C000000000FF0000FF
                  0000FF0000FF0000FF3B92DD009CF309B0FE34D6FD8BE3FBFBFDFEFCF1E6FBEB
                  DCFBE9DA8000000000FF0000000000000000FF0000FF0000FF0000FF00000000
                  00000000FF0000000000000000FF8000000000FF0000FF0000FF0000FF0000FF
                  C0C0C00000FF0000FF0000FFC0C0C00000FFC0C0C0C0C0C0C0C0C0C0C0C00000
                  FFC0C0C0C0C0C00000FF0000FF0000FF0000FFC0C0C0C0C0C00000FFC0C0C0C0
                  C0C00000FFC0C0C000000000FF0000FF0000FF0000FF398FDA009BF308ADFE38
                  D9FE84CBD7F7F8F8FEFEFEFEFCF9FDFBF8FEFAF78000000000FF000000000000
                  0000FF0000FF0000FF0000FF0000000000000000FF0000000000000000FF8000
                  000000FF0000FF0000FF0000FFC0C0C00000FF0000FF0000FFC0C0C00000FF00
                  00FF0000FF0000FF0000FFC0C0C00000FFC0C0C0C0C0C00000FF0000FF0000FF
                  0000FFC0C0C0C0C0C00000FFC0C0C0C0C0C00000FFC0C0C000000000FF0000FF
                  DEDEDE3B3C3C0A82C509AEFE3AD7FD94E8FDECD2BEFCFAF7FEFEFEFBEEE2FAE8
                  D7F9E7D48000000000FF0000000000000000FF0000FF0000FF0000FF00000000
                  00000000FF0000000000000000FF8000000000FF0000FF0000FFC0C0C00000FF
                  0000FF0000FFC0C0C0C0C0C00000FF0000FFC0C0C0C0C0C0C0C0C0C0C0C00000
                  FFC0C0C0C0C0C00000FF0000FF0000FF0000FFC0C0C0C0C0C00000FFC0C0C0C0
                  C0C00000FFC0C0C000000000FF0000FF48537F5353537A929D5FC8E492E7FB00
                  00FFF2D7C1FCFAF8FEFEFEFEFEFEFAE8D7F9E7D48000000000FF000000000000
                  0000000000000000000000FF0000FF0000000000000000000000FF0000FF8000
                  000000FF0000FFC0C0C0C0C0C00000FF0000FFC0C0C00000FFC0C0C00000FF00
                  00FF0000FF0000FF0000FFC0C0C00000FFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  0000FF0000FFC0C0C0C0C0C0C0C0C00000FF0000FFC0C0C000000000FF6688F2
                  1460DE969CA6E2E2E3E3E3E40000FF0000FFF6DBC4FCF8F4FDFEFEFEFEFEFEFE
                  FEFEFEFE8000000000FF0000000000000000FF0000FF0000FF0000FF00000000
                  00000000FF0000000000000000FF8000000000FFC0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C00000FF0000FFC0C0C00000FF0000FF0000FF0000FF0000FFC0C0C00000
                  FFC0C0C0C0C0C00000FF0000FF0000FF0000FFC0C0C0C0C0C00000FFC0C0C0C0
                  C0C00000FFC0C0C000000000FF8DA7F95996FDB5CDF8C9CFED0000FF0000FF00
                  00FF0000FFF6DABFF5DBC2F4D9C2F3D8C1F2D6C08000000000FF000000000000
                  0000FF0000FF0000FF0000FF0000000000000000FF0000000000000000FF8000
                  000000FFC0C0C0C0C0C0C0C0C0C0C0C00000FF0000FF0000FF0000FFC0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C00000FFC0C0C0C0C0C00000FF0000FF0000FF
                  0000FFC0C0C0C0C0C00000FFC0C0C0C0C0C00000FFC0C0C000000000FF0000FF
                  BBCBFDC4CFFE0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
                  FF0000FF8000000000FF0000000000000000FF0000FF0000FF0000FF00000000
                  00000000FF0000000000000000FF8000000000FF0000FFC0C0C0C0C0C00000FF
                  0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FFC0C0C00000
                  FFC0C0C0C0C0C00000FF0000FF0000FF0000FFC0C0C0C0C0C00000FFC0C0C0C0
                  C0C00000FFC0C0C000000000FF0000FF0000FF0000FF0000FF0000FF0000FF00
                  00FF0000FF0000FF0000FF0000FF0000FF0000FF8000000000FF000000000000
                  0000000000000000000000FF0000FF0000000000000000000000FF0000FF8000
                  000000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
                  00FF0000FF0000FF0000FFC0C0C00000FFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  0000FF0000FFC0C0C0C0C0C0C0C0C00000FF0000FFC0C0C000000000FF0000FF
                  0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
                  FF0000FF8000000000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
                  00FF0000FF0000FF0000FF0000FF8000000000FF0000FF0000FF0000FF0000FF
                  0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FFC0C0C00000
                  FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
                  00FF0000FFC0C0C000000000FF0000FF0000FF0000FF0000FF0000FF0000FF00
                  00FF0000FF0000FF0000FF0000FF0000FF0000FF800000800000800000800000
                  8000008000008000008000008000008000008000008000008000008000008000
                  000000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
                  00FF0000FF0000FF0000FFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000}
                NumGlyphs = 2
                ParentShowHint = False
                ShowHint = False
                Spacing = 3
                TabOrder = 1
                OnClick = buF8ExtClick
              end
              object buF11Desc: TBitBtn
                Left = 92
                Top = 3
                Width = 42
                Height = 45
                Cursor = crHandPoint
                Hint = 'Eliminar'
                Caption = 'Eliminar'
                Glyph.Data = {
                  0E100000424D0E100000000000003600000028000000340000001A0000000100
                  180000000000D80F0000000000000000000000000000000000000000FF0000FF
                  0000FF0000FF0000FF0000FF0000FF0000FF307F600030600000FF0000FF0000
                  FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
                  00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
                  C0C0C0C0C0C00000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
                  FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
                  00FF0000FF0000FF0000FF0000FF004F9F3098CF00306000306000679F0000FF
                  0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
                  FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FFC0C0C000
                  00FFC0C0C0C0C0C000679F0000FF0000FF0000FF0000FF0000FF0000FF0000FF
                  0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
                  FF0000FF0000FF0030601F7FCF3098CF3098CF9FFFFF60CFFF00306000306000
                  679F0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
                  0000FF0000FF0000FF0000FF0000FF0000FF0000FFC0C0C0C0C0C00000FF0000
                  FF0000FFC0C0C0C0C0C0C0C0C000679F0000FF0000FF0000FF0000FF0000FF00
                  00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
                  0030600067CF3098CF60CFFF60CFFF3098CF60CFFF3098CF9FFFFF60CFFF0030
                  600000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
                  00FF0000FF0000FF0000FF0000FFC0C0C0C0C0C00000FF0000FF0000FF0000FF
                  0000FF0000FF0000FFC0C0C0C0C0C00000FF0000FF0000FF0000FF0000FF0000
                  FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0030600067CF30
                  98CF4FB0E03098CF3098CF60CFFF60CFFF60CFFF3098CF60CFFF4FB0E0003060
                  00679F0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
                  FF0000FF0000FFC0C0C0C0C0C00000FF0000FF0000FF0000FF0000FF0000FF00
                  00FF0000FF0000FF0000FFC0C0C000679F0000FF0000FF0000FF0000FF0000FF
                  0000FF0000FF0000FF0000FF0000FF0000FF0030600067CF3098CF3098CF4FB0
                  E060CFFF60CFFF60CFFF3098FF3098CF60CFFF60CFFF9FFFFF9FFFFF00306000
                  00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
                  C0C0C00000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
                  FF0000FF0000FF0000FFC0C0C00000FF0000FF0000FF0000FF0000FF0000FF00
                  00FF0000FF0000FF0000FF0000FF0030600067CF3098CF60CFFF4FB0E060CFFF
                  3098CF3098FF60CFFF60CFFF60CFFF3098FF3098CF60CFFF3098CF0030600067
                  9F0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FFC0C0C000
                  00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
                  0000FF0000FF0000FFC0C0C000679F0000FF0000FF0000FF0000FF0000FF0000
                  FF0000FF0000FF003060004FB04F7FCF60CFFF3098E05FBFF04FB0E060CFFF4F
                  B0E04FB0FF4FB0FF4FB0E04FB0FF5FBFFF4FB0E060CFE07FE7FF4FB0E0004F7F
                  0000FF0000FF0000FF0000FF0000FF0000FF0000FFC0C0C0C0C0C0C0C0C00000
                  FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
                  00FF0000FF0000FFC0C0C0004F7F0000FF0000FF0000FF0000FF0000FF0000FF
                  0030600067CF3098CF60CFFF00309F6067CF3098CF60CFFF3098CF60CFFF60CF
                  FF60CFFF3098FF3098CF4FB0FF60CFFF60CFFF60CFFF9FFFFF9FFFFF00306000
                  00FF0000FF0000FF0000FF0000FFC0C0C0C0C0C00000FF0000FFC0C0C0C0C0C0
                  0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
                  FF0000FF0000FFC0C0C0C0C0C00000FF0000FF0000FF0000FF0000FF00306000
                  309F00309F6067CF3098CF60CFFF304FB03098CF3098CF60CFFF3098CF3098FF
                  60CFFF60CFFF60CFFF3098CF00679F00679F00679F9FCF9F0000FF0000FF0000
                  FF0000FF0000FF0000FFC0C0C0C0C0C0C0C0C0C0C0C00000FF0000FFC0C0C0C0
                  C0C00000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FFC0C0C0C0C0C0
                  C0C0C0C0C0C00000FF0000FF0000FF0000FF0000FF0030600067CF3098CF60CF
                  FF3098CF00309F6067CF4FB0E000309F6067CF3098CF3098CF60CFFF60CFFF30
                  98CF00679F00679F9FCF9F0000FF0000FF0000FF0000FF0000FF0000FF0000FF
                  0000FFC0C0C0C0C0C00000FF0000FF0000FFC0C0C0C0C0C00000FFC0C0C0C0C0
                  C00000FF0000FF0000FF0000FF0000FFC0C0C0C0C0C0C0C0C00000FF0000FF00
                  00FF0000FF0000FF0000FF0000FF0000FF0030600067CF3098CF60CFFF3098CF
                  60CFFF3098CF304FB03098CF60CFFF00309F6067CF3098CF00679F00679FB0E7
                  B00000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FFC0
                  C0C00067CF0000FF0000FF0000FF0000FF0000FFC0C0C00000FF0000FFC0C0C0
                  C0C0C00000FFC0C0C0C0C0C0C0C0C00000FF0000FF0000FF0000FF0000FF0000
                  FF0000FF0000FF0000FF0000FF0030600067CF3098CF60CFFF3098FF60CFFF30
                  98FF4FB0E000309F6067CF3098CF60CFFF00309F9FCF9F0000FF0000FF0000FF
                  0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FFC0C0C00000
                  FF0000FF0000FF0000FF0000FF0000FF0000FFC0C0C00000FF0000FF0000FFC0
                  C0C0C0C0C00000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
                  0000FF0000FF0000FF0030600067CF3098CF3098FF8000008000008000008000
                  0080000080000080000080000080000080000080000080000080000080000080
                  00008000008000008000008000008000008000000000FFC0C0C00000FF0000FF
                  0000FFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C00000FF0000FF0030600067CF3098CF8000000000FF0000FF0000FF0000FF
                  0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
                  FF0000FF0000FF0000FF0000FF8000000000FF0000FFC0C0C00000FF0000FFC0
                  C0C00000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
                  0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FFC0C0C00000
                  FF0000FF0000FF30304F7F7F9F8000000000FF0000000000000000FF0000FF00
                  00FF0000FF0000000000000000000000000000000000FF000000000000000000
                  0000000000000000FF8000000000FF0000FF0000FFC0C0C0C0C0C0C0C0C00000
                  FFC0C0C0C0C0C00000FF0000FF0000FF0000FFC0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C00000FFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000FFC0C0C00000FF0000FF
                  603030101010AFA8AF8000000000FF0000000000000000FF0000FF0000FF0000
                  FF0000FF0000FF0000000000000000FF0000FF0000FF0000FF00000000000000
                  00FF0000FF8000000000FF0000FFC0C0C0C0C0C0C0C0C0C0C0C00000FFC0C0C0
                  C0C0C00000FF0000FF0000FF0000FF0000FF0000FFC0C0C0C0C0C00000FF0000
                  FF0000FF0000FFC0C0C0C0C0C00000FF0000FFC0C0C00000FF0000FF60303030
                  98CF4047408000000000FF0000000000000000FF0000FF0000FF0000FF0000FF
                  0000FF0000000000000000FF0000FF0000FF0000FF0000000000000000FF0000
                  FF8000000000FF0000FFC0C0C00000FF0000FFC0C0C00000FFC0C0C0C0C0C000
                  00FF0000FF0000FF0000FF0000FF0000FFC0C0C0C0C0C00000FF0000FF0000FF
                  0000FFC0C0C0C0C0C00000FF0000FFC0C0C00000FF6030301010103098FF60CF
                  FF8000000000FF0000000000000000FF0000FF0000FF0000FF0000FF0000FF00
                  00000000000000FF0000FF0000FF0000FF0000000000000000FF0000FF800000
                  0000FFC0C0C0C0C0C00000FF0000FFC0C0C00000FFC0C0C0C0C0C00000FF0000
                  FF0000FF0000FF0000FF0000FFC0C0C0C0C0C00000FF0000FF0000FF0000FFC0
                  C0C0C0C0C00000FF0000FFC0C0C00000FF603030FFCFCF404740707770800000
                  0000FF0000000000000000000000000000000000FF0000FF0000FF0000000000
                  000000FF0000FF0000FF0000FF0000000000000000FF0000FF8000000000FFC0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C00000FFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  0000FF0000FF0000FFC0C0C0C0C0C00000FF0000FF0000FF0000FFC0C0C0C0C0
                  C00000FF0000FFC0C0C00000FF0000FF0000FF0000FF0000FF8000000000FF00
                  00000000000000FF0000FF0000FF0000FF0000FF0000FF0000000000000000FF
                  0000FF0000FF0000FF0000000000000000FF0000FF8000000000FF0000FF0000
                  FF0000FF0000FFC0C0C00000FFC0C0C0C0C0C00000FF0000FF0000FF0000FF00
                  00FF0000FFC0C0C0C0C0C00000FF0000FF0000FF0000FFC0C0C0C0C0C00000FF
                  0000FFC0C0C00000FF0000FF0000FF0000FF0000FF8000000000FF0000000000
                  000000FF0000FF0000FF0000FF0000000000000000000000000000FF0000FF00
                  00000000000000000000000000FF0000FF8000000000FF0000FF0000FF0000FF
                  0000FFC0C0C00000FFC0C0C0C0C0C00000FF0000FF0000FF0000FFC0C0C0C0C0
                  C0C0C0C0C0C0C00000FF0000FFC0C0C0C0C0C0C0C0C0C0C0C00000FF0000FFC0
                  C0C00000FF0000FF0000FF0000FF0000FF8000000000FF0000000000000000FF
                  0000FF0000FF0000FF0000FF0000000000000000000000FF0000FF0000FF0000
                  000000000000000000FF0000FF8000000000FF0000FF0000FF0000FF0000FFC0
                  C0C00000FFC0C0C0C0C0C00000FF0000FF0000FF0000FF0000FFC0C0C0C0C0C0
                  C0C0C00000FF0000FF0000FFC0C0C0C0C0C0C0C0C00000FF0000FFC0C0C00000
                  FF0000FF0000FF0000FF0000FF8000000000FF00000000000000000000000000
                  00000000FF0000FF0000FF0000000000000000FF0000FF0000FF0000FF000000
                  0000000000FF0000FF8000000000FF0000FF0000FF0000FF0000FFC0C0C00000
                  FFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000FF0000FF0000FFC0C0C0C0C0C000
                  00FF0000FF0000FF0000FFC0C0C0C0C0C00000FF0000FFC0C0C00000FF0000FF
                  0000FF0000FF0000FF8000000000FF0000FF0000FF0000FF0000FF0000FF0000
                  FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
                  00FF0000FF8000000000FF0000FF0000FF0000FF0000FFC0C0C00000FF0000FF
                  0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
                  FF0000FF0000FF0000FF0000FF0000FF0000FFC0C0C00000FF0000FF0000FF00
                  00FF0000FF800000800000800000800000800000800000800000800000800000
                  8000008000008000008000008000008000008000008000008000008000008000
                  008000000000FF0000FF0000FF0000FF0000FFC0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
                NumGlyphs = 2
                ParentShowHint = False
                ShowHint = False
                Spacing = 3
                TabOrder = 2
                OnClick = buF11ExtClick
              end
              object dnDescuentos: TDBNavigator
                Left = 140
                Top = 11
                Width = 104
                Height = 29
                DataSource = dsClientes_Extensiones
                VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
                Hints.Strings = (
                  'Primer registro'
                  'Anterior registro'
                  'Siguiente registro'
                  'Ultimo registro'
                  'Insert record'
                  'Delete record'
                  'Edit record'
                  'Post edit'
                  'Cancel edit'
                  'Refresh data')
                TabOrder = 3
              end
            end
          end
          object tsExtHuellas: TTabSheet
            Caption = 'Huellas Dactilares'
            ImageIndex = 2
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object Panel9: TPanel
              Left = 0
              Top = 0
              Width = 898
              Height = 52
              Align = alTop
              BevelInner = bvRaised
              BevelOuter = bvLowered
              Color = 14933717
              TabOrder = 0
              object Shape1: TShape
                Left = 8
                Top = 9
                Width = 358
                Height = 34
                Brush.Color = 14789952
                Pen.Color = 11764252
                Shape = stRoundRect
              end
              object Label59: TLabel
                Left = 120
                Top = 11
                Width = 31
                Height = 13
                Caption = 'Clave'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                Transparent = True
              end
              object DBText1: TDBText
                Left = 168
                Top = 11
                Width = 48
                Height = 13
                AutoSize = True
                DataField = 'CLAVE'
                DataSource = dsClientes_Extensiones
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                Transparent = True
              end
              object Label60: TLabel
                Left = 120
                Top = 27
                Width = 44
                Height = 13
                Caption = 'Nombre'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                Transparent = True
              end
              object DBText2: TDBText
                Left = 168
                Top = 27
                Width = 193
                Height = 13
                DataField = 'NOMBRE'
                DataSource = dsClientes_Extensiones
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                Transparent = True
              end
              object dnHuella: TDBNavigator
                Left = 10
                Top = 12
                Width = 104
                Height = 29
                DataSource = dsClientes_Extensiones
                VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
                Hints.Strings = (
                  'Primer registro'
                  'Anterior registro'
                  'Siguiente registro'
                  'Ultimo registro'
                  'Insert record'
                  'Delete record'
                  'Edit record'
                  'Post edit'
                  'Cancel edit'
                  'Refresh data')
                TabOrder = 0
              end
            end
            object Panel10: TPanel
              Left = 0
              Top = 52
              Width = 225
              Height = 275
              Align = alLeft
              BevelInner = bvRaised
              BevelOuter = bvLowered
              Color = clWhite
              TabOrder = 1
              object eimg_d_ind: TImage
                Left = 2
                Top = 25
                Width = 221
                Height = 248
                Align = alClient
                Center = True
              end
              object Panel11: TPanel
                Left = 2
                Top = 2
                Width = 221
                Height = 23
                Align = alTop
                BevelOuter = bvNone
                Caption = 'Mano Derecha Indice'
                Color = clBackground
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
              end
            end
            object Panel12: TPanel
              Left = 225
              Top = 52
              Width = 225
              Height = 275
              Align = alLeft
              BevelInner = bvRaised
              BevelOuter = bvLowered
              Color = clWhite
              TabOrder = 2
              object eimg_d_pul: TImage
                Left = 2
                Top = 25
                Width = 221
                Height = 248
                Align = alClient
                Center = True
              end
              object Panel13: TPanel
                Left = 2
                Top = 2
                Width = 221
                Height = 23
                Align = alTop
                BevelOuter = bvNone
                Caption = 'Mano Derecha Pulgar'
                Color = clBackground
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
              end
            end
            object Panel14: TPanel
              Left = 450
              Top = 52
              Width = 225
              Height = 275
              Align = alLeft
              BevelInner = bvRaised
              BevelOuter = bvLowered
              Color = clWhite
              TabOrder = 3
              object eimg_i_ind: TImage
                Left = 2
                Top = 25
                Width = 221
                Height = 248
                Align = alClient
                Center = True
              end
              object Panel15: TPanel
                Left = 2
                Top = 2
                Width = 221
                Height = 23
                Align = alTop
                BevelOuter = bvNone
                Caption = 'Mano Izquierda Indice'
                Color = clBackground
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
              end
            end
            object Panel16: TPanel
              Left = 675
              Top = 52
              Width = 225
              Height = 275
              Align = alLeft
              BevelInner = bvRaised
              BevelOuter = bvLowered
              Color = clWhite
              TabOrder = 4
              object eimg_i_pul: TImage
                Left = 2
                Top = 25
                Width = 221
                Height = 248
                Align = alClient
                Center = True
              end
              object Panel17: TPanel
                Left = 2
                Top = 2
                Width = 221
                Height = 23
                Align = alTop
                BevelOuter = bvNone
                Caption = 'Mano Izquierda Pulgar'
                Color = clBackground
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
              end
            end
          end
        end
      end
      object tsMensajes: TTabSheet
        Caption = 'Mensajes'
        ImageIndex = 6
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object dgMensajes: TDBGrid
          Left = 0
          Top = 0
          Width = 906
          Height = 355
          Align = alClient
          DataSource = dsMensajes
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
        end
      end
      object tsHuellas: TTabSheet
        Caption = 'Huellas Dactilares'
        ImageIndex = 7
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object paManoDInd: TPanel
          Left = 675
          Top = 0
          Width = 225
          Height = 355
          Align = alLeft
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Color = clWhite
          TabOrder = 0
          object img_i_pul: TImage
            Left = 2
            Top = 2
            Width = 221
            Height = 351
            Align = alClient
            Center = True
          end
        end
        object Panel3: TPanel
          Left = 450
          Top = 0
          Width = 225
          Height = 355
          Align = alLeft
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Color = clWhite
          TabOrder = 1
          object img_i_ind: TImage
            Left = 2
            Top = 25
            Width = 221
            Height = 328
            Align = alClient
            Center = True
          end
          object Panel4: TPanel
            Left = 2
            Top = 2
            Width = 221
            Height = 23
            Align = alTop
            BevelOuter = bvNone
            Caption = 'Mano Izquierda Indice'
            Color = clBackground
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
        end
        object Panel5: TPanel
          Left = 225
          Top = 0
          Width = 225
          Height = 355
          Align = alLeft
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Color = clWhite
          TabOrder = 2
          object img_d_pul: TImage
            Left = 2
            Top = 25
            Width = 221
            Height = 328
            Align = alClient
            Center = True
          end
          object Panel6: TPanel
            Left = 2
            Top = 2
            Width = 221
            Height = 23
            Align = alTop
            BevelOuter = bvNone
            Caption = 'Mano Derecha Pulgar'
            Color = clBackground
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
        end
        object Panel7: TPanel
          Left = 0
          Top = 0
          Width = 225
          Height = 355
          Align = alLeft
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Color = clWhite
          TabOrder = 3
          object img_d_ind: TImage
            Left = 2
            Top = 25
            Width = 221
            Height = 328
            Align = alClient
            Center = True
          end
          object Panel8: TPanel
            Left = 2
            Top = 2
            Width = 221
            Height = 23
            Align = alTop
            BevelOuter = bvNone
            Caption = 'Mano Derecha Indice'
            Color = clBackground
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
        end
      end
    end
  end
  inherited fpPadre: TPanel
    Width = 918
    ExplicitWidth = 918
    inherited Panel1: TPanel
      Width = 918
      ExplicitWidth = 918
    end
  end
  inherited Panel2: TPanel
    Top = 570
    Width = 918
    ExplicitTop = 570
    ExplicitWidth = 918
  end
  inherited dsFuente: TDataSource
    Left = 272
    Top = 24
  end
  inherited qyBotones: TIBQuery
    Left = 688
    Top = 501
  end
  inherited TCapturar: TIBTable
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'SUJETO'
        DataType = ftInteger
      end
      item
        Name = 'LIMITE_CREDITO'
        DataType = ftFloat
      end
      item
        Name = 'MONEDA'
        DataType = ftInteger
      end
      item
        Name = 'ACUMULADO_COMPRAS'
        DataType = ftFloat
      end
      item
        Name = 'ACUMULADO_PAGOS'
        DataType = ftFloat
      end
      item
        Name = 'NUM_PAGOS_EXTEMPORANEOS'
        DataType = ftInteger
      end
      item
        Name = 'VENDEDOR'
        DataType = ftInteger
      end
      item
        Name = 'FORMAS_DE_PAGO'
        DataType = ftInteger
      end
      item
        Name = 'SERIE_FACTURA'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'TRANSPORTISTA'
        DataType = ftInteger
      end
      item
        Name = 'APLICAR_PRECIO_MAYOREO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'CLASIFICACION'
        DataType = ftInteger
      end
      item
        Name = 'DIAS_DE_RETARDO'
        DataType = ftInteger
      end
      item
        Name = 'REMITENTE'
        DataType = ftInteger
      end
      item
        Name = 'INCLUIR_EN_DECLARACION'
        Attributes = [faFixed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'PRIORIDAD'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'CONGELAR_VENTA'
        Attributes = [faFixed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'PROMOCION'
        DataType = ftInteger
      end
      item
        Name = 'DIA_FACTURA_REVISION'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'DFR_HORA_DE'
        DataType = ftDateTime
      end
      item
        Name = 'DFR_HORA_A'
        DataType = ftDateTime
      end
      item
        Name = 'DIA_ENTREGA_CHEQUES'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'DEC_HORA_DE'
        DataType = ftDateTime
      end
      item
        Name = 'DEC_HORA_A'
        DataType = ftDateTime
      end
      item
        Name = 'FIRMA'
        DataType = ftBlob
        Size = 8
      end
      item
        Name = 'CREDITO_DISPONIBLE'
        DataType = ftFloat
      end
      item
        Name = 'DESCUENTO_PORC'
        DataType = ftFloat
      end
      item
        Name = 'DP_PORC'
        DataType = ftFloat
      end
      item
        Name = 'RECOMENDADO_POR'
        DataType = ftInteger
      end
      item
        Name = 'MANO_I_IMG_IND'
        DataType = ftBlob
        Size = 8
      end
      item
        Name = 'MANO_I_HUE_IND'
        DataType = ftBlob
        Size = 8
      end
      item
        Name = 'MANO_I_VER_IND'
        Attributes = [faFixed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'MANO_I_IMG_PUL'
        DataType = ftBlob
        Size = 8
      end
      item
        Name = 'MANO_I_HUE_PUL'
        DataType = ftBlob
        Size = 8
      end
      item
        Name = 'MANO_I_VER_PUL'
        Attributes = [faFixed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'MANO_D_IMG_IND'
        DataType = ftBlob
        Size = 8
      end
      item
        Name = 'MANO_D_HUE_IND'
        DataType = ftBlob
        Size = 8
      end
      item
        Name = 'MANO_D_VER_IND'
        Attributes = [faFixed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'MANO_D_IMG_PUL'
        DataType = ftBlob
        Size = 8
      end
      item
        Name = 'MANO_D_HUE_PUL'
        DataType = ftBlob
        Size = 8
      end
      item
        Name = 'MANO_D_VER_PUL'
        Attributes = [faFixed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'ES_DISTRIBUIDOR'
        Attributes = [faFixed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'FECHA_ULT_COMPRA'
        DataType = ftDateTime
      end
      item
        Name = 'FECHA_ULT_PAGO'
        DataType = ftDateTime
      end
      item
        Name = 'FUM'
        DataType = ftDateTime
      end
      item
        Name = 'CODIGO_BARRAS'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'ELIMINAR_IVA_FACTURAS'
        Attributes = [faFixed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'ESTATUS'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY49'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'RDB$FOREIGN50'
        Fields = 'SUJETO'
      end
      item
        Name = 'RDB$FOREIGN51'
        Fields = 'MONEDA'
      end
      item
        Name = 'RDB$FOREIGN52'
        Fields = 'VENDEDOR'
      end
      item
        Name = 'RDB$FOREIGN53'
        Fields = 'FORMAS_DE_PAGO'
      end
      item
        Name = 'RDB$FOREIGN54'
        Fields = 'TRANSPORTISTA'
      end
      item
        Name = 'RDB$FOREIGN55'
        Fields = 'CLASIFICACION'
      end
      item
        Name = 'RDB$FOREIGN56'
        Fields = 'REMITENTE'
      end
      item
        Name = 'RDB$FOREIGN57'
        Fields = 'PROMOCION'
      end
      item
        Name = 'RDB$FOREIGN337'
        Fields = 'RECOMENDADO_POR'
      end>
    IndexFieldNames = 'ID'
    MasterFields = 'R_ID'
    StoreDefs = True
    TableName = 'SUJETOS_CLIENTES'
    Left = 240
    Top = 24
    object TCapturarID: TIntegerField [0]
      FieldName = 'ID'
      Required = True
    end
    object TCapturarSUJETO: TIntegerField [1]
      FieldName = 'SUJETO'
    end
    object TCapturarLIMITE_CREDITO: TFloatField [2]
      FieldName = 'LIMITE_CREDITO'
    end
    object TCapturarMONEDA: TIntegerField [3]
      FieldName = 'MONEDA'
    end
    object TCapturarACUMULADO_COMPRAS: TFloatField [4]
      FieldName = 'ACUMULADO_COMPRAS'
      DisplayFormat = '$ ###,###,##0.00'
    end
    object TCapturarACUMULADO_PAGOS: TFloatField [5]
      FieldName = 'ACUMULADO_PAGOS'
      DisplayFormat = '$ ###,###,##0.00'
    end
    object TCapturarNUM_PAGOS_EXTEMPORANEOS: TIntegerField [6]
      FieldName = 'NUM_PAGOS_EXTEMPORANEOS'
      DisplayFormat = '###,###,##0'
    end
    object TCapturarVENDEDOR: TIntegerField [7]
      FieldName = 'VENDEDOR'
    end
    object TCapturarFORMAS_DE_PAGO: TIntegerField [8]
      FieldName = 'FORMAS_DE_PAGO'
    end
    object TCapturarSERIE_FACTURA: TIBStringField [9]
      FieldName = 'SERIE_FACTURA'
      Size = 10
    end
    object TCapturarTRANSPORTISTA: TIntegerField [10]
      FieldName = 'TRANSPORTISTA'
    end
    object TCapturarAPLICAR_PRECIO_MAYOREO: TIBStringField [11]
      FieldName = 'APLICAR_PRECIO_MAYOREO'
      Size = 2
    end
    object TCapturarCLASIFICACION: TIntegerField [12]
      FieldName = 'CLASIFICACION'
    end
    object TCapturarDIAS_DE_RETARDO: TIntegerField [13]
      FieldName = 'DIAS_DE_RETARDO'
    end
    object TCapturarREMITENTE: TIntegerField [14]
      FieldName = 'REMITENTE'
    end
    object TCapturarINCLUIR_EN_DECLARACION: TIBStringField [15]
      FieldName = 'INCLUIR_EN_DECLARACION'
      Size = 2
    end
    object TCapturarPRIORIDAD: TIBStringField [16]
      FieldName = 'PRIORIDAD'
      Size = 14
    end
    object TCapturarCONGELAR_VENTA: TIBStringField [17]
      FieldName = 'CONGELAR_VENTA'
      Size = 2
    end
    object TCapturarPROMOCION: TIntegerField [18]
      FieldName = 'PROMOCION'
    end
    object TCapturarDIA_FACTURA_REVISION: TIBStringField [19]
      FieldName = 'DIA_FACTURA_REVISION'
      Size = 14
    end
    object TCapturarDFR_HORA_DE: TDateTimeField [20]
      FieldName = 'DFR_HORA_DE'
      DisplayFormat = 'hh:mm ampm'
    end
    object TCapturarDFR_HORA_A: TDateTimeField [21]
      FieldName = 'DFR_HORA_A'
      DisplayFormat = 'hh:mm ampm'
    end
    object TCapturarDIA_ENTREGA_CHEQUES: TIBStringField [22]
      FieldName = 'DIA_ENTREGA_CHEQUES'
      Size = 14
    end
    object TCapturarDEC_HORA_DE: TDateTimeField [23]
      FieldName = 'DEC_HORA_DE'
      DisplayFormat = 'hh:mm ampm'
    end
    object TCapturarDEC_HORA_A: TDateTimeField [24]
      FieldName = 'DEC_HORA_A'
      DisplayFormat = 'hh:mm ampm'
    end
    object TCapturarFIRMA: TBlobField [25]
      FieldName = 'FIRMA'
      Size = 8
    end
    object TCapturarESTATUS: TIBStringField [26]
      FieldName = 'ESTATUS'
    end
    object TCapturarDESCUENTO_PORC: TFloatField [27]
      FieldName = 'DESCUENTO_PORC'
    end
    object TCapturarDP_PORC: TFloatField [28]
      FieldName = 'DP_PORC'
    end
    object TCapturarCREDITO_DISPONIBLE: TFloatField [29]
      FieldName = 'CREDITO_DISPONIBLE'
    end
    object TCapturarRECOMENDADO_POR: TIntegerField [30]
      FieldName = 'RECOMENDADO_POR'
    end
    object TCapturarMANO_I_IMG_IND: TBlobField [31]
      FieldName = 'MANO_I_IMG_IND'
      Size = 8
    end
    object TCapturarMANO_I_HUE_IND: TBlobField [32]
      FieldName = 'MANO_I_HUE_IND'
      Size = 8
    end
    object TCapturarMANO_I_VER_IND: TIBStringField [33]
      FieldName = 'MANO_I_VER_IND'
      FixedChar = True
      Size = 2
    end
    object TCapturarMANO_I_IMG_PUL: TBlobField [34]
      FieldName = 'MANO_I_IMG_PUL'
      Size = 8
    end
    object TCapturarMANO_I_HUE_PUL: TBlobField [35]
      FieldName = 'MANO_I_HUE_PUL'
      Size = 8
    end
    object TCapturarMANO_I_VER_PUL: TIBStringField [36]
      FieldName = 'MANO_I_VER_PUL'
      FixedChar = True
      Size = 2
    end
    object TCapturarMANO_D_IMG_IND: TBlobField [37]
      FieldName = 'MANO_D_IMG_IND'
      Size = 8
    end
    object TCapturarMANO_D_HUE_IND: TBlobField [38]
      FieldName = 'MANO_D_HUE_IND'
      Size = 8
    end
    object TCapturarMANO_D_VER_IND: TIBStringField [39]
      FieldName = 'MANO_D_VER_IND'
      FixedChar = True
      Size = 2
    end
    object TCapturarMANO_D_IMG_PUL: TBlobField [40]
      FieldName = 'MANO_D_IMG_PUL'
      Size = 8
    end
    object TCapturarMANO_D_HUE_PUL: TBlobField [41]
      FieldName = 'MANO_D_HUE_PUL'
      Size = 8
    end
    object TCapturarMANO_D_VER_PUL: TIBStringField [42]
      FieldName = 'MANO_D_VER_PUL'
      FixedChar = True
      Size = 2
    end
    object TCapturarES_DISTRIBUIDOR: TIBStringField [43]
      FieldName = 'ES_DISTRIBUIDOR'
      FixedChar = True
      Size = 2
    end
    object TCapturarFECHA_ULT_COMPRA: TDateTimeField [44]
      FieldName = 'FECHA_ULT_COMPRA'
      DisplayFormat = 'dd/mm/yyyy hh:mm am/pm'
    end
    object TCapturarFECHA_ULT_PAGO: TDateTimeField [45]
      FieldName = 'FECHA_ULT_PAGO'
      DisplayFormat = 'dd/mm/yyyy hh:mm am/pm'
    end
    object TCapturarCODIGO_BARRAS: TIBStringField [46]
      FieldName = 'CODIGO_BARRAS'
      Size = 50
    end
    object TCapturarELIMINAR_IVA_FACTURAS: TIBStringField [47]
      FieldName = 'ELIMINAR_IVA_FACTURAS'
      FixedChar = True
      Size = 2
    end
    object TCapturardescripcion_moneda: TStringField
      FieldKind = fkLookup
      FieldName = 'descripcion_moneda'
      LookupDataSet = qyMonedas
      LookupKeyFields = 'R_ID'
      LookupResultField = 'R_DESCRIPCION'
      KeyFields = 'MONEDA'
      Size = 50
      Lookup = True
    end
    object TCapturardescripcion_clasificacion: TStringField
      FieldKind = fkLookup
      FieldName = 'descripcion_clasificacion'
      LookupDataSet = TClasificaciones
      LookupKeyFields = 'ID'
      LookupResultField = 'DESCRIPCION'
      KeyFields = 'CLASIFICACION'
      Size = 50
      Lookup = True
    end
    object TCapturarnombre_vendedor: TStringField
      FieldKind = fkLookup
      FieldName = 'nombre_vendedor'
      LookupDataSet = qyVendedores
      LookupKeyFields = 'R_ID'
      LookupResultField = 'R_NOMBRE'
      KeyFields = 'VENDEDOR'
      Size = 100
      Lookup = True
    end
    object TCapturarnombre_transportista: TStringField
      FieldKind = fkLookup
      FieldName = 'nombre_transportista'
      LookupDataSet = qyTransportistas
      LookupKeyFields = 'R_ID'
      LookupResultField = 'R_NOMBRE'
      KeyFields = 'TRANSPORTISTA'
      Size = 100
      Lookup = True
    end
    object TCapturarnombre_remitente: TStringField
      FieldKind = fkLookup
      FieldName = 'nombre_remitente'
      LookupDataSet = qyRemitentes
      LookupKeyFields = 'R_ID'
      LookupResultField = 'R_NOMBRE'
      KeyFields = 'REMITENTE'
      Size = 100
      Lookup = True
    end
    object TCapturarnombre_forma: TStringField
      FieldKind = fkLookup
      FieldName = 'nombre_forma'
      LookupDataSet = qyCondiciones_Comerciales
      LookupKeyFields = 'R_ID'
      LookupResultField = 'R_NOMBRE'
      KeyFields = 'FORMAS_DE_PAGO'
      Size = 100
      Lookup = True
    end
    object TCapturarrecomendadopor_nombre: TStringField
      FieldKind = fkCalculated
      FieldName = 'recomendadopor_nombre'
      Size = 100
      Calculated = True
    end
  end
  inherited spID: TIBStoredProc
    Left = 208
    Top = 24
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
        Value = 'CLIENTES'
      end>
  end
  inherited TSujetos: TIBTable
    Left = 240
    Top = 55
    object TSujetosFECHA_NAC: TDateTimeField
      FieldName = 'FECHA_NAC'
      DisplayFormat = 'dd/mm/yyyy hh:mm:ss am/pm'
      EditMask = '!99/99/0000;1;_'
    end
  end
  inherited dsSujetos: TDataSource
    Left = 272
    Top = 55
  end
  inherited TTelefonos: TIBTable
    Left = 304
    Top = 55
  end
  inherited dsTelefonos: TDataSource
    Left = 336
    Top = 55
  end
  inherited TDomicilios: TIBTable
    Left = 240
    Top = 85
  end
  inherited dsDomicilios: TDataSource
    Left = 272
    Top = 85
  end
  inherited TContactos: TIBTable
    Left = 432
    Top = 52
  end
  inherited dsContactos: TDataSource
    Left = 464
    Top = 52
  end
  inherited TTelefonosContactos: TIBTable
    Left = 496
    Top = 52
  end
  inherited dsTelefonosContactos: TDataSource
    Left = 528
    Top = 52
  end
  inherited qyCiudades: TIBQuery
    Left = 304
    Top = 85
  end
  inherited dsCiudades: TDataSource
    Left = 336
    Top = 85
  end
  inherited spIDContactos: TIBStoredProc
    Left = 400
    Top = 52
  end
  inherited ilImagenes: TImageList
    Left = 548
    Top = 93
    Bitmap = {
      494C010108000900080020002000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      00000000000036000000280000008000000060000000010020000000000000C0
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
      00000000000000000000000000000000000000000000000000006B6B6B000808
      0800080808000808080008080800080808000808080010101000A5A5A500A5A5
      A5009C9C9C009C9C9C009C9C9C009C9C9C009C949C009C949C008C8C8C007B84
      7B007B737B006B6B6B0018181800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CE948400BD523900CE633900DE6B4200DE735A00E77B
      6300EF7B6300EF7B6300F7847300F77B6B00F7846B00EF7B6B00EF7B6B00D663
      4200C6633900CE633900AD523100AD6B3900C6A58C00F7F7EF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C9C9C004A4A
      4A004A4A4A004A4A4A0042424200424242004242420039393900C6C6C600BDBD
      BD00BDBDBD00BDB5BD00B5ADB500B5ADB500A5ADA500A5ADA500A5ADA500A5A5
      A500A5A5A500A5A5A5004A424A00948C94000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6735A00C66B4200D67B5200DE7B6300F77B6B00EF7B6B00F784
      7300F78C7B00F78C7B00FF8C8400F78C7B00FF8C7B00FF948400FF8C7300B563
      4200C66B4A00FF947B00FF8C8400F7846B00DE6B5200C65A3900D69484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C9C9C005252
      52004A4A4A004A4A4A004A4A4A00424242004239420042424200C6C6C600BDBD
      BD00BDBDBD00B5B5B500ADA5AD00A59CA5009C9C9C009C949C00949494009494
      940094949400949494004A4A4A00949494006B6B6B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6522900DE735200E7735A00EF7B6B00E77B6B00FF8C7B00FF8C
      7B00F78C7B00FF948400FF948400FF948C00FF948C00FF9C8400BD5A3100EFD6
      AD00CE9C7B00E7735A00FF948400F7847B00FF8C7B00EF8C7300DE6B5200CE84
      6300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009A959C00857E7D00918A880099929000ABA5
      A400C4C0C0000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006B6B6B000808
      0800080808000808080008080800080808000808080010101000A5A5A500A5A5
      A500A5A5A500A5A5A5009C9C9C009C9C9C009C9C9C0094949400848484007B7B
      7B00737373001818180000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C9C9C005252
      52004A4A4A004A4A4A004A4A4A004A4A4A004242420042424200BDBDBD00BDBD
      BD00B5B5B500ADADAD009C9C9C008C848C0084848400847B8400847B84007B7B
      7B007B7B7B007B7B7B004A4A4A00948C9400737373008C848C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BD522900DE735A00DE7B6300EF7B6B00FF8C7300F78C7B00F78C
      7B00FF948400FF948400F79C8400FF948C00FFA59400E7735200C6845200FFFF
      EF00EFCEAD00C66B4A00FF9C8400FF8C8400FF8C7B00FF8C7B00F7847300DE6B
      5200DEB5A5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000645F5F006A616100897F7E00978C8700988B87009086
      81008C817F008B818000938B8900A8A1A000C8C3C20000000000000000000000
      00000000000000000000000000000000000000000000000000009C9C9C004A4A
      4A004A4A4A004A4A4A0042424200424242004242420039393900C6C6C600BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00B5B5B500B5B5B500B5B5B500B5B5
      B500B5B5B5004A4A4A009C9C9C00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C9C9C005252
      520052525200525252004A4A4A004A4A4A004A4A4A0042424200BDC6BD00BDBD
      BD00B5B5B5000084840000848400008484000084840000848400008484000084
      840000848400008484000084840000848400008484008C8C8C00948C94000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BD633900E77B6300EF846B00F78C7300FF848400FF8C7B00FF94
      8400FF948400FF9C8C00FF9C8C00FFA59400EF947B00BD5A3900FFEFBD00FFFF
      D600FFEFCE00BD734200FF8C7B00FF9C8C00F7948400F7847B00F78C7B00EF7B
      6B00D67B5A000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000055514F006A6361007E747400847976009C8E8A009F928B009E90
      8A009E908C009E8F8C009A8D8900938784008E83810091878600A09996000000
      00000000000000000000000000000000000000000000000000009C9C9C005252
      52004A4A4A004A4A4A004A4A4A00424242004242420042424200C6C6C600C6C6
      C600BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00B5B5B500B5B5B500B5B5
      B500B5B5B50063636300B5B5B5007B7B7B000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C9C9C005252
      520052525200524A5200524A5200524A52004A4A4A004A4A4A00BDC6BD00BDC6
      BD00B5B5B50084848400FFFFC60000FF0000FFFFC6008484840084848400FFFF
      C60000848400FFFFC60000FF0000FFFFC60000848400ADADAD00BDBDBD00C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      000000000000BD847300EF7B6300EF846B00F7847B00FF8C8400F78C7B00FF94
      8400FF9C8C00FF9C8C00F7AD9C00FFAD8C00C65A3100E7B59400FFFFD600FFEF
      C600FFFFCE00CE9C6B00DE846B00FFA58C00FF948400FF948400F7847B00F784
      7300CE6B42000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000645F7000665F5B008A83800072696700897E7A00A3968F00A3968D00A495
      8D00A2938D00A0928C009E918A009F928B009E918D009C8F8B00958A8600938B
      89000000000000000000000000000000000000000000000000009C9C9C005252
      5200525252004A4A4A004A4A4A004A4A4A004242420042424200C6C6C600C6C6
      C600C6C6C600BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00B5B5B500B5B5
      B500B5B5B50073737300CECECE009C9C9C00ADADAD0000000000000000000000
      00000000000000000000000000000000000000000000000000009C9C9C005A52
      5A0052525200525252005252520052525200524A52004A4A4A00CEC6CE00BDC6
      BD00B5B5B5008484840000FF0000FFFFC60000FF00000000000000000000FFFF
      C6008484840000FF0000FFFFC60000FF0000008484006B6B6B00737B7300847B
      84006B6B6B000000000000000000000000000000000000000000000000000000
      00000000000000000000CE634200FF8C7B00FF847B00FF947B00FF9C8400FFA5
      8C00FFA58C00FFA59400FFB59C00CE634A00C68C6300FFFFCE00F7DEBD00FFE7
      C600FFEFC600DEB58C00E76B5200FFA59400FF9C8400FF948400FF8C8400F784
      7300CE7352000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000524C480099928E0078716F00746C69009E928D00A79A9300A5989100A699
      9100A7979000A4978F00A2968E00A2958E00A1938D009F938D009E938E008980
      7E008D89D50000000000000000000000000000000000000000009C9C9C005252
      520052525200525252004A4A4A004A4A4A004A4A4A0042424200C6C6C600C6C6
      C600C6C6C600C6C6C600BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00B5B5
      B500B5B5B50084848400E7E7E700C6C6C600BDBDBD00ADADAD00000000000000
      00000000000000000000000000000000000000000000000000009C9C9C005A5A
      5A005A525A00525252005252520052525200525252004A4A4A00CEC6CE00CEC6
      CE00B5B5B50084848400FFFFC60000FF000000000000FFFFC600FFFFC6008484
      8400000000000000000000FF0000FFFFC600008484007B7B7B0094949400A5A5
      A500ADADAD000000000000000000000000000000000000000000000000000000
      00000000000000000000CE947300EF7B5A00FF948400FF948400F7948400FFA5
      8C00FFAD9400FFC6A500E77B6300C66B4A00FFE7BD00FFE7BD00FFE7BD00FFDE
      BD00FFEFC600EFCEA500C6634200FFB59C00FFA58C00FF948400FF948400EF84
      6B00D6946B000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000514C
      4A009E9693008B838000706A680092888400B2A6A000ADA09900AC9E9700AA9B
      9400A8989200A7979200A3969100A3979100A4968F00A1958F00A0958F00928A
      86008F8B980000000000000000000000000000000000000000009C9C9C005252
      52005252520052525200525252004A4A4A004A4A4A004A4A4A00C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00B5B5B5009C9C9C00FFFF0000FFFF0000F7F7F700E7E7E700D6D6D6000000
      00000000000000000000000000000000000000000000000000009C9C9C005A5A
      5A005A5A5A005A525A005252520052525200524A520052525200CEC6CE00CEC6
      CE00BDBDBD008484840000FF0000FFFFC60000000000FFFFC600FFFFC600FFFF
      C60000000000000000000000000000FF0000008484007B7B7B0094949400A5A5
      A500ADADAD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C6735A00F78C7300FF948400FFA58C00FFA5
      8C00FFB59400E79C7300B5522900FFD6AD00FFDEBD00FFDEB500FFE7BD00FFE7
      BD00F7DEBD00FFD6AD00C6634200FFAD9400FFA58C00FF948400FF9C8C00CE5A
      3900EFDEC6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007972
      7000ABA3A100847D7A00857C7800BFB2AC00C5B7AF00C4B4AC00C2B1AA00BFAD
      A600B9A7A100B5A49F00AEA19B00A89D9700A6999200A3979100A19690009A90
      8C008E868600C6C4EE00000000000000000000000000000000009C9C9C005A5A
      5A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004A4A4A00CECECE00C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00B5B5B500A5A5A500A5A5A500A5A5A500949494008C8C8C007373
      73000000000000000000000000000000000000000000000000009C9C9C006363
      63005A5A5A005A5A5A005A525A00525252005252520052525200CECECE00CEC6
      CE00BDBDBD0084848400FFFFFF0000000000FFFFC600FFFFC600FFFFC600FFFF
      C600000000000000000000000000FFFFC60000848400737B730094949400A5A5
      A500ADADAD000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CE735200FF8C6B00FFAD9400F7AD
      9C00F7A58C00B55A2900EFBD8C00FFE7B500FFDEB500FFE7B500FFD6B500FFDE
      AD00FFDEB500FFD6AD00BD633900FFAD9C00FFA59400FFA59400E77B5A00CE9C
      7B00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005E575700B3A9
      A800A79F9C0090868400B5A8A200D9C8BF00D5C4BA00D5C4B800D5C4B900D5C2
      B800D3BEB600CFBCB200C9B8AF00C3B4AC00BEAFA800B7A9A200B1A49D00AA9F
      9B00A098960000000000000000000000000000000000000000009C9C9C005A5A
      5A00E7E7E700848484005252520052525200525252004A4A4A00CECECE00CECE
      CE00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00B5B5B500B5B5B500B5B5B500B5B5B500B5B5B5008484
      84000000000000000000000000000000000000000000000000009C9C9C006363
      63005A5A5A005A5A5A005A5A5A005A5A5A005252520052525200CECECE00CECE
      CE00BDBDBD008484840000FF0000FFFFC6000000000000840000FFFFC6000000
      000000000000000000000000000000FF000000848400847B84008C948C009CA5
      9C00A5A5A5000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C67B5A00EF7B5200FFA5
      8C00D6633900FF947300BDADAD00847B9C00736B94007373940073739C00DEB5
      A500FFD6AD00F7BD9C00CE633100FFB59C00EF9C7B00DE734A00D6AD94000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008E8C8B00857C7D00C0B5
      B400AAA09D00A89C9800D0C2BA00D9C7BD00D9C8BA00D8C8B700DCCBBC00DDCB
      BD00DFC9BD00DDC9BA00DCCABC00DDCBBE00D9C8BB00D5C5BB00D0C0B600CCBF
      B700B9B1AC0000000000000000000000000000000000000000009C9C9C005A5A
      5A00E7E7E7006363630052525200525252005252520052525200CECECE00CECE
      CE00CECECE00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00B5B5B500B5B5B500B5B5B500B5B5B5009C9C
      9C000000000000000000000000000000000000000000000000009C9C9C006363
      63006363630063636300636363005A5A5A005A5A5A0052525200CECECE00CECE
      CE00BDBDBD0084848400FFFFC60000FF000000000000FFFFC600FFFFC6000000
      0000000000000000000000000000FFFFC600008484007B7B7B00948C9400949C
      94009CA59C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DEB5AD00B56B
      390094634A00525A94002939940031429400394A9C00394A9C00313994002139
      84005A5A8C00DE8C8400CE6B3900E79C7B00DEAD9C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000605C5B00BAB1AE00BEB2
      AF00A99D9A00BDB1AC00D3C6BD00DBC9BD00DDCBBB00DDCAB600E0CCB800E0CE
      BA00E1CFB900DFCAB500DFCDB700E1CFBA00E2CFBD00E3D1C200E4D2C500E1D2
      C900CEC5C10000000000000000000000000000000000000000009C9C9C006363
      63005A5A5A005A5A5A005A5A5A00525252005252520052525200CECECE00CECE
      CE00CECECE00CECECE00C6C6C600C6C6C600C6C6C600C6C6C600BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDB5BD00B5B5B500B5B5B500B5B5B5009C9C
      9C000000000000000000000000000000000000000000000000009C9C9C006B6B
      6B006363630063636300636363005A5A5A005A5A5A005A5A5A00CECECE00CECE
      CE00C6C6C6008484840000FF0000FFFFC6000000000000000000000000000000
      00000000000000000000FFFFC60000FF0000008484007373730084848400948C
      94008C948C000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A59C
      9C003939390029314A00425A9C00425AAD00395AAD00425AA500425AA5004263
      A500394AA5008484B50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008A8788008A838100C8BFB900B6AC
      A600ADA19D00CDBFB900D5C7BC00DCCABB00E4D1BD00DFCEB900DECCB500E4D1
      B900E3CFB600E1CDB300E3CFB300E1CBB200E4D0BA00E6D3C100EBDBCD00DACE
      C600DCD6D70000000000000000000000000000000000000000009C9C9C006363
      63008C8C8C00EFEFEF00FFFFFF00EFEFEF008C8C8C0052525200CECECE00CECE
      CE00CECECE00C6C6C600C6C6C600BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00B5B5B500B5B5B500B5B5B500B5B5B500BDB5BD00B5B5B500B5B5B5009C9C
      9C000000000000000000000000000000000000000000000000009C9C9C006B6B
      6B006B6B6B008C948C00EFEFEF00FFFFFF00EFEFEF008C8C8C00CECECE00CECE
      CE00C6C6C60084848400FFFFC60000FF0000FFFFC60000000000000000000000
      000000000000FFFFC60000FF0000FFFFC600008484006B6B6B00737373007B7B
      7B00847B84000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009C9C9C004A4A4A00313131004239
      39005A5A5A007B737300737B8C007B8CBD007B94BD007B94BD008494BD006B84
      B5005273A50031429400A5A5BD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000067625F00C2B9B500C4B9B300ACA1
      9C00BDB0AB00D0C0B900D1C2B900D4C4B800DECCBE00E2CEBE00DFCCB900E3CF
      BB00E6D0B900E4CFB500E2CEB300DFC9AE00E2CDB600DFCDBB00E4D6CC00CFC7
      C1000000000000000000000000000000000000000000000000009C9C9C006363
      6300F7F7F7007B7B7B00FFFFFF0084848400F7F7F70052525200D6D6D600CECE
      CE00CECECE00C6C6C600BDBDBD00B5B5B500ADADAD00ADADAD00A5A5A500A5A5
      A500ADADAD00A5A5A500ADADAD00ADADAD00B5B5B500BDB5BD00B5B5B5009C9C
      9C000000000000000000000000000000000000000000000000009C9C9C006B6B
      6B006B6B6B00F7F7F7007B847B00FFFFFF0084848400F7F7F700D6D6D600CECE
      CE00CECECE008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400848484000084840000848400008484000084
      8400008484000084840000848400008484000000000000000000000000000000
      00000000000000000000C6C6C6004A4242003931310039393900636363008C84
      84006B7394005A6BA5004A73C6004263B5004A6BBD005273BD004A6BBD007B8C
      C600BDBDC600637BA50021398C00EFE7E7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008F8B8900958D8900D1C6C100BAAFAA00AEA3
      9E00C9BCB600CCBEB700CEBFBA00D2C3C100D6C7C600DCCBC800DECEC900DFCE
      C500E0CDBE00E4CFBA00DFC9B100E1CCB300E1CEB800DFD0C200D2C7C200B8B4
      E9000000000000000000000000000000000000000000000000009C9C9C006B6B
      6B00F7F7F7007B7B7B00FFFFFF005A5A5A00FFFFFF005A5A5A00D6D6D600CECE
      CE00C6C6C600BDBDBD00A5A5A5009C9C9C00949494008C8C8C008C8C8C008C8C
      8C008C8C8C008C8C8C00949494009C9C9C00A5A5A500B5B5B500BDB5BD009C9C
      9C000000000000000000000000000000000000000000000000009C9C9C006B6B
      6B006B6B6B00F7F7F7008C8C8C00FFFFFF0063636300FFFFFF00D6D6D600CED6
      CE00CECECE00CECECE00C6C6C600C6C6C600BDBDBD00BDB5BD00BDB5BD00ADAD
      AD0084848400FFFFC60000FFFF00FFFFC6008484840084848400FFFFC6000084
      8400FFFFC60000FFFF00FFFFC600008484000000000000000000000000000000
      000000000000BDBDBD0029212100393939004A4A4A007373730073736B003142
      63005273CE004A73CE00527BC6005273C6005273C6005273C6005273C6004A73
      C600527BC6005A7BC6004A6BC60073739C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000006C676300CCC1BC00C9BDB700AEA39F00BCB1
      AC00CABEBA00D0C4C400CCBFC500B6A9B600A295A4009F92A300AC9FB300CABC
      CD00D9CACC00DECCC400E2CFBC00E5D0BB00E0CDBE00DACCC400D1C9C6000000
      00000000000000000000000000000000000000000000000000009C9C9C006B6B
      6B0094949400E7E7E700FFFFFF0063636300BDBDBD005A5A5A00D6D6D600CECE
      CE00BDBDBD00ADADAD008C8C8C00737373006B6B6B0063636300636363006363
      630063636300636363006B6B6B00848484009C9C9C00ADADAD00B5B5B5009C9C
      9C000000000000000000000000000000000000000000000000009C9C9C007373
      73006B6B6B0094949400E7E7E700FFFFFF0063636300BDBDBD00D6D6D600CED6
      CE00CED6CE00CECECE00CECECE00CECECE00CECECE00CECECE00C6BDC600BDB5
      BD008484840000FFFF00FFFFC60000FFFF000000000000000000FFFFC6008484
      840000FFFF00FFFFC60000FFFF00008484000000000000000000000000000000
      000000000000212118004A4A4A0063636300949494006B6B6B00313131004A6B
      B5005273C6005A84BD005273CE00527BCE00527BCE00527BCE005A84D600527B
      D600527BCE005273C600527BCE00314A9400F7EFE70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000908D89009C948D00D8CBC500BEB2AC00B0A4A000C7BB
      BB00CDC2C600AAA0AD006D6474004C43580041394D00362E4400473E5C00655D
      7F00B7AAC000DECFD200E3D0C600DECCBE00DECFC400CEC3BE00000000000000
      00000000000000000000000000000000000000000000000000009C9C9C006B6B
      6B00FFFFFF006B6B6B006363630063636300636363005A5A5A00D6D6D600CECE
      CE00BDBDBD000000000000000000000000000000000000000000000000000000
      00000000000000000000000000006B6B6B0094949400ADADAD00B5B5B5009C9C
      9C000000000000000000000000000000000000000000000000009C9C9C007373
      73006B6B6B00848484006B6B6B006B6B6B006B6B6B007B847B00DED6DE00CED6
      CE00CED6CE00CED6CE00CECECE00CECECE00CECECE00CECECE00C6C6C600BDB5
      BD0084848400FFFFC60000FFFF0000000000FFFFC600FFFFC600848484000000
      00000000000000FFFF00FFFFC600008484000000000000000000000000000000
      00007B7373004239390042424200A5A5A5007B7B7B004A42420039394A005A7B
      CE00527BCE004A84DE005A84D6005284D6005284D6005284D6005284D6005284
      D6005284D6005A84D6004A84D6004A6BC6009CA5B50000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006F676300D6C8C100D2C3BC00B2A7A200BCB1B200C7BC
      C500918798004F485A003E38440058535A00656266005754590035313D00514C
      6600675E8100D3C4D200E2CFC900DECEC500D4C9C100D7D3CF00000000000000
      0000000000000000000000000000000000000000000000000000E7E7E700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0063636300D6D6D600CECE
      CE00BDBDBD0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000636363008C8C8C00A5A5A500B5B5B5009CA5
      9C000000000000000000000000000000000000000000000000009C9C9C007373
      73006B6B6B00EFEFEF00ADADAD00736B7300B5B5B500E7E7E700DED6DE00D6CE
      D600C6CEC600C6C6C600BDC6BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00ADAD
      AD008484840000FFFF00FFFFC60000000000FFFFC600FFFFC600FFFFC6000000
      0000000000000000000000FFFF00008484000000000000000000000000000000
      0000524A4A004A4A4A004A4A4A00B5B5B5005A5A5A0052524A00394252005A84
      DE00528CD6005284D6005A8CD6005A8CDE005A8CDE005A8CDE005A94DE005A8C
      DE005A8CDE00528CD6005284D6005284D6006B73A50000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000095909200A5999300E1D1CA00C3B5B000B0A5A400C3B9C1009389
      9B00574F6100443E4700645F6200696465006B6666006B666600787376008983
      930062587C00B8A8BA00E4D3CE00DDCFC700CBC4BF0000000000000000000000
      0000000000000000000000000000000000000000000000000000EFEFEF007373
      7300FFFFFF006B6B6B006B6B6B006B6B6B006363630063636300EFEFB500CECE
      CE00BDBDBD0000000000FFFFFF0000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF0000000000636363008C8C8C00ADADAD00B5B5B5009CA5
      9C000000000000000000000000000000000000000000000000009C9C9C007373
      73007373730084848400F7F7F700F7F7F700EFE7EF007B7B7B00D6CED600C6BD
      C600BDBDBD00ADB5AD00ADB5AD00ADB5AD00ADADAD00ADADAD00A5A5A5009C9C
      9C0084848400FFFFC60000000000FFFFC600FFFFC600FFFFC600FFFFC6000000
      00000000000000000000FFFFC600008484000000000000000000000000000000
      0000393939005A5252004A4A4A00BDBDBD005A5A5A005A5A5A0039424A00528C
      DE005A94DE005A94E7006394E7005A94E7005A9CE7005A94E7005A94E7005A94
      E7005A94E7005A94E7005A8CDE00528CDE006B7BAD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000079716C00DCCEC500D5C5BE00B4A7A500BCB2B9009C93A5007B73
      86004F48510066606100625E5C00645F5F00635F5E00726E6D007F7A7B00B3AF
      BA00786F8E00B3A4B400E1D1CC00D1C5BF00E3DEDC0000000000000000000000
      00000000000000000000000000000000000000000000000000009C9C9C007373
      7300737373006B6B6B006B6B6B006B6B6B006B6B6B0063636300D6D6D600E7E7
      AD00BDBDBD0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000636363008C8C8C00A5A5A500BDBDBD009CA5
      9C000000000000000000000000000000000000000000000000009C9C9C007B7B
      7B0073737300848C8400F7F7F700EFEFEF00EFEFEF0073737300C6C6C600B5AD
      B500A59CA5009C949C008C948C008C948C008C948C008C8C8C008C8C8C008484
      84008484840000FFFF00FFFFC6000000000000840000FFFFC600000000000000
      0000000000000000000000FFFF00008484000000000000000000000000000000
      0000394239005A5A5A0052525200B5B5B5005A5A5A0063635A00393142005A94
      DE005A9CEF005A9CEF005A9CE7005A9CEF005A9CEF005A9CEF005A9CEF005A9C
      EF005A9CEF005A9CEF005A94E7005294EF005A73B50000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009A989400A79D9500E5D5CC00C9BAB400B5A8AB00ACA2B000918A9C006C67
      73007B757800827C7C007A75750077717200757171007D7979006A686900D3CF
      DC00726A8500C1B3BF00D8CBC600D4CBC7000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C9C9C007373
      73009C9C9C00EFEFEF00FFFFFF00EFEFEF009C949C006B6B6B00D6D6D600D6D6
      D600CECE9C0000000000FFFFFF00000000000000000000000000000000000000
      000000000000FFFFFF0000000000636363008C8C8C00A5A5A500BDBDBD009CA5
      9C000000000000000000000000000000000000000000000000009C9C9C007B7B
      7B007B7B7B00EFEFEF00A5ADA50073737300B5B5B500E7E7E700848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      840084848400FFFFC60000FFFF0000000000FFFFC600FFFFC600000000000000
      00000000000000000000FFFFC600008484000000000000000000000000000000
      000052524A005A5A52005A5A5A00B5B5B50063635A006B6B6B00393939005A84
      C6005A9CF7005AA5EF0063A5F70063A5F70063ADF70063ADF7005AA5F70063AD
      F70063A5F7005AA5EF005A9CEF005AA5F7005A73AD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007E787200DACCC200DACBC000B9ADA700B9ADB200978FA100968F9F00635D
      6300857F8000807A7B00797374007B7576008B858600635F6000A09DA400B7B3
      C800766B8600D7C8D000CDC2BF00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C9C9C007B7B
      7B00F7F7F7008C948C00FFFFFF008C8C8C00F7F7F7006B6B6B00DEDEDE00D6D6
      D600BDBDBD0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000636363008C8C8C00ADADAD00BDBDBD00ADA5
      AD000000000000000000000000000000000000000000000000009C9C9C007B7B
      7B007B7B7B00FFFFFF0073737300737373006B6B6B008484840084848400FFFF
      C600FFFF0000FFFFC60000000000FFFFC6008484840084848400FFFFC600FFFF
      00008484840000FFFF00FFFFC600000000000000000000000000000000000000
      000000000000FFFFC60000FFFF00008484000000000000000000000000000000
      00005A5A5A005A5A5A005A5A5A00B5B5B500636363007373730042424A005263
      94006BB5FF0063ADF70063A5F70063B5FF006BB5FF006BB5FF0063B5FF006BB5
      FF006BADFF0063ADF70063A5F7005AA5F700637BAD0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A29E
      9C00A89E9600E3D3C800CBBCB300B2A6A300B3A8B1009993A9008C869300413C
      3E00706C6B006963640067616200756F7000686463005C585C00BDB7C8006E66
      8400ADA0B400D1C4C800D9D2D100000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C9C9C007B7B
      7B00F7F7F7008C948C00FFFFFF0073737300FFFFFF006B6B6B00DEDEDE00D6D6
      D600BDBDBD0000000000FFFFFF00000000000000000000000000000000000000
      000000000000FFFFFF00000000006363630094949400ADADAD00BDBDBD00ADA5
      AD000000000000000000000000000000000000000000000000009C9C9C00B5B5
      B500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEDEDE0084848400FFFF
      0000FFFFC600FFFF000000000000FFFFC6000000000000000000FFFF0000FFFF
      C60084848400FFFFC60000FFFF00FFFFC6000000000000000000000000000000
      0000FFFFC60000FFFF00FFFFC600008484000000000000000000000000000000
      0000737373005252520063636300B5B5B5006B6B6B0073737300736B63003939
      420063A5F70063ADF7006BB5FF006BB5FF0063B5FF0063B5FF006BB5FF0063B5
      FF006BB5FF0063B5FF0063ADF7005AA5F7006B84B50000000000000000000000
      000000000000000000000000000000000000000000000000000000000000897E
      7B00D6C8BF00DBC9C000BBACA700B6AAAB00ACA1AD00A09AB000A6A1AD002621
      210057524F005C585500605C5B00544F4F00525053008985930072698300887D
      9600D0C4CC00C9C1C10000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C9C9C007B7B
      7B00A59CA500EFEFEF00FFFFFF0073737300C6C6C6006B6B6B00DEDEDE00D6D6
      D600BDBDBD0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000006B6B6B0094949400B5B5B500BDBDBD00ADAD
      AD000000000000000000000000000000000000000000000000009C9C9C008484
      840084848400FFFFFF007B7B7B007B7B7B00737B7300DEDEDE0084848400FFFF
      C600FFFF0000000000008484840084848400FFFFC600FFFFC60000000000FFFF
      0000848484008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400008484000000000000000000000000000000
      0000C6C6C6003939310063636300B5B5B5007B7B7B007373730084847B004A4A
      4A00314A73004A7BC6005284D6006394EF00639CF7005A9CEF006BB5F7006BB5
      FF006BB5FF0063B5FF0063B5FF0063A5FF007B8CB50000000000000000000000
      0000000000000000000000000000000000000000000000000000D4D0CE00AEA1
      9B00E2D4C800CBBAB200B4A6A300BAAEAF00B1A7B0008E879E00E4DEEC005C57
      5900342F2E00433E3F00403C3C004D4A4E0063606C005954690083798F00C9BD
      C700C8BDBE000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C9C9C008484
      84007B7B7B007B7B7B007B7B7B00737373007373730073737300DEDEDE00D6D6
      D600C6C6C60000000000FFFFFF00000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000007B7B7B009C9C9C00B5B5B500C6C6C600ADAD
      AD000000000000000000000000000000000000000000000000009C9C9C008484
      840084848400848484007B7B7B007B7B7B007B737B00636B630084848400FFFF
      0000000000008484840084848400FFFFC600FFFFC600FFFFC60000000000FFFF
      C600FFFF000084848400848484009C9C9C00B5B5B500BDBDBD00BDBDBD00BDBD
      BD00BDBDBD000000000000000000000000000000000000000000000000000000
      000000000000393131006B6B6B009C9C9C008C8C8C007B737300737B84008C8C
      7B00524A4200393931003131390031395A004A63A5005284D600528CEF005A94
      E70063A5EF005AA5F7006BBDFF00427BB5007B7B840000000000000000000000
      0000000000000000000000000000000000000000000000000000E0DCD900D8CB
      C400E0D2C700B9ACA600B7AAA900BAADAD00BCB0B5008D859800B3ACC000D0CB
      DA0079747E006561690045414C00433E4D00564F600092889900C3B8C000C6BB
      BA00D5CDCC000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C9C9C008484
      8400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0073737300E7E7E700DEDE
      DE00C6C6C60000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      000000000000000000000000000094949400ADADAD00BDBDBD00C6C6C600B5B5
      B5000000000000000000000000000000000000000000000000009C9C9C008484
      84008484840084848400848484007B7B7B007B737B00736B730084848400FFFF
      C600000000008484840084848400FFFFC600FFFFC600FFFFC600FFFFC6000000
      0000FFFFC600848484008C948C00A5A5A500BDBDBD00C6C6C600CECECE00CECE
      CE00CEC6CE000000000000000000000000000000000000000000000000000000
      0000000000009C9494004242420084848400D6D6D6005A5A52007B7B7B007B84
      84008C8C94009C9494008C8484006B6B6300393931003131420039427300425A
      9C00425A94004A5A9C00424A730018181800CEC6BD0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D0C7
      C300B8ADA800ADA29F00BBAEAE00BCAFAF00BBADB000BAACB800968CA0009F96
      AC009D95A8007F778600736A79008B809000B4A8B500C2B6BB00C3B6B600C8BF
      BC00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C9C9C008484
      8400E7E7E7009C9C9C007B7B7B007B7B7B007B7B7B0073737300E7E7E700DEDE
      DE00CECECE0000000000FFFFFF000000000000000000FFFFFF00FFFFFF000000
      0000FFFFFF00000000008C8C8C00ADADAD00BDBDBD00CECECE00C6C6C600B5B5
      B5000000000000000000000000000000000000000000000000009C9C9C008C8C
      8C008484840084848400848484007B7B7B007B7B7B00FFFFFF0084848400FFFF
      000000000000848484008484840084848400FFFFC600FF00000084848400FFFF
      C600FFFF0000848484008C948C00ADB5AD00BDBDBD00CECECE00CECECE00CECE
      CE00CECECE000000000000000000000000000000000000000000000000000000
      000000000000000000004A42390063636300BDB5B5008C8C8C007B7B7B008484
      8400949494009C9C9C00ADADAD00B5B5B500ADA5A5007B7B73005A5A5200524A
      4A00524A4A004A4A4A005A5A5200524A4A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B2ADAC00A19B9A00A29A9A00A79D9D00ACA1A200B7AAAD00BBAEB600B1A8
      B200ADA3B000B5A9B400C1B4BC00C9BBBF00C3B6B600BFB2B000C1B7B400DDD9
      D900000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C9C9C008484
      8400E7EFE70084848400848484007B7B7B007B7B7B007B7B7B00E7E7E700E7E7
      E700D6D6D60000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000009C9C9C00ADADAD00BDBDBD00CECECE00CECECE00CECECE00B5B5
      B5000000000000000000000000000000000000000000000000009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009494940084848400FFFF
      C60000000000848484008484840084848400FFFFC600FFFFC60084848400FFFF
      0000FFFFC6008484840094949400ADB5AD00C6C6C600CECECE00CECECE00D6D6
      D600CECECE000000000000000000000000000000000000000000000000000000
      00000000000000000000E7D6D6003939310073737300DED6DE00736B73008C8C
      8C00949494009C9C9C00ADADAD00BDBDBD00D6D6D600C6C6C600ADA5A5009C94
      94008C8C8C00847B7B006B6B6B009C9C9C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C0BCD400BEB8BA0098919200A49D9D00A49C
      9F00A59EA200A89EA300A99EA100ACA1A100B2A6A500BAB2B000C8C4E0000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C9C9C008C8C
      8C00848484008484840084848400848484007B7B7B007B7B7B00EFEFEF00E7E7
      E700DEDEDE000000000000000000000000000000000000000000000000000000
      0000BDBD8C00B5B5B500C6C6C600CECECE00CECECE00CECECE00CECECE00B5B5
      B500000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400FFFF
      0000FFFFC600000000008484840084848400848484008484840084848400FFFF
      C600FFFF00008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C6BDBD00393931008C8C9400C6C6C6007373
      730094949400A5A5A500A5A5A500A5A5A500B5B5B500C6C6C600ADADAD009C9C
      9C008C8C8C007373730052525200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0DEDF00A09E9E00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C00FFFF0000FFFF
      0000FFFF0000F7F70000EFEF0000E7E70000E7E70000DEDE0000DEDE0000E7E7
      0000EFEF0000F7F70000F7F70000FFFF0000FFFF0000FFFF0000FFFF0000E7E7
      E700000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400FFFF
      C600FFFF0000FFFFC60000000000000000000000000000000000C6C6C600FFFF
      0000FFFFC6008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EFE7E7003939310084848400CECE
      CE007B847B0094949400B5B5B500ADADAD009C9C9C00949494008C8C8C008484
      84006B6B6B0063636300D6D6CE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CFCFCF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A5A5A500736B
      6B00A5A5A500A5A5A500949494008C8C8C0084847B00737373006B736B008484
      8400BDBDBD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E7E7EF00DEDEDE00D6D6D600D6D6D600D6D6
      D600D6D6D600D6DED600DEDEDE00E7E7E7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EFEFEF00DEDEDE00CECECE00C6C6C600CECECE00D6D6D600E7E7E7000000
      0000000000000000000000000000000000000000000000000000E7E7E700D6D6
      CE00CECECE00D6D6D600E7EFEF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EFEFEF00CED6
      CE00B5B5B500BDBDBD00D6D6D600EFEFEF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DEE7DE00C6C6C600ADADAD009494940084848400848484008484
      8400848484008C8C8C009C9C9C00B5B5B500C6C6C600D6DEDE00EFE7E7000000
      0000000000000000000000000000000000000000000000000000EFE7E700D6D6
      CE00ADADAD00948C94007B7B7B006B6B6B006B6B6B0084848400A5A5A500CECE
      CE00EFEFEF0000000000000000000000000000000000DEE7E700ADADAD007B7B
      7B00737373008C8C8C00BDBDBD00E7E7E7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EFEFEF00CED6
      CE00B5B5B500BDBDBD00D6D6D600EFEFEF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EFEF
      EF00CECECE009C9C9C007373730042734200217B210010841000108410001084
      100010841000187B1800297329004A6B420073737300948C8C00B5B5AD00D6D6
      D600EFEFEF0000000000000000000000000000000000E7E7E700B5BDBD008484
      84007B6363009C5A5A00B55A5A00CE5A5A00C6635A00AD5A5A00845A5A008484
      8400BDC6C600EFEFEF00000000000000000000000000CECECE0052845200008C
      0000009400001084100073847300D6D6D6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7E7E700BDBDC6008C84
      84008C636300736B6B008C8C8C00BDB5B500DEDED600EFEFEF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EFEFEF00BDC6
      C6008C8C8C00317B31000094000010AD180031CE4A0042DE6B004AE773004AE7
      73004AE7730039D6520021BD390008A5100000940000187B18004A734A008C8C
      8C00C6C6C600E7E7EF000000000000000000EFEFEF00BDBDBD0084737300B55A
      5A00CE6B6B00E7949400F7C6C600FFDEDE00FFE7E700F7CEC600D6737300BD63
      5A0084848400C6C6CE00EFEFEF000000000000000000C6C6C6000094000042DE
      6B0031CE6B0018B5310000940000C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E7E7E700B5B5B5007B737B00AD5A
      63008C7B9C009C738C009C5A5A00736B6B0094949400C6BDBD00DEDEDE00EFEF
      EF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CECECE00848C
      84001084100010AD18004AE773005AF794004AE7840042DE7B0039D6730039D6
      6B0039DE730042DE73004AE77B0052EF8C0052E77B0029C6420008A508001884
      18007B847B00C6CEC600EFEFEF0000000000DED6DE00948C8C00C6636300E794
      9400FFC6C600FFC6C600FFB5BD00FFB5B500FFBDBD00FFDEDE00FFEFF700DE94
      8C00BD5A5A009C949400DED6D6000000000000000000C6C6CE00009400007BFF
      AD0029CE630039D6730000940000C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E7E7E700ADB5B50084737300B5636B006373
      CE00298CFF0008BDFF0042ADCE00B5737B00945A5A007373730094949400BDBD
      BD00DEDEDE00EFEFEF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7E7E700A5A5A500188C
      180021BD39005AF78C004AE77B0039D6730039D6730039DE730039DE730039D6
      6B0039D66B0039D66B0039D66B0031CE6B0029C65A0042DE73005AF78C0018BD
      3100108C1000949C9400E7DEDE0000000000D6D6CE00BD6B6B00EF8C8C00FFB5
      B500FFADAD00FFADAD00FFADAD00FFADAD00FFA5A500FFA5A500FFADAD00FFE7
      E700DE848400A5636300ADADAD00E7E7E70000000000C6C6C6000094000073FF
      AD0029C6630039D6730000940000C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EFEFEF00BDBDBD0084737300BD636B004A73E700397B
      FF00397BFF00397BFF00219CFF0008C6FF004AA5C600AD737300945A63007373
      730094949400C6C6BD00DEDEDE00EFEFEF000000000000000000000000000000
      0000000000000000000000000000000000003931310039393900393939003931
      3100292118001008000010080000100800001008000010080000100808003921
      08008C632100BD946300BD9C7300BD9C7300BD9C7300BD9C7300BD9C7300B59C
      7300B59463009C6321006B420800391800003921000039210000422108004221
      00004A2100004A210000634221007B634A000000000000000000000000000000
      00000000000000000000000000000000000000000000D6D6D600528C4A0008A5
      10005AF78C0042E77B0042DE730042DE730042DE730042DE7B0042DE730042DE
      730039DE730039D6730039D66B0031D66B0010AD210018B5310031CE6B005AF7
      8C0018B52100398C3900CECED60000000000D6D6D600BD6B6B00F7A5A500FFB5
      B500FFB5B500DE7B7B00E78C8C00FFB5B500FFB5B500FFB5AD00FFADAD00FFBD
      BD00FFD6D600CE6363008C737300BDC6C600EFEFEF00C6C6C6000094000073FF
      A50031CE630031D66B0000940000C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C6C6C6008C7B7B00AD636B00396BC6002973E700397B
      FF00397BFF00397BFF00397BFF00397BFF002194FF0008BDFF009C7B8C00C663
      630094635A007373730094949400C6BDC600DEDEDE00EFEFEF00000000000000
      000000000000000000000000000000000000F7EFEF00D6D6D600CECECE00EFEF
      EF00DEDED6006363630010080000100800001008000018080000291000007B4A
      18009C631800AD845200EFE7D600FFFFFF00F7FFFF00FFFFFF00FFFFF700EFDE
      C600AD844A00945A10008C5A10005A3108003921000042210000422100004221
      00004A2108004A2908009C847300FFFFF7000000000000000000000000000000
      00000000000000000000000000000000000000000000D6CED6000894080042DE
      6B004AE7840042DE730042DE7B0042E77B004AE77B004AE77B0042E77B0042DE
      7B0042DE730042DE730039DE730031CE630039B5390021AD210031CE630031CE
      6B004AE76B0008940800CEC6C60000000000E7E7E700C6737300EF9C9C00FFBD
      BD00DE735A00CE5A6B00CE636300CE636300EF8C8C00FFBDBD00FFBDBD00FFB5
      B500FFCEC600EFADAD00BD5A5A00948C8C00D6D6D600C6C6C6000094000073FF
      AD0029C6630031D66B0000940000CEC6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D6D6D60094948C00B5636300D67373008C6B8C004284CE00186B
      CE002973DE003173F700397BFF00397BFF00397BFF008C6BA5008C849C0094EF
      EF00A5BDBD00B5737300945A6300736B6B0094949400B5B5B500D6D6D600EFEF
      EF0000000000000000000000000000000000FFFFFF006B6B6B0021211800ADAD
      AD00FFFFFF00DEDED60018101000100800001008000010080000523100008C5A
      1800945A1000945A1000AD7B4200F7F7E700FFFFFF00FFFFFF00EFE7D6009C73
      3900945A080094631000946310007B4A08004221000042210000422100004A21
      00004A2100004A2900009C847300FFFFFF000000000000000000000000000000
      00000000000000000000000000000000000000000000D6D6D6001094100039D6
      630042E773004AE77B004AE77B004AE784004AE77B004AE77B004AE784004AE7
      7B004AE77B0042DE7B0042DE730010AD1800B5DEB5007BC67B0021BD390031CE
      6B0042DE7B00009C0000CECECE0000000000DEE7E700B58C9400CE6B7300C663
      6B00F79C1800FF941000E7732900CE636B00C6636300CE636300EF9C9400FFC6
      C600FFBDBD00FFCECE00DE848400A56363009CA59C00A5A5A5000094000073FF
      AD0029CE630039D6730000940000C6C6BD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DEE7E700A5A5A500A5636300E79C9C00FFCECE00F7DEE700FFFFFF00D6E7
      F7007BADE700297BCE002173D6002973EF00946BA5007B8C9C0000CEFF0000CE
      FF0031DEFF0084FFFF00ADC6C600BD7B7300945A5A00736B6B008C8C8C00B5B5
      B500D6D6D600EFEFEF000000000000000000FFFFFF005A525200080000009C9C
      9400FFFFFF00D6CECE00101008001808000010080000180800006B4210009463
      1800945A100094631000945A1000CEBD9C00FFFFFF00FFFFFF00CEB58C008C5A
      10009C631000945A1000946310008C5210004A290000422100004A2100004A21
      00004A2100004A2900009C8C7300FFFFFF000000000000000000000000000000
      00000000000000000000000000000000000000000000DEDEE700219C210031CE
      520042E77B004AE77B004AE784004AEF840052EF840052EF840052EF84004AEF
      84004AE77B004AE77B0031CE52004AB54A0000000000C6E7C60010AD210031CE
      630029C66300009C0000D6CED60000000000D6D6D60094847300B55A6300C65A
      6B00F7A55200FFFFF700FFD68C00FFA51000F7841800D66B4A00C65A6B00CE6B
      6B00EFA5A500FFD6CE00FFCECE00CE6363007B63630063636B00009C000052EF
      730031CE6B0039D6730000940000BDBDBD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6C6C60094737300DE848C00FFCECE00FFEFEF00FFFFF700FFD6D600FFE7
      DE00FFF7F700FFFFFF00ADCEEF00849CB500317BA50000ADE70000C6F70000CE
      FF0000CEFF0000CEFF0039DEFF0073F7FF0084ADBD00A5737B009C5A5A00736B
      6B008C8C8C00B5B5B500D6DED60000000000FFFFFF00ADADAD0094949400EFEF
      EF00D6D6D6004A42420008080000180800001008000021100000734A1000945A
      100094631000945A1000945A1000B5946B00FFFFFF00FFFFFF00B5946300945A
      0800945A1000945A100094631000945A180052310800422100004A2100004A21
      00004A210000522908009C8C7300FFFFFF000000000000000000000000000000
      00000000000000000000DEDEE700DEDEDE00E7E7E700EFE7E7005AA55A0021BD
      31004AE77B004AEF840052EF840052EF8C0052EF8C0052EF8C0052EF840052EF
      84004AEF840042DE730010A51800E7EFE700000000000000000010A5180031CE
      6B0021BD4A00189C1800DEDEDE0000000000CEC6C600FF9C0000FF940000EF84
      1800F7A54A00FFFFFF00FFFFFF00FFFFFF00FFEFCE00FFC65200F78C0800DE73
      3900C65A6300CE6B7300EFA5AD00D6737300CE5A5A00A55A5200428418000894
      000008AD180000A50800009C000094AD9400E7E7E70000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEDE
      DE009C949400C66B6B00FFC6CE00FFE7E700FFFFF700FFD6D600FFD6D600FFCE
      D600FFCECE00FFD6D600FFE7E700FFFFFF00E7EFF70084CEE70018A5D600009C
      D60000B5EF0000CEFF0000C6FF0000A5DE00318CB500B56B7300CE636300CE63
      63009C5A5A0084736B00B5B5B500E7E7E700FFFFFF00BDBDBD00ADADAD00F7F7
      F700D6D6D60042393100100800001008000010080000211000007B4A1000945A
      1000945A1000945A1000945A1000BD9C6B00FFFFFF00FFFFF700B5945A00945A
      1000945A1800945A100094631000945A10005A310800422100004A2100004A21
      08004A290800522908009C8C7300FFFFFF000000000000000000000000000000
      000000000000D6D6D600A5A5A50094949400ADADAD00C6C6C60094B5940000A5
      10004AE7840052EF840052F784005AF78C005AF78C005AF78C005AF78C0052EF
      8C004AE77B0008AD1800B5DEBD0000000000000000000000000021AD210031CE
      630010B529004A9C4A00E7E7E70000000000C6C6C600FF940000FFF7EF00FFC6
      6300FFB53900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFC6
      7300FF9C1800EF841800D66B5200CE636300FFF7F700EFC6CE00E7848C00D652
      63008C6B39004A842100089C00006B846B00ADADAD00C6C6C600DEDEDE00E7EF
      EF00000000000000000000000000000000000000000000000000EFEFEF00BDBD
      BD009C6B6B00EF9C9C00FFDEDE00FFFFFF00FFDEDE00FFD6DE00FFD6D600FFD6
      D600FFD6D600FFD6D600FFD6D600FFD6D600FFDEDE00FFEFF700FFFFFF00ADDE
      EF0052BDDE00009CCE00009CCE0042CEAD0063FF9C0084DE8C00B58C7300CE6B
      6300CE636300CE636B00B57B7B00D6D6D600FFFFFF00635A5A0010100800BDBD
      BD00FFFFFF00A59C9C00100800001008000018080000211000006B4A10009463
      10008C5A1800DED6BD00E7D6BD008C5A31009C6B4A009C6B4A008C5A29007B39
      00007B3900007B3900007B3900007B3900006B31000063290000632900006329
      00006B2900006B2900007B4A21009C6B4A000000000000000000000000000000
      0000DEDEDE00A5A5A5009C6B6300A55A5A00846363007B737B00848484000894
      100031CE520052EF84005AF78C005AF794005AFF940063FF94005AF78C005AF7
      8C0018BD31009CD69C000000000000000000000000000000000021A5210031CE
      6B0000A508008CBD8C000000000000000000CEC6C600FF940000FFFFFF00FFFF
      FF00FFC67300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7
      F700F7DEE700F7BD8C00F7A52100CE5A6300FFFFFF00FFEFEF00FFFFFF00FFF7
      F700F7BDBD00E7737B00C65A5A00A5525A007B635A007373730094949400B5B5
      B500CECECE00DEDEDE0000000000000000000000000000000000D6DEDE009C8C
      8C00D6737300FFCED600FFFFFF00FFEFEF00FFDEDE00FFDEDE00FFDEDE00FFDE
      DE00FFDEDE00FFDEDE00FFDEDE00FFDEDE00FFDEDE00FFDEDE00FFDEDE00FFEF
      EF00FFFFFF00DEF7FF005AEFA5005AF78C0042DE73004AE7840063FF940084DE
      8C00B58C7300CE636300846B6B00ADADAD00FFFFFF006B6B6B0039313100DEDE
      DE00FFFFFF00948C8C001008000010080000180800001808000052310800945A
      10009C630800DECEBD00E7DECE009C6B42009C6B4A009C6B4A009C6B4200844A
      10007B3900007B3900007B390000733900006329000063290000632900006329
      00006B31080073390800845229009C6B4A00000000000000000000000000EFEF
      EF00C6BDC600946B6B00DE949400F7E7E700E79CA500BD6B6B008C5A5A00426B
      310008A510004AEF7B005AF78C0063F7940063FF94005AF78C0042DE6B0018AD
      210029AD29007BC67B0073C67B0094CE9400CEE7CE000000000008AD180021BD
      4A00109C1000DEE7E7000000000000000000C6C6CE00FF940000FFFFFF00FFFF
      FF00FFC66B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFEF
      EF00F7D6D600EFC6C600E7A5AD00D65A5A00FFFFFF00FFC6C600FFC6C600FFDE
      DE00FFF7F700FFFFFF00FFF7EF00EFBDB500CE6B7300C65A5A009C5A5A007363
      63007B7B7B009C9C9C00C6C6C600EFE7EF000000000000000000C6C6BD00A56B
      6B00EFA5A500FFE7E700FFF7FF00FFE7E700FFE7E700FFE7E700FFE7E700FFE7
      E700FFE7E700FFDEE700FFE7E700FFE7E700FFE7DE00FFDEDE00FFDEDE00FFDE
      DE00FFDEDE00F7E7DE0063E78C0039CE6B0031CE6B0029CE630031D66B004AE7
      840063FF94007BDE8C00AD846B00AD8C8C00F7F7EF00B5B5EF004A31E7005231
      E7004221D6002108B5000000AD00C6B5C600CEC6C600CEC6C600D6CEC600E7DE
      CE00E7DECE00FFFFF700FFFFF7009C6B4A009C6B4A009C6B4A009C6B4A009C63
      4200844A18007B3908007B3900006B31000063290000632900006B2900006329
      0000844A2100946339009463420094634200000000000000000000000000DEDE
      DE0094949400CE6B730000000000FFE7E700FFEFEF00FFF7F700EFC6C600DE84
      84003994210018BD31005AF78C005AF794004AE7730021BD730008A58C00089C
      9C00089CC60021A5B50029ADAD0052BD94007BC67B008CCE8C0010AD210008A5
      08007BBD8400000000000000000000000000C6C6C600FF940000FFFFFF00FFFF
      FF00FFC66B00FFFFFF00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7EF
      E700F7D6D600E7BDC600E79C9C00CE5A5A00FFFFFF00FFC6CE00FFD6CE00FFCE
      CE00FFCECE00FFCEC600FFDEE700FFF7F700FFFFFF00FFE7E700E7A5A500CE63
      6300BD5A5A008C5A5A008C848400CED6D60000000000E7E7E700A5A5A500CE73
      7300FFD6CE00FFFFFF00FFEFEF00FFEFEF00FFE7E700FFCECE00FFDEDE00FFEF
      E700FFE7E700FFEFEF00FFE7E700FFE7EF00FFE7E700FFE7E700FFE7E700FFE7
      E700FFE7E700FFDEE70063D6840031CE630031CE630031CE630031CE630031CE
      6B0031D66B0052DE7B00A59C7B00CE7373006363BD001808B5001008B5002100
      B5001800B5001800AD001800AD00A5A5BD00CEC6C600CEC6C600CEC6C600D6D6
      C600E7DECE00FFF7F700E7DECE00844A1000844A1000844A1000844A1000844A
      1800844A10007B42080073390000632900006329000063290000632900006B29
      00006B3100006B3108006B3108006B3108000000000000000000EFEFEF00BDB5
      BD00A56B6B00EFCEC600FFF7F700FFDEDE00FFDED600FFD6D600FFE7E700FFD6
      D600EFADAD00219C100021BD310039D6840008A5B50029B5DE0063D6F70073DE
      FF007BE7FF007BE7FF0063D6F70029B5DE0010A5BD0021AD4A00009C100029A5
      2900E7EFEF00000000000000000000000000C6C6C600FF940000FFFFFF00FFFF
      FF00FFC66B00FFFFFF00FFD6D600FF949400FFADAD00FFD6DE00FFF7F700F7E7
      E700F7D6D600EFBDBD00DE9C9C00CE635A00FFFFFF00FFCECE00EFA5A500FFC6
      C600FFD6D600FFD6D600FFCECE00FFCECE00FFCECE00FFE7E700FFFFFF00FFFF
      FF00F7D6D600DE949400CE636300C6C6C60000000000CED6D6009C737B00E79C
      9C00FFE7E700FFF7F700FFEFEF00FFEFEF00FFEFEF00FFCECE00FFB5B500FFBD
      BD00FFD6D600FFE7EF00FFEFEF00FFEFEF00FFEFEF00FFEFEF00FFEFEF00FFE7
      E700FFE7E700FFE7E700A5DEAD004ACE730031CE630031CE630031CE630031CE
      6300739C6300C6736B00DEB5AD00000000002121AD001800AD001800AD000000
      AD000000AD001800AD001800AD00ADA5BD00C6BDC6009C9CBD003121AD007B7B
      B500DED6C600F7F7EF00E7D6BD007B3900008C4A1000A57B5200AD7B5A00A57B
      5200844221007331000094735A00946B5200946B52007B5239006B2900006B29
      00007B4A21009C735200632908008C5A4A000000000000000000DEDEDE009C8C
      8C00CE7B7B00FFFFFF00FFE7E700FFE7DE00FFDEDE00FFDEDE00FFDEDE00FFD6
      D600FFB5B500F7ADA500319C4200009CC6005ACEF7006BD6FF006BD6FF0073D6
      FF006BD6FF0073DEFF0073DEFF007BE7FF0063D6F700009CC60010943900B5BD
      B50000000000000000000000000000000000C6C6C600FF940000FFFFFF00FFFF
      FF00FFC66B00FFFFFF00FFFFFF00FFFFFF00FFF7F700FFCECE00FFA59C00F7E7
      E700EFCECE00EFBDBD00E79C9C00CE5A6300FFFFFF00FFCECE00C65A5A00C65A
      5A00CE6B6B00E7949C00FFD6CE00FFCECE00FFCECE00FFCECE00FFC6CE00FFCE
      CE00FFE7E700FFFFF700CE5A5A00C6C6C60000000000BDBDBD00B56B6300FFBD
      C600FFFFFF00FFEFEF00FFEFEF00FFDEDE00FFE7E700FFF7F700FFF7F700FFE7
      E700FFCECE00FFBDBD00FFC6C600FFDEDE00FFEFEF00FFF7EF00FFEFEF00FFEF
      EF00FFEFEF00FFEFE700FFE7E700FFE7E700B5DEB5005ACE7B0039C66B009C84
      6300CE848400E7E7E70000000000000000003129BD001808BD004239BD00ADAD
      C600B5ADC6001808BD002908BD006B63C6003931BD002108BD002908BD002108
      BD00CECEC600F7F7F700E7D6C6008442100094633100E7DEC600A5734A00C6AD
      9400DED6C6006B392900D6CEC600B59C8C009C735200D6CEC600BDA59C006B31
      1000D6C6BD00D6CEC6009C7352009C6B520000000000EFEFEF00C6BDC600AD6B
      6B00EFC6C600FFF7FF00FFEFEF00FFE7EF00FFE7E700FFE7E700FFE7DE00FFDE
      DE00FFC6C600FFADAD00299CCE0052C6F7006BCEFF006BCEFF006BD6FF006BCE
      FF006BCEFF006BCEFF0073D6FF0073DEFF007BE7FF0063DEF7001094C600A5A5
      A500E7E7E700000000000000000000000000C6C6C600FF940000FFFFFF00FFFF
      FF00FFC66B00FFFFFF00FFCEC600FFBDBD00FFEFE700FFFFFF00FFF7F700F7E7
      E700EFCECE00EFB5B500DE9C9C00CE635A00FFFFFF00FFD6D600C65A5A00FFAD
      A500F7948C00C65A5200FFD6D600FFCECE00FFCECE00FFCECE00FFCECE00FFCE
      CE00FFCECE00FFD6D600CE5A5A00C6C6C600DEE7E700A59C9C00D67B7B00FFDE
      E700FFFFFF00FFE7EF00FFEFEF00FFD6DE00FFBDBD00FFBDBD00FFD6D600FFEF
      EF00FFFFFF00FFFFFF00FFE7E700FFCECE00FFE7E700FFF7F700FFEFEF00FFF7
      F700FFEFEF00FFEFEF00FFEFEF00FFEFEF00FFE7E700FFDEE700CE7B7300D6AD
      AD00000000000000000000000000000000008C84EF00EFEFFF00FFFFFF00635A
      EF004A4AEF005239EF005239EF00F7F7FF00F7F7FF00A5A5F7005239EF005239
      EF004242EF00EFE7FF00FFFFFF009C6B4A00AD8C6B00FFFFFF00AD7B5A009463
      4A00FFFFFF00CEB5AD00FFFFFF00D6BDBD009C6B4A00EFE7E700FFFFFF00844A
      4A00FFFFFF00CEB5AD00EFE7E70094634A0000000000DEDEDE009C9C9C00CE7B
      7B00FFFFFF00FFF7F700FFF7F700FFEFF700FFEFEF00FFEFEF00FFE7EF00FFE7
      E700FFC6C6009CA5B50031B5E7006BD6FF006BD6FF006BD6FF006BD6FF006BD6
      FF006BD6FF006BD6FF0063CEFF006BD6FF0073DEFF007BE7FF0042BDE7005294
      A500D6D6D600000000000000000000000000C6C6C600FF940000FFFFFF00FFFF
      FF00FFC66B00FFFFFF00FFFFFF00FFDEDE00FFC6C600FF9C9C00FFADAD00F7E7
      DE00EFCECE00EFB5B500DE949400CE636300FFFFFF00FFD6D600D6635A001008
      94001839FF00D6635200FFD6D600FFCECE00FFCECE00FFCECE00FFCECE00FFCE
      CE00FFCECE00FFD6D600CE5A5A00CEC6C600D6D6D600A57B7B00E79C9C00FFEF
      EF00FFEFEF00FFE7E700FFEFE700FFEFEF00FFEFEF00FFEFE700FFCECE00FFBD
      BD00FFBDC600FFD6D600FFF7F700FFFFFF00FFFFFF00FFFFFF00FFCECE00FFBD
      BD00FFCED600FFEFEF00FFEFEF00FFEFEF00FFE7E700D6848400DEBDB5000000
      0000000000000000000000000000000000004A39EF004239EF00ADADF7004239
      EF005239EF005239EF004A39EF00DEDEF700F7F7F700FFFFFF004A39EF005239
      EF005239EF00ADADF700FFFFFF009C6B4A00AD8C6B00FFFFFF00AD7B63008C5A
      5200FFFFFF0094635200FFFFFF00D6BDBD0094634A00FFFFFF00E7D6CE00BD9C
      8400FFFFFF0094634A00FFFFFF0094634A0000000000CECECE009C737300EFBD
      BD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7F700FFF7F700FFEFF700FFEF
      EF00FFB5AD00429CC6005ACEFF0073DEFF0073DEFF0073DEFF007BDEFF0073DE
      FF0073DEFF0073D6FF006BD6FF006BCEFF006BD6FF0073DEFF006BDEFF002194
      BD00D6D6D600000000000000000000000000CEC6C600FF940000FFFFFF00FFFF
      FF00FFB54200FFDEAD00FFFFF700FFFFFF00FFFFFF00FFFFFF00FFEFEF00F7DE
      DE00EFC6C600E7B5B500DE949400D65A5A00FFFFFF00FFDEDE00DE635A000000
      94000031FF00D65A5200FFD6DE00FFCECE00FFCECE00FFCECE00FFCECE00FFCE
      CE00FFCECE00FFD6D600C65A5A00C6C6C600C6C6C600B56B6B00F7BDBD00FFFF
      FF00FFE7E700FFE7E700FFC6C600FFCECE00FFDEDE00FFF7EF00FFF7F700FFF7
      F700FFE7E700FFD6CE00FFD6D600FFFFFF00FFFFFF00FFF7F700FFFFFF00FFEF
      EF00FFD6D600FFE7E700FFF7F700FFEFE700D67B8400DEC6C600000000000000
      0000000000000000000000000000000000004A39EF005239EF004A39EF00F7F7
      FF00F7F7FF00F7F7FF00F7F7F7004A39EF005239EF00BDBDF700847BEF004A39
      EF005239EF003939EF00FFFFFF009C6B4A00AD8C6B00FFFFFF00AD7B5A00EFEF
      E700AD8C6B0094634A00FFFFFF00D6BDBD00B58C7B00EFEFE7008C524A00EFDE
      DE00FFFFFF0094634A00E7D6CE00AD847B00EFEFEF00B5B5B500C66363000000
      0000FFF7F700FFFFF700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFE7
      EF00FFB5B500319CCE0073D6FF0073DEFF007BE7FF007BE7FF0084E7FF0084E7
      FF007BE7FF0073DEFF0073D6FF006BD6FF006BD6FF0073D6FF007BE7FF002194
      BD00D6D6D600000000000000000000000000CECECE00FF940000FFFFFF00FFFF
      FF00FFEFDE00FFC67300FFA52900FF9C2100FFC66300FFE7B500FFEFE700F7DE
      E700EFC6CE00E7ADB500DE949400D6635A00FFFFFF00FFE7E700FFE7E7000000
      8C000031FF00E78C7B00FFDEDE00FFD6D600FFD6D600FFD6D600FFCECE00FFCE
      CE00FFCECE00FFD6D600C6635A00CEC6C600BDBDBD00CE6B6B00FFDEDE00FFF7
      F700FFDEDE00FFE7E700FFDEDE00FFCECE00FFBDBD00FFB5B500FFCECE00FFDE
      DE00FFF7F700FFF7F700FFF7F700FFF7FF00FFEFF700FFB5BD00FFCECE00FFE7
      E700FFFFFF00FFFFFF00FFF7FF00D6848400D6ADAD0000000000000000000000
      000000000000000000000000000000000000524AEF005239EF004239EF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF005239EF005239EF003939EF00635AEF005239
      EF005239EF003939EF00FFFFFF009C6B4A00AD847B00FFFFFF009C6B4A00A57B
      7B00FFFFFF00844A4A00FFFFFF00D6BDAD0094634A00FFFFFF009C635A00FFFF
      FF00D6BDBD009C6B4A00B5948400EFDEDE00DEDEDE00A58C8C00DE949400FFFF
      FF00FFEFEF00FFD6D600FFD6DE00FFEFEF00FFFFFF00FFFFFF00FFFFFF00FFEF
      EF00FFB5B500219CCE0073DEFF007BE7FF0084E7FF0084EFFF0084EFFF0084EF
      FF0084E7FF007BE7FF0073DEFF006BD6FF006BCEFF006BD6FF0073DEFF002194
      BD00D6D6D600000000000000000000000000DEE7E700FF940000FFD69400FFF7
      DE00FFFFFF00FFFFFF00FFFFFF0000000000F7C6A500F7AD5200F79C2100FFA5
      1800FFAD4A00EFAD7300DE8C8C00CE6B6300FFFFFF00FFEFEF00FFF7F7000000
      8C000029FF00FFEFE700FFDEE700FFDEDE00FFDEDE00FFDEDE00FFD6DE00FFD6
      D600FFD6D600FFDEDE00CE5A5A00C6C6C600B5A5A500DE848400FFEFEF00FFEF
      EF00FFDEDE00FFDEDE00FFE7DE00FFE7E700FFE7E700FFDEDE00FFCECE00FFBD
      BD00FFB5B500FFE7E700FFF7F700FFF7F700FFF7FF00FFF7F700FFE7E700FFD6
      DE00FFFFFF00FFFFFF00E7A5A500CE9C9C00EFEFEF0000000000000000000000
      0000000000000000000000000000000000005A5AEF004239EF008C84EF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00635AEF005239EF005239EF004A39EF004239
      EF008484EF00CECEF700FFFFFF009C6B4A00B58C7B00FFFFFF00FFFFFF00FFFF
      FF00C6AD9C0094634A00FFFFFF00FFFFFF00FFFFFF00EFE7DE00B5948400FFFF
      FF009C6B4A009C6B4A0094634A00FFFFFF00D6CECE00A5737300EFC6C600FFF7
      F700FFEFEF00FFDEDE00FFC6CE00FFB5B500FFBDBD00FFD6CE00FFE7E700FFE7
      E700FFBDB50042A5C60018ADDE0018ADD60021ADDE0029B5DE0042C6E7004ACE
      EF0063D6F70084E7FF007BDEFF0073DEFF006BD6FF006BCEFF0063D6FF00299C
      C600E7E7E70000000000000000000000000000000000EFCEA500F7AD4A00FF94
      1000FF9C0800FFB54A00FFD69400FFE7CE00F7DEE700EFC6D600E7B5BD00DE94
      A500EF845A00F78C3100F7842100DE8C9400FFFFFF00FFF7F700FFF7F7000000
      8C000029FF00FFF7EF00FFEFEF00FFE7E700FFE7E700FFE7E700FFE7E700FFE7
      E700FFDEDE00FFE7E700CE5A5A00C6C6C600AD8C8C00E79C9C00FFFFFF00FFDE
      DE00FFD6D600F7BDBD00FFCECE00FFDEDE00FFE7DE00FFE7E700FFE7E700FFE7
      E700FFE7E700FFEFEF00FFEFEF00FFCECE00FFCEC600FFDEDE00FFF7F700FFFF
      FF00FFFFFF00F7D6D600C67B7B00E7EFEF000000000000000000000000000000
      000000000000000000000000000000000000A5A5F7005A4AEF00DEDEF700FFFF
      FF00FFFFF700FFFFFF00FFFFFF00C6C6F7004242EF004A4AEF008C8CEF00C6BD
      F700FFFFFF00FFFFFF00FFFFFF009C6B4A009C6B4A009C6B4A009C6B4A009C6B
      4A009C6B4A009C6B4A009C6B4A009C6B4A009C6B4A009C6B4A009C6B4A009C6B
      4A009C6B4A009C6B4A009C6B4A009C6B4A00BDC6BD00BD636300FFF7F700FFE7
      E700FFDEDE00FFD6D600FFE7E700FFEFE700FFE7E700FFCECE00FFBDBD00FFCE
      C600FFB5B5007BADC6000094CE00009CCE00009CCE00009CCE00009CCE000094
      CE000094CE000094CE0021ADDE004AC6EF006BD6FF006BD6FF0031B5EF0084BD
      CE00000000000000000000000000000000000000000000000000000000000000
      0000EFE7DE00EFCE9400E7A54200FF8C0800FF9C0000FFA52900EFA55A00E794
      7B00E77B8400DE737B00D66B7300EFC6C600FFFFFF00FFFFFF00FFFFFF000000
      8C000029FF00FFF7F700FFF7F700FFF7F700FFEFEF00FFEFEF00FFEFEF00FFE7
      E700FFE7E700FFEFEF00CE5A5A00C6C6C600AD7B7B00F7B5B500FFFFFF00FFCE
      D600D67B7B00CE636300CE636300F7B5B500FFDEDE00FFDEDE00F7C6C600F7D6
      D600FFE7E700FFE7E700FFE7E700FFE7E700FFD6D600FFC6C600FFEFEF00FFF7
      F700FFEFEF00CE7B7B00DECECE00000000000000000000000000000000000000
      000000000000000000000000000000000000ADA5F7004A39EF00524AEF00EFEF
      FF00FFFFFF00FFFFFF00DEDEF700524AEF006363EF00F7F7FF00B5B5F7005A5A
      EF00FFFFFF00FFFFFF00FFFFFF009C6B4A009C6B4A009C6B4A009C6B4A009C6B
      4A009C6B4A009C6B4A009C6B4A009C6B4A009C6B4A009C6B4A009C6B4A009C6B
      4A009C6B4A009C6B4A009C6B4A009C6B4A00B5ADAD00DE8C8C00FFFFFF00FFDE
      DE00FFD6CE00FFB5BD00FFADB500FFBDBD00FFCECE00FFDEDE00FFEFEF00FFEF
      EF00FFBDBD00E7B5B500009CCE00009CCE00009CCE00009CCE000094CE00008C
      C600008CBD000084BD000084B500008CBD00089CD60039B5EF00189CCE00E7E7
      E700000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DED6DE00C66B8400F78C8400F7945A00FF942900FF94
      1800DE7B8400E77B7300D66B6B00FFFFFF00FFF7FF00FFF7F700FFFFFF000000
      8C000029FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7F700FFF7F700FFF7
      F700FFEFEF00FFF7F700CE5A5A00CECEC600BD737300FFCECE00FFF7F700FFCE
      CE00CE63630018BDEF0000ADDE00CEA5AD00FFD6D600D67B7B00CE636300CE63
      6300EFBDBD00FFE7E700FFE7E700F7C6C600FFD6D600FFEFEF00FFEFEF00FFEF
      EF00E7ADAD00C694940000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005239EF005239EF005239EF005239
      EF004239EF003939EF005239EF003939EF00CECEF700FFFFF7003939EF005239
      EF00BDBDF700FFFFFF00FFFFFF009C6B4A009C6B4A009C6B4A009C6B4A009C6B
      4A009C6B4A009C6B4A009C6B4A009C6B4A009C6B4A009C6B4A009C6B4A009C6B
      4A009C6B4A009C6B4A009C6B4A009C6B4A00A58C8C00EFB5AD00FFF7F700FFDE
      DE00FFDEDE00FFDEDE00FFDEDE00FFCECE00FFC6C600FFB5B500FFC6C600FFE7
      E700FFCECE00FFADB50073A5BD00009CCE00009CCE00009CC6000094C600008C
      BD000084B5000084B500007BAD000073A5000073A5000094CE00B5CED6000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EFEFE700CE848400DE737B00F7949400EF848C00E77B
      8400E77B7B00DE737300FFEFEF00FFFFFF00FFEFEF00FFEFEF00FFF7F7000000
      8C000029FF00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFF7F700CE5A5A00D6D6D600C6737300FFF7F700FFFFFF00FFDE
      DE00E79C9C008C9CB50000C6F7007BB5CE00FFD6CE00CE63630018C6EF0000AD
      DE00CEA5AD00FFDEDE00DE7B7B00CE636300CE636B00EFBDBD00FFE7EF00FFE7
      E700CE7B7300DEDED60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005239EF00635AEF008484EF003939
      EF003939EF005239EF005239EF00A59CF700F7F7F700E7E7FF005239EF005239
      EF00736BEF00FFF7FF00FFFFFF009C6B4A009C6B4A009C6B4A009C6B4A009C6B
      4A009C6B4A009C6B4A009C6B4A009C6B4A009C6B4A009C6B4A009C6B4A009C6B
      4A009C6B4A009C6B4A009C6B4A009C6B4A00AD7B7B00F7CECE00FFE7E700FFD6
      D600FFD6D600FFDED600FFD6DE00FFDEDE00FFDEDE00FFDEDE00FFDEDE00FFDE
      E700FFDEE700FFB5B500EFADB5004A9CC600009CCE000094C600008CC6000084
      BD000084B500007BAD000073AD00007BAD000094BD006BB5D600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DED6D600C6636300EF949400F7A5A500F7A5
      A500F7B5B500FFF7F700FFFFFF00FFE7E700FFE7E700FFE7E700FFEFEF000000
      8C000029FF00FFF7EF00FFF7F700FFF7F700FFF7F700FFF7F700FFFFFF00FFFF
      FF00FFFFFF00F7D6D600BD6B6B00DEE7DE00D69C9C00D67B7B00DE949C00EFB5
      B500EFD6CE008CD6EF0000BDEF0084BDDE00FFDEE700E79C9C008CA5B50000C6
      F7007BB5D600FFDED600CE63630018BDEF0000ADDE00CEADB500FFE7E700E7A5
      A500C69CA5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005239EF004A4AEF00B5B5F700FFFF
      FF00FFFFFF007B73EF005239EF004A39EF004A39EF005239EF005239EF005239
      EF00EFE7FF00FFFFFF00FFFFFF009C6B4A009C6B4A009C6B4A009C6B4A009C6B
      4A009C6B4A009C6B4A009C6B4A009C6B4A009C6B4A009C6B4A009C6B4A009C6B
      4A009C6B4A009C6B4A009C6B4A009C6B4A00B5736B00FFEFE700FFDEDE00FFD6
      D600FFD6D600FFD6D600FFD6D600FFFFFF00FFFFFF00FFEFEF00FFE7E700FFDE
      DE00FFDEDE00FFCECE00FFADAD00FFADAD008C8CA500219CC6000094CE000094
      C600008CBD00008CC600089CC60042ADD600ADD6E70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DEC6BD00CE636300DE9C9C00E7BD
      BD00F7E7E700FFEFEF00FFDEDE00FFDEDE00FFDEE700FFDEDE00FFEFE7000000
      8C000029FF00FFEFE700FFEFE700FFF7E700FFF7EF00FFEFEF00FFF7EF00FFF7
      F700FFF7FF00DE9C9C00C69C94000000000000000000DEDEDE0039B5D6004A84
      A5007B7B840008C6FF0000ADDE00848C9C00DE9C9C00EFBDBD008CD6EF0000BD
      EF0084C6DE00FFE7E700E79C9C008CA5B50000C6F70084BDD600FFDEDE00CE73
      6B00DED6D6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005239EF005239EF004A39EF008C8C
      EF00ADA5F7009C94F700524AEF005239EF005239EF005239EF005239EF004239
      EF00FFFFFF00FFFFFF00FFFFFF009C6B4A009C6B4A009C6B4A009C6B4A009C6B
      4A009C6B4A009C6B4A009C6B4A009C6B4A009C6B4A009C6B4A009C6B4A009C6B
      4A009C6B4A009C6B4A009C6B4A009C6B4A00BD6B6B00FFFFFF00FFD6D600FFCE
      CE00FFCECE00FFD6CE00E7949400C6737300D6848400E7ADAD00EFCECE00FFFF
      FF00FFF7FF00FFEFF700FFD6D600FFB5B500CE737300E7E7E70000000000C6DE
      E700ADD6E700CEE7EF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EFE7EF00DEB5B500CE8C
      8C00CE6B6B00C65A5A00D6737300E78C8C00E79C9C00F7BDBD00FFDEDE000000
      8C000039FF000829FF003952FF00425AFF008C94F700FFEFE700FFE7EF00FFEF
      F700F7CECE00C65A5A00E7DEDE000000000000000000EFEFEF004ACEEF0000CE
      FF0000CEFF0000B5EF00299CC60029BDDE00428CA500737B8C0008C6F70000AD
      DE008C8CA500E7ADAD00EFC6C6008CD6EF0000BDEF007BC6DE00EFB5B500C68C
      8C00EFEFEF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D6737300FFFFFF00FFEFF700FFE7
      E700FFDEDE00FFCECE00D67B7B00D6CECE00EFE7E700DEBDBD00D69C9C00CE7B
      7B00DE8C8C00E7BDBD00F7E7E700E7ADAD00CEA5A50000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E7CECE00D6ADAD00CE8C8C00CE7B7300DE635A000000
      94000031FF002994FF002184FF00186BFF000021FF00FFE7E700FFE7DE00EFAD
      AD00CE636300D6B5B50000000000000000000000000000000000000000008CD6
      E70073BDDE008CCEDE00EFEFEF0052CEEF0000CEFF0000CEFF0000B5EF00219C
      C60029B5DE004A8CA500737B8C0008C6F70000ADDE00848C9C00D6848400DECE
      D600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D68C8C00CE7B7B00DE8C8C00E7B5
      B500EFCED600FFEFEF00C67B7B00DEDEE7000000000000000000000000000000
      0000EFDEDE00D6B5B500D6949400D6848400EFEFEF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D6D6D6000000
      94000029FF0039ADFF0031A5FF0039ADFF000021FF00D6635200CE5A5A00CE7B
      8400E7CECE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008CCEE7006BBDDE008CCEDE00EFEF
      EF004ACEEF0000CEFF0000CEFF0000BDEF0029A5CE00E7DEE700E7CECE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F7E7E700E7C6
      C600D6A5A500D68C8C00D6A5A500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E7EFEF001010
      9C000839FF000029FF000029FF000029FF000831FF00E7EFEF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008CCEE7006BBDDE0094C6DE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000080000000600000000100010000000000000600000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
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
      00000000000000000000000000000000FFFFFFFFC00000FFFC00003FFFFFFFFF
      FFFFFFFFC000007FF800001FFFFFFFFFE00003FFC000003FF800000FFFFE07FF
      C00001FFC000001FF8000007FFFC007FC00000FFC000000FF8000007FFF8001F
      C000007FC0000007F8000007FFF0000FC000003FC0000003FC000007FFF00007
      C000001FC0000003FC000007FFE00007C000000FC0000003FE000007FFE00003
      C0000007C0000003FF00000FFFC00007C0000007C0000003FF80001FFF800007
      C0000007C0000003FFC0007FFF800007C0000007C0000003FFE003FFFF000007
      C0000007C0000003FF0001FFFF00000FC0000007C0000000FC0000FFFE00000F
      C0000007C0000000F80000FFFE00001FC0000007C0000000F800007FFC00003F
      C0000007C0000000F000007FFC00003FC0000007C0000000F000007FF800007F
      C0000007C0000000F000007FF800007FC0000007C0000000F000007FF00000FF
      C0000007C0000000F000007FF00001FFC0000007C0000000F000007FE00001FF
      C0000007C0000000F000007FE00003FFC0000007C0000000F000007FC00007FF
      C0000007C0000003F800007FC00007FFC0000007C0000003F800007FE0000FFF
      C0000007C0000003FC0000FFF0000FFFC0000007C0000007FC0000FFFE001FFF
      C0000007FFC003FFFE0001FFFF3FFFFFC000000FFFC003FFFF0001FFFF7FFFFF
      FFFFFFFFFFC003FFFFC007FFFFFFFFFFFFFE00FFF01FC1FFFFC0FFFFFFFFFFFF
      FFF8001FC00780FFFFC0FFFFFFFFFFFFFFE00007800380FFFF803FFFFFFFFFFF
      FFC00003000180FFFF000FFFFFFFFFFFFFC00001000180FFFE0003FFFFFFFFFF
      FF800001000080FFFC0000FF00000000FF800001000000FFFC00003F00000000
      FF800001000000FFF800000F00000000FF800001000000FFF000000300000000
      FF800081000000FFF000000100000000FC0000C10000007FE000000000000000
      F80001C10000000FC000000000000000F00003C300000003C000000000000000
      E000004300000000C000000000000000E2000007000000008000000000000000
      C0000007000000008000000100000000C000000F000000008000000300000000
      80000007000000000000000F0000000080000007000000000000001F00000000
      80000007000000000000003F0000000010000007000000000000007F00000000
      00000007010000000000007F000000000000000780000000000000FF00000000
      0000000FF0000000000001FF000000000000000FFC000000000003FF00000000
      0000001FFC000000000003FF000000000000003FFE000000000007FF00000000
      0000007FFF000001800007FF00000000000023FFFF800001800007FFFFFFFFFF
      00007FFFFFFC0003E0000FFFFFFFFFFF00F07FFFFFFFC007FF001FFFFFFFFFFF
      C1FFFFFFFFFFC03FFFF8FFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  inherited opImagen: TOpenPictureDialog
    Left = 698
    Top = 27
  end
  inherited pmImagen: TPopupMenu
    Top = 91
  end
  inherited spAUTO_FOLIO: TIBStoredProc
    Left = 384
    Top = 501
  end
  inherited spMODIFICAR_FOLIO: TIBStoredProc
    Left = 351
    Top = 501
  end
  inherited spDAME_TEL_PRINCIPAL: TIBStoredProc
    Left = 284
    Top = 501
  end
  inherited qyCuentas: TIBQuery
    Left = 222
  end
  inherited dsCuentas: TDataSource
    Left = 254
  end
  object dsMonedas: TDataSource
    DataSet = qyMonedas
    Left = 752
    Top = 501
  end
  object dsBancos: TDataSource
    DataSet = qyBancos
    OnDataChange = dsBancosDataChange
    Left = 208
    Top = 85
  end
  object spDelBanco: TIBStoredProc
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    StoredProcName = 'DEL_BANCO_CLIENTE'
    Left = 176
    Top = 85
    ParamData = <
      item
        DataType = ftInteger
        Name = 'P_BANCO'
        ParamType = ptInput
        Value = '0'
      end>
  end
  object qyMonedas: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT *'
      'FROM VER_MONEDAS')
    Left = 720
    Top = 501
  end
  object qyVendedores: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT *'
      'FROM VENDEDORES')
    Left = 496
    Top = 501
  end
  object dsVendedores: TDataSource
    DataSet = qyVendedores
    Left = 528
    Top = 501
  end
  object qyCondiciones_Comerciales: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT *'
      'FROM VER_CONDICIONES_COMERCIALES')
    Left = 560
    Top = 501
  end
  object qyTransportistas: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT *'
      'FROM TRANSPORTISTAS')
    Left = 448
    Top = 93
  end
  object qyRemitentes: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT *'
      'FROM REMITENTES')
    Left = 624
    Top = 501
  end
  object dsCondiciones_Comerciales: TDataSource
    DataSet = qyCondiciones_Comerciales
    Left = 592
    Top = 501
  end
  object dsTransportistas: TDataSource
    DataSet = qyTransportistas
    Left = 480
    Top = 93
  end
  object dsRemitentes: TDataSource
    DataSet = qyRemitentes
    Left = 656
    Top = 501
  end
  object dsClasificaciones: TDataSource
    DataSet = TClasificaciones
    Left = 633
    Top = 27
  end
  object TClasificaciones: TIBTable
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
        Name = 'DESCRIPCION'
        DataType = ftString
        Size = 50
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY16'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end>
    StoreDefs = True
    TableName = 'CLASIFICACIONES'
    UniDirectional = False
    Left = 600
    Top = 27
  end
  object qyBancos: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = dsFuente
    ParamCheck = True
    SQL.Strings = (
      'SELECT *'
      'FROM VER_BANCOS_CLIENTE'
      'WHERE R_CLIENTE = :ID')
    Left = 208
    Top = 55
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptUnknown
      end>
    object qyBancosR_ID: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_ID'
      ReadOnly = True
    end
    object qyBancosR_CLIENTE: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_CLIENTE'
      ReadOnly = True
    end
    object qyBancosR_CLAVE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_CLAVE'
      ReadOnly = True
      Size = 50
    end
    object qyBancosR_NOMBRE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_NOMBRE'
      ReadOnly = True
      Size = 100
    end
    object qyBancosR_CUENTA: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_CUENTA'
      ReadOnly = True
      Size = 50
    end
  end
  object TExtensiones: TIBTable
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    AfterEdit = TExtensionesAfterEdit
    AfterPost = TExtensionesAfterPost
    BeforeOpen = TExtensionesBeforeOpen
    OnCalcFields = TExtensionesCalcFields
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'SUJETO_CLIENTE'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'FECHA_ALTA'
        DataType = ftDateTime
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
        Name = 'FOTO'
        DataType = ftBlob
        Size = 8
      end
      item
        Name = 'FIRMA'
        DataType = ftBlob
        Size = 8
      end
      item
        Name = 'LIMITE_CREDITO'
        DataType = ftFloat
      end
      item
        Name = 'DOMICILIO'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'PROVEEDOR'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DIRECCION'
        DataType = ftInteger
      end
      item
        Name = 'TRANSPORTISTA'
        DataType = ftInteger
      end
      item
        Name = 'RFC'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'FLAG_FACTURAR'
        Attributes = [faFixed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'REMITENTE'
        DataType = ftInteger
      end
      item
        Name = 'TELEFONO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CUENTA'
        DataType = ftInteger
      end
      item
        Name = 'CURP'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ESTATUS'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'MANO_I_IMG_IND'
        DataType = ftBlob
        Size = 8
      end
      item
        Name = 'MANO_I_HUE_IND'
        DataType = ftBlob
        Size = 8
      end
      item
        Name = 'MANO_I_VER_IND'
        Attributes = [faFixed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'MANO_I_IMG_PUL'
        DataType = ftBlob
        Size = 8
      end
      item
        Name = 'MANO_I_HUE_PUL'
        DataType = ftBlob
        Size = 8
      end
      item
        Name = 'MANO_I_VER_PUL'
        Attributes = [faFixed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'MANO_D_IMG_IND'
        DataType = ftBlob
        Size = 8
      end
      item
        Name = 'MANO_D_HUE_IND'
        DataType = ftBlob
        Size = 8
      end
      item
        Name = 'MANO_D_VER_IND'
        Attributes = [faFixed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'MANO_D_IMG_PUL'
        DataType = ftBlob
        Size = 8
      end
      item
        Name = 'MANO_D_HUE_PUL'
        DataType = ftBlob
        Size = 8
      end
      item
        Name = 'MANO_D_VER_PUL'
        Attributes = [faFixed]
        DataType = ftString
        Size = 2
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY232'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'RDB$FOREIGN233'
        Fields = 'SUJETO_CLIENTE'
      end
      item
        Name = 'RDB$FOREIGN304'
        Fields = 'DIRECCION'
      end
      item
        Name = 'RDB$FOREIGN305'
        Fields = 'TRANSPORTISTA'
      end
      item
        Name = 'RDB$FOREIGN401'
        Fields = 'REMITENTE'
      end
      item
        Name = 'RDB$FOREIGN484'
        Fields = 'CUENTA'
      end>
    IndexFieldNames = 'SUJETO_CLIENTE'
    MasterFields = 'ID'
    MasterSource = dsFuente
    StoreDefs = True
    TableName = 'CLIENTES_EXTENSIONES'
    UniDirectional = False
    Left = 332
    Top = 421
    object TExtensionesID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object TExtensionesSUJETO_CLIENTE: TIntegerField
      FieldName = 'SUJETO_CLIENTE'
      Required = True
    end
    object TExtensionesFECHA_ALTA: TDateTimeField
      FieldName = 'FECHA_ALTA'
      DisplayFormat = 'dd/mm/yyyy hh:mm:ss am/pm'
      EditMask = '!99/99/0000;1;_'
    end
    object TExtensionesCLAVE: TIBStringField
      FieldName = 'CLAVE'
    end
    object TExtensionesNOMBRE: TIBStringField
      FieldName = 'NOMBRE'
      Size = 100
    end
    object TExtensionesFOTO: TBlobField
      FieldName = 'FOTO'
      Size = 8
    end
    object TExtensionesFIRMA: TBlobField
      FieldName = 'FIRMA'
      Size = 8
    end
    object TExtensionesLIMITE_CREDITO: TFloatField
      FieldName = 'LIMITE_CREDITO'
      DisplayFormat = '$ ###,###,###,##0.00'
    end
    object TExtensionesESTATUS: TIBStringField
      FieldName = 'ESTATUS'
    end
    object TExtensionesDOMICILIO: TIBStringField
      FieldName = 'DOMICILIO'
      Size = 100
    end
    object TExtensionesPROVEEDOR: TIBStringField
      FieldName = 'PROVEEDOR'
    end
    object TExtensionesDIRECCION: TIntegerField
      FieldName = 'DIRECCION'
    end
    object TExtensionesTRANSPORTISTA: TIntegerField
      FieldName = 'TRANSPORTISTA'
    end
    object TExtensionesRFC: TIBStringField
      FieldName = 'RFC'
    end
    object TExtensionesFLAG_FACTURAR: TIBStringField
      FieldName = 'FLAG_FACTURAR'
      FixedChar = True
      Size = 2
    end
    object TExtensionesREMITENTE: TIntegerField
      FieldName = 'REMITENTE'
    end
    object TExtensionesTELEFONO: TIBStringField
      FieldName = 'TELEFONO'
    end
    object TExtensionesCUENTA: TIntegerField
      FieldName = 'CUENTA'
    end
    object TExtensionesCURP: TIBStringField
      FieldName = 'CURP'
    end
    object TExtensionesMANO_I_IMG_IND: TBlobField
      FieldName = 'MANO_I_IMG_IND'
      Size = 8
    end
    object TExtensionesMANO_I_HUE_IND: TBlobField
      FieldName = 'MANO_I_HUE_IND'
      Size = 8
    end
    object TExtensionesMANO_I_VER_IND: TIBStringField
      FieldName = 'MANO_I_VER_IND'
      FixedChar = True
      Size = 2
    end
    object TExtensionesMANO_I_IMG_PUL: TBlobField
      FieldName = 'MANO_I_IMG_PUL'
      Size = 8
    end
    object TExtensionesMANO_I_HUE_PUL: TBlobField
      FieldName = 'MANO_I_HUE_PUL'
      Size = 8
    end
    object TExtensionesMANO_I_VER_PUL: TIBStringField
      FieldName = 'MANO_I_VER_PUL'
      FixedChar = True
      Size = 2
    end
    object TExtensionesMANO_D_IMG_IND: TBlobField
      FieldName = 'MANO_D_IMG_IND'
      Size = 8
    end
    object TExtensionesMANO_D_HUE_IND: TBlobField
      FieldName = 'MANO_D_HUE_IND'
      Size = 8
    end
    object TExtensionesMANO_D_VER_IND: TIBStringField
      FieldName = 'MANO_D_VER_IND'
      FixedChar = True
      Size = 2
    end
    object TExtensionesMANO_D_IMG_PUL: TBlobField
      FieldName = 'MANO_D_IMG_PUL'
      Size = 8
    end
    object TExtensionesMANO_D_HUE_PUL: TBlobField
      FieldName = 'MANO_D_HUE_PUL'
      Size = 8
    end
    object TExtensionesMANO_D_VER_PUL: TIBStringField
      FieldName = 'MANO_D_VER_PUL'
      FixedChar = True
      Size = 2
    end
    object TExtensionesremitente_nombre: TStringField
      FieldKind = fkCalculated
      FieldName = 'remitente_nombre'
      Size = 100
      Calculated = True
    end
  end
  object dsClientes_Extensiones: TDataSource
    DataSet = TExtensiones
    OnDataChange = dsClientes_ExtensionesDataChange
    Left = 365
    Top = 421
  end
  object spIDExtensiones: TIBStoredProc
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    StoredProcName = 'ID'
    Left = 368
    Top = 52
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
        Value = 'EXTENSIONES'
      end>
  end
  object qyDescuentos: TIBQuery
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = dsClientes_Extensiones
    ParamCheck = True
    SQL.Strings = (
      'SELECT *'
      'FROM VER_EXTENSION_DESCUENTOS(:ID)')
    Left = 572
    Top = 421
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID'
        ParamType = ptUnknown
      end>
    object qyDescuentosR_ID: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_ID'
      ReadOnly = True
    end
    object qyDescuentosR_EXTENSION: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_EXTENSION'
      ReadOnly = True
    end
    object qyDescuentosR_CONCEPTO: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'R_CONCEPTO'
      ReadOnly = True
    end
    object qyDescuentosR_DESC_PORC: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'R_DESC_PORC'
      ReadOnly = True
      DisplayFormat = '#0.00 %'
    end
    object qyDescuentosR_OBSERVACIONES: TBlobField
      FieldKind = fkInternalCalc
      FieldName = 'R_OBSERVACIONES'
      ReadOnly = True
      Size = 8
    end
    object qyDescuentosR_CONCEPTO_CLAVE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_CONCEPTO_CLAVE'
      ReadOnly = True
    end
    object qyDescuentosR_CONCEPTO_DESCRIPCION: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'R_CONCEPTO_DESCRIPCION'
      ReadOnly = True
      Size = 100
    end
  end
  object dsDescuentos: TDataSource
    DataSet = qyDescuentos
    OnDataChange = dsDescuentosDataChange
    Left = 605
    Top = 421
  end
  object spMOD_DESCUENTOS_EXTENSIONES: TIBStoredProc
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    StoredProcName = 'MOD_DESCUENTOS_EXTENSIONES'
    Left = 464
    Top = 501
    ParamData = <
      item
        DataType = ftInteger
        Name = 'P_ID'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'P_PORC'
        ParamType = ptInput
        Value = 'o'
      end>
  end
  object pmFirma: TPopupMenu
    Left = 318
    Top = 501
    object Cargar: TMenuItem
      Bitmap.Data = {
        76040000424D7604000000000000360000002800000015000000110000000100
        18000000000040040000130B0000130B0000000000000000000099A8AC000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000099A8ACFF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF00000000000099A8ACFF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF00000080000080000000000099A8ACFF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF00000080000080000080000080000000000099A8ACFF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF00000080000080000080000080000080000080000000000099A8ACFFFFFF
        FFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFF0080
        000080000080000080000080000080000080000080000000000099A8ACFFFFFF
        FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFF
        FFFFFF000080000080000080000080000080000080000000000099A8ACFFFFFF
        FFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF
        00FFFFFFFFFF00FFFFFF0080000080000080000080000000000099A8ACFFFFFF
        FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFF
        FFFFFF00FFFFFFFFFF00FFFFFFFFFF000080000080000000000099A8ACFFFFFF
        FFFF00FFFFFFFFFF00D8E9ECD8E9ECFFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF
        00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000080000000000099A8ACFFFFFF
        FFFFFFFFFF00D8E9ECFFFFFF00FFFFD8E9ECFFFFFFFFFF00FFFFFFFFFF00FFFF
        FFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000000000099A8ACFFFFFF
        FFFF00FFFFFFD8E9EC00FFFFFFFFFFD8E9ECFFFF00FFFFFFFFFF00FFFFFFFFFF
        00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFF0000000099A8ACFFFFFF
        FFFFFFFFFF00FFFFFFD8E9ECD8E9ECFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFF
        FFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000000000099A8ACFFFFFF
        FFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF
        00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFF0000000099A8ACFFFFFF
        FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFF
        FFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000000000099A8ACFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000099A8AC99A8AC
        99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
        AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC00}
      Caption = 'Cargar'
      OnClick = CargarClick
    end
    object Limpiar2: TMenuItem
      Bitmap.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000130B0000130B00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F7F2D9E8D9E2EFE6FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBF4DB95
        DF9588D78845816F63AB7CDBF4DBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFCAEFCA6EC291409A602A8F9F28698F2580B61C729455BD60DBF4
        DBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBF4DB95DF954AAB603594B451A3BF4A
        B1E253BBE450BCEF1C7CC2155F7871D471DBF4DBFFFFFFFFFFFFFFFFFFDBF4DB
        A6E4A6207D7C4691B163CDF845B0E450BCF955C2F440AADF44A8DA1A82CF155F
        7855BD60FFFFFFFFFFFFDBF4DB71D471207D7C206F916AD2F447AFF45AC8F950
        BCF940AAF455C2F44FB4E53AA4D90054AA409A60B8E9B8FFFFFF78C883388F91
        6DD1F166D4F156BAF14BAEF44AAEF154BAFF53BBEB53BBEB4AA3E14093DD3D88
        D2054E966EB683EDF9ED15788A2382AD2E94BF2089BF48B3E953BFF44AB6FF40
        AAE950BCEF3AA4D9407ECB3587CF4577CF0547AF20656091CF9195D28AB1D2A6
        DFFFDFC9E9C94197AB288BB645B1E44599D9357CC92A65BF4887CF306BC440AA
        DF40AADF0054AA588A7FFFFFFFFFFFFFFFFFFFFFFFFFEBFCEBA8DACB4C8EA445
        8ED9357CC92A65BF3D92DA50BCF940AAF440AADF0054AA5F8A7FFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFCFF4CF3A76A43181D46DD1FF60CFEA40AAF450BC
        F9258DD90A5A91669C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FFF99D
        D2C154AFD44AAEE942ABD83886B7528CBA36598B4AAB60ADDFB1FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB4BBB49FA79F9B99
        9B3F5663606540CAEFCAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFD1E2C6677D5C7CC1CA3C9BDF3C332798AF8DFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBF4DB95DF958A8F
        8A8A8F8ADBBBBB95BB8AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Caption = 'Limpiar'
      OnClick = Limpiar2Click
    end
  end
  object pmFotoExt: TPopupMenu
    Left = 22
    Top = 91
    object Cargar2: TMenuItem
      Bitmap.Data = {
        76040000424D7604000000000000360000002800000015000000110000000100
        18000000000040040000130B0000130B0000000000000000000099A8AC000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000099A8ACFF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF00000000000099A8ACFF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF00000080000080000000000099A8ACFF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF00000080000080000080000080000000000099A8ACFF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF00000080000080000080000080000080000080000000000099A8ACFFFFFF
        FFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFF0080
        000080000080000080000080000080000080000080000000000099A8ACFFFFFF
        FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFF
        FFFFFF000080000080000080000080000080000080000000000099A8ACFFFFFF
        FFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF
        00FFFFFFFFFF00FFFFFF0080000080000080000080000000000099A8ACFFFFFF
        FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFF
        FFFFFF00FFFFFFFFFF00FFFFFFFFFF000080000080000000000099A8ACFFFFFF
        FFFF00FFFFFFFFFF00D8E9ECD8E9ECFFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF
        00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000080000000000099A8ACFFFFFF
        FFFFFFFFFF00D8E9ECFFFFFF00FFFFD8E9ECFFFFFFFFFF00FFFFFFFFFF00FFFF
        FFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000000000099A8ACFFFFFF
        FFFF00FFFFFFD8E9EC00FFFFFFFFFFD8E9ECFFFF00FFFFFFFFFF00FFFFFFFFFF
        00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFF0000000099A8ACFFFFFF
        FFFFFFFFFF00FFFFFFD8E9ECD8E9ECFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFF
        FFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000000000099A8ACFFFFFF
        FFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF
        00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFF0000000099A8ACFFFFFF
        FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFF
        FFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000000000099A8ACFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000099A8AC99A8AC
        99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
        AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC00}
      Caption = 'Cargar'
      OnClick = Cargar2Click
    end
    object Limpiar3: TMenuItem
      Bitmap.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000130B0000130B00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F7F2D9E8D9E2EFE6FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBF4DB95
        DF9588D78845816F63AB7CDBF4DBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFCAEFCA6EC291409A602A8F9F28698F2580B61C729455BD60DBF4
        DBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBF4DB95DF954AAB603594B451A3BF4A
        B1E253BBE450BCEF1C7CC2155F7871D471DBF4DBFFFFFFFFFFFFFFFFFFDBF4DB
        A6E4A6207D7C4691B163CDF845B0E450BCF955C2F440AADF44A8DA1A82CF155F
        7855BD60FFFFFFFFFFFFDBF4DB71D471207D7C206F916AD2F447AFF45AC8F950
        BCF940AAF455C2F44FB4E53AA4D90054AA409A60B8E9B8FFFFFF78C883388F91
        6DD1F166D4F156BAF14BAEF44AAEF154BAFF53BBEB53BBEB4AA3E14093DD3D88
        D2054E966EB683EDF9ED15788A2382AD2E94BF2089BF48B3E953BFF44AB6FF40
        AAE950BCEF3AA4D9407ECB3587CF4577CF0547AF20656091CF9195D28AB1D2A6
        DFFFDFC9E9C94197AB288BB645B1E44599D9357CC92A65BF4887CF306BC440AA
        DF40AADF0054AA588A7FFFFFFFFFFFFFFFFFFFFFFFFFEBFCEBA8DACB4C8EA445
        8ED9357CC92A65BF3D92DA50BCF940AAF440AADF0054AA5F8A7FFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFCFF4CF3A76A43181D46DD1FF60CFEA40AAF450BC
        F9258DD90A5A91669C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FFF99D
        D2C154AFD44AAEE942ABD83886B7528CBA36598B4AAB60ADDFB1FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB4BBB49FA79F9B99
        9B3F5663606540CAEFCAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFD1E2C6677D5C7CC1CA3C9BDF3C332798AF8DFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBF4DB95DF958A8F
        8A8A8F8ADBBBBB95BB8AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Caption = 'Limpiar'
      OnClick = Limpiar3Click
    end
  end
  object pmFirmaExt: TPopupMenu
    Left = 86
    Top = 91
    object Cargar3: TMenuItem
      Bitmap.Data = {
        76040000424D7604000000000000360000002800000015000000110000000100
        18000000000040040000130B0000130B0000000000000000000099A8AC000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000099A8ACFF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF00000000000099A8ACFF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF00000080000080000000000099A8ACFF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF00000080000080000080000080000000000099A8ACFF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF00000080000080000080000080000080000080000000000099A8ACFFFFFF
        FFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFF0080
        000080000080000080000080000080000080000080000000000099A8ACFFFFFF
        FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFF
        FFFFFF000080000080000080000080000080000080000000000099A8ACFFFFFF
        FFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF
        00FFFFFFFFFF00FFFFFF0080000080000080000080000000000099A8ACFFFFFF
        FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFF
        FFFFFF00FFFFFFFFFF00FFFFFFFFFF000080000080000000000099A8ACFFFFFF
        FFFF00FFFFFFFFFF00D8E9ECD8E9ECFFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF
        00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000080000000000099A8ACFFFFFF
        FFFFFFFFFF00D8E9ECFFFFFF00FFFFD8E9ECFFFFFFFFFF00FFFFFFFFFF00FFFF
        FFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000000000099A8ACFFFFFF
        FFFF00FFFFFFD8E9EC00FFFFFFFFFFD8E9ECFFFF00FFFFFFFFFF00FFFFFFFFFF
        00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFF0000000099A8ACFFFFFF
        FFFFFFFFFF00FFFFFFD8E9ECD8E9ECFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFF
        FFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000000000099A8ACFFFFFF
        FFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF
        00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFF0000000099A8ACFFFFFF
        FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFF
        FFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000000000099A8ACFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000099A8AC99A8AC
        99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8
        AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC00}
      Caption = 'Cargar'
      OnClick = Cargar3Click
    end
    object Limpiar4: TMenuItem
      Bitmap.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000130B0000130B00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F7F2D9E8D9E2EFE6FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBF4DB95
        DF9588D78845816F63AB7CDBF4DBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFCAEFCA6EC291409A602A8F9F28698F2580B61C729455BD60DBF4
        DBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBF4DB95DF954AAB603594B451A3BF4A
        B1E253BBE450BCEF1C7CC2155F7871D471DBF4DBFFFFFFFFFFFFFFFFFFDBF4DB
        A6E4A6207D7C4691B163CDF845B0E450BCF955C2F440AADF44A8DA1A82CF155F
        7855BD60FFFFFFFFFFFFDBF4DB71D471207D7C206F916AD2F447AFF45AC8F950
        BCF940AAF455C2F44FB4E53AA4D90054AA409A60B8E9B8FFFFFF78C883388F91
        6DD1F166D4F156BAF14BAEF44AAEF154BAFF53BBEB53BBEB4AA3E14093DD3D88
        D2054E966EB683EDF9ED15788A2382AD2E94BF2089BF48B3E953BFF44AB6FF40
        AAE950BCEF3AA4D9407ECB3587CF4577CF0547AF20656091CF9195D28AB1D2A6
        DFFFDFC9E9C94197AB288BB645B1E44599D9357CC92A65BF4887CF306BC440AA
        DF40AADF0054AA588A7FFFFFFFFFFFFFFFFFFFFFFFFFEBFCEBA8DACB4C8EA445
        8ED9357CC92A65BF3D92DA50BCF940AAF440AADF0054AA5F8A7FFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFCFF4CF3A76A43181D46DD1FF60CFEA40AAF450BC
        F9258DD90A5A91669C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FFF99D
        D2C154AFD44AAEE942ABD83886B7528CBA36598B4AAB60ADDFB1FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB4BBB49FA79F9B99
        9B3F5663606540CAEFCAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFD1E2C6677D5C7CC1CA3C9BDF3C332798AF8DFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBF4DB95DF958A8F
        8A8A8F8ADBBBBB95BB8AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Caption = 'Limpiar'
      OnClick = Limpiar4Click
    end
  end
  object TDomicilioExtension: TIBTable
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    AfterPost = TDomicilioExtensionAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'ID'
        DataType = ftInteger
      end
      item
        Name = 'CALLE'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'ENTRE_CALLE'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Y_CALLE'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'NUM_EXT'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'NUM_INT'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'LETRA'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'CP'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'COLONIA'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'CIUDAD'
        DataType = ftInteger
      end
      item
        Name = 'ZONA'
        DataType = ftString
        Size = 50
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY90'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'RDB$FOREIGN91'
        Fields = 'CIUDAD'
      end>
    IndexFieldNames = 'ID'
    MasterFields = 'DIRECCION'
    MasterSource = dsClientes_Extensiones
    StoreDefs = True
    TableName = 'DOMICILIOS'
    UniDirectional = False
    Left = 396
    Top = 421
  end
  object dsDomicilioExtension: TDataSource
    DataSet = TDomicilioExtension
    Left = 429
    Top = 421
  end
  object TMensajes: TIBTable
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    BufferChunks = 1000
    CachedUpdates = False
    IndexFieldNames = 'CLIENTE'
    MasterFields = 'ID'
    MasterSource = dsFuente
    TableName = 'CUENTAS_POR_COBRAR_MENSAJES'
    UniDirectional = False
    Left = 539
    Top = 421
  end
  object dsMensajes: TDataSource
    DataSet = TMensajes
    Left = 300
    Top = 421
  end
  object spDEL_DESCUENTOS_EXTENSIONES: TIBStoredProc
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    StoredProcName = 'DEL_DESCUENTOS_EXTENSIONES'
    Left = 506
    Top = 421
    ParamData = <
      item
        DataType = ftInteger
        Name = 'P_ID'
        ParamType = ptInput
      end>
  end
  object ppExtensiones: TPopupMenu
    Left = 669
    Top = 421
    object itemF7Ext: TMenuItem
      Caption = 'Nueva Partida'
      ShortCut = 118
      OnClick = itemF7ExtClick
    end
    object itemF8Ext: TMenuItem
      Caption = 'Modificar Partida'
      ShortCut = 119
      OnClick = itemF8ExtClick
    end
    object itemF9Ext: TMenuItem
      Caption = 'Guardar Partida'
      ShortCut = 120
      OnClick = itemF9ExtClick
    end
    object itemF10Ext: TMenuItem
      Caption = 'Cancelar Partida'
      ShortCut = 121
      OnClick = itemF10ExtClick
    end
    object itemF11Ext: TMenuItem
      Caption = 'Eliminar Partida'
      ShortCut = 122
      OnClick = itemF11ExtClick
    end
  end
  object ppDescuentos: TPopupMenu
    Left = 636
    Top = 421
    object itemF7Desc: TMenuItem
      Caption = 'Nueva Partida'
      ShortCut = 118
      OnClick = itemF7DescClick
    end
    object itemF8Desc: TMenuItem
      Caption = 'Modificar Partida'
      ShortCut = 119
      OnClick = itemF8DescClick
    end
    object itemF11Desc: TMenuItem
      Caption = 'Eliminar Partida'
      ShortCut = 122
      OnClick = itemF11DescClick
    end
  end
  object imRemitente: TImageList
    Height = 22
    Width = 22
    Left = 582
    Top = 93
    Bitmap = {
      494C010101000400080016001600FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000058000000160000000100200000000000401E
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F7F7F700F7F7
      F700F7F7F7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F7F700EFEFEF00DEDEDE00D6D6
      D600E7E7E700EFEFEF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F7F7F700E7E7E700ADADAD007B7B7B009C9C
      9C00CECECE00DEDEDE00E7E7E700F7F7F7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F7F7F700EFEFEF00C6C6C600A5A5A500BDBDBD00C6C6C6008C8C
      8C0073737300B5B5B500CECECE00DEDEDE00EFEFEF00F7F7F700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EFEFEF00E7E7E700ADADAD00ADADAD00DEDEDE00D6D6D600C6C6C600C6C6
      C600C6C6C6008484840073737300B5B5B500CECECE00DEDEDE00EFEFEF00F7F7
      F700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F7F7F700EFEF
      EF00C6C6C600A5A5A500C6C6C600DEDEDE00DEDEDE00D6D6D600BDBDBD00C6C6
      C600C6C6C600CECECE00C6C6C6007B7B7B007B7B7B00C6C6C600CECECE00DEDE
      DE00EFEFEF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F7F7F700E7E7E700A5A5
      A500ADADAD00DEDEDE00DEDEDE00DEDEDE00DEDEDE00CECECE00B5B5B500BDBD
      BD00C6C6C600C6C6C600CECECE00CECECE009C9C9C006363630084848400C6C6
      C600DEDEDE00F7F7F70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CECECE009C9C9C00C6C6
      C600DEDEDE00D6D6D600D6D6D600D6D6D600D6D6D600C6C6C600ADADAD00B5B5
      B500BDBDBD00C6C6C600C6C6C600CECECE00CECECE00D6D6D6009C9C9C007373
      7300CECECE00EFEFEF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000ADADAD00D6D6D600D6D6
      D600D6D6D600D6D6D600CECECE00CECECE00CECECE00C6C6C600ADADAD00ADAD
      AD00B5B5B500BDBDBD00C6C6C600C6C6C600CECECE00CECECE00D6D6D6007373
      7300CECECE00EFEFEF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B5B5B500D6D6D600CECE
      CE00CECECE00CECECE00CECECE00CECECE00C6C6C600BDBDBD00A5A5A500ADAD
      AD00ADADAD00B5B5B500BDBDBD00C6C6C600C6C6C600CECECE00CECECE007B7B
      7B00CECECE00EFEFEF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B5B5B500CECECE00CECE
      CE00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600BDBDBD00A5A5A500A5A5
      A500ADADAD00ADADAD00B5B5B500BDBDBD00C6C6C600C6C6C600CECECE007B7B
      7B00CECECE00EFEFEF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B5B5B500C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600BDBDBD00BDBDBD00B5B5B500A5A5A500A5A5
      A500A5A5A500ADADAD00B5B5B500B5B5B500BDBDBD00C6C6C600C6C6C6007B7B
      7B00CECECE00EFEFEF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B5B5B500C6C6C600BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00B5B5B500ADADAD00A5A5A500A5A5
      A500A5A5A500A5A5A500ADADAD00B5B5B500B5B5B500BDBDBD00C6C6C6007B7B
      7B00CECECE00EFEFEF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B5B5B500BDBDBD00BDBD
      BD00B5B5B500B5B5B500B5B5B500B5B5B500ADADAD00ADADAD00A5A5A500A5A5
      A500A5A5A500A5A5A500ADADAD00ADADAD00B5B5B500BDBDBD00BDBDBD007B7B
      7B00CECECE00EFEFEF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000ADADAD00B5B5B500B5B5
      B500ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00BDBDBD00A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500ADADAD00ADADAD00B5B5B500BDBDBD007B7B
      7B00CECECE00EFEFEF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000ADADAD00ADADAD00ADAD
      AD00ADADAD00ADADAD00ADADAD00C6C6C600EFEFEF00EFEFEF00E7E7E700CECE
      CE00B5B5B500A5A5A500A5A5A500A5A5A500ADADAD00ADADAD00B5B5B5007B7B
      7B00CECECE00EFEFEF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B5B5B500ADADAD00A5A5
      A500A5A5A500C6C6C600EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00E7E7
      E700E7E7E700DEDEDE00C6C6C600B5B5B500A5A5A500ADADAD00ADADAD008484
      8400D6D6D600EFEFEF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B5B5B500A5A5A500CECE
      CE00F7F7F700F7F7F700F7F7F700F7F7F700EFEFEF00EFEFEF00EFEFEF00E7E7
      E700E7E7E700E7E7E700DEDEDE00DEDEDE00DEDEDE00C6C6C600BDBDBD008C8C
      8C00DEDEDE00F7F7F70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600CECECE000000
      000000000000F7F7F700F7F7F700F7F7F700EFEFEF00EFEFEF00EFEFEF00E7E7
      E700E7E7E700E7E7E700DEDEDE00DEDEDE00D6D6D600ADADAD00A5A5A500BDBD
      BD00F7F7F700F7F7F70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F7F7F700DEDEDE00C6C6
      C600CECECE00E7E7E700F7F7F700F7F7F700EFEFEF00EFEFEF00EFEFEF00E7E7
      E700E7E7E700E7E7E700C6C6C600B5B5B500BDBDBD00E7E7E700F7F7F7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F7F7F700DEDEDE00CECECE00D6D6D600EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00CECECE00B5B5B500CECECE00F7F7F7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F7F7F700DEDEDE00D6D6D600DEDEDE00D6D6
      D600EFEFEF00F7F7F70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000058000000160000000100010000000000080100000000000000000000
      000000000000000000000000FFFFFF00FFC7FC000000000000000000FF03FC00
      0000000000000000FE00FC000000000000000000F8003C000000000000000000
      F0000C000000000000000000C000040000000000000000008000000000000000
      0000000080000000000000000000000080000000000000000000000080000000
      0000000000000000800000000000000000000000800000000000000000000000
      8000000000000000000000008000000000000000000000008000000000000000
      0000000080000000000000000000000080000000000000000000000080000000
      000000000000000098000000000000000000000080001C000000000000000000
      F000FC000000000000000000FE03FC0000000000000000000000000000000000
      0000000000000000000000000000}
  end
  object spPEGAR_EXTENSION: TIBStoredProc
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    StoredProcName = 'PEGAR_EXTENSION'
    Left = 468
    Top = 421
    ParamData = <
      item
        DataType = ftInteger
        Name = 'P_FUENTE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'P_DESTINO'
        ParamType = ptInput
      end>
  end
  object spAUTO_FOLIO_C: TIBStoredProc
    Database = dmIBModulo.ibSistema
    Transaction = dmIBModulo.ibSistemaTransaccion
    StoredProcName = 'AUTO_FOLIO'
    Left = 782
    Top = 501
    ParamData = <
      item
        DataType = ftInteger
        Name = 'R_FOLIO'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'P_MODULO'
        ParamType = ptInput
        Value = '50'
      end
      item
        DataType = ftInteger
        Name = 'P_SUBCLASE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'P_AFECTAR'
        ParamType = ptInput
      end>
  end
end
