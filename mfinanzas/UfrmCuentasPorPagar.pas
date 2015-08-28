unit UfrmCuentasPorPagar;

interface

uses
  UTipos, UTypeCuentasPorPagar,Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   ExtCtrls,   Menus,
   StdCtrls,
  Buttons,   Mask, DBCtrls,

       
  jpeg, Db, IBCustomDataSet, IBStoredProc, Grids, DBGrids;

type
  TfrmCuentasPorPagar = class(TForm)
    sbHijo: TPanel;
    Label8: TLabel;
    deID: TDBEdit;
    buInicio: TBitBtn;
    buAnterior: TBitBtn;
    buSiguiente: TBitBtn;
    buFin: TBitBtn;
    ibSalir: TBitBtn;
    tiCerrar: TTimer;
    ppFunciones: TPopupMenu;
    ImpresionRejilla1: TMenuItem;
    ImpresionDetalle1: TMenuItem;
    itemDetalleCompra: TMenuItem;
    Vermensajesproveedor1: TMenuItem;
    itemDetPago: TMenuItem;
    ReImpresion1: TMenuItem;
    Ejecutar1: TMenuItem;
    paFoto: TPanel;
    imFoto: TImage;
    Panel2: TPanel;
    Shape12: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Label3: TLabel;
    hlF3: TBitBtn;
    hlF4: TBitBtn;
    hlF5: TBitBtn;
    ibPagos: TBitBtn;
    ibColapsar: TBitBtn;
    ibExpandir: TBitBtn;
    ibExportar: TBitBtn;
    ibPrintRejilla: TBitBtn;
    ibDetalle: TBitBtn;
    ibCorte: TBitBtn;
    ibReImprimir: TBitBtn;
    ibEjecutar: TBitBtn;
    edUsuario: TEdit;
    paLienzo: TPanel;
    Shape14: TShape;
    shVencido: TShape;
    shPago: TShape;
    laCaja: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    laImporte: TLabel;
    Label11: TLabel;
    Shape1: TShape;
    Label1: TLabel;
    Shape2: TShape;
    laPago: TLabel;
    shLinea2: TShape;
    Label4: TLabel;
    Shape9: TShape;
    Label18: TLabel;
    Shape10: TShape;
    hlEstatus: TBitBtn;
    Shape11: TShape;
    Shape13: TShape;
    Label2: TLabel;
    Label10: TLabel;
    Label20: TLabel;
    Shape15: TShape;
    cbEstatus: TComboBox;
    edFUltimaCompra: TEdit;
    edProveedor: TEdit;
    edFUltimoPago: TEdit;
    edNombre: TEdit;
    edSaldoCliente: TEdit;
    edSaldoVencido: TEdit;
    edCaja: TEdit;
    edImporte: TEdit;
    edFecha: TEdit;
    edTelefono: TEdit;
    paFPago: TPanel;
    buGrupo: TPanel;
    buAutomatico: TBitBtn;
    buVencido: TBitBtn;
    buManual: TBitBtn;
    buModificado: TBitBtn;
    dgPartidas: TDBGrid;
    Bevel1: TBevel;
    shLinea3: TShape;
    Label5: TLabel;
    Shape5: TShape;
    Shape6: TShape;
    laPanel: TBitBtn;
    imBack: TImage;
    spP_CXP_C: TIBStoredProc;
    procedure ibSalirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edProveedorButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure ibColapsarClick(Sender: TObject);
    procedure ibExpandirClick(Sender: TObject);
    procedure ibExportarClick(Sender: TObject);
    procedure ibPrintRejillaClick(Sender: TObject);
    procedure ibDetalleClick(Sender: TObject);
    procedure ImpresionRejilla1Click(Sender: TObject);
    procedure Ejecutar1Click(Sender: TObject);
    procedure imFotoDblClick(Sender: TObject);
    procedure tiCerrarTimer(Sender: TObject);
    procedure dgPartidasDblClick(Sender: TObject);
    procedure dgPartidasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure buAutomaticoClick(Sender: TObject);
    procedure buVencidoClick(Sender: TObject);
    procedure buManualClick(Sender: TObject);
    procedure buModificadoClick(Sender: TObject);
    procedure cbEstatusChange(Sender: TObject);
    procedure edProveedorKeyPress(Sender: TObject; var Key: Char);
    procedure edSaldoVencidoButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure edSaldoVencidoKeyPress(Sender: TObject; var Key: Char);
    procedure edImporteChange(Sender: TObject);
    procedure edImporteKeyPress(Sender: TObject; var Key: Char);
    procedure ibEjecutarClick(Sender: TObject);
    procedure ibReImprimirClick(Sender: TObject);
    procedure ibCorteClick(Sender: TObject);
    procedure ibPagosClick(Sender: TObject);
    procedure buInicioClick(Sender: TObject);
    procedure buAnteriorClick(Sender: TObject);
    procedure buSiguienteClick(Sender: TObject);
    procedure buFinClick(Sender: TObject);
    procedure itemDetalleCompraClick(Sender: TObject);
    procedure Vermensajesproveedor1Click(Sender: TObject);
    procedure itemDetPagoClick(Sender: TObject);
    procedure ReImpresion1Click(Sender: TObject);
    procedure dgPartidasMODIFICARButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dgPartidasNCARGOSINAFECTARButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dgPartidasNCARGOAFECTADASButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure hlEstatusClick(Sender: TObject);
    procedure laPanelDblClick(Sender: TObject);
    procedure dgPartidasF3ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dgPartidasF5ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dgPartidasF4ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dgPartidasCANCELARButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
  private
    { Private declarations }
    cuantos  : integer;
    tmFotoH  : integer;
    tmFotoW  : integer;
    CXP      : TCuentasPorPagar;
    awrUsuario : integer;
    awrNivel   : integer;
    procedure setUsuario(valor : integer);
    procedure CargarDatosCaja;
    procedure CargarDatoUsuario;
    procedure CargarEncabezado;
    procedure Foto;
    procedure setProveedor(valor : string);
  public
    { Public declarations }
  published
    property Usuario   : integer read awrUsuario write setUsuario;
    property Nivel     : integer read awrNivel write awrNivel;
    property Proveedor : string write setProveedor;
  end;

