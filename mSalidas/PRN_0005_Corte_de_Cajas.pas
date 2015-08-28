unit PRN_0005_Corte_de_Cajas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  padre, jpeg,  ExtCtrls,
  Db, IBQuery, IBCustomDataSet, IBTable,
  DBCtrls, StdCtrls, Buttons, ComCtrls;
  {Para poder desplegar este reporte, seleccione el almacen.}
type
  TfrmPRN_0005 = class(TfrmPadre)
    Label3: TLabel;
    deFecha: TDateTimePicker;
    Label2: TLabel;
    Label1: TLabel;
    sbSinCaja: TBitBtn;
    ibImprimir: TBitBtn;
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
    cbCajas: TDBLookupComboBox;
    cbAlmacenes: TDBLookupComboBox;
    qyResumen: TIBQuery;
    ibDetalle: TBitBtn;
    qyCorte: TIBQuery;
    IntegerField1: TIntegerField;
    IBStringField1: TIBStringField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    IntegerField2: TIntegerField;
    IBStringField2: TIBStringField;
    qyResumenR_REFERENCIA_PAGO: TIntegerField;
    qyResumenR_REFERENCIA_NOMBRE: TIBStringField;
    qyResumenR_MONTO_VENTA: TFloatField;
    qyResumenR_MONTO_COLECTA: TFloatField;
    qyResumenR_SALDO: TFloatField;
    qyCorteDetalle: TIBQuery;
    qyCorteDetalleR_ID: TIntegerField;
    qyCorteDetalleR_FOLIO_DE_VENTA: TIntegerField;
    qyCorteDetalleR_CAJA: TIntegerField;
    qyCorteDetalleR_CAJA_NOMBRE: TIBStringField;
    qyCorteDetalleR_CLIENTE: TIntegerField;
    qyCorteDetalleR_CLIENTE_NOMBRE: TIBStringField;
    qyCorteDetalleR_EXTENSION: TIntegerField;
    qyCorteDetalleR_EXTENSION_NOMBRE: TIBStringField;
    qyCorteDetalleR_FECHA: TDateTimeField;
    qyCorteDetalleR_GRANTOTAL: TFloatField;
    qyCorteDetalleR_CAMBIO: TFloatField;
    qyCorteDetalleR_MONTO: TFloatField;
    qyCorteDetalleR_REFERENCIA_PAGO: TIntegerField;
    qyCorteDetalleR_REFERENCIA_NOMBRE: TIBStringField;
    qyCorteR_FECHA: TDateTimeField;
    qyEmpresa: TIBQuery;
    qyEmpresaR_CLAVE: TIBStringField;
    qyEmpresaR_NOMBRE: TIBStringField;
    qyEmpresaR_RAZON_SOCIAL: TIBStringField;
    qyEmpresaR_TELEFONO: TIBStringField;
    qyEmpresaR_RFC: TIBStringField;
    qyEmpresaR_CURP: TIBStringField;
    qyResumenDetalle: TIBQuery;
    qyResumenDetalleGRANTOTAL: TFloatField;
    qyCorteDetalleR_QUE: TIBStringField;
    qyCorteDetalleR_QUE_CLAVE: TIBStringField;
    qyCorteCajaResumen: TIBQuery;
    qyCorteCajaResumenR_MONTO_VENTA: TFloatField;
    qyCorteCajaResumenR_REFERENCIA_PAGO: TIntegerField;
    qyCorteCajaResumenR_REFERENCIA_NOMBRE: TIBStringField;
    qyCorteCajaResumenR_MONTO_COLECTA: TFloatField;
    qyCorteCajaResumenR_SALDO: TFloatField;
    qyCorteCajaResumenR_ORIGEN: TIBStringField;
    dsCorteCajaResumen: TDataSource;
    ibCerrar: TBitBtn;
    ibPrioridad: TBitBtn;
    fcImageBtn1: TBitBtn;
    qyCortePrioridad: TIBQuery;
    IntegerField3: TIntegerField;
    IBStringField3: TIBStringField;
    IntegerField4: TIntegerField;
    IBStringField4: TIBStringField;
    DateTimeField1: TDateTimeField;
    qyCortePrioridadR_MONTO_VENTA: TFloatField;
    qyResumenPrioridad: TIBQuery;
    IntegerField5: TIntegerField;
    IBStringField5: TIBStringField;
    FloatField4: TFloatField;
    sbSinAlmacen: TBitBtn;
    qyDetallePrioridad: TIBQuery;
    IntegerField6: TIntegerField;
    IntegerField7: TIntegerField;
    IntegerField8: TIntegerField;
    IBStringField6: TIBStringField;
    IntegerField9: TIntegerField;
    IBStringField7: TIBStringField;
    IntegerField10: TIntegerField;
    IBStringField8: TIBStringField;
    DateTimeField2: TDateTimeField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    FloatField7: TFloatField;
    IntegerField11: TIntegerField;
    IBStringField9: TIBStringField;
    IBStringField10: TIBStringField;
    IBStringField11: TIBStringField;
    qyTotalPriorioridad: TIBQuery;
    FloatField8: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure sbSinCajaClick(Sender: TObject);
    procedure qbDetalleBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure ibImprimirClick(Sender: TObject);
    procedure qrPRN_0005BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure crCorteAddReports(Sender: TObject);
    procedure qbDetalleCorteBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure ibDetalleClick(Sender: TObject);
    procedure qrResumenBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure qrDetalleBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure qrCortePrioridadBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure qbDetallePrioridadBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure ibPrioridadClick(Sender: TObject);
    procedure crCortePrioridadAddReports(Sender: TObject);
    procedure qrResumenPrioridadBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure sbSinAlmacenClick(Sender: TObject);
    procedure qrDetallePrioridadBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure qbResumenDetallePrioridadBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure fcImageBtn1Click(Sender: TObject);
  private
    { Private declarations }
    cambio : boolean;
  public
    { Public declarations }
    constructor Crear(AOwner : TComponent; p_fecha : TDateTime; p_caja, p_almacen : integer);
  end;

