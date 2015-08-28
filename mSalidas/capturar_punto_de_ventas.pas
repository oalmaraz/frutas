unit capturar_punto_de_ventas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UfrmFrameMaterial, Grids, DBGrids, Mask,  IBStoredProc,
  IBTable, Db, Menus, ImgList,  IBCustomDataSet, IBQuery,
  StdCtrls, DBCtrls, ExtCtrls, jpeg,
  Buttons, System.ImageList;

type
  TImpresion = record
    impresora    : string;
    escImpresora : string;
    idImpresora  : integer;
    cajon        : string;
    puerto       : string;
    caracteres   : string;
    cutter       : string;
    autoCutter   : string;
  end;

  TImpresionComun = record
    impresiones : integer;
    cuantas     : integer;
    modo        : string;
  end;

  TfrmCapturar_punto_de_ventas = class(TForm)
    qyMsg: TIBQuery;
    qyMsgR_SALDO: TFloatField;
    qyMsgR_LIMITE: TFloatField;
    qyMsgR_TOTAL_VENCIDO: TFloatField;
    qyMsgR_ALMACEN_VENCIDO: TFloatField;
    qyMsgR_MSG_LIMITE: TIBStringField;
    qyMsgR_MSG_VENCIDO: TIBStringField;
    ilFacturas: TImageList;
    qyEncabezado: TIBQuery;
    qyEncabezadoR_ID: TIntegerField;
    qyEncabezadoR_FOLIO_DE_VENTA: TIntegerField;
    qyEncabezadoR_SUBTOTAL: TFloatField;
    qyEncabezadoR_IVA: TFloatField;
    qyEncabezadoR_IEPS: TFloatField;
    qyEncabezadoR_IMPUESTO1: TFloatField;
    qyEncabezadoR_IMPUESTO2: TFloatField;
    qyEncabezadoR_TOTAL: TFloatField;
    qyEncabezadoR_DESCUENTO_GLOBAL_PORC: TFloatField;
    qyEncabezadoR_DESCUENTO_CANTIDAD_GLOBAL: TFloatField;
    qyEncabezadoR_DESCUENTO_CANTIDAD_PARCIAL: TFloatField;
    qyEncabezadoR_GRANTOTAL: TFloatField;
    qyEncabezadoR_ESTATUS: TIBStringField;
    qyEncabezadoR_CONDICION_COMERCIAL: TIntegerField;
    qyEncabezadoR_CAMBIO_ENTREGADO: TFloatField;
    qyEncabezadoR_TOTAL_REF_PAGOS: TFloatField;
    qyEncabezadoR_SALDO: TFloatField;
    qyEncabezadoR_CLIENTE: TIntegerField;
    qyEncabezadoR_EXTENSION: TIntegerField;
    qyEncabezadoR_MONEDA: TIntegerField;
    qyEncabezadoR_MONEDA_CLAVE: TIBStringField;
    qyEncabezadoR_MONEDA_DESCRIPCION: TIBStringField;
    qyEncabezadoR_NOMBRE_CLIENTE: TIBStringField;
    qyEncabezadoR_NOMBRE_EXTENSION: TIBStringField;
    qyEncabezadoR_FOLIO_HISTORICO: TIntegerField;
    dsEncabezado: TDataSource;
    dsPartidas: TDataSource;
    qyPartidas: TIBQuery;
    qyPartidasR_ID: TIntegerField;
    qyPartidasR_PUNTO_DE_VENTA: TIntegerField;
    qyPartidasR_MATERIAL: TIntegerField;
    qyPartidasR_CLAVE: TIBStringField;
    qyPartidasR_DESCRIPCION: TIBStringField;
    qyPartidasR_UNIDAD: TIntegerField;
    qyPartidasR_DESCRIPCION_UNIDAD: TIBStringField;
    qyPartidasR_CANTIDAD: TFloatField;
    qyPartidasR_PRECIO: TFloatField;
    qyPartidasR_SUBTOTAL: TFloatField;
    qyPartidasR_IVA: TFloatField;
    qyPartidasR_IMPUESTO1: TFloatField;
    qyPartidasR_IEPS: TFloatField;
    qyPartidasR_IMPUESTO2: TFloatField;
    qyPartidasR_TOTAL: TFloatField;
    qyPartidasR_DESCUENTO_PORC: TFloatField;
    qyPartidasR_DP: TFloatField;
    qyPartidasR_DG: TFloatField;
    qyPartidasR_GT: TFloatField;
    qyPartidasR_ESTATUS: TIBStringField;
    qyPartidasR_CAJAS: TIntegerField;
    qyPartidasR_UNIDAD_CLAVE: TIBStringField;
    qyPartidasR_ROWS: TIntegerField;
    pmBuscarMaterial: TPopupMenu;
    miBusquedaMaterial: TMenuItem;
    pmBuscarExtension: TPopupMenu;
    miBusquedaExtension: TMenuItem;
    miTodas: TMenuItem;
    pmBuscarCliente: TPopupMenu;
    miBusqueda: TMenuItem;
    pmFunciones: TPopupMenu;
    itemF3: TMenuItem;
    itemF4: TMenuItem;
    itemF7: TMenuItem;
    itemF8: TMenuItem;
    itemF9: TMenuItem;
    itemF10: TMenuItem;
    itemF11: TMenuItem;
    itemF12: TMenuItem;
    qyVer_Datos_Cajero: TIBQuery;
    qyVer_Datos_CajeroR_ID: TIntegerField;
    qyVer_Datos_CajeroR_NOMBRE: TIBStringField;
    qyVer_Datos_CajeroR_ALMACEN: TIntegerField;
    qyVer_Datos_CajeroR_ALMACEN_CLAVE: TIBStringField;
    qyVer_Datos_CajeroR_ALMACEN_OBSERVACIONES: TBlobField;
    qyVer_Datos_CajeroR_USUARIO: TIntegerField;
    qyVer_Datos_CajeroR_NOMBRE_USUARIO: TIBStringField;
    qyVer_Datos_CajeroR_BAJA: TIBStringField;
    qyVer_Datos_CajeroR_ESTATUS: TIBStringField;
    qyVer_Datos_CajeroR_REGISTROS: TIntegerField;
    qyVer_Datos_CajeroR_MODULO_FUNCION: TIntegerField;
    dsVer_Datos_Cajero: TDataSource;
    qyVer_Unidades_Material: TIBQuery;
    qyVer_Unidades_MaterialR_ID: TIntegerField;
    qyVer_Unidades_MaterialR_MATERIAL: TIntegerField;
    qyVer_Unidades_MaterialR_UNIDAD: TIntegerField;
    qyVer_Unidades_MaterialR_CLAVE: TIBStringField;
    qyVer_Unidades_MaterialR_DESCRIPCION: TIBStringField;
    qyVer_Unidades_MaterialR_FACTOR: TFloatField;
    dsVer_Unidades_Material: TDataSource;
    TSujetos_Usuarios: TIBTable;
    TSujetos_UsuariosID: TIntegerField;
    TSujetos_UsuariosSUJETO: TIntegerField;
    TSujetos_UsuariosUSUARIO: TIBStringField;
    TSujetos_UsuariosBAJA: TIBStringField;
    TSujetos_UsuariosNIVEL: TIntegerField;
    TMonedas: TIBTable;
    dsMonedas: TDataSource;
    spAFECTA_PUNTO_DE_VTA_TOUCHSCREEN: TIBStoredProc;
    spADD_PVTA_ENC: TIBStoredProc;
    spTOTALES_PUNTO_DE_VENTA: TIBStoredProc;
    qyCalculoImpuestos: TIBQuery;
    qyIBXMateriales: TIBQuery;
    qyIBXMaterialesID: TIntegerField;
    qyIBXMaterialesCLAVE: TIBStringField;
    qyIBXMaterialesDESCRIPCION: TIBStringField;
    qyIBXMaterialesUNIDAD_BASE: TIntegerField;
    qyIBXMaterialesLINEA: TIntegerField;
    qyIBXMaterialesUNIDADES_COMPRADAS: TFloatField;
    qyIBXMaterialesUNIDADES_VENDIDAS: TFloatField;
    qyIBXMaterialesUNIDADES_PRODUCIDAS: TFloatField;
    qyIBXMaterialesLARGO: TFloatField;
    qyIBXMaterialesANCHO: TFloatField;
    qyIBXMaterialesALTO: TFloatField;
    qyIBXMaterialesUNIDAD_LAA: TIntegerField;
    qyIBXMaterialesLOTE: TIBStringField;
    qyIBXMaterialesNUM_SERIE: TIBStringField;
    qyIBXMaterialesCONSOLIDADO: TIBStringField;
    qyIBXMaterialesCOSTO_PROMEDIO: TIBStringField;
    qyIBXMaterialesCOSTO_PEPS: TIBStringField;
    qyIBXMaterialesCOSTO_UEPS: TIBStringField;
    qyIBXMaterialesFECHA_CERO_EXIST: TDateTimeField;
    qyIBXMaterialesFECHA_ULTIMA_COMPRA: TDateTimeField;
    qyIBXMaterialesCODIGO_BARRAS: TIBStringField;
    qyIBXMaterialesIVA_PORC: TFloatField;
    qyIBXMaterialesIEPS_PORC: TFloatField;
    qyIBXMaterialesIMPUESTO_1_PORC: TFloatField;
    qyIBXMaterialesIMPUESTO_2_PORC: TFloatField;
    qyIBXMaterialesOBSERVACIONES: TBlobField;
    qyIBXMaterialesFOTO: TBlobField;
    qyIBXMaterialesDIAS_DE_VIGENCIA: TIntegerField;
    qyIBXMaterialesCOSTO_ULT_COMPRA: TFloatField;
    qyIBXMaterialesNUM_ETIQUETAS: TIntegerField;
    qyIBXMaterialesACTIVO_FIJO: TIBStringField;
    qyIBXMaterialesCALIDAD: TIntegerField;
    qyIBXMaterialesCANTIDAD_MINIMA: TFloatField;
    qyIBXMaterialesCANTIDAD_MAXIMA: TFloatField;
    qyIBXMaterialesPUNTO_DE_REORDEN: TFloatField;
    qyDescuentos: TIBQuery;
    spPVTA_MONTO: TIBQuery;
    dsMuestraCredito: TDataSource;
    spDESCUENTO_GLOBAL_PVTA: TIBStoredProc;
    spAFECTA_PUNTO_DE_VENTA: TIBStoredProc;
    qyMuestraCredito: TIBQuery;
    qyMuestraCreditoR_LIMITE_CREDITO: TFloatField;
    qyMuestraCreditoR_LIMITE_DISPONIBLE: TFloatField;
    qyMuestraCreditoR_TOTAL_VENCIDO: TFloatField;
    qyMuestraCreditoR_DISPONIBLE: TFloatField;
    dsPVtaCredito: TDataSource;
    spADD_CALIDAD: TIBStoredProc;
    spACTULIZA_ENCABEZADO_VENTA: TIBStoredProc;
    spPVTA_CREDITO: TIBQuery;
    spPVTA_CREDITOR_LIMITE_CREDITO: TFloatField;
    spPVTA_CREDITOR_LIMITE_DISPONIBLE: TFloatField;
    qyPrecio_X: TIBQuery;
    spDEL_PARTIDA_PVTAS: TIBStoredProc;
    qyID: TIBQuery;
    qyIDR_ID: TIntegerField;
    qyBusqueda: TIBQuery;
    qyBusquedaR_ID: TIntegerField;
    qyBusquedaR_CLAVE: TIBStringField;
    qyBusquedaR_NOMBRE: TIBStringField;
    qyBusquedaR_RAZON_SOCIAL: TIBStringField;
    qyBusquedaR_CLASIFICACION: TIBStringField;
    qyBusquedaR_TELEFONO: TIBStringField;
    qyClientes: TIBQuery;
    dsDatosEnc: TDataSource;
    qyDatosEnc: TIBQuery;
    qyDatosEncR_CLIENTE: TIntegerField;
    qyDatosEncR_CLIENTE_CLAVE: TIBStringField;
    qyDatosEncR_CLIENTE_NOMBRE: TIBStringField;
    qyDatosEncR_CLIENTE_OBSERVACIONES: TBlobField;
    qyDatosEncR_CLIENTE_FOTO: TBlobField;
    qyDatosEncR_CLIENTE_FIRMA: TBlobField;
    qyDatosEncR_CLIENTE_ESTATUS: TIBStringField;
    qyDatosEncR_CLIENTE_TELEFONO: TIBStringField;
    qyDatosEncR_CLIENTE_DOMICILIO: TIBStringField;
    qyDatosEncR_EXTENSION: TIntegerField;
    qyDatosEncR_EXTENSION_CLAVE: TIBStringField;
    qyDatosEncR_EXTENSION_NOMBRE: TIBStringField;
    qyDatosEncR_EXTENSION_FOTO: TBlobField;
    qyDatosEncR_EXTENSION_FIRMA: TBlobField;
    paEncabezado: TPanel;
    Label24: TLabel;
    Shape3: TShape;
    Shape4: TShape;
    deUsuario: TDBEdit;
    Label12: TLabel;
    Shape5: TShape;
    Shape6: TShape;
    deFHistorico: TDBEdit;
    Label4: TLabel;
    Shape9: TShape;
    Shape10: TShape;
    edFecha: TEdit;
    deFolio: TDBEdit;
    Shape15: TShape;
    Label1: TLabel;
    Shape14: TShape;
    deCaja: TDBEdit;
    Shape8: TShape;
    Shape7: TShape;
    Label3: TLabel;
    deAlmacen: TDBEdit;
    Shape2: TShape;
    Shape1: TShape;
    Label10: TLabel;
    Label32: TLabel;
    Shape11: TShape;
    Shape12: TShape;
    Label39: TLabel;
    deGlobal: TDBEdit;
    Label34: TLabel;
    Shape13: TShape;
    Shape16: TShape;
    cbMonedas: TDBLookupComboBox;
    deTotal: TDBEdit;
    deTelefono: TDBEdit;
    Label27: TLabel;
    deNombre: TDBEdit;
    Label15: TLabel;
    edCliente: TEdit;
    Label2: TLabel;
    laExtension: TLabel;
    edExtension: TEdit;
    deDomicilio: TDBEdit;
    Label26: TLabel;
    Label29: TLabel;
    deObservaciones: TMemo;
    Label31: TLabel;
    deDisponible: TDBEdit;
    deVencido: TDBEdit;
    Label37: TLabel;
    deCDisponible: TDBEdit;
    Label36: TLabel;
    deLCredito: TDBEdit;
    Label35: TLabel;
    imBottom: TImage;
    paFoto: TPanel;
    imFoto: TImage;
    paFirma: TPanel;
    imFirma: TImage;
    paCaptura: TPanel;
    Label13: TLabel;
    buVentas: TBitBtn;
    buF8: TBitBtn;
    buF9: TBitBtn;
    buF10: TBitBtn;
    buF11: TBitBtn;
    buF7: TBitBtn;
    buF12: TBitBtn;
    buReImprimir: TBitBtn;
    buCorte: TBitBtn;
    buF4: TBitBtn;
    buF3: TBitBtn;
    dgPartidas: TDBGrid;
    paVentasSinCerrar: TPanel;
    FashionPanel1: TPanel;
    Splitter1: TSplitter;
    buF12Imp: TBitBtn;
    MarcoMateriales1: TMarcoMateriales;
    edVendedor: TEdit;
    spADD_PARTIDA_PVTA: TIBStoredProc;
    imBack: TImage;
    qyPartidasR_IVA_PORC: TFloatField;
    qyPartidasR_IEPS_PORC: TFloatField;
    qyPartidasR_IMPUESTO1_PORC: TFloatField;
    qyPartidasR_IMPUESTO2_PORC: TFloatField;
    qyPartidasR_PRECIO_SIN_IMPUESTOS: TFloatField;
    qyPartidasR_MEDIDA: TIntegerField;
    qyPartidasR_COLOR: TIntegerField;
    qyPartidasR_VENDEDOR: TIntegerField;
    qyPartidasR_VENDEDOR_NOMBRE: TIBStringField;
    buGuardar: TBitBtn;
    Shape17: TShape;
    spADD_PV_OFERTA: TIBStoredProc;
    qyPartidasR_HAY_OFERTA: TIBStringField;
    qyPartidasR_OFERTA_PORC: TFloatField;
    qyEncabezadoR_ALMACEN: TIntegerField;
    qyPartidasR_HAY_EXISTENCIA: TIBStringField;
    qySinExistencia: TIBQuery;
    qySinExistenciaR_CUANTOS: TIntegerField;
    dxDBGrid1: TDBGrid;
    qyEncabezadoR_EXTENSION_C: TIBStringField;
    qyDatosEncR_EXTENSION_DOMICILIO: TIBStringField;
    qyDatosEncR_EXTENSION_TELEFONO: TIBStringField;
    spEstatus: TIBStoredProc;
    qyEstatus: TIBQuery;
    dsEstatus: TDataSource;
    qyPartidasR_SERIE: TIBStringField;
    qyVer_Datos_CajeroR_EMPRESA_NOMBRE: TIBStringField;
    qyVer_Datos_CajeroR_FECHA_SERVIDOR: TDateTimeField;
    qyVer_Datos_CajeroR_NIVEL: TIntegerField;
    qyVer_Datos_CajeroR_ALMACEN_NOMBRE: TIBStringField;
    qyVer_Datos_CajeroR_MONEDA: TIntegerField;
    qyVer_Datos_CajeroR_MONEDA_C: TIBStringField;
    qyVer_Datos_CajeroR_MONEDA_D: TIBStringField;
    qyVer_Datos_CajeroR_DIFERENTES: TIBStringField;
    itemF5: TMenuItem;
    buCliente: TBitBtn;
    buF5: TBitBtn;
    buPedidos: TBitBtn;
    buF6: TBitBtn;
    itemF6: TMenuItem;
    spT_MONTO_MSJ_COLECTAS: TIBStoredProc;
    qyPartidasR_COLOR_N: TIBStringField;
    qyPartidasR_MEDIDA_D: TIBStringField;
    spC_POS_FP: TIBStoredProc;
    itemF2: TMenuItem;
    buAbrirCajon: TBitBtn;
    qyPartidasR_PINTAR: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure imFotoDblClick(Sender: TObject);
    procedure imFirmaDblClick(Sender: TObject);
    procedure dsEncabezadoDataChange(Sender: TObject; Field: TField);
    procedure FormActivate(Sender: TObject);
    procedure edClienteKeyPress(Sender: TObject; var Key: Char);
    procedure edClienteButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure buF7Click(Sender: TObject);
    procedure itemF7Click(Sender: TObject);
    procedure buF10Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure MarcoMateriales1edMaterialButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure buF9Click(Sender: TObject);
    procedure edVendedorButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure edVendedorKeyPress(Sender: TObject; var Key: Char);
    procedure itemF9Click(Sender: TObject);
    procedure itemF10Click(Sender: TObject);
    procedure itemF11Click(Sender: TObject);
    procedure itemF12Click(Sender: TObject);
    procedure itemF8Click(Sender: TObject);
    procedure itemF3Click(Sender: TObject);
    procedure itemF4Click(Sender: TObject);
    procedure buF8Click(Sender: TObject);
    procedure buGuardarClick(Sender: TObject);
    procedure buF11Click(Sender: TObject);
    procedure buF12ImpClick(Sender: TObject);
    procedure buF12Click(Sender: TObject);
    procedure buReImprimirClick(Sender: TObject);
    procedure buVentasClick(Sender: TObject);
    procedure buCorteClick(Sender: TObject);
    procedure buF3Click(Sender: TObject);
    procedure buF4Click(Sender: TObject);
    procedure edExtensionButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure edExtensionKeyPress(Sender: TObject; var Key: Char);
    procedure deDisponibleButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure deGlobalButtonClick(Sender: TObject; AbsoluteIndex: Integer);
    procedure deDisponibleKeyPress(Sender: TObject; var Key: Char);
    procedure deGlobalKeyPress(Sender: TObject; var Key: Char);
    procedure itemF5Click(Sender: TObject);
    procedure buClienteClick(Sender: TObject);
    procedure buF5Click(Sender: TObject);
    procedure buPedidosClick(Sender: TObject);
    procedure itemF6Click(Sender: TObject);
    procedure buF6Click(Sender: TObject);
    procedure buAbrirCajonClick(Sender: TObject);
  private
     edicionP        : boolean;
     msgLimite       : boolean;
     msgVencidos     : boolean;
     touchScreen     : boolean;
     clienteEfectivo : integer;
     awrAbrirCajon   : boolean;

     procedure guardarEncabezado;
     procedure verificarSaldos;
     procedure LoadImagenes;
     procedure estatusInternoCapturado;
     procedure loadImpresora;
  protected
     awrNivel              : integer;
     verificar             : boolean;
     awrAutNeg             : boolean;
     awrSuspendido         : boolean;
     vendedor              : integer;
     vendedorNombre        : string;
     awrVendedor           : integer;
     awrActivarMsjColectas : Boolean;
     awrMontoMsjColectas   : double;
     awrF12Imp             : string;
     awrHeightExtra        : integer;
     awrAceptaDesdeLP      : boolean;
     awrBuscaDesdeLP       : string;
     //Impresiones
     print1          : TImpresion;

     procedure fijarBotonesP;overload;
     procedure fijarBotonesP(valor : boolean);overload;
     procedure buscaCliente;
     procedure buscaExtension;virtual;
     procedure datos_punto_de_venta;
     procedure leerConfiguracion;
     procedure guardarConfiguracion;
     function abrirCajon : boolean;
     procedure commandoAbrirCajon;
  public
    { Public declarations }
  end;

