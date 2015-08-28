unit generar;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls;

const
   CUANTOS = 21;
type
   TFormatos =(fMonarch, fZebra);

type
  TfrmGenerar = class(TForm)
    edArticulo: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    edDescripcion: TEdit;
    buImprimir: TButton;
    Label5: TLabel;
    edCBarras: TEdit;
    edPlantilla: TMemo;
    edGenerado: TMemo;
    cbFormatos: TComboBox;
    Label3: TLabel;
    Label4: TLabel;
    edPrecio: TEdit;
    Label6: TLabel;
    edEtiqueta1: TEdit;
    Label7: TLabel;
    edEtiqueta2: TEdit;
    Label8: TLabel;
    edEtiqueta3: TEdit;
    Label9: TLabel;
    edEtiqueta4: TEdit;
    Label10: TLabel;
    edEtiqueta5: TEdit;
    Label11: TLabel;
    edCuantas: TEdit;
    Label12: TLabel;
    edAlmacen: TEdit;
    meBat: TMemo;
    Label13: TLabel;
    edSerie: TEdit;
    Label14: TLabel;
    edFecha: TEdit;
    Label15: TLabel;
    Label16: TLabel;
    edMedida: TEdit;
    edColor: TEdit;
    Label17: TLabel;
    edCorta: TEdit;
    Label18: TLabel;
    edPrecioMayoreo: TEdit;
    edPrecioMenudeo: TEdit;
    Label19: TLabel;
    Label20: TLabel;
    edCUC_Cadena: TEdit;
    Label21: TLabel;
    edFechaOC: TEdit;
    Label22: TLabel;
    edFechaDesempaque: TEdit;
    procedure buImprimirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    awrClaseID     : string;
    awrRuta        : string;
    awrFormato     : TFormatos;
    awrReservadas  : array[0..CUANTOS] of string;
    awrBat         : Boolean;

    procedure leerPlantilla(nombre : String);
    procedure leerYGenerarPlantilla(tipo : String);
    function plantilla(cual : String) : String;
    function estatica(cual : String) : String;

    procedure setAlmacen(valor : string);
    procedure setArticulo(valor : string);
    procedure setDescripcion(valor : string);
    procedure setCorta(valor : string);
    procedure setCBarras(valor : string);
    procedure setPrecio(valor : string);
    procedure setCuantas(valor : string);
    procedure setSerie(valor : string);
    procedure setFecha(valor : string);
    procedure setMedida(valor : string);
    procedure setColor(valor : string);
    procedure setMayoreo(valor : string);
    procedure setMenudeo(valor : string);
    procedure setCUC_CADENA(valor : string);
    procedure setFECHA_OC(valor : string);
    procedure setFECHA_DESEMPAQUE(valor : string);
    function quitarLetra(valor, quitar : String; por : char) : string;
  public
    { Public declarations }
  published
    property FORMATO          : TFormatos read awrFormato write awrFormato;
    property ALMACEN          : string write setAlmacen;
    property ARTICULO         : string write setArticulo;
    property DESCRIPCION      : string write setDescripcion;
    property CORTA            : string write setCorta;
    property CBARRAS          : string write setCBarras;
    property PRECIO           : string write setPrecio;
    property CUANTAS          : string write setCuantas;
    property SERIE            : string write setSerie;
    property FECHA            : string write setFecha;
    property MEDIDA           : string write setMedida;
    property COLORES          : string write setColor;
    property MAYOREO          : string write setMayoreo;
    property MENUDEO          : string write setMenudeo;
    property CUC_CADENA       : string write setCUC_CADENA;
    property FECHA_OC         : string write setFECHA_OC;
    property FECHA_DESEMPAQUE : string write setFECHA_DESEMPAQUE;
  end;

var
  frmGenerar: TfrmGenerar;

implementation

uses
   ShellApi, reglas_de_negocios, IBData;

const
   MAY : array[0..25] of char = ('A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z');

{$R *.DFM}

procedure TfrmGenerar.setFECHA_OC(valor : string);
begin
   edFechaOC.Text := valor;
end;

procedure TfrmGenerar.setFECHA_DESEMPAQUE(valor : string);
begin
   edFechaDesempaque.Text := valor;
end;

procedure TfrmGenerar.setCUC_CADENA(valor : string);
begin
   edCUC_Cadena.Text := valor;
end;

function TfrmGenerar.quitarLetra(valor, quitar : String; por : char) : string;
var
   S: string;
//   pausa : integer;
begin
   S := valor;
   while Pos(quitar, S) > 0 do
      S[Pos(quitar, S)] := por;
   Result := S;
end;

procedure TfrmGenerar.setMedida(valor : string);
begin
   edMedida.Text := valor;
end;

