unit seleccionar_pedidos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  seleccionar, Db,   IBStoredProc, Menus,
  IBCustomDataSet, IBQuery,
  ExtCtrls,  Grids, DBGrids, Buttons, Mask,
  DBCtrls, StdCtrls;

type
  TfrmSeleccionar_pedidos = class(TfrmSeleccionar)
    qySeleccionarID: TIntegerField;
    qySeleccionarCLAVE: TIBStringField;
    qySeleccionarFECHA_ALTA: TDateTimeField;
    qySeleccionarFECHA_VALIDEZ: TDateTimeField;
    dsTotales: TDataSource;
    qySeleccionarESTATUS: TIBStringField;
    qySeleccionarPRIORIDAD: TIBStringField;
    procedure FormCreate(Sender: TObject);
    procedure sbHijoPanels5Click(Sender: TObject);
  private
    { Private declarations }
  protected
    procedure agregar; override;
    procedure eliminar; override;
  public
    { Public declarations }
  end;

var
  frmSeleccionar_pedidos: TfrmSeleccionar_pedidos;

implementation

uses IBModulo, IBTable, reglas_de_negocios, ver_pedidos_en_facturas;

{$R *.DFM}

procedure TfrmSeleccionar_pedidos.FormCreate(Sender: TObject);
begin
  todos := 'WHERE ID = 0';
  tabla := 'PEDIDOS';
  inherited;
  todos := 'WHERE (ID > 0) AND (ESTATUS <> "Cancelado") AND (ESTATUS <> "Surtido") AND (PRIORIDAD = "No")';
  laCampo.Caption := 'CLAVE';
end;

procedure TfrmSeleccionar_pedidos.agregar;
begin
   {
   if sbHijo.Panels[5].Tag = 0 then
   begin
      spAdd.ParamByName('P_FACTURA').AsInteger  := dsDestino.Tag;
      spAdd.ParamByName('P_PEDIDO').AsInteger   := dsFuente.DataSet.FieldByName('ID').AsInteger;
      spAdd.ExecProc;
      spAdd.Transaction.CommitRetaining;
   end
   else
      begin
         while not(dsFuente.DataSet.Eof) do
         begin
            spAdd.ParamByName('P_FACTURA').AsInteger  := dsDestino.Tag;
            spAdd.ParamByName('P_PEDIDO').AsInteger   := dsFuente.DataSet.FieldByName('ID').AsInteger;
            spAdd.ExecProc;
            spAdd.Transaction.CommitRetaining;
            dsFuente.DataSet.Next;
         end;
      end;
   if dsDestino.DataSet <> nil then
      reglas.refresh_IBQuery(TIBQuery(dsDestino.DataSet));
   if dsTotales.DataSet <> nil then
      reglas.abrir_IBTabla(TIBTable(dsTotales.DataSet));
//   reglas.refresh_IBQuery(qySeleccionar);
}
end;

procedure TfrmSeleccionar_pedidos.eliminar;
begin
   frmVer_Pedidos_en_Facturas := TfrmVer_Pedidos_en_Facturas.Crear(Application, dsDestino.Tag);
   frmVer_Pedidos_en_Facturas.dsPartidas.DataSet := TIBTable(dsTotales.DataSet);
   frmVer_Pedidos_en_Facturas.ShowModal;
   frmVer_Pedidos_en_Facturas.Free;

   if dsDestino.DataSet <> nil then
      reglas.refresh_IBQuery(TIBQuery(dsDestino.DataSet));
   if dsTotales.DataSet <> nil then
      reglas.abrir_IBTabla(TIBTable(dsTotales.DataSet));
   reglas.refresh_IBQuery(qySeleccionar);
end;

procedure TfrmSeleccionar_pedidos.sbHijoPanels5Click(Sender: TObject);
begin
  inherited;
  {
  if sbHijo.Panels[5].Tag = 0 then
  begin
     sbHijo.Panels[5].Tag  := 1;
     sbHijo.Panels[5].Text := 'todos';
  end
  else
     begin
        sbHijo.Panels[5].Tag := 0;
        sbHijo.Panels[5].Text := 'uno';
     end;
     }
end;

end.
