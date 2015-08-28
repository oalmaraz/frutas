unit PRN_CORTE_CAJAS_PV;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ImgList, Db, IBTable, ExtCtrls, IBCustomDataSet, IBQuery, ComCtrls,
  StdCtrls, Buttons, DBCtrls, System.ImageList;

type
  TfrmPRN_CORTE_CAJA_PV = class(TForm)
    paDatos: TPanel;
    pcCortes: TPageControl;
    tsNormal: TTabSheet;
    tsPrioridad: TTabSheet;
    tsAmbos: TTabSheet;
    tsResumen: TTabSheet;
    tsExtras: TTabSheet;
    qyEmpresa: TIBQuery;
    qyEmpresaR_CLAVE: TIBStringField;
    qyEmpresaR_NOMBRE: TIBStringField;
    qyEmpresaR_RAZON_SOCIAL: TIBStringField;
    qyEmpresaR_FACTURAR: TIBStringField;
    qyEmpresaR_RFC: TIBStringField;
    qyEmpresaR_CURP: TIBStringField;
    qyEmpresaR_TELEFONO1: TIBStringField;
    qyEmpresaR_TELEFONO2: TIBStringField;
    qyEmpresaR_FAX: TIBStringField;
    qyEmpresaR_CALLE: TIBStringField;
    qyEmpresaR_ENTRE_CALLE: TIBStringField;
    qyEmpresaR_Y_CALLE: TIBStringField;
    qyEmpresaR_NUM_EXT: TIBStringField;
    qyEmpresaR_NUM_INT: TIBStringField;
    qyEmpresaR_LETRA: TIBStringField;
    qyEmpresaR_CP: TIBStringField;
    qyEmpresaR_COLONIA: TIBStringField;
    qyEmpresaR_CIUDAD: TIBStringField;
    TCajas: TIBTable;
    TCajasID: TIntegerField;
    TCajasNOMBRE: TIBStringField;
    TCajasALMACEN: TIntegerField;
    TCajasUSUARIO: TIntegerField;
    TCajasTIPO_DE_CAJA: TIBStringField;
    TCajasESTATUS: TIBStringField;
    TCajasMODULO_FUNCION: TIntegerField;
    dsCajas: TDataSource;
    qyAlmacenes: TIBQuery;
    qyAlmacenesID: TIntegerField;
    qyAlmacenesCLAVE: TIBStringField;
    qyAlmacenesNOMBRE: TIBStringField;
    qyAlmacenesCOMPRA: TIBStringField;
    qyAlmacenesVENDE: TIBStringField;
    qyAlmacenesTRANSFORMA: TIBStringField;
    qyAlmacenesFECHA_ALTA: TDateTimeField;
    qyAlmacenesRESPONSABLE: TIntegerField;
    qyAlmacenesOBSERVACIONES: TBlobField;
    qyAlmacenesSERIE_FACTURA: TIBStringField;
    qyAlmacenesCONSECUTIVO: TIntegerField;
    qyAlmacenesFECHA_ULT_INV: TDateTimeField;
    qyAlmacenesESTATUS: TIBStringField;
    dsAlmacenes: TDataSource;
    Label3: TLabel;
    deFecha: TDateTimePicker;
    deAl: TDateTimePicker;
    Label4: TLabel;
    cbCajas: TDBLookupComboBox;
    Label2: TLabel;
    cbAlmacenes: TDBLookupComboBox;
    sbBorrarAlmacen: TSpeedButton;
    sbBorrarCaja: TSpeedButton;
    ibAutorizar: TBitBtn;
    ilCortes: TImageList;
    Label1: TLabel;
    Panel1: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    fcImager7: TImage;
    paCortes: TPanel;
    laCorteCajas: TBitBtn;
    laCorteCajasDetalle: TBitBtn;
    laCorteCajasCComerciales: TBitBtn;
    laCorteCajasCComercialesDetalle: TBitBtn;
    laCorteCajasFichaDeposito: TBitBtn;
    fcImager1: TImage;
    paExtras: TPanel;
    paResumen: TPanel;
    paAmbos: TPanel;
    paPrioridad: TPanel;
    laCorteCajasPrioridad: TBitBtn;
    laCorteCajasDetallePrioridad: TBitBtn;
    laCorteCajasCComercialesPrioridad: TBitBtn;
    laCorteCajasCComercialesDetallePrioridad: TBitBtn;
    fcImager2: TImage;
    laCorteCajasAmbos: TBitBtn;
    laCorteCajasDetalleAmbos: TBitBtn;
    laCorteCajasCComercialesAmbos: TBitBtn;
    laCorteCajasCComercialesDetalleAmbos: TBitBtn;
    fcImager3: TImage;
    laResumenPorAlmacen: TBitBtn;
    laDetalleResumenPorAlmacen: TBitBtn;
    fcImager4: TImage;
    laCorteCajasMaterialCajas: TBitBtn;
    fcImager5: TImage;
    JvHotLink1: TBitBtn;
    JvHotLink2: TBitBtn;
    JvHotLink3: TBitBtn;
    Panel2: TPanel;
    ibSalir: TBitBtn;
    procedure sbBorrarCajaClick(Sender: TObject);
    procedure sbBorrarAlmacenClick(Sender: TObject);
    procedure ibAutorizarClick(Sender: TObject);
    procedure laCorteCajasClick(Sender: TObject);
    procedure laCorteCajasDetalleClick(Sender: TObject);
    procedure laCorteCajasCComercialesClick(Sender: TObject);
    procedure laCorteCajasCComercialesDetalleClick(Sender: TObject);
    procedure laCorteCajasFichaDepositoClick(Sender: TObject);
    procedure laCorteCajasPrioridadClick(Sender: TObject);
    procedure laCorteCajasDetallePrioridadClick(Sender: TObject);
    procedure laCorteCajasCComercialesPrioridadClick(Sender: TObject);
    procedure laCorteCajasCComercialesDetallePrioridadClick(
      Sender: TObject);
    procedure laCorteCajasAmbosClick(Sender: TObject);
    procedure laCorteCajasDetalleAmbosClick(Sender: TObject);
    procedure laCorteCajasCComercialesAmbosClick(Sender: TObject);
    procedure laCorteCajasCComercialesDetalleAmbosClick(Sender: TObject);
    procedure laResumenPorAlmacenClick(Sender: TObject);
    procedure laDetalleResumenPorAlmacenClick(Sender: TObject);
    procedure laCorteCajasMaterialCajasClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ibSalirClick(Sender: TObject);
    procedure JvHotLink1Click(Sender: TObject);
    procedure JvHotLink2Click(Sender: TObject);
    procedure JvHotLink3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    constructor Crear(AOwner : TComponent; p_fecha : TDateTime; p_caja, p_almacen : integer);
  end;

