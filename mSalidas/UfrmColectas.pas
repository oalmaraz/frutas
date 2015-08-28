unit UfrmColectas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, IBModulo,
  Db, IBCustomDataSet, IBStoredProc,  Menus, ExtCtrls;

type
  TfrmColectas = class(TForm)
    edMil: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    edQuinientos: TEdit;
    edDocientos: TEdit;
    edCien: TEdit;
    edCincuenta: TEdit;
    edVeinte: TEdit;
    edDiez: TEdit;
    edCinco: TEdit;
    edDos: TEdit;
    edUno: TEdit;
    edCincuentaC: TEdit;
    edVeinteC: TEdit;
    edDiezC: TEdit;
    edRMil: TEdit;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    edRQuinientos: TEdit;
    edRDocientos: TEdit;
    edRCien: TEdit;
    edRCincuenta: TEdit;
    edRVeinte: TEdit;
    edRDiez: TEdit;
    edRCinco: TEdit;
    edRDos: TEdit;
    edRUno: TEdit;
    edRCincuentaC: TEdit;
    edRVeinteC: TEdit;
    edRDiezC: TEdit;
    Bevel1: TBevel;
    Bevel14: TBevel;
    laMonto: TLabel;
    edRGeneral: TEdit;
    spA_COLECTA: TIBStoredProc;
    spA_COLECTA_DETALLE: TIBStoredProc;
    spP_COLECTAS_AFECTADO: TIBStoredProc;
    paFunciones: TPanel;
    Panel1: TPanel;
    Label30: TLabel;
    laF12: TLabel;
    Panel2: TPanel;
    Label31: TLabel;
    laF11: TLabel;
    Panel3: TPanel;
    Label32: TLabel;
    laF10: TLabel;
    Panel4: TPanel;
    Label33: TLabel;
    laF9: TLabel;
    Panel5: TPanel;
    Label34: TLabel;
    laF8: TLabel;
    Panel6: TPanel;
    Label35: TLabel;
    laF7: TLabel;
    Panel7: TPanel;
    Label40: TLabel;
    laF6: TLabel;
    Panel8: TPanel;
    Label42: TLabel;
    laF5: TLabel;
    Panel9: TPanel;
    Label44: TLabel;
    laF4: TLabel;
    Panel10: TPanel;
    Label46: TLabel;
    laF3: TLabel;
    Panel11: TPanel;
    Label48: TLabel;
    laF2: TLabel;
    Panel14: TPanel;
    Label36: TLabel;
    laF1: TLabel;
    Panel15: TPanel;
    Label37: TLabel;
    laSalir: TLabel;
    ppFunciones: TPopupMenu;
    itemF1: TMenuItem;
    itemF2: TMenuItem;
    procedure edMilChange(Sender: TObject);
    procedure edQuinientosChange(Sender: TObject);
    procedure edDocientosChange(Sender: TObject);
    procedure edCienChange(Sender: TObject);
    procedure edCincuentaChange(Sender: TObject);
    procedure edVeinteChange(Sender: TObject);
    procedure edDiezChange(Sender: TObject);
    procedure edCincoChange(Sender: TObject);
    procedure edDosChange(Sender: TObject);
    procedure edUnoChange(Sender: TObject);
    procedure edCincuentaCChange(Sender: TObject);
    procedure edVeinteCChange(Sender: TObject);
    procedure edDiezCChange(Sender: TObject);
    procedure edMilKeyPress(Sender: TObject; var Key: Char);
    procedure edQuinientosKeyPress(Sender: TObject; var Key: Char);
    procedure edDocientosKeyPress(Sender: TObject; var Key: Char);
    procedure edCienKeyPress(Sender: TObject; var Key: Char);
    procedure edCincuentaKeyPress(Sender: TObject; var Key: Char);
    procedure edVeinteKeyPress(Sender: TObject; var Key: Char);
    procedure edDiezKeyPress(Sender: TObject; var Key: Char);
    procedure edCincoKeyPress(Sender: TObject; var Key: Char);
    procedure edDosKeyPress(Sender: TObject; var Key: Char);
    procedure edUnoKeyPress(Sender: TObject; var Key: Char);
    procedure edCincuentaCKeyPress(Sender: TObject; var Key: Char);
    procedure edVeinteCKeyPress(Sender: TObject; var Key: Char);
    procedure edRMilKeyPress(Sender: TObject; var Key: Char);
    procedure edRQuinientosKeyPress(Sender: TObject; var Key: Char);
    procedure edRDocientosKeyPress(Sender: TObject; var Key: Char);
    procedure edRCienKeyPress(Sender: TObject; var Key: Char);
    procedure edRCincuentaKeyPress(Sender: TObject; var Key: Char);
    procedure edRVeinteKeyPress(Sender: TObject; var Key: Char);
    procedure edRDiezKeyPress(Sender: TObject; var Key: Char);
    procedure edRCincoKeyPress(Sender: TObject; var Key: Char);
    procedure edRDosKeyPress(Sender: TObject; var Key: Char);
    procedure edRUnoKeyPress(Sender: TObject; var Key: Char);
    procedure edRCincuentaCKeyPress(Sender: TObject; var Key: Char);
    procedure edRVeinteCKeyPress(Sender: TObject; var Key: Char);
    procedure edRDiezCKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure laF1Click(Sender: TObject);
    procedure itemF1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure laSalirClick(Sender: TObject);
    procedure laF2Click(Sender: TObject);
    procedure itemF2Click(Sender: TObject);
  private
    { Private declarations }
    awrCaja       : integer;
    awrUsuario    : integer;
    awrAlmacen    : integer;
    awrMonto      : double;
    awrEfectivo   : integer;
    awrImpresora  : string;
    awrPuerto     : string;
    awrCaracteres : string;

    procedure Calcular;
    procedure agregarDetalle(p_id, p_cantidad : integer; p_monto : double; p_referencia : string);
    procedure commandoAbrirCajon;

    function abrirCajon : boolean;
  public
    { Public declarations }
  published
     property CAJA       : integer read awrCaja       write awrCaja;
     property USUARIO    : integer read awrUsuario    write awrUsuario;
     property ALMACEN    : integer read awrAlmacen    write awrAlmacen;
     property PUERTO     : string  read awrPuerto     write awrPuerto;
     property CARACTERES : string  read awrCaracteres write awrCaracteres;
     property IMPRESORA  : string  read awrImpresora  write awrImpresora;
  end;

