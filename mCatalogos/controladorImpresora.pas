unit controladorImpresora;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls,
  ExtCtrls,
   Db, IBCustomDataSet, IBQuery,
  IBDatabase, Buttons,    DBCtrls;

type
  TBoton = (boPVenta, boOCompra, boPedido, boFacturas, boNVenta, boNCredito,
            boNCargo, boCXC, boLPrecios, boNinguna, boMI, boCV, boNE, boCupones,
            boCotizaciones, boPVtasP, boPG, boReq, boPIMP, boCuponPago, boPagare,
            boMElect, boDesempaques, boODS, boAbonos, boReqCot, boPresupuestos,
            boMiniprinter, boHospPVta, boAnticipos, boAnticiposCXP);

  TfrmControladorImpresoras = class(TForm)
    Memo1: TMemo;
    fcImager2: TImage;
    Shape1: TShape;
    gbImpresora1: TGroupBox;
    fcImager5: TImage;
    Label2: TLabel;
    cbImpresora1: TComboBox;
    cbEscModel1: TComboBox;
    Label3: TLabel;
    Shape2: TShape;
    gbConfiguracion: TGroupBox;
    fcImager1: TImage;
    Label9: TLabel;
    ceImpresiones: TEdit;
    gbImpresora2: TGroupBox;
    Shape3: TShape;
    fcImager4: TImage;
    Label1: TLabel;
    Label4: TLabel;
    cbImpresora2: TComboBox;
    cbEscModel2: TComboBox;
    buGrabar: TBitBtn;
    FlatGroupBox1: TGroupBox;
    rbWin: TRadioButton;
    rbDos: TRadioButton;
    Label5: TLabel;
    cbPuertos1: TComboBox;
    Label6: TLabel;
    cbCajon1: TComboBox;
    edCaracteres1: TEdit;
    Label8: TLabel;
    cbCajon2: TComboBox;
    Label10: TLabel;
    cbPuertos2: TComboBox;
    edCaracteres2: TEdit;
    Label12: TLabel;
    cbAutoCutter1: TComboBox;
    qyCodigos1: TIBQuery;
    dsCodigos: TDataSource;
    cbCaracteres1: TDBLookupComboBox;
    edAutoCutter1: TEdit;
    cbCaracteres2: TDBLookupComboBox;
    cbAutoCutter2: TComboBox;
    edAutoCutter2: TEdit;
    Label14: TLabel;
    buCajon1: TBitBtn;
    buAutoCutter1: TBitBtn;
    buCajon2: TBitBtn;
    buAutoCutter2: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure aqSalirClick(Sender: TObject);
    procedure buGrabarClick(Sender: TObject);
    procedure cbCaracteres1Change(Sender: TObject);
    procedure cbCaracteres2Change(Sender: TObject);
    procedure buCajon1Click(Sender: TObject);
    procedure buCajon2Click(Sender: TObject);
    procedure buAutoCutter1Click(Sender: TObject);
    procedure buAutoCutter2Click(Sender: TObject);
  private
    { Private declarations }
    tipoBoton : TBoton;
    procedure fijarBoton(valor : TBoton);
    procedure GuardarIni(p_nombre : string);
//    procedure miniPrinter(p_puerto : string; p_caracteres : string);
  public
    { Public declarations }
  published
     property BOTON : TBoton write fijarBoton;
  end;

var
  frmControladorImpresoras: TfrmControladorImpresoras;

implementation

uses
   Printers, inifiles, IBModulo;

{$R *.DFM}

{procedure TfrmControladorImpresoras.miniPrinter(p_puerto : string; p_caracteres : string);
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
end;}

procedure TfrmControladorImpresoras.FormCreate(Sender: TObject);
begin
   qyCodigos1.Close;
   qyCodigos1.Open;

   cbImpresora1.Items.assign(Printer.Printers);
   cbImpresora2.Items.assign(Printer.Printers);

   tipoBoton               := boNinguna;
   cbImpresora1.ItemIndex  := 0;
   cbEscModel1.ItemIndex   := 0;
   cbCajon1.ItemIndex      := 0;
   cbPuertos1.ItemIndex    := 0;
   cbAutoCutter1.ItemIndex := 0;
   cbImpresora2.ItemIndex  := 0;
   cbEscModel2.ItemIndex   := 0;
   cbCajon2.ItemIndex      := 0;
   cbPuertos2.ItemIndex    := 0;
   cbAutoCutter2.ItemIndex := 0;
   ceImpresiones.Text     := '0';
end;

