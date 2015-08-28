unit UfrmMaterial_Costos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,

       StdCtrls,

    Db, IBCustomDataSet, IBQuery, IBDatabase,
  IBStoredProc,
   ExtCtrls, Grids, DBGrids, Buttons;

type
  TfrmMaterial_Costos = class(TForm)
    Label1: TLabel;
    dgPartidas: TDBGrid;
    LMDDockSpeedButton1: TBitBtn;
    edConcepto: TEdit;
    Label8: TLabel;
    buLimConcepto: TBitBtn;
    buBusConcepto: TBitBtn;
    edPorc: TEdit;
    Label9: TLabel;
    edBOM: TEdit;
    buAceptar: TBitBtn;
    qyCostos: TIBQuery;
    dsCostos: TDataSource;
    edCosto: TEdit;
    Label2: TLabel;
    spADD_MATERIAL_COSTO: TIBStoredProc;
    qyCostosR_ROW: TIntegerField;
    qyCostosR_ID: TIntegerField;
    qyCostosR_MATERIAL: TIntegerField;
    qyCostosR_CG: TIntegerField;
    qyCostosR_COSTO: TFloatField;
    qyCostosR_PORC_UTL: TFloatField;
    qyCostosR_CONCEPTO: TIBStringField;
    qyDel: TIBQuery;
    qyCostosR_UTILIDAD: TFloatField;
    qyCostosR_PRECIO: TFloatField;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    qyTotales: TIBQuery;
    qyTotalesR_COSTO: TFloatField;
    qyTotalesR_UTILIDAD: TFloatField;
    qyTotalesR_PRECIO: TFloatField;
    laCosto: TLabel;
    dsTotales: TDataSource;
    laUtilidad: TLabel;
    laPrecio: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    procedure edConceptoKeyPress(Sender: TObject; var Key: Char);
    procedure buBusConceptoClick(Sender: TObject);
    procedure buLimConceptoClick(Sender: TObject);
    procedure buAceptarClick(Sender: TObject);
    procedure dgPartidasColumn5ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure qyCostosAfterClose(DataSet: TDataSet);
    procedure qyCostosAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
    awrMaterial : integer;
    procedure setMaterial(valor : integer);
  public
    { Public declarations }
  published
     property MATERIAL : integer read awrMaterial write setMaterial;
  end;

var
  frmMaterial_Costos: TfrmMaterial_Costos;

implementation

uses
  UfrmSeleccionarCGastos, IBModulo;

{$R *.DFM}

procedure TfrmMaterial_Costos.setMaterial(valor : integer);
begin
   awrMaterial := valor;
   qyCostos.Close;
   qyCostos.ParamByName('P_MATERIAL').AsInteger := valor;
   qyCostos.Open;
end;

procedure TfrmMaterial_Costos.edConceptoKeyPress(Sender: TObject;
  var Key: Char);
begin
   if key = #13 then
      buBusConcepto.Click;
end;

procedure TfrmMaterial_Costos.buBusConceptoClick(Sender: TObject);
   procedure interno;
   begin
      edConcepto.Tag  := frmSeleccionarCGastos.ID;
      edConcepto.Text := frmSeleccionarCGastos.CONCEPTO;
      edPorc.Text := FloatToStr(frmSeleccionarCGastos.PORC);
      //edConcepto.SetSelection(Length(edConcepto.Text),Length(edConcepto.Text),false);
   end;
begin
   frmSeleccionarCGastos             := TfrmSeleccionarCGastos.Create(Application);
   frmSeleccionarCGastos.DATABASE    := dmIBModulo.ibSistema;
   frmSeleccionarCGastos.TRANSACTION := dmIBModulo.ibSistemaTransaccion;
   frmSeleccionarCGastos.edDato.Text := edConcepto.Text;
   if frmSeleccionarCGastos.abrirConsulta then
   begin
      frmSeleccionarCGastos.ShowModal;
      if frmSeleccionarCGastos.ACEPTAR then
      begin
         interno;
      end;
   end
   else
      begin
         interno;
      end;
   frmSeleccionarCGastos.Release;

   if edConcepto.Tag <> 0 then
      edCosto.SetFocus
   else
      edConcepto.SetFocus;
end;

procedure TfrmMaterial_Costos.buLimConceptoClick(Sender: TObject);
begin
   edConcepto.Tag := 0;
   edConcepto.Clear;
   edCosto.Text := '0';

   edConcepto.SetFocus;
end;

procedure TfrmMaterial_Costos.buAceptarClick(Sender: TObject);
begin
   spADD_MATERIAL_COSTO.ParamByName('P_MATERIAL').AsInteger  := awrMaterial;
   spADD_MATERIAL_COSTO.ParamByName('P_CONCEPTO').AsInteger  := edConcepto.Tag;
   spADD_MATERIAL_COSTO.ParamByName('P_COSTO').AsFloat       := StrToFloat(edCosto.Text);
   spADD_MATERIAL_COSTO.ParamByName('P_PORC').AsFloat        := StrToFloat(edPorc.Text);
   spADD_MATERIAL_COSTO.ParamByName('P_PROVEEDOR').AsInteger := 0;
   spADD_MATERIAL_COSTO.ExecProc;
   spADD_MATERIAL_COSTO.Transaction.CommitRetaining;

   buLimConcepto.Click;
   qyCostos.Close;
   qyCostos.Open;
end;

procedure TfrmMaterial_Costos.dgPartidasColumn5ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
   qyDel.ParamByName('P_ID').AsInteger := dsCostos.DataSet.FieldByName('R_ID').AsInteger;
   qyDel.ExecSQL;
   qyDel.Transaction.CommitRetaining;
   qyCostos.Close;
   qyCostos.Open;
end;

procedure TfrmMaterial_Costos.qyCostosAfterClose(DataSet: TDataSet);
begin
   qyTotales.Close;
end;

procedure TfrmMaterial_Costos.qyCostosAfterOpen(DataSet: TDataSet);
begin
    qyTotales.Open;
end;

end.
