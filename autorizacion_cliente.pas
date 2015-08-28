unit autorizacion_cliente;

interface

uses
  UAWR, Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, IBCustomDataSet, IBStoredProc, IBDatabaseInfo, ExtCtrls,
   ComCtrls,  StdCtrls, jpeg, DBCtrls,
       Buttons;

type
  TfrmAplicacionCliente = class(TForm)
    tiEmpezar: TTimer;
    diInformacion: TIBDatabaseInfo;
    lbUsuarios: TListBox;
    dtNombre: TDBText;
    laServidor: TLabel;
    laBaseDeDatos: TLabel;
    laRuta: TLabel;
    tiCerrar: TTimer;
    spFECHA_SERVIDOR: TIBStoredProc;
    Label3: TLabel;
    laVersion: TLabel;
    Label12: TLabel;
    laMaquina: TLabel;
    edGen1: TEdit;
    edGen2: TEdit;
    edGen3: TEdit;
    edGen4: TEdit;
    laMaqG3: TLabel;
    laMaqG2: TLabel;
    laMaqG1: TLabel;
    laPrograma: TLabel;
    edAct1: TEdit;
    laPrgG1: TLabel;
    edAct2: TEdit;
    laPrgG2: TLabel;
    edAct3: TEdit;
    laPrgG3: TLabel;
    edAct4: TEdit;
    paConn: TPanel;
    spFECHA_SERVIDOR_SH: TIBStoredProc;
    Shape1: TShape;
    ibCerrar: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tiEmpezarTimer(Sender: TObject);
    procedure ibCerrarClick(Sender: TObject);
    procedure tiCerrarTimer(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    esStandalone : boolean;
    verMayor     : string;
    verMenor     : string;
    verLiberada  : string;
    vAWR         : TAWR; 
    conteo_empezar : integer;
    function servidor : boolean;
    function licencias : boolean;
    function fecha : boolean;
    procedure setLiberada(valor : string);
    procedure vigencia;
  public
    { Public declarations }
  published
    property vMayor    : string read verMayor write verMayor;
    property vMenor    : string read verMenor write verMenor;
    property vLiberada : string read verLiberada write setLiberada;
  end;

var
  frmAplicacionCliente: TfrmAplicacionCliente;

implementation

uses
   IBData, ruta, reglas_de_negocios, IBModulo, IB;

{$R *.DFM}
{$R GLOBO.RES}

procedure TfrmAplicacionCliente.vigencia;
var
   vFechaCer : TDatetime;
   vFechaSrv : TDatetime;
begin
   spFECHA_SERVIDOR_SH.ExecProc;
   vFechaSrv := spFECHA_SERVIDOR_SH.ParamByName('R_FECHA').AsDateTime;
   vFechaCer := vAWR.FechaCer;

   if vFechaSrv > vFechaCer then
      Application.Terminate; 
end;

procedure TfrmAplicacionCliente.setLiberada(valor : string);
begin
   verLiberada := valor;
end;

function TfrmAplicacionCliente.fecha : boolean;
var
   tmp                  : boolean;
   diferencia           : TDateTime;
   diferencia_horas     : word;//fecha y hora actual - fecha y hora actualizada
   diferencia_minutos   : word;
   diferencia_segundos  : word;
   diferencia_msegundos : word;
begin
  tmp := TRUE;
  spFECHA_SERVIDOR.ExecProc;
  diferencia := spFECHA_SERVIDOR.ParamByName('R_FECHA').AsDatetime - dmIBData.taPreferencias.FieldByName('FECHA').AsDatetime;
  DecodeTime(diferencia,diferencia_horas,diferencia_minutos,diferencia_segundos,diferencia_msegundos);
  if not(diferencia_horas < 1) or not(diferencia_minutos <= 5)  then
  begin
     // 'Error en Servidor';
     // 'No tiene activado el servicio [HORAS], para APM/erp '+#13+#13+'Diferencia: '+IntToStr(diferencia_horas)+':'+IntToStr(diferencia_minutos)+':'+IntToStr(diferencia_segundos);
     ShowMessage('No tiene activado el servicio [HORAS], para APM/erp '+#13+#13+'Diferencia: '+IntToStr(diferencia_horas)+':'+IntToStr(diferencia_minutos)+':'+IntToStr(diferencia_segundos));
     tmp := FALSE;
  end;
  Result := tmp;               
end;

function TfrmAplicacionCliente.servidor : boolean;
var
   tmp : boolean;
begin
   tmp := TRUE;
   if not(dmIBData.taPreferencias.FieldByName('SERVER_ACTIVO').AsString = 'Si') then
   begin
      //Servidor
      //Actualmente tiene desactivado al servidor.
      ShowMessage('Actualmente tiene desactivado al servidor.');
      tmp := FALSE;
   end;
   Result := tmp;
end;

function TfrmAplicacionCliente.licencias : boolean;
var
   cuantas : integer;
   tmp     : boolean;
   cadena  : string;
begin
   tmp := TRUE;
   lbUsuarios.Items.Clear;
   lbUsuarios.Items.AddStrings(diInformacion.UserNames);
   cuantas := lbUsuarios.Items.Count - 1;
   cadena  := IntToStr(cuantas);
   if cuantas > dmIBData.taPreferencias.FieldByName('LICENCIAS').AsInteger then
   begin
      //Licencias
      //El numero de licencias de usuarios que tiene para este servidor, llego a su nivel maximo
      ShowMessage('El numero de licencias de usuarios que tiene para este servidor, llego a su nivel maximo');
      tmp := FALSE;
   end;
   Result := tmp;
end;

procedure TfrmAplicacionCliente.FormActivate(Sender: TObject);
begin
  conteo_empezar    := 0;
  tiEmpezar.Enabled := TRUE;

  laVersion.Caption := verMayor+'.'+verMenor+'.'+verLiberada;
end;

procedure TfrmAplicacionCliente.FormCreate(Sender: TObject);
var
   sys  : string;
   maq  : string;
begin
   vAWR        := TAWR.Create;
   vAWR.IniApp := ChangeFileExt(Application.ExeName,'.INI');
   vAWR.leerIni;

   reglas.fijar_registros;

   esStandalone := true;

{   if esStandalone then
   begin
      laModo.Caption := 'Stand-alone';}


      sys := vAWR.dameSistema;
      edGen1.Text := copy(sys,  1, 6);
      edGen2.Text := copy(sys,  7, 6);
      edGen3.Text := copy(sys, 13, 6);
      edGen4.Text := copy(sys, 19, 6);

      maq := vAWR.dameCertificado;
      edAct1.Text := copy(maq,  1, 6);
      edAct2.Text := copy(maq,  7, 6);
      edAct3.Text := copy(maq, 13, 6);
      edAct4.Text := copy(maq, 19, 6);
{   end
   else
      begin
         laModo.Caption := 'Concurrente';
      end;}

   laServidor.Caption    := reglas.dame_servidor;
   laBaseDeDatos.Caption := reglas.dame_basededatos;
   laRuta.Caption        := reglas.dame_ruta;
   if not(dmIBModulo.ibInformar.Connected) then
   begin
     try
       reglas.abrir_base_de_datos(dmIBModulo.ibInformar, reglas.dame_llave, laServidor.Caption, laRuta.Caption, 'informar.awr');
       vigencia;
     except
       on EIBInterBaseError do
       begin
          //Base de datos
          //Error de conexion
          ShowMessage('Error de conexion');
          Application.Terminate;
       end;
     end;
   end;
end;

procedure TfrmAplicacionCliente.tiEmpezarTimer(Sender: TObject);
var
   tmp : boolean;
begin
    inc(conteo_empezar);
   if conteo_empezar = 2 then
   begin
      tmp := esStandalone;
      try
         reglas.abrir_IBTabla(dmIBData.taPreferencias);
         if not(esStandalone) then
         begin
            tmp := servidor;
            if tmp then
               tmp := licencias;
            if tmp then
               tmp := fecha;
         end;
         reglas.fijar_entrada(tmp);
         tiEmpezar.Enabled := FALSE;
         conteo_empezar    := 0;
         tiCerrar.Enabled  := TRUE;
      except
        on EIBInterBaseError do
        begin
           ShowMessage('Error de conexion');
           Application.Terminate;
        end;
      end;
   end;
end;

procedure TfrmAplicacionCliente.ibCerrarClick(Sender: TObject);
begin
   Application.Terminate;
end;

procedure TfrmAplicacionCliente.tiCerrarTimer(Sender: TObject);
begin
   inc(conteo_empezar);
   if conteo_empezar = 2 then
   begin
     Close;
   end;
end;

procedure TfrmAplicacionCliente.FormDestroy(Sender: TObject);
begin
   vAWR.Free;
end;

end.
