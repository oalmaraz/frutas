unit PRN_0003_FACTURAR_TXT;

interface                    

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  padre,  IBStoredProc, Db, IBCustomDataSet, IBQuery,
     Grids,
  DBGrids, Buttons, StdCtrls, ExtCtrls;

type
  TfrmPRN_0003_TXT = class(TfrmPadre)
    qyEmpresa: TIBQuery;
    qyEmpresaR_CLAVE: TIBStringField;
    qyEmpresaR_NOMBRE: TIBStringField;
    qyEmpresaR_RAZON_SOCIAL: TIBStringField;
    qyEmpresaR_TELEFONO: TIBStringField;
    qyEmpresaR_RFC: TIBStringField;
    qyEmpresaR_CURP: TIBStringField;
    qyEmpresaR_CIUDAD_DESCRIPCION: TIBStringField;
    dsEmpresa: TDataSource;
    qyEncabezado: TIBQuery;
    dsEncabezado: TDataSource;
    dsDetalle: TDataSource;
    qyDetalle: TIBQuery;
    spACTUALIZA_FACTURA: TIBStoredProc;
    spMODIFICAR_FOLIO: TIBStoredProc;
    qyBusquedaFacturas: TIBQuery;
    dsBusquedaVenta: TDataSource;
    Label3: TLabel;
    deFecha: TEdit;
    ceConsecutivo: TEdit;
    Label1: TLabel;
    dgFacturados: TDBGrid;
    qyBusquedaFacturasR_ID: TIntegerField;
    qyBusquedaFacturasR_CLAVE: TIBStringField;
    qyBusquedaFacturasR_FECHA_ALTA: TDateTimeField;
    qyBusquedaFacturasR_NOMBRE: TIBStringField;
    qyBusquedaFacturasR_TELEFONO: TIBStringField;
    qyBusquedaFacturasR_CIUDAD: TIBStringField;
    qyBusquedaFacturasR_SERIE_FACTURA: TIBStringField;
    qyBusquedaFacturasR_CONSECUTIVO: TIntegerField;
    qyBusquedaFacturasR_GRANTOTAL: TFloatField;
    qyBusquedaFacturasR_EXTENSION_NOMBRE: TIBStringField;
    spP_FACTURA_SINSURTIR: TIBStoredProc;
    qyDetalleConsolidadaCC: TIBQuery;
    qyDetalleBlob: TIBQuery;
    qyDetalleBlobR_REFERENCIAS: TIBStringField;
    qyDetalleConsolidada: TIBQuery;
    qyDetalleConsolidadaR_MATERIAL: TIntegerField;
    qyDetalleConsolidadaR_CLAVE: TIBStringField;
    qyDetalleConsolidadaR_DESCRIPCION: TIBStringField;
    qyDetalleConsolidadaR_GT: TFloatField;
    qyDetalleConsolidadaR_PARTIDAS: TIntegerField;
    qyDetalleConsolidadaR_CANTIDAD: TFloatField;
    spFOLIO_ALMACEN: TIBStoredProc;
    qyConsolidadaBlob: TIBQuery;
    IBStringField1: TIBStringField;
    qyContinuacion: TIBQuery;
    qyACTUALIZA_FACTURA: TIBQuery;
    qyVerificarFolio: TIBQuery;
    qyVerificarFolioR_ACEPTADO: TIBStringField;
    qyDetalleConsolidadaR_CONSECUTIVO: TIntegerField;
    qyDetalleConsolidadaR_CAJAS: TFloatField;
    qyDetalleConsolidadaR_KILOS: TFloatField;
    qyDetalleConsolidadaR_PIEZAS: TFloatField;
    qyDetalleConsolidadaR_CALIDAD: TIntegerField;
    qyDetalleConsolidadaR_UNIDAD: TIntegerField;
    qyDetalleConsolidadaR_UNIDAD_DESCRIPCION: TIBStringField;
    qyDetalleConsolidadaR_PRECIO: TFloatField;
    qyDetalleConsolidadaCCR_REFERENCIA_PAGO: TIntegerField;
    qyDetalleConsolidadaCCR_REFERENCIA_PAGO_NOMBRE: TIBStringField;
    qyDetalleConsolidadaCCR_SUBTOTAL: TFloatField;
    qyDetalleConsolidadaCCR_IVA: TFloatField;
    qyDetalleConsolidadaCCR_MONTO: TFloatField;
    qyFacturaIntereses: TIBQuery;
    buExplorar: TBitBtn;
    buReImprimir: TBitBtn;
    buSalir: TBitBtn;
    qyPartidasFacturaM: TIBQuery;
    qyDetalleConsolidadaR_CALIDAD_NOMBRE: TIBStringField;
    spACT_FOLIO_FACTURA: TIBStoredProc;
    procedure FormCreate(Sender: TObject);
    procedure dsBusquedaVentaDataChange(Sender: TObject; Field: TField);
    procedure ceConsecutivoKeyPress(Sender: TObject; var Key: Char);
    procedure buExplorarClick(Sender: TObject);
    procedure buReImprimirClick(Sender: TObject);
    procedure buSalirClick(Sender: TObject);
  private
    { Private declarations }
    awrID           : integer;
    awrAlmacen      : integer;
    awrBloque       : TDataSet;
    awrEstatus      : string;
    awrBtnCancel    : boolean; 
    ruta            : string;
    reporte         : string;
    strImpresora    : string;
    strEscImpresora : string;
    modo            : string;
    impresiones     : integer;
    procedure loadImpresora;
    function buscarFormato(archivo : string) : boolean;
    procedure setALMACEN(valor : integer);
    procedure setBLOQUE(valor : TDataSet);
    procedure setESTATUS(valor : string);
    procedure setID(valor : integer);
  public
    { Public declarations }
    function OpenFormato : boolean;//Normal
    function OpenFormatoM : boolean;//Medidas
    function OpenFormatoSeries : boolean;
    function OpenFormatoSinIVA : boolean;

    procedure print;
    procedure imprimir;
    procedure imprimirBloque;   //Explorador de Facturas
    procedure imprimirEnlazada; //Cuando hay facturas ligadas.
    function folioFacturaElectronica : integer;

    procedure preview;
  published
     property ID      : integer read awrID write setID;
     property ALMACEN : integer read awrID write setALMACEN;
     property BLOQUE  : TDataSet read awrBLOQUE write setBLOQUE;
     property ESTATUS : string read awrEstatus write setESTATUS;
     property BTN_CANCEL : boolean read awrBtnCancel write awrBtnCancel;
  end;

