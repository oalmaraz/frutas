unit UAWR;

interface

uses
   SysUtils;

type
   TBloques = record
      ocupado : boolean;
      quien   : string;
   end;

   TVigente = record
      _15D : boolean;
      _30D : boolean;
      _3M  : boolean;
      _6M  : boolean;
      _1A  : boolean;
      _2A  : boolean;
   end;

   TAWR = Class
      //Variables
      hexadecimal : array[0..15] of char;
      Letras1 : string;
      Letras2 : string;
      Letras3 : string;
      Letras4 : string;
      Hex1    : string;
      Hex2    : string;
      Hex3    : string;
      Hex4    : string;
      Reg1    : string;
      Reg2    : string;
      Reg3    : string;
      Reg4    : string;
      Fecha   : TDatetime;
      Vigente : TVigente;
      vIniApp : string;
      //funciones
      function randomHD17 : string;
      function dameHD(valor : string) : string;
      function dameFecha(valor : string) : string;
      function armarLicencia2(valor : string) : string;
      function hexadecimalLetra(numero : integer) : string;
      function conversionHexADecimal(valor : string) : integer;
      function encriptarALetra(valor : string) : string;
      function encriptarALetra2(valor : string) : string;
      function encriptarAHexa(valor : string) : string;
      function encriptarAHexa2(valor : string) : string;
      function encriptar(valor : string) : string;
      function desencriptar(valor : string) : string;
      function limpiarCadena(valor : string) : string;
      function dameFechaCer : TDatetime;
      //Procedimientos
      procedure armarLicencia;
      procedure letrasCompleto;
      procedure limpiar;
      procedure limpiarParte1;
      procedure limpiarParte2;
      procedure Registrar;
      procedure setCertificado(valor : string);
      procedure setRegistro(valor : string);
   public
      procedure leerRegistro;
      procedure guardarRegistro;
      procedure leerIni;
      function dameRegistro : string;
      function dameSistema : string;
      function dameBloqueSis1 : string;
      function dameBloqueSis2 : string;
      function dameBloqueSis3 : string;
      function dameBloqueSis4 : string;
      function dameCertificado : string;

      constructor Create; overload;
      destructor Destroy; override;
   published
      property IniApp      : string read vIniApp write vIniApp;
      property Certificado : string read dameCertificado write setCertificado;
      property Registro    : string read dameRegistro write setRegistro;
      property FechaCer    : TDatetime read dameFechaCer;
   end;

const
   BLOQUES = 3;
   INDICE  = 19;
   key32   = '\SOFTWARE\Microsoft\Windows\CurrentVersion\AWR';
   key64   = '\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\AWR';

implementation

uses
   iniFiles, Registry, Windows;

constructor TAWR.Create;
begin
   inherited;
   limpiarParte1;
   limpiar;
end;

destructor TAWR.Destroy;
begin
   inherited;
end;

procedure TAWR.leerIni;
var
   iniFile : TIniFile;
   vSis    : string;
   vCer    : string;
begin
   Letras1 := '';
   Letras2 := '';
   Letras3 := '';
   Letras4 := '';

   Hex1    := '';
   Hex2    := '';
   Hex3    := '';
   Hex4    := '';

   iniFile := TIniFile.Create(vIniApp);
   vSis    := iniFile.ReadString('STANDALONE','Sistema','');
   vCer    := iniFile.ReadString('STANDALONE','Certificado','');
   iniFile.Free;

   vSis := limpiarCadena(vSis);
   Letras1 := copy(vSis,  1, 6);
   Letras2 := copy(vSis,  7, 6);
   Letras3 := copy(vSis, 13, 6);
   Letras4 := copy(vSis, 19, 6);

   vCer    := limpiarCadena(vCer);
   Hex1    := copy(vCer,  1, 6);
   Hex2    := copy(vCer,  7, 6);
   Hex3    := copy(vCer, 13, 6);
   Hex4    := copy(vCer, 19, 6);
end;

procedure TAWR.leerRegistro;
var
   Reg    : TRegistry;
   Existe : boolean;
   tmp    : string;
