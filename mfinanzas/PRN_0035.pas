unit PRN_0035;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
     ImgList,   ComCtrls,
     StdCtrls,
     ExtCtrls,

   Buttons, Mask, DBCtrls, System.ImageList;

type
  TfrmPRN_0035 = class(TForm)
    ilCortes: TImageList;
    Panel1: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    fcImager7: TImage;
    paDatos: TPanel;
    fcImager6: TImage;
    Label3: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    laProveedorDEL: TLabel;
    laProveedorAl: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    edFechaDEL: TDBEdit;
    edFechaAL: TDBEdit;
    edProveedorDEL: TEdit;
    edProveedorAL: TEdit;
    edNombreDEL: TEdit;
    edNombreAL: TEdit;
    cbProveedorDEL: TCheckBox;
    cbProveedorAL: TCheckBox;
    cbEstatusMov: TComboBox;
    pcCortes: TPageControl;
    tsNormal: TTabSheet;
    paCortes: TPanel;
    fcImager1: TImage;
    laRangoDeFechas: TBitBtn;
    laClientes: TBitBtn;
    tsMovimientos: TTabSheet;
    paMovimientos: TPanel;
    fcImager2: TImage;
    hlMovVtas: TBitBtn;
    hlMovCXC: TBitBtn;
    JvHotLink2: TBitBtn;
    Label13: TLabel;
    cbMonedas: TDBLookupComboBox;
    buActMoneda: TBitBtn;
    buLimMoneda: TBitBtn;
    cbVencimiento: TCheckBox;
    sbHijo: TPanel;
    ibSalir: TBitBtn;
    procedure ibSalirClick(Sender: TObject);
    procedure laRangoDeFechasClick(Sender: TObject);
    procedure laClientesClick(Sender: TObject);
    procedure laRangoDeFechasDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure JvHotLink2Click(Sender: TObject);
    procedure JvHotLink2DblClick(Sender: TObject);
    procedure hlMovVtasClick(Sender: TObject);
    procedure hlMovCXCClick(Sender: TObject);
    procedure edProveedorDELKeyPress(Sender: TObject; var Key: Char);
    procedure edProveedorDELButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure edProveedorALButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure edProveedorALKeyPress(Sender: TObject; var Key: Char);
    procedure hlMovVtasDblClick(Sender: TObject);
    procedure hlMovCXCDblClick(Sender: TObject);
    procedure buActMonedaClick(Sender: TObject);
    procedure buLimMonedaClick(Sender: TObject);
  private
    { Pri$vate declarations }
    procedure habilitar(pEstatus, pDel, pAl, pMoneda, pProveedorDel, pProveedorAl : boolean);
    procedure focusFechas;
  public
    { Public declarations }
  end;

var
  frmPRN_0035: TfrmPRN_0035;

implementation

uses
  PRN_0017_ESTADOS_CXP, reglas_de_negocios, UfrmSeleccionarProveedor,
  IBModulo, UPRN_0003, Uprn_0004, IBData;

{$R *.DFM}

procedure TfrmPRN_0035.habilitar(pEstatus, pDel, pAl, pMoneda, pProveedorDel, pProveedorAl : boolean);
begin
   cbEstatusMov.Enabled   := pEstatus;
   edFechaDel.Enabled     := pDel;
   edFechaAl.Enabled      := pAl;
   cbMonedas.Enabled      := pMoneda;
   buActMoneda.Enabled    := pMoneda;
   buLimMoneda.Enabled    := pMoneda;
   edProveedorDel.Enabled := pProveedorDel;
   edNombreDel.Enabled    := pProveedorDel;
   edProveedorAl.Enabled  := pProveedorAl;
   edNombreAl.Enabled     := pProveedorAl;
end;

procedure TfrmPRN_0035.focusFechas;
var
   entro : boolean;
begin
   entro := false;
   if edFechaDel.Focused then
   begin
      edFechaAl.SetFocus;
      edFechaDel.SetFocus;
      entro := true;
   end;

   if edFechaAl.Focused and not(entro) then
   begin
      edFechaDel.SetFocus;
      edFechaAl.SetFocus;
   end;
end;

procedure TfrmPRN_0035.ibSalirClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmPRN_0035.laRangoDeFechasClick(Sender: TObject);
begin
   habilitar(false, true, true, true, true, false);
end;

