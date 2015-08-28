unit UfrmValesDetalle;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, IBCustomDataSet, IBQuery,
  IBStoredProc, StdCtrls,
  Buttons, ExtCtrls, Grids, DBGrids;

type
  TfrmValesDetalle = class(TForm)
    qyDetalle: TIBQuery;
    dgPartidas: TDBGrid;
    dsDetalle: TDataSource;
    qyDetalleR_ALMACEN: TIntegerField;
    qyDetalleR_ALMACEN_CLAVE: TIBStringField;
    qyDetalleR_ALMACEN_NOMBRE: TIBStringField;
    qyDetalleR_FECHA: TDateTimeField;
    qyDetalleR_FOLIO_VTA: TIntegerField;
    qyDetalleR_MONTO: TFloatField;
    qyDetalleR_ID: TIntegerField;
    spDEL_VALE_PARTIDA: TIBStoredProc;
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
  frmValesDetalle: TfrmValesDetalle;

implementation

uses
  IBModulo, reglas_de_negocios;

{$R *.DFM}

procedure TfrmValesDetalle.setX(valor : integer);
begin
   Self.Left := valor;
end;

procedure TfrmValesDetalle.setY(valor : integer);
begin
   Self.Top := valor;
end;

procedure TfrmValesDetalle.setID(valor : integer);
begin
   awrID := valor;
   qyDetalle.Close;
   qyDetalle.ParamByName('P_ID').AsInteger := valor;
   qyDetalle.Open;
   dgPartidas.DataSource.Dataset.First;
end;

procedure TfrmValesDetalle.ibSalirClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmValesDetalle.FormCreate(Sender: TObject);
begin
   X := 100;
   Y := 100;
end;

procedure TfrmValesDetalle.dgPartidasEliminarButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
   if not(dsDetalle.DataSet.IsEmpty) then
   begin
      spDEL_VALE_PARTIDA.ParamByName('P_ID').AsInteger := dsDetalle.DataSet.FieldByName('R_ID').AsInteger;
      spDEL_VALE_PARTIDA.ExecProc;
      spDEL_VALE_PARTIDA.Transaction.CommitRetaining;
      Total := spDEL_VALE_PARTIDA.ParamByName('R_TOTAL').AsFloat;
      reglas.refresh_IBQuery(qyDetalle);
      dgPartidas.DataSource.DataSet.First;
      ELIMINAR := true;
   end
end;

procedure TfrmValesDetalle.dgPartidasKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 // with TdxDBGrid(Sender) do
   // if (Key = VK_RETURN) and (Columns[GetFocusedAbsoluteIndex(FocusedColumn)]is TdxDBGridButtonColumn) then
    begin
       //if (Columns[GetFocusedAbsoluteIndex(FocusedColumn)] = dgPartidasEliminar) then
         // dgPartidasEliminarButtonClick(sender, 0);
    end;
end;

end.
