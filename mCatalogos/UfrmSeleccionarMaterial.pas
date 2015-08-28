unit UfrmSeleccionarMaterial;

interface

uses
  UsqlAnaliza, Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
       StdCtrls, Mask, DBCtrls,

   ExtCtrls,  Menus, Db, IBCustomDataSet, IBQuery,
  IBDatabase, IBTable,     Grids,
  DBGrids, Buttons;

type
  TfrmSeleccionarMaterial = class(TForm)
    IBDatabase1: TIBDatabase;
    IBTransaction1: TIBTransaction;
    dsBusqueda: TDataSource;
    qyBusqueda: TIBQuery;
    pmCampos: TPopupMenu;
    SCID1: TMenuItem;
    itemCLAVE: TMenuItem;
    itemDESCRIPCION: TMenuItem;
    paBusqueda: TPanel;
    buBusqueda: TBitBtn;
    buEjecutar: TBitBtn;
    buTodos: TBitBtn;
    edDato: TEdit;
    itemCODIGODEBARRAS: TMenuItem;
    TLineas: TIBTable;
    TPreferencias: TIBTable;
    qyCB: TIBQuery;
    fcImager2: TImage;
    dgBusqueda: TDBGrid;
    qyOriginal: TIBQuery;
    sbHijo: TPanel;
    deID: TDBEdit;
    buInicio: TBitBtn;
    buAnterior: TBitBtn;
    buSiguiente: TBitBtn;
    buFin: TBitBtn;
    ibSalir: TBitBtn;
    sbUp: TBitBtn;
    sbDown: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure buInicioClick(Sender: TObject);
    procedure buAnteriorClick(Sender: TObject);
    procedure buSiguienteClick(Sender: TObject);
    procedure buFinClick(Sender: TObject);
    procedure ibSalirClick(Sender: TObject);
    procedure buTodosClick(Sender: TObject);
    procedure buBusquedaClick(Sender: TObject);
    procedure edDatoKeyPress(Sender: TObject; var Key: Char);
    procedure dgExplorarDblClick(Sender: TObject);
    procedure SCID1Click(Sender: TObject);
    procedure itemCLAVEClick(Sender: TObject);
    procedure itemDESCRIPCIONClick(Sender: TObject);
    procedure itemCODIGODEBARRASClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure fcImager2DblClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dgBusquedaDblClick(Sender: TObject);
    procedure buEjecutarClick(Sender: TObject);
  private
    { Private declarations }
    awrAceptar      : boolean;
    awrCampo        : string;
    sqlSelect       : TSqlAnaliza;
    awrActivarM     : boolean; //Activar Medidas
    awrMultiplesCB  : boolean; //Activar Multiples codigos de barras para un mismo material
    awrBuscarPorMCB : boolean; //Buscar por Multiples codigos de barras;
    procedure setCLAVE(valor : string);
    procedure setDatabase(valor : TIBDatabase);
    procedure setTransaction(valor : TIBTransaction);
    function hayUno : boolean;

    function getLINEA_DESCRIPCION : string;
    function getLINEA : integer;
    function getID : integer;
    function getCLAVE : string;
    function getDESCRIPCION : string;
    function getCODIGO_BARRAS : string;
    function getUNIDAD_BASE : integer;
    function getIVA_PORC : double;
    function getIEPS_PORC : double;
    function getIMPUESTO1_PORC : double;
    function getIMPUESTO2_PORC : double;
    function getCOSTO : double;
    function getCOSTO_ULT_COMPRA : double;
    function getPZASXCAJA : integer;
    function dameSerie : boolean;
    function dameMedida : integer;
    function dameColor : integer;
    function damePeso : string;

    procedure buscarPorMCB;
    procedure buscar;
  public
    { Public declarations }
    function abrirConsulta : boolean;
    procedure LoadFoto(var valor : TMemoryStream);
    procedure LoadObservaciones(var valor : TMemoryStream);
    procedure verificarAceptarSeleccion;
  published
     property DATABASE       : TIBDatabase write setDatabase;
     property TRANSACTION    : TIBTransaction write setTransaction;
     property CAMPO          : string read awrCampo write awrCampo;
     property ID             : integer read getID;
     property CLAVE          : string read getCLAVE write setCLAVE;
     property DESCRIPCION    : string read getDESCRIPCION;
     property CODIGO_BARRAS  : string read getCODIGO_BARRAS;
     property UNIDAD_BASE    : integer read getUNIDAD_BASE;
     property IVA_PORC       : double read getIVA_PORC;
     property IEPS_PORC      : double read getIEPS_PORC;
     property IMPUESTO1_PORC : double read getIMPUESTO1_PORC;
     property IMPUESTO2_PORC : double read getIMPUESTO2_PORC;
     property COSTO          : double read getCOSTO;
     property COSTO_ULT_COMP : double read getCOSTO_ULT_COMPRA;
     property ACEPTAR        : boolean read awrAceptar;
     property LINEA          : integer read getLINEA;
     property LINEA_NOMBRE   : string read getLINEA_DESCRIPCION;
     property PZASXCAJA      : integer read getPZASXCAJA;
     property SERIE          : boolean read dameSerie;
     property MEDIDA         : integer read dameMedida;
     property COLORES        : integer read dameColor; //Por ya existir una propiedad color en la form se cambio a plural
     property SOLICITAR_PESO : string read damePeso;
  end;

