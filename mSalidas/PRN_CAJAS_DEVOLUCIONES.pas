unit PRN_CAJAS_DEVOLUCIONES;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Db, IBCustomDataSet, IBQuery;

type
  TfrmPRN_CAJAS_DEVOLUCIONES = class(TForm)
    qyDatos: TIBQuery;
    qyDatosR_ID: TIntegerField;
    qyDatosR_FECHA_ALTA: TDateTimeField;
    qyDatosR_FOLIO: TIntegerField;
    qyDatosR_ALMACEN: TIntegerField;
    qyDatosR_ALMACEN_C: TIBStringField;
    qyDatosR_ALMACEN_N: TIBStringField;
    qyDatosR_CAJA: TIntegerField;
    qyDatosR_CAJA_NOMBRE: TIBStringField;
    qyDatosR_CAJERO_C: TIBStringField;
    qyDatosR_CAJERO_N: TIBStringField;
    qyDatosR_CLIENTE_C: TIBStringField;
    qyDatosR_CLIENTE_N: TIBStringField;
    qyDatosR_CLIENTE_EMAIL: TIBStringField;
    qyDatosR_EXTENSION_N: TIBStringField;
    qyDatosR_PRIORIDAD: TIBStringField;
    qyDatosR_GRANTOTAL: TFloatField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    awrCaja      : integer;
    awrAlmacen   : integer;
    awrFInicio   : TDatetime;
    awrFFin      : TDatetime;
    awrCambio    : Boolean;
    awrPrioridad : string;
  public
    { Public declarations }
    procedure Preview;
  published
     property CAJA      : integer read awrCaja write awrCaja;
     property ALMACEN   : integer read awrAlmacen write awrAlmacen;
     property INICIO    : TDatetime read awrFInicio write awrFInicio;
     property FIN       : TDatetime read awrFFin write awrFFin;
     property PRIORIDAD : string read awrPrioridad write awrPrioridad;
  end;

var
  frmPRN_CAJAS_DEVOLUCIONES: TfrmPRN_CAJAS_DEVOLUCIONES;

implementation

uses
  IBModulo, reglas_de_negocios;

{$R *.DFM}

procedure TfrmPRN_CAJAS_DEVOLUCIONES.Preview;
begin
   qyDatos.Close;
   qyDatos.ParamByName('P_FECHA_INI').AsString := FormatDateTime('dd/mm/yyyy',awrFInicio);
   qyDatos.ParamByName('P_FECHA_FIN').AsString := FormatDateTime('dd/mm/yyyy',awrFFin);
   qyDatos.ParamByName('P_CAJA').AsInteger     := awrCaja;
   qyDatos.ParamByName('P_ALMACEN').AsInteger  := awrAlmacen;
   qyDatos.ParamByName('P_PRIORIDAD').AsString := awrPrioridad;
   qyDatos.Open;
end;


procedure TfrmPRN_CAJAS_DEVOLUCIONES.FormCreate(Sender: TObject);
begin
   awrAlmacen := 0;
   awrCaja    := 0;
end;


end.
