unit UfrmHorizontal;

interface

uses
  UTypeHorizontal, Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids,
   StdCtrls, Buttons, ExtCtrls;

const
   MAX_C = 40;
   MAX_R = 40;
   C_TOT = 41; 

type
  TfrmHorizontal = class(TForm)
    tlMedidas: TStringGrid;
    buLimpiar: TBitBtn;
    buMatriz: TBitBtn;
    Panel2: TPanel;
    ibSalir: TBitBtn;
    procedure ibSalirClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    {
    procedure tlMedidasCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    }
    {
    procedure tlMedidasEdited(Sender: TObject; Node: TdxTreeListNode);
    }
    procedure tlMedidasCOPIARButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure tlMedidasPEGARButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure tlMedidasLIMPIARButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure buLimpiarClick(Sender: TObject);
    procedure buMatrizClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    matriz   : array[1..MAX_R, 1..MAX_C] of string;
    matriz_f : array[1..MAX_R] of variant;
    linea    : array[1..MAX_C] of string;
    linea_f  : Variant;

    Horizontal : THorizontal;
    material   : integer;
//    x, y : integer;
    procedure totales;
    procedure limpiarMatriz;
    procedure copiarCorridasAMatriz;
    procedure copiarMatriazACorridas;
    procedure limpiarCorrida;
    procedure limpiarLinea;
    procedure copiarLinea;
    procedure pegarLinea;
  public
    { Public declarations }
    procedure loadMaterial(valor : integer);
    constructor Crear(AOwner : TComponent; pMaterial : integer);
    function renglones : integer;
    function columnas  : integer;
    function colores : boolean;
    function medida(columna : integer) : integer;
    function color(renglon : integer) : integer;
    function cantNum(row, column : integer) : double;
    function cantStr(row, column : integer) : string;
    function fecha(row : integer) : variant;
    procedure limpiar;
  end;

{var
  frmHorizontal: TfrmHorizontal;}

implementation

{$R *.DFM}

function TfrmHorizontal.fecha(row : integer) : variant;
begin
   Result := matriz_f[row];
end;

procedure TfrmHorizontal.limpiarCorrida;
var
  // Node : TdxTreeListNode;
   i, j : integer;
begin
   //barrido horizontal
   {tlMedidas.BeginUpdate;
   Node := tlMedidas.FocusedNode;
   i    := tlMedidas.IndexOf(Node);
   tlMedidas.Items[i].Focused := true;
   for j := 1 to MAX_C do
   begin
      tlMedidas.Items[i].Strings[j] := '';
   end;
   Node.Focused := True;
   tlMedidas.EndUpdate;

   tlMedidas.Items[i].Values[27] := '';
    }
   totales;
end;

procedure TfrmHorizontal.copiarLinea;
var
 //  Node : TdxTreeListNode;
   i, j : integer;
begin
   limpiarLinea;

   buLimpiar.Visible      := true;
   {
   tlMedidasPEGAR.Visible := true;

   //barrido horizontal
   tlMedidas.BeginUpdate;
   Node := tlMedidas.FocusedNode;
   i := tlMedidas.IndexOf(Node);
   tlMedidas.Items[i].Focused := true;
   for j := 1 to MAX_C do
   begin
      linea[j] := tlMedidas.Items[i].Strings[j];
   end;
   Node.Focused := True;
   tlMedidas.EndUpdate;
   linea_f := tlMedidas.Items[i].Values[27];
   }
end;

procedure TfrmHorizontal.pegarLinea;
var
 //  Node : TdxTreeListNode;
   i, j : integer;
begin
   //barrido horizontal
   {
   tlMedidas.BeginUpdate;
   Node := tlMedidas.FocusedNode;
   i    := tlMedidas.IndexOf(Node);
   tlMedidas.Items[i].Focused := true;
   for j := 1 to MAX_C do
   begin
      tlMedidas.Items[i].Strings[j] := linea[j];
   end;
   Node.Focused := True;
   tlMedidas.EndUpdate;

   tlMedidas.Items[i].Values[27] := linea_f;
    }
   totales;
