unit UfrmSeleccionarPedidoParaPOS;

interface

uses
  USqlAnaliza, Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  IBStoredProc, Db, Menus, IBCustomDataSet, IBQuery, IBDatabase,
  Grids, DBGrids, Buttons, StdCtrls, ExtCtrls;

type
  TfrmSeleccionarPedidoParaPOS = class(TForm)
    IBDatabase1: TIBDatabase;
    IBTransaction1: TIBTransaction;
    qyBusqueda: TIBQuery;
    pmCampos: TPopupMenu;
    itemID: TMenuItem;
    itemCLAVE: TMenuItem;
    itemNOMBRE: TMenuItem;
    dsBusqueda: TDataSource;
    qyPartidas: TIBQuery;
    dsPartidas: TDataSource;
    paBusqueda: TPanel;
    buBusqueda: TBitBtn;
    buEjecutar: TBitBtn;
    edDato: TEdit;
    dgEncabezado: TDBGrid;
    Splitter1: TSplitter;
    fcImager2: TImage;
    spADD_REQ_REQCOT: TIBStoredProc;
    Panel6: TPanel;
    paEncabezado: TPanel;
    dgDetalle: TDBGrid;
    qyBusquedaID: TIntegerField;
    qyBusquedaFECHA_ALTA: TDateTimeField;
    qyBusquedaCLAVE: TIBStringField;
    qyBusquedaNOMBRE: TIBStringField;
    qyBusquedaESTATUS: TIBStringField;
    qyPartidasR_ID: TIntegerField;
    qyPartidasR_PEDIDO: TIntegerField;
    qyPartidasR_MATERIAL: TIntegerField;
    qyPartidasR_CLAVE: TIBStringField;
    qyPartidasR_DESCRIPCION: TIBStringField;
    qyPartidasR_CLIENTE_MAT_C: TIBStringField;
    qyPartidasR_CLIENTE_MAT_D: TIBStringField;
    qyPartidasR_UNIDAD: TIntegerField;
    qyPartidasR_DESCRIPCION_UNIDAD: TIBStringField;
    qyPartidasR_CANTIDAD: TFloatField;
    qyPartidasR_CANTIDAD_ENTREGADA: TFloatField;
    qyPartidasR_CANTIDAD_PENDIENTE: TFloatField;
    qyPartidasR_PRECIO: TFloatField;
    qyPartidasR_SUBTOTAL: TFloatField;
    qyPartidasR_IVA: TFloatField;
    qyPartidasR_IEPS: TFloatField;
    qyPartidasR_IMPUESTO1: TFloatField;
    qyPartidasR_IMPUESTO2: TFloatField;
    qyPartidasR_TOTAL: TFloatField;
    qyPartidasR_DESCUENTO_PORC: TFloatField;
    qyPartidasR_DP: TFloatField;
    qyPartidasR_DG: TFloatField;
    qyPartidasR_GT: TFloatField;
    qyPartidasR_ESTATUS: TIBStringField;
    qyPartidasR_COTIZACION: TIntegerField;
    qyPartidasR_CLAVE_COTIZACION: TIBStringField;
    qyPartidasR_PRECIO_SIN_IMPUESTOS: TFloatField;
    qyPartidasR_CAJAS: TIntegerField;
    qyPartidasR_ROWS: TIntegerField;
    qyPartidasR_IVA_PORC: TFloatField;
    qyPartidasR_IEPS_PORC: TFloatField;
    qyPartidasR_IMPUESTO1_PORC: TFloatField;
    qyPartidasR_IMPUESTO2_PORC: TFloatField;
    qyPartidasR_MATERIAL_CBARRAS: TIBStringField;
    qyPartidasR_MATERIAL_OBSERVACIONES: TBlobField;
    qyPartidasR_MATERIAL_FOTO: TBlobField;
    qyPartidasR_PZAS_X_CAJA: TIntegerField;
    qyPartidasR_COMENTARIO: TIBStringField;
    qyPartidasR_MEDIDA: TIntegerField;
    qyPartidasR_MEDIDA_DESCRIPCION: TIBStringField;
    qyPartidasR_COLOR: TIntegerField;
    qyPartidasR_COLOR_NOMBRE: TIBStringField;
    qyPartidasR_F_PROM_ENT: TDateTimeField;
    qyPartidasR_PNC: TFloatField;
    qyPartidasR_SERIE: TIBStringField;
    qyPartidasR_NUM_SERIE: TIBStringField;
    qyPartidasR_COSTO_ULT_COMPRA: TFloatField;
    qyBusquedaREFERENCIA: TIBStringField;
    itemReferencia: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure buEjecutarClick(Sender: TObject);
    procedure edDatoKeyPress(Sender: TObject; var Key: Char);
    procedure buBusquedaClick(Sender: TObject);
    procedure fcImager2DblClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure qyBusquedaAfterOpen(DataSet: TDataSet);
    procedure itemIDClick(Sender: TObject);
    procedure itemCLAVEClick(Sender: TObject);
    procedure itemNOMBREClick(Sender: TObject);
    procedure dgEncabezadoDblClick(Sender: TObject);
    procedure dgEncabezadoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure itemReferenciaClick(Sender: TObject);
  private
    { Private declarations }
    sqlReq     : TSqlAnaliza;
    awrAceptar : Boolean;
    awrCliente : integer;
    procedure setDatabase(valor : TIBDatabase);
    procedure setTransaction(valor : TIBTransaction);
    procedure setCliente(valor : integer);
    procedure setAceptar(valor : boolean);
    function getCotizacion : integer;
  public
    { Public declarations }
    procedure Open;
  published
     property DATABASE    : TIBDatabase write setDatabase;
     property TRANSACTION : TIBTransaction write setTransaction;
     property CLIENTE     : integer read awrCliente write setCliente;
     property ACEPTAR     : Boolean read awrAceptar write setAceptar;
     property COTIZACION  : integer read getCotizacion;
  end;