{var
  frmPRN_CORTE_CAJA_PV: TfrmPRN_CORTE_CAJA_PV;}

implementation

uses autorizacion, IBData, IBModulo, RPT_FICHA_DEPOSITO,
  RPT_CORTE_CAJAS_PV, RPT_CORTE_CAJAS_DET_PV, RPT_CORTE_CAJAS_CC_PV,
  RPT_CORTE_CAJAS_CC_DET_PV, RPT_RESUMEN_ALMACENES, RPT_ENTRADAS_SALIDAS,
  RPT_CORTE_CAJAS_CAJAS, reglas_de_negocios, PRN_CAJAS_DEVOLUCIONES;

{$R *.DFM}

constructor TfrmPRN_CORTE_CAJA_PV.Crear(AOwner : TComponent; p_fecha : TDateTime; p_caja, p_almacen : integer);
begin
   Create(AOwner);
   deFecha.Date     := StrToDate(FormatDateTime('dd/mm/yyyy',p_fecha));
   deAl.Date        := StrToDate(FormatDateTime('dd/mm/yyyy',p_fecha));
   if p_caja <> 0 then
      cbCajas.KeyValue := p_caja
   else
      cbCajas.KeyValue := 0;
   cbAlmacenes.KeyValue := p_almacen;
end;