var
  frmCapturar_punto_de_ventas: TfrmCapturar_punto_de_ventas;

implementation

uses
  IniFiles, IBModulo, IBData, reglas_de_negocios, UfrmImagen, autorizacion,
  UfrmSeleccionarUsuario, UPRN_0037_PVTAS,
  capturar_punto_de_ventas_pagos, PRN_0008_Ventas,
  capturar_punto_de_venta_cancelacion, capturar_devoluciones, PRN_CORTE_CAJAS_PV,
  UfrmSeleccionarExtension, UfrmSeleccionarCliente, UfrmAcceso,
  UfrmConsultaPrecios, AltaRapidaCliente, UfrmSeleccionarPedidoParaPOS,
  UfrmColectas, UfrmF12Imp;

{$R *.DFM}

procedure TfrmCapturar_punto_de_ventas.loadImpresora;
var
   iniFile        : TIniFile;
   //grupo 1
   v_ImpresoraNom1 : string;
   v_ImpresoraVal1 : string;
   v_EscModel1     : string;
   v_Cajon1        : string;
   v_Puerto1       : string;
   v_Caracteres1   : string;
   v_Cutter1       : string;
   v_AutoCutter1   : string;
begin
   iniFile := TIniFile.Create(ChangeFileExt(Application.ExeName,'.INI'));
   try
      v_ImpresoraNom1 := iniFile.ReadString('PVENTA','ImpresoraNom1','');
      v_ImpresoraVal1 := iniFile.ReadString('PVENTA','ImpresoraVal1','');
      v_EscModel1     := iniFile.ReadString('PVENTA','EscModel1',    '');
      v_Cajon1        := iniFile.ReadString('PVENTA','Cajon1',       '');
      v_Puerto1       := iniFile.ReadString('PVENTA','Puerto1',      '');
      v_Caracteres1   := iniFile.ReadString('PVENTA','Caracteres1',  '');
      v_Cutter1       := iniFile.ReadString('PVENTA','Cutter1',      '');
      v_AutoCutter1   := iniFile.ReadString('PVENTA','AutoCutter1',  '');

      //cargar valores en print1
      print1.impresora       := v_ImpresoraNom1;
      print1.escImpresora    := v_EscModel1;
      print1.idImpresora     := StrtoInt(v_ImpresoraVal1);
      print1.cajon           := v_Cajon1;
      print1.puerto          := v_Puerto1;
      print1.caracteres      := v_Caracteres1;
      print1.cutter          := v_Cutter1;
      print1.autoCutter      := v_AutoCutter1;
   finally
      iniFile.Free;
   end;
end;

procedure TfrmCapturar_punto_de_ventas.commandoAbrirCajon;
begin
   if print1.impresora <> '' then
   begin
      {
      tPrinter.abrir_puerto;

      if print1.puerto = 'LPT1' then
         tPrinter.PrinterPort := Lpt1
      else
      if print1.puerto = 'LPT2' then
         tPrinter.PrinterPort := Lpt2;

      tPrinter.CodeOpenDrawer := print1.caracteres;
      tPrinter.OpenDrawer;
      tPrinter.cerrar_puerto;
      }
   end;
end;

function TfrmCapturar_punto_de_ventas.abrirCajon : boolean;
var
   aceptar : boolean;
begin
   frmAcceso := TfrmAcceso.Create(Application);
   try
      frmAcceso.Nivel  := 5;
      frmAcceso.Status := 'Abrir Cajon';
      frmAcceso.ShowModal;
      aceptar := frmAcceso.Rsp;
   finally
      frmAcceso.Free;
   end;

   if aceptar then
   begin
      commandoAbrirCajon;
   end;   

   result := aceptar;