procedure TfrmControladorImpresoras.fijarBoton(valor : TBoton);
begin
   tipoBoton := valor;
   case valor of
     boPVenta       : buGrabar.Caption := 'Puntos de Venta';
     boOCompra      : buGrabar.Caption := 'Ordenes de Compra';
     boPedido       : buGrabar.Caption := 'Pedidos';
     boFacturas     : buGrabar.Caption := 'Facturas';
     boNVenta       : buGrabar.Caption := 'Notas de Venta';
     boNCredito     : buGrabar.Caption := 'Notas de Credito';
     boNCargo       : buGrabar.Caption := 'Notas de Cargo';
     boCXC          : buGrabar.Caption := 'Cuentas por Cobrar';
     boLPrecios     : buGrabar.Caption := 'Lista de Precios';
     boMI           : buGrabar.Caption := 'Movimientos de Inventario';
     boCV           : buGrabar.Caption := 'Comision Vendedores';
     boNE           : buGrabar.Caption := 'Entradas/Servicios';
     boCupones      : buGrabar.Caption := 'Cupones';
     boCotizaciones : buGrabar.Caption := 'Cotizaciones';
     boPVtasP       : buGrabar.Caption := 'P.Ventas Pedido';
     boPG           : buGrabar.Caption := 'Polizas de Garantia';
     boReq          : buGrabar.Caption := 'Requisiciones';
     boPIMP         : buGrabar.Caption := 'Pedimento de Importacion';
     boCuponPago    : buGrabar.Caption := 'Cupon de Pago';
     boPagare       : buGrabar.Caption := 'Pagare';
     boMElect       : buGrabar.Caption := 'M.Electronico';
     boDesempaques  : buGrabar.Caption := 'Desempaques';
     boODS          : buGrabar.Caption := 'Orden de Servicio';
     boAbonos       : buGrabar.Caption := 'Abonos';
     boReqCot       : buGrabar.Caption := 'Req. Cotizacion';
     boPresupuestos : buGrabar.Caption := 'Presupuestos';
     boMiniprinter  : buGrabar.Caption := 'miniprinter';
     boHospPVta     : buGrabar.Caption := 'Reg. Pacientes';
     boAnticipos    : buGrabar.Caption := 'Anticipos';
     boAnticiposCXP : buGrabar.Caption := 'Anticipos CXP';
   else
      buGrabar.Caption := 'Sin definir';
   end;
end;

procedure TfrmControladorImpresoras.aqSalirClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmControladorImpresoras.GuardarIni(p_nombre : string);
var
   iniFile : TIniFile;
   modo    : string;
begin
   if rbWin.Checked then
      modo := 'WIN'
   else
      modo := 'DOS';

   iniFile := TIniFile.Create(ChangeFileExt(Application.ExeName,'.INI'));
   iniFile.WriteString(p_nombre,'ImpresoraNom1',cbImpresora1.Text);
   iniFile.WriteString(p_nombre,'ImpresoraVal1',IntToStr(cbImpresora1.ItemIndex));
   iniFile.WriteString(p_nombre,'EscModel1',cbEscModel1.Text);
   iniFile.WriteString(p_nombre,'Impresiones',ceImpresiones.Text);
   iniFile.WriteString(p_nombre,'Cuantas','0');
   iniFile.WriteString(p_nombre,'ImpresoraNom2',cbImpresora2.Text);
   iniFile.WriteString(p_nombre,'ImpresoraVal2',IntToStr(cbImpresora2.ItemIndex));
   iniFile.WriteString(p_nombre,'EscModel2',cbEscModel2.Text);
   iniFile.WriteString(p_nombre,'Cajon1',cbCajon1.Text);
   iniFile.WriteString(p_nombre,'Puerto1',cbPuertos1.Text);
   iniFile.WriteString(p_nombre,'Caracteres1',edCaracteres1.Text);
   iniFile.WriteString(p_nombre,'Cutter1',cbAutoCutter1.Text);
   iniFile.WriteString(p_nombre,'AutoCutter1',edAutoCutter1.Text);
   iniFile.WriteString(p_nombre,'Cajon2',cbCajon2.Text);
   iniFile.WriteString(p_nombre,'Puerto2',cbPuertos2.Text);
   iniFile.WriteString(p_nombre,'Caracteres2',edCaracteres2.Text);
   iniFile.WriteString(p_nombre,'Cutter2',cbAutoCutter2.Text);
   iniFile.WriteString(p_nombre,'AutoCutter2',edAutoCutter2.Text);
   iniFile.WriteString(p_nombre,'Modo',modo);
   iniFile.Free;
end;

