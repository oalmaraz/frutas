unit PRN_0023_Lista_Precios;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  padre, jpeg,  ExtCtrls,
        StdCtrls, Db,
  IBCustomDataSet, IBQuery,  Grids, DBGrids,
   ComCtrls, Buttons, DBCtrls;

type
  TfrmPRN_0023_Lista_Precios = class(TfrmPadre)
    Label3: TLabel;
    ibImprimir: TBitBtn;
    ibCerrar: TBitBtn;
    cbGrupoListaPrecios: TDBLookupComboBox;
    Label1: TLabel;
    dsNombreListaPrecios: TDataSource;
    qyListaPreciosPartidas: TIBQuery;
    qyNombreListaPrecios: TIBQuery;
    qyNombreListaPreciosID: TIntegerField;
    qyNombreListaPreciosDESCRIPCION: TIBStringField;
    qyNombreListaPreciosVIGENCIA_DIAS: TIntegerField;
    qyNombreListaPreciosfecha: TDateField;
    dsListaPreciosPartidas: TDataSource;
    qyNombreListaPreciosfecha_actual: TDateField;
    qyListaPreciosPartidasR_MATERIAL_CLAVE: TIBStringField;
    qyListaPreciosPartidasR_MATERIAL_DESCRIPCION: TIBStringField;
    qyListaPreciosPartidasR_MATERIAL_UNIDAD_DESC: TIBStringField;
    qyListaPreciosPartidasR_PRECIO_MINIMO: TFloatField;
    qyListaPreciosPartidasR_PRECIO_MAXIMO: TFloatField;
    deFecha: TDateTimePicker;
    procedure FormCreate(Sender: TObject);
    procedure qyNombreListaPreciosCalcFields(DataSet: TDataSet);
    procedure qyNombreListaPreciosAfterOpen(DataSet: TDataSet);
    procedure deFechaDateChange(Sender: TObject);
    procedure ibImprimirClick(Sender: TObject);
  private
    { Private declarations }
    ruta            : string;
    reporte         : string;
    strImpresora    : string;
    strEscImpresora : string;
    procedure loadImpresora;
  public
    { Public declarations }
    constructor Crear(AOwner : TComponent; pGrupo : integer; pX : TPoint);
  end;

var
  frmPRN_0023_Lista_Precios: TfrmPRN_0023_Lista_Precios;

implementation

uses IniFiles, IBModulo, reglas_de_negocios, controladorImpresora;

{$R *.DFM}

procedure TfrmPRN_0023_Lista_Precios.loadImpresora;
var
   iniFile        : TIniFile;
   strPrinterNom1 : string;
   strPrinterVal1 : string;
   strEscModel1   : string;
begin
   if reglas.activarElegirControladorImpresora('LISTA_DE_PRECIOS') then
   begin
      frmControladorImpresoras := TfrmControladorImpresoras.Create(Application);
      frmControladorImpresoras.BOTON := boLPrecios;
      frmControladorImpresoras.ShowModal;
      frmControladorImpresoras.Free;
   end;
   iniFile        := TIniFile.Create(ChangeFileExt(Application.ExeName,'.INI'));
   strPrinterNom1 := iniFile.ReadString('LISTA_DE_PRECIOS','ImpresoraNom1','');
   strPrinterVal1 := iniFile.ReadString('LISTA_DE_PRECIOS','ImpresoraVal1','');
   strEscModel1   := iniFile.ReadString('LISTA_DE_PRECIOS','EscModel1'    ,'');
   strImpresora    := strPrinterNom1;
   strEscImpresora := strEscModel1;
   iniFile.Free;
end;

constructor TfrmPRN_0023_Lista_Precios.Crear(AOwner : TComponent; pGrupo : integer; pX : TPoint);
begin
   Create(AOwner);
   Self.Left := pX.x;
   Self.Top  := pX.y;
   qyNombreListaPrecios.Locate('ID',pGrupo,[loCaseInsensitive]);
end;

procedure TfrmPRN_0023_Lista_Precios.FormCreate(Sender: TObject);
var
  SearchRec : TSearchRec;
begin
  loadImpresora;
  inherited;
  //cargar archivo del directorio de reportes
  ruta := ExtractFilePath(ParamStr(0))+'reportes\';
  if FindFirst(ruta+'listaPrecios.prt', faAnyFile, SearchRec) = 0 then
  begin
     reporte := 'listaPrecios.prt';
  end;
  deFecha.Date := reglas.dame_fecha;
  reglas.refresh_IBQuery(qyNombreListaPrecios);
end;

procedure TfrmPRN_0023_Lista_Precios.qyNombreListaPreciosCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FECHA').AsString        := FormatDateTime('dd/mm/yyyy',deFecha.Date);
  DataSet.FieldByName('FECHA_ACTUAL').AsString := FormatDateTime('dd/mm/yyyy',reglas.dame_fecha);
end;

procedure TfrmPRN_0023_Lista_Precios.qyNombreListaPreciosAfterOpen(
  DataSet: TDataSet);
begin
  inherited;
  reglas.refresh_IBQuery(qyListaPreciosPartidas);
end;

procedure TfrmPRN_0023_Lista_Precios.deFechaDateChange(Sender: TObject);
var
   pID : integer;
begin
  inherited;
  if qyNombreListaPrecios.State <> dsInactive then
  begin
     pID := qyNombreListaPrecios.FieldByName('ID').AsInteger;
     reglas.refresh_IBQuery(qyNombreListaPrecios);
     qyNombreListaPrecios.Locate('ID',pID,[loCaseInsensitive]);
  end;
end;

procedure TfrmPRN_0023_Lista_Precios.ibImprimirClick(Sender: TObject);
{
var
   prReporte : TprTxReport;
}
begin
  inherited;
{
  //impresion
  prReporte := TprTxReport.Create(Self);
  prReporte.LoadTemplateFromFile(ruta+reporte,false);
  prReporte.PrinterName  := strImpresora;
  prReporte.ESCModelName := strEscImpresora;
  prReporte.PrepareReport;
//  prReporte.PreviewPreparedReport(true);
  prReporte.PrintPreparedReport;
  prReporte.Free;
  }
end;

end.
