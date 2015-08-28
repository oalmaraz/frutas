unit RPT_RESUMEN_ALMACENES;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   Db, IBCustomDataSet, IBQuery,  ExtCtrls;

type
  TfrmRPT_RESUMEN_ALMACENES = class(TForm)
    qyResumenAlmacen: TIBQuery;
    qyResumenAlmacenes: TIBQuery;
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
  frmRPT_RESUMEN_ALMACENES: TfrmRPT_RESUMEN_ALMACENES;}

implementation

uses reglas_de_negocios;

{$R *.DFM}

procedure TfrmRPT_RESUMEN_ALMACENES.Preview;
begin
   qyResumenAlmacen.Close;
   qyResumenAlmacen.ParamByName('P_FECHA_DEL').AsString := FormatDateTime('dd/mm/yyyy',fechaInicio);
   qyResumenAlmacen.ParamByName('P_FECHA_AL').AsString  := FormatDateTime('dd/mm/yyyy',fechaFin);
   qyResumenAlmacen.ParamByName('P_ALMACEN').AsInteger  := almacen;
   qyResumenAlmacen.Open;

   qyResumenAlmacenes.Close;
   qyResumenAlmacenes.ParamByName('P_FECHA_DEL').AsString := FormatDateTime('dd/mm/yyyy',fechaInicio);
   qyResumenAlmacenes.ParamByName('P_FECHA_AL').AsString  := FormatDateTime('dd/mm/yyyy',fechaFin);
   qyResumenAlmacenes.ParamByName('P_ALMACEN').AsInteger  := almacen;
   qyResumenAlmacenes.Open;

end;

end.
