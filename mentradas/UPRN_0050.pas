unit UPRN_0050;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, IBCustomDataSet,   IBQuery;

type
  TPRN_0050 = class(TForm)
    qyEncReqCot: TIBQuery;
    qyDetReqCot: TIBQuery;
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
  PRN_0050: TPRN_0050;

implementation

uses IniFiles, controladorImpresora, reglas_de_negocios;

{$R *.DFM}

procedure TPRN_0050.setID(valor : integer);
begin
   qyEncReqCot.Close;
   qyEncReqCot.ParamByName('P_ID').AsInteger := valor;
   qyEncReqCot.Open;
   qyDetReqCot.Close;
   qyDetReqCot.ParamByName('P_ID').AsInteger := valor;
   qyDetReqCot.Open;
end;

procedure TPRN_0050.loadImpresora;
var
   iniFile        : TIniFile;
   strPrinterNom1 : string;
   strPrinterVal1 : string;
   strEscModel1   : string;
begin
   if reglas.activarElegirControladorImpresora('REQ_COTIZACION') then
   begin
      frmControladorImpresoras := TfrmControladorImpresoras.Create(Application);
      frmControladorImpresoras.BOTON := boReqCot;
      frmControladorImpresoras.ShowModal;
      frmControladorImpresoras.Destroy;
   end;
   iniFile        := TIniFile.Create(ChangeFileExt(Application.ExeName,'.INI'));
   strPrinterNom1 := iniFile.ReadString('REQ_COTIZACION','ImpresoraNom1','');
   strPrinterVal1 := iniFile.ReadString('REQ_COTIZACION','ImpresoraVal1','');
   strEscModel1   := iniFile.ReadString('REQ_COTIZACION','EscModel1'    ,'');
   strImpresora    := strPrinterNom1;
   strEscImpresora := strEscModel1;
   iniFile.Destroy;
end;

procedure TPRN_0050.imprimir;
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

procedure TPRN_0050.FormCreate(Sender: TObject);
var
   SearchRec : TSearchRec;
begin
  loadImpresora;
  //cargar archivo del directorio de reportes
  ruta := ExtractFilePath(ParamStr(0))+'reportes\';
  if FindFirst(ruta+'win_requisicion_cotizacion.prt', faAnyFile, SearchRec) = 0 then
     reporte := 'win_requisicion_cotizacion.prt';
end;

end.