var
  frmSeleccionarMaterial: TfrmSeleccionarMaterial;

implementation

uses
  UfrmScript;

{$R *.DFM}

procedure TfrmSeleccionarMaterial.buscarPorMCB;
begin
   dsBusqueda.DataSet := qyCB;
   dgBusqueda.Columns[3].FieldName := 'R_M_CODIGO_BARRAS';

   qyCB.Close;
   qyCB.ParamByName('P_CB').AsString := edDato.Text;
   qyCB.Open;

   dsBusqueda.DataSet.First;
end;

procedure TfrmSeleccionarMaterial.buscar;
var
  vLogica    : string;
  vCampo     : string;
  vSentencia : string;
  vParam     : string;
  i, j       : integer;
  tmp        : string;
  vTipo      : TFieldType;
begin
   dsBusqueda.DataSet              := qyBusqueda;
   dgBusqueda.Columns[3].FieldName := 'CODIGO_BARRAS';

   sqlSelect.LoadOriginal;

   vLogica := 'AND';

   vCampo := buBusqueda.Caption;
   vTipo  := sqlSelect.dameTipoC(vCampo);

   if vTipo in [ftDate, ftDateTime] then
   begin
   end
   else
      if (vTipo = ftInteger) or (vCampo = 'M.CODIGO_BARRAS') then
      begin
         vSentencia := '=';
         vParam     := ':P_DATO';

         j := sqlSelect.AddParamIndex('P_DATO');
         sqlSelect.setParam(j, edDato.Text, psCadena);
      end
      else
      begin
         vSentencia := 'LIKE';
         vParam     := ':P_DATO';
         vCampo     := 'UPPER('+vCampo+')';

         j := sqlSelect.AddParamIndex('P_DATO');
         sqlSelect.setParam(j, '%'+edDato.Text+'%', psCadena);
      end;

   if (sqlSelect.CountWhere = 0) then
      vLogica := ''
   else
      vLogica := vLogica + ' ';

   tmp := vLogica+'('+vCampo+' '+vSentencia+' '+vParam+')';

   sqlSelect.AddWhereExtra(tmp);
   sqlSelect.construirExtra;

   qyBusqueda.SQL.Clear;
   qyBusqueda.SQL.AddStrings(sqlSelect.strSql);
   for i := 1 to sqlSelect.indexParam do
   begin
      qyBusqueda.ParamByName(sqlSelect.dameParam(i)).Value := sqlSelect.dameParamValor(i);
   end;
   qyBusqueda.Open;

   dsBusqueda.DataSet.First;
//   dgExplorar.GotoFirst;
end;

function TfrmSeleccionarMaterial.hayUno : boolean;
var
   v_cuantos : integer;
   rsp       : boolean;
begin
   v_cuantos := 0;
   dsBusqueda.DataSet.First;
   while not(dsBusqueda.DataSet.Eof) do
   begin
      inc(v_cuantos);
      if v_cuantos > 1 then
      begin
         break;
      end;
      dsBusqueda.DataSet.Next;
   end;
   dsBusqueda.DataSet.First;

   rsp := false;
   if v_cuantos = 1 then
      rsp := true;
   result := rsp;
end;

procedure TfrmSeleccionarMaterial.verificarAceptarSeleccion;
begin
   if (dsBusqueda.DataSet.FieldByName('ESTATUS').AsString = 'Cancelado') then
   begin
      awrAceptar := false;
      ShowMessage('No es posible hacer transacciones con un material cancelado.');
   end
   else
   begin
      awrAceptar := true;
      Close;
   end;
