unit RPT_CORTE_CAJAS_CXP_CC;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, IBCustomDataSet, IBQuery,   ExtCtrls;

type
  TfrmRPT_CORTE_CAJAS_CXP_CC = class(TForm)
    qyCorte: TIBQuery;
    qyCorteR_CAJA: TIntegerField;
    qyCorteR_CAJA_NOMBRE: TIBStringField;
    qyCorteR_CC_PAGO: TIntegerField;
    qyCorteR_CC_PAGO_NOMBRE: TIBStringField;
    qyCorteR_MONTO: TFloatField;
    qyCorteR_FECHA: TDateTimeField;
    qyResumen: TIBQuery;
    qyResumenR_CC_PAGO: TIntegerField;
    qyResumenR_CC_PAGO_NOMBRE: TIBStringField;
    qyResumenR_MONTO: TFloatField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    awrCambio  : boolean;
    awrCaja    : integer;
    awrAlmacen : integer;
    awrFInicio : TDatetime;
    awrFFin    : TDatetime;
  public
    { Public declarations }
    procedure Preview;
  published
     property caja : integer read awrCaja write awrCaja;
     property almacen : integer read awrAlmacen write awrAlmacen;
     property fechaInicio : TDatetime read awrFInicio write awrFInicio;
     property fechaFin : TDatetime read awrFFin write awrFFin;
  end;

var
  frmRPT_CORTE_CAJAS_CXP_CC: TfrmRPT_CORTE_CAJAS_CXP_CC;

implementation

uses
  reglas_de_negocios;

{$R *.DFM}

procedure TfrmRPT_CORTE_CAJAS_CXP_CC.Preview;
begin
   qyCorte.Close;
   qyCorte.ParamByName('P_FECHA').AsDate      := fechaInicio;
   qyCorte.ParamByName('P_CAJA').AsInteger    := caja;
   qyCorte.Open;
   qyResumen.Close;
   qyResumen.ParamByName('P_FECHA').AsDate      := fechaInicio;
   qyResumen.ParamByName('P_CAJA').AsInteger    := caja;
   qyResumen.Open;
   //crCorte.Preview;
end;

procedure TfrmRPT_CORTE_CAJAS_CXP_CC.FormCreate(Sender: TObject);
begin
   almacen := 0;
   caja    := 0;

end;



end.