procedure TfrmPRN_CORTE_CAJA_PV.sbBorrarCajaClick(Sender: TObject);
begin
  cbCajas.KeyValue := 0;
end;

procedure TfrmPRN_CORTE_CAJA_PV.sbBorrarAlmacenClick(Sender: TObject);
begin
  cbAlmacenes.KeyValue := 0;
end;

procedure TfrmPRN_CORTE_CAJA_PV.ibAutorizarClick(Sender: TObject);
var
   ejecutar  : boolean;
begin
  frmAutorizacion := TfrmAutorizacion.Crear(Application, 5);
  frmAutorizacion.ShowModal;
  ejecutar := frmAutorizacion.dame_respuesta;
  frmAutorizacion.Free;
  if ejecutar then
  begin
     deFecha.Enabled          := true;
     deAl.Enabled             := true;
     cbCajas.Enabled          := true;
     cbAlmacenes.Enabled      := true;
     sbBorrarCaja.Enabled     := true;
     sbBorrarAlmacen.Enabled  := true;
     dmIBData.TPreferencias.Filter := 'ID = 97';
     tsPrioridad.TabVisible := (UpperCase(dmIBData.TPreferencias.FieldByName('VALOR').AsString) = 'SI');
     tsAmbos.TabVisible     := (UpperCase(dmIBData.TPreferencias.FieldByName('VALOR').AsString) = 'SI');
     tsResumen.TabVisible   := (UpperCase(dmIBData.TPreferencias.FieldByName('VALOR').AsString) = 'SI');
  end;
end;

procedure TfrmPRN_CORTE_CAJA_PV.laCorteCajasClick(Sender: TObject);
var
   reporte : TfrmRPT_CORTE_CAJAS_PV;
begin
  reporte := nil;
  try
     reporte := TfrmRPT_CORTE_CAJAS_PV.Create(Application);
     if cbCajas.KeyValue <> 0 then
     begin
        reporte.caja := cbCajas.KeyValue;
     end;
     if cbAlmacenes.KeyValue <> 0 then
     begin
        reporte.almacen := cbAlmacenes.KeyValue;
     end;
     reporte.fechaInicio := deFecha.Date;
     reporte.fechaFin    := deAl.Date;
     reporte.Preview;
  finally
     reporte.Free;
  end;
end;

procedure TfrmPRN_CORTE_CAJA_PV.laCorteCajasDetalleClick(Sender: TObject);
var
   reporte : TfrmRPT_CORTE_CAJAS_DET_PV;
begin
  reporte := nil;
  try
     reporte := TfrmRPT_CORTE_CAJAS_DET_PV.Create(Application);
     if cbCajas.KeyValue <> 0 then
     begin
        reporte.caja := cbCajas.KeyValue;
     end;
     if cbAlmacenes.KeyValue <> 0 then
     begin
        reporte.almacen := cbAlmacenes.KeyValue;
     end;
     reporte.fechaInicio := deFecha.Date;
     reporte.fechaFin    := deAl.Date;
     reporte.Preview;
  finally
     reporte.Free;
  end;
end;

procedure TfrmPRN_CORTE_CAJA_PV.laCorteCajasCComercialesClick(
  Sender: TObject);
var
   reporte : TfrmRPT_CORTE_CAJAS_CC_PV;
begin
  reporte := nil;
  try
     reporte := TfrmRPT_CORTE_CAJAS_CC_PV.Create(Application);
     if cbCajas.KeyValue <> 0 then
     begin
        reporte.caja := cbCajas.KeyValue;
     end;
     if cbAlmacenes.KeyValue <> 0 then
     begin
        reporte.almacen := cbAlmacenes.KeyValue;
     end;
     reporte.fechaInicio := deFecha.Date;
     reporte.fechaFin    := deAl.Date;
     reporte.Preview;
  finally
     reporte.Free;
  end;
