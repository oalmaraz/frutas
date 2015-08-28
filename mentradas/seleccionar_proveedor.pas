unit seleccionar_proveedor;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  seleccionar,  IBStoredProc, Menus, Db, IBCustomDataSet, IBQuery,
    Grids, DBGrids, Buttons,   Mask, DBCtrls,
  StdCtrls, ExtCtrls;

type
  TfrmSeleccionar_proveedor = class(TfrmSeleccionar)
    qySeleccionarR_ID: TIntegerField;
    qySeleccionarR_DESCUENTO_PORC: TFloatField;
    qySeleccionarR_COMPRA_MINIMA: TFloatField;
    qySeleccionarR_CLAVE: TIBStringField;
    qySeleccionarR_NOMBRE: TIBStringField;
    qySeleccionarR_RAZON_SOCIAL: TIBStringField;
    qySeleccionarR_TELEFONO: TIBStringField;
    spCXP_CAMPO_PAGO_MODIFICADO: TIBStoredProc;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    proceso   : integer;
    nombre    : string;
  protected
    procedure agregar; override;
    procedure buscar; override;
  public
    { Public declarations }
    constructor crear(AOwner : TComponent; pntX, pntY : TPoint; p_proceso : integer);
    function dameNombre : string;
  end;

var
  frmSeleccionar_proveedor: TfrmSeleccionar_proveedor;

implementation

uses IBModulo, IBTable, reglas_de_negocios;

{$R *.DFM}

constructor TfrmSeleccionar_proveedor.crear(AOwner : TComponent; pntX, pntY : TPoint; p_proceso : integer);
begin
   crearObj(AOwner, pntX.x, pntX.y, pntY.x, pntY.y);
   proceso := p_proceso;
end;

function TfrmSeleccionar_proveedor.dameNombre : string;
begin
   Result := nombre;
end;

procedure TfrmSeleccionar_proveedor.buscar;
begin
   qySeleccionar.Close;
   qySeleccionar.ParamByName('P_CAMPO').AsString := reglas.solo_alfabeto(laCampo.Caption);
   qySeleccionar.ParamByName('P_VALOR').AsString := meValor.Text;
   qySeleccionar.Open;
end;

procedure TfrmSeleccionar_proveedor.agregar;
begin
   case proceso of
     1 : begin
            TIBTable(dsDestino.DataSet).FieldByName('PROVEEDOR').AsInteger := dsFuente.DataSet.FieldByName('R_ID').AsInteger;
         end;
     2 : begin
            spCXP_CAMPO_PAGO_MODIFICADO.ParamByName('P_PROVEEDOR').AsInteger := dsFuente.DataSet.FieldByName('R_ID').AsInteger;
            spCXP_CAMPO_PAGO_MODIFICADO.ExecProc;
            spCXP_CAMPO_PAGO_MODIFICADO.Transaction.CommitRetaining;

            TIBQuery(dsDestino.DataSet).Close;
            TIBQuery(dsDestino.DataSet).ParamByName('P_PROVEEDOR').AsInteger := dsFuente.DataSet.FieldByName('R_ID').AsInteger;
            TIBQuery(dsDestino.DataSet).Open;
            Close;
         end;
     3 : begin
            valor  := dsFuente.DataSet.FieldByName('R_ID').AsInteger;
            nombre := dsFuente.DataSet.FieldByName('R_NOMBRE').AsString;
         end;
   else
      begin
         TIBQuery(dsDestino.DataSet).Close;
         TIBQuery(dsDestino.DataSet).ParamByName('P_PROVEEDOR').AsInteger := dsFuente.DataSet.FieldByName('R_ID').AsInteger;
         TIBQuery(dsDestino.DataSet).Open;
      end;
   end;
   Close;
end;

procedure TfrmSeleccionar_proveedor.FormCreate(Sender: TObject);
begin
  nombre    := ''; 
  todos := '';
  tabla := 'VER_PROVEEDOR_ES(:P_CAMPO, :P_VALOR)';
  qySeleccionar.ParamByName('P_CAMPO').AsString := '';
  qySeleccionar.ParamByName('P_VALOR').AsString := '';
  inherited;
  laCampo.Caption := 'R_NOMBRE';
end;

end.
