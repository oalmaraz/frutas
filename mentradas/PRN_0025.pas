unit PRN_0025;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, IBCustomDataSet, IBQuery,  ExtCtrls,
   Grids, DBGrids,  IBStoredProc;

type
  TfrmPRN_0025 = class(TForm)
    qyEncabezadoOC: TIBQuery;
    qyPartidasOC: TIBQuery;
    qyPartidas_OC_L: TIBQuery;
    spAUTO_FOLIO: TIBStoredProc;
    qyVerificarFolio: TIBQuery;
    qyVerificarFolioR_ACEPTADO: TIBStringField;
    spMODIFICAR_FOLIO: TIBStoredProc;
    qyActulizar: TIBQuery;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    awrID           : integer;
    ruta            : string;
    reporte         : string;
    strImpresora    : string;
    strEscImpresora : string;
    impresiones     : integer;
    procedure loadImpresora;
  public
    { Public declarations }
    procedure Open;
    procedure OpenMedidas;
    procedure OpenEspecificaciones;
    procedure imprimir;
    procedure preview;
    procedure print;
  published
     property ID : integer read awrID write awrID;
  end;

var
  frmPRN_0025: TfrmPRN_0025;

implementation

uses IBModulo, controladorImpresora, iniFiles, reglas_de_negocios, IBData,
  UfrmFolio;

{$R *.DFM}

procedure TfrmPRN_0025.OpenEspecificaciones;
var
   SearchRec : TSearchRec;
   archivo : string;
begin
   qyEncabezadoOC.Close;
   qyEncabezadoOC.ParamByName('P_ID').AsInteger := ID;
   qyEncabezadoOC.Open;

   qyPartidasOC.Close;
   qyPartidasOC.ParamByName('P_ID').AsInteger := ID;
   qyPartidasOC.Open;

   archivo := 'win_ordenDeCompraEspec.prt';
   //cargar archivo del directorio de reportes
   ruta := ExtractFilePath(ParamStr(0))+'reportes\';
   if FindFirst(ruta+archivo, faAnyFile, SearchRec) = 0 then
      reporte := archivo
   else
      showmessage('Falta archivo: '+archivo);
end;

procedure TfrmPRN_0025.Open;
var
   SearchRec : TSearchRec;
   archivo : string;
begin
   qyEncabezadoOC.Close;
   qyEncabezadoOC.ParamByName('P_ID').AsInteger := ID;
   qyEncabezadoOC.Open;

   qyPartidasOC.Close;
   qyPartidasOC.ParamByName('P_ID').AsInteger := ID;
   qyPartidasOC.Open;

   archivo := 'win_ordenDeCompra.prt';
   //cargar archivo del directorio de reportes
   ruta := ExtractFilePath(ParamStr(0))+'reportes\';
   if FindFirst(ruta+archivo, faAnyFile, SearchRec) = 0 then
      reporte := archivo
   else
      showmessage('Falta archivo: '+archivo);
end;

procedure TfrmPRN_0025.OpenMedidas;
var
   SearchRec : TSearchRec;
   archivo : string;
begin
   qyEncabezadoOC.Close;
   qyEncabezadoOC.ParamByName('P_ID').AsInteger := awrID;
   qyEncabezadoOC.Open;

   qyPartidas_OC_L.Close;
   qyPartidas_OC_L.ParamByName('P_ID').AsInteger := awrID;
   qyPartidas_OC_L.Open;

   archivo := 'win_OrdenDeCompraMedidas.prt';
   //cargar archivo del directorio de reportes
   ruta := ExtractFilePath(ParamStr(0))+'reportes\';
   if FindFirst(ruta+archivo, faAnyFile, SearchRec) = 0 then
      reporte := archivo
   else
      showmessage('Falta archivo: '+archivo);
end;

procedure TfrmPRN_0025.loadImpresora;
var
   iniFile        : TIniFile;
   strPrinterNom1 : string;
   strPrinterVal1 : string;
   strEscModel1   : string;
