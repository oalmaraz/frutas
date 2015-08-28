unit UfrmConsultaPrecios;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, Menus, Mask, DBCtrls, Grids, DBGrids, Db, IBCustomDataSet,
  IBQuery, StdCtrls, ExtCtrls;

type
  TCBarras = record
     activar     : boolean;
     digitoVerif : string;
  end;

  TBalanza = record
     activar           : boolean;
     digitoVerif       : string;
     charSolPeso       : string;
     iniCharSolPeso    : string;
     finCharSolPeso    : string;
     charHabilitar     : string;
     charDesahabilitar : string;
  end;

  TPuertoCom = record
               Name : string;
      BitsPerSecond : string;
           DataBits : string;
             Parity : string;
           StopBits : string;
        FlowControl : string;
  end;

  TfrmConsultaPrecios = class(TForm)
    dgExplorar: TDBGrid;
    qyBusqueda: TIBQuery;
    dsBusqueda: TDataSource;
    qyBusquedaR_ID: TIntegerField;
    qyBusquedaR_CLAVE: TIBStringField;
    qyBusquedaR_DESCRIPCION: TIBStringField;
    qyBusquedaR_CODIGO_BARRAS: TIBStringField;
    qyBusquedaR_UNIDAD_BASE: TIntegerField;
    qyBusquedaR_UNIDAD_BASE_C: TIBStringField;
    qyBusquedaR_UNIDAD_BASE_D: TIBStringField;
    qyBusquedaR_NUM_SERIE: TIBStringField;
    qyBusquedaR_ESTATUS: TIBStringField;
    qyBusquedaR_PRECIO: TFloatField;
    qyBusquedaR_OFERTA_PORC: TFloatField;
    qyBusquedaR_PRECIO_OFERTA: TFloatField;
    ppFunciones: TPopupMenu;
    itemF1: TMenuItem;
    paEncabezado: TPanel;
    Label7: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    edCodigo: TEdit;
    deClave: TDBEdit;
    deDescripcion: TDBEdit;
    dePrecio: TDBEdit;
    dePorc: TDBEdit;
    deVenta: TDBEdit;
    laCom1: TLabel;
    deId: TDBEdit;
    Bevel1: TBevel;
    qyBusquedar_pintar: TIntegerField;
    paFunciones: TPanel;
    Panel1: TPanel;
    Label17: TLabel;
    laF12: TLabel;
    Panel2: TPanel;
    Label19: TLabel;
    laF11: TLabel;
    Panel3: TPanel;
    Label21: TLabel;
    laF10: TLabel;
    Panel4: TPanel;
    Label23: TLabel;
    laF9: TLabel;
    Panel5: TPanel;
    Label28: TLabel;
    laF8: TLabel;
    Panel6: TPanel;
    Label33: TLabel;
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
    Label6: TLabel;
    laF1: TLabel;
    Panel15: TPanel;
    Label9: TLabel;
    laSalir: TLabel;
    procedure edCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure laSalirClick(Sender: TObject);
    procedure itemF1Click(Sender: TObject);
    procedure laF1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure nrBarCodeScan1BarCode(Sender: TObject; BarCode: String);
    procedure FormCreate(Sender: TObject);
    procedure qyBusquedaCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    awrAlmacen     : integer;
    awrCliente     : integer;
    awrExtension   : integer;
    awrMoneda      : integer;
    awrCfgCBarras  : TCBarras;
    awrCfgPuerto   : TPuertoCom;
    awrCfgBalanza  : TBalanza;
    awrBalanzaCIni : string;
    awrBalanzaCFin : string;
    awrID          : integer;
    awrClave       : string; 

    awrACBP              : Boolean;//Activar Codigo de Barras Parcial
    awrDVCBP             : String; //Digito Verificador Codigo de Barras Parcial
    awrPintar      : boolean;

    procedure leerConfiguracionPuerto;
    procedure verificarPuertos;
    function reemplazaStr(busca, remplaza, Str : string) : string;
    procedure leerCaracteresIniBascula;
    procedure leerCaracteresFinBascula;
    function siguienteComa(p_cadena : string; p_pos_i : integer) : integer;
    procedure habilitarBascula;
  public
    { Public declarations }
    procedure open;
    procedure openBusqueda;
    function verificarCBParcial(valor : string) : string;
  published
     property ALMACEN       : integer write awrAlmacen;
     property CLIENTE       : integer write awrCliente;
     property EXTENSION     : integer write awrExtension;
     property MONEDA        : integer write awrMoneda;
     property IDENTIFICADOR : integer read awrId;
     property CLAVE         : string  read awrClave;
  end;

