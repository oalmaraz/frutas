unit mantenimientoDiccionario;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  padre, jpeg,  ExtCtrls,
  ComCtrls,    Buttons, StdCtrls,  Db,
  IBCustomDataSet, IBQuery, ActnList, System.Actions;

const
  { Columnas en el ListView (debe coincidir con el orden de los .Add en LeerConstraints) }
  iTipo = 0;
  iTabla = 1;
  iCampo = 2;
  iMensaje = 3;
  iDefinicion = 4;
  iIndice = 5;
  { Identificacion de los distintos tipos de constraints }
  cCheck = 'CHECK';
  cFK = 'FOREIGN KEY';
  cPK = 'PRIMARY KEY';
  cUnique = 'UNIQUE';
  cNotNull = 'NOT NULL';
  { Nombre de la sección en el INI con los mensajes de las restricciones }
  secConstraints = 'Constraints';

{
  Q1 trae informacion general sobre todos los constraints
  Q2 trae informacion de un indice; parametro 'Indice' con el nombre
  Q3 trae informacion de un Foreign Key; parametro 'FK' con el nombre
}
type
  TfrmMantenimientoDiccionario = class(TfrmPadre)
    lvConstraints: TListView;
    ibGuardar: TBitBtn;
    ibVigencia: TBitBtn;
    fcImageBtn2: TBitBtn;
    paInformacion: TPanel;
    Label1: TLabel;
    Label6: TLabel;
    edDiccionario: TEdit;
    Bevel1: TBevel;
    ibIni: TBitBtn;
    laBase: TLabel;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    meDefinicion: TMemo;
    meMensaje: TMemo;
    OpenDialog2: TOpenDialog;
    Q1: TIBQuery;
    q2: TIBQuery;
    q3: TIBQuery;
    ActionList1: TActionList;
    actGuardar: TAction;
    actGenerarSel: TAction;
    actGenerarTodos: TAction;
    actBuscarBD: TAction;
    actBuscarINI: TAction;
    actConectar: TAction;
    actLeerINI: TAction;
    actSalir: TAction;
    ibConectar: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure lvConstraintsSelectItem(Sender: TObject; Item: TListItem;
      Selected: Boolean);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure actGuardarUpdate(Sender: TObject);
    procedure actGuardarExecute(Sender: TObject);
    procedure actGenerarSelExecute(Sender: TObject);
    procedure actGenerarSelUpdate(Sender: TObject);
    procedure actGenerarTodosExecute(Sender: TObject);
    procedure actGenerarTodosUpdate(Sender: TObject);
    procedure actBuscarINIExecute(Sender: TObject);
    procedure actLeerINIExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actConectarExecute(Sender: TObject);
  private
    { Private declarations }
    { Indica si se ha modificado algun item }
    Modificado: Boolean;
    { Conecta con la Base de Datos y lee la definicion de las restricciones }
    procedure LeerConstraints(Lista: TStrings);
    procedure GenerarMensaje(indice: integer);
    procedure LeerIni(Lista: TStrings);
    procedure LeerTodo;
  public
    { Public declarations }
  end;

var
  frmMantenimientoDiccionario: TfrmMantenimientoDiccionario;

implementation

uses IBModulo, IniFiles, reglas_de_negocios, IBData;

{$R *.DFM}

procedure TfrmMantenimientoDiccionario.GenerarMensaje(indice: integer);
var
  li: TListItem;
begin
  li := lvConstraints.Items[indice];
  if li.SubItems[iMensaje] = '' then
  begin
    if SameText(li.SubItems[iTipo], cNotNull) then
      li.SubItems[iMensaje] := Format('El campo %s debe tener un valor', [li.subitems[iCampo]])
    else
      if SameText(li.SubItems[iTipo], cFK) then
        li.SubItems[iMensaje] := 'Hay registros relacionados, no se puede realizar la operación'
      else
        if SameText(li.SubItems[iTipo], cPK) or SameText(li.SubItems[iTipo], cUnique) then
          li.SubItems[iMensaje] := 'Llave primaria repetida(ID) o la clave ya existe y no puede repetirse'
        else
          if SameText(li.SubItems[iTipo], cCheck) then
            li.SubItems[iMensaje] := format('No se cumple la expresión %s', [copy(li.subitems[iDefinicion], 6, length(li.SubItems[iDefinicion]))]);
    Modificado := True;
  end; //if
