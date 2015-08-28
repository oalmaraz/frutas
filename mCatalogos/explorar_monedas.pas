unit explorar_monedas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  explorarMDI,    Menus,   Db,
  IBCustomDataSet, IBQuery,  StdCtrls,  
     Mask, DBCtrls,
     jpeg,  ExtCtrls,
    ComCtrls, Grids, DBGrids, Buttons   ;

type
  TfrmExplorar_monedas = class(TfrmExplorarMDI)
    qyExplorarR_ID: TIntegerField;
    qyExplorarR_CLAVE: TIBStringField;
    qyExplorarR_DESCRIPCION: TIBStringField;
    qyExplorarR_FECHA: TDateTimeField;
    qyExplorarR_PARIDAD: TFloatField;
    qyExplorarR_PARIDAD_FALSA: TFloatField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmExplorar_monedas: TfrmExplorar_monedas;

implementation

{$R *.DFM}

procedure TfrmExplorar_monedas.FormCreate(Sender: TObject);
begin
  inherited;
  EXP_NVO     := true;
  CAMPO_FECHA := 'FECHA_ULT_ACT';
  FForma      := 'frmCapturar_monedas';
end;

end.
