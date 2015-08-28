unit UfrmMaterialExistencias;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
         Db,
  IBCustomDataSet, IBQuery, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids;

type
  TfrmMaterialExistencias = class(TForm)
    dgExistencias: TDBGrid;
    qyExistencias: TIBQuery;
    qyExistenciasR_ALMACEN: TIntegerField;
    qyExistenciasR_ALMACEN_CLAVE: TIBStringField;
    qyExistenciasR_ALMACEN_NOMBRE: TIBStringField;
    qyExistenciasR_CANTIDAD: TFloatField;
    dsExistencias: TDataSource;
    Panel2: TPanel;
    ibSalir: TBitBtn;
    procedure ibSalirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Open(material, almacen : integer);
  end;

var
  frmMaterialExistencias: TfrmMaterialExistencias;

implementation

uses
  IBModulo;

{$R *.DFM}

procedure TfrmMaterialExistencias.Open(material, almacen : integer);
begin
   qyExistencias.Close;
   qyExistencias.ParamByName('P_MATERIAL').AsInteger := material;
   qyExistencias.ParamByName('P_ALMACEN').AsInteger  := almacen;
   qyExistencias.Open;
   dgExistencias.DataSource.DataSet.First;
end;

procedure TfrmMaterialExistencias.ibSalirClick(Sender: TObject);
begin
   Close;
end;

end.