procedure TfrmControladorImpresoras.buGrabarClick(Sender: TObject);
begin
   case tipoBoton of
           boPVenta : GuardarIni('PVENTA');
          boOCompra : GuardarIni('ORDENES_DE_COMPRAS');
           boPedido : GuardarIni('PEDIDOS');
         boFacturas : GuardarIni('FACTURAS');
           boNVenta : GuardarIni('NOTAS_DE_VENTA');
         boNCredito : GuardarIni('NOTAS_DE_CREDITO');
           boNCargo : GuardarIni('NOTAS_DE_CARGO');
              boCXC : GuardarIni('CUENTAS_POR_COBRAR');
         boLPrecios : GuardarIni('LISTA_DE_PRECIOS');
               boMI : GuardarIni('MOV_INVENTARIO');
               boCV : GuardarIni('COMISION_VENDEDORES');
               boNE : GuardarIni('NOTAS_DE_ENTRADA');
          boCupones : GuardarIni('CUPONES');
     boCotizaciones : GuardarIni('COTIZACIONES');
           boPVtasP : GuardarIni('PUNTO_VENTAS_P');
               boPG : GuardarIni('POLIZAS_DE_GARANTIA');
              boReq : GuardarIni('REQUISICIONES');
             boPIMP : GuardarIni('PIMPORTACION');
        boCuponPago : GuardarIni('CUPONPAGO');
           boPagare : GuardarIni('PAGARE');
           boMElect : GuardarIni('MELECTRONICO');
      boDesempaques : GuardarIni('DESEMPAQUES');
              boODS : GuardarIni('ODS');
           boAbonos : GuardarIni('ABONOS');
           boReqCot : GuardarIni('REQ_COTIZACION');
     boPresupuestos : GuardarIni('PRESUPUESTOS');
      boMiniprinter : GuardarIni('MINIPRINTER');
         boHospPVta : GuardarIni('HOSP_PVTA');
        boAnticipos : GuardarIni('ANTICIPOS');
     boAnticiposCXP : GuardarIni('ANTICIPOS_CXP');
   end;
end;

procedure TfrmControladorImpresoras.cbCaracteres1Change(Sender: TObject);
begin
   edCaracteres1.Text := dsCodigos.DataSet.FieldByName('DRAWER_CODES').AsString;
   edAutoCutter1.Text := dsCodigos.DataSet.FieldByName('CUTTER_CODES').AsString;
end;

procedure TfrmControladorImpresoras.cbCaracteres2Change(Sender: TObject);
begin
   edCaracteres2.Text := dsCodigos.DataSet.FieldByName('DRAWER_CODES').AsString;
   edAutoCutter2.Text := dsCodigos.DataSet.FieldByName('CUTTER_CODES').AsString;
end;

procedure TfrmControladorImpresoras.buCajon1Click(Sender: TObject);
begin
{
   tPrinter.abrir_puerto;

   if cbPuertos1.Text = 'LPT1' then
      tPrinter.PrinterPort    := Lpt1
   else
   if cbPuertos1.Text = 'LPT2' then
      tPrinter.PrinterPort    := Lpt2;

   tPrinter.CodeOpenDrawer := edCaracteres1.Text;
   tPrinter.OpenDrawer;
   tPrinter.cerrar_puerto;
   }
end;

procedure TfrmControladorImpresoras.buCajon2Click(Sender: TObject);
begin
{
   tPrinter.abrir_puerto;

   if cbPuertos2.Text = 'LPT1' then
      tPrinter.PrinterPort    := Lpt1
   else
   if cbPuertos2.Text = 'LPT2' then
      tPrinter.PrinterPort    := Lpt2;

   tPrinter.CodeOpenDrawer := edCaracteres2.Text;
   tPrinter.OpenDrawer;
   tPrinter.cerrar_puerto;
   }
end;

procedure TfrmControladorImpresoras.buAutoCutter1Click(Sender: TObject);
begin
{
   tPrinter.abrir_puerto;

   if cbPuertos1.Text = 'LPT1' then
      tPrinter.PrinterPort    := Lpt1
   else
   if cbPuertos1.Text = 'LPT2' then
      tPrinter.PrinterPort    := Lpt2;

   tPrinter.CodeCut := edAutoCutter1.Text;
   tPrinter.CutPaper;
   tPrinter.cerrar_puerto;
   }
end;

procedure TfrmControladorImpresoras.buAutoCutter2Click(Sender: TObject);
begin
{
   tPrinter.abrir_puerto;

   if cbPuertos2.Text = 'LPT1' then
      tPrinter.PrinterPort    := Lpt1
   else
   if cbPuertos2.Text = 'LPT2' then
      tPrinter.PrinterPort    := Lpt2;

   tPrinter.CodeCut := edAutoCutter2.Text;
   tPrinter.CutPaper;
   tPrinter.cerrar_puerto;
   }
end;

end.