procedure TfrmPRN_0035.laClientesClick(Sender: TObject);
begin
   cbEstatusMov.Enabled := false;
   edProveedorDEL.Enabled := true;
   edProveedorAL.Enabled  := true;
   edFechaDEL.Enabled   := false;
   edFechaAl.Enabled    := false;
end;

procedure TfrmPRN_0035.laRangoDeFechasDblClick(Sender: TObject);
var
   reporte : TfrmPRN_0017;
   venc    : string;
begin
  reporte := nil;
  try
     focusFechas;

     venc := 'No';
     if cbVencimiento.Checked then
        venc := 'Si';

     reporte               := TfrmPRN_0017.Create(Application);
     reporte.FECHA_INICIAL := StrToDateTime(edFechaDEL.Text);
     reporte.FECHA_FINAL   := StrToDateTime(edFechaAL.Text);
     reporte.PROVEEDOR     := edProveedorDel.Tag;
     reporte.MONEDA        := cbMonedas.KeyValue;
     reporte.VENCIMIENTO   := venc;
     reporte.Open;
     reporte.PreviewGral;
  finally
     reporte.Release;
  end;
end;

procedure TfrmPRN_0035.FormCreate(Sender: TObject);
begin
   edFechaDEL.Text := DateToStr(reglas.dame_fecha - 30);//un mes anterior a la fecha actual
   edFechaAl.Text  := DateToStr( reglas.dame_fecha);

   reglas.refresh_IBQuery(dmIBData.qyMonedas);
end;

procedure TfrmPRN_0035.JvHotLink2Click(Sender: TObject);
begin
   habilitar(false, true, true, true, true, false);
end;

procedure TfrmPRN_0035.JvHotLink2DblClick(Sender: TObject);
var
   reporte : TfrmPRN_0017;
   venc    : string;
begin
  reporte := nil;
  try
     focusFechas;

     venc := 'No';
     if cbVencimiento.Checked then
        venc := 'Si';

     reporte               := TfrmPRN_0017.Create(Application);
     reporte.FECHA_INICIAL := StrToDateTime(edFechaDEL.Text);
     reporte.FECHA_FINAL   := StrToDateTime(edFechaAL.Text);
     reporte.PROVEEDOR     := edProveedorDEL.Tag;
     reporte.MONEDA        := cbMonedas.KeyValue;
     reporte.VENCIMIENTO   := venc;
     reporte.Open;
     reporte.PreviewProv;
  finally
     reporte.Release;
  end;
end;

procedure TfrmPRN_0035.hlMovVtasClick(Sender: TObject);
begin
   habilitar(false, true, true, true, true, false);
end;

procedure TfrmPRN_0035.hlMovCXCClick(Sender: TObject);
begin
   habilitar(true, true, true, true, true, false);
end;

procedure TfrmPRN_0035.edProveedorDELKeyPress(Sender: TObject;
  var Key: Char);
begin
   if key = #13 then
   begin
      edProveedorDELButtonClick(Sender, 0);
   end;
end;

procedure TfrmPRN_0035.edProveedorDELButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
   case AbsoluteIndex of
     0: begin
           frmSeleccionarProveedor             := TfrmSeleccionarProveedor.Create(Application);
           frmSeleccionarProveedor.DATABASE    := dmIBModulo.ibSistema;
           frmSeleccionarProveedor.TRANSACTION := dmIBModulo.ibSistemaTransaccion;
           frmSeleccionarProveedor.CLAVE       := edProveedorDEL.Text;
           if frmSeleccionarProveedor.abrirConsulta then
           begin
              frmSeleccionarProveedor.ShowModal;
              if frmSeleccionarProveedor.ACEPTAR then
              begin
                 edProveedorDEL.Tag     := frmSeleccionarProveedor.ID;
                 edProveedorDEL.Text    := frmSeleccionarProveedor.CLAVE;
                 edNombreDEL.Text       := frmSeleccionarProveedor.NOMBRE;
                 cbProveedorDEL.Checked := false;
                 //edProveedorDEL.SetSelection(Length(edProveedorDEL.Text),Length(edProveedorDEL.Text),false);
              end;
           end
           else
              begin
                 edProveedorDEL.Tag     := frmSeleccionarProveedor.ID;
                 edProveedorDEL.Text    := frmSeleccionarProveedor.CLAVE;
                 edNombreDEL.Text       := frmSeleccionarProveedor.NOMBRE;
                 cbProveedorDEL.Checked := false;
                 //edProveedorDEL.SetSelection(Length(edProveedorDEL.Text),Length(edProveedorDEL.Text),false);
              end;
           frmSeleccionarProveedor.Free;
           frmSeleccionarProveedor := nil;
        end;
     1: begin
           edProveedorDEL.Clear;
           edNombreDEL.Text     := '<FALTA>';
           edProveedorDEL.Tag     := 0;
           cbProveedorDEL.Checked := true;
        end;
   end;
