unit USQLAnaliza;

interface

uses
   DB, Classes, SysUtils, IBQuery, IBDatabase;

const
   NumSelect   = 100;
   NumFrom     = 50;
   NumWhere    = 100;
   NumWhereExt = 1000;
   NumOrder    = 10;
   NumGroup    = 50;
   NumParam    = 100;

type
   TSelect = record
      campo : string;
      alias : string;
      tipo  : TFieldType;
   end;

   TParamSelect = (psCadena, psFecha);
   TParam = record
      parametro : string;
      vCadena   : string;
      vFecha    : TDatetime;
      cual      : TParamSelect;
   end;

   TSqlAnaliza = class
   private
      qyConsulta   : TIBQuery;
      qyOriginal   : TIBQuery;

      awrEmpty     : boolean;
      awrRows      : integer;
      awrHasta     : integer;
      awrNone      : integer;
      awrParamE    : integer;
      awrBusqueda  : integer;

      //variables para analizar la parte de parametros
      awrCountParam  : integer;
      awrParam       : array[1..NumParam] of TParam;
      //variables para analizar la parte del select
      awrCountSelect : integer;
      awrSelect      : array[1..NumSelect] of TSelect;
      //variables para analizar la parte del from
      awrCountFrom : integer;
      awrFrom      : array[1..NumFrom] of string;
      //variables para where
      awrCountWhere : integer;
      awrWhere      : array[1..NumWhere] of string;
      //variable para where extra
      awrCountWhereExtra : integer;
      awrWhereExtra      : array[1..NumWhereExt] of string;
      //variables para order
      awrCountOrder : integer;
      awrOrder      : array[1..NumOrder] of string;
      //variables para group by
      awrCountGroup : integer;
      awrGroup      : array[1..NumGroup] of string;
      //consulta reconstruida
//      awrStrSql      : TStringList;
      //procedimientos
      procedure reconstruir;
      procedure AddParam(valor : string);
      procedure LoadBloqueGroup;
      procedure LoadBloqueOrder;

      function dameSql : TStrings;
      function espejo(cadena : string) : string;
   public
      constructor Create;
      destructor Destroy;override;
      //solucion select
      procedure clearSelect;
      procedure AddSelect(valor : string);overload;
      procedure AddSelect(campo, Alias : string);overload;
      procedure AddSelect(campo, Alias : string; tipo : TFieldType);overload;
      //solucion from
      procedure clearFrom;
      procedure AddFrom(valor : string);
      //solucion where
      procedure clearWhere;
      procedure AddWhere(valor : string);
      //solucion whereExtra
      procedure clearWhereExtra;
      procedure AddWhereExtra(valor : string);
      //solucion order by
      procedure clearOrder;
      procedure AddOrder(valor : string);
      //solucion group by
      procedure clearGroup;
      procedure AddGroup(valor : string);
      procedure AddSentenciaGrupo;

      procedure ClearAll;
      procedure construir;
      procedure construirExtra;
      procedure AddStrings(valor : TStrings);
      procedure AddSentenciaBusqueda(alias : string);
      procedure AddSentenciaFind(alias : string);
      procedure AddSentenciaHasta;
      procedure AddSentenciaNone;
      procedure AddSentenciaRows(valor : string);
      procedure AddSentencia(valor : string);
      procedure DelRowSql(index : integer);
      procedure setParam(index : integer; valor : variant; tipo : TParamSelect);overload;
      procedure setParam(param : string; valor : variant);overload;

      procedure setDatabase(valor : TIBDatabase);
      procedure setTransaction(valor : TIBTransaction);
      procedure AddParams;
      procedure AddParamsExtra;
      procedure clearParams;
      procedure clearParamsExtra;

      procedure LoadOriginal;
      procedure LoadSemiOriginal;

      function dameCampo(alias : string) : string;overload;
      function dameCampo(index : integer) : string;overload;
      function dameAlias(campo : string) : string;overload;
      function dameAlias(index : integer) : string;overload;
      function dameTipoA(alias : string) : TFieldType;
      function dameTipoC(campo : string) : TFieldType;
      function dameTipoI(index : integer) : TFieldType;
      function dameParam(param : string) : integer;overload;
      function dameParam(index : integer) : string;overload;
      function dameParamValor(index : integer) : variant;
      function AddParamIndex(valor : string) : integer;

      function firstCampo : string;
      function firstAlias : string;
   published
      property strSql          : TStrings read dameSql;
      property isEmpty         : boolean read awrEmpty write awrEmpty;
      property indexSelect     : integer read awrCountSelect;
      property indexRows       : integer read awrRows;
      property indexHasta      : integer read awrHasta;
      property indexNone       : integer read awrNone;
      property indexParam      : integer read awrCountParam;
      property indexParamE     : integer read awrParamE;
      property indexBusqueda   : integer read awrBusqueda;
      property CountWhere      : integer read awrCountWhere;
      property CountWhereExtra : integer read awrCountWhereExtra;
      property Database        : TIBDatabase write setDatabase;
      property Transaction     : TIBTransaction write setTransaction;
   end;

