unit UfrmMonederoReg;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, IBCustomDataSet, IBQuery, StdCtrls,
  Buttons, ExtCtrls, Grids, DBGrids, IBStoredProc;

type
  TfrmMonederoReg = class(TForm)
    dgPartidas: TDBGrid;
    qyDetalle: TIBQuery;
    qyDetalleR_ID: TIntegerField;
    qyDetalleR_ALMACEN: TIntegerField;
    qyDetalleR_ALMACEN_CLAVE: TIBStringField;
    qyDetalleR_ALMACEN_NOMBRE: TIBStringField;
    qyDetalleR_FECHA: TDateTimeField;
    qyDetalleR_FOLIO_VTA: TIntegerField;
    qyDetalleR_MONTO: TFloatField;
    dsDetalle: TDataSource;
    spDEL_REG_MONEDERO_ITEM: TIBStoredProc;
    Panel2: TPanel;
    ibSalir: TBitBtn;
    procedure ibSalirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dgPartidasEliminarButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dgPartidasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    awrID : integer;
    awrELIMINAR : boolean;
    awrTotal    : double;
    procedure setID(valor : integer);
    procedure setX(valor : integer);
    procedure setY(valor : integer);
  public
    { Public declarations }
  published
     property ID : integer read awrID write setID;
     property X  : integer write setX;
     property Y  : integer write setY;
     property ELIMINAR : boolean read awrELIMINAR write awrELIMINAR;
     property TOTAL : double read awrTotal write awrTotal;
  end;

var
  frmMonederoReg: TfrmMonederoReg;

implementation

uses
  IBModulo, reglas_de_negocios;

{$R *.DFM}

procedure TfrmMonederoReg.setX(valor : integer);
begin
   Self.Left := valor;
end;

procedure TfrmMonederoReg.setY(valor : integer);
begin
   Self.Top := valor;
end;

procedure TfrmMonederoReg.setID(valor : integer);
begin
   awrID := valor;
   qyDetalle.Close;
   qyDetalle.ParamByName('P_ID').AsInteger := valor;
   qyDetalle.Open;
   dgPartidas.Datasource.Dataset.First;
end;

procedure TfrmMonederoReg.ibSalirClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmMonederoReg.FormCreate(Sender: TObject);
begin
   X := 100;
   Y := 100;
end;

procedure TfrmMonederoReg.dgPartidasEliminarButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
   if not(dsDetalle.DataSet.IsEmpty) then
   begin
      spDEL_REG_MONEDERO_ITEM.ParamByName('P_ID').AsInteger := dsDetalle.DataSet.FieldByName('R_ID').AsInteger;
      spDEL_REG_MONEDERO_ITEM.ExecProc;
      spDEL_REG_MONEDERO_ITEM.Transaction.CommitRetaining;
      Total := spDEL_REG_MONEDERO_ITEM.ParamByName('R_TOTAL').AsFloat;
      reglas.refresh_IBQuery(qyDetalle);
      dgPartidas.Datasource.Dataset.First;
      ELIMINAR := true;
   end
end;

procedure TfrmMonederoReg.dgPartidasKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
{
  with TdxDBGrid(Sender) do
    if (Key = VK_RETURN) and (Columns[GetFocusedAbsoluteIndex(FocusedColumn)]is TdxDBGridButtonColumn) then
    begin
       if (Columns[GetFocusedAbsoluteIndex(FocusedColumn)] = dgPartidasEliminar) then
          dgPartidasEliminarButtonClick(sender, 0);
    end;
    }
end;

end.
