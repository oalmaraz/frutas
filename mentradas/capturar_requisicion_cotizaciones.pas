unit capturar_requisicion_cotizaciones;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  capturarMDI, Db, IBQuery,  IBCustomDataSet,

  DBCtrls, StdCtrls, IBStoredProc, IBTable,
   Mask,    jpeg,
  ExtCtrls,  Menus,
     Buttons, Grids, DBGrids,  UfrmFrameMaterial;

type
  TfrmCapturar_requisicion_cotizaciones = class(TfrmCapturarMDI)
    TCapturarID: TIntegerField;
    TCapturarFECHA_ALTA: TDateTimeField;
    TCapturarFECHA_VALIDEZ: TDateTimeField;
    TCapturarPROVEEDOR: TIntegerField;
    TCapturarNOMBRE: TIBStringField;
    TCapturarRAZON_SOCIAL: TIBStringField;
    TCapturarTELEFONO: TIBStringField;
    TCapturarORDEN_COMPRA: TIntegerField;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    deFechaValidez: TDBEdit;
    deRazonSocial: TDBEdit;
    deTelefono: TDBEdit;
    paLienzo2: TPanel;
    fpCaptura: TPanel;
    ibModificarPartida: TBitBtn;
    ibGuardarPartida: TBitBtn;
    ibCancelarPartida: TBitBtn;
    ibEliminarPartida: TBitBtn;
    dsRequisiciones: TDataSource;
    dsProveedor: TDataSource;
    qyRequisiciones: TIBQuery;
    qyRequisicionesR_ID: TIntegerField;
    qyRequisicionesR_CLAVE: TIBStringField;
    qyRequisicionesR_DEPARTAMENTO: TIBStringField;
    qyRequisicionesR_FECHA_ENTREGA: TDateTimeField;
    qyRequisicionesR_FECHA_ALTA: TDateTimeField;
    qyProveedor: TIBQuery;
    qyPartidas: TIBQuery;
    dsPartidas: TDataSource;
    TDetalle: TIBTable;
    dsDetalle: TDataSource;
    Label12: TLabel;
    Label13: TLabel;
    TCapturarMONEDA: TIntegerField;
    TCapturarCONDICION_COMERCIAL: TIntegerField;
    TCapturarclave_requisicion: TIBStringField;
    TCapturarESTATUS: TIBStringField;
    qyPartidasR_ID: TIntegerField;
    qyPartidasR_COTIZACION: TIntegerField;
    qyPartidasR_MATERIAL: TIntegerField;
    qyPartidasR_CLAVE: TIBStringField;
    qyPartidasR_DESCRIPCION: TIBStringField;
    qyPartidasR_UNIDAD: TIntegerField;
    qyPartidasR_DESCRIPCION_UNIDAD: TIBStringField;
    qyPartidasR_CANTIDAD: TFloatField;
    qyPartidasR_PRECIO: TFloatField;
    qyPartidasR_IVA: TFloatField;
    qyPartidasR_IEPS: TFloatField;
    qyPartidasR_IMPUESTO1: TFloatField;
    qyPartidasR_IMPUESTO2: TFloatField;
    qyPartidasR_ESTATUS: TIBStringField;
    TDetalleID: TIntegerField;
    TDetalleCOTIZACION: TIntegerField;
    TDetalleREQUISICION_DETALLE: TIntegerField;
    TDetalleMATERIAL: TIntegerField;
    TDetalleDESCRIPCION: TIBStringField;
    TDetalleCANTIDAD: TFloatField;
    TDetalleUNIDAD: TIntegerField;
    TDetallePRECIO: TFloatField;
    TDetalleIVA: TFloatField;
    TDetalleIEPS: TFloatField;
    TDetalleIMPUESTO1: TFloatField;
    TDetalleIMPUESTO2: TFloatField;
    TDetalleESTATUS: TIBStringField;
    qyMateriales_Unidades: TIBQuery;
    qyMateriales_UnidadesR_ID: TIntegerField;
    qyMateriales_UnidadesR_MATERIAL: TIntegerField;
    qyMateriales_UnidadesR_UNIDAD: TIntegerField;
    qyMateriales_UnidadesR_CLAVE: TIBStringField;
    qyMateriales_UnidadesR_DESCRIPCION: TIBStringField;
    qyMateriales_UnidadesR_FACTOR: TFloatField;
    dsMateriales_Unidades: TDataSource;
    spDEL_PARTIDA_REQ_COT_DET: TIBStoredProc;
    spCALCULA_IVA: TIBStoredProc;
    spCALCULA_IEPS: TIBStoredProc;
    spCALCULA_IMPUESTO_1: TIBStoredProc;
    spCALCULA_IMPUESTO_2: TIBStoredProc;
    qyPartidasR_TOTAL: TFloatField;
    qyRequisicionesR_PRIORIDAD: TIBStringField;
    deFechaAlta: TDBEdit;
    spEstatus: TIBStoredProc;
    Label18: TLabel;
    deRequisicion: TDBEdit;
    TCapturarclave_requisiciones: TIBStringField;
    TDetalleIVA_PORC: TFloatField;
    TDetalleIEPS_PORC: TFloatField;
    TDetalleIMPUESTO1_PORC: TFloatField;
    TDetalleIMPUESTO2_PORC: TFloatField;
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
    pmTeclas: TPopupMenu;
    ModificarPartida1: TMenuItem;
    GuardarPartida1: TMenuItem;
    CancelarPartida1: TMenuItem;
    EliminarPartida1: TMenuItem;
    cbEstatus: TDBLookupComboBox;
    edEstatus: TDBEdit;
    buAplicar: TBitBtn;
    qyEstatus: TIBQuery;
    dsEstatus: TDataSource;
    edProveedor: TDBEdit;
    qyCC: TIBQuery;
    dsCC: TDataSource;
    cbCC: TDBLookupComboBox;
    cbMonedas: TDBLookupComboBox;
    qyMonedas: TIBQuery;
    dsMonedas: TDataSource;
    cbRequisiciones: TDBLookupComboBox;
    laObservaciones: TLabel;
    deObservaciones: TDBMemo;
    TCapturarOBSERVACIONES: TBlobField;
    MarcoMateriales1: TMarcoMateriales;
    ibRequisiciones: TBitBtn;
    TCapturarREQUISICION: TIntegerField;
    dgPartidas: TDBGrid;
    TCapturarSUBTOTAL: TFloatField;
    TCapturarIVA: TFloatField;
    TCapturarIEPS: TFloatField;
    TCapturarIMPUESTO1: TFloatField;
    TCapturarIMPUESTO2: TFloatField;
    TCapturarTOTAL: TFloatField;
    TCapturarDESC_PORC_G: TFloatField;
    TCapturarDESC_CANTIDAD_G: TFloatField;
    TCapturarDESC_CANTIDAD_P: TFloatField;
    TCapturarGRAN_TOTAL: TFloatField;
    qyPartidasR_ROWS: TIntegerField;
    qyPartidasR_DESCUENTO_PORC: TFloatField;
    qyPartidasR_DP: TFloatField;
    qyPartidasR_DG: TFloatField;
    qyPartidasR_GT: TFloatField;
    qyPartidasR_COSTO_CON_IMPUESTOS: TFloatField;
    qyPartidasR_ID_REFERENCIA: TIntegerField;
    qyPartidasR_TABLA_REFERENCIA: TIBStringField;
    qyPartidasR_TABLA_CLAVE: TIBStringField;
    buActReq: TBitBtn;
    buEliReq: TBitBtn;
    buBusPro: TBitBtn;
    buEliPro: TBitBtn;
    buEliCC: TBitBtn;
    buActCC: TBitBtn;
    buEliMon: TBitBtn;
    buActMon: TBitBtn;
    qyPartidasR_SUBTOTAL: TFloatField;
    qyPartidasR_IVA_PORC: TFloatField;
    qyPartidasR_IEPS_PORC: TFloatField;
    qyPartidasR_IMPUESTO1_PORC: TFloatField;
    qyPartidasR_IMPUESTO2_PORC: TFloatField;
    ibCopiar: TBitBtn;
    ibFactura: TBitBtn;
    spCOPIAR_REQ_COT: TIBStoredProc;
    spCREAR_ORDEN_COMPRA: TIBStoredProc;
    TDetalleDESCUENTO_PORC: TFloatField;
    TDetallePORC_DP: TFloatField;
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
    TDetalleCOSTO_CON_IMPUESTOS: TFloatField;
    TDetalleID_REFERENCIA: TIntegerField;
    TDetalleTABLA_REFERENCIA: TIBStringField;
    spM_REQUISICIONES_COTIZACIONES_DET: TIBStoredProc;
    procedure FormCreate(Sender: TObject);
    procedure dsFuenteDataChange(Sender: TObject; Field: TField);
    procedure ibNuevoClick(Sender: TObject);
    procedure ibModificarClick(Sender: TObject);
    procedure ibEliminarPartidaClick(Sender: TObject);
    procedure ibCancelarPartidaClick(Sender: TObject);
    procedure ibGuardarPartidaClick(Sender: TObject);
    procedure ibModificarPartidaClick(Sender: TObject);
    procedure dgPartidasDblClick(Sender: TObject);
    procedure TCapturarCalcFields(DataSet: TDataSet);
    procedure ibGuardarClick(Sender: TObject);
    procedure ModificarPartida1Click(Sender: TObject);
    procedure GuardarPartida1Click(Sender: TObject);
    procedure CancelarPartida1Click(Sender: TObject);
    procedure EliminarPartida1Click(Sender: TObject);
    procedure buAplicarClick(Sender: TObject);
    procedure cbEstatusChange(Sender: TObject);
    procedure TCapturarAfterOpen(DataSet: TDataSet);
    procedure edProveedorKeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ibRequisicionesClick(Sender: TObject);
    procedure buInicioClick(Sender: TObject);
    procedure buAnteriorClick(Sender: TObject);
    procedure buSiguienteClick(Sender: TObject);
    procedure buFinClick(Sender: TObject);
    procedure buActReqClick(Sender: TObject);
    procedure buEliReqClick(Sender: TObject);
    procedure buBusProClick(Sender: TObject);
    procedure buEliProClick(Sender: TObject);
    procedure buActCCClick(Sender: TObject);
    procedure buEliCCClick(Sender: TObject);
    procedure buActMonClick(Sender: TObject);
    procedure buEliMonClick(Sender: TObject);
    procedure ibCopiarClick(Sender: TObject);
    procedure ibFacturaClick(Sender: TObject);
    {
    procedure dgPartidasCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    }
    procedure ibImprimirClick(Sender: TObject);
    procedure qyPartidasAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
    TopIdx : Integer;
    Key    : Variant;

    requisicion : integer;
    edicionDet  : boolean;//<-valida los botones

    procedure refreshData;
    procedure fijarBotonesDet;overload;
    procedure fijarBotonesDet(valor : boolean);overload;
    procedure almacenar;
    procedure BeforeRecord;
    procedure BeforeUpdate;
    procedure AfterRecord;
  public
    { Public declarations }
  end;

