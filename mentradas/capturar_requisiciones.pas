unit capturar_requisiciones;

interface                            

uses
  UfrmHorizontal, Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  capturarMDI, Db, Menus,  UfrmFrameMaterial, Buttons,
  StdCtrls, IBStoredProc, IBTable,  IBCustomDataSet, IBQuery,
  Mask, DBCtrls, Grids, DBGrids , ExtCtrls;

type
  TfrmCapturar_requisiciones = class(TfrmCapturarMDI)
    deClave: TDBEdit;
    leDepartamento: TDBLookupComboBox;
    deFechaEntrega: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    mePrioridad: TDBComboBox;
    Label6: TLabel;
    TCapturarID: TIntegerField;
    TCapturarCLAVE: TIBStringField;
    TCapturarFECHA_ALTA: TDateTimeField;
    TCapturarDEPARTAMENTO: TIntegerField;
    TCapturarUSUARIO: TIntegerField;
    TCapturarPRESUPUESTADO: TIBStringField;
    TCapturarPRIORIDAD: TIBStringField;
    TCapturarFECHA_ENTREGA: TDateTimeField;
    TCapturarORDEN_COMPRA: TIntegerField;
    TCapturarESTATUS: TIBStringField;
    TDepartamentos: TIBTable;
    dsDepartamentos: TDataSource;
    paLienzo2: TPanel;
    fpCaptura: TPanel;
    dgPartidas: TDBGrid;
    ibNuevaPartida: TBitBtn;
    ibModificarPartida: TBitBtn;
    ibGuardarPartida: TBitBtn;
    ibCancelarPartida: TBitBtn;
    ibEliminarPartida: TBitBtn;
    qyPartidas: TIBQuery;
    dsPartidas: TDataSource;
    dsMateriales_Unidades: TDataSource;
    qyPartidasR_ID: TIntegerField;
    qyPartidasR_REQUISICION: TIntegerField;
    qyPartidasR_MATERIAL: TIntegerField;
    qyPartidasR_CLAVE: TIBStringField;
    qyPartidasR_DESCRIPCION: TIBStringField;
    qyPartidasR_UNIDAD: TIntegerField;
    qyPartidasR_DESCRIPCION_UNIDAD: TIBStringField;
    qyPartidasR_CANTIDAD: TFloatField;
    qyPartidasR_ESTATUS: TIBStringField;
    TDetalle: TIBTable;
    dsDetalle: TDataSource;
    TDetalleID: TIntegerField;
    TDetalleREQUISICION: TIntegerField;
    TDetalleMATERIAL: TIntegerField;
    TDetalleDESCRIPCION: TIBStringField;
    TDetalleUNIDAD: TIntegerField;
    TDetalleCANTIDAD: TFloatField;
    TDetalleESTATUS: TIBStringField;
    spID2: TIBStoredProc;
    spDEL_PARTIDA_REQUISICION: TIBStoredProc;
    qyMateriales_Unidades: TIBQuery;
    qyMateriales_UnidadesR_ID: TIntegerField;
    qyMateriales_UnidadesR_MATERIAL: TIntegerField;
    qyMateriales_UnidadesR_UNIDAD: TIntegerField;
    qyMateriales_UnidadesR_CLAVE: TIBStringField;
    qyMateriales_UnidadesR_DESCRIPCION: TIBStringField;
    qyMateriales_UnidadesR_FACTOR: TFloatField;
    TDetalledescripcion_unidad: TIBStringField;
    TDepartamentosID: TIntegerField;
    TDepartamentosCLAVE: TIBStringField;
    TDepartamentosDESCRIPCION: TIBStringField;
    deFechaAlta: TDBEdit;
    Label18: TLabel;
    spEstatus: TIBStoredProc;
    pmTeclas: TPopupMenu;
    NuevaPartida1: TMenuItem;
    ModificarPartida1: TMenuItem;
    GuardarPartida1: TMenuItem;
    CancelarPartida1: TMenuItem;
    EliminarPartida1: TMenuItem;
    sbRefreshDepartamento: TSpeedButton;
    qyMateriales_Medidas: TIBQuery;
    qyMateriales_MedidasR_ID: TIntegerField;
    qyMateriales_MedidasR_ID_MEDIDA: TIntegerField;
    qyMateriales_MedidasR_DESCRIPCION: TIBStringField;
    qyMateriales_MedidasR_CODIGO_BARRAS: TIBStringField;
    dsMateriales_Medidas: TDataSource;
    dsColores: TDataSource;
    qyColores: TIBQuery;
    qyColoresID: TIntegerField;
    qyColoresNOMBRE: TIBStringField;
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
    dsMateriales: TDataSource;
    buAplicar: TBitBtn;
    cbEstatus: TDBLookupComboBox;
    edEstatus: TDBEdit;
    qyEstatus: TIBQuery;
    dsEstatus: TDataSource;
    MarcoMateriales1: TMarcoMateriales;
    qyPartidasR_ROWS: TIntegerField;
    laObservaciones: TLabel;
    deObservaciones: TDBMemo;
    cbPresupuestado: TDBCheckBox;
    TCapturarID_REFERENCIA: TIntegerField;
    TCapturarTABLA_REFERENCIA: TIBStringField;
    TCapturarOBSERVACIONES: TBlobField;
    TCapturardescripcion: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure ibNuevoClick(Sender: TObject);
    procedure ibModificarClick(Sender: TObject);
    procedure ibNuevaPartidaClick(Sender: TObject);
    procedure ibCancelarPartidaClick(Sender: TObject);
    procedure ibModificarPartidaClick(Sender: TObject);
    procedure ibGuardarPartidaClick(Sender: TObject);
    procedure ibEliminarPartidaClick(Sender: TObject);
    procedure dsFuenteDataChange(Sender: TObject; Field: TField);
    procedure dgPartidasDblClick(Sender: TObject);
    procedure ibGuardarClick(Sender: TObject);
    procedure NuevaPartida1Click(Sender: TObject);
    procedure ModificarPartida1Click(Sender: TObject);
    procedure GuardarPartida1Click(Sender: TObject);
    procedure CancelarPartida1Click(Sender: TObject);
    procedure EliminarPartida1Click(Sender: TObject);
    procedure sbRefreshDepartamentoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure buInicioClick(Sender: TObject);
    procedure buAnteriorClick(Sender: TObject);
    procedure buSiguienteClick(Sender: TObject);
    procedure buFinClick(Sender: TObject);
    procedure ibImprimirClick(Sender: TObject);
    procedure buAplicarClick(Sender: TObject);
    procedure cbEstatusChange(Sender: TObject);
    procedure TCapturarAfterOpen(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure MarcoMateriales1edMaterialButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
      {
    procedure dgPartidasCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
      }
  private
    { Private declarations }
    frmHorizontal : TfrmHorizontal;
    boton      : boolean;//<-cuando se modifica que el componente dxLookupEdit no quiete el valor asignado
    edicionDet : boolean;//<-valida los botones
    procedure guardarNormal;
    procedure fijarBotonesDet;overload;
    procedure fijarBotonesDet(valor : boolean);overload;
    procedure verfificarFechas;
  public
    { Public declarations }
  end;

var
  frmCapturar_requisiciones: TfrmCapturar_requisiciones;

implementation

uses IBModulo, explorar_requisiciones, reglas_de_negocios, IBData,
  seleccionar_material, UfrmAltaRapidaMateriales, UPRN_0039,
  UfrmAcceso;

{$R *.DFM}

procedure TfrmCapturar_requisiciones.verfificarFechas;
var
   fraccion   : Real;
   entero     : Real;
begin
   //validacion fecha entrega
   if deFechaEntrega.Focused then
      deClave.SetFocus;
   entero   := Int(StrToInt(deFechaEntrega.Text));
   fraccion := Frac(StrToInt(deFechaEntrega.Text));
   if entero > 0 then
   begin
      if fraccion = 0 then
         dsFuente.DataSet.FieldByName('FECHA_ENTREGA').AsDateTime := StrToInt(deFechaEntrega.Text) + time;
   end;
end;

procedure TfrmCapturar_requisiciones.fijarBotonesDet;
var
   st : boolean;
begin
  st := (dsFuente.DataSet.FieldByName('ESTATUS').AsString <> 'Sin Afectar');

  ibNuevaPartida.Enabled     := not edicionDet and not(st);
  ibModificarPartida.Enabled := not edicionDet and not(st) and not(dsPartidas.DataSet.IsEmpty);
  ibEliminarPartida.Enabled  := not edicionDet and not(st) and not(dsPartidas.DataSet.IsEmpty);
  ibGuardarPartida.Enabled   := edicionDet and not(st);
  ibCancelarPartida.Enabled  := edicionDet and not(st);
//  paCaptura.Visible          := edicionDetalle and not(st);
  dgPartidas.Enabled         := not edicionDet;

  MarcoMateriales1.Visible   := edicionDet and not(st);
end;

procedure TfrmCapturar_requisiciones.fijarBotonesDet(valor : boolean);
begin
   edicionDet := valor;
   fijarBotonesDet;
end;

procedure TfrmCapturar_requisiciones.guardarNormal;
begin
   dsDetalle.DataSet.Post;
   TDetalle.Transaction.CommitRetaining;

   fijarBotonesDet(false);

   reglas.abrir_IBQuery_seek('R_ID', TDetalle.FieldByName('ID').AsInteger, qyPartidas);
end;

procedure TfrmCapturar_requisiciones.FormCreate(Sender: TObject);
begin
  boton  := false;
  MarcoMateriales1.MOVIMIENTO := obEntrada;
  MarcoMateriales1.inicializar(false);//para que haga los calculos de impuestos
  MarcoMateriales1.laPrecioCosto.Visible := false;
  MarcoMateriales1.edPrecioCosto.Visible := false;
  MarcoMateriales1.FLAG_MEDIDAS          := false;
  MarcoMateriales1.FLAG_COLORES          := false;

  inherited;
  reglas.abrir_IBTabla(dmIBData.TFiltroUnidades);
  reglas.abrir_IBTabla(TDepartamentos);
  reglas.refresh_IBQuery(qyPartidas);
  reglas.abrir_IBTabla(TDetalle);
  reglas.abrir_IBTabla(dmIBData.TPreferencias);
  
{  //Activar Medidas
  dmIBData.TPreferencias.Filter := 'ID = 66';
  if UpperCase(dmIBData.TPreferencias.FieldByName('VALOR').AsString) = 'NO' then
  begin
     dgPartidasMedida.Visible := false;
  end;
  //Activar colores
  dmIBData.TPreferencias.Filter := 'ID = 69';
  if UpperCase(dmIBData.TPreferencias.FieldByName('VALOR').AsString) = 'NO' then
  begin
     dgPartidasColores.Visible := false;
  end;}
end;

procedure TfrmCapturar_requisiciones.ibNuevoClick(Sender: TObject);
begin
  inherited;
  dmIBData.spFECHA_SERVIDOR.ExecProc;
  dsFuente.DataSet.FieldByName('FECHA_ALTA').AsDateTime    := dmIBData.spFECHA_SERVIDOR.ParamByName('R_FECHA').AsDateTime;
  dsFuente.DataSet.FieldByName('ESTATUS').AsString         := 'Sin Afectar';
  dsFuente.DataSet.FieldByName('USUARIO').AsInteger        := dmIBData.TFiltroUsuarios.FieldByName('ID').AsInteger;
  dsFuente.DataSet.FieldByName('FECHA_ENTREGA').AsDateTime := dmIBData.spFECHA_SERVIDOR.ParamByName('R_FECHA').AsDateTime;
  dsFuente.DataSet.FieldByName('PRESUPUESTADO').AsString   := 'Si';
  dsFuente.DataSet.FieldByName('PRIORIDAD').AsString       := 'Ninguna';
  deClave.SetFocus;
end;

procedure TfrmCapturar_requisiciones.ibModificarClick(Sender: TObject);
begin
  estatus := dsFuente.DataSet.FieldByName('ESTATUS').AsString;
  inherited;
  deClave.SetFocus;
end;

procedure TfrmCapturar_requisiciones.ibNuevaPartidaClick(Sender: TObject);
begin
  inherited;
  fijarBotonesDet(true);

  MarcoMateriales1.limpiar;
  //sirve asi, para el caso en que se edite el registro
  //no capturar con boton Capturar.
  MarcoMateriales1.FLAG_ESTADO := stNuevo;

  dsDetalle.DataSet.Insert;
  spID2.ExecProc;
  dsDetalle.DataSet.FieldByName('ID').AsInteger          := spID2.ParamByName('R_ID').AsInteger;
  dsDetalle.DataSet.FieldByName('REQUISICION').AsInteger := dsFuente.DataSet.FieldByName('ID').AsInteger;
  dsDetalle.DataSet.FieldByName('CANTIDAD').AsFloat      := 0;
  dsDetalle.DataSet.FieldByName('ESTATUS').AsString      := 'Sin Afectar';

{  edicionDetalle := not edicionDetalle;
  fijarBotonesDetalle;
  edClave.Clear;
  cbMedidas.Clear;
  cbUnidades.Clear;
  dsDetalle.DataSet.Insert;
  activarPaneles;
  spID2.ExecProc;
  dsDetalle.DataSet.FieldByName('ID').AsInteger          := spID2.ParamByName('R_ID').AsInteger;
  dsDetalle.DataSet.FieldByName('CANTIDAD').AsFloat      := 0;
  dsDetalle.DataSet.FieldByName('ESTATUS').AsString      := 'Sin Afectar';
  dsDetalle.DataSet.FieldByName('REQUISICION').AsInteger := dsFuente.DataSet.FieldByName('ID').AsInteger;
  edClave.SetFocus;}
end;

procedure TfrmCapturar_requisiciones.ibCancelarPartidaClick(Sender: TObject);
begin
  inherited;
  dsDetalle.DataSet.Cancel;
{  if paHorizontal.Enabled then
  begin
     frmHorizontal.Free;
     frmHorizontal := nil;
  end;}
  fijarBotonesDet(false);
end;

procedure TfrmCapturar_requisiciones.ibModificarPartidaClick(
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
     MarcoMateriales1.boton := true;
     MarcoMateriales1.findMaterial(dsPartidas.DataSet.FieldByName('R_MATERIAL').AsInteger,dsPartidas.DataSet.FieldByName('R_UNIDAD').AsInteger);

     TDetalle.Filter := 'ID = '+dsPartidas.DataSet.FieldByName('R_ID').AsString;
     dsDetalle.DataSet.Edit;

     MarcoMateriales1.edMaterial.Text           := dsPartidas.DataSet.FieldByName('R_CLAVE').AsString;
     MarcoMateriales1.edDescripcion.Text        := dsPartidas.DataSet.FieldByName('R_DESCRIPCION').AsString;
     MarcoMateriales1.edMaterial.Tag            := dsPartidas.DataSet.FieldByName('R_MATERIAL').AsInteger;
     MarcoMateriales1.edCantidad.Text          := dsPartidas.DataSet.FieldByName('R_CANTIDAD').AsString;
     MarcoMateriales1.cbUnidades.KeyValue := dsPartidas.DataSet.FieldByName('R_UNIDAD').AsInteger;

     if MarcoMateriales1.cbMedidas.Visible and (dsPartidas.DataSet.FieldByName('R_MEDIDA').AsString <> '') then
        MarcoMateriales1.cbMedidas.KeyValue := dsPartidas.DataSet.FieldByName('R_MEDIDA').AsInteger;

     if MarcoMateriales1.cbColores.Visible and (dsPartidas.DataSet.FieldByName('R_COLOR').AsString <> '') then
        MarcoMateriales1.cbColores.KeyValue := dsPartidas.DataSet.FieldByName('R_COLOR').AsInteger;

     MarcoMateriales1.edCantidad.SetFocus;
     MarcoMateriales1.boton := false;
  end;

{  if not(dsPartidas.DataSet.IsEmpty) then
  begin
     edicionDetalle := not edicionDetalle;
     fijarBotonesDetalle;
     boton := true;
     Material(dsPartidas.DataSet.FieldByName('R_MATERIAL').AsInteger);
     TDetalle.Filter := 'ID = '+dsPartidas.DataSet.FieldByName('R_ID').AsString;

     dsDetalle.DataSet.Edit;
     activarPaneles;
     edClave.Text := dsPartidas.DataSet.FieldByName('R_CLAVE').AsString;
     cbUnidades.KeyValue := dsPartidas.DataSet.FieldByName('R_UNIDAD').AsInteger;
     if paMedidas.Visible then
        cbMedidas.KeyValue := dsPartidas.DataSet.FieldByName('R_MEDIDA').AsInteger;
     if paColores.Visible then
        cbColores.KeyValue := dsPartidas.DataSet.FieldByName('R_COLOR').AsInteger;
     ceCantidad.SetFocus;
     boton := false;
  end;}
end;

procedure TfrmCapturar_requisiciones.ibGuardarPartidaClick(
  Sender: TObject);
var
   material : variant;
   unidad   : variant;
begin
  inherited;
  material := 0;
  unidad   := 0;
  if MarcoMateriales1.edMaterial.Tag <> 0 then
     material := MarcoMateriales1.edMaterial.Tag;
  if MarcoMateriales1.cbUnidades.KeyValue <> 0 then
     unidad   := MarcoMateriales1.cbUnidades.KeyValue;
  
  //proceso normal
  if not(MarcoMateriales1.FLAG_MEDIDAS) or (dsDetalle.DataSet.State = dsEdit) then
  begin
{     if MarcoMateriales1.cbMedidas.Visible then
        dsDetalle.DataSet.FieldByName('MEDIDA').Value := MarcoMateriales1.cbMedidas.KeyValue;
     if MarcoMateriales1.cbColores.Visible then
        dsDetalle.DataSet.FieldByName('COLOR').Value  := MarcoMateriales1.cbColores.KeyValue;}

     dsDetalle.DataSet.FieldByName('MATERIAL').AsVariant   := material;
     dsDetalle.DataSet.FieldByName('UNIDAD').AsVariant     := unidad;
     dsDetalle.DataSet.FieldByName('DESCRIPCION').AsString := MarcoMateriales1.edDescripcion.Text;
     dsDetalle.DataSet.FieldByName('CANTIDAD').AsFloat     := StrToFloat(MarcoMateriales1.edCantidad.Text);
     guardarNormal;
  end
  else
  if MarcoMateriales1.FLAG_MEDIDAS then
  begin
{     if paHorizontal.Enabled and (frmHorizontal <> nil) then
     begin
        if frmHorizontal.colores then
           renglones := frmHorizontal.renglones
        else
           renglones := 1;

        for i := 1 to renglones do
           for j := 1 to (frmHorizontal.columnas) do
           begin
              if frmHorizontal.cantStr(i,j) <> '' then
              begin
                 if primero then
                 begin
                    material := dsDetalle.DataSet.FieldByName('MATERIAL').AsInteger;
                    unidad   := cbUnidades.KeyValue;
                    primero  := false;
                 end
                 else
                 begin
                    ibNuevaPartida.Click;
                    dsDetalle.DataSet.FieldByName('MATERIAL').AsInteger := material;
                    dsDetalle.DataSet.FieldByName('UNIDAD').AsInteger   := unidad;
                 end;
                 dsDetalle.DataSet.FieldByName('MEDIDA').AsInteger   := frmHorizontal.medida(j);
                 dsDetalle.DataSet.FieldByName('CANTIDAD').AsFloat   := frmHorizontal.cantNum(i,j);
                 if frmHorizontal.colores then
                    dsDetalle.DataSet.FieldByName('COLOR').AsInteger := frmHorizontal.color(i);
                 dsDetalle.DataSet.Post;
                 TDetalle.Transaction.CommitRetaining;
              end;
           end;
        frmHorizontal.Free;
        frmHorizontal := nil;
        refresh_totales(TDetalle.FieldByName('ID').AsInteger);
        FijarBotonesDetalle;
     end;}
  end;
  dgPartidas.Setfocus;
end;

procedure TfrmCapturar_requisiciones.ibEliminarPartidaClick(
  Sender: TObject);
var
   i : integer;
   L : TList;
   tmp : string;
begin
  inherited;
  if MessageDlg('¿ Eliminar registro ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes  then
  begin
     L := TList.Create;
     {
     for i := 0 to dgPartidas.DataSource.Dataset.RecordCount - 1 do
         L.Add(dgPartidas.SelectedNodes[i]);//no se hace directamente en el grid por que tiene bug, cuando son 2 registros
     for i := 0 to (L.Count - 1) do
     begin
        tmp := TdxTreeListNode(L.Items[i]).Strings[0];
        spDEL_PARTIDA_REQUISICION.ParamByName('P_ID').AsString := tmp;
        spDEL_PARTIDA_REQUISICION.ExecProc;
        spDEL_PARTIDA_REQUISICION.Transaction.CommitRetaining;
     end;
     }
     L.Free;
     reglas.refresh_IBQuery(qyPartidas);
     fijarBotonesDet(false);
  end;
end;

procedure TfrmCapturar_requisiciones.dsFuenteDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if TDataSource(sender).DataSet <> nil then
  begin
     buAplicar.Enabled  := false;
     paLienzo2.Visible  :=(TDataSource(sender).DataSet.State in [dsBrowse]) and not(TDataSource(sender).DataSet.IsEmpty);
     ibEliminar.Enabled := ibEliminar.Enabled and (TDataSource(sender).DataSet.FieldByName('ESTATUS').AsString = 'Sin Afectar');
  end;
end;

procedure TfrmCapturar_requisiciones.dgPartidasDblClick(Sender: TObject);
begin
  inherited;
  if not(dsDetalle.DataSet.IsEmpty) and ibModificarPartida.Enabled then
     ibModificarPartida.Click
  else
     if ibNuevaPartida.Enabled then
        ibNuevaPartida.Click;
end;

procedure TfrmCapturar_requisiciones.ibGuardarClick(Sender: TObject);
begin
  verfificarFechas;
  inherited;
  fijarBotonesDet(false);
end;

procedure TfrmCapturar_requisiciones.NuevaPartida1Click(Sender: TObject);
begin
  inherited;
  if ibNuevaPartida.Enabled then
     ibNuevaPartida.Click;
end;

procedure TfrmCapturar_requisiciones.ModificarPartida1Click(
  Sender: TObject);
begin
  inherited;
  if ibModificarPartida.Enabled then
     ibModificarPartida.Click;
end;

procedure TfrmCapturar_requisiciones.GuardarPartida1Click(Sender: TObject);
begin
  inherited;
  if ibGuardarPartida.Enabled then
     ibGuardarPartida.Click;
end;

procedure TfrmCapturar_requisiciones.CancelarPartida1Click(
  Sender: TObject);
begin
  inherited;
  if ibCancelarPartida.Enabled then
     ibCancelarPartida.Click;
end;

procedure TfrmCapturar_requisiciones.EliminarPartida1Click(
  Sender: TObject);
begin
  inherited;
  if ibEliminarPartida.Enabled then
     ibEliminarPartida.Click;
end;

procedure TfrmCapturar_requisiciones.sbRefreshDepartamentoClick(
  Sender: TObject);
begin
  inherited;
  reglas.abrir_IBTabla(TDepartamentos);
end;

procedure TfrmCapturar_requisiciones.FormShow(Sender: TObject);
begin
  inherited;
  fijarBotonesDet(false);
end;

procedure TfrmCapturar_requisiciones.buInicioClick(Sender: TObject);
begin
  inherited;
  fijarBotonesDet(false);
end;

procedure TfrmCapturar_requisiciones.buAnteriorClick(Sender: TObject);
begin
  inherited;
  fijarBotonesDet(false);
end;

procedure TfrmCapturar_requisiciones.buSiguienteClick(Sender: TObject);
begin
  inherited;
  fijarBotonesDet(false);
end;

procedure TfrmCapturar_requisiciones.buFinClick(Sender: TObject);
begin
  inherited;
  fijarBotonesDet(false);
end;

procedure TfrmCapturar_requisiciones.ibImprimirClick(Sender: TObject);
begin
  inherited;
  try
     PRN_0039 := TPRN_0039.Create(Application);
     PRN_0039.ID := dsFuente.DataSet.FieldByName('ID').AsInteger;
     PRN_0039.imprimir;
  finally
     PRN_0039.Release;
  end;
end;


procedure TfrmCapturar_requisiciones.buAplicarClick(Sender: TObject);
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

procedure TfrmCapturar_requisiciones.cbEstatusChange(Sender: TObject);
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

procedure TfrmCapturar_requisiciones.TCapturarAfterOpen(DataSet: TDataSet);
begin
  inherited;
  reglas.refresh_IBQuery(qyEstatus);
end;

procedure TfrmCapturar_requisiciones.FormDestroy(Sender: TObject);
begin
  MarcoMateriales1.Destruir;
  inherited;
end;

procedure TfrmCapturar_requisiciones.MarcoMateriales1edMaterialButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
begin
  inherited;
  MarcoMateriales1.edMaterialButtonClick(Sender, AbsoluteIndex);
  if MarcoMateriales1.edMaterial.Tag <> 0 then
  begin
     MarcoMateriales1.edCantidad.Setfocus;
  end;
end;

{
procedure TfrmCapturar_requisiciones.dgPartidasCustomDrawCell(
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
end.

