unit UTypeNCreditoAlta;

interface

uses
   UTipos, URecords, UdmNCreditoAlta, db;

type
   TNotasDeCredito = class(TObject)
   private
      dmNCreditoAlta : TdmNCreditoAlta;
      FDatos : _NotasDeCredito;
      procedure SetID(valor : integer);
      procedure SetCLAVE(valor : String20);
      procedure SetFECHA_ALTA(valor : TDatetime);
      procedure SetFECHA_CANCELACION(valor : TDatetime);
      procedure SetCLIENTE(valor : integer);
      procedure SetEXTENSION(valor : variant);
      procedure SetCUENTA_POR_COBRAR(valor : variant);
      procedure SetOBSERVACIONES(valor : memo);
      procedure SetALMACEN(valor : variant);
      procedure SetIVA_PORC(valor : double);
      procedure SetIEPS_PORC(valor : double);
      procedure SetIMPUESTO1_PORC(valor : double);
      procedure SetIMPUESTO2_PORC(valor : double);
      procedure SetSUBTOTAL(valor : double);
      procedure SetIVA(valor : double);
      procedure SetIEPS(valor : double);
      procedure SetIMPUESTO1(valor : double);
      procedure SetIMPUESTO2(valor : double);
      procedure SetTOTAL(valor : double);
      procedure SetMONEDA(valor : integer);
      procedure SetUSUARIO(valor : integer);
      procedure SetESTATUS(valor : String20);
      procedure SetSERIE_NC(valor : String10);
      procedure SetCONSECUTIVO(valor : integer);
      procedure SetNC(valor : variant);
      procedure setID_REFERENCIA(valor : variant);
      procedure setTABLA_REFERENCIA(valor : String50);
      function getID : integer;
      function getCLAVE : String20;
      function getFECHA_ALTA : TDatetime;
      function getFECHA_CANCELACION : TDatetime;
      function getCLIENTE : integer;
      function getEXTENSION : variant;
      function getCUENTA_POR_COBRAR : variant;
      function getOBSERVACIONES : memo;
      function getALMACEN : variant;
      function getIVA_PORC : double;
      function getIEPS_PORC : double;
      function getIMPUESTO1_PORC : double;
      function getIMPUESTO2_PORC : double;
      function getSUBTOTAL : double;
      function getIVA : double;
      function getIEPS : double;
      function getIMPUESTO1 : double;
      function getIMPUESTO2 : double;
      function getTOTAL : double;
      function getMONEDA : integer;
      function getUSUARIO : integer;
      function getESTATUS : String20;
      function getSERIE_NC : String10;
      function getCONSECUTIVO : integer;
      function getNC : variant;
      function getDSMonedas : TDataSource;
      function getDSAlmacenes : TDataSource;
      function getDSDocumentos : TDataSource;
      function getID_REFERENCIA : variant;
      function getTABLA_REFERENCIA : String50;
      function getDSEstatus : TDataSource;
      function getDetalle : TDataSource;
      function getGRANTOTAL : double;
   public
     FDDet : _NCreditoDet;
     constructor Create();overload;
     constructor Create(pId : integer);overload;
     destructor Destroy; override;
     function Guardar : integer;
     procedure Cargar(v_id: Integer);
     procedure CargarDetalle(v_id: Integer);
     procedure cargarEstatusEjecucion;
     function ejecucionEstatus(id : integer) : boolean;
     procedure eliminar;
     procedure activarEstatus;

     procedure refreshDocumentos(id : integer);
     procedure refreshAlmacenes;
     procedure refreshMonedas;
     procedure AddPartidaFactura(id : integer; valor : double);
     procedure AddPartidaPedido(id : integer; valor : double);
     procedure ActPartida;
     procedure DelPartida(valor : integer);
     function getDetVacio : boolean;
   published
      property ID : integer read GetID write SetID;
      property CLAVE : String20 read GetCLAVE write SetCLAVE;
      property FECHA_ALTA : TDatetime read GetFECHA_ALTA write SetFECHA_ALTA;
      property FECHA_CANCELACION : TDatetime read GetFECHA_CANCELACION write SetFECHA_CANCELACION;
      property CLIENTE : integer read GetCLIENTE write SetCLIENTE;
      property EXTENSION : variant read GetEXTENSION write SetEXTENSION;
      property CUENTA_POR_COBRAR : variant read getCUENTA_POR_COBRAR write setCUENTA_POR_COBRAR;
      property OBSERVACIONES : memo read getOBSERVACIONES write setOBSERVACIONES;
      property ALMACEN : variant read getALMACEN write setALMACEN;
      property IVA_PORC : double read getIVA_PORC write setIVA_PORC;
      property IEPS_PORC : double read getIEPS_PORC write setIEPS_PORC;
      property IMPUESTO1_PORC : double read getIMPUESTO1_PORC write setIMPUESTO1_PORC;
      property IMPUESTO2_PORC : double read getIMPUESTO2_PORC write setIMPUESTO2_PORC;
      property SUBTOTAL : double read getSUBTOTAL write setSUBTOTAL;
      property IVA : double read getIVA write setIVA;
      property IEPS : double read getIEPS write setIEPS;
      property IMPUESTO1 : double read getIMPUESTO1 write setIMPUESTO1;
      property IMPUESTO2 : double read getIMPUESTO2 write setIMPUESTO2;
      property TOTAL : double read getTOTAL write setTOTAL;
      property MONEDA : integer read getMONEDA write setMONEDA;
      property USUARIO : integer read getUSUARIO write setUSUARIO;
      property ESTATUS : String20 read getESTATUS write setESTATUS;
      property SERIE_NC : String10 read getSERIE_NC write setSERIE_NC;
      property CONSECUTIVO : integer read getCONSECUTIVO write setCONSECUTIVO;
      property NC : variant read getNC write setNC;
      property DSDetalle : TDataSource  read getDetalle;
      property DSMonedas : TDataSource  read getDSMonedas;
      property DSAlmacenes : TDataSource read getDSAlmacenes;
      property DSDocumentos : TDataSource read getDSDocumentos;
      property ID_REFERENCIA : variant read getID_REFERENCIA write setID_REFERENCIA;
      property TABLA_REFERENCIA : String50 read getTABLA_REFERENCIA write setTABLA_REFERENCIA;
      property DSEstatus : TDataSource read getDSEstatus;
      property GRANTOTAL : double read getGRANTOTAL;
      property DETVACIO : boolean read getDetVacio;
   end;