var
  frmCapturar_requisicion_cotizaciones: TfrmCapturar_requisicion_cotizaciones;

implementation

uses explorar_requisiciones_cot, IBModulo, IBData, reglas_de_negocios,
  seleccionar_material, seleccionar_proveedor, UfrmAcceso,
  UfrmSeleccionarProveedor, UfrmSeleccionarRequisicion, UPRN_0050;

{$R *.DFM}

procedure TfrmCapturar_requisicion_cotizaciones.BeforeRecord;
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

procedure TfrmCapturar_requisicion_cotizaciones.BeforeUpdate;
//var
  //N: TdxTreeListNode;
begin
   if MarcoMateriales1.FLAG_ESTADO = stNuevo then
   begin
      Key    := dsPartidas.DataSet.FieldByName('R_ID').AsInteger;
      TopIdx := 0;
   end
   else
      begin
      {
         N := dgPartidas.FocusedNode;

         if N = nil then
           TopIdx := -1
         else
         begin
           Key    := TdxDBGridNode(N).Id;
           TopIdx := dgPartidas.TopIndex;
         end;
         }
      end;
end;

procedure TfrmCapturar_requisicion_cotizaciones.AfterRecord;
//var
  //N: TdxTreeListNode;
begin
  if TopIdx <> -1 then
  begin
  {
    dgPartidas.TopIndex := TopIdx;
    N := dgPartidas.FindNodeByKeyValue(Key);
    if N <> nil then
    begin
       N.Focused  := True;
       N.Selected := true;
    end;
    }
  end;
