unit explorar_nombre_lista_precios;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  explorarMDI,    Menus,   Db,
  IBCustomDataSet, IBQuery,  StdCtrls,
     Mask, DBCtrls,
       ExtCtrls,
    ComCtrls, Grids, DBGrids, Buttons;

type
  TfrmExplorar_nombre_lista_precios = class(TfrmExplorarMDI)
    qyExplorarR_ID: TIntegerField;
    qyExplorarR_DESCRIPCION: TIBStringField;
    qyExplorarR_VIGENCIA_DIAS: TIntegerField;
    fcImageBtn1: TBitBtn;
    qyExplorarR_M_CLAVE: TIBStringField;
    qyExplorarR_M_DESCRIPCION: TIBStringField;
    procedure FormCreate(Sender: TObject);
    procedure fcImageBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmExplorar_nombre_lista_precios: TfrmExplorar_nombre_lista_precios;

implementation

uses capturar_mis_listas_de_precios, reglas_de_negocios, IBData;

{$R *.DFM}

procedure TfrmExplorar_nombre_lista_precios.FormCreate(Sender: TObject);
var
   cual : string;
begin
  inherited;
  reglas.abrir_IBTabla(dmIBData.TPreferencias);
  //Manejo de lista de Precios  (General, Cliente, Vigencia)
  dmIBData.TPreferencias.Filter := 'ID = 80';
  cual := UpperCase(dmIBData.TPreferencias.FieldByName('VALOR').AsString);

  EXP_NVO     := true;
  CAMPO_FECHA := '';

  if (cual = 'VIGENCIA') then
  begin
     //dgExplorarVIGENCIA_DIAS.Visible := true;
     FForma := 'frmCapturar_nombre_lista_precios';
  end
  else
     begin
       // dgExplorarVIGENCIA_DIAS.Visible := false;
        FForma := 'frmCapturar_Lista_Precios_Cliente'
     end;
end;

procedure TfrmExplorar_nombre_lista_precios.fcImageBtn1Click(
  Sender: TObject);
begin
  inherited;
  frmCapturar_mis_listas_de_precios := TfrmCapturar_mis_listas_de_precios.Create(Application);
  frmCapturar_mis_listas_de_precios.ShowModal;
  frmCapturar_mis_listas_de_precios.Free;
end;

end.
