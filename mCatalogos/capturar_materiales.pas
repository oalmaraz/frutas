unit capturar_materiales;

interface

uses
  UTipos, Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  capturarMDI, ExtDlgs,  Menus,  ImgList,  Db,
  StdCtrls, DBCtrls, Buttons, ExtCtrls, ComCtrls,
  IBStoredProc, IBTable,  IBCustomDataSet, IBQuery, Mask,    jpeg,
  Grids, DBGrids, System.ImageList;

type
  TfrmCapturar_materiales = class(TfrmCapturarMDI)
    pcDatos: TPageControl;
    tsDatos: TTabSheet;
    tsUnidades: TTabSheet;
    paDatos: TPanel;
    Label1: TLabel;
    deClave: TDBEdit;
    Label3: TLabel;
    deLinea: TDBEdit;
    deCodigoBarras: TDBEdit;
    cbUnidadVolumen: TDBLookupComboBox;
    deAlto: TDBEdit;
    deAncho: TDBEdit;
    deLargo: TDBEdit;
    Label5: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    leUnidadBase: TDBLookupComboBox;
    Label7: TLabel;
    deDescripcion: TDBEdit;
    Label2: TLabel;
    paObservaciones: TPanel;
    dmObservaciones: TDBMemo;
    TCapturarID: TIntegerField;
    TCapturarCLAVE: TIBStringField;
    TCapturarDESCRIPCION: TIBStringField;
    TCapturarUNIDAD_BASE: TIntegerField;
    TCapturarLINEA: TIntegerField;
    TCapturarUNIDADES_COMPRADAS: TFloatField;
    TCapturarUNIDADES_VENDIDAS: TFloatField;
    TCapturarUNIDADES_PRODUCIDAS: TFloatField;
    TCapturarLARGO: TFloatField;
    TCapturarANCHO: TFloatField;
    TCapturarUNIDAD_LAA: TIntegerField;
    TCapturarLOTE: TIBStringField;
    TCapturarNUM_SERIE: TIBStringField;
    TCapturarCONSOLIDADO: TIBStringField;
    TCapturarCOSTO_PROMEDIO: TIBStringField;
    TCapturarCOSTO_PEPS: TIBStringField;
    TCapturarCOSTO_UEPS: TIBStringField;
    TCapturarFECHA_CERO_EXIST: TDateTimeField;
    TCapturarFECHA_ULTIMA_COMPRA: TDateTimeField;
    TCapturarCODIGO_BARRAS: TIBStringField;
    TCapturarIVA_PORC: TFloatField;
    TCapturarIEPS_PORC: TFloatField;
    TCapturarIMPUESTO_1_PORC: TFloatField;
    TCapturarIMPUESTO_2_PORC: TFloatField;
    TCapturarOBSERVACIONES: TBlobField;
    TCapturarFOTO: TBlobField;
    TCapturarALTO: TFloatField;
    TUnidades: TIBTable;
    dsUnidades: TDataSource;
    TCapturardescripcion_unidad_base: TIBStringField;
    TCapturardescripcion_unidad_laa: TIBStringField;
    TCapturardescripcion_linea: TIBStringField;
    dgUnidades: TDBGrid;
    qyUnidadesSecundarias: TIBQuery;
    dsUnidadesSecundarias: TDataSource;
    spDEL_UNIDAD_MATERIAL: TIBStoredProc;
    Label14: TLabel;
    ceDiasVigencia: TDBEdit;
    TCapturarDIAS_DE_VIGENCIA: TIntegerField;
    deCostoUltCompra: TDBEdit;
    deEtiquetas: TDBEdit;
    Label21: TLabel;
    Label22: TLabel;
    TCapturarCOSTO_ULT_COMPRA: TFloatField;
    TCapturarNUM_ETIQUETAS: TIntegerField;
    TCapturarACTIVO_FIJO: TIBStringField;
    Label23: TLabel;
    cbCalidades: TDBLookupComboBox;
    TCalidades: TIBTable;
    dsCalidades: TDataSource;
    TCapturarCALIDAD: TIntegerField;
    ilImagenes: TImageList;
    tsMedidas: TTabSheet;
    qyMateriales_Medidas: TIBQuery;
    dsMateriales_Medidas: TDataSource;
    qyMateriales_MedidasR_ID: TIntegerField;
    qyMateriales_MedidasR_DESCRIPCION: TIBStringField;
    qyMateriales_MedidasR_CODIGO_BARRAS: TIBStringField;
    qyMateriales_MedidasR_ID_MEDIDA: TIntegerField;
    sbRefreshUnidadBase: TSpeedButton;
    sbRefreshUnidadEmpaque: TSpeedButton;
    sbRefreshCalidad: TSpeedButton;
    TCapturarCANTIDAD_MINIMA: TFloatField;
    TCapturarCANTIDAD_MAXIMA: TFloatField;
    TCapturarPUNTO_DE_REORDEN: TFloatField;
    deMinima: TDBEdit;
    deReorden: TDBEdit;
    deMaxima: TDBEdit;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    qyEncabezadosAlmacenes: TIBQuery;
    qyEncabezadosAlmacenesR_ALMACEN1: TIntegerField;
    qyEncabezadosAlmacenesR_ALMACEN2: TIntegerField;
    qyEncabezadosAlmacenesR_ALMACEN3: TIntegerField;
    qyEncabezadosAlmacenesR_ALMACEN4: TIntegerField;
    qyEncabezadosAlmacenesR_ALMACEN5: TIntegerField;
    qyEncabezadosAlmacenesR_ALMACEN6: TIntegerField;
    qyEncabezadosAlmacenesR_ALMACEN7: TIntegerField;
    qyEncabezadosAlmacenesR_ALMACEN8: TIntegerField;
    qyEncabezadosAlmacenesR_ALMACEN9: TIntegerField;
    qyEncabezadosAlmacenesR_ALMACEN10: TIntegerField;
    qyEncabezadosAlmacenesR_ALMACEN1_CLAVE: TIBStringField;
    qyEncabezadosAlmacenesR_ALMACEN2_CLAVE: TIBStringField;
    qyEncabezadosAlmacenesR_ALMACEN3_CLAVE: TIBStringField;
    qyEncabezadosAlmacenesR_ALMACEN4_CLAVE: TIBStringField;
    qyEncabezadosAlmacenesR_ALMACEN5_CLAVE: TIBStringField;
    qyEncabezadosAlmacenesR_ALMACEN6_CLAVE: TIBStringField;
    qyEncabezadosAlmacenesR_ALMACEN7_CLAVE: TIBStringField;
    qyEncabezadosAlmacenesR_ALMACEN8_CLAVE: TIBStringField;
    qyEncabezadosAlmacenesR_ALMACEN9_CLAVE: TIBStringField;
    qyEncabezadosAlmacenesR_ALMACEN10_CLAVE: TIBStringField;
    qyEncabezadosAlmacenesR_CUANTOS: TIntegerField;
    dsExistencias: TDataSource;
    TCapturarUNIDADES_X_CAJA: TIntegerField;
    TCapturarESTATUS: TIBStringField;
    Label31: TLabel;
    dePorCaja: TDBEdit;
    laCodigoBarras: TBitBtn;
    spMODIFICAR_FOLIO: TIBStoredProc;
    spAUTO_FOLIO: TIBStoredProc;
    dsAlmacenes: TDataSource;
    Label4: TLabel;
    deCosto: TDBEdit;
    TCapturarCOSTO: TFloatField;
    paImpuestos: TPanel;
    paFoto: TPanel;
    imFoto: TImage;
    pmImagen: TPopupMenu;
    itemCargar: TMenuItem;
    itemLimpiar: TMenuItem;
    opImagen: TOpenPictureDialog;
    dePeso: TDBEdit;
    cbUPeso: TDBLookupComboBox;
    Label6: TLabel;
    SpeedButton1: TSpeedButton;
    Label8: TLabel;
    TCapturarPESO: TFloatField;
    TCapturarUNIDAD_PESO: TIntegerField;
    TCapturarunidad_peso_d: TStringField;
    imBack: TImage;
    laEstatus: TLabel;
    Label9: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    cbEstatus: TDBLookupComboBox;
    qyExistencias: TIBQuery;
    qyExistenciasR_MATERIAL: TIntegerField;
    qyExistenciasR_CANTIDAD1: TFloatField;
    qyExistenciasR_CANTIDAD2: TFloatField;
    qyExistenciasR_CANTIDAD3: TFloatField;
    qyExistenciasR_CANTIDAD4: TFloatField;
    qyExistenciasR_CANTIDAD5: TFloatField;
    qyExistenciasR_CANTIDAD6: TFloatField;
    qyExistenciasR_CANTIDAD7: TFloatField;
    qyExistenciasR_CANTIDAD8: TFloatField;
    qyExistenciasR_CANTIDAD9: TFloatField;
    qyExistenciasR_CANTIDAD10: TFloatField;
    qyExistenciasR_TOTAL: TFloatField;
    dgInventario: TDBGrid;
    cbActivoFijo: TDBCheckBox;
    Label13: TLabel;
    Shape3: TShape;
    Label15: TLabel;
    Shape5: TShape;
    cbConsolidado: TDBCheckBox;
    cbSerie: TDBCheckBox;
    cbLote: TDBCheckBox;
    Shape7: TShape;
    Label30: TLabel;
    cbPromedio: TDBCheckBox;
    cbPEPS: TDBCheckBox;
    cbUEPS: TDBCheckBox;
    tsBOM: TTabSheet;
    tsProveedores: TTabSheet;
    tsClientes: TTabSheet;
    qyExistenciasR_PRECIO_MINIMO: TFloatField;
    qyExistenciasR_PRECIO_MAXIMO: TFloatField;
    dgProveedores: TDBGrid;
    paCaptura: TPanel;
    edProveedor: TEdit;
    Label35: TLabel;
    edClave: TEdit;
    edDescripcion: TEdit;
    Label36: TLabel;
    Label37: TLabel;
    edCMinima: TEdit;
    Label38: TLabel;
    edFactor: TEdit;
    edCosto: TEdit;
    edTEntrega: TEdit;
    Label39: TLabel;
    Label40: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    cbUnidades: TDBLookupComboBox;
    qyPartidas: TIBQuery;
    dsPartidas: TDataSource;
    qyPartidasR_ROWS: TIntegerField;
    qyPartidasR_ID: TIntegerField;
    qyPartidasR_MATERIAL: TIntegerField;
    qyPartidasR_PROVEEDOR: TIntegerField;
    qyPartidasR_CLAVE: TIBStringField;
    qyPartidasR_DESCRIPCION: TIBStringField;
    qyPartidasR_MINIMA: TFloatField;
    qyPartidasR_UNIDAD: TIntegerField;
    qyPartidasR_UNIDAD_CLAVE: TIBStringField;
    qyPartidasR_UNIDAD_DESCRIPCION: TIBStringField;
    qyPartidasR_FACTOR: TFloatField;
    qyPartidasR_COSTO: TFloatField;
    qyPartidasR_ENTREGA: TIntegerField;
    qyPartidasR_PROVEEDOR_NOMBRE: TIBStringField;
    spADD_MPROVEEDOR: TIBStoredProc;
    qyDelMProveedor: TIBQuery;
    ppFProveedores: TPopupMenu;
    itemF7Proveedores: TMenuItem;
    itemF8Proveedores: TMenuItem;
    itemF9Proveedores: TMenuItem;
    itemF10Proveedores: TMenuItem;
    itemF11Proveedores: TMenuItem;
    paMedidas: TPanel;
    Panel6: TPanel;
    Shape20: TShape;
    Label45: TLabel;
    Shape21: TShape;
    fcImager3: TImage;
    dgMedidas: TDBGrid;
    qyMedidasColores: TIBQuery;
    qyMateriales_MedidasR_ORDEN: TIntegerField;
    dsMedidasColores: TDataSource;
    qyMedidasColoresR_ID: TIntegerField;
    qyMedidasColoresR_CODIGO_BARRAS: TIBStringField;
    qyMateriales_MedidasR_MATERIAL: TIntegerField;
    qyMedidasColoresR_COLOR: TIntegerField;
    fcImager5: TImage;
    spDEL_MATERIAL_MEDIDAS: TIBStoredProc;
    Panel3: TPanel;
    qyMedidasColoresR_COLOR_NOMBRE: TIBStringField;
    TCapturarESPRODUCTO: TIBStringField;
    qyComposicion: TIBQuery;
    dsComposicion: TDataSource;
    pcBOM: TPageControl;
    tsIngenieria: TTabSheet;
    tsComposicion: TTabSheet;
    paIngenieria: TPanel;
    Shape29: TShape;
    Label51: TLabel;
    buF8Ingenieria: TBitBtn;
    buF9Ingenieria: TBitBtn;
    buF10Ingenieria: TBitBtn;
    buF11Ingenieria: TBitBtn;
    buF7Ingenieria: TBitBtn;
    spIDBOM: TIBStoredProc;
    qyUnidadesComp: TIBQuery;
    qyUnidadesCompR_UNIDAD: TIntegerField;
    qyUnidadesCompR_UNIDAD_CLAVE: TIBStringField;
    qyUnidadesCompR_UNIDAD_DESCRIPCION: TIBStringField;
    dsUnidadesComp: TDataSource;
    qyUnidadesCompR_ID: TIntegerField;
    qyUnidadesCompR_FACTOR: TFloatField;
    qyUnidadesCompCambio: TIBQuery;
    dsUnidadesCompCambio: TDataSource;
    qyUnidadesCompCambioR_ID: TIntegerField;
    qyUnidadesCompCambioR_UNIDAD: TIntegerField;
    qyUnidadesCompCambioR_UNIDAD_CLAVE: TIBStringField;
    qyUnidadesCompCambioR_UNIDAD_DESCRIPCION: TIBStringField;
    qyUnidadesCompCambioR_FACTOR: TFloatField;
    spADD_COMPOSICION: TIBStoredProc;
    spUPD_COMPOSICION: TIBStoredProc;
    spDEL_COMPOSICION: TIBStoredProc;
    tsTareas: TTabSheet;
    paTarea: TPanel;
    Shape25: TShape;
    Label72: TLabel;
    buF7Tareas: TBitBtn;
    buF8Tareas: TBitBtn;
    buF9Tareas: TBitBtn;
    buF10Tareas: TBitBtn;
    buF11Tareas: TBitBtn;
    dgTareas: TDBGrid;
    edObservaciones: TMemo;
    Label73: TLabel;
    edTarea: TEdit;
    Label74: TLabel;
    paImgTarea: TPanel;
    qyTareas: TIBQuery;
    dsTareas: TDataSource;
    pmTareasImg: TPopupMenu;
    itemTareaC: TMenuItem;
    itemTareaL: TMenuItem;
    spADD_TAREAS_ING: TIBStoredProc;
    tsReceta: TTabSheet;
    imTarea: TImage;
    fcTarea: TImage;
    Panel5: TPanel;
    Shape32: TShape;
    Label76: TLabel;
    buF7Receta: TBitBtn;
    buF8Receta: TBitBtn;
    buF9Receta: TBitBtn;
    buF10Receta: TBitBtn;
    buF11Receta: TBitBtn;
    paCapturaReceta: TPanel;
    paTareas: TPanel;
    Panel9: TPanel;
    buSelTarea: TBitBtn;
    paMaterialesQIntervienen: TPanel;
    Panel11: TPanel;
    Label77: TLabel;
    edTareaR: TEdit;
    Label78: TLabel;
    Label79: TLabel;
    Panel10: TPanel;
    buSelMaterial: TBitBtn;
    dgTareasVer: TDBGrid;
    dgMateriales: TTreeView;
    dgComposicionVer: TDBGrid;
    dgRecetaMateriales: TDBGrid;
    dgReceta: TDBGrid;
    qyReceta: TIBQuery;
    qyRecetaMateriales: TIBQuery;
    dsReceta: TDataSource;
    dsRecetaMateriales: TDataSource;
    qyRecetaMaterialesR_ROW: TIntegerField;
    qyRecetaMaterialesR_ID: TIntegerField;
    qyRecetaMaterialesR_MATERIAL: TIntegerField;
    qyRecetaMaterialesR_MATERIAL_CLAVE: TIBStringField;
    qyRecetaMaterialesR_MATERIAL_DESCRIPCION: TIBStringField;
    qyRecetaR_ROW: TIntegerField;
    qyRecetaR_ID: TIntegerField;
    qyRecetaR_NIVEL_TAREA: TIntegerField;
    qyRecetaR_MAT_TAREA: TIntegerField;
    qyRecetaR_TAREA: TIntegerField;
    qyRecetaR_TAREA_DESCRIPCION: TIBStringField;
    imPasos: TImageList;
    edNivel: TEdit;
    Label82: TLabel;
    spADD_BOM_RECETA: TIBStoredProc;
    spADD_BOM_RECETA_DET: TIBStoredProc;
    spDEL_TAREA_ING: TIBStoredProc;
    qyRecetaMaterialesR_BOM_ING_DET: TIntegerField;
    spDEL_BOM_RECETA: TIBStoredProc;
    spDEL_BOM_RECETA_DET: TIBStoredProc;
    ppFIngenieria: TPopupMenu;
    itemF7Ingenieria: TMenuItem;
    itemF8Ingenieria: TMenuItem;
    itemF9Ingenieria: TMenuItem;
    itemF10Ingenieria: TMenuItem;
    itemF11Ingenieria: TMenuItem;
    ppFComposicion: TPopupMenu;
    itemF7Composicion: TMenuItem;
    itemF8Composicion: TMenuItem;
    itemF9Composicion: TMenuItem;
    itemF10Composicion: TMenuItem;
    itemF11Composicion: TMenuItem;
    ppFReceta: TPopupMenu;
    itemF7Receta: TMenuItem;
    itemF8Receta: TMenuItem;
    itemF9Receta: TMenuItem;
    itemF10Receta: TMenuItem;
    itemF11Receta: TMenuItem;
    ppFTareas: TPopupMenu;
    itemF7Tareas: TMenuItem;
    itemF8Tareas: TMenuItem;
    itemF9Tareas: TMenuItem;
    itemF10Tareas: TMenuItem;
    itemF11Tareas: TMenuItem;
    edFAltaIng: TDateTimePicker;
    edFUActIng: TDateTimePicker;
    cbEstatusIng: TDBLookupComboBox;
    Label48: TLabel;
    Label57: TLabel;
    Label50: TLabel;
    laEtiquetaProceso: TLabel;
    Shape16: TShape;
    Shape17: TShape;
    cbColoresIng: TDBLookupComboBox;
    qyMaterialColores: TIBQuery;
    dsMaterialColores: TDataSource;
    Label80: TLabel;
    edObservIng: TMemo;
    dgIngenieria: TDBGrid;
    qyBOMIngenieria: TIBQuery;
    dsBOMIngenieria: TDataSource;
    qyBOMIngenieriaR_ID: TIntegerField;
    qyBOMIngenieriaR_MATERIAL: TIntegerField;
    qyBOMIngenieriaR_COLOR: TIntegerField;
    qyBOMIngenieriaR_COLOR_NOMBRE: TIBStringField;
    qyBOMIngenieriaR_FECHA_ALTA: TDateTimeField;
    qyBOMIngenieriaR_FECHA_ULT_ACT: TDateTimeField;
    qyBOMIngenieriaR_OBSERVACIONES: TBlobField;
    qyBOMIngenieriaR_ESTATUS: TIBStringField;
    qyBOMIngenieriaR_ROW: TIntegerField;
    buLimpiarIng: TEdit;
    spADD_BOM_ING: TIBStoredProc;
    qyMaterialColoresR_ORDEN: TIntegerField;
    qyMaterialColoresR_ID: TIntegerField;
    qyMaterialColoresR_COLOR: TIntegerField;
    qyMaterialColoresR_COLOR_NOMBRE: TIBStringField;
    spDEL_BOM_ING: TIBStoredProc;
    paBOMComp: TPanel;
    Shape34: TShape;
    Shape31: TShape;
    Label52: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    laInsumoCambio: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Shape35: TShape;
    Label47: TLabel;
    Label53: TLabel;
    Label62: TLabel;
    Label71: TLabel;
    Shape6: TShape;
    Shape27: TShape;
    edInsumo: TEdit;
    edIncorporacion: TEdit;
    edConsumo: TEdit;
    edPorcDesperdicio: TEdit;
    edPorcMerma: TEdit;
    edPorcIncorporacion: TEdit;
    cbHayCambio: TCheckBox;
    edInsumoCambio: TEdit;
    edIncorporacionCambio: TEdit;
    edConsumoCambio: TEdit;
    edPorcDesperdicioCambio: TEdit;
    edPorcMermaCambio: TEdit;
    edPorcIncorporacionCambio: TEdit;
    buF11Composicion: TBitBtn;
    buF10Composicion: TBitBtn;
    buF9Composicion: TBitBtn;
    buF8Composicion: TBitBtn;
    buF7Composicion: TBitBtn;
    cbUnidad: TDBLookupComboBox;
    cbUnidadCambio: TDBLookupComboBox;
    edFechaCambio: TDateTimePicker;
    buExplicacion: TBitBtn;
    edDesperdicio: TEdit;
    edMerma: TEdit;
    edDesperdicioCambio: TEdit;
    edMermaCambio: TEdit;
    buExplicacionCambio: TBitBtn;
    dgComposicion: TDBGrid;
    Label49: TLabel;
    Shape28: TShape;
    dtCompPart: TDBText;
    laColor: TLabel;
    dtCompColor: TDBText;
    dnComposicion: TDBNavigator;
    Shape26: TShape;
    Shape30: TShape;
    dnTarea: TDBNavigator;
    Label81: TLabel;
    dtTareaPart: TDBText;
    Label83: TLabel;
    dtTareaColor: TDBText;
    Shape37: TShape;
    qyTareasR_ROW: TIntegerField;
    qyTareasR_ID: TIntegerField;
    qyTareasR_TAREA: TIntegerField;
    qyTareasR_TAREA_DESCRIPCION: TIBStringField;
    qyTareasR_OBSERVACIONES: TBlobField;
    qyTareasR_IMAGEN: TBlobField;
    dnReceta: TDBNavigator;
    Shape38: TShape;
    Label75: TLabel;
    Label84: TLabel;
    dtRecetaColor: TDBText;
    dtRecetaPart: TDBText;
    Shape33: TShape;
    Shape39: TShape;
    Bevel1: TBevel;
    fcImager6: TImage;
    ppSecundarias: TPopupMenu;
    itemF7Sec: TMenuItem;
    itemF11Sec: TMenuItem;
    buCopiar: TBitBtn;
    lvCopiaTareas: TListView;
    imTareas: TImageList;
    spCOPIA_TAREAS_ING: TIBStoredProc;
    buCopiaComposicion: TBitBtn;
    lvCopiaComposicion: TListView;
    spCOPIA_COMPOSICION_ING: TIBStoredProc;
    buF7Proveedores: TBitBtn;
    buF8Proveedores: TBitBtn;
    buF9Proveedores: TBitBtn;
    buF10Proveedores: TBitBtn;
    buF11Proveedores: TBitBtn;
    edMin: TEdit;
    edSeg: TEdit;
    Label41: TLabel;
    qyRecetaR_EJEC_MIN: TIntegerField;
    qyRecetaR_EJEC_SEG: TIntegerField;
    buF7Sec: TBitBtn;
    buF11Sec: TBitBtn;
    spEstatus: TIBStoredProc;
    dsEstatusProcesosDetalle: TDataSource;
    TEstatusProcesosDetalle: TIBTable;
    TEstatusProcesosDetalleID: TIntegerField;
    TEstatusProcesosDetallePROCESO: TIntegerField;
    TEstatusProcesosDetalleESTATUS: TIBStringField;
    TEstatusProcesosDetalleAUTORIZACION: TIBStringField;
    TEstatusProcesosDetalleSTOREPROC: TIBStringField;
    dsEstatusProcesos: TDataSource;
    qyEstatusProcesos: TIBQuery;
    qyBOMIngenieriaR_FORMA: TIntegerField;
    edEstatusIng: TEdit;
    buEjecutar: TBitBtn;
    fcImager7: TImage;
    fcImager8: TImage;
    tsImpresion: TTabSheet;
    rgTitulos: TRadioGroup;
    buMonarch: TBitBtn;
    paClientes: TPanel;
    laCliente: TLabel;
    Label85: TLabel;
    Label86: TLabel;
    fcImager9: TImage;
    edCliente: TEdit;
    edClaveC: TEdit;
    edDescripcionC: TEdit;
    buF7Clientes: TBitBtn;
    buF8Clientes: TBitBtn;
    buF9Clientes: TBitBtn;
    buF10Clientes: TBitBtn;
    buF11Clientes: TBitBtn;
    edExtension: TEdit;
    gbBusqueda: TGroupBox;
    ppFClientes: TPopupMenu;
    itemF7Clientes: TMenuItem;
    itemF8Clientes: TMenuItem;
    itemF9Clientes: TMenuItem;
    itemF10Clientes: TMenuItem;
    itemF11Clientes: TMenuItem;
    dgClientes: TDBGrid;
    qyPartidasClientes: TIBQuery;
    dsPartidasClientes: TDataSource;
    qyPartidasClientesR_ROWS: TIntegerField;
    qyPartidasClientesR_ID: TIntegerField;
    qyPartidasClientesR_MATERIAL: TIntegerField;
    qyPartidasClientesR_CLIENTE: TIntegerField;
    qyPartidasClientesR_CLIENTE_NOMBRE: TIBStringField;
    qyPartidasClientesR_CLAVE: TIBStringField;
    qyPartidasClientesR_DESCRIPCION: TIBStringField;
    qyPartidasClientesR_TIPO: TIBStringField;
    qyDelCliente: TIBQuery;
    spADD_MCLIENTE: TIBStoredProc;
    cbCliente: TCheckBox;
    cbExtension: TCheckBox;
    TCapturarSUJETO_A_MEDIDA: TIBStringField;
    cbEsProducto: TDBCheckBox;
    cbSujetoAMedida: TDBCheckBox;
    buAccesoBOM: TBitBtn;
    pcMedidas: TPageControl;
    tsColores: TTabSheet;
    tsSujetoAMedida: TTabSheet;
    dgColores: TDBGrid;
    ilMenuArbol: TImageList;
    TIBXMedidas: TIBTable;
    TIBXMedidasID: TIntegerField;
    TIBXMedidasLINK: TIntegerField;
    TIBXMedidasDESCRIPCION: TIBStringField;
    TIBXMedidasORDEN: TIntegerField;
    dsMedidas: TDataSource;
    jrGMedidas: TPanel;
    tlMedidas: TDBGrid;
    Panel4: TPanel;
    buSeleccion: TBitBtn;
    dgContenedorM: TDBGrid;
    qyContenedorMedidas: TIBQuery;
    dsContenedorMedidas: TDataSource;
    qyContenedorMedidasR_ID: TIntegerField;
    qyContenedorMedidasR_MEDIDA: TIntegerField;
    qyContenedorMedidasR_MEDIDA_DESCRIPCION: TIBStringField;
    spADD_CONTENEDOR_MEDIDAS: TIBStoredProc;
    qyContenedor: TIBQuery;
    dsContenedor: TDataSource;
    qyContenedorR_ID: TIntegerField;
    qyContenedorR_MEDIDA: TIntegerField;
    dgContenedor: TDBGrid;
    Splitter1: TSplitter;
    qyContenedorR_MEDIDA_DESCRIPCION: TIBStringField;
    spDEL_CONTENEDOR_MED: TIBStoredProc;
    paCopiarContenedores: TPanel;
    Shape4: TShape;
    buCpyContenedorM: TBitBtn;
    Shape8: TShape;
    buCpyContenedorG: TBitBtn;
    Splitter3: TSplitter;
    Label18: TLabel;
    Label19: TLabel;
    qyContenedorMedidasR_CONTENEDOR: TIntegerField;
    lvContenedor: TListView;
    Splitter2: TSplitter;
    spCOPY_CONTENEDOR: TIBStoredProc;
    spCOPY_CONTENEDOR_MEDIDA: TIBStoredProc;
    qyMateriales_MedidasR_CANTIDAD_MINIMA: TFloatField;
    qyMateriales_MedidasR_CANTIDAD_MAXIMA: TFloatField;
    qyMateriales_MedidasR_PUNTO_DE_REORDEN: TFloatField;
    qyMedidasColoresR_CANTIDAD_MINIMA: TFloatField;
    qyMedidasColoresR_CANTIDAD_MAXIMA: TFloatField;
    qyMedidasColoresR_PUNTO_DE_REORDEN: TFloatField;
    spADD_MAT_MEDIDAS: TIBStoredProc;
    ibCopiar: TBitBtn;
    spCOPIAR_MATERIAL: TIBStoredProc;
    buCostos: TBitBtn;
    qyPartidasR_DEVOLUCIONES: TFloatField;
    cbAfectaInv: TDBCheckBox;
    TCapturarAFECTA_INVENTARIO: TIBStringField;
    qyExistenciasR_CANTIDAD11: TFloatField;
    qyExistenciasR_CANTIDAD12: TFloatField;
    qyExistenciasR_CANTIDAD13: TFloatField;
    qyExistenciasR_CANTIDAD14: TFloatField;
    qyExistenciasR_CANTIDAD15: TFloatField;
    qyExistenciasR_CANTIDAD16: TFloatField;
    qyExistenciasR_CANTIDAD17: TFloatField;
    qyExistenciasR_CANTIDAD18: TFloatField;
    qyExistenciasR_CANTIDAD19: TFloatField;
    qyExistenciasR_CANTIDAD20: TFloatField;
    qyEncabezadosAlmacenesR_ALMACEN11: TIntegerField;
    qyEncabezadosAlmacenesR_ALMACEN12: TIntegerField;
    qyEncabezadosAlmacenesR_ALMACEN13: TIntegerField;
    qyEncabezadosAlmacenesR_ALMACEN14: TIntegerField;
    qyEncabezadosAlmacenesR_ALMACEN15: TIntegerField;
    qyEncabezadosAlmacenesR_ALMACEN16: TIntegerField;
    qyEncabezadosAlmacenesR_ALMACEN17: TIntegerField;
    qyEncabezadosAlmacenesR_ALMACEN18: TIntegerField;
    qyEncabezadosAlmacenesR_ALMACEN19: TIntegerField;
    qyEncabezadosAlmacenesR_ALMACEN20: TIntegerField;
    qyEncabezadosAlmacenesR_ALMACEN11_CLAVE: TIBStringField;
    qyEncabezadosAlmacenesR_ALMACEN12_CLAVE: TIBStringField;
    qyEncabezadosAlmacenesR_ALMACEN13_CLAVE: TIBStringField;
    qyEncabezadosAlmacenesR_ALMACEN14_CLAVE: TIBStringField;
    qyEncabezadosAlmacenesR_ALMACEN15_CLAVE: TIBStringField;
    qyEncabezadosAlmacenesR_ALMACEN16_CLAVE: TIBStringField;
    qyEncabezadosAlmacenesR_ALMACEN17_CLAVE: TIBStringField;
    qyEncabezadosAlmacenesR_ALMACEN18_CLAVE: TIBStringField;
    qyEncabezadosAlmacenesR_ALMACEN19_CLAVE: TIBStringField;
    qyEncabezadosAlmacenesR_ALMACEN20_CLAVE: TIBStringField;
    buZebra: TBitBtn;
    cbExcepcionDesc: TDBCheckBox;
    qyPartidasClientesR_DP_PORC: TFloatField;
    edDPPorc: TEdit;
    Label24: TLabel;
    TCapturarEXCEPCION_DESCUENTO: TIBStringField;
    TCapturarCOSTO_PI: TFloatField;
    TCapturarMONEDA_PI: TIntegerField;
    TCapturarUNIDAD_PI: TIntegerField;
    TCapturarSE_VENDE: TIBStringField;
    TCapturarSE_COMPRA: TIBStringField;
    cbSeVende: TDBCheckBox;
    cbSeCompra: TDBCheckBox;
    qyCCostos: TIBQuery;
    dsCCostos: TDataSource;
    qyCCostosID: TIntegerField;
    qyCCostosCLAVE: TIBStringField;
    qyCCostosNOMBRE: TIBStringField;
    qyCCostosUNIDAD: TIntegerField;
    qyCCostosFAMILIA: TIntegerField;
    qyCCostosEQUIPO: TIntegerField;
    qyCCostosUNIDAD_MEDIDA: TIntegerField;
    qyCCostosTURNOS_TOTALES_X_DIA: TIntegerField;
    qyCCostosCAPACIDAD_X_TURNO: TIntegerField;
    qyCCostosCAPACIDAD_X_DIA: TIntegerField;
    qyCCostosEMPLEADOS_X_TURNO: TIntegerField;
    qyCCostosEMPLEADOS_X_DIA: TIntegerField;
    qyCCostosORDEN: TIntegerField;
    cbCCostos: TDBLookupComboBox;
    buActCCostos: TBitBtn;
    buLimCCostos: TBitBtn;
    TCapturarCCOSTOS: TIntegerField;
    qyComposicionR_ROW: TIntegerField;
    qyComposicionR_ID: TIntegerField;
    qyComposicionR_MATERIAL: TIntegerField;
    qyComposicionR_MATERIAL_CBARRAS: TIBStringField;
    qyComposicionR_MATERIAL_CLAVE: TIBStringField;
    qyComposicionR_MATERIAL_DESCRIPCION: TIBStringField;
    qyComposicionR_INCORPORACION: TIBStringField;
    qyComposicionR_DESPERDICIO: TIBStringField;
    qyComposicionR_MERMA: TIBStringField;
    qyComposicionR_CONSUMO: TIBStringField;
    qyComposicionR_PORC_INCORPORACION: TFloatField;
    qyComposicionR_PORC_DESPERDICIO: TFloatField;
    qyComposicionR_PORC_MERMA: TFloatField;
    qyComposicionR_UNIDAD: TIntegerField;
    qyComposicionR_UNIDAD_CLAVE: TIBStringField;
    qyComposicionR_ESTATUS: TIBStringField;
    qyComposicionR_HAY_CAMBIO: TIBStringField;
    qyComposicionR_MATERIAL_CAMBIO: TIntegerField;
    qyComposicionR_MAT_CAMBIO_CLAVE: TIBStringField;
    qyComposicionR_MAT_CAMBIO_DESC: TIBStringField;
    qyComposicionR_FECHA_CAMBIO: TDateTimeField;
    qyComposicionR_INCORPORACION_CAMBIO: TIBStringField;
    qyComposicionR_DESPERDICIO_CAMBIO: TIBStringField;
    qyComposicionR_MERMA_CAMBIO: TIBStringField;
    qyComposicionR_CONSUMO_CAMBIO: TIBStringField;
    qyComposicionR_PORC_INCORPORACION_CAMBIO: TFloatField;
    qyComposicionR_PORC_DESPERDICIO_CAMBIO: TFloatField;
    qyComposicionR_PORC_MERMA_CAMBIO: TFloatField;
    qyComposicionR_UNIDAD_CAMBIO: TIntegerField;
    qyComposicionR_UNIDAD_CAMBIO_CLAVE: TIBStringField;
    TCapturarPOS_ES_CATEGORIA: TIBStringField;
    TCapturarPOS_DESC_CORTA: TIBStringField;
    TCapturarPOS_ORDEN: TIntegerField;
    cbEsCategoria: TDBCheckBox;
    Label26: TLabel;
    deDescripcionCorta: TDBEdit;
    Label44: TLabel;
    deOrden: TDBEdit;
    cbModificador: TDBCheckBox;
    TCapturarPOS_ES_MODIFICADOR: TIBStringField;
    deNivel: TDBEdit;
    Label46: TLabel;
    TCapturarPOS_PRESENTAR_IMG: TIBStringField;
    TCapturarPOS_PRESENTAR_DESC_CORTA: TIBStringField;
    TCapturarPOS_NIVEL: TIntegerField;
    qyPartidasR_INTERVIENE_EN_CALIDAD: TIBStringField;
    Label87: TLabel;
    cbCalidadP: TDBComboBox;
    Label34: TLabel;
    edCalibre: TDBEdit;
    TCapturarCALIBRE: TFloatField;
    spM_UNIDAD_PIVOTE: TIBStoredProc;
    laCtaContable: TLabel;
    cbCtasContables1: TDBLookupComboBox;
    TCapturarCUENTA1: TIntegerField;
    TCapturarCUENTA2: TIntegerField;
    buActCtas1: TBitBtn;
    buLimCtas1: TBitBtn;
    Label88: TLabel;
    cbCtasContables2: TDBLookupComboBox;
    qyCuentas: TIBQuery;
    dsCuentas: TDataSource;
    buActCtas2: TBitBtn;
    buLimCtas2: TBitBtn;
    Label25: TLabel;
    Label89: TLabel;
    cbMonedas: TDBLookupComboBox;
    TMonedas: TIBTable;
    TMonedasID: TIntegerField;
    TMonedasCLAVE: TIBStringField;
    TMonedasDESCRIPCION: TIBStringField;
    TMonedasFECHA_ULT_ACT: TDateTimeField;
    TMonedasPARIDAD: TFloatField;
    dsMonedas: TDataSource;
    laDescPorc: TLabel;
    edDescuentoPorc: TEdit;
    qyPartidasR_DESC_PORC: TFloatField;
    qyPartidasR_MONEDA: TIntegerField;
    qyPartidasR_MONEDA_C: TIBStringField;
    qyPartidasR_MONEDA_D: TIBStringField;
    cbSolicitarPeso: TDBCheckBox;
    TCapturarSOLICITAR_PESO: TIBStringField;
    TCapturarFECHA_ALTA: TDateTimeField;
    TCapturarFECHA_U_ACTUALIZACION: TDateTimeField;
    TCapturarFECHA_U_ACT_2: TDateTimeField;
    procedure dsFuenteDataChange(Sender: TObject; Field: TField);
    procedure ibNuevoClick(Sender: TObject);
    procedure ibModificarClick(Sender: TObject);
    procedure cbPromedioChange(Sender: TObject);
    procedure cbPEPSChange(Sender: TObject);
    procedure cbUEPSChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbLoteChange(Sender: TObject);
    procedure cbConsolidadoChange(Sender: TObject);
    procedure cbSerieChange(Sender: TObject);
    procedure deLineaButtonClick(Sender: TObject; AbsoluteIndex: Integer);
    procedure TCapturarCalcFields(DataSet: TDataSet);
    procedure dsUnidadesSecundariasDataChange(Sender: TObject;
      Field: TField);
    procedure sbRefreshUnidadBaseClick(Sender: TObject);
    procedure sbRefreshUnidadEmpaqueClick(Sender: TObject);
    procedure sbRefreshCalidadClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure buInicioClick(Sender: TObject);
    procedure buAnteriorClick(Sender: TObject);
    procedure buSiguienteClick(Sender: TObject);
    procedure buFinClick(Sender: TObject);
    procedure pcDatosChange(Sender: TObject);
    procedure laCodigoBarrasClick(Sender: TObject);
    procedure TCapturarAfterOpen(DataSet: TDataSet);
    procedure buMonarchClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure deCodigoBarrasKeyPress(Sender: TObject; var Key: Char);
    procedure itemCargarClick(Sender: TObject);
    procedure imFotoDblClick(Sender: TObject);
    procedure itemLimpiarClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure edProveedorButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure edProveedorKeyPress(Sender: TObject; var Key: Char);
    procedure itemF7ProveedoresClick(Sender: TObject);
    procedure itemF8ProveedoresClick(Sender: TObject);
    procedure itemF9ProveedoresClick(Sender: TObject);
    procedure itemF10ProveedoresClick(Sender: TObject);
    procedure itemF11ProveedoresClick(Sender: TObject);
    procedure dgMedidasBORRARButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dgColoresBORRARButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dgMedidasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dgColoresKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure buF7IngenieriaClick(Sender: TObject);
    procedure buF9IngenieriaClick(Sender: TObject);
    procedure buF8IngenieriaClick(Sender: TObject);
    procedure buF10IngenieriaClick(Sender: TObject);
    procedure buF11IngenieriaClick(Sender: TObject);
    procedure buF7ComposicionClick(Sender: TObject);
    procedure buF9ComposicionClick(Sender: TObject);
    procedure cbHayCambioChange(Sender: TObject);
    procedure edInsumoButtonClick(Sender: TObject; AbsoluteIndex: Integer);
    procedure edInsumoKeyPress(Sender: TObject; var Key: Char);
    procedure buF8ComposicionClick(Sender: TObject);
    procedure buExplicacionClick(Sender: TObject);
    procedure edPorcDesperdicioChange(Sender: TObject);
    procedure edConsumoChange(Sender: TObject);
    procedure edIncorporacionChange(Sender: TObject);
    procedure edInsumoCambioButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure edInsumoCambioKeyPress(Sender: TObject; var Key: Char);
    procedure buExplicacionCambioClick(Sender: TObject);
    procedure edPorcDesperdicioCambioChange(Sender: TObject);
    procedure edConsumoCambioChange(Sender: TObject);
    procedure edIncorporacionCambioChange(Sender: TObject);
    procedure buF10ComposicionClick(Sender: TObject);
    procedure buF11ComposicionClick(Sender: TObject);
    procedure dgComposicionDblClick(Sender: TObject);
    procedure buF7TareasClick(Sender: TObject);
    procedure buF10TareasClick(Sender: TObject);
    procedure buF9TareasClick(Sender: TObject);
    procedure itemTareaCClick(Sender: TObject);
    procedure edTareaButtonClick(Sender: TObject; AbsoluteIndex: Integer);
    procedure edTareaKeyPress(Sender: TObject; var Key: Char);
    procedure imTareaDblClick(Sender: TObject);
    procedure buF8TareasClick(Sender: TObject);
    procedure itemTareaLClick(Sender: TObject);
    procedure dsTareasDataChange(Sender: TObject; Field: TField);
    procedure paTareaResize(Sender: TObject);
    procedure fcTareaDblClick(Sender: TObject);
    procedure qyRecetaAfterOpen(DataSet: TDataSet);
    procedure buF7RecetaClick(Sender: TObject);
    procedure buF9RecetaClick(Sender: TObject);
    procedure buSelTareaClick(Sender: TObject);
    procedure buSelMaterialClick(Sender: TObject);
    procedure dgMaterialesELIMINARButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure buF10RecetaClick(Sender: TObject);
    procedure buF11TareasClick(Sender: TObject);
    procedure buF8RecetaClick(Sender: TObject);
    procedure buF11RecetaClick(Sender: TObject);
    procedure itemF7IngenieriaClick(Sender: TObject);
    procedure itemF7ComposicionClick(Sender: TObject);
    procedure itemF7TareasClick(Sender: TObject);
    procedure itemF7RecetaClick(Sender: TObject);
    procedure itemF8IngenieriaClick(Sender: TObject);
    procedure itemF9IngenieriaClick(Sender: TObject);
    procedure itemF10IngenieriaClick(Sender: TObject);
    procedure itemF11IngenieriaClick(Sender: TObject);
    procedure itemF8ComposicionClick(Sender: TObject);
    procedure itemF9ComposicionClick(Sender: TObject);
    procedure itemF10ComposicionClick(Sender: TObject);
    procedure itemF11ComposicionClick(Sender: TObject);
    procedure itemF8TareasClick(Sender: TObject);
    procedure itemF9TareasClick(Sender: TObject);
    procedure itemF10TareasClick(Sender: TObject);
    procedure itemF11TareasClick(Sender: TObject);
    procedure itemF8RecetaClick(Sender: TObject);
    procedure itemF9RecetaClick(Sender: TObject);
    procedure itemF10RecetaClick(Sender: TObject);
    procedure itemF11RecetaClick(Sender: TObject);
    procedure pcBOMChange(Sender: TObject);
    procedure qyBOMIngenieriaAfterOpen(DataSet: TDataSet);
    procedure buLimpiarIngButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure itemF7SecClick(Sender: TObject);
    procedure itemF11SecClick(Sender: TObject);
    procedure buCopiarClick(Sender: TObject);
    procedure dgTareasDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure dgTareasDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure lvCopiaTareasEndDrag(Sender, Target: TObject; X, Y: Integer);
    procedure buCopiaComposicionClick(Sender: TObject);
    procedure dgComposicionDragDrop(Sender, Source: TObject; X,
      Y: Integer);
    procedure dgComposicionDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure lvCopiaComposicionEndDrag(Sender, Target: TObject; X,
      Y: Integer);
    procedure dnComposicionClick(Sender: TObject; Button: TNavigateBtn);
    procedure dnTareaClick(Sender: TObject; Button: TNavigateBtn);
    procedure buF7Click(Sender: TObject);
    procedure buF8ProveedoresClick(Sender: TObject);
    procedure buF9ProveedoresClick(Sender: TObject);
    procedure buF10ProveedoresClick(Sender: TObject);
    procedure buF11ProveedoresClick(Sender: TObject);
    procedure buF7SecClick(Sender: TObject);
    procedure FlatButton5Click(Sender: TObject);
    procedure cbEstatusIngChange(Sender: TObject);
    procedure buEjecutarClick(Sender: TObject);
    procedure itemF7ClientesClick(Sender: TObject);
    procedure itemF8ClientesClick(Sender: TObject);
    procedure itemF9ClientesClick(Sender: TObject);
    procedure itemF10ClientesClick(Sender: TObject);
    procedure itemF11ClientesClick(Sender: TObject);
    procedure buF7ClientesClick(Sender: TObject);
    procedure buF8ClientesClick(Sender: TObject);
    procedure buF9ClientesClick(Sender: TObject);
    procedure buF10ClientesClick(Sender: TObject);
    procedure buF11ClientesClick(Sender: TObject);
    procedure edClienteButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure edClienteKeyPress(Sender: TObject; var Key: Char);
    procedure edExtensionButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure edExtensionKeyPress(Sender: TObject; var Key: Char);
    procedure cbClienteChange(Sender: TObject);
    procedure cbExtensionChange(Sender: TObject);
    procedure buAccesoBOMClick(Sender: TObject);
    {
    procedure tlMedidasGetImageIndex(Sender: TObject;
      Node: TdxTreeListNode; var Index: Integer);
    procedure tlMedidasGetSelectedIndex(Sender: TObject;
      Node: TdxTreeListNode; var Index: Integer);
    }
    procedure buSeleccionClick(Sender: TObject);

    procedure dgContenedorELIMINARButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure buCpyContenedorGClick(Sender: TObject);
    procedure buCpyContenedorMClick(Sender: TObject);
    procedure lvContenedorEndDrag(Sender, Target: TObject; X, Y: Integer);
    procedure dgContenedorDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure dgContenedorDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure dgContenedorMDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure dgContenedorMDragDrop(Sender, Source: TObject; X,
      Y: Integer);
    procedure dgContenedorMELIMINARButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dgColoresMMPButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dgMedidasMMPButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure ibCopiarClick(Sender: TObject);
    procedure buCostosClick(Sender: TObject);
    procedure cbAfectaInvChange(Sender: TObject);
    procedure buZebraClick(Sender: TObject);
    procedure buActCCostosClick(Sender: TObject);
    procedure buLimCCostosClick(Sender: TObject);
    procedure cbCCostosChange(Sender: TObject);
    procedure dgUnidadesColumn4ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dnRecetaClick(Sender: TObject; Button: TNavigateBtn);
    procedure buActCtas1Click(Sender: TObject);
    procedure buActCtas2Click(Sender: TObject);
    procedure buLimCtas1Click(Sender: TObject);
    procedure buLimCtas2Click(Sender: TObject);
  private
    { Private declarations }
    estatus  : string;
    tmFotoH  : integer;
    tmFotoW  : integer;
    ruta     : string;
    ETIQ_ENC : TStringList;
    ETIQ_DET : TStringList;
    edicionProv : boolean;
    edicionI  : boolean;
    edicionC  : boolean;
    edicionT  : boolean;
    edicionR  : boolean;
    edicionClie : boolean;
    imagen    : TMemoryStream;
    loadImagen  : integer;
    borrarIconT : boolean;
    borrarIconC : boolean;
    borrarIconCont : boolean;
    procedure load;
    function sustituir(cadena, subcadena, valor : string; comilla : boolean) : string;
    function quitarLetra(valor, quitar : String; por : char) : string;
    procedure foto;
    procedure loadAlmacenes;