end;

procedure TfrmCapturar_requisicion_cotizaciones.refreshData;
begin
{   if vCual = 0 then
      BeforeRecord
   else}
   BeforeUpdate;

   reglas.abrir_IBTabla(TCapturar);
   reglas.refresh_IBQuery(qyPartidas);
   
   fijarBotonesDet(false);
   
   AfterRecord;
end;

procedure TfrmCapturar_requisicion_cotizaciones.fijarBotonesDet(valor : boolean);
begin
   edicionDet := valor;
   fijarBotonesDet;
end;

procedure TfrmCapturar_requisicion_cotizaciones.fijarBotonesDet;
var
   st  : boolean;
   st2 : boolean;
begin
  st := (dsFuente.DataSet.FieldByName('ESTATUS').AsString = 'En Proceso' ) or
        (dsFuente.DataSet.FieldByName('ESTATUS').AsString = 'Cancelado') or
        (dsFuente.DataSet.FieldByName('ESTATUS').AsString = 'Surtido');

  st2 := (dsFuente.DataSet.FieldByName('ESTATUS').AsString = 'Cancelado') or
         (dsFuente.DataSet.FieldByName('ESTATUS').AsString = 'Surtido');

  ibModificarPartida.Enabled := not edicionDet and not(st) and not(dsPartidas.DataSet.IsEmpty);
  ibGuardarPartida.Enabled   := edicionDet and not(st);
  ibCancelarPartida.Enabled  := edicionDet and not(st);
  ibEliminarPartida.Enabled  := not edicionDet and not(st) and not(dsPartidas.DataSet.IsEmpty);
  ibRequisiciones.Enabled    := not edicionDet and not(st2);
  dgPartidas.Enabled         := not edicionDet;
{
  itemF8P.Enabled  := ibModificarPartida.Enabled;
  itemF9P.Enabled  := ibGuardarPartida.Enabled;
  itemF10P.Enabled := ibCancelarPartida.Enabled;
  itemF11P.Enabled := ibEliminarPartida.Enabled;
}
  MarcoMateriales1.Visible   := edicionDet and not(st);

