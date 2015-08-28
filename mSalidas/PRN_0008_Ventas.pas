unit PRN_0008_Ventas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  padre, Grids, DBGrids, Buttons, IBStoredProc, Db, IBCustomDataSet,
  IBQuery, StdCtrls, ExtCtrls;

type
  TImpresion = record
    impresora    : string;
    escImpresora : string;
    idImpresora  : integer;
    cajon        : string;
    puerto       : string;
    caracteres   : string;
    cutter       : string;
    autoCutter   : string;
  end;

  TImpresionComun = record
    impresiones : integer;
    cuantas     : integer;
    modo        : string;
  end;

  TfrmPRN_0008 = class(TfrmPadre)
    qyEncabezadoPV: TIBQuery;
    qyDetallePV: TIBQuery;
    qyEncabezadoPVR_ID: TIntegerField;
    qyEncabezadoPVR_FOLIO_DE_VENTA: TIntegerField;
    qyEncabezadoPVR_ALMACEN: TIntegerField;
    qyEncabezadoPVR_CAJERO: TIntegerField;
    qyEncabezadoPVR_CONDICION_COMERCIAL: TIntegerField;
    qyEncabezadoPVR_CLIENTE: TIntegerField;
    qyEncabezadoPVR_EXTENSION: TIntegerField;
    qyEncabezadoPVR_FECHA_ALTA: TDateTimeField;
    qyEncabezadoPVR_CAJA: TIntegerField;
    qyEncabezadoPVR_SUBTOTAL: TFloatField;
    qyEncabezadoPVR_IVA: TFloatField;
    qyEncabezadoPVR_IEPS: TFloatField;
    qyEncabezadoPVR_IMPUESTO1: TFloatField;
    qyEncabezadoPVR_IMPUESTO2: TFloatField;
    qyEncabezadoPVR_TOTAL: TFloatField;
    qyEncabezadoPVR_DESCUENTO_GLOBAL_PORC: TFloatField;
    qyEncabezadoPVR_DESCUENTO_CANTIDAD_GLOBAL: TFloatField;
    qyEncabezadoPVR_DESCUENTO_CANTIDAD_PARCIAL: TFloatField;
    qyEncabezadoPVR_GRANTOTAL: TFloatField;
    qyEncabezadoPVR_CAMBIO_ENTREGADO: TFloatField;
    qyEncabezadoPVR_FOLIO_HISTORICO: TIntegerField;
    qyEncabezadoPVR_FOLIO_DEVOLUCION: TIntegerField;
    qyEncabezadoPVR_ESTATUS: TIBStringField;
    qyEncabezadoPVR_TOTAL_REF_PAGOS: TFloatField;
    qyEncabezadoPVR_ALMACEN_CLAVE: TIBStringField;
    qyEncabezadoPVR_ALMACEN_NOMBRE: TIBStringField;
    qyEncabezadoPVR_ALMACEN_OBSERVACIONES: TBlobField;
    qyEncabezadoPVR_CAJERO_CLAVE: TIBStringField;
    qyEncabezadoPVR_CAJERO_NOMBRE: TIBStringField;
    qyEncabezadoPVR_CONDICION_CLAVE: TIBStringField;
    qyEncabezadoPVR_CONDICION_NOMBRE: TIBStringField;
    qyEncabezadoPVR_CLIENTE_NOMBRE: TIBStringField;
    qyEncabezadoPVR_CLIENTE_DOMICILIO: TIBStringField;
    qyEncabezadoPVR_CLIENTE_CIUDAD: TIBStringField;
    qyEncabezadoPVR_CLIENTE_CLAVE: TIBStringField;
    qyEncabezadoPVR_CLIENTE_RFC: TIBStringField;
    qyEncabezadoPVR_EXTENSION_NOMBRE: TIBStringField;
    qyEncabezadoPVR_CAJA_NOMBRE: TIBStringField;
    qyEncabezadoPVR_MONEDA_CLAVE: TIBStringField;
    qyEncabezadoPVR_MONEDA_DESCRIPCION: TIBStringField;
    qyEncabezadoPVR_ALMACEN_SERIE: TIBStringField;
    qyEncabezadoPVR_CAJAS: TIntegerField;
    qyEncabezadoPVR_TOTAL_CAJAS: TFloatField;
    qyEncabezadoPVR_FECHA_VENCIMIENTO: TDateTimeField;
    dsEncabezado: TDataSource;
    dsDetalle: TDataSource;
    Label1: TLabel;
    spNR: TIBStoredProc;
    qyEncabezadoPVR_PRIORIDAD: TIBStringField;
    qyEncabezadoPVR_SERIE_NV: TIBStringField;
    qyEncabezadoPVR_CONSECUTIVO: TIntegerField;
    qyEncabezadoPVR_DOCUMENTOS: TIBStringField;
    qyEncabezadoPVR_DESCRIPCION: TIBStringField;
    qyEncabezadoPVR_ETIQ_TOTAL: TIBStringField;
    qyEncabezadoPVR_ETIQ_CC_UNO: TIBStringField;
    qyEncabezadoPVR_ETIQ_CC_DOS: TIBStringField;
    qyEncabezadoPVR_ETIQ_CC_TRES: TIBStringField;
    qyEncabezadoPVR_CC_MONTO_UNO: TFloatField;
    qyEncabezadoPVR_CC_MONTO_DOS: TFloatField;
    qyEncabezadoPVR_CC_MONTO_TRES: TFloatField;
    qyEncabezadoPVR_ARTICULOS: TIntegerField;
    qyEncabezadoPVR_ETIQ_LINEA: TIBStringField;
    qyEncabezadoPVR_ES_R: TIBStringField;
    qyBusqueda: TIBQuery;
    dsBusqueda: TDataSource;
    dsPartidas: TDataSource;
    qyPartidas: TIBQuery;
    dgVentas: TDBGrid;
    dgDatalle: TDBGrid;
    spAUTO_FOLIO: TIBStoredProc;
    spMODIFICAR_FOLIO: TIBStoredProc;
    spACTUALIZA_NOTA_DE_VENTA: TIBStoredProc;
    qyVerificarFolio: TIBQuery;
    qyVerificarFolioR_ACEPTADO: TIBStringField;
    qyBusquedaID: TIntegerField;
    qyBusquedaFOLIO_DE_VENTA: TIntegerField;
    qyBusquedaGRANTOTAL: TFloatField;
    buExplorar: TBitBtn;
    buReImprimir: TBitBtn;
    buSalir: TBitBtn;
    edFolio: TEdit;
    qyBusquedaSinCaja: TIBQuery;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    FloatField1: TFloatField;
    qyBusquedaFECHA_ALTA: TDateTimeField;
    qyBusquedaCAJA: TIBStringField;
    qyBusquedaSinCajaFECHA_ALTA: TDateTimeField;
    qyBusquedaSinCajaCAJA: TIBStringField;
    qyBusquedaMONEDA: TIntegerField;
    qyBusquedaSinCajaMONEDA: TIntegerField;
    qyEncabezadoPVR_CANTIDAD_CON_LETRA: TIBStringField;
    qyEncabezadoPVR_ME_CODIGO: TIBStringField;
    qyEncabezadoPVR_ME_OTORGADOS: TFloatField;
    qyEncabezadoPVR_ME_TOTAL: TFloatField;
    qyPartidasR_ID: TIntegerField;
    qyPartidasR_PUNTO_DE_VENTA: TIntegerField;
    qyPartidasR_MATERIAL: TIntegerField;
    qyPartidasR_CLAVE: TIBStringField;
    qyPartidasR_DESCRIPCION: TIBStringField;
    qyPartidasR_UNIDAD: TIntegerField;
    qyPartidasR_DESCRIPCION_UNIDAD: TIBStringField;
    qyPartidasR_CANTIDAD: TFloatField;
    qyPartidasR_PRECIO: TFloatField;
    qyPartidasR_SUBTOTAL: TFloatField;
    qyPartidasR_IVA: TFloatField;
    qyPartidasR_IEPS: TFloatField;
    qyPartidasR_IMPUESTO1: TFloatField;
    qyPartidasR_IMPUESTO2: TFloatField;
    qyPartidasR_TOTAL: TFloatField;
    qyPartidasR_DESCUENTO_PORC: TFloatField;
    qyPartidasR_DP: TFloatField;
    qyPartidasR_DG: TFloatField;
    qyPartidasR_GT: TFloatField;
    qyPartidasR_ESTATUS: TIBStringField;
    qyPartidasR_CAJAS: TIntegerField;
    qyPartidasR_UNIDAD_CLAVE: TIBStringField;
    qyPartidasR_ROWS: TIntegerField;
    qyPartidasR_IVA_PORC: TFloatField;
    qyPartidasR_IEPS_PORC: TFloatField;
    qyPartidasR_IMPUESTO1_PORC: TFloatField;
    qyPartidasR_IMPUESTO2_PORC: TFloatField;
    qyPartidasR_PRECIO_SIN_IMPUESTOS: TFloatField;
    qyPartidasR_MEDIDA: TIntegerField;
    qyPartidasR_COLOR: TIntegerField;
    qyPartidasR_VENDEDOR: TIntegerField;
    qyPartidasR_VENDEDOR_NOMBRE: TIBStringField;
    qyPartidasR_HAY_OFERTA: TIBStringField;
    qyPartidasR_OFERTA_PORC: TFloatField;
    qyPartidasR_HAY_EXISTENCIA: TIBStringField;
    qyPartidasR_SERIE: TIBStringField;
    qyEncabezadoPVR_CLIENTE_EMAIL: TIBStringField;
    qyEncabezadoPVR_HOSP_OBSERVACIONES: TBlobField;
    qyEncabezadoPVR_HOSP_FOLIO: TIntegerField;
    qyEncabezadoPVR_FOLIO_ALMACEN: TIntegerField;
    qyEncabezadoPVR_FOLIO_GENERAL: TIntegerField;
    qyEncabezadoPVR_VENDEDOR: TIntegerField;
    qyEncabezadoPVR_VENDEDOR_C: TIBStringField;
    qyEncabezadoPVR_VENDEDOR_N: TIBStringField;
    qyEncabezadoPVR_MONEDA: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure qyBusquedaAfterOpen(DataSet: TDataSet);
    procedure buExplorarClick(Sender: TObject);
    procedure buSalirClick(Sender: TObject);
    procedure buReImprimirClick(Sender: TObject);
    procedure edFolioKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    awrID      : integer;