implementation

constructor TsqlAnaliza.Create;
begin
   awrCountSelect     := 0;
   awrCountFrom       := 0;
   awrCountWhere      := 0;
   awrCountWhereExtra := 0;
   awrCountOrder      := 0;
   awrCountGroup      := 0;
   awrCountParam      := 0;

   awrRows     := 0;
   awrHasta    := 0;
   awrBusqueda := 0;
   awrNone     := 0;
   awrParamE   := 0;

   awrEmpty    := true;
   qyConsulta  := TIBQuery.Create(qyConsulta);
   qyOriginal  := TIBQuery.Create(qyOriginal);
end;

destructor TsqlAnaliza.Destroy;
begin
   qyConsulta.Free;
   qyOriginal.Free;
end;

procedure TsqlAnaliza.LoadBloqueGroup;
var
   i : integer;
begin
   if awrCountGroup > 0 then
   begin
      qyConsulta.SQL.Add('GROUP BY '+awrGroup[1]);
      for i := 2 to awrCountGroup do
      begin
         qyConsulta.SQL.Add(awrGroup[i]);
      end;
   end;
end;

procedure TsqlAnaliza.LoadBloqueOrder;
var
   i : integer;
begin
   if awrCountOrder > 0 then
   begin
      qyConsulta.SQL.Add('ORDER BY '+awrOrder[1]);
      for i := 2 to awrCountOrder do
      begin
         qyConsulta.SQL.Add(awrOrder[i]);
      end;
   end;
end;

procedure TsqlAnaliza.LoadSemiOriginal;
begin
   clearWhereExtra;

   qyConsulta.SQL.Clear;
   qyConsulta.SQL.AddStrings(qyOriginal.SQL);
end;

procedure TsqlAnaliza.LoadOriginal;
begin
   clearWhereExtra;

   qyConsulta.SQL.Clear;
   qyConsulta.SQL.AddStrings(qyOriginal.SQL);

   LoadBloqueGroup;
   LoadBloqueOrder;
end;

procedure TsqlAnaliza.AddStrings(valor : TStrings);
var
   i : integer;
begin
   qyConsulta.SQL.Clear;
   qyConsulta.SQL.AddStrings(valor);
   qyConsulta.Open;

   for i := 0 to qyConsulta.Fields.Count - 1 do
   begin
      awrSelect[i + 1].alias := qyConsulta.Fields[i].FieldName;
      awrSelect[i + 1].tipo  := qyConsulta.Fields[i].DataType;
   end;

//   qyConsulta.SQL.Delete(qyConsulta.SQL.Count - 1);
   reconstruir;
end;

function TsqlAnaliza.dameSql : TStrings;
begin
   Result := qyConsulta.SQL;
end;

procedure TsqlAnaliza.setDatabase(valor : TIBDatabase);
begin
   qyConsulta.Database := valor;
end;

procedure TsqlAnaliza.setTransaction(valor : TIBTransaction);
begin
   qyConsulta.Transaction := valor;
