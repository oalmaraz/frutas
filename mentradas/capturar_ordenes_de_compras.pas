unit capturar_ordenes_de_compras;

interface

uses
  SysUtils, windows, capturarMDI, Grids, DBGrids,   Menus,
  ImgList, Controls, Db, Forms, UfrmFrameMaterial,  StdCtrls,
  DBCtrls,
  IBQuery, Mask, Classes, ExtCtrls,   Buttons,
  IBStoredProc, IBTable, IBCustomDataSet, Dialogs, System.ImageList;


type
  TfrmCapturar_Ordenes_de_Compras = class(TfrmCapturarMDI)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    TCapturarID: TIntegerField;
    TCapturarCLAVE: TIBStringField;
    TCapturarFECHA_ALTA: TDateTimeField;
    TCapturarPROVEEDOR: TIntegerField;
    TCapturarCONDICION_COMERCIAL: TIntegerField;
    TCapturarANTICIPO: TFloatField;
    TCapturarFECHA_ENTREGA: TDateTimeField;
    TCapturarFECHA_ENTREGA_REAL: TDateTimeField;
    TCapturarDEPARTAMENTO: TIntegerField;
    TCapturarPRIORIDAD: TIBStringField;
    TCapturarALMACEN: TIntegerField;
    TCapturarSUBTOTAL: TFloatField;
    TCapturarIVA: TFloatField;
    TCapturarIEPS: TFloatField;
    TCapturarIMPUESTO1: TFloatField;
    TCapturarIMPUESTO2: TFloatField;
    TCapturarTOTAL: TFloatField;
    TCapturarDESCUENTO_GLOBAL_PORC: TFloatField;
    TCapturarDESCUENTO_CANTIDAD: TFloatField;
    TCapturarMONEDA: TIntegerField;
    TCapturarCOMPRADOR: TIntegerField;
    TCapturarFECHA_CANCELACION: TDateTimeField;
    TCapturarESTATUS: TIBStringField;
    deClave: TDBEdit;
    TCondiciones_Comerciales: TIBTable;
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
    dsCondiciones_Comerciales: TDataSource;
    leCondicion_Comercial: TDBLookupComboBox;
    TMonedas: TIBTable;
    TMonedasID: TIntegerField;
    TMonedasCLAVE: TIBStringField;
    TMonedasDESCRIPCION: TIBStringField;
    TMonedasFECHA_ULT_ACT: TDateTimeField;
    TMonedasPARIDAD: TFloatField;
    dsMonedas: TDataSource;
    leMoneda: TDBLookupComboBox;
    TDepartamentos: TIBTable;
    TDepartamentosID: TIntegerField;
    TDepartamentosCLAVE: TIBStringField;
    TDepartamentosDESCRIPCION: TIBStringField;
    dsDepartamentos: TDataSource;
    leDepartamento: TDBLookupComboBox;
    deFEntrega: TDBEdit;
    deFEntregaReal: TDBEdit;
    ceDescGlobal: TDBEdit;
    ceAnticipo: TDBEdit;
    TCapturarnombre_condicion: TIBStringField;
    TCapturardescripcion_departamento: TIBStringField;
    TCapturardescripcion_moneda: TIBStringField;
    paLienzo2: TPanel;
    fpCaptura: TPanel;
    ibModificarPartida: TBitBtn;
    ibGuardarPartida: TBitBtn;
    ibCancelarPartida: TBitBtn;
    ibEliminarPartida: TBitBtn;
    dgPartidas: TDBGrid;
    ibNuevaPartida: TBitBtn;
    dsDetalle: TDataSource;
    TDetalle: TIBTable;
    dsPartidas: TDataSource;
    qyPartidas: TIBQuery;
    qyPartidasR_ID: TIntegerField;
    qyPartidasR_ORDEN: TIntegerField;
    qyPartidasR_MATERIAL: TIntegerField;
    qyPartidasR_CLAVE: TIBStringField;
    qyPartidasR_DESCRIPCION: TIBStringField;
    qyPartidasR_UNIDAD: TIntegerField;
    qyPartidasR_DESCRIPCION_UNIDAD: TIBStringField;
    qyPartidasR_CANTIDAD_RECIBIDA: TFloatField;
    qyPartidasR_CANTIDAD: TFloatField;
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
    TDetalleID: TIntegerField;
    TDetalleORDEN: TIntegerField;
    TDetalleMATERIAL: TIntegerField;
    TDetalleCANTIDAD: TFloatField;
    TDetalleDESCUENTO_PORC: TFloatField;
    TDetalleIVA: TFloatField;
    TDetalleIEPS: TFloatField;
    TDetalleIMPUESTO1: TFloatField;
    TDetalleIMPUESTO2: TFloatField;
    TDetalleCANTIDAD_RECIBIDA: TFloatField;
    TDetalleREQUISICION_DETALLE: TIntegerField;
    TDetalleUNIDAD: TIntegerField;
    TDetalleCOTIZACION: TIntegerField;
    TDetalleESTATUS: TIBStringField;
    TDetalleSUBTOTAL: TFloatField;
    TDetalleIVA_DP: TFloatField;
    TDetalleIEPS_DP: TFloatField;
    TDetalleIMPUESTO1_DP: TFloatField;
    TDetalleIMPUESTO2_DP: TFloatField;
    TDetalleIVA_DG: TFloatField;
    TDetalleIEPS_DG: TFloatField;
    TDetalleIMPUESTO1_DG: TFloatField;
    TDetalleIMPUESTO2_DG: TFloatField;
    TDetalleSUBTOTAL_DP: TFloatField;
    TDetalleSUBTOTAL_DG: TFloatField;
    fpCotizaciones: TPanel;
    qyCotizaciones: TIBQuery;
    dsCotizaciones: TDataSource;
    tlCotizaciones: TDBGrid;
    ilOrdenes: TImageList;
    qyCotizacionesR_ID: TIntegerField;
    qyCotizacionesR_CLAVE_REQUISICION: TIBStringField;
    qyCotizacionesR_CLAVE_DEPARTAMENTO: TIBStringField;
    qyCotizacionesR_FECHA_ALTA: TDateTimeField;
    qyCotizacionesR_FECHA_VALIDEZ: TDateTimeField;
    qyCotizacionesR_PROVEEDOR: TIntegerField;
    qyCotizacionesR_TELEFONO: TIBStringField;
    qyCotizacionesR_MONEDA: TIntegerField;
    qyCotizacionesR_DESCRIPCION_MONEDA: TIBStringField;
    qyCotizacionesR_PARTIDAS: TIntegerField;
    TCapturarsin_proveedor: TStringField;
    TCapturarotro_depto: TStringField;
    Label18: TLabel;
    qyEstatusProcesos: TIBQuery;
    dsEstatusProcesos: TDataSource;
    TEstatusProcesosDetalle: TIBTable;
    TEstatusProcesosDetalleID: TIntegerField;
    TEstatusProcesosDetallePROCESO: TIntegerField;
    TEstatusProcesosDetalleESTATUS: TIBStringField;
    TEstatusProcesosDetalleAUTORIZACION: TIBStringField;
    TEstatusProcesosDetalleSTOREPROC: TIBStringField;
    dsEstatusProcesosDetalle: TDataSource;
    spEstatus: TIBStoredProc;
    spADD_COTIZACION_A_OCOMPRA: TIBStoredProc;
    spDEL_PARTIDA_OCOMPRA: TIBStoredProc;
    spDESCUENTOS: TIBStoredProc;
    spID2: TIBStoredProc;
    ibCotizaciones: TBitBtn;
    spTOTALES_ORDEN_DE_COMPRA: TIBStoredProc;
    TCapturarDESCUENTO_CANTIDAD_PARCIAL: TFloatField;
    TCapturarGRAN_TOTAL: TFloatField;
    deFechaAlta: TDBEdit;
    TDetalleIVA_PORC: TFloatField;
    TDetalleIEPS_PORC: TFloatField;
    TDetalleIMPUESTO1_PORC: TFloatField;
    TDetalleIMPUESTO2_PORC: TFloatField;
    qyProveedor: TIBQuery;
    qyProveedorR_ID: TIntegerField;
    qyProveedorR_DESCUENTO_PORC: TFloatField;
    qyProveedorR_FORMA_DE_PAGO: TIntegerField;
    qyProveedorR_COMPRA_MINIMA: TFloatField;
    qyProveedorR_MONEDA: TIntegerField;
    qyProveedorR_CLAVE: TIBStringField;
    qyProveedorR_NOMBRE: TIBStringField;
    qyProveedorR_RAZON_SOCIAL: TIBStringField;
    qyProveedorR_FACTURAR_A: TIBStringField;
    qyProveedorR_RFC: TIBStringField;
    qyProveedorR_DOMICILIO: TIBStringField;
    qyProveedorR_OBSERVACIONES: TBlobField;
    qyProveedorR_FOTO: TBlobField;
    qyProveedorR_TELEFONO: TIBStringField;
    qyProveedorR_CIUDAD: TIBStringField;
    dsProveedor: TDataSource;
    TCapturarproveedor_nombre: TStringField;
    pmTeclas: TPopupMenu;
    NuevaPartida1: TMenuItem;
    ModificarPartida1: TMenuItem;
    GuardarPartida1: TMenuItem;
    CancelarPartida1: TMenuItem;
    EliminarPartida1: TMenuItem;
    Cotizaciones1: TMenuItem;
    cbSinProveedor: TDBCheckBox;
    cbOtroDepto: TDBCheckBox;
    Horizontal1: TMenuItem;
    qyPartidasR_MEDIDA: TIntegerField;
    qyPartidasR_MEDIDA_DESCRIPCION: TIBStringField;
    TDetalleMEDIDA: TIntegerField;
    qyPartidasR_COLOR: TIntegerField;
    qyPartidasR_COLOR_NOMBRE: TIBStringField;
    TDetalleCOLOR: TIntegerField;
    qyPartidasR_PRECIO: TFloatField;
    TDetallePRECIO: TFloatField;
    TCapturarOBSERVACIONES: TBlobField;
    ilCabeceras: TImageList;
    deObservaciones: TDBMemo;
    Label24: TLabel;
    ibAutomatica: TBitBtn;
    spADD_OC_AUTOMATICA: TIBStoredProc;
    ibExportarXLS: TBitBtn;
    qyPartidasR_ROWS: TIntegerField;
    ibBackOrder: TBitBtn;
    spBACK_ORDER: TIBStoredProc;
    qyProveedorR_TIPO_NACIONALIDAD: TIBStringField;
    TCapturartipo_nacionalidad: TStringField;
    MarcoMateriales1: TMarcoMateriales;
    qyPartidasR_IVA_PORC: TFloatField;
    qyPartidasR_IEPS_PORC: TFloatField;
    qyPartidasR_IMPUESTO1_PORC: TFloatField;
    qyPartidasR_IMPUESTO2_PORC: TFloatField;
    spOC_DESCUENTO_GLOBAL: TIBStoredProc;
    edProveedor: TDBEdit;
    deProveedor: TDBEdit;
    buImpresion: TBitBtn;
    ppImpresion: TPopupMenu;
    itemImprimir: TMenuItem;
    itemPreview: TMenuItem;
    itemIMedidas: TMenuItem;
    itemPreviewM: TMenuItem;
    N1: TMenuItem;
    Especificaciones1: TMenuItem;
    cbAlmacenes: TDBLookupComboBox;
    deAlmacen: TDBEdit;
    TCapturaralmacen_clave: TStringField;
    sbRefreshAlmacenes: TSpeedButton;
    cbPrioridad: TDBCheckBox;
    qyEstatus: TIBQuery;
    dsEstatus: TDataSource;
    cbEstatus: TDBLookupComboBox;
    edEstatus: TDBEdit;
    buAplicar: TBitBtn;
    qyPartidasR_MAT_OBSERVACIONES: TBlobField;
    qyPartidasR_ID_REFERENCIA: TIntegerField;
    qyPartidasR_TABLA_REFERENCIA: TIBStringField;
    buEliCC: TBitBtn;
    buActCC: TBitBtn;
    buEliMon: TBitBtn;
    buActMon: TBitBtn;
    qyCotizacionesR_GRANTOTAL: TFloatField;
    TDetalleID_REFERENCIA: TIntegerField;
    TDetalleTABLA_REFERENCIA: TIBStringField;
    TDetalleCOMENTARIO: TIBStringField;
    qyPartidasR_COMENTARIO: TIBStringField;
    deFolio: TDBEdit;
    TCapturarCONSECUTIVO: TIntegerField;
    qyPartidasR_UNIDAD_C: TIBStringField;
    qyPartidasR_F_PROM_ENT: TDateTimeField;
    spM_F_PROM_ENT_OC: TIBStoredProc;
    procedure ibNuevoClick(Sender: TObject);
    procedure ibModificarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dsFuenteDataChange(Sender: TObject; Field: TField);
    procedure fpCotizacionesBeforeExpand(Sender: TObject);
    procedure TCapturarCalcFields(DataSet: TDataSet);
    procedure tlCotizacionesMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure tlCotizacionesEndDrag(Sender, Target: TObject; X,
      Y: Integer);
    procedure dgPartidasDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure dgPartidasDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure ibModificarPartidaClick(Sender: TObject);
    procedure ibGuardarPartidaClick(Sender: TObject);
    procedure ibCancelarPartidaClick(Sender: TObject);
    procedure ibEliminarPartidaClick(Sender: TObject);
    procedure ibNuevaPartidaClick(Sender: TObject);
    procedure ibCotizacionesClick(Sender: TObject);
    procedure dgPartidasDblClick(Sender: TObject);
    procedure NuevaPartida1Click(Sender: TObject);
    procedure ModificarPartida1Click(Sender: TObject);
    procedure CancelarPartida1Click(Sender: TObject);
    procedure EliminarPartida1Click(Sender: TObject);
    procedure Cotizaciones1Click(Sender: TObject);
    procedure cbSinProveedorChange(Sender: TObject);
    procedure cbOtroDeptoChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure GuardarPartida1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure buInicioClick(Sender: TObject);
    procedure buAnteriorClick(Sender: TObject);
    procedure buSiguienteClick(Sender: TObject);
    procedure buFinClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ibGuardarClick(Sender: TObject);
    procedure ibAutomaticaClick(Sender: TObject);
    procedure ibExportarXLSClick(Sender: TObject);
    procedure ibBackOrderClick(Sender: TObject);
    procedure edProveedorButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure edProveedorKeyPress(Sender: TObject; var Key: Char);
    procedure itemImprimirClick(Sender: TObject);
    procedure itemIMedidasClick(Sender: TObject);
    procedure ibImprimirClick(Sender: TObject);
    procedure itemPreviewClick(Sender: TObject);
    procedure itemPreviewMClick(Sender: TObject);
    procedure Especificaciones1Click(Sender: TObject);
    procedure sbRefreshAlmacenesClick(Sender: TObject);
    procedure buAplicarClick(Sender: TObject);
    procedure cbEstatusChange(Sender: TObject);
    procedure TCapturarAfterOpen(DataSet: TDataSet);
    {
    procedure dgPartidasCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);

    }procedure buActCCClick(Sender: TObject);
    procedure buActMonClick(Sender: TObject);
    procedure buEliMonClick(Sender: TObject);
    procedure buEliCCClick(Sender: TObject);
    procedure dgPartidasFEButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
  private
    { Private declarations }
    tmpDescGlobal : double;
    cotizaciones_sin_asignar : boolean;
    awrAlmGral : integer;
    cerrar : boolean;//<-No vuelva a entrar a los componentes dxLookupEdit
    edicionDetalle : boolean;//<-valida los botones
    procedure refresh_totales(p_id : integer);
    procedure guardar;
    procedure guardarNormal;
    procedure fijarBotonesDetalle;
    procedure verfificarFechas;
  public
    { Public declarations }
  end;

