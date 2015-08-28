unit UfrmDocumentoNCreditoAfectada;

interface

uses
  UTypeDocumentoNCreditoAfectada, Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, Data.DB;

type
  TfrmDocumentoNCreditoAfectada = class(TForm)
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
  private
    { Private declarations }
    DocAfectada : TDocumentoNCreditoAfectada;
    procedure setCXC(valor : integer);
  public
    { Public declarations }
  published
      property CXC : integer write setCXC;
  end;

{var
  frmDocumentoNCreditoAfectada: TfrmDocumentoNCreditoAfectada;}

implementation

{$R *.DFM}

procedure TfrmDocumentoNCreditoAfectada.setCXC(valor : integer);
begin
   DocAfectada.CXC := valor;
   dgPartidas.DataSource.DataSet.First;
end;

procedure TfrmDocumentoNCreditoAfectada.ibSalirClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmDocumentoNCreditoAfectada.FormCreate(Sender: TObject);
begin
   DocAfectada := TDocumentoNCreditoAfectada.Create;
end;

procedure TfrmDocumentoNCreditoAfectada.FormDestroy(Sender: TObject);
begin
   DocAfectada.Free;
   DocAfectada := nil;
end;

procedure TfrmDocumentoNCreditoAfectada.FormShow(Sender: TObject);
begin
   dgPartidas.DataSource := DocAfectada.dsDetalle;
end;

end.
