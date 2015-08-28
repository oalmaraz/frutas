unit capturar_configuracion_menu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  capturarMDI, ImgList, Db, IBCustomDataSet,
        StdCtrls,
  IBStoredProc, IBTable,  DBCtrls, Mask,
   jpeg,  ExtCtrls,  ComCtrls, IBQuery,
      Buttons, Grids, DBGrids, System.ImageList;

type
  TfrmCapturar_configuracion_menu = class(TfrmCapturarMDI)
    deNombreExterno: TDBEdit;
    deNombreObjeto: TDBEdit;
    peAccesoDirecto: TDBComboBox;
    deNombreInterno: TDBEdit;
    seOrden: TDBEdit;
    seImagen: TDBEdit;
    dsMenus: TDataSource;
    TMenus: TIBTable;
    ilMenuArbol: TImageList;
    tlArbolMenu: TDBGrid;
    TCapturarID: TIntegerField;
    TCapturarLINK: TIntegerField;
    TCapturarORDEN: TIntegerField;
    TCapturarNOMBRE_EXTERNO: TIBStringField;
    TCapturarNOMBRE_INTERNO: TIBStringField;
    TCapturarNAME: TIBStringField;
    TCapturarSHORTCUT: TIBStringField;
    TCapturarIMAGEN: TIntegerField;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    ilIconos: TImageList;
    TIconos_Menu: TIBTable;
    geIcono: TDBImage;
    dsIconos_Menu: TDataSource;
    TIconos_MenuID: TIntegerField;
    TIconos_MenuINDICE: TIntegerField;
    TIconos_MenuICONO: TBlobField;
    leTipoForma: TDBLookupComboBox;
    Label7: TLabel;
    seIdentificador: TDBEdit;
    Label8: TLabel;
    TCapturarTIPO_FORMA: TIntegerField;
    TCapturarIDENTIFICADOR: TIntegerField;
    TFormas: TIBTable;
    dsFormas: TDataSource;
    TCapturardescripcion_forma: TIBStringField;
    sbSiguiente: TSpeedButton;
    procedure sbNuevoClick(Sender: TObject);
    procedure sbModificarClick(Sender: TObject);
    procedure sbGuardarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ibNuevoClick(Sender: TObject);
    procedure ibModificarClick(Sender: TObject);
    procedure ibGuardarClick(Sender: TObject);
    procedure tlArbolMenuEndDrag(Sender, Target: TObject; X, Y: Integer);
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
  frmCapturar_configuracion_menu: TfrmCapturar_configuracion_menu;

implementation

uses reglas_de_negocios, IBModulo;

{$R *.DFM}

procedure TfrmCapturar_configuracion_menu.sbNuevoClick(Sender: TObject);
begin
  inherited;
  peAccesoDirecto.ItemIndex := 0;
  peAccesoDirecto.Invalidate;
  deNombreExterno.SetFocus;
end;

procedure TfrmCapturar_configuracion_menu.sbModificarClick(Sender: TObject);
begin
  inherited;
  deNombreExterno.SetFocus;
end;

procedure TfrmCapturar_configuracion_menu.sbGuardarClick(Sender: TObject);
begin
  inherited;
  reglas.abrir_IBTabla(TMenus);
end;



procedure TfrmCapturar_configuracion_menu.FormCreate(Sender: TObject);
begin
  inherited;
  reglas.abrir_IBTabla(TMenus);
  reglas.abrir_IBTabla(TIconos_Menu);
  reglas.abrir_IBTabla(TFormas);
  {
  tlArbolMenu.FullCollapse;
  }
end;

procedure TfrmCapturar_configuracion_menu.ibNuevoClick(Sender: TObject);
begin
  inherited;
  dsFuente.DataSet.FieldByName('SHORTCUT').AsString       := '(None)';
  dsFuente.DataSet.FieldByName('IMAGEN').AsInteger        := -1;
  dsFuente.DataSet.FieldByName('IDENTIFICADOR').AsInteger := -1;
  dsFuente.DataSet.FieldByName('ORDEN').AsInteger         := -1;
  deNombreExterno.SetFocus;
end;

procedure TfrmCapturar_configuracion_menu.ibModificarClick(
  Sender: TObject);
begin
  inherited;
  deNombreExterno.SetFocus;
end;

procedure TfrmCapturar_configuracion_menu.ibGuardarClick(Sender: TObject);
begin
  inherited;
  reglas.abrir_IBTabla(TMenus);
end;

procedure TfrmCapturar_configuracion_menu.tlArbolMenuEndDrag(Sender,
  Target: TObject; X, Y: Integer);
begin
  inherited;
  TCapturar.Transaction.CommitRetaining;
end;

procedure TfrmCapturar_configuracion_menu.buInicioClick(Sender: TObject);
begin
  inherited;
  tlArbolMenu.DataSource.DataSet.First;
end;

procedure TfrmCapturar_configuracion_menu.buAnteriorClick(Sender: TObject);
begin
  inherited;
  tlArbolMenu.DataSource.DataSet.Prior;
end;

procedure TfrmCapturar_configuracion_menu.buSiguienteClick(
  Sender: TObject);
begin
  inherited;
  tlArbolMenu.DataSource.DataSet.Next;
end;

procedure TfrmCapturar_configuracion_menu.buFinClick(Sender: TObject);
begin
  inherited;
  tlArbolMenu.DataSource.DataSet.Last;
  
end;

end.