end;

procedure TfrmPRN_CORTE_CAJA_PV.laCorteCajasCComercialesDetalleClick(
  Sender: TObject);
var
   reporte : TfrmRPT_CORTE_CAJAS_CC_DET_PV;
begin
  reporte := nil;
  try
     reporte := TfrmRPT_CORTE_CAJAS_CC_DET_PV.Create(Application);
     if cbCajas.KeyValue <> 0 then
     begin
        reporte.caja := cbCajas.KeyValue;
     end;
     if cbAlmacenes.KeyValue <> 0 then
     begin
        reporte.almacen := cbAlmacenes.KeyValue;
     end;
     reporte.fechaInicio := deFecha.Date;
     reporte.fechaFin    := deAl.Date;
     reporte.Preview;
  finally
     reporte.Free;
  end;
end;

procedure TfrmPRN_CORTE_CAJA_PV.laCorteCajasFichaDepositoClick(
  Sender: TObject);
var
   reporte : TfrmRPT_FICHA_DEPOSITO;
begin
  reporte := nil;
  try
     reporte := TfrmRPT_FICHA_DEPOSITO.Create(Application);
     if cbAlmacenes.KeyValue <> 0 then
     begin
        reporte.almacen := cbAlmacenes.KeyValue;
     end;
     reporte.fechaInicio := deFecha.Date;
     reporte.fechaFin    := deAl.Date;
     reporte.Preview;
  finally
     reporte.Free;
  end;
end;

procedure TfrmPRN_CORTE_CAJA_PV.laCorteCajasPrioridadClick(
  Sender: TObject);
var
   reporte : TfrmRPT_CORTE_CAJAS_PV;
begin
  reporte := nil;
  try
     reporte := TfrmRPT_CORTE_CAJAS_PV.Create(Application);
     reporte.opcion := 1;
     if cbCajas.KeyValue <> 0 then
     begin
        reporte.caja := cbCajas.KeyValue;
     end;
     if cbAlmacenes.KeyValue <> 0 then
     begin
        reporte.almacen := cbAlmacenes.KeyValue;
     end;
     reporte.fechaInicio := deFecha.Date;
     reporte.fechaFin    := deAl.Date;
     reporte.Preview;
  finally
     reporte.Free;
  end;
end;

procedure TfrmPRN_CORTE_CAJA_PV.laCorteCajasDetallePrioridadClick(
  Sender: TObject);
var
   reporte : TfrmRPT_CORTE_CAJAS_DET_PV;
begin
  reporte := nil;
  try
     reporte := TfrmRPT_CORTE_CAJAS_DET_PV.Create(Application);
     reporte.opcion := 4;
     if cbCajas.KeyValue <> 0 then
     begin
        reporte.caja := cbCajas.KeyValue;
     end;
     if cbAlmacenes.KeyValue <> 0 then
     begin
        reporte.almacen := cbAlmacenes.KeyValue;
     end;
     reporte.fechaInicio := deFecha.Date;
     reporte.fechaFin    := deAl.Date;
     reporte.Preview;
  finally
     reporte.Free;
  end;
end;

procedure TfrmPRN_CORTE_CAJA_PV.laCorteCajasCComercialesPrioridadClick(
  Sender: TObject);
var
   reporte : TfrmRPT_CORTE_CAJAS_CC_PV;
begin
  reporte := nil;
  try
     reporte := TfrmRPT_CORTE_CAJAS_CC_PV.Create(Application);
     reporte.opcion := 7;
     if cbCajas.KeyValue <> 0 then
     begin
        reporte.caja := cbCajas.KeyValue;
     end;
     if cbAlmacenes.KeyValue <> 0 then
     begin
        reporte.almacen := cbAlmacenes.KeyValue;
     end;
     reporte.fechaInicio := deFecha.Date;
     reporte.fechaFin    := deAl.Date;
     reporte.Preview;
  finally
     reporte.Free;
  end;