var
  frmPRN_0005: TfrmPRN_0005;

implementation

uses reglas_de_negocios, IBModulo;

{$R *.DFM}

constructor TfrmPRN_0005.Crear(AOwner : TComponent; p_fecha : TDateTime; p_caja, p_almacen : integer);
begin
   Create(AOwner);
   deFecha.Date         := StrToDate(FormatDateTime('dd/mm/yyyy',p_fecha));
   cbCajas.KeyValue     := p_caja;
   cbAlmacenes.KeyValue := p_almacen;
end;

procedure TfrmPRN_0005.FormCreate(Sender: TObject);
begin
  inherited;
  reglas.refresh_IBQuery(qyEmpresa);
  reglas.abrir_IBTabla(TCajas);
  reglas.abrir_IBQuery(qyAlmacenes);
end;

procedure TfrmPRN_0005.sbSinCajaClick(Sender: TObject);
begin
  inherited;
  cbCajas.KeyValue := Null;
end;

procedure TfrmPRN_0005.qbDetalleBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  if cambio then
     qbDetalle.Color := $00E9E9E9
  else
     qbDetalle.Color := clWhite;
  cambio := not(cambio);
end;

procedure TfrmPRN_0005.ibImprimirClick(Sender: TObject);
var
   caja    : integer;
begin
  caja    := 0;
  inherited;
  if cbCajas.Text <> '' then
  begin
     caja            := cbCajas.KeyValue;
     laCajas.Caption := cbCajas.Text;
  end
  else
     laCajas.Caption  := 'Todas';
  laAlmacenes.Caption := cbAlmacenes.Text;
  qyCorte.Close;
  qyCorte.ParamByName('P_FECHA').AsDate      := deFecha.Date;
  qyCorte.ParamByName('P_CAJA').AsInteger    := caja;
  qyCorte.ParamByName('P_ALMACEN').AsInteger := cbAlmacenes.KeyValue;
  qyCorte.Open;
  qyResumen.Close;
  qyResumen.ParamByName('P_FECHA').AsDate      := deFecha.Date;
  qyResumen.ParamByName('P_CAJA').AsInteger    := caja;
  qyResumen.ParamByName('P_ALMACEN').AsInteger := cbAlmacenes.KeyValue;
  qyResumen.Open;
  crCorte.Preview;
end;

procedure TfrmPRN_0005.qrPRN_0005BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  inherited;
  cambio := true;
  qlFecha.Caption   := FormatDateTime('dd/mmm/yyyy',reglas.dame_fecha);
  qlHora.Caption    := FormatDateTime('hh:mm:ss am/pm',reglas.dame_fecha);
  qlUsuario.Caption := reglas.dameUsuario;
end;

procedure TfrmPRN_0005.crCorteAddReports(Sender: TObject);
begin
  inherited;
  with crCorte.Reports do
  begin
     Add(qrPRN_0005);
     Add(qrResumen);
  end;
end;

procedure TfrmPRN_0005.qbDetalleCorteBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  if cambio then
     qbDetalleCorte.Color := $00E9E9E9
  else
     qbDetalleCorte.Color := clWhite;
  cambio := not(cambio);
end;

procedure TfrmPRN_0005.ibDetalleClick(Sender: TObject);
var
   caja    : integer;
begin
  caja    := 0;
  inherited;
  if cbCajas.Text <> '' then
  begin
     caja                   := cbCajas.KeyValue;
     laCajasDetalle.Caption := cbCajas.Text;
  end
  else
     laCajasDetalle.Caption  := 'Todas';
  laAlmacenesDetalle.Caption := cbAlmacenes.Text;

  qyCorteDetalle.Close;
  qyCorteDetalle.ParamByName('P_FECHA').AsDate      := deFecha.Date;
  qyCorteDetalle.ParamByName('P_CAJA').AsInteger    := caja;
  qyCorteDetalle.ParamByName('P_ALMACEN').AsInteger := cbAlmacenes.KeyValue;
  qyCorteDetalle.Open;

  qyResumenDetalle.Close;
  qyResumenDetalle.ParamByName('P_FECHA').AsDate      := deFecha.Date;
  qyResumenDetalle.ParamByName('P_CAJA').AsInteger    := caja;
  qyResumenDetalle.ParamByName('P_ALMACEN').AsInteger := cbAlmacenes.KeyValue;
  qyResumenDetalle.Open;

  qrDetalle.PreviewModal;
