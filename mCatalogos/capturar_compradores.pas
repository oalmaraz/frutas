unit capturar_compradores;

interface               

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  capturar_base_sujetos, Db, ImgList,  IBStoredProc, IBTable,
   IBCustomDataSet, IBQuery,

    StdCtrls, ComCtrls,  DBCtrls, Mask,
     jpeg,  ExtCtrls,
  Menus, ExtDlgs, Buttons,
    Grids, DBGrids, System.ImageList;

type
  TfrmCapturar_compradores = class(TfrmCapturar_base_sujetos)
    TClasificaciones: TIBTable;
    TTabuladores: TIBTable;
    dsClasificaciones: TDataSource;
    dsTabuladores: TDataSource;
    TClasificacionesID: TIntegerField;
    TClasificacionesDESCRIPCION: TIBStringField;
    TTabuladoresID: TIntegerField;
    TTabuladoresCLAVE: TIBStringField;
    TTabuladoresLIMITE_INF: TFloatField;
    TTabuladoresLIMITE_SUP: TFloatField;
    TTabuladoresBASE_MONTO: TFloatField;
    TTabuladoresPORCENTAJE: TFloatField;
    TCapturarID: TIntegerField;
    TCapturarSUJETO: TIntegerField;
    TCapturarCLASIFICACION: TIntegerField;
    TCapturarTABULADOR: TIntegerField;
    TCapturardescripcion: TStringField;
    TCapturarclave: TStringField;
    tsZonas: TTabSheet;
    dgZonas: TDBGrid;
    TZonas: TIBTable;
    dsZonas: TDataSource;
    qyBuscar: TIBQuery;
    TZonasdescripcion: TStringField;
    qyBuscarR_DESCRIPCION: TIBStringField;
    spDelZona: TIBStoredProc;
    TDepartamentos: TIBTable;
    dsDepartamentos: TDataSource;
    TDepartamentosID: TIntegerField;
    TDepartamentosCLAVE: TIBStringField;
    TDepartamentosDESCRIPCION: TIBStringField;
    TCapturarDEPARTAMENTO: TIntegerField;
    TCapturarclave_departamento: TStringField;
    TZonasID: TIntegerField;
    TZonasCOMPRADOR: TIntegerField;
    TZonasZONA: TIntegerField;
    fpZonaV: TPanel;
    fpZonas: TPanel;
    ibNuevaZona: TBitBtn;
    ibEliminarZona: TBitBtn;
    Label12: TLabel;
    leClasificacion: TDBLookupComboBox;
    leTabulador: TDBLookupComboBox;
    Label13: TLabel;
    leDepartamentos: TDBLookupComboBox;
    Label14: TLabel;
    sbRefreshClasificacion: TSpeedButton;
    sbRefreshTabulador: TSpeedButton;
    sbRefreshDepartamento: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure TZonasCalcFields(DataSet: TDataSet);
    procedure ibNuevaZonaClick(Sender: TObject);
    procedure ibEliminarZonaClick(Sender: TObject);
    procedure dsZonasDataChange(Sender: TObject; Field: TField);
    procedure tsZonasShow(Sender: TObject);
    procedure sbRefreshClasificacionClick(Sender: TObject);
    procedure sbRefreshTabuladorClick(Sender: TObject);
    procedure sbRefreshDepartamentoClick(Sender: TObject);
  private
    { Private declarations }
  protected
     procedure valores;override;
  public
    { Public declarations }
  end;

var
  frmCapturar_compradores: TfrmCapturar_compradores;

implementation

uses IBModulo, reglas_de_negocios, IBData,
     explorar_compradores, seleccionar_zona_comprador;

{$R *.DFM}

procedure TfrmCapturar_compradores.valores;
begin
  dsFuente.DataSet.FieldByName('CLASIFICACION').AsInteger := -3;
  dsFuente.DataSet.FieldByName('TABULADOR').AsInteger     := -3;
  dsFuente.DataSet.FieldByName('DEPARTAMENTO').AsInteger  := -3;
end;

procedure TfrmCapturar_compradores.FormCreate(Sender: TObject);
begin
  reglas.abrir_IBTabla(TClasificaciones);
  reglas.abrir_IBTabla(TTabuladores);
  reglas.abrir_IBTabla(TDepartamentos);
  inherited;
  //fpZonaV.FoldStatus := fsCollapsed;
end;

procedure TfrmCapturar_compradores.TZonasCalcFields(DataSet: TDataSet);
begin
  inherited;
  reglas.refresh_IBQuery(qyBuscar);
  DataSet.FieldByName('DESCRIPCION').AsString := qyBuscar.FieldByName('R_DESCRIPCION').AsString; 
end;

procedure TfrmCapturar_compradores.ibNuevaZonaClick(Sender: TObject);
var
   pnt : TPoint;
begin
  inherited;
  pnt := dgZonas.ClientToScreen(Point(0,0));
  frmSeleccionar_zona_comprador := TfrmSeleccionar_zona_comprador.Create(Application);
  frmSeleccionar_zona_comprador.dsDestino.Tag     := dsFuente.DataSet.FieldByName('ID').AsInteger;
  frmSeleccionar_zona_comprador.dsDestino.DataSet := TZonas;
  frmSeleccionar_zona_comprador.coordenadas(0,pnt.x-6, width-7, pnt.y);
  frmSeleccionar_zona_comprador.ShowModal;
  frmSeleccionar_zona_comprador.Free;
  reglas.abrir_IBTabla(TZonas);
end;

procedure TfrmCapturar_compradores.ibEliminarZonaClick(Sender: TObject);
begin
  inherited;
  spDelZona.ParamByName('P_ZONA').AsInteger := dsZonas.DataSet.FieldByName('ID').AsInteger;
  spDelZona.ExecProc;
  spDelZona.Transaction.CommitRetaining;
  reglas.abrir_IBTabla(TZonas);
end;

procedure TfrmCapturar_compradores.dsZonasDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if dsZonas.DataSet <> nil then
  begin
     ibNuevaZona.Enabled    := not(dsFuente.DataSet.IsEmpty) and (dsFuente.DataSet.State = dsBrowse);
     ibEliminarZona.Enabled := not(dsZonas.DataSet.IsEmpty)
  end;
end;

procedure TfrmCapturar_compradores.tsZonasShow(Sender: TObject);
begin
  inherited;
  if TZonas.State = dsInactive then
  begin
    reglas.abrir_IBTabla(TZonas);
  end;
end;

procedure TfrmCapturar_compradores.sbRefreshClasificacionClick(
  Sender: TObject);
begin
  inherited;
  reglas.abrir_IBTabla(TClasificaciones);
end;

procedure TfrmCapturar_compradores.sbRefreshTabuladorClick(
  Sender: TObject);
begin
  inherited;
  reglas.abrir_IBTabla(TTabuladores);
end;

procedure TfrmCapturar_compradores.sbRefreshDepartamentoClick(Sender: TObject);
begin
  inherited;
  reglas.abrir_IBTabla(TDepartamentos); 
end;

end.
