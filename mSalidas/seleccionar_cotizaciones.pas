unit seleccionar_cotizaciones;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  seleccionar, Db, Grids, DBGrids, Buttons, IBStoredProc, Menus,
  IBCustomDataSet, IBQuery, Mask, DBCtrls, StdCtrls, ExtCtrls;

type
  TfrmSeleccionar_cotizaciones = class(TfrmSeleccionar)
    qySeleccionarID: TIntegerField;
    qySeleccionarCLAVE: TIBStringField;
    qySeleccionarFECHA_ALTA: TDateTimeField;
    qySeleccionarFECHA_VALIDEZ: TDateTimeField;
    qySeleccionarFECHA_CANCELACION: TDateTimeField;
    qySeleccionarCLIENTE: TIntegerField;
    qySeleccionarNOMBRE: TIBStringField;
    qySeleccionarRAZON_SOCIAL: TIBStringField;
    qySeleccionarTELEFONO: TIBStringField;
    qySeleccionarPEDIDO: TIntegerField;
    qySeleccionarMONEDA: TIntegerField;
    qySeleccionarCONDICION_COMERCIAL: TIntegerField;
    qySeleccionarANTICIPO: TFloatField;
    qySeleccionarOBSERVACIONES: TBlobField;
    qySeleccionarSUBTOTAL: TFloatField;
    qySeleccionarIVA: TFloatField;
    qySeleccionarIEPS: TFloatField;
    qySeleccionarIMPUESTO1: TFloatField;
    qySeleccionarIMPUESTO2: TFloatField;
    qySeleccionarTOTAL: TFloatField;
    qySeleccionarDESCUENTO_GLOBAL_PORC: TFloatField;
    qySeleccionarDESCUENTO_CANTIDAD_GLOBAL: TFloatField;
    qySeleccionarDESCUENTO_CANTIDAD_PARCIAL: TFloatField;
    qySeleccionarGRANTOTAL: TFloatField;
    qySeleccionarVENDEDOR: TIntegerField;
    qySeleccionarESTATUS: TIBStringField;
    dsTotales: TDataSource;
  private
    { Private declarations }
  protected
    procedure agregar; override;
    procedure eliminar; override;
  public
    { Public declarations }
    constructor crear(AOwner : TComponent; p_cliente : integer);
  end;

var
  frmSeleccionar_cotizaciones: TfrmSeleccionar_cotizaciones;

implementation

uses IBModulo, IBTable, reglas_de_negocios, ver_cotizaciones_en_pedidos;

{$R *.DFM}

constructor TfrmSeleccionar_cotizaciones.crear(AOwner : TComponent; p_cliente : integer);
begin
   todos := 'WHERE ID = 0';
   tabla := 'COTIZACIONES';
   Create(AOwner);
   todos           := 'WHERE (ID > 0) AND (ESTATUS <> "Cancelado") AND (PEDIDO IS NULL) AND (CLIENTE = '+IntToStr(p_cliente)+')';
   laCampo.Caption := 'CLAVE';
end;

procedure TfrmSeleccionar_cotizaciones.agregar;
begin
   spAdd.ParamByName('P_PEDIDO').AsInteger     := dsDestino.Tag;
   spAdd.ParamByName('P_COTIZACION').AsInteger := dsFuente.DataSet.FieldByName('ID').AsInteger;
   spAdd.ExecProc;
   spAdd.Transaction.CommitRetaining;
   
   if dsDestino.DataSet <> nil then
      reglas.refresh_IBQuery(TIBQuery(dsDestino.DataSet));
   if dsTotales.DataSet <> nil then
      reglas.abrir_IBTabla(TIBTable(dsTotales.DataSet));
   reglas.refresh_IBQuery(qySeleccionar);
end;

procedure TfrmSeleccionar_cotizaciones.eliminar;
begin
   frmVer_Cotizaciones_en_Pedidos                    := TfrmVer_Cotizaciones_en_Pedidos.Crear(Application, dsDestino.Tag);
   frmVer_Cotizaciones_en_Pedidos.dsPartidas.DataSet := TIBTable(dsTotales.DataSet);
   frmVer_Cotizaciones_en_Pedidos.ShowModal;
   frmVer_Cotizaciones_en_Pedidos.Free;
   if dsDestino.DataSet <> nil then
      reglas.refresh_IBQuery(TIBQuery(dsDestino.DataSet));
   if dsTotales.DataSet <> nil then
      reglas.abrir_IBTabla(TIBTable(dsTotales.DataSet));
   reglas.refresh_IBQuery(qySeleccionar);
end;

end.