//    awrTOTAL   : double;
//    awrMONEDA  : string;
    //showmodal
    awrCaja         : integer;
    awrAlmacen      : integer;
    awrNivel        : integer;

    ruta            : string;
    reporte         : string;
    pedirFolioNV    : boolean;

    //Impresiones
    print1          : TImpresion;
    printC          : TImpresionComun;
    print2          : TImpresion;
    
    procedure setID(valor : integer);
    procedure loadImpresora;
    procedure loadImpresora2;
    procedure imprimir;
    procedure setCAJA(valor : integer);
    procedure miniPrinter(p_puerto : string; p_caracteres : string);
    procedure abrirCajon;
    procedure autoCutter;
  public
    { Public declarations }
    procedure Print;
  published
     property ID      : integer read awrID write setID;
     //showmodal
     property CAJA    : integer read awrCAJA write setCAJA;
     property ALMACEN : integer read awrALMACEN write awrALMACEN;
     property NIVEL   : integer read awrNivel write awrNivel;
  end;

var
  frmPRN_0008: TfrmPRN_0008;

implementation

uses iniFiles, Printers, IBModulo, reglas_de_negocios, controladorImpresora,
  IBData, UfrmAcceso;

{$R *.DFM}

procedure TfrmPRN_0008.miniPrinter(p_puerto : string; p_caracteres : string);
var
   f         : TextFile;
   secuencia : array[1..50] of integer;
   cantidad  : integer;
   posI      : integer;
   posF      : integer;
   cuantos   : integer;
   i         : integer;