//    function EAN13 : string;
    procedure fijarBotonesI;overload;
    procedure fijarBotonesI(valor : boolean);overload;
    procedure fijarBotonesC;overload;
    procedure fijarBotonesC(valor : boolean);overload;
    procedure fijarBotonesT;overload;
    procedure fijarBotonesT(valor : boolean);overload;
    procedure fijarBotonesR;overload;
    procedure fijarBotonesR(valor : boolean);overload;
    procedure fijarBotonesP;overload;
    procedure fijarBotonesP(valor : boolean);overload;
    procedure fijarBotonesClie;overload;
    procedure fijarBotonesClie(valor : boolean);overload;
    procedure HayCambio;
    procedure calcularComposicion;
    procedure calcularComposicionCambio;
    procedure habilitarCheckInventario;
  public
    { Public declarations }
  end;

var
  frmCapturar_materiales: TfrmCapturar_materiales;

implementation


uses Printers, ShellApi, explorar_materiales, IBModulo, reglas_de_negocios, lineas,
  seleccionar_unidades, IBData, UfrmSeleccionarProveedor, UfrmSeleccionarMaterial,
  UfrmSeleccionarTarea, UfrmImagen, UfrmAutorizar, UfrmSeleccionarCliente,
  UfrmSeleccionarExtension, UfrmMMP, UfrmMaterial_Costos, generar,
  UfrmSeleccionarMaterialTodos, UfrmAcceso;

