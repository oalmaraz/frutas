unit RPT_FICHA_DEPOSITO;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Db, IBCustomDataSet, IBQuery;

type
  TfrmRPT_FICHA_DEPOSITO = class(TForm)
    qyFichaDeposito: TIBQuery;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    awrCambio  : boolean;
    awrFInicio : TDatetime;
    awrFFin    : TDatetime;
    awrAlmacen : integer;
    awrOpcion  : integer;
  public
    { Public declarations }
    procedure Preview;
  published
     property almacen : integer read awrAlmacen write awrAlmacen;
     property fechaInicio : TDatetime read awrFInicio write awrFInicio;
     property fechaFin : TDatetime read awrFFin write awrFFin;
     property opcion : integer read awrOpcion write awrOpcion;
  end;

{var
  frmRPT_FICHA_DEPOSITO: TfrmRPT_FICHA_DEPOSITO;}

implementation

uses IBModulo, reglas_de_negocios;

{$R *.DFM}

procedure TfrmRPT_FICHA_DEPOSITO.Preview;
begin
  qyFichaDeposito.Close;
  qyFichaDeposito.ParamByName('P_DEL').AsDate        := fechaInicio;
  qyFichaDeposito.ParamByName('P_AL').AsDate         := fechaFin;
  qyFichaDeposito.ParamByName('P_ALMACEN').AsInteger := almacen;
  qyFichaDeposito.ParamByName('P_OPCION').AsInteger  := opcion;
  qyFichaDeposito.Open;
//  qrFD.Preview;
end;


procedure TfrmRPT_FICHA_DEPOSITO.FormCreate(Sender: TObject);
begin
   opcion  := 1;
   almacen := 0;
  // laAlmacenes.Caption := 'Todos';
end;

end.
