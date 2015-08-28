unit UPRN_0041;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
    Db, IBCustomDataSet, IBQuery;

type
  TPRN_0041 = class(TForm)
    qyPartidasCupon: TIBQuery;
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
  PRN_0041: TPRN_0041;

implementation

uses controladorImpresora, IBModulo, IniFiles, reglas_de_negocios;

{$R *.DFM}

procedure TPRN_0041.setID(valor : integer);
begin
   qyPartidasCupon.Close;
   qyPartidasCupon.ParamByName('P_ID').AsInteger := valor;
   qyPartidasCupon.Open;
end;

procedure TPRN_0041.loadImpresora;
var
   iniFile        : TIniFile;
   strPrinterNom1 : string;
   strPrinterVal1 : string;
   strEscModel1   : string;
begin
   if reglas.activarElegirControladorImpresora('CUPONPAGO') then
   begin
      frmControladorImpresoras := TfrmControladorImpresoras.Create(Application);
      frmControladorImpresoras.BOTON := boCuponPago;
      frmControladorImpresoras.ShowModal;
      frmControladorImpresoras.Destroy;
   end;
   iniFile        := TIniFile.Create(ChangeFileExt(Application.ExeName,'.INI'));
   strPrinterNom1 := iniFile.ReadString('CUPONPAGO','ImpresoraNom1','');
   strPrinterVal1 := iniFile.ReadString('CUPONPAGO','ImpresoraVal1','');
   strEscModel1   := iniFile.ReadString('CUPONPAGO','EscModel1'    ,'');
   strImpresora    := strPrinterNom1;
   strEscImpresora := strEscModel1;
   iniFile.Destroy;
end;

procedure TPRN_0041.FormCreate(Sender: TObject);
var
   SearchRec : TSearchRec;
begin
  loadImpresora;
  //cargar archivo del directorio de reportes
  ruta := ExtractFilePath(ParamStr(0))+'reportes\';
  if FindFirst(ruta+'win_cuponDePagos.prt', faAnyFile, SearchRec) = 0 then
     reporte := 'win_cuponDePagos.prt'
  else
  begin
     ShowMessage( 'No se encontro reporte: win_cuponDePagos.prt');
  end
end;

procedure TPRN_0041.imprimir;
//var
  // prWINReporte : TprReport;
begin
   //impresion WIN
   {
   prWINReporte := TprReport.Create(Self);
   prWINReporte.LoadTemplateFromFile(ruta+reporte,false);
   prWINReporte.PrinterName  := strImpresora;
   prWINReporte.PrepareReport;
   prWINReporte.PrintPreparedReport;
   prWINReporte.Destroy;
   }
end;

end.