{$R *.DFM}

procedure TfrmCapturar_materiales.fijarBotonesI(valor : boolean);
begin
   edicionI := valor;
   fijarBotonesI;
end;

procedure TfrmCapturar_materiales.fijarBotonesI;
begin
   buF7Ingenieria.Enabled    := not edicionI;
   buF8Ingenieria.Enabled    := not edicionI and not(dsBOMIngenieria.DataSet.IsEmpty);
   buF9Ingenieria.Enabled    := edicionI;
   buF10Ingenieria.Enabled   := edicionI;
   buF11Ingenieria.Enabled   := not edicionI and not(dsBOMIngenieria.DataSet.IsEmpty);

   cbEstatusIng.Enabled      := edicionI;
   buEjecutar.Enabled        := false;

   itemF7Ingenieria.Enabled  := buF7Ingenieria.Enabled;
   itemF8Ingenieria.Enabled  := buF8Ingenieria.Enabled;
   itemF9Ingenieria.Enabled  := buF9Ingenieria.Enabled;
   itemF10Ingenieria.Enabled := buF10Ingenieria.Enabled;
   itemF11Ingenieria.Enabled := buF11Ingenieria.Enabled;
   dgInventario.Visible      := not edicionI;

   fijarBotonesC(false);
   fijarBotonesT(false);
   fijarBotonesR(false);

   if edicionI then
   begin
      paIngenieria.Height := 144
   end
   else
      paIngenieria.Height := 40;
end;

procedure TfrmCapturar_materiales.fijarBotonesClie(valor : boolean);
begin
   edicionClie := valor;
   fijarBotonesClie;
end;

procedure TfrmCapturar_materiales.fijarBotonesClie;
begin
   buF7Clientes.Enabled  := not edicionClie;
   buF8Clientes.Enabled  := not edicionClie and not(dsPartidasClientes.DataSet.IsEmpty);
   buF9Clientes.Enabled  := edicionClie;
   buF10Clientes.Enabled := edicionClie;
   buF11Clientes.Enabled := not edicionClie and not(dsPartidasClientes.DataSet.IsEmpty);
   dgClientes.Enabled    := not edicionClie;

   itemF7Clientes.Enabled  := buF7Clientes.Enabled;
   itemF8Clientes.Enabled  := buF8Clientes.Enabled;
   itemF9Clientes.Enabled  := buF9Clientes.Enabled;
   itemF10Clientes.Enabled := buF10Clientes.Enabled;
   itemF11Clientes.Enabled := buF11Clientes.Enabled;

   if edicionClie then
      paClientes.Height := 92
   else
      paClientes.Height := 52;
end;

procedure TfrmCapturar_materiales.fijarBotonesP(valor : boolean);
begin
   edicionProv := valor;
   fijarBotonesP;
end;

procedure TfrmCapturar_materiales.fijarBotonesP;
begin
   buF7Proveedores.Enabled  := not edicionProv;
   buF8Proveedores.Enabled  := not edicionProv and not(dsPartidas.DataSet.IsEmpty);
   buF9Proveedores.Enabled  := edicionProv;
   buF10Proveedores.Enabled := edicionProv;
   buF11Proveedores.Enabled := not edicionProv and not(dsPartidas.DataSet.IsEmpty);
   dgProveedores.Enabled    := not edicionProv;

   itemF7Proveedores.Enabled  := buF7Proveedores.Enabled;
   itemF8Proveedores.Enabled  := buF8Proveedores.Enabled;
   itemF9Proveedores.Enabled  := buF9Proveedores.Enabled;
   itemF10Proveedores.Enabled := buF10Proveedores.Enabled;
   itemF11Proveedores.Enabled := buF11Proveedores.Enabled;

   if edicionProv then
      paCaptura.Height := 131
   else
      paCaptura.Height := 52;
end;

procedure TfrmCapturar_materiales.fijarBotonesC(valor : boolean);
begin
   edicionC := valor;
   fijarBotonesC;
end;

procedure TfrmCapturar_materiales.fijarBotonesC;
var
  enc     : boolean;
  cambiar : boolean;
begin
   cambiar                    := (dsBOMIngenieria.DataSet.FieldByName('R_ESTATUS').AsString = 'Diseno');
   enc                        := not(dsBOMIngenieria.DataSet.IsEmpty) and not(edicionI);
   buF7Composicion.Enabled    := cambiar and enc and not edicionC;
   buF8Composicion.Enabled    := cambiar and enc and not edicionC and not(dsComposicion.DataSet.IsEmpty);
   buF9Composicion.Enabled    := cambiar and enc and edicionC;
   buF10Composicion.Enabled   := cambiar and enc and edicionC;
   buF11Composicion.Enabled   := cambiar and enc and not edicionC and not(dsComposicion.DataSet.IsEmpty);

   itemF7Composicion.Enabled  := buF7Composicion.Enabled;
   itemF8Composicion.Enabled  := buF8Composicion.Enabled;
   itemF9Composicion.Enabled  := buF9Composicion.Enabled;
   itemF10Composicion.Enabled := buF10Composicion.Enabled;
   itemF11Composicion.Enabled := buF11Composicion.Enabled;
   dgInventario.Visible       := not edicionC;

   if edicionC then
   begin
      if cbHayCambio.Checked then
         paBOMComp.Height := 214
      else
         paBOMComp.Height := 115
   end
   else
      paBOMComp.Height := 40;

  if (lvCopiaComposicion.Items.Count > 0) and enc and not(edicionC) then
     lvCopiaComposicion.Visible := true
  else
     lvCopiaComposicion.Visible := false;
end;

procedure TfrmCapturar_materiales.fijarBotonesT(valor : boolean);
begin
   edicionT := valor;
   fijarBotonesT;
end;

procedure TfrmCapturar_materiales.fijarBotonesT;
var
  enc : boolean;
  cambiar : boolean;
begin
   cambiar               := (dsBOMIngenieria.DataSet.FieldByName('R_ESTATUS').AsString = 'Diseno');
   enc                   := not(dsBOMIngenieria.DataSet.IsEmpty) and not(edicionI);
   buF7Tareas.Enabled    := cambiar and enc and not edicionT;
   buF8Tareas.Enabled    := cambiar and enc and not edicionT and not(dsTareas.DataSet.IsEmpty);
   buF9Tareas.Enabled    := cambiar and enc and edicionT;
   buF10Tareas.Enabled   := cambiar and enc and edicionT;
   buF11Tareas.Enabled   := cambiar and enc and not edicionT and not(dsTareas.DataSet.IsEmpty);

   itemF7Tareas.Enabled  := buF7Tareas.Enabled;
   itemF8Tareas.Enabled  := buF8Tareas.Enabled;
   itemF9Tareas.Enabled  := buF9Tareas.Enabled;
   itemF10Tareas.Enabled := buF10Tareas.Enabled;
   itemF11Tareas.Enabled := buF11Tareas.Enabled;
   dgInventario.Visible  := not edicionT;

   if edicionT then
   begin
      paTarea.Height := 143
   end
   else
      paTarea.Height := 40;

  if (lvCopiaTareas.Items.Count > 0) and enc and not(edicionT) then
     lvCopiaTareas.Visible := true
  else
     lvCopiaTareas.Visible := false;
end;

procedure TfrmCapturar_materiales.fijarBotonesR(valor : boolean);
begin
   edicionR := valor;
   fijarBotonesR;
end;

procedure TfrmCapturar_materiales.fijarBotonesR;
var
  enc : boolean;
  cambiar : boolean;
begin
   cambiar               := (dsBOMIngenieria.DataSet.FieldByName('R_ESTATUS').AsString = 'Diseno');
   enc                   := not(dsBOMIngenieria.DataSet.IsEmpty) and not(edicionI);
   buF7Receta.Enabled    := cambiar and enc and not edicionR;
   buF8Receta.Enabled    := cambiar and enc and not edicionR and not(dsReceta.DataSet.IsEmpty);
   buF9Receta.Enabled    := cambiar and enc and edicionR;
   buF10Receta.Enabled   := cambiar and enc and edicionR;
   buF11Receta.Enabled   := cambiar and enc and not edicionR and not(dsReceta.DataSet.IsEmpty);

   itemF7Receta.Enabled  := buF7Receta.Enabled;
   itemF8Receta.Enabled  := buF8Receta.Enabled;
   itemF9Receta.Enabled  := buF9Receta.Enabled;
   itemF10Receta.Enabled := buF10Receta.Enabled;
   itemF11Receta.Enabled := buF11Receta.Enabled;
   dgInventario.Visible  := not edicionR;

   if edicionR then
      paCapturaReceta.Visible := true
   else
      paCapturaReceta.Visible := false;
{   begin
      paCapturaReceta.Height := 133
   end
   else
      paCapturaReceta.Height := 31;}
end;

procedure TfrmCapturar_materiales.calcularComposicionCambio;
var
  incorporacion,  porcincorporacion, consumo : double;
  desperdicio, porcdesperdicio , merma, porcmerma: double;
begin
    if edIncorporacionCambio.Focused then
    begin
       if StrToInt(edPorcIncorporacionCambio.Text) <> 0 then
       begin
          incorporacion  := StrToFloat(edIncorporacionCambio.Text);
          porcincorporacion  :=StrToFloat(edPorcIncorporacionCambio.Text);
          consumo :=    (incorporacion*100)/porcincorporacion;
          porcdesperdicio :=  StrToFloat( edPorcDesperdicioCambio.Text );
          desperdicio :=  ((incorporacion*100)/porcincorporacion)*(porcdesperdicio/100) ;
          porcmerma :=   StrToFloat(edPorcMermaCambio.Text);
          merma :=   ((incorporacion*100)/porcincorporacion)*(porcmerma/100);
          edConsumoCambio.Text       := FloatToStr(consumo);
          edDesperdicioCambio.Text   := FloatToStr(desperdicio);
          edMermaCambio.Text         := FloatToStr(merma);
       end;
    end;

    if edConsumoCambio.Focused  or edPorcDesperdicioCambio.Focused or edPorcMermaCambio.Focused then
    begin
       consumo :=    StrToFloat(edConsumoCambio.Text);
       porcincorporacion  :=StrToFloat(edPorcIncorporacionCambio.Text);
       porcdesperdicio :=  StrToFloat( edPorcDesperdicioCambio.Text );
       porcmerma :=   StrToFloat(edPorcMermaCambio.Text);

       incorporacion := consumo * (porcincorporacion/100);
       desperdicio   := consumo * (porcdesperdicio/100);
       merma         := consumo * (porcmerma/100);

       edIncorporacionCambio.Text   := FloatToStr(incorporacion);
       edDesperdicioCambio.Text   := FloatToStr(desperdicio);
       edMermaCambio.Text         := FloatToStr(merma);


    end;
end;

procedure TfrmCapturar_materiales.calcularComposicion;
var
  porcincorporacion, porcDesperdicio, porcMerma,
  incorporacion, desperdicio, merma, consumo: double;
begin
    if edIncorporacion.Focused then
    begin
       porcincorporacion  :=StrToFloat(edPorcIncorporacion.Text);
       porcDesperdicio  :=StrToFloat(edPorcDesperdicio.Text);
       porcMerma  :=StrToFloat(edPorcMerma.Text);

       incorporacion  :=StrToFloat(edIncorporacion.Text);

       if porcincorporacion <> 0 then
       begin
          consumo        := ((incorporacion*100)/porcincorporacion);
          desperdicio    := ((incorporacion*100)/porcincorporacion)*(porcDesperdicio/100);
          merma          := ((incorporacion*100)/porcincorporacion)*(porcMerma/100);
          edConsumo.Text       := floattoStr(consumo);
          edDesperdicio.Text   := floattoStr(desperdicio);
          edMerma.Text         := floattoStr(merma);
       end;
    end;

    if edConsumo.Focused  or edPorcDesperdicio.Focused or edPorcMerma.Focused then
    begin
       consumo := StrToFloat(edConsumo.Text);
       porcincorporacion  :=StrToFloat(edPorcIncorporacion.Text);
       porcDesperdicio  :=StrToFloat(edPorcDesperdicio.Text);
       porcMerma  :=StrToFloat(edPorcMerma.Text);


       incorporacion  :=  consumo * (porcincorporacion/100);
       desperdicio    :=  consumo * (porcDesperdicio/100);
       merma          :=  consumo * (porcMerma/100);

       edIncorporacion.Text := floattoStr(incorporacion);
       edDesperdicio.Text   := floattoStr(desperdicio);
       edMerma.Text         := floattoStr(merma);
    end;
end;

procedure TfrmCapturar_materiales.HayCambio;
begin
   edInsumoCambio.Tag              := 0;
   edInsumoCambio.Text             := '0';
   edFechaCambio.DateTime          := 0;
   edIncorporacionCambio.Text     := '0';
   edDesperdicioCambio.Text       := '0';
   edMermaCambio.Text             := '0';
   cbUnidadCambio.keyvalue  := 0;
   edConsumoCambio.text           := '0';
   edPorcDesperdicioCambio.Text   := '0';
   edPorcMermaCambio.Text         :='0';
   edPorcIncorporacionCambio.Text := '100';

   edInsumoCambio.Visible            := cbHayCambio.Checked;
   edFechaCambio.Visible             := cbHayCambio.Checked;
   edIncorporacionCambio.Visible     := cbHayCambio.Checked;
   edDesperdicioCambio.Visible       := cbHayCambio.Checked;
   edMermaCambio.Visible             := cbHayCambio.Checked;
   cbUnidadCambio.Visible            := cbHayCambio.Checked;
   edConsumoCambio.Visible           := cbHayCambio.Checked;
   edPorcDesperdicioCambio.Visible   := cbHayCambio.Checked;
   edPorcMermaCambio.Visible         := cbHayCambio.Checked;
   edPorcIncorporacionCambio.Visible := cbHayCambio.Checked;
   buExplicacionCambio.Visible       := cbHayCambio.Checked;

   if cbHayCambio.Checked then
   begin
      dmIBData.spFECHA_SERVIDOR.ExecProc;
      edFechaCambio.Date := dmIBData.spFECHA_SERVIDOR.ParamByName('R_FECHA').AsDatetime;

      paBOMComp.Height := 214;

      edInsumoCambio.SetFocus;
   end
   else
      begin
         paBOMComp.Height := 115
      end;
end;

procedure TfrmCapturar_materiales.loadAlmacenes;
var
   i : integer;
begin
   reglas.refresh_IBQuery(qyEncabezadosAlmacenes);
   for i := 1 to qyEncabezadosAlmacenes.FieldByName('R_CUANTOS').AsInteger do
   begin
     {
      case i of
        1: begin
              dgInventarioCantidad1.Caption := qyEncabezadosAlmacenes.FieldByName('R_ALMACEN1_CLAVE').AsString;
              dgInventarioCantidad1.Visible := true;
           end;
        2: begin
              dgInventarioCantidad2.Caption := qyEncabezadosAlmacenes.FieldByName('R_ALMACEN2_CLAVE').AsString;
              dgInventarioCantidad2.Visible := true;
           end;
        3: begin
              dgInventarioCantidad3.Caption := qyEncabezadosAlmacenes.FieldByName('R_ALMACEN3_CLAVE').AsString;
              dgInventarioCantidad3.Visible := true;
           end;
        4: begin
              dgInventarioCantidad4.Caption := qyEncabezadosAlmacenes.FieldByName('R_ALMACEN4_CLAVE').AsString;
              dgInventarioCantidad4.Visible := true;
           end;
        5: begin
              dgInventarioCantidad5.Caption := qyEncabezadosAlmacenes.FieldByName('R_ALMACEN5_CLAVE').AsString;
              dgInventarioCantidad5.Visible := true;
           end;
        6: begin
              dgInventarioCantidad6.Caption := qyEncabezadosAlmacenes.FieldByName('R_ALMACEN6_CLAVE').AsString;
              dgInventarioCantidad6.Visible := true;
           end;
        7: begin
              dgInventarioCantidad7.Caption := qyEncabezadosAlmacenes.FieldByName('R_ALMACEN7_CLAVE').AsString;
              dgInventarioCantidad7.Visible := true;
           end;
        8: begin
              dgInventarioCantidad8.Caption := qyEncabezadosAlmacenes.FieldByName('R_ALMACEN8_CLAVE').AsString;
              dgInventarioCantidad8.Visible := true;
           end;
        9: begin
              dgInventarioCantidad9.Caption := qyEncabezadosAlmacenes.FieldByName('R_ALMACEN9_CLAVE').AsString;
              dgInventarioCantidad9.Visible := true;
           end;
      10: begin
              dgInventarioCantidad10.Caption := qyEncabezadosAlmacenes.FieldByName('R_ALMACEN10_CLAVE').AsString;
              dgInventarioCantidad10.Visible := true;
           end;
      end;
      }
   end;
end;

procedure TfrmCapturar_materiales.foto;
begin
   paFoto.Height := tmFotoH;
   paFoto.Width  := tmFotoW;

   imFoto.AutoSize  := false;
   imFoto.Align     := alClient;
   //imFoto.DrawStyle := dsProportional;
end;