end;

procedure TfrmPRN_CORTE_CAJA_PV.laCorteCajasCComercialesDetallePrioridadClick(
  Sender: TObject);
var
   reporte : TfrmRPT_CORTE_CAJAS_CC_DET_PV;
begin
  reporte := nil;
  try
     reporte := TfrmRPT_CORTE_CAJAS_CC_DET_PV.Create(Application);
     reporte.opcion := 10;
     if cbCajas.KeyValue <> 0 then
     begin
        reporte.caja := cbCajas.KeyValue;
     end;
     if cbAlmacenes.KeyValue <> 0 then
     begin
        reporte.almacen := cbAlmacenes.KeyValue;
     end;
     reporte.fechaInicio := deFecha.Date;
     reporte.fechaFin    := deAl.Date;
     reporte.Preview;
  finally
     reporte.Free;
  end;
end;

procedure TfrmPRN_CORTE_CAJA_PV.laCorteCajasAmbosClick(Sender: TObject);
var
   reporte : TfrmRPT_CORTE_CAJAS_PV;
begin
  reporte := nil;
  try
     reporte := TfrmRPT_CORTE_CAJAS_PV.Create(Application);
     reporte.opcion := 2;
     if cbCajas.KeyValue <> 0 then
     begin
        reporte.caja := cbCajas.KeyValue;
     end;
     if cbAlmacenes.KeyValue <> 0 then
     begin
        reporte.almacen := cbAlmacenes.KeyValue;
     end;
     reporte.fechaInicio := deFecha.Date;
     reporte.fechaFin    := deAl.Date;
     reporte.Preview;
  finally
     reporte.Free;
  end;
end;

procedure TfrmPRN_CORTE_CAJA_PV.laCorteCajasDetalleAmbosClick(
  Sender: TObject);
var
   reporte : TfrmRPT_CORTE_CAJAS_DET_PV;
begin
  reporte := nil;
  try
     reporte := TfrmRPT_CORTE_CAJAS_DET_PV.Create(Application);
     reporte.opcion := 5;
     if cbCajas.KeyValue <> 0 then
     begin
        reporte.caja := cbCajas.KeyValue;
     end;
     if cbAlmacenes.KeyValue <> 0 then
     begin
        reporte.almacen := cbAlmacenes.KeyValue;
     end;
     reporte.fechaInicio := deFecha.Date;
     reporte.fechaFin    := deAl.Date;
     reporte.Preview;
  finally
     reporte.Free;
  end;
end;

procedure TfrmPRN_CORTE_CAJA_PV.laCorteCajasCComercialesAmbosClick(
  Sender: TObject);
var
   reporte : TfrmRPT_CORTE_CAJAS_CC_PV;
begin
  reporte := nil;
  try
     reporte := TfrmRPT_CORTE_CAJAS_CC_PV.Create(Application);
     reporte.opcion := 8;
     if cbCajas.KeyValue <> 0 then
     begin
        reporte.caja := cbCajas.KeyValue;
     end;
     if cbAlmacenes.KeyValue <> 0 then
     begin
        reporte.almacen := cbAlmacenes.KeyValue;
     end;
     reporte.fechaInicio := deFecha.Date;
     reporte.fechaFin    := deAl.Date;
     reporte.Preview;
  finally
     reporte.Free;
  end;
end;

procedure TfrmPRN_CORTE_CAJA_PV.laCorteCajasCComercialesDetalleAmbosClick(
  Sender: TObject);
var
   reporte : TfrmRPT_CORTE_CAJAS_CC_DET_PV;