begin
   posI     := 0;
   cantidad := 1;
   while (Pos('#', p_caracteres) > 0) do
   begin
      if posI <> 0 then
      begin
         posF    := Pos('#', p_caracteres);
         cuantos := (posF - posI) - 1;
         secuencia[cantidad] := StrToInt(Copy(p_caracteres, posI + 1, cuantos));
         cantidad := cantidad + 1;
         posI     := posF;
      end
      else//Inicio
         posI := Pos('#', p_caracteres);

      p_caracteres[Pos('#', p_caracteres)] := ',';
   end;
   secuencia[cantidad] := StrToInt(copy(p_caracteres, posI + 1, length(p_caracteres)));

   //Enviar Secuencia
   AssignFile(f,p_puerto);
   try
      Rewrite(f);
      for i := 1 to cantidad do
         Writeln(f, chr(secuencia[i]));
   finally
      CloseFile(f);
   end;
end;

procedure TfrmPRN_0008.setCAJA(valor : integer);
begin
   awrCAJA := valor;
   if valor = 0 then
   begin
      dsBusqueda.DataSet   := qyBusquedaSinCaja;
      //dgVentasCAJA.Visible := true;
   end
   else
      begin
         dsBusqueda.DataSet   := qyBusqueda;
         //dgVentasCAJA.Visible := false;
      end;