var
  frmPRN_0003_TXT: TfrmPRN_0003_TXT;

implementation

uses reglas_de_negocios, inifiles, IBData, controladorImpresora, IBModulo,
  UfrmFolio;

{$R *.DFM}

procedure TfrmPRN_0003_TXT.loadImpresora;
var
   iniFile        : TIniFile;
   strPrinterNom1 : string;
   strPrinterVal1 : string;
   strEscModel1   : string;
begin
   if reglas.activarElegirControladorImpresora('FACTURAS') then
   begin
      frmControladorImpresoras := TfrmControladorImpresoras.Create(Application);
      frmControladorImpresoras.BOTON := boFacturas;
      frmControladorImpresoras.ShowModal;
      frmControladorImpresoras.Free;
   end;
   iniFile        := TIniFile.Create(ChangeFileExt(Application.ExeName,'.INI'));
   strPrinterNom1 := iniFile.ReadString('FACTURAS','ImpresoraNom1','');
   strPrinterVal1 := iniFile.ReadString('FACTURAS','ImpresoraVal1','');
   strEscModel1   := iniFile.ReadString('FACTURAS','EscModel1','');
   modo           := iniFile.ReadString('FACTURAS','Modo','');
   strImpresora    := strPrinterNom1;
   strEscImpresora := strEscModel1;
   iniFile.Free;
   modo := UpperCase(modo);