implementation

constructor TNotasDeCredito.Create();
begin
  inherited Create;
  dmNCreditoAlta := TdmNCreditoAlta.Create(nil);
  dmNCreditoAlta.refreshNotasDeCredito;
  dmNCreditoAlta.refreshMonedas;
  dmNCreditoAlta.refreshAlmacenes;
end;

constructor TNotasDeCredito.Create(pId : integer);
begin
   Inherited Create();
   Cargar(pId);
   CargarDetalle(pId);
end;

destructor TNotasDeCredito.Destroy;
begin
  dmNCreditoAlta.Free;
  dmNCreditoAlta := nil;
  inherited destroy;
end;

procedure TNotasDeCredito.ActPartida;
begin
   dmNCreditoAlta.ActPartida(FDDet);
   dmNCreditoAlta.Cargar(FDatos.ID, FDatos);
end;

function TNotasDeCredito.getDetVacio : boolean;
begin
   Result := dmNCreditoAlta.dsNotasDeCreditoDet.DataSet.IsEmpty;
end;

procedure TNotasDeCredito.DelPartida(valor : integer);
begin
   dmNCreditoAlta.DelPartida(valor);
   dmNCreditoAlta.Cargar(FDatos.ID, FDatos);
end;

function TNotasDeCredito.getGRANTOTAL : double;
begin
   Result := FDatos.GRANTOTAL;
end;

procedure TNotasDeCredito.AddPartidaFactura(id : integer; valor : double);
begin
   dmNCreditoAlta.AddPartidaFactura(FDatos.ID, id, valor);
   dmNCreditoAlta.Cargar(FDatos.ID, FDatos);
end;

procedure TNotasDeCredito.AddPartidaPedido(id : integer; valor : double);
begin
   dmNCreditoAlta.AddPartidaPedido(FDatos.ID, id, valor);
   dmNCreditoAlta.Cargar(FDatos.ID, FDatos);
end;

function TNotasDeCredito.getDSEstatus : TDataSource;
begin
   Result := dmNCreditoAlta.dsEstatusProcesosDetalle;
end;

procedure TNotasDeCredito.setID_REFERENCIA(valor : variant);
begin
   FDatos.ID_REFERENCIA := valor;
end;