//  dgPartidas.FullExpand;
end;

procedure TfrmCapturar_requisicion_cotizaciones.FormCreate(
  Sender: TObject);
begin
  MarcoMateriales1.MOVIMIENTO := obEntrada;
  MarcoMateriales1.inicializar(true);//para que haga los calculos de impuestos

  reglas.abrir_IBTabla(dmIBData.TFiltroMateriales);
  reglas.abrir_IBTabla(dmIBData.TFiltroRequisiciones);
  inherited;
  reglas.refresh_IBQuery(qyRequisiciones);
  reglas.refresh_IBQuery(qyCC);
  reglas.refresh_IBQuery(qyMonedas);
  reglas.refresh_IBQuery(qyPartidas);
  reglas.abrir_IBTabla(TDetalle);
end;

procedure TfrmCapturar_requisicion_cotizaciones.dsFuenteDataChange(
  Sender: TObject; Field: TField);
begin
  inherited;
  if (TDataSource(sender).DataSet <> nil) then
  begin
     buAplicar.Enabled       := false;
     paLienzo2.Visible       :=(TDataSource(sender).DataSet.State in [dsBrowse]) and not(TDataSource(sender).DataSet.IsEmpty);
     cbRequisiciones.Visible :=(dsPartidas.DataSet.IsEmpty and (TDataSource(sender).DataSet.State = dsEdit)) or (TDataSource(sender).DataSet.State in [dsInsert]);
     buActReq.Visible        :=(dsPartidas.DataSet.IsEmpty and (TDataSource(sender).DataSet.State = dsEdit)) or (TDataSource(sender).DataSet.State in [dsInsert]);
     buEliReq.Visible        :=(dsPartidas.DataSet.IsEmpty and (TDataSource(sender).DataSet.State = dsEdit)) or (TDataSource(sender).DataSet.State in [dsInsert]);
     ibEliminar.Enabled      := ibEliminar.Enabled and (TDataSource(sender).DataSet.FieldByName('ESTATUS').AsString = 'Sin Afectar');
  end;
end;

procedure TfrmCapturar_requisicion_cotizaciones.ibNuevoClick(
  Sender: TObject);
begin
  inherited;
  dmIBData.spFECHA_SERVIDOR.ExecProc;
  dsFuente.DataSet.FieldByName('FECHA_ALTA').AsDateTime    := dmIBData.spFECHA_SERVIDOR.ParamByName('R_FECHA').AsDateTime;
  dsFuente.DataSet.FieldByName('ESTATUS').AsString         := 'Sin Afectar';
  dsFuente.DataSet.FieldByName('FECHA_VALIDEZ').AsDateTime := dmIBData.spFECHA_SERVIDOR.ParamByName('R_FECHA').AsDateTime;
  dsFuente.DataSet.FieldByName('DESC_PORC_G').AsFloat      := 0.00;

  cbRequisiciones.SetFocus;
end;

procedure TfrmCapturar_requisicion_cotizaciones.ibModificarClick(
  Sender: TObject);
begin
  estatus     := dsFuente.DataSet.FieldByName('ESTATUS').AsString;
  inherited;
  requisicion := dsFuente.DataSet.FieldByName('REQUISICION').AsInteger;
  if cbRequisiciones.Visible then
     cbRequisiciones.SetFocus
  else
     deRequisicion.SetFocus;
