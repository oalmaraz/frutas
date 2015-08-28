unit capturar_iconos_menu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  capturarMDI, ComCtrls, ImgList, StdCtrls,
   Db,  IBStoredProc, IBCustomDataSet, IBTable,
  DBCtrls, Mask,    jpeg,  ExtCtrls,
        IBQuery,
  Buttons;

type
  TfrmCapturar_iconos_menu = class(TfrmCapturarMDI)
    geIcono: TDBImage;
    TCapturarID: TIntegerField;
    TCapturarINDICE: TIntegerField;
    TCapturarICONO: TBlobField;
    seIndice: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    ilIconos: TImageList;
    lvIconos: TListView;
    procedure ibNuevoClick(Sender: TObject);
    procedure ibModificarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ibGuardarClick(Sender: TObject);
    procedure buInicioClick(Sender: TObject);
    procedure buAnteriorClick(Sender: TObject);
    procedure buSiguienteClick(Sender: TObject);
    procedure buFinClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCapturar_iconos_menu: TfrmCapturar_iconos_menu;

implementation

uses IBModulo, reglas_de_negocios;

{$R *.DFM}

procedure TfrmCapturar_iconos_menu.ibNuevoClick(Sender: TObject);
begin
  inherited;
  dsFuente.DataSet.FieldByName('INDICE').AsInteger := -1;
  geIcono.SetFocus;
end;

procedure TfrmCapturar_iconos_menu.ibModificarClick(Sender: TObject);
begin
  inherited;
  geIcono.SetFocus;
end;

procedure TfrmCapturar_iconos_menu.FormCreate(Sender: TObject);
begin
  inherited;
  reglas.cargar_imagenes(ilIconos, lvIconos, TCapturar);
end;

procedure TfrmCapturar_iconos_menu.ibGuardarClick(Sender: TObject);
begin
  inherited;
  reglas.cargar_imagenes(ilIconos, lvIconos, TCapturar);
end;

procedure TfrmCapturar_iconos_menu.buInicioClick(Sender: TObject);
begin
  inherited;
  dsFuente.DataSet.First;
end;

procedure TfrmCapturar_iconos_menu.buAnteriorClick(Sender: TObject);
begin
  inherited;
  dsFuente.DataSet.Prior;
end;

procedure TfrmCapturar_iconos_menu.buSiguienteClick(Sender: TObject);
begin
  inherited;
  dsFuente.DataSet.Next;
end;

procedure TfrmCapturar_iconos_menu.buFinClick(Sender: TObject);
begin
  inherited;
  dsFuente.DataSet.Last; 
end;

end.
