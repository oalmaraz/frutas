unit capturar_facturas;

interface

uses
  UfrmNCreditoAlta, Windows,  SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  capturarMDI,  Menus, Db,  DBCtrls,
  StdCtrls, Buttons, ExtCtrls, ComCtrls, UfrmFrameMaterial, Grids, DBGrids,
  jpeg,  IBStoredProc, IBTable, IBCustomDataSet,
  IBQuery, Mask;



type
  TfrmCapturar_facturas = class(TfrmCapturarMDI)
    paLienzo2: TPanel;
    fpCaptura: TPanel;
    ibModificarPartida: TBitBtn;
    ibGuardarPartida: TBitBtn;
    ibCancelarPartida: TBitBtn;
    ibEliminarPartida: TBitBtn;
    qyPartidas: TIBQuery;
    dsPartidas: TDataSource;
    TCondiciones_Comerciales: TIBTable;
    dsCondiciones_Comerciales: TDataSource;
    TCondiciones_ComercialesID: TIntegerField;
    TCondiciones_ComercialesTIPO: TIBStringField;
    TCondiciones_ComercialesCLAVE: TIBStringField;
    TCondiciones_ComercialesNOMBRE: TIBStringField;
    TCondiciones_ComercialesNUM_PAGOS: TIntegerField;
    TCondiciones_ComercialesINTERVALO_ENTRE_PAGOS: TIntegerField;
    TCondiciones_ComercialesDESPLAZAMIENTO_1_PAGO: TIntegerField;
    TCondiciones_ComercialesDESCUENTO_PORCENTAJE: TFloatField;
    TCondiciones_ComercialesFINANCIAMIENTO: TIntegerField;
    TCondiciones_ComercialesMORATORIO: TIBStringField;
    TMonedas: TIBTable;
    dsMonedas: TDataSource;
    TMonedasID: TIntegerField;
    TMonedasCLAVE: TIBStringField;
    TMonedasDESCRIPCION: TIBStringField;
    TMonedasFECHA_ULT_ACT: TDateTimeField;
    TMonedasPARIDAD: TFloatField;
    TCapturardescripcion_moneda: TIBStringField;
    spDEL_PARTIDA_FACTURA: TIBStoredProc;
    spEstatus: TIBStoredProc;
    ibNuevaPartida: TBitBtn;
    spTOTALES_FACTURA: TIBStoredProc;
    spID2: TIBStoredProc;
    dgPartidas: TDBGrid;
    TCapturarnombre_condicion: TIBStringField;
    ibPedidos: TBitBtn;
    TCapturarID: TIntegerField;
    TCapturarCLAVE: TIBStringField;
    TCapturarFECHA_ALTA: TDateTimeField;
    TCapturarFECHA_CANCELACION: TDateTimeField;
    TCapturarORIGEN: TIBStringField;
    TCapturarNOMBRE: TIBStringField;
    TCapturarDIRECCION: TIBStringField;
    TCapturarTELEFONO: TIBStringField;
    TCapturarCIUDAD: TIBStringField;
    TCapturarRFC: TIBStringField;
    TCapturarCONDICION_COMERCIAL: TIntegerField;
    TCapturarOBSERVACIONES: TBlobField;
    TCapturarPRIORIDAD: TIBStringField;
    TCapturarALMACEN: TIntegerField;
    TCapturarSERIE_FACTURA: TIBStringField;
    TCapturarCONSECUTIVO: TIntegerField;
    TCapturarSUBTOTAL: TFloatField;
    TCapturarIVA: TFloatField;
    TCapturarIEPS: TFloatField;
    TCapturarIMPUESTO1: TFloatField;
    TCapturarIMPUESTO2: TFloatField;
    TCapturarTOTAL: TFloatField;
    TCapturarDESCUENTO_GLOBAL_PORC: TFloatField;
    TCapturarDESCUENTO_CANTIDAD_GLOBAL: TFloatField;
    TCapturarDESCUENTO_CANTIDAD_PARCIAL: TFloatField;
    TCapturarGRANTOTAL: TFloatField;
    TCapturarMONEDA: TIntegerField;
    TCapturarQUIEN_FACTURO: TIntegerField;
    TCapturarESTATUS: TIBStringField;
    qyPartidasR_ID: TIntegerField;
    qyPartidasR_FACTURA: TIntegerField;
    qyPartidasR_MATERIAL: TIntegerField;
    qyPartidasR_CLAVE: TIBStringField;
    qyPartidasR_DESCRIPCION: TIBStringField;
    qyPartidasR_UNIDAD: TIntegerField;
    qyPartidasR_DESCRIPCION_UNIDAD: TIBStringField;
    qyPartidasR_CANTIDAD: TFloatField;
    qyPartidasR_PRECIO: TFloatField;
    qyPartidasR_SUBTOTAL: TFloatField;
    qyPartidasR_IVA: TFloatField;
    qyPartidasR_IEPS: TFloatField;
    qyPartidasR_IMPUESTO1: TFloatField;
    qyPartidasR_IMPUESTO2: TFloatField;
    qyPartidasR_TOTAL: TFloatField;
    qyPartidasR_DESCUENTO_PORC: TFloatField;
    qyPartidasR_DP: TFloatField;
    qyPartidasR_DG: TFloatField;
    qyPartidasR_GT: TFloatField;
    qyPartidasR_ESTATUS: TIBStringField;
    qyPartidasR_PEDIDO: TIntegerField;
    qyPartidasR_CLAVE_PEDIDO: TIBStringField;
    TCapturarCAMBIO_ENTREGADO: TFloatField;
    TCapturarEXTENSION: TIntegerField;
    TCapturarPUNTO_DE_VENTA: TIntegerField;
    TCapturarextension_nombre: TStringField;
    TCapturarCLIENTE: TIntegerField;
    spMODIFICAR_CAJAS_FACTURA: TIBStoredProc;
    spMODIFICAR_CANTIDAD_FACTURA: TIBStoredProc;
    TCapturarCP: TIBStringField;
    TCapturarfacturacion: TStringField;
    TCapturarTOTAL_CAPTURADO: TFloatField;
    spVENTAS_DIARIAS: TIBStoredProc;
    qyContinuacion: TIBQuery;
    qyContinuacionR_CONSECUTIVO: TIntegerField;
    qyContinuacionR_ID: TIntegerField;
    qyContinuacionR_FACTURA: TIntegerField;
    ibCopiar: TBitBtn;
    spCOPIAR_FACTURA: TIBStoredProc;
    ibVtasDiarias: TBitBtn;
    spMODIFICAR_PIEZAS_FACTURA: TIBStoredProc;
    qyPartidasR_CAJAS: TFloatField;
    qyPartidasR_KILOS: TFloatField;
    qyPartidasR_PIEZAS: TFloatField;
    qyConversionKilos: TIBQuery;
    qyConversionKilosR_KILOS: TFloatField;
    qyConversionCajas: TIBQuery;
    qyConversionCajasR_CAJAS: TFloatField;
    qyMODIFICAR_KILOS_FACTURA: TIBQuery;
    pmTeclas: TPopupMenu;
    NuevaPartida1: TMenuItem;
    ModificarPartida1: TMenuItem;
    GuardarPartida1: TMenuItem;
    CancelarPartida1: TMenuItem;
    EliminarPartida1: TMenuItem;
    Pedidos1: TMenuItem;
    TCapturarCOLONIA: TIBStringField;
    ibListaEmpaque: TBitBtn;
    qyPartidasR_CALIDAD: TIntegerField;
    qyPartidasR_CALIDAD_NOMBRE: TIBStringField;
    qyPartidasR_PRECIO_SIN_IMPUESTOS: TFloatField;
    qyPartidasR_PARTIDAS: TIntegerField;
    qyPartidasR_ROWS: TIntegerField;
    ibGuia: TBitBtn;
    paExtra: TPanel;
    MarcoMateriales1: TMarcoMateriales;
    paPiezas: TPanel;
    paKilos: TPanel;
    paCajas: TPanel;
    edCajas: TEdit;
    edKilos: TEdit;
    edPiezas: TEdit;
    qyPartidasR_IVA_PORC: TFloatField;
    qyPartidasR_IEPS_PORC: TFloatField;
    qyPartidasR_IMPUESTO1_PORC: TFloatField;
    qyPartidasR_IMPUESTO2_PORC: TFloatField;
    spFACTURAS_DESCUENTO_GLOBAL: TIBStoredProc;
    ppVentasD: TPopupMenu;
    itemDiarias: TMenuItem;
    itemFIntereses: TMenuItem;
    buVentasD: TBitBtn;
    spGENERAR_FACTURA_INTERESES: TIBStoredProc;
    qyContinuacionR_CUANTAS: TIntegerField;
    TCapturarANTICIPO: TFloatField;
    TCapturarPAGOS: TIntegerField;
    TCapturarFINANCIAMIENTO: TFloatField;
    ibReAgrupar: TBitBtn;
    spFACTURAS_REAGRUPAR: TIBStoredProc;
    buImprimir: TBitBtn;
    ppImprimir: TPopupMenu;
    itemImprimir: TMenuItem;
    itemCupon: TMenuItem;
    itemPagare: TMenuItem;
    itemContrato: TMenuItem;
    qyMsg: TIBQuery;
    qyMsgR_SALDO: TFloatField;
    qyMsgR_LIMITE: TFloatField;
    qyMsgR_TOTAL_VENCIDO: TFloatField;
    qyMsgR_ALMACEN_VENCIDO: TFloatField;
    qyMsgR_MSG_LIMITE: TIBStringField;
    qyMsgR_MSG_VENCIDO: TIBStringField;
    qyPartidasR_MEDIDA: TIntegerField;
    qyPartidasR_MEDIDA_DESCRIPCION: TIBStringField;
    qyPartidasR_COLOR: TIntegerField;
    qyPartidasR_COLOR_NOMBRE: TIBStringField;
    N1: TMenuItem;
    itemPreview: TMenuItem;
    itemMedidas: TMenuItem;
    itemPreviewM: TMenuItem;
    TCapturaralmacen_clave: TStringField;
    qyEstatus: TIBQuery;
    dsEstatus: TDataSource;
    TCapturarFECHA_U_ACTUALIZACION: TDateTimeField;
    TCapturarID_REFERENCIA: TIntegerField;
    TCapturarTABLA_REFERENCIA: TIBStringField;
    TCapturarSEGURO_SUBTOTAL: TFloatField;
    TCapturarSEGURO_IVA: TFloatField;
    TCapturarseguro: TFloatField;
    TCapturarsupertotal: TFloatField;
    spFACTURA_DESCUENTOS: TIBStoredProc;
    spADD_PARTIDA_FACTURA: TIBStoredProc;
    qyPartidasR_CLIENTE_MAT_C: TIBStringField;
    qyPartidasR_CLIENTE_MAT_D: TIBStringField;
    qyPartidasR_DG_PORC: TFloatField;
    TCapturarcliente_c: TStringField;
    TCapturarRETENCION: TIBStringField;
    TCapturarRETENCION_IVA: TFloatField;
    qyPartidasR_COMENTARIO: TIBStringField;
    paInsuficiencias: TPanel;
    fcImager1: TImage;
    buInsuficiencias: TBitBtn;
    fcImager3: TImage;
    fcImager4: TImage;
    fcImager5: TImage;
    qyInsuficientes: TIBQuery;
    qyInsuficientesR_ROW: TIntegerField;
    qyInsuficientesR_MATERIAL: TIntegerField;
    qyInsuficientesR_MATERIAL_CB: TIBStringField;
    qyInsuficientesR_MATERIAL_C: TIBStringField;
    qyInsuficientesR_MATERIAL_D: TIBStringField;
    qyInsuficientesR_CANTIDAD: TFloatField;
    qyInsuficientesR_INVENTARIO: TFloatField;
    qyInsuficientesR_UNIDAD: TIntegerField;
    qyInsuficientesR_UNIDAD_C: TIBStringField;
    qyInsuficientesR_UNIDAD_D: TIBStringField;
    qyInsuficientesR_MATERIAL_S: TIBStringField;
    qyPartidasR_SERIE: TIBStringField;
    itemSeries: TMenuItem;
    itemPreviewSeries: TMenuItem;
    qyPartidasR_MATERIAL_S: TIBStringField;
    itemEliminarPartida: TMenuItem;
    itemAgregarPartida: TMenuItem;
    TCapturarELIMINAR_IVA: TIBStringField;
    TCapturarOBSERVACIONES_INTERNAS: TBlobField;
    itemFE: TMenuItem;
    qyCFD: TIBQuery;
    qyEmpresa: TIBQuery;
    qyPartidasR_IVA_DP: TFloatField;
    qyPartidasR_IVA_DG: TFloatField;
    TCapturarNUM_EXT: TIBStringField;
    TCapturarNUM_INT: TIBStringField;
    TCapturarLOCALIDAD: TIBStringField;
    TCapturarESTADO: TIBStringField;
    TCapturarPAIS: TIBStringField;
    qyPartidasR_PSI_IMPORTE: TFloatField;
    TCapturarIVA_DP: TFloatField;
    TCapturarIVA_DG: TFloatField;
    TCapturarmoneda_c: TStringField;
    itemPreviewFE: TMenuItem;
    TCapturarFE_XML: TIBStringField;
    ibRetencion: TBitBtn;
    spRETENCION_IVA_FACTURA: TIBStoredProc;
    spRETENCION_ISR_FACTURA: TIBStoredProc;
    ibRetencionISR: TBitBtn;
    qyPartidasR_UNIDAD_C: TIBStringField;
    qyPartidasR_LINEA: TIntegerField;
    qyPartidasR_LINEA_D: TIBStringField;
    qyPartidasR_PEDIDO_F: TIntegerField;
    qyPartidasR_PEDIDO_OC: TIBStringField;
    qyPartidasR_PEDIDO_O: TBlobField;
    qyPartidasR_SUBTOTAL_DP: TFloatField;
    qyPartidasR_SUBTOTAL_DG: TFloatField;
    qyPartidasR_PEDIMENTO: TIBStringField;
    qyPartidasR_PEDIMENTO_F: TDateTimeField;
    qyPartidasR_PEDIMENTO_A: TIBStringField;
    qyPartidasR_PEDIMENTO_A_N: TIBStringField;
    qyPartidasR_RETENCION_PORC_IVA: TFloatField;
    qyPartidasR_RETENCION_PORC_ISR: TFloatField;
    qyPartidasR_RETENCION_IVA: TFloatField;
    qyPartidasR_RETENCION_ISR: TFloatField;
    spRETENCION_IVA_FACTURA_DET: TIBStoredProc;
    spRETENCION_ISR_FACTURA_DET: TIBStoredProc;
    itemPreview2: TMenuItem;
    buTickets: TBitBtn;
    itemTickets: TMenuItem;
    pcFacturas: TPageControl;
    tsDatos: TTabSheet;
    tsGastos: TTabSheet;
    Label2: TLabel;
    deFolio: TDBEdit;
    Label7: TLabel;
    Label24: TLabel;
    Label22: TLabel;
    Label5: TLabel;
    cbPrioridad: TDBCheckBox;
    deFechaAlta: TDBEdit;
    deClave: TDBEdit;
    ceAnticipo: TDBEdit;
    cbAlmacenes: TDBLookupComboBox;
    deAlmacen: TDBEdit;
    sbRefreshAlmacenes: TSpeedButton;
    deObservaciones: TDBMemo;
    Label3: TLabel;
    beCliente: TDBEdit;
    edClaveCliente: TDBEdit;
    Label6: TLabel;
    meTelefono: TDBEdit;
    Label1: TLabel;
    meRFC: TDBEdit;
    Label23: TLabel;
    ceDescGlobal: TDBEdit;
    Label21: TLabel;
    edExtension: TEdit;
    Label12: TLabel;
    cbMonedas: TDBLookupComboBox;
    sbRefreshMonedas: TSpeedButton;
    Label13: TLabel;
    sbRefreshCondicion: TSpeedButton;
    cbCComercial: TDBLookupComboBox;
    Label8: TLabel;
    deObservacionesInternas: TDBMemo;
    Label15: TLabel;
    deDireccion: TDBEdit;
    Label9: TLabel;
    deNumExt: TDBEdit;
    deNumInt: TDBEdit;
    Label10: TLabel;
    Label25: TLabel;
    deColonia: TDBEdit;
    Label11: TLabel;
    deLocalidad: TDBEdit;
    Label16: TLabel;
    deCiudad: TDBEdit;
    Label14: TLabel;
    deEstado: TDBEdit;
    Label17: TLabel;
    dePais: TDBEdit;
    Label4: TLabel;
    deCP: TDBEdit;
    Label18: TLabel;
    cbEstatus: TDBLookupComboBox;
    edEstatus: TDBEdit;
    buAplicar: TBitBtn;
    cbEliminarIVA: TDBCheckBox;
    buFolio: TBitBtn;
    deExtension: TDBEdit;
    paPresentaciones: TPanel;
    fcImager9: TImage;
    buF7P: TBitBtn;
    buF8P: TBitBtn;
    buF11P: TBitBtn;
    dgGastos: TDBGrid;
    qyGastos: TIBQuery;
    qyGastosR_ID: TIntegerField;
    qyGastosR_LINK: TIntegerField;
    qyGastosR_LINK_GASTO: TIntegerField;
    qyGastosR_CONCEPTO: TIBStringField;
    qyGastosR_FACTURA: TIBStringField;
    qyGastosR_IMPORTE: TFloatField;
    dsGastos: TDataSource;
    qyGastosR_ROWS: TIntegerField;
    ppFPresentaciones: TPopupMenu;
    itemF7P: TMenuItem;
    itemF8P: TMenuItem;
    itemF9P: TMenuItem;
    itemF10P: TMenuItem;
    itemF11P: TMenuItem;
    spE_GASTO_FACTURA: TIBStoredProc;
    Bevel1: TBevel;
    TCapturarTOTAL_GASTOS: TFloatField;
    deTotalGastos: TDBText;
    procedure FormCreate(Sender: TObject);
    procedure dsFuenteDataChange(Sender: TObject; Field: TField);
    procedure ibNuevoClick(Sender: TObject);
    procedure ibModificarClick(Sender: TObject);
    procedure ibEliminarPartidaClick(Sender: TObject);
    procedure ibCancelarPartidaClick(Sender: TObject);
    procedure ibGuardarPartidaClick(Sender: TObject);
    procedure ibModificarPartidaClick(Sender: TObject);
    procedure dgPartidasDblClick(Sender: TObject);
    procedure ibNuevaPartidaClick(Sender: TObject);
    procedure coSUBTOTALDrawSummaryFooter(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; var AText: String;
      var AAlignment: TAlignment; AFont: TFont; var AColor: TColor;
      var ADone: Boolean);
    procedure coIEPSDrawSummaryFooter(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; var AText: String; var AAlignment: TAlignment;
      AFont: TFont; var AColor: TColor; var ADone: Boolean);
    procedure coIMPUESTO1DrawSummaryFooter(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; var AText: String;
      var AAlignment: TAlignment; AFont: TFont; var AColor: TColor;
      var ADone: Boolean);
    procedure coIMPUESTO2DrawSummaryFooter(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; var AText: String;
      var AAlignment: TAlignment; AFont: TFont; var AColor: TColor;
      var ADone: Boolean);
    procedure coTOTALDrawSummaryFooter(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; var AText: String; var AAlignment: TAlignment;
      AFont: TFont; var AColor: TColor; var ADone: Boolean);
    procedure coDESCUENTOPARCIALDrawSummaryFooter(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; var AText: String;
      var AAlignment: TAlignment; AFont: TFont; var AColor: TColor;
      var ADone: Boolean);
    procedure coGRANTOTAL2DrawSummaryFooter(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; var AText: String;
      var AAlignment: TAlignment; AFont: TFont; var AColor: TColor;
      var ADone: Boolean);
    procedure coDESCUENTOGLOBALDrawSummaryFooter(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; var AText: String;
      var AAlignment: TAlignment; AFont: TFont; var AColor: TColor;
      var ADone: Boolean);
    procedure ibPedidosClick(Sender: TObject);
    procedure TCapturarCalcFields(DataSet: TDataSet);
    procedure beClienteButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dgPartidasCAJASButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dgPartidasCANTIDADButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure TCapturarAfterPost(DataSet: TDataSet);
    procedure ibVtasDiariasClick(Sender: TObject);
    procedure sbCapturadoClick(Sender: TObject);
    procedure ibCopiarClick(Sender: TObject);
    procedure dgPartidasPIEZASButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dgPartidasKILOSButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure NuevaPartida1Click(Sender: TObject);
    procedure ModificarPartida1Click(Sender: TObject);
    procedure GuardarPartida1Click(Sender: TObject);
    procedure CancelarPartida1Click(Sender: TObject);
    procedure EliminarPartida1Click(Sender: TObject);
    procedure Pedidos1Click(Sender: TObject);
    procedure beClienteKeyPress(Sender: TObject; var Key: Char);
    procedure ibGuardarClick(Sender: TObject);
    procedure deFechaAltaEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure buInicioClick(Sender: TObject);
    procedure buAnteriorClick(Sender: TObject);
    procedure buSiguienteClick(Sender: TObject);
    procedure buFinClick(Sender: TObject);
    procedure sbRefreshAlmacenesClick(Sender: TObject);
    procedure sbRefreshMonedasClick(Sender: TObject);
    procedure sbRefreshCondicionClick(Sender: TObject);
    procedure dgPartidasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ibListaEmpaqueClick(Sender: TObject);
    procedure ibGuiaClick(Sender: TObject);
    procedure MarcoMateriales1edCantidadChange(Sender: TObject);
    procedure MarcoMateriales1cbUnidadesChange(Sender: TObject);
    procedure itemFInteresesClick(Sender: TObject);
    procedure ibReAgruparClick(Sender: TObject);
    procedure itemCuponClick(Sender: TObject);
    procedure itemPagareClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure edExtensionButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure edExtensionKeyPress(Sender: TObject; var Key: Char);
    procedure itemImprimirClick(Sender: TObject);
    procedure ibImprimirClick(Sender: TObject);
    procedure itemPreviewClick(Sender: TObject);
    procedure itemMedidasClick(Sender: TObject);
    procedure itemPreviewMClick(Sender: TObject);
    procedure TCapturarAfterOpen(DataSet: TDataSet);
    procedure cbEstatusChange(Sender: TObject);
    procedure buAplicarClick(Sender: TObject);
    procedure deCapturarKeyPress(Sender: TObject; var Key: Char);
    procedure buFolioClick(Sender: TObject);
    procedure buInsuficienciasClick(Sender: TObject);
    procedure MarcoMateriales1edMaterialButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure itemSeriesClick(Sender: TObject);
    procedure itemPreviewSeriesClick(Sender: TObject);
    procedure MarcoMateriales1buCapturarClick(Sender: TObject);
    procedure dgPartidasBTNSERIESButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure itemEliminarPartidaClick(Sender: TObject);
    procedure itemAgregarPartidaClick(Sender: TObject);
    procedure itemFEClick(Sender: TObject);
    procedure ibRetencionClick(Sender: TObject);
    procedure ibRetencionISRClick(Sender: TObject);
    procedure dgPartidasRETENCION_IVAButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dgPartidasRETENCION_ISRButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure itemPreview2Click(Sender: TObject);
    procedure buTicketsClick(Sender: TObject);
    procedure itemTicketsClick(Sender: TObject);
    procedure buF8PClick(Sender: TObject);
    procedure buF9PClick(Sender: TObject);
    procedure buF11PClick(Sender: TObject);
    procedure pcFacturasChange(Sender: TObject);
    procedure buF7PClick(Sender: TObject);
  private
    { Private declarations }
    TopIdx : Integer;
    Key    : Variant;

    awrIVAPorc      : double;
    awrAlmGral      : integer;
    msg_limite      : boolean;
    msg_vencidos    : boolean;
    partidas        : integer;
    unidadCajas     : integer;
    unidadKilos     : integer;
    unidadPiezas    : integer;
    frmNCreditoAlta : TfrmNCreditoAlta;
    edicionDetalle  : boolean;//<-valida los botones
    tmpDescGlobal   : double;
    awrSeguro       : boolean;
    awrCapturar     : boolean;
    awrCliente      : integer;
    awrExtension    : integer;
    awrClienteMost  : integer;
    awrBtnCancel    : boolean;
    awrActivarFA    : boolean; //activar Fecha de Alta
    awrActivarCC    : boolean; //activar Condicion Comercial
    awrActivarDG    : boolean; //activar Descuento Global
    awrActivarDP    : boolean; //activar Descuento Parcial
    awrPermInvNeg   : boolean; //Permitir Inventario en Negativo
    awrPRNEstatus   : boolean; //Sirve para ver por cual boton estamos imprimiendo 
    procedure refreshTotales(vCual : integer);
    procedure factoresUnidades;
    procedure fijarBotonesDetalle;
    procedure guardarComplementos;
    procedure verificarSaldos;
    procedure verfificarFechas;
    procedure BeforeRecord;
    procedure BeforeUpdate;
    procedure AfterRecord;
    procedure almacenar(vMedida, vColor : variant);
    procedure almacenarCorrida(vMedida, vColor : variant);
    procedure impresion;
    procedure ventasAnteriores;
    procedure notasDeCredito;
    procedure fijarBotonesP;overload;
    procedure fijarBotonesP(valor : boolean);overload;

    function CreandoXML(P_FOLIO : integer) : string;
    function remplazaStr(busca, remplaza, Str : string) : string;
    function dameEntero(v_numero : Double) : integer;
    function dameFraccion(v_numero : Double) : integer;
    function dameFileKey : string;
    function ejecucionRetencionIVA : boolean;
    function ejecucionRetencionISR : boolean;
    function ejecucionRetencionDetalleIVA : boolean;
    function ejecucionRetencionDetalleISR : boolean;
  public
    { Public declarations }
  end;