procedure TfrmCapturar_materiales.load;
begin
   qyUnidadesSecundarias.Close;
   qyUnidadesSecundarias.ParamByName('P_MATERIAL').AsInteger := dsFuente.DataSet.FieldByName('ID').AsInteger;
   qyUnidadesSecundarias.Open;

   qyBOMIngenieria.Close;
   qyBOMIngenieria.ParamByName('P_ID').AsInteger := dsFuente.DataSet.FieldByName('ID').AsInteger;
   qyBOMIngenieria.Open;

   reglas.imagenVer(dsFuente, 'FOTO', imFoto);

   habilitarCheckInventario;
   
   foto;
   fijarBotonesI(false);
   fijarBotonesP(false);
   fijarBotonesClie(false);
end;

procedure TfrmCapturar_materiales.dsFuenteDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  paLienzo.Enabled := TRUE;
  if TDataSource(sender).DataSet <> nil then
  begin
     buCostos.Enabled           := (TDataSource(sender).DataSet.State in [dsEdit]);
     paDatos.Enabled            := (TDataSource(sender).DataSet.State in [dsInsert, dsEdit]);
     tsDatos.Enabled            := (TDataSource(sender).DataSet.State in [dsInsert, dsEdit]);
     itemCargar.Enabled         := not(TDataSource(sender).DataSet.IsEmpty) or (TDataSource(sender).DataSet.State = dsInsert);
     itemLimpiar.Enabled        := not(TDataSource(sender).DataSet.IsEmpty) or (TDataSource(sender).DataSet.State = dsInsert);
     ibCopiar.Enabled           := (TDataSource(sender).DataSet.State in [dsBrowse]) and not(TDataSource(sender).DataSet.IsEmpty);
     tsSujetoAMedida.TabVisible := (tsMedidas.TabVisible) and (dsFuente.DataSet.FieldByName('SUJETO_A_MEDIDA').AsString = 'Si');
  end;
end;

procedure TfrmCapturar_materiales.ibNuevoClick(Sender: TObject);
begin
  dmIBData.spFECHA_SERVIDOR.ExecProc; 
  inherited;
  //Porcentaje de IVA
  dmIBData.TPreferencias.Filter := 'ID = 68';

  //limpiar imagen al agregar un nuevo registro.
  reglas.imagenVer(dsFuente, 'FOTO', imFoto);
  foto;
  dsFuente.DataSet.FieldByName('FECHA_ALTA').AsDateTime            := StrToDate(FormatDateTime('dd/mm/yyy',dmIBData.spFECHA_SERVIDOR.ParamByName('R_FECHA').AsDateTime));
  dsFuente.DataSet.FieldByName('FECHA_U_ACTUALIZACION').AsDateTime := dmIBData.spFECHA_SERVIDOR.ParamByName('R_FECHA').AsDateTime;
  dsFuente.DataSet.FieldByName('FECHA_U_ACT_2').AsDateTime         := dmIBData.spFECHA_SERVIDOR.ParamByName('R_FECHA').AsDateTime;
  dsFuente.DataSet.FieldByName('CONSOLIDADO').AsString           := 'Si';
  dsFuente.DataSet.FieldByName('NUM_SERIE').AsString             := 'No';
  dsFuente.DataSet.FieldByName('LOTE').AsString                  := 'No';
  dsFuente.DataSet.FieldByName('COSTO_PROMEDIO').AsString        := 'Si';
  dsFuente.DataSet.FieldByName('COSTO_PEPS').AsString            := 'No';
  dsFuente.DataSet.FieldByName('COSTO_UEPS').AsString            := 'No';
  dsFuente.DataSet.FieldByName('ACTIVO_FIJO').AsString           := 'No';
  dsFuente.DataSet.FieldByName('ESPRODUCTO').AsString            := 'Si';
  dsFuente.DataSet.FieldByName('SUJETO_A_MEDIDA').AsString       := 'No';
  dsFuente.DataSet.FieldByName('EXCEPCION_DESCUENTO').AsString   := 'No';
  dsFuente.DataSet.FieldByName('SE_VENDE').AsString              := 'Si';
  dsFuente.DataSet.FieldByName('SE_COMPRA').AsString             := 'Si';
  dsFuente.DataSet.FieldByName('AFECTA_INVENTARIO').AsString     := 'Si';
  dsFuente.DataSet.FieldByName('POS_ES_CATEGORIA').AsString      := 'No';
  dsFuente.DataSet.FieldByName('POS_ES_MODIFICADOR').AsString    := 'No';
  dsFuente.DataSet.FieldByName('ALTO').AsInteger                 := 0;
  dsFuente.DataSet.FieldByName('LARGO').AsInteger                := 0;
  dsFuente.DataSet.FieldByName('ANCHO').AsInteger                := 0;
  dsFuente.DataSet.FieldByName('IVA_PORC').AsFloat               := dmIBData.TPreferencias.FieldByName('VALOR').AsFloat;
  dsFuente.DataSet.FieldByName('IEPS_PORC').AsInteger            := 0;
  dsFuente.DataSet.FieldByName('IMPUESTO_1_PORC').AsInteger      := 0;
  dsFuente.DataSet.FieldByName('IMPUESTO_2_PORC').AsInteger      := 0;
  dsFuente.DataSet.FieldByName('UNIDADES_COMPRADAS').AsInteger   := 0;
  dsFuente.DataSet.FieldByName('UNIDADES_VENDIDAS').AsInteger    := 0;
  dsFuente.DataSet.FieldByName('UNIDADES_PRODUCIDAS').AsInteger  := 0;
  dsFuente.DataSet.FieldByName('DIAS_DE_VIGENCIA').AsInteger     := 0;
  dsFuente.DataSet.FieldByName('COSTO_ULT_COMPRA').AsFloat       := 0;
  dsFuente.DataSet.FieldByName('COSTO').AsFloat                  := 0;
  dsFuente.DataSet.FieldByName('COSTO_PI').AsFloat               := 0;
  dsFuente.DataSet.FieldByName('NUM_ETIQUETAS').AsInteger        := 0;
  dsFuente.DataSet.FieldByName('CANTIDAD_MINIMA').AsFloat        := 0;
  dsFuente.DataSet.FieldByName('CANTIDAD_MAXIMA').AsFloat        := 0;
  dsFuente.DataSet.FieldByName('PUNTO_DE_REORDEN').AsFloat       := 0;
  dsFuente.DataSet.FieldByName('UNIDADES_X_CAJA').AsInteger      := 0;
  dsFuente.DataSet.FieldByName('PESO').AsFloat                   := 0;
  dsFuente.DataSet.FieldByName('POS_ORDEN').AsInteger            := 0;
  dsFuente.DataSet.FieldByName('POS_NIVEL').AsInteger            := 0;
  dsFuente.DataSet.FieldByName('ESTATUS').AsString               := 'En Operacion';
  deClave.SetFocus;
end;

procedure TfrmCapturar_materiales.ibModificarClick(Sender: TObject);
begin
  inherited;
  dmIBData.spFECHA_SERVIDOR.ExecProc;
  dsFuente.DataSet.FieldByName('FECHA_U_ACTUALIZACION').AsDateTime := dsFuente.DataSet.FieldByName('FECHA_U_ACT_2').AsDateTime;
  dsFuente.DataSet.FieldByName('FECHA_U_ACT_2').AsDateTime         := dmIBData.spFECHA_SERVIDOR.ParamByName('R_FECHA').AsDateTime;
  deClave.SetFocus;
end;

procedure TfrmCapturar_materiales.cbPromedioChange(Sender: TObject);
begin
  inherited;
  if cbPromedio.Checked then
  begin
    dsFuente.DataSet.FieldByName('COSTO_PEPS').AsString     := 'No';
    dsFuente.DataSet.FieldByName('COSTO_UEPS').AsString     := 'No';
  end;
end;

procedure TfrmCapturar_materiales.cbPEPSChange(Sender: TObject);
begin
  inherited;
  if cbPEPS.Checked then
  begin
  dsFuente.DataSet.FieldByName('COSTO_PROMEDIO').AsString := 'No';
  dsFuente.DataSet.FieldByName('COSTO_UEPS').AsString     := 'No';
  end;
end;

procedure TfrmCapturar_materiales.cbUEPSChange(Sender: TObject);
begin
  inherited;
  if cbUEPS.Checked then
  begin
    dsFuente.DataSet.FieldByName('COSTO_PROMEDIO').AsString := 'No';
    dsFuente.DataSet.FieldByName('COSTO_PEPS').AsString     := 'No';
  end;
end;

procedure TfrmCapturar_materiales.FormCreate(Sender: TObject);
begin
   borrarIconT := false;
   ruta        := ExtractFilePath(ParamStr(0))+'reportes\';
   ETIQ_ENC    := TStringList.Create;
   ETIQ_DET    := TStringList.Create;
   imagen      := TMemoryStream.Create;

   reglas.abrir_IBTabla(dmIBData.TFiltroLineas);
   reglas.abrir_IBTabla(TCalidades);
   reglas.abrir_IBTabla(dmIBData.TPreferencias);
   reglas.refresh_IBQuery(qyCCostos);
   reglas.refresh_IBQuery(qyCuentas);
   inherited;
   reglas.abrir_IBTabla(TUnidades);

   //activacion de medidas
   dmIBData.TPreferencias.Filter := 'ID = 66';
   tsMedidas.TabVisible := UpperCase(dmIBData.TPreferencias.FieldByName('VALOR').AsString) = 'SI';
   //activacion de colores
   dmIBData.TPreferencias.Filter := 'ID = 69';
   tsColores.TabVisible          :=(UpperCase(dmIBData.TPreferencias.FieldByName('VALOR').AsString) = 'SI') and tsMedidas.TabVisible;
   {
   dgMedidasCODIGOBARRAS.Visible := not(tsColores.TabVisible);
   dgMedidasC_MIN.Visible        := not(tsColores.TabVisible);
   dgMedidasC_MAX.Visible        := not(tsColores.TabVisible);
   dgMedidasP_REO.Visible        := not(tsColores.TabVisible);
   dgMedidasMMP.Visible          := not(tsColores.TabVisible);
   dgMedidasBORRAR.Visible       := not(tsColores.TabVisible);
    }
   //activacion de colores
   dmIBData.TPreferencias.Filter := 'ID = 186';
   laEtiquetaProceso.Caption     := dmIBData.TPreferencias.FieldByName('VALOR').AsString;

   tmFotoH  := paFoto.Height;
   tmFotoW  := paFoto.Width;

   loadAlmacenes;

   tsIngenieria.Enabled  := (reglas.dameUsuarioNivel >= 5);
   tsComposicion.Enabled := tsIngenieria.Enabled;
   tsTareas.Enabled      := tsIngenieria.Enabled;
   tsReceta.Enabled      := tsIngenieria.Enabled;
   buAccesoBOM.Visible   := not(tsIngenieria.Enabled);
end;

procedure TfrmCapturar_materiales.cbLoteChange(Sender: TObject);
begin
  inherited;
  if cbLote.Checked then
     dsFuente.DataSet.FieldByName('CONSOLIDADO').AsString := 'No';
end;

procedure TfrmCapturar_materiales.cbConsolidadoChange(Sender: TObject);
begin
  inherited;
  if cbConsolidado.Checked then
  begin
    dsFuente.DataSet.FieldByName('NUM_SERIE').AsString := 'No';
    dsFuente.DataSet.FieldByName('LOTE').AsString      := 'No';
  end;
end;

procedure TfrmCapturar_materiales.cbSerieChange(Sender: TObject);
begin
  inherited;
  if cbSerie.Checked then
    dsFuente.DataSet.FieldByName('CONSOLIDADO').AsString := 'No';
end;

procedure TfrmCapturar_materiales.deLineaButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
var
   pnt : TPoint;
   tmp : integer;
begin
  inherited;
  if AbsoluteIndex = 0 then
  begin
    pnt := deLinea.ClientToScreen(Point(0,0));
    frmLineas := TfrmLineas.Create(Application);
    frmLineas.coordenadas(pnt.x, pnt.y + deLinea.Height);
    frmLineas.ShowModal;
    tmp := frmLineas.dame_seleccion;
    frmLineas.Free;
    if tmp <> 0 then
       dsFuente.DataSet.FieldByName('LINEA').AsInteger := tmp;
  end
  else
     dsFuente.DataSet.FieldByName('LINEA').AsString := '';
end;

procedure TfrmCapturar_materiales.TCapturarCalcFields(DataSet: TDataSet);
begin
  inherited;
  if DataSet.FieldByName('LINEA').AsString <> '' then
  begin
     dmIBData.TFiltroLineas.Filter := 'ID ='+DataSet.FieldByName('LINEA').AsString;
     DataSet.FieldByName('DESCRIPCION_LINEA').AsString    := dmIBData.TFiltroLineas.FieldByName('DESCRIPCION').AsString;
  end
  else
     begin
        DataSet.FieldByName('DESCRIPCION_LINEA').AsString    := '';
     end;
end;

procedure TfrmCapturar_materiales.dsUnidadesSecundariasDataChange(
  Sender: TObject; Field: TField);
begin
  inherited;
  if dsUnidadesSecundarias.DataSet <> nil then
  begin
     buF7Sec.Enabled    := not(dsFuente.DataSet.IsEmpty) and (dsFuente.DataSet.State in [dsEdit, dsBrowse]);
     buF11Sec.Enabled   := not(dsUnidadesSecundarias.DataSet.IsEmpty) and (dsFuente.DataSet.State in [dsEdit, dsBrowse]);
     itemF7Sec.Enabled  := buF7Sec.Enabled;
     itemF11Sec.Enabled := buF11Sec.Enabled;
  end;
end;

procedure TfrmCapturar_materiales.sbRefreshUnidadBaseClick(
  Sender: TObject);
begin
  inherited;
  reglas.abrir_IBTabla(TUnidades);
end;

procedure TfrmCapturar_materiales.sbRefreshUnidadEmpaqueClick(
  Sender: TObject);
begin
  inherited;
  reglas.abrir_IBTabla(TUnidades);
end;

procedure TfrmCapturar_materiales.sbRefreshCalidadClick(Sender: TObject);
begin
  inherited;
  reglas.abrir_IBTabla(TCalidades);
end;

procedure TfrmCapturar_materiales.FormActivate(Sender: TObject);
begin
  inherited;
  Load;
end;

procedure TfrmCapturar_materiales.buInicioClick(Sender: TObject);
begin
  inherited;
  Load;
end;

procedure TfrmCapturar_materiales.buAnteriorClick(Sender: TObject);
begin
  inherited;
  Load;
end;

procedure TfrmCapturar_materiales.buSiguienteClick(Sender: TObject);
begin
  inherited;
  Load;
end;

procedure TfrmCapturar_materiales.buFinClick(Sender: TObject);
begin
  inherited;
  Load;
end;

procedure TfrmCapturar_materiales.pcDatosChange(Sender: TObject);
var
   i         : integer;
   almacen   : string;
   nAlm      : integer;
begin
  inherited;
  frmCapturar_materiales.PopupMenu := nil;

  case pcDatos.ActivePageIndex of
     1 : begin //Cejilla Unidades Secundarias
            frmCapturar_materiales.PopupMenu := ppSecundarias;
         end;
     2 : begin//Cejilla Medidas
            if not(qyMateriales_Medidas.Active) then
            begin
               reglas.refresh_IBQuery(qyMateriales_Medidas);
            end;

            if tsColores.TabVisible then
            begin
               if not(qyMedidasColores.Active) then
               begin
                  reglas.refresh_IBQuery(qyMedidasColores);
               end;
            end;

            if not(TIBXMedidas.Active) then
            begin
               reglas.abrir_IBTabla(TIBXMedidas);
            end;

            if not(qyContenedorMedidas.Active) then
            begin
               reglas.refresh_IBQuery(qyContenedorMedidas);
            end;

            if not(qyContenedor.Active) then
            begin
               reglas.refresh_IBQuery(qyContenedor);
            end;

           // tlMedidas.FullExpand;
            tlMedidas.DataSource.DataSet.First;
            //jrGMedidas.Collapsed := true;
         end;
     3 : begin //Cejilla BOM
            if not(qyEstatusProcesos.Active) then
               reglas.refresh_IBQuery(qyEstatusProcesos);
            if not(TEstatusProcesosDetalle.Active) then
               reglas.abrir_IBTabla(TEstatusProcesosDetalle);
            if not(qyMaterialColores.Active) then
               reglas.refresh_IBQuery(qyMaterialColores);

            case pcBOM.ActivePageIndex of
               0 : frmCapturar_materiales.PopupMenu := ppFIngenieria;
               1 : frmCapturar_materiales.PopupMenu := ppFComposicion;
               2 : frmCapturar_materiales.PopupMenu := ppFTareas;
               3 : frmCapturar_materiales.PopupMenu := ppFReceta;
            else
               frmCapturar_materiales.PopupMenu := nil;
            end;
         end;
     4 : begin //Cejilla Proveedores
            frmCapturar_materiales.PopupMenu := ppFProveedores;
            if not(qyPartidas.Active) then
            begin
               reglas.abrir_IBTabla(TMonedas);
               reglas.refresh_IBQuery(qyPartidas);
               fijarBotonesP(false);
            end;
         end;
     5 : begin //Cejilla Clientes
            frmCapturar_materiales.PopupMenu := ppFClientes;
            if not(qyPartidasClientes.Active) then
            begin
               reglas.refresh_IBQuery(qyPartidasClientes);
               fijarBotonesClie(false);
            end;
         end;
     6 : begin //Cejilla Etiquetas
            nAlm := 0;
            rgTitulos.Items.Clear;
            for i := 1 to  qyEncabezadosAlmacenes.FieldByName('R_CUANTOS').AsInteger do
            begin
               nAlm := nAlm + 1;
               if (nAlm < 20) then
               begin
                  almacen := 'R_ALMACEN'+IntToStr(i)+'_CLAVE';
                  rgTitulos.Items.Add(qyEncabezadosAlmacenes.FieldByName(almacen).AsString);
               end;
            end;
            rgTitulos.ItemIndex := 0;

         end;
  end;
end;

{function TfrmCapturar_materiales.EAN13 : string;
var
   tmp  : string;
   sc   : integer;
   i    : integer;
   r    : string;
begin
  r   := '';
  sc  := 0;
  tmp := 'MATERIALES';
  for i := 0 to length(tmp) do
     sc := sc + ord(tmp[i]);
  spAUTO_FOLIO.ParamByName('P_SUBCLASE').AsInteger := sc;
  spAUTO_FOLIO.ExecProc;
  spAUTO_FOLIO.Transaction.CommitRetaining;
  idClave.Entrada := spAUTO_FOLIO.ParamByName('R_FOLIO').AsString;
  idClave.Execute;
  if idClave.Respuesta and (idClave.Entrada <> '') then
  begin
     if idClave.Entrada <> spAUTO_FOLIO.ParamByName('R_FOLIO').AsString then
     begin
        spMODIFICAR_FOLIO.ParamByName('P_SUBCLASE').AsInteger   := sc;
        spMODIFICAR_FOLIO.ParamByName('P_CONSECUTIVO').AsString := idClave.Entrada;
        spMODIFICAR_FOLIO.ExecProc;
        spMODIFICAR_FOLIO.Transaction.CommitRetaining;
     end;
     r := reglas.EAN13('3'+reglas.rellenar(StrToInt(idClave.Entrada), 11));
  end;
  Result := r;
end;}

procedure TfrmCapturar_materiales.laCodigoBarrasClick(Sender: TObject);
var
   tmp  : string;
   sc   : integer;
   i    : integer;
begin
  inherited;
  sc := 0;
  tmp := 'MATERIALES';
  for i := 0 to length(tmp) do
     sc := sc + ord(tmp[i]);
  spAUTO_FOLIO.ParamByName('P_SUBCLASE').AsInteger := sc;
  spAUTO_FOLIO.ExecProc;
  spAUTO_FOLIO.Transaction.CommitRetaining;
  {
  idClave.Entrada := spAUTO_FOLIO.ParamByName('R_FOLIO').AsString;
  idClave.Execute;
  if idClave.Respuesta and (idClave.Entrada <> '') then
  begin
     if idClave.Entrada <> spAUTO_FOLIO.ParamByName('R_FOLIO').AsString then
     begin
        spMODIFICAR_FOLIO.ParamByName('P_SUBCLASE').AsInteger   := sc;
        spMODIFICAR_FOLIO.ParamByName('P_CONSECUTIVO').AsString := idClave.Entrada;
        spMODIFICAR_FOLIO.ExecProc;
        spMODIFICAR_FOLIO.Transaction.CommitRetaining;
     end;
     dsFuente.DataSet.FieldByName('CODIGO_BARRAS').AsString := reglas.EAN13('3'+reglas.rellenar(StrToInt(idClave.Entrada), 11));
  end;
  }
end;

procedure TfrmCapturar_materiales.TCapturarAfterOpen(DataSet: TDataSet);
begin
  inherited;
  qyExistencias.Close;
  qyExistencias.Open;
end;

function TfrmCapturar_materiales.quitarLetra(valor, quitar : String; por : char) : string;
var
   S: string;
//   pausa : integer;
begin
   S := valor;
   while Pos(quitar, S) > 0 do
      S[Pos(quitar, S)] := por;
   Result := S;
end;

function TfrmCapturar_materiales.sustituir(cadena, subcadena, valor : string; comilla : boolean) : string;
var
   j : integer;
   k : integer;
   cadena1 : string;
   cadena2 : string;
   cadenaU : string;
   strCom  : string;
begin
   if comilla then
      strCom := '"'
   else
      strCom := '';
   j := Pos(subcadena, cadena);
   if j <> 0 then
   begin
      k := length(cadena) - ((j - 1) + length(subcadena));//resto de los caracteres
      cadena1 := copy(cadena,1, (j - 1));
      cadena2 := copy(cadena,(j + length(subcadena)), k);
      cadenaU := cadena1+strCom+valor+strCom+cadena2;
   end
   else
      cadenaU := cadena;
   cadenaU := quitarLetra(cadenaU, 'Ñ', 'N');
   Result  := cadenaU;
end;

procedure TfrmCapturar_materiales.buMonarchClick(Sender: TObject);
begin
  inherited;
  try
     frmGenerar             := TfrmGenerar.Create(Application);
     frmGenerar.FORMATO     := fMonarch;
     frmGenerar.ALMACEN     := rgTitulos.Items.Strings[rgTitulos.ItemIndex];
     frmGenerar.ARTICULO    := dsFuente.DataSet.FieldByName('CLAVE').AsString;
     frmGenerar.DESCRIPCION := dsFuente.DataSet.FieldByName('DESCRIPCION').AsString;
     frmGenerar.CORTA       := dsFuente.DataSet.FieldByName('POS_DESC_CORTA').AsString;
     frmGenerar.CBARRAS     := dsFuente.DataSet.FieldByName('CODIGO_BARRAS').AsString;
     frmGenerar.PRECIO      := FormatFloat('$ ###,###,##0.00',dsExistencias.DataSet.FieldByName('R_PRECIO_MAXIMO').AsFloat);
     frmGenerar.ShowModal;
  finally
     frmGenerar.Release;
  end;