end;

procedure TfrmPRN_0008.setID(valor : integer);
begin
   awrID := valor;
   //encabezado
   qyEncabezadoPV.Close;
   qyEncabezadoPV.ParamByName('P_VENTA').AsInteger := awrID;
   qyEncabezadoPV.Open;
   //detalle
   qyDetallePV.Close;
   qyDetallePV.ParamByName('P_VENTA').AsInteger := awrID;
   qyDetallePV.Open;
end;

procedure TfrmPRN_0008.Print;
var
   SearchRec        : TSearchRec;
begin
   loadImpresora;

   if not(FindFirst(ruta+reporte, faAnyFile, SearchRec) = 0) then
   begin
      showmessage('Falta archivo: '+ruta+reporte);
   end
   else
      imprimir;
end;

procedure TfrmPRN_0008.abrirCajon;
begin
   //abrir cajon
   {
   if (qyEncabezadoPV.FieldByName('R_PRIORIDAD').AsString = 'No') and (UpperCase(print1.cajon) = 'SI') then
   begin
      tPrinter.abrir_puerto;

      if print1.puerto = 'LPT1' then
         tPrinter.PrinterPort := Lpt1
      else
      if print1.puerto = 'LPT2' then
         tPrinter.PrinterPort := Lpt2;

      tPrinter.CodeOpenDrawer := print1.caracteres;
      tPrinter.OpenDrawer;
      tPrinter.cerrar_puerto;
   end
   else
   if (qyEncabezadoPV.FieldByName('R_PRIORIDAD').AsString = 'Si') and (UpperCase(print2.cajon) = 'SI') then
   begin
      tPrinter.abrir_puerto;

      if print2.puerto = 'LPT1' then
         tPrinter.PrinterPort    := Lpt1
      else
      if print2.puerto = 'LPT2' then
         tPrinter.PrinterPort    := Lpt2;

      tPrinter.CodeOpenDrawer := print2.caracteres;
      tPrinter.OpenDrawer;
      tPrinter.cerrar_puerto;
   end;
   }
end;

procedure TfrmPRN_0008.autoCutter;
begin
   {
   if (qyEncabezadoPV.FieldByName('R_PRIORIDAD').AsString = 'No') and (UpperCase(print1.cutter) = 'SI') then
   begin
      tPrinter.abrir_puerto;

      if print1.puerto = 'LPT1' then
         tPrinter.PrinterPort    := Lpt1
      else
      if print1.puerto = 'LPT2' then
         tPrinter.PrinterPort    := Lpt2;

      tPrinter.CodeCut := print1.autoCutter;
      tPrinter.CutPaper;
      tPrinter.cerrar_puerto;
   end
   else
   if (qyEncabezadoPV.FieldByName('R_PRIORIDAD').AsString = 'Si') and (UpperCase(print2.cutter) = 'SI') then
   begin
      tPrinter.abrir_puerto;

      if print2.puerto = 'LPT1' then
         tPrinter.PrinterPort    := Lpt1
      else
      if print2.puerto = 'LPT2' then
         tPrinter.PrinterPort    := Lpt2;

      tPrinter.CodeCut := print2.autoCutter;
      tPrinter.CutPaper;
      tPrinter.cerrar_puerto;
   end;
   }
end;

procedure TfrmPRN_0008.imprimir;
var
 //  prDos      : TprTxReport;
   //prWin      : TprReport;
   ClickedOK  : boolean;
   NewString  : string;
   NewValor   : integer;
   salir      : boolean;
   salirFolio : boolean;
