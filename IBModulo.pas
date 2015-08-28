unit IBModulo;

interface        


uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, IBCustomDataSet, IBTable, IBQuery, IBSQL, IBUpdateSQL, IBStoredProc,
  IBDatabase;


type
  TdmIBModulo = class(TDataModule)
    ibInformar: TIBDatabase;
    ibSistema: TIBDatabase;
    ibInformarTransaccion: TIBTransaction;
    ibSistemaTransaccion: TIBTransaction;
    ibInterEmpresas: TIBDatabase;
    ibInterEmpresasTransaccion: TIBTransaction;
    IBQuery1: TIBQuery;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmIBModulo: TdmIBModulo;

implementation

uses
  IBReportes;

{$R *.DFM}

procedure TdmIBModulo.DataModuleCreate(Sender: TObject);
begin
   dmReportes             := TdmReportes.Create(Application);
   dmReportes.DATABASE    := ibSistema;
   dmReportes.TRANSACTION := ibSistemaTransaccion;  
end;

end.

