unit capturar_entradas;

interface

uses
  UTipos, Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  capturarMDIEstatus,  Menus, Db,  StdCtrls,
  Buttons, Grids, DBGrids,    DBCtrls,
  IBStoredProc, IBTable, IBCustomDataSet,
  IBQuery, Mask, ExtCtrls;

type
  TfrmCapturar_Entradas = class(TfrmCapturarMDIEstatus)
    deFolio: TDBEdit;
    Label2: TLabel;
    deFechaAlta: TDBEdit;
    deClave: TDBEdit;
    Label7: TLabel;
    Label22: TLabel;
    cbAlmacenes: TDBLookupComboBox;
    deAlmacen: TDBEdit;
    laObservaciones: TLabel;
    deObservaciones: TDBMemo;
    Label1: TLabel;
    deFacturaProv: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label12: TLabel;
    deOCompra: TDBEdit;
    deOCompraClave: TDBEdit;
    deDesempaque: TDBEdit;
    deDescuentoExtra: TDBEdit;
    deRetencion: TDBEdit;
    deBonificacionExtra: TDBEdit;
    Label9: TLabel;
    Label15: TLabel;
    laDesempaque: TLabel;
    Label5: TLabel;
    Label17: TLabel;
    Label8: TLabel;
    deProveedor: TDBEdit;
    edProveedor: TEdit;
    buLimProveedor: TBitBtn;
    buBusProveedor: TBitBtn;
    buLimCC: TBitBtn;
    buActCC: TBitBtn;
    buLimAlmacen: TBitBtn;
    buActAlmacen: TBitBtn;
    buLimMoneda: TBitBtn;
    buActMoneda: TBitBtn;
    deCComercial: TDBEdit;
    cbCComerciales: TDBLookupComboBox;
    deMoneda: TDBEdit;
    cbMonedas: TDBLookupComboBox;
    TCapturarID: TIntegerField;
    TCapturarCLAVE: TIBStringField;
    TCapturarFACTURA_PROVEEDOR: TIBStringField;
    TCapturarORDEN_COMPRA: TIntegerField;
    TCapturarDESEMPAQUE: TIntegerField;
    TCapturarFECHA_ALTA: TDateTimeField;
    TCapturarALMACEN: TIntegerField;
    TCapturarTOTAL: TFloatField;
    TCapturarIVA: TFloatField;
    TCapturarIEPS: TFloatField;
    TCapturarIMPUESTO1: TFloatField;
    TCapturarIMPUESTO2: TFloatField;
    TCapturarMONEDA: TIntegerField;
    TCapturarSUBTOTAL: TFloatField;
    TCapturarGRANTOTAL: TFloatField;
    TCapturarDESCUENTO_GLOBAL: TFloatField;
    TCapturarDESCUENTO_PARCIAL: TFloatField;
    TCapturarRETENCION: TFloatField;
    TCapturarBONIFICACION_XTRA: TFloatField;
    TCapturarID_REFERENCIA: TIntegerField;
    TCapturarTABLA_REFERENCIA: TIBStringField;
    TCapturarDESCUENTO_XTRA: TFloatField;
    TCapturarPROVEEDOR: TIntegerField;
    TCapturarOBSERVACIONES: TBlobField;
    TCapturarCONSECUTIVO: TIntegerField;
    TCapturarCONDICION_COMERCIAL: TIntegerField;
    TCapturarESTATUS: TIBStringField;
    TCapturaralmacen_clave: TStringField;
    TCapturarproveedor_nombre: TStringField;
    TCapturarorden_compra_clave: TStringField;
    TCapturarcc_nombre: TStringField;
    TCapturarmoneda_descripcion: TStringField;
    deTelefono: TDBEdit;
    Label6: TLabel;
    TCapturarproveedor_telefono: TStringField;
    pmTeclas: TPopupMenu;
    itemF7Det: TMenuItem;
    itemF8Det: TMenuItem;
    itemF9Det: TMenuItem;
    itemF10Det: TMenuItem;
    itemF11Det: TMenuItem;
    ibDescuentoXtra: TBitBtn;
    ibBonificacionXtra: TBitBtn;
    ibRetencion: TBitBtn;
    qyPartidas: TIBQuery;
    dsPartidas: TDataSource;
    dgPartidas: TDBGrid;
    paDetalle: TPanel;
    buF7Det: TBitBtn;
    buF8Det: TBitBtn;
    buF9Det: TBitBtn;
    buF10Det: TBitBtn;
    buF11Det: TBitBtn;
    paCapturaDetalle: TPanel;
    Label10: TLabel;
    laPago: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label19: TLabel;
    edPago: TEdit;
    edMaterial: TEdit;
    edConcepto: TEdit;
    edSubTotal: TEdit;
    edIVA: TEdit;
    spADD_PARTIDA_NENTRADA: TIBStoredProc;
    spDEL_PARTIDA_NENTRADA: TIBStoredProc;
    spUPDATE_PARTIDA_NENTRADA: TIBStoredProc;
    spNE_PRECIO_VTA: TIBStoredProc;
    spDESCUENTO_XTRA_NENTRADA: TIBStoredProc;
    spBONIFICACION_XTRA_NENTRADA: TIBStoredProc;
    spRETENCION_NENTRADA: TIBStoredProc;
    spUPDATE_MPS_DET: TIBStoredProc;
    spUPDATE_C_INDEXADO: TIBStoredProc;
    qyPartidasR_ID: TIntegerField;
    qyPartidasR_NOTA_ENTRADA: TIntegerField;
    qyPartidasR_MATERIAL: TIntegerField;
    qyPartidasR_MATERIAL_ESTATUS: TIBStringField;
    qyPartidasR_CLAVE: TIBStringField;
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
    qyPartidasR_DP: TFloatField;
    qyPartidasR_DG: TFloatField;
    qyPartidasR_GT: TFloatField;
    qyPartidasR_CODIGO_BARRAS: TIBStringField;
    qyPartidasR_NUM_ETIQUETAS: TIntegerField;
    qyPartidasR_PRECIO_VTA_MINIMO: TFloatField;
    qyPartidasR_PRECIO_VTA_MAXIMO: TFloatField;
    qyPartidasR_PRECIO_VENTA: TFloatField;
    qyPartidasR_DESCRIPCION: TIBStringField;
    qyPartidasR_ROWS: TIntegerField;
    qyPartidasR_ETIQUETAS: TIntegerField;
    qyPartidasR_COSTO_INDEXADO: TFloatField;
    qyTotal: TIBQuery;
    qyTotalR_SUBTOTAL: TFloatField;
    qyTotalR_IVA: TFloatField;
    dsTotal: TDataSource;
    qyTEI: TIBQuery;
    qyTEIR_TOTAL: TFloatField;
    qyTEIR_IVA: TFloatField;
    dsTEI: TDataSource;
    spM_PARTIDA_NE: TIBStoredProc;
    buImpresion: TBitBtn;
    ppImpresion: TPopupMenu;
    itemImprimir: TMenuItem;
    itemPreview: TMenuItem;
    cbPrioridad: TDBCheckBox;
    TCapturarPRIORIDAD: TIBStringField;
    TCapturaroc_folio: TIntegerField;
    Label14: TLabel;
    edOCFOLIO: TDBEdit;
    buF12: TBitBtn;
    itemF12: TMenuItem;
    qyPartidasR_ID_REFERENCIA: TIntegerField;
    qyPartidasR_REFERENCIA: TIBStringField;
    spDEL_NE: TIBStoredProc;
    buEtiquetasM: TBitBtn;
    buEtiquetasZ: TBitBtn;
    itemContraRecibo: TMenuItem;
    itemContraReciboPreview: TMenuItem;
    Label16: TLabel;
    Label18: TLabel;
    deContraRecibo: TDBEdit;
    TCapturarCONTRARECIBO: TIntegerField;
    spRETENCION_NENTRADA_DET: TIBStoredProc;
    ibRetencionISR: TBitBtn;
    spRETENCION_NENTRADA_ISR: TIBStoredProc;
    spRETENCION_NENTRADA_DET_ISR: TIBStoredProc;
    qyPartidasR_RETENCION_PORC: TFloatField;
    qyPartidasR_RETENCION_PORC_ISR: TFloatField;
    qyPartidasR_RETENCION: TFloatField;
    qyPartidasR_RETENCION_ISR: TFloatField;
    TCapturarRETENCION_ISR: TFloatField;
    qyPartidasR_CORTA: TIBStringField;
    qyPartidasR_PRECIO_MAYOREO: TFloatField;
    qyPartidasR_PRECIO_MENUDEO: TFloatField;
    qyPartidasR_CUC_CADENA: TIBStringField;
    qyPartidasR_COSTO_ULT_COMPRA: TFloatField;
    qyPartidasR_OC_FECHA: TDateTimeField;
    qyPartidasR_DESEMPAQUE_FECHA: TDateTimeField;
    deFechaProveedor: TDBEdit;
    Label20: TLabel;
    TCapturarFECHA_FACT_PROVEEDOR: TDateTimeField;
    procedure TCapturarCalcFields(DataSet: TDataSet);
    procedure dsFuenteDataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
    procedure ibNuevoClick(Sender: TObject);
    procedure buBusProveedorClick(Sender: TObject);
    procedure buLimProveedorClick(Sender: TObject);
    procedure ibModificarClick(Sender: TObject);
    procedure ibImprimirClick(Sender: TObject);
    procedure edProveedorKeyPress(Sender: TObject; var Key: Char);
    procedure ibGuardarClick(Sender: TObject);
    procedure buInicioClick(Sender: TObject);
    procedure buAnteriorClick(Sender: TObject);
    procedure buSiguienteClick(Sender: TObject);
    procedure buFinClick(Sender: TObject);
    procedure buF7DetClick(Sender: TObject);
    procedure buF8DetClick(Sender: TObject);
    procedure buF9DetClick(Sender: TObject);
    procedure buF10DetClick(Sender: TObject);
    procedure buF11DetClick(Sender: TObject);
    procedure dgPartidasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dgPartidasPVENTAButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dgPartidasCOSTO_INDButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure ibDescuentoXtraClick(Sender: TObject);
    procedure ibBonificacionXtraClick(Sender: TObject);
    procedure ibRetencionClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure edMaterialButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure edMaterialKeyPress(Sender: TObject; var Key: Char);
    procedure edPagoChange(Sender: TObject);
    procedure edSubTotalChange(Sender: TObject);
    procedure TCapturarAfterPost(DataSet: TDataSet);
    procedure buAplicarClick(Sender: TObject);
    procedure edIVAChange(Sender: TObject);
    procedure dgPartidasCOSTOButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure itemImprimirClick(Sender: TObject);
    procedure itemPreviewClick(Sender: TObject);
    procedure buF12Click(Sender: TObject);
    procedure dgPartidasID_REFButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dgPartidasIMPRESORA_MButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dgPartidasIMPRESORA_ZButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure buEtiquetasMClick(Sender: TObject);
    procedure buEtiquetasZClick(Sender: TObject);
    procedure itemF7DetClick(Sender: TObject);
    procedure itemF8DetClick(Sender: TObject);
    procedure itemF9DetClick(Sender: TObject);
    procedure itemF10DetClick(Sender: TObject);
    procedure itemF11DetClick(Sender: TObject);
    procedure itemF12Click(Sender: TObject);
    procedure itemContraReciboClick(Sender: TObject);
    procedure itemContraReciboPreviewClick(Sender: TObject);
    procedure dgPartidasBTNRETENCIONButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure ibRetencionISRClick(Sender: TObject);
    procedure dgPartidasBTNRETENCION_ISRButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
  private
    { Private declarations }
    awrAlmGral   : integer;
    awrMBase     : integer;
    edicionD     : boolean;

    ETIQ_ENC     : TStringList;
    ETIQ_DET     : TStringList;

    awrCapturar  : boolean;
    awrActivarFA : boolean; //Activar Captura de Fechas Anteriores

    procedure verfificarFechas;
    procedure fijarBotonesD;overload;
    procedure fijarBotonesD(valor : boolean);overload;
