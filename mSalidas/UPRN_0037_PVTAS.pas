unit UPRN_0037_PVTAS;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Grids,
  DBGrids, Db, IBCustomDataSet, IBQuery,  StdCtrls, Buttons;

type
  TPRN_0037 = class(TForm)
    qyEncPVtas: TIBQuery;
    qyDetPVtas: TIBQuery;
    qyDetPVtasR_ID: TIntegerField;
    qyDetPVtasR_PUNTO_DE_VENTA: TIntegerField;
    qyDetPVtasR_MATERIAL: TIntegerField;
    qyDetPVtasR_CANTIDAD: TFloatField;
    qyDetPVtasR_UNIDAD: TIntegerField;
    qyDetPVtasR_PRECIO_VENTA: TFloatField;
    qyDetPVtasR_COSTO_COMPRA: TFloatField;
    qyDetPVtasR_VENDEDOR: TIntegerField;
    qyDetPVtasR_DESCUENTO_PORC: TFloatField;
    qyDetPVtasR_SUBTOTAL: TFloatField;
    qyDetPVtasR_IVA: TFloatField;
    qyDetPVtasR_IEPS: TFloatField;
    qyDetPVtasR_IMPUESTO1: TFloatField;
    qyDetPVtasR_IMPUESTO2: TFloatField;
    qyDetPVtasR_IVA_PORC: TFloatField;
    qyDetPVtasR_IEPS_PORC: TFloatField;
    qyDetPVtasR_IMPUESTO1_PORC: TFloatField;
    qyDetPVtasR_IMPUESTO2_PORC: TFloatField;
    qyDetPVtasR_IVA_DP: TFloatField;
    qyDetPVtasR_IEPS_DP: TFloatField;
    qyDetPVtasR_IMPUESTO1_DP: TFloatField;
    qyDetPVtasR_IMPUESTO2_DP: TFloatField;
    qyDetPVtasR_SUBTOTAL_DP: TFloatField;
    qyDetPVtasR_IVA_DG: TFloatField;
    qyDetPVtasR_IEPS_DG: TFloatField;
    qyDetPVtasR_IMPUESTO1_DG: TFloatField;
    qyDetPVtasR_IMPUESTO2_DG: TFloatField;
    qyDetPVtasR_SUBTOTAL_DG: TFloatField;
    qyDetPVtasR_ESTATUS: TIBStringField;
    qyDetPVtasR_TOTAL: TFloatField;
    qyDetPVtasR_DP: TFloatField;
    qyDetPVtasR_DG: TFloatField;
    qyDetPVtasR_GT: TFloatField;
    qyDetPVtasR_MATERIAL_CLAVE: TIBStringField;
    qyDetPVtasR_MATERIAL_DESCRIPCION: TIBStringField;
    qyDetPVtasR_MATERIAL_CODIGO_BARRAS: TIBStringField;
    qyDetPVtasR_UNIDAD_CLAVE: TIBStringField;
    qyDetPVtasR_UNIDAD_DESCRIPCION: TIBStringField;
    qyDetPVtasR_VENDEDOR_NOMBRE: TIBStringField;
    qyDetPVtasR_CAJAS: TIntegerField;
    qyEncPVtasR_EMPRESA_CLAVE: TIBStringField;
    qyEncPVtasR_EMPRESA_NOMBRE: TIBStringField;
    qyEncPVtasR_EMPRESA_RAZON_SOCIAL: TIBStringField;
    qyEncPVtasR_EMPRESA_FACTURAR: TIBStringField;
    qyEncPVtasR_EMPRESA_RFC: TIBStringField;
    qyEncPVtasR_EMPRESA_CURP: TIBStringField;
    qyEncPVtasR_EMPRESA_TELEFONO1: TIBStringField;
    qyEncPVtasR_EMPRESA_TELEFONO2: TIBStringField;
    qyEncPVtasR_EMPRESA_CALLE: TIBStringField;
    qyEncPVtasR_EMPRESA_ENTRE_CALLE: TIBStringField;
    qyEncPVtasR_EMPRESA_Y_CALLE: TIBStringField;
    qyEncPVtasR_EMPRESA_NUM_EXT: TIBStringField;
    qyEncPVtasR_EMPRESA_NUM_INT: TIBStringField;
    qyEncPVtasR_EMPRESA_LETRA: TIBStringField;
    qyEncPVtasR_EMPRESA_CP: TIBStringField;
    qyEncPVtasR_EMPRESA_COLONIA: TIBStringField;
    qyEncPVtasR_EMPRESA_CIUDAD: TIBStringField;
    qyEncPVtasR_ID: TIntegerField;
    qyEncPVtasR_FOLIO_DE_VENTA: TIntegerField;
    qyEncPVtasR_ALMACEN: TIntegerField;
    qyEncPVtasR_ALMACEN_CLAVE: TIBStringField;
    qyEncPVtasR_ALMACEN_NOMBRE: TIBStringField;
    qyEncPVtasR_ALMACEN_SERIE: TIBStringField;
    qyEncPVtasR_ALMACEN_OBSERVACIONES: TBlobField;
    qyEncPVtasR_CAJERO: TIntegerField;
    qyEncPVtasR_CAJERO_NOMBRE: TIBStringField;
    qyEncPVtasR_CC: TIntegerField;
    qyEncPVtasR_CLIENTE: TIntegerField;
    qyEncPVtasR_CLIENTE_CLAVE: TIBStringField;
    qyEncPVtasR_CLIENTE_NOMBRE: TIBStringField;
    qyEncPVtasR_CLIENTE_TELEFONO: TIBStringField;
    qyEncPVtasR_CLIENTE_DOMICILIO: TIBStringField;
    qyEncPVtasR_CLIENTE_CIUDAD: TIBStringField;
    qyEncPVtasR_CLIENTE_CIUDAD_CODIGO: TIBStringField;
    qyEncPVtasR_EXTENSION: TIntegerField;
    qyEncPVtasR_EXTENSION_CLAVE: TIBStringField;
    qyEncPVtasR_EXTENSION_NOMBRE: TIBStringField;
    qyEncPVtasR_EXTENSION_DIRECCION: TIBStringField;
    qyEncPVtasR_EXTENSION_CIUDAD: TIBStringField;
    qyEncPVtasR_EXTENSION_CIUDAD_CODIGO: TIBStringField;
    qyEncPVtasR_FECHA_ALTA: TDateTimeField;
    qyEncPVtasR_CAJA: TIntegerField;
    qyEncPVtasR_SUBTOTAL: TFloatField;
    qyEncPVtasR_IVA: TFloatField;
    qyEncPVtasR_IEPS: TFloatField;
    qyEncPVtasR_IMPUESTO1: TFloatField;
    qyEncPVtasR_IMPUESTO2: TFloatField;
    qyEncPVtasR_TOTAL: TFloatField;
    qyEncPVtasR_DESC_GLOBAL_PORC: TFloatField;
    qyEncPVtasR_DESC_GLOBAL_CANT: TFloatField;
    qyEncPVtasR_DESC_PARCIAL_CANT: TFloatField;
    qyEncPVtasR_GRANTOTAL: TFloatField;
    qyEncPVtasR_MONEDA: TIntegerField;
    qyEncPVtasR_CAMBIO_ENTREGADO: TFloatField;
    qyEncPVtasR_FOLIO_HISTORICO: TIntegerField;
    qyEncPVtasR_ESTATUS: TIBStringField;
    qyEncPVtasR_TOTAL_REF_PAGOS: TFloatField;
    qyEncPVtasR_PRIORIDAD: TIBStringField;
    qyEncPVtasR_SERIE_NV: TIBStringField;
    qyEncPVtasR_CONSECUTIVO: TIntegerField;
    qyEncPVtasR_CERRADO: TIBStringField;
    qyEncPVtasR_CANTIDAD_CON_LETRAS: TIBStringField;
    qyEncPVtasR_SUBTOTAL_2: TFloatField;
    qyEncPVtasR_CAJAS: TIntegerField;
    qyEncPVtasR_CAJAS_TOTAL: TFloatField;
    qyEncPVtasR_VALE1_NUM_CC: TIntegerField;
    qyEncPVtasR_VALE1_NUM_CNOC: TIntegerField;
    qyEncPVtasR_VALE1_MATERIAL: TIBStringField;
    qyEncPVtasR_VALE1_PRECIO: TFloatField;
    qyEncPVtasR_VALE1_TOTAL: TFloatField;
    qyEncPVtasR_VALE2_NUM_CC: TIntegerField;
    qyEncPVtasR_VALE2_NUM_CNOC: TIntegerField;
    qyEncPVtasR_VALE2_MATERIAL: TIBStringField;
    qyEncPVtasR_VALE2_PRECIO: TFloatField;
    qyEncPVtasR_VALE2_TOTAL: TFloatField;
    qyEncPVtasR_VALE3_NUM_CC: TIntegerField;
    qyEncPVtasR_VALE3_NUM_CNOC: TIntegerField;
    qyEncPVtasR_VALE3_MATERIAL: TIBStringField;
    qyEncPVtasR_VALE3_PRECIO: TFloatField;
    qyEncPVtasR_VALE3_TOTAL: TFloatField;
    qyEncPVtasR_VALE_T_NUM_CC: TIntegerField;
    qyEncPVtasR_VALE_T_NUM_CNOC: TIntegerField;
    qyEncPVtasR_VALE_T_MATERIAL: TIBStringField;
    qyEncPVtasR_VALE_T_TOTAL: TFloatField;
    dsBusquedaVenta: TDataSource;
    qyBusquedaVenta: TIBQuery;
    qyBusquedaVentaID: TIntegerField;
    qyBusquedaVentaGRANTOTAL: TFloatField;
    Panel1: TPanel;
    Label4: TLabel;
    edFolio: TEdit;
    buReImprimir: TBitBtn;
    dgVentas: TDBGrid;
    dgDatalle: TDBGrid;
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
    buExplorar: TBitBtn;
    buSalir: TBitBtn;
    qyBusquedaVentaFOLIO_DE_VENTA: TIntegerField;
    qyBusquedaVentaMONEDA: TIntegerField;
    qyEncPVtasR_EXTENSION_SEXO: TIBStringField;
    qyEncPVtasR_EXTENSION_F_NAC: TDateTimeField;
    qyEncPVtasR_EXTENSION_L_NAC: TIntegerField;
    qyEncPVtasR_EXTENSION_OCUPACION: TIBStringField;
    qyEncPVtasR_EXTENSION_E_CIVIL: TIBStringField;
    qyEncPVtasR_EXTENSION_EDAD: TIntegerField;
    qyEncPVtasR_EXTENSION_TELEFONO: TIBStringField;
    qyEncPVtasR_HOSP_MEDICO: TIntegerField;
    qyEncPVtasR_HOSP_TIPO_CE: TIBStringField;
    qyEncPVtasR_HOSP_TIPO_HOSP: TIBStringField;
    qyEncPVtasR_HOSP_MEDICO_C: TIBStringField;
    qyEncPVtasR_HOSP_MEDICO_N: TIBStringField;
    qyEncPVtasR_HOSP_OBSERVACIONES: TBlobField;
    qyEncPVtasR_HOSP_DIAGNOSTICO: TIntegerField;
    qyEncPVtasR_HOSP_DIAGNOSTICO_C: TIBStringField;
    qyEncPVtasR_HOSP_DIAGNOSTICO_D: TIBStringField;
    qyEncPVtasR_HOSP_CIRUGIA: TIntegerField;
    qyEncPVtasR_HOSP_CIRUGIA_C: TIBStringField;
    qyEncPVtasR_HOSP_CIRUGIA_N: TIBStringField;
    qyEncPVtasR_HOSP_ACEPTO_HOSP: TIBStringField;
    qyEncPVtasR_HOSP_ACEPTO_TQX: TIBStringField;
    qyEncPVtasR_CAJERO_C: TIBStringField;
    qyEncPVtasR_HOSP_FOLIO: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure qyBusquedaVentaAfterOpen(DataSet: TDataSet);
    procedure buReImprimirClick(Sender: TObject);
    procedure buExplorarClick(Sender: TObject);
    procedure buSalirClick(Sender: TObject);
    procedure edFolioKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    awrID      : integer;
    awrTOTAL   : double;
    awrMONEDA  : string;
    awrMONEDAC : string;
    awrMONEDAD : string;
    //showmodal
    awrCAJA    : integer;
    awrALMACEN : integer;

    ruta            : string;
    reporte         : string;
    strImpresora    : string;
    strEscImpresora : string;
    modo            : string;
    procedure setID(valor : integer);
    procedure setTOTAL(valor : double);
    procedure loadImpresora;
  public
    { Public declarations }
    procedure imprimir;
  published
     property TOTAL   : double write setTOTAL;
     property MONEDAC : string read awrMONEDAC write awrMONEDAC;
     property MONEDAD : string read awrMONEDAD write awrMONEDAD;
     property ID      : integer read awrID write setID;
     //showmodal
     property CAJA    : integer read awrCAJA write awrCAJA;
     property ALMACEN : integer read awrALMACEN write awrALMACEN;
  end;

