unit explorar_requisiciones;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  explorarMDI, Db,  ComCtrls, Grids, DBGrids, Buttons,
  Menus, IBCustomDataSet, IBQuery, StdCtrls, Mask, DBCtrls,
  ExtCtrls;

type
  TfrmExplorar_requisiciones = class(TfrmExplorarMDI)
    qyExplorarR_ID: TIntegerField;
    qyExplorarR_CLAVE: TIBStringField;
    qyExplorarR_DEPARTAMENTO: TIBStringField;
    qyExplorarR_USUARIO: TIBStringField;
    qyExplorarR_FECHA_ENTREGA: TDateTimeField;
    qyExplorarR_FECHA_ALTA: TDateTimeField;
    qyExplorarR_ESTATUS: TIBStringField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmExplorar_requisiciones : TfrmExplorar_requisiciones;

implementation

{$R *.DFM}

procedure TfrmExplorar_requisiciones.FormCreate(Sender: TObject);
begin
  inherited;
  EXP_NVO     := true;
  CAMPO_FECHA := 'R_FECHA_ALTA';
  FForma      := 'frmCapturar_requisiciones';
end;

end.