var
  frmCuentasPorPagar: TfrmCuentasPorPagar;

implementation

uses
   FileCtrl, UfrmAutorizar,
  UfrmSeleccionarProveedor_, IBModulo;

{$R *.DFM}

procedure TfrmCuentasPorPagar.setUsuario(valor : integer);
begin
   CXP.Usuario := valor;
   CargarDatoUsuario;

   CXP.LoadDatosCaja;
   CargarDatosCaja;
   if CXP.CAJAS = 0 then
   begin
      ShowMessage('No hay caja para este usuario asignada. Cuentas por cobrar se cerrara');
      tiCerrar.Enabled := true;
   end;
   if CXP.CAJAS > 1 then
   begin
      ShowMessage('El usuario tiene mas de una caja asignada. Cuentas por cobrar se cerrara');
      tiCerrar.Enabled := true;
   end
end;

procedure TfrmCuentasPorPagar.CargarDatosCaja;
begin
//   edAlmacen.Tag  := CXP.ALMACEN;
//   edAlmacen.Text := CXP.ALMACEN_NOMBRE;
   edCaja.Tag     := CXP.CAJA;
   edCaja.Text    := CXP.CAJA_NOMBRE;
end;

procedure TfrmCuentasPorPagar.CargarDatoUsuario;
begin
   edUsuario.Tag  := CXP.USUARIO;
   edUsuario.Text := CXP.USUARIO_NOMBRE;
end;

procedure TfrmCuentasPorPagar.CargarEncabezado;
begin
   Foto;
   edFUltimaCompra.Text  := FormatDateTime('dd/mm/yyyy',CXP.FECHA_ULT_COMPRA);
   edFUltimoPago.Text    := FormatDateTime('dd/mm/yyyy',CXP.FECHA_ULT_PAGO);
   edSaldoCliente.Text   := FormatFloat('$ ###,###,##0.00',CXP.SALDO_PROVEEDOR);
//   edSaldoTotal.Text     := FormatFloat('$ ###,###,##0.00',CXP.SALDO_TOTAL);
   edSaldoVencido.Text   := FormatFloat('$ ###,###,##0.00',CXP.SALDO_T_VENCIDO);
   edTelefono.Text       := CXP.TELEFONO;
   //CXP.imagenVer(CXP.FOTO, imFoto);
   ibExpandir.Click;
   dgPartidas.Datasource.Dataset.First;

   if edImporte.Visible and (CXP.Proveedor <> -3) and (CXP.SALDO_PROVEEDOR > 0) then
   begin
      edImporte.Text      := '0.00';
      ibEjecutar.Enabled   := false;
      //buAutomatico.Down    := true;
      edImporte.SetFocus;
   end;