begin
   Reg1 := '';
   Reg2 := '';
   Reg3 := '';
   Reg4 := '';

   Reg := TRegistry.Create;
   try
      reg.RootKey := HKEY_LOCAL_MACHINE;
      Existe      := reg.OpenKey(key32, False);
      if not(Existe) then
      begin
         reg.CloseKey;
         Existe := reg.OpenKey(key64, False);
      end;

      if Existe then
      begin
         tmp  := reg.ReadString('Sistema');
         tmp  := limpiarCadena(tmp);
         Reg1 := copy(tmp,  1, 6);
         Reg2 := copy(tmp,  7, 6);
         Reg3 := copy(tmp, 13, 6);
         Reg4 := copy(tmp, 19, 6);
      end;
   finally
      Reg.Free;
   end;
end;

procedure TAWR.guardarRegistro;
var
   Reg    : TRegistry;
   tmp    : string;
begin
   tmp := Reg1 + ' - ' + Reg2 + ' - ' + Reg3 + ' - ' + Reg4;
   Reg := TRegistry.Create(KEY_WRITE);
   try
      reg.RootKey := HKEY_LOCAL_MACHINE;
      if reg.OpenKey(key32, true) then
      begin
         reg.WriteString('Sistema', tmp);
      end;
   finally
      Reg.Free;
   end;
end;


procedure TAWR.setCertificado(valor : string);
var
   vCer : string;
begin
   vCer    := limpiarCadena(valor);
   Hex1    := copy(vCer,  1, 6);
   Hex2    := copy(vCer,  7, 6);
   Hex3    := copy(vCer, 13, 6);
   Hex4    := copy(vCer, 19, 6);
end;

procedure TAWR.setRegistro(valor : string);
var
   vReg : string;
begin
   vReg := limpiarCadena(valor);
   Reg1 := copy(vReg,  1, 6);
   Reg2 := copy(vReg,  7, 6);
   Reg3 := copy(vReg, 13, 6);
   Reg4 := copy(vReg, 19, 6);
end;

function TAWR.dameRegistro : string;
begin
   Result := Reg1 + Reg2 + Reg3 + Reg4;
end;

function TAWR.dameSistema : string;
begin
   Result := Letras1 + Letras2 + Letras3 + Letras4;
end;

function TAWR.dameBloqueSis1 : string;
begin
   Result := Letras1;
end;

function TAWR.dameBloqueSis2 : string;
begin
   Result := Letras2;
end;

function TAWR.dameBloqueSis3 : string;
begin
   Result := Letras3;
end;

function TAWR.dameBloqueSis4 : string;
begin
   Result := Letras4;
end;

function TAWR.dameCertificado : string;
begin
   Result := Hex1 + Hex2 + Hex3 + Hex4;
end;

procedure TAWR.limpiarParte1;
begin
   Letras1 := '';
   Letras2 := '';
   Letras3 := '';
   Letras4 := '';
end;

procedure TAWR.limpiarParte2;
begin
   Hex1 := '';
   Hex2 := '';
   Hex3 := '';
   Hex4 := '';
end;

procedure TAWR.letrasCompleto;
var
   tmp : string;
begin
   tmp := Letras1 + Letras2 + Letras3 + Letras4;

   if length(tmp) = 24 then
   begin
      Fecha := StrToDate(dameFecha(tmp));
   end;
end;

procedure TAWR.limpiar;
begin
{   laFechaL.Caption    := 'dd/mm/yy';
   laFechaH.Caption    := 'dd/mm/yy';
   laEstatus.Caption   := 'Estatus';
   buRegistrar.Enabled := false;
   limpiarParte2;}
end;

function TAWR.limpiarCadena(valor : string) : string;
var
   i   : integer;
   tmp : string;
begin
   tmp := '';
   for i := 1 to length(valor) do
   begin
      if not((valor[i] = ' ') or (valor[i] = '-')) then
      begin
         tmp := tmp + valor[i];
      end;
   end;
   result := tmp;
end;

function TAWR.encriptarAHexa(valor : string) : string;
var
   tmp : string;
   i   : byte;
const
   alfabeto : array[0..15] of char = ('I','J','K','L','M','N','X','Z','P','Q','R','S','T','Y','V','W');
begin
   for i := 0 to 15 do
   begin
      if valor[1] = alfabeto[i] then
      begin
         tmp := hexadecimal[i];
         break;
      end;
   end;
   result := tmp;
end;

function TAWR.encriptarAHexa2(valor : string) : string;
var
   tmp : string;
   i   : byte;