end;

procedure TfrmSeleccionarMaterial.setDatabase(valor : TIBDatabase);
begin
   qyBusqueda.Database    := valor;
   qyCB.Database          := valor;
   qyOriginal.Database    := valor;
   TLineas.Database       := valor;
   TPreferencias.Database := valor;
   sqlSelect.DataBase     := valor;
end;

procedure TfrmSeleccionarMaterial.setTransaction(valor : TIBTransaction);
begin
   qyBusqueda.Transaction    := valor;
   qyCB.Transaction          := valor;
   qyOriginal.Transaction    := valor;
   TLineas.Transaction       := valor;
   TPreferencias.Transaction := valor;
   sqlSelect.Transaction     := valor;

   TPreferencias.Open;
   //POS, Activar multiples codigos de barras para un mismo material
   TPreferencias.Filter     := 'ID = 371';
   awrMultiplesCB           := UpperCase(TPreferencias.FieldByName('VALOR').AsString) = 'SI';

   //Activar Medidas
   TPreferencias.Filter          := 'ID = 66';
   awrActivarM                   := UpperCase(TPreferencias.FieldByName('VALOR').AsString) = 'SI';
   dgBusqueda.Columns[5].Visible := awrActivarM;

   //Activar Colores
   TPreferencias.Filter            := 'ID = 69';
   dgBusqueda.Columns[6].Visible   := (UpperCase(TPreferencias.FieldByName('VALOR').AsString) = 'SI') and awrActivarM;

{  dgBusqueda.Columns[3].FieldName := 'R_M_CODIGO_BARRAS';
   if awrMultiplesCB then
   begin
      sqlSelec.AddStrings(qyCB.SQL);
   end
   else
   if awrActivarM then
   begin
      sqlSelec.AddStrings(qyBusquedaMedidaYColor.SQL);
   end
   else
   begin}
      sqlSelect.AddStrings(qyOriginal.SQL);
{      dgBusqueda.Columns[3].FieldName := 'CODIGO_BARRAS';
   end;}
end;


function TfrmSeleccionarMaterial.abrirConsulta : boolean;
var
   tmp : boolean;
begin
   tmp := true;
   if edDato.Text <> '' then
   begin
      if (CAMPO <> '') then
      begin
         buBusqueda.Caption := CAMPO;
         edDato.Text        := UpperCase(edDato.Text);
         buEjecutar.Click;
      end
      else
      begin
         edDato.Text := UpperCase(edDato.Text);

         if awrActivarM or awrMultiplesCB then
         begin
            awrBuscarPorMCB    := true;
            buBusqueda.Caption := 'MM.CODIGO_BARRAS';
            buEjecutar.Click;
         end;

         if dsBusqueda.DataSet.IsEmpty then
         begin
            awrBuscarPorMCB    := false;
            buBusqueda.Caption := 'M.CODIGO_BARRAS';
            buEjecutar.Click;
         end;

         if dsBusqueda.DataSet.IsEmpty then
         begin
            buBusqueda.Caption := 'M.CLAVE';
            buEjecutar.Click;
         end;

         if dsBusqueda.DataSet.IsEmpty then
         begin
            buBusqueda.Caption := 'M.DESCRIPCION';
            buEjecutar.Click;
         end;
      end;

     if not(dsBusqueda.DataSet.IsEmpty) and (hayUno) then
     begin
         tmp := false;
         if (dsBusqueda.DataSet.FieldByName('ESTATUS').AsString = 'Cancelado') then
         begin
            tmp := true;
            ShowMessage('No es posible hacer transacciones con un material cancelado.');
         end;
     end
{     else
      if qyBusqueda.IsEmpty then
      begin
         buBusqueda.Caption := 'M.DESCRIPCION';
         buEjecutar.Click;
         if not(qyBusqueda.IsEmpty) and (dgExplorar.Count = 1) then
         begin
            tmp := false;
            if (dsBusqueda.DataSet.FieldByName('ESTATUS').AsString = 'Cancelado') then
            begin
               tmp := true;
               meCancelado.Execute;
            end;
         end;
      end;}
   end;
   Result := tmp;
end;

function TfrmSeleccionarMaterial.damePeso : string;
var
   tmp : string;
