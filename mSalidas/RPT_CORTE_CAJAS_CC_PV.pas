unit RPT_CORTE_CAJAS_CC_PV;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, IBCustomDataSet, IBQuery,   ExtCtrls;

type
  TfrmRPT_CORTE_CAJAS_CC_PV = class(TForm)
    qyResumen: TIBQuery;
    qyResumenR_REFERENCIA_PAGO: TIntegerField;
    qyResumenR_REFERENCIA_NOMBRE: TIBStringField;
    qyResumenR_MONTO_VENTA: TFloatField;
    qyResumenR_MONTO_COLECTA: TFloatField;
    qyResumenR_SALDO: TFloatField;
    qyResumenR_PRIORIDAD: TIBStringField;
    qyCorte: TIBQuery;
    IntegerField1: TIntegerField;
    IBStringField1: TIBStringField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    IntegerField2: TIntegerField;
    IBStringField2: TIBStringField;
    qyCorteR_FECHA: TDateTimeField;
    qyCorteR_ALMACEN: TIntegerField;
    qyCorteR_ALMACEN_CLAVE: TIBStringField;
    qyCorteR_ALMACEN_NOMBRE: TIBStringField;
    qyCorteR_PRIORIDAD: TIBStringField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    awrCambio  : boolean;
    awrCaja    : integer;
    awrAlmacen : integer;
    awrFInicio : TDatetime;
    awrFFin    : TDatetime;
    awrOpcion  : integer;
  public
    { Public declarations }
    procedure Preview;
  published
     property caja : integer read awrCaja write awrCaja;
     property almacen : integer read awrAlmacen write awrAlmacen;
     property fechaInicio : TDatetime read awrFInicio write awrFInicio;
     property fechaFin : TDatetime read awrFFin write awrFFin;
     property opcion : integer read awrOpcion write awrOpcion;
  end;

{var
  frmRPT_CORTE_CAJAS_CC_PV: TfrmRPT_CORTE_CAJAS_CC_PV;}

implementation

uses reglas_de_negocios;

{$R *.DFM}

procedure TfrmRPT_CORTE_CAJAS_CC_PV.Preview;
begin
   qyCorte.Close;
   qyCorte.ParamByName('P_FECHA_DEL').AsString := FormatDateTime('dd/mm/yyyy',fechaInicio);
   qyCorte.ParamByName('P_FECHA_AL').AsString  := FormatDateTime('dd/mm/yyyy',fechaFin);
   qyCorte.ParamByName('P_CAJA').AsInteger     := caja;
   qyCorte.ParamByName('P_ALMACEN').AsInteger  := almacen;
   qyCorte.ParamByName('P_OPCION').AsInteger   := opcion;
   qyCorte.Open;
   qyResumen.Close;
   qyResumen.ParamByName('P_FECHA_DEL').AsString := FormatDateTime('dd/mm/yyyy',fechaInicio);
   qyResumen.ParamByName('P_FECHA_AL').AsString  := FormatDateTime('dd/mm/yyyy',fechaFin);
   qyResumen.ParamByName('P_CAJA').AsInteger     := caja;
   qyResumen.ParamByName('P_ALMACEN').AsInteger  := almacen;
   qyResumen.ParamByName('P_OPCION').AsInteger   := opcion;
   qyResumen.Open;
end;

procedure TfrmRPT_CORTE_CAJAS_CC_PV.FormCreate(Sender: TObject);
begin
   opcion  := 6;
   almacen := 0;
   caja    := 0;
end;



end.
