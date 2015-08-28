unit PRN_0004_NOTA_VENTA_TXT;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  padre, jpeg,  ExtCtrls , IBStoredProc, Grids, DBGrids, ComCtrls, Buttons,
  Db, IBCustomDataSet, IBQuery, StdCtrls;

type
  TfrmPRN_0004_TXT = class(TfrmPadre)
    dsBusquedaVenta: TDataSource;
    qyBusquedaVenta: TIBQuery;
    qyBusquedaVentaR_ID: TIntegerField;
    qyBusquedaVentaR_FOLIO_DE_VENTA: TIntegerField;
    qyBusquedaVentaR_ALMACEN: TIntegerField;
    qyBusquedaVentaR_ALMACEN_NOMBRE: TIBStringField;
    qyBusquedaVentaR_CAJERO: TIntegerField;
    qyBusquedaVentaR_CAJERO_NOMBRE: TIBStringField;
    qyBusquedaVentaR_CONDICION_COMERCIAL: TIntegerField;
    qyBusquedaVentaR_CONDICION_NOMBRE: TIBStringField;
    qyBusquedaVentaR_CLIENTE: TIntegerField;
    qyBusquedaVentaR_CLIENTE_NOMBRE: TIBStringField;
    qyBusquedaVentaR_EXTENSION: TIntegerField;
    qyBusquedaVentaR_EXTENSION_NOMBRE: TIBStringField;
    qyBusquedaVentaR_FECHA_ALTA: TDateTimeField;
    qyBusquedaVentaR_CAJA: TIntegerField;
    qyBusquedaVentaR_CAJA_NOMBRE: TIBStringField;
    qyBusquedaVentaR_GRANTOTAL: TFloatField;
    qyBusquedaVentaR_MONEDA: TIntegerField;
    qyBusquedaVentaR_MONEDA_DESCRIPCION: TIBStringField;
    qyEmpresa: TIBQuery;
    qyEmpresaR_CLAVE: TIBStringField;
    qyEmpresaR_NOMBRE: TIBStringField;
    qyEmpresaR_RAZON_SOCIAL: TIBStringField;
    qyEmpresaR_TELEFONO: TIBStringField;
    qyEmpresaR_RFC: TIBStringField;
    qyEmpresaR_CURP: TIBStringField;
    qyEmpresaR_CIUDAD_DESCRIPCION: TIBStringField;
    dsEmpresa: TDataSource;
    qyEncabezadoNV: TIBQuery;
    qyEncabezadoNVR_ID: TIntegerField;
    qyEncabezadoNVR_FOLIO_DE_VENTA: TIntegerField;
    qyEncabezadoNVR_ALMACEN: TIntegerField;
    qyEncabezadoNVR_CAJERO: TIntegerField;
    qyEncabezadoNVR_CONDICION_COMERCIAL: TIntegerField;
    qyEncabezadoNVR_CLIENTE: TIntegerField;
    qyEncabezadoNVR_EXTENSION: TIntegerField;
    qyEncabezadoNVR_FECHA_ALTA: TDateTimeField;
    qyEncabezadoNVR_CAJA: TIntegerField;
    qyEncabezadoNVR_SUBTOTAL: TFloatField;
    qyEncabezadoNVR_IVA: TFloatField;
    qyEncabezadoNVR_IEPS: TFloatField;
    qyEncabezadoNVR_IMPUESTO1: TFloatField;
    qyEncabezadoNVR_IMPUESTO2: TFloatField;
    qyEncabezadoNVR_TOTAL: TFloatField;
    qyEncabezadoNVR_DESCUENTO_GLOBAL_PORC: TFloatField;
    qyEncabezadoNVR_DESCUENTO_CANTIDAD_GLOBAL: TFloatField;
    qyEncabezadoNVR_DESCUENTO_CANTIDAD_PARCIAL: TFloatField;
    qyEncabezadoNVR_GRANTOTAL: TFloatField;
    qyEncabezadoNVR_MONEDA: TFloatField;
    qyEncabezadoNVR_CAMBIO_ENTREGADO: TFloatField;
    qyEncabezadoNVR_FOLIO_HISTORICO: TIntegerField;
    qyEncabezadoNVR_FOLIO_DEVOLUCION: TIntegerField;
    qyEncabezadoNVR_ESTATUS: TIBStringField;
    qyEncabezadoNVR_TOTAL_REF_PAGOS: TFloatField;
    qyEncabezadoNVR_ALMACEN_CLAVE: TIBStringField;
    qyEncabezadoNVR_ALMACEN_NOMBRE: TIBStringField;
    qyEncabezadoNVR_CAJERO_NOMBRE: TIBStringField;
    qyEncabezadoNVR_CONDICION_CLAVE: TIBStringField;
    qyEncabezadoNVR_CONDICION_NOMBRE: TIBStringField;
    qyEncabezadoNVR_CLIENTE_NOMBRE: TIBStringField;
    qyEncabezadoNVR_EXTENSION_NOMBRE: TIBStringField;
    qyEncabezadoNVR_CAJA_NOMBRE: TIBStringField;
    qyEncabezadoNVR_MONEDA_CLAVE: TIBStringField;
    qyEncabezadoNVR_MONEDA_DESCRIPCION: TIBStringField;
    qyEncabezadoNVR_CLIENTE_CIUDAD: TIBStringField;
    qyEncabezadoNVR_ALMACEN_SERIE: TIBStringField;
    qyEncabezadoNVR_ALMACEN_OBSERVACIONES: TBlobField;
    qyEncabezadoNVR_CAJERO_CLAVE: TIBStringField;
    qyEncabezadoNVR_CAJAS: TIntegerField;
    qyEncabezadoNVR_TOTAL_CAJAS: TFloatField;
    qyEncabezadoNVR_CLIENTE_DOMICILIO: TIBStringField;
    qyEncabezadoNVR_CLIENTE_CLAVE: TIBStringField;
    qyEncabezadoNVR_CLIENTE_RFC: TIBStringField;
    qyEncabezadoNVR_FECHA_VENCIMIENTO: TDateTimeField;
    dsEncabezado: TDataSource;
    dsDetalle: TDataSource;
    qyDetalleNV: TIBQuery;
    qyDetalleNVR_ID: TIntegerField;
    qyDetalleNVR_PUNTO_DE_VENTA: TIntegerField;
    qyDetalleNVR_MATERIAL: TIntegerField;
    qyDetalleNVR_CANTIDAD: TFloatField;
    qyDetalleNVR_UNIDAD: TIntegerField;
    qyDetalleNVR_PRECIO_VENTA: TFloatField;
    qyDetalleNVR_COSTO_COMPRA: TFloatField;
    qyDetalleNVR_VENDEDOR: TIntegerField;
    qyDetalleNVR_DESCUENTO_PORC: TFloatField;
    qyDetalleNVR_SUBTOTAL: TFloatField;
    qyDetalleNVR_IVA: TFloatField;
    qyDetalleNVR_IEPS: TFloatField;
    qyDetalleNVR_IMPUESTO1: TFloatField;
    qyDetalleNVR_IMPUESTO2: TFloatField;
    qyDetalleNVR_IVA_PORC: TFloatField;
    qyDetalleNVR_IEPS_PORC: TFloatField;
    qyDetalleNVR_IMPUESTO1_PORC: TFloatField;
    qyDetalleNVR_IMPUESTO2_PORC: TFloatField;
    qyDetalleNVR_IVA_DP: TFloatField;
    qyDetalleNVR_IEPS_DP: TFloatField;
    qyDetalleNVR_IMPUESTO1_DP: TFloatField;
    qyDetalleNVR_IMPUESTO2_DP: TFloatField;
    qyDetalleNVR_SUBTOTAL_DP: TFloatField;
    qyDetalleNVR_IVA_DG: TFloatField;
    qyDetalleNVR_IEPS_DG: TFloatField;
    qyDetalleNVR_IMPUESTO1_DG: TFloatField;
    qyDetalleNVR_IMPUESTO2_DG: TFloatField;
    qyDetalleNVR_SUBTOTAL_DG: TFloatField;
    qyDetalleNVR_ESTATUS: TIBStringField;
    qyDetalleNVR_TOTAL: TFloatField;
    qyDetalleNVR_DP: TFloatField;
    qyDetalleNVR_DG: TFloatField;
    qyDetalleNVR_GT: TFloatField;
    qyDetalleNVR_MATERIAL_CLAVE: TIBStringField;
    qyDetalleNVR_MATERIAL_DESCRIPCION: TIBStringField;
    qyDetalleNVR_UNIDAD_CLAVE: TIBStringField;
    qyDetalleNVR_UNIDAD_DESCRIPCION: TIBStringField;
    qyDetalleNVR_VENDEDOR_NOMBRE: TIBStringField;
    qyDetalleNVR_CAJAS: TIntegerField;
    Label3: TLabel;
    deFecha: TDateTimePicker;
    ceConsecutivo: TEdit;
    Label1: TLabel;
    ibBusqueda: TBitBtn;
    ibImprimir: TBitBtn;
    ibCerrar: TBitBtn;
    dgFacturados: TDBGrid;
    spAUTO_FOLIO: TIBStoredProc;
    spMODIFICAR_FOLIO: TIBStoredProc;
    spACTUALIZA_NOTA_DE_VENTA: TIBStoredProc;
    qyDetalleNVdescripcion: TStringField;
    qyEncabezadoNVcantidadconletra: TStringField;
    qyNumeroCajas: TIBQuery;
    qyNumeroCajasR_NUM_CAJAS_COBRO: TIntegerField;
    qyNumeroCajasR_NUM_CAJAS_NO_COBRO: TIntegerField;
    qyNumeroCajasR_TIPO_CAJA: TIntegerField;
    qyNumeroCajasR_MATERIAL_CLAVE: TIBStringField;
    qyNumeroCajasR_MATERIAL_DESCRIPCION: TIBStringField;
    qyNumeroCajasR_PRECIO: TFloatField;
    qyNumeroCajasR_TOTAL: TFloatField;
    qyNumeroCajasR_ULTIMO: TIBStringField;
    dsNumeroCajas: TDataSource;
    qyEncabezadoNVR_PRIORIDAD: TIBStringField;
    qyEncabezadoNVR_SERIE_NV: TIBStringField;
    qyEncabezadoNVR_CONSECUTIVO: TIntegerField;
    qyEncabezadoNVtotal: TFloatField;
    qyVerificarFolio: TIBQuery;
    qyVerificarFolioR_ACEPTADO: TIBStringField;
    procedure FormCreate(Sender: TObject);
    procedure qyDetalleNVCalcFields(DataSet: TDataSet);
    procedure qyEncabezadoNVCalcFields(DataSet: TDataSet);
    procedure ibBusquedaClick(Sender: TObject);
    procedure dsBusquedaVentaDataChange(Sender: TObject; Field: TField);
    procedure ibImprimirClick(Sender: TObject);
    procedure dgFacturadosDblClick(Sender: TObject);
    procedure ceConsecutivoKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    almacen         : integer;
    ruta            : string;
    reporte         : string;
    strImpresora    : string;
    strEscImpresora : string;
    pedirFolio      : boolean;
    procedure loadImpresora;
  public
    { Public declarations }
    constructor CrearA(AOwner : TComponent; p_nv : integer);
    constructor CrearB(AOwner : TComponent; p_almacen, x1, y1, y2 : integer);
    procedure imprimir;
  end;