var
  frmColectas: TfrmColectas;

implementation

uses
  IBData, PRN_0006_Colectas, UfrmAcceso, reglas_de_negocios;

{$R *.DFM}

procedure TfrmColectas.commandoAbrirCajon;
begin
   if awrImpresora <> '' then
   begin
   {
      tPrinter.abrir_puerto;

      if awrPuerto = 'LPT1' then
         tPrinter.PrinterPort := Lpt1
      else
      if awrPuerto = 'LPT2' then
         tPrinter.PrinterPort := Lpt2;

      tPrinter.CodeOpenDrawer := awrCaracteres;
      tPrinter.OpenDrawer;
      tPrinter.cerrar_puerto;
      }
   end
   else
   begin
     ShowMessage('Falta configuracion de impresion en punto de venta.');
   end;
end;

function TfrmColectas.abrirCajon : boolean;
var
   aceptar : boolean;
begin
   frmAcceso := TfrmAcceso.Create(Application);
   try
      frmAcceso.Nivel  := 5;
      frmAcceso.Status := 'Abrir Cajon';
      frmAcceso.ShowModal;
      aceptar := frmAcceso.Rsp;
   finally
      frmAcceso.Free;
   end;

   if aceptar then
   begin
      commandoAbrirCajon;
   end;   

   result := aceptar;