begin
   if reglas.activarElegirControladorImpresora('ORDENES_DE_COMPRAS') then
   begin
      frmControladorImpresoras := TfrmControladorImpresoras.Create(Application);
      frmControladorImpresoras.BOTON := boOCompra;
      frmControladorImpresoras.ShowModal;
      frmControladorImpresoras.Destroy;
   end;
   iniFile        := TIniFile.Create(ChangeFileExt(Application.ExeName,'.INI'));
   strPrinterNom1 := iniFile.ReadString('ORDENES_DE_COMPRAS','ImpresoraNom1','');
   strPrinterVal1 := iniFile.ReadString('ORDENES_DE_COMPRAS','ImpresoraVal1','');
   strEscModel1   := iniFile.ReadString('ORDENES_DE_COMPRAS','EscModel1'    ,'');
   strImpresora    := strPrinterNom1;
   strEscImpresora := strEscModel1;
   iniFile.Destroy;
end;

procedure TfrmPRN_0025.FormCreate(Sender: TObject);
begin
   loadImpresora;
   reglas.abrir_IBTabla(dmIBData.TPreferencias);
   //Impresiones por pedido
   dmIBData.TPreferencias.Filter := 'ID = 156';
   impresiones := dmIBData.TPreferencias.FieldByName('VALOR').AsInteger;
end;

procedure TfrmPRN_0025.preview;
//var
 //  prWINReporte : TprReport;
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

procedure TfrmPRN_0025.imprimir;
var
  // prWINReporte : TprReport;
   salir    : boolean;
   _mr      : boolean;
   _folio   : integer;
   i        : integer;
   actPrint : boolean;
begin
   actPrint := true;
   if qyEncabezadoOC.FieldByName('R_FOLIO').AsInteger = 0 then
   begin
      actPrint := false;
      repeat
         salir := true;
         spAUTO_FOLIO.ParamByName('P_AFECTAR').AsString  := 'No';
         spAUTO_FOLIO.ExecProc;
         spAUTO_FOLIO.Transaction.CommitRetaining;

         try
            frmFolio        := TfrmFolio.Create(Application);
            frmFolio.Titulo := 'Ordenes de Compra';
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
            qyVerificarFolio.ParamByName('P_ID').AsInteger      := qyEncabezadoOC.FieldByName('R_ID').AsInteger;
            qyVerificarFolio.ParamByName('P_FOLIO').AsInteger   := _folio;
            qyVerificarFolio.Open;
            salir := (qyVerificarFolio.FieldByName('R_ACEPTADO').AsString = 'Si');

            if qyVerificarFolio.FieldByName('R_ACEPTADO').AsString = 'No' then
            begin
               ShowMessage('Ya se encuentra este folio.  Capturar otro folio');
            end
            else
            begin
               actPrint := true;
               //se actualiza el folio, si es diferente al que el sistema asigno, para que coincida con el de su consecutivo
               if _folio <> spAUTO_FOLIO.ParamByName('R_FOLIO').AsInteger then
               begin
                  spMODIFICAR_FOLIO.ParamByName('P_CONSECUTIVO').AsInteger := _folio;
                  spMODIFICAR_FOLIO.ExecProc;
                  spMODIFICAR_FOLIO.Transaction.CommitRetaining;
               end;
               spAUTO_FOLIO.ParamByName('P_AFECTAR').AsString  := 'Si';
               spAUTO_FOLIO.ExecProc;
               spAUTO_FOLIO.Transaction.CommitRetaining;

               qyActulizar.ParamByName('P_ID').AsInteger    := qyEncabezadoOC.FieldByName('R_ID').AsInteger;
               qyActulizar.ParamByName('P_FOLIO').AsInteger := _folio;
               qyActulizar.ExecSQL;
               qyActulizar.Transaction.CommitRetaining;
               reglas.refresh_IBQuery(qyEncabezadoOC);
            end;
         end;
      until salir;
   end;

   if actPrint then
   begin
      print;
   end;
end;

procedure TfrmPRN_0025.print;
//var
 //  prWIN : TprReport;
 //  i     : integer;
begin
{
   //impresion
   prWIN := TprReport.Create(Self);
   prWIN.LoadTemplateFromFile(ruta+reporte,false);
   prWIN.PrinterName := strImpresora;
   for i := 1 to impresiones do
   begin
      prWIN.PrepareReport;
      prWIN.PrintPreparedReport;
   end;
   prWIN.Free;
   }
end;

end.