var
  frmConsultaPrecios: TfrmConsultaPrecios;

implementation

uses
  TypInfo, IniFiles, IBModulo, UfrmBasculaPuerto, IBData;

{$R *.DFM}

function TfrmConsultaPrecios.verificarCBParcial(valor : string) : string;
var
   dv    : string; //digito verificador
   cb    : string; //codigo de barras
   cbp   : string; //codigo de barras producto
   pesoK : string; //Peso en Kilos
   pesoG : string; //Peso en Gramos
   pesoU : string; //Peso Unidad
   peso  : string;
begin
   cb := valor;
   dv := Copy(cb, 1, 2);
   if dv = awrDVCBP then
   begin
      cbp := Copy(cb,  3, 5);
      cb  := cbp;
   end;

   result := cb;
end;

procedure TfrmConsultaPrecios.openBusqueda;
var
   tmp : char;
begin
   tmp := #13;
//   edCodigoKeyPress(Sender, tmp);
end;

procedure TfrmConsultaPrecios.habilitarBascula;
begin
{
   if nrBarCodeScan1.Active then
   begin
      nrBarCodeScan1.SendString(awrCfgBalanza.charHabilitar + awrBalanzaCFin);
   end;
   }
end;

procedure TfrmConsultaPrecios.leerCaracteresFinBascula;
   function caracter(cadena : string; var pI : word; var pF : word) : string;
   var
      cuantos : word;

   begin
      pF    := siguienteComa(cadena, pI);
      if pF = 0 then
         pF := length(cadena) + 1;
      cuantos  := pF - pI;

      result := copy(cadena, pI, cuantos);
   end;
var
   arreglo : array[1..10] of string;
   posC1 : word;
   posC2 : word;
   i     : word;
begin
   posC1 := 1;
   posC2 := 1;
   arreglo[1] := caracter(awrCfgBalanza.finCharSolPeso, posC1, posC2);
   inc(posC2);
   posC1       := posC2;
   arreglo[2] := caracter(awrCfgBalanza.finCharSolPeso, posC1, posC2);
   inc(posC2);
   posC1       := posC2;
   arreglo[3] := caracter(awrCfgBalanza.finCharSolPeso, posC1, posC2);
   inc(posC2);
   posC1       := posC2;
   arreglo[4] := caracter(awrCfgBalanza.finCharSolPeso, posC1, posC2);
   inc(posC2);
   posC1       := posC2;
   arreglo[5] := caracter(awrCfgBalanza.finCharSolPeso, posC1, posC2);
   inc(posC2);
   posC1       := posC2;
   arreglo[6] := caracter(awrCfgBalanza.finCharSolPeso, posC1, posC2);
   inc(posC2);
   posC1       := posC2;
   arreglo[7] := caracter(awrCfgBalanza.finCharSolPeso, posC1, posC2);
   inc(posC2);
   posC1       := posC2;
   arreglo[8] := caracter(awrCfgBalanza.finCharSolPeso, posC1, posC2);
   inc(posC2);
   posC1       := posC2;
   arreglo[9] := caracter(awrCfgBalanza.finCharSolPeso, posC1, posC2);
   inc(posC2);
   posC1       := posC2;
   arreglo[10]:= caracter(awrCfgBalanza.finCharSolPeso, posC1, posC2);

   awrBalanzaCFin := '';
   for i := 1 to 10 do
   begin
      if arreglo[i] <> '' then
         awrBalanzaCFin := awrBalanzaCFin + Char(StrToInt(arreglo[i]));
   end;
