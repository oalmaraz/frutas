unit UfrmCarteleraAlmacen;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  IBStoredProc,  Grids, DBGrids, IBEvents, Db, IBCustomDataSet,
  IBQuery, IBDatabase, StdCtrls, Buttons, jpeg, ExtCtrls;

type
  TfrmCarteleraAlmacen = class(TForm)
    Panel1: TPanel;
    fcImager3: TImage;
    fcImager2: TImage;
    fcImager1: TImage;
    fcImager4: TImage;
    dgItems: TDBGrid;
    paPregunta: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Panel3: TPanel;
    Panel4: TPanel;
    Label2: TLabel;
    Panel5: TPanel;
    Panel6: TPanel;
    Label3: TLabel;
    Panel7: TPanel;
    Panel8: TPanel;
    Label4: TLabel;
    IBDatabase1: TIBDatabase;
    IBTransaction1: TIBTransaction;
    qyCartelera: TIBQuery;
    dsCartelera: TDataSource;
    qyCarteleraR_ID: TIntegerField;
    qyCarteleraR_FECHA: TDateTimeField;
    qyCarteleraR_CLAVE: TIBStringField;
    qyCarteleraR_FOLIO: TIntegerField;
    qyCarteleraR_CLIENTE: TIBStringField;
    qyCarteleraR_EXTENSION: TIBStringField;
    qyCarteleraR_ESTATUS: TIBStringField;
    qyCarteleraR_ROW: TIntegerField;
    Panel10: TPanel;
    paButtom: TPanel;
    fcImager5: TImage;
    fcImager6: TImage;
    fcImager7: TImage;
    fcImager8: TImage;
    buRefresh: TBitBtn;
    Panel9: TPanel;
    buSalir: TBitBtn;
    buAvisoSi: TBitBtn;
    buAvisoNo: TBitBtn;
    qyCarteleraR_TABLA_REFERENCIA: TIBStringField;
    qyCarteleraR_ID_REFERENCIA: TIntegerField;
    eventCartelera: TIBEvents;
    Panel11: TPanel;
    Panel12: TPanel;
    Label5: TLabel;
    spP_CARTELERA_ALMACEN_A: TIBStoredProc;
    spP_CARTELERA_ALMACEN_L: TIBStoredProc;
    procedure buRefreshClick(Sender: TObject);
    procedure buSalirClick(Sender: TObject);
    procedure buAvisoSiClick(Sender: TObject);
    procedure buAvisoNoClick(Sender: TObject);
    {
    procedure dgItemsCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    }
    procedure dgItemsImprimirButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dgItemsLiberarButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure eventCarteleraEventAlert(Sender: TObject; EventName: String;
      EventCount: Integer; var CancelAlerts: Boolean);
  private
    { Private declarations }
    procedure setDatabase(valor : TIBDatabase);
    procedure setTransaction(valor : TIBTransaction);
    procedure refreshCartelera;
  public
    { Public declarations }
    procedure Open;
  published
     property DATABASE     : TIBDatabase write setDatabase;
     property TRANSACTION  : TIBTransaction write setTransaction;
  end;

var
  frmCarteleraAlmacen: TfrmCarteleraAlmacen;

implementation

uses
  PRN_0027_A;

{$R *.DFM}

procedure TfrmCarteleraAlmacen.refreshCartelera;
begin
   qyCartelera.Close;
   qyCartelera.Open;
   qyCartelera.Locate('R_ID',  qyCartelera.FieldByName('R_ID').AsInteger, [loCaseInsensitive]);
end;

procedure TfrmCarteleraAlmacen.Open;
begin
   qyCartelera.Close;
   qyCartelera.Open;
   eventCartelera.Events.Add('CARTELERA_ALMACEN');
   eventCartelera.RegisterEvents;
end;

procedure TfrmCarteleraAlmacen.setDatabase(valor : TIBDatabase);
begin
   qyCartelera.Database             := valor;
   spP_CARTELERA_ALMACEN_A.Database := valor;
   eventCartelera.Database          := valor;
   spP_CARTELERA_ALMACEN_L.Database := valor;