//    function LoadEtiqueta(valor : TImpresion) : boolean;
//    procedure impresion(valor : TImpresion; almacen : string);
    function ejecucionDescuento : boolean;
    function ejecucionBonificacion : boolean;
    function ejecucionRetencionIVA : boolean;
    function ejecucionRetencionISR : boolean;
    function ejecucionRetencionDetalleIVA : boolean;
    function ejecucionRetencionDetalleISR : boolean;
//    function sustituir(cadena, subcadena, valor : string; comilla : boolean) : string;
//    function quitarLetra(valor, quitar : String; por : char) : string;
  public
    { Public declarations }
  end;

var
  frmCapturar_Entradas: TfrmCapturar_Entradas;

implementation

uses
  ShellApi, IBModulo, reglas_de_negocios, IBData, explorar_notas_de_entrada,
  UfrmSeleccionarProveedor, PRN_0032, UfrmSeleccionarNE, generar, UfrmSeleccionarMaterialCompras, U0001_PR, UfrmAcceso;

{$R *.DFM}

{function TfrmCapturar_Entradas.quitarLetra(valor, quitar : String; por : char) : string;
var
   S: string;
//   pausa : integer;
begin
   S := valor;
   while Pos(quitar, S) > 0 do
      S[Pos(quitar, S)] := por;
   Result := S;
end;}

{function TfrmCapturar_Entradas.sustituir(cadena, subcadena, valor : string; comilla : boolean) : string;
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
end;}

{function TfrmCapturar_Entradas.LoadEtiqueta(valor : TImpresion) : boolean;
var
  archivo  : TextFile;
  cadena   : string;
  cual     : integer;
  tmp      : boolean;
  ruta     : string;
begin
   ruta := ExtractFilePath(ParamStr(0))+'reportes\';

   cual := 0;
   tmp  := false;
   ETIQ_ENC.Clear;
   ETIQ_DET.Clear;
   case valor of
        im3of9 : AssignFile(archivo, ruta+'3of9.FMT');
        imEAN13: AssignFile(archivo, ruta+'EAN13.FMT');
       imUPC_A : AssignFile(archivo, ruta+'UPCA.FMT');
     imCODE128 : AssignFile(archivo, ruta+'CODE128.FMT');
   end;
   try
      Reset(archivo);
      while not Eof(archivo) do
      begin
         ReadLn(archivo, cadena);
         if cadena = '{' then
            inc(cual, 1);
         if cual = 1 then
            ETIQ_ENC.Add(cadena);
         if cual = 2 then
            ETIQ_DET.Add(cadena);
      end;
      CloseFile(archivo);
      tmp := true;
   except
      on EInOutError do
         ShowMessage('No se encuentra archivo de formato para etiquetas.');
   end;
   Result := tmp;
end;}

function TfrmCapturar_Entradas.ejecucionRetencionIVA : boolean;
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
        spRETENCION_NENTRADA.ParamByName('P_ID').AsInteger       := dsFuente.DataSet.FieldByName('ID').AsInteger;
        spRETENCION_NENTRADA.ParamByName('P_PORCENTAJE').AsFloat := StrToFloat(idCaptura.Entrada);
        spRETENCION_NENTRADA.ExecProc;
        spRETENCION_NENTRADA.Transaction.CommitRetaining;
     end;
     }
  end;
  Result := ejecutar;
end;

function TfrmCapturar_Entradas.ejecucionRetencionISR : boolean;
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
        spRETENCION_NENTRADA_ISR.ParamByName('P_ID').AsInteger       := dsFuente.DataSet.FieldByName('ID').AsInteger;
        spRETENCION_NENTRADA_ISR.ParamByName('P_PORCENTAJE').AsFloat := StrToFloat(idCaptura.Entrada);
        spRETENCION_NENTRADA_ISR.ExecProc;
        spRETENCION_NENTRADA_ISR.Transaction.CommitRetaining;
     end;
     }
  end;
  Result := ejecutar;
end;

function TfrmCapturar_Entradas.ejecucionRetencionDetalleIVA : boolean;
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
        spRETENCION_NENTRADA_DET.ParamByName('P_ID').AsInteger       := dsPartidas.DataSet.FieldByName('R_ID').AsInteger;
        spRETENCION_NENTRADA_DET.ParamByName('P_PORCENTAJE').AsFloat := StrToFloat(idCaptura.Entrada);
        spRETENCION_NENTRADA_DET.ExecProc;
        spRETENCION_NENTRADA_DET.Transaction.CommitRetaining;
     end;
     }
  end;
  Result := ejecutar;
end;

function TfrmCapturar_Entradas.ejecucionRetencionDetalleISR : boolean;
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
        spRETENCION_NENTRADA_DET_ISR.ParamByName('P_ID').AsInteger       := dsPartidas.DataSet.FieldByName('R_ID').AsInteger;
        spRETENCION_NENTRADA_DET_ISR.ParamByName('P_PORCENTAJE').AsFloat := StrToFloat(idCaptura.Entrada);
        spRETENCION_NENTRADA_DET_ISR.ExecProc;
        spRETENCION_NENTRADA_DET_ISR.Transaction.CommitRetaining;
     end;
     }
  end;
  Result := ejecutar;
