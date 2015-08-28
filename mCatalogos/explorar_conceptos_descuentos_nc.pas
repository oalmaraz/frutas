unit explorar_conceptos_descuentos_nc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  explorarMDI,    Menus,   Db,
  IBCustomDataSet, IBQuery,  StdCtrls,
     Mask, DBCtrls,
     jpeg,  ExtCtrls,
    ComCtrls, Grids, DBGrids, Buttons;

type
  TfrmExplorar_Conceptos_Descuentos = class(TfrmExplorarMDI)
    qyExplorarR_ID: TIntegerField;
    qyExplorarR_CLAVE: TIBStringField;
    qyExplorarR_DESCRIPCION: TIBStringField;
    qyExplorarR_DESCUENTO_PORC: TFloatField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmExplorar_Conceptos_Descuentos: TfrmExplorar_Conceptos_Descuentos;

implementation

uses IBModulo;

{$R *.DFM}

procedure TfrmExplorar_Conceptos_Descuentos.FormCreate(Sender: TObject);
begin
  inherited;
  EXP_NVO     := true;
  CAMPO_FECHA := '';
  FForma      := 'frmCapturar_conceptos_descuentos';
end;

end.