end;

procedure TfrmCuentasPorPagar.Foto;
begin
   paFoto.Height   := tmFotoH;
   paFoto.Width    := tmFotoW;

   imFoto.AutoSize  := false;
   imFoto.Align     := alClient;
   //imFoto.DrawStyle := dsProportional;
end;

procedure TfrmCuentasPorPagar.setProveedor(valor : string);
begin
   edProveedor.Text := valor;
   edProveedorButtonClick(nil, 0);
   edProveedor.SetFocus;
end;


procedure TfrmCuentasPorPagar.ibSalirClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmCuentasPorPagar.FormCreate(Sender: TObject);
begin
   CXP := TCuentasPorPagar.Create;
   //dgPartidas.IniFileName := ExtractFilePath(ParamStr(0))+'Cuentas por Pagar.ini';
   //dgPartidas.LoadFromIniFile(ExtractFilePath(ParamStr(0))+'Cuentas por Pagar.ini');

   edFecha.Text := FormatDateTime('dd/mm/yyyy',CXP.FECHA_SERVIDOR);
   tmFotoH  := paFoto.Height;
   tmFotoW  := paFoto.Width;
   cuantos  := 0;
end;

procedure TfrmCuentasPorPagar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TfrmCuentasPorPagar.FormDestroy(Sender: TObject);
begin
   CXP.Free;
   CXP := nil;
end;

procedure TfrmCuentasPorPagar.FormShow(Sender: TObject);
begin
   dgPartidas.DataSource := CXP.dsDetalle;
   deID.DataSource       := CXP.dsDetalle;
end;

procedure TfrmCuentasPorPagar.edProveedorButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
   case AbsoluteIndex of
     0: begin
           frmSeleccionarProveedor_             := TfrmSeleccionarProveedor_.Create(Application);
           frmSeleccionarProveedor_.DATABASE    := CXP.DATABASE;
           frmSeleccionarProveedor_.TRANSACTION := CXP.TRANSACTION;
           frmSeleccionarProveedor_.CLAVE       := edProveedor.Text;
           CXP.PROVEEDOR_CLAVE                 := edProveedor.Text;

           if frmSeleccionarProveedor_.abrirConsulta then
           begin
              frmSeleccionarProveedor_.ShowModal;
              if frmSeleccionarProveedor_.ACEPTAR then
              begin
                 CXP.PROVEEDOR        := frmSeleccionarProveedor_.ID;
                 CXP.PROVEEDOR_CLAVE  := frmSeleccionarProveedor_.CLAVE;
                 CXP.PROVEEDOR_NOMBRE := frmSeleccionarProveedor_.NOMBRE;

                 edProveedor.Text := frmSeleccionarProveedor_.CLAVE;
                 //edProveedor.SetSelection(Length(edProveedor.Text),Length(edProveedor.Text),false);
                 edNombre.Text  := frmSeleccionarProveedor_.NOMBRE;
                 CargarEncabezado;
              end;
           end
           else
              begin
                 CXP.PROVEEDOR        := frmSeleccionarProveedor_.ID;
                 CXP.PROVEEDOR_CLAVE  := frmSeleccionarProveedor_.CLAVE;
                 CXP.PROVEEDOR_NOMBRE := frmSeleccionarProveedor_.NOMBRE;

                 edProveedor.Text := frmSeleccionarProveedor_.CLAVE;
                 //edProveedor.SetSelection(Length(edProveedor.Text),Length(edProveedor.Text),false);
                 edNombre.Text  := frmSeleccionarProveedor_.NOMBRE;
                 CargarEncabezado;
              end;
           frmSeleccionarProveedor_.Free;
           frmSeleccionarProveedor_ := nil;
        end;
     1: begin
           edProveedor.Clear;
           edNombre.Text := '<FALTA>';

           CXP.PROVEEDOR        := -3;
           CXP.PROVEEDOR_NOMBRE := '<FALTA>';
           CargarEncabezado;
        end;
   end;
end;

procedure TfrmCuentasPorPagar.ibColapsarClick(Sender: TObject);
begin
   //dgPartidas.FullCollapse;
end;

procedure TfrmCuentasPorPagar.ibExpandirClick(Sender: TObject);
begin
   //dgPartidas.FullExpand;
end;

procedure TfrmCuentasPorPagar.ibExportarClick(Sender: TObject);
var
   tmp : string;
   fileName : string;
