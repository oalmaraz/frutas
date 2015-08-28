unit UfrmCostosPI;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls,      
  StdCtrls, Buttons;

type
  TfrmCostosPI = class(TForm)
    Label5: TLabel;
    edPorc: TEdit;
    edCosto: TEdit;
    Label4: TLabel;
    Label8: TLabel;
    edUtilidad: TEdit;
    edTotal: TEdit;
    Label6: TLabel;
    paTop: TPanel;
    ibGuardar: TBitBtn;
    Bevel1: TBevel;
    ibCancelarPartida: TBitBtn;
    procedure edCostoChange(Sender: TObject);
    procedure edPorcChange(Sender: TObject);
  private
    { Private declarations }
    function getCOSTO    : double;
    function getPORC     : double;
    function getUTILIDAD : double;
    function getTOTAL    : double;
    procedure Totales;
  public
    { Public declarations }
  published
     property COSTO    : double read getCOSTO;
     property PORC     : double read getPORC;
     property UTILIDAD : double read getUTILIDAD;
     property TOTAL    : double read getTOTAL;

  end;

var
  frmCostosPI: TfrmCostosPI;

implementation

{$R *.DFM}

procedure TfrmCostosPI.Totales;
var
  utilidad, total, costo, procentaje : double;
begin
   costo :=  StrToFloat(edCosto.Text);
   procentaje := StrToFloat(edPorc.Text);
   utilidad := costo * (procentaje/100);
   total :=  costo + utilidad;
   edUtilidad.Text := FloatToStr(utilidad) ;
   edTotal.Text    :=  FloatToStr(total);
end;

procedure TfrmCostosPI.edCostoChange(Sender: TObject);
begin
   Totales;
end;

procedure TfrmCostosPI.edPorcChange(Sender: TObject);
begin
   Totales;
end;

function TfrmCostosPI.getCOSTO : double;
begin
   result := StrToFloat(edCosto.Text);
end;

function TfrmCostosPI.getPORC : double;
begin
   result := StrToFloat(edPorc.Text);
end;

function TfrmCostosPI.getUTILIDAD : double;
begin
   result := StrToFloat(edUtilidad.Text);
end;

function TfrmCostosPI.getTOTAL : double;
begin
   result := StrToFloat(edTotal.Text);
end;

end.