end;

procedure TfrmColectas.Calcular;
begin
   {
   awrMonto := (edMil.Value        * 1000) +
               (edQuinientos.Value * 500 ) +
               (edDocientos.Value  * 200 ) +
               (edCien.Value       * 100 ) +
               (edCincuenta.Value  * 50  ) +
               (edVeinte.Value     * 20  ) +
               (edDiez.Value       * 10  ) +
               (edCinco.Value      * 5   ) +
               (edDos.Value        * 2   ) +
               (edUno.Value              ) +
               (edCincuentaC.Value * 0.5 ) +
               (edVeinteC.Value    * 0.2 ) +
               (edDiezC.Value      * 0.1 );

   laMonto.Caption := FormatFloat('$ ###,###,##0.00', awrMonto);
   }
end;

procedure TfrmColectas.edMilChange(Sender: TObject);
begin
   Calcular;
end;

procedure TfrmColectas.edQuinientosChange(Sender: TObject);
begin
   Calcular;
end;

procedure TfrmColectas.edDocientosChange(Sender: TObject);
begin
   Calcular;
end;

procedure TfrmColectas.edCienChange(Sender: TObject);
begin
   Calcular;
end;

procedure TfrmColectas.edCincuentaChange(Sender: TObject);
begin
   Calcular;
end;

procedure TfrmColectas.edVeinteChange(Sender: TObject);
begin
   Calcular;
end;

procedure TfrmColectas.edDiezChange(Sender: TObject);
begin
   Calcular;
end;

procedure TfrmColectas.edCincoChange(Sender: TObject);
begin
   Calcular;
end;

procedure TfrmColectas.edDosChange(Sender: TObject);
begin
   Calcular;
end;

procedure TfrmColectas.edUnoChange(Sender: TObject);
begin
   Calcular;
end;

procedure TfrmColectas.edCincuentaCChange(Sender: TObject);
begin
   Calcular;
end;

procedure TfrmColectas.edVeinteCChange(Sender: TObject);
begin
   Calcular;
end;

procedure TfrmColectas.edDiezCChange(Sender: TObject);
begin
   Calcular;
end;

procedure TfrmColectas.edMilKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
      edQuinientos.SetFocus;
end;

procedure TfrmColectas.edQuinientosKeyPress(Sender: TObject;
  var Key: Char);
begin
   if Key = #13 then
      edDocientos.SetFocus;
end;

procedure TfrmColectas.edDocientosKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
      edCien.SetFocus;
end;

procedure TfrmColectas.edCienKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
      edCincuenta.SetFocus;
end;

procedure TfrmColectas.edCincuentaKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
      edVeinte.SetFocus;
end;

procedure TfrmColectas.edVeinteKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
      edDiez.SetFocus;
end;

procedure TfrmColectas.edDiezKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
      edCinco.SetFocus;
end;

procedure TfrmColectas.edCincoKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
      edDos.SetFocus;
end;

procedure TfrmColectas.edDosKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
      edUno.SetFocus;
end;

procedure TfrmColectas.edUnoKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
      edCincuentaC.SetFocus;
end;

procedure TfrmColectas.edCincuentaCKeyPress(Sender: TObject;
  var Key: Char);
begin
   if Key = #13 then
      edVeinteC.SetFocus;
end;

procedure TfrmColectas.edVeinteCKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
      edDiezC.SetFocus;
end;

procedure TfrmColectas.edRMilKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
      edRQuinientos.SetFocus;
end;

procedure TfrmColectas.edRQuinientosKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
      edRDocientos.SetFocus;
end;

procedure TfrmColectas.edRDocientosKeyPress(Sender: TObject;
  var Key: Char);
begin
   if Key = #13 then
      edRCien.SetFocus;
end;

procedure TfrmColectas.edRCienKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
      edRCincuenta.SetFocus;
end;

procedure TfrmColectas.edRCincuentaKeyPress(Sender: TObject;
  var Key: Char);
