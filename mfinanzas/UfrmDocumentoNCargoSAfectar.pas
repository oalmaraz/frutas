unit UfrmDocumentoNCargoSAfectar;

interface

uses
  UTypeDocumentoNCargoSAfectar, Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, Data.DB;

type
  TfrmDocumentoNCargoSAfectar = class(TForm)
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
    DocSinAfectar : TDocumentoNCargoSAfectar;
    procedure setCXC(valor : integer);
  public
    { Public declarations }
  published
      property CXC : integer write setCXC;
  end;

{var
  frmDocumentoNCargoSAfectar: TfrmDocumentoNCargoSAfectar;}

implementation

{$R *.DFM}

procedure TfrmDocumentoNCargoSAfectar.setCXC(valor : integer);
begin
   DocSinAfectar.CXC := valor;
   dgPartidas.DataSource.DataSet.First;
end;

procedure TfrmDocumentoNCargoSAfectar.ibSalirClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmDocumentoNCargoSAfectar.FormCreate(Sender: TObject);
begin
   DocSinAfectar := TDocumentoNCargoSAfectar.Create;
end;

procedure TfrmDocumentoNCargoSAfectar.FormDestroy(Sender: TObject);
begin
   DocSinAfectar.Free;
   DocSinAfectar := nil;
end;

procedure TfrmDocumentoNCargoSAfectar.FormShow(Sender: TObject);
begin
   dgPartidas.DataSource := DocSinAfectar.dsDetalle;
end;

end.
