unit RPT_CORTE_CAJAS_CXP;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
    ExtCtrls, Db, IBCustomDataSet, IBQuery;

type
  TfrmRPT_CORTE_CAJAS_CXP = class(TForm)
    qyCorteCXP: TIBQuery;
    qyCorteCXPR_ID: TIntegerField;
    qyCorteCXPR_FOLIO_PAGO: TIntegerField;
    qyCorteCXPR_FECHA_ALTA: TDateTimeField;
    qyCorteCXPR_USUARIO: TIntegerField;
    qyCorteCXPR_USUARIO_NOMBRE: TIBStringField;
    qyCorteCXPR_CAJA: TIntegerField;
    qyCorteCXPR_CAJA_NOMBRE: TIBStringField;
    qyCorteCXPR_GRANTOTAL: TFloatField;
    qyCorteCXPR_ESTATUS: TIBStringField;
    dsCorteCXP: TDataSource;
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

var
  frmRPT_CORTE_CAJAS_CXP: TfrmRPT_CORTE_CAJAS_CXP;

implementation

uses
  reglas_de_negocios;

{$R *.DFM}

procedure TfrmRPT_CORTE_CAJAS_CXP.Preview;
begin
   qyCorteCXP.Close;
   qyCorteCXP.ParamByName('P_FECHA').AsString    := FormatDateTime('dd/mm/yyyy',fechaInicio);
   qyCorteCXP.ParamByName('P_CAJA').AsInteger    := caja;
   qyCorteCXP.Open;
   //qrPRN_0016.Preview;
end;


procedure TfrmRPT_CORTE_CAJAS_CXP.FormCreate(Sender: TObject);
begin
   almacen := 0;
   caja    := 0;
   //laCajas.Caption     := 'Todas';
   //laAlmacenes.Caption := 'Todos';
end;

end.