end;

procedure TfrmCapturar_punto_de_ventas.leerConfiguracion;
var
   iniFile       : TIniFile;
begin
   iniFile   := TIniFile.Create(ChangeFileExt(Application.ExeName,'.INI'));
   try
      awrF12Imp := iniFile.ReadString('F12Imp','Imprimir','');
   finally
      iniFile.Free;
   end;
end;

procedure TfrmCapturar_punto_de_ventas.guardarConfiguracion;
var
   iniFile       : TIniFile;
begin
   iniFile := TIniFile.Create(ChangeFileExt(Application.ExeName,'.INI'));
   try
      iniFile.WriteString('F12Imp','Imprimir',awrF12Imp);
   finally
      iniFile.Free;
   end;
end;

procedure TfrmCapturar_punto_de_ventas.buscaExtension;
begin
   //para inicializar valores en clase derivada.
end;

procedure TfrmCapturar_punto_de_ventas.estatusInternoCapturado;
var
   ejecutar   : boolean;
   vNivel     : integer;
   vAutorizar : boolean;
   vEstatus   : string;
   vStoreProc : string;
begin
   ejecutar := TRUE;

   qyEstatus.Close;
   qyEstatus.ParamByName('P_ESTATUS').AsString := 'Sin Afectar';
   qyEstatus.Open;

   vAutorizar := qyEstatus.FieldByName('R_AUTORIZACION').AsString = 'Si';
   vNivel     := qyEstatus.FieldByName('R_NIVEL').AsInteger;
   vEstatus   := qyEstatus.FieldByName('R_ESTATUS').AsString;
   vStoreProc := qyEstatus.FieldByName('R_STOREPROC').AsString;

   if (vAutorizar) and (vNivel > reglas.dameUsuarioNivel) then
   begin
      frmAcceso := TfrmAcceso.Create(Application);
      try
         frmAcceso.Nivel  := vNivel;
         frmAcceso.Status := vEstatus;
         frmAcceso.ShowModal;
         ejecutar := frmAcceso.Rsp;
      finally
         frmAcceso.Free;
      end;
   end;

  if ejecutar then
  begin
     spEstatus.Params.Clear;
     spEstatus.StoredProcName := vStoreProc;
     spEstatus.Params.CreateParam(ftInteger,'P_VENTA',ptInput);
     spEstatus.ParamByName('P_VENTA').AsInteger := dsEncabezado.DataSet.FieldByName('R_ID').AsInteger;
     spEstatus.ExecProc;
     spEstatus.Transaction.CommitRetaining;
  end;
end;

procedure TfrmCapturar_punto_de_ventas.LoadImagenes;
begin
   if dsDatosEnc.DataSet.FieldByName('R_EXTENSION').AsInteger = 0 then
   begin
      reglas.imagenVer(dsDatosEnc, 'R_CLIENTE_FOTO', imFoto);
      reglas.imagenVer(dsDatosEnc, 'R_CLIENTE_FIRMA', imFirma);
   end
   else
      begin
         reglas.imagenVer(dsDatosEnc, 'R_EXTENSION_FOTO', imFoto);
         reglas.imagenVer(dsDatosEnc, 'R_EXTENSION_FIRMA', imFirma);
      end;
end;

procedure TfrmCapturar_punto_de_ventas.guardarEncabezado;
begin
   spACTULIZA_ENCABEZADO_VENTA.ParamByName('P_VENTA').AsInteger     := dsEncabezado.DataSet.FieldByName('R_ID').AsInteger;
   spACTULIZA_ENCABEZADO_VENTA.ParamByName('P_CLIENTE').AsInteger   := dsDatosEnc.DataSet.FieldByName('R_CLIENTE').AsInteger;
   spACTULIZA_ENCABEZADO_VENTA.ParamByName('P_EXTENSION').AsInteger := dsDatosEnc.DataSet.FieldByName('R_EXTENSION').AsInteger;
   spACTULIZA_ENCABEZADO_VENTA.ParamByName('P_MONEDA').AsInteger    := cbMonedas.KeyValue;
   spACTULIZA_ENCABEZADO_VENTA.ParamByName('P_CAJERO').AsInteger    := reglas.dame_usuario;
   spACTULIZA_ENCABEZADO_VENTA.ExecProc;
   spACTULIZA_ENCABEZADO_VENTA.Transaction.CommitRetaining;
   verificar := false;
   reglas.abrir_IBQuery_seek('R_ID',dsEncabezado.DataSet.FieldByName('R_ID').AsInteger, qyEncabezado);
   verificar := true;
end;

procedure TfrmCapturar_punto_de_ventas.fijarBotonesP(valor : boolean);
begin
   edicionP := valor;
   fijarBotonesP;
end;

procedure TfrmCapturar_punto_de_ventas.fijarBotonesP;
begin
   buF7.Enabled         := not edicionP;
   buF8.Enabled         := not edicionP and not(dsPartidas.DataSet.IsEmpty);
   buF9.Enabled         := edicionP;
   buF10.Enabled        := edicionP;
   buF11.Enabled        := not edicionP and not(dsPartidas.DataSet.IsEmpty);

   buF12.Enabled        := not edicionP and not(dsPartidas.DataSet.IsEmpty);
   buF12Imp.Enabled     := not edicionP and not(dsPartidas.DataSet.IsEmpty);

   buReImprimir.Enabled := not edicionP;
   MarcoMateriales1.paMateriales.Enabled := edicionP;
//   edVendedor.Enabled := (dsDetalle.DataSet.State = dsInsert);
//   edBusqueda.Enabled := (dsDetalle.DataSet.State = dsInsert);

   itemF7.Enabled     := buF7.Enabled;
   itemF8.Enabled     := buF8.Enabled;
   itemF9.Enabled     := buF9.Enabled;
   itemF10.Enabled    := buF10.Enabled;
   itemF11.Enabled    := buF11.Enabled;
   itemF12.Enabled    := buF12.Enabled;
//   dgInventario.Visible      := not edicionI;

   if edicionP then
   begin
      paCaptura.Height := 164
   end
   else
      paCaptura.Height := 50;
end;

