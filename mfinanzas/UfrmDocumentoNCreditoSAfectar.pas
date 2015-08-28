unit UfrmDocumentoNCreditoSAfectar;

interface

uses
  UTypeDocumentoNCreditoSAfectar, Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, Data.DB;

type
  TfrmDocumentoNCreditoSAfectar = class(TForm)
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
    DocSinAfectar : TDocumentoNCreditoSAfectar;
    procedure setCXC(valor : integer);
  public
    { Public declarations }
  published
      property CXC : integer write setCXC;
  end;

{var
  frmDocumentoNCreditoSAfectar: TfrmDocumentoNCreditoSAfectar;}

implementation

{$R *.DFM}

procedure TfrmDocumentoNCreditoSAfectar.setCXC(valor : integer);
begin
   DocSinAfectar.CXC := valor;
   dgPartidas.DataSource.DataSet.First;
end;

procedure TfrmDocumentoNCreditoSAfectar.ibSalirClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmDocumentoNCreditoSAfectar.FormCreate(Sender: TObject);
begin
   DocSinAfectar := TDocumentoNCreditoSAfectar.Create;
end;

procedure TfrmDocumentoNCreditoSAfectar.FormDestroy(Sender: TObject);
begin
   DocSinAfectar.Free;
   DocSinAfectar := nil;
end;

procedure TfrmDocumentoNCreditoSAfectar.FormShow(Sender: TObject);
begin
   dgPartidas.DataSource := DocSinAfectar.dsDetalle;
end;

end.
