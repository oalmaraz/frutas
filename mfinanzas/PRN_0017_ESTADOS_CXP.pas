unit PRN_0017_ESTADOS_CXP;

interface
                               
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  padre, jpeg,  ExtCtrls,    Db,
        StdCtrls,
   IBCustomDataSet, IBQuery,  Buttons;

type
  TfrmPRN_0017 = class(TfrmPadre)
    qyEmpresa: TIBQuery;
    qyEmpresaR_CLAVE: TIBStringField;
    qyEmpresaR_NOMBRE: TIBStringField;
    qyEmpresaR_RAZON_SOCIAL: TIBStringField;
    qyEmpresaR_TELEFONO: TIBStringField;
    qyEmpresaR_RFC: TIBStringField;
    qyEmpresaR_CURP: TIBStringField;
    qyEstadosDeCuentas: TIBQuery;
    ibImprimir: TBitBtn;
    qyEstadosDeCuentasR_ID: TIntegerField;
    qyEstadosDeCuentasR_REFERENCIA: TIBStringField;
    qyEstadosDeCuentasR_NUMERO_DE_DOCUMENTOS: TIntegerField;
    qyEstadosDeCuentasR_DOCUMENTO: TIntegerField;
    qyEstadosDeCuentasR_PROVEEDOR: TIntegerField;
    qyEstadosDeCuentasR_PROVEEDOR_NOMBRE: TIBStringField;
    qyEstadosDeCuentasR_PROVEEDOR_CLAVE: TIBStringField;
    qyEstadosDeCuentasR_FECHA: TDateTimeField;
    qyEstadosDeCuentasR_FECHA_VENCIMIENTO: TDateTimeField;
    qyEstadosDeCuentasR_IMPORTE_INICIAL: TFloatField;
    qyEstadosDeCuentasR_SALDO_ACTUAL: TFloatField;
    qyEstadosDeCuentasR_ESTATUS: TIBStringField;
    qyEstadosDeCuentasR_VENCIMIENTOS: TIntegerField;
    qyEstadosDeCuentasR_ACUMULADO: TFloatField;
    qyEmpresaR_FAX: TIBStringField;
    qyEmpresaR_CIUDAD_DESCRIPCION: TIBStringField;
    qyEstadosDeCuentasR_MONEDA: TIntegerField;
    qyEstadosDeCuentasR_MONEDA_CLAVE: TIBStringField;
    qyEstadosDeCuentasR_MONEDA_DESCRIPCION: TIBStringField;
    qyConversion: TIBQuery;
    qyConversionR_ACUMULADO: TFloatField;
    qyConversionR_MONEDA: TIntegerField;
    qyConversionR_MONEDA_CLAVE: TIBStringField;
    qyConversionR_MONEDA_DESCRIPCION: TIBStringField;
    procedure FormCreate(Sender: TObject);
    procedure ibImprimirClick(Sender: TObject);
  private
    { Private declarations }
    awrCambio      : boolean;
    awrFINICIAL    : TDatetime;
    awrFFINAL      : TDatetime;
    awrPROVEEDOR   : integer;
    awrMONEDA      : Variant;
    awrVENCIMIENTO : string;
  public
    { Public declarations }
    procedure Open;
    procedure previewGral;
    procedure previewProv;
  published
     property FECHA_INICIAL : TDatetime read awrFINICIAL write awrFINICIAL;
     property FECHA_FINAL   : TDatetime read awrFFINAL write awrFFINAL;
     property PROVEEDOR     : integer read awrPROVEEDOR write awrPROVEEDOR;
     property MONEDA        : variant read awrMONEDA write awrMONEDA;
     property VENCIMIENTO   : string read awrVENCIMIENTO write awrVENCIMIENTO;
  end;

var
  frmPRN_0017: TfrmPRN_0017;

implementation

uses reglas_de_negocios, seleccionar_proveedor, IBModulo;

{$R *.DFM}