begin
   if Key = #13 then
      edRVeinte.SetFocus;
end;

procedure TfrmColectas.edRVeinteKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
      edRDiez.SetFocus;
end;

procedure TfrmColectas.edRDiezKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
      edRCinco.SetFocus;
end;

procedure TfrmColectas.edRCincoKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
      edRDos.SetFocus;
end;

procedure TfrmColectas.edRDosKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
      edRUno.SetFocus;
end;

procedure TfrmColectas.edRUnoKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
      edRCincuentaC.SetFocus;
end;

procedure TfrmColectas.edRCincuentaCKeyPress(Sender: TObject;
  var Key: Char);
begin
   if Key = #13 then
      edRVeinteC.SetFocus;
end;

procedure TfrmColectas.edRVeinteCKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
      edRDiezC.SetFocus;
end;

procedure TfrmColectas.edRDiezCKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
      edRGeneral.SetFocus;
end;

procedure TfrmColectas.agregarDetalle(p_id, p_cantidad : integer; p_monto : double; p_referencia : string);
begin
   spA_COLECTA_DETALLE.ParamByName('P_ID').AsInteger        := p_id;
   spA_COLECTA_DETALLE.ParamByName('P_CC').AsInteger        := awrEfectivo;
   spA_COLECTA_DETALLE.ParamByName('P_CANTIDAD').AsInteger  := p_cantidad;
   spA_COLECTA_DETALLE.ParamByName('P_MONTO').AsFloat       := p_monto;
   spA_COLECTA_DETALLE.ParamByName('P_REFERENCIA').AsString := p_referencia;
   spA_COLECTA_DETALLE.ParamByName('P_BANCO').AsInteger     := 0;
   spA_COLECTA_DETALLE.ExecProc;
   spA_COLECTA_DETALLE.Transaction.CommitRetaining;
end;

procedure TfrmColectas.FormCreate(Sender: TObject);
begin
   dmIBData.TPreferencias.Filter := 'ID = 11';
   awrEfectivo := dmIBData.TPreferencias.FieldByName('VALOR').AsInteger;
end;

procedure TfrmColectas.laF1Click(Sender: TObject);
var
   aceptar : boolean;
   usr     : integer;