begin
   if SelectDirectory('Seleccionar Directorio', '', tmp) then
   begin
      if tmp <> '' then
      begin
         fileName := tmp+'\EdoCta '+edProveedor.Text+'.xls';
         //dgPartidas.SaveToXLS(fileName, TRUE);
      end;
   end;
end;

procedure TfrmCuentasPorPagar.ibPrintRejillaClick(Sender: TObject);
begin
   ImpresionRejilla1Click(Sender);
end;

procedure TfrmCuentasPorPagar.ibDetalleClick(Sender: TObject);
begin
   CXP.rptDetalles;
end;

procedure TfrmCuentasPorPagar.ImpresionRejilla1Click(Sender: TObject);
//var
//   cpPrint : TdxComponentPrinter;
//   tmp     : TdxDBGridOptionsDB;
begin
{
  tmp := dgPartidas.OptionsDB;
  cpPrint := TdxComponentPrinter.Create(Application);
  cpPrint.OnBeforePreview := BeforePreview;
  cpPrint.AddLink(dgPartidas);
  cpPrint.ReportLink[0].PrinterPage.PageHeader.Font.Name  := 'Arial';
  cpPrint.ReportLink[0].PrinterPage.PageHeader.Font.Size  := 14;

  cpPrint.ReportLink[0].PrinterPage.PageHeader.CenterTitle.Add(Self.Caption);
  cpPrint.ReportLink[0].ShrinkToPageWidth := true;
  cpPrint.Preview(True, nil);
  cpPrint.Destroy;

  dgPartidas.OptionsDB := tmp;
  }
end;

procedure TfrmCuentasPorPagar.Ejecutar1Click(Sender: TObject);
var
   cual : string;
begin
   if Ejecutar1.Visible then
   begin
   {
      if buAutomatico.Down then
         cual := 'AUTOMATICO'
      else
      if buVencido.Down or buManual.Down then
         cual := 'MANUAL'
      else
      if buModificado.Down then
         cual := 'MODIFICADO';
      if CXP.crearTipoPago(cual) = mrOk then
      begin
         edProveedorButtonClick(Sender, 0);
         edProveedor.SetFocus;
      end;
      }
   end;
end;

procedure TfrmCuentasPorPagar.imFotoDblClick(Sender: TObject);
begin
   if tmFotoH = paFoto.Height then
   begin
      imFoto.Align     := alNone;
     // imFoto.DrawStyle := dsNormal;
      imFoto.AutoSize  := true;

      paFoto.Height    := imFoto.Height + 4;
      paFoto.Width     := imFoto.Width + 4;
      paFoto.BringToFront;
   end
   else
      Foto;
end;

procedure TfrmCuentasPorPagar.tiCerrarTimer(Sender: TObject);
begin
   if cuantos = 1 then
   begin
      Close;
   end;
   inc(cuantos,1);
end;


procedure TfrmCuentasPorPagar.dgPartidasDblClick(Sender: TObject);
var
  index    : integer;
  indexPos : integer;
begin
   if CXP.dsDetalle.DataSet <> nil then
   begin
      if not(CXP.DETALLE_VACIO) then
      begin
         ibEjecutar.Enabled := false;
        // index    := dgPartidas.TopIndex;
         indexPos := CXP.dsDetalle.DataSet.FieldByName('R_ID').AsInteger;
         CXP.EjecutarSeleccionado;
         ibExpandir.Click;
         dgPartidas.Datasource.Dataset.First;
         while not(dgPartidas.Datasource.Dataset.EOF) do
         begin
            if CXP.dsDetalle.DataSet.FieldByName('R_ID').AsInteger = IndexPos then
            begin
               break;
            end;
            dgPartidas.Datasource.Dataset.Next;
         end;
         //dgPartidas.TopIndex := index;
      end;
   end;
end;

procedure TfrmCuentasPorPagar.dgPartidasKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = 32 then//barra espaciadora
  begin
     dgPartidasDblClick(nil);
  end;

end;

procedure TfrmCuentasPorPagar.buAutomaticoClick(Sender: TObject);
begin
  if (StrToFloat(edImporte.Text) > 0) and (CXP.PROVEEDOR <> -3) then
  begin
     CXP.EjecutarAutomatico;
     ibExpandir.Click;
     dgPartidas.Datasource.Dataset.First;
     ibEjecutar.Enabled := true;
     ibEjecutar.SetFocus;
  end
  else
     begin
        ibEjecutar.Enabled := false;
     end;
end;

