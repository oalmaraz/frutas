unit PRN_0034;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  IBModulo, Db, IBCustomDataSet, IBQuery, Grids, DBGrids,
  ExtCtrls, StdCtrls;

type
  TfrmPRN_0034 = class(TForm)
    qyCuponesPVtaEnc: TIBQuery;
    dsCuponesPVtaEnc: TDataSource;
    Label1: TLabel;
    edNombre: TEdit;
    qyActulizar: TIBQuery;
    fcLogo: TImage;
    edTelefono: TEdit;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure edNombreKeyPress(Sender: TObject; var Key: Char);
    procedure edTelefonoKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    awrFolio : integer;
    ruta            : string;
    reporte         : string;
    strImpresora    : string;
    strImpresoraVal : string;
    strEscImpresora : string;
    strModo         : string;
    awrPedir        : boolean;
    function getVACIO : Boolean;

    procedure setFOLIO(valor : integer);
    procedure loadImpresora;
    procedure setPedir(valor : boolean);
  public
    { Public declarations }
    procedure Imprimir;
  published
     property FOLIO   : integer read awrFolio write setFOLIO;
     property VACIO   : Boolean read getVACIO;
     property PEDIR   : Boolean read awrPedir write setPedir;
  end;

{var
  frmPRN_0034: TfrmPRN_0034;
}

implementation

uses controladorImpresora, iniFiles, reglas_de_negocios;

{$R *.DFM}

procedure TfrmPRN_0034.setPedir(valor : boolean);
begin
   awrPEDIR := valor;
   if valor then
   begin
      Self.ShowModal;
   end;
end;

procedure TfrmPRN_0034.loadImpresora;
var
   iniFile : TIniFile;
begin
   if reglas.activarElegirControladorImpresora('CUPONES') then
   begin
      frmControladorImpresoras := TfrmControladorImpresoras.Create(Application);
      frmControladorImpresoras.BOTON := boCupones;
      frmControladorImpresoras.ShowModal;
      frmControladorImpresoras.Destroy;
   end;
   iniFile         := TIniFile.Create(ChangeFileExt(Application.ExeName,'.INI'));
   strImpresora    := iniFile.ReadString('CUPONES','ImpresoraNom1','');
   strImpresoraVal := iniFile.ReadString('CUPONES','ImpresoraVal1','');
   strEscImpresora := iniFile.ReadString('CUPONES','EscModel1'    ,'');
   strModo         := iniFile.ReadString('CUPONES','Modo','');
   iniFile.Destroy;
end;

function TfrmPRN_0034.getVACIO : Boolean;
begin
   if dsCuponesPVtaEnc.DataSet.FieldByName('R_ID').AsString <> '' then
      Result := FALSE
   else
      Result := TRUE;
end;

procedure TfrmPRN_0034.setFOLIO(valor : integer);
begin
   awrFolio := valor;
   qyCuponesPVtaEnc.Close;
   qyCuponesPVtaEnc.ParamByName('P_PVTA').AsInteger              := valor;
   qyCuponesPVtaEnc.ParamByName('P_CANTIDAD_CON_LETRA').AsString := 'verificando que exista';
   qyCuponesPVtaEnc.Open;
end;

procedure TfrmPRN_0034.Imprimir;
var
 //  prWINReporte : TprReport;
   enteroStr    : string;
   fracStr      : string;
   moneda       : string;
   moneda_clave : string;
   importe      : double;

begin
{
   importe      := dsCuponesPVtaEnc.DataSet.FieldByName('R_IMPORTE').AsFloat;
   moneda       := dsCuponesPVtaEnc.DataSet.FieldByName('R_MONEDA_DESCRIPCION').AsString;
   moneda_clave := dsCuponesPVtaEnc.DataSet.FieldByName('R_MONEDA_CLAVE').AsString;
   reglas.separarFlotante(importe, enteroStr, fracStr);
   leCantidad.Numero := StrToInt(enteroStr);
   leCantidad.Moneda := moneda;

   qyCuponesPVtaEnc.Close;
   qyCuponesPVtaEnc.ParamByName('P_PVTA').AsInteger              := FOLIO;
   qyCuponesPVtaEnc.ParamByName('P_CANTIDAD_CON_LETRA').AsString := UpperCase(leCantidad.AsString + ' ' + fracStr + '/100 ' + moneda_clave);
   qyCuponesPVtaEnc.Open;

   //impresion WIN
   prWINReporte := TprReport.Create(Self);
   prWINReporte.LoadTemplateFromFile(ruta+reporte,false);
   prWINReporte.PrinterName  := strImpresora;
   prWINReporte.PrepareReport;
   prWINReporte.PrintPreparedReport;
   prWINReporte.Destroy;
   }
end;

procedure TfrmPRN_0034.FormCreate(Sender: TObject);
var
   SearchRec : TSearchRec;
begin
   loadImpresora;
   //cargar archivo del directorio de reportes
   ruta := ExtractFilePath(ParamStr(0))+'reportes\';
   if FindFirst(ruta+'win_cupon.prt', faAnyFile, SearchRec) = 0 then
      reporte := 'win_cupon.prt';
end;

procedure TfrmPRN_0034.edNombreKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   begin
      if edNombre.Text <> '' then
      begin
         qyActulizar.ParamByName('P_ID').AsInteger      := qyCuponesPVtaEnc.FieldByName('R_ID').AsInteger;
         qyActulizar.ParamByName('P_TELEFONO').AsString := edTelefono.Text;
         qyActulizar.ParamByName('P_NOMBRE').AsString   := edNombre.Text;
         qyActulizar.ExecSQL;
         qyActulizar.Transaction.CommitRetaining;
      end;
      Close;
   end;
end;

procedure TfrmPRN_0034.edTelefonoKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
      edNombre.SetFocus;
end;

end.