const
   hex      : array[0..15] of char = ('0','1','2','3','4','5','6','7','8','9','A','B','C','D','E','F');
   alfabeto : array[0..15] of char = ('I','J','K','L','M','N','X','Z','P','Q','R','S','T','Y','V','W');
begin
   for i := 0 to 15 do
   begin
      if valor[1] = alfabeto[i] then
      begin
         tmp := hex[i];
         break;
      end;
   end;
   result := tmp;
end;

function TAWR.encriptarALetra(valor : string) : string;
var
   tmp : string;
   i   : byte;
const
   ESP : array[0..15] of char = ('I','J','K','L','M','N','X','Z','P','Q','R','S','T','Y','V','W');
begin
   for i := 0 to 15 do
   begin
      if valor[1] = hexadecimal[i] then
      begin
         tmp := ESP[i];
         break;
      end;
   end;
   result := tmp;
end;

function TAWR.encriptarALetra2(valor : string) : string;
var
   tmp : string;
   i   : byte;
const
   hex : array[0..15] of char = ('0','1','2','3','4','5','6','7','8','9','A','B','C','D','E','F');
   ESP : array[0..15] of char = ('I','J','K','L','M','N','X','Z','P','Q','R','S','T','Y','V','W');
begin
   for i := 0 to 15 do
   begin
      if valor[1] = hex[i] then
      begin
         tmp := ESP[i];
         break;
      end;
   end;
   result := tmp;
end;

procedure TAWR.Registrar;
var
   lic1 : string;
   lic2 : string;
   hd1  : string;
   hd2  : string;
begin
   lic1 := Letras1 + Letras2 + Letras3 + Letras4;
   lic2 := Hex1    + Hex2    + Hex3    + Hex4;
   hd1  := dameHD(lic1);
   hd2  := dameHD(lic2);
end;

function TAWR.conversionHexADecimal(valor : string) : integer;
var
  n : integer;
begin
   if valor = 'A' then
      n := 10
   else
   if valor = 'B' then
      n := 11
   else
   if valor = 'C' then        
      n := 12
   else
   if valor = 'D' then
      n := 13
   else
   if valor = 'E' then
      n := 14
   else
   if valor = 'F' then
      n := 15
   else
      n := StrToInt(valor);

   result := n;
end;

function TAWR.hexadecimalLetra(numero : integer) : string;
var
   t : string;
begin
   t := IntToStr(numero);
   if numero > 9 then
   begin
      case numero of
         10 : t := 'A';
         11 : t := 'B';
         12 : t := 'C';
         13 : t := 'D';
         14 : t := 'E';
         15 : t := 'F';
         16 : t := 'F';
      end;
   end;

   result := t;
end;

procedure TAWR.armarLicencia;
var
   i      : integer;
   hd     : string;
   idx    : integer;
   isem   : integer;
   hSem   : string;
   dd     : string;
   mm     : string;
   yy     : string;
   idd    : integer;
   idd1   : integer;
   idd2   : integer;
   imm    : integer;
   iy1    : integer; 
   iy2    : integer; 
   hidx   : string;
   hD1    : string;
   hD2    : string;
   hM     : string;
   hY1    : string;
   hY2    : string;
   hB1    : string;
   hB2    : string;
   hB3    : string;
   bloq   : array[0..BLOQUES] of TBloques;
   key1   : string;
   key2   : string;