end;

procedure TfrmMantenimientoDiccionario.FormCreate(Sender: TObject);
var
   archivo : string;
begin
  inherited;
  reglas.abrir_IBTabla(dmIBData.TFiltroEmpresas);
  dmIBData.TFiltroEmpresas.Filter := 'ID = '+IntToStr(reglas.dame_empresa);
  laBase.Caption        := reglas.dame_ruta + dmIBData.TFiltroEmpresas.FieldByName('NOMBRE_AWR').AsString;

  lvConstraints.Enabled := False;
  GroupBox1.Enabled     := False;
  Modificado            := false;

  archivo := ExtractFilePath(Application.ExeName)+'diccionario.ini';
  if FileExists(archivo) then
     edDiccionario.Text := archivo;
end;

procedure TfrmMantenimientoDiccionario.lvConstraintsSelectItem(
  Sender: TObject; Item: TListItem; Selected: Boolean);
var
  s: string;
begin
  inherited;
  if Selected then
  begin
    if SameText(Item.SubItems[iTipo], cPK) or
       SameText(Item.SubItems[iTipo], cFK) or
       SameText(Item.SubItems[iTipo], cUnique) then
    begin
      { Busco los campos del indice }
      q2.close;
      q2.ParamByName('Indice').AsString := Item.SubItems[iIndice];
      q2.Open;
      s := '';
      while not q2.Eof do
      begin
        s := s + Trim(q2.FieldByName('Campo').AsString) + ', ';
        q2.Next;
      end;
      q2.Close;
      meDefinicion.Lines.Text := Format('Tabla: %s', [item.subitems[iTabla]]);
      meDefinicion.Lines.Add(Format('Indice: %s, con campos: %s',
        [trim(Item.SubItems[iIndice]), copy(s, 1, length(s) - 2)]));
      if SameText(Item.SubItems[iTipo], cFK) then
      begin
        { busco los datos de la tabla referenciada (master) }
        q3.Close;
        q3.ParamByName('FK').AsString := Item.Caption;
        q3.Open;
        s := '';
        while not q3.Eof do
        begin
          s := s + Trim(q3.FieldByName('CampoRef').AsString) + ', ';
          q3.Next;
        end;
        meDefinicion.Lines.Add(Format('Referencia al índice: %s, de la tabla: %s, campos: %s',
          [trim(q3.FieldByName('IndiceRef').AsString),
          trim(q3.FieldByName('TablaRef').AsString),
            copy(s, 1, length(s) - 2)]));
      end; //if FK...
    end
    else
    if SameText(Item.SubItems[iTipo], cCheck) then
    begin
      meDefinicion.lines.SetText(PChar(Item.SubItems[iDefinicion]));
      meDefinicion.Lines.Insert(0,'Tabla: '+Item.SubItems[iTabla]);
    end
    else
      meDefinicion.Lines.Text := Format('Tabla: %s, Campo: %s', [Item.Subitems[iTabla], Item.SubItems[iCampo]]);
    meMensaje.Lines.Text := item.SubItems[iMensaje];
  end //if selected
  else
    if not SameText(Item.SubItems[iMensaje], meMensaje.Lines.Text) then
    begin
      Item.SubItems[iMensaje] := meMensaje.Lines.Text;
      Modificado := True;
    end;
end;

procedure TfrmMantenimientoDiccionario.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
var
  r: Integer;
begin
  inherited;
  if Modificado then
  begin
    r := MessageDlg('¿Guardar las modificaciones?', mtConfirmation, [mbYes, mbNo, mbCancel], 0);
    case r of
      mrYes: ibGuardar.Click;
      mrCancel: CanClose := false;
    end;
  end;
