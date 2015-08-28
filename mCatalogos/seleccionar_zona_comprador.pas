unit seleccionar_zona_comprador;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  seleccionar,     IBStoredProc, Menus, Db,
  IBCustomDataSet, IBQuery,   DBCtrls, StdCtrls, Mask,
       jpeg,
  ExtCtrls,  Grids, DBGrids, Buttons;

type
  TfrmSeleccionar_zona_comprador = class(TfrmSeleccionar)
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
  frmSeleccionar_zona_comprador: TfrmSeleccionar_zona_comprador;

implementation

uses IBModulo, reglas_de_negocios, IBTable;

{$R *.DFM}

procedure TfrmSeleccionar_zona_comprador.eliminar;
begin
  spDel.ParamByName('P_ZONA').AsInteger := dsDestino.DataSet.FieldByName('ID').AsInteger;
  spDel.ExecProc;
  spDel.Transaction.CommitRetaining;
  reglas.abrir_IBTabla(TIBTable(dsDestino.DataSet));
end;

procedure TfrmSeleccionar_zona_comprador.agregar;
begin
   spAdd.ParamByName('P_COMPRADOR').AsInteger := dsDestino.Tag;
   spAdd.ParamByName('P_ZONA').AsInteger      := dsFuente.DataSet.FieldByName('R_ID').AsInteger;
   spAdd.ExecProc;
   spAdd.Transaction.CommitRetaining;
   reglas.abrir_IBTabla(TIBTable(dsDestino.DataSet));
end;

procedure TfrmSeleccionar_zona_comprador.FormCreate(Sender: TObject);
begin
  todos := 'WHERE R_ID = 0';
  tabla := 'ESTADOS_Y_CIUDADES("AMBOS")';
  inherited;
  todos := 'WHERE R_ID > 0';
end;

end.
