unit UfrmPresupuesto;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, IBCustomDataSet, IBQuery, 
  ExtCtrls, Buttons, Grids, DBGrids, StdCtrls;

type
  TfrmPresupuesto = class(TForm)
    qyPresupuesto: TIBQuery;
    dsPresupuesto: TDataSource;
    dgPartidas: TDBGrid;
    qyPresupuestoR_ID: TIntegerField;
    qyPresupuestoR_CLAVE: TIBStringField;
    qyPresupuestoR_NOMBRE: TIBStringField;
    qyPresupuestoR_DOC_MES: TIntegerField;
    qyPresupuestoR_MENSUAL: TFloatField;
    qyPresupuestoR_DOC_QUINCENAL: TIntegerField;
    qyPresupuestoR_QUINCENAL: TFloatField;
    qyPresupuestoR_DOC_SEMANAL: TIntegerField;
    qyPresupuestoR_SEMANAL: TFloatField;
    qyPresupuestoR_FINANCIAMIENTO: TIntegerField;
    qyPresupuestoR_FINANCIAMIENTO_CLAVE: TIBStringField;
    qyPresupuestoR_FINANCIAMIENTO_DESCRIPCION: TIBStringField;
    qyPresupuestoR_FINANCIAMIENTO_PORCENTAJE: TFloatField;
    qyPresupuestoR_ROWS: TIntegerField;
    qyPresupuestoR_COLOR: TIBStringField;
    paSeleccion: TPanel;
    edCC: TEdit;
    Label1: TLabel;
    edDoc: TEdit;
    Label2: TLabel;
    edTipo: TEdit;
    ibAceptar: TBitBtn;
    Label3: TLabel;
    edMonto: TEdit;
    ibSalir: TBitBtn;
    {
    procedure dgPartidasCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    }
    procedure ibSalirClick(Sender: TObject);
    {
    procedure dgPartidasChangeNode(Sender: TObject; OldNode,
      Node: TdxTreeListNode);
    procedure dgPartidasChangeColumn(Sender: TObject;
      Node: TdxTreeListNode; Column: Integer);
      }
    procedure ibAceptarClick(Sender: TObject);
    {
    procedure dgPartidasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    }
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    awrPagos : integer;
    awrACEPTAR : boolean;
    procedure setMonto(valor : double);
    function getCC : integer;
    function getFINANCIAMIENTO : double;
  public
    { Public declarations }
  published
     property MONTO : double write setMonto;
     property PAGOS : integer read awrPagos write awrPagos;
     property CCOMERCIAL     : integer read getCC;
     property FINANCIAMIENTO : double read getFINANCIAMIENTO;
     property ACEPTAR : boolean read awrACEPTAR write awrACEPTAR;
  end;

var
  frmPresupuesto: TfrmPresupuesto;

implementation

uses
  IBModulo;

{$R *.DFM}

function TfrmPresupuesto.getCC : integer;
begin
   result := dsPresupuesto.DataSet.FieldByName('R_ID').AsInteger;
end;

function TfrmPresupuesto.getFINANCIAMIENTO : double;
begin
   result := dsPresupuesto.DataSet.FieldByName('R_FINANCIAMIENTO_PORCENTAJE').AsFloat;
end;

procedure TfrmPresupuesto.setMonto(valor : double);
begin
   qyPresupuesto.Close;
   qyPresupuesto.ParamByName('P_MONTO').AsFloat := valor;
   qyPresupuesto.Open;
   edCC.Text    := dsPresupuesto.DataSet.FieldByName('R_NOMBRE').AsString;
   edDoc.Text   := dsPresupuesto.DataSet.FieldByName('R_DOC_MES').AsString;
   edMonto.Text := FormatFloat('$ ###,###,##0.00', dsPresupuesto.DataSet.FieldByName('R_MENSUAL').AsFloat);
   PAGOS := 0;
end;

{
procedure TfrmPresupuesto.dgPartidasCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if ANode.Values[dgPartidasCOLOR.Index] = 'BLANCO' then
  begin
     AColor := $00FDD284;
  end
  else
     begin
        AColor := clWhite;
     end;

  AFont.Color := clBlack;
end;

}
procedure TfrmPresupuesto.ibSalirClick(Sender: TObject);
begin
   Close;
end;

