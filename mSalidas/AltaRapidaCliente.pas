unit AltaRapidaCliente;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, IBStoredProc, Db, IBCustomDataSet, IBQuery,
  ExtCtrls,  DBCtrls;

type
  TfrmAltaRapidaCliente = class(TForm)
    paEncabezado: TPanel;
    fcImager1: TImage;
    Label6: TLabel;
    edClave: TEdit;
    Label7: TLabel;
    edNombre: TEdit;
    Label4: TLabel;
    cbSexo: TComboBox;
    edTelefono: TEdit;
    Label8: TLabel;
    Bevel1: TBevel;
    qyCiudades: TIBQuery;
    qyCiudadesR_ID: TIntegerField;
    qyCiudadesR_DESCRIPCION: TIBStringField;
    dsCiudades: TDataSource;
    Label9: TLabel;
    edCalle: TEdit;
    Label12: TLabel;
    edNumExt: TEdit;
    edLetra: TEdit;
    Label13: TLabel;
    edNumInt: TEdit;
    Label14: TLabel;
    Label15: TLabel;
    edCP: TEdit;
    Label10: TLabel;
    edECalle: TEdit;
    Label11: TLabel;
    edYCalle: TEdit;
    Label16: TLabel;
    edColonia: TEdit;
    Label17: TLabel;
    cbCiudades: TDBLookupComboBox;
    buRefreshC: TSpeedButton;
    paBotones: TPanel;
    buGuardar: TBitBtn;
    buSalir: TBitBtn;
    spAUTO_FOLIO: TIBStoredProc;
    spA_RAPIDO_CLIENTE: TIBStoredProc;
    Label1: TLabel;
    edRSocial: TEdit;
    Label3: TLabel;
    cbFacturarA: TComboBox;
    edRFC: TEdit;
    Label2: TLabel;
    Label5: TLabel;
    edEmail: TEdit;
    dsTelefonosTipos: TDataSource;
    qyTelefonosTipos: TIBQuery;
    qyTelefonosTiposID: TIntegerField;
    qyTelefonosTiposTIPO: TIBStringField;
    laTelefonoTipo: TLabel;
    cbTelefonosTipos: TDBLookupComboBox;
    sbRefreshTelefonosTipos: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure buSalirClick(Sender: TObject);
    procedure buGuardarClick(Sender: TObject);
    procedure buRefreshCClick(Sender: TObject);
    procedure sbRefreshTelefonosTiposClick(Sender: TObject);
  private
    { Private declarations }
    awrCliente : integer;
    procedure guardar(ciudad : integer);
    procedure autofolio;
    function validacion : boolean;
  public
    { Public declarations }
  published
    property CLIENTE : integer read awrCliente write awrCliente;
  end;

var
  frmAltaRapidaCliente: TfrmAltaRapidaCliente;

implementation

uses
  IBModulo, reglas_de_negocios;

{$R *.DFM}

procedure TfrmAltaRapidaCliente.autofolio;
var
   tmp  : string;
   cli  : integer;
   i    : integer;
begin
   cli := 0;
   tmp := UpperCase(Self.Caption);
   for i := 0 to length(tmp) do
      cli := cli + ord(tmp[i]);
   spAUTO_FOLIO.ParamByName('P_SUBCLASE').AsInteger := cli;
   spAUTO_FOLIO.ExecProc;
   spAUTO_FOLIO.Transaction.CommitRetaining;

   edClave.Text := reglas.rellenar(StrToInt(spAUTO_FOLIO.ParamByName('R_FOLIO').AsString), 10);
end;

function TfrmAltaRapidaCliente.validacion : boolean;
var
   tmp   : Boolean;
begin
   tmp   := false;

   if (cbSexo.ItemIndex <> -1) and
      (cbFacturarA.ItemIndex <> -1) and
      (edNombre.Text <> '') and
      (cbCiudades.KeyValue <> -3) then
   begin
      tmp := true;
   end
   else
      if (edNombre.Text = '') then
      begin
         ShowMessage('Falta NOMBRE');
         edNombre.SetFocus;
      end
      else
      if (cbSexo.ItemIndex = -1) then
      begin
         ShowMessage('Falta seleccionar el SEXO.');
         cbSexo.SetFocus;
      end
      else
      if (cbFacturarA.ItemIndex = -1) then
      begin
         ShowMessage('Falta seleccionar el SEXO.');
         cbFacturarA.SetFocus;
      end
      else
      if (cbCiudades.KeyValue = -3) then
      begin
         ShowMessage('Falta seleccionar CIUDAD');
         cbCiudades.SetFocus;
      end;

   result := tmp;