begin
   tmp := dsBusqueda.DataSet.FieldByName('SOLICITAR_PESO').AsString;

   if tmp = '' then
      tmp := 'No';

   Result := tmp;
end;

function TfrmSeleccionarMaterial.getPZASXCAJA : integer;
begin
   Result := dsBusqueda.DataSet.FieldByName('UNIDADES_X_CAJA').AsInteger;
end;

procedure TfrmSeleccionarMaterial.LoadObservaciones(var valor : TMemoryStream);
begin
   valor.Clear;
   TBlobField(dsBusqueda.DataSet.FieldByName('OBSERVACIONES')).SaveToStream(valor);
end;

procedure TfrmSeleccionarMaterial.LoadFoto(var valor : TMemoryStream);
begin
   valor.Clear;
   TBlobField(dsBusqueda.DataSet.FieldByName('FOTO')).SaveToStream(valor);
//   TBlobField(qyBusqueda.FieldByName('FOTO')).SaveToStream(valor);
end;

function TfrmSeleccionarMaterial.getLINEA_DESCRIPCION : string;
begin
   if TLineas.State = dsInactive then
      TLineas.Open;
   if not(dsBusqueda.DataSet.IsEmpty) then
      TLineas.Filter := 'ID = ' + dsBusqueda.DataSet.FieldByName('LINEA').AsString;
   Result := TLineas.FieldByName('DESCRIPCION').AsString;
end;

function TfrmSeleccionarMaterial.getLINEA : integer;
begin
   Result := dsBusqueda.DataSet.FieldByName('LINEA').AsInteger;
end;

function TfrmSeleccionarMaterial.getUNIDAD_BASE : integer;
begin
   Result := dsBusqueda.DataSet.FieldByName('UNIDAD_BASE').AsInteger;
end;

function TfrmSeleccionarMaterial.getIVA_PORC : double;
begin
   Result := dsBusqueda.DataSet.FieldByName('IVA_PORC').AsFloat;
end;

function TfrmSeleccionarMaterial.getIEPS_PORC : double;
begin
   Result := dsBusqueda.DataSet.FieldByName('IEPS_PORC').AsFloat;
end;

function TfrmSeleccionarMaterial.getIMPUESTO1_PORC : double;
begin
   Result := dsBusqueda.DataSet.FieldByName('IMPUESTO_1_PORC').AsFloat;
end;

function TfrmSeleccionarMaterial.getIMPUESTO2_PORC : double;
begin
   Result := dsBusqueda.DataSet.FieldByName('IMPUESTO_2_PORC').AsFloat;
end;

function TfrmSeleccionarMaterial.getCOSTO_ULT_COMPRA : double;
begin
   if dsBusqueda.DataSet.FieldByName('COSTO_ULT_COMPRA').AsFloat <> 0 then
      result := dsBusqueda.DataSet.FieldByName('COSTO_ULT_COMPRA').AsFloat
   else
      result := COSTO;//Cuando se arranca el sistema y no existe ninguna orden de compra
end;

function TfrmSeleccionarMaterial.getCOSTO : double;
begin
   Result := dsBusqueda.DataSet.FieldByName('COSTO').AsFloat;
end;

procedure TfrmSeleccionarMaterial.setCLAVE(valor : string);
begin
   edDato.Text := valor;
end;

function TfrmSeleccionarMaterial.getID : integer;
begin
   Result := dsBusqueda.DataSet.FieldByName('ID').AsInteger;
end;

function TfrmSeleccionarMaterial.getCLAVE : string;
begin
   Result := dsBusqueda.DataSet.FieldByName('CLAVE').AsString;
end;

function TfrmSeleccionarMaterial.getDESCRIPCION : string;
begin
   Result := dsBusqueda.DataSet.FieldByName('DESCRIPCION').AsString;
end;

function TfrmSeleccionarMaterial.getCODIGO_BARRAS : string;
begin
   if awrActivarM and (dsBusqueda.DataSet.FieldByName('R_M_CODIGO_BARRAS').AsString <> '') then
      Result := dsBusqueda.DataSet.FieldByName('R_M_CODIGO_BARRAS').AsString
   else
      Result := dsBusqueda.DataSet.FieldByName('CODIGO_BARRAS').AsString;
end;

procedure TfrmSeleccionarMaterial.FormCreate(Sender: TObject);
begin
   awrAceptar := false;
