unit uMensajesError;

interface

uses
   Classes, SysUtils;

const
   secConstraints = 'Constraints';

procedure cargarDiccionario(const nombre : string);
function GetConstraintName: string;
function MostrarMensajeIB(E:Exception; var m : string): Boolean;

implementation

uses IniFiles, IB, Dialogs;

var
  Restricciones: TStrings;

procedure CargarDiccionario(const Nombre:string);
var
  Diccio: TIniFile;
begin
  Diccio:= TIniFile.Create(Nombre);
  Diccio.ReadSectionValues(secConstraints,Restricciones);
  Diccio.Free;
end;

function GetConstraintName: string;
var
  p: PStatusVector;
  i: Integer;
begin
  p:= StatusVectorArray;
  Result:= '';
  i:= 0;
  while p[i]<>0 do
  begin
    if p[i] = 2 then
    begin
           Result:= PChar(p[i+1]);
      Break;
    end
    else
    if p[i]=3 then Inc(i);
    Inc(i,2);
  end; //while
end;

function MostrarMensajeIB(E:Exception; var m : string): Boolean;
var
  ConstrName  : string;
  ConstrValue : string;
//  meError     : TMensajes;
begin
//  meError := nil;
  if E.ClassNameIs('EIBInterbaseError') then
  begin
     m := 'DataBaseError'+#13;
{    meError          := TMensajes.Create(meError);
    meError.Forma    := foError;
    meError.Mensaje1 := 'EIBInterBaseError';}
    ConstrName       := GetConstraintName;
    ConstrValue      := Restricciones.Values[ConstrName];
    if ConstrValue='' then
    begin
       m := m + Format('IBErrorCode: %d - SQLErrorCode: %d',[EIBInterbaseError(e).IBErrorCode,EIBInterbaseError(e).SQLCode])+#13+'Mensaje: '+e.Message;
{       meError.Mensaje2 :=
       meError.Execute;}
//       ShowMessage(Format('IBErrorCode: %d - SQLErrorCode: %d',[EIBInterbaseError(e).IBErrorCode,EIBInterbaseError(e).SQLCode])+#13+'Mensaje: '+e.Message);
    end
    else
       begin
          m := m + ConstrValue;
{          meError.Mensaje2 := ConstrValue;
          meError.Execute;}
       end;
//    ShowMessage(ConstrValue);
//    meError.Free;
    Result:= True;
  end
  else
     begin
        Result:= False;
     end;
end;

initialization
  Restricciones:= TStringList.Create;

finalization
  if Assigned(Restricciones) then
     Restricciones.Free;

end.