procedure TfrmGenerar.setColor(valor : string);
begin
   edColor.Text := valor;
end;

procedure TfrmGenerar.setFecha(valor : string);
begin
   edFecha.Text := valor;
end;

procedure TfrmGenerar.setSerie(valor : string);
begin
   edSerie.Text := valor;
end;

procedure TfrmGenerar.setCuantas(valor : string);
begin
   edCuantas.Text := valor;
end;

procedure TfrmGenerar.setAlmacen(valor : string);
begin
   edAlmacen.Text := valor;
end;

procedure TfrmGenerar.setArticulo(valor : string);
begin
   edArticulo.Text := valor;
end;

procedure TfrmGenerar.setDescripcion(valor : string);
begin
   edDescripcion.Text := quitarLetra(valor, 'Ñ', 'N');
end;

procedure TfrmGenerar.setCorta(valor : string);
begin
   edCorta.Text := quitarLetra(valor, 'Ñ', 'N');
end;

procedure TfrmGenerar.setCBarras(valor : string);
begin
   edCBarras.Text := valor;
end;

procedure TfrmGenerar.setPrecio(valor : string);
begin
   edPrecio.Text := valor;
end;

procedure TfrmGenerar.setMayoreo(valor : string);
begin
   edPrecioMayoreo.Text := valor;
end;

procedure TfrmGenerar.setMenudeo(valor : string);
begin
   edPrecioMenudeo.Text := valor;
end;

procedure TfrmGenerar.leerPlantilla(nombre : String);
begin
   edPlantilla.Lines.LoadFromFile(nombre);
end;

function TfrmGenerar.estatica(cual : String) : String;
var
   tmp  : string;
   i, j : integer;
   ini  : integer;
   cont : integer;
begin
   tmp := '';
   if awrClaseID = '' then
   begin
      ini  := 1;
      cont := 1;
      //no cuenta la primera letra
      for i := 2 to length(cual) do
      begin
         cont := cont + 1;
         for j := 0 to 25 do //26 letras del alfabeto, falta la Ñ
         begin
            if cual[i] = MAY[j] then
            begin
               tmp  := tmp + copy(cual, ini, cont - 1);
               tmp  := tmp + '_';
               ini  := i;
               cont := 1;
               break;
            end;
         end;
      end;

      //contemplar final de texto
      tmp        := tmp + copy(cual, ini, cont);
      tmp        := UpperCase(tmp);
      awrClaseID := tmp;
   end;

   result := awrClaseID;
end;

function TfrmGenerar.plantilla(cual : String) : String;
var
   tmp : string;
begin
   tmp := '';
   if cual = '<ALMACEN>' then
      tmp := edAlmacen.Text
   else
   if cual = '<ARTICULO>' then
      tmp := edArticulo.Text
   else
   if cual = '<DESCRIPCION>' then
      tmp := edDescripcion.Text
   else
   if cual = '<CBARRAS>' then
      tmp := edCBarras.Text
   else
   if cual = '<PRECIO>' then
      tmp := edPrecio.Text
   else
   if cual = '<CUANTAS>' then
      tmp := edCuantas.Text
   else
   if cual = '<EIQUETA1>' then
      tmp := edEtiqueta1.Text
   else
   if cual = '<EIQUETA2>' then
      tmp := edEtiqueta2.Text
   else
   if cual = '<EIQUETA3>' then
      tmp := edEtiqueta3.Text
   else
   if cual = '<EIQUETA4>' then
      tmp := edEtiqueta4.Text
   else
   if cual = '<EIQUETA5>' then
      tmp := edEtiqueta5.Text
   else
   if cual = '<SERIE>' then
      tmp := edSerie.Text
   else
   if cual = '<FECHA>' then
      tmp := edFecha.Text
   else
   if cual = '<MEDIDA>' then
      tmp := edMedida.Text
   else
   if cual = '<COLOR>' then
      tmp := edColor.Text
   else
   if cual = '<CORTA>' then
      tmp := edCorta.Text
   else
   if cual = '<PRECIO_MAYOREO>' then
      tmp := edPrecioMayoreo.Text
   else
   if cual = '<PRECIO_MENUDEO>' then
      tmp := edPrecioMenudeo.Text
   else
   if cual = '<CUC_CADENA>' then
      tmp := edCUC_Cadena.Text
   else
   if cual = '<FECHA_OC>' then
      tmp := edFechaOC.Text
   else
   if cual = '<FECHA_DESEMPAQUE>' then
      tmp := edFechaDesempaque.Text;

   result := tmp;
end;

procedure TfrmGenerar.leerYGenerarPlantilla(tipo : String);
var
{   generado : TextFile; }
   prn       : string;
   i         : integer;
   j         : integer;
   linea     : string;
   palabra   : string;
   ans       : integer;
   sust      : string;
   formato   : string;
   bat       : string;
