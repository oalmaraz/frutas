unit PRN_0032;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, IBCustomDataSet,   IBQuery, Grids, DBGrids,
  IBStoredProc;

type
  TfrmPRN_0032 = class(TForm)
    qyNEEnc: TIBQuery;
    qyNEDet: TIBQuery;
    qyVerificarFolio: TIBQuery;
    qyVerificarFolioR_ACEPTADO: TIBStringField;
    spAUTO_FOLIO: TIBStoredProc;
    spMODIFICAR_FOLIO: TIBStoredProc;
    spACTUALIZA_MI_ORIGEN: TIBStoredProc;
    qyActulizar: TIBQuery;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    ruta            : string;
    reporte         : string;
    strImpresora    : string;
    strEscImpresora : string;
    pedirFolio      : boolean;
    procedure loadImpresora;
  public
    { Public declarations }
    procedure imprimir;
    procedure preview;
    constructor CrearA(AOwner : TComponent; p_id : integer; abrir : boolean);
  end;

var
  frmPRN_0032: TfrmPRN_0032;

implementation

uses controladorImpresora, iniFiles, reglas_de_negocios, UfrmFolio;

{$R *.DFM}

constructor TfrmPRN_0032.CrearA(AOwner : TComponent; p_id : integer; abrir : boolean);
var
   SearchRec : TSearchRec;
begin
   Create(AOwner);
   pedirFolio := true;

   if abrir then
   begin
      qyNEEnc.Close;
      qyNEEnc.ParamByName('P_ID').AsInteger := p_id;
      qyNEEnc.Open;

      qyNEDet.Close;
      qyNEDet.ParamByName('P_ID').AsInteger := p_id;
      qyNEDet.Open;
   end;
   //cargar archivo del directorio de reportes
   ruta := ExtractFilePath(ParamStr(0))+'reportes\';
   if qyNEEnc.FieldByName('R_ORDEN_COMPRA').AsInteger <> -3 then
   begin
      if FindFirst(ruta+'win_notasDeEntradaCompras.prt', faAnyFile, SearchRec) = 0 then
         reporte := 'win_notasDeEntradaCompras.prt';
   end
   else
      begin
         if FindFirst(ruta+'win_notasDeEntradaServicios.prt', faAnyFile, SearchRec) = 0 then
            reporte := 'win_notasDeEntradaServicios.prt';
      end;
end;

procedure TfrmPRN_0032.loadImpresora;
var
   iniFile        : TIniFile;
   strPrinterNom1 : string;
   strPrinterVal1 : string;
   strEscModel1   : string;
begin
   if reglas.activarElegirControladorImpresora('NOTAS_DE_ENTRADA') then
   begin
      frmControladorImpresoras := TfrmControladorImpresoras.Create(Application);
      frmControladorImpresoras.BOTON := boNE;
      frmControladorImpresoras.ShowModal;
      frmControladorImpresoras.Destroy;
   end;
   iniFile        := TIniFile.Create(ChangeFileExt(Application.ExeName,'.INI'));
   strPrinterNom1 := iniFile.ReadString('NOTAS_DE_ENTRADA','ImpresoraNom1','');
   strPrinterVal1 := iniFile.ReadString('NOTAS_DE_ENTRADA','ImpresoraVal1','');
   strEscModel1   := iniFile.ReadString('NOTAS_DE_ENTRADA','EscModel1'    ,'');
   strImpresora    := strPrinterNom1;
   strEscImpresora := strEscModel1;
   iniFile.Destroy;
end;

procedure TfrmPRN_0032.preview;
//var
  // prWINReporte : TprReport;
begin
{
   prWINReporte := TprReport.Create(Self);
   prWINReporte.LoadTemplateFromFile(ruta+reporte,false);
   prWINReporte.PrinterName  := strImpresora;
   prWINReporte.PrepareReport;
   prWINReporte.PreviewPreparedReport(true);
   prWINReporte.Destroy;
   }
end;

procedure TfrmPRN_0032.imprimir;
var
   //prWINReporte : TprReport;
   salir      : boolean;
   _mr        : boolean;
   _folio     : integer;
begin
   repeat
      salir := true;
      spAUTO_FOLIO.ParamByName('P_AFECTAR').AsString  := 'No';
      spAUTO_FOLIO.ExecProc;
      spAUTO_FOLIO.Transaction.CommitRetaining;

      try
         frmFolio        := TfrmFolio.Create(Application);
         frmFolio.Titulo := 'Entradas/Servicios';
         frmFolio.Folio  := spAUTO_FOLIO.ParamByName('R_FOLIO').AsInteger;
         frmFolio.ShowModal;
         _mr    := frmFolio.ModalResult;
         _folio := frmFolio.Folio;
      finally
         frmFolio.Free;
      end;

      if (_mr) and (_folio <> 0) then
      begin
         qyVerificarFolio.Close;
         qyVerificarFolio.ParamByName('P_ID').AsInteger      := qyNEEnc.FieldByName('R_ID').AsInteger;
         qyVerificarFolio.ParamByName('P_FOLIO').AsInteger   := _folio;
         qyVerificarFolio.Open;
         salir := (qyVerificarFolio.FieldByName('R_ACEPTADO').AsString = 'Si');
         if qyVerificarFolio.FieldByName('R_ACEPTADO').AsString = 'No' then
         begin
           ShowMessage('Ya se encuentra este folio.+#13+Capturar otro folio.');
         end

      end;
   until salir;

   if (_mr) and (_folio <> 0) then
   begin
      //se actualiza el folio, si es diferente al que el sistema asigno, para que coincida con el de su consecutivo
      if _folio <> spAUTO_FOLIO.ParamByName('R_FOLIO').AsInteger then
      begin
         spMODIFICAR_FOLIO.ParamByName('P_MODULO').AsInteger      := 16;
         spMODIFICAR_FOLIO.ParamByName('P_SUBCLASE').AsInteger    := 0;
         spMODIFICAR_FOLIO.ParamByName('P_CONSECUTIVO').AsInteger := _folio;
         spMODIFICAR_FOLIO.ExecProc;
         spMODIFICAR_FOLIO.Transaction.CommitRetaining;
      end;
      spAUTO_FOLIO.ParamByName('P_AFECTAR').AsString  := 'Si';
      spAUTO_FOLIO.ExecProc;
      spAUTO_FOLIO.Transaction.CommitRetaining;
   end;

   if (_mr) and (_folio <> 0) then
   begin
      qyActulizar.ParamByName('P_ID').AsInteger    := qyNEEnc.FieldByName('R_ID').AsInteger;
      qyActulizar.ParamByName('P_FOLIO').AsInteger := _folio;
      qyActulizar.ExecSQL;
      qyActulizar.Transaction.CommitRetaining;
      reglas.refresh_IBQuery(qyNEEnc);

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
end;

procedure TfrmPRN_0032.FormCreate(Sender: TObject);
begin
   loadImpresora;
end;

end.
