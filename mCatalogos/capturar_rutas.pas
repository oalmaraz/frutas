unit capturar_rutas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  capturarMDI, IBStoredProc, IBTable,  Db, IBCustomDataSet,
  IBQuery, DBCtrls, StdCtrls, Mask,    jpeg,
   ExtCtrls,
         ComCtrls,
  ImgList, Menus, Buttons,     Grids,
  DBGrids;

type
  TfrmCapturar_rutas = class(TfrmCapturarMDI)
    TCapturarID: TIntegerField;
    TCapturarNOMBRE: TIBStringField;
    TCapturarTRANSPORTISTA: TIntegerField;
    TCapturarCAPACIDAD: TFloatField;
    TCapturarCAPACIDAD_UNIDAD: TIntegerField;
    TCapturarOBSERVACIONES: TBlobField;
    deNombre: TDBEdit;
    qyTransportistas: TIBQuery;
    dsTransportistas: TDataSource;
    Label17: TLabel;
    leTransportista: TDBLookupComboBox;
    Label1: TLabel;
    Label2: TLabel;
    TUnidades: TIBTable;
    dsUnidades: TDataSource;
    Label12: TLabel;
    leUnidad: TDBLookupComboBox;
    ceCapacidad: TDBEdit;
    dmObservaciones: TDBMemo;
    Label3: TLabel;
    pcPrecios: TPageControl;
    tsClientesExtensiones: TTabSheet;
    fpUnidades: TPanel;
    ibNuevaPartida: TBitBtn;
    ibEliminarPartida: TBitBtn;
    dgExtensiones: TDBGrid;
    TCapturartransportista_nombre: TStringField;
    TCapturarunidad_descripcion: TStringField;
    ilImagenes: TImageList;
    dsExtensiones: TDataSource;
    qyExtensiones: TIBQuery;
    qyExtensionesR_ID: TIntegerField;
    qyExtensionesR_EXTENSION: TIntegerField;
    qyExtensionesR_EXTENSION_CLAVE: TIBStringField;
    qyExtensionesR_EXTENSION_NOMBRE: TIBStringField;
    qyExtensionesR_ORDEN: TIntegerField;
    spDel: TIBStoredProc;
    pmTeclas: TPopupMenu;
    NuevaPartida1: TMenuItem;
    EliminarPartida1: TMenuItem;
    sbRefreshUnidad: TSpeedButton;
    sbRefreshTransportistas: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure ibNuevoClick(Sender: TObject);
    procedure ibModificarClick(Sender: TObject);
    procedure ibNuevaPartidaClick(Sender: TObject);
    procedure dsFuenteDataChange(Sender: TObject; Field: TField);
    procedure ibEliminarPartidaClick(Sender: TObject);
    procedure NuevaPartida1Click(Sender: TObject);
    procedure EliminarPartida1Click(Sender: TObject);
    procedure sbRefreshUnidadClick(Sender: TObject);
    procedure sbRefreshTransportistasClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCapturar_rutas: TfrmCapturar_rutas;

implementation

uses explorar_rutas, IBModulo, reglas_de_negocios, seleccionar_extensiones;

{$R *.DFM}

procedure TfrmCapturar_rutas.FormCreate(Sender: TObject);
begin
  reglas.refresh_IBQuery(qyTransportistas);
  reglas.abrir_IBTabla(TUnidades);
  inherited;
end;

procedure TfrmCapturar_rutas.ibNuevoClick(Sender: TObject);
begin
  inherited;
  dsFuente.DataSet.FieldByName('CAPACIDAD').AsFloat := 0.00;
  deNombre.SetFocus;
end;

procedure TfrmCapturar_rutas.ibModificarClick(Sender: TObject);
begin
  inherited;
  deNombre.SetFocus;
end;

procedure TfrmCapturar_rutas.ibNuevaPartidaClick(Sender: TObject);
var
   pUno : TPoint;
   pDos : TPoint;
   y2   : integer;
begin
  inherited;
  pUno                                         := fpPadre.ClientToScreen(Point(0,0));
  pDos                                         := dgExtensiones.ClientToScreen(Point(0,0));
  y2                                           := pDos.y - pUno.y;
  pDos.x                                       := fpPadre.Width;
  pDos.y                                       := y2;
  frmSeleccionar_Extensiones                   := TfrmSeleccionar_Extensiones.Crear(Application, pUno, pDos, dsFuente.DataSet.FieldByName('ID').AsInteger, 2);
  frmSeleccionar_Extensiones.dsDestino.DataSet := qyExtensiones;
  frmSeleccionar_Extensiones.ShowModal;
  frmSeleccionar_Extensiones.Free;
end;

procedure TfrmCapturar_rutas.dsFuenteDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if dsFuente.DataSet <> nil then
  begin
     qyExtensiones.Close;
     qyExtensiones.ParamByName('P_ID').AsInteger := dsFuente.DataSet.FieldByName('ID').AsInteger;
     qyExtensiones.Open;
  end;
end;

procedure TfrmCapturar_rutas.ibEliminarPartidaClick(Sender: TObject);
begin
  inherited;
  spDel.ParamByName('P_ID').AsInteger := dsExtensiones.DataSet.FieldByName('R_ID').AsInteger;
  spDel.ExecProc;
  spDel.Transaction.CommitRetaining;
  reglas.refresh_IBQuery(qyExtensiones);
end;

procedure TfrmCapturar_rutas.NuevaPartida1Click(Sender: TObject);
begin
  inherited;
  if ibNuevaPartida.Enabled then
     ibNuevaPartida.Click;
end;

procedure TfrmCapturar_rutas.EliminarPartida1Click(Sender: TObject);
begin
  inherited;
  if ibEliminarPartida.Enabled then
     ibEliminarPartida.Click;
end;

procedure TfrmCapturar_rutas.sbRefreshUnidadClick(Sender: TObject);
begin
  inherited;
  reglas.abrir_IBTabla(TUnidades);
end;

procedure TfrmCapturar_rutas.sbRefreshTransportistasClick(Sender: TObject);
begin
  inherited;
  reglas.refresh_IBQuery(qyTransportistas);
end;

end.