end;

procedure TfrmPRN_0003_TXT.setESTATUS(valor : string);
begin
   awrEstatus := valor;
end;

procedure TfrmPRN_0003_TXT.setID(valor : integer);
begin
   awrID := valor;

   qyEncabezado.Close;
   qyEncabezado.ParamByName('P_FACTURA').AsInteger := valor;
   qyEncabezado.Open;

   if ESTATUS = 'Consolidada' then
   begin
      //consolidada por producto
      qyDetalleConsolidada.Close;
      qyDetalleConsolidada.ParamByName('P_FACTURA').AsInteger := valor;
      qyDetalleConsolidada.Open;

      qyConsolidadaBlob.Close;
      qyConsolidadaBlob.ParamByName('P_FACTURA').AsInteger := valor;
      qyConsolidadaBlob.Open;
   end
   else
      if ESTATUS = 'ConsolidadaCC' then//CC=Condicion Comercial
      begin
         qyDetalleConsolidadaCC.Close;
         qyDetalleConsolidadaCC.ParamByName('P_FACTURA').AsInteger := valor;
         qyDetalleConsolidadaCC.Open;

         qyDetalleBlob.Close;
         qyDetalleBlob.ParamByName('P_FACTURA').AsInteger := valor;
         qyDetalleBlob.Open;
      end
      else
         if ESTATUS = 'Medidas' then
         begin
            qyPartidasFacturaM.Close;
            qyPartidasFacturaM.ParamByName('P_ID').AsInteger := ID;
            qyPartidasFacturaM.Open;
         end
         else
            begin
               qyDetalle.Close;
               qyDetalle.ParamByName('P_FACTURA').AsInteger := valor;
               qyDetalle.Open;
            end;
end;

function TfrmPRN_0003_TXT.buscarFormato(archivo : string) : boolean;
var
   SearchRec : TSearchRec;
   tmp : boolean;
begin
   tmp := true;
   //cargar archivo del directorio de reportes
   ruta := ExtractFilePath(ParamStr(0))+'reportes\';
   if FindFirst(ruta+archivo, faAnyFile, SearchRec) = 0 then
      reporte := archivo
   else
      begin
         tmp := false;
         showmessage('Falta archivo: '+archivo);
      end;
   result := tmp;
end;

function TfrmPRN_0003_TXT.OpenFormato : boolean;//Normal
var
   archivo : string;
   tmp : boolean;
begin
   tmp := false;
   if (ESTATUS = 'Abierta')     or
      (ESTATUS = 'Cerrada')     or
      (ESTATUS = 'Consolidada') or
      (ESTATUS = 'ConsolidadaCC') then
      archivo := 'factura'+ESTATUS+'.prt'
   else
      archivo := 'factura.prt';

   if modo = 'DOS' then
      tmp := buscarFormato(archivo)
   else
      if modo = 'WIN' then
      begin
         archivo := 'win_'+archivo;
         tmp     := buscarFormato(archivo);
      end;
   result := tmp;
end;

function TfrmPRN_0003_TXT.OpenFormatoSinIVA : boolean;
var
   archivo : string;
   tmp : boolean;
begin
   tmp     := false;
   archivo := 'factura_sin_iva.prt';

   if modo = 'DOS' then
   begin
      archivo := 'dos_'+archivo;
      tmp     := buscarFormato(archivo);
   end
   else
   if modo = 'WIN' then
   begin
      archivo := 'win_'+archivo;
      tmp     := buscarFormato(archivo);
   end;

   result := tmp;
end;

function TfrmPRN_0003_TXT.OpenFormatoSeries : boolean;
var
   archivo : string;
   tmp : boolean;
