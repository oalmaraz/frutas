unit UPRN_0039;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   Db, IBCustomDataSet, IBQuery;

type
  TPRN_0039 = class(TForm)
    qyEncReq: TIBQuery;
    qyDetReq: TIBQuery;
    qyEncReqR_EMPRESA_CLAVE: TIBStringField;
    qyEncReqR_EMPRESA_NOMBRE: TIBStringField;
    qyEncReqR_EMPRESA_RAZON_SOCIAL: TIBStringField;
    qyEncReqR_EMPRESA_FACTURAR: TIBStringField;
    qyEncReqR_EMPRESA_RFC: TIBStringField;
    qyEncReqR_EMPRESA_CURP: TIBStringField;
    qyEncReqR_EMPRESA_TELEFONO1: TIBStringField;
    qyEncReqR_EMPRESA_TELEFONO2: TIBStringField;
    qyEncReqR_EMPRESA_CALLE: TIBStringField;
    qyEncReqR_EMPRESA_ENTRE_CALLE: TIBStringField;
    qyEncReqR_EMPRESA_Y_CALLE: TIBStringField;
    qyEncReqR_EMPRESA_NUM_EXT: TIBStringField;
    qyEncReqR_EMPRESA_NUM_INT: TIBStringField;
    qyEncReqR_EMPRESA_LETRA: TIBStringField;
    qyEncReqR_EMPRESA_CP: TIBStringField;
    qyEncReqR_EMPRESA_COLONIA: TIBStringField;
    qyEncReqR_EMPRESA_CIUDAD: TIBStringField;
    qyEncReqR_ID: TIntegerField;
    qyEncReqR_CLAVE: TIBStringField;
    qyEncReqR_DEPARTAMENTO: TIntegerField;
    qyEncReqR_DEPARTAMENTO_CLAVE: TIBStringField;
    qyEncReqR_DEPARTAMENTO_DESCRIPCION: TIBStringField;
    qyEncReqR_USUARIO: TIntegerField;
    qyEncReqR_USUARIO_NOMBRE: TIBStringField;
    qyEncReqR_PRESUPUESTADO: TIBStringField;
    qyEncReqR_PRIORIDAD: TIBStringField;
    qyEncReqR_FECHA_ENTREGA: TDateTimeField;
    qyEncReqR_ORDEN_COMPRA: TIntegerField;
    qyEncReqR_FECHA_ALTA: TDateTimeField;
    qyEncReqR_ESTATUS: TIBStringField;
    qyDetReqR_ID: TIntegerField;
    qyDetReqR_REQUISICION: TIntegerField;
    qyDetReqR_MATERIAL: TIntegerField;
    qyDetReqR_CLAVE: TIBStringField;
    qyDetReqR_DESCRIPCION: TIBStringField;
    qyDetReqR_UNIDAD: TIntegerField;
    qyDetReqR_DESCRIPCION_UNIDAD: TIBStringField;
    qyDetReqR_CANTIDAD: TFloatField;
    qyDetReqR_ESTATUS: TIBStringField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    ruta            : string;
    reporte         : string;
    strImpresora    : string;
    strEscImpresora : string;
    procedure loadImpresora;
    procedure setID(valor : integer);
  public
    { Public declarations }
    procedure imprimir;
  published
     property ID : integer write setID;
  end;

var
  PRN_0039: TPRN_0039;

implementation

uses IniFiles, controladorImpresora, reglas_de_negocios;

{$R *.DFM}

procedure TPRN_0039.setID(valor : integer);
begin
   qyEncReq.Close;
   qyEncReq.ParamByName('P_ID').AsInteger := valor;
   qyEncReq.Open;
   qyDetReq.Close;
   qyDetReq.ParamByName('P_ID').AsInteger := valor;
   qyDetReq.Open;
end;

procedure TPRN_0039.loadImpresora;
var
   iniFile        : TIniFile;
   strPrinterNom1 : string;
   strPrinterVal1 : string;
   strEscModel1   : string;
begin
   if reglas.activarElegirControladorImpresora('REQUISICIONES') then
   begin
      frmControladorImpresoras := TfrmControladorImpresoras.Create(Application);
      frmControladorImpresoras.BOTON := boReq;
      frmControladorImpresoras.ShowModal;
      frmControladorImpresoras.Destroy;
   end;
   iniFile        := TIniFile.Create(ChangeFileExt(Application.ExeName,'.INI'));
   strPrinterNom1 := iniFile.ReadString('REQUISICIONES','ImpresoraNom1','');
   strPrinterVal1 := iniFile.ReadString('REQUISICIONES','ImpresoraVal1','');
   strEscModel1   := iniFile.ReadString('REQUISICIONES','EscModel1'    ,'');
   strImpresora    := strPrinterNom1;
   strEscImpresora := strEscModel1;
   iniFile.Destroy;
end;

procedure TPRN_0039.FormCreate(Sender: TObject);
var
   SearchRec : TSearchRec;
begin
  loadImpresora;
  //cargar archivo del directorio de reportes
  ruta := ExtractFilePath(ParamStr(0))+'reportes\';
  if FindFirst(ruta+'win_requisiciones.prt', faAnyFile, SearchRec) = 0 then
     reporte := 'win_requisiciones.prt';
end;

procedure TPRN_0039.imprimir;
//var
//   prWINReporte : TprReport;
begin
{
   //impresion WIN
   prWINReporte := TprReport.Create(Self);
   prWINReporte.LoadTemplateFromFile(ruta+reporte,false);
   prWINReporte.PrinterName  := strImpresora;
   prWINReporte.PrepareReport;
   prWINReporte.PrintPreparedReport;
   prWINReporte.Destroy;
   }
end;

end.
