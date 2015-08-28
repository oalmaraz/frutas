unit UTypeMedidas;

interface

uses
   UTipos, UdmMedidas, URecords, db;

Type
   TMedidas = class
   private
      dmMedidas : TdmMedidas;
      FDatos    : _Medidas;
      procedure SetID(valor : integer);
      function GetID : integer;
      procedure SetLINK(valor : variant);
      function GetLink : variant;
      procedure SetDESCRIPCION(valor : String20);
      function GetDESCRIPCION : String20;
      function GetDataSourcePartidas : TDataSource;
      procedure SetORDEN(valor : integer);
      function GetORDEN : integer;
   public
      constructor Create(); overload;
      destructor Destroy(); override;
      procedure refreshPartidas;
      procedure eliminar;
      function Guardar : integer;
      procedure CommitRetaining;
      procedure cargar;
   published
      property ID : integer read GetID write SetID;
      property LINK : variant read GetLINK write SetLINK;
      property DESCRIPCION : String20 read GetDESCRIPCION write SetDESCRIPCION;
      property ORDEN : integer read GetORDEN write SetORDEN;
      property DSPARTIDAS : TDataSource read GetDataSourcePartidas;
   end;

implementation

constructor TMedidas.Create();
begin
   inherited Create;
   dmMedidas := TdmMedidas.Create(nil);
end;

destructor TMedidas.Destroy();
begin
  dmMedidas.Free;
  dmMedidas := nil;
  inherited destroy;
end;

procedure TMedidas.CommitRetaining;
begin
   dmMedidas.CommitRetaining;
end;

procedure TMedidas.cargar;
begin
   dmMedidas.Cargar(FDatos);
end;

procedure TMedidas.SetORDEN(valor : integer);
begin
   FDatos.ORDEN := valor;
end;

function TMedidas.GetORDEN : integer;
begin
   Result := FDatos.ORDEN;
end;

function TMedidas.Guardar : integer;
begin
   Result := dmMedidas.Guardar(FDatos);
end;

procedure TMedidas.eliminar;
begin
   dmMedidas.eliminar;
end;

procedure TMedidas.refreshPartidas;
begin
   dmMedidas.refreshPartidas;
end;

function TMedidas.GetDataSourcePartidas : TDataSource;
begin
   Result := dmMedidas.dsMedidas;
end;

procedure TMedidas.SetID(valor : integer);
begin
   FDatos.ID := valor;
end;

function TMedidas.GetID : integer;
begin
   Result := FDatos.ID;
end;

procedure TMedidas.SetLINK(valor : variant);
begin
   FDatos.LINK := valor;
end;

function TMedidas.GetLink : variant;
begin
   Result := FDatos.LINK;
end;

procedure TMedidas.SetDESCRIPCION(valor : String20);
begin
   FDatos.DESCRIPCION := valor;
end;

function TMedidas.getDESCRIPCION : String20;
begin
   Result := FDatos.DESCRIPCION;
end;

end.
