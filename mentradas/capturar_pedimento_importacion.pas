unit capturar_pedimento_importacion;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  capturarMDI, IBStoredProc, IBTable,  Db, IBCustomDataSet,
  IBQuery, StdCtrls, Mask, DBCtrls, Grids, DBGrids, Menus, ImgList,
  ComCtrls, Buttons, ExtCtrls;

type
  TfrmCapturar_Pedimento_Importacion = class(TfrmCapturarMDI)
    Label2: TLabel;
    deFecha: TDBEdit;
    Label7: TLabel;
    Label22: TLabel;
    sbRAduana: TBitBtn;
    Label23: TLabel;
    deTCambio: TDBEdit;
    Label12: TLabel;
    sbRMonedas: TBitBtn;
    TCapturarID: TIntegerField;
    TCapturarFECHA: TDateTimeField;
    TCapturarPEDIMENTO: TIBStringField;
    TCapturarADUANA: TIntegerField;
    TCapturarTCAMBIO: TFloatField;
    TCapturarMONEDA: TIntegerField;
    TCapturarINCREMENTABLES: TFloatField;
    TCapturarTOTAL: TFloatField;
    laUnidadesCompradas: TLabel;
    deIncrementables: TDBEdit;
    laUnidadesVendidas: TLabel;
    deTotal: TDBEdit;
    Label1: TLabel;
    Label3: TLabel;
    deNotaEntrada: TDBEdit;
    deNEClave: TDBEdit;
    qyAduanas: TIBQuery;
    dsAduanas: TDataSource;
    qyAduanasID: TIntegerField;
    qyAduanasCLAVE: TIBStringField;
    qyAduanasNUM_SECCION: TIBStringField;
    qyAduanasNOMBRE: TIBStringField;
    qyAduanasENTIDAD_GEOGRAFICA: TIntegerField;
    deSeccion: TDBEdit;
    Label4: TLabel;
    deClave: TDBEdit;
    Label5: TLabel;
    deObservaciones: TDBMemo;
    qyMonedas: TIBQuery;
    dsMonedas: TDataSource;
    qyMonedasID: TIntegerField;
    qyMonedasCLAVE: TIBStringField;
    qyMonedasDESCRIPCION: TIBStringField;
    qyMonedasFECHA_ULT_ACT: TDateTimeField;
    qyMonedasPARIDAD: TFloatField;
    TCapturarENTRADA: TIntegerField;
    TCapturarOBSERVACIONES: TBlobField;
    cbAduanas: TDBLookupComboBox;
    cbMonedas: TDBLookupComboBox;
    PageControl1: TPageControl;
    tsCostos: TTabSheet;
    ilImagenes: TImageList;
    qyGastos: TIBQuery;
    dsGastos: TDataSource;
    qyGastosR_ID: TIntegerField;
    qyGastosR_CONCEPTO: TIBStringField;
    qyGastosR_MONTO: TFloatField;
    qyGastosR_ROWS: TIntegerField;
    spDel: TIBStoredProc;
    spMod: TIBStoredProc;
    dgPartidas: TDBGrid;
    qyPartidas: TIBQuery;
    dsPartidas: TDataSource;
    qyPartidasR_ROWS: TIntegerField;
    qyPartidasR_CANTIDAD: TFloatField;
    qyPartidasR_CLAVE: TIBStringField;
    qyPartidasR_DESCRIPCION: TIBStringField;
    qyPartidasR_COSTO: TFloatField;
    qyPartidasR_COSTO_MBASE: TFloatField;
    qyPartidasR_COSTO_MAS_INC: TFloatField;
    qyPartidasR_PRECIO_VTA: TFloatField;
    TCapturarentrada_clave: TStringField;
    Label6: TLabel;
    deNEMoneda: TDBEdit;
    TCapturarentrada_moneda_clave: TStringField;
    TCapturarentrada_moneda: TIntegerField;
    dePedimento: TDBEdit;
    deNETotal: TDBEdit;
    Label8: TLabel;
    TCapturarentrada_total: TFloatField;
    qyPartidasR_PRORRATEO: TFloatField;
    qyPartidasR_TOTAL_MBASE: TFloatField;
    tsCostoIndexado: TTabSheet;
    dxDBGrid1: TDBGrid;
    qyPartidasR_COSTO_I: TFloatField;
    qyPartidasR_PRORRATEO_I: TFloatField;
    qyPartidasR_COSTO_MAS_INC_I: TFloatField;
    qyPartidasR_COSTO_MBASE_I: TFloatField;
    qyPartidasR_TOTAL_MBASE_I: TFloatField;
    tsIncrementables: TTabSheet;
    paIncrementables: TPanel;
    ibNuevaPartida: TBitBtn;
    ibEliminarPartida: TBitBtn;
    fcImageBtn1: TBitBtn;
    dgGastos: TDBGrid;
    ppImprimir: TPopupMenu;
    itemPedimento: TMenuItem;
    itemIndexado: TMenuItem;
    buImprimir: TBitBtn;
    procedure ibGuardarClick(Sender: TObject);
    procedure ibNuevoClick(Sender: TObject);
    procedure ibModificarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure sbRAduanaClick(Sender: TObject);
    procedure sbRMonedasClick(Sender: TObject);
    procedure ibNuevaPartidaClick(Sender: TObject);
    procedure ibEliminarPartidaClick(Sender: TObject);
    procedure dgGastosMONTOButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dgGastosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TCapturarCalcFields(DataSet: TDataSet);
    procedure dsFuenteDataChange(Sender: TObject; Field: TField);
    procedure ibImprimirClick(Sender: TObject);
    procedure fcImageBtn1Click(Sender: TObject);
    procedure itemIndexadoClick(Sender: TObject);
  private
    { Private declarations }
    monedaBase : integer;
    //procedure BeforePreview(Sender: TObject; AReportLink: TBasedxReportLink);
  public
    { Public declarations }
  end;