var
  frmCapturar_Ordenes_de_Compras: TfrmCapturar_Ordenes_de_Compras;

implementation

uses filectrl, explorar_ordenes_de_compras, reglas_de_negocios, IBModulo, IBData, IB,
  cotizaciones_en_ocompras, seleccionar_proveedor,
  seleccionar_material, UfrmAltaRapidaMateriales, PRN_0025,
  UfrmSeleccionarProveedor, UfrmAcceso;

{$R *.DFM}

procedure TfrmCapturar_Ordenes_de_Compras.verfificarFechas;
var
   fraccion   : Real;
   entero     : Real;
begin
   //validacion fecha alta
   if deFechaAlta.Focused and deClave.Enabled and deClave.Visible then
      deClave.SetFocus;
   entero   := Int(StrToInt(deFechaAlta.Text));
   fraccion := Frac(StrToInt(deFechaAlta.Text));
   if entero > 0 then
   begin
      if fraccion = 0 then
         dsFuente.DataSet.FieldByName('FECHA_ALTA').AsDateTime := StrToDateTime(deFechaAlta.Text) + time;
   end;
   //validacion fecha entrega
   if deFEntrega.Focused and deClave.Enabled and deClave.Visible then
      deClave.SetFocus;
   entero   := Int(StrToInt(deFEntrega.Text));
   fraccion := Frac(StrToInt(deFEntrega.Text));
   if entero > 0 then
   begin
      if fraccion = 0 then
         dsFuente.DataSet.FieldByName('FECHA_ENTREGA').AsDateTime := StrToDateTime(deFEntrega.Text ) + time;
   end;
   //validacion fecha entrega real
   if deFEntregaReal.Focused and deClave.Enabled and deClave.Visible then
      deClave.SetFocus;
   entero   := Int(StrToInt(deFEntregaReal.Text));
   fraccion := Frac(StrToInt(deFEntregaReal.Text));
   if entero > 0 then
   begin
      if fraccion = 0 then
         dsFuente.DataSet.FieldByName('FECHA_ENTREGA_REAL').AsDateTime := StrToDateTime(deFEntregaReal.Text) + time;
   end;
