unit lineas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
       ImgList, Db, IBCustomDataSet,
  IBTable, Grids, DBGrids, System.ImageList;

type
  TfrmLineas = class(TForm)
    dsFuente: TDataSource;
    TLineas: TIBTable;
    TLineasID: TIntegerField;
    TLineasLINK: TIntegerField;
    TLineasDESCRIPCION: TIBStringField;
    TLineasESTATUS: TIBStringField;
    ilMenuArbol: TImageList;
    tlArbol: TDBGrid;
    {
    procedure tlArbolGetImageIndex(Sender: TObject; Node: TdxTreeListNode;
      var Index: Integer);
    procedure tlArbolGetSelectedIndex(Sender: TObject;
      Node: TdxTreeListNode; var Index: Integer);
    }
    procedure FormCreate(Sender: TObject);
    procedure tlArbolDblClick(Sender: TObject);
    procedure tlArbolKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    seleccion : integer;
    strSeleccion : String;
  public
    { Public declarations }
    procedure coordenadas(x, y : integer);
    function dame_seleccion : integer;
    function dame_strSeleccion : string;
  end;

var
  frmLineas: TfrmLineas;

implementation

{$R *.DFM}

function TfrmLineas.dame_strSeleccion : string;
begin
   Result := strSeleccion;
end;

function TfrmLineas.dame_seleccion : integer;
begin
   Result := seleccion;
end;

procedure TfrmLineas.coordenadas(x, y : integer);
begin
   left := x;
   top  := y;
end;

{
procedure TfrmLineas.tlArbolGetImageIndex(Sender: TObject;
  Node: TdxTreeListNode; var Index: Integer);
const
  ImagesIndex: array [Boolean] of Integer = (0, 1);
begin
  if Node.HasChildren then
    Index := ImagesIndex[Node.Expanded]
  else Index := 2;
end;

procedure TfrmLineas.tlArbolGetSelectedIndex(Sender: TObject;
  Node: TdxTreeListNode; var Index: Integer);
const
  ImagesIndex: array [Boolean] of Integer = (0, 1);
begin
  if Node.HasChildren then
    Index := ImagesIndex[Node.Expanded]
  else Index := 2;
end;

}

procedure TfrmLineas.FormCreate(Sender: TObject);
begin
   TLineas.Close;
   TLineas.Open;
   //tlArbol.FullExpand;
   seleccion := 0;
end;

procedure TfrmLineas.tlArbolDblClick(Sender: TObject);
begin
   if not(dsFuente.DataSet.IsEmpty) then
   begin
      seleccion    := dsFuente.DataSet.FieldByName('ID').AsInteger;
      strSeleccion := dsFuente.DataSet.FieldByName('DESCRIPCION').AsString;
      close;
   end;
end;

procedure TfrmLineas.tlArbolKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = 13 then
      tlArbol.OnDblClick(sender);
end;

end.