var
  frmCapturar_Pedimento_Importacion: TfrmCapturar_Pedimento_Importacion;

implementation

uses
  explorar_pedimento_importacion, IBModulo, reglas_de_negocios, IBData,
  USeleccionarConceptosGastos, menu, UPRN_0040;

{$R *.DFM}

{
procedure TfrmCapturar_Pedimento_Importacion.BeforePreview(Sender: TObject; AReportLink: TBasedxReportLink);
begin
   cpPrint.PreviewOptions.WindowState := wsMaximized;
end;
 }
 
procedure TfrmCapturar_Pedimento_Importacion.ibGuardarClick(
  Sender: TObject);
var
   fraccion   : Real;
   entero     : Real;
begin
   entero   := Int(StrTodateTime(deFecha.Text));
   fraccion := Frac(StrTodateTime(deFecha.Text));
   if entero > 0 then
   begin
      if fraccion = 0 then
         dsFuente.DataSet.FieldByName('FECHA').AsDateTime := StrTodateTime(deFecha.text) + time;
   end;
  inherited;
end;

procedure TfrmCapturar_Pedimento_Importacion.ibNuevoClick(Sender: TObject);
begin
  inherited;
  //Moneda Internacional
  dmIBData.TPreferencias.Filter := 'ID = 4';
  if dmIBData.TPreferencias.FieldByName('VALOR').AsInteger <> 0 then
     dsFuente.DataSet.FieldByName('MONEDA').AsInteger := dmIBData.TPreferencias.FieldByName('VALOR').AsInteger;
  dmIBData.spFECHA_SERVIDOR.ExecProc;
  dsFuente.DataSet.FieldByName('FECHA').AsDateTime       := dmIBData.spFECHA_SERVIDOR.ParamByName('R_FECHA').AsDateTime;
  dsFuente.DataSet.FieldByName('TCAMBIO').AsFloat        := 0;
  dsFuente.DataSet.FieldByName('INCREMENTABLES').AsFloat := 0;
  dsFuente.DataSet.FieldByName('TOTAL').AsFloat          := 0;

  deFecha.SetFocus;
end;

procedure TfrmCapturar_Pedimento_Importacion.ibModificarClick(
  Sender: TObject);
begin
  inherited;
  deFecha.SetFocus;
end;

