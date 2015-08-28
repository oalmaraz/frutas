unit capturar_tabuladores;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  capturarMDI, Db, IBCustomDataSet,
  StdCtrls, IBStoredProc, IBTable,  DBCtrls, Mask,
    jpeg,  ExtCtrls,  IBQuery,
  Buttons;

type
  TfrmCapturar_tabuladores = class(TfrmCapturarMDI)
    deClave: TDBEdit;
    Label1: TLabel;
    deLimiteInf: TDBEdit;
    deLimiteSup: TDBEdit;
    deMonto: TDBEdit;
    dePorcentaje: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    TCapturarID: TIntegerField;
    TCapturarCLAVE: TIBStringField;
    TCapturarLIMITE_INF: TFloatField;
    TCapturarLIMITE_SUP: TFloatField;
    TCapturarBASE_MONTO: TFloatField;
    TCapturarPORCENTAJE: TFloatField;
    procedure ibNuevoClick(Sender: TObject);
    procedure ibModificarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCapturar_tabuladores: TfrmCapturar_tabuladores;

implementation

uses IBModulo, explorar_tabuladores;

{$R *.DFM}

procedure TfrmCapturar_tabuladores.ibNuevoClick(Sender: TObject);
begin
  inherited;
  dsFuente.DataSet.FieldByName('LIMITE_INF').AsFloat := 0.00;
  dsFuente.DataSet.FieldByName('LIMITE_SUP').AsFloat := 0.00;
  dsFuente.DataSet.FieldByName('BASE_MONTO').AsFloat := 0.00;
  dsFuente.DataSet.FieldByName('PORCENTAJE').AsFloat := 0.00;
  deClave.SetFocus;
end;

procedure TfrmCapturar_tabuladores.ibModificarClick(Sender: TObject);
begin
  inherited;
  deClave.SetFocus;
end;

end.
