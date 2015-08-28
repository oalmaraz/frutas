unit capturar_grupos_colores;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  capturarMDI, IBStoredProc, IBTable,  Db, IBCustomDataSet,
  IBQuery, StdCtrls, Mask, DBCtrls,    jpeg,
   ExtCtrls,  IBModulo, explorar_grupos_colores,

     Menus, Buttons, Grids, DBGrids;

type
  TfrmCapturar_grupos_colores = class(TfrmCapturarMDI)
    TCapturarID: TIntegerField;
    TCapturarNOMBRE: TIBStringField;
    edNombre: TDBEdit;
    Label1: TLabel;
    paCaptura: TPanel;
    Shape16: TShape;
    Shape15: TShape;
    Label41: TLabel;
    Shape22: TShape;
    Label34: TLabel;
    Shape17: TShape;
    Label39: TLabel;
    ibNPartida: TBitBtn;
    ibMPartida: TBitBtn;
    ibGPartida: TBitBtn;
    ibCPartida: TBitBtn;
    ibEPartida: TBitBtn;
    cbColores: TDBLookupComboBox;
    dgPartidas: TDBGrid;
    TColores: TIBTable;
    dsUnidades: TDataSource;
    qyPartidas: TIBQuery;
    dsPartidas: TDataSource;
    qyPartidasR_ROWS: TIntegerField;
    qyPartidasR_ID: TIntegerField;
    qyPartidasR_COLOR: TIntegerField;
    qyPartidasR_COLOR_NOMBRE: TIBStringField;
    spADD_GCOLORES_DET: TIBStoredProc;
    qyDelGColoresDet: TIBQuery;
    TColoresID: TIntegerField;
    TColoresNOMBRE: TIBStringField;
    pmTeclas: TPopupMenu;
    NuevaPartida1: TMenuItem;
    ModificarPartida1: TMenuItem;
    GuardarPartida1: TMenuItem;
    CancelarPartida1: TMenuItem;
    EliminarPartida1: TMenuItem;
    TColoresVALOR: TIntegerField;
    TColoresCOLOR_TEXTO: TIntegerField;
    TColoresMOSTRAR_POS: TIBStringField;
    TColoresPROCESOS: TIBStringField;
    TColoresPIGMENTOS: TIBStringField;
    TColoresORDEN: TIntegerField;
    procedure ibNuevoClick(Sender: TObject);
    procedure ibModificarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ibNPartidaClick(Sender: TObject);
    procedure ibMPartidaClick(Sender: TObject);
    procedure ibGPartidaClick(Sender: TObject);
    procedure ibCPartidaClick(Sender: TObject);
    procedure ibEPartidaClick(Sender: TObject);
    procedure buInicioClick(Sender: TObject);
    procedure buAnteriorClick(Sender: TObject);
    procedure buSiguienteClick(Sender: TObject);
    procedure buFinClick(Sender: TObject);
    procedure NuevaPartida1Click(Sender: TObject);
    procedure ModificarPartida1Click(Sender: TObject);
    procedure GuardarPartida1Click(Sender: TObject);
    procedure CancelarPartida1Click(Sender: TObject);
    procedure EliminarPartida1Click(Sender: TObject);
  private
    { Private declarations }
    edicionDet : boolean;
    procedure fijarBotones;overload;
    procedure fijarBotones(valor : boolean);overload;
  public
    { Public declarations }
  end;

var
  frmCapturar_grupos_colores: TfrmCapturar_grupos_colores;

implementation

uses
  reglas_de_negocios;

{$R *.DFM}

procedure TfrmCapturar_grupos_colores.fijarBotones;
begin
   ibNPartida.Enabled := not edicionDet;
   ibMPartida.Enabled := not edicionDet and not(dsPartidas.DataSet.IsEmpty);
   ibEPartida.Enabled := not edicionDet and not(dsPartidas.DataSet.IsEmpty);
   ibGPartida.Enabled := edicionDet;
   ibCPartida.Enabled := edicionDet;
   dgPartidas.Enabled := not edicionDet;

   if edicionDet then
      paCaptura.Height := 128
   else
      paCaptura.Height := 61;
end;

procedure TfrmCapturar_grupos_colores.fijarBotones(valor : boolean);
begin
   edicionDet := valor;
   fijarBotones;
end;

