unit UTypeDocumentoNCreditoSAfectar;

interface

uses
   UdmDocumentoNCreditoSAfectar, db;

type
   TDocumentoNCreditoSAfectar = class
   private
      dmDetalle : TdmDocumentoNCreditoSAfectar;
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

constructor TDocumentoNCreditoSAfectar.Create();
begin
  inherited Create;
  dmDetalle := TdmDocumentoNCreditoSAfectar.Create(nil);
end;

destructor TDocumentoNCreditoSAfectar.Destroy;
begin
   dmDetalle.Free;
   dmDetalle := nil;
   inherited destroy;
end;

function TDocumentoNCreditoSAfectar.setDSDetalle : TDataSource;
begin
   Result := dmDetalle.dsPartidas;
end;

procedure TDocumentoNCreditoSAfectar.setCXC(valor : integer);
begin
   dmDetalle.detalle(valor);
end;

end.
