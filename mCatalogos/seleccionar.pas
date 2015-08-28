unit seleccionar;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  hijo,  IBStoredProc, Menus,
     StdCtrls, Db, IBCustomDataSet, IBQuery,
    DBCtrls, Mask,  jpeg,  ExtCtrls,
   Buttons, Grids, DBGrids;

type
  TfrmSeleccionar = class(TfrmHijo)
    dgExplorar: TDBGrid;
    qySeleccionar: TIBQuery;
    pmCampos: TPopupMenu;
    spAdd: TIBStoredProc;
    spDel: TIBStoredProc;
    dsDestino: TDataSource;
    imBuscador: TImage;
    laCampo: TLabel;
    meValor: TEdit;
    ibBuscar: TBitBtn;
    ibTodos: TBitBtn;
    sbUp: TBitBtn;
    sbDown: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure laCampoClick(Sender: TObject);
    procedure ibBuscarClick(Sender: TObject);
    procedure ibTodosClick(Sender: TObject);
    procedure dsFuenteDataChange(Sender: TObject; Field: TField);
    procedure sbUpClick(Sender: TObject);
    procedure sbDownClick(Sender: TObject);
    procedure dsDestinoDataChange(Sender: TObject; Field: TField);
    procedure dgExplorarDblClick(Sender: TObject);
    procedure meValorKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    procedure Click_items(Sender: TObject);
    procedure LoadCampos;
  protected
    { Protected declarations }
    tabla   : string;
    todos   : string;
    campo   : string;
    valor   : integer;
    procedure agregar; virtual;
    procedure eliminar; virtual;
    procedure buscar; virtual;
  public
    { Public declarations }
    procedure coordenadas(p_top, p_left, p_width, p_height : integer);
    constructor CrearObj(AOwner : TComponent; x1, y1, x2, y2 : integer);
    function dameValor : integer;
  end;

var
  frmSeleccionar: TfrmSeleccionar;

implementation

uses reglas_de_negocios;

{$R *.DFM}

function TfrmSeleccionar.dameValor : integer;
begin
   Result := valor;
end;

constructor TfrmSeleccionar.CrearObj(AOwner : TComponent; x1, y1, x2, y2 : integer);
begin
   Create(AOwner);
   Self.Left   := x1;
   Self.Top    := y1;
   Self.Width  := x2;
   Self.Height := y2;
end;

procedure TfrmSeleccionar.agregar;
begin
   //enlace con clase derivada;
end;

procedure TfrmSeleccionar.eliminar;
begin
   //enlace con clase derivada
end;

procedure TfrmSeleccionar.LoadCampos;
var
   i     : integer;
   lista : TStringList;
   items : TMenuItem;
begin
   lista := TStringList.Create;
   dsFuente.DataSet.GetFieldNames(lista);
   for i := 0 to lista.Count-1 do
   begin
      items         := TMenuItem.Create(Application);
      items.Caption := lista.Strings[i];
      items.OnClick := Click_items;
      pmCampos.Items.Add(items);
   end;
   lista.Free;
end;

procedure TfrmSeleccionar.coordenadas(p_top, p_left, p_width, p_height : integer);
begin
   Self.Top    := p_top;
   Self.Left   := p_left;
   Self.width  := p_width;
   Self.height := p_height;
end;

procedure TfrmSeleccionar.Click_items(Sender: TObject);
begin
   laCampo.Caption := TMenuItem(Sender).Caption;
   meValor.SetFocus;
end;

procedure TfrmSeleccionar.FormCreate(Sender: TObject);
begin
  inherited;
  valor := 0;
  qySeleccionar.Close;
  qySeleccionar.SQL.Clear;
  qySeleccionar.SQL.Add('SELECT *');
  qySeleccionar.SQL.Add('FROM '+tabla);
  if(todos <> '')then
     qySeleccionar.SQL.Add(todos);
  qySeleccionar.Open;
  LoadCampos;
end;

procedure TfrmSeleccionar.laCampoClick(Sender: TObject);
var
   Pnt : TPoint;
begin
  inherited;
  Pnt := laCampo.ClientToScreen(Point(0,laCampo.Height));
  pmCampos.Popup(Pnt.x,Pnt.y);
end;

procedure TfrmSeleccionar.buscar;
begin
   qySeleccionar.Close;
   qySeleccionar.SQL.Clear;
   qySeleccionar.SQL.Add('SELECT *');
   qySeleccionar.SQL.Add('FROM '+tabla);
   qySeleccionar.SQL.Add(todos+' AND UPPER('+reglas.solo_alfabeto(laCampo.Caption)+') LIKE "%'+UpperCase(meValor.Text)+'%"');
   qySeleccionar.Open;
end;

procedure TfrmSeleccionar.ibBuscarClick(Sender: TObject);
begin
  inherited; 
  if (meValor.Text <> '') and (laCampo.Caption <> 'campo') then
  begin
     buscar;
  end;
end;

procedure TfrmSeleccionar.ibTodosClick(Sender: TObject);
begin
  inherited;
  qySeleccionar.Close;
  qySeleccionar.SQL.Clear;
  qySeleccionar.SQL.Add('SELECT *');
  qySeleccionar.SQL.Add('FROM '+tabla);
  if(todos <> '')then
     qySeleccionar.SQL.Add(todos);
  qySeleccionar.Open;
end;

procedure TfrmSeleccionar.dsFuenteDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
   if dsFuente.DataSet <> nil then
   begin
      sbDown.Enabled := not(dsFuente.DataSet.IsEmpty);
   end;
end;

procedure TfrmSeleccionar.sbUpClick(Sender: TObject);
begin
  inherited;
  if dsDestino.DataSet <> nil then
  begin
     if not(dsDestino.DataSet.IsEmpty) then
     begin
        eliminar;
     end
     else
     begin
        ShowMessage('No se encuentra registro para eliminar.');

     end;
  end;
end;

procedure TfrmSeleccionar.sbDownClick(Sender: TObject);
begin
  inherited;
  if dsFuente.DataSet <> nil then
  begin
     if not(dsFuente.DataSet.IsEmpty) then
     begin
        agregar;
     end
     else
     begin
        ShowMessage('Para aceptar el registro la busqueda no debe ser vacia');
     end;
  end;
end;

procedure TfrmSeleccionar.dsDestinoDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if dsDestino.DataSet <> nil then
  begin
     sbUp.Enabled := not(dsDestino.DataSet.IsEmpty);
  end;
end;

procedure TfrmSeleccionar.dgExplorarDblClick(Sender: TObject);
begin
  inherited;
  if sbDown.Enabled then
     sbDown.Click;
end;

procedure TfrmSeleccionar.meValorKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if (Key = #13) and (meValor.Text <> '') then
     ibBuscar.Click;
end;

procedure TfrmSeleccionar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dsDestino.DataSet := nil;
  inherited;
end;

end.