begin
   hd     := randomHD17;
   hB1    := copy(hd,  1, 6);
   hB2    := copy(hd,  7, 6);
   hB3    := copy(hd, 13, 5);

   idx    := random(3);
   idx    := idx + 1; //esto con el fin de que los bloques sean: 1, 2, 3
   hidx   := hexadecimalLetra(idx);
   isem   := random(16);
   hSem   := hexadecimalLetra(isem);
                         
   dd     := formatDatetime('DD', now);
   mm     := formatDatetime('MM', now);
   yy     := formatDatetime('YY', now);

   idd    := StrToInt(dd);
   imm    := StrToInt(mm);
   iy1    := StrToInt(copy(yy, 1, 1));
   iy2    := StrToInt(copy(yy, 2, 1));

   idd2 := idd - 15;//15 valor maximo hexadecimal.
   if idd2 < 0 then
      idd2 := 0;
   idd1 := idd - idd2;

   hD1 := hexadecimalLetra(idd1);
   hD2 := hexadecimalLetra(idd2);
   hM  := hexadecimalLetra(imm);
   hY1 := hexadecimalLetra(iy1);
   hY2 := hexadecimalLetra(iy2);

   bloq[idx - 1].ocupado := true;
   bloq[idx - 1].quien   := hSem + hD1 + hD2 + hM + hY1 + hY2;

   bloq[3].ocupado   := true;
   bloq[3].quien     := hidx + hB3;

   for i := 0 to BLOQUES  do
   begin
      if not(bloq[i].ocupado) then
      begin
         bloq[i].ocupado := true;
         bloq[i].quien   := hB1;
         break;
      end;    
   end;  

   for i := 0 to BLOQUES  do
   begin
      if not(bloq[i].ocupado) then
      begin
         bloq[i].ocupado := true;
         bloq[i].quien   := hB2;
         break;
      end;
   end;


   key1 := bloq[0].quien + bloq[1].quien + bloq[2].quien + bloq[3].quien;
   key2 := encriptar(key1);

   Letras1 := copy(key2,  1, 6);
   Letras2 := copy(key2,  7, 6);
   Letras3 := copy(key2, 13, 6);
   Letras4 := copy(key2, 19, 6);
end;

function TAWR.armarLicencia2(valor : string) : string;
var
   i      : integer;
   hd     : string;
   idx    : integer;
   isem   : integer;
   hSem   : string;
   dd     : string;
   mm     : string;
   yy     : string;
   idd    : integer;
   idd1   : integer;
   idd2   : integer;
   imm    : integer;
   iy1    : integer;
   iy2    : integer;
   hidx   : string;
   hD1    : string;
   hD2    : string;
   hM     : string;
   hY1    : string;
   hY2    : string;
   hB1    : string;
   hB2    : string;
   hB3    : string;
   bloq   : array[0..BLOQUES] of TBloques;
   key1   : string;
   key2   : string;
   dias   : integer;
   aIdx   : string;
   pSem   : integer;
   val1   : string;
   val2   : string;
   val3   : string;
begin
   dias := 0;
   if Vigente._15D then
      dias := 15
   else
   if Vigente._30D then
      dias := 30
   else
   if Vigente._3M then
      dias := 90
   else
   if Vigente._6M then
      dias := 180
   else
   if Vigente._1A then
      dias := 365
   else
   if Vigente._2A then
      dias := 730;

   //Me dice que bloque
   aIdx  := valor[INDICE];
   idx   := conversionHexADecimal(aIdx);
   //Me da la semilla para desencriptar
   pSem := ((idx - 1) * 6) + 1;

   val1   := copy(valor, 1, pSem - 1);
   val2   := copy(valor, pSem + 6, (length(valor) - 5) - (pSem + 6));
   val3   := copy(valor, INDICE + 1, 5);

   hd     := val1 + val2 + val3;
   hB1    := copy(hd,  1, 6);
   hB2    := copy(hd,  7, 6);
   hB3    := copy(hd, 13, 5);

   idx    := random(3);
   idx    := idx + 1; //esto con el fin de que los bloques sean: 1, 2, 3
   hidx   := hexadecimalLetra(idx);
   isem   := random(16);
   hSem   := hexadecimalLetra(isem);

   dd     := formatDatetime('DD', Fecha + dias);
   mm     := formatDatetime('MM', Fecha + dias);
   yy     := formatDatetime('YY', Fecha + dias);

   idd    := StrToInt(dd);
   imm    := StrToInt(mm);
   iy1    := StrToInt(copy(yy, 1, 1));
   iy2    := StrToInt(copy(yy, 2, 1));

   idd2 := idd - 15;//15 valor maximo hexadecimal.
   if idd2 < 0 then
      idd2 := 0;
   idd1 := idd - idd2;

   hD1 := hexadecimalLetra(idd1);
   hD2 := hexadecimalLetra(idd2);
   hM  := hexadecimalLetra(imm);
   hY1 := hexadecimalLetra(iy1);
   hY2 := hexadecimalLetra(iy2);

   bloq[idx - 1].ocupado := true;
   bloq[idx - 1].quien   := hSem + hD1 + hD2 + hM + hY1 + hY2;

   bloq[3].ocupado   := true;
   bloq[3].quien     := hidx + hB3;

   for i := 0 to BLOQUES  do
   begin
      if not(bloq[i].ocupado) then
      begin
         bloq[i].ocupado := true;
         bloq[i].quien   := hB1;
         break;
      end;
   end;

   for i := 0 to BLOQUES  do
   begin
      if not(bloq[i].ocupado) then
      begin
         bloq[i].ocupado := true;
         bloq[i].quien   := hB2;
         break;
      end;
   end;


   key1   := bloq[0].quien + bloq[1].quien + bloq[2].quien + bloq[3].quien;
   key2   := encriptar(key1);
   result := key2;