end;

procedure TsqlAnaliza.AddSentencia(valor : string);
begin
   qyConsulta.SQL.Add(valor);
end;

procedure TsqlAnaliza.AddSentenciaNone;
begin
   if awrCountWhere = 0 then
      awrNone := qyConsulta.SQL.Add('WHERE ('+awrSelect[1].campo+' = -3)')
   else
      awrNone := qyConsulta.SQL.Add('AND ('+awrSelect[1].campo+' = -3)');
end;

function TsqlAnaliza.dameAlias(index : integer) : string;
begin
   Result := awrSelect[index].Alias;
end;

function TsqlAnaliza.dameCampo(index : integer) : string;
begin
   Result := awrSelect[index].campo;
end;

procedure TsqlAnaliza.DelRowSql(index : integer);
begin
   qyConsulta.SQL.Delete(index);
   if index = awrRows then
      awrRows := 0;
   if index = awrHasta then
      awrHasta := 0;
   if index = awrNone then
      awrNone := 0;
end;

procedure TsqlAnaliza.AddSentenciaBusqueda(alias : string);
var
   varCampo : string;
   varTipo  : TFieldType;
   varSent  : string;
   vLogica  : string;
   varJ     : integer;
begin
   LoadOriginal;

   varCampo := dameCampo(alias);
   varTipo  := dameTipoA(alias);

   if awrCountWhere = 0 then
      vLogica := ''
   else
      vLogica := 'AND';

   if varTipo in [ftDate, ftDateTime] then
   begin
      varJ     := AddParamIndex('P_BUSQUEDA_INI');
      setParam(varJ, 0, psFecha);

      varJ     := AddParamIndex('P_BUSQUEDA_FIN');
      setParam(varJ, 0, psFecha);

      AddWhereExtra(vLogica+' (F_FECHA('+varCampo+') BETWEEN :P_BUSQUEDA_INI AND :P_BUSQUEDA_FIN)');
   end
   else
      begin
         if varTipo = ftInteger then
            varSent := '='
         else
            begin
               varCampo := 'UPPER('+varCampo+')';
               varSent  := 'LIKE';
            end;

         varJ     := AddParamIndex('P_BUSQUEDA');
         setParam(varJ, '', psCadena);

         AddWhereExtra(vLogica+' ('+varCampo+' '+varSent+' :P_BUSQUEDA)');
      end;

   construirExtra;
end;

procedure TsqlAnaliza.AddSentenciaFind(alias : string);
var
   varCampo : string;
   varTipo  : TFieldType;
   varSent  : string;
   vLogica  : string;
//   varJ     : integer;
   i        : integer;
begin
   varCampo := dameCampo(alias);
   varTipo  := dameTipoA(alias);

   if awrCountWhere = 0 then
      vLogica := ''
   else
      vLogica := 'AND';

   if varTipo in [ftDate, ftDateTime] then
   begin
{      varJ     := AddParamIndex('P_BUSQUEDA_INI');
      setParam(varJ, 0, psFecha);

      varJ     := AddParamIndex('P_BUSQUEDA_FIN');
      setParam(varJ, 0, psFecha);
}
      AddWhereExtra(vLogica+' (F_FECHA('+varCampo+') BETWEEN :P_BUSQUEDA_INI AND :P_BUSQUEDA_FIN)');
   end
   else
      begin
         if varTipo = ftInteger then
            varSent := '='
         else
            begin
               varCampo := 'UPPER('+varCampo+')';
               varSent  := 'LIKE';
            end;

//         varJ     := AddParamIndex('P_BUSQUEDA');
//         setParam(varJ, '', psCadena);

         AddWhereExtra(vLogica+' ('+varCampo+' '+varSent+' :P_BUSQUEDA)');
      end;


   if awrCountWhereExtra > 0 then
   begin
      if awrCountWhere = 0 then
         qyConsulta.SQL.Add('WHERE '+awrWhereExtra[1])
      else
         qyConsulta.SQL.Add(awrWhereExtra[1]);

      for i := 2 to awrCountWhereExtra do
      begin
         qyConsulta.SQL.Add(awrWhereExtra[i]);
      end;
   end;