procedure TfrmCapturar_grupos_colores.ibNuevoClick(Sender: TObject);
begin
  inherited;
  edNombre.SetFocus;
end;

procedure TfrmCapturar_grupos_colores.ibModificarClick(Sender: TObject);
begin
  inherited;
  edNombre.SetFocus;
end;

procedure TfrmCapturar_grupos_colores.FormCreate(Sender: TObject);
begin
  reglas.abrir_IBTabla(TColores);
  reglas.refresh_IBQuery(qyPartidas);
  inherited;
  fijarBotones(false);
end;

procedure TfrmCapturar_grupos_colores.ibNPartidaClick(Sender: TObject);
begin
  inherited;
  paCaptura.Tag := 0;
  cbColores.KeyValue := 0;
  cbColores.SetFocus;
  
  fijarBotones(true);
end;

procedure TfrmCapturar_grupos_colores.ibMPartidaClick(Sender: TObject);
begin
  inherited;
  paCaptura.Tag            := dsPartidas.DataSet.FieldByName('R_ID').AsInteger;
  cbColores.KeyValue := dsPartidas.DataSet.FieldByName('R_COLOR').AsInteger;
  cbColores.SetFocus;

  fijarBotones(true);
end;

procedure TfrmCapturar_grupos_colores.ibGPartidaClick(Sender: TObject);
begin
  inherited;
  spADD_GCOLORES_DET.ParamByName('P_ID').AsInteger          := paCaptura.Tag;
  spADD_GCOLORES_DET.ParamByName('P_GRUPO_COLOR').AsInteger := dsFuente.DataSet.FieldByName('ID').AsInteger;
  spADD_GCOLORES_DET.ParamByName('P_COLOR').AsInteger       := cbColores.KeyValue;
  spADD_GCOLORES_DET.ExecProc;
  spADD_GCOLORES_DET.Transaction.CommitRetaining;
  reglas.abrir_IBQuery_seek('R_ID',paCaptura.Tag,qyPartidas);
  fijarBotones(false);
end;

procedure TfrmCapturar_grupos_colores.ibCPartidaClick(Sender: TObject);
begin
  inherited;
  fijarBotones(false);
end;

procedure TfrmCapturar_grupos_colores.ibEPartidaClick(Sender: TObject);
begin
  inherited;
   if MessageDlg('¿Eliminar registro?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
     qyDelGColoresDet.ParamByName('P_ID').AsInteger := dsPartidas.DataSet.FieldByName('R_ID').AsInteger;
     qyDelGColoresDet.ExecSQL;
     qyDelGColoresDet.Transaction.CommitRetaining;
     reglas.refresh_IBQuery(qyPartidas);
     fijarBotones;
  end;
end;

procedure TfrmCapturar_grupos_colores.buInicioClick(Sender: TObject);
begin
  inherited;
  fijarBotones;
end;

procedure TfrmCapturar_grupos_colores.buAnteriorClick(Sender: TObject);
begin
  inherited;
  fijarBotones;
end;

procedure TfrmCapturar_grupos_colores.buSiguienteClick(Sender: TObject);
begin
  inherited;
  fijarBotones;
end;

procedure TfrmCapturar_grupos_colores.buFinClick(Sender: TObject);
begin
  inherited;
  fijarBotones;
end;

procedure TfrmCapturar_grupos_colores.NuevaPartida1Click(Sender: TObject);
begin
  inherited;
  if ibNPartida.Enabled then
     ibNPartida.Click;
end;

procedure TfrmCapturar_grupos_colores.ModificarPartida1Click(
  Sender: TObject);
begin
  inherited;
  if ibMPartida.Enabled then
     ibMPartida.Click;
end;

procedure TfrmCapturar_grupos_colores.GuardarPartida1Click(
  Sender: TObject);
begin
  inherited;
  if ibGPartida.Enabled then
     ibGPartida.Click;
end;

procedure TfrmCapturar_grupos_colores.CancelarPartida1Click(
  Sender: TObject);
begin
  inherited;
  if ibCPartida.Enabled then
     ibCPartida.Click;
end;

procedure TfrmCapturar_grupos_colores.EliminarPartida1Click(
  Sender: TObject);
begin
  inherited;
  if ibEPartida.Enabled then
     ibEPartida.Click;
end;

end.
