unit capturar_procesos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  capturarMDI, Db, IBCustomDataSet, IBQuery, IBStoredProc, IBTable,
   DBCtrls, StdCtrls, Mask,    jpeg,
   ExtCtrls,  Buttons;

type
  TfrmCapturar_procesos = class(TfrmCapturarMDI)
    qyEstatusProcesos: TIBQuery;
    dsEstatusProcesos: TDataSource;
    TEstatusProcesosDetalle: TIBTable;
    TEstatusProcesosDetalleID: TIntegerField;
    TEstatusProcesosDetallePROCESO: TIntegerField;
    TEstatusProcesosDetalleESTATUS: TIBStringField;
    TEstatusProcesosDetalleAUTORIZACION: TIBStringField;
    TEstatusProcesosDetalleSTOREPROC: TIBStringField;
    dsEstatusProcesosDetalle: TDataSource;
    spEstatus: TIBStoredProc;
    procedure FormCreate(Sender: TObject);
    procedure ibModificarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCapturar_procesos: TfrmCapturar_procesos;

implementation

uses reglas_de_negocios;

{$R *.DFM}

procedure TfrmCapturar_procesos.FormCreate(Sender: TObject);
begin
  inherited;
  reglas.refresh_IBQuery(qyEstatusProcesos);
  reglas.abrir_IBTabla(TEstatusProcesosDetalle);
end;

procedure TfrmCapturar_procesos.ibModificarClick(Sender: TObject);
begin
  estatus := dsFuente.DataSet.FieldByName('ESTATUS').AsString;
  inherited;
end;

end.