end;

function TfrmCapturar_Entradas.ejecucionBonificacion : boolean;
var
   ejecutar  : boolean;
begin
   frmAcceso := TfrmAcceso.Create(Application);
   try
      frmAcceso.UnicoN := 'Todos';
      frmAcceso.Unico  := 0;
      frmAcceso.Nivel  := 5;
      frmAcceso.Status := 'Bonificacion Extra';
      frmAcceso.ShowModal;
      ejecutar := frmAcceso.Rsp;
   finally
      frmAcceso.Free;
   end;

  if ejecutar then
  begin
  {
     idCaptura.Titulo  := 'Bonificacion Extra';
     idCaptura.Texto   := 'Cantidad';
     idCaptura.Entrada := '';
     idCaptura.Execute;
     ejecutar := idCaptura.Respuesta;
     if ejecutar and (idCaptura.Entrada <> '') then
     begin
        spBONIFICACION_XTRA_NENTRADA.ParamByName('P_ID').AsInteger  := dsFuente.DataSet.FieldByName('ID').AsInteger;
        spBONIFICACION_XTRA_NENTRADA.ParamByName('P_MONTO').AsFloat := StrToFloat(idCaptura.Entrada);
        spBONIFICACION_XTRA_NENTRADA.ExecProc;
        spBONIFICACION_XTRA_NENTRADA.Transaction.CommitRetaining;
        reglas.abrir_IBTabla(TCapturar);
     end;
     }
  end;
  Result := ejecutar;
end;

function TfrmCapturar_Entradas.ejecucionDescuento : boolean;
var
   ejecutar  : boolean;
begin
   frmAcceso := TfrmAcceso.Create(Application);
   try
      frmAcceso.UnicoN := 'Todos';
      frmAcceso.Unico  := 0;
      frmAcceso.Nivel  := 5;
      frmAcceso.Status := 'Descuento Extra';
      frmAcceso.ShowModal;
      ejecutar := frmAcceso.Rsp;
   finally
      frmAcceso.Free;
   end;

  if ejecutar then
  begin
  {
     idCaptura.Titulo  := 'Descuento Extra';
     idCaptura.Texto   := 'Cantidad';
     idCaptura.Entrada := '';
     idCaptura.Execute;
     ejecutar := idCaptura.Respuesta;
     if ejecutar and (idCaptura.Entrada <> '') then
     begin
        spDESCUENTO_XTRA_NENTRADA.ParamByName('P_ID').AsInteger  := dsFuente.DataSet.FieldByName('ID').AsInteger;
        spDESCUENTO_XTRA_NENTRADA.ParamByName('P_MONTO').AsFloat := StrToFloat(idCaptura.Entrada);
        spDESCUENTO_XTRA_NENTRADA.ExecProc;
        spDESCUENTO_XTRA_NENTRADA.Transaction.CommitRetaining;
        reglas.abrir_IBTabla(TCapturar);
     end;
     }
  end;
  Result := ejecutar;
end;

{procedure TfrmCapturar_Entradas.impresion(valor : TImpresion; almacen : string);
var
//  Monarch  : TextFile;
  archivo  : TextFile;
  num_etiq : string;
  codigo   : string;
  clave    : string;
  material : string;
  precio   : string;
  i        : integer;
  cadena   : string;
  nameFile : string;
  ruta     : string;
begin
   ruta := ExtractFilePath(ParamStr(0))+'reportes\';
   //Impresora Generica
   //Imprimir en el siguiente puerto:
   //COM2(Puerto de comunicaciones)
   //Configuración de puerto:
   //Bits por segundo 2400
   if LoadEtiqueta(valor) then
   begin
      case valor of
        im3of9   : nameFile := ruta+'3of9_GENERADO.TXT';
        imEAN13  : nameFile := ruta+'EAN13_GENERADO.TXT';
        imUPC_A  : nameFile := ruta+'UPCA_GENERADO.TXT';
        imCODE128: nameFile := ruta+'CODE128_GENERADO.TXT';
      end;
      AssignFile(archivo, nameFile);
      ReWrite(archivo);
      //Cargar Encabezado
      for i := 0 to (ETIQ_ENC.Count - 1) do
      begin
         cadena := ETIQ_ENC.Strings[i];
         cadena := sustituir(cadena,'ALMACEN', almacen, true);
         WriteLn(archivo, cadena);
      end;

      //Load Detalle
      while not(dsPartidas.DataSet.EOF) do
      begin
         if dsPartidas.DataSet.FieldByName('R_MATERIAL_ESTATUS').AsString <> 'Cancelado' then
         begin
            num_etiq := dsPartidas.DataSet.FieldByName('R_ETIQUETAS').AsString;
            codigo   := dsPartidas.DataSet.FieldByName('R_CODIGO_BARRAS').AsString;
            clave    := dsPartidas.DataSet.FieldByName('R_CLAVE').AsString;
            material := copy(UpperCase(dsPartidas.DataSet.FieldByName('R_DESCRIPCION').AsString),1,20);
            precio   := FormatFloat('###,###,##0.00',dsPartidas.DataSet.FieldByName('R_PRECIO_VENTA').AsFloat);

            for i := 0 to (ETIQ_DET.Count - 1) do
            begin
               cadena := ETIQ_DET.Strings[i];
               cadena := sustituir(cadena,'ETIQUETAS', num_Etiq, false);
               cadena := sustituir(cadena,'DESCRIPCION', material, true);
               cadena := sustituir(cadena,'CODIGO', codigo, true);
               cadena := sustituir(cadena,'PRECIO', precio, true);
               cadena := sustituir(cadena,'CLAVE', clave, true);
               WriteLn(archivo, cadena);
            end;
         end;
         dsPartidas.DataSet.Next;
      end;
      Flush(archivo);
      System.CloseFile(archivo);

      //impresion del archivo generado
      if ShellExecute(Application.Handle, 'print', PChar(nameFile), nil, nil, SW_SHOWNORMAL) <= 32 then
         ShowMessage(SysErrorMessage(GetLastError))
   end;
end;}

procedure TfrmCapturar_Entradas.fijarBotonesD;
var
    md : boolean;
begin
   md := (dsFuente.DataSet.FieldByName('ESTATUS').AsString = 'Sin Afectar');{ or
         (dsFuente.DataSet.FieldByName('ESTATUS').AsString = 'En Proceso')  or
         (dsFuente.DataSet.FieldByName('ESTATUS').AsString = 'Falta Material');}
   buF7Det.Enabled  := (not edicionD) and md;
   buF8Det.Enabled  := (not edicionD) and md and not(dsPartidas.DataSet.IsEmpty);
   buF9Det.Enabled  := edicionD and md;
   buF10Det.Enabled := edicionD and md;
   buF11Det.Enabled := (not edicionD) and md and not(dsPartidas.DataSet.IsEmpty);
   buF12.Enabled    := (not edicionD) and md and (dsFuente.DataSet.FieldByName('ORDEN_COMPRA').AsInteger = -3);

   itemF7Det.Enabled  := buF7Det.Enabled;
   itemF8Det.Enabled  := buF8Det.Enabled;
   itemF9Det.Enabled  := buF9Det.Enabled;
   itemF10Det.Enabled := buF10Det.Enabled;
   itemF11Det.Enabled := buF11Det.Enabled;
   itemF12.Enabled    := buF12.Enabled;

   ibDescuentoXtra.Enabled                       := not(edicionD) and (dsFuente.DataSet.State = dsBrowse) and not(dsFuente.DataSet.IsEmpty) and md;
   ibBonificacionXtra.Enabled                    := not(edicionD) and (dsFuente.DataSet.State = dsBrowse) and not(dsFuente.DataSet.IsEmpty) and md;
   ibRetencion.Enabled                           := not(edicionD) and (dsFuente.DataSet.State = dsBrowse) and not(dsFuente.DataSet.IsEmpty) and md;
   ibRetencionISR.Enabled                        := not(edicionD) and (dsFuente.DataSet.State = dsBrowse) and not(dsFuente.DataSet.IsEmpty) and md;

   paCapturaDetalle.Visible := edicionD;
end;

procedure TfrmCapturar_Entradas.fijarBotonesD(valor : boolean);
begin
   edicionD := valor;
   fijarBotonesD;
end;

