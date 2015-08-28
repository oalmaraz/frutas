unit UTypeDetalleDeLaCompra;

interface

uses
   UdmDetalleDeLaCompra, db;

type
   TDetalleDeLaCompra = class(TObject)
   private
      dmDetalle : TdmDetalleDeLaCompra;
      function GetDataSourceDetalle : TDataSource;
   public
     constructor Create();
     destructor Destroy; override;
     procedure refreshDetalle(p_id : integer);
   published
     property DSDETALLE : TDataSource read GetDataSourceDetalle;
   end;

implementation

constructor TDetalleDeLaCompra.Create();
begin
  inherited Create;
  dmDetalle := TdmDetalleDeLaCompra.Create(nil);
end;

destructor TDetalleDeLaCompra.Destroy; 
begin
  dmDetalle.Free;
  dmDetalle := nil;
  inherited destroy;
end;

procedure TDetalleDeLaCompra.refreshDetalle(p_id : integer);
begin
   dmDetalle.refreshDetalle(p_id);
end;

function TDetalleDeLaCompra.GetDataSourceDetalle : TDataSource;
begin
   Result := dmDetalle.dsDetalle;
end;

end.