end;

procedure TfrmMantenimientoDiccionario.actGuardarUpdate(Sender: TObject);
begin
  inherited;
  actGuardar.Enabled := Modificado;
end;

procedure TfrmMantenimientoDiccionario.actGuardarExecute(Sender: TObject);
var
  i: TIniFile;
  j: Integer;
begin
  inherited;
  try
    Screen.Cursor := crHourGlass;
    if lvConstraints.Selected <> nil then
      lvConstraints.Selected.SubItems[iMensaje] := meMensaje.Lines.Text;
    i := TIniFile.Create(edDiccionario.text);
    for j := 0 to lvConstraints.Items.Count - 1 do
      i.WriteString(secConstraints, lvConstraints.Items[j].Caption, lvConstraints.Items[j].SubItems[iMensaje]);
    i.Free;
    Modificado := False;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmMantenimientoDiccionario.actGenerarSelExecute(
  Sender: TObject);
begin
  inherited;
  GenerarMensaje(lvConstraints.Selected.Index);
  meMensaje.Lines.Text := lvConstraints.Selected.SubItems[iMensaje];
end;

procedure TfrmMantenimientoDiccionario.actGenerarSelUpdate(
  Sender: TObject);
begin
  inherited;
  actGenerarSel.Enabled := (lvConstraints.Selected <> nil) and (lvConstraints.Selected.SubItems[iMensaje] = '');
end;

procedure TfrmMantenimientoDiccionario.actGenerarTodosExecute(
  Sender: TObject);
var
  i: Integer;
  b: Boolean;
begin
  inherited;
  b := MessageDlg('¿Reemplazar los mensajes existentes?', mtWarning, [mbYes, mbNo], 0) = mrYes;
  try
    Screen.Cursor := crHourGlass;
    for i := 0 to lvConstraints.Items.Count - 1 do
    begin
      if b then
         lvConstraints.Items[i].SubItems[iMensaje] := '';
      GenerarMensaje(i);
    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmMantenimientoDiccionario.actGenerarTodosUpdate(
  Sender: TObject);
begin
  inherited;
  actGenerarTodos.Enabled := lvConstraints.Items.Count > 0;
end;

procedure TfrmMantenimientoDiccionario.actBuscarINIExecute(
  Sender: TObject);
begin
  inherited;
  if OpenDialog2.Execute then
    edDiccionario.Text := OpenDialog2.FileName;
end;

procedure TfrmMantenimientoDiccionario.actLeerINIExecute(Sender: TObject);
begin
  inherited;
  LeerTodo;
end;

procedure TfrmMantenimientoDiccionario.LeerTodo;
var
  ts: TStringList;
begin
  ts := TStringList.Create;
  LeerIni(ts);
  LeerConstraints(ts);
  ts.Free;
end;

procedure TfrmMantenimientoDiccionario.LeerIni(Lista: TStrings);
var
  i: TIniFile;
begin
  i := TIniFile.Create(edDiccionario.text);
  i.ReadSectionValues(secConstraints, Lista);
  i.Free;
end;

procedure TfrmMantenimientoDiccionario.LeerConstraints(Lista: TStrings);
var
  s: string;
begin
  try
    Screen.Cursor := crHourGlass;
    lvConstraints.items.clear;
    Q1.Open;
    s := '';
    while not Q1.Eof do
    begin
      if s <> Q1.FieldByName('Nombre').AsString then
      begin
        s := Q1.FieldByName('Nombre').AsString;
        with lvConstraints.Items.Add do
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
end;

procedure TfrmMantenimientoDiccionario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TfrmMantenimientoDiccionario.actConectarExecute(Sender: TObject);
begin
  inherited;
  actLeerINIExecute(Sender); //lee los constraints
  lvConstraints.Enabled := True;
  GroupBox1.Enabled := True;
end;

end.
