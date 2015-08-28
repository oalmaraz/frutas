unit UfrmDetalleDeLaCompra;

interface

uses
  UTypeDetalleDeLaCompra, Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
      Menus,
   ExtCtrls, StdCtrls, Buttons, Grids, DBGrids, Data.DB;

type
  TfrmDetalleDeLaCompra = class(TForm)
    ppCerrar: TPopupMenu;
    Cerrar1: TMenuItem;
    dgDetalle: TDBGrid;
    sbHijo: TPanel;
    ibSalir: TBitBtn;
    buFin: TBitBtn;
    buSiguiente: TBitBtn;
    buAnterior: TBitBtn;
    buInicio: TBitBtn;
    procedure ibSalirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    awrID : integer;
    det : TDetalleDeLaCompra;
  public
    { Public declarations }
    constructor Crear(AOwner : TComponent; p_id : integer);
  published
     property ID : integer read awrID write awrID;
  end;

{var
  frmDetalleDeLaCompra: TfrmDetalleDeLaCompra;}

implementation

{$R *.DFM}

constructor TfrmDetalleDeLaCompra.Crear(AOwner : TComponent; p_id : integer);
begin
   Create(AOwner);
   awrID := p_id;
end;

procedure TfrmDetalleDeLaCompra.ibSalirClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmDetalleDeLaCompra.FormCreate(Sender: TObject);
begin
   det := TDetalleDeLaCompra.Create;
end;

procedure TfrmDetalleDeLaCompra.FormDestroy(Sender: TObject);
begin
  det.Free;
  det:=nil;
end;

procedure TfrmDetalleDeLaCompra.FormShow(Sender: TObject);
begin
   dgDetalle.DataSource := det.DSDETALLE;
   det.refreshDetalle(awrID);

   dgDetalle.Datasource.Dataset.First;

end;

end.