procedure TNotasDeCredito.setTABLA_REFERENCIA(valor : String50);
begin
   FDatos.TABLA_REFERENCIA := valor;
end;

function TNotasDeCredito.getID_REFERENCIA : variant;
begin
   Result := FDatos.ID_REFERENCIA;
end;

function TNotasDeCredito.getTABLA_REFERENCIA : String50;
begin
   Result := FDatos.TABLA_REFERENCIA;
end;

function TNotasDeCredito.getDSDocumentos : TDataSource;
begin
   Result := dmNCreditoAlta.dsCXCDocumentos;
end;

function TNotasDeCredito.getDSAlmacenes : TDataSource;
begin
   Result := dmNCreditoAlta.dsAlmacenes;
end;

function TNotasDeCredito.getDetalle : TDataSource;
begin
   Result := dmNCreditoAlta.dsNotasDeCreditoDet;
end;

function TNotasDeCredito.getDSMonedas : TDataSource;
begin
   Result := dmNCreditoAlta.dsMonedas;
end;

procedure TNotasDeCredito.cargarEstatusEjecucion;
begin
   dmNCreditoAlta.cargarEstatusEjecucion;
end;

function TNotasDeCredito.ejecucionEstatus(id : integer) : boolean;
begin
   Result := dmNCreditoAlta.ejecucionEstatus(id);
end;

procedure TNotasDeCredito.eliminar;
begin
   dmNCreditoAlta.eliminar(ID);
end;

procedure TNotasDeCredito.activarEstatus;
begin
  dmNCreditoAlta.activarEstatus(13, ESTATUS);
end;

procedure TNotasDeCredito.Cargar(v_id: Integer);
begin
   dmNCreditoAlta.Cargar(v_id, FDatos);
end;

procedure TNotasDeCredito.CargarDetalle(v_id: Integer);
begin
//   dmNCredito.Cargar(v_id, FDatos);
end;

procedure TNotasDeCredito.refreshDocumentos(id : integer);
begin
   dmNCreditoAlta.refreshDocumentos(id);
end;

procedure TNotasDeCredito.refreshAlmacenes;
begin
   dmNCreditoAlta.refreshAlmacenes;
end;

procedure TNotasDeCredito.refreshMonedas;
begin
   dmNCreditoAlta.refreshMonedas;
end;

function TNotasDeCredito.Guardar : integer;
begin
   Result := dmNCreditoAlta.Guardar(FDatos);
end;

function TNotasDeCredito.getID : integer;
begin
   Result := FDatos.ID;
end;

function TNotasDeCredito.getCLAVE : String20;
begin
   Result := FDatos.CLAVE;
end;

function TNotasDeCredito.getFECHA_ALTA : TDatetime;
begin
   Result := FDatos.FECHA_ALTA;
end;

function TNotasDeCredito.getFECHA_CANCELACION : TDatetime;
begin
   Result := FDatos.FECHA_CANCELACION;
end;

function TNotasDeCredito.getCLIENTE : integer;
begin
   Result := FDatos.CLIENTE;
end;

function TNotasDeCredito.getEXTENSION : variant;
begin
   Result := FDatos.EXTENSION;
end;

function TNotasDeCredito.getCUENTA_POR_COBRAR : variant;
begin
   Result := FDatos.CUENTA_POR_COBRAR;
end;

function TNotasDeCredito.getOBSERVACIONES : memo;
begin
   Result := FDatos.OBSERVACIONES;
end;

function TNotasDeCredito.getALMACEN : variant;
begin
   Result := FDatos.ALMACEN;
end;

function TNotasDeCredito.getIVA_PORC : double;
begin
   Result := FDatos.IVA_PORC;
end;

function TNotasDeCredito.getIEPS_PORC : double;
begin
   Result := FDatos.IEPS_PORC;
end;

function TNotasDeCredito.getIMPUESTO1_PORC : double;
begin
   Result := FDatos.IMPUESTO1_PORC;
end;

function TNotasDeCredito.getIMPUESTO2_PORC : double;
begin
   Result := FDatos.IMPUESTO2_PORC;
end;

function TNotasDeCredito.getSUBTOTAL : double;
begin
   Result := FDatos.SUBTOTAL;
end;

function TNotasDeCredito.getIVA : double;
begin
   Result := FDatos.IVA;
end;

function TNotasDeCredito.getIEPS : double;
begin
   Result := FDatos.IEPS;
end;