begin
   abrirCajon;

   salirFolio := true;
   ClickedOK  := true;
   NewValor   := 0;
   if qyEncabezadoPV.FieldByName('R_PRIORIDAD').AsString = 'No' then
   begin
      if pedirFolioNV then
      begin
         repeat
            salir := true;
            spAUTO_FOLIO.ParamByName('P_MODULO').AsInteger   := 3;//El parametro 3 en modulo funcion es para nota de venta
            spAUTO_FOLIO.ParamByName('P_SUBCLASE').AsInteger := qyEncabezadoPV.FieldByName('R_ALMACEN').AsInteger;
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
               qyVerificarFolio.ParamByName('P_ID').AsInteger      := qyEncabezadoPV.FieldByName('R_ID').AsInteger;
               qyVerificarFolio.ParamByName('P_FOLIO').AsInteger   := NewValor;
               qyVerificarFolio.ParamByName('P_ALMACEN').AsInteger := qyEncabezadoPV.FieldByName('R_ALMACEN').AsInteger;
               qyVerificarFolio.Open;
               if qyVerificarFolio.FieldByName('R_ACEPTADO').AsString = 'No' then
               begin
                  salir := false;
                  ShowMessage('Ya se encuentra este folio, para el almacen y la serie de este mismo.'+#13+
                  'capturar otro folio o verifique su serie de notas de venta.');
               end;
            end;
         until salir;

         if (ClickedOK) and (NewString <> '') then
         begin
            //se actualiza el folio, si es diferente al que el sistema asigno, para que coincida con el de su consecutivo
            if NewValor <> spAUTO_FOLIO.ParamByName('R_FOLIO').AsInteger then
            begin
               spMODIFICAR_FOLIO.ParamByName('P_MODULO').AsInteger      := 3;//El parametro 3 en modulo funcion es para nota de venta
               spMODIFICAR_FOLIO.ParamByName('P_SUBCLASE').AsInteger    := qyEncabezadoPV.FieldByName('R_ALMACEN').AsInteger;
               spMODIFICAR_FOLIO.ParamByName('P_CONSECUTIVO').AsInteger := NewValor;
               spMODIFICAR_FOLIO.ExecProc;
               spMODIFICAR_FOLIO.Transaction.CommitRetaining;
            end;
            spAUTO_FOLIO.ParamByName('P_MODULO').AsInteger   := 3;//El parametro 3 en modulo funcion es para nota de venta
            spAUTO_FOLIO.ParamByName('P_SUBCLASE').AsInteger := qyEncabezadoPV.FieldByName('R_ALMACEN').AsInteger;
            spAUTO_FOLIO.ParamByName('P_AFECTAR').AsString   := 'Si';
            spAUTO_FOLIO.ExecProc;
            spAUTO_FOLIO.Transaction.CommitRetaining;
         end;
      end
      else
         NewString := 'No Folio';

{         begin
            repeat
               try
                  SalirFolio := true;
                  NewString  := qyEncabezadoPV.FieldByName('R_CONSECUTIVO').AsString;
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
         end
         else}
   end
   else//folio de venta que es prioridad
      begin
         NewString := 'Prioridad';
      end;

   if (ClickedOK) and (NewString <> '') then
   begin
      if (qyEncabezadoPV.FieldByName('R_PRIORIDAD').AsString = 'No') and pedirFolioNV then
      begin
         spACTUALIZA_NOTA_DE_VENTA.ParamByName('P_VENTA').AsInteger   := qyEncabezadoPV.FieldByName('R_ID').AsInteger;
         spACTUALIZA_NOTA_DE_VENTA.ParamByName('P_ALMACEN').AsInteger := qyEncabezadoPV.FieldByName('R_ALMACEN').AsInteger;
         spACTUALIZA_NOTA_DE_VENTA.ParamByName('P_FOLIO').AsInteger   := NewValor;
         spACTUALIZA_NOTA_DE_VENTA.ExecProc;
         spACTUALIZA_NOTA_DE_VENTA.Transaction.CommitRetaining;
         reglas.refresh_IBQuery(qyEncabezadoPV);
      end;
   end;
   //impresion
   {
   if printC.modo = 'DOS' then
   begin
      prDOS := TprTxReport.Create(Self);
      prDOS.LoadTemplateFromFile(ruta+reporte,false);
      if (qyEncabezadoPV.FieldByName('R_PRIORIDAD').AsString = 'No') then
      begin
         prDOS.PrinterName  := print1.impresora;
         prDOS.ESCModelName := print1.escImpresora;
      end
      else
      begin
         prDOS.PrinterName  := print2.impresora;
         prDOS.ESCModelName := print2.escImpresora;
      end;
      prDOS.PrepareReport;
      prDOS.PrintPreparedReport;
      prDOS.Free;
   end
   else
      if printC.modo = 'WIN' then
      begin
         prWIN := TprReport.Create(Self);
         prWIN.LoadTemplateFromFile(ruta+reporte,false);
         if (qyEncabezadoPV.FieldByName('R_PRIORIDAD').AsString = 'No') then
         begin
            prWIN.PrinterName  := print1.impresora;
         end
         else
         begin
            prWIN.PrinterName  := print2.impresora;
         end;
         prWIN.PrepareReport;
         prWIN.PrintPreparedReport;
         prWIN.Free;
      end;
   }
   autoCutter;