begin
  reporte := nil;
  try
     reporte := TfrmRPT_CORTE_CAJAS_CC_DET_PV.Create(Application);
     reporte.opcion := 11;
     if cbCajas.KeyValue <> 0 then
     begin
        reporte.caja := cbCajas.KeyValue;
     end;
     if cbAlmacenes.KeyValue <> 0 then
     begin
        reporte.almacen := cbAlmacenes.KeyValue;
     end;
     reporte.fechaInicio := deFecha.Date;
     reporte.fechaFin    := deAl.Date;
     reporte.Preview;
  finally
     reporte.Free;
  end;
end;

procedure TfrmPRN_CORTE_CAJA_PV.laResumenPorAlmacenClick(Sender: TObject);
var
   reporte : TfrmRPT_RESUMEN_ALMACENES;
begin
  reporte := nil;
  try
     reporte := TfrmRPT_RESUMEN_ALMACENES.Create(Application);
     if cbAlmacenes.KeyValue <> 0 then
     begin
        reporte.almacen := cbAlmacenes.KeyValue;
     end;
     reporte.fechaInicio := deFecha.Date;
     reporte.fechaFin    := deAl.Date;
     reporte.Preview;
  finally
     reporte.Free;
  end;
end;

procedure TfrmPRN_CORTE_CAJA_PV.laDetalleResumenPorAlmacenClick(
  Sender: TObject);
var
   reporte : TfrmRPT_ENTRADAS_SALIDAS;
begin
  reporte := nil;
  try
     reporte := TfrmRPT_ENTRADAS_SALIDAS.Create(Application);
     if cbAlmacenes.KeyValue <> 0 then
     begin
        reporte.almacen := cbAlmacenes.KeyValue;
     end;
     reporte.fechaInicio := deFecha.Date;
     reporte.fechaFin    := deAl.Date;
     reporte.Preview;
  finally
     reporte.Free;
  end;
end;

procedure TfrmPRN_CORTE_CAJA_PV.laCorteCajasMaterialCajasClick(
  Sender: TObject);
var
   reporte : TfrmRPT_CORTE_CAJAS_CAJAS;
begin
  reporte := nil;
  try
     reporte := TfrmRPT_CORTE_CAJAS_CAJAS.Create(Application);
     if cbCajas.KeyValue <> 0 then
     begin
        reporte.caja := cbCajas.KeyValue;
     end;
     if cbAlmacenes.KeyValue <> 0 then
     begin
        reporte.almacen := cbAlmacenes.KeyValue;
     end;
     reporte.fechaInicio := deFecha.Date;
     reporte.fechaFin    := deAl.Date;
     reporte.Preview;
  finally
     reporte.Free;
  end;
end;

procedure TfrmPRN_CORTE_CAJA_PV.FormCreate(Sender: TObject);
begin
  reglas.refresh_IBQuery(qyEmpresa);
  reglas.abrir_IBTabla(TCajas);
  reglas.abrir_IBQuery(qyAlmacenes);
  //Activar Prioridad
  reglas.abrir_IBTabla(dmIBData.TPreferencias);
  dmIBData.TPreferencias.Filter := 'ID = 97';
  tsPrioridad.TabVisible  := (UpperCase(dmIBData.TPreferencias.FieldByName('VALOR').AsString) = 'SI') and (reglas.dameUsuarioNivel >= 5);
  tsAmbos.TabVisible      := (UpperCase(dmIBData.TPreferencias.FieldByName('VALOR').AsString) = 'SI') and (reglas.dameUsuarioNivel >= 5);
  tsResumen.TabVisible    := (UpperCase(dmIBData.TPreferencias.FieldByName('VALOR').AsString) = 'SI') and (reglas.dameUsuarioNivel >= 5);
  deFecha.Enabled         := (reglas.dameUsuarioNivel >= 5);
  deAl.Enabled            := (reglas.dameUsuarioNivel >= 5);
  cbCajas.Enabled         := (reglas.dameUsuarioNivel >= 5);
  cbAlmacenes.Enabled     := (reglas.dameUsuarioNivel >= 5);
  sbBorrarCaja.Enabled    := (reglas.dameUsuarioNivel >= 5);
  sbBorrarAlmacen.Enabled := (reglas.dameUsuarioNivel >= 5);