//   construirExtra;
end;

procedure TsqlAnaliza.AddSentenciaHasta;
begin
   if awrHasta = 0 then
   begin
      if awrCountWhere = 0 then
         awrHasta := qyConsulta.SQL.Add('WHERE ('+awrSelect[1].campo+' > :P_ROWS)')
      else
         awrHasta := qyConsulta.SQL.Add('AND ('+awrSelect[1].campo+' > :P_ROWS)');
   end;
end;

procedure TsqlAnaliza.AddSentenciaRows(valor : string);
begin
   if awrRows = 0 then
      awrRows := qyConsulta.SQL.Add('ROWS '+valor)
end;

function TsqlAnaliza.firstCampo : string;
begin
   result := awrSelect[1].campo;
end;

function TsqlAnaliza.firstAlias : string;
begin
   result := awrSelect[1].alias;
end;

function TsqlAnaliza.dameTipoA(alias : string) : TFieldType;
var
   i    : integer;
   tmp  : string;
   tipo : TFieldType;
begin
   tipo := ftUnknown;
   tmp  := UpperCase(alias);
   for i := 1 to awrCountSelect do
   begin
      if awrSelect[i].alias = tmp then
      begin
         tipo := awrSelect[i].tipo;
         break;
      end;
   end;
   result := tipo;
end;

function TsqlAnaliza.dameTipoC(campo : string) : TFieldType;
var
   i    : integer;
   tmp  : string;
   tipo : TFieldType;
begin
   tipo := ftUnknown;
   tmp  := UpperCase(campo);
   for i := 1 to awrCountSelect do
   begin
      if awrSelect[i].campo = tmp then
      begin
         tipo := awrSelect[i].tipo;
         break;
      end;
   end;
   result := tipo;
end;

function TsqlAnaliza.dameTipoI(index : integer) : TFieldType;
begin
   Result := awrSelect[index].tipo;
end;

function TsqlAnaliza.dameCampo(alias : string) : string;
var
   i   : integer;
   tmp : string;
   org : string;
begin
   tmp := UpperCase(alias);
   for i := 1 to awrCountSelect do
   begin
      org := awrSelect[i].alias;
      if org = tmp then
      begin
         tmp := awrSelect[i].campo;
         break;
      end;
   end;
   result := tmp;
end;

function TsqlAnaliza.dameAlias(campo : string) : string;
var
   i   : integer;
   tmp : string;
begin
   tmp := UpperCase(campo);
   for i := 1 to awrCountSelect do
   begin
      if awrSelect[i].campo = tmp then
      begin
         tmp := awrSelect[i].alias;
         break;
      end;
   end;
   result := tmp;
end;

procedure TsqlAnaliza.ClearAll;
begin
   ClearSelect;
   ClearFrom;
   ClearWhere;
   ClearOrder;
   ClearParams;
   awrEmpty := true;
end;

procedure TsqlAnaliza.reconstruir;
var
   iSelectIni : integer;
   iSelectFin : integer;
   iFromIni   : integer;
   iFromFin   : integer;
   iWhereIni  : integer;
   iWhereFin  : integer;
   iGroupIni  : integer;
   iGroupFin  : integer;
   iOrderIni  : integer;
   iOrderFin  : integer;
   tmp        : string;
   i,
   iTmp       : integer;
   incSelect,
   incFrom,
   incWhere,
   incGroup,
   incOrder   : boolean;
