unit UfrmLineas;

interface

uses
  UTypeLineas, Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
         StdCtrls,
     ExtCtrls, Buttons,
    jpeg,  ImgList,
     Grids, DBGrids,
   DBCtrls, Data.DB, System.ImageList;

type
  TfrmCapturar_Lineas = class(TForm)
    paTitulo: TPanel;
    paBotones: TPanel;
    ibNuevo: TBitBtn;
    ibModificar: TBitBtn;
    ibGuardar: TBitBtn;
    ibCancelar: TBitBtn;
    ibEliminar: TBitBtn;
    ibImprimir: TBitBtn;
    ibAyuda: TBitBtn;
    ibColapsar: TBitBtn;
    ibExpander: TBitBtn;
    paLienzo: TPanel;
    Label4: TLabel;
    Label1: TLabel;
    edDescripcion: TEdit;
    seOrden: TEdit;
    tlArbol: TDBGrid;
    Label7: TLabel;
    cbEstatus: TDBLookupComboBox;
    laGrupoMedidas: TLabel;
    cbMedidas: TDBLookupComboBox;
    sbRefreshMedidas: TSpeedButton;
    paMC: TPanel;
    paColores: TPanel;
    ilMenuArbol: TImageList;
    sbBorrar: TSpeedButton;
    Image1: TImage;
    laGrupoColores: TLabel;
    cbColores: TDBLookupComboBox;
    sbRefreshColores: TSpeedButton;
    sbBorrarColores: TSpeedButton;
    FashionPanel2: TPanel;
    Image2: TImage;
    dgColores: TDBGrid;
    fcImager1: TImage;
    dgMedidas: TDBGrid;
    fcFondo: TImage;
    edDescPorc: TEdit;
    Label2: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ibColapsarClick(Sender: TObject);
    procedure ibExpanderClick(Sender: TObject);
    {
    procedure tlArbolEndDrag(Sender, Target: TObject; X, Y: Integer);

    procedure tlArbolGetImageIndex(Sender: TObject; Node: TdxTreeListNode;
      var Index: Integer);
    procedure tlArbolGetSelectedIndex(Sender: TObject;
      Node: TdxTreeListNode; var Index: Integer);
    procedure tlArbolChangeNode(Sender: TObject; OldNode,
      Node: TdxTreeListNode);
    }
    procedure ibModificarClick(Sender: TObject);
    procedure ibCancelarClick(Sender: TObject);
    procedure sbRefreshMedidasClick(Sender: TObject);
    procedure ibGuardarClick(Sender: TObject);
    procedure sbBorrarClick(Sender: TObject);
    procedure ibNuevoClick(Sender: TObject);
    procedure ibEliminarClick(Sender: TObject);
    procedure ibImprimirClick(Sender: TObject);
    procedure sbRefreshColoresClick(Sender: TObject);
    procedure sbBorrarColoresClick(Sender: TObject);
  private
    { Private declarations }
    Lineas  : TLineas;
    cerrar   : boolean;
    edicion  : boolean;
    procedure fijarBotones;
    procedure CargarValores;
    {
    procedure BeforePreview(Sender: TObject; AReportLink: TBasedxReportLink);
     }
  public
    { Public declarations }
    constructor Crear(AOwner : TComponent);
  end;

implementation

{$R *.DFM}

constructor TfrmCapturar_Lineas.Crear(AOwner : TComponent);
begin
   inherited Create(AOwner);
   Lineas := TLineas.Create;
   edicion := False;
   fijarBotones;

   laGrupoMedidas.Visible   := Lineas.medidas;
   cbMedidas.Visible        := Lineas.medidas;
   sbRefreshMedidas.Visible := Lineas.medidas;
   sbBorrar.Visible         := Lineas.medidas;

   laGrupoColores.Visible   := Lineas.colores;
   cbColores.Visible        := Lineas.colores;
   sbRefreshColores.Visible := Lineas.colores;
   sbBorrarColores.Visible  := Lineas.colores;

   paMC.Visible := Lineas.medidas or Lineas.colores
end;

{
procedure TfrmCapturar_Lineas.BeforePreview(Sender: TObject; AReportLink: TBasedxReportLink);
begin
   TdxComponentPrinter(Sender).PreviewOptions.WindowState := wsMaximized;
end;
 }
 
