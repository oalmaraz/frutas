unit UTypeAltaRapidaMateriales;

interface

uses
   UTipos, URecords, UdmAltaRapidaMateriales, db;

type
   TAltaRapidaMateriales = class(TObject)
   private
      dmAltaRapidaMateriales : TdmAltaRapidaMateriales;
      FDatos                 : _MaterialesAltaRapida;
      procedure SetCLAVE(valor : String20);
      procedure SetDESCRIPCION(valor : String100);
      procedure SetIVA(valor : double);
      procedure SetNUM_ETIQUETAS(valor : integer);
      procedure SetACTIVO_FIJO(valor : String2);
      procedure SetCODIGO_BARRAS(valor : String20);
      procedure SetUNIDAD_BASE(valor : variant);
      procedure SetCONSOLIDADO(valor : String2);
      procedure SetSERIE(valor : String2);
      procedure SetLOTE(valor : String2);
      procedure setLINEA(valor : integer);
      function getLINEA : integer;
      function getCLAVE         : String20;
      function getDESCRIPCION   : String100;
      function getIVA           : double;
      function getNUM_ETIQUETAS : integer;
      function getACTIVO_FIJO   : String2;
      function getCODIGO_BARRAS : String20;
      function getUNIDAD_BASE   : variant;
      function getCONSOLIDADO   : String2;
      function getSERIE         : String2;
      function getLOTE          : String2;
      function getDataSourceUnidades : TDataSource;
   public
     constructor Create();
     destructor Destroy; override;
     procedure refreshUnidades;
     function dameIVA : double;
     function Guardar : integer;
     function Codigo(valor : integer) : string; overload;
     procedure Codigo(subclase : integer; valor : string); overload;
   published
      property CLAVE         : String20 read GetCLAVE write SetCLAVE;
      property DESCRIPCION   : String100 read GetDESCRIPCION write SetDESCRIPCION;
      property IVA           : double read GetIVA write SetIVA;
      property NUM_ETIQUETAS : integer read GetNUM_ETIQUETAS write SetNUM_ETIQUETAS;
      property ACTIVO_FIJO   : String2 read GetACTIVO_FIJO write SetACTIVO_FIJO;
      property CODIGO_BARRAS : String20 read GetCODIGO_BARRAS write SetCODIGO_BARRAS;
      property UNIDAD_BASE   : variant read GetUNIDAD_BASE write SetUNIDAD_BASE;
      property CONSOLIDADO   : String2 read GetCONSOLIDADO write SetCONSOLIDADO;
      property SERIE         : String2 read GetSERIE write SetSERIE;
      property LOTE          : String2 read GetLOTE write SetLOTE;
      property DSUNIDADES    : TDataSource read GetDataSourceUnidades;
      property LINEA         : integer read getLINEA write setLINEA;
   end;

implementation

constructor TAltaRapidaMateriales.Create();
begin
  inherited Create;
  dmAltaRapidaMateriales := TdmAltaRapidaMateriales.Create(nil);
end;

destructor TAltaRapidaMateriales.Destroy;
begin
  dmAltaRapidaMateriales.Free;
  dmAltaRapidaMateriales := nil;
  inherited destroy;
end;

procedure TAltaRapidaMateriales.setLINEA(valor : integer);
begin
   FDatos.LINEA := valor;
end;

function TAltaRapidaMateriales.getLINEA : integer;
begin
   Result := FDatos.LINEA;
end;

function TAltaRapidaMateriales.Codigo(valor : integer) : string;
begin
   Result := dmAltaRapidaMateriales.Codigo(valor);
end;

procedure TAltaRapidaMateriales.Codigo(subclase : integer; valor : string);
begin
   dmAltaRapidaMateriales.Codigo(subclase, valor);
end;

function TAltaRapidaMateriales.Guardar : integer;
begin
   Result := dmAltaRapidaMateriales.Guardar(FDatos);
end;

function TAltaRapidaMateriales.dameIVA : double;
begin
   Result := dmAltaRapidaMateriales.getIVA;
end;

procedure TAltaRapidaMateriales.refreshUnidades;
begin
   dmAltaRapidaMateriales.refreshUnidades;
end;

function TAltaRapidaMateriales.getDataSourceUnidades : TDataSource;
begin
   Result :=  dmAltaRapidaMateriales.dsUnidades;
end;

procedure TAltaRapidaMateriales.SetCLAVE(valor : String20);
begin
   FDatos.CLAVE := valor;
end;

procedure TAltaRapidaMateriales.SetDESCRIPCION(valor : String100);
begin
   FDatos.DESCRIPCION := valor;
end;

procedure TAltaRapidaMateriales.SetIVA(valor : double);
begin
   FDatos.IVA := valor;
end;

procedure TAltaRapidaMateriales.SetNUM_ETIQUETAS(valor : integer);
begin
   FDatos.NUM_ETIQUETAS := valor;
end;

procedure TAltaRapidaMateriales.SetACTIVO_FIJO(valor : String2);
begin
  FDatos.ACTIVO_FIJO := valor;
end;

procedure TAltaRapidaMateriales.SetCODIGO_BARRAS(valor : String20);
begin
   FDatos.CODIGO_BARRAS := valor;
end;

procedure TAltaRapidaMateriales.SetUNIDAD_BASE(valor : variant);
begin
   FDatos.UNIDAD_BASE := valor;
end;

procedure TAltaRapidaMateriales.SetCONSOLIDADO(valor : String2);
begin
   FDatos.CONSOLIDADO := valor;
end;

procedure TAltaRapidaMateriales.SetSERIE(valor : String2);
begin
   FDatos.SERIE := valor;
end;

procedure TAltaRapidaMateriales.SetLOTE(valor : String2);
begin
   FDatos.LOTE := valor;
end;

function TAltaRapidaMateriales.getCLAVE : String20;
begin
   Result := FDatos.CLAVE;
end;

function TAltaRapidaMateriales.getDESCRIPCION : String100;
begin
   Result := FDatos.DESCRIPCION;
end;

function TAltaRapidaMateriales.getIVA : double;
begin
   Result := FDatos.IVA;
end;

function TAltaRapidaMateriales.getNUM_ETIQUETAS : integer;
begin
   Result := FDatos.NUM_ETIQUETAS;
end;

function TAltaRapidaMateriales.getACTIVO_FIJO : String2;
begin
   Result := FDatos.ACTIVO_FIJO;
end;

function TAltaRapidaMateriales.getCODIGO_BARRAS : String20;
begin
   Result := FDatos.CODIGO_BARRAS;
end;

function TAltaRapidaMateriales.getUNIDAD_BASE : variant;
begin
   Result := FDatos.UNIDAD_BASE;
end;

function TAltaRapidaMateriales.getCONSOLIDADO : String2;
begin
   Result := FDatos.CONSOLIDADO;
end;

function TAltaRapidaMateriales.getSERIE : String2;
begin
   Result := FDatos.SERIE;
end;

function TAltaRapidaMateriales.getLOTE : String2;
begin
   Result := FDatos.LOTE;
end;

end.