{   edLetras1.Text := copy(key2,  1, 6);
   edLetras2.Text := copy(key2,  7, 6);
   edLetras3.Text := copy(key2, 13, 6);
   edLetras4.Text := copy(key2, 19, 6);}
end;

function TAWR.dameFechaCer : TDatetime;
var
   tmp : string;
begin
   tmp    := dameFecha(dameCertificado);
   result := StrToDate(tmp);
end;

function TAWR.dameFecha(valor : string) : string;
var
   i       : integer;
   idx     : integer;
   sem     : integer;
   pSem    : integer;
   que     : integer;
   numeros : string;
   aIdx    : string;
   aSem    : string;
   d1      : string;
   d2      : string;
   m       : string;
   nM      : integer;
   y1      : string;
   y2      : string;
   nY1     : integer;
   nY2     : integer;
   nD      : integer;
   d       : string;
   fecha   : string;
const
   hex : array[0..15] of char = ('0','1','2','3','4','5','6','7','8','9','A','B','C','D','E','F');
   alf : array[0..15] of char = ('I','J','K','L','M','N','X','Z','P','Q','R','S','T','Y','V','W');
begin
   //Me dice que bloque
   aIdx  := valor[INDICE];
   idx   := StrToInt(encriptarAHexa2(aIdx));

   //Me da la semilla para desencriptar
   pSem := ((idx - 1) * 6) + 1;
   aSem := encriptarAHexa2(valor[pSem]);
   sem  := conversionHexADecimal(aSem);

   //armar hexadecimal
   que := 0;
   for i := sem to 15 do
   begin
      hexadecimal[i] := hex[que];
      que := que + 1;
   end;

   for i := 0 to sem - 1 do
   begin
      hexadecimal[i] := hex[que];
      que := que + 1;
   end;

   numeros := '';
   for i := 1 to Length(valor) do
   begin
      if (i <> INDICE) and (i <> pSem) then
         numeros := numeros + encriptarAHexa(valor[i])
      else
         numeros := numeros + encriptarAHexa2(valor[i]);
   end;

   d1  := copy(numeros, pSem + 1, 1);
   d2  := copy(numeros, pSem + 2, 1);
   nM  := conversionHexADecimal(copy(numeros, pSem + 3, 1));
   m   := IntToStr(nM);
   nY1 := conversionHexADecimal(copy(numeros, pSem + 4, 1));
   nY2 := conversionHexADecimal(copy(numeros, pSem + 5, 1));
   y1  := IntToStr(nY1);
   y2  := IntToStr(nY2);
   nD  := conversionHexADecimal(d1) + conversionHexADecimal(d2);
   d   := IntToStr(nD);

   if length(d) = 1 then
      d := '0' + d;

   if length(m) = 1 then
      m := '0' + m;

   fecha  := d + '/' + m + '/' + y1 + y2;

   result := fecha;
end;

function TAWR.desencriptar(valor : string) : string;
var
   i       : integer;
   idx     : integer;
   sem     : integer;
   pSem    : integer;
   que     : integer;
   numeros : string;
   aIdx    : string;
   aSem    : string;
   d1      : string;
   d2      : string;
   m       : string;
   y1      : string;
   y2      : string;
   nD      : integer;
   d       : string;
const
   hex : array[0..15] of char = ('0','1','2','3','4','5','6','7','8','9','A','B','C','D','E','F');
   alf : array[0..15] of char = ('I','J','K','L','M','N','X','Z','P','Q','R','S','T','Y','V','W');