var
  frmSeleccionarPedidoParaPOS: TfrmSeleccionarPedidoParaPOS;

implementation

uses UfrmScript;

{$R *.DFM}

procedure TfrmSeleccionarPedidoParaPOS.setAceptar(valor : boolean);
begin
   awrAceptar := valor;
   if awrAceptar then
      Close;
end;

function TfrmSeleccionarPedidoParaPOS.getCotizacion : integer;
begin
   result := dsBusqueda.DataSet.FieldByName('ID').AsInteger;
end;

procedure TfrmSeleccionarPedidoParaPOS.setCliente(valor : integer);
begin
   awrCliente := valor;
end;

procedure TfrmSeleccionarPedidoParaPOS.Open;
begin
   sqlReq.Database    := qyBusqueda.Database;
   sqlReq.Transaction := qyBusqueda.Transaction;
   sqlReq.AddStrings(qyBusqueda.SQL);
end;

procedure TfrmSeleccionarPedidoParaPOS.setDatabase(valor : TIBDatabase);
begin
   qyBusqueda.Database       := valor;
   qyPartidas.Database       := valor;
   spADD_REQ_REQCOT.Database := valor;
end;

procedure TfrmSeleccionarPedidoParaPOS.setTransaction(valor : TIBTransaction);
begin
   qyBusqueda.Transaction       := valor;
   qyPartidas.Transaction       := valor;
   spADD_REQ_REQCOT.Transaction := valor;
end;

procedure TfrmSeleccionarPedidoParaPOS.FormCreate(Sender: TObject);
begin
   sqlReq     := TSqlAnaliza.Create;
   awrAceptar := false;
   awrCliente := 0;
   {
   dgEncabezado.IniFileName := ExtractFilePath(ParamStr(0))+'\SeleccionarPedidosParaPOSEnc.ini';
   dgEncabezado.LoadFromIniFile(ExtractFilePath(ParamStr(0))+'\SeleccionarPedidosParaPOSEnc.ini');

   dgDetalle.IniFileName := ExtractFilePath(ParamStr(0))+'\SeleccionarPedidosParaPOSDet.ini';
   dgDetalle.LoadFromIniFile(ExtractFilePath(ParamStr(0))+'\SeleccionarPedidosParaPOSDet.ini');
   }
end;

procedure TfrmSeleccionarPedidoParaPOS.buEjecutarClick(Sender: TObject);
var
  vCampo     : string;
  i, j       : integer;
  vTipo      : TFieldType;