end;

procedure TfrmCapturar_Ordenes_de_Compras.fijarBotonesDetalle;
var
   st : boolean;
begin
  st := (dsFuente.DataSet.FieldByName('ESTATUS').AsString = 'Afectado' ) or
        (dsFuente.DataSet.FieldByName('ESTATUS').AsString = 'Cancelado') or
        (dsFuente.DataSet.FieldByName('ESTATUS').AsString = 'Surtido');

  ibNuevaPartida.Enabled     := not edicionDetalle and not(st);
  ibModificarPartida.Enabled := not edicionDetalle and not(st) and not(dsPartidas.DataSet.IsEmpty);
  ibEliminarPartida.Enabled  := not edicionDetalle and not(st) and not(dsPartidas.DataSet.IsEmpty);
  ibGuardarPartida.Enabled   := edicionDetalle and not(st);
  ibCancelarPartida.Enabled  := edicionDetalle and not(st);
//  paCaptura.Visible          := edicionDetalle and not(afectado);
  dgPartidas.Enabled         := not edicionDetalle;

  MarcoMateriales1.Visible   := edicionDetalle and not(st);
end;

procedure TfrmCapturar_Ordenes_de_Compras.refresh_totales(p_id : integer);
begin
  spTOTALES_ORDEN_DE_COMPRA.ParamByName('P_COMPRA').AsInteger := dsFuente.DataSet.FieldByName('ID').AsInteger;
  spTOTALES_ORDEN_DE_COMPRA.ExecProc;
  spTOTALES_ORDEN_DE_COMPRA.Transaction.CommitRetaining;
  reglas.abrir_IBTabla(TCapturar);
  if p_id = 0 then
     reglas.refresh_IBQuery(qyPartidas)
  else
     reglas.abrir_IBQuery_seek('R_ID',p_id,qyPartidas);
end;

procedure TfrmCapturar_Ordenes_de_Compras.ibNuevoClick(Sender: TObject);
begin
  inherited;
  dmIBData.TPreferencias.Filter := 'ID = 3';
  if dmIBData.TPreferencias.FieldByName('VALOR').AsInteger <> 0 then
     dsFuente.DataSet.FieldByName('MONEDA').AsInteger := dmIBData.TPreferencias.FieldByName('VALOR').AsInteger;
  dmIBData.spFECHA_SERVIDOR.ExecProc;
  dsFuente.DataSet.FieldByName('FECHA_ALTA').AsDateTime         := dmIBData.spFECHA_SERVIDOR.ParamByName('R_FECHA').AsDateTime;
  dsFuente.DataSet.FieldByName('ESTATUS').AsString              := 'Sin Afectar';
  dsFuente.DataSet.FieldByName('COMPRADOR').AsInteger           := reglas.dame_usuario;
  dsFuente.DataSet.FieldByName('FECHA_ENTREGA').AsDateTime      := dmIBData.spFECHA_SERVIDOR.ParamByName('R_FECHA').AsDateTime;
  dsFuente.DataSet.FieldByName('FECHA_ENTREGA_REAL').AsDateTime := dmIBData.spFECHA_SERVIDOR.ParamByName('R_FECHA').AsDateTime;
  dsFuente.DataSet.FieldByName('PRIORIDAD').AsString            := 'No';
  dsFuente.DataSet.FieldByName('DESCUENTO_GLOBAL_PORC').AsFloat := 0;
  dsFuente.DataSet.FieldByName('ANTICIPO').AsFloat              := 0;
  dsFuente.DataSet.FieldByName('SUBTOTAL').AsFloat              := 0;
  dsFuente.DataSet.FieldByName('IVA').AsFloat                   := 0;
  dsFuente.DataSet.FieldByName('IEPS').AsFloat                  := 0;
  dsFuente.DataSet.FieldByName('IMPUESTO1').AsFloat             := 0;
  dsFuente.DataSet.FieldByName('IMPUESTO2').AsFloat             := 0;
  dsFuente.DataSet.FieldByName('TOTAL').AsFloat                 := 0;
  dsFuente.DataSet.FieldByName('DESCUENTO_CANTIDAD').AsFloat    := 0;
  dsFuente.DataSet.FieldByName('ANTICIPO').AsFloat              := 0;
  dsFuente.DataSet.FieldByName('ALMACEN').AsInteger             := awrAlmGral;
  dsFuente.DataSet.FieldByName('PROVEEDOR').AsInteger           := -3;
  dsFuente.DataSet.FieldByName('DEPARTAMENTO').AsInteger        := -3;
  deClave.SetFocus;
end;

procedure TfrmCapturar_Ordenes_de_Compras.ibModificarClick(
  Sender: TObject);
begin
  estatus       := dsFuente.DataSet.FieldByName('ESTATUS').AsString;
  tmpDescGlobal := dsFuente.DataSet.FieldByName('DESCUENTO_GLOBAL_PORC').AsFloat;
  inherited;
  if deClave.Enabled  then
     deClave.SetFocus;
end;

procedure TfrmCapturar_Ordenes_de_Compras.FormCreate(Sender: TObject);
begin
  MarcoMateriales1.MOVIMIENTO := obEntrada;
  MarcoMateriales1.inicializar(true);//para que haga los calculos de impuestos
  MarcoMateriales1.laComentario.Visible := true;
  MarcoMateriales1.edComentario.Visible := true;
  
  cerrar := false;
  reglas.abrir_IBTabla(dmIBData.TFiltroProveedores);
  reglas.abrir_IBTabla(dmIBData.TFiltroAlmacenes);
  reglas.refresh_IBQuery(dmIBData.qyAlmacenes);

  inherited;
  
  cotizaciones_sin_asignar := FALSE;
  reglas.refresh_IBQuery(qyEstatusProcesos);
  reglas.abrir_IBTabla(TEstatusProcesosDetalle);
  reglas.refresh_IBQuery(qyPartidas);
  reglas.abrir_IBTabla(TDetalle);
  reglas.abrir_IBTabla(dmIBData.TPreferencias);
//  fpCotizaciones.Collaps;
  //Activar columna Medidas
  //Activar columna colores

  //Almacen general
  dmIBData.TPreferencias.Filter := 'ID = 130';
  awrAlmGral := dmIBData.TPreferencias.FieldByName('VALOR').AsInteger;
end;

procedure TfrmCapturar_Ordenes_de_Compras.dsFuenteDataChange(
  Sender: TObject; Field: TField);