begin
   ClearAll;
   iSelectIni := -1;
   iSelectFin := -1;
   iFromIni   := -1;
   iFromFin   := -1;
   iWhereIni  := -1;
   iWhereFin  := -1;
   iGroupIni  := -1;
   iGroupFin  := -1;
   iOrderIni  := -1;
   iOrderFin  := -1;
   incSelect  := false;
   incFrom    := false;
   incWhere   := false;
   incGroup   := false;
   incOrder   := false;

   for i := 0 to qyConsulta.SQL.Count - 1 do
   begin
      tmp := UpperCase(qyConsulta.SQL.Strings[i]);
      if Pos('SELECT ', tmp) > 0 then
      begin
         iSelectIni := i;
         iSelectFin := i;
         incSelect  := true;
      end
      else
      if incSelect then
         Inc(iSelectFin);

      if Pos('FROM ', tmp) > 0 then
      begin
         iFromIni  := i;
         iFromFin  := i;

         if incSelect then
            dec(iSelectFin);

         incSelect := false;
         incFrom   := true;
      end
      else
      if incFrom then
         inc(iFromFin);

      if Pos('WHERE ', tmp) > 0 then
      begin
         iWhereIni := i;
         iWhereFin := i;

         if incSelect then
            dec(iSelectFin);
         if incFrom then
            dec(iFromFin);

         incSelect := false;
         incFrom   := false;
         incWhere  := true;
      end
      else
      if incWhere then
         inc(iWhereFin);

      if Pos('GROUP BY ', tmp) > 0 then
      begin
         iGroupIni := i;
         iGroupFin := i;

         if incSelect then
            dec(iSelectFin);
         if incFrom then
            dec(iFromFin);
         if incWhere then
            dec(iWhereFin);

         incSelect := false;
         incFrom   := false;
         incWhere  := false;
         incGroup  := true;
      end
      else
      if incGroup then
         inc(iGroupFin);

      if Pos('ORDER BY ', tmp) > 0 then
      begin
         iOrderIni := i;
         iOrderFin := i;

         if incSelect then
            dec(iSelectFin);
         if incFrom then
            dec(iFromFin);
         if incWhere then
            dec(iWhereFin);
         if incGroup then
            dec(iGroupFin);

         incSelect := false;
         incFrom   := false;
         incWhere  := false;
         incGroup  := false;
         incOrder  := true;
      end
      else
      if incOrder then
         inc(iOrderFin);
   end;

   //Agregar sentencias Select
   if iSelectIni <> -1 then
   begin
      for i := iSelectIni to iSelectFin do
      begin
         tmp  := UpperCase(qyConsulta.SQL.Strings[i]);
         iTmp := Pos('SELECT ', tmp);
         tmp  := qyConsulta.SQL.Strings[i];
         if  iTmp > 0 then
            Delete(tmp, iTmp, 7);
         AddSelect(tmp);
      end;
   end;
   //Agregar sentencias From
   if iFromIni <> -1 then
   begin
      for i := iFromIni to iFromFin do
      begin
         tmp  := UpperCase(qyConsulta.SQL.Strings[i]);
         iTmp := Pos('FROM ', tmp);
         tmp  := qyConsulta.SQL.Strings[i];
         if  iTmp > 0 then
            Delete(tmp, iTmp, 5);
         AddFrom(tmp);
      end;
   end;
   //Agregar sentencias Where
   if iWhereIni <> -1 then
   begin
      for i := iWhereIni to (iWhereFin - 1) do //Menos uno para anular la sentencia de registro en cero
      begin
         tmp  := UpperCase(qyConsulta.SQL.Strings[i]);
         iTmp := Pos('WHERE ', tmp);
         tmp  := qyConsulta.SQL.Strings[i];
         if  iTmp > 0 then
            Delete(tmp, iTmp, 6);
         AddWhere(tmp);
      end;
   end;
   //Agregar sentencias Group by
   if iGroupIni <> -1 then
   begin
      for i := iGroupIni to iGroupFin do
      begin
         tmp  := UpperCase(qyConsulta.SQL.Strings[i]);
         iTmp := Pos('GROUP BY ', tmp);
         tmp  := qyConsulta.SQL.Strings[i];
         if  iTmp > 0 then
            Delete(tmp, iTmp, 9);
         AddGroup(tmp);
      end;
   end;
   //Agregar sentencias Order by
   if iOrderIni <> -1 then
   begin
      for i := iOrderIni to iOrderFin do
      begin
         tmp  := UpperCase(qyConsulta.SQL.Strings[i]);
         iTmp := Pos('ORDER BY ', tmp);
         tmp  := qyConsulta.SQL.Strings[i];
         if  iTmp > 0 then
            Delete(tmp, iTmp, 9);
         AddOrder(tmp);
      end;
   end;
   construir;