var
  frmCapturar_facturas: TfrmCapturar_facturas;

implementation

uses
  ShellApi, IBModulo, IBData, reglas_de_negocios,
  explorar_facturas, seleccionar_pedidos, seleccionar_cliente,
  seleccionar_extension, PRN_0012_Facturacion, seleccionar_material,
  PRN_0003_FACTURAR_TXT, frmConsultaVentasAnteriores, UfrmAltaRapidaMateriales,
  UfrmGuiaEmbarque, PRN_0028, UfrmSeleccionarCliente,
  UfrmSeleccionarExtension, UPRN_0041, UPRN_0042, UfrmAcceso,
  UfrmSeleccionarPedidoParaFacturas, UfrmFolio, UfrmInsuficienciasFactura,
  UfrmFacturasGastos, UfrmElegirCFF;

{$R *.DFM}

procedure WinExecNoWait32(FileName:String; Visibility : integer);
{Ejectuta el programa y espera a que termine.
Las opciones de visibilidad son las típicas
en estos casos: SW_HIDE, SW_MAXIMIZE, SW_MINIMIZE, SW_RESTORE,
                SW_SHOW, SW_SHOWDEFAULT, SW_SHOWMAXIMIZED,
                SW_SHOWMINIMIZED, SW_SHOWMINNOACTIVE, SW_SHOWNA,
                SW_SHOWNOACTIVATE, SW_SHOWNORMAL
                Si necesitas más información sobre estas opciones
                busca la función ShowWindow en la ayuda del Api de
                Windows}
var
  zAppName:array[0..512] of char;
  zCurDir:array[0..255] of char;
  WorkDir:String;
  StartupInfo:TStartupInfo;
  ProcessInfo:TProcessInformation;