begin
   tmp     := false;
   archivo := 'factura_series.prt';

   if modo = 'DOS' then
   begin
      archivo := 'dos_'+archivo;
      tmp     := buscarFormato(archivo);
   end
   else
   if modo = 'WIN' then
   begin
      archivo := 'win_'+archivo;
      tmp     := buscarFormato(archivo);
   end;

   result := tmp;
end;


function TfrmPRN_0003_TXT.OpenFormatoM : boolean;//Medidas
var
   archivo : string;
   tmp     : boolean;
begin
   tmp := false;
   if (ESTATUS = 'Abierta')     or
      (ESTATUS = 'Cerrada')     or
      (ESTATUS = 'Consolidada') or
      (ESTATUS = 'ConsolidadaCC') then
      archivo := 'factura'+estatus+'Medidas.prt'
   else
      archivo := 'facturaMedidas.prt';

   if modo = 'DOS' then
      tmp := buscarFormato(archivo)
   else
      if modo = 'WIN' then
      begin
         archivo := 'win_'+archivo;
         tmp     := buscarFormato(archivo);
      end;
   result := tmp;
end;

procedure TfrmPRN_0003_TXT.preview;
//var
  // prDOSReporte : TprTxReport;
  // prWINReporte : TprReport;
begin
{

   prDOSReporte := nil;
   prWINReporte := nil;

   if modo = 'DOS' then
   begin
      try
         prDOSReporte := TprTxReport.Create(Self);
         prDOSReporte.LoadTemplateFromFile(ruta+reporte,false);
         prDOSReporte.PrinterName  := strImpresora;
         prDOSReporte.PrepareReport;
         prDOSReporte.PreviewPreparedReport(true);
      finally
         prDOSReporte.Free;
      end;
   end
   else
      if modo = 'WIN' then
      begin
         try
            prWINReporte := TprReport.Create(Self);
            prWINReporte.LoadTemplateFromFile(ruta+reporte,false);
            prWINReporte.PrinterName  := strImpresora;
            prWINReporte.PrepareReport;
            prWINReporte.PreviewPreparedReport(true);
         finally
            prWINReporte.Free;
         end;
      end;
      }
end;

procedure TfrmPRN_0003_TXT.setALMACEN(valor : integer);
begin
   awrAlmacen := valor;
   dmIBData.spFECHA_SERVIDOR.ExecProc;
   deFecha.Text := FormatDateTime('dd/mm/yyyy',dmIBData.spFECHA_SERVIDOR.ParamByName('R_FECHA').AsDateTime);
end;

procedure TfrmPRN_0003_TXT.setBLOQUE(valor : TDataSet);
begin
   awrBloque := nil;
   awrBloque := valor;
end;

procedure TfrmPRN_0003_TXT.imprimirBloque;
begin
   while not(BLOQUE.Eof) do
   begin
      ID := BLOQUE.FieldByName('R_ID').AsInteger;

      if UpperCase(qyEncabezado.FieldByName('R_CLAVE').AsString) <> 'ERROR' then
      begin
         imprimir;

         spP_FACTURA_SINSURTIR.ParamByName('P_FACTURA').AsInteger := BLOQUE.FieldByName('R_ID').AsInteger;
         spP_FACTURA_SINSURTIR.ExecProc;
         spP_FACTURA_SINSURTIR.Transaction.CommitRetaining;
      end;

      BLOQUE.Next;
   end;
end;

procedure TfrmPRN_0003_TXT.imprimirEnlazada;
begin
   BLOQUE.First;
   while not(BLOQUE.Eof) do
   begin
      ID := BLOQUE.FieldByName('R_FACTURA').AsInteger;
      imprimir;

      BLOQUE.Next;
   end;
end;

function TfrmPRN_0003_TXT.folioFacturaElectronica : integer;
var
   salir    : boolean;
   _mr      : boolean;
   _folio   : integer;
   tmp      : integer;
