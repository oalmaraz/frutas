unit capturar_clientes;

interface               

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  capturar_base_sujetos, Db,   DBCtrls, ComCtrls,
    ExtCtrls,
    Menus, ExtDlgs, ImgList,  IBStoredProc,
  IBTable,  IBCustomDataSet, IBQuery,   Buttons,

  StdCtrls,  Mask,    jpeg,
       Grids,
  DBGrids, System.ImageList
  ;

type
  TfrmCapturar_clientes = class(TfrmCapturar_base_sujetos)
    dsMonedas: TDataSource;
    tsBancos: TTabSheet;
    dgBancos: TDBGrid;
    dsBancos: TDataSource;
    spDelBanco: TIBStoredProc;
    tsReferencias: TTabSheet;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    TCapturarID: TIntegerField;
    TCapturarSUJETO: TIntegerField;
    TCapturarLIMITE_CREDITO: TFloatField;
    TCapturarMONEDA: TIntegerField;
    TCapturarACUMULADO_COMPRAS: TFloatField;
    TCapturarACUMULADO_PAGOS: TFloatField;
    TCapturarNUM_PAGOS_EXTEMPORANEOS: TIntegerField;
    TCapturarVENDEDOR: TIntegerField;
    TCapturarFORMAS_DE_PAGO: TIntegerField;
    TCapturarSERIE_FACTURA: TIBStringField;
    TCapturarTRANSPORTISTA: TIntegerField;
    TCapturarAPLICAR_PRECIO_MAYOREO: TIBStringField;
    TCapturarCLASIFICACION: TIntegerField;
    TCapturarDIAS_DE_RETARDO: TIntegerField;
    TCapturarREMITENTE: TIntegerField;
    TCapturarINCLUIR_EN_DECLARACION: TIBStringField;
    TCapturarPRIORIDAD: TIBStringField;
    TCapturarCONGELAR_VENTA: TIBStringField;
    TCapturarPROMOCION: TIntegerField;
    TCapturarDIA_FACTURA_REVISION: TIBStringField;
    TCapturarDFR_HORA_DE: TDateTimeField;
    TCapturarDFR_HORA_A: TDateTimeField;
    TCapturarDIA_ENTREGA_CHEQUES: TIBStringField;
    TCapturarDEC_HORA_DE: TDateTimeField;
    TCapturarDEC_HORA_A: TDateTimeField;
    qyMonedas: TIBQuery;
    TCapturardescripcion_moneda: TStringField;
    qyVendedores: TIBQuery;
    dsVendedores: TDataSource;
    qyCondiciones_Comerciales: TIBQuery;
    qyTransportistas: TIBQuery;
    qyRemitentes: TIBQuery;
    dsCondiciones_Comerciales: TDataSource;
    dsTransportistas: TDataSource;
    dsRemitentes: TDataSource;
    Label13: TLabel;
    leVendedor: TDBLookupComboBox;
    Label17: TLabel;
    leTransportista: TDBLookupComboBox;
    Label15: TLabel;
    leFormaPago: TDBLookupComboBox;
    Label20: TLabel;
    leRemitente: TDBLookupComboBox;
    Label19: TLabel;
    ceDiasRetardo: TDBEdit;
    pePrioriodad: TDBCombobox;
    Label23: TLabel;
    dsClasificaciones: TDataSource;
    TClasificaciones: TIBTable;
    TCapturardescripcion_clasificacion: TStringField;
    qyBancos: TIBQuery;
    qyBancosR_ID: TIntegerField;
    qyBancosR_CLIENTE: TIntegerField;
    qyBancosR_CLAVE: TIBStringField;
    qyBancosR_NOMBRE: TIBStringField;
    qyBancosR_CUENTA: TIBStringField;
    TCapturarnombre_vendedor: TStringField;
    TCapturarnombre_transportista: TStringField;
    TCapturarnombre_remitente: TStringField;
    TCapturarnombre_forma: TStringField;
    fpBancosD: TPanel;
    fpBancos: TPanel;
    ibNuevoBanco: TBitBtn;
    ibEliminarBanco: TBitBtn;
    fpReferencias: TPanel;
    Label14: TLabel;
    deLimiteCredito: TDBEdit;
    Label16: TLabel;
    deSerieFactura: TDBEdit;
    leClasificacion: TDBLookupComboBox;
    Label18: TLabel;
    Label12: TLabel;
    peDiaFactura: TDBCombobox;
    Label24: TLabel;
    Label27: TLabel;
    peDiaEntrega: TDBCombobox;
    teDEDe: TDBEdit;
    Label25: TLabel;
    teDFDe: TDBEdit;
    Label28: TLabel;
    Label29: TLabel;
    dtDFA: TDBEdit;
    Label26: TLabel;
    teDEA: TDBEdit;
    leMonedas: TDBLookupComboBox;
    TCapturarFIRMA: TBlobField;
    TCapturarESTATUS: TIBStringField;
    deEstatus: TDBCombobox;
    Label33: TLabel;
    tsExtensiones: TTabSheet;
    TExtensiones: TIBTable;
    dsClientes_Extensiones: TDataSource;
    spIDExtensiones: TIBStoredProc;
    TExtensionesID: TIntegerField;
    TExtensionesSUJETO_CLIENTE: TIntegerField;
    TExtensionesFECHA_ALTA: TDateTimeField;
    TExtensionesCLAVE: TIBStringField;
    TExtensionesNOMBRE: TIBStringField;
    TExtensionesFOTO: TBlobField;
    TExtensionesFIRMA: TBlobField;
    TExtensionesLIMITE_CREDITO: TFloatField;
    TExtensionesESTATUS: TIBStringField;
    TExtensionesDOMICILIO: TIBStringField;
    qyDescuentos: TIBQuery;
    dsDescuentos: TDataSource;
    qyDescuentosR_ID: TIntegerField;
    qyDescuentosR_EXTENSION: TIntegerField;
    qyDescuentosR_CONCEPTO: TIntegerField;
    qyDescuentosR_DESC_PORC: TFloatField;
    qyDescuentosR_OBSERVACIONES: TBlobField;
    qyDescuentosR_CONCEPTO_CLAVE: TIBStringField;
    qyDescuentosR_CONCEPTO_DESCRIPCION: TIBStringField;
    spMOD_DESCUENTOS_EXTENSIONES: TIBStoredProc;
    TExtensionesPROVEEDOR: TIBStringField;
    paFirma: TPanel;
    laFirma: TLabel;
    imFirma: TImage;
    pmFirma: TPopupMenu;
    Cargar: TMenuItem;
    Limpiar2: TMenuItem;
    pmFotoExt: TPopupMenu;
    pmFirmaExt: TPopupMenu;
    Cargar2: TMenuItem;
    Limpiar3: TMenuItem;
    Cargar3: TMenuItem;
    Limpiar4: TMenuItem;
    cbCongelarVenta: TDBCheckBox;
    cbIncluirEnDeclaracion: TDBCheckBox;
    cbPrecioMayoreo: TDBCheckBox;
    sbRefreshVendedor: TSpeedButton;
    sbFormaDePago: TSpeedButton;
    sbRefreshTransportista: TSpeedButton;
    sbRefreshRemitente: TSpeedButton;
    sbRefreshMonedas: TSpeedButton;
    sbRefreshClasificaciones: TSpeedButton;
    tsMensajes: TTabSheet;
    TExtensionesDIRECCION: TIntegerField;
    TExtensionesTRANSPORTISTA: TIntegerField;
    TDomicilioExtension: TIBTable;
    dsDomicilioExtension: TDataSource;
    dgMensajes: TDBGrid;
    TMensajes: TIBTable;
    dsMensajes: TDataSource;
    Label2: TLabel;
    cePorcentaje: TDBEdit;
    TCapturarDESCUENTO_PORC: TFloatField;
    deUnidadesCompradas: TDBEdit;
    deAcumuladoDePagos: TDBEdit;
    dePagosExtemporaneos: TDBEdit;
    TCapturarCREDITO_DISPONIBLE: TFloatField;
    TCapturarRECOMENDADO_POR: TIntegerField;
    deRecomendadoPor: TDBEdit;
    Label39: TLabel;
    TCapturarrecomendadopor_nombre: TStringField;
    pcExtensiones: TPageControl;
    tsExtensionesMant: TTabSheet;
    tsDescuentos: TTabSheet;
    paCapturaExt: TPanel;
    dgExtensiones: TDBGrid;
    dgDescuentos: TDBGrid;
    Label42: TLabel;
    deRFCExt: TDBEdit;
    Label34: TLabel;
    deFechaAltaExtension: TDBEdit;
    deClaveExtension: TDBEdit;
    Label35: TLabel;
    Label36: TLabel;
    deNombreExtension: TDBEdit;
    peEstatusExtension: TDBCombobox;
    Label38: TLabel;
    Label47: TLabel;
    deCalleExtension: TDBEdit;
    deEntreExtension: TDBEdit;
    Label48: TLabel;
    Label49: TLabel;
    deYExtension: TDBEdit;
    Label54: TLabel;
    deExtExtension: TDBEdit;
    deLetraExtension: TDBEdit;
    Label52: TLabel;
    deIntExtension: TDBEdit;
    Label53: TLabel;
    deCPExtension: TDBEdit;
    Label51: TLabel;
    deColoniaExtension: TDBEdit;
    Label50: TLabel;
    cbCiudades: TDBLookupComboBox;
    Label55: TLabel;
    cbTransportistas: TDBLookupComboBox;
    Label45: TLabel;
    Label40: TLabel;
    deRefC_P: TDBEdit;
    Label56: TLabel;
    deZonaExtension: TDBEdit;
    TExtensionesRFC: TIBStringField;
    TExtensionesFLAG_FACTURAR: TIBStringField;
    cbFactAExt: TDBCheckBox;
    buF11Ext: TBitBtn;
    buF10Ext: TBitBtn;
    buF9Ext: TBitBtn;
    buF8Ext: TBitBtn;
    buF7Ext: TBitBtn;
    paFotoExt: TPanel;
    paFirmaExt: TPanel;
    spDEL_DESCUENTOS_EXTENSIONES: TIBStoredProc;
    ppExtensiones: TPopupMenu;
    itemF7Ext: TMenuItem;
    itemF8Ext: TMenuItem;
    itemF9Ext: TMenuItem;
    itemF10Ext: TMenuItem;
    itemF11Ext: TMenuItem;
    ppDescuentos: TPopupMenu;
    itemF7Desc: TMenuItem;
    itemF8Desc: TMenuItem;
    itemF11Desc: TMenuItem;
    Label41: TLabel;
    deExtRemitente: TDBEdit;
    TExtensionesREMITENTE: TIntegerField;
    TExtensionesremitente_nombre: TStringField;
    imRemitente: TImageList;
    lvCopiaExt: TListView;
    Shape37: TShape;
    buCopiar: TBitBtn;
    dnMantenimiento: TDBNavigator;
    spPEGAR_EXTENSION: TIBStoredProc;
    sbLimpiarCC: TSpeedButton;
    sbLimpiarVendedor: TSpeedButton;
    sbLimpiarTransportista: TSpeedButton;
    sbLimpiarRemitente: TSpeedButton;
    TExtensionesTELEFONO: TIBStringField;
    edExtTelefono: TDBEdit;
    Label44: TLabel;
    Label46: TLabel;
    cbCtasExtension: TDBLookupCombobox;
    TExtensionesCUENTA: TIntegerField;
    Label57: TLabel;
    deCURPExt: TDBEdit;
    TExtensionesCURP: TIBStringField;
    buLimCta: TBitBtn;
    buActCta: TBitBtn;
    buLimTransportista: TBitBtn;
    buActTransportista: TBitBtn;
    ceLimiteCreditoExtension: TDBEdit;
    Label37: TLabel;
    buLimCiudad: TBitBtn;
    buActCiudad: TBitBtn;
    TCapturarDP_PORC: TFloatField;
    Label58: TLabel;
    edDescParcial: TDBEdit;
    tsHuellas: TTabSheet;
    paManoDInd: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    img_d_ind: TImage;
    img_d_pul: TImage;
    img_i_ind: TImage;
    img_i_pul: TImage;
    TCapturarMANO_I_IMG_IND: TBlobField;
    TCapturarMANO_I_HUE_IND: TBlobField;
    TCapturarMANO_I_VER_IND: TIBStringField;
    TCapturarMANO_I_IMG_PUL: TBlobField;
    TCapturarMANO_I_HUE_PUL: TBlobField;
    TCapturarMANO_I_VER_PUL: TIBStringField;
    TCapturarMANO_D_IMG_IND: TBlobField;
    TCapturarMANO_D_HUE_IND: TBlobField;
    TCapturarMANO_D_VER_IND: TIBStringField;
    TCapturarMANO_D_IMG_PUL: TBlobField;
    TCapturarMANO_D_HUE_PUL: TBlobField;
    TCapturarMANO_D_VER_PUL: TIBStringField;
    tsExtHuellas: TTabSheet;
    Panel9: TPanel;
    Shape1: TShape;
    Label59: TLabel;
    DBText1: TDBText;
    Label60: TLabel;
    DBText2: TDBText;
    dnHuella: TDBNavigator;
    TExtensionesMANO_I_IMG_IND: TBlobField;
    TExtensionesMANO_I_HUE_IND: TBlobField;
    TExtensionesMANO_I_VER_IND: TIBStringField;
    TExtensionesMANO_I_IMG_PUL: TBlobField;
    TExtensionesMANO_I_HUE_PUL: TBlobField;
    TExtensionesMANO_I_VER_PUL: TIBStringField;
    TExtensionesMANO_D_IMG_IND: TBlobField;
    TExtensionesMANO_D_HUE_IND: TBlobField;
    TExtensionesMANO_D_VER_IND: TIBStringField;
    TExtensionesMANO_D_IMG_PUL: TBlobField;
    TExtensionesMANO_D_HUE_PUL: TBlobField;
    TExtensionesMANO_D_VER_PUL: TIBStringField;
    Panel10: TPanel;
    eimg_d_ind: TImage;
    Panel11: TPanel;
    Panel12: TPanel;
    eimg_d_pul: TImage;
    Panel13: TPanel;
    Panel14: TPanel;
    eimg_i_ind: TImage;
    Panel15: TPanel;
    Panel16: TPanel;
    eimg_i_pul: TImage;
    Panel17: TPanel;
    TCapturarES_DISTRIBUIDOR: TIBStringField;
    cbEsDistribuidor: TDBCheckBox;
    TCapturarFECHA_ULT_COMPRA: TDateTimeField;
    TCapturarFECHA_ULT_PAGO: TDateTimeField;
    Label61: TLabel;
    Label62: TLabel;
    edFechaUltCompra: TDBEdit;
    edFechaUltPago: TDBEdit;
    edCBarras: TDBEdit;
    laIdentificarse: TBitBtn;
    TCapturarCODIGO_BARRAS: TIBStringField;
    spAUTO_FOLIO_C: TIBStoredProc;
    edSepNombre: TDBEdit;
    edSepAPaterno: TDBEdit;
    edSepAMaterno: TDBEdit;
    Label22: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    TSujetosFECHA_NAC: TDateTimeField;
    Label65: TLabel;
    deFechaNacimiento: TDBEdit;
    TCapturarELIMINAR_IVA_FACTURAS: TIBStringField;
    cbEliminarIVA: TDBCheckBox;
    Panel18: TPanel;
    buF7Desc: TBitBtn;
    buF8Desc: TBitBtn;
    buF11Desc: TBitBtn;
    dnDescuentos: TDBNavigator;
    procedure ibBancosClick(Sender: TObject);
    procedure ibNuevoBancoClick(Sender: TObject);
    procedure ibEliminarBancoClick(Sender: TObject);
    procedure dsBancosDataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
    procedure dsFuenteDataChange(Sender: TObject; Field: TField);
    procedure ibReferenciasClick(Sender: TObject);
    procedure dsClientes_ExtensionesDataChange(Sender: TObject;
      Field: TField);
    procedure ibCancelarContactosClick(Sender: TObject);
    procedure ibEliminarContactosClick(Sender: TObject);
    procedure dgExtensionesDblClick(Sender: TObject);
    procedure pcSujetosChange(Sender: TObject);
    procedure CargarClick(Sender: TObject);
    procedure Limpiar2Click(Sender: TObject);
    procedure Cargar2Click(Sender: TObject);
    procedure Limpiar3Click(Sender: TObject);
    procedure Cargar3Click(Sender: TObject);
    procedure Limpiar4Click(Sender: TObject);
    procedure sbRefreshRemitenteClick(Sender: TObject);
    procedure sbRefreshVendedorClick(Sender: TObject);
    procedure sbFormaDePagoClick(Sender: TObject);
    procedure sbRefreshMonedasClick(Sender: TObject);
    procedure sbRefreshClasificacionesClick(Sender: TObject);
    procedure TExtensionesBeforeOpen(DataSet: TDataSet);
    procedure TExtensionesAfterEdit(DataSet: TDataSet);
    procedure TExtensionesAfterPost(DataSet: TDataSet);
    procedure TDomicilioExtensionAfterPost(DataSet: TDataSet);
    procedure TCapturarCalcFields(DataSet: TDataSet);
    {
    procedure edRecomendadoPorButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure edRecomendadoPorKeyPress(Sender: TObject; var Key: Char);
    }
    procedure buF7ExtClick(Sender: TObject);
    procedure buF8ExtClick(Sender: TObject);
    procedure buF9ExtClick(Sender: TObject);
    procedure buF10ExtClick(Sender: TObject);
    procedure buF11ExtClick(Sender: TObject);
    procedure imFirmaExtDblClick(Sender: TObject);
    procedure pcExtensionesChange(Sender: TObject);
    procedure imFotoExtDblClick(Sender: TObject);
    procedure buF7DescClick(Sender: TObject);
    procedure buF8DescClick(Sender: TObject);
    procedure buF11DescClick(Sender: TObject);
    procedure dsDescuentosDataChange(Sender: TObject; Field: TField);
    procedure itemF7ExtClick(Sender: TObject);
    procedure itemF8ExtClick(Sender: TObject);
    procedure itemF9ExtClick(Sender: TObject);
    procedure itemF10ExtClick(Sender: TObject);
    procedure itemF11ExtClick(Sender: TObject);
    procedure itemF7DescClick(Sender: TObject);
    procedure itemF8DescClick(Sender: TObject);
    procedure itemF11DescClick(Sender: TObject);
    procedure TExtensionesCalcFields(DataSet: TDataSet);
    {
    procedure edExtRemitenteKeyPress(Sender: TObject; var Key: Char);
    procedure edExtRemitenteButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
      }
    procedure lvCopiaExtEndDrag(Sender, Target: TObject; X, Y: Integer);
    procedure dgExtensionesDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure dgExtensionesDragDrop(Sender, Source: TObject; X,
      Y: Integer);
    procedure buCopiarClick(Sender: TObject);
    procedure sbLimpiarCCClick(Sender: TObject);
    procedure sbLimpiarVendedorClick(Sender: TObject);
    procedure sbLimpiarTransportistaClick(Sender: TObject);
    procedure sbLimpiarRemitenteClick(Sender: TObject);
    procedure buActCtaClick(Sender: TObject);
    procedure buLimCtaClick(Sender: TObject);
    procedure buLimTransportistaClick(Sender: TObject);
    procedure buActTransportistaClick(Sender: TObject);
    procedure buLimCiudadClick(Sender: TObject);
    procedure buActCiudadClick(Sender: TObject);
    procedure laIdentificarseClick(Sender: TObject);
    procedure edSepNombreChange(Sender: TObject);
    procedure edSepAPaternoChange(Sender: TObject);
    procedure edSepAMaternoChange(Sender: TObject);
  private
    { Private declarations }
    borrarIconRem : boolean;
    procedure setMasterSource(valor : TDataSource);
    procedure setBtnNuevo(valor : boolean);
    procedure huella(Table : TIBTable; p_ver : string; p_img : string; img : TImage);
    procedure cambiarNombreSeparado;
  protected
    procedure valores; override;
  public
    { Public declarations }
  published
     property MASTERSOURCE : TDataSource write setMasterSource;
     property BTN_nuevo    : boolean write setBtnNuevo;
  end;

