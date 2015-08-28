unit PRN_0028;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
      StdCtrls,   Db,
  IBCustomDataSet, IBQuery,   Grids, DBGrids, Buttons;

type
  TfrmPRN_0028 = class(TForm)
    Label1: TLabel;
    cePosicion: TEdit;
    cbTodo: TCheckBox;
    ceCuantas: TEdit;
    laCuantas: TLabel;
    ibCerrar: TBitBtn;
    ibImpresion: TBitBtn;
    qyGEFacturas: TIBQuery;
    edTotal: TEdit;
    Label2: TLabel;
    procedure cbTodoChange(Sender: TObject);
    procedure ibImpresionClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    factura         : integer;
    ruta            : string;
    reporte         : string;
    strImpresora    : string;
    strEscImpresora : string;
    procedure loadImpresora;
  public
    { Public declarations }
    constructor crear(AOwner : TComponent; pFactura : integer; pTotal : double);
    procedure imprimir;
  end;

var
  frmPRN_0028: TfrmPRN_0028;

implementation

uses IBModulo, controladorImpresora, iniFiles, reglas_de_negocios;

{$R *.DFM}

constructor TfrmPRN_0028.crear(AOwner : TComponent; pFactura : integer; pTotal : double);
begin
   Create(AOwner);
   factura := pFactura;
   edTotal.Text := FloatToStr(pTotal);
end;

procedure TfrmPRN_0028.imprimir;
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

procedure TfrmPRN_0028.loadImpresora;
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
      frmControladorImpresoras.Destroy;
   end;
   iniFile        := TIniFile.Create(ChangeFileExt(Application.ExeName,'.INI'));
   strPrinterNom1 := iniFile.ReadString('FACTURAS','ImpresoraNom1','');
   strPrinterVal1 := iniFile.ReadString('FACTURAS','ImpresoraVal1','');
   strEscModel1   := iniFile.ReadString('FACTURAS','EscModel1'    ,'');
   strImpresora    := strPrinterNom1;
   strEscImpresora := strEscModel1;
   iniFile.Destroy;
end;

procedure TfrmPRN_0028.cbTodoChange(Sender: TObject);
begin
   laCuantas.Visible := not(cbTodo.Checked);
   ceCuantas.Visible := not(cbTodo.Checked);
   if ceCuantas.Visible then
      ceCuantas.SetFocus;
end;

procedure TfrmPRN_0028.ibImpresionClick(Sender: TObject);
var
   todo : string;
begin
   if cbTodo.Checked then
      todo := 'Si'
   else
      todo := 'No';
   qyGEFacturas.Close;
   qyGEFacturas.ParamByName('P_FACTURA').AsInteger  := factura;
   qyGEFacturas.ParamByName('P_POSICION').AsInteger := StrToInt(cePosicion.Text);
   qyGEFacturas.ParamByName('P_TODO').AsString      := todo;
   qyGEFacturas.ParamByName('P_CUANTAS').AsInteger  := StrToInt(ceCuantas.Text);
   qyGEFacturas.ParamByName('P_TOTAL').AsFloat      := StrToFloat(edTotal.Text);
   qyGEFacturas.Open;
   imprimir;
end;

procedure TfrmPRN_0028.FormCreate(Sender: TObject);
var
   SearchRec : TSearchRec;
begin
   loadImpresora;
   //cargar archivo del directorio de reportes
   ruta := ExtractFilePath(ParamStr(0))+'reportes\';
   if FindFirst(ruta+'win_guiaEmbarqueFactura.prt', faAnyFile, SearchRec) = 0 then
      reporte := 'win_guiaEmbarqueFactura.prt';
end;

end.