begin
   sqlReq.LoadOriginal;

   vCampo := buBusqueda.Caption;
   vTipo  := sqlReq.dameTipoC(vCampo);

   if vTipo in [ftInteger] then
   begin
      j := sqlReq.AddParamIndex('P_DATO');
      sqlReq.setParam(j, edDato.Text, psCadena);
      sqlReq.AddWhereExtra('('+vCampo+' = :P_DATO)');
   end
   else
      begin
         j := sqlReq.AddParamIndex('P_DATO');
         sqlReq.setParam(j, '%'+edDato.Text+'%', psCadena);
         sqlReq.AddWhereExtra('(UPPER('+vCampo+') LIKE :P_DATO)');
      end;
   sqlReq.construirExtra;

   qyBusqueda.SQL.Clear;
   qyBusqueda.SQL.AddStrings(sqlReq.strSql);
   for i := 1 to sqlReq.indexParam do
   begin
      qyBusqueda.ParamByName(sqlReq.dameParam(i)).Value := sqlReq.dameParamValor(i);
   end;
   qyBusqueda.ParamByName('P_CLIENTE').AsInteger := awrCliente;
   qyBusqueda.Open;

   dgEncabezado.Datasource.Dataset.First;
end;

procedure TfrmSeleccionarPedidoParaPOS.edDatoKeyPress(Sender: TObject;
  var Key: Char);
begin
   if (key = #13) then
      buEjecutar.Click;
end;

procedure TfrmSeleccionarPedidoParaPOS.buBusquedaClick(Sender: TObject);
begin
  buEjecutar.Click;
  edDato.Setfocus;
end;

procedure TfrmSeleccionarPedidoParaPOS.fcImager2DblClick(Sender: TObject);
begin
  if sqlReq <> nil then
  begin
     try
        frmScript := TfrmScript.Create(Application);
        frmScript.AddStrings(sqlReq.strSql);
        frmScript.ShowModal;
     finally
        frmScript.Destroy;
     end;
  end;
end;

procedure TfrmSeleccionarPedidoParaPOS.FormDestroy(Sender: TObject);
begin
   sqlReq.Destroy;
end;

procedure TfrmSeleccionarPedidoParaPOS.qyBusquedaAfterOpen(
  DataSet: TDataSet);
begin
   qyPartidas.Close;
   qyPartidas.Open;
end;

procedure TfrmSeleccionarPedidoParaPOS.itemIDClick(Sender: TObject);
begin
   buBusqueda.Caption := 'P.ID';
end;

procedure TfrmSeleccionarPedidoParaPOS.itemCLAVEClick(Sender: TObject);
begin
   buBusqueda.Caption := 'P.CLAVE';
end;

procedure TfrmSeleccionarPedidoParaPOS.itemNOMBREClick(
  Sender: TObject);
begin
   buBusqueda.Caption := 'S.NOMBRE';
end;

procedure TfrmSeleccionarPedidoParaPOS.dgEncabezadoDblClick(Sender: TObject);
begin
   if not(qyBusqueda.IsEmpty) and (qyBusqueda.FieldByName('ESTATUS').AsString <> 'Autorizar') then
      ACEPTAR := true
   else
   if not(qyBusqueda.IsEmpty) and (qyBusqueda.FieldByName('ESTATUS').AsString = 'Autorizar') then
   begin
     ShowMessage('No es posible asignar la cotizacion, falta autorizacion.');
   end
end;

procedure TfrmSeleccionarPedidoParaPOS.dgEncabezadoKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if (key = 13) and not(qyBusqueda.IsEmpty) and (qyBusqueda.FieldByName('ESTATUS').AsString <> 'Autorizar') then
      ACEPTAR := true
   else
   if (key = 13) and not(qyBusqueda.IsEmpty) and (qyBusqueda.FieldByName('ESTATUS').AsString = 'Autorizar') then
   begin
     ShowMessage('No es posible asignar la cotizacion, falta autorizacion.');
   end
end;

procedure TfrmSeleccionarPedidoParaPOS.itemReferenciaClick(
  Sender: TObject);
begin
   buBusqueda.Caption := 'P.TABLA_REFERENCIA';
end;

end.