procedure TfrmCapturar_Entradas.verfificarFechas;
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

   //validacion fecha factura proveedor
   if deFechaProveedor.Focused then
      deClave.SetFocus;

   entero   := Int(StrToDateTime(deFechaProveedor.text));
   fraccion := Frac(StrToDateTime(deFechaProveedor.text));
   if entero > 0 then
   begin
      if fraccion = 0 then
         dsFuente.DataSet.FieldByName('FECHA_FACT_PROVEEDOR').AsDateTime := StrToDateTime(deFechaProveedor.text) + time;
   end

end;

procedure TfrmCapturar_Entradas.TCapturarCalcFields(DataSet: TDataSet);
begin
  inherited;
  //almacen
  DataSet.FieldByName('almacen_clave').AsString := '';
  if DataSet.FieldByName('ALMACEN').AsString <> '' then
  begin
     dmIBData.TFiltroAlmacenes.Filter := 'ID = '+DataSet.FieldByName('ALMACEN').AsString;
     DataSet.FieldByName('almacen_clave').AsString := dmIBData.TFiltroAlmacenes.FieldByName('CLAVE').AsString;
  end;

  //proveedor nombre
  DataSet.FieldByName('PROVEEDOR_NOMBRE').AsString   := '';
  DataSet.FieldByName('PROVEEDOR_TELEFONO').AsString := '';
  if DataSet.FieldByName('PROVEEDOR').AsString <> '' then
  begin
     dmIBData.TFiltroProveedores.Filter                := 'ID = '+DataSet.FieldByName('PROVEEDOR').AsString;
     if dmIBData.TSujetosProveedor.FieldByName('FACTURAR_A').AsString = 'Razon Social' then
        DataSet.FieldByName('PROVEEDOR_NOMBRE').AsString := dmIBData.TSujetosProveedor.FieldByName('RAZON_SOCIAL').AsString
     else
        DataSet.FieldByName('PROVEEDOR_NOMBRE').AsString := dmIBData.TSujetosProveedor.FieldByName('NOMBRE').AsString;
     DataSet.FieldByName('PROVEEDOR_TELEFONO').AsString  := dmIBData.TSujetosProveedor.FieldByName('TEL_PRINCIPAL').AsString;
  end;

  //orden de compra
  DataSet.FieldByName('orden_compra_clave').AsString   := '';
  DataSet.FieldByName('oc_folio').AsInteger            := 0;
  if DataSet.FieldByName('ORDEN_COMPRA').AsString <> '' then
  begin
     dmIBData.TFiltroOrdenesDeCompras.Filter            := 'ID = '+DataSet.FieldByName('ORDEN_COMPRA').AsString;
     DataSet.FieldByName('orden_compra_clave').AsString := dmIBData.TFiltroOrdenesDeCompras.FieldByName('CLAVE').AsString;
     DataSet.FieldByName('oc_folio').AsInteger          := dmIBData.TFiltroOrdenesDeCompras.FieldByName('CONSECUTIVO').AsInteger;
  end;

  //condicion comercial
  DataSet.FieldByName('CC_NOMBRE').AsString   := '';
  if DataSet.FieldByName('CONDICION_COMERCIAL').AsString <> '' then
  begin
     dmIBData.TFiltroCondicionesComerciales.Filter := 'ID = '+DataSet.FieldByName('CONDICION_COMERCIAL').AsString;
     DataSet.FieldByName('CC_NOMBRE').AsString     := dmIBData.TFiltroCondicionesComerciales.FieldByName('NOMBRE').AsString;
  end;

  //moneda
  DataSet.FieldByName('MONEDA_DESCRIPCION').AsString   := '';
  if DataSet.FieldByName('MONEDA').AsString <> '' then
  begin
     dmIBData.TFiltroMonedas.Filter                     := 'ID = '+DataSet.FieldByName('MONEDA').AsString;
     DataSet.FieldByName('MONEDA_DESCRIPCION').AsString := dmIBData.TFiltroMonedas.FieldByName('DESCRIPCION').AsString;
  end;
end;

procedure TfrmCapturar_Entradas.dsFuenteDataChange(Sender: TObject;
  Field: TField);
var
   estado  : TDataSetState;
   activar : boolean;
begin
  inherited;
  if TDataSource(sender).DataSet <> nil then
  begin
     estado  := TDataSource(sender).DataSet.State;
     activar := (estado = dsInsert) or ((estado = dsEdit) and (awrStatus.estatusAnt = 'Sin Afectar'));

     deFechaAlta.Enabled      := activar and awrActivarFA;
     deClave.Enabled          := activar;
     deFechaProveedor.Enabled := activar;
     deFacturaProv.Enabled    := activar;


     edProveedor.Visible    := activar;
     buLimProveedor.Visible := edProveedor.Visible;
     buBusProveedor.Visible := edProveedor.Visible;
     deProveedor.Visible    := not(edProveedor.Visible);

     cbAlmacenes.Enabled    := activar;
     buLimAlmacen.Enabled   := cbAlmacenes.Enabled;
     buActAlmacen.Enabled   := cbAlmacenes.Enabled;

     cbCComerciales.Enabled := activar;
     buLimCC.Enabled        := cbCComerciales.Enabled;
     buActCC.Enabled        := cbCComerciales.Enabled;

     cbMonedas.Enabled      := activar;
     buLimMoneda.Enabled    := cbMonedas.Enabled;
     buActMoneda.Enabled    := cbMonedas.Enabled;

     itemImprimir.Enabled  := ibImprimir.Enabled;
     itemPreview.Enabled   := ibImprimir.Enabled;

     if edProveedor.Visible then
        edProveedor.Text := dsFuente.DataSet.FieldByName('proveedor_nombre').AsString;
  end;
end;

procedure TfrmCapturar_Entradas.FormCreate(Sender: TObject);
begin
   ETIQ_ENC := TStringList.Create;
   ETIQ_DET := TStringList.Create;

  reglas.refresh_IBQuery(dmIBData.qyAlmacenes);
  reglas.refresh_IBQuery(dmIBData.qyCComerciales);
  reglas.refresh_IBQuery(dmIBData.qyMonedas);
  reglas.abrir_IBTabla(dmIBData.TFiltroAlmacenes);
  reglas.abrir_IBTabla(dmIBData.TFiltroProveedores);
  reglas.abrir_IBTabla(dmIBData.TFiltroOrdenesDeCompras);
  reglas.abrir_IBTabla(dmIBData.TFiltroCondicionesComerciales);
  reglas.abrir_IBTabla(dmIBData.TFiltroMonedas);
  inherited;
  reglas.refresh_IBQuery(qyPartidas);

  reglas.abrir_IBTabla(dmIBData.TPreferencias);

    //Almacen General
  dmIBData.TPreferencias.Filter := 'ID = 130';
  awrAlmGral := dmIBData.TPreferencias.FieldByName('VALOR').AsInteger;

  //Moneda Base
  dmIBData.TPreferencias.Filter := 'ID = 3';
  if dmIBData.TPreferencias.FieldByName('VALOR').AsInteger <> 0 then
     awrMBase := dmIBData.TPreferencias.FieldByName('VALOR').AsInteger;

  //Activar Captura de Fechas Anteriores
  dmIBData.TPreferencias.Filter := 'ID = 335';
  awrActivarFA := UpperCase(dmIBData.TPreferencias.FieldByName('VALOR').AsString) = 'SI';

  awrCapturar := true;

  fijarBotonesD(false);
end;

procedure TfrmCapturar_Entradas.ibNuevoClick(Sender: TObject);
begin
  inherited;
  dmIBData.spFECHA_SERVIDOR.ExecProc;
  dsFuente.DataSet.FieldByName('FECHA_ALTA').AsDateTime           := dmIBData.spFECHA_SERVIDOR.ParamByName('R_FECHA').AsDateTime;
  dsFuente.DataSet.FieldByName('FECHA_FACT_PROVEEDOR').AsDateTime := dmIBData.spFECHA_SERVIDOR.ParamByName('R_FECHA').AsDateTime;
  dsFuente.DataSet.FieldByName('ESTATUS').AsString                := 'Sin Afectar';
  dsFuente.DataSet.FieldByName('ORDEN_COMPRA').Value              := -3;
  dsFuente.DataSet.FieldByName('TOTAL').AsFloat                   := 0.00;
  dsFuente.DataSet.FieldByName('IVA').AsFloat                     := 0.00;
  dsFuente.DataSet.FieldByName('IEPS').AsFloat                    := 0.00;
  dsFuente.DataSet.FieldByName('IMPUESTO1').AsFloat               := 0.00;
  dsFuente.DataSet.FieldByName('IMPUESTO2').AsFloat               := 0.00;
  dsFuente.DataSet.FieldByName('SUBTOTAL').AsFloat                := 0.00;
  dsFuente.DataSet.FieldByName('GRANTOTAL').AsFloat               := 0.00;
  dsFuente.DataSet.FieldByName('DESCUENTO_GLOBAL').AsFloat        := 0.00;
  dsFuente.DataSet.FieldByName('DESCUENTO_PARCIAL').AsFloat       := 0.00;
  dsFuente.DataSet.FieldByName('RETENCION').AsFloat               := 0.00;
  dsFuente.DataSet.FieldByName('RETENCION_ISR').AsFloat           := 0.00;
  dsFuente.DataSet.FieldByName('BONIFICACION_XTRA').AsFloat       := 0.00;
  dsFuente.DataSet.FieldByName('DESCUENTO_XTRA').AsFloat          := 0.00;
  dsFuente.DataSet.FieldByName('ALMACEN').AsInteger               := awrAlmGral;
  dsFuente.DataSet.FieldByName('MONEDA').AsInteger                := awrMBase;
  dsFuente.DataSet.FieldByName('PROVEEDOR').AsInteger             := 0;
  dsFuente.DataSet.FieldByName('PRIORIDAD').AsString              := 'No';
  deClave.SetFocus;