var
  PRN_0037: TPRN_0037;

implementation

uses iniFiles, controladorImpresora, reglas_de_negocios, IBData;

{$R *.DFM}

procedure TPRN_0037.imprimir;
{
var
   prDos : TprTxReport;
   prWin : TprReport;
   }
begin
   //encabezado
   qyEncPVtas.Close;
   qyEncPVtas.ParamByName('P_ID').AsInteger    := ID;
   qyEncPVtas.ParamByName('P_LETRAS').AsString := awrMONEDA;
   qyEncPVtas.Open;
   //detalle
   qyDetPVtas.Close;
   qyDetPVtas.ParamByName('P_ID').AsInteger := ID;
   qyDetPVtas.Open;
   {
   //impresion
   if modo = 'DOS' then
   begin
      prDOS := TprTxReport.Create(Self);
      prDOS.LoadTemplateFromFile(ruta+reporte,false);
      prDOS.PrinterName  := strImpresora;
      prDOS.ESCModelName := strEscImpresora;
      prDOS.PrepareReport;
      prDOS.PrintPreparedReport;
      prDOS.Destroy;
   end
   else
      if modo = 'WIN' then
      begin
         prWIN := TprReport.Create(Self);
         prWIN.LoadTemplateFromFile(ruta+reporte,false);
         prWIN.PrinterName := strImpresora;
         prWIN.PrepareReport;
         prWIN.PrintPreparedReport;
         prWIN.Destroy;
      end;
      }