end;

procedure TfrmPRN_CORTE_CAJA_PV.ibSalirClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmPRN_CORTE_CAJA_PV.JvHotLink1Click(Sender: TObject);
begin
  if deFecha.Focused then
     deAl.SetFocus;
  if deAl.Focused then
     deFecha.SetFocus;

  try
     frmPRN_CAJAS_DEVOLUCIONES                       := TfrmPRN_CAJAS_DEVOLUCIONES.Create(Application);
     if cbCajas.KeyValue <> 0 then
     begin
        frmPRN_CAJAS_DEVOLUCIONES.CAJA            := cbCajas.KeyValue;
     end;
     if cbAlmacenes.KeyValue <> 0 then
     begin
        frmPRN_CAJAS_DEVOLUCIONES.almacen             := cbAlmacenes.KeyValue;
     end;
     frmPRN_CAJAS_DEVOLUCIONES.INICIO    := deFecha.Date;
     frmPRN_CAJAS_DEVOLUCIONES.FIN       := deAl.Date;
     frmPRN_CAJAS_DEVOLUCIONES.PRIORIDAD := 'No';
     frmPRN_CAJAS_DEVOLUCIONES.Preview;
  finally
     frmPRN_CAJAS_DEVOLUCIONES.Release;
  end;
end;

procedure TfrmPRN_CORTE_CAJA_PV.JvHotLink2Click(Sender: TObject);
begin
  if deFecha.Focused then
     deAl.SetFocus;
  if deAl.Focused then
     deFecha.SetFocus;

  try
     frmPRN_CAJAS_DEVOLUCIONES                       := TfrmPRN_CAJAS_DEVOLUCIONES.Create(Application);
     if cbCajas.KeyValue <> 0 then
     begin
        frmPRN_CAJAS_DEVOLUCIONES.CAJA            := cbCajas.KeyValue;
     end;
     if cbAlmacenes.KeyValue <> 0 then
     begin
        frmPRN_CAJAS_DEVOLUCIONES.almacen             := cbAlmacenes.KeyValue;
     end;
     frmPRN_CAJAS_DEVOLUCIONES.INICIO    := deFecha.Date;
     frmPRN_CAJAS_DEVOLUCIONES.FIN       := deAl.Date;
     frmPRN_CAJAS_DEVOLUCIONES.PRIORIDAD := 'Si';
     frmPRN_CAJAS_DEVOLUCIONES.Preview;
  finally
     frmPRN_CAJAS_DEVOLUCIONES.Release;
  end;
end;

procedure TfrmPRN_CORTE_CAJA_PV.JvHotLink3Click(Sender: TObject);
begin
  if deFecha.Focused then
     deAl.SetFocus;
  if deAl.Focused then
     deFecha.SetFocus;

  try
     frmPRN_CAJAS_DEVOLUCIONES                       := TfrmPRN_CAJAS_DEVOLUCIONES.Create(Application);
     if cbCajas.KeyValue <> 0 then
     begin
        frmPRN_CAJAS_DEVOLUCIONES.CAJA            := cbCajas.KeyValue;
     end;
     if cbAlmacenes.KeyValue <> 0 then
     begin
        frmPRN_CAJAS_DEVOLUCIONES.almacen             := cbAlmacenes.KeyValue;
     end;
     frmPRN_CAJAS_DEVOLUCIONES.INICIO    := deFecha.Date;
     frmPRN_CAJAS_DEVOLUCIONES.FIN       := deAl.Date;
     frmPRN_CAJAS_DEVOLUCIONES.PRIORIDAD := 'Ambos';
     frmPRN_CAJAS_DEVOLUCIONES.Preview;
  finally
     frmPRN_CAJAS_DEVOLUCIONES.Release;
  end;
end;

end.