end;

procedure TfrmCapturar_Entradas.buBusProveedorClick(Sender: TObject);
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
        edProveedor.Text                                              := frmSeleccionarProveedor.FACTURAR_A;
        dsFuente.DataSet.FieldByName('PROVEEDOR').AsInteger           := frmSeleccionarProveedor.ID;
        dsFuente.DataSet.FieldByName('CONDICION_COMERCIAL').AsInteger := frmSeleccionarProveedor.CCOMERCIAL;
        if frmSeleccionarProveedor.MONEDA <> 0 then
           dsFuente.DataSet.FieldByName('MONEDA').AsInteger := frmSeleccionarProveedor.MONEDA;
     end;
  end
  else
     begin
        edProveedor.Text                                              := frmSeleccionarProveedor.FACTURAR_A;
        dsFuente.DataSet.FieldByName('PROVEEDOR').AsInteger           := frmSeleccionarProveedor.ID;
        dsFuente.DataSet.FieldByName('CONDICION_COMERCIAL').AsInteger := frmSeleccionarProveedor.CCOMERCIAL;
        if frmSeleccionarProveedor.MONEDA <> 0 then
           dsFuente.DataSet.FieldByName('MONEDA').AsInteger := frmSeleccionarProveedor.MONEDA;
     end;
  frmSeleccionarProveedor.Release;
end;

procedure TfrmCapturar_Entradas.buLimProveedorClick(Sender: TObject);
begin
  inherited;
  dsFuente.DataSet.FieldByName('PROVEEDOR').AsInteger  := 0;
end;

procedure TfrmCapturar_Entradas.ibModificarClick(Sender: TObject);
begin
  inherited;
  if deClave.Enabled then
     deClave.SetFocus;
end;

procedure TfrmCapturar_Entradas.ibImprimirClick(Sender: TObject);
begin
  inherited;
  itemImprimir.Click;
end;

procedure TfrmCapturar_Entradas.edProveedorKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key  = #13 then
     buBusProveedor.Click;
end;

procedure TfrmCapturar_Entradas.ibGuardarClick(Sender: TObject);
begin
  verfificarFechas;
  inherited;
end;

procedure TfrmCapturar_Entradas.buInicioClick(Sender: TObject);
begin
  inherited;
  fijarBotonesD(false);
end;

procedure TfrmCapturar_Entradas.buAnteriorClick(Sender: TObject);
begin
  inherited;
  fijarBotonesD(false);
end;

procedure TfrmCapturar_Entradas.buSiguienteClick(Sender: TObject);
begin
  inherited;
  fijarBotonesD(false);
end;

procedure TfrmCapturar_Entradas.buFinClick(Sender: TObject);
begin
  inherited;
  fijarBotonesD(false);
end;

procedure TfrmCapturar_Entradas.buF7DetClick(Sender: TObject);
begin
  inherited;
  fijarBotonesD(true);
  paDetalle.Tag    := -1;
  edMaterial.Tag   := 0;
  edMaterial.Text := '';
  edConcepto.Clear;
  edPago.Text := '';
  edSubTotal.Text := '';
  edIVA.Text := '';
  edMaterial.SetFocus;
end;

procedure TfrmCapturar_Entradas.buF8DetClick(Sender: TObject);
begin
  inherited;
   fijarBotonesD(true);

   paDetalle.Tag    := dsPartidas.DataSet.FieldByName('R_ID').AsInteger;
   edMaterial.Tag   := dsPartidas.DataSet.FieldByName('R_MATERIAL').AsInteger;
   if dsPartidas.DataSet.FieldByName('R_MATERIAL').AsInteger <> 0 then
      edMaterial.Text := dsPartidas.DataSet.FieldByName('R_CLAVE').AsString
   else
      edMaterial.Clear;
   edConcepto.Text  := dsPartidas.DataSet.FieldByName('R_DESCRIPCION').AsString;
   edPago.Text     := dsPartidas.DataSet.FieldByName('R_TOTAL').AsString;
   edSubTotal.Text := dsPartidas.DataSet.FieldByName('R_SUBTOTAL').AsString;
   edIVA.Text      := dsPartidas.DataSet.FieldByName('R_IVA').AsString;

   edSubTotal.SetFocus;
end;

procedure TfrmCapturar_Entradas.buF9DetClick(Sender: TObject);
var
   valor : integer;
begin
  inherited;
   //nueva partida
   valor := paDetalle.Tag;
   if valor = -1 then
   begin
      spADD_PARTIDA_NENTRADA.ParamByName('P_ID').AsInteger       := dsFuente.DataSet.FieldByName('ID').AsInteger;
      spADD_PARTIDA_NENTRADA.ParamByName('P_MATERIAL').AsInteger := edMaterial.Tag;
      spADD_PARTIDA_NENTRADA.ParamByName('P_CONCEPTO').AsString  := edConcepto.Text;
      spADD_PARTIDA_NENTRADA.ParamByName('P_TOTAL').AsFloat      := strToFloat(edPago.Text);
      spADD_PARTIDA_NENTRADA.ParamByName('P_SUBTOTAL').AsFloat   := strToFloat(edSubTotal.Text);
      spADD_PARTIDA_NENTRADA.ParamByName('P_IVA').AsFloat        := strToFloat(edIVA.Text);
      spADD_PARTIDA_NENTRADA.ExecProc;
      spADD_PARTIDA_NENTRADA.Transaction.CommitRetaining;
      valor := spADD_PARTIDA_NENTRADA.ParamByName('R_ID').AsInteger;
   end
   else//actualizar partida
      begin
         spUPDATE_PARTIDA_NENTRADA.ParamByName('P_ID').AsInteger       := valor;
         spUPDATE_PARTIDA_NENTRADA.ParamByName('P_MATERIAL').AsInteger := edMaterial.Tag;
         spUPDATE_PARTIDA_NENTRADA.ParamByName('P_CONCEPTO').AsString  := edConcepto.Text;
         spUPDATE_PARTIDA_NENTRADA.ParamByName('P_TOTAL').AsFloat      := strToFloat(edPago.Text);
         spUPDATE_PARTIDA_NENTRADA.ParamByName('P_SUBTOTAL').AsFloat   := strToFloat(edSubTotal.Text);
         spUPDATE_PARTIDA_NENTRADA.ParamByName('P_IVA').AsFloat        := strToFloat(edIVA.Text);
         spUPDATE_PARTIDA_NENTRADA.ExecProc;
         spUPDATE_PARTIDA_NENTRADA.Transaction.CommitRetaining;
      end;
   dsPartidas.DataSet.Close;
   dsPartidas.DataSet.Open;
   dsPartidas.DataSet.Locate('R_ID', valor,[loCaseInsensitive]);
   fijarBotonesD(false);
   //actulaliza los totales del encabezado
   reglas.abrir_IBTabla(TCapturar);
end;

procedure TfrmCapturar_Entradas.buF10DetClick(Sender: TObject);
begin
  inherited;
  fijarBotonesD(false);
end;