var
  frmCapturar_clientes: TfrmCapturar_clientes;

implementation

uses IBModulo, reglas_de_negocios, IBData, seleccionar_bancos, UfrmSeleccionarCliente, UfrmImagen,
  UfrmSeleccionarCDescuento, menu, UfrmSeleccionarRemitente, explorar_clientes;

{$R *.DFM}

procedure TfrmCapturar_clientes.cambiarNombreSeparado;
begin
   dsSujetos.DataSet.FieldByName('NOMBRE').AsString := edSepNombre.Text + ' ' + edSepAPaterno.Text + ' ' + edSepAMaterno.Text; 
end;

procedure TfrmCapturar_clientes.huella(Table : TIBTable; p_ver : string; p_img : string; img : TImage);
var
  Stream : TMemoryStream;
begin
   if (Table.FieldByName(p_ver).AsString = 'Si') then
   begin
      try
         Stream := TMemoryStream.Create;
         TBlobField(Table.FieldByName(p_img)).SaveToStream(Stream);
         if Stream.Size > 0 then
         begin
            Stream.Position := 0;
            img.Picture.Bitmap.LoadFromStream(Stream);
         end
         else
            img.Picture.Assign(nil);
      except
         img.Picture.Assign(nil);
      end;
  end
  else
     img.Picture.Assign(nil);