procedure TfrmCuentasPorPagar.buVencidoClick(Sender: TObject);
begin
   CXP.EjecutarVencido;
   edImporte.Text := FloatToSTr(CXP.IMPORTE_A_PAGAR);
   ibExpandir.Click;
   dgPartidas.Datasource.Dataset.First;
   if StrToFloat(edImporte.Text) > 0 then
   begin
      ibEjecutar.Enabled := true;
      ibEjecutar.SetFocus;
   end
   else
      begin
         ibEjecutar.Enabled := false;
      end;
end;

procedure TfrmCuentasPorPagar.buManualClick(Sender: TObject);
begin
   CXP.EjecutarManual;
   edImporte.Text := FloatToStr(CXP.IMPORTE_A_PAGAR);
   if StrToFloat(edImporte.text) > 0 then
   begin
      ibEjecutar.Enabled := true;
      ibEjecutar.SetFocus;
   end
   else
      begin
         ibEjecutar.Enabled := false;
      end;
end;

procedure TfrmCuentasPorPagar.buModificadoClick(Sender: TObject);
begin
   CXP.EjecutarModificado;
   edImporte.Text := FloatToStr(CXP.IMPORTE_A_PAGAR);
   if StrToFloat(edImporte.Text) > 0 then
   begin
      ibEjecutar.Enabled := true;
      ibEjecutar.SetFocus;
   end
   else
      ibEjecutar.Enabled := false;
end;

procedure TfrmCuentasPorPagar.cbEstatusChange(Sender: TObject);
begin
   CXP.ESTATUS := cbEstatus.Text;
   CXP.LoadDetalle;
   ibExpandir.Click;
   dgPartidas.Datasource.Dataset.First;
end;

procedure TfrmCuentasPorPagar.edProveedorKeyPress(Sender: TObject;
  var Key: Char);
begin
   if key = #13 then
   begin
      edProveedorButtonClick(Sender, 0);
   end;
end;

procedure TfrmCuentasPorPagar.edSaldoVencidoButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
{var
   vencidos : TfrmVencidos;}
begin
{  vencidos := TfrmVencidos.Crear(Application, EstadoDeCuentas.CLIENTE);
  vencidos.ShowModal;
  vencidos.Destroy;}
end;

procedure TfrmCuentasPorPagar.edSaldoVencidoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
     edSaldoVencidoButtonClick(nil, 0);
end;

procedure TfrmCuentasPorPagar.edImporteChange(Sender: TObject);
begin
   CXP.IMPORTE_A_PAGAR := StrTofloat(edImporte.Text);
   ibEjecutar.Enabled := FALSE;
end;

procedure TfrmCuentasPorPagar.edImporteKeyPress(Sender: TObject;
  var Key: Char);