function TNotasDeCredito.getIMPUESTO1 : double;
begin
   Result := FDatos.IMPUESTO1;
end;

function TNotasDeCredito.getIMPUESTO2 : double;
begin
   Result := FDatos.IMPUESTO2;
end;

function TNotasDeCredito.getTOTAL : double;
begin
   Result := FDatos.TOTAL;
end;

function TNotasDeCredito.getMONEDA : integer;
begin
   Result := FDatos.MONEDA;
end;

function TNotasDeCredito.getUSUARIO : integer;
begin
   Result := FDatos.USUARIO;
end;

function TNotasDeCredito.getESTATUS : String20;
begin
   Result := FDatos.ESTATUS;
end;

function TNotasDeCredito.getSERIE_NC : String10;
begin
   Result := FDatos.SERIE_NC;
end;

function TNotasDeCredito.getCONSECUTIVO : integer;
begin
   Result := FDatos.CONSECUTIVO;
end;

function TNotasDeCredito.getNC : variant;
begin
   Result := FDatos.NC;
end;

procedure TNotasDeCredito.SetID(valor : integer);
begin
   FDatos.ID := valor;
end;

procedure TNotasDeCredito.SetCLAVE(valor : String20);
begin
   FDatos.CLAVE := valor;
end;

procedure TNotasDeCredito.SetFECHA_ALTA(valor : TDatetime);
begin
   FDatos.FECHA_ALTA := valor;
end;

procedure TNotasDeCredito.SetFECHA_CANCELACION(valor : TDatetime);
begin
   FDatos.FECHA_CANCELACION := valor;
end;

procedure TNotasDeCredito.SetCLIENTE(valor : integer);
begin
   FDatos.CLIENTE := valor;
end;

procedure TNotasDeCredito.SetEXTENSION(valor : variant);
begin
   FDatos.EXTENSION := valor;
end;

procedure TNotasDeCredito.SetCUENTA_POR_COBRAR(valor : variant);
begin
   FDatos.CUENTA_POR_COBRAR := valor;
end;

procedure TNotasDeCredito.SetOBSERVACIONES(valor : memo);
begin
   FDatos.OBSERVACIONES := valor;
end;

procedure TNotasDeCredito.SetALMACEN(valor : variant);
begin
   FDatos.ALMACEN := valor;
end;

procedure TNotasDeCredito.SetIVA_PORC(valor : double);
begin
   FDatos.IVA_PORC := valor;
end;

procedure TNotasDeCredito.SetIEPS_PORC(valor : double);
begin
   FDatos.IEPS_PORC := valor;
end;

procedure TNotasDeCredito.SetIMPUESTO1_PORC(valor : double);
begin
   FDatos.IMPUESTO1_PORC := valor;
end;

procedure TNotasDeCredito.SetIMPUESTO2_PORC(valor : double);
begin
   FDatos.IMPUESTO2_PORC := valor;
end;

procedure TNotasDeCredito.SetSUBTOTAL(valor : double);
begin
   FDatos.SUBTOTAL := valor;
end;

procedure TNotasDeCredito.SetIVA(valor : double);
begin
   FDatos.IVA := valor;
end;

procedure TNotasDeCredito.SetIEPS(valor : double);
begin
   FDatos.IEPS := valor;
end;

procedure TNotasDeCredito.SetIMPUESTO1(valor : double);
begin
   FDatos.IMPUESTO1 := valor;
end;

procedure TNotasDeCredito.SetIMPUESTO2(valor : double);
begin
   FDatos.IMPUESTO2 := valor;
end;

procedure TNotasDeCredito.SetTOTAL(valor : double);
begin
   FDatos.TOTAL := valor;
end;

procedure TNotasDeCredito.SetMONEDA(valor : integer);
begin
   FDatos.MONEDA := valor;
end;

procedure TNotasDeCredito.SetUSUARIO(valor : integer);
begin
   FDatos.USUARIO := valor;
end;

procedure TNotasDeCredito.SetESTATUS(valor : String20);
begin
   FDatos.ESTATUS := valor;
end;

procedure TNotasDeCredito.SetSERIE_NC(valor : String10);
begin
   FDatos.SERIE_NC := valor;
end;

procedure TNotasDeCredito.SetCONSECUTIVO(valor : integer);
begin
   FDatos.CONSECUTIVO := valor;
end;

procedure TNotasDeCredito.SetNC(valor : variant);
begin
   FDatos.NC := valor;
end;


end.