end;

procedure TfrmCapturar_materiales.FormDestroy(Sender: TObject);
begin
  ETIQ_ENC.Free;
  ETIQ_DET.Free;
  imagen.Free;
  inherited;
end;

procedure TfrmCapturar_materiales.deCodigoBarrasKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key = #10 then
     laCodigoBarras.Click;
end;

procedure TfrmCapturar_materiales.itemCargarClick(Sender: TObject);
var
   grabar : boolean;
begin
  inherited;
  if not(dsFuente.DataSet.IsEmpty) then
  begin
     if opImagen.Execute then
     begin
        grabar := dsFuente.DataSet.State = dsBrowse;
        if grabar then
           dsFuente.DataSet.Edit;
        reglas.imagenGuardar(dsFuente, opImagen.FileName, 'FOTO', imFoto);
        if grabar then
           dsFuente.DataSet.Post;
     end;
  end;
end;

procedure TfrmCapturar_materiales.imFotoDblClick(Sender: TObject);
begin
  inherited;
   if tmFotoH = paFoto.Height then
   begin  
      imFoto.Align     := alNone;
      //imFoto.DrawStyle := dsNormal;
      imFoto.AutoSize  := true;

      paFoto.Height    := imFoto.Height + 4;
      paFoto.Width     := imFoto.Width + 4;
      paFoto.BringToFront;
   end
   else
      foto;
end;

procedure TfrmCapturar_materiales.itemLimpiarClick(Sender: TObject);
begin
  inherited;
  if not(dsFuente.DataSet.IsEmpty) then
  begin
     dsFuente.DataSet.Edit;
     dsFuente.DataSet.FieldByName('FOTO').AsVariant := 0;
     dsFuente.DataSet.Post;
     //limpiar imagen al agregar un nuevo registro.
     reglas.imagenVer(dsFuente, 'FOTO', imFoto);
     foto;
  end;
end;

procedure TfrmCapturar_materiales.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  reglas.abrir_IBTabla(TUnidades);
end;

procedure TfrmCapturar_materiales.edProveedorButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  case AbsoluteIndex of
    0 : begin
           frmSeleccionarProveedor             := TfrmSeleccionarProveedor.Create(Application);
           frmSeleccionarProveedor.DATABASE    := dmIBModulo.ibSistema;
           frmSeleccionarProveedor.TRANSACTION := dmIBModulo.ibSistemaTransaccion;
           frmSeleccionarProveedor.CLAVE       := edProveedor.Text;
           if frmSeleccionarProveedor.abrirConsulta then
           begin
              frmSeleccionarProveedor.ShowModal;
              if frmSeleccionarProveedor.ACEPTAR then
              begin
                 edProveedor.Text         := frmSeleccionarProveedor.FACTURAR_A;
                 edProveedor.Tag          := frmSeleccionarProveedor.ID;
                 cbMonedas.KeyValue := frmSeleccionarProveedor.MONEDA;
              end;
           end
           else
              begin
                 edProveedor.Text         := frmSeleccionarProveedor.FACTURAR_A;
                 edProveedor.Tag          := frmSeleccionarProveedor.ID;
                 cbMonedas.KeyValue := frmSeleccionarProveedor.MONEDA;
              end;
           frmSeleccionarProveedor.Free;
           frmSeleccionarProveedor := nil;
        end;
    1 : begin
           edProveedor.Clear;
           edProveedor.Tag := 0;
        end;
  end;
end;

procedure TfrmCapturar_materiales.edProveedorKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  //if Key = #13 then
  //   edProveedor.OnButtonClick(Sender, 0);
end;

procedure TfrmCapturar_materiales.itemF7ProveedoresClick(Sender: TObject);
begin
  inherited;
  buF7Proveedores.Click;
end;

procedure TfrmCapturar_materiales.itemF8ProveedoresClick(Sender: TObject);
begin
  inherited;
  buF8Proveedores.Click;
end;

procedure TfrmCapturar_materiales.itemF9ProveedoresClick(Sender: TObject);
begin
  inherited;
  buF9Proveedores.Click;
end;

procedure TfrmCapturar_materiales.itemF10ProveedoresClick(Sender: TObject);
begin
  inherited;
  buF10Proveedores.Click;
end;

procedure TfrmCapturar_materiales.itemF11ProveedoresClick(Sender: TObject);
begin
  inherited;
  buF11Proveedores.Click;
end;