end;

procedure TsqlAnaliza.construirExtra;
var
   i : integer;
begin
   if awrCountWhereExtra > 0 then
   begin
      if awrCountWhere = 0 then
         qyConsulta.SQL.Add('WHERE '+awrWhereExtra[1])
      else
         qyConsulta.SQL.Add(awrWhereExtra[1]);

      for i := 2 to awrCountWhereExtra do
      begin
         qyConsulta.SQL.Add(awrWhereExtra[i]);
      end;
   end;

   LoadBloqueGroup;
   LoadBloqueOrder;
end;

procedure TsqlAnaliza.construir;
var
   i : integer;
   tmp : string;
   c   : string;
begin
   awrEmpty    := false;

   qyOriginal.SQL.Clear;
   qyConsulta.SQL.Clear;

   if awrCountSelect > 0 then
   begin
      if 1 <> awrCountSelect then
         c := ','
      else
         c := '';

      if awrSelect[1].alias = '' then
         tmp := 'SELECT '+awrSelect[1].campo+c
      else
         tmp := 'SELECT '+awrSelect[1].campo+' '+awrSelect[1].alias+c;
      qyConsulta.SQL.Add(tmp);

      for i := 2 to awrCountSelect do
      begin
         if i <> awrCountSelect then
            c := ','
         else
            c := '';

         if awrSelect[i].alias = '' then
            tmp := awrSelect[i].campo+c
         else
            tmp := awrSelect[i].campo+' '+awrSelect[i].alias+c;
         qyConsulta.SQL.Add(tmp);
      end;
   end;

   if awrCountFrom > 0 then
   begin
      qyConsulta.SQL.Add('FROM '+awrFrom[1]);
      for i := 2 to awrCountFrom do
      begin
         qyConsulta.SQL.Add(awrFrom[i]);
      end;
   end;

   if awrCountWhere > 0 then
   begin
      qyConsulta.SQL.Add('WHERE '+awrWhere[1]);
      for i := 2 to awrCountWhere do
      begin
         qyConsulta.SQL.Add(awrWhere[i]);
      end;
   end;

   qyOriginal.SQL.AddStrings(qyConsulta.SQL);
end;

procedure TsqlAnaliza.AddSentenciaGrupo;
var
   i : integer;
begin
   if awrCountGroup > 0 then
   begin
      qyConsulta.SQL.Add('GROUP BY '+awrGroup[1]);
      for i := 2 to awrCountGroup do
      begin
         qyConsulta.SQL.Add(awrGroup[i]);
      end;
   end;
end;

procedure TsqlAnaliza.clearSelect;
var
   i : integer;
begin
   for i := 1 to awrCountSelect do
   begin
      awrSelect[i].campo := '';
      awrSelect[i].alias := '';
   end;
   awrCountSelect := 0;
end;

function TsqlAnaliza.espejo(cadena : string) : string;
var
   longitud : integer;
   tmp      : string;
   i        : integer;
begin
   tmp      := '';
   longitud := length(cadena);
   for i := longitud downto 1 do
      tmp := tmp + cadena[i];
   Result := tmp;
end;

procedure TsqlAnaliza.AddSelect(valor : string);
var
   i : integer;
   j : integer;
   k : integer;
   l : integer;
   tmpCampo : string;
   tmpAlias : string;

   copiar    : boolean;
   fracmento : string;
   cuantos   : integer;
