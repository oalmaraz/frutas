unit UTypeDocumentoNCargoAfectada;

interface

uses
   UdmDocumentoNCargoAfectada, db;

type
   TDocumentoNCargoAfectada = class
   private
      dmDetalle : TdmDocumentoNCargoAfectada;
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

constructor TDocumentoNCargoAfectada.Create();
begin
  inherited Create;
  dmDetalle := TdmDocumentoNCargoAfectada.Create(nil);
end;

destructor TDocumentoNCargoAfectada.Destroy;
begin
   dmDetalle.Free;
   dmDetalle := nil;
   inherited destroy;
end;

function TDocumentoNCargoAfectada.setDSDetalle : TDataSource;
begin
   Result := dmDetalle.dsPartidas;
end;

procedure TDocumentoNCargoAfectada.setCXC(valor : integer);
begin
   dmDetalle.detalle(valor);
end;

end.
