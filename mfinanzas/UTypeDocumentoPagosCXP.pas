unit UTypeDocumentoPagosCXP;

interface

uses
   UdmDocumentoPagosCXP, db;

type
   TDocumentoPagosCXP = class
   private
      dmDocumentoPagos : TdmDocumentoPagosCXP;
      procedure setCXP(valor : integer);
      function setDSDetalle : TDataSource;
   public
     constructor Create();overload;
     destructor Destroy; override;
   published
     property CXP : integer write setCXP;
     property dsDetalle : TDataSource read setDSDetalle;
   end;

implementation

constructor TDocumentoPagosCXP.Create();
begin
  inherited Create;
  dmDocumentoPagos := TdmDocumentoPagosCXP.Create(nil);
end;

destructor TDocumentoPagosCXP.Destroy;
begin
   dmDocumentoPagos.Free;
   dmDocumentoPagos := nil;
   inherited destroy;
end;

procedure TDocumentoPagosCXP.setCXP(valor : integer);
begin
   dmDocumentoPagos.detalle(valor);
end;

function TDocumentoPagosCXP.setDSDetalle : TDataSource;
begin
   Result := dmDocumentoPagos.dsPartidas;
end;

end.
