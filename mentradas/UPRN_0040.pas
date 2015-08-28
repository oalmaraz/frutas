unit UPRN_0040;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, IBCustomDataSet,   IBQuery;

type
  TPRN_0040 = class(TForm)
    qyEncPI: TIBQuery;
    qyDetPI: TIBQuery;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    ruta            : string;
    reporte         : string;
    rep_indexado    : string;
    strImpresora    : string;
    strEscImpresora : string;
    procedure loadImpresora;
    procedure setID(valor : integer);
  public
    { Public declarations }
    procedure imprimir;
    procedure imprimirIndexado;
  published
     property ID : integer write setID;
  end;

var
  PRN_0040: TPRN_0040;

implementation

uses IniFiles, controladorImpresora, reglas_de_negocios, IBModulo;

{$R *.DFM}

procedure TPRN_0040.setID(valor : integer);
begin
   qyEncPI.Close;
   qyEncPI.ParamByName('P_ID').AsInteger := valor;
   qyEncPI.Open;
   qyDetPI.Close;
   qyDetPI.ParamByName('P_ID').AsInteger      := valor;
   qyDetPI.ParamByName('P_ENTRADA').AsInteger := qyEncPI.FieldByName('R_ENTRADA').AsInteger;
   qyDetPI.Open;
end;

procedure TPRN_0040.loadImpresora;
var
   iniFile        : TIniFile;
   strPrinterNom1 : string;
   strPrinterVal1 : string;
   strEscModel1   : string;
begin
   if reglas.activarElegirControladorImpresora('PIMPORTACION') then
   begin
      frmControladorImpresoras := TfrmControladorImpresoras.Create(Application);
      frmControladorImpresoras.BOTON := boPIMP;
      frmControladorImpresoras.ShowModal;
      frmControladorImpresoras.Destroy;
   end;
   iniFile        := TIniFile.Create(ChangeFileExt(Application.ExeName,'.INI'));
   strPrinterNom1 := iniFile.ReadString('PIMPORTACION','ImpresoraNom1','');
   strPrinterVal1 := iniFile.ReadString('PIMPORTACION','ImpresoraVal1','');
   strEscModel1   := iniFile.ReadString('PIMPORTACION','EscModel1'    ,'');
   strImpresora    := strPrinterNom1;
   strEscImpresora := strEscModel1;
   iniFile.Destroy;
end;

procedure TPRN_0040.FormCreate(Sender: TObject);
var
   SearchRec : TSearchRec;
begin
  loadImpresora;
  //cargar archivo del directorio de reportes
  ruta := ExtractFilePath(ParamStr(0))+'reportes\';
  if FindFirst(ruta+'win_pimportacion.prt', faAnyFile, SearchRec) = 0 then
     reporte := 'win_pimportacion.prt'
  else
  begin
     ShowMessage('No se encontro reporte: win_pimportacion.prt');
  end;

  if FindFirst(ruta+'win_pimp_indexado.prt', faAnyFile, SearchRec) = 0 then
     rep_indexado := 'win_pimp_indexado.prt'
  else
  begin
     ShowMessage('No se encontro reporte: win_pimp_indexado.prt');
  end
end;

procedure TPRN_0040.imprimir;
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

procedure TPRN_0040.imprimirIndexado;
//var
  // prWINReporte : TprReport;
begin
   //impresion WIN
   {
   prWINReporte := TprReport.Create(Self);
   prWINReporte.LoadTemplateFromFile(ruta+rep_indexado,false);
   prWINReporte.PrinterName  := strImpresora;
   prWINReporte.PrepareReport;
   prWINReporte.PrintPreparedReport;
   prWINReporte.Destroy;
   }
end;

end.
