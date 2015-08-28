unit UdmAutorizar;

interface

uses
  UTipos, IBModulo, Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   Db, IBCustomDataSet, IBTable;

type
  TdmAutorizar = class(TDataModule)
    dsPreferencias: TDataSource;
    TIBXPreferencias: TIBTable;
    TIBXPreferenciasID: TIntegerField;
    TIBXPreferenciasLICENCIAS: TIntegerField;
    TIBXPreferenciasSERVER_ACTIVO: TIBStringField;
    TIBXPreferenciasAUTORUN: TIBStringField;
    TIBXPreferenciasOCULTAR: TIBStringField;
    TIBXPreferenciasVERSION: TIBStringField;
    TIBXPreferenciasEMPRESA: TIBStringField;
    TIBXPreferenciasNOMBRE: TIBStringField;
    TIBXPreferenciasCREADO: TDateTimeField;
    TIBXPreferenciasACTUALIZADO: TDateTimeField;
    TIBXPreferenciasHECHO_POR: TIBStringField;
    TIBXPreferenciasACRONIMO: TIBStringField;
    TIBXPreferenciasFECHA: TDateTimeField;
    TIBXUsuario: TIBTable;
    TIBXSujetosUsuario: TIBTable;
    TIBXUsuarioID: TIntegerField;
    TIBXUsuarioSUJETO: TIntegerField;
    TIBXUsuarioUSUARIO: TIBStringField;
    TIBXUsuarioBAJA: TIBStringField;
    TIBXUsuarioNIVEL: TIntegerField;
    dsUsuarios: TDataSource;
    dsSujetosUsuarios: TDataSource;
    TIBXSujetosUsuarioID: TIntegerField;
    TIBXSujetosUsuarioCLAVE: TIBStringField;
    TIBXSujetosUsuarioNOMBRE: TIBStringField;
    TIBXSujetosUsuarioRAZON_SOCIAL: TIBStringField;
    TIBXSujetosUsuarioRFC: TIBStringField;
    TIBXSujetosUsuarioCURP: TIBStringField;
    TIBXSujetosUsuarioDOMICILIO: TIntegerField;
    TIBXSujetosUsuarioTELEFONOS: TIntegerField;
    TIBXSujetosUsuarioCONTACTOS: TIntegerField;
    TIBXSujetosUsuarioFECHA_ALTA: TDateTimeField;
    TIBXSujetosUsuarioFACTURAR_A: TIBStringField;
    TIBXSujetosUsuarioE_MAIL: TIBStringField;
    TIBXSujetosUsuarioWWWW: TIBStringField;
    TIBXSujetosUsuarioOBSERVACIONES: TBlobField;
    TIBXSujetosUsuarioSEXO: TIBStringField;
    TIBXSujetosUsuarioFOTO: TBlobField;
    TIBXUsuarioPSECRETA: TIBStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure TIBXUsuarioAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
    function acceso(usuario, clave: string) : boolean;
  public
    { Public declarations }
    function GetEmpresaNombre : string;
    function GetEmpresaAcronimo : string;
    function GetEmpresaVersion : string;
    function ejecutarAutorizacion(pUsuario, pClave : string; pNivel : integer) : boolean;
  end;

//var
//  dmAutorizar: TdmAutorizar;

implementation

{$R *.DFM}

function TdmAutorizar.acceso(usuario, clave: string) : boolean;
var
   entrar  : boolean;
begin
  entrar  := FALSE;
  if dsUsuarios.DataSet.State = dsInactive then
     dsUsuarios.DataSet.Open;
  dsUsuarios.DataSet.Filter := 'USUARIO = '''+usuario+'''';
  if not(dsUsuarios.DataSet.IsEmpty) then
  begin
     if dsUsuarios.DataSet.FieldByName('PSECRETA').AsString = clave then
     begin
        if dsUsuarios.DataSet.FieldByName('BAJA').AsString = 'No' then
           entrar := TRUE
        else
           ShowMessage('El usuario fue temporalmente dado de baja, consulte a su administrador.');
     end
     else
        ShowMessage('Clave incorrecta');
  end
  else
     ShowMessage('Verifique que el nombre del usuario sea escrito correctamente (mayusculas y minusculas), si esta escrito correctamente, consulte al administrador del sistema.');
  Result := entrar;
end;

function TdmAutorizar.ejecutarAutorizacion(pUsuario, pClave : string; pNivel : integer) : boolean;
var
   tmp : boolean;
begin
   tmp := false;
   if acceso(pUsuario, pClave) then
   begin
      if pNivel <= dsUsuarios.DataSet.FieldByName('NIVEL').AsInteger then
      begin
         tmp := true;
      end
      else
         ShowMessage('El usuario no cumple con el nivel minimo requerido.');
   end;
   Result := tmp;
end;

function TdmAutorizar.GetEmpresaNombre : string;
begin
   Result := dsPreferencias.DataSet.FieldByName('EMPRESA').AsString;
end;

function TdmAutorizar.GetEmpresaAcronimo : string;
begin
   Result := dsPreferencias.DataSet.FieldByName('ACRONIMO').AsString;
end;

function TdmAutorizar.GetEmpresaVersion : string;
begin
   Result := dsPreferencias.DataSet.FieldByName('VERSION').AsString;
end;

procedure TdmAutorizar.DataModuleCreate(Sender: TObject);
begin
   dsPreferencias.DataSet    := TIBXPreferencias;
   dsUsuarios.DataSet        := TIBXUsuario;
   dsSujetosUsuarios.DataSet := TIBXSujetosUsuario;

   if dsPreferencias.DataSet.State = dsInactive then
      dsPreferencias.DataSet.Open;
end;

procedure TdmAutorizar.TIBXUsuarioAfterOpen(DataSet: TDataSet);
begin
   if TIBXSujetosUsuario.State = dsInactive then
      TIBXSujetosUsuario.Open;
end;


end.