begin
  StrPCopy(zAppName,FileName);
  GetDir(0,WorkDir);
  StrPCopy(zCurDir,WorkDir);
  FillChar(StartupInfo,Sizeof(StartupInfo),#0);
  StartupInfo.cb := Sizeof(StartupInfo);

  StartupInfo.dwFlags := STARTF_USESHOWWINDOW;
  StartupInfo.wShowWindow := Visibility;
  CreateProcess(nil,
    zAppName,
    nil,
    nil,
    false,
    CREATE_NEW_CONSOLE or
    NORMAL_PRIORITY_CLASS,
    nil,
    nil,
    StartupInfo,
    ProcessInfo);
end;

procedure TfrmCapturar_facturas.fijarBotonesP(valor : boolean);
begin
//   edicionP := valor;
   fijarBotonesP;
end;

procedure TfrmCapturar_facturas.fijarBotonesP;
begin
{   buF7P.Enabled     := not edicionP;
   buF8P.Enabled     := not edicionP and not(dsGastos.DataSet.IsEmpty);
   buF9P.Enabled     := edicionP;
   buF10P.Enabled    := edicionP;
   buF11P.Enabled    := not edicionP and not(dsGastos.DataSet.IsEmpty);
   dgPresentaciones.Enabled := not edicionP;

   itemF7P.Enabled  := buF7P.Enabled;
   itemF8P.Enabled  := buF8P.Enabled;
   itemF9P.Enabled  := buF9P.Enabled;
   itemF10P.Enabled := buF10P.Enabled;
   itemF11P.Enabled := buF11P.Enabled;}
end;

function TfrmCapturar_facturas.ejecucionRetencionIVA : boolean;
var
   ejecutar  : boolean;
begin
   frmAcceso := TfrmAcceso.Create(Application);
   try
      frmAcceso.UnicoN := 'Todos';
      frmAcceso.Unico  := 0;
      frmAcceso.Nivel  := 5;
      frmAcceso.Status := 'Retencion I.V.A.';
      frmAcceso.ShowModal;
      ejecutar := frmAcceso.Rsp;
   finally
      frmAcceso.Free;
   end;

  if ejecutar then
  begin
  {
     idCaptura.Titulo  := 'Retencion I.V.A.';
     idCaptura.Texto   := 'Porcentaje';
     idCaptura.Entrada := '';
     idCaptura.Execute;
     ejecutar := idCaptura.Respuesta;
     if ejecutar and (idCaptura.Entrada <> '') then
     begin
        spRETENCION_IVA_FACTURA.ParamByName('P_ID').AsInteger       := dsFuente.DataSet.FieldByName('ID').AsInteger;
        spRETENCION_IVA_FACTURA.ParamByName('P_PORCENTAJE').AsFloat := StrToFloat(idCaptura.Entrada);
        spRETENCION_IVA_FACTURA.ExecProc;
        spRETENCION_IVA_FACTURA.Transaction.CommitRetaining;
     end;
     }
  end;
  Result := ejecutar;
end;

function TfrmCapturar_facturas.ejecucionRetencionISR : boolean;
var
   ejecutar  : boolean;
begin
   frmAcceso := TfrmAcceso.Create(Application);
   try
      frmAcceso.UnicoN := 'Todos';
      frmAcceso.Unico  := 0;
      frmAcceso.Nivel  := 5;
      frmAcceso.Status := 'Retencion I.S.R.';
      frmAcceso.ShowModal;
      ejecutar := frmAcceso.Rsp;
   finally
      frmAcceso.Free;
   end;

  if ejecutar then
  begin
  {
     idCaptura.Titulo  := 'Retencion I.S.R.';
     idCaptura.Texto   := 'Porcentaje';
     idCaptura.Entrada := '';
     idCaptura.Execute;
     ejecutar := idCaptura.Respuesta;
     if ejecutar and (idCaptura.Entrada <> '') then
     begin
        spRETENCION_ISR_FACTURA.ParamByName('P_ID').AsInteger       := dsFuente.DataSet.FieldByName('ID').AsInteger;
        spRETENCION_ISR_FACTURA.ParamByName('P_PORCENTAJE').AsFloat := StrToFloat(idCaptura.Entrada);
        spRETENCION_ISR_FACTURA.ExecProc;
        spRETENCION_ISR_FACTURA.Transaction.CommitRetaining;
     end;
     }
  end;
  Result := ejecutar;
end;

function TfrmCapturar_facturas.ejecucionRetencionDetalleIVA : boolean;
var
   ejecutar  : boolean;
begin
   frmAcceso := TfrmAcceso.Create(Application);
   try
      frmAcceso.UnicoN := 'Todos';
      frmAcceso.Unico  := 0;
      frmAcceso.Nivel  := 5;
      frmAcceso.Status := 'Retencion Detalle I.V.A.';
      frmAcceso.ShowModal;
      ejecutar := frmAcceso.Rsp;
   finally
      frmAcceso.Free;
   end;

  if ejecutar then
  begin
  {
     idCaptura.Titulo  := 'Retencion Detalle I.V.A.';
     idCaptura.Texto   := 'Porcentaje';
     idCaptura.Entrada := '';
     idCaptura.Execute;
     ejecutar := idCaptura.Respuesta;
     if ejecutar and (idCaptura.Entrada <> '') then
     begin
        spRETENCION_IVA_FACTURA_DET.ParamByName('P_ID').AsInteger       := dsPartidas.DataSet.FieldByName('R_ID').AsInteger;
        spRETENCION_IVA_FACTURA_DET.ParamByName('P_PORCENTAJE').AsFloat := StrToFloat(idCaptura.Entrada);
        spRETENCION_IVA_FACTURA_DET.ExecProc;
        spRETENCION_IVA_FACTURA_DET.Transaction.CommitRetaining;
     end;
     }
  end;
  Result := ejecutar;
end;

function TfrmCapturar_facturas.ejecucionRetencionDetalleISR : boolean;
var
   ejecutar  : boolean;
begin
   frmAcceso := TfrmAcceso.Create(Application);
   try
      frmAcceso.UnicoN := 'Todos';
      frmAcceso.Unico  := 0;
      frmAcceso.Nivel  := 5;
      frmAcceso.Status := 'Retencion Detalle I.S.R.';
      frmAcceso.ShowModal;
      ejecutar := frmAcceso.Rsp;
   finally
      frmAcceso.Free;
   end;

  if ejecutar then
  begin
  {
     idCaptura.Titulo  := 'Retencion Detalle I.S.R.';
     idCaptura.Texto   := 'Porcentaje';
     idCaptura.Entrada := '';
     idCaptura.Execute;
     ejecutar := idCaptura.Respuesta;
     if ejecutar and (idCaptura.Entrada <> '') then
     begin
        spRETENCION_ISR_FACTURA_DET.ParamByName('P_ID').AsInteger       := dsPartidas.DataSet.FieldByName('R_ID').AsInteger;
        spRETENCION_ISR_FACTURA_DET.ParamByName('P_PORCENTAJE').AsFloat := StrToFloat(idCaptura.Entrada);
        spRETENCION_ISR_FACTURA_DET.ExecProc;
        spRETENCION_ISR_FACTURA_DET.Transaction.CommitRetaining;
     end;
     }
  end;
  Result := ejecutar;
end;

procedure TfrmCapturar_facturas.ventasAnteriores;
begin
  fmConsultaVentasAnteriores := TfmConsultaVentasAnteriores.Create(Application);
  fmConsultaVentasAnteriores.ShowModal;
  fmConsultaVentasAnteriores.Free;
end;

procedure TfrmCapturar_facturas.notasDeCredito;
begin
  if not(reglas.seEncontroForma('frmNCreditoAlta')) then
  begin
     frmNCreditoAlta := TfrmNCreditoAlta.Crear(Application, -1);

     frmNCreditoAlta.acomodarPantalla;
     frmNCreditoAlta.edDGlobal.Text  := dsFuente.DataSet.FieldByName('DESCUENTO_GLOBAL_PORC').AsString;
     frmNCreditoAlta.User             := reglas.dame_usuario;
     frmNCreditoAlta.Referencia       := dsFuente.DataSet.FieldByName('ID').AsInteger;
     frmNCreditoAlta.Tabla            := 'FACTURAS';
     frmNCreditoAlta.edFechaAlta.Text := dsFuente.DataSet.FieldByName('FECHA_ALTA').AsString;
     frmNCreditoAlta.edClave.Text     := dsFuente.DataSet.FieldByName('CLAVE').AsString;
     frmNCreditoAlta.edCliente.Text   := dsFuente.DataSet.FieldByName('NOMBRE').AsString;
     frmNCreditoAlta.edCliente.Tag    := dsFuente.DataSet.FieldByName('CLIENTE').AsInteger;
     frmNCreditoAlta.edExtension.Text := dsFuente.DataSet.FieldByName('EXTENSION_NOMBRE').AsString;
     frmNCreditoAlta.edExtension.Tag  := dsFuente.DataSet.FieldByName('EXTENSION').AsInteger;
     frmNCreditoAlta.cbMonedas.KeyValue    := dsFuente.DataSet.FieldByName('MONEDA').AsInteger;
     frmNCreditoAlta.cbAlmOrigen.KeyValue  := dsFuente.DataSet.FieldByName('ALMACEN').AsInteger;
     frmNCreditoAlta.cbAlmDestino.KeyValue := dsFuente.DataSet.FieldByName('ALMACEN').AsInteger;
     frmNCreditoAlta.edEstatus.Text := 'Sin Afectar';

     frmNCreditoAlta.Show;

     frmNCreditoAlta.nuevo;
     frmNCreditoAlta.buGuardar.Click;
  end
end;

function TfrmCapturar_facturas.dameFileKey : string;
var
   v_file : string;
   v_pos  : integer;
begin
   v_file := qyCFD.FieldByName('R_RUTA_KEY').AsString;
   v_file := reglas.espejo(v_file);
   v_pos     := reglas.encontrarCaracter(v_file, '\');
   v_file := reglas.copiarStr(v_file, v_pos - 1);
   v_file := reglas.espejo(v_file);

   result := v_file;
end;

function TfrmCapturar_facturas.remplazaStr(busca, remplaza, Str : string) : string;
begin
   while Pos(busca,Str) > 0 do
   begin
      insert(remplaza, Str, Pos(busca,Str));
      delete(Str, Pos(busca,Str), Length(busca));
   end;
   result := Str;
end;

function TfrmCapturar_facturas.dameEntero(v_numero : Double) : integer;
var
   tmp : string;
   rsp : string;
   i   : integer;
begin
   tmp := FormatFloat('########0.00', v_numero);
   rsp := '';
   for i := 1 to length(tmp) do
   begin
      if tmp[i] = '.' then
         break
      else
         rsp := rsp + tmp[i];
   end;

   result := StrToInt(rsp);
end;

function TfrmCapturar_facturas.dameFraccion(v_numero : Double) : integer;
var
   tmp : string;
   rsp : string;
   i   : integer;
begin
   rsp := FormatFloat('########0.00', v_numero);
   rsp := reglas.espejo(rsp);
   tmp := '';
   for i := 1 to length(rsp) do
   begin
      if rsp[i] = '.' then
         break
      else
         tmp := tmp + rsp[i];
   end;
   rsp := reglas.espejo(tmp);

   result := StrToInt(rsp);
end;

function TfrmCapturar_facturas.CreandoXML(P_FOLIO : integer) : string;
{var
   xml         : TStringList;
   ruta        : string;
   StreamCer   : TMemoryStream;
   cer         : TStringList;
   i           : integer;
   certificado : string;
   rfcEmisor   : string;
   rfcReceptor : string;
   iva         : double;
   iva_desc    : double;
   archXML     : string;
   v_fracc     : string;
   v_letras    : string;}
begin
{   //Revisar la Empresa
   qyEmpresa.Close;
   qyEmpresa.Open;
   //Extraer datos de configuracion del CFD(Comprobante Fiscal Digital)
   qyCFD.Close;
   qyCFD.ParamByName('P_ID').AsInteger := qyEmpresa.FieldByName('R_CFD').AsInteger;
   qyCFD.Open;

   ruta := ExtractFileDir(qyCFD.FieldByName('R_RUTA_KEY').AsString) + '\';

   cer := TStringList.Create;
   try
      StreamCer := TMemoryStream.Create;
      try
         TBlobField(qyCFD.FieldByName('R_CERTIFICADO')).SaveToStream(StreamCer);
         StreamCer.Position := 0;
         cer.LoadFromStream(StreamCer);
      finally
         StreamCer.Free;
      end;
      certificado := '';
      for i:= 0 to cer.Count - 1 do
      begin
         certificado := certificado + cer.Strings[i];
      end;
   finally
      cer.Free;
   end;

   iva_desc := TCapturar.FieldByName('IVA_DP').AsFloat + TCapturar.FieldByName('IVA_DG').AsFloat;
   xml      := TStringList.Create;
   xml.Clear;
   xml.Add('<?xml version="1.0" encoding="UTF-8"?>');
   xml.Add('<Comprobante xmlns="http://www.sat.gob.mx/cfd/2"');
       xml.Add('xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"');
       xml.Add('xsi:schemaLocation="http://www.sat.gob.mx/cfd/2 http://www.sat.gob.mx/sitio_internet/cfd/2/cfdv2.xsd"');
       xml.Add('version = "2.0"');
       //--------------------------------------------------------------------opcional
{       if  TCapturar.FieldByName('SERIE_FACTURA').AsString <> '' then}
{       xml.Add('serie="'+''+'"');
       //----------------------------------------------------------------------------
       xml.Add('folio="'+'0'+'"');
       xml.Add('fecha="'+FormatDatetime('yyyy-mm-dd',TCapturar.FieldByName('FECHA_ALTA').AsDatetime)+'T'+FormatDatetime('hh:mm:ss',TCapturar.FieldByName('FECHA_ALTA').AsDatetime)+'"');
       xml.Add('sello="' + '' +'"');
       xml.Add('noAprobacion="' + '' +'"');
       xml.Add('anoAprobacion="'+ '' +'"');
       xml.Add('tipoDeComprobante="ingreso"');
       xml.Add('formaDePago="Pago en una sola exhibicion"');
       xml.Add('noCertificado="'    + '' +'"');
       xml.Add('certificado="'      + certificado                                       +'"');
       xml.Add('condicionesDePago="'+ TCapturar.FieldByName('nombre_condicion').AsString+'"');

       xml.Add('subTotal="'     + FormatFloat('##########0.00', TCapturar.FieldByName('SUBTOTAL').AsFloat)+'"');
       xml.Add('descuento="'    + FormatFloat('##########0.00', TCapturar.FieldByName('DESCUENTO_CANTIDAD_GLOBAL').AsFloat + TCapturar.FieldByName('DESCUENTO_CANTIDAD_PARCIAL').AsFloat - iva_desc)+'"');
       xml.Add('total="'        + FormatFloat('##########0.00', TCapturar.FieldByName('GRANTOTAL').AsFloat)+'">');

       //Emisor
{       rfcEmisor := remplazaStr('-','', qyEmpresa.FieldByName('R_RFC').AsString);
       rfcEmisor := remplazaStr(' ','', rfcEmisor);}
{       xml.Add('<Emisor rfc="'+ '' + '" '+
                    'nombre="'+ '' + '">');
          xml.Add('<DomicilioFiscal calle="'+ '' + '" '+
                              'noExterior="'+ '' + '" '+
                                 'colonia="'+ '' + '" '+
                               'localidad="'+ '' + '" '+
                               'municipio="'+ '' + '" '+
                                  'estado="'+ '' + '" '+
                                    'pais="'+ '' + '" '+
                            'codigoPostal="'+ '' + '"/>');

          xml.Add('<ExpedidoEn calle="'+qyEmpresa.FieldByName('R_CALLE').AsString    +' ' + qyEmpresa.FieldByName('R_NUM_EXT').AsString +'" '+
                          'localidad="'+qyEmpresa.FieldByName('R_LOCALIDAD').AsString+'" '+
                          'municipio="'+qyEmpresa.FieldByName('R_MUNICIPIO').AsString+'" '+
                             'estado="'+qyEmpresa.FieldByName('R_ESTADO').AsString   +'" '+
                               'pais="'+qyEmpresa.FieldByName('R_PAIS').AsString     +'" '+
                       'codigoPostal="'+qyEmpresa.FieldByName('R_CP').AsString       +'"/>');
       xml.Add('</Emisor>');

       //Receptor
       rfcReceptor := remplazaStr('-','', TCapturar.FieldByName('RFC').AsString);
       rfcReceptor := remplazaStr(' ','', rfcReceptor);
       xml.Add('<Receptor rfc="'+rfcReceptor                             +'" '+
                      'nombre="'+TCapturar.FieldByName('NOMBRE').AsString+'">');

                xml.Add('<Domicilio calle="'+TCapturar.FieldByName('DIRECCION').AsString +'" '+
                              'noExterior="'+TCapturar.FieldByName('NUM_EXT').AsString   +'" '+
                                 'colonia="'+TCapturar.FieldByName('COLONIA').AsString   +'" '+
                               'localidad="'+TCapturar.FieldByName('LOCALIDAD').AsString +'" '+
                               'municipio="'+TCapturar.FieldByName('CIUDAD').AsString    +'" '+
                                  'estado="'+TCapturar.FieldByName('ESTADO').AsString    +'" '+
                                    'pais="'+TCapturar.FieldByName('PAIS').AsString      +'" '+
                            'codigoPostal="'+TCapturar.FieldByName('CP').AsString        +'"/>');
       xml.Add('</Receptor>');

       //Conceptos
       xml.Add('<Conceptos>');
             qyPartidas.First;
             while not(qyPartidas.Eof) do
             begin
                xml.Add('<Concepto noIdentificacion="'+qyPartidas.FieldByName('R_ID').AsString                 +'" '+
                                          'cantidad="'+qyPartidas.FieldByName('R_CANTIDAD').AsString           +'" '+
                                            'unidad="'+qyPartidas.FieldByName('R_DESCRIPCION_UNIDAD').AsString +'" '+
                                       'descripcion="'+qyPartidas.FieldByName('R_DESCRIPCION').AsString        +'" '+

                             'valorUnitario="'+FormatFloat('##########0.00', qyPartidas.FieldByName('R_PRECIO_SIN_IMPUESTOS').AsFloat)+'" '+
                                   'importe="'+FormatFloat('##########0.00', qyPartidas.FieldByName('R_PSI_IMPORTE').AsFloat)         +'"/>');
                qyPartidas.Next;
             end;
       xml.Add('</Conceptos>');

       //Impuestos
       iva := TCapturar.FieldByName('IVA').AsFloat - iva_desc;
       xml.Add('<Impuestos totalImpuestosTrasladados="'+FormatFloat('##########0.00', iva)+'">');
             xml.Add('<Traslados>');
                xml.Add('<Traslado impuesto="IVA'                                +'" '+
                                      'tasa="'+FormatFloat('###0.00', awrIVAPorc)+'" '+
                                   'importe="'+FormatFloat('##########0.00', iva)+'"/>');
             xml.Add('</Traslados>');
       xml.Add('</Impuestos>');
   xml.Add('</Comprobante>');

   if  TCapturar.FieldByName('SERIE_FACTURA').AsString = '' then
      archXML := rfcReceptor +'-'+IntToStr(P_FOLIO)+'.xml'
   else
      archXML := rfcReceptor +' '+ TCapturar.FieldByName('SERIE_FACTURA').AsString +'-'+IntToStr(P_FOLIO)+'.xml';
   xml.SaveToFile(ruta + archXML);

   //XML ADDENDA AWR
   xml.Clear;
   xml.Add('<?xml version="1.0" encoding="UTF-8"?>');
   xml.Add('<Addenda xmlns="http://www.sat.gob.mx/cfd/2"');
       xml.Add('xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"');
       xml.Add('xsi:schemaLocation="http://www.sat.gob.mx/cfd/2 http://www.sat.gob.mx/sitio_internet/cfd/2/cfdv2.xsd"');
       xml.Add('version = "2.0"');
       v_fracc           := IntToStr(dameFraccion(TCapturar.FieldByName('GRANTOTAL').AsFloat));
       leTotal.Masculino := true;
       leTotal.Separador := '.';
       leTotal.Numero    := dameEntero(TCapturar.FieldByName('GRANTOTAL').AsFloat);
       leTotal.Moneda    := TCapturar.FieldByName('descripcion_moneda').AsString;
       v_letras          := UpperCase(leTotal.AsString + ' ' + v_fracc + '/100 ' + TCapturar.FieldByName('moneda_c').AsString);
       xml.Add('cantidadConLetra="'+v_letras+'"');
         xml.Add('cadenaOriginal=""');
         xml.Add('selloDigital=""');
         xml.Add('archivoXML="'  +archXML    +'"');
         xml.Add('fileKey="'     +dameFileKey+'"');
         xml.Add('keyPublica="'  +qyCFD.FieldByName('R_CLAVE_CER').AsString+'">');
   xml.Add('</Addenda>');
   xml.SaveToFile(ruta + 'AWR_' + archXML);
   xml.Free;

   result := archXML;}
end;

procedure TfrmCapturar_facturas.Impresion;
begin
  if MarcoMateriales1.FLAG_MEDIDAS then
     itemMedidas.Click
  else
     itemImprimir.Click;
end;

procedure TfrmCapturar_facturas.BeforeUpdate;
//var
  //N: TdxTreeListNode;
begin
   {
   if MarcoMateriales1.FLAG_ESTADO = stNuevo then
   begin
      Key    := dsPartidas.DataSet.FieldByName('R_ID').AsInteger;
      TopIdx := 0;
   end
   else
      begin
         N := dgPartidas.FocusedNode;

         if N = nil then
           TopIdx := -1
         else
         begin
           Key    := TdxDBGridNode(N).Id;
           TopIdx := dgPartidas.TopIndex;
         end;
      end;
      }
end;

procedure TfrmCapturar_facturas.BeforeRecord;
//var
  //N: TdxTreeListNode;
begin
{
  N := dgPartidas.FocusedNode.GetNextNode;
  if N = nil then
    N := dgPartidas.FocusedNode.GetPriorNode;

  if N = nil then
    TopIdx := -1
  else
  begin
    Key := TdxDBGridNode(N).Id;
    TopIdx := dgPartidas.TopIndex;
  end;
  }
end;

procedure TfrmCapturar_facturas.AfterRecord;
//var
  //N: TdxTreeListNode;
begin
{
  if TopIdx <> -1 then
  begin
    dgPartidas.TopIndex := TopIdx;
    N := dgPartidas.FindNodeByKeyValue(Key);
    if N <> nil then
    begin
       N.Focused  := True;
       N.Selected := true;
    end;
  end;
}
end;

procedure TfrmCapturar_facturas.verfificarFechas;
var
   fraccion   : Real;
   entero     : Real;
begin
   //validacion fecha alta
   if deFechaAlta.Focused then
      deClave.SetFocus;
   entero   := Int(StrToDateTime(deFechaAlta.Text));
   fraccion := Frac(StrToDateTime(deFechaAlta.Text));
   if entero > 0 then
   begin
      if fraccion = 0 then
         dsFuente.DataSet.FieldByName('FECHA_ALTA').AsDateTime := StrToDateTime(deFechaAlta.Text) + time;
   end;
end;

procedure TfrmCapturar_facturas.verificarSaldos;
begin
   if dsFuente.DataSet.FieldByName('CLIENTE').AsInteger <> 0 then
   begin
      if msg_limite or msg_vencidos then
      begin
         qyMsg.Close;
         qyMsg.ParamByName('P_CLIENTE').AsInteger := dsFuente.DataSet.FieldByName('CLIENTE').AsInteger;
         qyMsg.ParamByName('P_ALMACEN').AsInteger := dsFuente.DataSet.FieldByName('ALMACEN').AsInteger;
         qyMsg.Open;
      end;
      if msg_limite and (qyMsg.FieldByName('R_MSG_LIMITE').AsString = 'SI') then
      begin
         ShowMessage('Su limite es: '+FormatFloat('$ ###,###,##0.00',qyMsg.FieldByName('R_LIMITE').AsFloat)+#13+'Saldo de: '+FormatFloat('$ ###,###,##0.00',qyMsg.FieldByName('R_SALDO').AsFloat));
      end;
      if msg_vencidos and (qyMsg.FieldByName('R_MSG_VENCIDO').AsString = 'SI') then
      begin
         ShowMessage('Vencido es: '+FormatFloat('$ ###,###,##0.00',qyMsg.FieldByName('R_TOTAL_VENCIDO').AsFloat)+#13+'Vencido en este almacen: : '+FormatFloat('$ ###,###,##0.00',qyMsg.FieldByName('R_ALMACEN_VENCIDO').AsFloat));
      end;

      if (msg_limite   and (qyMsg.FieldByName('R_MSG_LIMITE').AsString  = 'SI')) or
         (msg_vencidos and (qyMsg.FieldByName('R_MSG_VENCIDO').AsString = 'SI')) then
      begin
         if dsFuente.DataSet.FieldByName('ESTATUS').AsString = 'Sin Afectar' then
            dsFuente.DataSet.FieldByName('ESTATUS').AsString := 'Autorizar';
      end
      else
         begin
            if dsFuente.DataSet.FieldByName('ESTATUS').AsString = 'Autorizar' then
               dsFuente.DataSet.FieldByName('ESTATUS').AsString := 'Sin Afectar';
         end;
   end;
end;

procedure TfrmCapturar_facturas.fijarBotonesDetalle;
var
   st : boolean;
begin
  st := (dsFuente.DataSet.FieldByName('ESTATUS').AsString = 'Afectado' ) or
        (dsFuente.DataSet.FieldByName('ESTATUS').AsString = 'Cancelado') or
        (dsFuente.DataSet.FieldByName('ESTATUS').AsString = 'Terminado') or
        (dsFuente.DataSet.FieldByName('ESTATUS').AsString = 'Surtido');

  ibNuevaPartida.Enabled     := not edicionDetalle and not(st);
  ibModificarPartida.Enabled := not edicionDetalle and not(st) and not(dsPartidas.DataSet.IsEmpty);
  ibEliminarPartida.Enabled  := not edicionDetalle and not(st) and not(dsPartidas.DataSet.IsEmpty);
  ibGuardarPartida.Enabled   := edicionDetalle and not(st);
  ibCancelarPartida.Enabled  := edicionDetalle and not(st);
  MarcoMateriales1.Visible   := edicionDetalle and not(st);
  ibPedidos.Enabled          := not edicionDetalle and not(st);
  buTickets.Enabled          := not edicionDetalle and not(st);
  ibReAgrupar.Enabled        := not edicionDetalle and not(st) and not(dsPartidas.DataSet.IsEmpty);

  {
  dgPartidas.Enabled                     := not edicionDetalle;
  dgPartidasCantidad.Buttons[0].Visible  := not edicionDetalle and not(st) and not(dsPartidas.DataSet.IsEmpty);
  dgPartidasCajas.Buttons[0].Visible     := not edicionDetalle and not(st) and not(dsPartidas.DataSet.IsEmpty);
  dgPartidasPiezas.Buttons[0].Visible    := not edicionDetalle and not(st) and not(dsPartidas.DataSet.IsEmpty);
  dgPartidasKilos.Buttons[0].Visible     := not edicionDetalle and not(st) and not(dsPartidas.DataSet.IsEmpty);
  }
  paExtra.Visible := edicionDetalle and (paCajas.Visible or paKilos.Visible or paPiezas.Visible);
  if paExtra.Visible then
     fpCaptura.Height := fpCaptura.Height + paExtra.Height
  else
     if fpCaptura.Height > fpCaptura.Tag then
        fpCaptura.Height := fpCaptura.Tag;

  //dgPartidas.FullExpand;
end;

procedure TfrmCapturar_facturas.factoresUnidades;
begin
   if MarcoMateriales1.edMaterial.Tag <> 0 then
   begin
      if (MarcoMateriales1.cbUnidades.KeyValue <> 0) and
         (MarcoMateriales1.cbUnidades.KeyValue <> 0) and
         (MarcoMateriales1.edCantidad.Text <> '0') then
      begin
         if (MarcoMateriales1.cbUnidades.KeyValue = UnidadCajas) and paCajas.Visible then
         begin
            qyConversionKilos.Close;
            qyConversionKilos.ParamByName('P_CANTIDAD').AsFloat   := StrToFloat(MarcoMateriales1.edCantidad.Text);
            qyConversionKilos.ParamByName('P_UNIDAD').AsInteger   := MarcoMateriales1.cbUnidades.KeyValue;
            qyConversionKilos.ParamByName('P_MATERIAL').AsInteger := MarcoMateriales1.edMaterial.Tag;
            qyConversionKilos.Open;
            edCajas.Text  := MarcoMateriales1.edCantidad.Text;
            edKilos.Text  := qyConversionKilos.FieldByName('R_KILOS').AsString;
            edPiezas.Text := '0.00';
         end
         else
            if (MarcoMateriales1.cbUnidades.KeyValue = UnidadKilos) and paKilos.Visible then
            begin
               qyConversionCajas.Close;
               qyConversionCajas.ParamByName('P_CANTIDAD').AsFloat   := StrToFloat(MarcoMateriales1.edCantidad.Text);
               qyConversionCajas.ParamByName('P_UNIDAD').AsInteger   := MarcoMateriales1.cbUnidades.KeyValue;
               qyConversionCajas.ParamByName('P_MATERIAL').AsInteger := MarcoMateriales1.edMaterial.Tag;
               qyConversionCajas.Open;
               edCajas.Text  := qyConversionCajas.FieldByName('R_CAJAS').AsString;
               edKilos.Text  := MarcoMateriales1.edCantidad.Text;
               edPiezas.Text := '0.00';
            end
            else
               if (MarcoMateriales1.cbUnidades.KeyValue = UnidadPiezas) and paPiezas.Visible then
               begin
                  edCajas.Text  := '0.00';
                  edKilos.Text  := '0.00';
                  edPiezas.Text := MarcoMateriales1.edCantidad.Text;
               end;
      end;
   end;
end;

procedure TfrmCapturar_facturas.refreshTotales(vCual : integer);
begin
   if vCual = 0 then
      BeforeRecord
   else
      BeforeUpdate;

  spTOTALES_FACTURA.ParamByName('P_FACTURA').AsInteger := dsFuente.DataSet.FieldByName('ID').AsInteger;
  spTOTALES_FACTURA.ExecProc;
  spTOTALES_FACTURA.Transaction.CommitRetaining;
  reglas.abrir_IBTabla(TCapturar);
  reglas.refresh_IBQuery(qyPartidas);

  AfterRecord;
end;

procedure TfrmCapturar_facturas.FormCreate(
  Sender: TObject);
begin
  MarcoMateriales1.MOVIMIENTO  := obSalida;
  MarcoMateriales1.inicializar(true);
  MarcoMateriales1.PEDIR_SERIE := true;

  reglas.abrir_IBTabla(dmIBData.TFiltroClientes);
  reglas.abrir_IBTabla(dmIBData.TFiltroClientesExtensiones);
  reglas.abrir_IBTabla(dmIBData.TFiltroAlmacenes);
  reglas.refresh_IBQuery(dmIBData.qyAlmacenes);

  inherited;
  reglas.refresh_IBQuery(qyPartidas);
  reglas.abrir_IBTabla(dmIBData.TPreferencias);

  //msg limite
  dmIBData.TPreferencias.Filter := 'ID = 71';
  msg_limite := UpperCase(dmIBData.TPreferencias.FieldByName('VALOR').AsString) = 'SI';
  //msg vencidos
  dmIBData.TPreferencias.Filter := 'ID = 122';
  msg_vencidos := UpperCase(dmIBData.TPreferencias.FieldByName('VALOR').AsString) = 'SI';
  //Numero de partidas por factura.
  dmIBData.TPreferencias.Filter := 'ID = 43';
  partidas := dmIBData.TPreferencias.FieldByName('VALOR').AsInteger;
  //activar campo cajas en grid.
  dmIBData.TPreferencias.Filter := 'ID = 33';
  {
  if UpperCase(dmIBData.TPreferencias.FieldByName('VALOR').AsString) = 'SI' then
  begin
     dmIBData.TPreferencias.Filter := 'ID = 73';
     paCajas.Caption         := dmIBData.TPreferencias.FieldByName('VALOR').AsString;
     dgPartidasCajas.Caption := reglas.solo_alfabeto(dmIBData.TPreferencias.FieldByName('VALOR').AsString);
     dgPartidasCajas.Visible := true;
     paCajas.Visible         := true;
  end
  else
     begin
        dgPartidasCajas.Visible := false;
        paCajas.Visible         := false;
     end;
  }
  //activar columna kilos en grid.
  dmIBData.TPreferencias.Filter := 'ID = 60';
  if UpperCase(dmIBData.TPreferencias.FieldByName('VALOR').AsString) = 'SI' then
  begin
     //dgPartidasKilos.Visible := true;
     paKilos.Visible         := true;
  end
  else
     begin
        //dgPartidasKilos.Visible := false;
        paKilos.Visible         := false;
     end;

  //activar columna piezas en grid.
  dmIBData.TPreferencias.Filter := 'ID = 54';
  if UpperCase(dmIBData.TPreferencias.FieldByName('VALOR').AsString) = 'SI' then
  begin
     //dgPartidasPiezas.Visible := true;
     paPiezas.Visible         := true;
  end
  else
     begin
       // dgPartidasPiezas.Visible := false;
        paPiezas.Visible         := false;
     end;

  //Unidad Cajas
  dmIBData.TPreferencias.Filter := 'ID = 19';
  unidadCajas := dmIBData.TPreferencias.FieldByName('VALOR').AsInteger;
  //Unidad Kilos
  dmIBData.TPreferencias.Filter := 'ID = 21';
  unidadKilos := dmIBData.TPreferencias.FieldByName('VALOR').AsInteger;
  //Unidad Piezas
  dmIBData.TPreferencias.Filter := 'ID = 59';
  unidadPiezas := dmIBData.TPreferencias.FieldByName('VALOR').AsInteger;

  //activar total factura capturar
  dmIBData.TPreferencias.Filter := 'ID = 39';
  awrCapturar := UpperCase(dmIBData.TPreferencias.FieldByName('VALOR').AsString) = 'SI';
  //laCapturar.Visible  := awrCapturar;
  //deCapturar.Visible  := awrCapturar;
  //sbCapturado.Visible := awrCapturar;

  //activar total factura capturado
  dmIBData.TPreferencias.Filter := 'ID = 130';
  awrAlmGral := dmIBData.TPreferencias.FieldByName('VALOR').AsInteger;

  //Activar columna Medidas
  //dgPartidasMEDIDAS.Visible := MarcoMateriales1.FLAG_MEDIDAS;
  //Activar columna colores
  //dgPartidasCOLORES.Visible := MarcoMateriales1.FLAG_COLORES;

{  Lista de Precios x Descuentos
  dmIBData.TPreferencias.Filter := 'ID = 80';
  awrLPxDesc                    := UpperCase(dmIBData.TPreferencias.FieldByName('VALOR').AsString) = 'PORDESCUENTO';
  MarcoMateriales1.ENABLED_DP   := not(awrLPxDesc);}

  //Activar Seguro
  dmIBData.TPreferencias.Filter := 'ID = 157';
  awrSeguro := UpperCase(dmIBData.TPreferencias.FieldByName('VALOR').AsString) = 'SI';
  //laGranTotal.Visible  := awrSeguro;
  //edGranTotal.Visible  := awrSeguro;
  //laSeguro.Visible     := awrSeguro;
  //edSeguro.Visible     := awrSeguro;

  //Cliente Ventas Mostrador
  dmIBData.TPreferencias.Filter := 'ID = 10';
  awrClienteMost := dmIBData.TPreferencias.FieldByName('VALOR').AsInteger;

  //activar Fecha de Alta
  dmIBData.TPreferencias.Filter := 'ID = 327';
  awrActivarFA := UpperCase(dmIBData.TPreferencias.FieldByName('VALOR').AsString) = 'SI';
  //activar Condicion Comercial
  dmIBData.TPreferencias.Filter := 'ID = 329';
  awrActivarCC := UpperCase(dmIBData.TPreferencias.FieldByName('VALOR').AsString) = 'SI';
  //activar Descuento Global
  dmIBData.TPreferencias.Filter := 'ID = 331';
  awrActivarDG := UpperCase(dmIBData.TPreferencias.FieldByName('VALOR').AsString) = 'SI';
  //activar Descuento Parcial
  dmIBData.TPreferencias.Filter := 'ID = 333';
  awrActivarDP := UpperCase(dmIBData.TPreferencias.FieldByName('VALOR').AsString) = 'SI';

  MarcoMateriales1.ENABLED_DP := awrActivarDP;
  awrBtnCancel                := true;

  //Activar Precio
  dmIBData.TPreferencias.Filter := 'ID = 347';
  MarcoMateriales1.edPrecioCosto.Enabled := UpperCase(dmIBData.TPreferencias.FieldByName('VALOR').AsString) = 'SI';

  //IVA Porcentaje
  dmIBData.TPreferencias.Filter := 'ID = 68';
  awrIVAPorc := dmIBData.TPreferencias.FieldByName('VALOR').AsFloat;

  //Permitir Inventario en Negativo
  dmIBData.TPreferencias.Filter := 'ID = 144';
  awrPermInvNeg := UpperCase(dmIBData.TPreferencias.FieldByName('VALOR').AsString) = 'SI';

  //Activar Gastos
  dmIBData.TPreferencias.Filter := 'ID = 374';
  tsGastos.TabVisible := UpperCase(dmIBData.TPreferencias.FieldByName('VALOR').AsString) = 'SI';

//  pcFacturas.ActivePage := tsDatos;
end;

procedure TfrmCapturar_facturas.dsFuenteDataChange(
  Sender: TObject; Field: TField);
var
   estado    : TDataSetState;
   activar   : boolean;
   actNavega : boolean;
begin
  inherited;
  if TDataSource(sender).DataSet <> nil then
  begin
     estado    := TDataSource(sender).DataSet.State;
     activar   := (estado = dsInsert) or (estado = dsEdit);
     actNavega := (dsFuente.DataSet.FieldByName('ESTATUS').AsString = 'Sin Afectar') or (dsFuente.DataSet.FieldByName('ESTATUS').AsString = 'Sin Surtir');

     buAplicar.Enabled      := false;
     paLienzo2.Visible      :=(estado = dsBrowse) and not(TDataSource(sender).DataSet.IsEmpty);
     ibEliminar.Enabled     := ibEliminar.Enabled and not(activar) and actNavega;
     ibVtasDiarias.Enabled  :=(estado = dsBrowse) and not(TDataSource(sender).DataSet.IsEmpty);
     ibImprimir.Enabled     :=(estado = dsBrowse) and not(TDataSource(sender).DataSet.IsEmpty) and ((dsFuente.DataSet.FieldByName('ESTATUS').AsString = 'Sin Afectar') or (dsFuente.DataSet.FieldByName('ESTATUS').AsString = 'ConsolidadaCC') or (dsFuente.DataSet.FieldByName('ESTATUS').AsString = 'Liberado'));

     deFechaAlta.Enabled     := activar and actNavega and awrActivarFA;
     deClave.Enabled         := activar and actNavega;
     ceAnticipo.Enabled      := activar and actNavega;
     cbAlmacenes.Enabled     := activar and actNavega;
     ceDescGlobal.Enabled    := activar and actNavega and awrActivarDG;
     cbPrioridad.Enabled     := activar and actNavega;
//     cbRetencion.Enabled     := activar and actNavega;

     cbEliminarIVA.Enabled           := activar and actNavega;
     deObservaciones.Enabled         := activar and actNavega;
     deObservacionesInternas.Enabled := activar and actNavega;
     
     meTelefono.Enabled      := activar and actNavega;
     deDireccion.Enabled     := activar and actNavega;
     deNumExt.Enabled        := activar and actNavega;
     deNumInt.Enabled        := activar and actNavega;
     deColonia.Enabled       := activar and actNavega;
     deCP.Enabled            := activar and actNavega;
     deLocalidad.Enabled     := activar and actNavega;
     deCiudad.Enabled        := activar and actNavega;
     deEstado.Enabled        := activar and actNavega;
     dePais.Enabled          := activar and actNavega;
     meRFC.Enabled           := activar and actNavega;
     cbCComercial.Enabled    := activar and actNavega and awrActivarCC;
     cbMonedas.Enabled       := activar and actNavega;
     beCliente.Enabled       := activar and actNavega;
     buFolio.Enabled         :=(dsFuente.DataSet.State = dsBrowse) and not(dsFuente.DataSet.IsEmpty);

     edExtension.Visible     := activar and actNavega;

     itemImprimir.Enabled      := ibImprimir.Enabled;
     itemMedidas.Enabled       := ibImprimir.Enabled;
     itemSeries.Enabled        := ibImprimir.Enabled;
     itemCupon.Enabled         := ibImprimir.Enabled;
     itemPagare.Enabled        := ibImprimir.Enabled;
     itemContrato.Enabled      := ibImprimir.Enabled;
     itemPreview.Enabled       := (estado = dsBrowse) and not(TDataSource(sender).DataSet.IsEmpty) and (dsFuente.DataSet.FieldByName('ESTATUS').AsString <> 'Cancelado');
     itemPreviewM.Enabled      := itemPreview.Enabled;
     itemPreviewSeries.Enabled := itemPreview.Enabled;

     itemDiarias.Enabled    := ibVtasDiarias.Enabled;
     itemFIntereses.Enabled :=(estado = dsBrowse) and (dsFuente.DataSet.FieldByName('ESTATUS').AsString = 'ConsolidadaCC');

     if edExtension.Visible then
        edExtension.Text := dsFuente.DataSet.FieldByName('extension_nombre').AsString;
  end;
end;

procedure TfrmCapturar_facturas.ibNuevoClick(
  Sender: TObject);
begin
  inherited;
  dmIBData.TPreferencias.Filter := 'ID = 3';
  if dmIBData.TPreferencias.FieldByName('VALOR').AsInteger <> 0 then
     dsFuente.DataSet.FieldByName('MONEDA').AsInteger := dmIBData.TPreferencias.FieldByName('VALOR').AsInteger;
  dmIBData.spFECHA_SERVIDOR.ExecProc;
  dsFuente.DataSet.FieldByName('FECHA_ALTA').AsDateTime              := dmIBData.spFECHA_SERVIDOR.ParamByName('R_FECHA').AsDateTime;
  dsFuente.DataSet.FieldByName('ESTATUS').AsString                   := 'Sin Afectar';
  dsFuente.DataSet.FieldByName('ORIGEN').AsString                    := 'Pedido';
  dsFuente.DataSet.FieldByName('QUIEN_FACTURO').AsInteger            := reglas.dame_usuario;
  dsFuente.DataSet.FieldByName('PRIORIDAD').AsString                 := 'No';
  dsFuente.DataSet.FieldByName('RETENCION').AsString                 := 'No';
  dsFuente.DataSet.FieldByName('DESCUENTO_GLOBAL_PORC').AsFloat      := 0;
  dsFuente.DataSet.FieldByName('SUBTOTAL').AsFloat                   := 0;
  dsFuente.DataSet.FieldByName('IVA').AsFloat                        := 0;
  dsFuente.DataSet.FieldByName('IEPS').AsFloat                       := 0;
  dsFuente.DataSet.FieldByName('IMPUESTO1').AsFloat                  := 0;
  dsFuente.DataSet.FieldByName('IMPUESTO2').AsFloat                  := 0;
  dsFuente.DataSet.FieldByName('TOTAL').AsFloat                      := 0;
  dsFuente.DataSet.FieldByName('DESCUENTO_CANTIDAD_GLOBAL').AsFloat  := 0;
  dsFuente.DataSet.FieldByName('DESCUENTO_CANTIDAD_PARCIAL').AsFloat := 0;
  dsFuente.DataSet.FieldByName('GRANTOTAL').AsFloat                  := 0;
  dsFuente.DataSet.FieldByName('ALMACEN').AsInteger                  := -3;
  dsFuente.DataSet.FieldByName('CLIENTE').AsInteger                  := -3;
  dsFuente.DataSet.FieldByName('NOMBRE').AsString                    := '<FALTA>';
  dsFuente.DataSet.FieldByName('PAGOS').AsInteger                    := 0;
  dsFuente.DataSet.FieldByName('FINANCIAMIENTO').AsFloat             := 0;
  dsFuente.DataSet.FieldByName('ANTICIPO').AsFloat                   := 0;
  dsFuente.DataSet.FieldByName('ALMACEN').AsInteger                  := awrAlmGral;
  dsFuente.DataSet.FieldByName('ELIMINAR_IVA').AsString              := 'No';

  deClave.SetFocus;
end;

procedure TfrmCapturar_facturas.ibModificarClick(
  Sender: TObject);
begin
  estatus       := dsFuente.DataSet.FieldByName('ESTATUS').AsString;
  tmpDescGlobal := dsFuente.DataSet.FieldByName('DESCUENTO_GLOBAL_PORC').AsFloat;
  awrCliente    := dsFuente.DataSet.FieldByName('CLIENTE').AsInteger;
  awrExtension  := dsFuente.DataSet.FieldByName('EXTENSION').AsInteger;
  inherited;
  if deClave.Enabled then
     deClave.SetFocus;
end;

procedure TfrmCapturar_facturas.ibEliminarPartidaClick(
  Sender: TObject);
var
   i   : integer;
   L   : TList;
   tmp : string;
begin
  inherited;
  if MessageDlg(' ¿ Eliminar Registro ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes  then
  begin
     {
     L := TList.Create;
     for i := 0 to dgPartidas.SelectedCount - 1 do
         L.Add(dgPartidas.SelectedNodes[i]);//no se hace directamente en el grid por que tiene bug, cuando son 2 registros
     for i := 0 to (L.Count - 1) do
     begin
        tmp := TdxTreeListNode(L.Items[i]).Strings[0];
        spDEL_PARTIDA_FACTURA.ParamByName('P_ID').AsString := tmp;
        spDEL_PARTIDA_FACTURA.ExecProc;
        spDEL_PARTIDA_FACTURA.Transaction.CommitRetaining;
     end;
     L.Free;

     refreshTotales(0);

     fijarBotonesDetalle;
     }
  end;
end;

procedure TfrmCapturar_facturas.ibCancelarPartidaClick(
  Sender: TObject);
begin
  inherited;
//h  dsDetalle.DataSet.Cancel;
  edicionDetalle := not edicionDetalle;
  fijarBotonesDetalle;
end;


procedure TfrmCapturar_facturas.guardarComplementos;
begin
   if (paCajas.Visible) and (edCajas.Text <> '0') then
   begin
      spMODIFICAR_CAJAS_FACTURA.ParamByName('P_PARTIDA').AsInteger := Key;
      spMODIFICAR_CAJAS_FACTURA.ParamByName('P_CUANTAS').AsInteger := StrToInt(edCajas.Text);
      spMODIFICAR_CAJAS_FACTURA.ExecProc;
      spMODIFICAR_CAJAS_FACTURA.Transaction.CommitRetaining;
   end;

   if (paPiezas.Visible) and (edPiezas.Text <> '0') then
   begin
      spMODIFICAR_PIEZAS_FACTURA.ParamByName('P_PARTIDA').AsInteger := Key;
      spMODIFICAR_PIEZAS_FACTURA.ParamByName('P_CUANTAS').AsInteger := StrToInt(edPiezas.Text);
      spMODIFICAR_PIEZAS_FACTURA.ExecProc;
      spMODIFICAR_PIEZAS_FACTURA.Transaction.CommitRetaining;
   end;

   if (paKilos.Visible) and (edKilos.Text <> '0.00') then
   begin
      qyMODIFICAR_KILOS_FACTURA.ParamByName('P_PARTIDA').AsInteger := Key;
      qyMODIFICAR_KILOS_FACTURA.ParamByName('P_CUANTOS').AsFloat   := StrToFloat(edKilos.Text);
      qyMODIFICAR_KILOS_FACTURA.ExecSQL;
      qyMODIFICAR_KILOS_FACTURA.Transaction.CommitRetaining;
   end;
end;

procedure TfrmCapturar_facturas.almacenar(vMedida, vColor : variant);
begin
   Key := 0;
   if MarcoMateriales1.FLAG_ESTADO = stModificar then
      Key := dsPartidas.DataSet.FieldByName('R_ID').AsInteger;

   spADD_PARTIDA_FACTURA.ParamByName('P_ID').AsInteger        := dsFuente.DataSet.FieldByName('ID').AsInteger;
   spADD_PARTIDA_FACTURA.ParamByName('P_DETALLE').AsInteger   := Key;
   spADD_PARTIDA_FACTURA.ParamByName('P_MATERIAL').AsInteger  := MarcoMateriales1.edMaterial.Tag;
   spADD_PARTIDA_FACTURA.ParamByName('P_CANTIDAD').AsFloat    := StrToFloat(MarcoMateriales1.edCantidad.Text);
   spADD_PARTIDA_FACTURA.ParamByName('P_PRECIO').AsFloat      := StrToFloat(MarcoMateriales1.edPrecioCosto.Text);
   spADD_PARTIDA_FACTURA.ParamByName('P_UNIDAD').AsInteger    := MarcoMateriales1.cbUnidades.KeyValue;
   spADD_PARTIDA_FACTURA.ParamByName('P_MEDIDA').Value        := vMedida;
   spADD_PARTIDA_FACTURA.ParamByName('P_COLOR').Value         := vColor;
   spADD_PARTIDA_FACTURA.ParamByName('P_PORC_DP').AsFloat     := StrToFloat(MarcoMateriales1.edDescuentoPorc.Text);
   spADD_PARTIDA_FACTURA.ParamByName('P_COMENTARIO').AsString := MarcoMateriales1.edComentario.Text;
   spADD_PARTIDA_FACTURA.ParamByName('P_SERIE').AsString      := MarcoMateriales1.SERIE;
   spADD_PARTIDA_FACTURA.ExecProc;
   spADD_PARTIDA_FACTURA.Transaction.CommitRetaining;

   Key    := spADD_PARTIDA_FACTURA.ParamByName('R_DETALLE').AsInteger;
   TopIdx := 0;

   reglas.abrir_IBTabla(TCapturar);
   reglas.refresh_IBQuery(qyPartidas);

   AfterRecord;

   edicionDetalle := not edicionDetalle;
   FijarBotonesDetalle;
end;

procedure TfrmCapturar_facturas.almacenarCorrida(vMedida, vColor : variant);
begin
   spADD_PARTIDA_FACTURA.ParamByName('P_ID').AsInteger        := dsFuente.DataSet.FieldByName('ID').AsInteger;
   spADD_PARTIDA_FACTURA.ParamByName('P_DETALLE').AsInteger   := 0;
   spADD_PARTIDA_FACTURA.ParamByName('P_MATERIAL').AsInteger  := MarcoMateriales1.edMaterial.Tag;
   spADD_PARTIDA_FACTURA.ParamByName('P_CANTIDAD').AsFloat    := StrToFloat(MarcoMateriales1.edCantidad.Text);
   spADD_PARTIDA_FACTURA.ParamByName('P_PRECIO').AsFloat      := StrToFloat(MarcoMateriales1.edPrecioCosto.Text);
   spADD_PARTIDA_FACTURA.ParamByName('P_UNIDAD').AsInteger    := MarcoMateriales1.cbUnidades.KeyValue;
   spADD_PARTIDA_FACTURA.ParamByName('P_MEDIDA').Value        := vMedida;
   spADD_PARTIDA_FACTURA.ParamByName('P_COLOR').Value         := vColor;
   spADD_PARTIDA_FACTURA.ParamByName('P_PORC_DP').AsFloat     := StrToFloat(MarcoMateriales1.edDescuentoPorc.Text);
   spADD_PARTIDA_FACTURA.ParamByName('P_COMENTARIO').AsString := MarcoMateriales1.edComentario.Text;
   spADD_PARTIDA_FACTURA.ExecProc;
   spADD_PARTIDA_FACTURA.Transaction.CommitRetaining;

   Key    := spADD_PARTIDA_FACTURA.ParamByName('R_DETALLE').AsInteger;
   TopIdx := 0;
end;

procedure TfrmCapturar_facturas.ibGuardarPartidaClick(
  Sender: TObject);
var
   i, j       : integer;
   renglones  : integer;

   v_material : integer;
   v_precio   : double;
   v_medida   : variant;
   v_color    : variant;
   v_ValMin   : boolean;
begin
  inherited;
  v_ValMin   := true;
  //Verificacion del precio sea mayor o igual al precio minimo
  if not(reglas.validar_precio(StrToFloat(MarcoMateriales1.edPrecioCosto.Text), MarcoMateriales1.PRECIOMINIMO, 3)) then
  begin
     v_ValMin := false;
     MarcoMateriales1.edPrecioCosto.Text := FloatToStr(MarcoMateriales1.PRECIOMAXIMO);
  end;

  v_material := MarcoMateriales1.edMaterial.Tag;
  v_precio   := StrToFloat(MarcoMateriales1.edPrecioCosto.Text);

  if v_ValMin then
  begin
     //proceso normal
     if not(MarcoMateriales1.FLAG_MEDIDAS) or (MarcoMateriales1.FLAG_ESTADO = stModificar) then
     begin
        v_medida := 0;
        v_color  := 0;
        if MarcoMateriales1.FLAG_MEDIDAS then
           v_medida := MarcoMateriales1.cbMedidas.KeyValue;
        if MarcoMateriales1.FLAG_COLORES then
           v_color := MarcoMateriales1.cbColores.KeyValue;

        //proceso comun
        almacenar(v_medida, v_color);
        guardarComplementos;
     end
     else
     if MarcoMateriales1.FLAG_MEDIDAS then
     begin
        if MarcoMateriales1.buCapturar.Visible then
        begin
           ibCancelarPartida.Click;

           if MarcoMateriales1.frmHorizontal.colores then
              renglones := MarcoMateriales1.frmHorizontal.renglones
           else
              renglones := 1;

           for i := 1 to renglones do
           begin
              v_color  := 0;
//              v_fecha  := null;

              if MarcoMateriales1.FLAG_COLORES then
                 v_color := MarcoMateriales1.frmHorizontal.color(i);

//              if MarcoMateriales1.frmHorizontal.fecha(i) <> '' then
//                 v_fecha := MarcoMateriales1.frmHorizontal.fecha(i);

              for j := 1 to (MarcoMateriales1.frmHorizontal.columnas) do
              begin
                 if MarcoMateriales1.frmHorizontal.cantStr(i,j) <> '' then
                 begin
                    v_medida := MarcoMateriales1.frmHorizontal.medida(j);

                    MarcoMateriales1.edMaterial.Tag      := v_material;
                    MarcoMateriales1.edPrecioCosto.Text := FloatToStr(v_precio);
                    MarcoMateriales1.edCantidad.Text    := FloatToStr((MarcoMateriales1.frmHorizontal.cantNum(i,j)));

                    almacenarCorrida(v_medida, v_color);
                 end;
              end;
           end;
           reglas.abrir_IBTabla(TCapturar);
           reglas.refresh_IBQuery(qyPartidas);
           fijarBotonesDetalle;

           AfterRecord;
        end;
     end;
  end;
end;

procedure TfrmCapturar_facturas.ibModificarPartidaClick(
  Sender: TObject);
begin
  inherited;
  if not(dsPartidas.DataSet.IsEmpty) then
  begin
     edicionDetalle := not edicionDetalle;
     fijarBotonesDetalle;

     MarcoMateriales1.limpiar;
     //sirve asi, para el caso en que se edite el registro
     //no capturar con boton Capturar.
     MarcoMateriales1.FLAG_ESTADO := stModificar;
     MarcoMateriales1.boton       := true;
     MarcoMateriales1.findMaterial(dsPartidas.DataSet.FieldByName('R_MATERIAL').AsInteger,dsPartidas.DataSet.FieldByName('R_UNIDAD').AsInteger);

     if paCajas.Visible then
        edCajas.Text  := dsPartidas.DataSet.FieldByName('R_CAJAS').AsString;

     if paPiezas.Visible then
        edPiezas.Text := dsPartidas.DataSet.FieldByName('R_PIEZAS').AsString;

     if paKilos.Visible then
        edKilos.Text  := dsPartidas.DataSet.FieldByName('R_KILOS').AsString;

     MarcoMateriales1.edMaterial.Text           := dsPartidas.DataSet.FieldByName('R_CLAVE').AsString;
     MarcoMateriales1.edDescripcion.Text        := dsPartidas.DataSet.FieldByName('R_DESCRIPCION').AsString;
     MarcoMateriales1.edMaterial.Tag            := dsPartidas.DataSet.FieldByName('R_MATERIAL').AsInteger;
     MarcoMateriales1.edCantidad.Text          := dsPartidas.DataSet.FieldByName('R_CANTIDAD').AsString;
     MarcoMateriales1.edPrecioCosto.Text       := dsPartidas.DataSet.FieldByName('R_PRECIO').AsString;
     MarcoMateriales1.cbUnidades.KeyValue := dsPartidas.DataSet.FieldByName('R_UNIDAD').AsInteger;
     MarcoMateriales1.edSubTotal.Text          := dsPartidas.DataSet.FieldByName('R_SUBTOTAL').AsString;
     MarcoMateriales1.edIVA.Text               := dsPartidas.DataSet.FieldByName('R_IVA').AsString;
     MarcoMateriales1.edIEPS.Text              := dsPartidas.DataSet.FieldByName('R_IEPS').AsString;
     MarcoMateriales1.edImpuesto1.Text         := dsPartidas.DataSet.FieldByName('R_IMPUESTO1').AsString;
     MarcoMateriales1.edImpuesto2.Text         := dsPartidas.DataSet.FieldByName('R_IMPUESTO2').AsString;
     MarcoMateriales1.edDescuentoPorc.Text     := dsPartidas.DataSet.FieldByName('R_DESCUENTO_PORC').AsString;
     MarcoMateriales1.ivaPorc                   := dsPartidas.DataSet.FieldByName('R_IVA_PORC').AsFloat;
     MarcoMateriales1.iepsPorc                  := dsPartidas.DataSet.FieldByName('R_IEPS_PORC').AsFloat;
     MarcoMateriales1.impuesto1Porc             := dsPartidas.DataSet.FieldByName('R_IMPUESTO1_PORC').AsFloat;
     MarcoMateriales1.impuesto2Porc             := dsPartidas.DataSet.FieldByName('R_IMPUESTO2_PORC').AsFloat;
     MarcoMateriales1.edPU.Text                := dsPartidas.DataSet.FieldByName('R_PRECIO_SIN_IMPUESTOS').AsString;
     MarcoMateriales1.edComentario.Text         := dsPartidas.DataSet.FieldByName('R_COMENTARIO').AsString;
     MarcoMateriales1.SERIE                     := dsPartidas.DataSet.FieldByName('R_SERIE').AsString;

     if MarcoMateriales1.cbMedidas.Visible and (dsPartidas.DataSet.FieldByName('R_MEDIDA').AsString <> '') then
        MarcoMateriales1.cbMedidas.KeyValue := dsPartidas.DataSet.FieldByName('R_MEDIDA').AsInteger;
     if MarcoMateriales1.cbColores.Visible and (dsPartidas.DataSet.FieldByName('R_COLOR').AsString <> '') then
        MarcoMateriales1.cbColores.KeyValue := dsPartidas.DataSet.FieldByName('R_COLOR').AsInteger;

     MarcoMateriales1.edCantidad.SetFocus;
     MarcoMateriales1.boton := false;
     MarcoMateriales1.datos(dsFuente.DataSet.FieldByName('ALMACEN').AsInteger,dsFuente.DataSet.FieldByName('CLIENTE').AsInteger,dsFuente.DataSet.FieldByName('EXTENSION').AsInteger, dsFuente.DataSet.FieldByName('MONEDA').AsInteger);
  end;
end;

procedure TfrmCapturar_facturas.dgPartidasDblClick(
  Sender: TObject);
begin
  inherited;
  if reglas.seEncontroForma('frmNCreditoAlta') then
     frmNCreditoAlta.NuevaPartidaFactura(dsPartidas.DataSet.FieldByName('R_ID').AsInteger, dsPartidas.DataSet.FieldByName('R_CANTIDAD').AsFloat)
  else
     if not(dsPartidas.DataSet.IsEmpty) and ibModificarPartida.Enabled then
        ibModificarPartida.Click;
end;

procedure TfrmCapturar_facturas.ibNuevaPartidaClick(Sender: TObject);
var
   add : boolean;
begin
  inherited;
  if paCajas.Visible then
     edCajas.Text  := '0.00';
  if paPiezas.Visible then
     edPiezas.Text := '0.00';
  if paKilos.Visible then
     edKilos.Text  := '0.00';

  if (dsPartidas.DataSet.FieldByName('R_PARTIDAS').AsInteger >= partidas) and not(MarcoMateriales1.FLAG_MEDIDAS) then
  begin

     if MessageDlg(' ¿ Agregar nueva partida ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes  then
     begin
        add := true;
     end
     else
     begin
        add := false;
     end

  end
  else
     add := true;

  if add then
  begin
     edicionDetalle := not edicionDetalle;
     fijarBotonesDetalle;

     MarcoMateriales1.datos(dsFuente.DataSet.FieldByName('ALMACEN').AsInteger,dsFuente.DataSet.FieldByName('CLIENTE').AsInteger,dsFuente.DataSet.FieldByName('EXTENSION').AsInteger, dsFuente.DataSet.FieldByName('MONEDA').AsInteger);
     MarcoMateriales1.limpiar;
     //sirve asi, para el caso en que se edite el registro
     //no capturar con boton Capturar.
     MarcoMateriales1.FLAG_ESTADO := stNuevo;
  end;
end;

procedure TfrmCapturar_facturas.coSUBTOTALDrawSummaryFooter(
  Sender: TObject; ACanvas: TCanvas; ARect: TRect; var AText: String;
  var AAlignment: TAlignment; AFont: TFont; var AColor: TColor;
  var ADone: Boolean);
begin
  inherited;
  AText := FormatFloat('$ ###,###,###,##0.00',dsFuente.DataSet.FieldByName('SUBTOTAL').AsFloat);
end;

procedure TfrmCapturar_facturas.coIEPSDrawSummaryFooter(
  Sender: TObject; ACanvas: TCanvas; ARect: TRect; var AText: String;
  var AAlignment: TAlignment; AFont: TFont; var AColor: TColor;
  var ADone: Boolean);
begin
  inherited;
  AText := FormatFloat('$ ###,###,###,##0.00',dsFuente.DataSet.FieldByName('IEPS').AsFloat);
end;

procedure TfrmCapturar_facturas.coIMPUESTO1DrawSummaryFooter(
  Sender: TObject; ACanvas: TCanvas; ARect: TRect; var AText: String;
  var AAlignment: TAlignment; AFont: TFont; var AColor: TColor;
  var ADone: Boolean);
begin
  inherited;
  AText := FormatFloat('$ ###,###,###,##0.00',dsFuente.DataSet.FieldByName('IMPUESTO1').AsFloat);
end;

procedure TfrmCapturar_facturas.coIMPUESTO2DrawSummaryFooter(
  Sender: TObject; ACanvas: TCanvas; ARect: TRect; var AText: String;
  var AAlignment: TAlignment; AFont: TFont; var AColor: TColor;
  var ADone: Boolean);
begin
  inherited;
  AText := FormatFloat('$ ###,###,###,##0.00',dsFuente.DataSet.FieldByName('IMPUESTO2').AsFloat);
end;

procedure TfrmCapturar_facturas.coTOTALDrawSummaryFooter(
  Sender: TObject; ACanvas: TCanvas; ARect: TRect; var AText: String;
  var AAlignment: TAlignment; AFont: TFont; var AColor: TColor;
  var ADone: Boolean);
begin
  inherited;
  AText := FormatFloat('$ ###,###,###,##0.00',dsFuente.DataSet.FieldByName('TOTAL').AsFloat);
end;

procedure TfrmCapturar_facturas.coDESCUENTOPARCIALDrawSummaryFooter(
  Sender: TObject; ACanvas: TCanvas; ARect: TRect; var AText: String;
  var AAlignment: TAlignment; AFont: TFont; var AColor: TColor;
  var ADone: Boolean);
begin
  inherited;
  AText := FormatFloat('$ ###,###,###,##0.00',dsFuente.DataSet.FieldByName('DESCUENTO_CANTIDAD_PARCIAL').AsFloat);
end;

procedure TfrmCapturar_facturas.coGRANTOTAL2DrawSummaryFooter(
  Sender: TObject; ACanvas: TCanvas; ARect: TRect; var AText: String;
  var AAlignment: TAlignment; AFont: TFont; var AColor: TColor;
  var ADone: Boolean);
begin
  inherited;
  AText := FormatFloat('$ ###,###,###,##0.00',dsFuente.DataSet.FieldByName('GRANTOTAL').AsFloat);
end;

procedure TfrmCapturar_facturas.coDESCUENTOGLOBALDrawSummaryFooter(
  Sender: TObject; ACanvas: TCanvas; ARect: TRect; var AText: String;
  var AAlignment: TAlignment; AFont: TFont; var AColor: TColor;
  var ADone: Boolean);
begin
  inherited;
  AText := FormatFloat('$ ###,###,###,##0.00',dsFuente.DataSet.FieldByName('DESCUENTO_CANTIDAD_GLOBAL').AsFloat);
end;

procedure TfrmCapturar_facturas.ibPedidosClick(Sender: TObject);
{var
   pnt : TPoint;}
begin
  inherited;
  frmSeleccionarPedidoParaFacturas := TfrmSeleccionarPedidoParaFacturas.Create(Self);
  try
     frmSeleccionarPedidoParaFacturas.DATABASE    := dmIBModulo.ibSistema;
     frmSeleccionarPedidoParaFacturas.TRANSACTION := dmIBModulo.ibSistemaTransaccion;
     frmSeleccionarPedidoParaFacturas.FACTURA     := dsFuente.DataSet.FieldByName('ID').AsInteger;
     frmSeleccionarPedidoParaFacturas.CLIENTE     := dsFuente.DataSet.FieldByName('CLIENTE').AsInteger;
     frmSeleccionarPedidoParaFacturas.Open;
     frmSeleccionarPedidoParaFacturas.ShowModal;
  finally
    frmSeleccionarPedidoParaFacturas.Free;
  end;

  reglas.refresh_IBQuery(qyPartidas);
  reglas.abrir_IBTabla(TCapturar);

  //dgPartidas.FullExpand;
end;

procedure TfrmCapturar_facturas.TCapturarCalcFields(DataSet: TDataSet);
begin
  inherited;
  //cliente
  DataSet.FieldByName('cliente_c').AsString := '';
  if DataSet.FieldByName('CLIENTE').AsString <> '' then
  begin
     dmIBData.TFiltroClientes.Filter           := 'ID = '+DataSet.FieldByName('CLIENTE').AsString;
     DataSet.FieldByName('cliente_c').AsString := dmIBData.TSujetosCliente.FieldByName('CLAVE').AsString;
  end;
  //almacen
  if DataSet.FieldByName('ALMACEN').AsString <> '' then
  begin
     dmIBData.TFiltroAlmacenes.Filter := 'ID = '+DataSet.FieldByName('ALMACEN').AsString;
     DataSet.FieldByName('almacen_clave').AsString   := dmIBData.TFiltroAlmacenes.FieldByName('CLAVE').AsString;
  end
  else
     begin
        DataSet.FieldByName('almacen_clave').AsString   := '';
     end;
  //extension nombre
  DataSet.FieldByName('FACTURACION').AsString := DataSet.FieldByName('SERIE_FACTURA').AsString + DataSet.FieldByName('CONSECUTIVO').AsString;
  if DataSet.FieldByName('EXTENSION').AsString <> '' then
  begin
     dmIBData.TFiltroClientesExtensiones.Filter       := 'ID = '+DataSet.FieldByName('EXTENSION').AsString;
     DataSet.FieldByName('EXTENSION_NOMBRE').AsString := dmIBData.TFiltroClientesExtensiones.FieldByName('NOMBRE').AsString;
  end
  else
     DataSet.FieldByName('EXTENSION_NOMBRE').AsString := '';

  DataSet.FieldByName('seguro').AsFloat     := DataSet.FieldByName('SEGURO_SUBTOTAL').AsFloat + DataSet.FieldByName('SEGURO_IVA').AsFloat;
  DataSet.FieldByName('supertotal').AsFloat := DataSet.FieldByName('seguro').AsFloat + DataSet.FieldByName('GRANTOTAL').AsFloat;
end;

procedure TfrmCapturar_facturas.beClienteButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
   procedure repetido;
   var
      facturacion : TCliente;
   begin
      //complemento
      facturacion := frmSeleccionarCliente.FACTURACION;
      dsFuente.DataSet.FieldByName('CLIENTE').AsInteger              := frmSeleccionarCliente.ID;
      dsFuente.DataSet.FieldByName('NOMBRE').AsString                := facturacion.nombre;
      dsFuente.DataSet.FieldByName('RFC').AsString                   := facturacion.rfc;
      dsFuente.DataSet.FieldByName('TELEFONO').AsString              := facturacion.telefono;
      dsFuente.DataSet.FieldByName('DIRECCION').AsString             := facturacion.direccion;
      dsFuente.DataSet.FieldByName('NUM_EXT').AsString               := facturacion.num_ext;
      dsFuente.DataSet.FieldByName('NUM_INT').AsString               := facturacion.num_int;
      dsFuente.DataSet.FieldByName('LOCALIDAD').AsString             := facturacion.localidad;
      dsFuente.DataSet.FieldByName('CIUDAD').AsString                := facturacion.ciudad;
      dsFuente.DataSet.FieldByName('ESTADO').AsString                := facturacion.estado;
      dsFuente.DataSet.FieldByName('PAIS').AsString                  := facturacion.pais;
      dsFuente.DataSet.FieldByName('COLONIA').AsString               := facturacion.colonia;
      dsFuente.DataSet.FieldByName('CP').AsString                    := facturacion.cp;
      dsFuente.DataSet.FieldByName('CONDICION_COMERCIAL').AsInteger  := facturacion.ccomercial;
      dsFuente.DataSet.FieldByName('MONEDA').AsInteger               := facturacion.moneda;
      dsFuente.DataSet.FieldByName('DESCUENTO_GLOBAL_PORC').AsFloat  := facturacion.desc_porc;
      dsFuente.DataSet.FieldByName('ELIMINAR_IVA').AsString          := facturacion.eliminar_iva;
   end;
begin
  inherited;
   case AbsoluteIndex of
     0: begin
           frmSeleccionarCliente             := TfrmSeleccionarCliente.Create(Application);
           frmSeleccionarCliente.DATABASE    := TCapturar.Database;
           frmSeleccionarCliente.TRANSACTION := TCapturar.Transaction;
           frmSeleccionarCliente.CLAVE       := beCliente.Text;
           if frmSeleccionarCliente.abrirConsulta then
           begin
              frmSeleccionarCliente.ShowModal;
              if frmSeleccionarCliente.ACEPTAR then
              begin
                 repetido;
              end;
           end
           else
              begin
                repetido;
              end;
           frmSeleccionarCliente.Free;
           frmSeleccionarCliente := nil;
           dsFuente.DataSet.FieldByName('EXTENSION').AsVariant := 0;
           verificarSaldos;
        end;
     1: begin
           dsFuente.DataSet.FieldByName('CLIENTE').AsVariant              := -3;
           dsFuente.DataSet.FieldByName('EXTENSION').AsVariant            := 0;
           dsFuente.DataSet.FieldByName('NOMBRE').AsString                := '';
           dsFuente.DataSet.FieldByName('RFC').AsString                   := '';
           dsFuente.DataSet.FieldByName('TELEFONO').AsString              := '';
           dsFuente.DataSet.FieldByName('DIRECCION').AsString             := '';
           dsFuente.DataSet.FieldByName('CIUDAD').AsString                := '';
           dsFuente.DataSet.FieldByName('COLONIA').AsString               := '';
           dsFuente.DataSet.FieldByName('CP').AsString                    := '';
           dsFuente.DataSet.FieldByName('CONDICION_COMERCIAL').AsString   := '';
           dsFuente.DataSet.FieldByName('MONEDA').AsString                := '';
           dsFuente.DataSet.FieldByName('DESCUENTO_GLOBAL_PORC').AsFloat  := 0;
           dsFuente.DataSet.FieldByName('ELIMINAR_IVA').AsString          := 'No';
        end;
   end;
end;

procedure TfrmCapturar_facturas.dgPartidasCAJASButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
{var
   index      : integer;
   indexRec   : integer;}
begin
  inherited;
  {
  if not(dsPartidas.DataSet.IsEmpty) then
  begin
     idCajas.Titulo  := dsPartidas.DataSet.FieldByName('R_DESCRIPCION').AsString;
     idCajas.Entrada := FormatFloat('########0',dsPartidas.DataSet.FieldByName('R_CAJAS').AsInteger);
     idCajas.Execute;
     if idCajas.Respuesta and (idCajas.Entrada <> '') then
     begin
        spMODIFICAR_CAJAS_FACTURA.ParamByName('P_PARTIDA').AsInteger := dsPartidas.DataSet.FieldByName('R_ID').AsInteger;
        spMODIFICAR_CAJAS_FACTURA.ParamByName('P_CUANTAS').AsString  := idCajas.Entrada;
        spMODIFICAR_CAJAS_FACTURA.ExecProc;
        spMODIFICAR_CAJAS_FACTURA.Transaction.CommitRetaining;
        if (unidadCajas = dsPartidas.DataSet.FieldByName('R_UNIDAD').AsInteger) then
        begin
           spMODIFICAR_CANTIDAD_FACTURA.ParamByName('P_PARTIDA').AsInteger  := dsPartidas.DataSet.FieldByName('R_ID').AsInteger;
           spMODIFICAR_CANTIDAD_FACTURA.ParamByName('P_CANTIDAD').AsFloat   := StrToFloat(idCajas.Entrada);
           spMODIFICAR_CANTIDAD_FACTURA.ExecProc;
           spMODIFICAR_CANTIDAD_FACTURA.Transaction.CommitRetaining;
           //actualizar total de factura.
           spTOTALES_FACTURA.ParamByName('P_FACTURA').AsInteger := dsFuente.DataSet.FieldByName('ID').AsInteger;
           spTOTALES_FACTURA.ExecProc;
           spTOTALES_FACTURA.Transaction.CommitRetaining;
           reglas.abrir_IBTabla(TCapturar);
        end;
        BeforeRecord;
        reglas.refresh_IBQuery(qyPartidas);
        AfterRecord;
        //busqueda del registro modificado
        dgPartidas.FullExpand;
        dgPartidas.GotoFirst;
        while not(dgPartidas.IsEOF) do
        begin
           if indexRec = qyPartidas.FieldByName('R_ID').AsInteger then
           begin
              break;
           end;
           dgPartidas.GotoNext(true);
        end;
        dgPartidas.TopIndex := index;
     end;
//     dgPartidas.GotoNext(true);
  end;
  }
end;

procedure TfrmCapturar_facturas.dgPartidasCANTIDADButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
var
   ClickedOK  : boolean;
   NewString  : string;
   NewValor   : double;
   salirFolio : boolean;
begin
  inherited;
  salirFolio := true;
  ClickedOK  := true;
  NewValor   := 0.00;
  repeat
     try
        SalirFolio := true;
        NewString  := dsPartidas.DataSet.FieldByName('R_CANTIDAD').AsString;
        ClickedOK  := InputQuery('Producto: '+dsPartidas.DataSet.FieldByName('R_DESCRIPCION').AsString, 'Cantidad', NewString);
        NewValor   := StrToFloat(NewString);
     except
        on EConvertError do
        begin
           salirFolio := false;
           ShowMessage('Valor introducido invalido.');
        end
     end;
  until salirFolio;

  if ClickedOK and (NewString <> '') then
  begin
     spMODIFICAR_CANTIDAD_FACTURA.ParamByName('P_PARTIDA').AsInteger  := dsPartidas.DataSet.FieldByName('R_ID').AsInteger;
     spMODIFICAR_CANTIDAD_FACTURA.ParamByName('P_CANTIDAD').AsFloat   := NewValor;
     spMODIFICAR_CANTIDAD_FACTURA.ExecProc;
     spMODIFICAR_CANTIDAD_FACTURA.Transaction.CommitRetaining;
     if (unidadCajas = dsPartidas.DataSet.FieldByName('R_UNIDAD').AsInteger) then
     begin
        spMODIFICAR_CAJAS_FACTURA.ParamByName('P_PARTIDA').AsInteger := dsPartidas.DataSet.FieldByName('R_ID').AsInteger;
        spMODIFICAR_CAJAS_FACTURA.ParamByName('P_CUANTAS').AsInteger := StrToInt(NewString);
        spMODIFICAR_CAJAS_FACTURA.ExecProc;
        spMODIFICAR_CAJAS_FACTURA.Transaction.CommitRetaining;
     end
     else
        if (unidadKilos = dsPartidas.DataSet.FieldByName('R_UNIDAD').AsInteger) then
        begin
           qyMODIFICAR_KILOS_FACTURA.ParamByName('P_PARTIDA').AsInteger := dsPartidas.DataSet.FieldByName('R_ID').AsInteger;
           qyMODIFICAR_KILOS_FACTURA.ParamByName('P_CUANTOS').AsFloat   := NewValor;
           qyMODIFICAR_KILOS_FACTURA.ExecSQL;
           qyMODIFICAR_KILOS_FACTURA.Transaction.CommitRetaining;
        end
        else
           if (unidadPiezas = dsPartidas.DataSet.FieldByName('R_UNIDAD').AsInteger) then
           begin
              spMODIFICAR_PIEZAS_FACTURA.ParamByName('P_PARTIDA').AsInteger := dsPartidas.DataSet.FieldByName('R_ID').AsInteger;
              spMODIFICAR_PIEZAS_FACTURA.ParamByName('P_CUANTAS').AsInteger := StrToInt(NewString);
              spMODIFICAR_PIEZAS_FACTURA.ExecProc;
              spMODIFICAR_PIEZAS_FACTURA.Transaction.CommitRetaining;
           end;

     refreshTotales(0);
  end;
end;

procedure TfrmCapturar_facturas.TCapturarAfterPost(DataSet: TDataSet);
begin
  inherited;
  {
  if deCapturar.Focused then
  begin
     if dgPartidas.Enabled and dgPartidas.Visible then
        dgPartidas.SetFocus;
  end;
  }
end;

procedure TfrmCapturar_facturas.ibVtasDiariasClick(Sender: TObject);
begin
  inherited;
  if MessageDlg('¿¿ Agregar todas las ventas diarias que se hicieron de este almacen ??', mtConfirmation, [mbYes, mbNo], 0) = mrYes  then
  begin
     spVENTAS_DIARIAS.ParamByName('P_FACTURA').AsInteger := dsFuente.DataSet.FieldByName('ID').AsInteger;
     spVENTAS_DIARIAS.ExecProc;
     spVENTAS_DIARIAS.Transaction.CommitRetaining;
     reglas.abrir_IBTabla(TCapturar);
     reglas.refresh_IBQuery(qyPartidas);
  end;
end;

procedure TfrmCapturar_facturas.sbCapturadoClick(Sender: TObject);
begin
  inherited;
  if ibGuardar.Enabled then
     ibGuardar.Click;
end;

procedure TfrmCapturar_facturas.ibCopiarClick(Sender: TObject);
begin
  inherited;

  if MessageDlg('¿ Copiar documento ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes  then
  begin
     spCOPIAR_FACTURA.ParamByName('P_FACTURA').AsInteger := dsFuente.DataSet.FieldByName('ID').AsInteger;
     spCOPIAR_FACTURA.ExecProc;
     spCOPIAR_FACTURA.Transaction.CommitRetaining;
     ShowMessage( 'Nueva factura con id = ' + spCOPIAR_FACTURA.ParamByName('R_FACTURA').AsString  + ', y CLAVE ' + dsFuente.DataSet.FieldByName('CLAVE').AsString);
  end;
end;

procedure TfrmCapturar_facturas.dgPartidasPIEZASButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
var
   ClickedOK  : boolean;
   NewString  : string;
   NewValor   : Integer;
   salirFolio : boolean;
begin
  inherited;
  salirFolio := true;
  ClickedOK  := true;
  NewValor   := 0;
  repeat
     try
        SalirFolio := true;
        NewString  := dsPartidas.DataSet.FieldByName('R_PIEZAS').AsString;
        ClickedOK  := InputQuery('Producto: '+dsPartidas.DataSet.FieldByName('R_DESCRIPCION').AsString, 'Piezas', NewString);
        NewValor   := StrToInt(NewString);
     except
        on EConvertError do
        begin
           salirFolio := false;
           ShowMessage('Valor introducido invalido.');
        end
     end;
  until salirFolio;

  if ClickedOK and (NewString <> '') then
  begin
     spMODIFICAR_PIEZAS_FACTURA.ParamByName('P_PARTIDA').AsInteger := dsPartidas.DataSet.FieldByName('R_ID').AsInteger;
     spMODIFICAR_PIEZAS_FACTURA.ParamByName('P_CUANTAS').AsInteger := NewValor;
     spMODIFICAR_PIEZAS_FACTURA.ExecProc;
     spMODIFICAR_PIEZAS_FACTURA.Transaction.CommitRetaining;
     if (unidadPiezas = dsPartidas.DataSet.FieldByName('R_UNIDAD').AsInteger) then
     begin
        spMODIFICAR_CANTIDAD_FACTURA.ParamByName('P_PARTIDA').AsInteger  := dsPartidas.DataSet.FieldByName('R_ID').AsInteger;
        spMODIFICAR_CANTIDAD_FACTURA.ParamByName('P_CANTIDAD').AsFloat   := StrToFloat(NewString);
        spMODIFICAR_CANTIDAD_FACTURA.ExecProc;
        spMODIFICAR_CANTIDAD_FACTURA.Transaction.CommitRetaining;

        refreshTotales(0);
     end
     else
        reglas.abrir_IBQuery_seek('R_ID',dsPartidas.DataSet.FieldByName('R_ID').AsInteger,qyPartidas);
  end;
end;

procedure TfrmCapturar_facturas.dgPartidasKILOSButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
var
   ClickedOK  : boolean;
   NewString  : string;
   NewValor   : double;
   salirFolio : boolean;
begin
  inherited;
  salirFolio := true;
  ClickedOK  := true;
  NewValor   := 0;
  repeat
     try
        SalirFolio := true;
        NewString  := dsPartidas.DataSet.FieldByName('R_KILOS').AsString;
        ClickedOK  := InputQuery('Producto: '+dsPartidas.DataSet.FieldByName('R_DESCRIPCION').AsString, 'Kilos', NewString);
        NewValor   := StrToFloat(NewString);
     except
        on EConvertError do
        begin
           salirFolio := false;
           ShowMessage('Valor introducido invalido.');
        end
     end;
  until salirFolio;

  if ClickedOK and (NewString <> '') then
  begin
     qyMODIFICAR_KILOS_FACTURA.ParamByName('P_PARTIDA').AsInteger := dsPartidas.DataSet.FieldByName('R_ID').AsInteger;
     qyMODIFICAR_KILOS_FACTURA.ParamByName('P_CUANTOS').AsFloat := NewValor;
     qyMODIFICAR_KILOS_FACTURA.ExecSQL;
     qyMODIFICAR_KILOS_FACTURA.Transaction.CommitRetaining;
     if (unidadKilos = dsPartidas.DataSet.FieldByName('R_UNIDAD').AsInteger) then
     begin
        spMODIFICAR_CANTIDAD_FACTURA.ParamByName('P_PARTIDA').AsInteger  := dsPartidas.DataSet.FieldByName('R_ID').AsInteger;
        spMODIFICAR_CANTIDAD_FACTURA.ParamByName('P_CANTIDAD').AsFloat   := NewValor;
        spMODIFICAR_CANTIDAD_FACTURA.ExecProc;
        spMODIFICAR_CANTIDAD_FACTURA.Transaction.CommitRetaining;
        
        refreshTotales(0);
     end
     else
        reglas.abrir_IBQuery_seek('R_ID',dsPartidas.DataSet.FieldByName('R_ID').AsInteger,qyPartidas);
  end;
end;

procedure TfrmCapturar_facturas.NuevaPartida1Click(Sender: TObject);
begin
  inherited;
  if ibNuevaPartida.Enabled then
     ibNuevaPartida.Click;
end;

procedure TfrmCapturar_facturas.ModificarPartida1Click(Sender: TObject);
begin
  inherited;
  if ibModificarPartida.Enabled then
     ibModificarPartida.Click;
end;

procedure TfrmCapturar_facturas.GuardarPartida1Click(Sender: TObject);
begin
  inherited;
  if ibGuardarPartida.Enabled then
     ibGuardarPartida.Click;
end;

procedure TfrmCapturar_facturas.CancelarPartida1Click(Sender: TObject);
begin
  inherited;
  if ibCancelarPartida.Enabled then
     ibCancelarPartida.Click;
end;

procedure TfrmCapturar_facturas.EliminarPartida1Click(Sender: TObject);
begin
  inherited;
  if ibEliminarPartida.Enabled then
     ibEliminarPartida.Click;
end;

procedure TfrmCapturar_facturas.Pedidos1Click(Sender: TObject);
begin
  inherited;
  if ibPedidos.Enabled then
     ibPedidos.Click;
end;

procedure TfrmCapturar_facturas.beClienteKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key = #13 then
     beClienteButtonClick(Sender, 0);
end;

procedure TfrmCapturar_facturas.ibGuardarClick(Sender: TObject);
var
{   fraccion   : Real;
   entero     : Real;}
   statusDS   : TDataSetState;
begin
  statusDS := dsFuente.DataSet.State;
  verfificarFechas;
  inherited;
  FijarBotonesDetalle;
  if (statusDS = dsEdit) then
  begin
     if not(qyPartidas.IsEmpty) then
     begin
        if ( (awrCliente   <> dsFuente.DataSet.FieldByName('CLIENTE').AsInteger) OR
             (awrExtension <> dsFuente.DataSet.FieldByName('EXTENSION').AsInteger) ) then
        begin
           spFACTURA_DESCUENTOS.ParamByName('P_ID').AsInteger := dsFuente.DataSet.FieldByName('ID').AsInteger;
           spFACTURA_DESCUENTOS.ExecProc;
           spFACTURA_DESCUENTOS.Transaction.CommitRetaining;
        end
        else
        if (tmpDescGlobal <> dsFuente.DataSet.FieldByName('DESCUENTO_GLOBAL_PORC').AsFloat) then
        begin
           spFACTURAS_DESCUENTO_GLOBAL.ParamByName('P_FACTURA').AsInteger := dsFuente.DataSet.FieldByName('ID').AsInteger;
           spFACTURAS_DESCUENTO_GLOBAL.ExecProc;
           spFACTURAS_DESCUENTO_GLOBAL.Transaction.CommitRetaining;
        end;
        //refrescar la pantalla con los datos
        reglas.abrir_IBTabla(TCapturar);
        reglas.refresh_IBQuery(qyPartidas);
        //dgPartidas.FullExpand;
     end;
  end;
end;

procedure TfrmCapturar_facturas.deFechaAltaEnter(Sender: TObject);
begin
  inherited;
  deFechaAlta.Text := (FormatDateTime('dd/mm/yyyy',dsFuente.DataSet.FieldByName('FECHA_ALTA').AsDateTime));
end;

procedure TfrmCapturar_facturas.FormShow(Sender: TObject);
begin
  inherited;
  fijarBotonesDetalle;
end;

procedure TfrmCapturar_facturas.buInicioClick(Sender: TObject);
begin
  inherited;
  fijarBotonesDetalle;

  if (edicionDetalle) then
    ibCancelarPartida.Click;
end;

procedure TfrmCapturar_facturas.buAnteriorClick(Sender: TObject);
begin
  inherited;
  fijarBotonesDetalle;

  if (edicionDetalle) then
    ibCancelarPartida.Click;
end;

procedure TfrmCapturar_facturas.buSiguienteClick(Sender: TObject);
begin
  inherited;
  fijarBotonesDetalle;

  if (edicionDetalle) then
    ibCancelarPartida.Click;
end;

procedure TfrmCapturar_facturas.buFinClick(Sender: TObject);
begin
  inherited;
  fijarBotonesDetalle;

  if (edicionDetalle) then
    ibCancelarPartida.Click;
end;

procedure TfrmCapturar_facturas.sbRefreshAlmacenesClick(Sender: TObject);
begin
  inherited;
  reglas.refresh_IBQuery(dmIBData.qyAlmacenes);
end;

procedure TfrmCapturar_facturas.sbRefreshMonedasClick(Sender: TObject);
begin
  inherited;
  reglas.abrir_IBTabla(TMonedas);
end;

procedure TfrmCapturar_facturas.sbRefreshCondicionClick(Sender: TObject);
begin
  inherited;
  reglas.abrir_IBTabla(TCondiciones_Comerciales);
end;

procedure TfrmCapturar_facturas.dgPartidasKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  {
  with TdxDBGrid(Sender) do
    if (Key = VK_RETURN) and (Columns[GetFocusedAbsoluteIndex(FocusedColumn)]is TdxDBGridButtonColumn) then
    begin
       if (Columns[GetFocusedAbsoluteIndex(FocusedColumn)] = dgPartidasCantidad) then
          dgPartidasCantidadButtonClick(nil, 0)
       else
       if (Columns[GetFocusedAbsoluteIndex(FocusedColumn)] = dgPartidasCajas) then
          dgPartidasCajasButtonClick(nil, 0)
       else
       if (Columns[GetFocusedAbsoluteIndex(FocusedColumn)] = dgPartidasKilos) then
          dgPartidasKilosButtonClick(nil, 0)
       else
       if (Columns[GetFocusedAbsoluteIndex(FocusedColumn)] = dgPartidasPiezas) then
          dgPartidasPiezasButtonClick(nil, 0)
    end;
    }
end;

procedure TfrmCapturar_facturas.ibListaEmpaqueClick(Sender: TObject);
begin
  inherited;
  frmGuiaDeEmbarque := TfrmGuiaDeEmbarque.CrearA(Application, dsFuente.DataSet.FieldByName('ID').AsInteger, true);
  frmGuiaDeEmbarque.imprimir;
  frmGuiaDeEmbarque.Free;
end;

procedure TfrmCapturar_facturas.ibGuiaClick(Sender: TObject);
begin
  inherited;
  frmPRN_0028 := TfrmPRN_0028.crear(Application,dsFuente.DataSet.FieldByName('ID').AsInteger, dsFuente.DataSet.FieldByName('GRANTOTAL').AsFloat);
  frmPRN_0028.ShowModal;
  frmPRN_0028.Free;
end;

procedure TfrmCapturar_facturas.MarcoMateriales1edCantidadChange(
  Sender: TObject);
begin
  inherited;
  MarcoMateriales1.edCantidadChange(Sender);
  factoresUnidades;
end;

procedure TfrmCapturar_facturas.MarcoMateriales1cbUnidadesChange(
  Sender: TObject);
begin
  inherited;
  factoresUnidades;
end;

procedure TfrmCapturar_facturas.itemFInteresesClick(Sender: TObject);
begin
  inherited;
  if MessageDlg('¿ Crear factura de intereses cobrados ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes  then
  begin
     spGENERAR_FACTURA_INTERESES.ParamByName('P_FACTURA').AsInteger := dsFuente.DataSet.FieldByName('ID').AsInteger;
     spGENERAR_FACTURA_INTERESES.ExecProc;
     spGENERAR_FACTURA_INTERESES.Transaction.CommitRetaining;
     ShowMessage('Factura Generada (ID): '+spGENERAR_FACTURA_INTERESES.ParamByName('R_FACTURA').AsString);
  end;
end;

procedure TfrmCapturar_facturas.ibReAgruparClick(Sender: TObject);
begin
  inherited;
  qyContinuacion.Close;
  qyContinuacion.ParamByName('P_FACTURA').AsInteger := dsFuente.DataSet.FieldByName('ID').AsInteger;
  qyContinuacion.Open;
  if not(qyContinuacion.IsEmpty) AND (qyContinuacion.FieldByName('R_CUANTAS').AsInteger > 1) then
  begin
     if MessageDlg('  Tiene varias facturas que continuan.  ¿ Re-Agrupar ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes  then
     begin
        spFACTURAS_REAGRUPAR.ParamByName('P_FACTURA').AsInteger := dsFuente.DataSet.FieldByName('ID').AsInteger;
        spFACTURAS_REAGRUPAR.ExecProc;
        reglas.refresh_IBQuery(qyPartidas);
     end;
  end
  else
  begin
      ShowMessage( 'Esta factura no tiene enlaces con otras facturas');
  end;
end;

procedure TfrmCapturar_facturas.itemCuponClick(Sender: TObject);
begin
  inherited;
  try
     PRN_0041 := TPRN_0041.Create(Application);
     PRN_0041.ID := dsFuente.DataSet.FieldByName('ID').AsInteger;
     PRN_0041.imprimir;
  finally
     PRN_0041.Free;
  end;
end;

procedure TfrmCapturar_facturas.itemPagareClick(Sender: TObject);
begin
  inherited;
  try
     PRN_0042 := TPRN_0042.Create(Application);
     PRN_0042.ID := dsFuente.DataSet.FieldByName('ID').AsInteger;
     PRN_0042.imprimir;
  finally
     PRN_0042.Free;
  end;
end;

procedure TfrmCapturar_facturas.FormDestroy(Sender: TObject);
begin
  MarcoMateriales1.Destruir;
  inherited;
end;

procedure TfrmCapturar_facturas.edExtensionButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
   procedure repetido;
   var
      facturacion : TDatos;
   begin
      //complemento
      facturacion := frmSeleccionarExtension.FACTURACION;
      dsFuente.DataSet.FieldByName('EXTENSION').AsInteger           := frmSeleccionarExtension.EXTENSION;
      dsFuente.DataSet.FieldByName('CLIENTE').AsInteger             := frmSeleccionarExtension.CLIENTE;
      dsFuente.DataSet.FieldByName('NOMBRE').AsString               := facturacion.nombre;
      dsFuente.DataSet.FieldByName('RFC').AsString                  := facturacion.rfc;
      dsFuente.DataSet.FieldByName('TELEFONO').AsString             := facturacion.telefono;
      dsFuente.DataSet.FieldByName('DIRECCION').AsString            := facturacion.direccion;
      dsFuente.DataSet.FieldByName('NUM_EXT').AsString              := facturacion.num_ext;
      dsFuente.DataSet.FieldByName('NUM_INT').AsString              := facturacion.num_int;
      dsFuente.DataSet.FieldByName('LOCALIDAD').AsString            := facturacion.localidad;
      dsFuente.DataSet.FieldByName('CIUDAD').AsString               := facturacion.ciudad;
      dsFuente.DataSet.FieldByName('ESTADO').AsString               := facturacion.estado;
      dsFuente.DataSet.FieldByName('PAIS').AsString                 := facturacion.pais;
      dsFuente.DataSet.FieldByName('COLONIA').AsString              := facturacion.colonia;
      dsFuente.DataSet.FieldByName('CP').AsString                   := facturacion.cp;
      dsFuente.DataSet.FieldByName('CONDICION_COMERCIAL').AsInteger := facturacion.ccomercial;
      dsFuente.DataSet.FieldByName('MONEDA').AsInteger              := facturacion.moneda;
      dsFuente.DataSet.FieldByName('DESCUENTO_GLOBAL_PORC').AsFloat := facturacion.desc_porc;
   end;
begin
  inherited;
  case AbsoluteIndex of
    0 : begin
           frmSeleccionarExtension             := TfrmSeleccionarExtension.Create(Application);
           frmSeleccionarExtension.DATABASE    := dmIBModulo.ibSistema;
           frmSeleccionarExtension.TRANSACTION := dmIBModulo.ibSistemaTransaccion;
           frmSeleccionarExtension.CLAVE       := edExtension.Text;
           if frmSeleccionarExtension.abrirConsulta then
           begin
              frmSeleccionarExtension.ShowModal;
              if frmSeleccionarExtension.ACEPTAR then
              begin
                 repetido;
              end;
           end
           else
              begin
                 repetido;
              end;
           frmSeleccionarExtension.Free;
           frmSeleccionarExtension := nil;
           verificarSaldos;
        end;
    1 : begin
           //beCliente.OnButtonClick(sender, 1)
        end;
  end;
end;

procedure TfrmCapturar_facturas.edExtensionKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;

  //if Key = #13 then
    // edExtension.OnButtonClick(Sender, 0);
end;

procedure TfrmCapturar_facturas.itemImprimirClick(Sender: TObject);
var
   v_imprimir : boolean;
   respuestaEnlace : boolean;
begin
  inherited;
  qyContinuacion.Close;
  qyContinuacion.ParamByName('P_FACTURA').AsInteger := dsFuente.DataSet.FieldByName('ID').AsInteger;
  qyContinuacion.Open;





  if not(qyContinuacion.IsEmpty) AND (qyContinuacion.FieldByName('R_CUANTAS').AsInteger > 1) and not(awrPRNEstatus) then
  begin
    if MessageDlg('Tiene varias facturas que continuan. ¿ Imprimir todas ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes  then
    begin
      respuestaEnlace := true;
    end
    else
    begin
      respuestaEnlace := false;
    end
  end
  else
  begin
    respuestaEnlace := false;
  end;

  try
     frmPRN_0003_TXT            := TfrmPRN_0003_TXT.Create(Application);
     frmPRN_0003_TXT.BTN_CANCEL := awrBtnCancel;
     frmPRN_0003_TXT.ESTATUS    := dsFuente.DataSet.FieldByName('ESTATUS').AsString;
     frmPRN_0003_TXT.ID         := dsFuente.DataSet.FieldByName('ID').AsInteger;

     if (dsFuente.DataSet.FieldByName('ELIMINAR_IVA').AsString = 'Si') then
        v_imprimir := frmPRN_0003_TXT.OpenFormatoSinIVA
     else
        v_imprimir := frmPRN_0003_TXT.OpenFormato;

     if v_imprimir then
     begin
        if respuestaEnlace then//Metodo para facturas enlazadas.
        begin
           frmPRN_0003_TXT.BLOQUE := qyContinuacion;
           frmPRN_0003_TXT.imprimirEnlazada;
        end
        else
           frmPRN_0003_TXT.imprimir;
     end;
  finally
     frmPRN_0003_TXT.Free;
  end;
  reglas.abrir_IBTabla(TCapturar);
end;

procedure TfrmCapturar_facturas.ibImprimirClick(Sender: TObject);
begin
  inherited;
{  awrPRNEstatus := false;
  Impresion;}


  frmCFF := TfrmCFF.Create(Application);
  try
     frmCFF.ID           := dsFuente.DataSet.FieldByName('ID').AsInteger;
     frmCFF.ESTATUS      := dsFuente.DataSet.FieldByName('ESTATUS').AsString;
     frmCFF.SIN_IVA      := dsFuente.DataSet.FieldByName('ELIMINAR_IVA').AsString = 'Si';
     frmCFF.ENLAZADAS    := true;
     frmCFF.BTN_CANCELAR := true;
     frmCFF.XML          := dsFuente.DataSet.FieldByName('FE_XML').AsString;
     if dsFuente.DataSet.FieldByName('CONSECUTIVO').AsInteger = 0 then
        frmCFF.impresion
     else
        frmCFF.preview;
  finally
     frmCFF.Free;
  end;

  reglas.abrir_IBTabla(TCapturar);
  
end;

procedure TfrmCapturar_facturas.itemPreviewClick(Sender: TObject);
var
   v_imprimir : boolean;
begin
   inherited;

   frmCFF := TfrmCFF.Create(Application);
   try
      frmCFF.ID           := dsFuente.DataSet.FieldByName('ID').AsInteger;
      frmCFF.ESTATUS      := dsFuente.DataSet.FieldByName('ESTATUS').AsString;
      frmCFF.SIN_IVA      := dsFuente.DataSet.FieldByName('ELIMINAR_IVA').AsString = 'Si';
      frmCFF.ENLAZADAS    := true;
      frmCFF.BTN_CANCELAR := true;
      frmCFF.XML          := dsFuente.DataSet.FieldByName('FE_XML').AsString;
      frmCFF.preview;
   finally
      frmCFF.Free;
   end;
    
{  try
     frmPRN_0003_TXT         := TfrmPRN_0003_TXT.Create(Application);
     frmPRN_0003_TXT.ESTATUS := dsFuente.DataSet.FieldByName('ESTATUS').AsString;
     frmPRN_0003_TXT.ID      := dsFuente.DataSet.FieldByName('ID').AsInteger;

     if (dsFuente.DataSet.FieldByName('ELIMINAR_IVA').AsString = 'Si') then
        v_imprimir := frmPRN_0003_TXT.OpenFormatoSinIVA
     else
        v_imprimir := frmPRN_0003_TXT.OpenFormato;

     if v_imprimir then
        frmPRN_0003_TXT.preview;
  finally
     frmPRN_0003_TXT.Free;
  end;}
end;

procedure TfrmCapturar_facturas.itemMedidasClick(Sender: TObject);
begin
  inherited;
  try
     frmPRN_0003_TXT            := TfrmPRN_0003_TXT.Create(Application);
     frmPRN_0003_TXT.BTN_CANCEL := awrBtnCancel;
     frmPRN_0003_TXT.ESTATUS    := 'Medidas';
     frmPRN_0003_TXT.ID         := dsFuente.DataSet.FieldByName('ID').AsInteger;
     if frmPRN_0003_TXT.OpenFormatoM then//Medida Normal
        frmPRN_0003_TXT.imprimir;
  finally
     frmPRN_0003_TXT.Free;
  end;
  reglas.abrir_IBTabla(TCapturar);
end;

procedure TfrmCapturar_facturas.itemPreviewMClick(Sender: TObject);
begin
  inherited;
  try
     frmPRN_0003_TXT         := TfrmPRN_0003_TXT.Create(Application);
     frmPRN_0003_TXT.ESTATUS := 'Medidas';
     frmPRN_0003_TXT.ID      := dsFuente.DataSet.FieldByName('ID').AsInteger;
     if frmPRN_0003_TXT.OpenFormatoM then
        frmPRN_0003_TXT.preview;
  finally
     frmPRN_0003_TXT.Free;
  end;
end;

procedure TfrmCapturar_facturas.TCapturarAfterOpen(DataSet: TDataSet);
begin
  inherited;
  reglas.refresh_IBQuery(qyEstatus);
end;

procedure TfrmCapturar_facturas.cbEstatusChange(Sender: TObject);
begin
  inherited;
  if (cbEstatus.Text <> '') and (cbEstatus.Text <> awrStatus.EstatusSel) and (dsFuente.State in [dsInsert, dsEdit]) then
  begin
     awrStatus.estatusSel   := dsEstatus.DataSet.FieldByName('R_ESTATUS').AsString;
     awrStatus.autorizacion := dsEstatus.DataSet.FieldByName('R_AUTORIZACION').AsString = 'Si';
     awrStatus.storeproc    := dsEstatus.DataSet.FieldByName('R_STOREPROC').AsString;
     awrStatus.nivel        := dsEstatus.DataSet.FieldByName('R_NIVEL').AsInteger;
     awrStatus.id           := dsEstatus.DataSet.FieldByName('R_ID').AsInteger;
     awrStatus.correo       := dsEstatus.DataSet.FieldByName('R_CORREO').AsString = 'Si';
     awrStatus.unico        := dsEstatus.DataSet.FieldByName('R_USUARIO').AsInteger;
     awrStatus.unico_n      := dsEstatus.DataSet.FieldByName('R_USUARIO_N').AsString;
     awrStatus.imprimir     := dsEstatus.DataSet.FieldByName('R_IMPRIMIR').AsString = 'Si';

     dsFuente.DataSet.FieldByName('ESTATUS').AsString := awrStatus.estatusSel;

     buAplicar.Enabled := true;
     ibGuardar.Enabled := false;
  end;
end;

procedure TfrmCapturar_facturas.buAplicarClick(Sender: TObject);
var
   ejecutar : boolean;
begin
  inherited;
  verfificarFechas;

  ejecutar   := TRUE;
  dsFuente.DataSet.FieldByName('ESTATUS').AsString := awrStatus.estatusAnt;
  dsFuente.DataSet.Post;
  TCapturar.Transaction.CommitRetaining;
  if ((awrStatus.autorizacion) and (awrStatus.nivel > reglas.dameUsuarioNivel)) or (awrStatus.unico <> 0) then
  begin
     try
        Application.CreateForm(TfrmAcceso, frmAcceso);
        frmAcceso.UnicoN := awrStatus.unico_n;
        frmAcceso.Unico  := awrStatus.unico;
        frmAcceso.Nivel  := awrStatus.nivel;
        frmAcceso.Status := awrStatus.estatusSel;
        frmAcceso.ShowModal;
        ejecutar := frmAcceso.Rsp;
     finally
        frmAcceso.Free;
     end;
  end;

  if ejecutar then
  begin
     if awrStatus.imprimir then
     begin
        qyInsuficientes.Close;
        qyInsuficientes.ParamByName('P_ID').AsInteger := dsFuente.DataSet.FieldByName('ID').AsInteger;
        qyInsuficientes.Open;

        if (qyInsuficientes.IsEmpty) or (awrPermInvNeg) then
        begin

           frmCFF := TfrmCFF.Create(Application);
           try
              frmCFF.ID           := dsFuente.DataSet.FieldByName('ID').AsInteger;
              frmCFF.ESTATUS      := dsFuente.DataSet.FieldByName('ESTATUS').AsString;
              frmCFF.SIN_IVA      := dsFuente.DataSet.FieldByName('ELIMINAR_IVA').AsString = 'Si';
              frmCFF.ENLAZADAS    := false;
              frmCFF.BTN_CANCELAR := false;
              frmCFF.XML          := dsFuente.DataSet.FieldByName('FE_XML').AsString;
              if dsFuente.DataSet.FieldByName('CONSECUTIVO').AsInteger = 0 then
                 frmCFF.impresion
              else
                 frmCFF.preview;
           finally
              frmCFF.Free;
           end;
            
        end
        else
        begin
           ejecutar := false;
           buInsuficiencias.Click;
        end;
     end;

     if ejecutar then
     begin
        spEstatus.Params.Clear;
        spEstatus.StoredProcName := awrStatus.storeproc;
        spEstatus.Params.CreateParam(ftInteger,'P_ID',ptInput);
        spEstatus.ParamByName('P_ID').AsInteger := awrStatus.idEjecutar;
        spEstatus.ExecProc;
        spEstatus.Transaction.CommitRetaining;

        awrStatus.estatusSel := '';

{        //impresion de la factura, se movio hasta aqui por que marca deadlock,
        //pues la factura esta en edicion y la impresion manda guardar el folio.
        if awrStatus.imprimir then
        begin
           frmCFF := TfrmCFF.Create(Application);
           try
              frmCFF.ID           := dsFuente.DataSet.FieldByName('ID').AsInteger;
              frmCFF.ESTATUS      := dsFuente.DataSet.FieldByName('ESTATUS').AsString;
              frmCFF.SIN_IVA      := dsFuente.DataSet.FieldByName('ELIMINAR_IVA').AsString = 'Si';
              frmCFF.ENLAZADAS    := false;
              frmCFF.BTN_CANCELAR := false;
              frmCFF.XML          := dsFuente.DataSet.FieldByName('FE_XML').AsString;
              if dsFuente.DataSet.FieldByName('CONSECUTIVO').AsInteger = 0 then
                 frmCFF.impresion
              else
                 frmCFF.preview;
           finally
              frmCFF.Free;
           end;
        end;   }

        reglas.abrir_IBTabla(TCapturar);
        fijarBotonesDetalle;

        if awrStatus.correo then
        begin
           mensajes;
        end;
     end;
  end;
end;

procedure TfrmCapturar_facturas.deCapturarKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  //if key = #13 then
    // sbCapturado.Click;
end;

procedure TfrmCapturar_facturas.buFolioClick(Sender: TObject);
var
   _mr    : boolean;
   _folio : integer;
begin
  inherited;
  frmFolio := TfrmFolio.Create(Application);
  try
     frmFolio.Titulo := 'Facturas';
     frmFolio.Folio  := dsFuente.DataSet.FieldByName('CONSECUTIVO').AsInteger;
     frmFolio.Nivel  := 99;
     frmFolio.ShowModal;
     _mr    := frmFolio.ModalResult;
     _folio := frmFolio.Folio;
  finally
     frmFolio.Free;
  end;

   if (_mr) and (_folio <> 0) then
   begin
      dsFuente.DataSet.Edit;
      dsFuente.DataSet.FieldByName('CONSECUTIVO').AsInteger := _folio;
      dsFuente.DataSet.Post;
   end;
end;

procedure TfrmCapturar_facturas.buInsuficienciasClick(Sender: TObject);
begin
  inherited;
  try
     frmInsuficienciasFactura    := TfrmInsuficienciasFactura.Create(Application);
     frmInsuficienciasFactura.ID := dsFuente.DataSet.FieldByName('ID').AsInteger;
     frmInsuficienciasFactura.ShowModal;
  finally
     frmInsuficienciasFactura.Release;
  end;
end;

procedure TfrmCapturar_facturas.MarcoMateriales1edMaterialButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
var
   i : integer;  
begin
  inherited;
  MarcoMateriales1.edMaterialButtonClick(Sender, AbsoluteIndex);

  if (MarcoMateriales1.NUM_SERIE) then
  begin
     MarcoMateriales1.edCantidad.Text := '1';
     if (MarcoMateriales1.FLAG_ESTADO = stNuevo) then
     begin
        for i := 1 to MarcoMateriales1.REPETIR do
        begin
           MarcoMateriales1.pedirSerie;
           ibGuardarPartida.Click;
        end;

        if ibCancelarPartida.Enabled then
           ibCancelarPartida.Click;
     end;
  end;

end;

procedure TfrmCapturar_facturas.itemSeriesClick(Sender: TObject);
begin
  inherited;
{  qyContinuacion.Close;
  qyContinuacion.ParamByName('P_FACTURA').AsInteger := dsFuente.DataSet.FieldByName('ID').AsInteger;
  qyContinuacion.Open;
  if not(qyContinuacion.IsEmpty) AND (qyContinuacion.FieldByName('R_CUANTAS').AsInteger > 1) then
     meEnlace.Execute
  else
     meEnlace.Respuesta := false;

  try
     frmPRN_0003_TXT            := TfrmPRN_0003_TXT.Create(Application);
     frmPRN_0003_TXT.BTN_CANCEL := awrBtnCancel;
     frmPRN_0003_TXT.ESTATUS    := 'SERIES';
     frmPRN_0003_TXT.ID         := dsFuente.DataSet.FieldByName('ID').AsInteger;

     if frmPRN_0003_TXT.OpenFormatoSeries then
     begin
        if meEnlace.Respuesta then//Metodo para facturas enlazadas.
        begin
           frmPRN_0003_TXT.BLOQUE := qyContinuacion;
           frmPRN_0003_TXT.imprimirEnlazada;
        end
        else
           frmPRN_0003_TXT.imprimir;
     end;
  finally
     frmPRN_0003_TXT.Free;
  end;
  reglas.abrir_IBTabla(TCapturar);}


  frmCFF := TfrmCFF.Create(Application);
  try
     frmCFF.ID           := dsFuente.DataSet.FieldByName('ID').AsInteger;
     frmCFF.ESTATUS      := dsFuente.DataSet.FieldByName('ESTATUS').AsString;
     frmCFF.SIN_IVA      := dsFuente.DataSet.FieldByName('ELIMINAR_IVA').AsString = 'Si';
     frmCFF.ENLAZADAS    := true;
     frmCFF.BTN_CANCELAR := true;
     frmCFF.XML          := dsFuente.DataSet.FieldByName('FE_XML').AsString;
     if dsFuente.DataSet.FieldByName('CONSECUTIVO').AsInteger = 0 then
        frmCFF.impresionCFISeries
     else
        frmCFF.previewCFISeries;
  finally
     frmCFF.Free;
  end;

  reglas.abrir_IBTabla(TCapturar);
end;

procedure TfrmCapturar_facturas.itemPreviewSeriesClick(Sender: TObject);
begin
  inherited;
{  try
     frmPRN_0003_TXT         := TfrmPRN_0003_TXT.Create(Application);
     frmPRN_0003_TXT.ESTATUS := 'SERIES';
     frmPRN_0003_TXT.ID      := dsFuente.DataSet.FieldByName('ID').AsInteger;
     if frmPRN_0003_TXT.OpenFormatoSeries then
        frmPRN_0003_TXT.preview;
  finally
     frmPRN_0003_TXT.Free;
  end;}

  frmCFF := TfrmCFF.Create(Application);
  try
     frmCFF.ID           := dsFuente.DataSet.FieldByName('ID').AsInteger;
     frmCFF.ESTATUS      := dsFuente.DataSet.FieldByName('ESTATUS').AsString;
     frmCFF.SIN_IVA      := dsFuente.DataSet.FieldByName('ELIMINAR_IVA').AsString = 'Si';
     frmCFF.ENLAZADAS    := true;
     frmCFF.BTN_CANCELAR := true;
     frmCFF.previewCFISeries;
  finally
     frmCFF.Free;
  end;
end;

procedure TfrmCapturar_facturas.MarcoMateriales1buCapturarClick(
  Sender: TObject);
begin
  inherited;
  MarcoMateriales1.buCapturarClick(Sender);

end;

procedure TfrmCapturar_facturas.dgPartidasBTNSERIESButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
var
   i    : integer;
   v_id : integer;
begin
  inherited;
  if (dsPartidas.DataSet.FieldByName('R_MATERIAL_S').AsString = 'Si'         ) and
     (dsPartidas.DataSet.FieldByName('R_SERIE').AsString      = ''           ) and
     (dsFuente.DataSet.FieldByName('ESTATUS').AsString        = 'Sin Afectar') then
  begin


     if MessageDlg('¿Desea capturar los numeros de serie para este producto?', mtConfirmation, [mbYes, mbNo], 0) = mrYes  then
     begin
        v_id := dsPartidas.DataSet.FieldByName('R_ID').AsInteger;

        ibNuevaPartida.Click;
        MarcoMateriales1.edMaterial.Text           := dsPartidas.DataSet.FieldByName('R_CLAVE').AsString;
        MarcoMateriales1.edDescripcion.Text        := dsPartidas.DataSet.FieldByName('R_DESCRIPCION').AsString;
        MarcoMateriales1.edMaterial.Tag            := dsPartidas.DataSet.FieldByName('R_MATERIAL').AsInteger;
        MarcoMateriales1.edCantidad.Text          := '1';
        MarcoMateriales1.edPrecioCosto.Text       := dsPartidas.DataSet.FieldByName('R_PRECIO').AsString;
        MarcoMateriales1.PRECIOMINIMO              := dsPartidas.DataSet.FieldByName('R_PRECIO').AsFloat;
        MarcoMateriales1.cbUnidades.KeyValue := dsPartidas.DataSet.FieldByName('R_UNIDAD').AsInteger;
        MarcoMateriales1.edSubTotal.Text          := dsPartidas.DataSet.FieldByName('R_SUBTOTAL').AsString;
        MarcoMateriales1.edIVA.Text               := dsPartidas.DataSet.FieldByName('R_IVA').AsString;
        MarcoMateriales1.edIEPS.Text              := dsPartidas.DataSet.FieldByName('R_IEPS').AsString;
        MarcoMateriales1.edImpuesto1.Text         := dsPartidas.DataSet.FieldByName('R_IMPUESTO1').AsString;
        MarcoMateriales1.edImpuesto2.Text         := dsPartidas.DataSet.FieldByName('R_IMPUESTO2').AsString;
        MarcoMateriales1.edDescuentoPorc.Text     := dsPartidas.DataSet.FieldByName('R_DESCUENTO_PORC').AsString;
        MarcoMateriales1.ivaPorc                   := dsPartidas.DataSet.FieldByName('R_IVA_PORC').AsFloat;
        MarcoMateriales1.iepsPorc                  := dsPartidas.DataSet.FieldByName('R_IEPS_PORC').AsFloat;
        MarcoMateriales1.impuesto1Porc             := dsPartidas.DataSet.FieldByName('R_IMPUESTO1_PORC').AsFloat;
        MarcoMateriales1.impuesto2Porc             := dsPartidas.DataSet.FieldByName('R_IMPUESTO2_PORC').AsFloat;
        MarcoMateriales1.edPU.Text                := dsPartidas.DataSet.FieldByName('R_PRECIO_SIN_IMPUESTOS').AsString;
        MarcoMateriales1.edComentario.Text         := dsPartidas.DataSet.FieldByName('R_COMENTARIO').AsString;

        MarcoMateriales1.NUM_SERIE                 := true;
        MarcoMateriales1.REPETIR                   := dgPartidas.DataSource.DataSet.FieldByName('R_CANTIDAD').AsInteger;
        for i := 1 to MarcoMateriales1.REPETIR do
        begin
           MarcoMateriales1.pedirSerie;
           ibGuardarPartida.Click;
        end;

        if ibCancelarPartida.Enabled then
           ibCancelarPartida.Click;

        //Se elimina la partida original
        spDEL_PARTIDA_FACTURA.ParamByName('P_ID').AsInteger := v_id;
        spDEL_PARTIDA_FACTURA.ExecProc;
        spDEL_PARTIDA_FACTURA.Transaction.CommitRetaining;

        refreshTotales(0);
     end;
  end
  else
     if (dsPartidas.DataSet.FieldByName('R_MATERIAL_S').AsString = 'No') then
     begin
       ShowMessage('El material no se maneja por numero de serie.');
     end
     else
     if (dsPartidas.DataSet.FieldByName('R_SERIE').AsString <> '') then
     begin
       ShowMessage('El material ya cuenta con numero de serie.');
     end
     else
     if (dsFuente.DataSet.FieldByName('ESTATUS').AsString <> 'Sin Afectar') then
     begin
       ShowMessage('La Factura no cuenta con el estatus requerido (Sin Afectar).');
     end
end;

procedure TfrmCapturar_facturas.itemEliminarPartidaClick(Sender: TObject);
begin
  inherited;
  if ibEliminarPartida.Enabled then
     ibEliminarPartida.Click;
end;

procedure TfrmCapturar_facturas.itemAgregarPartidaClick(Sender: TObject);
begin
  inherited;
  if ibNuevaPartida.Enabled then
     ibNuevaPartida.Click;
end;

procedure TfrmCapturar_facturas.itemFEClick(Sender: TObject);
var
   v_ruta    : string;
   v_args    : string;
   arch      : string;
begin
  inherited;
  v_ruta := ExtractFileDir(Application.ExeName) + '\';
  arch   := v_ruta + 'CFD\' + 'awrIBCFD.exe';
  if FileExists(arch) then
  begin
     v_args := dsFuente.DataSet.FieldByName('ID').AsString;
     WinExecNoWait32(arch + ' ' + v_args, SW_SHOWDEFAULT);
  end
  else
     ShowMessage('Falta archivo: '+ arch);
end;

procedure TfrmCapturar_facturas.ibRetencionClick(Sender: TObject);
begin
  inherited;
   if ejecucionRetencionIVA then
   begin
      reglas.abrir_IBTabla(TCapturar);
      reglas.refresh_IBQuery(qyPartidas);
      //dgPartidas.FullExpand;
   end;
end;

procedure TfrmCapturar_facturas.ibRetencionISRClick(Sender: TObject);
begin
  inherited;
   if ejecucionRetencionISR then
   begin
      reglas.abrir_IBTabla(TCapturar);
      reglas.refresh_IBQuery(qyPartidas);
      //dgPartidas.FullExpand;
   end;
end;

procedure TfrmCapturar_facturas.dgPartidasRETENCION_IVAButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
begin
  inherited;
  if (dsFuente.DataSet.FieldByName('ESTATUS').AsString = 'Sin Afectar') and
     (dsFuente.DataSet.State = dsBrowse                               ) and
     (not(edicionDetalle)                                             ) then
  begin
     if ejecucionRetencionDetalleIVA then
     begin
        reglas.abrir_IBTabla(TCapturar);
        reglas.refresh_IBQuery(qyPartidas);
        //dgPartidas.FullExpand;
     end;
  end;
end;

procedure TfrmCapturar_facturas.dgPartidasRETENCION_ISRButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
begin
  inherited;
  if (dsFuente.DataSet.FieldByName('ESTATUS').AsString = 'Sin Afectar') and
     (dsFuente.DataSet.State = dsBrowse                               ) and
     (not(edicionDetalle)                                             ) then
  begin
     if ejecucionRetencionDetalleISR then
     begin
        reglas.abrir_IBTabla(TCapturar);
        reglas.refresh_IBQuery(qyPartidas);
        //dgPartidas.FullExpand;
     end;
  end;
end;

procedure TfrmCapturar_facturas.itemPreview2Click(Sender: TObject);
begin
  inherited;
   frmCFF := TfrmCFF.Create(Application);
   try
      frmCFF.ID           := dsFuente.DataSet.FieldByName('ID').AsInteger;
      frmCFF.ESTATUS      := dsFuente.DataSet.FieldByName('ESTATUS').AsString;
      frmCFF.SIN_IVA      := dsFuente.DataSet.FieldByName('ELIMINAR_IVA').AsString = 'Si';
      frmCFF.ENLAZADAS    := true;
      frmCFF.BTN_CANCELAR := true;
      frmCFF.XML          := dsFuente.DataSet.FieldByName('FE_XML').AsString;
      frmCFF.preview2;
   finally
      frmCFF.Free;
   end;
end;

procedure TfrmCapturar_facturas.buTicketsClick(Sender: TObject);
begin
  inherited;
  frmSeleccionarPedidoParaFacturas := TfrmSeleccionarPedidoParaFacturas.Create(Self);
  try
     frmSeleccionarPedidoParaFacturas.Caption     := 'Seleccionar Ticket'; 
     frmSeleccionarPedidoParaFacturas.DATABASE    := dmIBModulo.ibSistema;
     frmSeleccionarPedidoParaFacturas.TRANSACTION := dmIBModulo.ibSistemaTransaccion;
     frmSeleccionarPedidoParaFacturas.FACTURA     := dsFuente.DataSet.FieldByName('ID').AsInteger;
     frmSeleccionarPedidoParaFacturas.CLIENTE     := 0;
     frmSeleccionarPedidoParaFacturas.ESTICKET    := 1;
     frmSeleccionarPedidoParaFacturas.Open;
     frmSeleccionarPedidoParaFacturas.ShowModal;
  finally
    frmSeleccionarPedidoParaFacturas.Free;
  end;

  reglas.refresh_IBQuery(qyPartidas);
  reglas.abrir_IBTabla(TCapturar);

  //dgPartidas.FullExpand;
end;

procedure TfrmCapturar_facturas.itemTicketsClick(Sender: TObject);
begin
  inherited;
  if buTickets.Enabled then
     buTickets.Click;
end;

procedure TfrmCapturar_facturas.buF8PClick(Sender: TObject);
begin
  inherited;
  if not(dsGastos.DataSet.IsEmpty) then
  begin
     frmFacturasGastos := TfrmFacturasGastos.Create(Application);
     try
        frmFacturasGastos.IDENT           := dsGastos.DataSet.FieldByName('R_ID').AsInteger;
        frmFacturasGastos.LINK            := dsFuente.DataSet.FieldByName('ID').AsInteger;
        frmFacturasGastos.edGasto.Tag     := dsGastos.DataSet.FieldByName('R_LINK_GASTO').AsInteger;
        frmFacturasGastos.edGasto.Text    := dsGastos.DataSet.FieldByName('R_CONCEPTO').AsString;
        frmFacturasGastos.edFactura.Text  := dsGastos.DataSet.FieldByName('R_FACTURA').AsString;
        frmFacturasGastos.edImporte.Text := dsGastos.DataSet.FieldByName('R_IMPORTE').AsString;
        frmFacturasGastos.ShowModal;
     finally
        frmFacturasGastos.Free;
     end;

     reglas.refresh_IBQuery(qyGastos);
     reglas.abrir_IBTabla(TCapturar);
  end
  else
  begin
    ShowMessage('No hay gastos capturados.');
  end;
end;

procedure TfrmCapturar_facturas.buF9PClick(Sender: TObject);
begin
  inherited;
{  spADD_PEDIDO_PRESENTACION.ParamByName('P_ID').AsInteger           := paPresentaciones.Tag;
  spADD_PEDIDO_PRESENTACION.ParamByName('P_PEDIDO').AsInteger       := dsFuente.DataSet.FieldByName('ID').AsInteger;
  spADD_PEDIDO_PRESENTACION.ParamByName('P_PRESENTACION').AsInteger := edPresentacion.Tag;
  spADD_PEDIDO_PRESENTACION.ParamByName('P_COMENTARIO').AsString    := edComentario.Text;
  spADD_PEDIDO_PRESENTACION.ExecProc;
  spADD_PEDIDO_PRESENTACION.Transaction.CommitRetaining;

  reglas.abrir_IBQuery_seek('R_ID',spADD_PEDIDO_PRESENTACION.ParamByName('R_ID').AsInteger, qyPartidasPresentaciones);
//  fijarBotonesP(false);}
end;

procedure TfrmCapturar_facturas.buF11PClick(Sender: TObject);
begin
  inherited;
  if not(dsGastos.DataSet.IsEmpty) then
  begin
     if MessageDlg(' ¿ Eliminar Registro ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes  then
     begin
        spE_GASTO_FACTURA.ParamByName('P_ID').AsInteger := dsGastos.DataSet.FieldByName('R_ID').AsInteger;
        spE_GASTO_FACTURA.ExecProc;
        spE_GASTO_FACTURA.Transaction.CommitRetaining;

        reglas.refresh_IBQuery(qyGastos);
     end;
  end
  else
  begin
    ShowMessage('No hay gastos capturados.');
  end;
end;

procedure TfrmCapturar_facturas.pcFacturasChange(Sender: TObject);
begin
  inherited;
  Self.PopupMenu := pmTeclas;

  case pcFacturas.ActivePageIndex of
     1 : begin //Cejilla Gastos
            Self.PopupMenu := ppFPresentaciones;

            if not(qyGastos.Active) then
               reglas.refresh_IBQuery(qyGastos);
         end;
  end;
end;

procedure TfrmCapturar_facturas.buF7PClick(Sender: TObject);
begin
  inherited;
  if not(dsFuente.DataSet.IsEmpty) then
  begin
     frmFacturasGastos := TfrmFacturasGastos.Create(Application);
     try
        frmFacturasGastos.IDENT := 0;
        frmFacturasGastos.LINK  := dsFuente.DataSet.FieldByName('ID').AsInteger;
        frmFacturasGastos.ShowModal;
     finally
        frmFacturasGastos.Free;
     end;

     reglas.refresh_IBQuery(qyGastos);
     reglas.abrir_IBTabla(TCapturar);
  end
  else
  begin
    ShowMessage('Falta factura para agregar gastos');
  end
end;

end.

