unit seleccionar_bancos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  seleccionar,     IBStoredProc, Menus, Db,
  IBCustomDataSet, IBQuery,   DBCtrls, StdCtrls, Mask,
       jpeg,
  ExtCtrls,  Buttons, Grids, DBGrids;

type
  TfrmSeleccionar_bancos = class(TfrmSeleccionar)
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
  frmSeleccionar_bancos: TfrmSeleccionar_bancos;

implementation

uses IBModulo, reglas_de_negocios;

{$R *.DFM}

procedure TfrmSeleccionar_bancos.eliminar;
begin
  spDel.ParamByName('P_BANCO').AsInteger := dsDestino.DataSet.FieldByName('R_ID').AsInteger;
  spDel.ExecProc;
  spDel.Transaction.CommitRetaining;
  if dsDestino.DataSet <> nil then
     reglas.refresh_IBQuery(TIBQuery(dsDestino.DataSet));
end;

procedure TfrmSeleccionar_bancos.agregar;
begin
   spAdd.ParamByName('P_CLIENTE').AsInteger := dsDestino.Tag;
   spAdd.ParamByName('P_BANCO').AsInteger   := dsFuente.DataSet.FieldByName('R_ID').AsInteger;
   spAdd.ExecProc;
   spAdd.Transaction.CommitRetaining;
   if dsDestino.DataSet <> nil then
      reglas.refresh_IBQuery(TIBQuery(dsDestino.DataSet));
end;


procedure TfrmSeleccionar_bancos.FormCreate(Sender: TObject);
begin
  todos := 'WHERE R_ID = 0';
  tabla := 'BANCOS';
  inherited;
  todos := 'WHERE R_ID > 0';
end;

end.