end;

procedure TfrmPRN_0035.edProveedorALButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
   case AbsoluteIndex of
     0: begin
           frmSeleccionarProveedor := TfrmSeleccionarProveedor.Create(Application);
           frmSeleccionarProveedor.DATABASE    := dmIBModulo.ibSistema;
           frmSeleccionarProveedor.TRANSACTION := dmIBModulo.ibSistemaTransaccion;
           frmSeleccionarProveedor.CLAVE := edProveedorAL.Text;
           if frmSeleccionarProveedor.abrirConsulta then
           begin
              frmSeleccionarProveedor.ShowModal;
              if frmSeleccionarProveedor.ACEPTAR then
              begin
                 edProveedorAL.Tag     := frmSeleccionarProveedor.ID;
                 edProveedorAL.Text    := frmSeleccionarProveedor.CLAVE;
                 edNombreAL.Text     := frmSeleccionarProveedor.NOMBRE;
                 cbProveedorAL.Checked := false;
                 //edProveedorAL.SetSelection(Length(edProveedorAL.Text),Length(edProveedorAL.Text),false);
              end;
           end
           else
              begin
                 edProveedorAL.Tag     := frmSeleccionarProveedor.ID;
                 edProveedorAL.Text    := frmSeleccionarProveedor.CLAVE;
                 edNombreAL.Text     := frmSeleccionarProveedor.NOMBRE;
                 cbProveedorAL.Checked := false;
                 //edProveedorAL.SetSelection(Length(edProveedorAL.Text),Length(edProveedorAL.Text),false);
              end;
           frmSeleccionarProveedor.Free;
           frmSeleccionarProveedor := nil;
        end;
     1: begin
           edProveedorAL.Clear;
           edNombreAL.Text     := '<FALTA>';
           edProveedorAL.Tag     := 0;
           cbProveedorAL.Checked := true;
        end;
   end;
end;

procedure TfrmPRN_0035.edProveedorALKeyPress(Sender: TObject;
  var Key: Char);
begin
   if key = #13 then
   begin
      edProveedorALButtonClick(Sender, 0);
   end;
end;

procedure TfrmPRN_0035.hlMovVtasDblClick(Sender: TObject);
var
   reporte : TPRN_0003;
begin
  reporte := nil;
  try
     focusFechas;
     
     reporte := TPRN_0003.Create(Application);
     reporte.Del       := StrToDateTime(edFechaDEL.Text);
     reporte.Al        := StrToDateTime(edFechaAL.Text);
     reporte.Proveedor := edProveedorDEL.Tag;
     reporte.Fecha     := reglas.dame_fecha;
     reporte.Usuario   := reglas.dameUsuario;
     reporte.MONEDA    := cbMonedas.KeyValue;
     reporte.Preview;
  finally
     reporte.Free;
  end;
end;

procedure TfrmPRN_0035.hlMovCXCDblClick(Sender: TObject);
var
   reporte : TPRN_0004;
begin
  reporte := nil;
  try
     focusFechas;
     
     reporte := TPRN_0004.Create(Application);
     reporte.Del       := StrToDateTime(edFechaDEL.Text);
     reporte.Al        := StrToDateTime(edFechaAL.Text);
     reporte.Proveedor := edProveedorDEL.Tag;
     reporte.Fecha     := reglas.dame_fecha;
     reporte.Usuario   := reglas.dameUsuario;
     reporte.Estatus   := cbEstatusMov.Text;
     reporte.MONEDA    := cbMonedas.KeyValue; 
     reporte.Preview;
  finally
     reporte.Release;
  end;
end;

procedure TfrmPRN_0035.buActMonedaClick(Sender: TObject);
begin
   reglas.refresh_IBQuery(dmIBData.qyMonedas);
end;

procedure TfrmPRN_0035.buLimMonedaClick(Sender: TObject);
begin
   //cbMonedas.clear;
end;

end.
