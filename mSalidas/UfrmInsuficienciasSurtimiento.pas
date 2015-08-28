unit UfrmInsuficienciasSurtimiento;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  IBCustomDataSet, IBQuery, StdCtrls,
  Buttons, ExtCtrls, Grids, DBGrids, Db;

type
  TfrmInsuficienciasSurtimiento = class(TForm)
    dgPartidas: TDBGrid;
    qyInsuficientes: TIBQuery;
    qyInsuficientesR_MATERIAL: TIntegerField;
    qyInsuficientesR_MATERIAL_CB: TIBStringField;
    qyInsuficientesR_MATERIAL_C: TIBStringField;
    qyInsuficientesR_MATERIAL_D: TIBStringField;
    qyInsuficientesR_CANTIDAD: TFloatField;
    qyInsuficientesR_INVENTARIO: TFloatField;
    qyInsuficientesR_UNIDAD: TIntegerField;
    qyInsuficientesR_ROW: TIntegerField;
    dsInsuficientes: TDataSource;
    qyInsuficientesR_UNIDAD_C: TIBStringField;
    qyInsuficientesR_UNIDAD_D: TIBStringField;
    qyInsuficientesR_MATERIAL_S: TIBStringField;
    Panel2: TPanel;
    ibSalir: TBitBtn;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    awrID      : integer;
    awrAlmacen : integer;
    procedure setID(valor : integer);
    procedure setAlmacen(valor : integer);
  public
    { Public declarations }
  published
     property ID      : integer write setID;
     property ALMACEN : integer write setAlmacen;
  end;

var
  frmInsuficienciasSurtimiento: TfrmInsuficienciasSurtimiento;

implementation

{$R *.DFM}

procedure TfrmInsuficienciasSurtimiento.setID(valor : integer);
begin
   awrID := valor;
   if (awrID <> 0) and (awrAlmacen <> 0) then
   begin
      qyInsuficientes.Close;
      qyInsuficientes.ParamByName('P_ID').AsInteger      := awrID;
      qyInsuficientes.ParamByName('P_ALMACEN').AsInteger := awrAlmacen;
      qyInsuficientes.Open;
   end;
end;

procedure TfrmInsuficienciasSurtimiento.setAlmacen(valor : integer);
begin
   awrAlmacen := valor;
   if (awrID <> 0) and (awrAlmacen <> 0) then
   begin
      qyInsuficientes.Close;
      qyInsuficientes.ParamByName('P_ID').AsInteger      := awrID;
      qyInsuficientes.ParamByName('P_ALMACEN').AsInteger := awrAlmacen;
      qyInsuficientes.Open;
   end;
end;

procedure TfrmInsuficienciasSurtimiento.FormCreate(Sender: TObject);
begin
   awrID      := 0;
   awrAlmacen := 0;
end;

end.