end;

procedure TPRN_0037.loadImpresora;
var
   iniFile        : TIniFile;
   strPrinterNom1 : string;
   strPrinterVal1 : string;
   strEscModel1   : string;
begin
   if reglas.activarElegirControladorImpresora('PUNTO_VENTAS_P') then
   begin
      frmControladorImpresoras := TfrmControladorImpresoras.Create(Application);
      frmControladorImpresoras.BOTON := boPVtasP;
      frmControladorImpresoras.ShowModal;
      frmControladorImpresoras.Destroy;
   end;
   iniFile         := TIniFile.Create(ChangeFileExt(Application.ExeName,'.INI'));
   strPrinterNom1  := iniFile.ReadString('PUNTO_VENTAS_P','ImpresoraNom1','');
   strPrinterVal1  := iniFile.ReadString('PUNTO_VENTAS_P','ImpresoraVal1','');
   strEscModel1    := iniFile.ReadString('PUNTO_VENTAS_P','EscModel1','');
   modo            := iniFile.ReadString('PUNTO_VENTAS_P','Modo','');
   strImpresora    := strPrinterNom1;
   strEscImpresora := strEscModel1;
   iniFile.Destroy;
   modo := upperCase(modo);
end;

procedure TPRN_0037.setID(valor : integer);
begin
   awrID := valor;