end;

procedure TfrmCarteleraAlmacen.setTransaction(valor : TIBTransaction);
begin
   qyCartelera.Transaction             := valor;
   spP_CARTELERA_ALMACEN_A.Transaction := valor;
   spP_CARTELERA_ALMACEN_L.Transaction := valor;
end;

procedure TfrmCarteleraAlmacen.buRefreshClick(Sender: TObject);
begin
   qyCartelera.Close;
   qyCartelera.Open;
end;

procedure TfrmCarteleraAlmacen.buSalirClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmCarteleraAlmacen.buAvisoSiClick(Sender: TObject);
begin
   buAvisoSi.Visible := false;
   buAvisoNo.Visible := true;
end;

procedure TfrmCarteleraAlmacen.buAvisoNoClick(Sender: TObject);
begin
   buAvisoSi.Visible := true;
   buAvisoNo.Visible := false;
end;

{
procedure TfrmCarteleraAlmacen.dgItemsCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  AFont.Color := clBlack;
  if ANode.Values[dgItemsESTATUS.Index] = 'Sin Afectar' then
  begin
     AColor := clInfoBk;
  end
  else
  if ANode.Values[dgItemsESTATUS.Index] = 'Aprobado' then
  begin
     AColor := $009DBDFF;
  end
  else
  if ANode.Values[dgItemsESTATUS.Index] = 'ReSurtido' then
  begin
     AColor := $00FF870F;
  end
  else
  if ANode.Values[dgItemsESTATUS.Index] = 'Externo' then
  begin
     AColor      := clRed;
     AFont.Color := clWhite;
  end
  else
  if ANode.Values[dgItemsESTATUS.Index] = 'Cancelado' then
  begin
     AColor      := clBlack;
     AFont.Color := clYellow;
  end
  else
  if ANode.Values[dgItemsESTATUS.Index] = 'Autorizar' then
  begin
     AColor      := $009A9A9A;
     AFont.Color := clWhite;
  end
end;
}
procedure TfrmCarteleraAlmacen.dgItemsImprimirButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
   if (dsCartelera.DataSet.FieldByName('R_TABLA_REFERENCIA').AsString = 'FACTURAS') then
   begin
      try
         frmPRN_0027_A := TfrmPRN_0027_A.CrearA(Application, dsCartelera.DataSet.FieldByName('R_ID_REFERENCIA').AsInteger, true);
         frmPRN_0027_A.imprimir;
      finally
         frmPRN_0027_A.Release;
      end;
   end;

   spP_CARTELERA_ALMACEN_A.ParamByName('P_ID').AsInteger := dsCartelera.DataSet.FieldByName('R_ID').AsInteger;
   spP_CARTELERA_ALMACEN_A.ExecProc;
   spP_CARTELERA_ALMACEN_A.Transaction.CommitRetaining;
   refreshCartelera;
end;

procedure TfrmCarteleraAlmacen.dgItemsLiberarButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  if MessageDlg('¿ Esta seguro de liberar el requrimiento ?',  mtConfirmation, [mbYes, mbNo], 0) = mrYes  then
   begin
      spP_CARTELERA_ALMACEN_L.ParamByName('P_ID').AsInteger := dsCartelera.DataSet.FieldByName('R_ID').AsInteger;
      spP_CARTELERA_ALMACEN_L.ExecProc;
      spP_CARTELERA_ALMACEN_L.Transaction.CommitRetaining;
      refreshCartelera;
   end;
end;

procedure TfrmCarteleraAlmacen.eventCarteleraEventAlert(Sender: TObject;
  EventName: String; EventCount: Integer; var CancelAlerts: Boolean);
begin
   if (EventName = 'CARTELERA_ALMACEN') then
   begin
      //if buAvisoSi.Visible then
        // waveSonidos.Internals.Items[0].Play;
      refreshCartelera;
   end;
end;

end.
