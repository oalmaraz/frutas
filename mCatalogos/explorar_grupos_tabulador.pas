unit explorar_grupos_tabulador;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  explorarMDI, Menus,   Db, IBCustomDataSet, IBQuery,
  StdCtrls, Mask, DBCtrls, jpeg, ExtCtrls,
   ComCtrls, Grids, DBGrids, Buttons;

type
  TfrmExplorar_grupos_tabulador = class(TfrmExplorarMDI)
    qyExplorarR_ID: TIntegerField;
    qyExplorarR_NOMBRE: TIBStringField;
    qyExplorarR_PORC: TIBStringField;
    qyExplorarR_VALOR: TIBStringField;
    qyExplorarR_ESTATUS: TIBStringField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmExplorar_grupos_tabulador: TfrmExplorar_grupos_tabulador;

implementation

{$R *.DFM}

procedure TfrmExplorar_grupos_tabulador.FormCreate(Sender: TObject);
begin
  inherited;
  EXP_NVO     := true;
  CAMPO_FECHA := '';
  FForma      := 'frmCapturar_grupos_tabulador';
end;

end.
