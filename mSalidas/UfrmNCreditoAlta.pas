unit UfrmNCreditoAlta;

interface

uses
  UTypeNCreditoAlta, Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids,
  ExtCtrls, 
  UfrmFrameMaterial, Menus, Db, IBCustomDataSet, IBQuery, DBCtrls, DBGrids,
  StdCtrls, Buttons;

type
  TfrmNCreditoAlta = class(TForm)
    paLienzo: TPanel;
    fcLogo: TImage;
    Label2: TLabel;
    laAlmacenOrigen: TLabel;
    laAlmacenDestino: TLabel;
    sbRefreshAlmDestino: TSpeedButton;
    Label4: TLabel;
    edFechaAlta: TEdit;
    cbAlmOrigen: TDBLookupComboBox;
    cbAlmDestino: TDBLookupComboBox;
    edClave: TEdit;
    Label1: TLabel;
    cbDocumentos: TDBLookupComboBox;
    sbRefreshDoc: TSpeedButton;
    Label3: TLabel;
    edCliente: TEdit;
    Label5: TLabel;
    edExtension: TEdit;
    FashionPanel1: TPanel;
    FashionPanel2: TPanel;
    Label6: TLabel;
    cbMonedas: TDBLookupComboBox;
    dgPartidas: TDBGrid;
    buCancelar: TBitBtn;
    buModificar: TBitBtn;
    buGuardar: TBitBtn;
    buEjecutar: TBitBtn;
    cbEstatus: TDBLookupComboBox;
    edEstatus: TEdit;
    Label18: TLabel;
    MarcoMateriales1: TMarcoMateriales;
    ibNuevaPartida: TBitBtn;
    ibModificarPartida: TBitBtn;
    ibGuardarPartida: TBitBtn;
    ibCancelarPartida: TBitBtn;
    ibEliminarPartida: TBitBtn;
    pmTeclas: TPopupMenu;
    itemF7: TMenuItem;
    itemF8: TMenuItem;
    itemF9: TMenuItem;
    itemF10: TMenuItem;
    itemF11: TMenuItem;
    qyDescuentos: TIBQuery;
    edDGlobal: TEdit;
    Label7: TLabel;
    Panel2: TPanel;
    edGranTotal: TEdit;
    ibSalir: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ibSalirClick(Sender: TObject);
    procedure buCancelarClick(Sender: TObject);
    procedure buModificarClick(Sender: TObject);
    procedure buGuardarClick(Sender: TObject);
    procedure cbEstatusChange(Sender: TObject);
    procedure buEjecutarClick(Sender: TObject);
    procedure edFechaAltaEnter(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ibEliminarPartidaClick(Sender: TObject);
    procedure ibNuevaPartidaClick(Sender: TObject);
    procedure ibCancelarPartidaClick(Sender: TObject);
    procedure ibModificarPartidaClick(Sender: TObject);
    procedure ibGuardarPartidaClick(Sender: TObject);
    procedure itemF7Click(Sender: TObject);
    procedure itemF8Click(Sender: TObject);
    procedure itemF9Click(Sender: TObject);
    procedure itemF10Click(Sender: TObject);
    procedure itemF11Click(Sender: TObject);
  private
    NotasDeCredito : TNotasDeCredito;
    edicionDetalle : boolean;
    edicion        : boolean;
    grid           : TDBGrid;
    estatus        : string;
    usuario        : integer;
    idActual       : integer;
    procedure setReferencia(valor : integer);
    procedure setTabla(valor : string);
    procedure fijarBotones;
  public
    constructor Crear(AOwner : TComponent; pId : integer);overload;
    constructor Crear(AOwner : TComponent; pGrid : TDBGrid; pUsuario : integer);overload;
    procedure nuevo;
    procedure NuevaPartidaFactura(pId : integer; pCantidad : double);
    procedure NuevaPartidaPedido(pId : integer; pCantidad : double);
    procedure CargarValores;
    procedure acomodarPantalla;
  published
    property Referencia : integer write setReferencia;
    property Tabla      : string write setTabla;
    property User       : integer write usuario;
  end;

{var
  frmNCreditoAlta: TfrmNCreditoAlta;}

implementation

{$R *.DFM}

procedure TfrmNCreditoAlta.fijarBotones;
var
   estatus : boolean;
begin
   estatus := (cbEstatus.Text = 'Afectado') or (cbEstatus.Text = 'Cancelado') or (cbEstatus.Text = 'Terminado');
   //botones encabezado
//   ibNuevo.Enabled     := not(edicionDetalle) and not edicion;
   buModificar.Enabled := not(edicionDetalle) and not edicion;// and not(MovimientosDeInventario.VACIO);
//   ibEliminar.Enabled  := not(edicionDetalle) and not edicion and not(MovimientosDeInventario.VACIO);
   buGuardar.Enabled   := not(edicionDetalle) and edicion;
   buCancelar.Enabled  := not(edicionDetalle) and edicion;
   //componentes encabezado
   edFechaAlta.Enabled         := edicion;
   cbDocumentos.Enabled        := edicion;
   sbRefreshDoc.Enabled        := edicion;
   cbAlmDestino.Enabled        := edicion;
   sbRefreshAlmDestino.Enabled := edicion;
   edEstatus.Enabled           := edicion;
   cbEstatus.Enabled           := edicion;
   edDGlobal.Enabled           := edicion;
   buEjecutar.Enabled          := edicion;
   //botones detalle
   ibNuevaPartida.Enabled     := not(estatus) and not(edicion) {and not(MovimientosDeInventario.VACIO)} and not(edicionDetalle);
   ibModificarPartida.Enabled := not(estatus) and not(edicion) {and not(MovimientosDeInventario.VACIO)} and not(edicionDetalle) and not(NotasDeCredito.DETVACIO);
   ibEliminarPartida.Enabled  := not(estatus) and not(edicion) {and not(MovimientosDeInventario.VACIO)} and not(edicionDetalle) and not(NotasDeCredito.DETVACIO);
   ibGuardarPartida.Enabled   := not(estatus) and not(edicion) {and not(MovimientosDeInventario.VACIO)} and edicionDetalle;
   ibCancelarPartida.Enabled  := not(estatus) and not(edicion) {and not(MovimientosDeInventario.VACIO)} and edicionDetalle;
   //Teclas
   itemF7.Enabled             := ibNuevaPartida.Enabled;
   itemF8.Enabled             := ibModificarPartida.Enabled;
   itemF9.Enabled             := ibGuardarPartida.Enabled;
   itemF10.Enabled            := ibCancelarPartida.Enabled;
   itemF11.Enabled            := ibEliminarPartida.Enabled;
   //componentes detalle
   MarcoMateriales1.Visible   := not(estatus) and not(edicion) {and not(MovimientosDeInventario.VACIO)} and edicionDetalle;
   //botones estatus bar
{   buInicio.Enabled           := not(edicion) and not(edicionDetalle);
   buAnterior.Enabled         := not(edicion) and not(edicionDetalle);
   buSiguiente.Enabled        := not(edicion) and not(edicionDetalle);
   buFin.Enabled              := not(edicion) and not(edicionDetalle);}
end;

constructor TfrmNCreditoAlta.Crear(AOwner : TComponent; pId : integer);
begin
   inherited Create(AOwner);
   edicion  := False;
   idActual := pId;
end;

procedure TfrmNCreditoAlta.Nuevo;
begin
  edicion := not edicion;
  NotasDeCredito.ID := -1;
  fijarBotones;
end;

procedure TfrmNCreditoAlta.acomodarPantalla;
var
   Ancho  : integer;
   Altura : integer;
   PosY   : integer;
   alturaTitle : integer;
begin
  Ancho  := GetSystemMetrics(SM_CXSCREEN);
  Altura := GetSystemMetrics(SM_CYSCREEN);
  alturaTitle := GetSystemMetrics(SM_CYSIZE) + 4;
  posY   := Ancho - Self.Width;

  Self.Top    := 0;
  Self.Height := Altura - alturaTitle;
  Self.Left   := PosY;
end;

procedure TfrmNCreditoAlta.NuevaPartidaFactura(pId : integer; pCantidad : double);
var
   cantidad : double;
begin
   {
   idCantidad.Titulo  := 'Facturas Partidas';
   idCantidad.Entrada := FormatFloat('########0.00',pCantidad);
   idCantidad.Execute;
   if idCantidad.Respuesta and (idCantidad.Entrada <> '') then
   begin
      cantidad := StrToFloat(idCantidad.Entrada);
      NotasDeCredito.AddPartidaFactura(pId, cantidad);
      CargarValores;
   end;
   }
end;

procedure TfrmNCreditoAlta.NuevaPartidaPedido(pId : integer; pCantidad : double);
begin
end;

procedure TfrmNCreditoAlta.setReferencia(valor : integer);
begin
   NotasDeCredito.ID_REFERENCIA := valor;
   NotasDeCredito.refreshDocumentos(valor);
end;

procedure TfrmNCreditoAlta.setTabla(valor : string);
begin
   NotasDeCredito.TABLA_REFERENCIA := valor;
end;

constructor TfrmNCreditoAlta.Crear(AOwner : TComponent; pGrid : TDBGrid; pUsuario : integer);
begin
   Crear(AOwner, -1);
   usuario := pUsuario;
   grid    := pGrid;
   if not(grid.DataSource.DataSet.IsEmpty) then
      idActual := grid.DataSource.DataSet.FieldByName('R_ID').AsInteger
   else
      idActual := -1;
end;

procedure TfrmNCreditoAlta.CargarValores;
begin
  // Cargamos los valores de las propiedades en los componentes
  // visuales del formulario
  edFechaAlta.Text            := DateTimeToStr(NotasDeCredito.FECHA_ALTA);
  edClave.Text                := NotasDeCredito.CLAVE;
  cbDocumentos.KeyValue := NotasDeCredito.CUENTA_POR_COBRAR;
  cbMonedas.KeyValue    := NotasDeCredito.MONEDA;
  cbAlmOrigen.KeyValue  := NotasDeCredito.ALMACEN;
  cbAlmDestino.KeyValue := NotasDeCredito.ALMACEN;
  edEstatus.Text              := NotasDeCredito.ESTATUS;
  edGranTotal.Text            := FormatFloat('$ ###,###,##0.00',NotasDeCredito.GRANTOTAL);
  NotasDeCredito.activarEstatus;
end;

procedure TfrmNCreditoAlta.FormCreate(Sender: TObject);
begin
   NotasDeCredito := TNotasDeCredito.Create;
   MarcoMateriales1.MOVIMIENTO := obSalida;
   MarcoMateriales1.inicializar(true);
end;

procedure TfrmNCreditoAlta.FormShow(Sender: TObject);
begin
   cbMonedas.ListSource        := NotasDeCredito.DSMonedas;
   cbAlmOrigen.ListSource      := NotasDeCredito.DSAlmacenes;
   cbAlmDestino.ListSource     := NotasDeCredito.DSAlmacenes;
   cbDocumentos.ListSource     := NotasDeCredito.DSDocumentos;
   dgPartidas.DataSource       := NotasDeCredito.DSDetalle;
   cbDocumentos.KeyValue := cbDocumentos.ListSource.DataSet.FieldByName('R_ID').AsInteger;
   cbEstatus.ListSource        := NotasDeCredito.DSEstatus;
end;

procedure TfrmNCreditoAlta.ibSalirClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmNCreditoAlta.buCancelarClick(Sender: TObject);
begin
  edicion := not edicion;
  fijarBotones;
  NotasDeCredito.Cargar(idActual);
  NotasDeCredito.CargarDetalle(idActual);
  CargarValores;
end;

procedure TfrmNCreditoAlta.buModificarClick(Sender: TObject);
begin
   idActual          := NotasDeCredito.ID;
   estatus           := NotasDeCredito.ESTATUS;
   edicion           := not edicion;
   fijarBotones;
   NotasDeCredito.USUARIO := usuario;
   buEjecutar.Enabled := false;
   cbDocumentos.SetFocus;
end;

procedure TfrmNCreditoAlta.buGuardarClick(Sender: TObject);
var
   tmp : integer;
   fraccion   : Real;
   entero     : Real;
begin
   if edFechaAlta.Focused then
      cbDocumentos.SetFocus;
   entero   := Int(StrToDateTime(edFechaAlta.Text));
   fraccion := Frac(StrToDateTime(edFechaAlta.Text));
   if entero > 0 then
   begin
      if fraccion = 0 then
         edFechaAlta.Text := DateTimetoStr(StrToDateTime(edFechaAlta.Text) + time);
   end;

   NotasDeCredito.CLAVE             := edClave.Text;
   NotasDeCredito.FECHA_ALTA        := StrToDateTime(edFechaAlta.Text);
   NotasDeCredito.CLIENTE           := edCliente.Tag;
   if edExtension.Tag <> 0 then
      NotasDeCredito.EXTENSION      := edExtension.Tag
   else
      NotasDeCredito.EXTENSION      := 0;
   if cbDocumentos.KeyValue <> 0 then
      NotasDeCredito.CUENTA_POR_COBRAR := cbDocumentos.KeyValue
   else
      NotasDeCredito.CUENTA_POR_COBRAR := -3;
   NotasDeCredito.ALMACEN           := cbAlmDestino.KeyValue;
   NotasDeCredito.IVA_PORC          := 0.00;
   NotasDeCredito.IEPS_PORC         := 0.00;
   NotasDeCredito.IMPUESTO1_PORC    := 0.00;
   NotasDeCredito.IMPUESTO2_PORC    := 0.00;
   NotasDeCredito.MONEDA            := cbMonedas.KeyValue;
   NotasDeCredito.USUARIO           := usuario;
   NotasDeCredito.ESTATUS           := edEstatus.Text;

   tmp := NotasDeCredito.Guardar;
   if tmp <> -1 then
   begin
      idActual := tmp;
      NotasDeCredito.Cargar(idActual);
      NotasDeCredito.CargarDetalle(idActual);
   end;
   edicion := not edicion;
   FijarBotones;
   CargarValores;
end;

procedure TfrmNCreditoAlta.cbEstatusChange(Sender: TObject);
begin
  edEstatus.Text := cbEstatus.Text;
  if edEstatus.Text <> '' then
  begin
     NotasDeCredito.cargarEstatusEjecucion;
     buEjecutar.Enabled := true;
     buGuardar.Enabled := false;
  end;
end;

procedure TfrmNCreditoAlta.buEjecutarClick(Sender: TObject);
begin
   edEstatus.Text := estatus;
   //cbEstatus.Text := estatus;
   buGuardar.Click;
   if NotasDeCredito.ejecucionEstatus(idActual) then
   begin
      NotasDeCredito.Cargar(idActual);
      CargarValores;
   end;
end;

procedure TfrmNCreditoAlta.edFechaAltaEnter(Sender: TObject);
begin
  edFechaAlta.Text := ( edFechaAlta.text);
end;

procedure TfrmNCreditoAlta.FormDestroy(Sender: TObject);
begin
   if edEstatus.Text = 'Sin Afectar' then
   begin
      NotasDeCredito.eliminar;
   end;
   NotasDeCredito.Free;
   NotasDeCredito:=nil;
   
end;

procedure TfrmNCreditoAlta.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TfrmNCreditoAlta.ibEliminarPartidaClick(Sender: TObject);
begin
  if MessageDlg(' ¿ Eliminar Registro ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes  then
  begin
     NotasDeCredito.DelPartida(dgPartidas.DataSource.DataSet.FieldByName('R_ID').AsInteger);
     CargarValores;
  end;
end;

procedure TfrmNCreditoAlta.ibNuevaPartidaClick(Sender: TObject);
begin
   edicionDetalle := not edicionDetalle;
   fijarBotones;

   NotasDeCredito.FDDet.ID := 0;
{   MovimientosDeInventarioDet.ID                    := -1;
   MovimientosDeInventarioDet.ID_INVENTARIO         := null;
   MovimientosDeInventarioDet.CAJAS                 := 0;
   MovimientosDeInventarioDet.PEDIDO                := null;
   MovimientosDeInventarioDet.PEDIDO_DETALLE        := null;
   MovimientosDeInventarioDet.FACTURA               := null;
   MovimientosDeInventarioDet.FACTURA_DETALLE       := null;
   MovimientosDeInventarioDet.DEVOLUCIONES_CANTIDAD := 0;
   MovimientosDeInventarioDet.DEVOLUCIONES_CAJA     := 0;
   MovimientosDeInventarioDet.REFERENCIA            := '';
   MovimientosDeInventarioDet.ESTATUS               := 'Activo';}

   MarcoMateriales1.limpiar;

   //sirve asi, para el case en que se edite el registro
   //no capturar con boton buCapturar.
   if MarcoMateriales1.FLAG_MEDIDAS then
      MarcoMateriales1.edCantidad.Visible := false
   else
      MarcoMateriales1.buCapturar.Visible := false;
   MarcoMateriales1.edMaterial.SetFocus;
end;

procedure TfrmNCreditoAlta.ibCancelarPartidaClick(Sender: TObject);
begin
   edicionDetalle := not edicionDetalle;
   fijarBotones;
end;

procedure TfrmNCreditoAlta.ibModificarPartidaClick(Sender: TObject);
begin
  if not(NotasDeCredito.DETVACIO) then
  begin
     edicionDetalle := not edicionDetalle;
     fijarBotones;
     MarcoMateriales1.boton := true;
     MarcoMateriales1.findMaterial(NotasDeCredito.DSDetalle.DataSet.FieldByName('R_MATERIAL').AsInteger,NotasDeCredito.DSDetalle.DataSet.FieldByName('R_UNIDAD').AsInteger);

     //sirve asi, para el caso en que se edite el registro
     //no capturar con boton buCapturar.
     MarcoMateriales1.edCantidad.Visible := true;
     MarcoMateriales1.buCapturar.Visible := false;
     NotasDeCredito.FDDet.ID                    := NotasDeCredito.DSDetalle.DataSet.FieldByName('R_ID').AsInteger;
     MarcoMateriales1.edMaterial.Text           := NotasDeCredito.DSDetalle.DataSet.FieldByName('R_MATERIAL_CLAVE').AsString;
     MarcoMateriales1.edDescripcion.Text        := NotasDeCredito.DSDetalle.DataSet.FieldByName('R_MATERIAL_DESCRIPCION').AsString;
     MarcoMateriales1.edMaterial.Tag            := NotasDeCredito.DSDetalle.DataSet.FieldByName('R_MATERIAL').AsInteger;
     MarcoMateriales1.edCantidad.Text           := NotasDeCredito.DSDetalle.DataSet.FieldByName('R_CANTIDAD').AsString;
     MarcoMateriales1.edPrecioCosto.Text       := NotasDeCredito.DSDetalle.DataSet.FieldByName('R_PRECIO').AsString;
     MarcoMateriales1.cbUnidades.KeyValue := NotasDeCredito.DSDetalle.DataSet.FieldByName('R_UNIDAD').AsInteger;
     MarcoMateriales1.edSubTotal.Text          := NotasDeCredito.DSDetalle.DataSet.FieldByName('R_SUBTOTAL').AsString;
     MarcoMateriales1.edIVA.Text               := NotasDeCredito.DSDetalle.DataSet.FieldByName('R_IVA').AsString;
     MarcoMateriales1.edIEPS.Text              := NotasDeCredito.DSDetalle.DataSet.FieldByName('R_IEPS').AsString;
     MarcoMateriales1.edImpuesto1.Text         := NotasDeCredito.DSDetalle.DataSet.FieldByName('R_IMPUESTO1').AsString;
     MarcoMateriales1.edImpuesto2.Text         := NotasDeCredito.DSDetalle.DataSet.FieldByName('R_IMPUESTO2').AsString;
     MarcoMateriales1.edDescuentoPorc.Text     := NotasDeCredito.DSDetalle.DataSet.FieldByName('R_DESCUENTO_PORC').AsString;
     MarcoMateriales1.ivaPorc                   := NotasDeCredito.DSDetalle.DataSet.FieldByName('R_IVA_PORC').AsFloat;
     MarcoMateriales1.iepsPorc                  := NotasDeCredito.DSDetalle.DataSet.FieldByName('R_IEPS_PORC').AsFloat;
     MarcoMateriales1.impuesto1Porc             := NotasDeCredito.DSDetalle.DataSet.FieldByName('R_IMPUESTO1_PORC').AsFloat;
     MarcoMateriales1.impuesto2Porc             := NotasDeCredito.DSDetalle.DataSet.FieldByName('R_IMPUESTO2_PORC').AsFloat;
     MarcoMateriales1.edPU.Text                := NotasDeCredito.DSDetalle.DataSet.FieldByName('R_PRECIO_SIN_IMPUESTOS').AsString;

{     if MarcoMateriales1.cbMedidas.Visible and (dsPartidas.DataSet.FieldByName('R_MEDIDA').AsString <> '') then
        MarcoMateriales1.cbMedidas.KeyValue := dsPartidas.DataSet.FieldByName('R_MEDIDA').AsInteger;
     if MarcoMateriales1.cbColores.Visible and (dsPartidas.DataSet.FieldByName('R_COLOR').AsString <> '') then
        MarcoMateriales1.cbColores.KeyValue := dsPartidas.DataSet.FieldByName('R_COLOR').AsInteger;}
     MarcoMateriales1.edCantidad.SetFocus;
     MarcoMateriales1.boton := false;
  end;
end;

procedure TfrmNCreditoAlta.ibGuardarPartidaClick(Sender: TObject);
begin
   NotasDeCredito.FDDet.NOTA_DE_CREDITO      := NotasDeCredito.ID;
   NotasDeCredito.FDDet.MATERIAL             := MarcoMateriales1.edMaterial.Tag;
   NotasDeCredito.FDDet.CANTIDAD             := StrToInt(MarcoMateriales1.edCantidad.Text);
   NotasDeCredito.FDDet.PRECIO               := StrToInt(MarcoMateriales1.edPrecioCosto.Text);
   NotasDeCredito.FDDet.UNIDAD               := MarcoMateriales1.cbUnidades.KeyValue;
   NotasDeCredito.FDDet.SUBTOTAL             := StrToInt(MarcoMateriales1.edSubTotal.Text);
   NotasDeCredito.FDDet.IVA                  := StrToInt(MarcoMateriales1.edIVA.Text);
   NotasDeCredito.FDDet.IEPS                 := StrToInt(MarcoMateriales1.edIEPS.Text);
   NotasDeCredito.FDDet.IMPUESTO1            := StrToInt(MarcoMateriales1.edImpuesto1.Text);
   NotasDeCredito.FDDet.IMPUESTO2            := StrToInt(MarcoMateriales1.edImpuesto2.Text);
   NotasDeCredito.FDDet.IVA_PORC             := MarcoMateriales1.ivaPorc;
   NotasDeCredito.FDDet.IEPS_PORC            := MarcoMateriales1.iepsPorc;
   NotasDeCredito.FDDet.IMPUESTO1_PORC       := MarcoMateriales1.impuesto1Porc;
   NotasDeCredito.FDDet.IMPUESTO2_PORC       := MarcoMateriales1.impuesto2Porc;
   NotasDeCredito.FDDet.PRECIO_SIN_IMPUESTOS := StrToInt(MarcoMateriales1.edPU.Text);
   NotasDeCredito.FDDet.PORC_DP              := StrToInt(MarcoMateriales1.edDescuentoPorc.Text);
   NotasDeCredito.FDDet.PORC_DG              := StrToInt(edDGlobal.Text);
   //Agregar partida
   NotasDeCredito.ActPartida;

   edicionDetalle := not edicionDetalle;
   fijarBotones;
   CargarValores
end;

procedure TfrmNCreditoAlta.itemF7Click(Sender: TObject);
begin
   ibNuevaPartida.Click;
end;

procedure TfrmNCreditoAlta.itemF8Click(Sender: TObject);
begin
   ibModificarPartida.Click;
end;

procedure TfrmNCreditoAlta.itemF9Click(Sender: TObject);
begin
   ibGuardarPartida.Click;
end;

procedure TfrmNCreditoAlta.itemF10Click(Sender: TObject);
begin
   ibCancelarPartida.Click;
end;

procedure TfrmNCreditoAlta.itemF11Click(Sender: TObject);
begin
   ibEliminarPartida.Click;
end;

end.