{
procedure TfrmPresupuesto.dgPartidasChangeNode(Sender: TObject; OldNode,
  Node: TdxTreeListNode);
begin
   edCC.Text := dsPresupuesto.DataSet.FieldByName('R_NOMBRE').AsString;
   with TdxDBGrid(Sender) do
   begin
      if (Columns[GetFocusedAbsoluteIndex(FocusedColumn)] = dgPartidasPartidas) OR
         (Columns[GetFocusedAbsoluteIndex(FocusedColumn)] = dgPartidasCC) OR
         (Columns[GetFocusedAbsoluteIndex(FocusedColumn)] = dgPartidasDocMensual) OR
         (Columns[GetFocusedAbsoluteIndex(FocusedColumn)] = dgPartidasMensual) then
      begin
         edDoc.Text   := dsPresupuesto.DataSet.FieldByName('R_DOC_MES').AsString;
         edTipo.Text  := 'Mes';
         edMonto.Text := FormatFloat('$ ###,###,##0.00', dsPresupuesto.DataSet.FieldByName('R_MENSUAL').AsFloat);
      end
      else
      if (Columns[GetFocusedAbsoluteIndex(FocusedColumn)] = dgPartidasDocQuincenal) OR
         (Columns[GetFocusedAbsoluteIndex(FocusedColumn)] = dgPartidasQuincenal) then
      begin
         edDoc.Text  := dsPresupuesto.DataSet.FieldByName('R_DOC_QUINCENAL').AsString;
         edTipo.Text := 'Quincena';
         edMonto.Text := FormatFloat('$ ###,###,##0.00', dsPresupuesto.DataSet.FieldByName('R_QUINCENAL').AsFloat);
      end
      else
      if (Columns[GetFocusedAbsoluteIndex(FocusedColumn)] = dgPartidasDocSemanal) OR
         (Columns[GetFocusedAbsoluteIndex(FocusedColumn)] = dgPartidasSemanal) then
      begin
         edDoc.Text  := dsPresupuesto.DataSet.FieldByName('R_DOC_SEMANAL').AsString;
         edTipo.Text := 'Semana';
         edMonto.Text := FormatFloat('$ ###,###,##0.00', dsPresupuesto.DataSet.FieldByName('R_SEMANAL').AsFloat);
      end;
   end;
end;

procedure TfrmPresupuesto.dgPartidasChangeColumn(Sender: TObject;
  Node: TdxTreeListNode; Column: Integer);
begin
   with TdxDBGrid(Sender) do
   begin
      if (Columns[GetFocusedAbsoluteIndex(FocusedColumn)] = dgPartidasPartidas) OR
         (Columns[GetFocusedAbsoluteIndex(FocusedColumn)] = dgPartidasCC) OR
         (Columns[GetFocusedAbsoluteIndex(FocusedColumn)] = dgPartidasDocMensual) OR
         (Columns[GetFocusedAbsoluteIndex(FocusedColumn)] = dgPartidasMensual) then
      begin
         edDoc.Text   := dsPresupuesto.DataSet.FieldByName('R_DOC_MES').AsString;
         edTipo.Text  := 'Mes';
         edMonto.Text := FormatFloat('$ ###,###,##0.00', dsPresupuesto.DataSet.FieldByName('R_MENSUAL').AsFloat);
      end
      else
      if (Columns[GetFocusedAbsoluteIndex(FocusedColumn)] = dgPartidasDocQuincenal) OR
         (Columns[GetFocusedAbsoluteIndex(FocusedColumn)] = dgPartidasQuincenal) then
      begin
         edDoc.Text  := dsPresupuesto.DataSet.FieldByName('R_DOC_QUINCENAL').AsString;
         edTipo.Text := 'Quincena';
         edMonto.Text := FormatFloat('$ ###,###,##0.00', dsPresupuesto.DataSet.FieldByName('R_QUINCENAL').AsFloat);
      end
      else
      if (Columns[GetFocusedAbsoluteIndex(FocusedColumn)] = dgPartidasDocSemanal) OR
         (Columns[GetFocusedAbsoluteIndex(FocusedColumn)] = dgPartidasSemanal) then
      begin
         edDoc.Text  := dsPresupuesto.DataSet.FieldByName('R_DOC_SEMANAL').AsString;
         edTipo.Text := 'Semana';
         edMonto.Text := FormatFloat('$ ###,###,##0.00', dsPresupuesto.DataSet.FieldByName('R_SEMANAL').AsFloat);
      end;
   end;
end;
}
procedure TfrmPresupuesto.ibAceptarClick(Sender: TObject);
begin
   ACEPTAR := true;
   PAGOS := StrToInt(edDoc.Text);
   Close;
end;

{
procedure TfrmPresupuesto.dgPartidasKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then//enter
  begin
     ibAceptar.Click;
  end;
end;
}
procedure TfrmPresupuesto.FormCreate(Sender: TObject);
begin
   ACEPTAR := false;
end;

end.
