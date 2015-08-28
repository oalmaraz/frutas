unit UTypeLineas;

interface

uses
   UTipos, UdmLineas, URecords, db;

type
   TLineas = class
   private
      dmLineas : TdmLineas;
      FDatos   : _Lineas;
      procedure SetID(value : integer);
      procedure SetLINK(value : variant);
      procedure SetDESCRIPCION(value : String100);
      procedure SetESTATUS(value : String20);
      procedure SetORDEN(value : integer);
      procedure SetMEDIDA(value : variant);
      procedure SetGCOLORES(value : variant);
      procedure setPorcentaje(valor : double);

      function GetGCOLORES : variant;
      function GetORDEN : integer;
      function GetMEDIDA : variant;
      function GetID : integer;
      function GetLINK : variant;
      function GetDESCRIPCION : String100;
      function GetESTATUS : String20;
      function GetDataSourcePartidas : TDataSource;
      function GetDataSourceMedidas : TDataSource;
      function GetDataSourceHMedidas : TDataSource;
      function GetDataSourceGColores : TDataSource;
      function GetDataSourceHColores : TDataSource;
      function getPorcentaje : double;
   public
      constructor Create(); overload;
      destructor Destroy(); override;
      procedure cargar;
      function Guardar : integer;
      procedure eliminar;
      procedure CommitRetaining;
      procedure refreshPartidas;
      procedure refreshMedidas;
      procedure refreshGColores;
      function medidas : boolean;
      function colores : boolean;
   published
      property ID          : integer read GetID write SetID;
      property LINK        : variant read GetLINK write SetLINK;
      property DESCRIPCION : String100 read GetDESCRIPCION write SetDESCRIPCION;
      property ESTATUS     : String20 read GetESTATUS write SetESTATUS;
      property ORDEN       : integer read GetORDEN write SetORDEN;
      property PORCENTAJE  : Double read getPorcentaje write setPorcentaje;
      property MEDIDA      : variant read GetMEDIDA write SetMEDIDA;
      property GCOLORES    : variant read GetGCOLORES write SetGCOLORES;
      property DSPARTIDAS  : TDataSource read GetDataSourcePartidas;
      property DSMEDIDAS   : TDataSource read GetDataSourceMedidas;
      property DSHMEDIDAS  : TDataSource read GetDataSourceHMedidas;
      property DSGCOLORES  : TDataSource read GetDataSourceGColores;
      property DSHCOLORES  : TDataSource read GetDataSourceHColores;
   end;

implementation

constructor TLineas.Create();
begin
   inherited Create;
   dmLineas := TdmLineas.Create(nil);
end;

destructor TLineas.Destroy();
begin
  dmLineas.Free;
  dmLineas := nil;
  inherited destroy;
end;

procedure TLineas.setPorcentaje(valor : double);
begin
   FDatos.PORCENTAJE := valor;
end;

function TLineas.getPorcentaje : double;
begin
   result := FDatos.PORCENTAJE;
end;

function TLineas.colores : boolean;
begin
   Result := dmLineas.colores;
end;

function TLineas.medidas : boolean;
begin
   Result := dmLineas.medidas;
end;

procedure TLineas.refreshMedidas;
begin
   dmLineas.refreshMedidas;
end;

procedure TLineas.refreshGColores;
begin
   dmLineas.refreshGrupoColores;
end;

function TLineas.GetDataSourceGColores : TDataSource;
begin
   Result := dmLineas.dsGrupoColores;
end;

function TLineas.GetDataSourceMedidas : TDataSource;
begin
   Result := dmLineas.dsRaizMedidas;
end;

function TLineas.GetDataSourceHColores : TDataSource;
begin
   result := dmLineas.dsHijoColores;
end;

function TLineas.GetDataSourceHMedidas : TDataSource;
begin
   Result := dmLineas.dsHijoMedidas;
end;

procedure TLineas.cargar;
begin
   dmLineas.Cargar(FDatos);
end;

function TLineas.Guardar : integer;
begin
   Result := dmLineas.Guardar(FDatos);
end;

procedure TLineas.eliminar;
begin
   dmLineas.eliminar;
end;

procedure TLineas.CommitRetaining;
begin
   dmLineas.CommitRetaining;
end;

function TLineas.GetDataSourcePartidas : TDataSource;
begin
   Result := dmLineas.dsLineas;
end;

procedure TLineas.refreshPartidas;
begin
   dmLineas.refreshPartidas;
end;

procedure TLineas.SetGCOLORES(value : variant);
begin
   FDatos.GRUPO_COLORES := value;
end;

function TLineas.GetGCOLORES : variant;
begin
   Result := FDatos.GRUPO_COLORES;
end;

procedure TLineas.SetORDEN(value : integer);
begin
   FDatos.ORDEN := value;
end;

procedure TLineas.SetMEDIDA(value : variant);
begin
   FDatos.MEDIDA := value;
end;

function TLineas.GetORDEN : integer;
begin
   Result := FDatos.ORDEN;
end;

function TLineas.GetMEDIDA : variant;
begin
   Result := FDatos.MEDIDA;
end;

procedure TLineas.SetID(value : integer);
begin
   FDatos.ID := value;
end;

procedure TLineas.SetLINK(value : variant);
begin
   FDatos.LINK := value;
end;

procedure TLineas.SetDESCRIPCION(value : String100);
begin
   FDatos.DESCRIPCION := value;
end;

procedure TLineas.SetESTATUS(value : String20);
begin
   FDatos.ESTATUS := value;
end;

function TLineas.GetID : integer;
begin
   Result := FDatos.ID;
end;

function TLineas.GetLINK : variant;
begin
   Result := FDatos.LINK;
end;

function TLineas.GetDESCRIPCION : String100;
begin
   Result := FDatos.DESCRIPCION;
end;

function TLineas.GetESTATUS : String20;
begin
   Result := FDatos.ESTATUS;
end;

end.