begin
   //Me dice que bloque
   aIdx  := valor[INDICE];
   idx   := StrToInt(encriptarAHexa2(aIdx));

   //Me da la semilla para desencriptar
   pSem := ((idx - 1) * 6) + 1;
   aSem := encriptarAHexa2(valor[pSem]);
   sem  := conversionHexADecimal(aSem);

   //armar hexadecimal
   que := 0;
   for i := sem to 15 do
   begin
      hexadecimal[i] := hex[que];
      que := que + 1;
   end;

   for i := 0 to sem - 1 do
   begin
      hexadecimal[i] := hex[que];
      que := que + 1;
   end;

   numeros := '';
   for i := 1 to Length(valor) do
   begin
      if (i <> INDICE) and (i <> pSem) then
         numeros := numeros + encriptarAHexa(valor[i])
      else
         numeros := numeros + encriptarAHexa2(valor[i]);
   end;

   d1 := copy(numeros, pSem + 1, 1);
   d2 := copy(numeros, pSem + 2, 1);
   m  := copy(numeros, pSem + 3, 1);
   y1 := copy(numeros, pSem + 4, 1);
   y2 := copy(numeros, pSem + 5, 1);
   nD := conversionHexADecimal(d1) + conversionHexADecimal(d2);
   d  := IntToStr(nD);

   if length(d) = 1 then
      d := '0' + d;

   if length(m) = 1 then
      m := '0' + m;

   result := numeros;
end;

function TAWR.encriptar(valor : string) : string;
var
   i      : integer;
   idx    : integer;
   sem    : integer;
   pSem   : integer;
   que    : integer;
   letras : string;
const
   hex : array[0..15] of char = ('0','1','2','3','4','5','6','7','8','9','A','B','C','D','E','F');
   alf : array[0..15] of char = ('I','J','K','L','M','N','X','Z','P','Q','R','S','T','Y','V','W');
begin
   idx  := StrToInt(valor[INDICE]);
   pSem := ((idx - 1) * 6) + 1;
   sem  := conversionHexADecimal(valor[pSem]);


   que := 0;
   for i := sem to 15 do
   begin
      hexadecimal[i] := hex[que];
      que := que + 1;
   end;

   for i := 0 to sem - 1 do
   begin
      hexadecimal[i] := hex[que];
      que := que + 1;
   end;

   letras := '';
   for i := 1 to Length(valor) do
   begin
      if (i <> INDICE) and (i <> pSem) then
         letras := letras + encriptarALetra(valor[i])
      else
         letras := letras + encriptarALetra2(valor[i]);
   end;
   result := letras;
end;

function TAWR.dameHD(valor : string) : string;
var
   i       : integer;
   idx     : integer;
   sem     : integer;
   pSem    : integer;
   que     : integer;
   numeros : string;
   aIdx    : string;
   aSem    : string;
   val1    : string;
   val2    : string;
   val3    : string;
   hd      : string; 
const
   hex : array[0..15] of char = ('0','1','2','3','4','5','6','7','8','9','A','B','C','D','E','F');
   alf : array[0..15] of char = ('I','J','K','L','M','N','X','Z','P','Q','R','S','T','Y','V','W');
begin
   //Me dice que bloque
   aIdx  := valor[INDICE];
   idx   := StrToInt(encriptarAHexa2(aIdx));

   //Me da la semilla para desencriptar
   pSem := ((idx - 1) * 6) + 1;
   aSem := encriptarAHexa2(valor[pSem]);
   sem  := conversionHexADecimal(aSem);

   //armar hexadecimal
   que := 0;
   for i := sem to 15 do
   begin
      hexadecimal[i] := hex[que];
      que := que + 1;
   end;

   for i := 0 to sem - 1 do
   begin
      hexadecimal[i] := hex[que];
      que := que + 1;
   end;

   numeros := '';
   for i := 1 to Length(valor) do
   begin
      if (i <> INDICE) and (i <> pSem) then
         numeros := numeros + encriptarAHexa(valor[i])
      else
         numeros := numeros + encriptarAHexa2(valor[i]);
   end;

   val1   := copy(numeros, 1, pSem - 1);
   val2   := copy(numeros, pSem + 6, (length(valor) - 5) - (pSem + 6));
   val3   := copy(numeros, INDICE + 1, 5);

   hd     := val1 + val2 + val3;

   result := hd;
end;

function TAWR.randomHD17 : string;
var
   i  : integer;
   r  : integer;
   hd : string;
   t  : string;
begin
   Randomize;
   hd := '';
   for i := 0 to 16 do
   begin
      r := random(16);
      t := hexadecimalLetra(r);
      hd := hd + t;
   end;

   result := hd;
end;

end.
