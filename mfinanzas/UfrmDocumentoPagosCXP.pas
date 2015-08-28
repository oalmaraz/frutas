unit UfrmDocumentoPagosCXP;

interface

uses
  UTypeDocumentoPagosCXP, Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   Menus,
    Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, Data.DB;

type
  TfrmDocumentoPagosCXP = class(TForm)
    ppCerrar: TPopupMenu;
    Cerrar1: TMenuItem;
    fcStatusBar1: TPanel;
    buInicio: TBitBtn;
    buAnterior: TBitBtn;
    buSiguiente: TBitBtn;
    buFin: TBitBtn;
    ibSalir: TBitBtn;
    dgPartidas: TDBGrid;
    procedure ibSalirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dgPartidasVERButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
  private
    { Private declarations }
    DocumentoPagos : TDocumentoPagosCXP;
    procedure setCXP(valor : integer);
  public
    { Public declarations }
  published
      property CXP : integer write setCXP;
  end;

{var
  frmDocumentoPagosCXP: TfrmDocumentoPagosCXP;}

implementation

uses
  IBModulo, UCXP_PagosD;

{$R *.DFM}

procedure TfrmDocumentoPagosCXP.ibSalirClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmDocumentoPagosCXP.FormCreate(Sender: TObject);
begin
   DocumentoPagos := TDocumentoPagosCXP.Create;
end;

procedure TfrmDocumentoPagosCXP.FormDestroy(Sender: TObject);
begin
   DocumentoPagos.Free;
   DocumentoPagos := nil;
end;

procedure TfrmDocumentoPagosCXP.FormShow(Sender: TObject);
begin
   dgPartidas.DataSource := DocumentoPagos.dsDetalle;
end;

procedure TfrmDocumentoPagosCXP.setCXP(valor : integer);
begin
   DocumentoPagos.CXP := valor;
   dgPartidas.DataSource.DataSet.First;
end;

procedure TfrmDocumentoPagosCXP.dgPartidasVERButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
begin
   frmCXP_PagosD := TfrmCXP_PagosD.Create(self);
   try
      frmCXP_PagosD.ID := dgPartidas.DataSource.DataSet.FieldByName('R_CXP_PAGOS').AsInteger;
      frmCXP_PagosD.ShowModal;
   finally
     frmCXP_PagosD.Free;
   end;
end;

end.