end;

procedure TfrmHorizontal.limpiarLinea;
var
   j : integer;
begin
   for j := 1 to MAX_C do
   begin
      linea[j] := '';
   end;
end;

procedure TfrmHorizontal.totales;
var
   i, j : integer;
   total : double;
   tmp   : string;
  // Node  : TdxTreeListNode;
   gt    : double;
begin
   //barrido horizontal
   gt := 0;
   {
   tlMedidas.BeginUpdate;
   Node := tlMedidas.FocusedNode;
   for i := 0 to tlMedidas.Count - 2 do
   begin
      total := 0;
      tlMedidas.Items[i].Focused := true;
      tmp := tlMedidas.Items[i].Strings[0];
      for j := 1 to MAX_C do
      begin
         if tlMedidas.Items[i].Strings[j] <> '' then
         begin
            try
               total := total + StrToFloat(tlMedidas.Items[i].Strings[j]);
            except
               on EConvertError do
            end;
         end;
      end;
      gt := gt + total;
      tlMedidas.Items[i].Strings[C_TOT] := FloatToStr(total);
   end;
   tlMedidas.Items[tlMedidas.Count - 1].Strings[C_TOT] := FloatToStr(gt);
//   Node.Focused := True;
//   tlMedidas.EndUpdate;

   //barrido vertical
//   tlMedidas.BeginUpdate;
//   Node := tlMedidas.FocusedNode;
   for j := 1 to MAX_C do
   begin
      total := 0;
      for i := 0 to tlMedidas.Count - 2 do
      begin
         tlMedidas.Items[i].Focused := true;
         if tlMedidas.Items[i].Strings[j] <> '' then
         begin
            try
               total := total + StrToFloat(tlMedidas.Items[i].Strings[j]);
            except
               on EConvertError do
            end;
         end;
      end;
      tlMedidas.Items[tlMedidas.Count - 1].Strings[j] := FloatToStr(total);
   end;
   Node.Focused := True;
   tlMedidas.EndUpdate;
   }
end;

procedure TfrmHorizontal.limpiar;
var
   i : integer;
begin
{
   for i := 1 to MAX_C do
   begin
      tlMedidas.Columns[i].Caption := '';
      tlMedidas.Columns[i].Visible := false;
   end;

   tlMedidas.ClearNodes;
   }
end;

procedure TfrmHorizontal.limpiarMatriz;
var
   i,j : integer;
begin
   for i := 1 to MAX_R do
   begin
      matriz_f[i] := '';
      for j := 1 to MAX_C do
         matriz[i,j] := '';
   end;
end;

procedure TfrmHorizontal.copiarMatriazACorridas;
var
   i, j : integer;
  // Node  : TdxTreeListNode;
begin
   //barrido horizontal
   {
   tlMedidas.BeginUpdate;
   Node := tlMedidas.FocusedNode;
   for i := 0 to tlMedidas.Count - 2 do
   begin
      tlMedidas.Items[i].Focused := true;
      for j := 1 to Horizontal.columnas do
      begin
          tlMedidas.Items[i].Strings[j] := matriz[i + 1][j];
      end;
      tlMedidas.Items[i].Strings[27] := matriz_f[i + 1];
   end;
   Node.Focused := True;
   tlMedidas.EndUpdate;
    }
   totales;
end;

procedure TfrmHorizontal.copiarCorridasAMatriz;
var
   i,j  : integer;
  // Node : TdxTreeListNode;
begin
   limpiarMatriz;
   //barrido horizontal
   {
   tlMedidas.BeginUpdate;
   Node := tlMedidas.FocusedNode;
   for i := 0 to tlMedidas.Count - 2 do
   begin
      tlMedidas.Items[i].Focused := true;
      for j := 1 to MAX_C do
      begin
         matriz[i + 1][j] := tlMedidas.Items[i].Strings[j];
      end;
      matriz_f[i + 1] := tlMedidas.Items[i].Values[27];
   end;
   Node.Focused := True;
   tlMedidas.EndUpdate;
    }
   buMatriz.Enabled := true;