begin
   frmAcceso := TfrmAcceso.Create(Application);
   try
      frmAcceso.Nivel  := 5;
      frmAcceso.Status := 'Afectar';
      frmAcceso.ShowModal;
      aceptar := frmAcceso.Rsp;
      usr     := frmAcceso.Usr;
   finally
      frmAcceso.Free;
   end;

   if aceptar and (usr <> reglas.dame_usuario) then
   begin
      spA_COLECTA.ParamByName('P_CAJA').AsInteger       := awrCaja;
      spA_COLECTA.ParamByName('P_TIPO').AsString        := 'Ventas';
      spA_COLECTA.ParamByName('P_ALMACEN').AsInteger    := awrAlmacen;
      spA_COLECTA.ParamByName('P_USUARIO').AsInteger    := awrUsuario;
      spA_COLECTA.ParamByName('P_SUPERVISOR').AsInteger := usr;
      spA_COLECTA.ParamByName('P_REFERENCIA').AsString  := edRGeneral.Text;
      spA_COLECTA.ExecProc;
      spA_COLECTA.Transaction.CommitRetaining;
      {
      if edMil.Value <> 0 then
         agregarDetalle(spA_COLECTA.ParamByName('R_ID').AsInteger, StrToInt(FormatFloat('########0',edMil.Value)),        1000, edRMil.Text);
      if edQuinientos.Value <> 0 then
         agregarDetalle(spA_COLECTA.ParamByName('R_ID').AsInteger, StrToInt(FormatFloat('########0',edQuinientos.Value)),  500, edRQuinientos.Text);
      if edDocientos.Value <> 0 then
         agregarDetalle(spA_COLECTA.ParamByName('R_ID').AsInteger, StrToInt(FormatFloat('########0',edDocientos.Value)),   200, edRDocientos.Text);
      if edCien.Value <> 0 then
         agregarDetalle(spA_COLECTA.ParamByName('R_ID').AsInteger, StrToInt(FormatFloat('########0',edCien.Value)),        100, edRCien.Text);
      if edCincuenta.Value <> 0 then
         agregarDetalle(spA_COLECTA.ParamByName('R_ID').AsInteger, StrToInt(FormatFloat('########0',edCincuenta.Value)),    50, edRCincuenta.Text);
      if edVeinte.Value <> 0 then
         agregarDetalle(spA_COLECTA.ParamByName('R_ID').AsInteger, StrToInt(FormatFloat('########0',edVeinte.Value)),       20, edRVeinte.Text);
      if edDiez.Value <> 0 then
         agregarDetalle(spA_COLECTA.ParamByName('R_ID').AsInteger, StrToInt(FormatFloat('########0',edDiez.Value)),         10, edRDiez.Text);
      if edCinco.Value <> 0 then
         agregarDetalle(spA_COLECTA.ParamByName('R_ID').AsInteger, StrToInt(FormatFloat('########0',edCinco.Value)),         5, edRCinco.Text);
      if edDos.Value <> 0 then
         agregarDetalle(spA_COLECTA.ParamByName('R_ID').AsInteger, StrToInt(FormatFloat('########0',edDos.Value)),           2, edRDos.Text);
      if edUno.Value <> 0 then
         agregarDetalle(spA_COLECTA.ParamByName('R_ID').AsInteger, StrToInt(FormatFloat('########0',edUno.Value)),           1, edRUno.Text);
      if edCincuentaC.Value <> 0 then
         agregarDetalle(spA_COLECTA.ParamByName('R_ID').AsInteger, StrToInt(FormatFloat('########0',edCincuentaC.Value)), 0.50, edRCincuentaC.Text);
      if edVeinteC.Value <> 0 then
         agregarDetalle(spA_COLECTA.ParamByName('R_ID').AsInteger, StrToInt(FormatFloat('########0',edVeinteC.Value)),    0.20, edRVeinteC.Text);
      if edDiezC.Value <> 0 then
         agregarDetalle(spA_COLECTA.ParamByName('R_ID').AsInteger, StrToInt(FormatFloat('########0',edDiezC.Value)),      0.10, edRDiezC.Text);

      spP_COLECTAS_AFECTADO.ParamByName('P_COLECTA').AsInteger := spA_COLECTA.ParamByName('R_ID').AsInteger;
      spP_COLECTAS_AFECTADO.ExecProc;
      spP_COLECTAS_AFECTADO.Transaction.CommitRetaining;

         frmPRN_0006 := TfrmPRN_0006.Create(Application);
         try
            frmPRN_0006.ID := spA_COLECTA.ParamByName('R_ID').AsInteger;
            if frmPRN_0006.OpenReporte then
               frmPRN_0006.imprimir;
         finally
            frmPRN_0006.Free;
         end;

      self.ModalResult := mrOk;
      }
   end
   else
   if (usr = reglas.dame_usuario) then
   begin
     ShowMessage('Para autoizar el movimiento, debes ser diferente el supervisor y cajero.');
   end
end;

procedure TfrmColectas.itemF1Click(Sender: TObject);
begin
   laF1Click(Sender);
end;

procedure TfrmColectas.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #27 then
   begin
      laSalirClick(Sender);
   end
end;

procedure TfrmColectas.laSalirClick(Sender: TObject);
begin
   self.ModalResult := mrCancel;
end;

procedure TfrmColectas.laF2Click(Sender: TObject);
begin
   abrirCajon;
end;

procedure TfrmColectas.itemF2Click(Sender: TObject);
begin
   laF2Click(Sender);
end;

end.