//   nvo      : string;
begin
   edPlantilla.Lines.Clear;
   edGenerado.Lines.Clear;

   formato := '';
   case cbFormatos.ItemIndex of
       0 : formato := '3of9';
       1 : formato := 'EAN13';
       2 : formato := 'UPCA';
       3 : formato := 'CODE128';
   end;

   if (tipo = 'ZEBRA') then
   begin
      leerPlantilla(awrRuta+'reportes\'+formato+'.zpl');
      prn := prn + awrRuta+'reportes\ZEBRA_'+formato+'.TXT';
   end
   else
   if (tipo = 'MONARCH') then
   begin
      leerPlantilla(awrRuta+'reportes\'+formato+'.fmt');
      prn := prn + awrRuta+'reportes\MONARCH_'+formato+'.TXT';
   end;


   for i := 0 to edPlantilla.Lines.Count - 1 do
   begin
      linea := edPlantilla.Lines[i];
      for j := 0 to CUANTOS do
      begin
         palabra := awrReservadas[j];
         ans := Pos(palabra, linea);
         while (ans <> 0) do
         begin
{            if (ans > 0) then //se encontro referencia
            begin
               ShowMessage('Se encontro referencia: '+awrReservadas[j]+' en linea: '+IntToStr(j))
            end;}


            sust := Copy(linea, 1, ans - 1);
            sust := sust + plantilla(awrReservadas[j]);
            sust := sust + Copy(linea, ans + length(awrReservadas[j]), length(linea));

            linea := sust;
            ans := Pos(palabra, linea);
         end;
      end;
      edGenerado.Lines.Add(linea);
   end;

   edGenerado.Lines.SaveToFile(prn);


   //impresion del archivo generado
   if awrBat then
   begin
      meBat.Clear;
      meBat.Lines.Add('@echo off');
      meBat.Lines.Add('print '+prn);
      bat := awrRuta+'reportes\'+tipo+'_'+formato+'.bat';
      meBat.Lines.SaveToFile(bat);

      if ShellExecute(Application.Handle, 'open', PChar(bat), nil, nil, SW_SHOWNORMAL) <= 32 then
         ShowMessage(SysErrorMessage(GetLastError));
   end
   else
   begin
      if ShellExecute(Application.Handle, 'PRINT', PChar(prn), nil, nil, SW_SHOWNORMAL) <= 32 then
         ShowMessage(SysErrorMessage(GetLastError));
   end;
end;

procedure TfrmGenerar.buImprimirClick(Sender: TObject);
begin
   if (awrFormato = fMonarch) then
   begin
      leerYGenerarPlantilla('MONARCH'); 
   end
   else
   if (awrFormato = fZebra) then
   begin
      leerYGenerarPlantilla('ZEBRA');
   end;
end;

procedure TfrmGenerar.FormCreate(Sender: TObject);
begin
   awrFormato           := fMonarch;
   cbFormatos.ItemIndex := 1;

   awrReservadas[0]  := '<ALMACEN>';
   awrReservadas[1]  := '<ARTICULO>';
   awrReservadas[2]  := '<DESCRIPCION>';
   awrReservadas[3]  := '<CBARRAS>';
   awrReservadas[4]  := '<PRECIO>';
   awrReservadas[5]  := '<CUANTAS>';
   awrReservadas[6]  := '<ETIQUETA1>';
   awrReservadas[7]  := '<ETIQUETA2>';
   awrReservadas[8]  := '<ETIQUETA3>';
   awrReservadas[9]  := '<ETIQUETA4>';
   awrReservadas[10] := '<ETIQUETA5>';
   awrReservadas[11] := '<SERIE>';
   awrReservadas[12] := '<FECHA>';
   awrReservadas[13] := '<MEDIDA>';
   awrReservadas[14] := '<COLOR>';
   awrReservadas[15] := '<CORTA>';
   awrReservadas[16] := '<PRECIO_MAYOREO>';
   awrReservadas[17] := '<PRECIO_MENUDEO>';
   awrReservadas[18] := '<CUC_CADENA>';
   awrReservadas[19] := '<FECHA_OC>';
   awrReservadas[20] := '<FECHA_DESEMPAQUE>';

   awrRuta := ExtractFilePath(ParamStr(0));

   reglas.abrir_IBTabla(dmIBData.TPreferencias);
   //Lazamiento de impresion de etiqueta en archivo por lotes (Bat)
   dmIBData.TPreferencias.Filter := 'ID = 359';
   awrBat := UpperCase(dmIBData.TPreferencias.FieldByName('VALOR').AsString) = 'SI';
end;

end.