var
  frmPRN_0004_TXT: TfrmPRN_0004_TXT;

implementation

uses reglas_de_negocios, inifiles, IBData, controladorImpresora, IBModulo;

{$R *.DFM}

constructor TfrmPRN_0004_TXT.CrearA(AOwner : TComponent; p_nv : integer);
begin
   Create(AOwner);

   qyEncabezadoNV.Close;
   qyEncabezadoNV.ParamByName('P_VENTA').AsInteger := p_nv;
   qyEncabezadoNV.Open;

   qyDetalleNV.Close;
   qyDetalleNV.ParamByName('P_VENTA').AsInteger := p_nv;
   qyDetalleNV.Open;
end;

constructor TfrmPRN_0004_TXT.CrearB(AOwner : TComponent; p_almacen, x1, y1, y2 : integer);
begin
   Create(AOwner);
   Left    := x1;
   Top     := y1;
   Height  := y2;
   almacen := p_almacen;
   dmIBData.spFECHA_SERVIDOR.ExecProc;
   deFecha.Date := StrToDate(FormatDateTime('dd/mm/yyyy',dmIBData.spFECHA_SERVIDOR.ParamByName('R_FECHA').AsDateTime));
end;

procedure TfrmPRN_0004_TXT.imprimir;
var
  // prReporte  : TprTxReport;
   salir      : boolean;
   ClickedOK  : boolean;
   NewString  : string;
   NewValor   : integer;
   salirFolio : boolean;