procedure TfrmCapturar_Lineas.CargarValores;
begin
  //Se carga informacion de la base de datos a los registros
  Lineas.cargar;
  // Cargamos los valores de las propiedades en los componentes
  // visuales del formulario
  paTitulo.Caption           := 'Mantenimiento';
  edDescripcion.Text         := Lineas.DESCRIPCION;
  seOrden.Text               := IntToStr(Lineas.ORDEN);
  edDescPorc.Text           := FloatToStr(Lineas.PORCENTAJE);
  //cbEstatus.Text             := Lineas.ESTATUS;

  if (Lineas.MEDIDA <> 0) then
  begin
     cbMedidas.KeyValue := Lineas.MEDIDA
  end
  else
  begin
      cbMedidas.KeyValue := 0;
  end;

  if (Lineas.GCOLORES <> 0) then
  begin
     cbColores.KeyValue := Lineas.GCOLORES
  end
  else
  begin
     cbColores.KeyValue := 0;
  end;
end;

procedure TfrmCapturar_Lineas.fijarBotones;
begin
  ibNuevo.Enabled     := not edicion;
  ibModificar.Enabled := not edicion;
  ibEliminar.Enabled  := not edicion;
  ibGuardar.Enabled   := edicion;
  ibCancelar.Enabled  := edicion;

  edDescripcion.Enabled    := edicion;
  cbMedidas.Enabled        := edicion;
  cbColores.Enabled        := edicion;
  seOrden.Enabled          := edicion;
  edDescPorc.Enabled       := edicion;
  cbEstatus.Enabled        := edicion;

  sbRefreshMedidas.Enabled := edicion;
  sbBorrar.Enabled         := edicion;
  sbRefreshColores.Enabled := edicion;
  sbBorrarColores.Enabled  := edicion;
end;

procedure TfrmCapturar_Lineas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   cerrar  := true;
   Lineas.Free;
   Lineas := nil;
   Action := caFree;
end;

procedure TfrmCapturar_Lineas.FormCreate(Sender: TObject);
begin
   cerrar := false;
end;

procedure TfrmCapturar_Lineas.FormShow(Sender: TObject);
begin
   tlArbol.DataSource := Lineas.DSPARTIDAS;
   Lineas.refreshPartidas;

   if Lineas.medidas then
   begin
      cbMedidas.ListSource := Lineas.DSMEDIDAS;
      Lineas.refreshMedidas;
      //dgMedidas.DataSourceFirst := Lineas.DSHMEDIDAS;
      //dgMedidas.DataSourceLast  := Lineas.DSHMEDIDAS;
   end;

   if Lineas.colores then
   begin
      cbColores.ListSource := Lineas.DSGCOLORES;
      Lineas.refreshGColores;
      //dgColores.DataSourceFirst := Lineas.DSHCOLORES;
      //dgColores.DataSourceLast  := Lineas.DSHCOLORES;
   end;

   ibColapsar.Click;
   CargarValores;
   fijarBotones;
end;

procedure TfrmCapturar_Lineas.ibColapsarClick(Sender: TObject);
begin
  //if not(tlArbol.DataSource.DataSet.IsEmpty) then
 //   tlArbol.FullCollapse;
end;

procedure TfrmCapturar_Lineas.ibExpanderClick(Sender: TObject);
begin
  //if not(tlArbol.DataSource.DataSet.IsEmpty) then
  //   tlArbol.FullExpand;
end;
{

procedure TfrmCapturar_Lineas.tlArbolEndDrag(Sender, Target: TObject; X,
  Y: Integer);
begin
   Lineas.CommitRetaining;
end;

procedure TfrmCapturar_Lineas.tlArbolGetImageIndex(Sender: TObject;
  Node: TdxTreeListNode; var Index: Integer);
const
  ImagesIndex: array [Boolean] of Integer = (0, 1);
begin
  if Node.HasChildren then
    Index := ImagesIndex[Node.Expanded]
  else Index := 2;
end;

procedure TfrmCapturar_Lineas.tlArbolGetSelectedIndex(Sender: TObject;
  Node: TdxTreeListNode; var Index: Integer);
const
  ImagesIndex: array [Boolean] of Integer = (0, 1);
begin
  if Node.HasChildren then
    Index := ImagesIndex[Node.Expanded]
  else Index := 2;
end;

procedure TfrmCapturar_Lineas.tlArbolChangeNode(Sender: TObject; OldNode,
  Node: TdxTreeListNode);
begin
   CargarValores;
end;

}
procedure TfrmCapturar_Lineas.ibModificarClick(Sender: TObject);
begin
   paTitulo.Caption  := 'Modificar';
   edicion           := not edicion;
   fijarBotones;
   edDescripcion.SetFocus;