procedure TfrmCapturar_Pedimento_Importacion.FormCreate(Sender: TObject);
begin
{
  cpPrint.OnBeforePreview := BeforePreview;
 }
  reglas.abrir_IBTabla(dmIBData.TPreferencias);
  reglas.abrir_IBTabla(dmIBData.TFiltroNEntrada);
  reglas.abrir_IBTabla(dmIBData.TFiltroMonedas);
  reglas.refresh_IBQuery(qyAduanas);
  reglas.refresh_IBQuery(qyMonedas);

  //MONEDA BASE
  dmIBData.TPreferencias.Filter := 'ID = 3';
  monedaBase := dmIBData.TPreferencias.FieldByName('VALOR').AsInteger;
  //COSTO INDEXADO
  dmIBData.TPreferencias.Filter := 'ID = 113';
  tsCostoIndexado.TabVisible := UpperCase(dmIBData.TPreferencias.FieldByName('VALOR').AsString) = 'SI';
  inherited;
  reglas.refresh_IBQuery(qyGastos);
  reglas.refresh_IBQuery(qyPartidas);
end;

procedure TfrmCapturar_Pedimento_Importacion.sbRAduanaClick(
  Sender: TObject);
begin
  inherited;
  reglas.refresh_IBQuery(qyAduanas);
end;

procedure TfrmCapturar_Pedimento_Importacion.sbRMonedasClick(
  Sender: TObject);
begin
  inherited;
  reglas.refresh_IBQuery(qyMonedas);
end;

procedure TfrmCapturar_Pedimento_Importacion.ibNuevaPartidaClick(
  Sender: TObject);
var
   pnt1 : TPoint;
begin
  inherited;
  pnt1   := dgGastos.ClientToScreen(Point(0,0));
  pnt1.x := frmMenu.Width - 2;
  try
     frmSeleccionarConceptosGastos              := TfrmSeleccionarConceptosGastos.Create(Application);
     frmSeleccionarConceptosGastos.DATABASE     := dmIBModulo.ibSistema;
     frmSeleccionarConceptosGastos.TRANSACTION  := dmIBModulo.ibSistemaTransaccion;
     frmSeleccionarConceptosGastos.Y            := pnt1;
     frmSeleccionarConceptosGastos.DATASET      := qyGastos;
     frmSeleccionarConceptosGastos.NameDelSProc := 'DEL_DESCUENTOS_EXTENSIONES';
     frmSeleccionarConceptosGastos.PADRE        := dsFuente.DataSet.FieldByName('ID').AsInteger;
     frmSeleccionarConceptosGastos.CUALSPROC    := 1;

     frmSeleccionarConceptosGastos.buTodos.Click;
     frmSeleccionarConceptosGastos.ShowModal;
  finally
     frmSeleccionarConceptosGastos.Destroy;
  end;
  TCapturar.Refresh;
end;

procedure TfrmCapturar_Pedimento_Importacion.ibEliminarPartidaClick(
  Sender: TObject);