end;

procedure TfrmHorizontal.loadMaterial(valor : integer);
begin
   material   := valor;
   Horizontal.activarMaterial(valor);

   limpiar;
   {
   Horizontal.loadColumnas(tlMedidas);
   Horizontal.loadRenglones(tlMedidas);
   }
   totales;
end;

constructor TfrmHorizontal.Crear(AOwner : TComponent; pMaterial : integer);
begin
   Create(AOwner);
end;

function TfrmHorizontal.colores : boolean;
begin
   Result := Horizontal.colores;
end;

function TfrmHorizontal.medida(columna : integer) : integer;
begin
   Result := Horizontal.medida(columna);
end;

function TfrmHorizontal.color(renglon : integer) : integer;
begin
   Result := Horizontal.color(renglon);
end;

function TfrmHorizontal.cantNum(row, column : integer) : double;
begin
   Result := StrToFloat(matriz[row][column]);
end;

function TfrmHorizontal.cantStr(row, column : integer) : string;
begin
   Result := matriz[row][column];
end;

procedure TfrmHorizontal.ibSalirClick(Sender: TObject);
begin
   Close;
end;

function TfrmHorizontal.renglones : integer;
begin
   Result := Horizontal.renglones;
end;

function TfrmHorizontal.columnas  : integer;
begin
   Result := Horizontal.columnas;
end;

procedure TfrmHorizontal.FormDestroy(Sender: TObject);
begin
   Horizontal.Free;
   Horizontal := nil;
end;

procedure TfrmHorizontal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   copiarCorridasAMatriz;
end;