end;

function TfrmConsultaPrecios.siguienteComa(p_cadena : string; p_pos_i : integer) : integer;
var
   i : integer;
   p : integer;
begin
   p := 0;
   for i := p_pos_i to length(p_cadena) do
   begin
       if p_cadena[i] = ',' then
       begin
          p := i;
          break;
       end;
   end;

   result := p;
end;

procedure TfrmConsultaPrecios.leerCaracteresIniBascula;
   function caracter(cadena : string; var pI : word; var pF : word) : string;
   var
      cuantos : word;

   begin
      pF    := siguienteComa(cadena, pI);
      if pF = 0 then
         pF := length(cadena) + 1;
      cuantos  := pF - pI;

      result := copy(cadena, pI, cuantos);
   end;
var
   arreglo : array[1..10] of string;
   posC1   : word;
   posC2   : word;
   i       : word;
begin
   posC1 := 1;
   posC2 := 1;
   arreglo[1] := caracter(awrCfgBalanza.iniCharSolPeso, posC1, posC2);
   inc(posC2);
   posC1      := posC2;
   arreglo[2] := caracter(awrCfgBalanza.iniCharSolPeso, posC1, posC2);
   inc(posC2);
   posC1      := posC2;
   arreglo[3] := caracter(awrCfgBalanza.iniCharSolPeso, posC1, posC2);
   inc(posC2);
   posC1      := posC2;
   arreglo[4] := caracter(awrCfgBalanza.iniCharSolPeso, posC1, posC2);
   inc(posC2);
   posC1      := posC2;
   arreglo[5] := caracter(awrCfgBalanza.iniCharSolPeso, posC1, posC2);
   inc(posC2);
   posC1      := posC2;
   arreglo[6] := caracter(awrCfgBalanza.iniCharSolPeso, posC1, posC2);
   inc(posC2);
   posC1      := posC2;
   arreglo[7] := caracter(awrCfgBalanza.iniCharSolPeso, posC1, posC2);
   inc(posC2);
   posC1      := posC2;
   arreglo[8] := caracter(awrCfgBalanza.iniCharSolPeso, posC1, posC2);
   inc(posC2);
   posC1      := posC2;
   arreglo[9] := caracter(awrCfgBalanza.iniCharSolPeso, posC1, posC2);
   inc(posC2);
   posC1      := posC2;
   arreglo[10]:= caracter(awrCfgBalanza.iniCharSolPeso, posC1, posC2);

   awrBalanzaCIni := '';
   for i := 1 to 10 do
   begin
      if arreglo[i] <> '' then
         awrBalanzaCIni := awrBalanzaCIni + Char(StrToInt(arreglo[i]));
   end;
end;

function TfrmConsultaPrecios.reemplazaStr(busca, remplaza, Str : string) : string;
begin
   while Pos(busca,Str) > 0 do
   begin
      insert(remplaza, Str, Pos(busca,Str));
      delete(Str, Pos(busca,Str), Length(busca));
   end;
   result := Str;
end;

procedure TfrmConsultaPrecios.leerConfiguracionPuerto;
var
   iniFile : TIniFile;