begin
  inherited;
  if MessageDlg('¿ Eliminar registro ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes  then
  begin
     spDel.ParamByName('P_ID').AsInteger := qyGastos.FieldByName('R_ID').AsInteger;
     spDel.ExecProc;
     spDel.Transaction.CommitRetaining;
     qyGastos.Close;
     qyGastos.Open;
     TCapturar.Refresh;
  end;
end;

procedure TfrmCapturar_Pedimento_Importacion.dgGastosMONTOButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
var
   id : integer;
begin
  inherited;
  if not(qyGastos.IsEmpty) then
  begin
  {
     dataMonto.Entrada := '0.00';
     dataMonto.Execute;
     if dataMonto.Respuesta and (dataMonto.Entrada <> '') then
     begin
        id := qyGastos.FieldByName('R_ID').AsInteger;
        spMod.ParamByName('P_ID').AsInteger  := id;
        spMod.ParamByName('P_MONTO').AsFloat := StrToFloat(dataMonto.Entrada);
        spMod.ExecProc;
        spMod.Transaction.CommitRetaining;
        TCapturar.Refresh;
        reglas.abrir_IBQuery_seek('R_ID',id,qyGastos);
        reglas.refresh_IBQuery(qyPartidas);
     end;
     }
  end;
end;

procedure TfrmCapturar_Pedimento_Importacion.dgGastosKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  {
  with TDBGrid(Sender) do
    if (Key = VK_RETURN) and (Columns[GetFocusedAbsoluteIndex(FocusedColumn)]is TdxDBGridButtonColumn) then
    begin
       if (Columns[GetFocusedAbsoluteIndex(FocusedColumn)] = dgGastosMONTO) then
          dgGastosMONTOButtonClick(nil, 0);
    end;
    }                                     
end;

procedure TfrmCapturar_Pedimento_Importacion.TCapturarCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  if DataSet.FieldByName('ENTRADA').AsString <> '' then
  begin
     dmIBData.TFiltroNEntrada.Filter := 'ID = '+DataSet.FieldByName('ENTRADA').AsString;
     dmIBData.TFiltroMonedas.Filter  := 'ID = '+dmIBData.TFiltroNEntrada.FieldByName('MONEDA').AsString;
     DataSet.FieldByName('ENTRADA_CLAVE').AsString        := dmIBData.TFiltroNEntrada.FieldByName('CLAVE').AsString;
     DataSet.FieldByName('ENTRADA_MONEDA').AsInteger      := dmIBData.TFiltroMonedas.FieldByName('ID').AsInteger;
     DataSet.FieldByName('ENTRADA_MONEDA_CLAVE').AsString := dmIBData.TFiltroMonedas.FieldByName('CLAVE').AsString;
     DataSet.FieldByName('ENTRADA_TOTAL').AsFloat         := dmIBData.TFiltroNEntrada.FieldByName('GRANTOTAL').AsFloat;
  end
  else
  begin
     DataSet.FieldByName('ENTRADA_CLAVE').AsString        := '';
     DataSet.FieldByName('ENTRADA_MONEDA').AsInteger      := 0;
     DataSet.FieldByName('ENTRADA_MONEDA_CLAVE').AsString := '';
     DataSet.FieldByName('ENTRADA_TOTAL').AsFloat         := 0.00;
  end;
end;

procedure TfrmCapturar_Pedimento_Importacion.dsFuenteDataChange(
  Sender: TObject; Field: TField);
begin
  inherited;
  if TDataSource(sender).DataSet <> nil then
  begin
  {
     if monedaBase <> dsFuente.DataSet.FieldByName('ENTRADA_MONEDA').AsInteger then
        dgPartidasCOSTO_MBASE.Visible := true
     else
        dgPartidasCOSTO_MBASE.Visible := false;
     itemPedimento.Enabled := ibImprimir.Enabled;
     itemIndexado.Enabled  := ibImprimir.Enabled;
     }
  end;
end;

procedure TfrmCapturar_Pedimento_Importacion.ibImprimirClick(
  Sender: TObject);
begin
  inherited;
  PRN_0040 := TPRN_0040.Create(Application);
  PRN_0040.ID := dsFuente.DataSet.FieldByName('ID').AsInteger;
  PRN_0040.imprimir;
  PRN_0040.Destroy;
end;

procedure TfrmCapturar_Pedimento_Importacion.fcImageBtn1Click(
  Sender: TObject);
begin
  inherited;
//->  cpPrintLink1.ReportTitle.Text := 'Incrementables Pedimento: '+dsFuente.DataSet.FieldByName('PEDIMENTO').AsString;
  //cpPrint.Preview(True, nil);
  //dgGastos.OptionsDB := [edgoCancelOnExit,edgoCanDelete,edgoCanInsert,edgoCanNavigation,edgoConfirmDelete,edgoLoadAllRecords,edgoUseBookmarks];
end;

procedure TfrmCapturar_Pedimento_Importacion.itemIndexadoClick(
  Sender: TObject);
begin
  inherited;
  PRN_0040 := TPRN_0040.Create(Application);
  PRN_0040.ID := dsFuente.DataSet.FieldByName('ID').AsInteger;
  PRN_0040.imprimirIndexado;
  PRN_0040.Destroy;
end;

end.