begin
   salirFolio := true;
   ClickedOK  := true;
   NewValor   := 0;
   if pedirFolio then
   begin
      repeat
         salir := true;
         spAUTO_FOLIO.ParamByName('P_MODULO').AsInteger   := 3;//El parametro 3 en modulo funcion es para nota de venta
         spAUTO_FOLIO.ParamByName('P_SUBCLASE').AsInteger := qyEncabezadoNV.FieldByName('R_ALMACEN').AsInteger;
         spAUTO_FOLIO.ParamByName('P_AFECTAR').AsString   := 'No';
         spAUTO_FOLIO.ExecProc;
         spAUTO_FOLIO.Transaction.CommitRetaining;

         repeat
            try
               SalirFolio := true;
               NewString  := spAUTO_FOLIO.ParamByName('R_FOLIO').AsString;
               ClickedOK  := InputQuery('Notas de Venta', 'Folio', NewString);
               NewValor   := StrToInt(NewString);
            except
               on EConvertError do
               begin
                  salirFolio := false;
                  ShowMessage('Valor introducido invalido.');
               end
            end;
         until salirFolio;

         if (ClickedOK) and (NewString <> '') then
         begin
            qyVerificarFolio.Close;
            qyVerificarFolio.ParamByName('P_ID').AsInteger      := qyEncabezadoNV.FieldByName('R_ID').AsInteger;
            qyVerificarFolio.ParamByName('P_FOLIO').AsInteger   := NewValor;
            qyVerificarFolio.ParamByName('P_ALMACEN').AsInteger := qyEncabezadoNV.FieldByName('R_ALMACEN').AsInteger;
            qyVerificarFolio.Open;
            if qyVerificarFolio.FieldByName('R_ACEPTADO').AsString = 'No' then
            begin
               salir := false;
               ShowMessage('Ya se encuentra este folio, para el almacen y la serie de este mismo.'+#13+'capturar otro folio o verifique su serie de notas de venta.');
            end;
         end;
      until salir;

      if (ClickedOK) and (NewString <> '') then
      begin
         //se actualiza el folio, si es diferente al que el sistema asigno, para que coincida con el de su consecutivo
         if NewValor <> spAUTO_FOLIO.ParamByName('R_FOLIO').AsInteger then
         begin
            spMODIFICAR_FOLIO.ParamByName('P_MODULO').AsInteger      := 3;//El parametro 3 en modulo funcion es para nota de venta
            spMODIFICAR_FOLIO.ParamByName('P_SUBCLASE').AsInteger    := qyEncabezadoNV.FieldByName('R_ALMACEN').AsInteger;
            spMODIFICAR_FOLIO.ParamByName('P_CONSECUTIVO').AsInteger := NewValor;
            spMODIFICAR_FOLIO.ExecProc;
            spMODIFICAR_FOLIO.Transaction.CommitRetaining;
         end;
         spAUTO_FOLIO.ParamByName('P_MODULO').AsInteger   := 3;//El parametro 3 en modulo funcion es para nota de venta
         spAUTO_FOLIO.ParamByName('P_SUBCLASE').AsInteger := qyEncabezadoNV.FieldByName('R_ALMACEN').AsInteger;
         spAUTO_FOLIO.ParamByName('P_AFECTAR').AsString   := 'Si';
         spAUTO_FOLIO.ExecProc;
         spAUTO_FOLIO.Transaction.CommitRetaining;
      end;
   end
   else
      begin
         repeat
            try
               SalirFolio := true;
               NewString  := qyEncabezadoNV.FieldByName('R_CONSECUTIVO').AsString;
               ClickedOK  := InputQuery('Notas de Venta', 'Folio', NewString);
               NewValor   := StrToInt(NewString);
            except
               on EConvertError do
               begin
                  salirFolio := false;
                  ShowMessage('Valor introducido invalido.');
               end
            end;
         until salirFolio;
      end;

   if (ClickedOK) and (NewString <> '') then
   begin
      spACTUALIZA_NOTA_DE_VENTA.ParamByName('P_VENTA').AsInteger   := qyEncabezadoNV.FieldByName('R_ID').AsInteger;
      spACTUALIZA_NOTA_DE_VENTA.ParamByName('P_ALMACEN').AsInteger := qyEncabezadoNV.FieldByName('R_ALMACEN').AsInteger;
      spACTUALIZA_NOTA_DE_VENTA.ParamByName('P_FOLIO').AsInteger   := NewValor;
      spACTUALIZA_NOTA_DE_VENTA.ExecProc;
      spACTUALIZA_NOTA_DE_VENTA.Transaction.CommitRetaining;
      reglas.refresh_IBQuery(qyEncabezadoNV);

      //impresion
      {
      prReporte := TprTxReport.Create(Self);
      prReporte.LoadTemplateFromFile(ruta+reporte,false);
      prReporte.PrinterName  := strImpresora;
      prReporte.ESCModelName := strEscImpresora;
      prReporte.PrepareReport;
      prReporte.PrintPreparedReport;
      prReporte.Destroy;
      }
   end;
end;

procedure TfrmPRN_0004_TXT.loadImpresora;
var
   iniFile        : TIniFile;
   strPrinterNom1 : string;
   strPrinterVal1 : string;
   strEscModel1   : string;
begin
   if reglas.activarElegirControladorImpresora('NOTAS_DE_VENTA') then
   begin
      frmControladorImpresoras := TfrmControladorImpresoras.Create(Application);
      frmControladorImpresoras.BOTON := boNVenta;
      frmControladorImpresoras.ShowModal;
      frmControladorImpresoras.Destroy;
   end;
   iniFile        := TIniFile.Create(ChangeFileExt(Application.ExeName,'.INI'));
   strPrinterNom1 := iniFile.ReadString('NOTAS_DE_VENTA','ImpresoraNom1','');
   strPrinterVal1 := iniFile.ReadString('NOTAS_DE_VENTA','ImpresoraVal1','');
   strEscModel1   := iniFile.ReadString('NOTAS_DE_VENTA','EscModel1'    ,'');
   strImpresora    := strPrinterNom1;
   strEscImpresora := strEscModel1;
   iniFile.Destroy;
end;

procedure TfrmPRN_0004_TXT.FormCreate(Sender: TObject);
var
   SearchRec : TSearchRec;
begin
  pedirFolio := true;
  loadImpresora;
  inherited;
  //cargar archivo del directorio de reportes
  ruta := ExtractFilePath(ParamStr(0))+'reportes\';
  if FindFirst(ruta+'nota_de_venta.prt', faAnyFile, SearchRec) = 0 then
  begin
     reporte := 'nota_de_venta.prt';
  end;
  reglas.refresh_IBQuery(qyEmpresa);
end;

procedure TfrmPRN_0004_TXT.qyDetalleNVCalcFields(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('DESCRIPCION').AsString := reglas.convertirOEM(DataSet.FieldByName('R_MATERIAL_DESCRIPCION').AsString);
end;

procedure TfrmPRN_0004_TXT.qyEncabezadoNVCalcFields(DataSet: TDataSet);
var
   enteroStr : string;
   fracStr   : string;
begin
  inherited;
  if (DataSet.FieldByName('R_GRANTOTAL').AsString <> '') then
  begin
     DataSet.FieldByName('TOTAL').AsFloat := DataSet.FieldByName('R_GRANTOTAL').AsFloat - DataSet.FieldByName('R_TOTAL_CAJAS').AsFloat;
     reglas.separarFlotante(DataSet.FieldByName('TOTAL').AsFloat, enteroStr, fracStr);
     //leCantidad.Numero := StrToInt(enteroStr);
     //leCantidad.Moneda := DataSet.FieldByName('R_MONEDA_DESCRIPCION').AsString;
     //DataSet.FieldByName('CANTIDADCONLETRA').AsString := UpperCase(leCantidad.AsString + ' ' + fracStr + '/100 ' + DataSet.FieldByName('R_MONEDA_CLAVE').AsString);
  end
  else
     begin
        DataSet.FieldByName('CANTIDADCONLETRA').AsString := '';
        DataSet.FieldByName('TOTAL').AsFloat             := 0;
     end;
end;

procedure TfrmPRN_0004_TXT.ibBusquedaClick(Sender: TObject);
begin
  inherited;
  qyBusquedaVenta.Close;
  qyBusquedaVenta.ParamByName('P_FECHA').AsDate      := StrToDate(FormatDateTime('dd/mm/yyyy',deFecha.Date));
  qyBusquedaVenta.ParamByName('P_FOLIO').AsInteger   := StrToInt(ceConsecutivo.Text);
  qyBusquedaVenta.ParamByName('P_ALMACEN').AsInteger := almacen;
  qyBusquedaVenta.Open;
end;

procedure TfrmPRN_0004_TXT.dsBusquedaVentaDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if dsBusquedaVenta.DataSet <> nil then
  begin
     ibImprimir.Enabled := not(dsBusquedaVenta.DataSet.IsEmpty);
     qyEncabezadoNV.Close;
     qyEncabezadoNV.ParamByName('P_VENTA').AsInteger := dsBusquedaVenta.DataSet.FieldByName('R_ID').AsInteger;
     qyEncabezadoNV.Open;

     qyDetalleNV.Close;
     qyDetalleNV.ParamByName('P_VENTA').AsInteger := dsEncabezado.DataSet.FieldByName('R_ID').AsInteger;
     qyDetalleNV.Open;

{     qyNumeroCajas.Close;
     qyNumeroCajas.ParamByName('P_VENTA').AsInteger := dsEncabezado.DataSet.FieldByName('R_ID').AsInteger;
     qyNumeroCajas.Open;}
  end;
end;

procedure TfrmPRN_0004_TXT.ibImprimirClick(Sender: TObject);
begin
  inherited;
  qyEncabezadoNV.Close;
  qyEncabezadoNV.ParamByName('P_VENTA').AsInteger := dsBusquedaVenta.DataSet.FieldByName('R_ID').AsInteger;
  qyEncabezadoNV.Open;

  qyDetalleNV.Close;
  qyDetalleNV.ParamByName('P_VENTA').AsInteger := dsBusquedaVenta.DataSet.FieldByName('R_ID').AsInteger;
  qyDetalleNV.Open;

  imprimir;
end;

procedure TfrmPRN_0004_TXT.dgFacturadosDblClick(Sender: TObject);
begin
  inherited;
  if ibImprimir.Enabled then
     ibImprimir.Click;
end;

procedure TfrmPRN_0004_TXT.ceConsecutivoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if (key = #13) and (ceConsecutivo.Text <> '') then
  begin
     ibBusqueda.Click;
  end;
end;

end.