begin
   if (Key = #13) then
   begin
   {
      if buAutomatico.Down and (edImporte.Value > 0) then
         buAutomaticoClick(Sender)
      else
      if buVencido.Down then
         buVencidoClick(Sender)
      else
      if buManual.Down then
         buManualClick(Sender)
      else
      if buModificado.Down then
         buModificadoClick(Sender);
         }
   end;
end;

procedure TfrmCuentasPorPagar.ibEjecutarClick(Sender: TObject);
begin
   Ejecutar1Click(Sender);
end;

procedure TfrmCuentasPorPagar.ibReImprimirClick(Sender: TObject);
begin
   ReImpresion1Click(Sender);
end;

procedure TfrmCuentasPorPagar.ibCorteClick(Sender: TObject);
var
   ejecutar  : boolean;
   autorizar : TfrmAutorizar;
begin
  ejecutar := true;
  if NIVEL < 3 then
  begin
     autorizar := TfrmAutorizar.Crear(Application, 3);
     autorizar.ShowModal;
     ejecutar := autorizar.autorizacion;
     autorizar.Free;
  end;

  if ejecutar then
  begin
     CXP.rptCortes;
  end;
end;

procedure TfrmCuentasPorPagar.ibPagosClick(Sender: TObject);
begin
   CXP.detPagos;
   edProveedorButtonClick(Sender, 0);
end;

procedure TfrmCuentasPorPagar.buInicioClick(Sender: TObject);
begin
        dgPartidas.Datasource.Dataset.First;
end;

procedure TfrmCuentasPorPagar.buAnteriorClick(Sender: TObject);
begin
   dgPartidas.Datasource.Dataset.Prior;
end;

procedure TfrmCuentasPorPagar.buSiguienteClick(Sender: TObject);
begin
   dgPartidas.Datasource.Dataset.Next;
end;

procedure TfrmCuentasPorPagar.buFinClick(Sender: TObject);
begin
   dgPartidas.Datasource.Dataset.Last ;
end;

procedure TfrmCuentasPorPagar.itemDetalleCompraClick(Sender: TObject);
begin
   CXP.screenDetDeLaCompra;
end;

procedure TfrmCuentasPorPagar.Vermensajesproveedor1Click(Sender: TObject);
begin
//
end;

procedure TfrmCuentasPorPagar.itemDetPagoClick(Sender: TObject);
begin
   CXP.screenDetPagos;
end;

procedure TfrmCuentasPorPagar.ReImpresion1Click(Sender: TObject);
begin
//
end;

procedure TfrmCuentasPorPagar.dgPartidasMODIFICARButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
var
   index    : integer;
   indexRec : integer;
begin
   if CXP.dsDetalle.DataSet.FieldByName('R_SEL').AsString = 'No' then
      dgPartidasDblClick(nil);

  if CXP.dsDetalle.DataSet.FieldByName('R_SEL').AsString = 'Si' then
  begin
     {
     idModificado.Entrada := CXP.dsDetalle.DataSet.FieldByName('R_PAGO_MODIFICADO').AsString;
     idModificado.Execute;
     if idModificado.Respuesta then
     begin
        index    := dgPartidas.TopIndex;
        indexRec := CXP.dsDetalle.DataSet.FieldByName('R_ID').AsInteger;
        CXP.pagoModificado(idModificado.Entrada);
        //busqueda del registro modificado
        ibExpandir.Click;
        dgPartidas.Datasource.Dataset.First;
        while not(dgPartidas.IsEOF) do
        begin
           if indexRec = CXP.dsDetalle.DataSet.FieldByName('R_ID').AsInteger then
           begin
              break;
           end;
           dgPartidas.GotoNext(true);
        end;
        dgPartidas.TopIndex := index;
     end;
     }
  end;
end;

procedure TfrmCuentasPorPagar.dgPartidasNCARGOSINAFECTARButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
begin
//
end;

procedure TfrmCuentasPorPagar.dgPartidasNCARGOAFECTADASButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
begin
//
end;

procedure TfrmCuentasPorPagar.hlEstatusClick(Sender: TObject);
var
   ejecutar  : boolean;
   autorizar : TfrmAutorizar;
begin
   if cbEstatus.Enabled then
      cbEstatus.Enabled := false
   else
   begin
      ejecutar := true;
      if NIVEL < 3 then
      begin
         autorizar := TfrmAutorizar.Crear(Application, 3);
         autorizar.ShowModal;
         ejecutar := autorizar.autorizacion;
         autorizar.Free;
      end;

      if ejecutar then
      begin
         cbEstatus.Enabled := true;
      end;
   end;
end;

procedure TfrmCuentasPorPagar.laPanelDblClick(Sender: TObject);
begin
   //dgPartidas.ShowGroupPanel := not(dgPartidas.ShowGroupPanel);
end;

procedure TfrmCuentasPorPagar.dgPartidasF3ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
   hlF3.Click;
end;

procedure TfrmCuentasPorPagar.dgPartidasF5ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
   hlF5.Click;
end;

procedure TfrmCuentasPorPagar.dgPartidasF4ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
   hlF4.Click;
end;

procedure TfrmCuentasPorPagar.dgPartidasCANCELARButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
var
   ejecutar  : boolean;
   autorizar : TfrmAutorizar;
begin
   if MessageDlg('Cancelar Cuenta X Pagar, Esto afectara el estado de cuenta del Proveedor.', mtConfirmation, [mbYes, mbNo], 0) = mrYes  then
   begin
      ejecutar := true;
      if NIVEL < 5 then
      begin
         autorizar := TfrmAutorizar.Crear(Application, 5);
         autorizar.ShowModal;
         ejecutar := autorizar.autorizacion;
         autorizar.Free;
      end;

      if ejecutar then
      begin
         spP_CXP_C.ParamByName('P_ID').AsInteger := dgPartidas.DataSource.DataSet.FieldByName('R_ID').AsInteger;
         spP_CXP_C.ExecProc;
         spP_CXP_C.Transaction.CommitRetaining;
         //por el saldo se vuelve a cargar tambien el encabezado
         //edProveedor.OnButtonClick(Sender, 0);
      end;
   end;
end;

end.
