unit Uprn_0004;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
    ExtCtrls, Db, IBCustomDataSet, IBQuery;

type
  TPRN_0004 = class(TForm)
    qyEmpresa: TIBQuery;
    qyEmpresaR_CLAVE: TIBStringField;
    qyEmpresaR_NOMBRE: TIBStringField;
    qyEmpresaR_RAZON_SOCIAL: TIBStringField;
    qyEmpresaR_TELEFONO: TIBStringField;
    qyEmpresaR_RFC: TIBStringField;
    qyEmpresaR_CURP: TIBStringField;
    qyEmpresaR_FAX: TIBStringField;
    qyEmpresaR_CIUDAD_DESCRIPCION: TIBStringField;
    qyMovimientos: TIBQuery;
    dsMovimientos: TDataSource;
    qyMovimientosR_ID: TIntegerField;
    qyMovimientosR_PROVEEDOR: TIntegerField;
    qyMovimientosR_PROVEEDOR_CLAVE: TIBStringField;
    qyMovimientosR_PROVEEDOR_NOMBRE: TIBStringField;
    qyMovimientosR_FECHA: TDateTimeField;
    qyMovimientosR_REFERENCIA: TIBStringField;
    qyMovimientosR_DOCUMENTO: TIBStringField;
    qyMovimientosR_CARGO: TFloatField;
    qyMovimientosR_ABONO: TFloatField;
    qyMovimientosR_SALDO_ACTUAL: TFloatField;
    qyMovimientosR_ESTATUS: TIBStringField;
    qyMovimientosR_MONEDA: TIntegerField;
    qyMovimientosR_MONEDA_CLAVE: TIBStringField;
    qyMovimientosR_MONEDA_DESCRIPCION: TIBStringField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    awrCambio    : boolean;
    awrDEL       : TDatetime;
    awrAL        : TDatetime;
    awrPROVEEDOR : integer;
    awrESTATUS   : string;
    awrMONEDA    : Variant;
    procedure setUsuario(valor : string);
    procedure setFecha(valor : TDatetime);
    procedure setDel(valor : TDatetime);
    procedure setAl(valor : TDatetime);
  public
    { Public declarations }
    procedure Preview;
  published
     property Del       : TDatetime read awrDEL write setDEL;
     property Al        : TDatetime read awrAL write setAL;
     property Proveedor : integer read awrPROVEEDOR write awrPROVEEDOR;
     property Estatus   : string read awrESTATUS write awrEstatus;
     property Usuario   : String write setUsuario;
     property Fecha     : TDatetime write setFecha;
     property MONEDA    : Variant read awrMONEDA write awrMONEDA; 
  end;

var
  PRN_0004: TPRN_0004;

implementation

{$R *.DFM}

procedure TPRN_0004.Preview;
begin
   qyMovimientos.Close;
   qyMovimientos.ParamByName('P_PROVEEDOR').AsInteger := Proveedor;
   qyMovimientos.ParamByName('P_DEL').AsString        := FormatDateTime('dd/mm/yyyy',Del);
   qyMovimientos.ParamByName('P_AL').AsString         := FormatDateTime('dd/mm/yyyy',Al);
   qyMovimientos.ParamByName('P_ESTATUS').AsString    := Estatus;
   qyMovimientos.ParamByName('P_MONEDA').Value        := MONEDA;
   qyMovimientos.Open;
//   PRN_0004.PreviewModal;
end;

procedure TPRN_0004.setUsuario(valor : string);
begin
end;

procedure TPRN_0004.setFecha(valor : TDatetime);
begin
end;

procedure TPRN_0004.setDel(valor : TDatetime);
begin
   awrDEL := valor;
end;

procedure TPRN_0004.setAl(valor : TDatetime);
begin
   awrAL := valor;
end;

procedure TPRN_0004.FormCreate(Sender: TObject);
begin
   Proveedor := 0;
   qyEmpresa.Close;
   qyEmpresa.Open;
end;


end.
