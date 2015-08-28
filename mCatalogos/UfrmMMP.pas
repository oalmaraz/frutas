unit UfrmMMP;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
       StdCtrls,
   jpeg,    Db, IBCustomDataSet,
  IBStoredProc,  Buttons, ExtCtrls;

type
  TfrmMMP = class(TForm)
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    buSalir: TBitBtn;
    buGuardar: TBitBtn;
    edMaxima: TEdit;
    edMinima: TEdit;
    edPunto: TEdit;
    imBack: TImage;
    spAUTO_FOLIO: TIBStoredProc;
    laCodigoBarras: TBitBtn;
    edCodigoBarras: TEdit;
    spMODIFICAR_FOLIO: TIBStoredProc;
    procedure laCodigoBarrasClick(Sender: TObject);
  private
    { Private declarations }
    function getMINIMA : double;
    function getMAXIMA : double;
    function getP_ORDEN : double;
    function EAN13 : string;
    function getCBARRAS : string;

    procedure setMINIMA(valor : double);
    procedure setMAXIMA(valor : double);
    procedure setP_ORDEN(valor : double);
    procedure setCBARRAS(valor : string);
  public
    { Public declarations }
  published
     property CBARRAS : string read getCBARRAS write setCBARRAS;
     property MINIMA  : double read getMINIMA write setMINIMA;
     property MAXIMA  : double read getMAXIMA write setMAXIMA;
     property P_ORDEN : double read getP_ORDEN write setP_ORDEN;
  end;

var
  frmMMP: TfrmMMP;

implementation

uses
  reglas_de_negocios;

{$R *.DFM}

procedure TfrmMMP.setMINIMA(valor : double);
begin
   edMinima.Text :=  FloatToSTr(valor);
end;

procedure TfrmMMP.setMAXIMA(valor : double);
begin
   edMaxima.Text := FloatToSTr(valor);
end;

procedure TfrmMMP.setP_ORDEN(valor : double);
begin
   edPunto.Text := FloatToSTr(valor);
end;

procedure TfrmMMP.setCBARRAS(valor : string);
begin
   edCodigoBarras.Text := valor;
end;

function TfrmMMP.getCBARRAS : string;
begin
   result := edCodigoBarras.Text;
end;

function TfrmMMP.EAN13 : string;
var
   tmp  : string;
   sc   : integer;
   i    : integer;
   r    : string;
begin
  r   := '';
  sc  := 0;
  tmp := 'MATERIALES';
  for i := 0 to length(tmp) do
     sc := sc + ord(tmp[i]);
  spAUTO_FOLIO.ParamByName('P_SUBCLASE').AsInteger := sc;
  spAUTO_FOLIO.ExecProc;
  spAUTO_FOLIO.Transaction.CommitRetaining;
  {
  idClave.Entrada := spAUTO_FOLIO.ParamByName('R_FOLIO').AsString;
  idClave.Execute;
  if idClave.Respuesta and (idClave.Entrada <> '') then
  begin
     if idClave.Entrada <> spAUTO_FOLIO.ParamByName('R_FOLIO').AsString then
     begin
        spMODIFICAR_FOLIO.ParamByName('P_SUBCLASE').AsInteger   := sc;
        spMODIFICAR_FOLIO.ParamByName('P_CONSECUTIVO').AsString := idClave.Entrada;
        spMODIFICAR_FOLIO.ExecProc;
        spMODIFICAR_FOLIO.Transaction.CommitRetaining;
     end;
     r := reglas.EAN13('3'+reglas.rellenar(StrToInt(idClave.Entrada), 11));
  end;
  }
  Result := r;
end;

function TfrmMMP.getMINIMA : double;
begin
   result := StrToFloat(edMinima.Text);
end;

function TfrmMMP.getMAXIMA : double;
begin
   result := StrToFloat(edMaxima.Text);
end;

function TfrmMMP.getP_ORDEN : double;
begin
   result := StrToFloat(edPunto.Text);
end;

procedure TfrmMMP.laCodigoBarrasClick(Sender: TObject);
begin
   edCodigoBarras.Text := EAN13;
end;

end.
