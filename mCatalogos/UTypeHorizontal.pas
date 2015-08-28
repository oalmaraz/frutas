unit UTypeHorizontal;

interface

uses
   UdmHorizontal;

Type
   THorizontal = class
   private
      dmHorizontal : TdmHorizontal;
   public
      constructor Create(); overload;
      destructor Destroy(); override;
      {
      procedure cargarColumnas(rejilla : TJvStringGrid);
      procedure loadColumnas(rejilla : TdxTreeList);
      procedure cargarRenglones(rejilla :TJvStringGrid);
      procedure loadRenglones(rejilla : TdxTreeList);
      }
      procedure activarMaterial(pMaterial : integer);
      function columnas  : integer;
      function renglones : integer;
      function colores : boolean;
      function medida(columna : integer) : integer;
      function color(renglon : integer) : integer;
   end;

implementation

constructor THorizontal.Create();
begin
   inherited Create;
   dmHorizontal := TdmHorizontal.Create(nil);
end;

destructor THorizontal.Destroy();
begin
  dmHorizontal.Free;
  dmHorizontal := nil;
  inherited Destroy;
end;

function THorizontal.medida(columna : integer) : integer;
begin
   Result := dmHorizontal.medida(columna);
end;

function THorizontal.color(renglon : integer) : integer;
begin
   Result := dmHorizontal.color(renglon);
end;

function THorizontal.columnas  : integer;
begin
   Result := dmHorizontal.dameColumnas;
end;

function THorizontal.renglones : integer;
begin
   Result := dmHorizontal.dameRenglones;
end;

function THorizontal.colores : boolean;
begin
   Result := dmHorizontal.colores;
end;

procedure THorizontal.activarMaterial(pMaterial : integer);
begin
   dmHorizontal.refreshMedidas(pMaterial);
   if dmHorizontal.colores then
      dmHorizontal.refreshColores(pMaterial);
end;

{
procedure THorizontal.loadColumnas(rejilla : TdxTreeList);
begin
   dmHorizontal.tituloColumnas(rejilla);
end;

procedure THorizontal.cargarColumnas(rejilla : TJvStringGrid);
begin
   dmHorizontal.titulosColumnas(rejilla);
end;

procedure THorizontal.loadRenglones(rejilla : TdxTreeList);
begin
   dmHorizontal.tituloRenglones(rejilla);
end;

procedure THorizontal.cargarRenglones(rejilla :TJvStringGrid);
begin
   dmHorizontal.titulosRenglones(rejilla);
end;
 }
end.
