unit UfrmDiccionario;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, IBCustomDataSet, IBQuery, ComCtrls,   StdCtrls,
      ExtCtrls, Buttons;

type
  TfrmDiccionario = class(TForm)
    Q1: TIBQuery;
    q2: TIBQuery;
    q3: TIBQuery;
    paDescripciones: TPanel;
    meDefinicion: TMemo;
    meMensaje: TMemo;
    Label1: TLabel;
    Label2: TLabel;
    OpenDialog2: TOpenDialog;
    Panel2: TPanel;
    Panel3: TPanel;
    buGuardar: TBitBtn;
    buSeleccionados: TBitBtn;
    buTodos: TBitBtn;
    Panel4: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    laBase: TLabel;
    Bevel1: TBevel;
    edDiccionario: TEdit;
    buConectar: TBitBtn;
    buBuscar: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    
    Modificado: Boolean;

{    procedure LeerConstraints(Lista: TStrings);
    procedure GenerarMensaje(indice: integer);
    procedure LeerIni(Lista: TStrings);
    procedure LeerTodo;}

    procedure llenarPartidas;
  public
    { Public declarations }
  end;

var
  frmDiccionario: TfrmDiccionario;

implementation

uses IBData, reglas_de_negocios;

{$R *.DFM}

procedure TfrmDiccionario.llenarPartidas;
//var
  // N : TdxTreeListNode;
begin
{
   Q1.Open;

   dgPartidas.ClearNodes;
   Q1.First;
   while not(Q1.Eof) do
   begin
      N            := dgPartidas.Add;
      N.Values[0]  := '';
      N.Values[1]  := Q1.FieldByName('NOMBRE').AsString;
      N.Values[2]  := Q1.FieldByName('TIPO').AsString;
      N.Values[3]  := Q1.FieldByName('TABLA').AsString;
      N.Values[4]  := Q1.FieldByName('CAMPO').AsString;
      N.Values[5]  := Q1.FieldByName('DEFINICION').AsString;
      N.Values[6]  := Q1.FieldByName('INDICE').AsString;

      Q1.Next;
   end;
 }
end;


{procedure TfrmDiccionario.LeerConstraints(Lista: TStrings);
var
  s: string;
begin
  try
    Screen.Cursor := crHourGlass;
//    lvConstraints.items.clear;
    Q1.Open;
    s := '';
    while not Q1.Eof do
    begin
      if s <> Q1.FieldByName('Nombre').AsString then
      begin
        s := Q1.FieldByName('Nombre').AsString;
        with lvConstraints.Items.ad Add do
        begin
          Caption := Trim(s);
          SubItems.Add(Trim(Q1.FieldByName('Tipo').AsString));
          SubItems.Add(Trim(Q1.FieldByName('Tabla').AsString));
          if SubItems[iTipo] = cCheck then
            SubItems.Add('')
          else
            SubItems.Add(Trim(Q1.FieldByName('Campo').AsString));
          SubItems.Add(Trim(Lista.Values[Caption]));
          SubItems.Add(Trim(Q1.FieldByName('Definicion').AsString));
          SubItems.Add(Trim(Q1.FieldByName('Indice').AsString));
        end; //with
      end; //if
      Q1.Next;
    end; //while
    Q1.Close;
  finally
    Screen.Cursor := crDefault;
  end;
end;}

procedure TfrmDiccionario.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TfrmDiccionario.FormCreate(Sender: TObject);
var
   archivo : string;
begin
  reglas.abrir_IBTabla(dmIBData.TFiltroEmpresas);
  dmIBData.TFiltroEmpresas.Filter := 'ID = '+IntToStr(reglas.dame_empresa);
  laBase.Caption        := reglas.dame_ruta + dmIBData.TFiltroEmpresas.FieldByName('NOMBRE_AWR').AsString;

//  lvConstraints.Enabled   := False;
  paDescripciones.Enabled := False;
  Modificado              := false;

  archivo := ExtractFilePath(Application.ExeName)+'diccionario.ini';
  if FileExists(archivo) then
     edDiccionario.Text := archivo;
end;

end.
