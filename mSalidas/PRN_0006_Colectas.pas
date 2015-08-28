unit PRN_0006_Colectas;

interface
                  
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  padre, jpeg, Buttons, ComCtrls, Db, IBQuery, IBCustomDataSet, IBTable,
  StdCtrls, DBCtrls, ExtCtrls;

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

  TfrmPRN_0006 = class(TfrmPadre)
    TCajas: TIBTable;
    TCajasID: TIntegerField;
    TCajasNOMBRE: TIBStringField;
    TCajasALMACEN: TIntegerField;
    TCajasUSUARIO: TIntegerField;
    TCajasTIPO_DE_CAJA: TIBStringField;
    TCajasESTATUS: TIBStringField;
    TCajasMODULO_FUNCION: TIntegerField;
    dsCajas: TDataSource;
    qyAlmacenes: TIBQuery;
    qyAlmacenesID: TIntegerField;
    qyAlmacenesCLAVE: TIBStringField;
    qyAlmacenesNOMBRE: TIBStringField;
    qyAlmacenesCOMPRA: TIBStringField;
    qyAlmacenesVENDE: TIBStringField;
    qyAlmacenesTRANSFORMA: TIBStringField;
    qyAlmacenesFECHA_ALTA: TDateTimeField;
    qyAlmacenesRESPONSABLE: TIntegerField;
    qyAlmacenesOBSERVACIONES: TBlobField;
    qyAlmacenesSERIE_FACTURA: TIBStringField;
    qyAlmacenesCONSECUTIVO: TIntegerField;
    qyAlmacenesFECHA_ULT_INV: TDateTimeField;
    qyAlmacenesESTATUS: TIBStringField;
    dsAlmacenes: TDataSource;
    Label3: TLabel;
    deFecha: TDateTimePicker;
    Label2: TLabel;
    cbCajas: TDBLookupComboBox;
    cbAlmacenes: TDBLookupComboBox;
    sbSinCaja: TBitBtn;
    Label1: TLabel;
    ibImprimir: TBitBtn;
    qyColectas: TIBQuery;
    dsColectas: TDataSource;
    qyColectasR_ID: TIntegerField;
    qyColectasR_FECHA: TDateTimeField;
    qyColectasR_CAJA: TIntegerField;
    qyColectasR_CAJA_NOMBRE: TIBStringField;
    qyColectasR_ALMACEN: TIntegerField;
    qyColectasR_ALMACEN_NOMBRE: TIBStringField;
    qyColectasR_USUARIO: TIntegerField;
    qyColectasR_USUARIO_NOMBRE: TIBStringField;
    qyColectasR_REFERENCIA: TIBStringField;
    qyColectasR_TOTAL: TFloatField;
    qyColectasR_ID_DETALLE: TIntegerField;
    qyColectasR_REFERENCIA_PAGO: TIntegerField;
    qyColectasR_REFERENCIA_NOMBRE: TIBStringField;
    qyColectasR_CANTIDAD: TIntegerField;
    qyColectasR_MONTO: TFloatField;
    qyColectasR_TOTAL_DETALLE: TFloatField;
    qyColectasR_REFERENCIA_DETALLE: TIBStringField;
    qyColectasR_BANCO: TIntegerField;
    qyColectasR_BANCO_NOMBRE: TIBStringField;
    qyColectasR_ESTATUS: TIBStringField;
    ibCerrar: TBitBtn;
    qyEmpresa: TIBQuery;
    qyEmpresaR_CLAVE: TIBStringField;
    qyEmpresaR_NOMBRE: TIBStringField;
    qyEmpresaR_RAZON_SOCIAL: TIBStringField;
    qyEmpresaR_TELEFONO: TIBStringField;
    qyEmpresaR_RFC: TIBStringField;
    qyEmpresaR_CURP: TIBStringField;
    qyColecta: TIBQuery;
    procedure sbSinCajaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ibImprimirClick(Sender: TObject);
  private
    { Private declarations }
    //Impresiones
    print1     : TImpresion;
    printC     : TImpresionComun;
    awrRuta    : string;
    awrReporte : string;
    awrID      : integer;

    procedure loadImpresora;
  public
    { Public declarations }
    constructor Crear(AOwner : TComponent; p_caja, p_almacen : integer);
    procedure imprimir;
    function OpenReporte : Boolean;
  published
     property ID : integer read awrID write awrID;
  end;

var
  frmPRN_0006: TfrmPRN_0006;

implementation

uses IniFiles, reglas_de_negocios, IBModulo, controladorImpresora;

{$R *.DFM}

procedure TfrmPRN_0006.loadImpresora;
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
   //comun
   v_Modo          : string;