procedure TfrmPRN_0017.Open;
begin
   qyEstadosDeCuentas.Close;
   qyEstadosDeCuentas.ParamByName('P_DEL').AsString          := FormatDateTime('dd/mm/yyyy',FECHA_INICIAL);
   qyEstadosDeCuentas.ParamByName('P_AL').AsString           := FormatDateTime('dd/mm/yyyy',FECHA_FINAL);
   qyEstadosDeCuentas.ParamByName('P_PROVEEDOR').AsInteger   := PROVEEDOR;
   qyEstadosDeCuentas.ParamByName('P_MONEDA').Value          := MONEDA;
   qyEstadosDeCuentas.ParamByName('P_FECHA_VENCIM').AsString := VENCIMIENTO;
   qyEstadosDeCuentas.Open;

   qyConversion.Close;
   qyConversion.ParamByName('P_DEL').AsString          := FormatDateTime('dd/mm/yyyy',FECHA_INICIAL);
   qyConversion.ParamByName('P_AL').AsString           := FormatDateTime('dd/mm/yyyy',FECHA_FINAL);
   qyConversion.ParamByName('P_PROVEEDOR').AsInteger   := PROVEEDOR;
   qyConversion.ParamByName('P_MONEDA').Value          := MONEDA;
   qyConversion.ParamByName('P_FECHA_VENCIM').AsString := VENCIMIENTO;
   qyConversion.Open;
end;

procedure TfrmPRN_0017.previewProv;
begin
end;

procedure TfrmPRN_0017.PreviewGral;
begin
end;



procedure TfrmPRN_0017.FormCreate(Sender: TObject);
begin
  inherited;
  reglas.refresh_IBQuery(qyEmpresa);
end;

procedure TfrmPRN_0017.ibImprimirClick(Sender: TObject);
begin
  inherited;
{  qyEstadosDeCuentas.Close;
  case rgOpciones.ItemIndex of
    0: begin
         qyEstadosDeCuentas.ParamByName('P_DEL').AsString        := FormatDateTime('dd/mm/yyyy',deFechaDel.Date);
         qyEstadosDeCuentas.ParamByName('P_AL').AsString         := FormatDateTime('dd/mm/yyyy',deFechaAl.Date);
         qyEstadosDeCuentas.ParamByName('P_PROVEEDOR').AsInteger := -3;
         qyEstadosDeCuentas.ParamByName('P_CUAL').AsInteger      := rgOpciones.ItemIndex;
       end;
    1: begin
         qyEstadosDeCuentas.ParamByName('P_DEL').AsString        := FormatDateTime('dd/mm/yyyy',deFechaDel.Date);
         qyEstadosDeCuentas.ParamByName('P_AL').AsString         := FormatDateTime('dd/mm/yyyy',deFechaAl.Date);
         qyEstadosDeCuentas.ParamByName('P_PROVEEDOR').AsInteger := dsProveedor.DataSet.FieldByName('R_ID').AsInteger;
         qyEstadosDeCuentas.ParamByName('P_CUAL').AsInteger      := rgOpciones.ItemIndex;
       end;
    2: begin
         deFechaDel.Date := StrToDate(FormatDateTime('dd/mm/yyyy',reglas.dame_fecha));
         deFechaAl.Date  := StrToDate(FormatDateTime('dd/mm/yyyy',reglas.dame_fecha));

         qyEstadosDeCuentas.ParamByName('P_DEL').AsString        := FormatDateTime('dd/mm/yyyy',deFechaDel.Date);
         qyEstadosDeCuentas.ParamByName('P_AL').AsString         := FormatDateTime('dd/mm/yyyy',deFechaAl.Date);
         qyEstadosDeCuentas.ParamByName('P_PROVEEDOR').AsInteger := dsProveedor.DataSet.FieldByName('R_ID').AsInteger;
         qyEstadosDeCuentas.ParamByName('P_CUAL').AsInteger      := rgOpciones.ItemIndex;
       end;
    3: begin
         deFechaDel.Date := StrToDate(FormatDateTime('dd/mm/yyyy',reglas.dame_fecha));
         deFechaAl.Date  := StrToDate(FormatDateTime('dd/mm/yyyy',reglas.dame_fecha));

         qyEstadosDeCuentas.ParamByName('P_DEL').AsString        := FormatDateTime('dd/mm/yyyy',deFechaDel.Date);
         qyEstadosDeCuentas.ParamByName('P_AL').AsString         := FormatDateTime('dd/mm/yyyy',deFechaAl.Date);
         qyEstadosDeCuentas.ParamByName('P_PROVEEDOR').AsInteger := -3;
         qyEstadosDeCuentas.ParamByName('P_CUAL').AsInteger      := rgOpciones.ItemIndex;
       end;
  end;
  qyEstadosDeCuentas.Open;
  case rgOpciones.ItemIndex of
    0,
    1: qrPRN_0017.Preview;
    2: qrProveedor.Preview;
    3: qrEstadoDeCuenta.Preview;
  end;}
end;




end.