end;

procedure TfrmCapturar_requisicion_cotizaciones.ibEliminarPartidaClick(
  Sender: TObject);
var
   i : integer;
   L : TList;
   tmp : string;
begin
  inherited;
   if MessageDlg('¿Eliminar registro?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
  {
     L := TList.Create;
     for i := 0 to dgPartidas.SelectedCount - 1 do
         L.Add(dgPartidas.SelectedNodes[i]);//no se hace directamente en el grid por que tiene bug, cuando son 2 registros
     for i := 0 to (L.Count - 1) do
     begin
        tmp := TdxTreeListNode(L.Items[i]).Strings[0];
        spDEL_PARTIDA_REQ_COT_DET.ParamByName('P_ID').AsString := tmp;
        spDEL_PARTIDA_REQ_COT_DET.ExecProc;
        spDEL_PARTIDA_REQ_COT_DET.Transaction.CommitRetaining;
     end;
     L.Free;
   }
     refreshData;
  end;
end;

procedure TfrmCapturar_requisicion_cotizaciones.ibCancelarPartidaClick(
  Sender: TObject);
begin
  inherited;
  dsDetalle.DataSet.Cancel;
  fijarBotonesDet(false);
end;

procedure TfrmCapturar_requisicion_cotizaciones.almacenar;
begin
   Key := 0;
   if MarcoMateriales1.FLAG_ESTADO = stModificar then
      Key := dsPartidas.DataSet.FieldByName('R_ID').AsInteger;

   spM_REQUISICIONES_COTIZACIONES_DET.ParamByName('P_DETALLE').AsInteger   := Key;
   spM_REQUISICIONES_COTIZACIONES_DET.ParamByName('P_MATERIAL').AsInteger  := MarcoMateriales1.edMaterial.Tag;
   spM_REQUISICIONES_COTIZACIONES_DET.ParamByName('P_CANTIDAD').AsFloat    := StrToFloat(MarcoMateriales1.edCantidad.Text);
   spM_REQUISICIONES_COTIZACIONES_DET.ParamByName('P_COSTO').AsFloat       := StrToFloat(MarcoMateriales1.edPrecioCosto.Text);
   spM_REQUISICIONES_COTIZACIONES_DET.ParamByName('P_UNIDAD').AsInteger    := MarcoMateriales1.cbUnidades.KeyValue;
   spM_REQUISICIONES_COTIZACIONES_DET.ParamByName('P_PORC_DP').AsFloat     := StrToFloat(MarcoMateriales1.edDescuentoPorc.Text);
   spM_REQUISICIONES_COTIZACIONES_DET.ExecProc;
   spM_REQUISICIONES_COTIZACIONES_DET.Transaction.CommitRetaining;

   Key    := spM_REQUISICIONES_COTIZACIONES_DET.ParamByName('R_DETALLE').AsInteger;
   TopIdx := 0;

   reglas.abrir_IBTabla(TCapturar);
   reglas.refresh_IBQuery(qyPartidas);

   AfterRecord;

   fijarBotonesDet(false);
end;

procedure TfrmCapturar_requisicion_cotizaciones.ibGuardarPartidaClick(
  Sender: TObject);
var
   v_material : integer;
   v_unidad   : integer;
   v_precio   : double;
   v_medida   : variant;
   v_color    : variant;
   v_fecha    : variant;
   v_ValMin   : boolean;
begin
  inherited;
  v_ValMin   := true;
  //Verificacion del precio sea mayo o igual al precio minimo
  if not(reglas.validar_precio(StrToFloat(MarcoMateriales1.edPrecioCosto.Text), MarcoMateriales1.PRECIOMINIMO, 3)) then
  begin
     v_ValMin := false;
     MarcoMateriales1.edPrecioCosto.Text := FloatToStr(MarcoMateriales1.PRECIOMAXIMO);
  end;

  v_material := MarcoMateriales1.edMaterial.Tag;
  v_unidad   := MarcoMateriales1.cbUnidades.KeyValue;
  v_precio   := StrToFloat(MarcoMateriales1.edPrecioCosto.Text);

  if v_ValMin then
  begin
     //proceso normal
     if not(MarcoMateriales1.FLAG_MEDIDAS) or (MarcoMateriales1.FLAG_ESTADO = stModificar) then
     begin
        v_medida := 0;
        v_color  := 0;
        v_fecha  := 0;
        if MarcoMateriales1.FLAG_MEDIDAS then
           v_medida := MarcoMateriales1.cbMedidas.KeyValue;
        if MarcoMateriales1.FLAG_COLORES then
           v_color := MarcoMateriales1.cbColores.KeyValue;

        //proceso comun
        almacenar;
     end
     else
     if MarcoMateriales1.FLAG_MEDIDAS then
     begin
        //ver como implentar en pedidos
     end;
  end;
end;

procedure TfrmCapturar_requisicion_cotizaciones.ibModificarPartidaClick(
  Sender: TObject);
begin
  inherited;
  if not(dsPartidas.DataSet.IsEmpty) then
  begin
     fijarBotonesDet(true);

     MarcoMateriales1.limpiar;
     //sirve asi, para el caso en que se edite el registro
     //no capturar con boton Capturar.
     MarcoMateriales1.FLAG_ESTADO := stModificar;
     MarcoMateriales1.boton       := true;
     MarcoMateriales1.findMaterial(dsPartidas.DataSet.FieldByName('R_MATERIAL').AsInteger,dsPartidas.DataSet.FieldByName('R_UNIDAD').AsInteger);

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
     MarcoMateriales1.edPU.Text                := dsPartidas.DataSet.FieldByName('R_COSTO_CON_IMPUESTOS').AsString;

{     if MarcoMateriales1.cbMedidas.Visible and (dsPartidas.DataSet.FieldByName('R_MEDIDA').AsString <> '') then
        MarcoMateriales1.cbMedidas.KeyValue := dsPartidas.DataSet.FieldByName('R_MEDIDA').AsInteger;
     if MarcoMateriales1.cbColores.Visible and (dsPartidas.DataSet.FieldByName('R_COLOR').AsString <> '') then
        MarcoMateriales1.cbColores.KeyValue := dsPartidas.DataSet.FieldByName('R_COLOR').AsInteger;}
     MarcoMateriales1.edCantidad.SetFocus;
     MarcoMateriales1.boton := false;

    //verifica si el proveedor es Nacional o Extranjero
     MarcoMateriales1.FLAG_CALCULAR := true;
  end;
end;

procedure TfrmCapturar_requisicion_cotizaciones.dgPartidasDblClick(
  Sender: TObject);
begin
  inherited;
  if not(dsPartidas.DataSet.IsEmpty) and ibModificarPartida.Enabled then
     ibModificarPartida.Click;
end;

procedure TfrmCapturar_requisicion_cotizaciones.TCapturarCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  if (DataSet.FieldByName('REQUISICION').AsString <> '') then
  begin
     dmIBData.TFiltroRequisiciones.Filter := 'ID = '+DataSet.FieldByName('REQUISICION').AsString;
     DataSet.FieldByName('CLAVE_REQUISICIONES').AsString := dmIBData.TFiltroRequisiciones.FieldByName('CLAVE').AsString;
  end
  else
     DataSet.FieldByName('CLAVE_REQUISICIONES').AsString := '';
end;

procedure TfrmCapturar_requisicion_cotizaciones.ibGuardarClick(
  Sender: TObject);
begin
  if dsFuente.DataSet.State in [dsEdit] then
  begin
     dsFuente.DataSet.FieldByName('FECHA_ALTA').AsDateTime    := StrToDateTime(deFechaAlta.Text) + time;
     dsFuente.DataSet.FieldByName('FECHA_VALIDEZ').AsDateTime := StrToDateTime(deFechaValidez.Text) + time;
  end;
  inherited;
end;

procedure TfrmCapturar_requisicion_cotizaciones.ModificarPartida1Click(
  Sender: TObject);
begin
  inherited;
  if ibModificarPartida.Enabled then
     ibModificarPartida.Click;
end;

procedure TfrmCapturar_requisicion_cotizaciones.GuardarPartida1Click(
  Sender: TObject);
begin
  inherited;
  if ibGuardarPartida.Enabled then
     ibGuardarPartida.Click;
end;

procedure TfrmCapturar_requisicion_cotizaciones.CancelarPartida1Click(
  Sender: TObject);
begin
  inherited;
  if ibCancelarPartida.Enabled then
     ibCancelarPartida.Click;
end;

procedure TfrmCapturar_requisicion_cotizaciones.EliminarPartida1Click(
  Sender: TObject);
begin
  inherited;
  if ibEliminarPartida.Enabled then
     ibEliminarPartida.Click;
end;

procedure TfrmCapturar_requisicion_cotizaciones.buAplicarClick(
  Sender: TObject);
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
     refreshData;

     if awrStatus.correo then
     begin
        mensajes;
     end;
  end;
end;

procedure TfrmCapturar_requisicion_cotizaciones.cbEstatusChange(
  Sender: TObject);
begin
  inherited;
  if (cbEstatus.Text <> '') and (cbEstatus.Text <> awrStatus.EstatusSel) and
     (dsFuente.DataSet.State in [dsInsert, dsEdit]) then
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

procedure TfrmCapturar_requisicion_cotizaciones.TCapturarAfterOpen(
  DataSet: TDataSet);
begin
  inherited;
  reglas.refresh_IBQuery(qyEstatus);
end;

procedure TfrmCapturar_requisicion_cotizaciones.edProveedorKeyPress(
  Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
     buBusPro.Click;
end;

procedure TfrmCapturar_requisicion_cotizaciones.FormDestroy(
  Sender: TObject);
begin
  inherited;
  MarcoMateriales1.Destruir;
end;

procedure TfrmCapturar_requisicion_cotizaciones.FormShow(Sender: TObject);
begin
  inherited;
  fijarBotonesDet(false);
end;

procedure TfrmCapturar_requisicion_cotizaciones.ibRequisicionesClick(
  Sender: TObject);
begin
  inherited;
  try
     frmSeleccionarRequisicion             := TfrmSeleccionarRequisicion.Create(application);
     frmSeleccionarRequisicion.DATABASE    := dmIBModulo.ibSistema;
     frmSeleccionarRequisicion.TRANSACTION := dmIBModulo.ibSistemaTransaccion;
     frmSeleccionarRequisicion.RC          := dsFuente.DataSet.FieldByName('ID').AsInteger;
     frmSeleccionarRequisicion.open;
     frmSeleccionarRequisicion.ShowModal;
  finally
     frmSeleccionarRequisicion.Release;
  end;
  refreshData;
end;

procedure TfrmCapturar_requisicion_cotizaciones.buInicioClick(
  Sender: TObject);
begin
  inherited;
  fijarBotonesDet(false);
end;

procedure TfrmCapturar_requisicion_cotizaciones.buAnteriorClick(
  Sender: TObject);
begin
  inherited;
  fijarBotonesDet(false);
end;

procedure TfrmCapturar_requisicion_cotizaciones.buSiguienteClick(
  Sender: TObject);
begin
  inherited;
  fijarBotonesDet(false);
end;

procedure TfrmCapturar_requisicion_cotizaciones.buFinClick(
  Sender: TObject);
begin
  inherited;
  fijarBotonesDet(false);
end;

procedure TfrmCapturar_requisicion_cotizaciones.buActReqClick(
  Sender: TObject);
begin
  inherited;
  reglas.refresh_IBQuery(qyRequisiciones);
end;

procedure TfrmCapturar_requisicion_cotizaciones.buEliReqClick(
  Sender: TObject);
begin
  inherited;
  dsFuente.DataSet.FieldByName('REQUISICION').Value := 0;
end;

procedure TfrmCapturar_requisicion_cotizaciones.buBusProClick(
  Sender: TObject);
begin
  inherited;
  frmSeleccionarProveedor             := TfrmSeleccionarProveedor.Create(Application);
  frmSeleccionarProveedor.DATABASE    := dmIBModulo.ibSistema;
  frmSeleccionarProveedor.TRANSACTION := dmIBModulo.ibSistemaTransaccion;
  frmSeleccionarProveedor.CLAVE       := edProveedor.Text;
  if frmSeleccionarProveedor.abrirConsulta then
  begin
     frmSeleccionarProveedor.ShowModal;
     if frmSeleccionarProveedor.ACEPTAR then
     begin
        dsFuente.DataSet.FieldByName('PROVEEDOR').AsInteger           := frmSeleccionarProveedor.ID;
        dsFuente.DataSet.FieldByName('NOMBRE').AsString               := frmSeleccionarProveedor.NOMBRE;
        dsFuente.DataSet.FieldByName('RAZON_SOCIAL').AsString         := frmSeleccionarProveedor.RSOCIAL;
        dsFuente.DataSet.FieldByName('TELEFONO').AsString             := frmSeleccionarProveedor.TELEFONO;
        dsFuente.DataSet.FieldByName('CONDICION_COMERCIAL').AsInteger := frmSeleccionarProveedor.CCOMERCIAL;
        dsFuente.DataSet.FieldByName('MONEDA').AsInteger              := frmSeleccionarProveedor.MONEDA;
        //edProveedor.SetSelection(Length(edProveedor.Text),Length(edProveedor.Text),false);
     end;
  end
  else
     begin
        dsFuente.DataSet.FieldByName('PROVEEDOR').AsInteger           := frmSeleccionarProveedor.ID;
        dsFuente.DataSet.FieldByName('NOMBRE').AsString               := frmSeleccionarProveedor.NOMBRE;
        dsFuente.DataSet.FieldByName('RAZON_SOCIAL').AsString         := frmSeleccionarProveedor.RSOCIAL;
        dsFuente.DataSet.FieldByName('TELEFONO').AsString             := frmSeleccionarProveedor.TELEFONO;
        dsFuente.DataSet.FieldByName('CONDICION_COMERCIAL').AsInteger := frmSeleccionarProveedor.CCOMERCIAL;
        dsFuente.DataSet.FieldByName('MONEDA').AsInteger              := frmSeleccionarProveedor.MONEDA;
        //edProveedor.SetSelection(Length(edProveedor.Text),Length(edProveedor.Text),false);
     end;
  frmSeleccionarProveedor.Free;
  frmSeleccionarProveedor := nil;
end;

procedure TfrmCapturar_requisicion_cotizaciones.buEliProClick(
  Sender: TObject);
begin
  inherited;
  dsFuente.DataSet.FieldByName('PROVEEDOR').AsVariant   := 0;
  dsFuente.DataSet.FieldByName('NOMBRE').AsString       := '';
  dsFuente.DataSet.FieldByName('RAZON_SOCIAL').AsString := '';
  dsFuente.DataSet.FieldByName('TELEFONO').AsString     := '';
end;

procedure TfrmCapturar_requisicion_cotizaciones.buActCCClick(
  Sender: TObject);
begin
  inherited;
  reglas.refresh_IBQuery(qyCC);
end;

procedure TfrmCapturar_requisicion_cotizaciones.buEliCCClick(
  Sender: TObject);
begin
  inherited;
  dsFuente.DataSet.FieldByName('CONDICION_COMERCIAL').AsVariant := 0;
end;

procedure TfrmCapturar_requisicion_cotizaciones.buActMonClick(
  Sender: TObject);
begin
  inherited;
  reglas.refresh_IBQuery(qyMonedas);
end;

procedure TfrmCapturar_requisicion_cotizaciones.buEliMonClick(
  Sender: TObject);
begin
  inherited;
  dsFuente.DataSet.FieldByName('MONEDA').AsVariant := 0;
end;

procedure TfrmCapturar_requisicion_cotizaciones.ibCopiarClick(
  Sender: TObject);
begin
  inherited;
  if MessageDlg('¿ Copiar documento ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes  then
  begin
     spCOPIAR_REQ_COT.ParamByName('P_ID').AsInteger := dsFuente.DataSet.FieldByName('ID').AsInteger;
     spCOPIAR_REQ_COT.ExecProc;
     spCOPIAR_REQ_COT.Transaction.CommitRetaining;
     ShowMessage('Nueva cotizacion con id = ' + spCOPIAR_REQ_COT.ParamByName('R_ID').AsString);
  end;
end;

procedure TfrmCapturar_requisicion_cotizaciones.ibFacturaClick(
  Sender: TObject);
begin
  inherited;
  if MessageDlg('¿ Crear orden de compra de esta  cotizacion ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes  then
  begin
     spCREAR_ORDEN_COMPRA.ParamByName('P_ID').AsInteger      := dsFuente.DataSet.FieldByName('ID').AsInteger;
     spCREAR_ORDEN_COMPRA.ParamByName('P_USUARIO').AsInteger := reglas.dame_usuario;
     spCREAR_ORDEN_COMPRA.ExecProc;
     spCREAR_ORDEN_COMPRA.Transaction.CommitRetaining;
     ShowMessage('Nueva registro con id = ' + spCREAR_ORDEN_COMPRA.ParamByName('R_OC').AsString);
     refreshData;
  end;
end;

{
procedure TfrmCapturar_requisicion_cotizaciones.dgPartidasCustomDrawCell(
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

procedure TfrmCapturar_requisicion_cotizaciones.ibImprimirClick(
  Sender: TObject);
begin
  inherited;
  try
     PRN_0050 := TPRN_0050.Create(Application);
     PRN_0050.ID := dsFuente.DataSet.FieldByName('ID').AsInteger;
     PRN_0050.imprimir;
  finally
     PRN_0050.Release;
  end;
end;

procedure TfrmCapturar_requisicion_cotizaciones.qyPartidasAfterOpen(
  DataSet: TDataSet);
begin
  inherited;
//  dgPartidas.FullExpand;
end;

end.