end;

procedure TfrmCapturar_clientes.setBtnNuevo(valor : boolean);
begin
   nuevo := valor;
end;

procedure TfrmCapturar_clientes.setMasterSource(valor : TDataSource);
begin
   deID.DataSource        := valor;
   TCapturar.Close;
   TCapturar.MasterSource := valor;
   TCapturar.Open;
end;

procedure TfrmCapturar_clientes.valores;
begin
  dmIBData.TPreferencias.Filter := 'ID = 3';
  if dmIBData.TPreferencias.FieldByName('VALOR').AsInteger <> 0 then
     dsFuente.DataSet.FieldByName('MONEDA').AsInteger := dmIBData.TPreferencias.FieldByName('VALOR').AsInteger;
  dsFuente.DataSet.FieldByName('APLICAR_PRECIO_MAYOREO').AsString   := 'No';
  dsFuente.DataSet.FieldByName('CONGELAR_VENTA').AsString           := 'No';
  dsFuente.DataSet.FieldByName('INCLUIR_EN_DECLARACION').AsString   := 'No';
  dsFuente.DataSet.FieldByName('PRIORIDAD').AsString                := 'Sin Clasificar';
  dsFuente.DataSet.FieldByName('DIA_FACTURA_REVISION').AsString     := 'Sin Clasificar';
  dsFuente.DataSet.FieldByName('DIA_ENTREGA_CHEQUES').AsString      := 'Sin Clasificar';
  dsFuente.DataSet.FieldByName('LIMITE_CREDITO').AsFloat            := 0.00;
  dsFuente.DataSet.FieldByName('ACUMULADO_COMPRAS').AsFloat         := 0.00;
  dsFuente.DataSet.FieldByName('ACUMULADO_PAGOS').AsFloat           := 0.00;
  dsFuente.DataSet.FieldByName('NUM_PAGOS_EXTEMPORANEOS').AsInteger := 0;
  dsFuente.DataSet.FieldByName('DIAS_DE_RETARDO').AsInteger         := 0;
  dsFuente.DataSet.FieldByName('VENDEDOR').AsInteger                := -3;
  dsFuente.DataSet.FieldByName('DESCUENTO_PORC').AsFloat            := 0.00;
  dsFuente.DataSet.FieldByName('DP_PORC').AsFloat                   := 0.00;
  dsFuente.DataSet.FieldByName('MANO_I_VER_IND').AsString           := 'No';
  dsFuente.DataSet.FieldByName('MANO_I_VER_PUL').AsString           := 'No';
  dsFuente.DataSet.FieldByName('MANO_D_VER_IND').AsString           := 'No';
  dsFuente.DataSet.FieldByName('MANO_D_VER_PUL').AsString           := 'No';
  dsFuente.DataSet.FieldByName('ES_DISTRIBUIDOR').AsString          := 'No';
  dsFuente.DataSet.FieldByName('ELIMINAR_IVA_FACTURAS').AsString    := 'No';
  dsFuente.DataSet.FieldByName('ESTATUS').AsString                  := 'Activo';