begin
  inherited;
  if TDataSource(sender).DataSet <> nil then
  begin
     buAplicar.Enabled    := false;
     paLienzo2.Visible    :=(TDataSource(sender).DataSet.State in [dsBrowse]) and not(TDataSource(sender).DataSet.IsEmpty);
     ibEliminar.Enabled   := ibEliminar.Enabled and (TDataSource(sender).DataSet.FieldByName('ESTATUS').AsString = 'Sin Afectar');
     ibAutomatica.Enabled :=(TDataSource(sender).DataSet.State in [dsBrowse]) and (TDataSource(sender).DataSet.FieldByName('ESTATUS').AsString = 'Sin Afectar');
     ibBackOrder.Enabled  :=(TDataSource(sender).DataSet.State in [dsBrowse]) and (TDataSource(sender).DataSet.FieldByName('ESTATUS').AsString = 'Sin Afectar');
     itemImprimir.Enabled := ibImprimir.Enabled;
     itemIMedidas.Enabled := ibImprimir.Enabled;
     itemPreview.Enabled  := ibImprimir.Enabled;
     itemPreviewM.Enabled := ibImprimir.Enabled;
     edProveedor.Visible  := dsFuente.DataSet.State in [dsEdit, dsInsert];
     if edProveedor.Visible then
        edProveedor.Text := dsFuente.DataSet.FieldByName('proveedor_nombre').AsString;
     MarcoMateriales1.datos(dsFuente.DataSet.FieldByName('ALMACEN').AsInteger,dsFuente.DataSet.FieldByName('PROVEEDOR').AsInteger);

     deClave.Enabled               := dsFuente.DataSet.FieldByName('ESTATUS').AsString = 'Sin Afectar';
     ceAnticipo.Enabled            := dsFuente.DataSet.FieldByName('ESTATUS').AsString = 'Sin Afectar';
     cbAlmacenes.Enabled           := dsFuente.DataSet.FieldByName('ESTATUS').AsString = 'Sin Afectar';
     ceDescGlobal.Enabled          := dsFuente.DataSet.FieldByName('ESTATUS').AsString = 'Sin Afectar';
     cbPrioridad.Enabled           := dsFuente.DataSet.FieldByName('ESTATUS').AsString = 'Sin Afectar';
     deObservaciones.Enabled       := dsFuente.DataSet.FieldByName('ESTATUS').AsString = 'Sin Afectar';
     edProveedor.Enabled           := dsFuente.DataSet.FieldByName('ESTATUS').AsString = 'Sin Afectar';
     leDepartamento.Enabled        := dsFuente.DataSet.FieldByName('ESTATUS').AsString = 'Sin Afectar';
     deFEntrega.Enabled            := dsFuente.DataSet.FieldByName('ESTATUS').AsString = 'Sin Afectar';
     deFEntregaReal.Enabled        := dsFuente.DataSet.FieldByName('ESTATUS').AsString = 'Sin Afectar';
     leCondicion_Comercial.Enabled := dsFuente.DataSet.FieldByName('ESTATUS').AsString = 'Sin Afectar';
     leMoneda.Enabled              := dsFuente.DataSet.FieldByName('ESTATUS').AsString = 'Sin Afectar';
  end;
end;

procedure TfrmCapturar_Ordenes_de_Compras.fpCotizacionesBeforeExpand(
  Sender: TObject);
begin
  inherited;
  reglas.refresh_IBQuery(qyCotizaciones);
end;

procedure TfrmCapturar_Ordenes_de_Compras.TCapturarCalcFields(
  DataSet: TDataSet);
begin
  inherited;
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
  //proveedor nombre
  if DataSet.FieldByName('PROVEEDOR').AsString <> '' then
  begin
     dmIBData.TFiltroProveedores.Filter := 'ID = '+DataSet.FieldByName('PROVEEDOR').AsString;

     dsFuente.DataSet.FieldByName('TIPO_NACIONALIDAD').AsString := dmIBData.TFiltroProveedores.FieldByName('TIPO_NACIONALIDAD').AsString;


     if dmIBData.TSujetosProveedor.FieldByName('FACTURAR_A').AsString = 'Razon Social' then
        dsFuente.DataSet.FieldByName('PROVEEDOR_NOMBRE').AsString := dmIBData.TSujetosProveedor.FieldByName('RAZON_SOCIAL').AsString
     else
        dsFuente.DataSet.FieldByName('PROVEEDOR_NOMBRE').AsString := dmIBData.TSujetosProveedor.FieldByName('NOMBRE').AsString;
  end
  else
     begin
        dsFuente.DataSet.FieldByName('PROVEEDOR_NOMBRE').AsString  := '';
        dsFuente.DataSet.FieldByName('TIPO_NACIONALIDAD').AsString := '';
     end;

  if cbSinProveedor.Checked then
     DataSet.FieldByName('SIN_PROVEEDOR').AsString := 'Si'
  else
     DataSet.FieldByName('SIN_PROVEEDOR').AsString := 'No';

  if cbOtroDepto.Checked then
     DataSet.FieldByName('OTRO_DEPTO').AsString := 'Si'
  else
     DataSet.FieldByName('OTRO_DEPTO').AsString := 'No'
end;