end;

procedure TPRN_0037.setTOTAL(valor : double);
var
   enteroStr : string;
   fracStr   : string;
begin
   awrTOTAL := valor;
   reglas.separarFlotante(valor, enteroStr, fracStr);
   //leCantidad.Numero := StrToInt(enteroStr);
   //leCantidad.Moneda := MONEDAD;
   awrMONEDA := UpperCase({leCantidad.AsString + }' ' + fracStr + '/100 ' + MONEDAC);
end;

procedure TPRN_0037.FormCreate(Sender: TObject);
var
   SearchRec : TSearchRec;
   archivo : string;
begin
   loadImpresora;
   reglas.abrir_IBTabla(dmIBData.TFiltroMonedas);
   //cargar archivo del directorio de reportes
   ruta := ExtractFilePath(ParamStr(0))+'reportes\';

   if modo = 'DOS' then
      reporte := 'pvtaspedido.prt'
   else
      if modo = 'WIN' then
         reporte := 'win_pvtaspedido.prt';

   if not(FindFirst(ruta+reporte, faAnyFile, SearchRec) = 0) then
      showmessage('Falta archivo: '+archivo);
end;

procedure TPRN_0037.qyBusquedaVentaAfterOpen(DataSet: TDataSet);
begin
   reglas.refresh_IBQuery(qyPartidas);