begin
   copiar  := false;
   j       := 1;
   cuantos := 0;

   for i := 1 to length(valor) do
   begin
      if valor[i] = ',' then
      begin
         cuantos := i - j;
         copiar  := true;
      end
      else
         if (valor[i] <> ',') and (length(valor) = i) then
         begin
            cuantos := (i - j) + 1;
            copiar  := true;
         end;

      if copiar then
      begin
         fracmento := copy(valor, j, cuantos);
         fracmento := trimleft(fracmento);
         fracmento := trimright(fracmento);
         j         := i + 1;
         copiar    := false;

         k        := Pos(' ', fracmento);
         tmpCampo := '';
         tmpAlias := '';
         if k > 0 then
         begin
            l := pos(')', fracmento);
            if l > 0 then
            begin
               fracmento := espejo(fracmento);
               k         := Pos(' ', fracmento);
               tmpCampo  := copy(fracmento, k + 1, length(fracmento));
               tmpAlias  := copy(fracmento, 0, k - 1);
               tmpCampo  := espejo(tmpCampo);
               tmpAlias  := espejo(tmpAlias);
            end
            else
               begin
                  tmpCampo := copy(fracmento, 0, k - 1);
                  tmpAlias := copy(fracmento, k + 1, length(fracmento));
               end;
         end
         else
            begin
               tmpCampo := fracmento;
            end;

         if tmpCampo <> '' then
            AddSelect(tmpCampo, tmpAlias);
      end;
   end;
end;

procedure TsqlAnaliza.AddSelect(campo, Alias : string; tipo : TFieldType);
begin
   inc(awrCountSelect);
   awrSelect[awrCountSelect].campo := campo;
   awrSelect[awrCountSelect].alias := alias;
   awrSelect[awrCountSelect].tipo  := tipo;
end;

procedure TsqlAnaliza.AddSelect(campo, Alias : string);
{var
   tDato : TFieldType;}
begin
   inc(awrCountSelect);
   awrSelect[awrCountSelect].campo := campo;
   if alias <> '' then
      awrSelect[awrCountSelect].alias := alias;
//   awrSelect[awrCountSelect].tipo  := tDato;
end;

function TsqlAnaliza.dameParamValor(index : integer) : variant;
var
   tmp : variant;
begin
   case awrParam[index].cual of
     psCadena: tmp := awrParam[index].vCadena;
     psFecha : tmp := awrParam[index].vFecha;
   end;
   result := tmp;
end;

function TsqlAnaliza.dameParam(index : integer) : string;
begin
  result := awrParam[index].parametro;
end;

function TsqlAnaliza.dameParam(param : string) : integer;
var
   i, j : integer;
   tmp  : string;
begin
   j := 0;
   tmp := UpperCase(param);
   for i := 1 to awrCountParam do
   begin
      if awrParam[i].parametro = tmp then
      begin
         j := i;
         break;
      end;
   end;
   result := j;
end;

procedure TsqlAnaliza.setParam(param : string; valor : variant);
var
   index : integer;
   tipo  : TParamSelect;
   i     : integer;
begin
   index := 0;
   tipo  := psCadena;
   for i := 1 to awrCountParam do
   begin
      if awrParam[i].parametro = param then
      begin
         index := i;
         tipo  := awrParam[i].cual;
         break;
      end;
   end;

   case tipo of
     psCadena: awrParam[index].vCadena := valor;
     psFecha : awrParam[index].vFecha  := valor;
   end;
end;

procedure TsqlAnaliza.setParam(index : integer; valor : variant; tipo : TParamSelect);
begin
   case tipo of
     psCadena: awrParam[index].vCadena := valor;
     psFecha : awrParam[index].vFecha  := valor;
   end;
   awrParam[index].cual := tipo;
end;

procedure TsqlAnaliza.clearParams;
var
   i : integer;
begin
   for i := 1 to awrCountParam do
   begin
      awrParam[i].parametro := '';
      awrParam[i].vCadena   := '';//Unassigned
      awrParam[i].vFecha    := 0;
      awrParam[i].cual      := psCadena;
   end;
   awrCountParam := 0;
   awrParamE     := 0;
end;

procedure TsqlAnaliza.clearParamsExtra;
var
   i   : integer;
   tmp :  integer;