procedure TfrmCapturar_Ordenes_de_Compras.tlCotizacionesMouseDown(
  Sender: TObject; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
  inherited;
  if Button = mbLeft then  { drag only if left button pressed }
  {
     with TdxDBTreeList(Sender) do
     begin
        cotizaciones_sin_asignar := TRUE;
        BeginDrag(False);
     end;
     }
end;

procedure TfrmCapturar_Ordenes_de_Compras.tlCotizacionesEndDrag(Sender,
  Target: TObject; X, Y: Integer);
begin
  inherited;
  cotizaciones_sin_asignar := FALSE;
end;

procedure TfrmCapturar_Ordenes_de_Compras.dgPartidasDragOver(Sender,
  Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  inherited;
  Accept := cotizaciones_sin_asignar and not(dsCotizaciones.DataSet.IsEmpty);
end;

procedure TfrmCapturar_Ordenes_de_Compras.dgPartidasDragDrop(Sender,
  Source: TObject; X, Y: Integer);
begin
  inherited;
  spADD_COTIZACION_A_OCOMPRA.ParamByName('P_COTIZACION').AsInteger := dsCotizaciones.DataSet.FieldByName('R_ID').AsInteger;
  spADD_COTIZACION_A_OCOMPRA.ParamByName('P_OCOMPRA').AsInteger    := dsFuente.DataSet.FieldByName('ID').AsInteger;
  spADD_COTIZACION_A_OCOMPRA.ExecProc;
  spADD_COTIZACION_A_OCOMPRA.Transaction.CommitRetaining;
  reglas.refresh_IBQuery(qyPartidas);
  reglas.refresh_IBQuery(qyCotizaciones);
  reglas.abrir_IBTabla(TDepartamentos);
  reglas.abrir_IBTabla(TCapturar);
end;

procedure TfrmCapturar_Ordenes_de_Compras.ibModificarPartidaClick(
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
     MarcoMateriales1.boton := true;
     MarcoMateriales1.findMaterial(dsPartidas.DataSet.FieldByName('R_MATERIAL').AsInteger,dsPartidas.DataSet.FieldByName('R_UNIDAD').AsInteger);

     TDetalle.Filter := 'ID = '+dsPartidas.DataSet.FieldByName('R_ID').AsString;
     dsDetalle.DataSet.Edit;

     MarcoMateriales1.edMaterial.Text           := dsPartidas.DataSet.FieldByName('R_CLAVE').AsString;
     MarcoMateriales1.edDescripcion.Text        := dsPartidas.DataSet.FieldByName('R_DESCRIPCION').AsString;
     MarcoMateriales1.edMaterial.Tag            := dsPartidas.DataSet.FieldByName('R_MATERIAL').AsInteger;
     MarcoMateriales1.edCantidad.Text          := dsPartidas.DataSet.FieldByName('R_CANTIDAD').AsString;
     MarcoMateriales1.edPrecioCosto.Text       := dsPartidas.DataSet.FieldByName('R_PRECIO').AsString;
     MarcoMateriales1.cbUnidades.keyvalue := dsPartidas.DataSet.FieldByName('R_UNIDAD').AsInteger;
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
     MarcoMateriales1.edComentario.Text         := dsPartidas.DataSet.FieldByName('R_COMENTARIO').AsString;
//     MarcoMateriales1.edPU.Value                := dsPartidas.DataSet.FieldByName('R_PRECIO_SIN_IMPUESTOS').AsFloat;
//     MarcoMateriales1.edComentario.Text         := dsPartidas.DataSet.FieldByName('R_COMENTARIO').AsString;

     if MarcoMateriales1.cbMedidas.Visible and (dsPartidas.DataSet.FieldByName('R_MEDIDA').AsString <> '') then
        MarcoMateriales1.cbMedidas.KeyValue := dsPartidas.DataSet.FieldByName('R_MEDIDA').AsInteger;

     if MarcoMateriales1.cbColores.Visible and (dsPartidas.DataSet.FieldByName('R_COLOR').AsString <> '') then
        MarcoMateriales1.cbColores.KeyValue := dsPartidas.DataSet.FieldByName('R_COLOR').AsInteger;

     MarcoMateriales1.edCantidad.SetFocus;
     MarcoMateriales1.boton := false;

    //verifica si el proveedor es Nacional o Extranjero
     MarcoMateriales1.FLAG_CALCULAR := dsFuente.DataSet.FieldByName('TIPO_NACIONALIDAD').AsString = 'Nacional';
  end;
end;

procedure TfrmCapturar_Ordenes_de_Compras.guardar;
begin
   spDESCUENTOS.ParamByName('P_SUBTOTAL').AsFloat  := dsDetalle.DataSet.FieldByName('SUBTOTAL').AsFloat;
   spDESCUENTOS.ParamByName('P_IVA').AsFloat       := dsDetalle.DataSet.FieldByName('IVA').AsFloat;
   spDESCUENTOS.ParamByName('P_IEPS').AsFloat      := dsDetalle.DataSet.FieldByName('IEPS').AsFloat;
   spDESCUENTOS.ParamByName('P_IMPUESTO1').AsFloat := dsDetalle.DataSet.FieldByName('IMPUESTO1').AsFloat;
   spDESCUENTOS.ParamByName('P_IMPUESTO2').AsFloat := dsDetalle.DataSet.FieldByName('IMPUESTO2').AsFloat;
   spDESCUENTOS.ParamByName('P_PORC_DP').AsFloat   := dsDetalle.DataSet.FieldByName('DESCUENTO_PORC').AsFloat;;
   spDESCUENTOS.ParamByName('P_PORC_DG').AsFloat   := dsFuente.DataSet.FieldByName('DESCUENTO_GLOBAL_PORC').AsFloat;
   spDESCUENTOS.ExecProc;

   //DESCUENTO SUBTOTAL PARCIAL
   dsDetalle.DataSet.FieldByName('SUBTOTAL_DP').AsFloat  := spDESCUENTOS.ParamByName('R_SUBTOTAL_DP').AsFloat;
   dsDetalle.DataSet.FieldByName('IVA_DP').AsFloat       := spDESCUENTOS.ParamByName('R_IVA_DP').AsFloat;
   dsDetalle.DataSet.FieldByName('IEPS_DP').AsFloat      := spDESCUENTOS.ParamByName('R_IEPS_DP').AsFloat;
   dsDetalle.DataSet.FieldByName('IMPUESTO1_DP').AsFloat := spDESCUENTOS.ParamByName('R_IMPUESTO1_DP').AsFloat;
   dsDetalle.DataSet.FieldByName('IMPUESTO2_DP').AsFloat := spDESCUENTOS.ParamByName('R_IMPUESTO2_DP').AsFloat;

   //DESCUENTO SUBTOTAL GLOBAL
   dsDetalle.DataSet.FieldByName('SUBTOTAL_DG').AsFloat  := spDESCUENTOS.ParamByName('R_SUBTOTAL_DG').AsFloat;
   dsDetalle.DataSet.FieldByName('IVA_DG').AsFloat       := spDESCUENTOS.ParamByName('R_IVA_DG').AsFloat;
   dsDetalle.DataSet.FieldByName('IEPS_DG').AsFloat      := spDESCUENTOS.ParamByName('R_IEPS_DG').AsFloat;
   dsDetalle.DataSet.FieldByName('IMPUESTO1_DG').AsFloat := spDESCUENTOS.ParamByName('R_IMPUESTO1_DG').AsFloat;
   dsDetalle.DataSet.FieldByName('IMPUESTO2_DG').AsFloat := spDESCUENTOS.ParamByName('R_IMPUESTO2_DG').AsFloat;

   dsDetalle.DataSet.Post;
   TDetalle.Transaction.CommitRetaining;
end;

procedure TfrmCapturar_Ordenes_de_Compras.guardarNormal;
begin
   guardar;
   refresh_totales(TDetalle.FieldByName('ID').AsInteger);
   edicionDetalle := not edicionDetalle;
   FijarBotonesDetalle;
end;

procedure TfrmCapturar_Ordenes_de_Compras.ibGuardarPartidaClick(
  Sender: TObject);
var
   i, j      : integer;
   material  : integer;
   unidad    : integer;
   precio    : double;
   renglones : integer;
begin
  inherited;
  material := MarcoMateriales1.edMaterial.Tag;
  unidad   := MarcoMateriales1.cbUnidades.keyvalue;
  precio   := StrToFloat(MarcoMateriales1.edPrecioCosto.Text);
  //proceso normal
  if not(MarcoMateriales1.FLAG_MEDIDAS) or (dsDetalle.DataSet.State = dsEdit) then
  begin
     if MarcoMateriales1.cbMedidas.Visible then
        dsDetalle.DataSet.FieldByName('MEDIDA').Value := MarcoMateriales1.cbMedidas.KeyValue;
     if MarcoMateriales1.cbColores.Visible then
        dsDetalle.DataSet.FieldByName('COLOR').Value  := MarcoMateriales1.cbColores.KeyValue;

     dsDetalle.DataSet.FieldByName('MATERIAL').AsInteger           := material;
     dsDetalle.DataSet.FieldByName('UNIDAD').AsInteger             := unidad;
     dsDetalle.DataSet.FieldByName('PRECIO').AsFloat               := precio;
     dsDetalle.DataSet.FieldByName('CANTIDAD').AsFloat             := StrToFloat(MarcoMateriales1.edCantidad.Text);
     dsDetalle.DataSet.FieldByName('SUBTOTAL').AsFloat             := StrToFloat(MarcoMateriales1.edSubTotal.Text);
     dsDetalle.DataSet.FieldByName('IVA').AsFloat                  := StrToFloat(MarcoMateriales1.edIVA.Text);
     dsDetalle.DataSet.FieldByName('IEPS').AsFloat                 := StrToFloat(MarcoMateriales1.edIEPS.Text);
     dsDetalle.DataSet.FieldByName('IMPUESTO1').AsFloat            := StrToFloat(MarcoMateriales1.edImpuesto1.Text);
     dsDetalle.DataSet.FieldByName('IMPUESTO2').AsFloat            := StrToFloat(MarcoMateriales1.edImpuesto2.Text);
     dsDetalle.DataSet.FieldByName('DESCUENTO_PORC').AsFloat       := StrToFloat(MarcoMateriales1.edDescuentoPorc.Text);
     dsDetalle.DataSet.FieldByName('IVA_PORC').AsFloat             := MarcoMateriales1.ivaPorc;
     dsDetalle.DataSet.FieldByName('IEPS_PORC').AsFloat            := MarcoMateriales1.iepsPorc;
     dsDetalle.DataSet.FieldByName('IMPUESTO1_PORC').AsFloat       := MarcoMateriales1.impuesto1Porc;
     dsDetalle.DataSet.FieldByName('IMPUESTO2_PORC').AsFloat       := MarcoMateriales1.impuesto2Porc;
     dsDetalle.DataSet.FieldByName('COMENTARIO').AsString          := MarcoMateriales1.edComentario.Text;
     guardarNormal;
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
           for j := 1 to (MarcoMateriales1.frmHorizontal.columnas) do
           begin
              if MarcoMateriales1.frmHorizontal.cantStr(i,j) <> '' then
              begin
                 MarcoMateriales1.qyCalculoImpuestosCosto.Close;
                 MarcoMateriales1.qyCalculoImpuestosCosto.ParamByName('P_MATERIAL').AsInteger   := material;
                 MarcoMateriales1.qyCalculoImpuestosCosto.ParamByName('P_CANTIDAD').AsFloat     := MarcoMateriales1.frmHorizontal.cantNum(i,j);
                 MarcoMateriales1.qyCalculoImpuestosCosto.ParamByName('P_COSTO').AsFloat        := precio;
                 MarcoMateriales1.qyCalculoImpuestosCosto.Open;

                 spID2.ExecProc;
                 dsDetalle.DataSet.Insert;
                 dsDetalle.DataSet.FieldByName('ID').AsInteger                 := spID2.ParamByName('R_ID').AsInteger;
                 dsDetalle.DataSet.FieldByName('ORDEN').AsInteger              := dsFuente.DataSet.FieldByName('ID').AsInteger;
                 dsDetalle.DataSet.FieldByName('DESCUENTO_PORC').AsFloat       := 0;
                 dsDetalle.DataSet.FieldByName('CANTIDAD_RECIBIDA').AsInteger  := 0;
                 dsDetalle.DataSet.FieldByName('ESTATUS').AsString             := 'Sin Afectar';

                 dsDetalle.DataSet.FieldByName('MATERIAL').AsInteger     := material;
                 dsDetalle.DataSet.FieldByName('UNIDAD').AsInteger       := unidad;
                 dsDetalle.DataSet.FieldByName('PRECIO').AsFloat         := precio;
                 dsDetalle.DataSet.FieldByName('CANTIDAD').AsFloat       := MarcoMateriales1.frmHorizontal.cantNum(i,j);
                 dsDetalle.DataSet.FieldByName('SUBTOTAL').AsFloat       := MarcoMateriales1.qyCalculoImpuestosCosto.FieldByName('R_SUBTOTAL').AsFloat;
                 dsDetalle.DataSet.FieldByName('IVA').AsFloat            := MarcoMateriales1.qyCalculoImpuestosCosto.FieldByName('R_IVA').AsFloat;
                 dsDetalle.DataSet.FieldByName('IEPS').AsFloat           := MarcoMateriales1.qyCalculoImpuestosCosto.FieldByName('R_IEPS').AsFloat;
                 dsDetalle.DataSet.FieldByName('IMPUESTO1').AsFloat      := MarcoMateriales1.qyCalculoImpuestosCosto.FieldByName('R_IMPUESTO1').AsFloat;
                 dsDetalle.DataSet.FieldByName('IMPUESTO2').AsFloat      := MarcoMateriales1.qyCalculoImpuestosCosto.FieldByName('R_IMPUESTO2').AsFloat;
                 dsDetalle.DataSet.FieldByName('IVA_PORC').AsFloat       := MarcoMateriales1.qyCalculoImpuestosCosto.FieldByName('R_IVA_PORC').AsFloat;
                 dsDetalle.DataSet.FieldByName('IEPS_PORC').AsFloat      := MarcoMateriales1.qyCalculoImpuestosCosto.FieldByName('R_IEPS_PORC').AsFloat;
                 dsDetalle.DataSet.FieldByName('IMPUESTO1_PORC').AsFloat := MarcoMateriales1.qyCalculoImpuestosCosto.FieldByName('R_IMPUESTO1_PORC').AsFloat;
                 dsDetalle.DataSet.FieldByName('IMPUESTO2_PORC').AsFloat := MarcoMateriales1.qyCalculoImpuestosCosto.FieldByName('R_IMPUESTO2_PORC').AsFloat;
                 dsDetalle.DataSet.FieldByName('COMENTARIO').AsString    := MarcoMateriales1.edComentario.Text;
//                          edPU.Value        := qyCalculoImpuestos.FieldByName('R_PRECIO').AsFloat;

                 dsDetalle.DataSet.FieldByName('MEDIDA').AsInteger       := MarcoMateriales1.frmHorizontal.medida(j);
                 if MarcoMateriales1.frmHorizontal.colores then
                    dsDetalle.DataSet.FieldByName('COLOR').AsInteger := MarcoMateriales1.frmHorizontal.color(i);
                 guardar;
              end;
           end;
        refresh_totales(TDetalle.FieldByName('ID').AsInteger);
     end;
  end;
  dgPartidas.SetFocus;
end;

procedure TfrmCapturar_Ordenes_de_Compras.ibCancelarPartidaClick(
  Sender: TObject);
begin
  inherited;
  dsDetalle.DataSet.Cancel;
  edicionDetalle := not edicionDetalle;
  fijarBotonesDetalle;
end;

procedure TfrmCapturar_Ordenes_de_Compras.ibEliminarPartidaClick(
  Sender: TObject);
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
     for i := 0 to dgPartidas.SelectedCount - 1 do
         L.Add(dgPartidas.SelectedNodes[i]);//no se hace directamente en el grid por que tiene bug, cuando son 2 registros
     for i := 0 to (L.Count - 1) do
     begin
        tmp := TdxTreeListNode(L.Items[i]).Strings[0];
        spDEL_PARTIDA_OCOMPRA.ParamByName('P_ID').AsString := tmp;
        spDEL_PARTIDA_OCOMPRA.ExecProc;
        spDEL_PARTIDA_OCOMPRA.Transaction.CommitRetaining;
     end;
     L.Free;
     refresh_totales(0);
     }
     fijarBotonesDetalle;
  end;
end;

procedure TfrmCapturar_Ordenes_de_Compras.ibNuevaPartidaClick(
  Sender: TObject);
begin
  inherited;
  edicionDetalle := not edicionDetalle;
  fijarBotonesDetalle;

  MarcoMateriales1.limpiar;
  //sirve asi, para el caso en que se edite el registro
  //no capturar con boton Capturar.
  MarcoMateriales1.FLAG_ESTADO := stNuevo;

  dsDetalle.DataSet.Insert;
  spID2.ExecProc;
  dsDetalle.DataSet.FieldByName('ID').AsInteger                 := spID2.ParamByName('R_ID').AsInteger;
  dsDetalle.DataSet.FieldByName('ORDEN').AsInteger              := dsFuente.DataSet.FieldByName('ID').AsInteger;
  dsDetalle.DataSet.FieldByName('CANTIDAD').AsFloat             := 0;
  dsDetalle.DataSet.FieldByName('PRECIO').AsFloat               := 0;
  dsDetalle.DataSet.FieldByName('DESCUENTO_PORC').AsFloat       := 0;
  dsDetalle.DataSet.FieldByName('SUBTOTAL').AsFloat             := 0;
  dsDetalle.DataSet.FieldByName('IVA').AsFloat                  := 0;
  dsDetalle.DataSet.FieldByName('IEPS').AsFloat                 := 0;
  dsDetalle.DataSet.FieldByName('IMPUESTO1').AsFloat            := 0;
  dsDetalle.DataSet.FieldByName('IMPUESTO2').AsFloat            := 0;
  dsDetalle.DataSet.FieldByName('CANTIDAD_RECIBIDA').AsInteger  := 0;
  dsDetalle.DataSet.FieldByName('ESTATUS').AsString             := 'Sin Afectar';

  //verifica si el proveedor es Nacional o Extranjero
  MarcoMateriales1.FLAG_CALCULAR := dsFuente.DataSet.FieldByName('TIPO_NACIONALIDAD').AsString = 'Nacional';
end;

procedure TfrmCapturar_Ordenes_de_Compras.ibCotizacionesClick(
  Sender: TObject);
var
   w    : TPoint;
   pnt  : TPoint;
   pnt2 : TPoint;
begin
  inherited;
  w.x := 0;
  w.y := 0;
  pnt  := fpPadre.ClientToScreen(w);
  pnt2 := deID.ClientToScreen(w);
  pnt2.y := pnt2.y - pnt.y;
  frmCotizaciones_en_ocompras                           := TfrmCotizaciones_en_ocompras.Crear(Application, pnt.x,pnt.y, pnt2.y);
  frmCotizaciones_en_ocompras.qyCotizaciones.DataSource := dsFuente;
  frmCotizaciones_en_ocompras.Tag                       := dsFuente.DataSet.FieldByName('ID').AsInteger;
  frmCotizaciones_en_ocompras.dsOrigen.DataSet          := TCapturar;
  frmCotizaciones_en_ocompras.ShowModal;
  frmCotizaciones_en_ocompras.qyCotizaciones.DataSource := nil;
  frmCotizaciones_en_ocompras.dsOrigen.DataSet          := nil;
  frmCotizaciones_en_ocompras.Free;
  reglas.refresh_IBQuery(qyPartidas);
  reglas.abrir_IBTabla(TCapturar);
end;

procedure TfrmCapturar_Ordenes_de_Compras.dgPartidasDblClick(
  Sender: TObject);
begin
  inherited;
  if not(dsPartidas.DataSet.IsEmpty) and ibModificarPartida.Enabled then
     ibModificarPartida.Click
  else
     if ibNuevaPartida.Enabled then
        ibNuevaPartida.Click
end;

procedure TfrmCapturar_Ordenes_de_Compras.NuevaPartida1Click(
  Sender: TObject);
begin
  inherited;
  if ibNuevaPartida.Enabled then
     ibNuevaPartida.Click;
end;

procedure TfrmCapturar_Ordenes_de_Compras.ModificarPartida1Click(
  Sender: TObject);
begin
  inherited;
  if ibModificarPartida.Enabled then
     ibModificarPartida.Click;
end;

procedure TfrmCapturar_Ordenes_de_Compras.CancelarPartida1Click(
  Sender: TObject);
begin
  inherited;
  if ibCancelarPartida.Enabled then
     ibCancelarPartida.Click;
end;

procedure TfrmCapturar_Ordenes_de_Compras.EliminarPartida1Click(
  Sender: TObject);
begin
  inherited;
  if ibEliminarPartida.Enabled then
     ibEliminarPartida.Click;
end;

procedure TfrmCapturar_Ordenes_de_Compras.Cotizaciones1Click(Sender: TObject);
begin
  inherited;
  if ibCotizaciones.Enabled then
     ibCotizaciones.Click;
end;

procedure TfrmCapturar_Ordenes_de_Compras.cbSinProveedorChange(
  Sender: TObject);
begin
  inherited;
  if cbSinProveedor.Checked then
     qyCotizaciones.ParamByName('SIN_PROVEEDOR').AsString := 'Si'
  else
     qyCotizaciones.ParamByName('SIN_PROVEEDOR').AsString := 'No';
  reglas.refresh_IBQuery(qyCotizaciones);
end;

procedure TfrmCapturar_Ordenes_de_Compras.cbOtroDeptoChange(
  Sender: TObject);
begin
  inherited;
  if cbOtroDepto.Checked then
     qyCotizaciones.ParamByName('OTRO_DEPTO').AsString := 'Si'
  else
     qyCotizaciones.ParamByName('OTRO_DEPTO').AsString := 'No';
  reglas.refresh_IBQuery(qyCotizaciones);
end;

procedure TfrmCapturar_Ordenes_de_Compras.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  cerrar := true;
  inherited;
end;

procedure TfrmCapturar_Ordenes_de_Compras.GuardarPartida1Click(
  Sender: TObject);
begin
  inherited;
  if ibGuardarPartida.Enabled then
     ibGuardarPartida.Click;
end;

procedure TfrmCapturar_Ordenes_de_Compras.FormDestroy(Sender: TObject);
begin
   MarcoMateriales1.Destruir;
   inherited;
end;

procedure TfrmCapturar_Ordenes_de_Compras.buInicioClick(Sender: TObject);
begin
  inherited;
  fijarBotonesDetalle;
end;

procedure TfrmCapturar_Ordenes_de_Compras.buAnteriorClick(Sender: TObject);
begin
  inherited;
  fijarBotonesDetalle;
end;

procedure TfrmCapturar_Ordenes_de_Compras.buSiguienteClick(
  Sender: TObject);
begin
  inherited;
  fijarBotonesDetalle;
end;

procedure TfrmCapturar_Ordenes_de_Compras.buFinClick(Sender: TObject);
begin
  inherited;
  fijarBotonesDetalle;
end;

procedure TfrmCapturar_Ordenes_de_Compras.FormShow(Sender: TObject);
begin
  inherited;
  fijarBotonesDetalle;
end;

procedure TfrmCapturar_Ordenes_de_Compras.ibGuardarClick(Sender: TObject);
var
  statusDS   : TDataSetState;
begin
  statusDS := dsFuente.DataSet.State;
  verfificarFechas;
  inherited;
  FijarBotonesDetalle;
  if (statusDS = dsEdit) and  (tmpDescGlobal <> dsFuente.DataSet.FieldByName('DESCUENTO_GLOBAL_PORC').AsFloat) then
  begin
     if not(qyPartidas.IsEmpty) then
     begin
        spOC_DESCUENTO_GLOBAL.ParamByName('P_ID').AsInteger := dsFuente.DataSet.FieldByName('ID').AsInteger;
        spOC_DESCUENTO_GLOBAL.ExecProc;
        spOC_DESCUENTO_GLOBAL.Transaction.CommitRetaining;
        //refrescar la pantalla con los datos
        reglas.abrir_IBTabla(TCapturar);
        reglas.refresh_IBQuery(qyPartidas);
     end;
  end;
end;

procedure TfrmCapturar_Ordenes_de_Compras.ibAutomaticaClick(
  Sender: TObject);
begin
  inherited;
  if MessageDlg('¿Agregar partidas orden de compra automatica?', mtConfirmation, [mbYes, mbNo], 0) = mrYes  then
  begin
     spADD_OC_AUTOMATICA.ParamByName('P_ID').AsInteger := dsFuente.DataSet.FieldByName('ID').AsInteger;
     spADD_OC_AUTOMATICA.ExecProc;
     spADD_OC_AUTOMATICA.Transaction.CommitRetaining;
     reglas.abrir_IBTabla(TCapturar);
     reglas.refresh_IBQuery(qyPartidas)
  end;
end;

procedure TfrmCapturar_Ordenes_de_Compras.ibExportarXLSClick(
  Sender: TObject);
var
   nombre : string;
   tmp : string;
begin
  inherited;
   if SelectDirectory('Seleccionar Directorio', '', tmp) then
   begin
      nombre := dsFuente.DataSet.FieldByName('CLAVE').AsString;
      nombre := nombre + '.xls';
      if tmp <> '' then
      begin
         tmp := tmp + '\' + nombre;
         //dgPartidas.SaveToXLS(tmp, true);
      end;
   end;
end;

procedure TfrmCapturar_Ordenes_de_Compras.ibBackOrderClick(
  Sender: TObject);
begin
  inherited;
if MessageDlg('¿Agregar partidas a esta orden de compra?'+#13+
 'Tenga en cuenta que las partidas que participan como backorden se pondran en el estatus de surtidas y se agregaran a esta o.c. con el estatus original de su o.c.'
  , mtConfirmation, [mbYes, mbNo], 0) = mrYes  then
  begin
     spBACK_ORDER.ParamByName('P_ID').AsInteger := dsFuente.DataSet.FieldByName('ID').AsInteger;
     spBACK_ORDER.ExecProc;
     spBACK_ORDER.Transaction.CommitRetaining;
     reglas.abrir_IBTabla(TCapturar);
     reglas.refresh_IBQuery(qyPartidas)
  end;
end;

procedure TfrmCapturar_Ordenes_de_Compras.edProveedorButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
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
                 edProveedor.Text                                              := frmSeleccionarProveedor.FACTURAR_A;
                 dsFuente.DataSet.FieldByName('PROVEEDOR').AsInteger           := frmSeleccionarProveedor.ID;
                 dsFuente.DataSet.FieldByName('CONDICION_COMERCIAL').AsInteger := frmSeleccionarProveedor.CCOMERCIAL;
                 dsFuente.DataSet.FieldByName('DESCUENTO_GLOBAL_PORC').AsFloat := frmSeleccionarProveedor.DESC_PORC;
                 if frmSeleccionarProveedor.MONEDA <> 0 then
                    dsFuente.DataSet.FieldByName('MONEDA').AsInteger := frmSeleccionarProveedor.MONEDA;
              end;
           end
           else
              begin
                 edProveedor.Text                                              := frmSeleccionarProveedor.FACTURAR_A;
                 dsFuente.DataSet.FieldByName('PROVEEDOR').AsInteger           := frmSeleccionarProveedor.ID;
                 dsFuente.DataSet.FieldByName('CONDICION_COMERCIAL').AsInteger := frmSeleccionarProveedor.CCOMERCIAL;
                 dsFuente.DataSet.FieldByName('DESCUENTO_GLOBAL_PORC').AsFloat := frmSeleccionarProveedor.DESC_PORC;
                 if frmSeleccionarProveedor.MONEDA <> 0 then
                    dsFuente.DataSet.FieldByName('MONEDA').AsInteger := frmSeleccionarProveedor.MONEDA;
              end;
           frmSeleccionarProveedor.Free;
           frmSeleccionarProveedor := nil;
        end;
    1 : begin
           dsFuente.DataSet.FieldByName('PROVEEDOR').AsVariant  := 0;
        end;
  end;
end;

procedure TfrmCapturar_Ordenes_de_Compras.edProveedorKeyPress(
  Sender: TObject; var Key: Char);
begin
  inherited;
  //if Key = #13 then
  //   edProveedor.OnButtonClick(Sender, 0);
end;

procedure TfrmCapturar_Ordenes_de_Compras.itemImprimirClick(
  Sender: TObject);
begin
  inherited;
  try
     frmPRN_0025    := TfrmPRN_0025.Create(Application);
     frmPRN_0025.ID := dsFuente.DataSet.FieldByName('ID').AsInteger;
     frmPRN_0025.Open;
     frmPRN_0025.imprimir;
  finally
     frmPRN_0025.Release;
  end;

  reglas.abrir_IBTabla(TCapturar)
end;

procedure TfrmCapturar_Ordenes_de_Compras.itemIMedidasClick(
  Sender: TObject);
begin
  inherited;
  try
     frmPRN_0025    := TfrmPRN_0025.Create(Application);
     frmPRN_0025.ID := dsFuente.DataSet.FieldByName('ID').AsInteger;
     frmPRN_0025.OpenMedidas;
     frmPRN_0025.imprimir;
  finally
     frmPRN_0025.Release;
  end;

  reglas.abrir_IBTabla(TCapturar)
end;

procedure TfrmCapturar_Ordenes_de_Compras.ibImprimirClick(Sender: TObject);
begin
  inherited;
  if MarcoMateriales1.FLAG_MEDIDAS then
     itemIMedidas.Click
  else
     itemImprimir.Click;
end;

procedure TfrmCapturar_Ordenes_de_Compras.itemPreviewClick(
  Sender: TObject);
begin
  inherited;
  try
     frmPRN_0025    := TfrmPRN_0025.Create(Application);
     frmPRN_0025.ID := dsFuente.DataSet.FieldByName('ID').AsInteger;
     frmPRN_0025.Open;
     frmPRN_0025.preview;
  finally
     frmPRN_0025.Free;
  end;
end;

procedure TfrmCapturar_Ordenes_de_Compras.itemPreviewMClick(
  Sender: TObject);
begin
  inherited;
  try
     frmPRN_0025    := TfrmPRN_0025.Create(Application);
     frmPRN_0025.ID := dsFuente.DataSet.FieldByName('ID').AsInteger;
     frmPRN_0025.OpenMedidas;
     frmPRN_0025.preview;
  finally
     frmPRN_0025.Free;
  end;
end;

procedure TfrmCapturar_Ordenes_de_Compras.Especificaciones1Click(
  Sender: TObject);
begin
  inherited;
  try
     frmPRN_0025    := TfrmPRN_0025.Create(Application);
     frmPRN_0025.ID := dsFuente.DataSet.FieldByName('ID').AsInteger;
     frmPRN_0025.OpenEspecificaciones;
     frmPRN_0025.imprimir;
  finally
     frmPRN_0025.Free;
  end;
end;

procedure TfrmCapturar_Ordenes_de_Compras.sbRefreshAlmacenesClick(
  Sender: TObject);
begin
  inherited;
  reglas.refresh_IBQuery(dmIBData.qyAlmacenes);
end;

procedure TfrmCapturar_Ordenes_de_Compras.buAplicarClick(Sender: TObject);
var
   ejecutar  : boolean;
begin
  inherited;
  ejecutar := TRUE;
  dsFuente.DataSet.FieldByName('ESTATUS').AsString := awrStatus.estatusAnt;
  dsFuente.DataSet.Post;
  if (awrStatus.autorizacion) and (awrStatus.nivel > reglas.dameUsuarioNivel) then
  begin
     try
        Application.CreateForm(TfrmAcceso, frmAcceso);
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
     spEstatus.Params.Clear;
     spEstatus.StoredProcName := awrStatus.storeproc;
     spEstatus.Params.CreateParam(ftInteger,'P_ID',ptInput);
     spEstatus.ParamByName('P_ID').AsInteger := awrStatus.idEjecutar;
     spEstatus.ExecProc;
     spEstatus.Transaction.CommitRetaining;

     awrStatus.estatusSel := '';
     reglas.abrir_IBTabla(TCapturar);

     if awrStatus.correo then
     begin
        mensajes;
     end;
  end;
end;

procedure TfrmCapturar_Ordenes_de_Compras.cbEstatusChange(Sender: TObject);
begin
  inherited;
  if (cbEstatus.Text <> '') and (cbEstatus.Text <> awrStatus.EstatusSel) then
  begin
     awrStatus.estatusSel   := dsEstatus.DataSet.FieldByName('R_ESTATUS').AsString;
     awrStatus.autorizacion := dsEstatus.DataSet.FieldByName('R_AUTORIZACION').AsString = 'Si';
     awrStatus.storeproc    := dsEstatus.DataSet.FieldByName('R_STOREPROC').AsString;
     awrStatus.nivel        := dsEstatus.DataSet.FieldByName('R_NIVEL').AsInteger;
     awrStatus.id           := dsEstatus.DataSet.FieldByName('R_ID').AsInteger;
     awrStatus.correo       := dsEstatus.DataSet.FieldByName('R_CORREO').AsString = 'Si';

     dsFuente.DataSet.FieldByName('ESTATUS').AsString := awrStatus.estatusSel;

     buAplicar.Enabled := true;
     ibGuardar.Enabled := false;
  end;
end;

procedure TfrmCapturar_Ordenes_de_Compras.TCapturarAfterOpen(
  DataSet: TDataSet);
begin
  inherited;
  reglas.refresh_IBQuery(qyEstatus);
end;

{
procedure TfrmCapturar_Ordenes_de_Compras.dgPartidasCustomDrawCell(
  Sender: TObject; ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
  if ANode.Values[dgPartidasESTATUS.Index] = 'Cancelado' then
  begin
     AColor := clRed;
  end
  else
     if (ANode.Values[dgPartidasESTATUS.Index] = 'Sin Surtir') or
        (ANode.Values[dgPartidasESTATUS.Index] = 'Surtido') or
        (ANode.Values[dgPartidasESTATUS.Index] = 'Parcialmente Surtido') then
     begin
        AColor := $00FDD284;
     end
     else
        begin
           if ASelected then
              AColor := clHighlight
           else
              AColor := clInfoBk;
        end;

  if (AColor = $00FDD284) and (ANode.Values[dgPartidasESTATUS.Index] = 'Surtido') then
  begin
     AFont.Color := clTeal;
     AFont.Style := [fsBold];
  end
  else
     if (AColor = clRed) and (ANode.Values[dgPartidasESTATUS.Index] = 'Cancelado') then
     begin
        AFont.Color := clBlack;
     end
     else
        if (AColor = clInfoBk) and (ANode.Values[dgPartidasESTATUS.Index] = 'En Proceso') then
           AFont.Color := clBlue;
end;
 }
procedure TfrmCapturar_Ordenes_de_Compras.buActCCClick(Sender: TObject);
begin
  inherited;
  reglas.abrir_IBTabla(TCondiciones_Comerciales);
end;

procedure TfrmCapturar_Ordenes_de_Compras.buActMonClick(Sender: TObject);
begin
  inherited;
  reglas.abrir_IBTabla(TMonedas);
end;

procedure TfrmCapturar_Ordenes_de_Compras.buEliMonClick(Sender: TObject);
begin
  inherited;
  dsFuente.DataSet.FieldByName('MONEDA').AsVariant := 0;
end;

procedure TfrmCapturar_Ordenes_de_Compras.buEliCCClick(Sender: TObject);
begin
  inherited;
  dsFuente.DataSet.FieldByName('CONDICION_COMERCIAL').AsVariant := 0;
end;

procedure TfrmCapturar_Ordenes_de_Compras.dgPartidasFEButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
begin
  inherited;
  if dsFuente.DataSet.FieldByName('ESTATUS').AsString = 'Sin Afectar' then
  begin
     {
     dlgFecha.DateValue := dsPartidas.DataSet.FieldByName('R_F_PROM_ENT').AsDateTime;

     if dlgFecha.Execute then
     begin
        spM_F_PROM_ENT_OC.ParamByName('P_ID').AsInteger   := dsPartidas.DataSet.FieldByName('R_ID').AsInteger;
        spM_F_PROM_ENT_OC.ParamByName('P_FECHA').AsString := FormatDateTime('mm/dd/yyyy', dlgFecha.DateValue);
        spM_F_PROM_ENT_OC.ExecProc;
        spM_F_PROM_ENT_OC.Transaction.CommitRetaining;

        reglas.refresh_IBQuery(qyPartidas);
     end;
     }
  end
  else
  begin
    ShowMessage('El estatus no es valido para poder asigna fecha de entrega.');
  end;
end;

end.