end;

procedure TfrmPRN_0008.loadImpresora;
var
   iniFile        : TIniFile;
   //grupo 1
   v_ImpresoraNom1 : string;
   v_ImpresoraVal1 : string;
   v_EscModel1     : string;
   v_Cajon1        : string;
   v_Puerto1       : string;
   v_Caracteres1   : string;
   v_Cutter1       : string;
   v_AutoCutter1   : string;
   //grupo 2
   v_ImpresoraNom2 : string;
   v_ImpresoraVal2 : string;
   v_EscModel2     : string;
   v_Cajon2        : string;
   v_Puerto2       : string;
   v_Caracteres2   : string;
   v_Cutter2       : string;
   v_AutoCutter2   : string;
   //comun
   v_Impresiones   : string;
   v_Cuantas       : string;
   v_Modo          : string;
begin
   if reglas.activarElegirControladorImpresora('PVENTA') then
   begin
      frmControladorImpresoras := TfrmControladorImpresoras.Create(Application);
      frmControladorImpresoras.BOTON := boPVenta;
      frmControladorImpresoras.ShowModal;
      frmControladorImpresoras.Free;
   end;
   iniFile        := TIniFile.Create(ChangeFileExt(Application.ExeName,'.INI'));
   v_ImpresoraNom1 := iniFile.ReadString('PVENTA','ImpresoraNom1','');
   v_ImpresoraVal1 := iniFile.ReadString('PVENTA','ImpresoraVal1','');
   v_EscModel1     := iniFile.ReadString('PVENTA','EscModel1',    '');
   v_Cajon1        := iniFile.ReadString('PVENTA','Cajon1',       '');
   v_Puerto1       := iniFile.ReadString('PVENTA','Puerto1',      '');
   v_Caracteres1   := iniFile.ReadString('PVENTA','Caracteres1',  '');
   v_Cutter1       := iniFile.ReadString('PVENTA','Cutter1',      '');
   v_AutoCutter1   := iniFile.ReadString('PVENTA','AutoCutter1',  '');
   v_Impresiones   := iniFile.ReadString('PVENTA','Impresiones',  '');
   v_Cuantas       := iniFile.ReadString('PVENTA','Cuantas',      '');
   v_ImpresoraNom2 := iniFile.ReadString('PVENTA','ImpresoraNom2','');
   v_ImpresoraVal2 := iniFile.ReadString('PVENTA','ImpresoraVal2','');
   v_EscModel2     := iniFile.ReadString('PVENTA','EscModel2',    '');
   v_Cajon2        := iniFile.ReadString('PVENTA','Cajon2',       '');
   v_Puerto2       := iniFile.ReadString('PVENTA','Puerto2',      '');
   v_Caracteres2   := iniFile.ReadString('PVENTA','Caracteres2',  '');
   v_Cutter2       := iniFile.ReadString('PVENTA','Cutter2',      '');
   v_AutoCutter2   := iniFile.ReadString('PVENTA','AutoCutter2',  '');
   v_Modo          := iniFile.ReadString('PVENTA','Modo',         '');

   if v_Cuantas = '' then
      v_Cuantas := '0';
   if v_Impresiones = '' then
      v_Impresiones := '0';

   //cargar valores en print1
   print1.impresora       := v_ImpresoraNom1;
   print1.escImpresora    := v_EscModel1;
   print1.idImpresora     := StrtoInt(v_ImpresoraVal1);
   print1.cajon           := v_Cajon1;
   print1.puerto          := v_Puerto1;
   print1.caracteres      := v_Caracteres1;
   print1.cutter          := v_Cutter1;
   print1.autoCutter      := v_AutoCutter1;
   //carga valores comun
   printC.impresiones     := StrToInt(v_Impresiones);
   printC.cuantas         := StrToInt(v_Cuantas);
   printC.modo            := v_Modo;
   //carga valores print2
   print2.impresora       := v_ImpresoraNom2;
   print2.escImpresora    := v_EscModel2;
   print2.idImpresora     := StrtoInt(v_ImpresoraVal2);
   print2.cajon           := v_Cajon2;
   print2.puerto          := v_Puerto2;
   print2.caracteres      := v_Caracteres2;
   print2.cutter          := v_Cutter2;
   print2.autoCutter      := v_AutoCutter2;

   if printC.modo = 'WIN' then
      reporte := 'win_puntoDeVenta.prt' //<-Modo windows
   else
      reporte := 'puntoDeVenta.prt'; //<-Modo texto

   if (printC.cuantas <> printC.impresiones) or (printC.impresiones = 0) then
   begin
      printC.cuantas := printC.cuantas + 1;
   end
   else
      begin
         if qyEncabezadoPV.FieldByName('R_ES_R').AsString = 'No' then//<-verifica que el pago no fuera con cheque o tarjeta de credito
         begin
            printC.cuantas  := 0;

            spNR.ParamByName('P_ID').AsInteger := awrId;//<---convierte la venta en prioridad
            spNR.ExecProc;
            spNR.Transaction.CommitRetaining;

            qyEncabezadoPV.Close;
            qyEncabezadoPV.ParamByName('P_VENTA').AsInteger := awrId;
            qyEncabezadoPV.Open;

            if printC.modo = 'WIN' then
               reporte := 'win_puntoDeVentaP.prt' //<-Modo Windows
            else
               reporte := 'puntoDeVentaP.prt';//<-Modo Texto
         end;
      end;
   iniFile.WriteString('PVENTA','Cuantas',IntToStr(printC.cuantas));//<-graba el valor del contador
   iniFile.Free;
