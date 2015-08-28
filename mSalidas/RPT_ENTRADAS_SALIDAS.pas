unit RPT_ENTRADAS_SALIDAS;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
    ExtCtrls, Db, IBCustomDataSet, IBQuery;

type
  TfrmRPT_ENTRADAS_SALIDAS = class(TForm)
    qyResumenEntSal: TIBQuery;
    qyResumenEntSalR_ALMACEN: TIntegerField;
    qyResumenEntSalR_ALMACEN_CLAVE: TIBStringField;
    qyResumenEntSalR_ALMACEN_NOMBRE: TIBStringField;
    qyResumenEntSalR_GRANTOTAL: TFloatField;
    qyResumenEntSalR_PRIORIDAD: TIBStringField;
    qyResumenEntSalR_CC: TIntegerField;
    qyResumenEntSalR_CC_NOMBRE: TIBStringField;
    qyResumenEntSalR_TIPO: TIBStringField;
    qyResumenEntSalR_FECHA: TDateTimeField;
    qyEntradasSalidas: TIBQuery;
    qyEntradasSalidasR_TIPO: TIBStringField;
    qyEntradasSalidasR_CC_NOMBRE: TIBStringField;
    qyEntradasSalidasR_GRANTOTAL: TFloatField;
    qyEntradasSalidasR_PRIORIDAD: TIBStringField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    awrCambio  : boolean;
    awrAlmacen : integer;
    awrFInicio : TDatetime;
    awrFFin    : TDatetime;
  public
    { Public declarations }
    procedure Preview;
  published
     property almacen : integer read awrAlmacen write awrAlmacen;
     property fechaInicio : TDatetime read awrFInicio write awrFInicio;
     property fechaFin : TDatetime read awrFFin write awrFFin;
  end;

{var
  frmRPT_ENTRADAS_SALIDAS: TfrmRPT_ENTRADAS_SALIDAS;}

implementation

uses reglas_de_negocios;

{$R *.DFM}

procedure TfrmRPT_ENTRADAS_SALIDAS.Preview;
begin
   qyResumenEntSal.Close;
   qyResumenEntSal.ParamByName('P_FECHA_DEL').AsString := FormatDateTime('dd/mm/yyyy',fechaInicio);
   qyResumenEntSal.ParamByName('P_FECHA_AL').AsString  := FormatDateTime('dd/mm/yyyy',fechaFin);
   qyResumenEntSal.ParamByName('P_ALMACEN').AsInteger  := almacen;
   qyResumenEntSal.Open;

   qyEntradasSalidas.Close;
   qyEntradasSalidas.ParamByName('P_FECHA_DEL').AsString := FormatDateTime('dd/mm/yyyy',fechaInicio);
   qyEntradasSalidas.ParamByName('P_FECHA_AL').AsString  := FormatDateTime('dd/mm/yyyy',fechaFin);
   qyEntradasSalidas.ParamByName('P_ALMACEN').AsInteger  := almacen;
   qyEntradasSalidas.Open;
end;

procedure TfrmRPT_ENTRADAS_SALIDAS.FormCreate(Sender: TObject);
begin
   almacen := 0;
end;

end.