procedure TfrmCapturar_materiales.dgMedidasBORRARButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
begin
  inherited;
  if MessageDlg('¿ Eliminar registro ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes  then
  begin
     spDEL_MATERIAL_MEDIDAS.ParamByName('P_ID').AsInteger := dsMateriales_Medidas.DataSet.FieldByName('R_ID').AsInteger;
     spDEL_MATERIAL_MEDIDAS.ExecProc;
     spDEL_MATERIAL_MEDIDAS.Transaction.CommitRetaining;
     reglas.refresh_IBQuery(qyMateriales_Medidas);
  end;
end;

procedure TfrmCapturar_materiales.dgColoresBORRARButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
begin
  inherited;
  if MessageDlg('¿ Eliminar registro ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes  then
  begin
     spDEL_MATERIAL_MEDIDAS.ParamByName('P_ID').AsInteger := dsMedidasColores.DataSet.FieldByName('R_ID').AsInteger;
     spDEL_MATERIAL_MEDIDAS.ExecProc;
     spDEL_MATERIAL_MEDIDAS.Transaction.CommitRetaining;
     reglas.refresh_IBQuery(qyMedidasColores);
  end;
end;

procedure TfrmCapturar_materiales.dgMedidasKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  {
  with TDBGrid(Sender) do
    if (Key = VK_RETURN) and (Columns[GetFocusedAbsoluteIndex(FocusedColumn)]is TdxDBGridButtonColumn) then
    begin
       if (Columns[GetFocusedAbsoluteIndex(FocusedColumn)] = dgMedidasMMP) then
          dgMedidasMMP.OnButtonClick(Sender, 0)
       else
       if (Columns[GetFocusedAbsoluteIndex(FocusedColumn)] = dgMedidasBORRAR) then
          dgMedidasBORRAR.OnButtonClick(Sender, 0);
    end;
    }
end;

procedure TfrmCapturar_materiales.dgColoresKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  {
  with TDBGrid(Sender) do
    if (Key = VK_RETURN) and (Columns[GetFocusedAbsoluteIndex(FocusedColumn)]is TdxDBGridButtonColumn) then
    begin
       if (Columns[GetFocusedAbsoluteIndex(FocusedColumn)] = dgColoresBORRAR) then
          dgColoresBORRAR.OnButtonClick(Sender, 0)
       else
       if (Columns[GetFocusedAbsoluteIndex(FocusedColumn)] = dgColoresMMP) then
          dgColoresMMP.OnButtonClick(Sender, 0);
    end;
    }
end;

procedure TfrmCapturar_materiales.buF7IngenieriaClick(Sender: TObject);
begin
  inherited;
  dmIBData.spFECHA_SERVIDOR.ExecProc;
  paIngenieria.Tag := 0;

  edEstatusIng.Text           := 'Diseno';
  cbColoresIng.KeyValue := 0;
  //cbColoresIng.Clear;

  edObservIng.Clear;

  imTarea.Picture := nil;
  imagen.Clear;
  edFAltaIng.Date := dmIBData.spFECHA_SERVIDOR.ParamByName('R_FECHA').AsDateTime;
  edFUActIng.Date := dmIBData.spFECHA_SERVIDOR.ParamByName('R_FECHA').AsDateTime;
  fijarBotonesI(true);

  cbEstatusIng.Enabled := false;

  edEstatusIng.SetFocus;
end;

procedure TfrmCapturar_materiales.buF9IngenieriaClick(Sender: TObject);
var
   observ : TMemoryStream;
begin
  inherited;
  observ := nil;
  try
     observ := TMemoryStream.Create;
     edObservIng.Lines.SaveToStream(observ);
     observ.Position := 0;

     spADD_BOM_ING.ParamByName('P_ID').AsInteger             := paIngenieria.Tag;
     spADD_BOM_ING.ParamByName('P_MATERIAL').AsInteger       := dsFuente.DataSet.FieldByName('ID').AsInteger;
     spADD_BOM_ING.ParamByName('P_COLOR').Value              := cbColoresIng.KeyValue;
     spADD_BOM_ING.ParamByName('P_FECHA_ALTA').AsDatetime    := edFAltaIng.Date;
     spADD_BOM_ING.ParamByName('P_FECHA_ULT_ACT').AsDatetime := edFUActIng.Date;
     spADD_BOM_ING.ParamByName('P_ESTATUS').AsString         := edEstatusIng.Text;
     spADD_BOM_ING.ParamByName('P_OBSERVACIONES').LoadFromStream(observ, ftBlob);
     spADD_BOM_ING.ExecProc;
     spADD_BOM_ING.Transaction.CommitRetaining;
     reglas.abrir_IBQuery_seek('R_ID', spADD_BOM_ING.ParamByName('R_ID').AsInteger, qyBOMIngenieria);
  finally
     observ.Free;
  end;
  fijarBotonesI(false);
end;

procedure TfrmCapturar_materiales.buF8IngenieriaClick(Sender: TObject);
var
   tmp : TMemoryStream;
begin
  inherited;
  tmp := nil;
  try
     tmp                         := TMemoryStream.Create;
     paIngenieria.Tag            := dsBOMIngenieria.DataSet.FieldByName('R_ID').AsInteger;
     estatus                     := dsBOMIngenieria.DataSet.FieldByName('R_ESTATUS').AsString;
     edEstatusIng.Text           := dsBOMIngenieria.DataSet.FieldByName('R_ESTATUS').AsString;
     cbColoresIng.KeyValue := 0;
     //cbColoresIng.Clear;
     if dsBOMIngenieria.DataSet.FieldByName('R_COLOR').AsInteger <> 0 then
        cbColoresIng.KeyValue := dsBOMIngenieria.DataSet.FieldByName('R_COLOR').AsInteger;
     edFAltaIng.Date             := dsBOMIngenieria.DataSet.FieldByName('R_FECHA_ALTA').AsDatetime;
     edFUActIng.Date             := dsBOMIngenieria.DataSet.FieldByName('R_FECHA_ULT_ACT').AsDatetime;

     TBlobField(dsBOMIngenieria.DataSet.FieldByName('R_OBSERVACIONES')).SaveToStream(tmp);
     tmp.Position := 0;
     edObservIng.Lines.LoadFromStream(tmp);
  finally
     tmp.Free;
  end;

  fijarBotonesI(true);
  cbEstatusIng.SetFocus;
end;

procedure TfrmCapturar_materiales.buF10IngenieriaClick(Sender: TObject);
begin
  inherited;
  fijarBotonesI(false);
end;

procedure TfrmCapturar_materiales.buF11IngenieriaClick(Sender: TObject);
begin
  inherited;
  if MessageDlg('¿ Eliminar registro ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes  then
  begin
     spDEL_BOM_ING.ParamByName('P_ID').AsInteger := dsBOMIngenieria.DataSet.FieldByName('R_ID').AsInteger;
     spDEL_BOM_ING.ExecProc;
     spDEL_BOM_ING.Transaction.CommitRetaining;
     reglas.refresh_IBQuery(qyBOMIngenieria);
  end;
end;

procedure TfrmCapturar_materiales.buF7ComposicionClick(Sender: TObject);
begin
  inherited;
  paBOMComp.Tag             := 0;

  edInsumo.Tag              := 0;
  edInsumo.Clear;
  edIncorporacion.Text     := '0';
  edDesperdicio.Text       := '0';
  edMerma.Text             := '0';
  cbUnidad.keyvalue := 0;
  edConsumo.Text             := '0';
  edPorcDesperdicio.Text             := '0';
  edPorcMerma.Text             := '0';
  edPorcIncorporacion.Text := '100';
  cbHayCambio.checked       := false;
  HayCambio;

  fijarBotonesC(true);
  edInsumo.SetFocus;
end;

procedure TfrmCapturar_materiales.buF9ComposicionClick(Sender: TObject);
var
   fraccion   : Real;
   entero     : Real;
begin
  inherited;
   //validacion fecha alta
   if edFechaCambio.Focused then
      edInsumoCambio.SetFocus;
   entero   := Int(edFechaCambio.Date);
   fraccion := Frac(edFechaCambio.Date);
   if entero > 0 then
   begin
      if fraccion = 0 then
         edFechaCambio.Date := edFechaCambio.Date + time;
   end;

  if paBOMComp.Tag = 0 then
  begin
     spADD_COMPOSICION.ParamByName('P_BOM').AsInteger                     := dsBOMIngenieria.DataSet.FieldByName('R_ID').AsInteger;
     spADD_COMPOSICION.ParamByName('P_MATERIAL').AsInteger                := edInsumo.Tag;
     spADD_COMPOSICION.ParamByName('P_INCORPORACION').AsFloat             := StrToFloat(edIncorporacion.Text);
     spADD_COMPOSICION.ParamByName('P_DESPERDICIO').AsFloat               := StrToFloat(edDesperdicio.Text);
     spADD_COMPOSICION.ParamByName('P_MERMA').AsFloat                     := StrToFloat(edMerma.Text);
     spADD_COMPOSICION.ParamByName('P_PORC_INCORPORACION').AsFloat        := StrToFloat(edPorcIncorporacion.Text);
     spADD_COMPOSICION.ParamByName('P_PORC_DESPERDICIO').AsFloat          := StrToFloat(edPorcDesperdicio.Text);
     spADD_COMPOSICION.ParamByName('P_PORC_MERMA').AsFloat                := StrToFloat(edPorcMerma.Text);
     spADD_COMPOSICION.ParamByName('P_UNIDAD').AsInteger                  := cbUnidad.KeyValue;
     if cbHayCambio.Checked then
        spADD_COMPOSICION.ParamByName('P_HAY_CAMBIO').AsString            := 'Si'
     else
        spADD_COMPOSICION.ParamByName('P_HAY_CAMBIO').AsString            := 'No';
     spADD_COMPOSICION.ParamByName('P_MATERIAL_CAMBIO').AsInteger         := edInsumoCambio.Tag;
     spADD_COMPOSICION.ParamByName('P_FECHA_CAMBIO').AsDateTime           := edFechaCambio.Date;
     spADD_COMPOSICION.ParamByName('P_INCORPORACION_CAMBIO').AsFloat      := StrToFloat(edIncorporacionCambio.Text);
     spADD_COMPOSICION.ParamByName('P_DESPERDICIO_CAMBIO').AsFloat        := StrToFloat(edDesperdicioCambio.Text);
     spADD_COMPOSICION.ParamByName('P_MERMA_CAMBIO').AsFloat              := StrToFloat(edMermaCambio.Text);
     spADD_COMPOSICION.ParamByName('P_PORC_INCORPORACION_CAMBIO').AsFloat := StrToFloat(edPorcIncorporacionCambio.Text);
     spADD_COMPOSICION.ParamByName('P_PORC_DESPERDICIO_CAMBIO').AsFloat   := StrToFloat(edPorcDesperdicioCambio.Text);
     spADD_COMPOSICION.ParamByName('P_PORC_MERMA_CAMBIO').AsFloat         := StrToFloat(edPorcMermaCambio.Text);
     spADD_COMPOSICION.ParamByName('P_UNIDAD_CAMBIO').Value               := cbUnidadCambio.KeyValue;
     spADD_COMPOSICION.ExecProc;
     spADD_COMPOSICION.Transaction.CommitRetaining;
     reglas.abrir_IBQuery_seek('R_ID',spADD_COMPOSICION.ParamByName('R_CONSECUTIVO').AsInteger, qyComposicion);
  end
  else
     begin
        spUPD_COMPOSICION.ParamByName('P_ID').AsInteger                      := paBOMComp.Tag;
        spUPD_COMPOSICION.ParamByName('P_MATERIAL').AsInteger                := edInsumo.Tag;
        spUPD_COMPOSICION.ParamByName('P_INCORPORACION').AsFloat             := StrToFloat(edIncorporacion.Text);
        spUPD_COMPOSICION.ParamByName('P_DESPERDICIO').AsFloat               := StrToFloat(edDesperdicio.Text);
        spUPD_COMPOSICION.ParamByName('P_MERMA').AsFloat                     := StrToFloat(edMerma.Text);
        spUPD_COMPOSICION.ParamByName('P_PORC_INCORPORACION').AsFloat        := StrToFloat(edPorcIncorporacion.Text);
        spUPD_COMPOSICION.ParamByName('P_PORC_DESPERDICIO').AsFloat          := StrToFloat(edPorcDesperdicio.Text);
        spUPD_COMPOSICION.ParamByName('P_PORC_MERMA').AsFloat                := StrToFloat(edPorcMerma.Text);
        spUPD_COMPOSICION.ParamByName('P_UNIDAD').AsInteger                  := cbUnidad.KeyValue;
        if cbHayCambio.Checked then
           spUPD_COMPOSICION.ParamByName('P_HAY_CAMBIO').AsString            := 'Si'
        else
           spUPD_COMPOSICION.ParamByName('P_HAY_CAMBIO').AsString            := 'No';
        spUPD_COMPOSICION.ParamByName('P_MATERIAL_CAMBIO').AsInteger         := edInsumoCambio.Tag;
        spUPD_COMPOSICION.ParamByName('P_FECHA_CAMBIO').AsDateTime           := edFechaCambio.Date;
        spUPD_COMPOSICION.ParamByName('P_INCORPORACION_CAMBIO').AsFloat      := StrToFloat(edIncorporacionCambio.Text);
        spUPD_COMPOSICION.ParamByName('P_DESPERDICIO_CAMBIO').AsFloat        := StrToFloat(edDesperdicioCambio.Text);
        spUPD_COMPOSICION.ParamByName('P_MERMA_CAMBIO').AsFloat              := StrToFloat(edMermaCambio.Text);
        spUPD_COMPOSICION.ParamByName('P_PORC_INCORPORACION_CAMBIO').AsFloat := StrToFloat(edPorcIncorporacionCambio.Text);
        spUPD_COMPOSICION.ParamByName('P_PORC_DESPERDICIO_CAMBIO').AsFloat   := StrToFloat(edPorcDesperdicioCambio.Text);
        spUPD_COMPOSICION.ParamByName('P_PORC_MERMA_CAMBIO').AsFloat         := StrToFloat(edPorcMermaCambio.Text);
        spUPD_COMPOSICION.ParamByName('P_UNIDAD_CAMBIO').Value               := cbUnidadCambio.KeyValue;
        spUPD_COMPOSICION.ExecProc;
        spUPD_COMPOSICION.Transaction.CommitRetaining;
        reglas.abrir_IBQuery_seek('R_ID', paBOMComp.Tag, qyComposicion);
     end;
  fijarBotonesC(false);
end;

procedure TfrmCapturar_materiales.cbHayCambioChange(Sender: TObject);
begin
  inherited;
  HayCambio;
end;

procedure TfrmCapturar_materiales.edInsumoButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  case AbsoluteIndex of
    0 : begin
           frmSeleccionarMaterialTodos             := TfrmSeleccionarMaterialTodos.Create(Application);
           frmSeleccionarMaterialTodos.DATABASE    := dmIBModulo.ibSistema;
           frmSeleccionarMaterialTodos.TRANSACTION := dmIBModulo.ibSistemaTransaccion;
           frmSeleccionarMaterialTodos.CLAVE       := edInsumo.Text;
           if frmSeleccionarMaterialTodos.abrirConsulta then
           begin
              frmSeleccionarMaterialTodos.ShowModal;
              if frmSeleccionarMaterialTodos.ACEPTAR then
              begin
                 edInsumo.Tag            := frmSeleccionarMaterialTodos.ID;
                 edInsumo.Text           := frmSeleccionarMaterialTodos.DESCRIPCION;
                 cbUnidad.KeyValue := frmSeleccionarMaterialTodos.UNIDAD_BASE;
              end;
           end
           else
              begin
                 edInsumo.Tag            := frmSeleccionarMaterialTodos.ID;
                 edInsumo.Text           := frmSeleccionarMaterialTodos.DESCRIPCION;
                 cbUnidad.KeyValue := frmSeleccionarMaterialTodos.UNIDAD_BASE;
              end;
           frmSeleccionarMaterialTodos.Free;
           frmSeleccionarMaterialTodos := nil;
        end;
    1 : begin
           edInsumo.Clear;
           edInsumo.Tag := 0;
        end;
  end;
  qyUnidadesComp.Close;
  qyUnidadesComp.ParamByName('P_MATERIAL').AsInteger := edInsumo.Tag;
  qyUnidadesComp.Open;
  if edInsumo.Tag <> 0 then
     edPorcDesperdicio.SetFocus;
end;

procedure TfrmCapturar_materiales.edInsumoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  //if Key = #13 then
  //   edInsumo.OnButtonClick(Sender, 0);
end;

procedure TfrmCapturar_materiales.buF8ComposicionClick(Sender: TObject);
begin
  inherited;
  paBOMComp.Tag             := dsComposicion.DataSet.FieldByName('R_ID').AsInteger;

  edInsumo.Tag              := dsComposicion.DataSet.FieldByName('R_MATERIAL').AsInteger;
  edInsumo.Text             := dsComposicion.DataSet.FieldByName('R_MATERIAL_DESCRIPCION').AsString;
  edPorcDesperdicio.Text   := dsComposicion.DataSet.FieldByName('R_PORC_DESPERDICIO').AsString;
  edPorcMerma.Text         := dsComposicion.DataSet.FieldByName('R_PORC_MERMA').AsString;
  edPorcIncorporacion.Text := dsComposicion.DataSet.FieldByName('R_PORC_INCORPORACION').AsString;
  edConsumo.Text           := dsComposicion.DataSet.FieldByName('R_CONSUMO').AsString;
  edIncorporacion.Text     := dsComposicion.DataSet.FieldByName('R_INCORPORACION').AsString;
  edDesperdicio.Text       := dsComposicion.DataSet.FieldByName('R_DESPERDICIO').AsString;
  edMerma.Text             := dsComposicion.DataSet.FieldByName('R_MERMA').AsString;
  cbUnidad.KeyValue   := dsComposicion.DataSet.FieldByName('R_UNIDAD').AsInteger;
  cbHayCambio.Checked       := dsComposicion.DataSet.FieldByName('R_HAY_CAMBIO').AsString = 'Si';
  qyUnidadesComp.Close;
  qyUnidadesComp.ParamByName('P_MATERIAL').AsInteger := edInsumo.Tag;
  qyUnidadesComp.Open;
  if cbHayCambio.Checked then
  begin
     edInsumoCambio.Tag              := dsComposicion.DataSet.FieldByName('R_MATERIAL_CAMBIO').AsInteger;
     edInsumoCambio.Text             := dsComposicion.DataSet.FieldByName('R_MAT_CAMBIO_DESC').AsString;
     edPorcDesperdicioCambio.Text   := dsComposicion.DataSet.FieldByName('R_PORC_DESPERDICIO_CAMBIO').AsString;
     edPorcMermaCambio.Text         := dsComposicion.DataSet.FieldByName('R_PORC_MERMA_CAMBIO').AsString;
     edPorcIncorporacionCambio.Text := dsComposicion.DataSet.FieldByName('R_PORC_INCORPORACION_CAMBIO').AsString;
     edConsumoCambio.Text           := dsComposicion.DataSet.FieldByName('R_CONSUMO_CAMBIO').AsString;
     edIncorporacionCambio.Text     := dsComposicion.DataSet.FieldByName('R_INCORPORACION_CAMBIO').AsString;
     edDesperdicioCambio.Text       := dsComposicion.DataSet.FieldByName('R_DESPERDICIO_CAMBIO').AsString;
     edMermaCambio.Text             := dsComposicion.DataSet.FieldByName('R_MERMA_CAMBIO').AsString;
     cbUnidadCambio.KeyValue   := dsComposicion.DataSet.FieldByName('R_UNIDAD_CAMBIO').AsInteger;
     edFechaCambio.Date              := dsComposicion.DataSet.FieldByName('R_FECHA_CAMBIO').AsDateTime;
     qyUnidadesCompCambio.Close;
     qyUnidadesCompCambio.ParamByName('P_MATERIAL').AsInteger := edInsumoCambio.Tag;
     qyUnidadesCompCambio.Open;
  end;

  fijarBotonesC(true);
  edPorcDesperdicio.SetFocus;
end;

procedure TfrmCapturar_materiales.buExplicacionClick(Sender: TObject);
var
   texto : string;
begin
  inherited;
  texto := 'Un '+UpperCase(dsFuente.DataSet.FieldByName('DESCRIPCION').AsString)+' requiere de '+
           edIncorporacion.Text+' '+cbUnidad.Text+' de '+edInsumo.Text+'.'+#13+
           'Consumiendo del ALMACEN '+edConsumo.Text+' '+cbUnidad.Text+#13+
           'Teniendo un DESPERDICIO de '+edDesperdicio.Text+' '+cbUnidad.Text+#13+
           'y una MERMA de '+edMerma.Text+' '+cbUnidad.Text;

  showmessage('Calculos de los factores:'+#13+#13+texto);
end;

procedure TfrmCapturar_materiales.edPorcDesperdicioChange(Sender: TObject);
var
  porcmerma, porcdesperdicio,  porcincorporacion
 : double;

begin
  inherited;
  porcmerma        := StrToFloat(edPorcMerma.Text);
  porcdesperdicio  :=  StrToFloat(edPorcDesperdicio.Text);
  porcincorporacion :=  100 - ( porcmerma + porcdesperdicio);
  edPorcIncorporacion.Text := FloatToStr(porcincorporacion);
  if porcincorporacion < 0 then
  begin
     if edPorcDesperdicio.Focused then
     begin
        porcmerma :=  100 - porcdesperdicio;
        edPorcMerma.Text := FloatToStr(porcmerma);
     end;
     if edPorcMerma.Focused then
     begin
        porcdesperdicio :=  100 - porcmerma ;
        edPorcDesperdicio.Text := FloatToStr(porcdesperdicio);
     end;
     edPorcIncorporacion.Text := '0';
  end;
  calcularComposicion;
end;

procedure TfrmCapturar_materiales.edConsumoChange(Sender: TObject);
begin
  inherited;
  calcularComposicion;
end;

procedure TfrmCapturar_materiales.edIncorporacionChange(Sender: TObject);
begin
  inherited;
  calcularComposicion;
end;

procedure TfrmCapturar_materiales.edInsumoCambioButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
begin
  inherited;
  case AbsoluteIndex of
    0 : begin
           frmSeleccionarMaterialTodos             := TfrmSeleccionarMaterialTodos.Create(Application);
           frmSeleccionarMaterialTodos.DATABASE    := dmIBModulo.ibSistema;
           frmSeleccionarMaterialTodos.TRANSACTION := dmIBModulo.ibSistemaTransaccion;
           frmSeleccionarMaterialTodos.CLAVE       := edInsumoCambio.Text;
           if frmSeleccionarMaterialTodos.abrirConsulta then
           begin
              frmSeleccionarMaterialTodos.ShowModal;
              if frmSeleccionarMaterialTodos.ACEPTAR then
              begin
                 edInsumoCambio.Tag            := frmSeleccionarMaterialTodos.ID;
                 edInsumoCambio.Text           := frmSeleccionarMaterialTodos.DESCRIPCION;
                 cbUnidadCambio.KeyValue := frmSeleccionarMaterialTodos.UNIDAD_BASE;
              end;
           end
           else
              begin
                 edInsumoCambio.Tag            := frmSeleccionarMaterialTodos.ID;
                 edInsumoCambio.Text           := frmSeleccionarMaterialTodos.DESCRIPCION;
                 cbUnidadCambio.KeyValue := frmSeleccionarMaterialTodos.UNIDAD_BASE;
              end;
           frmSeleccionarMaterialTodos.Free;
           frmSeleccionarMaterialTodos := nil;
        end;
    1 : begin
           edInsumoCambio.Clear;
           edInsumoCambio.Tag := 0;
        end;
  end;
  qyUnidadesCompCambio.Close;
  qyUnidadesCompCambio.ParamByName('P_MATERIAL').AsInteger := edInsumoCambio.Tag;
  qyUnidadesCompCambio.Open;
  if edInsumoCambio.Tag <> 0 then
     edPorcDesperdicioCambio.SetFocus;
end;

procedure TfrmCapturar_materiales.edInsumoCambioKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;

  //if Key = #13 then
  //   edInsumoCambio.OnButtonClick(Sender, 0);
end;

procedure TfrmCapturar_materiales.buExplicacionCambioClick(
  Sender: TObject);
var
   texto : string;
begin
  inherited;
  texto := 'Un '+UpperCase(dsFuente.DataSet.FieldByName('DESCRIPCION').AsString)+' requiere de '+
           edIncorporacionCambio.Text+' '+cbUnidadCambio.Text+' de '+edInsumoCambio.Text+'.'+#13+
           'Consumiendo del ALMACEN '+edConsumoCambio.Text+' '+cbUnidadCambio.Text+#13+
           'Teniendo un DESPERDICIO de '+edDesperdicioCambio.Text+' '+cbUnidadCambio.Text+#13+
           'y una MERMA de '+edMermaCambio.Text+' '+cbUnidadCambio.Text;

  showmessage('Calculos de los factores:'+#13+#13+texto);
end;

procedure TfrmCapturar_materiales.edPorcDesperdicioCambioChange(
  Sender: TObject);
var
  porcIncorporacionCambio, porcMermaCambio, porcDesperdicioCambio
  : double;
begin
  inherited;
  porcMermaCambio   := strToFloat(edPorcMermaCambio.Text);
  porcDesperdicioCambio := StrToFloat(edPorcDesperdicioCambio.Text);
  porcIncorporacionCambio :=  100 - (porcMermaCambio + porcDesperdicioCambio) ;
  edPorcIncorporacionCambio.Text := FloatToStr(porcIncorporacionCambio);
  if porcIncorporacionCambio < 0 then
  begin
     if edPorcDesperdicioCambio.Focused then
     begin
        edPorcMermaCambio.Text := FloatToStr (100 - porcDesperdicioCambio);
     end;
     if edPorcMermaCambio.Focused then
     begin
        edPorcDesperdicioCambio.Text := FloatToStr (100 - porcMermaCambio);
     end;
     edPorcIncorporacionCambio.Text := '0';
  end;
  calcularComposicionCambio;
end;

procedure TfrmCapturar_materiales.edConsumoCambioChange(Sender: TObject);
begin
  inherited;
  calcularComposicionCambio;
end;

procedure TfrmCapturar_materiales.edIncorporacionCambioChange(
  Sender: TObject);
begin
  inherited;
  calcularComposicionCambio;
end;

procedure TfrmCapturar_materiales.buF10ComposicionClick(Sender: TObject);
begin
  inherited;
  fijarBotonesC(false);
end;

procedure TfrmCapturar_materiales.buF11ComposicionClick(Sender: TObject);
var
   i : integer;
   L : TList;
   tmp : string;
begin
  inherited;
  if MessageDlg('¿Eliminar registro?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
     L := TList.Create;
     {
     for i := 0 to dgComposicion.SelectedCount - 1 do
         L.Add(dgComposicion.SelectedNodes[i]);//no se hace directamente en el grid por que tiene bug, cuando son 2 registros
     for i := 0 to (L.Count - 1) do
     begin
        tmp := TdxTreeListNode(L.Items[i]).Strings[0];
        spDEL_COMPOSICION.ParamByName('P_ID').AsString := tmp;
        spDEL_COMPOSICION.ExecProc;
        spDEL_COMPOSICION.Transaction.CommitRetaining;
     end;
     L.Free;
     reglas.refresh_IBQuery(qyComposicion);
     fijarBotonesC(false);
     }
  end;
end;

procedure TfrmCapturar_materiales.dgComposicionDblClick(Sender: TObject);
begin
  inherited;
  if not(dsComposicion.DataSet.IsEmpty) and buF8Composicion.Enabled then
     buF8Composicion.Click;
end;

procedure TfrmCapturar_materiales.buF7TareasClick(Sender: TObject);
begin
  inherited;
  paTarea.Tag := 0;

  edTarea.Tag := 0;
  edTarea.Clear;
  edObservaciones.Clear;

  imTarea.Picture := nil;
  imagen.Clear;

  fijarBotonesT(true);

  edTarea.SetFocus;
end;

procedure TfrmCapturar_materiales.buF10TareasClick(Sender: TObject);
begin
  inherited;
  fijarBotonesT(false);
end;

procedure TfrmCapturar_materiales.buF9TareasClick(Sender: TObject);
var
   observ : TMemoryStream;
begin
  inherited;
  observ := nil;
  try
     observ := TMemoryStream.Create;
     edObservaciones.Lines.SaveToStream(observ);
     observ.Position := 0;
     imagen.Position := 0;

     spADD_TAREAS_ING.ParamByName('P_ID').AsInteger       := paTarea.Tag;
     spADD_TAREAS_ING.ParamByName('P_ING').AsInteger      := dsBOMIngenieria.DataSet.FieldByName('R_ID').AsInteger;
     spADD_TAREAS_ING.ParamByName('P_TAREA').AsInteger    := edTarea.Tag;
     spADD_TAREAS_ING.ParamByName('P_OBSERVACIONES').LoadFromStream(observ, ftBlob);
     spADD_TAREAS_ING.ParamByName('P_IMAGEN').LoadFromStream(imagen, ftBlob);
     spADD_TAREAS_ING.ExecProc;
     spADD_TAREAS_ING.Transaction.CommitRetaining;
     loadImagen := 0;
     reglas.abrir_IBQuery_seek('R_ID', spADD_TAREAS_ING.ParamByName('R_ID').AsInteger, qyTareas);
  finally
     observ.Free;
  end;
  fijarBotonesT(false);
end;

procedure TfrmCapturar_materiales.itemTareaCClick(Sender: TObject);
begin
  inherited;
  {
  if opImagen.Execute then
  begin
      reglas.imagenGuardar(opImagen.FileName, imTarea, imagen);
  end;
  }
end;

procedure TfrmCapturar_materiales.edTareaButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  case AbsoluteIndex of
    0 : begin
           frmSeleccionarTarea             := TfrmSeleccionarTarea.Create(Application);
           frmSeleccionarTarea.DATABASE    := dmIBModulo.ibSistema;
           frmSeleccionarTarea.TRANSACTION := dmIBModulo.ibSistemaTransaccion;
           frmSeleccionarTarea.DESCRIPCION := edTarea.Text;
           if frmSeleccionarTarea.abrirConsulta then
           begin
              frmSeleccionarTarea.ShowModal;
              if frmSeleccionarTarea.ACEPTAR then
              begin
                 edTarea.Tag  := frmSeleccionarTarea.ID;
                 edTarea.Text := frmSeleccionarTarea.DESCRIPCION;
              end;
           end
           else
              begin
                 edTarea.Tag  := frmSeleccionarTarea.ID;
                 edTarea.Text := frmSeleccionarTarea.DESCRIPCION;
              end;
           frmSeleccionarTarea.Free;
           frmSeleccionarTarea := nil;
           if edTarea.Tag <> 0 then
              edObservaciones.SetFocus;
        end;
    1 : begin
           edTarea.Clear;
           edTarea.Tag := 0;
        end;
  end;
end;

procedure TfrmCapturar_materiales.edTareaKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  {
  if Key = #13 then
     edTarea.OnButtonClick(Sender, 0);
  }
end;

procedure TfrmCapturar_materiales.imTareaDblClick(Sender: TObject);
begin
  inherited;
  frmImagen := TfrmImagen.Create(Application);
  frmImagen.IMAGEN_STREAM := imagen;
  frmImagen.ShowModal;
  frmImagen.Free;
end;

procedure TfrmCapturar_materiales.buF8TareasClick(Sender: TObject);
var
   tmp : TMemoryStream;
begin
  inherited;
  tmp := nil;
  try
     tmp          := TMemoryStream.Create;
     paTarea.Tag  := dsTareas.DataSet.FieldByName('R_ID').AsInteger;
     edTarea.Tag  := dsTareas.DataSet.FieldByName('R_TAREA').AsInteger;
     edTarea.Text := dsTareas.DataSet.FieldByName('R_TAREA_DESCRIPCION').AsString;
     
     TBlobField(dsTareas.DataSet.FieldByName('R_OBSERVACIONES')).SaveToStream(tmp);
     tmp.Position := 0;
     edObservaciones.Lines.LoadFromStream(tmp);
     //reglas.imagenVer(dsTareas, 'R_IMAGEN', imTarea, imagen);
  finally
     tmp.Free;
  end;

  fijarBotonesT(true);
  edObservaciones.SetFocus;
end;

procedure TfrmCapturar_materiales.itemTareaLClick(Sender: TObject);
begin
  inherited;
  imTarea.Picture := nil;
  imagen.Clear;
end;

procedure TfrmCapturar_materiales.dsTareasDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if loadImagen <> dsTareas.DataSet.FieldByName('R_ID').AsInteger then
  begin
     loadImagen := dsTareas.DataSet.FieldByName('R_ID').AsInteger;
     reglas.imagenVer(dsTareas, 'R_IMAGEN', fcTarea);
  end;
end;

procedure TfrmCapturar_materiales.paTareaResize(Sender: TObject);
begin
  inherited;
  fcTarea.Invalidate;//para refrescar la imagen que se visualiza bien.
end;

procedure TfrmCapturar_materiales.fcTareaDblClick(Sender: TObject);
begin
  inherited;
  frmImagen := TfrmImagen.Create(Application);
  frmImagen.IMAGEN_PICT := fcTarea;
  frmImagen.ShowModal;
  frmImagen.Free;
end;

procedure TfrmCapturar_materiales.qyRecetaAfterOpen(DataSet: TDataSet);
begin
  inherited;
  reglas.refresh_IBQuery(qyRecetaMateriales);
end;

procedure TfrmCapturar_materiales.buF7RecetaClick(Sender: TObject);
begin
  inherited;
  paCapturaReceta.Tag := 0;

  edTareaR.Tag := 0;
  edTareaR.Clear;
  edMin.Clear;
  edSeg.Clear;
  edNivel.Clear;
  //dgMateriales.ClearNodes;

  fijarBotonesR(true);
  edMin.SetFocus;
end;

procedure TfrmCapturar_materiales.buF9RecetaClick(Sender: TObject);
var
   i : integer;
   //Node  : TdxTreeListNode;
begin
  inherited;
  spADD_BOM_RECETA.ParamByName('P_ID').AsInteger        := paCapturaReceta.Tag;
  spADD_BOM_RECETA.ParamByName('P_BOM_ING').AsInteger   := dsBOMIngenieria.DataSet.FieldByName('R_ID').AsInteger;
  spADD_BOM_RECETA.ParamByName('P_NIVEL').AsInteger     := StrToInt((edNivel.Text));
  spADD_BOM_RECETA.ParamByName('P_EJEC_MIN').AsInteger  := StrToInt((edMin.Text));
  spADD_BOM_RECETA.ParamByName('P_EJEC_SEG').AsInteger  := StrToInt((edSeg.Text));
  spADD_BOM_RECETA.ParamByName('P_MAT_TAREA').AsInteger := edTareaR.Tag;
  spADD_BOM_RECETA.ExecProc;
  spADD_BOM_RECETA.Transaction.CommitRetaining;

  //materiales que ocupa la receta
  {
  if dgMateriales.Count > 0 then
  begin
     dgMateriales.BeginUpdate;
     Node := dgMateriales.FocusedNode;
     for i := 0 to dgMateriales.Count - 1 do
     begin
        spADD_BOM_RECETA_DET.ParamByName('P_BOM_RECETA').AsInteger := spADD_BOM_RECETA.ParamByName('R_ID').AsInteger;
        spADD_BOM_RECETA_DET.ParamByName('P_BOM_ING_DET').AsString := dgMateriales.Items[i].Strings[1];
        spADD_BOM_RECETA_DET.ExecProc;
        spADD_BOM_RECETA_DET.Transaction.CommitRetaining;
     end;
     Node.Focused := True;
     dgMateriales.EndUpdate;
  end;
  }
  reglas.abrir_IBQuery_seek('R_ID', spADD_BOM_RECETA.ParamByName('R_ID').AsInteger, qyReceta);
  reglas.refresh_IBQuery(qyRecetaMateriales);

  fijarBotonesR(false);
end;

procedure TfrmCapturar_materiales.buSelTareaClick(Sender: TObject);
begin
  inherited;
  edTareaR.Tag  := dsTareas.DataSet.FieldByName('R_ID').AsInteger;
  edTareaR.Text := dsTareas.DataSet.FieldByName('R_TAREA_DESCRIPCION').AsString;
  edMin.SetFocus;
end;

procedure TfrmCapturar_materiales.buSelMaterialClick(Sender: TObject);
var
   i : integer;
   L : TList;
   id      : string;
   partida : string;
   clave   : string;
   //grid
   //N : TdxTreeListNode;
begin
  inherited;
  L       := nil;
  try
     L := TList.Create;
     {
     for i := 0 to dgComposicionVer.SelectedCount - 1 do
         L.Add(dgComposicionVer.SelectedNodes[i]);//no se hace directamente en el grid por que tiene bug, cuando son 2 registros
     for i := 0 to (L.Count - 1) do
     begin
        id      := TdxTreeListNode(L.Items[i]).Strings[0];
        partida := TdxTreeListNode(L.Items[i]).Strings[1];
        clave   := TdxTreeListNode(L.Items[i]).Strings[2];

        N := dgMateriales.Add;
        N.Values[1] := id;
        N.Values[2] := partida;
        N.Values[3] := clave;
        N.Values[4] := '0';
     end;
     }
  finally
     L.Free;
  end;
end;

procedure TfrmCapturar_materiales.dgMaterialesELIMINARButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
var
   //Node : TdxTreeListNode;
   id   : string;
begin
  inherited;
   {
   Node := dgMateriales.FocusedNode;
   id   := Node.Values[4];
   Node.Free;

   spDEL_BOM_RECETA_DET.ParamByName('P_ID').AsString := id;
   spDEL_BOM_RECETA_DET.ExecProc;
   spDEL_BOM_RECETA_DET.Transaction.CommitRetaining;
   reglas.refresh_IBQuery(qyRecetaMateriales);
   }
end;

procedure TfrmCapturar_materiales.buF10RecetaClick(Sender: TObject);
begin
  inherited;
  fijarBotonesR(false);
end;

procedure TfrmCapturar_materiales.buF11TareasClick(Sender: TObject);
begin
  inherited;
  if MessageDlg('¿ Eliminar registro ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes  then
  begin
     spDEL_TAREA_ING.ParamByName('P_ID').AsInteger := dsTareas.DataSet.FieldByName('R_ID').AsInteger;
     spDEL_TAREA_ING.ExecProc;
     spDEL_TAREA_ING.Transaction.CommitRetaining;
     reglas.refresh_IBQuery(qyTareas);
     fijarBotonesT(false);
  end;
end;

procedure TfrmCapturar_materiales.buF8RecetaClick(Sender: TObject);
//var
   //grid
   //N : TdxTreeListNode;
begin
  inherited;
  paCapturaReceta.Tag  := dsReceta.DataSet.FieldByName('R_ID').AsInteger;
  edTareaR.Tag         := dsReceta.DataSet.FieldByName('R_MAT_TAREA').AsInteger;
  edTareaR.Text        := dsReceta.DataSet.FieldByName('R_TAREA_DESCRIPCION').AsString;
  edMin.Text          := dsReceta.DataSet.FieldByName('R_EJEC_MIN').AsString;
  edSeg.Text          := dsReceta.DataSet.FieldByName('R_EJEC_SEG').AsString;
  edNivel.Text        := dsReceta.DataSet.FieldByName('R_NIVEL_TAREA').AsString;

  //dgMateriales.ClearNodes;
  dsRecetaMateriales.DataSet.First;
  {
  while not(dsRecetaMateriales.DataSet.Eof) do
  begin
     N := dgMateriales.Add;
     N.Values[1] := dsRecetaMateriales.DataSet.FieldByName('R_BOM_ING_DET').AsString;
     N.Values[2] := dsRecetaMateriales.DataSet.FieldByName('R_ROW').AsString;
     N.Values[3] := dsRecetaMateriales.DataSet.FieldByName('R_MATERIAL_CLAVE').AsString;
     N.Values[4] := dsRecetaMateriales.DataSet.FieldByName('R_ID').AsString;

     dsRecetaMateriales.DataSet.Next;
  end;
  }
  fijarBotonesR(true);

  edMin.SetFocus;
end;

procedure TfrmCapturar_materiales.buF11RecetaClick(Sender: TObject);
begin
  inherited;
  if MessageDlg('¿Eliminar registro?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
     spDEL_BOM_RECETA.ParamByName('P_ID').AsInteger := dsReceta.DataSet.FieldByName('R_ID').AsInteger;
     spDEL_BOM_RECETA.ExecProc;
     spDEL_BOM_RECETA.Transaction.CommitRetaining;
     reglas.refresh_IBQuery(qyReceta);
     fijarBotonesR(false);
  end;
end;

procedure TfrmCapturar_materiales.itemF7IngenieriaClick(Sender: TObject);
begin
  inherited;
  buF7Ingenieria.Click;
end;

procedure TfrmCapturar_materiales.itemF7ComposicionClick(Sender: TObject);
begin
  inherited;
  buF7Composicion.Click;
end;

procedure TfrmCapturar_materiales.itemF7TareasClick(Sender: TObject);
begin
  inherited;
  buF7Tareas.Click;
end;

procedure TfrmCapturar_materiales.itemF7RecetaClick(Sender: TObject);
begin
  inherited;
  buF7Receta.Click;
end;

procedure TfrmCapturar_materiales.itemF8IngenieriaClick(Sender: TObject);
begin
  inherited;
  buF8Ingenieria.Click;
end;

procedure TfrmCapturar_materiales.itemF9IngenieriaClick(Sender: TObject);
begin
  inherited;
  buF9Ingenieria.Click;
end;

procedure TfrmCapturar_materiales.itemF10IngenieriaClick(Sender: TObject);
begin
  inherited;
  buF10Ingenieria.Click;
end;

procedure TfrmCapturar_materiales.itemF11IngenieriaClick(Sender: TObject);
begin
  inherited;
  buF11Ingenieria.Click;
end;

procedure TfrmCapturar_materiales.itemF8ComposicionClick(Sender: TObject);
begin
  inherited;
  buF8Composicion.Click;
end;

procedure TfrmCapturar_materiales.itemF9ComposicionClick(Sender: TObject);
begin
  inherited;
  buF9Composicion.Click;
end;

procedure TfrmCapturar_materiales.itemF10ComposicionClick(Sender: TObject);
begin
  inherited;
  buF10Composicion.Click;
end;

procedure TfrmCapturar_materiales.itemF11ComposicionClick(Sender: TObject);
begin
  inherited;
  buF11Composicion.Click;
end;

procedure TfrmCapturar_materiales.itemF8TareasClick(Sender: TObject);
begin
  inherited;
  buF8Tareas.Click;
end;

procedure TfrmCapturar_materiales.itemF9TareasClick(Sender: TObject);
begin
  inherited;
  buF9Tareas.Click;
end;

procedure TfrmCapturar_materiales.itemF10TareasClick(Sender: TObject);
begin
  inherited;
  buF10Tareas.Click;
end;

procedure TfrmCapturar_materiales.itemF11TareasClick(Sender: TObject);
begin
  inherited;
  buF11Tareas.Click;
end;

procedure TfrmCapturar_materiales.itemF8RecetaClick(Sender: TObject);
begin
  inherited;
  buF8Receta.Click;
end;

procedure TfrmCapturar_materiales.itemF9RecetaClick(Sender: TObject);
begin
  inherited;
  buF9Receta.Click;
end;

procedure TfrmCapturar_materiales.itemF10RecetaClick(Sender: TObject);
begin
  inherited;
  buF10Receta.Click;
end;

procedure TfrmCapturar_materiales.itemF11RecetaClick(Sender: TObject);
begin
  inherited;
  buF11Receta.Click;
end;

procedure TfrmCapturar_materiales.pcBOMChange(Sender: TObject);
begin
  inherited;
  case pcBOM.ActivePageIndex of
     0 : frmCapturar_materiales.PopupMenu := ppFIngenieria;
     1 : frmCapturar_materiales.PopupMenu := ppFComposicion;
     2 : frmCapturar_materiales.PopupMenu := ppFTareas;
     3 : frmCapturar_materiales.PopupMenu := ppFReceta;
  else
     frmCapturar_materiales.PopupMenu := nil;
  end;
  fijarBotonesC(false);
  fijarBotonesT(false);
  fijarBotonesR(false);
end;

procedure TfrmCapturar_materiales.qyBOMIngenieriaAfterOpen(
  DataSet: TDataSet);
begin
  inherited;
  reglas.refresh_IBQuery(qyComposicion);
  reglas.refresh_IBQuery(qyTareas);
  reglas.refresh_IBQuery(qyReceta);
end;

procedure TfrmCapturar_materiales.buLimpiarIngButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  cbColoresIng.KeyValue := 0;
  //cbColoresIng.Clear;
end;

procedure TfrmCapturar_materiales.itemF7SecClick(Sender: TObject);
begin
  inherited;
  buF7Sec.Click;
end;

procedure TfrmCapturar_materiales.itemF11SecClick(Sender: TObject);
begin
  inherited;
  buF11Sec.Click;
end;

procedure TfrmCapturar_materiales.buCopiarClick(Sender: TObject);
begin
  inherited;
  if dsBOMIngenieria.DataSet.FieldByName('R_COLOR_NOMBRE').AsString <> '' then
     lvCopiaTareas.Items.Add.Caption := '['+dsBOMIngenieria.DataSet.FieldByName('R_ID').AsString+'] Part.'+dsBOMIngenieria.DataSet.FieldByName('R_ROW').AsString+', '+dsBOMIngenieria.DataSet.FieldByName('R_COLOR_NOMBRE').AsString
  else
     lvCopiaTareas.Items.Add.Caption := '['+dsBOMIngenieria.DataSet.FieldByName('R_ID').AsString+'] Part.'+dsBOMIngenieria.DataSet.FieldByName('R_ROW').AsString;
  fijarBotonesT(false);
end;

procedure TfrmCapturar_materiales.dgTareasDragOver(Sender, Source: TObject;
  X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  inherited;
  Accept := (Source is TListView);
end;

procedure TfrmCapturar_materiales.dgTareasDragDrop(Sender, Source: TObject;
  X, Y: Integer);
var
  id : integer;
begin
  inherited;
  if Source is TListView then
  begin
     id := reglas.dame_id_corchete(lvCopiaTareas.Items[lvCopiaTareas.Items.IndexOf(lvCopiaTareas.ItemFocused)].Caption);
     spCOPIA_TAREAS_ING.ParamByName('P_FUENTE').AsInteger  := id;
     spCOPIA_TAREAS_ING.ParamByName('P_DESTINO').AsInteger := dsBOMIngenieria.DataSet.FieldByName('R_ID').AsInteger;
     spCOPIA_TAREAS_ING.ExecProc;
     spCOPIA_TAREAS_ING.Transaction.CommitRetaining;
     reglas.refresh_IBQuery(qyTareas);
     borrarIconT := true;
  end;
end;

procedure TfrmCapturar_materiales.lvCopiaTareasEndDrag(Sender,
  Target: TObject; X, Y: Integer);
begin
  inherited;
  if (Target <> nil) and borrarIconT then
  begin
     lvCopiaTareas.Items[lvCopiaTareas.Items.IndexOf(lvCopiaTareas.ItemFocused)].Delete;
     fijarBotonesT(false);
     borrarIconT := false;
  end;
end;

procedure TfrmCapturar_materiales.buCopiaComposicionClick(Sender: TObject);
begin
  inherited;
  lvCopiaComposicion.Items.Add.Caption := '['+dsBOMIngenieria.DataSet.FieldByName('R_ID').AsString+'] Part.'+dsBOMIngenieria.DataSet.FieldByName('R_ROW').AsString;
  fijarBotonesC(false);
end;

procedure TfrmCapturar_materiales.dgComposicionDragDrop(Sender,
  Source: TObject; X, Y: Integer);
var
   id : integer;  
begin
  inherited;
  if Source is TListView then
  begin
     id := reglas.dame_id_corchete(lvCopiaComposicion.Items[lvCopiaComposicion.Items.IndexOf(lvCopiaComposicion.ItemFocused)].Caption);
     spCOPIA_COMPOSICION_ING.ParamByName('P_FUENTE').AsInteger  := id;
     spCOPIA_COMPOSICION_ING.ParamByName('P_DESTINO').AsInteger := dsBOMIngenieria.DataSet.FieldByName('R_ID').AsInteger;
     spCOPIA_COMPOSICION_ING.ExecProc;
     spCOPIA_COMPOSICION_ING.Transaction.CommitRetaining;
     reglas.refresh_IBQuery(qyComposicion);
     borrarIconC := true;
  end;
end;

procedure TfrmCapturar_materiales.dgComposicionDragOver(Sender,
  Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  inherited;
  Accept := (Source is TListView);
end;

procedure TfrmCapturar_materiales.lvCopiaComposicionEndDrag(Sender,
  Target: TObject; X, Y: Integer);
begin
  inherited;
  if (Target <> nil) and borrarIconC then
  begin
     lvCopiaComposicion.Items[lvCopiaComposicion.Items.IndexOf(lvCopiaComposicion.ItemFocused)].Delete;
     fijarBotonesC(false);
     borrarIconC := false;
  end;
end;

procedure TfrmCapturar_materiales.dnComposicionClick(Sender: TObject;
  Button: TNavigateBtn);
begin
  inherited;
  fijarBotonesC(false);
end;

procedure TfrmCapturar_materiales.dnTareaClick(Sender: TObject;
  Button: TNavigateBtn);
begin
  inherited;
  fijarBotonesT(false);
end;

procedure TfrmCapturar_materiales.buF7Click(Sender: TObject);
begin
  inherited;
  paCaptura.Tag      := 0;
  edClave.Text       := dsFuente.DataSet.FieldByName('CLAVE').AsString;
  edDescripcion.Text := dsFuente.DataSet.FieldByName('DESCRIPCION').AsString;
  if dsFuente.DataSet.FieldByName('UNIDAD_BASE').AsString <> '' then
  begin
     cbUnidades.KeyValue := dsFuente.DataSet.FieldByName('UNIDAD_BASE').AsString;
     edFactor.Text := '1';
  end
  else
     begin
        cbUnidades.KeyValue := 0;
        edFactor.Text := '0';
     end;
  edCMinima.Text       := '0';
  edCosto.Text         := '0';
  edTEntrega.Text      := '0';
  cbCalidadP.ItemIndex  := 0;
  edProveedor.Tag       := 0;
  edDescuentoPorc.Text := '0';

  edProveedor.Clear;
  
  edProveedor.SetFocus;

  fijarBotonesP(true);
end;

procedure TfrmCapturar_materiales.buF8ProveedoresClick(Sender: TObject);
begin
  inherited;
  paCaptura.Tag             := dsPartidas.DataSet.FieldByName('R_ID').AsInteger;
  edProveedor.Tag           := dsPartidas.DataSet.FieldByName('R_PROVEEDOR').AsInteger;
  edProveedor.Text          := dsPartidas.DataSet.FieldByName('R_PROVEEDOR_NOMBRE').AsString;
  edClave.Text              := dsPartidas.DataSet.FieldByName('R_CLAVE').AsString;
  edDescripcion.Text        := dsPartidas.DataSet.FieldByName('R_DESCRIPCION').AsString;
  edCMinima.Text           := dsPartidas.DataSet.FieldByName('R_MINIMA').AsString;
  cbUnidades.KeyValue := dsPartidas.DataSet.FieldByName('R_UNIDAD').AsInteger;
  edFactor.Text            := dsPartidas.DataSet.FieldByName('R_FACTOR').AsString;
  edCosto.Text             := dsPartidas.DataSet.FieldByName('R_COSTO').AsString;
  edTEntrega.Text          := dsPartidas.DataSet.FieldByName('R_ENTREGA').AsString;
  edDescuentoPorc.Text     := dsPartidas.DataSet.FieldByName('R_DESC_PORC').AsString;
  cbMonedas.KeyValue  := dsPartidas.DataSet.FieldByName('R_MONEDA').AsInteger;
  cbCalidadP.ItemIndex      := 0;
  if dsPartidas.DataSet.FieldByName('R_INTERVIENE_EN_CALIDAD').AsString = 'Si' then
     cbCalidadP.ItemIndex   := 1;
  edClave.SetFocus;

  fijarBotonesP(true);
end;

procedure TfrmCapturar_materiales.buF9ProveedoresClick(Sender: TObject);
var
   calidad : string;
begin
  inherited;
  calidad := 'No';
  if cbCalidadP.ItemIndex = 1 then
     calidad := 'Si';
  spADD_MPROVEEDOR.ParamByName('P_ID').AsInteger                   := paCaptura.Tag;
  spADD_MPROVEEDOR.ParamByName('P_MATERIAL').AsInteger             := dsFuente.DataSet.FieldByName('ID').AsInteger;
  spADD_MPROVEEDOR.ParamByName('P_PROVEEDOR').AsInteger            := edProveedor.Tag;
  spADD_MPROVEEDOR.ParamByName('P_CLAVE').AsString                 := edClave.Text;
  spADD_MPROVEEDOR.ParamByName('P_DESCRIPCION').AsString           := edDescripcion.Text;
  spADD_MPROVEEDOR.ParamByName('P_CANTIDAD_MIN').AsFloat           := StrToFloat(edCMinima.Text);
  spADD_MPROVEEDOR.ParamByName('P_UNIDAD').AsInteger               := cbUnidades.KeyValue;
  spADD_MPROVEEDOR.ParamByName('P_FACTOR').AsFloat                 := StrToFloat(edFactor.Text);
  spADD_MPROVEEDOR.ParamByName('P_COSTO').AsFloat                  := StrToFloat(edCosto.Text);
  spADD_MPROVEEDOR.ParamByName('P_TIEMPO_ENT').AsString            := edTEntrega.Text;
  spADD_MPROVEEDOR.ParamByName('P_INTERVIENE_EN_CALIDAD').AsString := calidad;
  spADD_MPROVEEDOR.ParamByName('P_DESC_PORC').AsFloat              := StrToFloat(edDescuentoPorc.Text);
  spADD_MPROVEEDOR.ParamByName('P_MONEDA').AsInteger               := cbMonedas.KeyValue;  
  spADD_MPROVEEDOR.ExecProc;
  spADD_MPROVEEDOR.Transaction.CommitRetaining;

  reglas.abrir_IBQuery_seek('R_ID', spADD_MPROVEEDOR.ParamByName('R_ID').AsInteger, qyPartidas);
  fijarBotonesP(false);
end;

procedure TfrmCapturar_materiales.buF10ProveedoresClick(Sender: TObject);
begin
  inherited;
  fijarBotonesP(false);
end;

procedure TfrmCapturar_materiales.buF11ProveedoresClick(Sender: TObject);
begin
  inherited;
  if MessageDlg('¿ Eliminar ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes  then
  begin
     qyDelMProveedor.ParamByName('P_ID').AsInteger := dsPartidas.DataSet.FieldByName('R_ID').AsInteger;
     qyDelMProveedor.ExecSQL;
     qyDelMProveedor.Transaction.CommitRetaining;
     reglas.refresh_IBQuery(qyPartidas);
     fijarBotonesP(false);
  end;
end;

procedure TfrmCapturar_materiales.buF7SecClick(Sender: TObject);
var
   pnt : TPoint;
begin
  inherited;
  pnt := dgUnidades.ClientToScreen(Point(0,0));
  frmSeleccionar_Unidades := TfrmSeleccionar_Unidades.Create(Application);
  frmSeleccionar_Unidades.dsDestino.Tag     := dsFuente.DataSet.FieldByName('ID').AsInteger;
  frmSeleccionar_Unidades.dsDestino.DataSet := qyUnidadesSecundarias;
  frmSeleccionar_Unidades.coordenadas(0,pnt.x-7, width-7, pnt.y);
  frmSeleccionar_Unidades.ShowModal;
  frmSeleccionar_Unidades.Free;
end;

procedure TfrmCapturar_materiales.FlatButton5Click(Sender: TObject);
begin
  inherited;
  if MessageDlg('¿ Eliminar ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes  then
  begin
     spDEL_UNIDAD_MATERIAL.ParamByName('P_UNIDAD').AsInteger := dsUnidadesSecundarias.DataSet.FieldByName('R_ID').AsInteger;
     spDEL_UNIDAD_MATERIAL.ExecProc;
     reglas.refresh_IBQuery(qyUnidadesSecundarias);
  end;
end;

procedure TfrmCapturar_materiales.cbEstatusIngChange(Sender: TObject);
begin
  inherited;
  edEstatusIng.Text := cbEstatusIng.Text;
  if cbEstatusIng.Text <> '' then
  begin
     spEstatus.Params.Clear;
     spEstatus.StoredProcName := dsEstatusProcesosDetalle.DataSet.FieldByName('STOREPROC').AsString;
     spEstatus.Params.CreateParam(ftInteger,'P_ID',ptInput);

     buF9Ingenieria.Enabled := false;
     buEjecutar.Enabled     := true;
  end;
end;

procedure TfrmCapturar_materiales.buEjecutarClick(Sender: TObject);
var
   autorizar : string;
   ejecutar  : boolean;
   id        : integer;
begin
  inherited;
   id        := qyBOMIngenieria.FieldByName('R_ID').AsInteger;
   ejecutar  := true;
   autorizar := dsEstatusProcesosDetalle.DataSet.FieldByName('AUTORIZACION').AsString;
   if autorizar = 'Si' then
   begin
      frmAutorizar := TfrmAutorizar.Crear(Application, 10);
      frmAutorizar.ShowModal;
      ejecutar := frmAutorizar.autorizacion;
      frmAutorizar.Free;
      frmAutorizar := nil;
   end;

   edEstatusIng.Text := estatus;
   buF9Ingenieria.Click;

   if ejecutar then
   begin
      spEstatus.ParamByName('P_ID').AsInteger := id;
      spEstatus.ExecProc;
      spEstatus.Transaction.CommitRetaining;
      reglas.abrir_IBQuery_seek('R_ID', id, qyBOMIngenieria);
      fijarBotonesI(false);
   end;
end;

procedure TfrmCapturar_materiales.itemF7ClientesClick(Sender: TObject);
begin
  inherited;
  buF7Clientes.Click;
end;

procedure TfrmCapturar_materiales.itemF8ClientesClick(Sender: TObject);
begin
  inherited;
  buF8Clientes.Click;
end;

procedure TfrmCapturar_materiales.itemF9ClientesClick(Sender: TObject);
begin
  inherited;
  buF9Clientes.Click;
end;

procedure TfrmCapturar_materiales.itemF10ClientesClick(Sender: TObject);
begin
  inherited;
  buF10Clientes.Click;
end;

procedure TfrmCapturar_materiales.itemF11ClientesClick(Sender: TObject);
begin
  inherited;
  buF11Clientes.Click;
end;

procedure TfrmCapturar_materiales.buF7ClientesClick(Sender: TObject);
begin
  inherited;
  paClientes.Tag      := 0;
  cbCliente.Checked   := true;
  
  edClaveC.Text       := dsFuente.DataSet.FieldByName('CLAVE').AsString;
  edDescripcionC.Text := dsFuente.DataSet.FieldByName('DESCRIPCION').AsString;
  edDPPorc.Text      := '0';

  edCliente.Tag  := 0;
  edCliente.Clear;

  edExtension.Tag  := 0;
  edExtension.Clear;

  if edCliente.Visible then
     edCliente.SetFocus;

  if edExtension.Visible then
     edExtension.SetFocus;

  fijarBotonesClie(true);
end;

procedure TfrmCapturar_materiales.buF8ClientesClick(Sender: TObject);
begin
  inherited;
  paClientes.Tag            := dsPartidasClientes.DataSet.FieldByName('R_ID').AsInteger;
  cbCliente.Checked         := dsPartidasClientes.DataSet.FieldByName('R_TIPO').AsString = 'C';
  cbExtension.Checked       := dsPartidasClientes.DataSet.FieldByName('R_TIPO').AsString = 'E';

  if cbCliente.Checked then
  begin
     edCliente.Tag          := dsPartidasClientes.DataSet.FieldByName('R_CLIENTE').AsInteger;
     edCliente.Text         := dsPartidasClientes.DataSet.FieldByName('R_CLIENTE_NOMBRE').AsString;
     edExtension.Tag        := 0;
     edExtension.Clear;
  end;

  if cbExtension.Checked then
  begin
     edCliente.Tag          := 0;
     edCliente.Clear;
     edExtension.Tag        := dsPartidasClientes.DataSet.FieldByName('R_CLIENTE').AsInteger;
     edExtension.Text       := dsPartidasClientes.DataSet.FieldByName('R_CLIENTE_NOMBRE').AsString;
  end;

  edClaveC.Text             := dsPartidasClientes.DataSet.FieldByName('R_CLAVE').AsString;
  edDescripcionC.Text       := dsPartidasClientes.DataSet.FieldByName('R_DESCRIPCION').AsString;
  edDPPorc.Text            := dsPartidasClientes.DataSet.FieldByName('R_DP_PORC').AsString;
  edClaveC.SetFocus;
  fijarBotonesClie(true);
end;

procedure TfrmCapturar_materiales.buF9ClientesClick(Sender: TObject);
begin
  inherited;
  spADD_MCLIENTE.ParamByName('P_ID').AsInteger         := paClientes.Tag;
  spADD_MCLIENTE.ParamByName('P_MATERIAL').AsInteger   := dsFuente.DataSet.FieldByName('ID').AsInteger;
  spADD_MCLIENTE.ParamByName('P_CLIENTE').AsInteger    := edCliente.Tag;
  spADD_MCLIENTE.ParamByName('P_EXTENSION').AsInteger  := edExtension.Tag;
  spADD_MCLIENTE.ParamByName('P_CLAVE').AsString       := edClaveC.Text;
  spADD_MCLIENTE.ParamByName('P_DESCRIPCION').AsString := edDescripcionC.Text;
  spADD_MCLIENTE.ParamByName('P_PORC').AsString         := edDPPorc.Text;
  spADD_MCLIENTE.ExecProc;
  spADD_MCLIENTE.Transaction.CommitRetaining;

  reglas.abrir_IBQuery_seek('R_ID',spADD_MCLIENTE.ParamByName('R_ID').AsInteger, qyPartidasClientes);
  fijarBotonesClie(false);
end;

procedure TfrmCapturar_materiales.buF10ClientesClick(Sender: TObject);
begin
  inherited;
  fijarBotonesClie(false);
end;

procedure TfrmCapturar_materiales.buF11ClientesClick(Sender: TObject);
begin
  inherited;
  if MessageDlg('¿ Eliminar ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes  then
  begin
     qyDelCliente.ParamByName('P_ID').AsInteger := dsPartidasClientes.DataSet.FieldByName('R_ID').AsInteger;
     qyDelCliente.ExecSQL;
     qyDelCliente.Transaction.CommitRetaining;
     reglas.refresh_IBQuery(qyPartidasClientes);
     fijarBotonesClie(false);
  end;
end;

procedure TfrmCapturar_materiales.edClienteButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  case AbsoluteIndex of
    0 : begin
           frmSeleccionarCliente             := TfrmSeleccionarCliente.Create(Application);
           frmSeleccionarCliente.DATABASE    := dmIBModulo.ibSistema;
           frmSeleccionarCliente.TRANSACTION := dmIBModulo.ibSistemaTransaccion;
           frmSeleccionarCliente.CLAVE       := edCliente.Text;
           if frmSeleccionarCliente.abrirConsulta then
           begin
              frmSeleccionarCliente.ShowModal;
              if frmSeleccionarCliente.ACEPTAR then
              begin
                 edCliente.Text := frmSeleccionarCliente.NOMBRE;
                 edCliente.Tag  := frmSeleccionarCliente.ID;
              end;
           end
           else
              begin
                 edCliente.Text := frmSeleccionarCliente.NOMBRE;
                 edCliente.Tag  := frmSeleccionarCliente.ID;
              end;
           frmSeleccionarCliente.Free;
           frmSeleccionarCliente := nil;
        end;
    1 : begin
           edCliente.Clear;
           edCliente.Tag := 0;
        end;
  end;
end;

procedure TfrmCapturar_materiales.edClienteKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  {
  if Key = #13 then
     edCliente.OnButtonClick(Sender, 0);
     }
end;

procedure TfrmCapturar_materiales.edExtensionButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
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
                 edExtension.Text := frmSeleccionarExtension.NOMBRE;
                 edExtension.Tag  := frmSeleccionarExtension.EXTENSION;
              end;
           end
           else
              begin
                 edExtension.Text := frmSeleccionarExtension.NOMBRE;
                 edExtension.Tag  := frmSeleccionarExtension.EXTENSION;
              end;
           frmSeleccionarExtension.Free;
           frmSeleccionarExtension := nil;
        end;
    1 : begin
           edExtension.Clear;
           edExtension.Tag := 0;
        end;
  end;
end;

procedure TfrmCapturar_materiales.edExtensionKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  {
  if Key = #13 then
     edExtension.OnButtonClick(Sender, 0);
     }
end;

procedure TfrmCapturar_materiales.cbClienteChange(Sender: TObject);
begin
  inherited;
  if cbCliente.Checked then
  begin
     laCliente.Caption := 'Cliente (Enter)';
     edCliente.Visible   := true;
     edCliente.SetFocus;

     cbExtension.Checked := false;
     edExtension.Visible := false;
     edExtension.Tag     := 0;
     edExtension.Clear;
  end;
end;

procedure TfrmCapturar_materiales.cbExtensionChange(Sender: TObject);
begin
  inherited;
  if cbExtension.Checked then
  begin
     laCliente.Caption   := 'Extension (Enter)';
     edExtension.Visible := true;
     edExtension.SetFocus;

     cbCliente.Checked   := false;
     edCliente.Visible   := false;
     edCliente.Tag       := 0;
     edCliente.Clear;
  end;
end;

procedure TfrmCapturar_materiales.buAccesoBOMClick(Sender: TObject);
var
   ejecutar : boolean;
begin
  inherited;
  ejecutar  := true;
  if not(reglas.dameUsuarioNivel >= 5) then
  begin
     frmAcceso := TfrmAcceso.Create(Application);
     try
        frmAcceso.UnicoN := '';
        frmAcceso.Unico  := 0;
        frmAcceso.Nivel  := 5;
        frmAcceso.Status := 'BOM';
        frmAcceso.ShowModal;
        ejecutar := frmAcceso.Rsp;
     finally
        frmAcceso.Free;
     end;
  end;
  tsIngenieria.Enabled  := ejecutar;
  tsComposicion.Enabled := ejecutar;
  tsTareas.Enabled      := ejecutar;
  tsReceta.Enabled      := ejecutar;
end;

{
procedure TfrmCapturar_materiales.tlMedidasGetImageIndex(Sender: TObject;
  Node: TdxTreeListNode; var Index: Integer);
const
  ImagesIndex: array [Boolean] of Integer = (0, 1);
begin
  inherited;
  if Node.Level = 0 then
  begin
     if Node.HasChildren then
       Index := ImagesIndex[Node.Expanded]
  end
  else
     Index := Node.Level + 1;
end;

procedure TfrmCapturar_materiales.tlMedidasGetSelectedIndex(
  Sender: TObject; Node: TdxTreeListNode; var Index: Integer);
const
  ImagesIndex: array [Boolean] of Integer = (0, 1);
begin
  inherited;
  if Node.Level = 0 then
  begin
     if Node.HasChildren then
        Index := ImagesIndex[Node.Expanded]
  end
  else
     Index := Node.Level + 1;
end;
}

procedure TfrmCapturar_materiales.buSeleccionClick(Sender: TObject);
var
   i   : integer;
   L   : TList;
   tmp : string;
   material,
   medida : integer;
begin
  inherited;
  L := nil;
  material := dgMedidas.DataSource.DataSet.FieldByName('R_MATERIAL').AsInteger;
  medida   := dgMedidas.DataSource.DataSet.FieldByName('R_ID_MEDIDA').AsInteger;
  try
     L := TList.Create;
     {
     for i := 0 to tlMedidas.SelectedCount - 1 do
         L.Add(tlMedidas.SelectedNodes[i]);//no se hace directamente en el grid por que tiene bug, cuando son 2 registros
     for i := 0 to (L.Count - 1) do
     begin
        tmp := TdxTreeListNode(L.Items[i]).Strings[0];
        spADD_CONTENEDOR_MEDIDAS.ParamByName('P_MATERIAL').AsInteger := material;
        spADD_CONTENEDOR_MEDIDAS.ParamByName('P_MEDIDA').AsInteger   := medida;
        spADD_CONTENEDOR_MEDIDAS.ParamByName('P_CONTENIDA').AsString := tmp;
        spADD_CONTENEDOR_MEDIDAS.ExecProc;
        spADD_CONTENEDOR_MEDIDAS.Transaction.CommitRetaining;
     end;
     }
  finally
     L.Free;
     reglas.refresh_IBQuery(qyContenedorMedidas);
     reglas.refresh_IBQuery(qyContenedor);
  end;
end;

procedure TfrmCapturar_materiales.dgContenedorELIMINARButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
begin
  inherited;
  if MessageDlg('¿ Eliminar ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes  then
  begin
     spDEL_CONTENEDOR_MED.ParamByName('P_ID').AsInteger := dgContenedor.DataSource.DataSet.FieldByName('R_ID').AsInteger;
     spDEL_CONTENEDOR_MED.ExecProc;
     spDEL_CONTENEDOR_MED.Transaction.CommitRetaining;
     reglas.refresh_IBQuery(qyContenedorMedidas);
     reglas.refresh_IBQuery(qyContenedor);
     {
     dgContenedorM.GotoFirst;
     dgContenedor.GotoFirst;
     }
  end;
end;

procedure TfrmCapturar_materiales.buCpyContenedorGClick(Sender: TObject);
begin
  inherited;
  if not(dsContenedor.DataSet.IsEmpty) then
  begin
     lvContenedor.Items.Add.Caption := 'G['+dsFuente.DataSet.FieldByName('ID').AsString+'] Material: '+dsFuente.DataSet.FieldByName('DESCRIPCION').AsString;
  end;
  if (lvContenedor.Items.Count > 0) then
     lvContenedor.Visible := true
  else
     lvContenedor.Visible := false;
end;

procedure TfrmCapturar_materiales.buCpyContenedorMClick(Sender: TObject);
begin
  inherited;
  if not(dsContenedorMedidas.DataSet.IsEmpty) then
  begin
     lvContenedor.Items.Add.Caption := 'M['+dsContenedorMedidas.DataSet.FieldByName('R_CONTENEDOR').AsString+'] Medida: '+dsMateriales_Medidas.DataSet.FieldByName('R_DESCRIPCION').AsString;
  end;
  if (lvContenedor.Items.Count > 0) then
     lvContenedor.Visible := true
  else
     lvContenedor.Visible := false;
end;

procedure TfrmCapturar_materiales.lvContenedorEndDrag(Sender,
  Target: TObject; X, Y: Integer);
begin
  inherited;
  if (Target <> nil) and borrarIconCont then
  begin
     lvContenedor.Items[lvContenedor.Items.IndexOf(lvContenedor.ItemFocused)].Delete;

     if (lvContenedor.Items.Count > 0) then
        lvContenedor.Visible := true
     else
        lvContenedor.Visible := false;

     borrarIconCont := false;
  end;
end;

procedure TfrmCapturar_materiales.dgContenedorDragDrop(Sender,
  Source: TObject; X, Y: Integer);
var
   id   : integer;
   cual : string;
begin
  inherited;
  if Source is TListView then
  begin
     cual := lvContenedor.Items[lvContenedor.Items.IndexOf(lvContenedor.ItemFocused)].Caption;
     id   := reglas.dame_id_corchete(cual);
     
     spCOPY_CONTENEDOR.ParamByName('P_FUENTE').AsInteger  := id;
     spCOPY_CONTENEDOR.ParamByName('P_DESTINO').AsInteger := dsFuente.DataSet.FieldByName('ID').AsInteger;
     spCOPY_CONTENEDOR.ExecProc;
     spCOPY_CONTENEDOR.Transaction.CommitRetaining;

     reglas.refresh_IBQuery(qyContenedorMedidas);
     reglas.refresh_IBQuery(qyContenedor);
     borrarIconCont := true;
  end;
end;

procedure TfrmCapturar_materiales.dgContenedorDragOver(Sender,
  Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
var
   c : string;
begin
  inherited;
  c := lvContenedor.Items[lvContenedor.Items.IndexOf(lvContenedor.ItemFocused)].Caption;
  Accept := (Source is TListView) and (c[1] = 'G');
end;

procedure TfrmCapturar_materiales.dgContenedorMDragOver(Sender,
  Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
var
   m : string;
begin
  inherited;
  m := lvContenedor.Items[lvContenedor.Items.IndexOf(lvContenedor.ItemFocused)].Caption;
  Accept := (Source is TListView) and (m[1] = 'M');
end;

procedure TfrmCapturar_materiales.dgContenedorMDragDrop(Sender,
  Source: TObject; X, Y: Integer);
var
   id   : integer;
   cual : string;
begin
  inherited;
  if Source is TListView then
  begin
     cual := lvContenedor.Items[lvContenedor.Items.IndexOf(lvContenedor.ItemFocused)].Caption;
     id   := reglas.dame_id_corchete(cual);
     spCOPY_CONTENEDOR_MEDIDA.ParamByName('P_CONTENEDOR').AsInteger  := id;
     spCOPY_CONTENEDOR_MEDIDA.ParamByName('P_DESTINO').AsInteger     := dsFuente.DataSet.FieldByName('ID').AsInteger;
     spCOPY_CONTENEDOR_MEDIDA.ExecProc;
     spCOPY_CONTENEDOR_MEDIDA.Transaction.CommitRetaining;

     reglas.refresh_IBQuery(qyContenedorMedidas);
     reglas.refresh_IBQuery(qyContenedor);
     borrarIconCont := true;
  end;
end;

procedure TfrmCapturar_materiales.dgContenedorMELIMINARButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
begin
  inherited;
  if MessageDlg('¿ Eliminar ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes  then
  begin
     spDEL_CONTENEDOR_MED.ParamByName('P_ID').AsInteger := dgContenedorM.DataSource.DataSet.FieldByName('R_ID').AsInteger;
     spDEL_CONTENEDOR_MED.ExecProc;
     spDEL_CONTENEDOR_MED.Transaction.CommitRetaining;
     reglas.refresh_IBQuery(qyContenedorMedidas);
     reglas.refresh_IBQuery(qyContenedor);
     {
     dgContenedorM.GotoFirst;
     dgContenedor.GotoFirst;
     }
  end;

end;

procedure TfrmCapturar_materiales.dgColoresMMPButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  try
     frmMMP := TfrmMMP.Create(Application);
     frmMMP.CBARRAS := dsMedidasColores.DataSet.FieldByName('R_CODIGO_BARRAS').AsString;
     frmMMP.MINIMA  := dsMedidasColores.DataSet.FieldByName('R_CANTIDAD_MINIMA').AsFloat;
     frmMMP.MAXIMA  := dsMedidasColores.DataSet.FieldByName('R_CANTIDAD_MAXIMA').AsFloat;
     frmMMP.P_ORDEN := dsMedidasColores.DataSet.FieldByName('R_PUNTO_DE_REORDEN').AsFloat;
     if frmMMP.ShowModal = mrOk then
     begin
        spADD_MAT_MEDIDAS.ParamByName('P_ID').AsInteger           := dsMedidasColores.DataSet.FieldByName('R_ID').AsInteger;
        spADD_MAT_MEDIDAS.ParamByName('P_MATERIAL').AsInteger     := dsFuente.DataSet.FieldByName('ID').AsInteger;
        spADD_MAT_MEDIDAS.ParamByName('P_MEDIDA').AsInteger       := dsMateriales_Medidas.DataSet.FieldByName('R_ID_MEDIDA').AsInteger;
        spADD_MAT_MEDIDAS.ParamByName('P_COLOR').AsInteger        := dsMedidasColores.DataSet.FieldByName('R_COLOR').AsInteger;
        spADD_MAT_MEDIDAS.ParamByName('P_CODIGO_BARRAS').AsString := frmMMP.CBARRAS;
        spADD_MAT_MEDIDAS.ParamByName('P_MINIMO').AsFloat         := frmMMP.MINIMA;
        spADD_MAT_MEDIDAS.ParamByName('P_MAXIMO').AsFloat         := frmMMP.MAXIMA;
        spADD_MAT_MEDIDAS.ParamByName('P_PUNTO').AsFloat          := frmMMP.P_ORDEN;
        spADD_MAT_MEDIDAS.ExecProc;
        spADD_MAT_MEDIDAS.Transaction.CommitRetaining;
        reglas.abrir_IBQuery_seek('R_ID', spADD_MAT_MEDIDAS.ParamByName('R_ID').AsInteger, qyMedidasColores);
     end;
  finally
     frmMMP.Free;
  end;
end;

procedure TfrmCapturar_materiales.dgMedidasMMPButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  try
     frmMMP := TfrmMMP.Create(Application);
     frmMMP.CBARRAS := dsMedidasColores.DataSet.FieldByName('R_CODIGO_BARRAS').AsString;
     frmMMP.MINIMA  := dsMedidasColores.DataSet.FieldByName('R_CANTIDAD_MINIMA').AsFloat;
     frmMMP.MAXIMA  := dsMedidasColores.DataSet.FieldByName('R_CANTIDAD_MAXIMA').AsFloat;
     frmMMP.P_ORDEN := dsMedidasColores.DataSet.FieldByName('R_PUNTO_DE_REORDEN').AsFloat;
     if frmMMP.ShowModal = mrOk then
     begin
        spADD_MAT_MEDIDAS.ParamByName('P_ID').AsInteger           := dsMedidasColores.DataSet.FieldByName('R_ID').AsInteger;
        spADD_MAT_MEDIDAS.ParamByName('P_MATERIAL').AsInteger     := dsFuente.DataSet.FieldByName('ID').AsInteger;
        spADD_MAT_MEDIDAS.ParamByName('P_MEDIDA').AsInteger       := dsMateriales_Medidas.DataSet.FieldByName('R_ID_MEDIDA').AsInteger;
        spADD_MAT_MEDIDAS.ParamByName('P_COLOR').AsInteger        := 0;
        spADD_MAT_MEDIDAS.ParamByName('P_CODIGO_BARRAS').AsString := frmMMP.CBARRAS;
        spADD_MAT_MEDIDAS.ParamByName('P_MINIMO').AsFloat         := frmMMP.MINIMA;
        spADD_MAT_MEDIDAS.ParamByName('P_MAXIMO').AsFloat         := frmMMP.MAXIMA;
        spADD_MAT_MEDIDAS.ParamByName('P_PUNTO').AsFloat          := frmMMP.P_ORDEN;
        spADD_MAT_MEDIDAS.ExecProc;
        spADD_MAT_MEDIDAS.Transaction.CommitRetaining;
        reglas.abrir_IBQuery_seek('R_ID', spADD_MAT_MEDIDAS.ParamByName('R_ID').AsInteger, qyMedidasColores);
     end;
  finally
     frmMMP.Free;
  end;
end;

procedure TfrmCapturar_materiales.ibCopiarClick(Sender: TObject);
begin
  inherited;
  if MessageDlg('¿ Copiar registro ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes  then
  begin
     spCOPIAR_MATERIAL.ParamByName('P_ID').AsInteger := dsFuente.DataSet.FieldByName('ID').AsInteger;
     spCOPIAR_MATERIAL.ExecProc;
     spCOPIAR_MATERIAL.Transaction.CommitRetaining;
     ShowMessage('Nuevo material con id = ' + spCOPIAR_MATERIAL.ParamByName('R_ID').AsString  + ', CLAVE ' + dsFuente.DataSet.FieldByName('CLAVE').AsString);
  end;
end;

procedure TfrmCapturar_materiales.buCostosClick(Sender: TObject);
begin
  inherited;
   try
      frmMaterial_Costos          := TfrmMaterial_Costos.Create(Application);
      frmMaterial_Costos.MATERIAL := dsFuente.DataSet.FieldByName('ID').AsInteger;
      frmMaterial_Costos.ShowModal;
   finally
      frmMaterial_Costos.Release;
   end;
end;

procedure TfrmCapturar_materiales.habilitarCheckInventario;
begin
  cbConsolidado.Enabled := false;
  cbSerie.Enabled       := false;
  cbLote.Enabled        := false;
  if (cbAfectaInv.Checked) then
  begin
     cbConsolidado.Enabled := true;
     cbSerie.Enabled       := true;
     cbLote.Enabled        := true;
  end;
end;

procedure TfrmCapturar_materiales.cbAfectaInvChange(Sender: TObject);
begin
  inherited;
  habilitarCheckInventario;
  if not(cbAfectaInv.Checked) then
  begin
     dsFuente.DataSet.FieldByName('CONSOLIDADO').AsString := 'No';
     dsFuente.DataSet.FieldByName('NUM_SERIE').AsString   := 'No';
     dsFuente.DataSet.FieldByName('LOTE').AsString        := 'No';
  end;
end;

procedure TfrmCapturar_materiales.buZebraClick(Sender: TObject);
begin
  inherited;
  try
     frmGenerar             := TfrmGenerar.Create(Application);
     frmGenerar.FORMATO     := fZebra;
     frmGenerar.ALMACEN     := rgTitulos.Items.Strings[rgTitulos.ItemIndex];
     frmGenerar.ARTICULO    := dsFuente.DataSet.FieldByName('CLAVE').AsString;
     frmGenerar.DESCRIPCION := dsFuente.DataSet.FieldByName('DESCRIPCION').AsString;
     frmGenerar.CORTA       := dsFuente.DataSet.FieldByName('POS_DESC_CORTA').AsString;
     frmGenerar.CBARRAS     := dsFuente.DataSet.FieldByName('CODIGO_BARRAS').AsString;
     frmGenerar.PRECIO      := FormatFloat('$ ###,###,##0.00',dsExistencias.DataSet.FieldByName('R_PRECIO_MAXIMO').AsFloat);
     frmGenerar.ShowModal;
  finally
     frmGenerar.Release;
  end;
end;

procedure TfrmCapturar_materiales.buActCCostosClick(Sender: TObject);
begin
  inherited;
  reglas.refresh_IBQuery(qyCCostos);
end;

procedure TfrmCapturar_materiales.buLimCCostosClick(Sender: TObject);
begin
  inherited;
  dsFuente.DataSet.FieldByName('CCOSTOS').AsVariant := 0;
end;

procedure TfrmCapturar_materiales.cbCCostosChange(Sender: TObject);
begin
  inherited;
  if (dsFuente.DataSet.State in [dsEdit, dsInsert]) then
  begin
     if (dsCCostos.DataSet.FieldByName('FAMILIA').AsInteger <> 0) then
     begin
        dsFuente.DataSet.FieldByName('LINEA').AsInteger := dsCCostos.DataSet.FieldByName('FAMILIA').AsInteger;
     end;
  end;
end;

procedure TfrmCapturar_materiales.dgUnidadesColumn4ButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
var
   id : integer;
begin
  inherited;
  id := dsUnidadesSecundarias.DataSet.FieldByName('R_ID').AsInteger;
  spM_UNIDAD_PIVOTE.ParamByName('P_ID').AsInteger := id;
  spM_UNIDAD_PIVOTE.ExecProc;

  reglas.abrir_IBQuery_seek('R_ID', id, qyUnidadesSecundarias);
end;

procedure TfrmCapturar_materiales.dnRecetaClick(Sender: TObject;
  Button: TNavigateBtn);
begin
  inherited;
  fijarBotonesR(false);
end;

procedure TfrmCapturar_materiales.buActCtas1Click(Sender: TObject);
begin
  inherited;
  reglas.refresh_IBQuery(qyCuentas);
end;

procedure TfrmCapturar_materiales.buActCtas2Click(Sender: TObject);
begin
  inherited;
  reglas.refresh_IBQuery(qyCuentas);
end;

procedure TfrmCapturar_materiales.buLimCtas1Click(Sender: TObject);
begin
  inherited;
  dsFuente.DataSet.FieldByName('CUENTA1').AsVariant := 0;
end;

procedure TfrmCapturar_materiales.buLimCtas2Click(Sender: TObject);
begin
  inherited;
  dsFuente.DataSet.FieldByName('CUENTA2').AsVariant := 0;
end;

end.