{
procedure TfrmHorizontal.tlMedidasCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
   if (AColumn = tlMedidasColumn1) and (AText =  '') then
      AColor := clWhite;
   if (AColumn = tlMedidasColumn1) and (AText <> '') then
      AColor := clYellow;
   if (AColumn = tlMedidasColumn2) and (AText =  '') then
      AColor := clWhite;
   if (AColumn = tlMedidasColumn2) and (AText <> '') then
      AColor := clYellow;
   if (AColumn = tlMedidasColumn3) and (AText =  '') then
      AColor := clWhite;
   if (AColumn = tlMedidasColumn3) and (AText <> '') then
      AColor := clYellow;
   if (AColumn = tlMedidasColumn4) and (AText =  '') then
      AColor := clWhite;
   if (AColumn = tlMedidasColumn4) and (AText <> '') then
      AColor := clYellow;
   if (AColumn = tlMedidasColumn5) and (AText =  '') then
      AColor := clWhite;
   if (AColumn = tlMedidasColumn5) and (AText <> '') then
      AColor := clYellow;
   if (AColumn = tlMedidasColumn6) and (AText =  '') then
      AColor := clWhite;
   if (AColumn = tlMedidasColumn6) and (AText <> '') then
      AColor := clYellow;
   if (AColumn = tlMedidasColumn7) and (AText =  '') then
      AColor := clWhite;
   if (AColumn = tlMedidasColumn7) and (AText <> '') then
      AColor := clYellow;
   if (AColumn = tlMedidasColumn8) and (AText =  '') then
      AColor := clWhite;
   if (AColumn = tlMedidasColumn8) and (AText <> '') then
      AColor := clYellow;
   if (AColumn = tlMedidasColumn9) and (AText =  '') then
      AColor := clWhite;
   if (AColumn = tlMedidasColumn9) and (AText <> '') then
      AColor := clYellow;
   if (AColumn = tlMedidasColumn10) and (AText =  '') then
      AColor := clWhite;
   if (AColumn = tlMedidasColumn10) and (AText <> '') then
      AColor := clYellow;
   if (AColumn = tlMedidasColumn11) and (AText =  '') then
      AColor := clWhite;
   if (AColumn = tlMedidasColumn11) and (AText <> '') then
      AColor := clYellow;
   if (AColumn = tlMedidasColumn12) and (AText =  '') then
      AColor := clWhite;
   if (AColumn = tlMedidasColumn12) and (AText <> '') then
      AColor := clYellow;
   if (AColumn = tlMedidasColumn13) and (AText =  '') then
      AColor := clWhite;
   if (AColumn = tlMedidasColumn13) and (AText <> '') then
      AColor := clYellow;
   if (AColumn = tlMedidasColumn14) and (AText =  '') then
      AColor := clWhite;
   if (AColumn = tlMedidasColumn14) and (AText <> '') then
      AColor := clYellow;
   if (AColumn = tlMedidasColumn15) and (AText =  '') then
      AColor := clWhite;
   if (AColumn = tlMedidasColumn15) and (AText <> '') then
      AColor := clYellow;
   if (AColumn = tlMedidasColumn16) and (AText =  '') then
      AColor := clWhite;
   if (AColumn = tlMedidasColumn16) and (AText <> '') then
      AColor := clYellow;
   if (AColumn = tlMedidasColumn17) and (AText =  '') then
      AColor := clWhite;
   if (AColumn = tlMedidasColumn17) and (AText <> '') then
      AColor := clYellow;
   if (AColumn = tlMedidasColumn18) and (AText =  '') then
      AColor := clWhite;
   if (AColumn = tlMedidasColumn18) and (AText <> '') then
      AColor := clYellow;
   if (AColumn = tlMedidasColumn19) and (AText =  '') then
      AColor := clWhite;
   if (AColumn = tlMedidasColumn19) and (AText <> '') then
      AColor := clYellow;
   if (AColumn = tlMedidasColumn20) and (AText =  '') then
      AColor := clWhite;
   if (AColumn = tlMedidasColumn20) and (AText <> '') then
      AColor := clYellow;
   if (AColumn = tlMedidasColumn21) and (AText =  '') then
      AColor := clWhite;
   if (AColumn = tlMedidasColumn21) and (AText <> '') then
      AColor := clYellow;
   if (AColumn = tlMedidasColumn22) and (AText =  '') then
      AColor := clWhite;
   if (AColumn = tlMedidasColumn22) and (AText <> '') then
      AColor := clYellow;
   if (AColumn = tlMedidasColumn23) and (AText =  '') then
      AColor := clWhite;
   if (AColumn = tlMedidasColumn23) and (AText <> '') then
      AColor := clYellow;
   if (AColumn = tlMedidasColumn24) and (AText =  '') then
      AColor := clWhite;
   if (AColumn = tlMedidasColumn24) and (AText <> '') then
      AColor := clYellow;
   if (AColumn = tlMedidasColumn25) and (AText =  '') then
      AColor := clWhite;
   if (AColumn = tlMedidasColumn25) and (AText <> '') then
      AColor := clYellow;
   if (AColumn = tlMedidasColumn26) and (AText =  '') then
      AColor := clWhite;
   if (AColumn = tlMedidasColumn26) and (AText <> '') then
      AColor := clYellow;
   if (AColumn = tlMedidasColumn27) and (AText =  '') then
      AColor := clWhite;
   if (AColumn = tlMedidasColumn27) and (AText <> '') then
      AColor := clYellow;
   if (AColumn = tlMedidasColumn28) and (AText =  '') then
      AColor := clWhite;
   if (AColumn = tlMedidasColumn28) and (AText <> '') then
      AColor := clYellow;
   if (AColumn = tlMedidasColumn29) and (AText =  '') then
      AColor := clWhite;
   if (AColumn = tlMedidasColumn29) and (AText <> '') then
      AColor := clYellow;
   if (AColumn = tlMedidasColumn30) and (AText =  '') then
      AColor := clWhite;
   if (AColumn = tlMedidasColumn30) and (AText <> '') then
      AColor := clYellow;
   if (AColumn = tlMedidasColumn31) and (AText =  '') then
      AColor := clWhite;
   if (AColumn = tlMedidasColumn31) and (AText <> '') then
      AColor := clYellow;
   if (AColumn = tlMedidasColumn32) and (AText =  '') then
      AColor := clWhite;
   if (AColumn = tlMedidasColumn32) and (AText <> '') then
      AColor := clYellow;
   if (AColumn = tlMedidasColumn33) and (AText =  '') then
      AColor := clWhite;
   if (AColumn = tlMedidasColumn33) and (AText <> '') then
      AColor := clYellow;
   if (AColumn = tlMedidasColumn34) and (AText =  '') then
      AColor := clWhite;
   if (AColumn = tlMedidasColumn34) and (AText <> '') then
      AColor := clYellow;
   if (AColumn = tlMedidasColumn35) and (AText =  '') then
      AColor := clWhite;
   if (AColumn = tlMedidasColumn35) and (AText <> '') then
      AColor := clYellow;
   if (AColumn = tlMedidasColumn36) and (AText =  '') then
      AColor := clWhite;
   if (AColumn = tlMedidasColumn36) and (AText <> '') then
      AColor := clYellow;
   if (AColumn = tlMedidasColumn37) and (AText =  '') then
      AColor := clWhite;
   if (AColumn = tlMedidasColumn37) and (AText <> '') then
      AColor := clYellow;
   if (AColumn = tlMedidasColumn38) and (AText =  '') then
      AColor := clWhite;
   if (AColumn = tlMedidasColumn38) and (AText <> '') then
      AColor := clYellow;
   if (AColumn = tlMedidasColumn39) and (AText =  '') then
      AColor := clWhite;
   if (AColumn = tlMedidasColumn39) and (AText <> '') then
      AColor := clYellow;
   if (AColumn = tlMedidasColumn40) and (AText =  '') then
      AColor := clWhite;
   if (AColumn = tlMedidasColumn40) and (AText <> '') then
      AColor := clYellow;


   if ANode.IsLast and
     (AColumn <> tlMedidasCOLORES) and
     (AColumn <> tlMedidasCT) and
     (AColumn <> tlMedidasFECHA) and
     (AColumn <> tlMedidasCOPIAR) and
     (AColumn <> tlMedidasPEGAR) and
     (AColumn <> tlMedidasLIMPIAR) then
   begin
      AFont.Color := clWhite;
      AFont.Style := [fsBold];
      AColor := clBlack;
   end;

   if ANode.IsLast and (AColumn = tlMedidasCT) then
   begin
      AColor      := clRed;
   end;

   if (AColor = clWhite) or (AColor = clBtnFace) then
      AFont.Color := clBlack;

   if (AColor = clYellow) then
   begin
      AFont.Color := clBlue;
   end;
end;
}

