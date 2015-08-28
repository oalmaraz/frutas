unit explorar_conceptos_gastos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  explorarMDI, Db,    Menus,
  IBCustomDataSet, IBQuery,  StdCtrls,
    Mask, DBCtrls,
     jpeg,  ExtCtrls,
    ComCtrls, Grids, DBGrids, Buttons;

type
  TfrmExplorar_Conceptos_Gastos = class(TfrmExplorarMDI)
    qyExplorarR_ID: TIntegerField;
    qyExplorarR_CONCEPTO: TIBStringField;
    qyExplorarR_PORC: TFloatField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmExplorar_Conceptos_Gastos: TfrmExplorar_Conceptos_Gastos;

implementation

{$R *.DFM}

procedure TfrmExplorar_Conceptos_Gastos.FormCreate(Sender: TObject);
begin
  inherited;
  EXP_NVO     := true;
  CAMPO_FECHA := '';
  FForma      := 'frmCapturar_Conceptos_Gastos';
end;

end.
