unit UfrmDocumentoNCargoAfectada;

interface

uses
  UTypeDocumentoNCargoAfectada,Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Grids, DBGrids, StdCtrls, Buttons, Data.DB;

type
  TfrmDocumentoNCargoAfectada = class(TForm)
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
    DocAfectado : TDocumentoNCargoAfectada;
    procedure setCXC(valor : integer);
  public
    { Public declarations }
  published
      property CXC : integer write setCXC;
  end;

{var
  frmDocumentoNCargoAfectada: TfrmDocumentoNCargoAfectada;}

implementation

{$R *.DFM}

procedure TfrmDocumentoNCargoAfectada.setCXC(valor : integer);
begin
   DocAfectado.CXC := valor;
   dgPartidas.DataSource.DataSet.First;
end;

procedure TfrmDocumentoNCargoAfectada.ibSalirClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmDocumentoNCargoAfectada.FormCreate(Sender: TObject);
begin
   DocAfectado := TDocumentoNCargoAfectada.Create;
end;

procedure TfrmDocumentoNCargoAfectada.FormDestroy(Sender: TObject);
begin
   DocAfectado.Free;
   DocAfectado := nil;
end;

procedure TfrmDocumentoNCargoAfectada.FormShow(Sender: TObject);
begin
   dgPartidas.DataSource := DocAfectado.dsDetalle;
end;

end.