end;

procedure TfrmCapturar_clientes.ibBancosClick(Sender: TObject);
begin
  inherited;
  if qyBancos.State = dsInactive then
  begin
    reglas.refresh_IBQuery(qyBancos);
  end;
end;

procedure TfrmCapturar_clientes.ibNuevoBancoClick(Sender: TObject);
var
   pnt : TPoint;
begin
  inherited;
  pnt := dgBancos.ClientToScreen(Point(0,0));
  frmSeleccionar_bancos := TfrmSeleccionar_bancos.Create(Application);
  frmSeleccionar_bancos.dsDestino.Tag     := dsFuente.DataSet.FieldByName('ID').AsInteger;
  frmSeleccionar_bancos.dsDestino.DataSet := qyBancos;
  frmSeleccionar_bancos.coordenadas(0,pnt.x-7, width-7, pnt.y);
  frmSeleccionar_bancos.ShowModal;
  frmSeleccionar_bancos.Free;
  reglas.refresh_IBQuery(qyBancos);
end;

procedure TfrmCapturar_clientes.ibEliminarBancoClick(Sender: TObject);
begin
  inherited;
  spDelBanco.ParamByName('P_BANCO').AsInteger := dsBancos.DataSet.FieldByName('R_ID').AsInteger;
  spDelBanco.ExecProc;
  spDelBanco.Transaction.CommitRetaining;
  reglas.refresh_IBQuery(qyBancos);
end;

procedure TfrmCapturar_clientes.dsBancosDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if dsBancos.DataSet <> nil then
  begin
     ibNuevoBanco.Enabled    := not(dsFuente.DataSet.IsEmpty) and (dsFuente.DataSet.State in [dsEdit, dsBrowse]);
     ibEliminarBanco.Enabled := not(dsBancos.DataSet.IsEmpty) and (dsFuente.DataSet.State in [dsEdit, dsBrowse]);
  end;
end;                    

procedure TfrmCapturar_clientes.FormCreate(Sender: TObject);
begin
  borrarIconRem := false;
  reglas.abrir_IBTabla(dmIBData.TFiltroClientes);
  reglas.refresh_IBQuery(qyMonedas);
  reglas.abrir_IBTabla(TClasificaciones);
  reglas.abrir_IBTabla(dmIBData.TPreferencias);
  reglas.abrir_IBTabla(dmIBData.TFiltroRemitentes);

  dmIBData.TPreferencias.Filter := 'ID = 12'; //Ver extensiones de los clientes
  tsExtensiones.TabVisible      := UpperCase(dmIBData.TPreferencias.FieldByName('VALOR').AsString) = 'SI';
  inherited;
  //fpBancosD.FoldStatus := fsCollapsed;
end;

