unit seleccionar_zonas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  seleccionar,     IBStoredProc, Menus, Db,
  IBCustomDataSet, IBQuery,   DBCtrls, StdCtrls, Mask,
       jpeg,
  ExtCtrls,  Grids, DBGrids, Buttons;

type
  TfrmSeleccionar_zonas = class(TfrmSeleccionar)
    qySeleccionarR_ID: TIntegerField;
    qySeleccionarR_DESCRIPCION: TIBStringField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  protected
    procedure agregar; override;
    procedure eliminar; override;
  public
    { Public declarations }
  end;

var
  frmSeleccionar_zonas: TfrmSeleccionar_zonas;

implementation

uses IBModulo, IBTable, reglas_de_negocios;

{$R *.DFM}

procedure TfrmSeleccionar_zonas.eliminar;
begin
  spDel.ParamByName('P_ZONA').AsInteger := dsDestino.DataSet.FieldByName('ID').AsInteger;
  spDel.ExecProc;
  spDel.Transaction.CommitRetaining;
  reglas.abrir_IBTabla(TIBTable(dsDestino.DataSet));
end;

procedure TfrmSeleccionar_zonas.agregar;
begin
   spAdd.ParamByName('P_VENDEDOR').AsInteger  := dsDestino.Tag;
   spAdd.ParamByName('P_ZONA').AsInteger      := dsFuente.DataSet.FieldByName('R_ID').AsInteger;
   spAdd.ExecProc;
   spAdd.Transaction.CommitRetaining;
   reglas.abrir_IBTabla(TIBTable(dsDestino.DataSet));
end;

procedure TfrmSeleccionar_zonas.FormCreate(Sender: TObject);
begin
  todos := 'WHERE R_ID = 0';
  tabla := 'ESTADOS_Y_CIUDADES("AMBOS")';
  inherited;
  todos := 'WHERE R_ID > 0';
end;

end.
