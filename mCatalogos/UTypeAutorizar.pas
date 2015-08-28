unit UTypeAutorizar;

interface

uses
   UdmAutorizar, Dialogs;

type
   TAutorizar = class(TObject)
   private
     dmAutorizar  : TdmAutorizar;
     PvNivel      : integer;
     PvAceptar    : boolean;
     procedure SetNivelAutorizacion(value : integer);
     procedure SetAceptar(value : boolean);
     function GetNivelAutorizacion : integer;
     function GetEmpresaNombre : String;
     function GetEmpresaAcronimo : String;
     function GetEmpresaVersion : String;
     function GetAceptar : boolean;
   public
      constructor Create();overload;
      constructor Create(pNivel : integer);overload;
      destructor Destroy; override;
      procedure ejecutarAutorizacion(pUsuario, pClave : string);
   published
     property NIVEL : integer read GetNivelAutorizacion write SetNivelAutorizacion;
     property NOMBRE : String read GetEmpresaNombre;
     property ACRONIMO : String read GetEmpresaAcronimo;
     property VERSION : String read GetEmpresaVersion;
     property RESPUESTA : boolean read GetAceptar write SetAceptar;
   end;

implementation

constructor TAutorizar.Create();
begin
   inherited Create();
   PvAceptar := false;
   dmAutorizar := TdmAutorizar.Create(nil);
end;

procedure TAutorizar.ejecutarAutorizacion(pUsuario, pClave : string);
begin
   if (pUsuario <> '') and (pClave <> '') then
   begin
      RESPUESTA := dmAutorizar.ejecutarAutorizacion(pUsuario, pClave, PvNivel);
   end
   else
      if pUsuario = '' then
         ShowMessage('Falta capturar usuario')
      else
         ShowMessage('Falta capturar clave');

end;

constructor TAutorizar.Create(pNivel : integer);
begin
   Create();
   nivel := pNivel;
end;

destructor TAutorizar.Destroy;
begin
  dmAutorizar.Free;
  dmAutorizar := nil;
  inherited destroy;
end;

function TAutorizar.GetAceptar : boolean;
begin
   Result := PvAceptar;
end;

procedure TAutorizar.SetAceptar(value : boolean);
begin
   PvAceptar := value;
end;

function TAutorizar.GetEmpresaNombre : String;
begin
   Result := dmAutorizar.GetEmpresaNombre;
end;

function TAutorizar.GetEmpresaAcronimo : String;
begin
   Result :=  dmAutorizar.GetEmpresaAcronimo;
end;

function TAutorizar.GetEmpresaVersion : String;
begin
   Result :=  dmAutorizar.GetEmpresaVersion;
end;

procedure TAutorizar.SetNivelAutorizacion(value : integer);
begin
   PvNivel := value;
end;

function TAutorizar.GetNivelAutorizacion : integer;
begin
   Result := PvNivel;
end;

end.