procedure TfrmCapturar_Entradas.buF11DetClick(Sender: TObject);
begin
  inherited;
   if MessageDlg(' ¿ Eliminar Registro ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes  then
   begin
      spDEL_PARTIDA_NENTRADA.ParamByName('P_ID').AsInteger := dsPartidas.DataSet.FieldByName('R_ID').AsInteger;
      spDEL_PARTIDA_NENTRADA.ExecProc;
      spDEL_PARTIDA_NENTRADA.Transaction.CommitRetaining;
      reglas.refresh_IBQuery(qyPartidas);
      reglas.abrir_IBTabla(TCapturar);

      fijarBotonesD(false);
   end;
end;

procedure TfrmCapturar_Entradas.dgPartidasKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  with TDBGrid(Sender) do
  begin
  {
    if (Key = VK_RETURN) and (Columns[GetFocusedAbsoluteIndex(FocusedColumn)]is TdxDBGridButtonColumn) then
    begin
       if (Columns[GetFocusedAbsoluteIndex(FocusedColumn)] = dgPartidasPVenta) then
          dgPartidasPVenta.OnButtonClick(Sender, 0)
       else
       if (Columns[GetFocusedAbsoluteIndex(FocusedColumn)] = dgPartidasCOSTO_IND) then
          dgPartidasCOSTO_IND.OnButtonClick(Sender, 0);
    end;
    }
  end;
end;

procedure TfrmCapturar_Entradas.dgPartidasPVENTAButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
var
   id : integer;
begin
  inherited;
  if (dsFuente.DataSet.FieldByName('ESTATUS').AsString = 'Sin Afectar') and
     (dsFuente.DataSet.State = dsBrowse                               ) and
     (not(edicionD)                                                   ) then
  begin
     {
     idPrecioVenta.Entrada := FormatFloat('########0.0000', dsPartidas.DataSet.FieldByName('R_PRECIO_VENTA').AsFloat);
     idPrecioVenta.Execute;
     if idPrecioVenta.Respuesta and (idPrecioVenta.Entrada <> '') then
     begin
        id := dsPartidas.DataSet.FieldByName('R_ID').AsInteger;
        spNE_PRECIO_VTA.ParamByName('P_ID').AsInteger    := id;
        spNE_PRECIO_VTA.ParamByName('P_PRECIO').AsString := idPrecioVenta.Entrada;
        spNE_PRECIO_VTA.ExecProc;
        spNE_PRECIO_VTA.Transaction.CommitRetaining;
        dsPartidas.DataSet.Close;
        dsPartidas.DataSet.Open;
        dsPartidas.DataSet.Locate('R_ID', id,[loCaseInsensitive]);
     end;
     }
  end;
end;

procedure TfrmCapturar_Entradas.dgPartidasCOSTO_INDButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
var
   id : integer;
begin
  inherited;
  if (dsFuente.DataSet.FieldByName('ESTATUS').AsString = 'Sin Afectar') and
     (dsFuente.DataSet.State = dsBrowse                               ) and
     (not(edicionD)                                                   ) then
  begin
  {
     idIndexado.Entrada := FormatFloat('########0.0000', dgPartidas.DataSource.DataSet.FieldByName('R_COSTO_INDEXADO').AsFloat);
     idIndexado.Execute;
     if idIndexado.Respuesta and (idIndexado.Entrada <> '') then
     begin
        id := dgPartidas.DataSource.DataSet.FieldByName('R_ID').AsInteger;
        spUPDATE_C_INDEXADO.ParamByName('P_ID').AsInteger   := id;
        spUPDATE_C_INDEXADO.ParamByName('P_VALOR').AsString := idIndexado.Entrada;
        spUPDATE_C_INDEXADO.ExecProc;
        spUPDATE_C_INDEXADO.Transaction.CommitRetaining;
        dsPartidas.DataSet.Close;
        dsPartidas.DataSet.Open;
        dsPartidas.DataSet.Locate('R_ID', id, [loCaseInsensitive]);
     end;
     }
  end;
end;

procedure TfrmCapturar_Entradas.ibDescuentoXtraClick(Sender: TObject);
begin
  inherited;
   if ejecucionDescuento then
   begin
      reglas.abrir_IBTabla(TCapturar);
   end;
end;

procedure TfrmCapturar_Entradas.ibBonificacionXtraClick(Sender: TObject);
begin
  inherited;
   if ejecucionBonificacion then
   begin
      reglas.abrir_IBTabla(TCapturar);
   end;
end;

procedure TfrmCapturar_Entradas.ibRetencionClick(Sender: TObject);
begin
  inherited;
   if ejecucionRetencionIVA then
   begin
      reglas.abrir_IBTabla(TCapturar);
      reglas.refresh_IBQuery(qyPartidas);
   end;
end;

procedure TfrmCapturar_Entradas.FormDestroy(Sender: TObject);
begin
  inherited;
  ETIQ_ENC.Destroy;
  ETIQ_DET.Destroy;
end;

procedure TfrmCapturar_Entradas.edMaterialButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
   case AbsoluteIndex of
     0: begin
           frmSeleccionarMaterialCompras             := TfrmSeleccionarMaterialCompras.Create(Application);
           frmSeleccionarMaterialCompras.DATABASE    := dmIBModulo.ibSistema;
           frmSeleccionarMaterialCompras.TRANSACTION := dmIBModulo.ibSistemaTransaccion;
           frmSeleccionarMaterialCompras.CLAVE       := edMaterial.Text;
           if frmSeleccionarMaterialCompras.abrirConsulta then
           begin
              frmSeleccionarMaterialCompras.ShowModal;
              if frmSeleccionarMaterialCompras.ACEPTAR then
              begin
                 edMaterial.Tag  := frmSeleccionarMaterialCompras.ID;
                 edMaterial.Text := frmSeleccionarMaterialCompras.CLAVE;
                 edConcepto.Text := frmSeleccionarMaterialCompras.DESCRIPCION;
                 //edMaterial.SetSelection(Length(edMaterial.Text),Length(edMaterial.Text),false);
              end;
           end
           else
              begin
                 edMaterial.Tag  := frmSeleccionarMaterialCompras.ID;
                 edMaterial.Text := frmSeleccionarMaterialCompras.CLAVE;
                 edConcepto.Text := frmSeleccionarMaterialCompras.DESCRIPCION;
                 //edMaterial.SetSelection(Length(edMaterial.Text),Length(edMaterial.Text),false);
              end;
           frmSeleccionarMaterialCompras.Free;
           frmSeleccionarMaterialCompras := nil;
           if edMaterial.Tag <> 0 then
              edPago.SetFocus;
        end;
     1: begin
           edMaterial.Clear;
           edConcepto.Clear;
           edMaterial.Tag  := 0
        end;
   end;
end;

procedure TfrmCapturar_Entradas.edMaterialKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
   if key = #13 then
   begin
      edMaterialButtonClick(Sender, 0);
   end;
end;

procedure TfrmCapturar_Entradas.edPagoChange(Sender: TObject);
begin
  inherited;
   if awrCapturar then
   begin
      awrCapturar := false;

      qyTotal.Close;
      qyTotal.ParamByName('P_MATERIAL').AsInteger := edMaterial.Tag;
      qyTotal.ParamByName('P_TOTAL').AsFloat      := StrToFloat(edPago.Text);
      qyTotal.Open;

      edSubTotal.Text   := dsTotal.DataSet.FieldByName('R_SUBTOTAL').AsString;
      edIVA.Text        := dsTotal.DataSet.FieldByName('R_IVA').AsString;
      awrCapturar := true;
   end;
end;

procedure TfrmCapturar_Entradas.edSubTotalChange(Sender: TObject);
begin
  inherited;
   if awrCapturar then
   begin
      awrCapturar := false;

      qyTEI.Close;
      qyTEI.ParamByName('P_MATERIAL').AsInteger := edMaterial.Tag;
      qyTEI.ParamByName('P_SUBTOTAL').AsFloat   := StrToFloat(edSubTotal.Text);
      qyTEI.Open;

      edPago.Text := dsTEI.DataSet.FieldByName('R_TOTAL').AsString;
      edIVA.Text  := dsTEI.DataSet.FieldByName('R_IVA').AsString;
      awrCapturar := true;
   end;
end;

procedure TfrmCapturar_Entradas.TCapturarAfterPost(DataSet: TDataSet);
begin
  inherited;
  fijarBotonesD(false);
end;

procedure TfrmCapturar_Entradas.buAplicarClick(Sender: TObject);
begin
  inherited;
  fijarBotonesD(false);
end;

procedure TfrmCapturar_Entradas.edIVAChange(Sender: TObject);
begin
  inherited;
  if ((edIVA.Text = '0') and (awrCapturar)) then
  begin
     awrCapturar  := false;
     edPago.text := edSubTotal.text;
     awrCapturar  := true;
  end;
end;

procedure TfrmCapturar_Entradas.dgPartidasCOSTOButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
var
   id : integer;
begin
  inherited;
  if (dsFuente.DataSet.FieldByName('ESTATUS').AsString = 'Sin Afectar') and
     (dsFuente.DataSet.State = dsBrowse                               ) and
     (not(edicionD)                                                   ) then
  begin
  {
     idCosto.Entrada := FormatFloat('########0.0000', dsPartidas.DataSet.FieldByName('R_PRECIO').AsFloat);
     idCosto.Execute;
     if idCosto.Respuesta and (idCosto.Entrada <> '') then
     begin
        id := dsPartidas.DataSet.FieldByName('R_ID').AsInteger;
        spM_PARTIDA_NE.ParamByName('P_ID').AsInteger    := id;
        spM_PARTIDA_NE.ParamByName('P_COSTO').AsString := idCosto.Entrada;
        spM_PARTIDA_NE.ExecProc;
        spM_PARTIDA_NE.Transaction.CommitRetaining;
        dsPartidas.DataSet.Close;
        dsPartidas.DataSet.Open;
        dsPartidas.DataSet.Locate('R_ID', id,[loCaseInsensitive]);
        reglas.abrir_IBTabla(TCapturar);
     end;
     }
  end;

end;

procedure TfrmCapturar_Entradas.itemImprimirClick(Sender: TObject);
begin
  inherited;
   try
      frmPRN_0032 := TfrmPRN_0032.CrearA(Application, dsFuente.DataSet.FieldByName('ID').AsInteger, true);
      frmPRN_0032.imprimir;
   finally
      frmPRN_0032.Release;
   end;
   reglas.abrir_IBTabla(TCapturar)
end;

procedure TfrmCapturar_Entradas.itemPreviewClick(Sender: TObject);
begin
  inherited;
   try
      frmPRN_0032 := TfrmPRN_0032.CrearA(Application, dsFuente.DataSet.FieldByName('ID').AsInteger, true);
      frmPRN_0032.preview;
   finally
      frmPRN_0032.Free;
   end;
end;

procedure TfrmCapturar_Entradas.buF12Click(Sender: TObject);
var
   pntA : TPoint;
   pntB : TPoint;
begin
  inherited;
  pntA   := fpPadre.ClientToScreen(Point(0,0));
  pntB   := dgPartidas.ClientToScreen(Point(0,0));
  pntB.x := paLienzo.Width;
  pntB.y := pntB.y - pntA.y;

  try
     frmSeleccionarNE             := TfrmSeleccionarNE.Create(Application);
     frmSeleccionarNE.DATABASE    := dmIBModulo.ibSistema;
     frmSeleccionarNE.TRANSACTION := dmIBModulo.ibSistemaTransaccion;
     frmSeleccionarNE.TARGET      := dsFuente.DataSet.FieldByName('ID').AsInteger;
     frmSeleccionarNE.DATASOURCE  := dsPartidas; 
     frmSeleccionarNE.X           := pntA;
     frmSeleccionarNE.Y           := pntB;
     frmSeleccionarNE.ShowModal;
  finally
     frmSeleccionarNE.Release;
  end;

  reglas.abrir_IBTabla(TCapturar);
end;

procedure TfrmCapturar_Entradas.dgPartidasID_REFButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
begin
  inherited;
  if (dsFuente.DataSet.FieldByName('ESTATUS').AsString = 'Sin Afectar') and
     (dsFuente.DataSet.State = dsBrowse                               ) and
     (not(edicionD)                                                   ) then
  begin
     if MessageDlg('¿ Desea eliminar nota de entrada del grupo ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes  then
     begin
        spDEL_NE.ParamByName('P_ID').AsInteger := dsPartidas.DataSet.FieldByName('R_ID').AsInteger;
        spDEL_NE.ExecProc;
        spDEL_NE.Transaction.CommitRetaining;

        reglas.abrir_IBTabla(TCapturar);
        reglas.refresh_IBQuery(qyPartidas);
     end;
  end;
end;

procedure TfrmCapturar_Entradas.dgPartidasIMPRESORA_MButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
begin
  inherited;
  try
     frmGenerar                  := TfrmGenerar.Create(Application);
     frmGenerar.FORMATO          := fMonarch;
     frmGenerar.ALMACEN          := dsFuente.DataSet.FieldByName('almacen_clave').AsString;
     frmGenerar.CUANTAS          := dsPartidas.DataSet.FieldByName('R_ETIQUETAS').AsString;
     frmGenerar.ARTICULO         := dsPartidas.DataSet.FieldByName('R_CLAVE').AsString;
     frmGenerar.DESCRIPCION      := dsPartidas.DataSet.FieldByName('R_DESCRIPCION').AsString;
     frmGenerar.CBARRAS          := dsPartidas.DataSet.FieldByName('R_CODIGO_BARRAS').AsString;
     frmGenerar.PRECIO           := FormatFloat('$ ###,###,##0.00',dsPartidas.DataSet.FieldByName('R_PRECIO_VENTA').AsFloat);
     frmGenerar.MAYOREO          := FormatFloat('$ ###,###,##0.00',dsPartidas.DataSet.FieldByName('R_PRECIO_MAYOREO').AsFloat);
     frmGenerar.MENUDEO          := FormatFloat('$ ###,###,##0.00',dsPartidas.DataSet.FieldByName('R_PRECIO_MENUDEO').AsFloat);
     frmGenerar.CUC_CADENA       := dsPartidas.DataSet.FieldByName('R_CUC_CADENA').AsString;
     frmGenerar.FECHA            := FormatDateTime('dd/mm/yyyy', dsFuente.DataSet.FieldByName('FECHA_ALTA').AsDatetime);
     frmGenerar.FECHA_OC         := FormatDateTime('dd/mm/yyyy', dsPartidas.DataSet.FieldByName('R_OC_FECHA').AsDatetime);
     frmGenerar.FECHA_DESEMPAQUE := FormatDateTime('dd/mm/yyyy', dsPartidas.DataSet.FieldByName('R_DESEMPAQUE_FECHA').AsDatetime);
     frmGenerar.ShowModal;
  finally
     frmGenerar.Release;
  end;
end;

procedure TfrmCapturar_Entradas.dgPartidasIMPRESORA_ZButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
begin
  inherited;
  try
     frmGenerar                  := TfrmGenerar.Create(Application);
     frmGenerar.FORMATO          := fZebra;
     frmGenerar.ALMACEN          := dsFuente.DataSet.FieldByName('almacen_clave').AsString;
     frmGenerar.CUANTAS          := dsPartidas.DataSet.FieldByName('R_ETIQUETAS').AsString;
     frmGenerar.ARTICULO         := dsPartidas.DataSet.FieldByName('R_CLAVE').AsString;
     frmGenerar.DESCRIPCION      := dsPartidas.DataSet.FieldByName('R_DESCRIPCION').AsString;
     frmGenerar.CBARRAS          := dsPartidas.DataSet.FieldByName('R_CODIGO_BARRAS').AsString;
     frmGenerar.PRECIO           := FormatFloat('$ ###,###,##0.00',dsPartidas.DataSet.FieldByName('R_PRECIO_VENTA').AsFloat);
     frmGenerar.MAYOREO          := FormatFloat('$ ###,###,##0.00',dsPartidas.DataSet.FieldByName('R_PRECIO_MAYOREO').AsFloat);
     frmGenerar.MENUDEO          := FormatFloat('$ ###,###,##0.00',dsPartidas.DataSet.FieldByName('R_PRECIO_MENUDEO').AsFloat);
     frmGenerar.CUC_CADENA       := dsPartidas.DataSet.FieldByName('R_CUC_CADENA').AsString;
     frmGenerar.FECHA            := FormatDateTime('dd/mm/yyyy', dsFuente.DataSet.FieldByName('FECHA_ALTA').AsDatetime);
     frmGenerar.FECHA_OC         := FormatDateTime('dd/mm/yyyy', dsPartidas.DataSet.FieldByName('R_OC_FECHA').AsDatetime);
     frmGenerar.FECHA_DESEMPAQUE := FormatDateTime('dd/mm/yyyy', dsPartidas.DataSet.FieldByName('R_DESEMPAQUE_FECHA').AsDatetime);
     frmGenerar.ShowModal;
  finally
     frmGenerar.Release;
  end;
end;

procedure TfrmCapturar_Entradas.buEtiquetasMClick(Sender: TObject);
var
   i           : integer;
   L           : TList;
   etiquetas   : string;
   cbarras     : string;
   clave       : string;
   descripcion : string;
   corta       : string;
   precio      : string;
   mayoreo     : string;
   menudeo     : string;
   cuc_cadena  : string;
   fecha_oc    : string;
   fecha_desmp : string;
begin
  inherited;
  if MessageDlg('¿Imprimir etiquetas seleccionadas?',  mtConfirmation, [mbYes, mbNo], 0) = mrYes  then
  begin
  {
     L := TList.Create;
     for i := 0 to dgPartidas.SelectedCount - 1 do
         L.Add(dgPartidas.SelectedNodes[i]);//no se hace directamente en el grid por que tiene bug, cuando son 2 registros
     for i := 0 to (L.Count - 1) do
     begin
        etiquetas   := TdxTreeListNode(L.Items[i]).Strings[0];
        cbarras     := TdxTreeListNode(L.Items[i]).Strings[1];
        mayoreo     := TdxTreeListNode(L.Items[i]).Strings[2];
        menudeo     := TdxTreeListNode(L.Items[i]).Strings[3];
        cuc_cadena  := TdxTreeListNode(L.Items[i]).Strings[4];
        fecha_oc    := TdxTreeListNode(L.Items[i]).Strings[5];
        fecha_desmp := TdxTreeListNode(L.Items[i]).Strings[6];
        clave       := TdxTreeListNode(L.Items[i]).Strings[8];
        descripcion := TdxTreeListNode(L.Items[i]).Strings[9];
        corta       := TdxTreeListNode(L.Items[i]).Strings[10];
        precio      := TdxTreeListNode(L.Items[i]).Strings[13];
        try
           frmGenerar                  := TfrmGenerar.Create(Application);
           frmGenerar.FORMATO          := fMonarch;
           frmGenerar.ALMACEN          := dsFuente.DataSet.FieldByName('almacen_clave').AsString;
           frmGenerar.CUANTAS          := etiquetas;
           frmGenerar.ARTICULO         := clave;
           frmGenerar.DESCRIPCION      := descripcion;
           frmGenerar.CORTA            := corta;
           frmGenerar.CBARRAS          := cbarras;
           frmGenerar.PRECIO           := precio;
           frmGenerar.MAYOREO          := mayoreo;
           frmGenerar.MENUDEO          := menudeo;
           frmGenerar.CUC_CADENA       := cuc_cadena;
           frmGenerar.FECHA            := FormatDateTime('dd/mm/yyyy', dsFuente.DataSet.FieldByName('FECHA_ALTA').AsDatetime);
           frmGenerar.FECHA_OC         := fecha_oc;
           frmGenerar.FECHA_DESEMPAQUE := fecha_desmp;
           frmGenerar.buImprimir.Click;
        finally
           frmGenerar.Release;
        end;
        Sleep(1000);
     end;
     L.Free;
     }
  end;
end;

procedure TfrmCapturar_Entradas.buEtiquetasZClick(Sender: TObject);
var
   i           : integer;
   L           : TList;
   etiquetas   : string;
   cbarras     : string;
   clave       : string;
   descripcion : string;
   corta       : string;
   precio      : string;
   mayoreo     : string;
   menudeo     : string;
   cuc_cadena  : string;
   fecha_oc    : string;
   fecha_desmp : string;
begin
  inherited;
  if MessageDlg('¿Imprimir etiquetas seleccionadas?',  mtConfirmation, [mbYes, mbNo], 0) = mrYes  then
  begin
  {
     L := TList.Create;
     for i := 0 to dgPartidas.SelectedCount - 1 do
         L.Add(dgPartidas.SelectedNodes[i]);//no se hace directamente en el grid por que tiene bug, cuando son 2 registros
     for i := 0 to (L.Count - 1) do
     begin
        etiquetas   := TdxTreeListNode(L.Items[i]).Strings[0];
        cbarras     := TdxTreeListNode(L.Items[i]).Strings[1];
        mayoreo     := TdxTreeListNode(L.Items[i]).Strings[2];
        menudeo     := TdxTreeListNode(L.Items[i]).Strings[3];
        cuc_cadena  := TdxTreeListNode(L.Items[i]).Strings[4];
        fecha_oc    := TdxTreeListNode(L.Items[i]).Strings[5];
        fecha_desmp := TdxTreeListNode(L.Items[i]).Strings[6];
        clave       := TdxTreeListNode(L.Items[i]).Strings[8];
        descripcion := TdxTreeListNode(L.Items[i]).Strings[9];
        corta       := TdxTreeListNode(L.Items[i]).Strings[10];
        precio      := TdxTreeListNode(L.Items[i]).Strings[13];
        try
           frmGenerar                  := TfrmGenerar.Create(Application);
           frmGenerar.FORMATO          := fZebra;
           frmGenerar.ALMACEN          := dsFuente.DataSet.FieldByName('almacen_clave').AsString;
           frmGenerar.CUANTAS          := etiquetas;
           frmGenerar.ARTICULO         := clave;
           frmGenerar.DESCRIPCION      := descripcion;
           frmGenerar.CORTA            := corta;
           frmGenerar.CBARRAS          := cbarras;
           frmGenerar.PRECIO           := precio;
           frmGenerar.MAYOREO          := mayoreo;
           frmGenerar.MENUDEO          := menudeo;
           frmGenerar.CUC_CADENA       := cuc_cadena;
           frmGenerar.FECHA            := FormatDateTime('dd/mm/yyyy', dsFuente.DataSet.FieldByName('FECHA_ALTA').AsDatetime);
           frmGenerar.FECHA_OC         := fecha_oc;
           frmGenerar.FECHA_DESEMPAQUE := fecha_desmp;

           frmGenerar.buImprimir.Click;
        finally
           frmGenerar.Release;
        end;
        Sleep(1000);
     end;
     L.Free;
     }
  end;
end;

procedure TfrmCapturar_Entradas.itemF7DetClick(Sender: TObject);
begin
  inherited;
  buF7Det.Click;
end;

procedure TfrmCapturar_Entradas.itemF8DetClick(Sender: TObject);
begin
  inherited;
  buF8Det.Click;
end;

procedure TfrmCapturar_Entradas.itemF9DetClick(Sender: TObject);
begin
  inherited;
  buF9Det.Click;
end;

procedure TfrmCapturar_Entradas.itemF10DetClick(Sender: TObject);
begin
  inherited;
  buF10Det.Click;
end;

procedure TfrmCapturar_Entradas.itemF11DetClick(Sender: TObject);
begin
  inherited;
  buF11Det.Click;
end;

procedure TfrmCapturar_Entradas.itemF12Click(Sender: TObject);
begin
  inherited;
  buF12.Click;
end;

procedure TfrmCapturar_Entradas.itemContraReciboClick(Sender: TObject);
begin
  inherited;
  PR_0001 := TPR_0001.Create(Self);
  try
     if PR_0001.OpenReporte then
     begin
        PR_0001.ID := dsFuente.DataSet.FieldByName('ID').AsInteger;
        if dsFuente.DataSet.FieldByName('CONTRARECIBO').AsInteger = 0 then
           PR_0001.imprimir
        else
           PR_0001.preview;
     end;
  finally
     PR_0001.Free;
  end;
  reglas.abrir_IBTabla(TCapturar)
end;

procedure TfrmCapturar_Entradas.itemContraReciboPreviewClick(
  Sender: TObject);
begin
  inherited;
  PR_0001 := TPR_0001.Create(Self);
  try
     if PR_0001.OpenReporte then
     begin
        PR_0001.ID := dsFuente.DataSet.FieldByName('ID').AsInteger;
        PR_0001.preview;
     end;
  finally
     PR_0001.Free;
  end;
end;

procedure TfrmCapturar_Entradas.dgPartidasBTNRETENCIONButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
begin
  inherited;
  if (dsFuente.DataSet.FieldByName('ESTATUS').AsString = 'Sin Afectar') and
     (dsFuente.DataSet.State = dsBrowse                               ) and
     (not(edicionD)                                                   ) then
  begin
     if ejecucionRetencionDetalleIVA then
     begin
        reglas.abrir_IBTabla(TCapturar);
        reglas.refresh_IBQuery(qyPartidas);
     end;
  end;
end;

procedure TfrmCapturar_Entradas.ibRetencionISRClick(Sender: TObject);
begin
  inherited;
   if ejecucionRetencionISR then
   begin
      reglas.abrir_IBTabla(TCapturar);
      reglas.refresh_IBQuery(qyPartidas);
   end;
end;

procedure TfrmCapturar_Entradas.dgPartidasBTNRETENCION_ISRButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
begin
  inherited;
  if (dsFuente.DataSet.FieldByName('ESTATUS').AsString = 'Sin Afectar') and
     (dsFuente.DataSet.State = dsBrowse                               ) and
     (not(edicionD)                                                   ) then
  begin
     if ejecucionRetencionDetalleISR then
     begin
        reglas.abrir_IBTabla(TCapturar);
        reglas.refresh_IBQuery(qyPartidas);
     end;
  end;
end;

end.
