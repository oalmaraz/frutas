unit seleccionar_extensiones;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  seleccionar,  IBStoredProc, Menus, Db, IBCustomDataSet, IBQuery,
       DBCtrls, StdCtrls, Mask,
       jpeg,
  ExtCtrls,   Grids, DBGrids, Buttons;

type
  TfrmSeleccionar_Extensiones = class(TfrmSeleccionar)
    qySeleccionarR_ID: TIntegerField;
    qySeleccionarR_FECHA: TDateTimeField;
    qySeleccionarR_CLAVE: TIBStringField;
    qySeleccionarR_NOMBRE: TIBStringField;
    qySeleccionarR_ESTATUS: TIBStringField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    proceso    : integer;
    encabezado : integer;
  protected
    procedure agregar; override;
    procedure eliminar; override;
    procedure buscar; override;
  public
    { Public declarations }
    constructor Crear(AOwner : TComponent; sup, inf : TPoint; p_encabezado, p_proceso : integer);
  end;

var
  frmSeleccionar_Extensiones: TfrmSeleccionar_Extensiones;

implementation

uses IBModulo, reglas_de_negocios;

{$R *.DFM}

constructor TfrmSeleccionar_Extensiones.Crear(AOwner : TComponent; sup, inf : TPoint; p_encabezado, p_proceso : integer);
begin
   CrearObj(AOwner, sup.x, sup.y, inf.x, inf. y);
   proceso    := p_proceso;
   encabezado := p_encabezado;
end;

procedure TfrmSeleccionar_Extensiones.agregar;
begin
   spAdd.Params.Clear;
   case proceso of
     1: begin
           spAdd.StoredProcName := 'ADD_PRECIOS_EXTENSIONES';
           spAdd.Params.CreateParam(ftInteger,'P_NOMBRE_LISTA_PRECIO',ptInput);
           spAdd.Params.CreateParam(ftInteger,'P_CLIENTE_EXTENSION',ptInput);
           spAdd.ParamByName('P_NOMBRE_LISTA_PRECIO').AsInteger := encabezado;
           spAdd.ParamByName('P_CLIENTE_EXTENSION').AsInteger   := dsFuente.DataSet.FieldByName('R_ID').AsInteger;
           spAdd.ExecProc;
           spAdd.Transaction.CommitRetaining;
        end;
     2: begin
     {
           idOrden.Execute;
           if idOrden.Respuesta and (idOrden.Entrada <> '') then
           begin
              spAdd.StoredProcName := 'ADD_RUTAS_EXTENSIONES';
              spAdd.Params.CreateParam(ftInteger,'P_RUTA',ptInput);
              spAdd.Params.CreateParam(ftInteger,'P_EXTENSION',ptInput);
              spAdd.Params.CreateParam(ftInteger,'P_ORDEN',ptInput);
              spAdd.ParamByName('P_RUTA').AsInteger        := encabezado;
              spAdd.ParamByName('P_EXTENSION').AsInteger   := dsFuente.DataSet.FieldByName('R_ID').AsInteger;
              spAdd.ParamByName('P_ORDEN').AsString        := idOrden.Entrada;
              spAdd.ExecProc;
              spAdd.Transaction.CommitRetaining;
           end;
           }
        end;
   end;
   if dsDestino.DataSet <> nil then
     reglas.refresh_IBQuery(TIBQuery(dsDestino.DataSet));
end;

procedure TfrmSeleccionar_Extensiones.eliminar;
begin
   spAdd.Params.Clear;
   case proceso of
     1: begin
           spDel.StoredProcName := 'DEL_PRECIOS_EXTENSIONES';
           spDel.Params.CreateParam(ftInteger,'P_ID',ptInput);
           spDel.ParamByName('P_ID').AsInteger := dsDestino.DataSet.FieldByName('R_ID').AsInteger;
           spDel.ExecProc;
           spDel.Transaction.CommitRetaining;
        end;
     2: begin
           spDel.StoredProcName := 'DEL_RUTAS_EXTENSIONES';
           spDel.Params.CreateParam(ftInteger,'P_ID',ptInput);
           spDel.ParamByName('P_ID').AsInteger := dsDestino.DataSet.FieldByName('R_ID').AsInteger;
           spDel.ExecProc;
           spDel.Transaction.CommitRetaining;
        end;
   end;
   if dsDestino.DataSet <> nil then
      reglas.refresh_IBQuery(TIBQuery(dsDestino.DataSet));
end;

procedure TfrmSeleccionar_Extensiones.buscar;
begin
   qySeleccionar.Close;
   qySeleccionar.ParamByName('P_CAMPO').AsString := reglas.solo_alfabeto(laCampo.Caption);
   qySeleccionar.ParamByName('P_VALOR').AsString := meValor.Text;
   qySeleccionar.Open;
end;

procedure TfrmSeleccionar_Extensiones.FormCreate(Sender: TObject);
begin
  todos := '';
  tabla := 'SELECCIONAR_EXTENSION_ES(:P_CAMPO, :P_VALOR)';
  qySeleccionar.ParamByName('P_CAMPO').AsString := '';
  qySeleccionar.ParamByName('P_VALOR').AsString := '';
  inherited;
  laCampo.Caption := 'R_NOMBRE';
end;

end.