end;

procedure TfrmCapturar_Lineas.ibCancelarClick(Sender: TObject);
begin
  edicion := not edicion;
  fijarBotones;
  CargarValores;
end;

procedure TfrmCapturar_Lineas.sbRefreshMedidasClick(Sender: TObject);
begin
   Lineas.refreshMedidas;
end;

procedure TfrmCapturar_Lineas.ibGuardarClick(Sender: TObject);
var
   tmp : integer;
begin
   Lineas.DESCRIPCION := edDescripcion.Text;
   Lineas.ORDEN       := StrToInt(seOrden.Text);
   Lineas.PORCENTAJE  := StrToFloat(edDescPorc.Text);
   Lineas.ESTATUS     := cbEstatus.Text;
   if cbMedidas.Visible and (cbMedidas.Text <> '') then
      Lineas.MEDIDA := cbMedidas.KeyValue
   else
      Lineas.MEDIDA := 0;

   if cbColores.Visible and (cbColores.Text <> '') then
      Lineas.GCOLORES:= cbColores.KeyValue
   else
      Lineas.GCOLORES := 0;

   tmp := Lineas.Guardar;
   if tmp <> -1 then
   begin
//      idActual := tmp;
      Lineas.refreshPartidas;
   end;
   edicion := not edicion;
   FijarBotones;
   CargarValores;
end;

procedure TfrmCapturar_Lineas.sbBorrarClick(Sender: TObject);
begin
   //cbMedidas.Clear;
end;

procedure TfrmCapturar_Lineas.ibNuevoClick(Sender: TObject);
begin
  paTitulo.Caption := 'Nuevo';
  edicion          := not edicion;
  fijarBotones;
  //registros, valores que no toman valor en pantalla
  Lineas.ID   := -1;
  Lineas.LINK := 0;
  //pantalla
  edDescripcion.Clear;
  if cbMedidas.Visible then
     cbMedidas.KeyValue :=0;
  seOrden.Text     := '0';
  edDescPorc.Text  := '0';
  //cbEstatus.Text    := 'En Operacion';
  cbEstatus.Enabled := false;
  edDescripcion.SetFocus;
end;

procedure TfrmCapturar_Lineas.ibEliminarClick(Sender: TObject);
begin
   paTitulo.Caption := 'Eliminar';
   if MessageDlg('¿Eliminar registro?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   begin
      paTitulo.Caption := 'Mantenimiento';
      Lineas.eliminar;
      CargarValores;
//      ibColapsar.Click;
   end;
end;

procedure TfrmCapturar_Lineas.ibImprimirClick(Sender: TObject);
//var
 //  cpPrint : TdxComponentPrinter;
begin
{
  cpPrint := TdxComponentPrinter.Create(Application);
  cpPrint.OnBeforePreview := BeforePreview;
  cpPrint.AddLink(tlArbol);
//  cpPrint.ReportLink
  cpPrint.ReportLink[0].PrinterPage.PageHeader.Font.Name  := 'Arial';
  cpPrint.ReportLink[0].PrinterPage.PageHeader.Font.Size  := 14;
  cpPrint.ReportLink[0].PrinterPage.PageHeader.CenterTitle.Add('Medidas');
  cpPrint.ReportLink[0].ShrinkToPageWidth := true;
  cpPrint.Preview(True, nil);
  cpPrint.Destroy;
  tlArbol.OptionsDB := [etoAutoCalcKeyValue,etoCancelOnExit,etoCanDelete,etoCanNavigation,etoCheckHasChildren,etoConfirmDelete,etoLoadAllRecords];
  }
  end;

procedure TfrmCapturar_Lineas.sbRefreshColoresClick(Sender: TObject);
begin
   Lineas.refreshGColores;
end;

procedure TfrmCapturar_Lineas.sbBorrarColoresClick(Sender: TObject);
begin
   cbColores.keyvalue := 0;
end;

end.