end;

procedure TfrmPRN_0008.loadImpresora2;
var
   iniFile : TIniFile;
   //grupo 1
   v_ImpresoraNom1 : string;
   v_ImpresoraVal1 : string;
   v_EscModel1     : string;
   v_Cajon1        : string;
   v_Puerto1       : string;
   v_Caracteres1   : string;
   //grupo 2
   v_ImpresoraNom2 : string;
   v_ImpresoraVal2 : string;
   v_EscModel2     : string;
   v_Cajon2        : string;
   v_Puerto2       : string;
   v_Caracteres2   : string;
   //comun
   v_Impresiones   : string;
   v_Cuantas       : string;
   v_Modo          : string;
begin
   if reglas.activarElegirControladorImpresora('PVENTA') then
   begin
      frmControladorImpresoras := TfrmControladorImpresoras.Create(Application);
      frmControladorImpresoras.BOTON := boPVenta;
      frmControladorImpresoras.ShowModal;
      frmControladorImpresoras.Free;
   end;
   iniFile        := TIniFile.Create(ChangeFileExt(Application.ExeName,'.INI'));
   v_ImpresoraNom1 := iniFile.ReadString('PVENTA','ImpresoraNom1','');
   v_ImpresoraVal1 := iniFile.ReadString('PVENTA','ImpresoraVal1','');
   v_EscModel1     := iniFile.ReadString('PVENTA','EscModel1',    '');
   v_Cajon1        := iniFile.ReadString('PVENTA','Cajon1',       '');
   v_Puerto1       := iniFile.ReadString('PVENTA','Puerto1',      '');
   v_Caracteres1   := iniFile.ReadString('PVENTA','Caracteres1',  '');
   v_Impresiones   := iniFile.ReadString('PVENTA','Impresiones',  '');
   v_Cuantas       := iniFile.ReadString('PVENTA','Cuantas',      '');
   v_ImpresoraNom2 := iniFile.ReadString('PVENTA','ImpresoraNom2','');
   v_ImpresoraVal2 := iniFile.ReadString('PVENTA','ImpresoraVal2','');
   v_EscModel2     := iniFile.ReadString('PVENTA','EscModel2',    '');
   v_Cajon2        := iniFile.ReadString('PVENTA','Cajon2',       '');
   v_Puerto2       := iniFile.ReadString('PVENTA','Puerto2',      '');
   v_Caracteres2   := iniFile.ReadString('PVENTA','Caracteres2',  '');
   v_Modo          := iniFile.ReadString('PVENTA','Modo',         '');

   //cargar valores en print1
   print1.impresora       := v_ImpresoraNom1;
   print1.escImpresora    := v_EscModel1;
   print1.idImpresora     := StrtoInt(v_ImpresoraVal1);
   print1.cajon           := v_Cajon1;
   print1.puerto          := v_Puerto1;
   print1.caracteres      := v_Caracteres1;
   //carga valores comun
   printC.impresiones     := StrToInt(v_Impresiones);
   printC.cuantas         := StrToInt(v_Cuantas);
   printC.modo            := v_Modo;
   //carga valores print2
   print2.impresora       := v_ImpresoraNom2;
   print2.escImpresora    := v_EscModel2;
   print2.idImpresora     := StrtoInt(v_ImpresoraVal2);
   print2.cajon           := v_Cajon2;
   print2.puerto          := v_Puerto2;
   print2.caracteres      := v_Caracteres2;

   if printC.modo = 'WIN' then
      reporte := 'win_puntoDeVenta.prt' //<-Modo windows
   else
      reporte := 'puntoDeVenta.prt'; //<-Modo texto

   if qyEncabezadoPV.FieldByName('R_PRIORIDAD').AsString  = 'Si' then
   begin
      if printC.modo = 'WIN' then
         reporte := 'win_puntoDeVentaP.prt' //<-Modo Windows
      else
         reporte := 'puntoDeVentaP.prt';//<-Modo Texto
   end;
   iniFile.Free;