end;

procedure TfrmPRN_0005.qrResumenBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  inherited;
  qlUsuario1.Caption := reglas.dameUsuario;
end;

procedure TfrmPRN_0005.qrDetalleBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  inherited;
  qlFecha2.Caption   := FormatDateTime('dd/mmm/yyyy',reglas.dame_fecha);
  qlHora2.Caption    := FormatDateTime('hh:mm:ss am/pm',reglas.dame_fecha);
  qlUsuario2.Caption := reglas.dameUsuario;
end;

procedure TfrmPRN_0005.qrCortePrioridadBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  inherited;
  cambio := true;
  qlFechaPrioridad.Caption   := FormatDateTime('dd/mmm/yyyy',reglas.dame_fecha);
  qlHoraPrioridad.Caption    := FormatDateTime('hh:mm:ss am/pm',reglas.dame_fecha);
  qlUsuarioPrioridad.Caption := reglas.dameUsuario;
end;

procedure TfrmPRN_0005.qbDetallePrioridadBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  if cambio then
     qbDetallePrioridad.Color := $00E9E9E9
  else
     qbDetallePrioridad.Color := clWhite;
  cambio := not(cambio);
end;

procedure TfrmPRN_0005.ibPrioridadClick(Sender: TObject);
var
   caja    : integer;
   almacen : integer;
begin
  inherited;
  if cbCajas.KeyValue = null then
     caja := 0
  else
     caja := cbCajas.KeyValue;

  if cbAlmacenes.KeyValue = null then
     almacen := 0
  else
     almacen := cbAlmacenes.KeyValue;

  qyCortePrioridad.Close;
  qyCortePrioridad.ParamByName('P_FECHA').AsDate      := deFecha.Date;
  qyCortePrioridad.ParamByName('P_CAJA').AsInteger    := caja;
  qyCortePrioridad.ParamByName('P_ALMACEN').AsInteger := almacen;
  qyCortePrioridad.Open;

  qyResumenPrioridad.Close;
  qyResumenPrioridad.ParamByName('P_FECHA').AsDate      := deFecha.Date;
  qyResumenPrioridad.ParamByName('P_CAJA').AsInteger    := caja;
  qyResumenPrioridad.ParamByName('P_ALMACEN').AsInteger := almacen;
  qyResumenPrioridad.Open;
  crCortePrioridad.Preview;
end;

procedure TfrmPRN_0005.crCortePrioridadAddReports(Sender: TObject);
begin
  inherited;
  with crCortePrioridad.Reports do
  begin
     Add(qrCortePrioridad);
     Add(qrResumenPrioridad);
  end;
end;

procedure TfrmPRN_0005.qrResumenPrioridadBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  inherited;
  qlUsuarioResumenPrioridad.Caption := reglas.dameUsuario;
end;

procedure TfrmPRN_0005.sbSinAlmacenClick(Sender: TObject);
begin
  inherited;
  cbAlmacenes.KeyValue := Null;
end;

procedure TfrmPRN_0005.qrDetallePrioridadBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  inherited;
  qlFechaDetallePrioridad.Caption   := FormatDateTime('dd/mmm/yyyy',reglas.dame_fecha);
  qlHoraDetallePrioridad.Caption    := FormatDateTime('hh:mm:ss am/pm',reglas.dame_fecha);
  qlUsuarioDetallePrioridad.Caption := reglas.dameUsuario;
end;

procedure TfrmPRN_0005.qbResumenDetallePrioridadBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  if cambio then
     qbResumenDetallePrioridad.Color := $00E9E9E9
  else
     qbResumenDetallePrioridad.Color := clWhite;
  cambio := not(cambio);
end;

procedure TfrmPRN_0005.fcImageBtn1Click(Sender: TObject);
var
   caja    : integer;
   almacen : integer;
begin
  inherited;
  if cbCajas.KeyValue = null then
     caja := 0
  else
     caja := cbCajas.KeyValue;

  if cbAlmacenes.KeyValue = null then
     almacen := 0
  else
     almacen := cbAlmacenes.KeyValue;

  qyDetallePrioridad.Close;
  qyDetallePrioridad.ParamByName('P_FECHA').AsDate      := deFecha.Date;
  qyDetallePrioridad.ParamByName('P_CAJA').AsInteger    := caja;
  qyDetallePrioridad.ParamByName('P_ALMACEN').AsInteger := almacen;
  qyDetallePrioridad.Open;

  qyTotalPriorioridad.Close;
  qyTotalPriorioridad.ParamByName('P_FECHA').AsDate      := deFecha.Date;
  qyTotalPriorioridad.ParamByName('P_CAJA').AsInteger    := caja;
  qyTotalPriorioridad.ParamByName('P_ALMACEN').AsInteger := almacen;
  qyTotalPriorioridad.Open;

  qrDetallePrioridad.PreviewModal;
end;

end.