begin
   if reglas.activarElegirControladorImpresora('PVENTA') then
   begin
      frmControladorImpresoras := TfrmControladorImpresoras.Create(Application);
      frmControladorImpresoras.BOTON := boPVenta;
      frmControladorImpresoras.ShowModal;
      frmControladorImpresoras.Free;
   end;
   iniFile        := TIniFile.Create(ChangeFileExt(Application.ExeName,'.INI'));
   v_ImpresoraNom1 := iniFile.ReadString('PVENTA','ImpresoraNom1','');
   v_ImpresoraVal1 := iniFile.ReadString('PVENTA','ImpresoraVal1','');
   v_EscModel1     := iniFile.ReadString('PVENTA','EscModel1',    '');
   v_Cajon1        := iniFile.ReadString('PVENTA','Cajon1',       '');
   v_Puerto1       := iniFile.ReadString('PVENTA','Puerto1',      '');
   v_Caracteres1   := iniFile.ReadString('PVENTA','Caracteres1',  '');
   v_Cutter1       := iniFile.ReadString('PVENTA','Cutter1',      '');
   v_AutoCutter1   := iniFile.ReadString('PVENTA','AutoCutter1',  '');
   v_Modo          := iniFile.ReadString('PVENTA','Modo',         '');
   iniFile.Free;

   //cargar valores en print1
   print1.impresora       := v_ImpresoraNom1;
   print1.escImpresora    := v_EscModel1;
   print1.idImpresora     := StrtoInt(v_ImpresoraVal1);
   print1.cajon           := v_Cajon1;
   print1.puerto          := v_Puerto1;
   print1.caracteres      := v_Caracteres1;
   print1.cutter          := v_Cutter1;
   print1.autoCutter      := v_AutoCutter1;
   printC.modo            := v_Modo;
end;

function TfrmPRN_0006.OpenReporte : Boolean;
var
   rsp : boolean;
begin
   if printC.modo = 'WIN' then
      awrReporte := '\reportes\win_colectas.prt' //<-Modo windows
   else
   if printC.modo = 'DOS' then
      awrReporte := '\reportes\dos_colectas.prt'; //<-Modo texto

   rsp := FileExists(awrRuta+awrReporte);
   if not(rsp) then
      ShowMessage('Falta archivo: '+awrReporte)
   else
   begin
      qyColecta.Close;
      qyColecta.ParamByName('P_ID').AsInteger := awrID;
      qyColecta.Open;
   end;

   result := rsp;
end;

procedure TfrmPRN_0006.imprimir;
begin
   {
   if printC.modo = 'DOS' then
   begin
      prDos := TprTxReport.Create(Self);
      try
         prDos.LoadTemplateFromFile(awrRuta+awrReporte,false);
         prDos.PrinterName  := print1.impresora;
         prDOS.ESCModelName := print1.escImpresora;
         prDos.PrepareReport;
         prDos.PrintPreparedReport;
      finally
         prDos.Free;
      end;
   end
   else
   if printC.modo = 'WIN' then
   begin
      prWIN := TprReport.Create(Self);
      try
         prWIN.LoadTemplateFromFile(awrRuta+awrReporte,false);
         prWIN.PrinterName  := print1.impresora;
         prWIN.PrepareReport;
         prWIN.PrintPreparedReport;
      finally
         prWIN.Free;
      end;
   end;
   }
end;

constructor TfrmPRN_0006.Crear(AOwner : TComponent; p_caja, p_almacen : integer);
begin
   Create(AOwner);
   deFecha.Date         := StrToDate(FormatDateTime('dd/mm/yyyy',reglas.dame_fecha));
   cbCajas.KeyValue     := p_caja;
   cbAlmacenes.KeyValue := p_almacen;
end;

procedure TfrmPRN_0006.sbSinCajaClick(Sender: TObject);
begin
  inherited;
  cbCajas.KeyValue := 0;
end;

procedure TfrmPRN_0006.FormCreate(Sender: TObject);
begin
  inherited;
  awrRuta := ExtractFilePath(ParamStr(0));

  loadImpresora;

  reglas.refresh_IBQuery(qyEmpresa);
  reglas.abrir_IBTabla(TCajas);
  reglas.abrir_IBQuery(qyAlmacenes);
end;

procedure TfrmPRN_0006.ibImprimirClick(Sender: TObject);
var
   caja    : integer;
begin
  caja := 0;
  inherited;
  if cbCajas.Text <> '' then
  begin
     caja            := cbCajas.KeyValue;
//     laCajas.Caption := cbCajas.Text;
  end
  else
  begin
  //   laCajas.Caption  := 'Todas';
  end;
  qyColectas.Close;
  qyColectas.ParamByName('P_FECHA').AsString    := FormatDateTime('dd/mm/yyyy',deFecha.Date);
  qyColectas.ParamByName('P_CAJA').AsInteger    := caja;
  qyColectas.ParamByName('P_ALMACEN').AsInteger := cbAlmacenes.KeyValue;
  qyColectas.Open;

//  qrColectas.PreviewModal;
end;



end.