end;

procedure TfrmAltaRapidaCliente.FormCreate(Sender: TObject);
begin
   reglas.refresh_IBQuery(qyCiudades);
   reglas.refresh_IBQuery(qyTelefonosTipos);

   awrCliente := 0;

   autofolio;
   cbSexo.ItemIndex          := 1;
   cbCiudades.KeyValue       := -3;
   cbTelefonosTipos.KeyValue := dsTelefonosTipos.DataSet.FieldByName('ID').AsInteger;
   cbFacturarA.ItemIndex     := 0;
end;

procedure TfrmAltaRapidaCliente.buSalirClick(Sender: TObject);
begin
   awrCliente := 0;
end;

procedure TfrmAltaRapidaCliente.buGuardarClick(Sender: TObject);
var
   ciudad : integer;
begin
   if validacion then
   begin
      ciudad := 0;
      if (cbCiudades.KeyValue <> -3) then
         ciudad := cbCiudades.KeyValue;

      guardar(ciudad);
   end;
end;

procedure TfrmAltaRapidaCliente.buRefreshCClick(Sender: TObject);
begin
   reglas.refresh_IBQuery(qyCiudades);
end;

procedure TfrmAltaRapidaCliente.guardar(ciudad : integer);
begin
   spA_RAPIDO_CLIENTE.ParamByName('P_CLAVE').AsString            := edClave.Text;
   spA_RAPIDO_CLIENTE.ParamByName('P_NOMBRE').AsString           := edNombre.Text;
   spA_RAPIDO_CLIENTE.ParamByName('P_RAZON_SOCIAL').AsString     := edRSocial.Text;
   spA_RAPIDO_CLIENTE.ParamByName('P_TELEFONO').AsString         := edTelefono.Text;
   spA_RAPIDO_CLIENTE.ParamByName('P_RFC').AsString              := edRFC.Text;
   spA_RAPIDO_CLIENTE.ParamByName('P_EMAIL').AsString            := edEmail.Text;
   spA_RAPIDO_CLIENTE.ParamByName('P_CALLE').AsString            := edCalle.Text;
   spA_RAPIDO_CLIENTE.ParamByName('P_ENTRE_CALLE').AsString      := edECalle.Text;
   spA_RAPIDO_CLIENTE.ParamByName('P_Y_CALLE').AsString          := edYCalle.Text;
   spA_RAPIDO_CLIENTE.ParamByName('P_NUM_EXT').AsString          := edNumExt.Text;
   spA_RAPIDO_CLIENTE.ParamByName('P_NUM_INT').AsString          := edNumInt.Text;
   spA_RAPIDO_CLIENTE.ParamByName('P_LETRA').AsString            := edLetra.Text;
   spA_RAPIDO_CLIENTE.ParamByName('P_CP').AsString               := edCP.Text;
   spA_RAPIDO_CLIENTE.ParamByName('P_COLONIA').AsString          := edColonia.Text;
   spA_RAPIDO_CLIENTE.ParamByName('P_CIUDAD').AsInteger          := ciudad;
   spA_RAPIDO_CLIENTE.ParamByName('P_SEXO').AsString             := cbSexo.Text;
   spA_RAPIDO_CLIENTE.ParamByName('P_FACTURAR_A').AsString       := cbFacturarA.Text;
   spA_RAPIDO_CLIENTE.ParamByName('P_TIPO').AsInteger            := cbTelefonosTipos.KeyValue;
   spA_RAPIDO_CLIENTE.ParamByName('P_ESTATUS').AsString          := 'Activo';
   spA_RAPIDO_CLIENTE.ExecProc;
   spA_RAPIDO_CLIENTE.Transaction.CommitRetaining;

   awrCliente := spA_RAPIDO_CLIENTE.ParamByName('R_ID').AsInteger;
   Close;
end;

procedure TfrmAltaRapidaCliente.sbRefreshTelefonosTiposClick(
  Sender: TObject);
begin
  reglas.refresh_IBQuery(qyTelefonosTipos);
end;

end.