begin
{
   iniFile                    := TIniFile.Create(ChangeFileExt(Application.ExeName,'.INI'));
   awrCfgPuerto.Name          := iniFile.ReadString('POS_PUERTO', 'Name',          '');
   awrCfgPuerto.BitsPerSecond := iniFile.ReadString('POS_PUERTO', 'BitsPerSecond', '');
   awrCfgPuerto.DataBits      := iniFile.ReadString('POS_PUERTO', 'DataBits',      '');
   awrCfgPuerto.Parity        := iniFile.ReadString('POS_PUERTO', 'Parity',        '');
   awrCfgPuerto.StopBits      := iniFile.ReadString('POS_PUERTO', 'StopBits',      '');
   awrCfgPuerto.FlowControl   := iniFile.ReadString('POS_PUERTO', 'FlowControl',   '');
   iniFile.Free;

   if awrCfgPuerto.Name <> '' then
   begin
      setPropValue(nrBarCodeScan1, 'ComPort',        awrCfgPuerto.Name);
//      setPropValue(nrBarCodeScan1, 'BaudRate',       awrCfgPuerto.BitsPerSecond);
//      setPropValue(nrBarCodeScan1, 'ByteSize',       awrCfgPuerto.DataBits);
      setPropValue(nrBarCodeScan1, 'Parity',         awrCfgPuerto.Parity);
      setPropValue(nrBarCodeScan1, 'StopBits',       awrCfgPuerto.StopBits);
      setPropValue(nrBarCodeScan1, 'StreamProtocol', awrCfgPuerto.FlowControl);

      //la asignacion de los valores fueron de esta forma pues al fijar el valor no lo tomaba correctamente.
      nrBarCodeScan1.BaudRate := StrToInt(awrCfgPuerto.BitsPerSecond);
      nrBarCodeScan1.ByteSize := StrToInt(awrCfgPuerto.DataBits);
   end
   else
   begin
      frmBasculaPuerto := TfrmBasculaPuerto.Create(Application);
      try
         if frmBasculaPuerto.ShowModal = mrOk then
         begin
            setPropValue(nrBarCodeScan1, 'ComPort',        frmBasculaPuerto.cbPuertos.Text);
//            setPropValue(nrBarCodeScan1, 'BaudRate',       frmBasculaPuerto.cbBPS.Text);
//            setPropValue(nrBarCodeScan1, 'ByteSize',       frmBasculaPuerto.cbDB.Text);
            setPropValue(nrBarCodeScan1, 'Parity',         frmBasculaPuerto.cbParity.Text);
            setPropValue(nrBarCodeScan1, 'StopBits',       frmBasculaPuerto.cbStopBits.Text);
            setPropValue(nrBarCodeScan1, 'StreamProtocol', frmBasculaPuerto.cbFlowControl.Text);

            //la asignacion de los valores fueron de esta forma pues al fijar el valor no lo tomaba correctamente.
            awrCfgPuerto.Name       := frmBasculaPuerto.cbPuertos.Text;
            nrBarCodeScan1.BaudRate := StrToInt(frmBasculaPuerto.cbBPS.Text);
            nrBarCodeScan1.ByteSize := StrToInt(frmBasculaPuerto.cbDB.Text);
         end;
      finally
         frmBasculaPuerto.Free;
      end;
   end;

   try
      laCom1.Visible        := true;
      nrBarCodeScan1.Active := false;
      nrBarCodeScan1.Active := true;
      laCom1.Caption := 'com' + reemplazaStr('cpCOM', '', awrCfgPuerto.Name) + ': on';
   except
      mePurtoBascula.Execute;
      laCom1.Caption := 'com' + reemplazaStr('cpCOM', '', awrCfgPuerto.Name) + ': off';
   end;
   }
end;

procedure TfrmConsultaPrecios.verificarPuertos;
begin
   leerConfiguracionPuerto;
end;

procedure TfrmConsultaPrecios.open;
begin
end;

