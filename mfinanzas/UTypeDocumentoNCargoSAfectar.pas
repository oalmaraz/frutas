unit UTypeDocumentoNCargoSAfectar;

interface

uses
   UdmDocumentoNCargoSAfectar, db;

type
   TDocumentoNCargoSAfectar = class
   private
      dmDetalle : TdmDocumentoNCargoSAfectar;
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

constructor TDocumentoNCargoSAfectar.Create();
begin
  inherited Create;
  dmDetalle := TdmDocumentoNCargoSAfectar.Create(nil);
end;

destructor TDocumentoNCargoSAfectar.Destroy;
begin
   dmDetalle.Free;
   dmDetalle := nil;
   inherited destroy;
end;

function TDocumentoNCargoSAfectar.setDSDetalle : TDataSource;
begin
   Result := dmDetalle.dsPartidas;
end;

procedure TDocumentoNCargoSAfectar.setCXC(valor : integer);
begin
   dmDetalle.detalle(valor);
end;

end.
