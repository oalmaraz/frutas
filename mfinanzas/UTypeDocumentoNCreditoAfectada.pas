unit UTypeDocumentoNCreditoAfectada;

interface

uses
   UdmDocumentoNCreditoAfectada, db;

type
   TDocumentoNCreditoAfectada = class
   private
      dmDetalle : TdmDocumentoNCreditoAfectada;
      procedure setCXC(valor : integer);
      function setDSDetalle : TDataSource;
   public
     constructor Create();overload;
     destructor Destroy; override;
   published
     property CXC : integer write setCXC;
     property dsDetalle : TDataSource read setDSDetalle;
   end;

implementation

constructor TDocumentoNCreditoAfectada.Create();
begin
  inherited Create;
  dmDetalle := TdmDocumentoNCreditoAfectada.Create(nil);
end;

destructor TDocumentoNCreditoAfectada.Destroy;
begin
   dmDetalle.Free;
   dmDetalle := nil;
   inherited destroy;
end;

function TDocumentoNCreditoAfectada.setDSDetalle : TDataSource;
begin
   Result := dmDetalle.dsPartidas;
end;

procedure TDocumentoNCreditoAfectada.setCXC(valor : integer);
begin
   dmDetalle.detalle(valor);
end;

end.
