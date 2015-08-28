unit UfrmMedidasGrupos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls,     Db, IBCustomDataSet, IBTable,
  IBQuery, ImgList, IBStoredProc,    
  Grids, DBGrids, StdCtrls, Buttons;

type
  TfrmMedidasGrupos = class(TForm)
    tlGrupos: TDBGrid;
    tlMedidas: TDBGrid;
    TIBXMedidas: TIBTable;
    TIBXMedidasID: TIntegerField;
    TIBXMedidasLINK: TIntegerField;
    TIBXMedidasDESCRIPCION: TIBStringField;
    TIBXMedidasORDEN: TIntegerField;
    dsMedidas: TDataSource;
    qyAgrupar: TIBQuery;
    dsAgrupar: TDataSource;
    ilMenuArbol: TImageList;
    spADD_MEDIDAS_GRUPOS: TIBStoredProc;
    Panel1: TPanel;
    buRaiz: TBitBtn;
    buSeleccion: TBitBtn;
    buEliminar: TBitBtn;
    spDEL_MEDIDA_GRUPO: TIBStoredProc;
    qyAgruparR_ID: TIntegerField;
    qyAgruparR_LINK: TIntegerField;
    qyAgruparR_MEDIDA: TIntegerField;
    qyAgruparR_MEDIDA_DESCRIPCION: TIBStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    {
    procedure tlGruposGetImageIndex(Sender: TObject; Node: TdxTreeListNode;
      var Index: Integer);
    procedure tlMedidasGetImageIndex(Sender: TObject;
      Node: TdxTreeListNode; var Index: Integer);
    procedure tlGruposGetSelectedIndex(Sender: TObject;
      Node: TdxTreeListNode; var Index: Integer);
    procedure tlMedidasGetSelectedIndex(Sender: TObject;
      Node: TdxTreeListNode; var Index: Integer);
    }
    procedure buRaizClick(Sender: TObject);
    procedure buSeleccionClick(Sender: TObject);
    procedure buEliminarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMedidasGrupos: TfrmMedidasGrupos;

implementation

uses
  IBModulo, reglas_de_negocios;

{$R *.DFM}

procedure TfrmMedidasGrupos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TfrmMedidasGrupos.FormCreate(Sender: TObject);
begin
   reglas.abrir_IBTabla(TIBXMedidas);
   reglas.refresh_IBQuery(qyAgrupar);

//   tlGrupos.FullExpand;
  // tlMedidas.FullExpand;
end;

{
procedure TfrmMedidasGrupos.tlGruposGetImageIndex(Sender: TObject;
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

procedure TfrmMedidasGrupos.tlMedidasGetImageIndex(Sender: TObject;
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

procedure TfrmMedidasGrupos.tlGruposGetSelectedIndex(Sender: TObject;
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

procedure TfrmMedidasGrupos.tlMedidasGetSelectedIndex(Sender: TObject;
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

}
procedure TfrmMedidasGrupos.buRaizClick(Sender: TObject);
var
   i   : integer;
   L   : TList;
   tmp : string;
begin
   L := nil;
   try
      L := TList.Create;
      {
      for i := 0 to tlMedidas.SelectedCount - 1 do
          L.Add(tlMedidas.SelectedNodes[i]);//no se hace directamente en el grid por que tiene bug, cuando son 2 registros
      for i := 0 to (L.Count - 1) do
      begin
         tmp := TdxTreeListNode(L.Items[i]).Strings[0];
         spADD_MEDIDAS_GRUPOS.ParamByName('P_LINK').AsInteger := 0;
         spADD_MEDIDAS_GRUPOS.ParamByName('P_ID').AsString    := tmp;
         spADD_MEDIDAS_GRUPOS.ExecProc;
         spADD_MEDIDAS_GRUPOS.Transaction.CommitRetaining;
      end;
      }
   finally
      L.Free;
   end;
   reglas.refresh_IBQuery(qyAgrupar);
   //tlGrupos.FullExpand;
end;

procedure TfrmMedidasGrupos.buSeleccionClick(Sender: TObject);
var
   i   : integer;
   L   : TList;
   tmp : string;
   id  : integer;
begin
   if tlGrupos.DataSource.DataSet.FieldByName('R_LINK').AsInteger = 0 then
   begin
      L := nil;
      id := tlGrupos.DataSource.DataSet.FieldByName('R_ID').AsInteger;
      try
         L := TList.Create;
         {
         for i := 0 to tlMedidas.SelectedCount - 1 do
             L.Add(tlMedidas.SelectedNodes[i]);//no se hace directamente en el grid por que tiene bug, cuando son 2 registros
         for i := 0 to (L.Count - 1) do
         begin
            tmp := TdxTreeListNode(L.Items[i]).Strings[0];
            spADD_MEDIDAS_GRUPOS.ParamByName('P_LINK').AsInteger := id;
            spADD_MEDIDAS_GRUPOS.ParamByName('P_ID').AsString    := tmp;
            spADD_MEDIDAS_GRUPOS.ExecProc;
            spADD_MEDIDAS_GRUPOS.Transaction.CommitRetaining;
         end;
         }
      finally
         L.Free;
         reglas.refresh_IBQuery(qyAgrupar);
         //tlGrupos.FullExpand;
      end;
   end
   else
   begin
     ShowMessage('Solamente se puede agrupar en 2 niveles, no es posible agregar 3 niveles o mas.');
   end
end;

procedure TfrmMedidasGrupos.buEliminarClick(Sender: TObject);
var
   id : integer;
begin
   id := tlGrupos.DataSource.DataSet.FieldByName('R_ID').AsInteger;
  if MessageDlg('¿ Eliminar registro ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes  then
  begin
     spDEL_MEDIDA_GRUPO.ParamByName('P_ID').AsInteger := id;
     spDEL_MEDIDA_GRUPO.ExecProc;
     spDEL_MEDIDA_GRUPO.Transaction.CommitRetaining;
     reglas.refresh_IBQuery(qyAgrupar);
     //tlGrupos.FullExpand;
  end;
end;

end.