procedure TfrmCapturar_clientes.dsFuenteDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if dsFuente.DataSet <> nil then
  begin
     tsReferencias.Enabled := dsFuente.DataSet.State = dsEdit;
     reglas.imagenVer(dsFuente, 'FIRMA', imFirma);
     huella(TCapturar, 'MANO_D_VER_IND','MANO_D_IMG_IND', img_d_ind);
     huella(TCapturar, 'MANO_D_VER_PUL','MANO_D_IMG_PUL', img_d_pul);
     huella(TCapturar, 'MANO_I_VER_IND','MANO_I_IMG_IND', img_i_ind);
     huella(TCapturar, 'MANO_I_VER_PUL','MANO_I_IMG_PUL', img_i_pul);
     {
     edRecomendadoPor.Visible := dsFuente.DataSet.State in [dsInsert, dsEdit];
     deRecomendadoPor.Visible := not(edRecomendadoPor.Visible);
     if edRecomendadoPor.Visible then
        edRecomendadoPor.Text := dsFuente.DataSet.FieldByName('recomendadopor_nombre').AsString;
     }
  end;
end;

procedure TfrmCapturar_clientes.ibReferenciasClick(Sender: TObject);
begin
  inherited;
  if qyVendedores.State = dsInactive then
  begin
    reglas.refresh_IBQuery(qyVendedores);
    reglas.refresh_IBQuery(qyTransportistas);
    reglas.refresh_IBQuery(qyCondiciones_Comerciales);
    reglas.refresh_IBQuery(qyRemitentes);
  end;
end;

procedure TfrmCapturar_clientes.dsClientes_ExtensionesDataChange(
  Sender: TObject; Field: TField);
begin
  inherited;
  if TDataSource(sender).DataSet <> nil then
  begin
    buF7Ext.Enabled    := (TDataSource(sender).DataSet.State = dsBrowse) and not(dsFuente.DataSet.IsEmpty);
    buF8Ext.Enabled    := (TDataSource(sender).DataSet.State = dsBrowse) and not(TDataSource(sender).DataSet.IsEmpty);
    buF9Ext.Enabled    := (TDataSource(sender).DataSet.State in [dsInsert, dsEdit]);
    buF10Ext.Enabled   := (TDataSource(sender).DataSet.State in [dsInsert, dsEdit]);
    buF11Ext.Enabled   := (TDataSource(sender).DataSet.State = dsBrowse) and not(TDataSource(sender).DataSet.IsEmpty);

    itemF7Ext.Enabled  := buF7Ext.Enabled;
    itemF8Ext.Enabled  := buF8Ext.Enabled;
    itemF9Ext.Enabled  := buF9Ext.Enabled;
    itemF10Ext.Enabled := buF10Ext.Enabled;
    itemF11Ext.Enabled := buF11Ext.Enabled;

    {
     edExtRemitente.Visible := TDataSource(sender).DataSet.State in [dsInsert, dsEdit];
    // deExtRemitente.Visible := not(edRecomendadoPor.Visible);
     if edExtRemitente.Visible then
        edExtRemitente.Text := TDataSource(sender).DataSet.FieldByName('remitente_nombre').AsString;
        }

{    paExtensiones.Enabled          := (TDataSource(sender).DataSet.State in [dsInsert, dsEdit]);
    ibDescuentoNC.Enabled          := (TDataSource(sender).DataSet.State = dsBrowse) and not(TDataSource(sender).DataSet.IsEmpty);
    ibDescuentoNCModificar.Enabled := (TDataSource(sender).DataSet.State = dsBrowse) and not(TDataSource(sender).DataSet.IsEmpty);
    buCMaterial.Enabled            := (TDataSource(sender).DataSet.State = dsBrowse) and not(TDataSource(sender).DataSet.IsEmpty);}


{    if loadImagen <> dsClientes_Extensiones.DataSet.FieldByName('ID').AsInteger then
    begin
       loadImagen := dsTareas.DataSet.FieldByName('ID').AsInteger;}
       //reglas.imagenVer(dsClientes_Extensiones, 'FOTO', imFotoExt);
       //reglas.imagenVer(dsClientes_Extensiones, 'FIRMA', imFirmaExt);
       huella(TExtensiones, 'MANO_D_VER_IND','MANO_D_IMG_IND', eimg_d_ind);
       huella(TExtensiones, 'MANO_D_VER_PUL','MANO_D_IMG_PUL', eimg_d_pul);
       huella(TExtensiones, 'MANO_I_VER_IND','MANO_I_IMG_IND', eimg_i_ind);
       huella(TExtensiones, 'MANO_I_VER_PUL','MANO_I_IMG_PUL', eimg_i_pul);
//    end;

    if buF9Ext.Enabled then
    begin
       paCapturaExt.Height := 265
    end
    else
       paCapturaExt.Height := 52;

  end;
end;

procedure TfrmCapturar_clientes.ibCancelarContactosClick(Sender: TObject);
begin
  inherited;
  TContactos.Cancel;
end;