procedure TfrmConsultaPrecios.edCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
   if (Key = #13) and (edCodigo.Text <> '') then
   begin
      awrPintar := false;
      
      //Primera Busqueda por Codigo de Barras
      qyBusqueda.Close;
      qyBusqueda.ParamByName('P_ALMACEN').AsInteger      := awrAlmacen;
      qyBusqueda.ParamByName('P_CLIENTE').AsInteger      := awrCliente;
      qyBusqueda.ParamByName('P_EXTENSION').AsInteger    := awrExtension;
      qyBusqueda.ParamByName('P_MONEDA').AsInteger       := awrMoneda;
      qyBusqueda.ParamByName('P_CLAVE').AsString         := '';
      qyBusqueda.ParamByName('P_CODIGO_BARRAS').AsString := edCodigo.Text;
      qyBusqueda.ParamByName('P_DESCRIPCION').AsString   := '';
      qyBusqueda.Open;

       //Segunda Busqueda por Clave
      if (qyBusqueda.IsEmpty) then
      begin
         qyBusqueda.Close;
         qyBusqueda.ParamByName('P_ALMACEN').AsInteger      := awrAlmacen;
         qyBusqueda.ParamByName('P_CLIENTE').AsInteger      := awrCliente;
         qyBusqueda.ParamByName('P_EXTENSION').AsInteger    := awrExtension;
         qyBusqueda.ParamByName('P_MONEDA').AsInteger       := awrMoneda;
         qyBusqueda.ParamByName('P_CLAVE').AsString         := edCodigo.Text;
         qyBusqueda.ParamByName('P_CODIGO_BARRAS').AsString := '';
         qyBusqueda.ParamByName('P_DESCRIPCION').AsString   := '';
         qyBusqueda.Open;
      end;

      //Tercera Busqueda por Descripcion
      if (qyBusqueda.IsEmpty) then
      begin
         qyBusqueda.Close;
         qyBusqueda.ParamByName('P_ALMACEN').AsInteger      := awrAlmacen;
         qyBusqueda.ParamByName('P_CLIENTE').AsInteger      := awrCliente;
         qyBusqueda.ParamByName('P_EXTENSION').AsInteger    := awrExtension;
         qyBusqueda.ParamByName('P_MONEDA').AsInteger       := awrMoneda;
         qyBusqueda.ParamByName('P_CLAVE').AsString         := '';
         qyBusqueda.ParamByName('P_CODIGO_BARRAS').AsString := '';
         qyBusqueda.ParamByName('P_DESCRIPCION').AsString   := edCodigo.Text;
         qyBusqueda.Open;
      end;

      if (qyBusqueda.IsEmpty) then
      begin
        ShowMessage('No se encontro articulo.');
      end
      else
      begin
         edCodigo.Clear;
         edCodigo.SetFocus;
      end;

      edCodigo.SetFocus;
   end;
end;

procedure TfrmConsultaPrecios.laSalirClick(Sender: TObject);
begin
   self.ModalResult := mrCancel;
end;

procedure TfrmConsultaPrecios.itemF1Click(Sender: TObject);
begin
   if not(qyBusqueda.IsEmpty) then
      laF1Click(Sender)
   else
   begin
     ShowMessage('Busqueda vacia.');
   end
end;

procedure TfrmConsultaPrecios.laF1Click(Sender: TObject);
begin
   if not(dsBusqueda.DataSet.IsEmpty) then
   begin
      awrId            := StrToInt(deId.Text);
      awrClave         := deClave.Text;
      self.ModalResult := mrOk;
   end;
end;

procedure TfrmConsultaPrecios.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #27 then
   begin
      laSalirClick(Sender);
   end
   else
   if (Key = #13) and not(edCodigo.Focused) then
   begin
      laF1Click(Sender);
   end;
end;

procedure TfrmConsultaPrecios.nrBarCodeScan1BarCode(Sender: TObject;
  BarCode: String);
var
   tmp    : char;
   codigo : string;
begin
  inherited;
  if (Copy(BarCode,1, 2) = '08') and ((length(BarCode) > 2)) then
  begin
     codigo := copy(BarCode, 3, length(BarCode) - 2)
  end
  else
  if (Copy(BarCode,1, 2) = '11') and ((length(BarCode) > 2)) then
  begin
     codigo := copy(BarCode, 3, length(BarCode) - 2)
  end
  else
  begin
     codigo := BarCode;
  end;

  if (Copy(codigo,1, 2) = '99') and ((length(codigo) > 2) and (awrACBP)) then
  begin
     codigo := verificarCBParcial(codigo);
  end;

{  awrNeutralizaPeso := false;
  if (Copy(codigo,1, 2) = '99') and ((length(codigo) > 2)) then
     awrNeutralizaPeso := true;

  if awrLeerPeso and not(awrNeutralizaPeso) then
  begin
     awrLeerPeso := false;
     MarcoMateriales1.edCantidad.Value := analizarPesoBascula(codigo);
     MarcoMateriales1.edCantidadChange(Sender);

     buF9.Click;
  end
  else}
  begin
     if Length(codigo) > 2 then
     begin
        edCodigo.Text := codigo;

        tmp := #13;
        edCodigoKeyPress(Sender, tmp);
     end;
  end;
end;

procedure TfrmConsultaPrecios.FormCreate(Sender: TObject);
var
   tmp : char;
begin
   awrId    := 0;
   awrClave := '';
  //Activar busqueda parcial del codigo de barras
  dmIBData.TPreferencias.Filter := 'ID = 360';
  awrACBP               := UpperCase(dmIBData.TPreferencias.FieldByName('VALOR').AsString) = 'SI';
  awrCfgCBarras.activar := UpperCase(dmIBData.TPreferencias.FieldByName('VALOR').AsString) = 'SI';
  //Digito o Digitos Verificador de codigo parcial
  dmIBData.TPreferencias.Filter := 'ID = 361';
  awrDVCBP                     := dmIBData.TPreferencias.FieldByName('VALOR').AsString;
  awrCfgCBarras.digitoVerif    := dmIBData.TPreferencias.FieldByName('VALOR').AsString;
  //Codigo para solicitar peso de la bascula
  dmIBData.TPreferencias.Filter := 'ID = 365';
  awrCfgBalanza.charSolPeso     := dmIBData.TPreferencias.FieldByName('VALOR').AsString;
  //Caracteres de inicio para solicitar peso de la bascula
  dmIBData.TPreferencias.Filter := 'ID = 366';
  awrCfgBalanza.iniCharSolPeso  := dmIBData.TPreferencias.FieldByName('VALOR').AsString;
  //Caracteres de fin para solicitar peso de la bascula
  dmIBData.TPreferencias.Filter := 'ID = 367';
  awrCfgBalanza.finCharSolPeso  := dmIBData.TPreferencias.FieldByName('VALOR').AsString;
  //Activar Bascula
  dmIBData.TPreferencias.Filter := 'ID = 368';
  awrCfgBalanza.activar         := UpperCase(dmIBData.TPreferencias.FieldByName('VALOR').AsString) = 'SI';
  //Digito verificador peso
  dmIBData.TPreferencias.Filter := 'ID = 369';
  awrCfgBalanza.digitoVerif     := dmIBData.TPreferencias.FieldByName('VALOR').AsString;
  //Caracteres para habilitar bascula
  dmIBData.TPreferencias.Filter := 'ID = 373';
  awrCfgBalanza.charHabilitar   := dmIBData.TPreferencias.FieldByName('VALOR').AsString;
  if awrCfgBalanza.activar then
  begin
     verificarPuertos;
     leerCaracteresIniBascula;
     leerCaracteresFinBascula;
     habilitarBascula;
  end;
end;


procedure TfrmConsultaPrecios.qyBusquedaCalcFields(DataSet: TDataSet);
begin
   awrPintar := not(awrPintar);
   if not(awrPintar) then
      DataSet.FieldByName('r_pintar').AsInteger := 0
   else
      DataSet.FieldByName('r_pintar').AsInteger := 1;
end;

end.