procedure TfrmCapturar_punto_de_ventas.verificarSaldos;
begin
   if msgLimite or msgVencidos then
   begin
      qyMsg.Close;
      qyMsg.ParamByName('P_CLIENTE').AsInteger := dsDatosEnc.DataSet.FieldByName('R_CLIENTE').AsInteger;
      qyMsg.ParamByName('P_ALMACEN').AsInteger := dsVer_Datos_Cajero.DataSet.FieldByName('R_ALMACEN').AsInteger;
      qyMsg.Open;
   end;

   if msgLimite and (qyMsg.FieldByName('R_MSG_LIMITE').AsString = 'SI') then
   begin
      ShowMessage('Su limite es: '+FormatFloat('$ ###,###,##0.00',qyMsg.FieldByName('R_LIMITE').AsFloat)+#13+'Saldo de: '+FormatFloat('$ ###,###,##0.00',qyMsg.FieldByName('R_SALDO').AsFloat));
   end;
   if msgVencidos and (qyMsg.FieldByName('R_MSG_VENCIDO').AsString = 'SI') then
   begin
      ShowMessage( 'Vencido es: '+FormatFloat('$ ###,###,##0.00',qyMsg.FieldByName('R_TOTAL_VENCIDO').AsFloat)+#13+'Vencido en este almacen: : '+FormatFloat('$ ###,###,##0.00',qyMsg.FieldByName('R_ALMACEN_VENCIDO').AsFloat));
   end;
end;

procedure TfrmCapturar_punto_de_ventas.buscaCliente;
begin
   qyDatosEnc.Close;
   qyDatosEnc.ParamByName('P_CLIENTE').AsInteger   := edCliente.Tag;
   qyDatosEnc.ParamByName('P_EXTENSION').AsInteger := edExtension.Tag;
   qyDatosEnc.Open;
   //No se encontro registro
   if qyDatosEnc.IsEmpty or (qyDatosEnc.FieldByName('R_CLIENTE_ESTATUS').AsString = 'Cancelado') then
   begin
      if qyDatosEnc.FieldByName('R_CLIENTE_ESTATUS').AsString = 'Cancelado' then
      begin
        ShowMessage('La cuenta fue cancelada.');
      end
      else
      begin
        ShowMessage('La busqueda no encuentra la informacion con esa clave, intente nuevamente.');
      end;

      qyDatosEnc.Close;
      qyDatosEnc.ParamByName('P_CLIENTE').AsInteger   := clienteEfectivo;
      qyDatosEnc.ParamByName('P_EXTENSION').AsInteger := 0;
      qyDatosEnc.Open;
      edCliente.Tag   := clienteEfectivo;
      edCliente.Text  := qyDatosEnc.FieldByName('R_CLIENTE_CLAVE').AsString;
      // edCliente.SetSelection(Length(edCliente.Text),Length(edCliente.Text),false);
      edExtension.Tag := 0;
      edExtension.Clear;
   end;

   awrSuspendido := qyDatosEnc.FieldByName('R_CLIENTE_ESTATUS').AsString = 'Suspendido';
//   if qyDatosEnc.FieldByName('R_CLIENTE_ESTATUS').AsString = 'Suspendido' then
//      awrSupendido
//      meClienteSuspendido.Execute;
{   else
      if (qyDatos.FieldByName('R_CLIENTE').AsInteger = clienteEfectivo) then}
         //edCuenta.SetSelection(0,StrLen(PCHAR(edCuenta.Text)),false);

   //afecta registro de punto de venta credito
   spPVTA_CREDITO.ParamByName('P_PUNTO_DE_VENTA').AsInteger := dsEncabezado.DataSet.FieldByName('R_ID').AsInteger;
   spPVTA_CREDITO.ParamByName('P_USUARIO').AsInteger        := dsVer_Datos_Cajero.DataSet.FieldByName('R_USUARIO').AsInteger;
   spPVTA_CREDITO.ParamByName('P_CAJA').AsInteger           := dsVer_Datos_Cajero.DataSet.FieldByName('R_ID').AsInteger;
   spPVTA_CREDITO.ParamByName('P_CLIENTE').AsInteger        := qyDatosEnc.FieldByName('R_CLIENTE').AsInteger;
   spPVTA_CREDITO.ParamByName('P_EXTENSION').AsInteger      := qyDatosEnc.FieldByName('R_EXTENSION').AsInteger;
   spPVTA_CREDITO.ExecSQL;
   spPVTA_CREDITO.Transaction.CommitRetaining;
   //Muestra Credito
   qyMuestraCredito.Close;
   qyMuestraCredito.ParamByName('P_ID').AsInteger := dsEncabezado.DataSet.FieldByName('R_ID').AsInteger;
   qyMuestraCredito.Open;
   if verificar then
      LoadImagenes;
   if (clienteEfectivo <> qyDatosEnc.FieldByName('R_CLIENTE').AsInteger) and verificar then
   begin
      verificarSaldos;
   end;
end;

procedure TfrmCapturar_punto_de_ventas.datos_punto_de_venta;
begin
   //se abre primero el detalle para verificar si existen partidas
   //cuando se abra el encabezado, esto es para validar que no se
   //muevan los datos del encabezado.
   //abrir tabla de venta detalle
   reglas.refresh_IBQuery(qyPartidas);

   //abrir tabla de venta encabezado
   qyEncabezado.Close;
   qyEncabezado.ParamByName('P_CAJA').AsInteger := qyVer_Datos_Cajero.FieldByName('R_ID').AsInteger; //id de cajas
   qyEncabezado.Open;
   //Verificar si se encuentra el encabezado, si no se encuentra se crea.
   //Al final en el cierre No debe tomarse la partida que quede incompleta
   //que es la del estatus 'En Proceso'
   if qyEncabezado.IsEmpty then
   begin
      spADD_PVTA_ENC.ParamByName('P_CAJERO').AsInteger := reglas.dame_usuario;
      spADD_PVTA_ENC.ParamByName('P_AFECTAR').AsString := 'No';
      spADD_PVTA_ENC.ExecProc;
      spADD_PVTA_ENC.Transaction.CommitRetaining;
      reglas.abrir_IBQuery(qyEncabezado);
   end;

{   cbMonedas.KeyValue := dsEncabezado.DataSet.FieldByName('R_MONEDA').AsInteger;
   edCliente.Tag      := dsEncabezado.DataSet.FieldByName('R_CLIENTE').AsInteger;
   edExtension.Tag    := dsEncabezado.DataSet.FieldByName('R_EXTENSION').AsInteger;
   buscaCliente;
   edCliente.Text     := dsDatosEnc.DataSet.FieldByName('R_CLIENTE_CLAVE').AsString;
   edExtension.Text   := dsDatosEnc.DataSet.FieldByName('R_EXTENSION_CLAVE').AsString;}
end;

procedure TfrmCapturar_punto_de_ventas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TfrmCapturar_punto_de_ventas.FormCreate(Sender: TObject);
var
   error : boolean;
   Msj : string;
begin
   loadImpresora;
   
   MarcoMateriales1.MOVIMIENTO := obSalida;
   MarcoMateriales1.inicializar(true);
   MarcoMateriales1.ALTARAPIDA := false;
   MarcoMateriales1.edObservaciones.Visible := false;
   MarcoMateriales1.PEDIR_SERIE := true;

   error     := False;
   verificar := true;
   reglas.abrir_IBTabla(TMonedas);
   reglas.abrir_IBTabla(dmIBData.TPreferencias);
   reglas.abrir_IBTabla(dmIBData.TFiltroUsuarios);

   //datos que tienen que ver con el cajero y su caja
   qyVer_Datos_Cajero.Close;
   qyVer_Datos_Cajero.ParamByName('P_USUARIO').AsInteger := reglas.dame_usuario;
   qyVer_Datos_Cajero.Open;
   Application.Title := 'apm/ERP ['+qyVer_Datos_Cajero.FieldByName('R_NOMBRE_USUARIO').AsString;

   //Activar punto de venta TouchScreen (Res:1024x768)
   dmIBData.TPreferencias.Filter := 'ID = 16';
   touchScreen := UpperCase(dmIBData.TPreferencias.FieldByName('VALOR').AsString) = 'SI';
   //Activar punto de venta pago separado
   dmIBData.TPreferencias.Filter := 'ID = 18';
   buF12.Visible      := UpperCase(dmIBData.TPreferencias.FieldByName('VALOR').AsString) = 'NO';
   buF12Imp.Visible   := not(buF12.Visible);

   //Activar campo cajas en punto de venta(grid)
   dmIBData.TPreferencias.Filter := 'ID = 32';
   //   dgPartidasCAJAS.Visible := UpperCase(dmIBData.TPreferencias.FieldByName('VALOR').AsString) = 'SI';
   //msg limite
   dmIBData.TPreferencias.Filter := 'ID = 71';
   msgLimite := UpperCase(dmIBData.TPreferencias.FieldByName('VALOR').AsString) = 'SI';
   //msg vencidos
   dmIBData.TPreferencias.Filter := 'ID = 122';
   msgVencidos := UpperCase(dmIBData.TPreferencias.FieldByName('VALOR').AsString) = 'SI';

{   //Ventas sin Cerrar
   //ver: 1=Cliente, 2=Extension, 0=ambos
   dmIBData.TPreferencias.Filter := 'ID = 34';
   if dmIBData.TPreferencias.FieldByName('VALOR').AsInteger = 1 then
   begin
      dgSinCerrar.DisplayFields.Clear;
      dgSinCerrar.DisplayFields.Add('["R_NOMBRE_CLIENTE"]');
   end
   else
      if dmIBData.TPreferencias.FieldByName('VALOR').AsInteger = 2 then
      begin
         dgSinCerrar.DisplayFields.Clear;
         dgSinCerrar.DisplayFields.Add('["R_NOMBRE_EXTENSION"]');
      end
      else
         begin
            dgSinCerrar.DisplayFields.Clear;
            dgSinCerrar.DisplayFields.Add('["R_NOMBRE_EXTENSION"]["R_NOMBRE_CLIENTE"]');
         end;}

   //Activar ventas sin cerrar
   dmIBData.TPreferencias.Filter := 'ID = 56';
   paVentasSinCerrar.Visible := UpperCase(dmIBData.TPreferencias.FieldByName('VALOR').AsString) = 'SI';
   itemF3.Visible            := UpperCase(dmIBData.TPreferencias.FieldByName('VALOR').AsString) = 'SI';
   buF3.Visible              := UpperCase(dmIBData.TPreferencias.FieldByName('VALOR').AsString) = 'SI';

   //Activar devoluciones en punto de ventas
   dmIBData.TPreferencias.Filter := 'ID = 57';
   buF4.Visible   := UpperCase(dmIBData.TPreferencias.FieldByName('VALOR').AsString) = 'SI';
   itemF4.Visible := UpperCase(dmIBData.TPreferencias.FieldByName('VALOR').AsString) = 'SI';



{  if TouchScreen then
  begin
     dmIBData.TPreferencias.Filter := 'ID = 105';
     awrReporte := dmIBData.TPreferencias.FieldByName('VALOR').AsInteger;

    //para obtener mas espacio al capturar
    frmMenu.jrLogin.Collapsed := true;
    //incrementar los botones de los scrolls
    Dato.cbSize := SizeOf(Dato);
    SystemParametersInfo(SPI_GetNonClientMetrics,0,@Dato,0);
    scrollBarLargo := Dato.iScrollWidth;
    scrollBarAlto  := Dato.iScrollHeight;
    Dato.iScrollWidth  := 30;
    Dato.iScrollHeight := 30;
    SystemParametersInfo(SPI_SetNonClientMetrics,0,@Dato,SPIF_SENDWININICHANGE);

     ibTeclado.Visible         := true;
     ibBusqueda.Visible        := true;
     ibImprimir.Visible        := true;
     ibProcesar.Visible        := false;

     //Tamaño de letra en pantallas TouchScreen
     dmIBData.TPreferencias.Filter := 'ID = 17';
     dgDetalle.Font.Size           := dmIBData.TPreferencias.FieldByName('VALOR').AsInteger;
     dgSinCerrar.Font.Size         := dmIBData.TPreferencias.FieldByName('VALOR').AsInteger - 4;

     Application.Title             := 'apm ['+qyVer_Datos_Cajero.FieldByName('R_NOMBRE_USUARIO').AsString;
  end
  else
     begin
        ibTeclado.Visible         := false;
        ibBusqueda.Visible        := false;
        ibImprimir.Visible        := false;
        ibProcesar.Visible        := true;
     end;}

   //Vendedor automatico para punto de venta
   dmIBData.TPreferencias.Filter := 'ID = 14';
   vendedor := dmIBData.TPreferencias.FieldByName('VALOR').AsInteger;
   dmIBData.TFiltroUsuarios.Filter := 'ID = '+IntToStr(vendedor);
   vendedorNombre := dmIBData.TSujetos.FieldByName('NOMBRE').AsString;

   reglas.abrir_IBTabla(dmIBData.TFiltroEmpresas);
   dmIBData.TFiltroEmpresas.Filter := 'ID = '+IntToStr(reglas.dame_empresa);
   edFecha.Text := FormatDateTime('dd/mm/yyyy',reglas.dame_fecha);

   if qyVer_Datos_Cajero.IsEmpty then
   begin
      error := True;
      ShowMessage('No tiene asignada ninguna caja para operar el punto de venta.');
   end;

   if qyVer_Datos_Cajero.FieldByName('R_BAJA').AsString = 'Si' then
   begin
      error := True;
      ShowMessage('Dado de baja, por el administrador del sistema.');
   end;

   if qyVer_Datos_Cajero.FieldByName('R_ESTATUS').AsString = 'Fuera de Operacion' then
   begin
      error := True;
      ShowMessage('Temporalmente fue suspendida la caja, consulte al administrador del sistema.');
   end;

   if qyVer_Datos_Cajero.FieldByName('R_REGISTROS').AsInteger > 1 then
   begin
      error := True;
      ShowMessage('El usuario tiene asignado a el, mas de una caja.');
   end;

  //datos que tienen que ver con el cliente
  //Clientes para ventas en efectivo
  reglas.abrir_IBTabla(dmIBData.TPreferencias);
  dmIBData.TPreferencias.Filter := 'ID = 10';
  if dmIBData.TPreferencias.FieldByName('VALOR').AsInteger = 0 then
  begin
     error := True;
     ShowMessage('No esta definido el cliente en preferencias');
  end
  else
     clienteEfectivo := dmIBData.TPreferencias.FieldByName('VALOR').AsInteger;

  //condicion comercial de efectivo
  dmIBData.TPreferencias.Filter := 'ID = 11'; //Condicion Comercial para Cliente Vtas. en Efectivo
  if dmIBData.TPreferencias.FieldByName('VALOR').AsString = '' then
  begin
     error := True;
     ShowMessage('Falta para identificar clientes de ventas en efectivo');
  end;

  //Ver extensiones de los clientes
  dmIBData.TPreferencias.Filter := 'ID = 12';
  laExtension.Visible := UpperCase(dmIBData.TPreferencias.FieldByName('VALOR').AsString) = 'SI';
  edExtension.Visible := UpperCase(dmIBData.TPreferencias.FieldByName('VALOR').AsString) = 'SI';

  //Autorizar en Punto de venta inventario negativo
  dmIBData.TPreferencias.Filter := 'ID = 117';
  awrAutNeg := UpperCase(dmIBData.TPreferencias.FieldByName('VALOR').AsString) = 'SI';

  //Activar Alta Rapida de Clientes en Punto de Venta
  dmIBData.TPreferencias.Filter := 'ID = 198';
  buCliente.Visible := UpperCase(dmIBData.TPreferencias.FieldByName('VALOR').AsString) = 'SI';

  //Activar Pedidos en Punto de Venta
  dmIBData.TPreferencias.Filter := 'ID = 199';
  buPedidos.Visible := UpperCase(dmIBData.TPreferencias.FieldByName('VALOR').AsString) = 'SI';

  //Activar Msj Colectas
  dmIBData.TPreferencias.Filter := 'ID = 311';
  awrActivarMsjColectas := UpperCase(dmIBData.TPreferencias.FieldByName('VALOR').AsString) = 'SI';

  //Msj Colectas
  dmIBData.TPreferencias.Filter := 'ID = 312';
  Msj := dmIBData.TPreferencias.FieldByName('VALOR').AsString;

  //Monto Msj Colectas
  dmIBData.TPreferencias.Filter := 'ID = 313';
  awrMontoMsjColectas := dmIBData.TPreferencias.FieldByName('VALOR').AsFloat;

  //Medidas
  dmIBData.TPreferencias.Filter := 'ID = 66';
  //dgPartidasMEDIDA.Visible := UpperCase(dmIBData.TPreferencias.FieldByName('VALOR').AsString) = 'SI';
  //Colores
  dmIBData.TPreferencias.Filter := 'ID = 69';
  //dgPartidasCOLOR.Visible := UpperCase(dmIBData.TPreferencias.FieldByName('VALOR').AsString) = 'SI';

  //Abrir cajon al realizar colecta
  dmIBData.TPreferencias.Filter := 'ID = 372';
  awrAbrirCajon := UpperCase(dmIBData.TPreferencias.FieldByName('VALOR').AsString) = 'SI';

  //Verificar si esta activo el punto de venta separado (Venta y Cobro)
  if buF12Imp.Visible then
  begin
     leerConfiguracion;
     if awrF12Imp = '' then
     begin
         frmF12Imp := TfrmF12Imp.Create(Application);
         try
            frmF12Imp.ShowModal;
            awrF12Imp := frmF12Imp.F12IMP;
         finally
            frmF12Imp.Free;
         end;

         if awrF12Imp = '' then
         begin
            ShowMessage('Falta seleccionar si se imprime el ticket.');
            error := true;
         end
         else
         begin
            guardarConfiguracion;
         end;
     end;
  end;

  if error then
     Close;

  awrNivel    := reglas.dameUsuarioNivel;
  awrVendedor := 0;
end;

procedure TfrmCapturar_punto_de_ventas.imFotoDblClick(Sender: TObject);
begin
   frmImagen := TfrmImagen.Create(Application);
   try
      frmImagen.IMAGEN_PICT := imFoto;
      frmImagen.ShowModal;
   finally
      frmImagen.Free;
   end;
end;

procedure TfrmCapturar_punto_de_ventas.imFirmaDblClick(Sender: TObject);
begin
  frmImagen := TfrmImagen.Create(Application);
  try
     frmImagen.IMAGEN_PICT := imFirma;
     frmImagen.ShowModal;
  finally
     frmImagen.Free;
  end;
end;

procedure TfrmCapturar_punto_de_ventas.dsEncabezadoDataChange(
  Sender: TObject; Field: TField);
begin
   if not(dsEncabezado.DataSet.IsEmpty) then
   begin
      cbMonedas.KeyValue := dsEncabezado.DataSet.FieldByName('R_MONEDA').AsInteger;
      edCliente.Tag      := dsEncabezado.DataSet.FieldByName('R_CLIENTE').AsInteger;
      edExtension.Tag    := dsEncabezado.DataSet.FieldByName('R_EXTENSION').AsInteger;
      buscaCliente;
      edCliente.Text     := dsDatosEnc.DataSet.FieldByName('R_CLIENTE_CLAVE').AsString;
      edExtension.Text   := dsDatosEnc.DataSet.FieldByName('R_EXTENSION_CLAVE').AsString;
      MarcoMateriales1.datos(dsVer_Datos_Cajero.DataSet.FieldByName('R_ALMACEN').AsInteger,dsEncabezado.DataSet.FieldByName('R_CLIENTE').AsInteger,dsEncabezado.DataSet.FieldByName('R_EXTENSION').AsInteger, dsEncabezado.DataSet.FieldByName('R_MONEDA').AsInteger);
      fijarBotonesP(false);
   end;
end;

procedure TfrmCapturar_punto_de_ventas.FormActivate(Sender: TObject);
begin
   datos_punto_de_venta;
end;

procedure TfrmCapturar_punto_de_ventas.edClienteKeyPress(Sender: TObject;
  var Key: Char);
begin
{
  if Key = #13 then
     edCliente.OnButtonClick(Sender, 0);
     }
end;

procedure TfrmCapturar_punto_de_ventas.edClienteButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
begin
  case AbsoluteIndex of
    0 : begin
           frmSeleccionarCliente := TfrmSeleccionarCliente.Create(Application);
           try
              frmSeleccionarCliente.DATABASE    := dmIBModulo.ibSistema;
              frmSeleccionarCliente.TRANSACTION := dmIBModulo.ibSistemaTransaccion;
              frmSeleccionarCliente.CLAVE       := edCliente.Text;
              if frmSeleccionarCliente.abrirConsulta then
              begin
                 frmSeleccionarCliente.ShowModal;
                 if frmSeleccionarCliente.ACEPTAR then
                 begin
                    edCliente.Text := frmSeleccionarCliente.CLAVE;
                    edCliente.Tag  := frmSeleccionarCliente.ID;
                    //edCliente.SetSelection(Length(edCliente.Text),Length(edCliente.Text),false);
                 end;
              end
              else
                 begin
                    edCliente.Text := frmSeleccionarCliente.CLAVE;
                    edCliente.Tag  := frmSeleccionarCliente.ID;
                    //edCliente.SetSelection(Length(edCliente.Text),Length(edCliente.Text),false);
                 end;
           finally
              frmSeleccionarCliente.Free;
           end;
           
           //frmSeleccionarCliente := nil;
           edExtension.Clear;
           edExtension.Tag := 0;
           buscaCliente;
        end;
    1 : begin
           edCliente.Clear;
           edCliente.Tag := 0;
           edExtension.Clear;
           edExtension.Tag := 0;
        end;
  end;
end;

procedure TfrmCapturar_punto_de_ventas.buF7Click(Sender: TObject);
begin
   //Se vuelven actualizar los datos, al encabezado,
   //Si es la primera partida que se agrega.
   if dsPartidas.DataSet.IsEmpty then
   begin
      if (edCliente.Tag      <> dsEncabezado.DataSet.FieldByName('R_CLIENTE').AsInteger) or
         (edExtension.Tag    <> dsEncabezado.DataSet.FieldByName('R_EXTENSION').AsInteger) or
         (cbMonedas.KeyValue <> dsEncabezado.DataSet.FieldByName('R_MONEDA').AsInteger) then
      begin
         spACTULIZA_ENCABEZADO_VENTA.ParamByName('P_VENTA').AsInteger     := dsEncabezado.DataSet.FieldByName('R_ID').AsInteger;
         spACTULIZA_ENCABEZADO_VENTA.ParamByName('P_CLIENTE').AsInteger   := dsDatosEnc.DataSet.FieldByName('R_CLIENTE').AsInteger;
         spACTULIZA_ENCABEZADO_VENTA.ParamByName('P_EXTENSION').AsInteger := dsDatosEnc.DataSet.FieldByName('R_EXTENSION').AsInteger;
         spACTULIZA_ENCABEZADO_VENTA.ParamByName('P_MONEDA').AsInteger    := cbMonedas.KeyValue;
         spACTULIZA_ENCABEZADO_VENTA.ParamByName('P_CAJERO').AsInteger    := reglas.dame_usuario;
         spACTULIZA_ENCABEZADO_VENTA.ExecProc;
         spACTULIZA_ENCABEZADO_VENTA.Transaction.CommitRetaining;
         verificar := false;
         reglas.abrir_IBQuery_seek('R_ID',dsEncabezado.DataSet.FieldByName('R_ID').AsInteger, qyEncabezado);
         verificar := true;
      end;
   end;
  paCaptura.Tag := 0;
  fijarBotonesP(true);
  MarcoMateriales1.limpiar;
  MarcoMateriales1.FLAG_ESTADO := stNuevo;
  MarcoMateriales1.edCantidad.Text := '1';

  if vendedor <> 0 then
  begin
     edVendedor.Tag  := vendedor;
     edVendedor.Text := vendedorNombre;
     if MarcoMateriales1.edMaterial.Visible and MarcoMateriales1.VER then
        MarcoMateriales1.edMaterial.SetFocus;
  end
  else
     begin
        edVendedor.Clear;
        edVendedor.Tag := 0;
        if edVendedor.Visible then
           edVendedor.SetFocus;
     end;
end;

procedure TfrmCapturar_punto_de_ventas.itemF7Click(Sender: TObject);
begin
   buF7.Click;
end;

procedure TfrmCapturar_punto_de_ventas.buF10Click(Sender: TObject);
begin
   fijarBotonesP(false);
   if dgPartidas.Visible then
      dgPartidas.SetFocus;
end;

procedure TfrmCapturar_punto_de_ventas.FormDestroy(Sender: TObject);
begin
  MarcoMateriales1.Destruir;
end;

procedure TfrmCapturar_punto_de_ventas.MarcoMateriales1edMaterialButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
var
   i : integer;
begin
  MarcoMateriales1.edMaterialButtonClick(Sender, AbsoluteIndex);

  if (MarcoMateriales1.NUM_SERIE) then
  begin
     MarcoMateriales1.edCantidad.Text := '1';
     if (MarcoMateriales1.FLAG_ESTADO = stNuevo) then
     begin
        for i := 1 to MarcoMateriales1.REPETIR do
        begin
           MarcoMateriales1.pedirSerie;
           buF9.Click;
        end;
     end;
  end
  else
  begin
     if MarcoMateriales1.edMaterial.Tag <> 0 then
     begin
        buF9.Click;
        buF7.Click;
     end;
  end;

{  MarcoMateriales1.edCantidad.Value := 1;
  if paCaptura.Tag = 0 then //indica que se agragan partidas
  begin
     for i := 1 to MarcoMateriales1.REPETIR do
     begin
        MarcoMateriales1.pedirSerie;
        buF9.Click;
     end;
     buF7.Click;
  end;}
end;

procedure TfrmCapturar_punto_de_ventas.buF9Click(Sender: TObject);
var
   ejecutar  : boolean;
   vCant : double;
   vPorc : double;
   vHayOferta : boolean;
begin
   if MarcoMateriales1.edMaterial.Tag = 0 then
   begin
      ShowMessage('No se encontro ningun material asignado a la partida.');
      if paCaptura.Visible and MarcoMateriales1.edMaterial.Visible then
         MarcoMateriales1.edMaterial.SetFocus;
   end
   else
   begin
      ejecutar   := true;
      if MarcoMateriales1.FLAG_ESTADO = stModificar then
      begin
         vCant      := dsPartidas.DataSet.FieldByName('R_CANTIDAD').AsFloat;
         vPorc      := dsPartidas.DataSet.FieldByName('R_DESCUENTO_PORC').AsFloat;
         vHayOferta := dsPartidas.DataSet.FieldByName('R_HAY_OFERTA').AsString = 'Si';
         if (
              (StrToInt(MarcoMateriales1.edCantidad.Text) < 0) and
              (StrToInt(MarcoMateriales1.edCantidad.Text) <> vCant)
            ) or
            (
              (StrToInt(MarcoMateriales1.edDescuentoPorc.Text) > 0) and
              (StrToInt(MarcoMateriales1.edDescuentoPorc.Text) <> vPorc) and not(vHayOferta)
            ) or
            (
              (StrToInt(MarcoMateriales1.edCantidad.Text) <> vCant) and
              (vPorc > 0) and not(vHayOferta)
            )then
         begin
            if reglas.dameUsuarioNivel < 5 then
            begin
               frmAutorizacion := TfrmAutorizacion.Crear(Application, 5);
               frmAutorizacion.ShowModal;
               ejecutar := frmAutorizacion.dame_respuesta;
               frmAutorizacion.Free;
            end;
         end;
      end;

      if ejecutar then
      begin
         //Verificacion del precio sea mayor o igual al precio minimo
         if not(reglas.validacion_precio(StrToInt(MarcoMateriales1.edPrecioCosto.Text), MarcoMateriales1.PRECIOMINIMO)) then
         begin
            MarcoMateriales1.edPrecioCosto.Text := FloatToStr(MarcoMateriales1.PRECIOMAXIMO);
         end
         else
         begin
            vendedor       := edVendedor.Tag;
            vendedorNombre := edVendedor.Text;

            if MarcoMateriales1.HAY_OFERTA then
            begin
               MarcoMateriales1.edDescuentoPorc.Text := FloatToStr(MarcoMateriales1.PORC_OFERTA);
            end;
            //agregar partida
            spADD_PARTIDA_PVTA.ParamByName('P_ID').AsInteger              := paCaptura.Tag;
            spADD_PARTIDA_PVTA.ParamByName('P_PVTA').AsInteger            := dsEncabezado.DataSet.FieldByName('R_ID').AsInteger;
            spADD_PARTIDA_PVTA.ParamByName('P_VENDEDOR').AsInteger        := edVendedor.Tag;
            spADD_PARTIDA_PVTA.ParamByName('P_MATERIAL').AsInteger        := MarcoMateriales1.edMaterial.Tag;
            spADD_PARTIDA_PVTA.ParamByName('P_CANTIDAD').AsFloat          := StrToFloat(MarcoMateriales1.edCantidad.Text);
            spADD_PARTIDA_PVTA.ParamByName('P_UNIDAD').AsInteger          := MarcoMateriales1.cbUnidades.KeyValue;
            spADD_PARTIDA_PVTA.ParamByName('P_PRECIO').AsFloat            := StrToFloat(MarcoMateriales1.edPrecioCosto.Text);
            spADD_PARTIDA_PVTA.ParamByName('P_PRECIO_UNITARIO').AsFloat   := StrToFloat(MarcoMateriales1.edPU.Text);
            spADD_PARTIDA_PVTA.ParamByName('P_MEDIDA').Value              := MarcoMateriales1.dto.medida;
            spADD_PARTIDA_PVTA.ParamByName('P_COLOR').Value               := MarcoMateriales1.dto.color;
            spADD_PARTIDA_PVTA.ParamByName('P_SUBTOTAL').AsFloat          := StrToFloat(MarcoMateriales1.edSubTotal.Text);
            spADD_PARTIDA_PVTA.ParamByName('P_IVA').AsFloat               := StrToFloat(MarcoMateriales1.edIVA.Text);
            spADD_PARTIDA_PVTA.ParamByName('P_IEPS').AsFloat              := StrToFloat(MarcoMateriales1.edIEPS.Text);
            spADD_PARTIDA_PVTA.ParamByName('P_IMPUESTO1').AsFloat         := StrToFloat(MarcoMateriales1.edImpuesto1.Text);
            spADD_PARTIDA_PVTA.ParamByName('P_IMPUESTO2').AsFloat         := StrToFloat(MarcoMateriales1.edImpuesto2.Text);
            spADD_PARTIDA_PVTA.ParamByName('P_PORC_DP').AsFloat           := StrToFloat(MarcoMateriales1.edDescuentoPorc.Text);
            spADD_PARTIDA_PVTA.ParamByName('P_IVA_PORC').AsFloat          := MarcoMateriales1.IVAPORC;
            spADD_PARTIDA_PVTA.ParamByName('P_IEPS_PORC').AsFloat         := MarcoMateriales1.IEPSPORC;
            spADD_PARTIDA_PVTA.ParamByName('P_IMPUESTO1_PORC').AsFloat    := MarcoMateriales1.IMPUESTO1PORC;
            spADD_PARTIDA_PVTA.ParamByName('P_IMPUESTO2_PORC').AsFloat    := MarcoMateriales1.IMPUESTO2PORC;
            spADD_PARTIDA_PVTA.ParamByName('P_COSTO_ULT_COMPRA').AsFloat  := MarcoMateriales1.COSTOULTCOMPRA;
            spADD_PARTIDA_PVTA.ParamByName('P_SERIE').AsString            := MarcoMateriales1.SERIE;
            spADD_PARTIDA_PVTA.ParamByName('P_ID_REFERENCIA').AsInteger   := 0;
            spADD_PARTIDA_PVTA.ParamByName('P_TABLA_REFERENCIA').AsString := '';
            spADD_PARTIDA_PVTA.ExecProc;
            spADD_PARTIDA_PVTA.Transaction.CommitRetaining;

{            if MarcoMateriales1.HAY_OFERTA then
            begin
               spADD_PV_OFERTA.ParamByName('P_ID').AsInteger            := spADD_PARTIDA_PVTA.ParamByName('R_ID').AsInteger;
               spADD_PV_OFERTA.ParamByName('P_PORC').AsFloat            := MarcoMateriales1.PORC_OFERTA;
               spADD_PV_OFERTA.ParamByName('P_PRECIO_ORIGINAL').AsFloat := MarcoMateriales1.edPrecioCosto.Value;
               spADD_PV_OFERTA.ParamByName('P_PRECIO_OFERTA').AsFloat   := MarcoMateriales1.PRECIO_OFERTA;
               spADD_PV_OFERTA.ExecProc;
               spADD_PV_OFERTA.Transaction.CommitRetaining;
            end;
}
            verificar := false;

            reglas.abrir_IBQuery_seek('R_ID', dsEncabezado.DataSet.FieldByName('R_ID').AsInteger, qyEncabezado);

            qyPartidas.Close;
            qyPartidas.Open;

//            reglas.abrir_IBQuery_seek('R_ID', spADD_PARTIDA_PVTA.ParamByName('R_ID').AsInteger, qyPartidas);
            verificar := true;
            fijarBotonesP(false);
         end;
      end;
   end;
end;

procedure TfrmCapturar_punto_de_ventas.edVendedorButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
begin
  case AbsoluteIndex of
    0 : begin
           frmSeleccionarUsuario := TfrmSeleccionarUsuario.Create(Application);
           try
              frmSeleccionarUsuario.DATABASE    := dmIBModulo.ibSistema;
              frmSeleccionarUsuario.TRANSACTION := dmIBModulo.ibSistemaTransaccion;
              frmSeleccionarUsuario.BUSQUEDA    := edVendedor.Text;
              if frmSeleccionarUsuario.abrirConsulta then
              begin
                 frmSeleccionarUsuario.ShowModal;
                 if frmSeleccionarUsuario.ACEPTAR then
                 begin
                    edVendedor.Text := frmSeleccionarUsuario.NOMBRE;
                    edVendedor.Tag  := frmSeleccionarUsuario.ID;
                    //edVendedor.SetSelection(Length(edVendedor.Text),Length(edVendedor.Text),false);
                 end;
              end
              else
                 begin
                    edVendedor.Text := frmSeleccionarUsuario.NOMBRE;
                    edVendedor.Tag  := frmSeleccionarUsuario.ID;
                   // edVendedor.SetSelection(Length(edVendedor.Text),Length(edVendedor.Text),false);
                 end;
           finally
              frmSeleccionarUsuario.Free;
           end;
           //frmSeleccionarUsuario := nil;
           if (edVendedor.Tag <> 0) and (paCaptura.Visible) and MarcoMateriales1.edMaterial.Visible then
              MarcoMateriales1.edMaterial.SetFocus;
        end;
    1 : begin
           edVendedor.Clear;
           edVendedor.Tag := 0;
        end;
   end;
end;

procedure TfrmCapturar_punto_de_ventas.edVendedorKeyPress(Sender: TObject;
  var Key: Char);
begin
  //if Key = #13 then
    // edVendedor.OnButtonClick(Sender, 0);
end;

procedure TfrmCapturar_punto_de_ventas.itemF9Click(Sender: TObject);
begin
   buF9.Click;
end;

procedure TfrmCapturar_punto_de_ventas.itemF10Click(Sender: TObject);
begin
   buF10.Click;
end;

procedure TfrmCapturar_punto_de_ventas.itemF11Click(Sender: TObject);
begin
   buF11.Click;
end;

procedure TfrmCapturar_punto_de_ventas.itemF12Click(Sender: TObject);
begin
   if buF12.Visible then
      buF12.Click;
   if buF12Imp.Visible then
      buF12Imp.Click
end;

procedure TfrmCapturar_punto_de_ventas.itemF8Click(Sender: TObject);
begin
   buF8.Click;
end;

procedure TfrmCapturar_punto_de_ventas.itemF3Click(Sender: TObject);
begin
   buF3.Click;
end;

procedure TfrmCapturar_punto_de_ventas.itemF4Click(Sender: TObject);
begin
   buF4.Click;
end;

procedure TfrmCapturar_punto_de_ventas.buF8Click(Sender: TObject);
begin
   fijarBotonesP(true);
   paCaptura.Tag   := dsPartidas.DataSet.FieldByName('R_ID').AsInteger;
   edVendedor.Tag  := dsPartidas.DataSet.FieldByName('R_VENDEDOR').AsInteger;
   edVendedor.Text := dsPartidas.DataSet.FieldByName('R_VENDEDOR_NOMBRE').AsString;
   MarcoMateriales1.limpiar;

   //sirve asi, para el caso en que se edite el registro
   //no capturar con boton Capturar.
   MarcoMateriales1.edMaterial.Tag := dsPartidas.DataSet.FieldByName('R_MATERIAL').AsInteger;

   MarcoMateriales1.findMaterial(dsPartidas.DataSet.FieldByName('R_MATERIAL').AsInteger, dsPartidas.DataSet.FieldByName('R_UNIDAD').AsInteger);
   MarcoMateriales1.datos(dsVer_Datos_Cajero.DataSet.FieldByName('R_ALMACEN').AsInteger, dsDatosEnc.DataSet.FieldByName('R_CLIENTE').AsInteger, dsDatosEnc.DataSet.FieldByName('R_EXTENSION').AsInteger, dsEncabezado.DataSet.FieldByName('R_MONEDA').AsInteger);

   MarcoMateriales1.qyPrecio_X.Close;
   MarcoMateriales1.qyPrecio_X.ParamByName('P_MATERIAL').AsInteger  := dsPartidas.DataSet.FieldByName('R_MATERIAL').AsInteger;
   MarcoMateriales1.qyPrecio_X.ParamByName('P_ALMACEN').AsInteger   := dsEncabezado.DataSet.FieldByName('R_ALMACEN').AsInteger;
   MarcoMateriales1.qyPrecio_X.ParamByName('P_CLIENTE').AsInteger   := dsEncabezado.DataSet.FieldByName('R_CLIENTE').AsInteger;
   MarcoMateriales1.qyPrecio_X.ParamByName('P_EXTENSION').AsInteger := dsEncabezado.DataSet.FieldByName('R_EXTENSION').AsInteger;
   MarcoMateriales1.qyPrecio_X.ParamByName('P_MONEDA').AsInteger    := dsEncabezado.DataSet.FieldByName('R_MONEDA').AsInteger;
   MarcoMateriales1.qyPrecio_X.Open;

   MarcoMateriales1.HAY_OFERTA  := UpperCase(dsPartidas.DataSet.FieldByName('R_HAY_OFERTA').AsString) = 'SI';

   MarcoMateriales1.FLAG_ESTADO := stModificar;
   MarcoMateriales1.boton       := true;

   MarcoMateriales1.edMaterial.Text           := dsPartidas.DataSet.FieldByName('R_CLAVE').AsString;
   MarcoMateriales1.edDescripcion.Text        := dsPartidas.DataSet.FieldByName('R_DESCRIPCION').AsString;
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
   MarcoMateriales1.PRECIOMINIMO              := MarcoMateriales1.qyPrecio_X.FieldByName('R_PRECIO_MINIMO').AsFloat;
   MarcoMateriales1.PRECIOMAXIMO              := MarcoMateriales1.qyPrecio_X.FieldByName('R_PRECIO_MAXIMO').AsFloat;
   MarcoMateriales1.edPU.Text                := dsPartidas.DataSet.FieldByName('R_PRECIO_SIN_IMPUESTOS').AsString;

   if MarcoMateriales1.cbMedidas.Visible and (dsPartidas.DataSet.FieldByName('R_MEDIDA').AsString <> '') then
      MarcoMateriales1.cbMedidas.KeyValue := dsPartidas.DataSet.FieldByName('R_MEDIDA').AsInteger;
   if MarcoMateriales1.cbColores.Visible and (dsPartidas.DataSet.FieldByName('R_COLOR').AsString <> '') then
      MarcoMateriales1.cbColores.KeyValue := dsPartidas.DataSet.FieldByName('R_COLOR').AsInteger;
   MarcoMateriales1.boton := false;

  if touchScreen then
     MarcoMateriales1.edCantidad.Enabled := false
  else
     MarcoMateriales1.edCantidad.Enabled := true;

  if MarcoMateriales1.edCantidad.Enabled and MarcoMateriales1.edCantidad.Visible and MarcoMateriales1.VER then
     MarcoMateriales1.edCantidad.SetFocus
  else
  if MarcoMateriales1.edPrecioCosto.Visible and MarcoMateriales1.VER then
     MarcoMateriales1.edPrecioCosto.SetFocus;
end;

procedure TfrmCapturar_punto_de_ventas.buGuardarClick(Sender: TObject);
begin
   guardarEncabezado;
end;

procedure TfrmCapturar_punto_de_ventas.buF11Click(Sender: TObject);
var
   i   : integer;
   L   : TList;
   tmp : string;
begin

   if MessageDlg('¿ Eliminar registro ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes  then
   begin
      L := TList.Create;
      try
         {
         for i := 0 to dgPartidas.SelectedCount - 1 do
             L.Add(dgPartidas.SelectedNodes[i]);//no se hace directamente en el grid por que tiene bug, cuando son 2 registros
         for i := 0 to (L.Count - 1) do
         begin
            tmp := TdxTreeListNode(L.Items[i]).Strings[0];
            spDEL_PARTIDA_PVTAS.ParamByName('P_ID').AsString := tmp;
            spDEL_PARTIDA_PVTAS.ExecProc;
            spDEL_PARTIDA_PVTAS.Transaction.CommitRetaining;
         end;
         }
      finally
         L.Free;
      end;
      verificar := false;
      reglas.abrir_IBQuery_seek('R_ID', dsEncabezado.DataSet.FieldByName('R_ID').AsInteger, qyEncabezado);
      verificar := true;
      reglas.refresh_IBQuery(qyPartidas);
      fijarBotonesP(false);
   end;
end;

procedure TfrmCapturar_punto_de_ventas.buF12ImpClick(Sender: TObject);
begin
   //Afecta punto de venta
   estatusInternoCapturado;
   //Imprimir
   if (awrF12Imp = 'SI') then
   begin
      PRN_0037         := TPRN_0037.Create(Application);
      try
         PRN_0037.ID      := qyEncabezado.FieldByName('R_ID').AsInteger;
         PRN_0037.MONEDAC := qyEncabezado.FieldByName('R_MONEDA_CLAVE').AsString;
         PRN_0037.MONEDAD := qyEncabezado.FieldByName('R_MONEDA_DESCRIPCION').AsString;
         PRN_0037.TOTAL   := qyEncabezado.FieldByName('R_GRANTOTAL').AsFloat;
         PRN_0037.imprimir;
      finally
         PRN_0037.Free;
      end;
   end;

   datos_punto_de_venta;
end;

procedure TfrmCapturar_punto_de_ventas.buF12Click(Sender: TObject);
var
   res      : TModalResult;
   afectar  : boolean;
   autNivel : integer;
   tmp      : string;
   hayNeg   : boolean;
begin
   autNivel := 5;
   afectar  := true;
   if awrAutNeg OR awrSuspendido then
   begin
      if awrNivel < autNivel then
      begin
         qySinExistencia.Close;
         qySinExistencia.ParamByName('P_ID').AsInteger := dsEncabezado.DataSet.FieldByName('R_ID').AsInteger;
         qySinExistencia.Open;
         hayNeg := qySinExistencia.FieldByName('R_CUANTOS').AsInteger > 0;
         if hayNeg OR awrSuspendido then
         begin
            //Mensaje de cliente suspendido
            if awrSuspendido then
            begin
               ShowMessage('Cliente Suspendido, comunicar siguiente mensaje...');
            end;

            if hayNeg and awrSuspendido then
                tmp := 'Suspendido y Negativos'
            else
            if awrSuspendido then
               tmp := 'Suspendido'
            else
            if hayNeg then
               tmp := 'Negativos';

            //Application.CreateForm(TfrmAcceso, frmAcceso);
            frmAcceso := TfrmAcceso.Create(Application);
            try
               frmAcceso.Nivel  := autNivel;
               frmAcceso.Status := tmp;
               frmAcceso.ShowModal;
               afectar := frmAcceso.Rsp;
            finally
               frmAcceso.Free;
            end;
         end;
      end;
   end;

   if afectar then
   begin
      //F12
      verificar := false;
      frmCapturar_punto_de_ventas_pagos := TfrmCapturar_punto_de_ventas_pagos.Create(Application);
      try
         frmCapturar_punto_de_ventas_pagos.dsEncabezado.DataSet := qyEncabezado;
         frmCapturar_punto_de_ventas_pagos.dsCliente.DataSet    := qyMuestraCredito;
         frmCapturar_punto_de_ventas_pagos.ALMACEN              := dsVer_Datos_Cajero.DataSet.FieldByName('R_ALMACEN').AsInteger;
         frmCapturar_punto_de_ventas_pagos.CLIENTE              := dsDatosEnc.DataSet.FieldByName('R_CLIENTE').AsInteger;
         frmCapturar_punto_de_ventas_pagos.EXTENSION            := dsDatosEnc.DataSet.FieldByName('R_EXTENSION').AsInteger;
         //monedero electronico datos
         frmCapturar_punto_de_ventas_pagos.CLIENTEN             := dsDatosEnc.DataSet.FieldByName('R_CLIENTE_NOMBRE').AsString;
         frmCapturar_punto_de_ventas_pagos.TELEFONO             := dsDatosEnc.DataSet.FieldByName('R_CLIENTE_TELEFONO').AsString;
         res := frmCapturar_punto_de_ventas_pagos.ShowModal;
      finally
         frmCapturar_punto_de_ventas_pagos.Free;
      end;
      verificar := true;

      if res = mrOk then
      begin
         datos_punto_de_venta;

         if awrActivarMsjColectas then
         begin
            spT_MONTO_MSJ_COLECTAS.ParamByName('P_FECHA').AsDate      := reglas.dame_fecha;
            spT_MONTO_MSJ_COLECTAS.ParamByName('P_CAJA').AsInteger    := qyVer_Datos_Cajero.FieldByName('R_ID').AsInteger;
            spT_MONTO_MSJ_COLECTAS.ParamByName('P_ALMACEN').AsInteger := qyVer_Datos_Cajero.FieldByName('R_ALMACEN').AsInteger;
            spT_MONTO_MSJ_COLECTAS.ParamByName('P_MONEDA').AsInteger  := qyVer_Datos_Cajero.FieldByName('R_MONEDA').AsInteger;
            spT_MONTO_MSJ_COLECTAS.ExecProc;

            if spT_MONTO_MSJ_COLECTAS.ParamByName('R_MONTO').AsFloat > awrMontoMsjColectas then
            begin
               ShowMessage('Colectas');
            end;
         end;
      end
      else
      begin
         spC_POS_FP.ParamByName('P_ID').AsInteger := dsEncabezado.DataSet.FieldByName('R_ID').AsInteger;
         spC_POS_FP.ExecProc;
         spC_POS_FP.Transaction.CommitRetaining;
      end;

      if edCliente.Enabled and edCliente.Visible then
         edCliente.SetFocus
   end
   else
   begin
     ShowMessage('Para continuar es necesario autorizar el movimiento.');
   end
end;

procedure TfrmCapturar_punto_de_ventas.buReImprimirClick(Sender: TObject);
begin
   if buF12.Visible then
   begin
      frmPRN_0008 := TfrmPRN_0008.Create(Application);
      try
         frmPRN_0008.CAJA    := qyVer_Datos_Cajero.FieldByName('R_ID').AsInteger;
         frmPRN_0008.ALMACEN := qyVer_Datos_Cajero.FieldByName('R_ALMACEN').AsInteger;
         frmPRN_0008.NIVEL   := reglas.dameUsuarioNivel;
         frmPRN_0008.ShowModal;
      finally
         frmPRN_0008.Free;
      end;
   end;

   if buF12Imp.Visible then
   begin
      PRN_0037 := TPRN_0037.Create(Application);
      try
         PRN_0037.CAJA    := qyVer_Datos_Cajero.FieldByName('R_ID').AsInteger;
         PRN_0037.ALMACEN := qyVer_Datos_Cajero.FieldByName('R_ALMACEN').AsInteger;
         PRN_0037.ShowModal;
      finally
         PRN_0037.Free;
      end;
   end;
end;

procedure TfrmCapturar_punto_de_ventas.buVentasClick(Sender: TObject);
begin
  frmCapturar_Punto_de_Venta_Cancelacion := TfrmCapturar_Punto_de_Venta_Cancelacion.Crear(Application, qyVer_Datos_Cajero.FieldByName('R_ID').AsInteger, qyVer_Datos_Cajero.FieldByName('R_USUARIO').AsInteger);
  frmCapturar_Punto_de_Venta_Cancelacion.ShowModal;
  frmCapturar_Punto_de_Venta_Cancelacion.Destroy;
  datos_punto_de_venta;
end;

procedure TfrmCapturar_punto_de_ventas.buCorteClick(Sender: TObject);
var
   ejecutar     : boolean;
//   reportes     : TfrmPRN_CORTE_CAJA_PV;
   autNivel     : word;
   ruta         : string;
   archivo      : string;
   args         : string;
begin
  ejecutar := true;
  autNivel := 3;

  if (autNivel > reglas.dameUsuarioNivel) then
  begin
//     Application.CreateForm(TfrmAcceso, frmAcceso);
     frmAcceso := TfrmAcceso.Create(Application);
     try
        frmAcceso.Nivel  := autNivel;
        frmAcceso.Status := 'Cortes';
        frmAcceso.ShowModal;
        ejecutar := frmAcceso.Rsp;
     finally
        frmAcceso.Free;
     end;
  end;

  if ejecutar then
  begin
     ruta    := ExtractFilePath(ParamStr(0))+'reportes\salidas\';
     archivo := 'CortesPuntoDeVta.exe';
     if FileExists(ruta + archivo) then
     begin
        args := IntToStr(reglas.dame_usuario) + ' ' +
                IntToStr(awrNivel)            + ' ' +
                qyVer_Datos_Cajero.FieldByName('R_ID').AsString      + ' ' +
                qyVer_Datos_Cajero.FieldByName('R_ALMACEN').AsString + ' ' +
                qyVer_Datos_Cajero.FieldByName('R_MONEDA').AsString;
                WinExec(PAnsiChar(ruta + archivo + ' ' + args), SW_SHOWDEFAULT)
     end
     else
        ShowMessage('Falta archivo CortesPuntoDeVta.exe en ..\reportes\salidas');
{     reportes := TfrmPRN_CORTE_CAJA_PV.Crear(Application, reglas.dame_fecha, qyVer_Datos_Cajero.FieldByName('R_ID').AsInteger, qyVer_Datos_Cajero.FieldByName('R_ALMACEN').AsInteger);
     reportes.ShowModal;
     reportes.Destroy;}
  end;
end;

procedure TfrmCapturar_punto_de_ventas.buF3Click(Sender: TObject);
begin
  spADD_PVTA_ENC.ParamByName('P_CAJERO').AsInteger := reglas.dame_usuario;
  spADD_PVTA_ENC.ParamByName('P_AFECTAR').AsString := 'Si';
  spADD_PVTA_ENC.ExecProc;
  spADD_PVTA_ENC.Transaction.CommitRetaining;
  reglas.abrir_IBQuery_seek('R_FOLIO_DE_VENTA',spADD_PVTA_ENC.ParamByName('R_FOLIO_VENTA').AsInteger,qyEncabezado);
end;

procedure TfrmCapturar_punto_de_ventas.buF4Click(Sender: TObject);
var
   pntX : TPoint;
   pntY : TPoint;
   vacio: boolean;
begin
  pntX   := paCaptura.ClientToScreen(Point(0,0));
  pntY.x := dgPartidas.Width;
  pntY.y := dgPartidas.Height + paCaptura.Height;
  frmCapturar_Devoluciones := TfrmCapturar_Devoluciones.Crear(Application, pntX, pntY, dsEncabezado.DataSet.FieldByName('R_ID').AsInteger, dsVer_Datos_Cajero.DataSet.FieldByName('R_ALMACEN').AsInteger);
  frmCapturar_Devoluciones.ShowModal;
  vacio := frmCapturar_Devoluciones.isEmpty;
  frmCapturar_Devoluciones.Destroy;
  if not(vacio) then
  begin
     reglas.abrir_IBQuery_seek('R_ID', dsEncabezado.DataSet.FieldByName('R_ID').AsInteger, qyEncabezado);
     reglas.refresh_IBQuery(qyPartidas);
     fijarBotonesP(false);
  end;
end;

procedure TfrmCapturar_punto_de_ventas.edExtensionButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
begin
  edExtension.Tag := 0;
  case AbsoluteIndex of
    0 : begin
           frmSeleccionarExtension := TfrmSeleccionarExtension.Create(Application);
           try
              buscaExtension;
              frmSeleccionarExtension.DATABASE    := dmIBModulo.ibSistema;
              frmSeleccionarExtension.TRANSACTION := dmIBModulo.ibSistemaTransaccion;
              frmSeleccionarExtension.CLAVE       := edExtension.Text;
              if frmSeleccionarExtension.abrirConsulta then
              begin
                 frmSeleccionarExtension.ShowModal;
                 if frmSeleccionarExtension.ACEPTAR then
                 begin
                    edCliente.Text   := frmSeleccionarExtension.C_CLAVE;
                    edCliente.Tag    := frmSeleccionarExtension.CLIENTE;
                    edExtension.Text := frmSeleccionarExtension.CLAVE;
                    edExtension.Tag  := frmSeleccionarExtension.EXTENSION;
                    //edExtension.SetSelection(Length(edExtension.Text),Length(edExtension.Text),false);
                 end;
              end
              else
                 begin
                    edCliente.Text   := frmSeleccionarExtension.C_CLAVE;
                    edCliente.Tag    := frmSeleccionarExtension.CLIENTE;
                    edExtension.Text := frmSeleccionarExtension.CLAVE;
                    edExtension.Tag  := frmSeleccionarExtension.EXTENSION;
                    //edExtension.SetSelection(Length(edExtension.Text),Length(edExtension.Text),false);
                 end;
           finally
              frmSeleccionarExtension.Free;
           end;
           //frmSeleccionarExtension := nil;
           buscaCliente;
        end;
    1 : begin
           edCliente.Clear;
           edCliente.Tag := 0;
           edExtension.Clear;
           edExtension.Tag := 0;
        end;
  end;
end;

procedure TfrmCapturar_punto_de_ventas.edExtensionKeyPress(Sender: TObject;
  var Key: Char);
begin
 // if Key = #13 then
 //    edExtension.OnButtonClick(Sender, 0);
end;

procedure TfrmCapturar_punto_de_ventas.deDisponibleButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
var
   respuesta : boolean;
   autorizo  : integer;
begin
   autorizo  := reglas.dame_usuario;

   respuesta := awrNivel >= 5;
   if awrNivel < 5 then
   begin
//      Application.CreateForm(TfrmAcceso, frmAcceso);
      frmAcceso := TfrmAcceso.Create(Application);
      try
         frmAcceso.Nivel  := 5;
         frmAcceso.Status := 'Credito';
         frmAcceso.ShowModal;
         respuesta := frmAcceso.Rsp;
      finally
         frmAcceso.Free;
      end;
   end;

  if respuesta then
  begin
     {
     idAumento.Entrada := '0';
     idAumento.Execute;
     if (idAumento.Respuesta) and (idAumento.Entrada <> '') then
     begin
        spPVTA_MONTO.ParamByName('P_ID').AsInteger       := dsEncabezado.DataSet.FieldByName('R_ID').AsInteger;
        spPVTA_MONTO.ParamByName('P_AUTORIZO').AsInteger := autorizo;
        spPVTA_MONTO.ParamByName('P_MONTO').AsFloat      := StrToFloat(idAumento.Entrada);
        spPVTA_MONTO.ExecSQL;
        spPVTA_MONTO.Transaction.CommitRetaining;
        reglas.refresh_IBQuery(qyMuestraCredito);
     end;
     }
  end;
end;

procedure TfrmCapturar_punto_de_ventas.deGlobalButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
var
   respuesta : boolean;
begin
   respuesta := awrNivel >= 5;
   if awrNivel < 5 then
   begin
      frmAcceso := TfrmAcceso.Create(Application);
      try
         //Application.CreateForm(TfrmAcceso, frmAcceso);
         frmAcceso.Nivel  := 5;
         frmAcceso.Status := 'Credito';
         frmAcceso.ShowModal;
         respuesta := frmAcceso.Rsp;
      finally
         frmAcceso.Free;
      end;
   end;

  if respuesta then
  begin
     {
     idDescuento.Entrada := '0';
     idDescuento.Execute;
     if (idDescuento.Respuesta) and (idDescuento.Entrada <> '') then
     begin
        spDESCUENTO_GLOBAL_PVTA.ParamByName('P_ID').AsInteger      := dsEncabezado.DataSet.FieldByName('R_ID').AsInteger;
        spDESCUENTO_GLOBAL_PVTA.ParamByName('P_DESCUENTO').AsFloat := StrToFloat(idDescuento.Entrada);
        spDESCUENTO_GLOBAL_PVTA.ExecProc;
        spDESCUENTO_GLOBAL_PVTA.Transaction.CommitRetaining;
        if not(qyPartidas.IsEmpty) then
        begin
           reglas.abrir_IBQuery_seek('R_ID', dsEncabezado.DataSet.FieldByName('R_ID').AsInteger, qyEncabezado);
           reglas.refresh_IBQuery(qyPartidas);
        end;
     end
     }
  end;
end;

procedure TfrmCapturar_punto_de_ventas.deDisponibleKeyPress(
  Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
     deDisponibleButtonClick(nil, 0);
  end;
end;

procedure TfrmCapturar_punto_de_ventas.deGlobalKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
     deGlobalButtonClick(nil, 0);
  end
end;

procedure TfrmCapturar_punto_de_ventas.itemF5Click(Sender: TObject);
begin
   buF5.Click;
end;

procedure TfrmCapturar_punto_de_ventas.buClienteClick(Sender: TObject);
var
   cliente : integer;
   clave   : String;
begin
   frmAltaRapidaCliente := TfrmAltaRapidaCliente.Create(Application);
   try
      frmAltaRapidaCliente.edNombre.Text := UpperCase(edCliente.Text);
      frmAltaRapidaCliente.ShowModal;
      cliente := frmAltaRapidaCliente.CLIENTE;
      clave   := frmAltaRapidaCliente.edClave.Text;
   finally
      frmAltaRapidaCliente.Free;
   end;

  if (cliente <> 0) then
  begin
     edCliente.Tag    := cliente;
     edCliente.Text   := clave;
     edExtension.Tag  := 0;
     edExtension.Text := '';
     buscaCliente;
     buGuardar.Click;
  end
end;

procedure TfrmCapturar_punto_de_ventas.buF5Click(Sender: TObject);
var
   pnt  : TPoint;
   pnt2 : TPoint;
begin
   awrAceptaDesdeLP   := false;
   pnt                := dgPartidas.ClientToScreen(Point(0,0));
   pnt2               := paEncabezado.ClientToScreen(Point(0,0));
   frmConsultaPrecios := TfrmConsultaPrecios.Create(Application);
   try
      frmConsultaPrecios.Left                := pnt.x;
      frmConsultaPrecios.Top                 := pnt2.y;
      frmConsultaPrecios.Width               := paEncabezado.Width;
      frmConsultaPrecios.Height              := dgPartidas.Height + awrHeightExtra + paEncabezado.Height;
      frmConsultaPrecios.paEncabezado.Height := paEncabezado.Height;


      frmConsultaPrecios.ALMACEN       := dsEncabezado.DataSet.FieldByName('R_ALMACEN').AsInteger;
      frmConsultaPrecios.CLIENTE       := dsEncabezado.DataSet.FieldByName('R_CLIENTE').AsInteger;
      frmConsultaPrecios.EXTENSION     := dsEncabezado.DataSet.FieldByName('R_EXTENSION').AsInteger;
      frmConsultaPrecios.MONEDA        := dsEncabezado.DataSet.FieldByName('R_MONEDA').AsInteger;

      frmConsultaPrecios.edCodigo.Text := awrBuscaDesdeLP;
      frmConsultaPrecios.openBusqueda;

      awrAceptaDesdeLP                 := frmConsultaPrecios.ShowModal = mrOk;
      awrBuscaDesdeLP                  := frmConsultaPrecios.CLAVE;
   finally
     frmConsultaPrecios.Free;
   end;
end;

procedure TfrmCapturar_punto_de_ventas.buPedidosClick(Sender: TObject);
var
   serie    : string;
   repetir  : integer;
   cantidad : integer;
   i        : integer;
begin
   frmSeleccionarPedidoParaPOS := TfrmSeleccionarPedidoParaPOS.Create(application);
   try
      frmSeleccionarPedidoParaPOS.DATABASE    := dmIBModulo.ibSistema;
      frmSeleccionarPedidoParaPOS.TRANSACTION := dmIBModulo.ibSistemaTransaccion;
      frmSeleccionarPedidoParaPOS.open;
      frmSeleccionarPedidoParaPOS.ShowModal;
      if frmSeleccionarPedidoParaPOS.ACEPTAR then
      begin
         frmSeleccionarPedidoParaPOS.qyPartidas.First;
         while not(frmSeleccionarPedidoParaPOS.qyPartidas.Eof) do
         begin
            if frmSeleccionarPedidoParaPOS.qyPartidas.FieldByName('R_NUM_SERIE').AsString = 'Si' then
            begin
               repetir  := frmSeleccionarPedidoParaPOS.qyPartidas.FieldByName('R_CANTIDAD').AsInteger;
               cantidad := 1;
            end
            else
               begin
                  repetir  := 1;
                  cantidad := frmSeleccionarPedidoParaPOS.qyPartidas.FieldByName('R_CANTIDAD').AsInteger;
               end;

            for i := 1 to repetir do
            begin
               if frmSeleccionarPedidoParaPOS.qyPartidas.FieldByName('R_NUM_SERIE').AsString = 'Si' then
               begin
                  serie           := '';
                  {
                  idSerie.Titulo  := frmSeleccionarPedidoParaPOS.qyPartidas.FieldByName('R_DESCRIPCION').AsString;
                  idSerie.Entrada := '';
                  idSerie.Execute;
                  if idSerie.Respuesta then
                     serie := idSerie.Entrada;
                     }
               end;

               MarcoMateriales1.pedirSerie;
               //agregar partida
               spADD_PARTIDA_PVTA.ParamByName('P_ID').AsInteger              := 0;
               spADD_PARTIDA_PVTA.ParamByName('P_PVTA').AsInteger            := dsEncabezado.DataSet.FieldByName('R_ID').AsInteger;
               spADD_PARTIDA_PVTA.ParamByName('P_VENDEDOR').AsInteger        := reglas.dame_usuario;
               spADD_PARTIDA_PVTA.ParamByName('P_MATERIAL').AsInteger        := frmSeleccionarPedidoParaPOS.qyPartidas.FieldByName('R_MATERIAL').AsInteger;
               spADD_PARTIDA_PVTA.ParamByName('P_CANTIDAD').AsFloat          := cantidad;
               spADD_PARTIDA_PVTA.ParamByName('P_UNIDAD').AsInteger          := frmSeleccionarPedidoParaPOS.qyPartidas.FieldByName('R_UNIDAD').AsInteger;
               spADD_PARTIDA_PVTA.ParamByName('P_PRECIO').AsFloat            := frmSeleccionarPedidoParaPOS.qyPartidas.FieldByName('R_PRECIO').AsFloat;
               spADD_PARTIDA_PVTA.ParamByName('P_PRECIO_UNITARIO').AsFloat   := frmSeleccionarPedidoParaPOS.qyPartidas.FieldByName('R_PRECIO_SIN_IMPUESTOS').AsFloat;
               spADD_PARTIDA_PVTA.ParamByName('P_MEDIDA').Value              := frmSeleccionarPedidoParaPOS.qyPartidas.FieldByName('R_MEDIDA').AsInteger;
               spADD_PARTIDA_PVTA.ParamByName('P_COLOR').Value               := frmSeleccionarPedidoParaPOS.qyPartidas.FieldByName('R_COLOR').AsInteger;
               spADD_PARTIDA_PVTA.ParamByName('P_SUBTOTAL').AsFloat          := frmSeleccionarPedidoParaPOS.qyPartidas.FieldByName('R_SUBTOTAL').AsFloat;
               spADD_PARTIDA_PVTA.ParamByName('P_IVA').AsFloat               := frmSeleccionarPedidoParaPOS.qyPartidas.FieldByName('R_IVA').AsFloat;
               spADD_PARTIDA_PVTA.ParamByName('P_IEPS').AsFloat              := frmSeleccionarPedidoParaPOS.qyPartidas.FieldByName('R_IEPS').AsFloat;
               spADD_PARTIDA_PVTA.ParamByName('P_IMPUESTO1').AsFloat         := frmSeleccionarPedidoParaPOS.qyPartidas.FieldByName('R_IMPUESTO1').AsFloat;
               spADD_PARTIDA_PVTA.ParamByName('P_IMPUESTO2').AsFloat         := frmSeleccionarPedidoParaPOS.qyPartidas.FieldByName('R_IMPUESTO2').AsFloat;
               spADD_PARTIDA_PVTA.ParamByName('P_PORC_DP').AsFloat           := frmSeleccionarPedidoParaPOS.qyPartidas.FieldByName('R_DESCUENTO_PORC').AsFloat;
               spADD_PARTIDA_PVTA.ParamByName('P_IVA_PORC').AsFloat          := frmSeleccionarPedidoParaPOS.qyPartidas.FieldByName('R_IVA_PORC').AsFloat;
               spADD_PARTIDA_PVTA.ParamByName('P_IEPS_PORC').AsFloat         := frmSeleccionarPedidoParaPOS.qyPartidas.FieldByName('R_IEPS_PORC').AsFloat;
               spADD_PARTIDA_PVTA.ParamByName('P_IMPUESTO1_PORC').AsFloat    := frmSeleccionarPedidoParaPOS.qyPartidas.FieldByName('R_IMPUESTO1_PORC').AsFloat;
               spADD_PARTIDA_PVTA.ParamByName('P_IMPUESTO2_PORC').AsFloat    := frmSeleccionarPedidoParaPOS.qyPartidas.FieldByName('R_IMPUESTO2_PORC').AsFloat;
               spADD_PARTIDA_PVTA.ParamByName('P_COSTO_ULT_COMPRA').AsFloat  := frmSeleccionarPedidoParaPOS.qyPartidas.FieldByName('R_COSTO_ULT_COMPRA').AsFloat;
               spADD_PARTIDA_PVTA.ParamByName('P_SERIE').AsString            := serie;
               spADD_PARTIDA_PVTA.ParamByName('P_ID_REFERENCIA').AsInteger   := frmSeleccionarPedidoParaPOS.qyPartidas.FieldByName('R_ID').AsInteger;
               spADD_PARTIDA_PVTA.ParamByName('P_TABLA_REFERENCIA').AsString := 'PEDIDOS_DETALLE';
               spADD_PARTIDA_PVTA.ExecProc;
               spADD_PARTIDA_PVTA.Transaction.CommitRetaining;
            end;

            frmSeleccionarPedidoParaPOS.qyPartidas.Next;
         end;
         reglas.abrir_IBQuery_seek('R_ID', dsEncabezado.DataSet.FieldByName('R_ID').AsInteger, qyEncabezado);
         reglas.refresh_IBQuery(qyPartidas);
         fijarBotonesP(false);
      end;
   finally
      frmSeleccionarPedidoParaPOS.Free;
   end;
end;

procedure TfrmCapturar_punto_de_ventas.itemF6Click(Sender: TObject);
begin
   buF6.Click;
end;

procedure TfrmCapturar_punto_de_ventas.buF6Click(Sender: TObject);
var
   pnt  : TPoint;
   pnt2 : TPoint;
begin
   pnt         := dgPartidas.ClientToScreen(Point(0,0));
   pnt2        := paEncabezado.ClientToScreen(Point(0,0));
   frmColectas := TfrmColectas.Create(Application);
   try
      frmColectas.Left       := pnt.x;
      frmColectas.Top        := pnt2.y;
      frmColectas.Width      := paEncabezado.Width;
      frmColectas.Height     := dgPartidas.Height + awrHeightExtra + paEncabezado.Height;

      frmColectas.IMPRESORA  := print1.impresora;
      frmColectas.PUERTO     := print1.puerto;
      frmColectas.CARACTERES := print1.caracteres;
      frmColectas.CAJA       := dsVer_Datos_Cajero.DataSet.FieldByName('R_ID').AsInteger;
      frmColectas.USUARIO    := dsVer_Datos_Cajero.DataSet.FieldByName('R_USUARIO').AsInteger;
      frmColectas.ALMACEN    := dsVer_Datos_Cajero.DataSet.FieldByName('R_ALMACEN').AsInteger;
      frmColectas.ShowModal;
   finally
     frmColectas.Free;
   end;
end;

procedure TfrmCapturar_punto_de_ventas.buAbrirCajonClick(Sender: TObject);
begin
   abrirCajon;
end;

end.

