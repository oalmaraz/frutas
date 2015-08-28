unit seleccionar_bancos_proveedores;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  seleccionar,     IBStoredProc, Menus, Db,
  IBCustomDataSet, IBQuery,   DBCtrls, StdCtrls, Mask,
       jpeg,
  ExtCtrls,  Grids, DBGrids, Buttons;

type
  TfrmSeleccionar_Bancos_Proveedores = class(TfrmSeleccionar)
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
  frmSeleccionar_Bancos_Proveedores: TfrmSeleccionar_Bancos_Proveedores;

implementation

uses IBModulo, reglas_de_negocios;

{$R *.DFM}

procedure TfrmSeleccionar_Bancos_Proveedores.eliminar;
begin
  spDel.ParamByName('P_BANCO').AsInteger := dsDestino.DataSet.FieldByName('R_ID').AsInteger;
  spDel.ExecProc;
  spDel.Transaction.CommitRetaining;
  if dsDestino.DataSet <> nil then
     reglas.refresh_IBQuery(TIBQuery(dsDestino.DataSet));
end;

procedure TfrmSeleccionar_Bancos_Proveedores.agregar;
begin
   spAdd.ParamByName('P_PROVEEDOR').AsInteger := dsDestino.Tag;
   spAdd.ParamByName('P_BANCO').AsInteger   := dsFuente.DataSet.FieldByName('R_ID').AsInteger;
   spAdd.ExecProc;
   spAdd.Transaction.CommitRetaining;
   if dsDestino.DataSet <> nil then
      reglas.refresh_IBQuery(TIBQuery(dsDestino.DataSet));
end;

procedure TfrmSeleccionar_Bancos_Proveedores.FormCreate(Sender: TObject);
begin
  todos := 'WHERE R_ID = 0';
  tabla := 'BANCOS';
  inherited;
  todos := 'WHERE R_ID > 0';
end;

end.