//   dgExplorar.IniFileName := ExtractFilePath(ParamStr(0))+'\SeleccionarMaterial.ini';
//   dgExplorar.LoadFromIniFile(ExtractFilePath(ParamStr(0))+'\SeleccionarMaterial.ini');

   sqlSelect := TSqlAnaliza.Create;
end;

procedure TfrmSeleccionarMaterial.buInicioClick(Sender: TObject);
begin
   dsBusqueda.DataSet.First;
//   dgExplorar.GotoFirst;
end;

procedure TfrmSeleccionarMaterial.buAnteriorClick(Sender: TObject);
begin
   dsBusqueda.DataSet.Prior;
//   dgExplorar.GotoPrev(true);
end;

procedure TfrmSeleccionarMaterial.buSiguienteClick(Sender: TObject);
begin
   dsBusqueda.DataSet.Next;
//   dgExplorar.GotoNext(true);
end;

procedure TfrmSeleccionarMaterial.buFinClick(Sender: TObject);
begin
   dsBusqueda.DataSet.Last;
//   dgExplorar.GotoLast(true);
end;

procedure TfrmSeleccionarMaterial.ibSalirClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmSeleccionarMaterial.buTodosClick(Sender: TObject);
begin
   sqlSelect.LoadOriginal;

   qyBusqueda.SQL.Clear;
   qyBusqueda.SQL.AddStrings(sqlSelect.strSql);
   qyBusqueda.Open;

   dsBusqueda.DataSet.First;
//   dgExplorar.GotoFirst;
end;

procedure TfrmSeleccionarMaterial.buBusquedaClick(Sender: TObject);
begin
   buEjecutar.Click;
end;

procedure TfrmSeleccionarMaterial.edDatoKeyPress(Sender: TObject;
  var Key: Char);
begin
   if (key = #13) and (edDato.Text <> '') then
      buEjecutar.Click;
end;

procedure TfrmSeleccionarMaterial.dgExplorarDblClick(Sender: TObject);
begin
   verificarAceptarSeleccion;
end;

function TfrmSeleccionarMaterial.dameMedida : integer;
begin
   result := dsBusqueda.DataSet.FieldByName('R_M_MEDIDA').AsInteger;
end;

function TfrmSeleccionarMaterial.dameColor : integer;
begin
   result := dsBusqueda.DataSet.FieldByName('R_M_COLOR').AsInteger;
end;

function TfrmSeleccionarMaterial.dameSerie : boolean;
begin
   result := dsBusqueda.DataSet.FieldByName('NUM_SERIE').AsString = 'Si';
end;

procedure TfrmSeleccionarMaterial.SCID1Click(Sender: TObject);
begin
   buBusqueda.Caption := 'M.ID';
end;

procedure TfrmSeleccionarMaterial.itemCLAVEClick(Sender: TObject);
begin
   buBusqueda.Caption := 'M.CLAVE';
end;

procedure TfrmSeleccionarMaterial.itemDESCRIPCIONClick(Sender: TObject);
begin
   buBusqueda.Caption := 'M.DESCRIPCION';
end;

procedure TfrmSeleccionarMaterial.itemCODIGODEBARRASClick(Sender: TObject);
begin
   buBusqueda.Caption := 'M.CODIGO_BARRAS';
end;

procedure TfrmSeleccionarMaterial.FormDestroy(Sender: TObject);
begin
   sqlSelect.Free;
end;

procedure TfrmSeleccionarMaterial.fcImager2DblClick(Sender: TObject);
begin
  if sqlSelect <> nil then
  begin
     try
        frmScript := TfrmScript.Create(Application);
        frmScript.AddStrings(sqlSelect.strSql);
        frmScript.ShowModal;
     finally
        frmScript.Free;
     end;
  end;
end;

procedure TfrmSeleccionarMaterial.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
   if (Key = #27) then //Tecla Escape
      Close;
   if (Key = #13) and not(dsBusqueda.DataSet.IsEmpty) and not(edDato.Focused) then
   begin
      verificarAceptarSeleccion;
   end;
end;

procedure TfrmSeleccionarMaterial.dgBusquedaDblClick(Sender: TObject);
begin
   verificarAceptarSeleccion; 
end;

procedure TfrmSeleccionarMaterial.buEjecutarClick(Sender: TObject);
begin
   if awrBuscarPorMCB then
      buscarPorMCB
   else
      buscar;
end;

end.