end;

procedure TfrmPRN_0008.FormCreate(Sender: TObject);
begin
   inherited;
   reglas.abrir_IBTabla(dmIBData.TPreferencias);
   //Pedir folio de Notas de venta
   dmIBData.TPreferencias.Filter := 'ID = 87';
   pedirFolioNV := UpperCase(dmIBData.TPreferencias.FieldByName('VALOR').AsString) = 'SI';
   //cargar archivo del directorio de reportes
   ruta := ExtractFilePath(ParamStr(0))+'reportes\';
end;

procedure TfrmPRN_0008.qyBusquedaAfterOpen(DataSet: TDataSet);
begin
  inherited;
  reglas.refresh_IBQuery(qyPartidas);
end;

procedure TfrmPRN_0008.buExplorarClick(Sender: TObject);
begin
  inherited;
  if edFolio.Text <> '' then
  begin
     dsBusqueda.DataSet.Close;
     TIBQuery(dsBusqueda.DataSet).ParamByName('P_FOLIO').AsString    := edFolio.Text;
//     TIBQuery(dsBusqueda.DataSet).ParamByName('P_FOLIO').AsString    := edFolio.Text;
     TIBQuery(dsBusqueda.DataSet).ParamByName('P_FECHA').AsDate      := StrToDate(FormatDateTime('dd/mm/yyyy',reglas.dame_fecha));
     if CAJA <> 0 then
        TIBQuery(dsBusqueda.DataSet).ParamByName('P_CAJA').AsInteger := CAJA;
     TIBQuery(dsBusqueda.DataSet).ParamByName('P_ALMACEN').AsInteger := ALMACEN;
     dsBusqueda.DataSet.Open;
     if dsBusqueda.DataSet.IsEmpty then
     begin
        buReImprimir.Enabled := false;
        showmessage('No se encontro folio');
     end
     else
     begin
        buReImprimir.Enabled := true;
        ID := dsBusqueda.DataSet.FieldByName('ID').AsInteger;
     end;
  end
  else
     showmessage('Falta capturar folio');
end;

procedure TfrmPRN_0008.buSalirClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmPRN_0008.buReImprimirClick(Sender: TObject);
var
   SearchRec : TSearchRec;
   ejecutar  : boolean;
begin
   inherited;
   loadImpresora2;

   ejecutar := awrNivel >= 3;
   if awrNivel < 3 then
   begin
      try
         Application.CreateForm(TfrmAcceso, frmAcceso);
         frmAcceso.Nivel  := 3;
         frmAcceso.Status := 'Re-Impresion';
         frmAcceso.ShowModal;
         ejecutar := frmAcceso.Rsp;
      finally
         frmAcceso.Free;
      end;
   end;

   if ejecutar then
   begin
      if not(FindFirst(ruta+reporte, faAnyFile, SearchRec) = 0) then
      begin
         showmessage('Falta archivo: '+ruta+reporte);
      end
      else
         begin
            imprimir;
            close;
         end;
   end;
end;

procedure TfrmPRN_0008.edFolioKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
   if Key = #13 then
      buExplorar.Click;
end;

end.
