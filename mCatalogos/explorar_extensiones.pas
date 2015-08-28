unit explorar_extensiones;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  explorarMDI, Menus,   Db, IBCustomDataSet, IBQuery,
        StdCtrls, Mask,
  DBCtrls,      jpeg,
   ExtCtrls,     ComCtrls,
  Grids, DBGrids, Buttons;

type
  TfrmExplorar_extensiones = class(TfrmExplorarMDI)
    qyExplorarR_EXTENSION: TIntegerField;
    qyExplorarR_FECHA_ALTA: TDateTimeField;
    qyExplorarR_E_CLAVE: TIBStringField;
    qyExplorarR_E_NOMBRE: TIBStringField;
    qyExplorarR_E_ESTATUS: TIBStringField;
    qyExplorarR_C_CLAVE: TIBStringField;
    qyExplorarR_C_NOMBRE: TIBStringField;
    qyExplorarR_ID: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure ibPantallaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmExplorar_extensiones: TfrmExplorar_extensiones;

implementation

uses
  capturar_clientes;

{$R *.DFM}

procedure TfrmExplorar_extensiones.FormCreate(Sender: TObject);
begin
  inherited;
  EXP_NVO     := true;
  CAMPO_FECHA := 'R_FECHA_ALTA';
  FForma      := 'frmCapturar_clientes';
end;

procedure TfrmExplorar_extensiones.ibPantallaClick(Sender: TObject);
begin
  inherited;
  frmCapturar_clientes.BTN_nuevo    := false;
  frmCapturar_clientes.Grid         := dgExplorar;
  frmCapturar_clientes.MASTERSOURCE := frmExplorar_extensiones.dsFuente;
end;

end.