procedure TfrmCapturar_clientes.ibEliminarContactosClick(Sender: TObject);
begin
  inherited;
  if MessageDlg('¿ Eliminar registro ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes  then
  begin
     TContactos.Delete;
     TContactos.Transaction.CommitRetaining;
  end;
end;

procedure TfrmCapturar_clientes.dgExtensionesDblClick(Sender: TObject);
begin
  inherited;
  if not(dsClientes_Extensiones.DataSet.IsEmpty) then
     buF8Ext.Click
  else
     buF7Ext.Click;
end;

procedure TfrmCapturar_clientes.pcSujetosChange(Sender: TObject);
begin
  inherited;
  case pcSujetos.ActivePageIndex of
     5 : begin //Cejilla Extensiones
            reglas.abrir_IBTabla(TExtensiones);

            reglas.abrir_IBTabla(dmIBData.TFiltroRemitentes);
            reglas.abrir_IBTabla(dmIBData.TPreferencias);
            dmIBData.TPreferencias.Filter := 'ID = 30'; //Mostrar Notas de Credito en Clientes Extensiones
            tsDescuentos.TabVisible := UpperCase(dmIBData.TPreferencias.FieldByName('VALOR').AsString) = 'SI';

            case pcExtensiones.ActivePageIndex of
               0 : frmCapturar_clientes.PopupMenu := ppExtensiones;
               1 : frmCapturar_clientes.PopupMenu := ppDescuentos;
            else
               frmCapturar_clientes.PopupMenu := nil;
            end;
         end;
     6 : reglas.abrir_IBTabla(TMensajes);
  end;
end;

procedure TfrmCapturar_clientes.CargarClick(Sender: TObject);
begin
  inherited;
  if opImagen.Execute then
  begin
     reglas.imagenGuardar(dsFuente, opImagen.FileName, 'FIRMA', imFirma);
  end;
end;

procedure TfrmCapturar_clientes.Limpiar2Click(Sender: TObject);
begin
  inherited;
  imFirma.Picture.Assign(nil);
  dsFuente.DataSet.FieldByName('FIRMA').Assign(nil);
end;

procedure TfrmCapturar_clientes.Cargar2Click(Sender: TObject);
begin
  inherited;
  if MessageDlg('¿ Guardar la imagen ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes  then
  begin
     //reglas.imagenGuardar(dsClientes_Extensiones, opImagen.FileName, 'FOTO', imFotoExt);
  end;
end;

procedure TfrmCapturar_clientes.Limpiar3Click(Sender: TObject);
begin
  inherited;
  //imFotoExt.Picture.Assign(nil);
  dsClientes_Extensiones.DataSet.FieldByName('FOTO').Assign(nil);
end;

procedure TfrmCapturar_clientes.Cargar3Click(Sender: TObject);
begin
  inherited;
  if MessageDlg('¿ Guardar la imagen ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes  then
  begin
    // reglas.imagenGuardar(dsClientes_Extensiones, opImagen.FileName, 'FIRMA', imFirmaExt);
  end;
end;

procedure TfrmCapturar_clientes.Limpiar4Click(Sender: TObject);
begin
  inherited;
  //imFirmaExt.Picture.Assign(nil);
  dsClientes_Extensiones.DataSet.FieldByName('FIRMA').Assign(nil);
end;

procedure TfrmCapturar_clientes.sbRefreshRemitenteClick(Sender: TObject);
begin
  inherited;
  reglas.refresh_IBQuery(qyRemitentes);
end;

procedure TfrmCapturar_clientes.sbRefreshVendedorClick(Sender: TObject);
begin
  inherited;
  reglas.refresh_IBQuery(qyVendedores);
end;

procedure TfrmCapturar_clientes.sbFormaDePagoClick(Sender: TObject);
begin
  inherited;
  reglas.refresh_IBQuery(qyCondiciones_Comerciales);
end;

procedure TfrmCapturar_clientes.sbRefreshMonedasClick(Sender: TObject);
begin
  inherited;
  reglas.refresh_IBQuery(qyMonedas);
end;

procedure TfrmCapturar_clientes.sbRefreshClasificacionesClick(
  Sender: TObject);
begin
  inherited;
  reglas.abrir_IBTabla(TClasificaciones);
end;

procedure TfrmCapturar_clientes.TExtensionesBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  reglas.abrir_IBTabla(TDomicilioExtension);
end;

procedure TfrmCapturar_clientes.TExtensionesAfterEdit(DataSet: TDataSet);
begin
  inherited;
  TDomicilioExtension.Edit; 
end;

procedure TfrmCapturar_clientes.TExtensionesAfterPost(DataSet: TDataSet);
begin
  inherited;
  TExtensiones.Transaction.CommitRetaining;
end;

procedure TfrmCapturar_clientes.TDomicilioExtensionAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  TDomicilioExtension.Transaction.CommitRetaining;
end;

procedure TfrmCapturar_clientes.TCapturarCalcFields(DataSet: TDataSet);
begin
  inherited;
  if DataSet.FieldByName('RECOMENDADO_POR').AsString <> '' then
  begin
     dmIBData.TFiltroClientes.Filter := 'ID = ' + DataSet.FieldByName('RECOMENDADO_POR').AsString;
     DataSet.FieldByName('recomendadopor_nombre').AsString := dmIBData.TSujetosCliente.FieldByName('NOMBRE').AsString;
  end
  else
     DataSet.FieldByName('recomendadopor_nombre').AsString := '';
end;

{
procedure TfrmCapturar_clientes.edRecomendadoPorButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
begin
   inherited;
   case AbsoluteIndex of
     0: begin
           frmSeleccionarCliente             := TfrmSeleccionarCliente.Create(Application);
           frmSeleccionarCliente.DATABASE    := dmIBModulo.ibSistema;
           frmSeleccionarCliente.TRANSACTION := dmIBModulo.ibSistemaTransaccion;
           frmSeleccionarCliente.CLAVE       := edRecomendadoPor.Text;

           if frmSeleccionarCliente.abrirConsulta then
           begin
              frmSeleccionarCliente.ShowModal;
              if frmSeleccionarCliente.ACEPTAR then
              begin
                 dsFuente.DataSet.FieldByName('RECOMENDADO_POR').AsInteger := frmSeleccionarCliente.ID;
                 edRecomendadoPor.Text := frmSeleccionarCliente.NOMBRE;
                 edRecomendadoPor.SetSelection(Length(edRecomendadoPor.Text),Length(edRecomendadoPor.Text),false);
               end;
           end
           else
              if frmSeleccionarCliente.ID <> 0 then
              begin
                 dsFuente.DataSet.FieldByName('RECOMENDADO_POR').AsInteger := frmSeleccionarCliente.ID;
                 edRecomendadoPor.Text := frmSeleccionarCliente.NOMBRE;
                 edRecomendadoPor.SetSelection(Length(edRecomendadoPor.Text),Length(edRecomendadoPor.Text),false);
              end;
           frmSeleccionarCliente.Free;
           frmSeleccionarCliente := nil;
        end;
     1: begin
           dsFuente.DataSet.FieldByName('RECOMENDADO_POR').AsVariant := null;
        end;
   end;
end;

procedure TfrmCapturar_clientes.edRecomendadoPorKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key = #13 then
     edRecomendadoPor.OnButtonClick(Sender, 0);
end;
}
procedure TfrmCapturar_clientes.buF7ExtClick(Sender: TObject);
begin
  inherited;
  TExtensiones.Insert;
  spIDExtensiones.ExecProc;
  TExtensiones.FieldByName('ID').AsInteger             := spIDExtensiones.ParamByName('R_ID').AsInteger;
  TExtensiones.FieldByName('SUJETO_CLIENTE').AsInteger := dsFuente.DataSet.FieldByName('ID').AsInteger;
  TExtensiones.FieldByName('FECHA_ALTA').AsDateTime    := reglas.dame_fecha;
  TExtensiones.FieldByName('LIMITE_CREDITO').AsFloat   := dsFuente.DataSet.FieldByName('LIMITE_CREDITO').AsFloat;
  TExtensiones.FieldByName('FLAG_FACTURAR').AsString   := 'No';
  TExtensiones.FieldByName('MANO_I_VER_IND').AsString  := 'No';
  TExtensiones.FieldByName('MANO_I_VER_PUL').AsString  := 'No';
  TExtensiones.FieldByName('MANO_D_VER_IND').AsString  := 'No';
  TExtensiones.FieldByName('MANO_D_VER_PUL').AsString  := 'No';
  TExtensiones.FieldByName('ESTATUS').AsString         := 'Activo';
  buF9Ext.Click;
  buF8Ext.Click;
end;

procedure TfrmCapturar_clientes.buF8ExtClick(Sender: TObject);
begin
  inherited;
  TExtensiones.Edit;
  deClaveExtension.SetFocus;
end;

procedure TfrmCapturar_clientes.buF9ExtClick(Sender: TObject);
begin
  inherited;
  TExtensiones.Post;
end;

procedure TfrmCapturar_clientes.buF10ExtClick(Sender: TObject);
begin
  inherited;
  TExtensiones.Cancel;
end;

procedure TfrmCapturar_clientes.buF11ExtClick(Sender: TObject);
begin
  inherited;
  if MessageDlg('¿ Eliminar ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes  then
  begin
     TExtensiones.Delete;
     TExtensiones.Transaction.CommitRetaining;
  end;
end;

procedure TfrmCapturar_clientes.imFirmaExtDblClick(Sender: TObject);
begin
  inherited;
  frmImagen := TfrmImagen.Create(Application);
  //frmImagen.IMAGEN_PICT := imFirmaExt;
  frmImagen.ShowModal;
  frmImagen.Free;
end;

procedure TfrmCapturar_clientes.pcExtensionesChange(Sender: TObject);
begin
  inherited;
  case pcExtensiones.ActivePageIndex of
     1 : begin //Descuentos
            if not(qyDescuentos.Active) then
               reglas.refresh_IBQuery(qyDescuentos);
         end;
  end;

  case pcExtensiones.ActivePageIndex of
     0 : frmCapturar_clientes.PopupMenu := ppExtensiones;
     1 : frmCapturar_clientes.PopupMenu := ppDescuentos;
  else
     frmCapturar_clientes.PopupMenu := nil;
  end;
end;

procedure TfrmCapturar_clientes.imFotoExtDblClick(Sender: TObject);
begin
  inherited;
  frmImagen := TfrmImagen.Create(Application);
  //frmImagen.IMAGEN_PICT := imFotoExt;
  frmImagen.ShowModal;
  frmImagen.Free;
end;

procedure TfrmCapturar_clientes.buF7DescClick(Sender: TObject);
var
   pnt1 : TPoint;
begin
  inherited;
  pnt1   := dgDescuentos.ClientToScreen(Point(0,0));
  pnt1.x := frmMenu.Width - 2;
  try
     frmSeleccionarCDescuento              := TfrmSeleccionarCDescuento.Create(Application);
     frmSeleccionarCDescuento.DATABASE     := dmIBModulo.ibSistema;
     frmSeleccionarCDescuento.TRANSACTION  := dmIBModulo.ibSistemaTransaccion;
     frmSeleccionarCDescuento.Y            := pnt1;
     frmSeleccionarCDescuento.DATASET      := qyDescuentos;
     frmSeleccionarCDescuento.NameAddSProc := 'ADD_DESCUENTOS_EXT';
     frmSeleccionarCDescuento.PADRE        := dsClientes_Extensiones.DataSet.FieldByName('ID').AsInteger;

     frmSeleccionarCDescuento.buTodos.Click;
     frmSeleccionarCDescuento.ShowModal;
  finally
     frmSeleccionarCDescuento.Free;
  end;
end;

procedure TfrmCapturar_clientes.buF8DescClick(Sender: TObject);
begin
  inherited;
  {
  idFactor.Entrada := dsDescuentos.DataSet.FieldByName('R_DESC_PORC').AsString;
  idFactor.Execute;
  if idFactor.Respuesta and (idFactor.Entrada <> '') then
  begin
     spMOD_DESCUENTOS_EXTENSIONES.ParamByName('P_ID').AsInteger   := dsDescuentos.DataSet.FieldByName('R_ID').AsInteger;
     spMOD_DESCUENTOS_EXTENSIONES.ParamByName('P_PORC').AsFloat   := StrToFloat(idFactor.Entrada);
     spMOD_DESCUENTOS_EXTENSIONES.ExecProc;
     spMOD_DESCUENTOS_EXTENSIONES.Transaction.CommitRetaining;
     reglas.abrir_IBQuery_seek('R_ID',dsDescuentos.DataSet.FieldByName('R_ID').AsInteger,qyDescuentos);
  end;
  }
end;

procedure TfrmCapturar_clientes.buF11DescClick(Sender: TObject);
begin
  inherited;
  if MessageDlg('¿ Eliminar ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes  then
  begin
     spDEL_DESCUENTOS_EXTENSIONES.ParamByName('P_ID').AsInteger := dsDescuentos.DataSet.FieldByName('R_ID').AsInteger;
     spDEL_DESCUENTOS_EXTENSIONES.ExecProc;
     spDEL_DESCUENTOS_EXTENSIONES.Transaction.CommitRetaining;
     reglas.refresh_IBQuery(qyDescuentos);
  end;
end;

procedure TfrmCapturar_clientes.dsDescuentosDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if dsDescuentos.DataSet <> nil then
  begin
     buF7Desc.Enabled  := not(dsClientes_Extensiones.DataSet.IsEmpty);
     buF8Desc.Enabled  := not(dsDescuentos.DataSet.IsEmpty);
     buF11Desc.Enabled := not(dsDescuentos.DataSet.IsEmpty);

     itemF7Desc.Enabled  := buF7Desc.Enabled;
     itemF8Desc.Enabled  := buF8Desc.Enabled;
     itemF11Desc.Enabled := buF11Desc.Enabled;
  end;
end;

procedure TfrmCapturar_clientes.itemF7ExtClick(Sender: TObject);
begin
  inherited;
  buF7Ext.Click;
end;

procedure TfrmCapturar_clientes.itemF8ExtClick(Sender: TObject);
begin
  inherited;
  buF8Ext.Click;
end;

procedure TfrmCapturar_clientes.itemF9ExtClick(Sender: TObject);
begin
  inherited;
  buF9Ext.Click;
end;

procedure TfrmCapturar_clientes.itemF10ExtClick(Sender: TObject);
begin
  inherited;
  buF10Ext.Click;
end;

procedure TfrmCapturar_clientes.itemF11ExtClick(Sender: TObject);
begin
  inherited;
  buF11Ext.Click;
end;

procedure TfrmCapturar_clientes.itemF7DescClick(Sender: TObject);
begin
  inherited;
  buF7Desc.Click;
end;

procedure TfrmCapturar_clientes.itemF8DescClick(Sender: TObject);
begin
  inherited;
  buF8Desc.Click;
end;

procedure TfrmCapturar_clientes.itemF11DescClick(Sender: TObject);
begin
  inherited;
  buF11Desc.Click;
end;

procedure TfrmCapturar_clientes.TExtensionesCalcFields(DataSet: TDataSet);
begin
  inherited;
  if DataSet.FieldByName('REMITENTE').AsString <> '' then
  begin
     dmIBData.TFiltroRemitentes.Filter                := 'ID = ' + DataSet.FieldByName('REMITENTE').AsString;
     DataSet.FieldByName('remitente_nombre').AsString := dmIBData.TSujetosRemitentes.FieldByName('NOMBRE').AsString;
  end
  else
     DataSet.FieldByName('remitente_nombre').AsString := '';
end;

{
procedure TfrmCapturar_clientes.edExtRemitenteKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key = #13 then
     edExtRemitente.OnButtonClick(Sender, 0);
end;

procedure TfrmCapturar_clientes.edExtRemitenteButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
   case AbsoluteIndex of
     0: begin
           frmSeleccionarRemitente             := TfrmSeleccionarRemitente.Create(Application);
           frmSeleccionarRemitente.DATABASE    := dmIBModulo.ibSistema;
           frmSeleccionarRemitente.TRANSACTION := dmIBModulo.ibSistemaTransaccion;
           frmSeleccionarRemitente.CLAVE       := edExtRemitente.Text;
           if frmSeleccionarRemitente.abrirConsulta then
           begin
              frmSeleccionarRemitente.ShowModal;
              if frmSeleccionarRemitente.ACEPTAR then
              begin
                 dsClientes_Extensiones.DataSet.FieldByName('REMITENTE').AsInteger := frmSeleccionarRemitente.ID;
                 edExtRemitente.Text := frmSeleccionarRemitente.NOMBRE;
                 edExtRemitente.SetSelection(Length(edExtRemitente.Text),Length(edExtRemitente.Text),false);
               end;
           end
           else
              if frmSeleccionarRemitente.ID <> 0 then
              begin
                 dsClientes_Extensiones.DataSet.FieldByName('REMITENTE').AsInteger := frmSeleccionarRemitente.ID;
                 edExtRemitente.Text := frmSeleccionarRemitente.NOMBRE;
                 edExtRemitente.SetSelection(Length(edExtRemitente.Text),Length(edExtRemitente.Text),false);
              end;
           frmSeleccionarRemitente.Free;
           frmSeleccionarRemitente := nil;
        end;
     1: begin
           dsClientes_Extensiones.DataSet.FieldByName('REMITENTE').AsVariant := null;
        end;
   end;
end;
}

procedure TfrmCapturar_clientes.lvCopiaExtEndDrag(Sender, Target: TObject;
  X, Y: Integer);
begin
  inherited;
  if (Target <> nil) and borrarIconRem then
  begin
     lvCopiaExt.Items[lvCopiaExt.Items.IndexOf(lvCopiaExt.ItemFocused)].Delete;
//     fijarBotonesT(false);
     borrarIconRem := false;

     if (lvCopiaExt.Items.Count > 0) then
        lvCopiaExt.Visible := true
     else
        lvCopiaExt.Visible := false;
  end;
end;

procedure TfrmCapturar_clientes.dgExtensionesDragOver(Sender,
  Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  inherited;
  Accept := (Source is TListView);
end;

procedure TfrmCapturar_clientes.dgExtensionesDragDrop(Sender,
  Source: TObject; X, Y: Integer);
var
   id : integer;
begin
  inherited;
  if Source is TListView then
  begin
     id := reglas.dame_id_corchete(lvCopiaExt.Items[lvCopiaExt.Items.IndexOf(lvCopiaExt.ItemFocused)].Caption);
     spPEGAR_EXTENSION.ParamByName('P_FUENTE').AsInteger  := id;
     spPEGAR_EXTENSION.ParamByName('P_DESTINO').AsInteger := dsClientes_Extensiones.DataSet.FieldByName('ID').AsInteger;
     spPEGAR_EXTENSION.ExecProc;
     spPEGAR_EXTENSION.Transaction.CommitRetaining;
     reglas.abrir_IBTabla(TExtensiones);
     borrarIconRem := true;
  end;
end;

procedure TfrmCapturar_clientes.buCopiarClick(Sender: TObject);
begin
  inherited;
  lvCopiaExt.Items.Add.Caption := '['+dsClientes_Extensiones.DataSet.FieldByName('ID').AsString+'] '+dsClientes_Extensiones.DataSet.FieldByName('NOMBRE').AsString;

  if (lvCopiaExt.Items.Count > 0) then
     lvCopiaExt.Visible := true
  else
     lvCopiaExt.Visible := false;

//  fijarBotonesT(false);
end;

procedure TfrmCapturar_clientes.sbLimpiarCCClick(Sender: TObject);
begin
  inherited;
  dsFuente.DataSet.FieldByName('FORMAS_DE_PAGO').AsVariant := 0;
end;

procedure TfrmCapturar_clientes.sbLimpiarVendedorClick(Sender: TObject);
begin
  inherited;
dsFuente.DataSet.FieldByName('VENDEDOR').AsVariant := 0;
end;

procedure TfrmCapturar_clientes.sbLimpiarTransportistaClick(
  Sender: TObject);
begin
  inherited;
dsFuente.DataSet.FieldByName('TRANSPORTISTA').AsVariant := 0;
end;

procedure TfrmCapturar_clientes.sbLimpiarRemitenteClick(Sender: TObject);
begin
  inherited;
dsFuente.DataSet.FieldByName('REMITENTE').AsVariant := 0;
end;

procedure TfrmCapturar_clientes.buActCtaClick(Sender: TObject);
begin
  inherited;
  reglas.refresh_IBQuery(qyCuentas);
end;

procedure TfrmCapturar_clientes.buLimCtaClick(Sender: TObject);
begin
  inherited;
  dsClientes_Extensiones.DataSet.FieldByName('CUENTA').AsVariant := 0;
end;

procedure TfrmCapturar_clientes.buLimTransportistaClick(Sender: TObject);
begin
  inherited;
  dsClientes_Extensiones.DataSet.FieldByName('TRANSPORTISTA').AsVariant := 0;
end;

procedure TfrmCapturar_clientes.buActTransportistaClick(Sender: TObject);
begin
  inherited;
  reglas.refresh_IBQuery(qyTransportistas);
end;

procedure TfrmCapturar_clientes.buLimCiudadClick(Sender: TObject);
begin
  inherited;
  dsDomicilioExtension.DataSet.FieldByName('CIUDAD').AsVariant := 0;
end;

procedure TfrmCapturar_clientes.buActCiudadClick(Sender: TObject);
begin
  inherited;
  reglas.refresh_IBQuery(qyCiudades);
end;

procedure TfrmCapturar_clientes.laIdentificarseClick(Sender: TObject);
var
   tmp  : string;
   sc   : integer;
   i    : integer;
begin
  inherited;
  sc := 0;
  tmp := UpperCase(Self.Caption);
  for i := 0 to length(tmp) do
     sc := sc + ord(tmp[i]);
  spAUTO_FOLIO_C.ParamByName('P_SUBCLASE').AsInteger := sc;
  spAUTO_FOLIO_C.ParamByName('P_AFECTAR').AsString   := 'Si';
  spAUTO_FOLIO_C.ExecProc;
  spAUTO_FOLIO_C.Transaction.CommitRetaining;
  dsFuente.DataSet.FieldByName('CODIGO_BARRAS').AsString := reglas.rellenar(spAUTO_FOLIO_C.ParamByName('R_FOLIO').AsInteger, 25);
end;

procedure TfrmCapturar_clientes.edSepNombreChange(Sender: TObject);
begin
  inherited;
  cambiarNombreSeparado;
end;

procedure TfrmCapturar_clientes.edSepAPaternoChange(Sender: TObject);
begin
  inherited;
  cambiarNombreSeparado;
end;

procedure TfrmCapturar_clientes.edSepAMaternoChange(Sender: TObject);
begin
  inherited;
  cambiarNombreSeparado;
end;

end.


