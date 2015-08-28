unit explorar_tabulador_nlp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  explorarMDI,    Menus,   Db,
  IBCustomDataSet, IBQuery,  StdCtrls,
     Mask, DBCtrls,
     jpeg,  ExtCtrls,
    ComCtrls, Grids, DBGrids, Buttons;

type
  TfrmExplorar_tabulador_nlp = class(TfrmExplorarMDI)
    qyExplorarR_ID: TIntegerField;
    qyExplorarR_NLP: TIntegerField;
    qyExplorarR_MATERIAL: TIntegerField;
    qyExplorarR_LIMITE_INF: TFloatField;
    qyExplorarR_LIMITE_SUP: TFloatField;
    qyExplorarR_BASE_MONTO: TFloatField;
    qyExplorarR_PORCENTAJE: TFloatField;
    qyExplorarR_NLP_D: TIBStringField;
    qyExplorarR_MATERIAL_C: TIBStringField;
    qyExplorarR_MATERIAL_D: TIBStringField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmExplorar_tabulador_nlp: TfrmExplorar_tabulador_nlp;

implementation

{$R *.DFM}

procedure TfrmExplorar_tabulador_nlp.FormCreate(Sender: TObject);
begin
  inherited;
  EXP_NVO     := true;
  CAMPO_FECHA := '';
  FForma      := 'frmCapturar_tabulador_nlp';
end;

end.