{
procedure TfrmHorizontal.tlMedidasEdited(Sender: TObject;
  Node: TdxTreeListNode);
begin
   totales;
end;

}

procedure TfrmHorizontal.tlMedidasCOPIARButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
   copiarLinea;
end;

procedure TfrmHorizontal.tlMedidasPEGARButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
   pegarLinea;
end;

procedure TfrmHorizontal.tlMedidasLIMPIARButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
   limpiarCorrida;
end;

procedure TfrmHorizontal.buLimpiarClick(Sender: TObject);
begin
   limpiarLinea;
   //tlMedidasPEGAR.Visible := false;
   buLimpiar.Visible      := false;
end;

procedure TfrmHorizontal.buMatrizClick(Sender: TObject);
begin
   copiarMatriazACorridas;
   ShowMessage('Verifique fechas de entrega de la(s) corrida(s).');
end;

procedure TfrmHorizontal.FormCreate(Sender: TObject);
begin
   Horizontal := THorizontal.Create;
   if Horizontal.colores then
      Self.Caption := 'Medidas y Colores';
end;

procedure TfrmHorizontal.FormShow(Sender: TObject);
begin
   tlMedidas.SetFocus;
  // tlMedidas.Items[0].Focused := true;
  // tlMedidas.FocusedColumn    := 1;
end;

end.
