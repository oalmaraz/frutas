unit UfrmMedidas;

interface

uses
  UTypeMedidas, Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   ImgList,
   StdCtrls,    ExtCtrls,
    DBCtrls, Mask,  Buttons,
  Grids, DBGrids, Data.DB, System.ImageList;

type
  TfrmMedidas = class(TForm)
    paTitulo: TPanel;
    paBotones: TPanel;
    ibNuevo: TBitBtn;
    ibModificar: TBitBtn;
    ibGuardar: TBitBtn;
    ibCancelar: TBitBtn;
    ibEliminar: TBitBtn;
    ibImprimir: TBitBtn;
    ibAyuda: TBitBtn;
    paLienzo: TPanel;
    fcLogo: TImage;
    Label4: TLabel;
    edDescripcion: TEdit;
    tlArbol: TDBGrid;
    ilMenuArbol: TImageList;
    ibColapsar: TBitBtn;
    ibExpander: TBitBtn;
    Label1: TLabel;
    seOrden: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    {
    procedure tlArbolEndDrag(Sender, Target: TObject; X, Y: Integer);
    procedure tlArbolGetImageIndex(Sender: TObject; Node: TdxTreeListNode;
      var Index: Integer);
    procedure tlArbolGetSelectedIndex(Sender: TObject;
      Node: TdxTreeListNode; var Index: Integer);
    procedure tlArbolChangeNode(Sender: TObject; OldNode,
      Node: TdxTreeListNode);
    }
    procedure ibNuevoClick(Sender: TObject);
    procedure ibCancelarClick(Sender: TObject);
    procedure ibGuardarClick(Sender: TObject);
    procedure ibColapsarClick(Sender: TObject);
    procedure ibExpanderClick(Sender: TObject);
    procedure ibEliminarClick(Sender: TObject);
    procedure ibModificarClick(Sender: TObject);
    procedure ibImprimirClick(Sender: TObject);
  private
    { Private declarations }
    Medidas  : TMedidas;
    cerrar   : boolean;
    edicion  : boolean;
//    idActual : integer;
    procedure fijarBotones;
    procedure CargarValores;
   // procedure BeforePreview(Sender: TObject; AReportLink: TBasedxReportLink);
  public
    { Public declarations }
    constructor Crear(AOwner : TComponent);
  end;

//var
//  frmMedidas: TfrmMedidas;

implementation

{$R *.DFM}

constructor TfrmMedidas.Crear(AOwner : TComponent);
begin
   inherited Create(AOwner);
   Medidas := TMedidas.Create;
   edicion := False;
   fijarBotones;
end;

procedure TfrmMedidas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   cerrar  := true;
   Medidas.Free;
   Medidas := nil;
   Action := caFree;
end;
{

procedure TfrmMedidas.BeforePreview(Sender: TObject; AReportLink: TBasedxReportLink);
begin
   TdxComponentPrinter(Sender).PreviewOptions.WindowState := wsMaximized;
end;
}

procedure TfrmMedidas.CargarValores;
begin
  // Cargamos los valores de las propiedades en los componentes
  // visuales del formulario
  edDescripcion.Text := Medidas.DESCRIPCION;
  seOrden.Text      := IntToStr(Medidas.ORDEN);
end;

procedure TfrmMedidas.FormCreate(Sender: TObject);
begin
   cerrar := false;
end;

procedure TfrmMedidas.FormShow(Sender: TObject);
begin
   tlArbol.DataSource := Medidas.DSPARTIDAS;
   Medidas.refreshPartidas;
   ibColapsar.Click;
end;

procedure TfrmMedidas.fijarBotones;
begin
  ibNuevo.Enabled     := not edicion;
  ibModificar.Enabled := not edicion;
  ibEliminar.Enabled  := not edicion;
  ibGuardar.Enabled   := edicion;
  ibCancelar.Enabled  := edicion;
  paLienzo.Visible    := edicion;
end;

{
procedure TfrmMedidas.tlArbolEndDrag(Sender, Target: TObject; X,
  Y: Integer);
begin
   Medidas.CommitRetaining;
end;

procedure TfrmMedidas.tlArbolGetImageIndex(Sender: TObject;
  Node: TdxTreeListNode; var Index: Integer);
const
  ImagesIndex: array [Boolean] of Integer = (0, 1);
begin
  if Node.Level = 0 then
  begin
     if Node.HasChildren then
       Index := ImagesIndex[Node.Expanded]
  end
  else
     Index := Node.Level + 1;
end;

procedure TfrmMedidas.tlArbolGetSelectedIndex(Sender: TObject;
  Node: TdxTreeListNode; var Index: Integer);
const
  ImagesIndex: array [Boolean] of Integer = (0, 1);
begin
  if Node.Level = 0 then
  begin
     if Node.HasChildren then
        Index := ImagesIndex[Node.Expanded]
  end
  else
     Index := Node.Level + 1;
end;

procedure TfrmMedidas.tlArbolChangeNode(Sender: TObject; OldNode,
  Node: TdxTreeListNode);
begin
  // if ibCancelar.Enabled then
  //    ibCancelar.Click;
  // idActual := tlArbol.DataSource.DataSet.FieldByName('R_ID').AsInteger;
end;

}

procedure TfrmMedidas.ibNuevoClick(Sender: TObject);
begin
  paTitulo.Caption := 'Nuevo';
  edicion          := not edicion;
  fijarBotones;
  //registros, valores que no toman valor en pantalla
  Medidas.ID   := -1;
  Medidas.LINK := 0;
  //pantalla
  edDescripcion.Clear;
  seOrden.Text := '0';
  edDescripcion.SetFocus;
end;

procedure TfrmMedidas.ibCancelarClick(Sender: TObject);
begin
  paTitulo.Caption := 'Partidas';
  edicion := not edicion;
  fijarBotones;
end;

procedure TfrmMedidas.ibGuardarClick(Sender: TObject);
var
   tmp    : integer;
begin
   Medidas.DESCRIPCION := edDescripcion.Text;
   Medidas.ORDEN       := StrToInt(seOrden.Text);
   tmp := Medidas.Guardar;
   if tmp <> -1 then
   begin
//      idActual := tmp;
      Medidas.refreshPartidas;
   end;
   paTitulo.Caption := 'Partidas';
   edicion := not edicion;
   FijarBotones;
end;

procedure TfrmMedidas.ibColapsarClick(Sender: TObject);
begin
  //if not(tlArbol.DataSource.DataSet.IsEmpty) then
   //  tlArbol.FullCollapse;
end;

procedure TfrmMedidas.ibExpanderClick(Sender: TObject);
begin
 // if not(tlArbol.DataSource.DataSet.IsEmpty) then
 //    tlArbol.FullExpand;
end;

procedure TfrmMedidas.ibEliminarClick(Sender: TObject);
begin
   paTitulo.Caption := 'Eliminar';
   if MessageDlg('¿Eliminar registro?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   begin
      paTitulo.Caption := 'Partidas';
      Medidas.eliminar;
      ibColapsar.Click;
   end;
end;

procedure TfrmMedidas.ibModificarClick(Sender: TObject);
begin
  if not(tlArbol.DataSource.DataSet.IsEmpty) then
  begin
     paTitulo.Caption := 'Modificar';
     edicion          := not edicion;
     fijarBotones;
     Medidas.cargar;
     CargarValores;
     edDescripcion.SetFocus;
  end;
end;

procedure TfrmMedidas.ibImprimirClick(Sender: TObject);
//var
//   cpPrint : TdxComponentPrinter;
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

end.
