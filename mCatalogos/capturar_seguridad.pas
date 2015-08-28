unit capturar_seguridad;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  padre, ImgList, IBQuery, Db, IBCustomDataSet, IBTable, StdCtrls, DBCtrls,
      jpeg,  ExtCtrls,
     Grids, DBGrids, Buttons, IBStoredProc, Mask, System.ImageList;

type
  TfrmCapturar_seguridad = class(TfrmPadre)
    tlMenuAsignado: TDBGrid;
    tlMenu: TDBGrid;
    dsUsuarios: TDataSource;
    TSujetos: TIBTable;
    TUsuarios: TIBTable;
    TUsuariosID: TIntegerField;
    TUsuariosSUJETO: TIntegerField;
    TUsuariosUSUARIO: TIBStringField;
    TUsuariosBAJA: TIBStringField;
    TSujetosID: TIntegerField;
    TSujetosCLAVE: TIBStringField;
    TSujetosNOMBRE: TIBStringField;
    TSujetosRAZON_SOCIAL: TIBStringField;
    TSujetosRFC: TIBStringField;
    TSujetosCURP: TIBStringField;
    TSujetosDOMICILIO: TIntegerField;
    TSujetosTELEFONOS: TIntegerField;
    TSujetosCONTACTOS: TIntegerField;
    TSujetosFECHA_ALTA: TDateTimeField;
    TSujetosFACTURAR_A: TIBStringField;
    TSujetosE_MAIL: TIBStringField;
    TSujetosWWWW: TIBStringField;
    TSujetosOBSERVACIONES: TBlobField;
    TSujetosSEXO: TIBStringField;
    TSujetosFOTO: TBlobField;
    qyMenus: TIBQuery;
    dsMenu: TDataSource;
    ilMenuArbol: TImageList;
    dsMenuSupervisorArbol: TDataSource;
    qyMenuSupervisorArbol: TIBQuery;
    qyMenuSupervisorArbolID: TIntegerField;
    qyMenuSupervisorArbolLINK: TIntegerField;
    qyMenuSupervisorArbolORDEN: TIntegerField;
    qyMenuSupervisorArbolNOMBRE_EXTERNO: TIBStringField;
    qyMenuSupervisorArbolNOMBRE_INTERNO: TIBStringField;
    qyMenuSupervisorArbolNAME: TIBStringField;
    qyMenuSupervisorArbolSHORTCUT: TIBStringField;
    qyMenuSupervisorArbolIMAGEN: TIntegerField;
    deUsuario: TDBEdit;
    dsSujetos: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    dxDBEdit1: TDBEdit;
    Label3: TLabel;
    dxDBEdit2: TDBEdit;
    Label4: TLabel;
    dxDBEdit3: TDBEdit;
    TMenus: TIBTable;
    TMenusID: TIntegerField;
    TMenusLINK: TIntegerField;
    TMenusORDEN: TIntegerField;
    TMenusNOMBRE_EXTERNO: TIBStringField;
    TMenusNOMBRE_INTERNO: TIBStringField;
    TMenusNAME: TIBStringField;
    TMenusSHORTCUT: TIBStringField;
    TMenusIMAGEN: TIntegerField;
    qyMenusR_MENU: TIntegerField;
    qyMenusR_LINK: TIntegerField;
    qyMenusR_ORDEN: TIntegerField;
    qyMenusR_NOMBRE_EXTERNO: TIBStringField;
    qyMenusR_NOMBRE_INTERNO: TIBStringField;
    qyMenusR_NAME: TIBStringField;
    qyMenusR_SHORTCUT: TIBStringField;
    qyMenusR_IMAGEN: TIntegerField;
    qyMenusID: TIntegerField;
    buAgregar: TBitBtn;
    buQuitar: TBitBtn;
    spA_MENU: TIBStoredProc;
    spE_MENU: TIBStoredProc;
    procedure FormShow(Sender: TObject);
    {
    procedure tlMenuAsignadoGetImageIndex(Sender: TObject;
      Node: TdxTreeListNode; var Index: Integer);
    procedure tlMenuAsignadoGetSelectedIndex(Sender: TObject;
      Node: TdxTreeListNode; var Index: Integer);
    procedure tlMenuGetImageIndex(Sender: TObject;
      Node: TdxTreeListNode; var Index: Integer);
    procedure tlMenuGetSelectedIndex(Sender: TObject;
      Node: TdxTreeListNode; var Index: Integer);
    }
    procedure tlMenuAsignadoDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure tlMenuMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure tlMenuEndDrag(Sender, Target: TObject; X, Y: Integer);
    procedure tlMenuAsignadoMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure tlMenuAsignadoEndDrag(Sender, Target: TObject; X,
      Y: Integer);
    procedure tlMenuDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure tlMenuDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure tlMenuAsignadoDragDrop(Sender, Source: TObject; X,
      Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure tlMenuAsignadoDblClick(Sender: TObject);
    procedure buAgregarClick(Sender: TObject);
    procedure buQuitarClick(Sender: TObject);
  private
    { Private declarations }
    menu_x_asignar : boolean;
    menu_asignado  : boolean;
    usuario        : integer;
  public
    { Public declarations }
    constructor Crear(AOwner : TComponent; user : integer);
  end;

var
  frmCapturar_seguridad: TfrmCapturar_seguridad;

implementation

uses IBModulo, reglas_de_negocios, capturar_activar_botones;

{$R *.DFM}

constructor TfrmCapturar_seguridad.Crear(AOwner : TComponent; user : integer);
begin
   Create(AOwner);
   usuario       := user;
   reglas.abrir_IBTabla(TMenus);
   reglas.abrir_IBTabla(TUsuarios);
   TUsuarios.Filter := 'ID = '+IntToStr(usuario);
   reglas.abrir_IBTabla(TSujetos);
   qyMenus.Close;
   qyMenus.ParamByName('ID').AsInteger := usuario;
   qyMenus.Open;
   reglas.refresh_IBQuery(qyMenuSupervisorArbol);
end;

procedure TfrmCapturar_seguridad.FormShow(Sender: TObject);
begin
  inherited;
 // tlMenuAsignado.FullExpand;
//  tlMenu.FullCollapse;
end;

{
procedure TfrmCapturar_seguridad.tlMenuAsignadoGetImageIndex(
  Sender: TObject; Node: TdxTreeListNode; var Index: Integer);
const
  ImagesIndex: array [Boolean] of Integer = (0, 1);
begin
  inherited;
  if Node.Level = 0 then
    Index := ImagesIndex[Node.Expanded]
  else
    Index := Node.Level + 1;
end;

procedure TfrmCapturar_seguridad.tlMenuAsignadoGetSelectedIndex(
  Sender: TObject; Node: TdxTreeListNode; var Index: Integer);
const
  ImagesIndex: array [Boolean] of Integer = (0, 1);
begin
  inherited;
  if Node.Level = 0 then
    Index := ImagesIndex[Node.Expanded]
  else
    Index := Node.Level + 1;
end;

procedure TfrmCapturar_seguridad.tlMenuGetImageIndex(
  Sender: TObject; Node: TdxTreeListNode; var Index: Integer);
const
  ImagesIndex: array [Boolean] of Integer = (0, 1);
begin
  inherited;
  if Node.Level = 0 then
    Index := ImagesIndex[Node.Expanded]
  else
    Index := Node.Level + 1;
end;

procedure TfrmCapturar_seguridad.tlMenuGetSelectedIndex(
  Sender: TObject; Node: TdxTreeListNode; var Index: Integer);
const
  ImagesIndex: array [Boolean] of Integer = (0, 1);
begin
  inherited;
  if Node.Level = 0 then
    Index := ImagesIndex[Node.Expanded]
  else
    Index := Node.Level + 1;
end;

}
procedure TfrmCapturar_seguridad.tlMenuAsignadoDragOver(Sender,
  Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  inherited;
//  Accept := menu_x_asignar and not(dsMenuSupervisorArbol.DataSet.IsEmpty);
end;

procedure TfrmCapturar_seguridad.tlMenuMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
//  if Button = mbLeft then  { drag only if left button pressed }
//     with TdxDBTreeList(Sender) do  { treat Sender as TFileListBox }
//     begin
//        menu_x_asignar := TRUE;
//        BeginDrag(False);  { if so, drag it }
//     end;
end;

procedure TfrmCapturar_seguridad.tlMenuEndDrag(Sender,
  Target: TObject; X, Y: Integer);
begin
  inherited;
//  menu_x_asignar := FALSE;
end;

procedure TfrmCapturar_seguridad.tlMenuAsignadoMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
//  if Button = mbLeft then  { drag only if left button pressed }
//     with TdxDBTreeList(Sender) do  { treat Sender as TFileListBox }
//     begin
//        menu_asignado := TRUE;
//        BeginDrag(False);  { if so, drag it }
//     end;
end;

procedure TfrmCapturar_seguridad.tlMenuAsignadoEndDrag(Sender,
  Target: TObject; X, Y: Integer);
begin
  inherited;
//  menu_asignado := FALSE;
end;

procedure TfrmCapturar_seguridad.tlMenuDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  inherited;
//  Accept := menu_asignado and not(dsMenu.DataSet.IsEmpty);
end;

procedure TfrmCapturar_seguridad.tlMenuDragDrop(Sender, Source: TObject; X,
  Y: Integer);
begin
  inherited;
{  if dsMenu.DataSet.FieldByName('R_LINK').AsInteger = 0 then
  begin
     qyDelDown.Close;
     qyDelDown.ParamByName('P_MENU').AsInteger    := dsMenu.DataSet.FieldByName('R_MENU').AsInteger;
     qyDelDown.ParamByName('P_USUARIO').AsInteger := usuario;
     qyDelDown.Open;
     qyDelDown.Transaction.CommitRetaining;
  end
  else
     begin
        qyDel.Close;
        qyDel.ParamByName('P_ID').AsInteger := dsMenu.DataSet.FieldByName('ID').AsInteger;
        qyDel.Open;
        qyDel.Transaction.CommitRetaining;
     end;
  reglas.refresh_IBQuery(qyMenus);}
end;

procedure TfrmCapturar_seguridad.tlMenuAsignadoDragDrop(Sender,
  Source: TObject; X, Y: Integer);
begin
  inherited;
{  if dsMenuSupervisorArbol.DataSet.FieldByName('LINK').AsInteger = 0 then
  begin
     qyDown.Close;
     qyDown.ParamByName('P_ID').AsInteger      := dsMenuSupervisorArbol.DataSet.FieldByName('ID').AsInteger;
     qyDown.ParamByName('P_USUARIO').AsInteger := usuario;
     qyDown.Open;
     qyDown.Transaction.CommitRetaining;
  end
  else
     begin
        qyUp.Close;
        qyUp.ParamByName('P_ID').AsInteger      := dsMenuSupervisorArbol.DataSet.FieldByName('ID').AsInteger;
        qyUp.ParamByName('P_USUARIO').AsInteger := usuario;
        qyUp.Open;
        qyUp.Transaction.CommitRetaining;
     end;
  reglas.refresh_IBQuery(qyMenus);}
end;

procedure TfrmCapturar_seguridad.FormCreate(Sender: TObject);
begin
  inherited;
  menu_x_asignar := FALSE;
  menu_asignado  := FALSE;
end;

procedure TfrmCapturar_seguridad.tlMenuAsignadoDblClick(Sender: TObject);
begin
  inherited;
  if (dsMenu.DataSet.FieldByName('R_NOMBRE_INTERNO').AsString <> 'raiz')    and
     (dsMenu.DataSet.FieldByName('R_NOMBRE_INTERNO').AsString <> 'comando') and
     (dsMenu.DataSet.FieldByName('R_NOMBRE_INTERNO').AsString <> 'linea')   then
  begin
     frmCapturar_activar_botones := TfrmCapturar_activar_botones.Crear(Application, dsMenu.DataSet.FieldByName('R_NOMBRE_INTERNO').AsString, usuario);
     frmCapturar_activar_botones.ShowModal;
     frmCapturar_activar_botones.Free;
  end;
end;

procedure TfrmCapturar_seguridad.buAgregarClick(Sender: TObject);
begin
   inherited;
   spA_MENU.ParamByName('P_ID').AsInteger      := dsMenuSupervisorArbol.DataSet.FieldByName('ID').AsInteger;
   spA_MENU.ParamByName('P_USUARIO').AsInteger := usuario;
   spA_MENU.ExecProc;
   spA_MENU.Transaction.CommitRetaining;

   reglas.refresh_IBQuery(qyMenus);
   //tlMenuAsignado.FullExpand;
end;

procedure TfrmCapturar_seguridad.buQuitarClick(Sender: TObject);
begin
  inherited;
  spE_MENU.ParamByName('P_ID').AsInteger := dsMenu.DataSet.FieldByName('ID').AsInteger;
  spE_MENU.ExecProc;
  spE_MENU.Transaction.CommitRetaining;
  
  reglas.refresh_IBQuery(qyMenus);
 // tlMenuAsignado.FullExpand;
end;

end.