begin
   if awrParamE > 0 then
   begin
      tmp := awrCountParam;
      for i := awrParamE to tmp do
      begin
         awrParam[i].parametro := '';
         awrParam[i].vCadena   := '';//Unassigned;
         awrParam[i].vFecha    := 0;
         awrParam[i].cual      := psCadena;
         dec(awrCountParam);
      end;
      awrParamE := 0;
   end;
end;

procedure TsqlAnaliza.AddParam(valor : string);
begin
   inc(awrCountParam);
   awrParam[awrCountParam].parametro := valor;
end;

procedure TsqlAnaliza.AddParamsExtra;
var
   i, j, k, l : integer;
   index   : integer;
   tmp     : string;
   param   : string;
begin
   for i := 1 to awrCountWhereExtra do
   begin
      tmp   := awrWhereExtra[i];
      while Pos(':', tmp) <> 0 do
      begin
         l     := length(tmp);
         index := pos(':', tmp);
         tmp   := copy(tmp, index, (l - index) + 1);
         j     := pos(' ', tmp);
         k     := pos(')', tmp);
         if (j = 0) and (k = 0) then
            j := length(tmp)
         else
            begin
               if (k < j) or (j = 0) then
                  j := k;
               dec(j);
            end;
         param := copy(tmp, 1, j);
         delete(param, 1, 1);
         delete(tmp, 1, 1);

         if awrParamE = 0 then
            awrParamE := awrCountParam + 1;
         AddParam(param);
      end;
   end;
end;

function TsqlAnaliza.AddParamIndex(valor : string) : integer;
begin
   if awrParamE = 0 then
      awrParamE := awrCountParam + 1;
   AddParam(valor);
   result := awrCountParam;
end;

procedure TsqlAnaliza.AddParams;
var
  i : integer;
begin
   clearParams;//limpia arreglo

   for i := 0 to qyConsulta.ParamCount - 1 do
   begin
      AddParam(qyConsulta.Params[i].Name);
   end;
end;

procedure TsqlAnaliza.clearFrom;
var
   i : integer;
begin
   for i := 1 to awrCountFrom do
   begin
      awrFrom[i] := '';
   end;
   awrCountFrom := 0;
end;

procedure TsqlAnaliza.AddFrom(valor : string);
begin
   inc(awrCountFrom);
   awrFrom[awrCountFrom] := valor;
end;

procedure TsqlAnaliza.clearWhere;
var
   i : integer;
begin
   for i := 1 to awrCountWhere do
   begin
      awrWhere[i] := '';
   end;
   awrCountWhere := 0;
end;

procedure TsqlAnaliza.AddWhere(valor : string);
begin
   inc(awrCountWhere);
   awrWhere[awrCountWhere] := valor;
end;

procedure TsqlAnaliza.clearWhereExtra;
var
   i : integer;
begin
   awrRows     := 0;
   awrHasta    := 0;
   awrNone     := 0;
   awrBusqueda := 0;

   for i := 1 to awrCountWhereExtra do
   begin
      awrWhereExtra[i] := '';
   end;
   awrCountWhereExtra := 0;
   clearParamsExtra;
end;

procedure TsqlAnaliza.AddWhereExtra(valor : string);
begin
   inc(awrCountWhereExtra);
   awrWhereExtra[awrCountWhereExtra] := valor;
end;

procedure TsqlAnaliza.clearOrder;
var
   i : integer;
begin
   for i := 1 to awrCountOrder do
   begin
      awrOrder[i] := '';
   end;
   awrCountOrder := 0;
end;

procedure TsqlAnaliza.AddOrder(valor : string);
begin
   inc(awrCountOrder);
   awrOrder[awrCountOrder] := valor;
end;

procedure TsqlAnaliza.clearGroup;
var
   i : integer;
begin
   for i := 1 to awrCountGroup do
   begin
      awrGroup[i] := '';
   end;
   awrCountGroup := 0;
end;

procedure TsqlAnaliza.AddGroup(valor : string);
begin
   inc(awrCountGroup);
   awrGroup[awrCountGroup] := valor;
end;

end.