begin
   tmp := -1;
   if qyEncabezado.FieldByName('R_CONSECUTIVO').AsInteger = 0 then
   begin
      repeat
         salir := true;
         spFOLIO_ALMACEN.ParamByName('P_ALMACEN').AsInteger := qyEncabezado.FieldByName('R_ALMACEN').AsInteger;
         spFOLIO_ALMACEN.ParamByName('P_AFECTAR').AsString  := 'No';
         spFOLIO_ALMACEN.ExecProc;
         spFOLIO_ALMACEN.Transaction.CommitRetaining;

         frmFolio := TfrmFolio.Create(Application);
         try
            frmFolio.Titulo             := 'Facturas';
            frmFolio.Folio              := spFOLIO_ALMACEN.ParamByName('R_CONSECUTIVO').AsInteger;
            frmFolio.buCancelar.Enabled := awrBtnCancel;
            frmFolio.ShowModal;
            _mr    := frmFolio.ModalResult;
            _folio := frmFolio.Folio;
         finally
            frmFolio.Free;
         end;

         if (_mr) and (_folio <> 0) then
         begin
            qyVerificarFolio.Close;
            qyVerificarFolio.ParamByName('P_FACTURA').AsInteger := qyEncabezado.FieldByName('R_ID').AsInteger;
            qyVerificarFolio.ParamByName('P_FOLIO').AsInteger   := _folio;
            qyVerificarFolio.ParamByName('P_ALMACEN').AsInteger := qyEncabezado.FieldByName('R_ALMACEN').AsInteger;
            qyVerificarFolio.Open;
            if qyVerificarFolio.FieldByName('R_ACEPTADO').AsString = 'No' then
            begin
               salir := false;
               ShowMessage('Falta capturar el folio de Impresion de la Factura');
            end
            else
            begin
               tmp := _folio;
            end;
         end;
      until salir;
   end;

   result := tmp;
end;

procedure TfrmPRN_0003_TXT.imprimir;
var
   salir    : boolean;
   actPrint : boolean;
   _mr      : boolean;
   _folio   : integer;
begin
   actPrint := true;
   if qyEncabezado.FieldByName('R_CONSECUTIVO').AsInteger = 0 then
   begin
      actPrint := false;
      repeat
         salir := true;
         spFOLIO_ALMACEN.ParamByName('P_ALMACEN').AsInteger := qyEncabezado.FieldByName('R_ALMACEN').AsInteger;
         spFOLIO_ALMACEN.ParamByName('P_AFECTAR').AsString  := 'No';
         spFOLIO_ALMACEN.ExecProc;
         spFOLIO_ALMACEN.Transaction.CommitRetaining;

         frmFolio := TfrmFolio.Create(Application);
         try
            frmFolio.Titulo             := 'Facturas';
            frmFolio.Folio              := spFOLIO_ALMACEN.ParamByName('R_CONSECUTIVO').AsInteger;
            frmFolio.buCancelar.Enabled := awrBtnCancel;
            frmFolio.ShowModal;
            _mr    := frmFolio.ModalResult;
            _folio := frmFolio.Folio;
         finally
            frmFolio.Free;
         end;

         if (_mr) and (_folio <> 0) then
         begin
            qyVerificarFolio.Close;
            qyVerificarFolio.ParamByName('P_FACTURA').AsInteger := qyEncabezado.FieldByName('R_ID').AsInteger;
            qyVerificarFolio.ParamByName('P_FOLIO').AsInteger   := _folio;
            qyVerificarFolio.ParamByName('P_ALMACEN').AsInteger := qyEncabezado.FieldByName('R_ALMACEN').AsInteger;
            qyVerificarFolio.Open;
            if qyVerificarFolio.FieldByName('R_ACEPTADO').AsString = 'No' then
            begin
               salir := false;
               ShowMessage('Falta capturar el folio de Impresion de la Factura');
            end
            else
            begin
               actPrint := true;
               //se actualiza el folio, si es diferente al que el sistema asigno, para que coincida con el de su consecutivo
               spACT_FOLIO_FACTURA.ParamByName('P_FOLIO').AsInteger          := spFOLIO_ALMACEN.ParamByName('R_CONSECUTIVO').AsInteger;
               spACT_FOLIO_FACTURA.ParamByName('P_FOLIO_ACEPTADO').AsInteger := _folio;
               spACT_FOLIO_FACTURA.ParamByName('P_ALMACEN').AsInteger        := qyEncabezado.FieldByName('R_ALMACEN').AsInteger;
               spACT_FOLIO_FACTURA.ParamByName('P_FACTURA').AsInteger        := qyEncabezado.FieldByName('R_ID').AsInteger;
               spACT_FOLIO_FACTURA.ParamByName('P_USUARIO').AsInteger        := reglas.dame_usuario;
               spACT_FOLIO_FACTURA.ExecProc;
               spACT_FOLIO_FACTURA.Transaction.CommitRetaining;
               reglas.refresh_IBQuery(qyEncabezado);
            end;
         end;
      until salir;
   end;

   if actPrint then
   begin
      print;
   end;
