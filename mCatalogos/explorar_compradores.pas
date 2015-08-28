unit explorar_compradores;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  explorarMDI,    Menus,   Db,
  IBCustomDataSet, IBQuery,  StdCtrls,
     Mask, DBCtrls, 
     jpeg,  ExtCtrls,
    ComCtrls, Grids, DBGrids, Buttons;

type
  TfrmExplorar_compradores = class(TfrmExplorarMDI)
    qyExplorarR_ID: TIntegerField;
    qyExplorarR_CLAVE: TIBStringField;
    qyExplorarR_NOMBRE: TIBStringField;
    qyExplorarR_CLASIFICACION: TIBStringField;
    qyExplorarR_TABULADOR: TIBStringField;
    qyExplorarR_DEPARTAMENTO: TIBStringField;
    qyExplorarR_FECHA_ALTA: TDateTimeField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmExplorar_compradores: TfrmExplorar_compradores;

implementation

uses IBModulo;

{$R *.DFM}

procedure TfrmExplorar_compradores.FormCreate(Sender: TObject);
begin
  inherited;
  EXP_NVO     := true;
  CAMPO_FECHA := 'R_FECHA_ALTA';
  FForma      := 'frmCapturar_compradores';
end;

end.
