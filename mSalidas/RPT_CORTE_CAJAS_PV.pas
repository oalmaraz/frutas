unit RPT_CORTE_CAJAS_PV;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   ExtCtrls, Db, IBCustomDataSet, IBQuery;

type
  TfrmRPT_CORTE_CAJAS_PV = class(TForm)
    qyCorteDeCajas: TIBQuery;
    qyCorteDeCajasR_ID: TIntegerField;
    qyCorteDeCajasR_FOLIO_DE_VENTA: TIntegerField;
    qyCorteDeCajasR_FECHA_ALTA: TDateTimeField;
    qyCorteDeCajasR_ALMACEN: TIntegerField;
    qyCorteDeCajasR_ALMACEN_CLAVE: TIBStringField;
    qyCorteDeCajasR_ALMACEN_NOMBRE: TIBStringField;
    qyCorteDeCajasR_CAJERO: TIntegerField;
    qyCorteDeCajasR_CAJERO_NOMBRE: TIBStringField;
    qyCorteDeCajasR_CONDICION_COMERCIAL: TIntegerField;
    qyCorteDeCajasR_CONDICION_COMERCIAL_NOMBRE: TIBStringField;
    qyCorteDeCajasR_CLIENTE: TIntegerField;
    qyCorteDeCajasR_CLIENTE_NOMBRE: TIBStringField;
    qyCorteDeCajasR_CAJA: TIntegerField;
    qyCorteDeCajasR_CAJA_NOMBRE: TIBStringField;
    qyCorteDeCajasR_GRANTOTAL: TFloatField;
    qyCorteDeCajasR_EXTENSION: TIntegerField;
    qyCorteDeCajasR_EXTENSION_NOMBRE: TIBStringField;
    qyCorteDeCajasR_ESTATUS: TIBStringField;
    qyCorteDeCajasR_PRIORIDAD: TIBStringField;
    dsCorteDeCajas: TDataSource;
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
  frmRPT_CORTE_CAJAS_PV: TfrmRPT_CORTE_CAJAS_PV;}

implementation

uses reglas_de_negocios;

{$R *.DFM}

procedure TfrmRPT_CORTE_CAJAS_PV.Preview;
begin
   qyCorteDeCajas.Close;
   qyCorteDeCajas.ParamByName('P_FECHA_DEL').AsString := FormatDateTime('dd/mm/yyyy',fechaInicio);
   qyCorteDeCajas.ParamByName('P_FECHA_AL').AsString  := FormatDateTime('dd/mm/yyyy',fechaFin);
   qyCorteDeCajas.ParamByName('P_CAJA').AsInteger     := caja;
   qyCorteDeCajas.ParamByName('P_ALMACEN').AsInteger  := almacen;
   qyCorteDeCajas.ParamByName('P_OPCION').AsInteger   := opcion;
   qyCorteDeCajas.Open;
  // qrCorteCajas.Preview;
end;





end.