end;

procedure TfrmPRN_0003_TXT.print;
{
var
   prDOS : TprTxReport;
   prWIN : TprReport;
   i     : integer;
   }
begin
   {
   //impresion
   if modo = 'DOS' then
   begin
      prDOS := TprTxReport.Create(Self);
      prDOS.LoadTemplateFromFile(ruta+reporte,false);
      prDOS.PrinterName  := strImpresora;
      prDOS.ESCModelName := strEscImpresora;
      for i := 1 to impresiones do
      begin
         prDOS.PrepareReport;
         prDOS.PrintPreparedReport;
      end;
      prDOS.Free;
   end
   else
      if modo = 'WIN' then
      begin
         prWIN := TprReport.Create(Self);
         prWIN.LoadTemplateFromFile(ruta+reporte,false);
         prWIN.PrinterName := strImpresora;
         for i := 1 to impresiones do
         begin
            prWIN.PrepareReport;
            prWIN.PrintPreparedReport;
         end;
         prWIN.Free;
      end;
      }
end;

procedure TfrmPRN_0003_TXT.FormCreate(Sender: TObject);
begin
  loadImpresora;
  inherited;
  reglas.refresh_IBQuery(qyEmpresa);
  reglas.abrir_IBTabla(dmIBData.TPreferencias);

  //Impresiones por factura
  dmIBData.TPreferencias.Filter := 'ID = 75';
  impresiones := dmIBData.TPreferencias.FieldByName('VALOR').AsInteger;

  ESTATUS := 'Sin Afectar';
end;

procedure TfrmPRN_0003_TXT.dsBusquedaVentaDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if dsBusquedaVenta.DataSet <> nil then
  begin
     buReImprimir.Enabled := not(dsBusquedaVenta.DataSet.IsEmpty);
  end;
end;

procedure TfrmPRN_0003_TXT.ceConsecutivoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if (key = #13) and (ceConsecutivo.Text <> '') then
  begin
     buExplorar.Click;
  end;
end;

procedure TfrmPRN_0003_TXT.buExplorarClick(Sender: TObject);
begin
  inherited;
  qyBusquedaFacturas.Close;
  qyBusquedaFacturas.ParamByName('P_FECHA_ALTA').AsDate     := StrToDate(deFecha.Text);
  qyBusquedaFacturas.ParamByName('P_CONSECUTIVO').AsInteger := StrToInt(ceConsecutivo.Text);
  qyBusquedaFacturas.ParamByName('P_ALMACEN').AsInteger     := almacen;
  qyBusquedaFacturas.Open;
end;

procedure TfrmPRN_0003_TXT.buReImprimirClick(Sender: TObject);
begin
  inherited;
  ID := dsBusquedaVenta.DataSet.FieldByName('R_ID').AsInteger;
  imprimir;
end;

procedure TfrmPRN_0003_TXT.buSalirClick(Sender: TObject);
begin
  inherited;
  Close;
end;

end.