end;

procedure TPRN_0037.buReImprimirClick(Sender: TObject);
begin
   imprimir;
   close;
end;

procedure TPRN_0037.buExplorarClick(Sender: TObject);
begin
   if edFolio.Text <> '' then
   begin
      qyBusquedaVenta.Close;
      qyBusquedaVenta.ParamByName('P_FOLIO').AsString    := edFolio.Text;
      qyBusquedaVenta.ParamByName('P_FECHA').AsDate      := StrToDate(FormatDateTime('dd/mm/yyyy',reglas.dame_fecha));
      qyBusquedaVenta.ParamByName('P_CAJA').AsInteger    := CAJA;
      qyBusquedaVenta.ParamByName('P_ALMACEN').AsInteger := ALMACEN;
      qyBusquedaVenta.Open;
      if qyBusquedaVenta.IsEmpty then
      begin
         buReImprimir.Enabled := false;
         showmessage('No se encontro folio');
      end
      else
      begin
         dmIBData.TFiltroMonedas.Filter := 'ID = ' + dsBusquedaVenta.DataSet.FieldByName('MONEDA').AsString;
         MONEDAC := dmIBData.TFiltroMonedas.FieldByName('CLAVE').AsString;
         MONEDAD := dmIBData.TFiltroMonedas.FieldByName('DESCRIPCION').AsString;

         buReImprimir.Enabled := true;
         ID      := dsBusquedaVenta.DataSet.FieldByName('ID').AsInteger;
         TOTAL   := dsBusquedaVenta.DataSet.FieldByName('GRANTOTAL').AsFloat;
      end;
   end
   else
      showmessage('Falta capturar folio');
end;

procedure TPRN_0037.buSalirClick(Sender: TObject);
begin
   Close;
end;

procedure TPRN_0037.edFolioKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
      buExplorar.Click;
end;

end.
