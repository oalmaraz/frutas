unit URPT_PEDIDO_PARTIDAS;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
    Db, IBCustomDataSet, IBQuery,
    ExtCtrls, StdCtrls;

type
  TRPT_PEDIDO_PARTIDAS = class(TForm)
    qyPedidoPartidas: TIBQuery;
    qyPedidoPartidasR_ID: TIntegerField;
    qyPedidoPartidasR_PEDIDO: TIntegerField;
    qyPedidoPartidasR_MATERIAL: TIntegerField;
    qyPedidoPartidasR_CLAVE: TIBStringField;
    qyPedidoPartidasR_DESCRIPCION: TIBStringField;
    qyPedidoPartidasR_UNIDAD: TIntegerField;
    qyPedidoPartidasR_DESCRIPCION_UNIDAD: TIBStringField;
    qyPedidoPartidasR_CANTIDAD: TFloatField;
    qyPedidoPartidasR_CANTIDAD_ENTREGADA: TFloatField;
    qyPedidoPartidasR_PRECIO: TFloatField;
    qyPedidoPartidasR_SUBTOTAL: TFloatField;
    qyPedidoPartidasR_IVA: TFloatField;
    qyPedidoPartidasR_IEPS: TFloatField;
    qyPedidoPartidasR_IMPUESTO1: TFloatField;
    qyPedidoPartidasR_IMPUESTO2: TFloatField;
    qyPedidoPartidasR_TOTAL: TFloatField;
    qyPedidoPartidasR_DESCUENTO_PORC: TFloatField;
    qyPedidoPartidasR_DP: TFloatField;
    qyPedidoPartidasR_DG: TFloatField;
    qyPedidoPartidasR_GT: TFloatField;
    qyPedidoPartidasR_ESTATUS: TIBStringField;
    qyPedidoPartidasR_COTIZACION: TIntegerField;
    qyPedidoPartidasR_CLAVE_COTIZACION: TIBStringField;
    qyPedidoPartidasR_PRECIO_SIN_IMPUESTOS: TFloatField;
    qyPedidoPartidasR_CAJAS: TIntegerField;
    qyPedidoPartidasR_ROWS: TIntegerField;
    qyPedidoPartidasR_IVA_PORC: TFloatField;
    qyPedidoPartidasR_IEPS_PORC: TFloatField;
    qyPedidoPartidasR_IMPUESTO1_PORC: TFloatField;
    qyPedidoPartidasR_IMPUESTO2_PORC: TFloatField;
    qyPedidoPartidasR_MATERIAL_CBARRAS: TIBStringField;
    qyPedidoPartidasR_MATERIAL_OBSERVACIONES: TBlobField;
    qyPedidoPartidasR_MATERIAL_FOTO: TBlobField;
    dsPedidoPartidas: TDataSource;
    qyPedidoPartidasR_PZAS_X_CAJA: TIntegerField;
    qyPedidoPartidasR_COMENTARIO: TIBStringField;
    Image1: TImage;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    procedure SetID(valor : integer);
    procedure SetPEDIDO(valor : string);
  public
    { Public declarations }
    procedure Preview;
  published
     property ID    : integer write SetID;
     property PEDIDO : string write SetPEDIDO;
  end;

var
  RPT_PEDIDO_PARTIDAS: TRPT_PEDIDO_PARTIDAS;

implementation

uses
  IBModulo, jpeg, Clipbrd;

{$R *.DFM}

type
  TGraphType = (gtBitmap, gtIcon, gtMetafile, gtJpeg);

procedure TRPT_PEDIDO_PARTIDAS.Preview;
begin
  // qrReporte.PreviewModal;
//   frxReport1.ShowReport;
end;

procedure TRPT_PEDIDO_PARTIDAS.SetID(valor : integer);
begin
   qyPedidoPartidas.Close;
   qyPedidoPartidas.ParamByName('P_PEDIDO').AsInteger := valor;
   qyPedidoPartidas.Open;
end;

procedure TRPT_PEDIDO_PARTIDAS.SetPEDIDO(valor : string);
begin
  // laPedido.Caption := valor;
end;


procedure TRPT_PEDIDO_PARTIDAS.Button1Click(Sender: TObject);
var
  MyFormat : Word;
  AData    : Cardinal;
  APalette : HPALETTE;
begin
   ClipBoard. SetAsHandle(MyFormat, AData);
end;

end.
