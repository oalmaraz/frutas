unit IBReportes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, IBCustomDataSet,
  IBQuery, IBDatabase;

type
  TdmReportes = class(TDataModule)
    IBDatabase1: TIBDatabase;
    IBTransaction1: TIBTransaction;
    qyConteos_Diferencias: TIBQuery;
    dsConteos_Diferencias: TDataSource;
    qyMI_Encabezado: TIBQuery;
    dsMI_Encabezado: TDataSource;
    qyFR_Compras: TIBQuery;
    dsFR_Compras: TDataSource;
    qyParametros: TIBQuery;
    dsParametros: TDataSource;
    dsFR_ComprasConsolidado: TDataSource;
    qyFR_ComprasConsolidado: TIBQuery;
    qyEncCotizacion: TIBQuery;
    qyDetCotizacion: TIBQuery;
    dsEncCotizacion: TDataSource;
    dsDetCotizacion: TDataSource;
  private
    { Private declarations }
    procedure setDatabase(valor : TIBDatabase);
    procedure setTransaction(valor : TIBTransaction);
  public
    { Public declarations }
    function espejo(valor : string) : string;
  published    
     property DATABASE     : TIBDatabase write setDatabase;
     property TRANSACTION  : TIBTransaction write setTransaction;

  end;

var
  dmReportes: TdmReportes;

implementation

{$R *.DFM}

procedure TdmReportes.setDatabase(valor : TIBDatabase);
begin
   qyMI_Encabezado.Database         := valor;
   qyConteos_Diferencias.Database   := valor;
   qyFR_Compras.Database            := valor;
   qyParametros.Database            := valor;
   qyFR_ComprasConsolidado.Database := valor;
   qyEncCotizacion.Database         := valor;
   qyDetCotizacion.Database         := valor;
end;

procedure TdmReportes.setTransaction(valor : TIBTransaction);
begin
   qyMI_Encabezado.Transaction         := valor;
   qyConteos_Diferencias.Transaction   := valor;
   qyFR_Compras.Transaction            := valor;
   qyParametros.Transaction            := valor;
   qyFR_ComprasConsolidado.Transaction := valor;
   qyEncCotizacion.Transaction         := valor;
   qyDetCotizacion.Transaction         := valor;
end;

function TdmReportes.espejo(valor : string) : string;
var
   i, j : word;
   tmp  : string;
begin
   j   := length(valor);
   tmp := '';
   for i := j downto 1 do
   begin
      tmp := tmp + valor[i];
   end;
   result := tmp;
end;

end.
