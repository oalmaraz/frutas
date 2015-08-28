unit explorar_clientes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  explorarMDI, Db,    Menus,
  IBCustomDataSet, IBQuery,  StdCtrls,
     Mask, DBCtrls,
     jpeg,  ExtCtrls,
    ComCtrls, Grids, DBGrids, Buttons;

type
  TfrmExplorar_clientes = class(TfrmExplorarMDI)
    qyExplorarR_ID: TIntegerField;
    qyExplorarR_C_CLAVE: TIBStringField;
    qyExplorarR_CLIENTE: TIBStringField;
    qyExplorarR_RAZON_SOCIAL: TIBStringField;
    qyExplorarR_CODIGO_PAIS: TIBStringField;
    qyExplorarR_CODIGO_ESTADO: TIBStringField;
    qyExplorarR_TELEFONO: TIBStringField;
    qyExplorarR_RFC: TIBStringField;
    qyExplorarR_CURP: TIBStringField;
    qyExplorarR_LIMITE: TFloatField;
    qyExplorarR_CALLE: TIBStringField;
    qyExplorarR_ENTRE: TIBStringField;
    qyExplorarR_Y: TIBStringField;
    qyExplorarR_NUM_EXT: TIBStringField;
    qyExplorarR_LETRA: TIBStringField;
    qyExplorarR_NUM_INT: TIBStringField;
    qyExplorarR_COLONIA: TIBStringField;
    qyExplorarR_CP: TIBStringField;
    qyExplorarR_CIUDAD: TIBStringField;
    qyExplorarR_ESTADO: TIBStringField;
    qyExplorarR_PAIS: TIBStringField;
    qyExplorarR_VENDEDOR: TIBStringField;
    qyExplorarR_ESTATUS: TIBStringField;
    qyExplorarR_FECHA: TDateTimeField;
    qyExplorarR_FECHA_ULT_COMPRA: TDateTimeField;
    qyExplorarR_FECHA_ULT_PAGO: TDateTimeField;
    qyExplorarR_CORREO: TIBStringField;
    ibCorreo: TBitBtn;
    qyExplorarR_DP_PORC: TFloatField;
    qyExplorarR_DG_PORC: TFloatField;
    qyExplorarR_VENDEDOR_C: TIBStringField;
    qyExplorarR_SEP_NOMBRE: TIBStringField;
    qyExplorarR_SEP_APATERNO: TIBStringField;
    qyExplorarR_SEP_AMATERNO: TIBStringField;
    qyExplorarR_DIAS_DE_RETARDO: TIntegerField;
    qyExplorarR_CC_C: TIBStringField;
    qyExplorarR_CC_N: TIBStringField;
    qyExplorarR_CLASIFICACION_D: TIBStringField;
    procedure FormCreate(Sender: TObject);
    procedure ibPantallaClick(Sender: TObject);
    procedure ibCorreoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmExplorar_clientes: TfrmExplorar_clientes;

implementation

uses
  capturar_clientes;

{$R *.DFM}

procedure TfrmExplorar_clientes.FormCreate(Sender: TObject);
begin
  inherited;
  EXP_NVO     := true;
  CAMPO_FECHA := 'R_FECHA';
  FForma      := 'frmCapturar_clientes';
end;

procedure TfrmExplorar_clientes.ibPantallaClick(Sender: TObject);
begin
  inherited;
  frmCapturar_clientes.Grid         := dgExplorar;
  frmCapturar_clientes.MASTERSOURCE := frmExplorar_clientes.dsFuente;
end;

procedure TfrmExplorar_clientes.ibCorreoClick(Sender: TObject);
var
   ruta      : string;
   archivo   : string;
   args      : string;
begin
   inherited;
   ruta    := ExtractFilePath(ParamStr(0))+'reportes\salidas\';
   archivo := 'Correos.exe';
   if FileExists(ruta + archivo) then
   begin
      args := 'customer ';
      dsFuente.DataSet.First;
      while not(dsFuente.DataSet.Eof) do
      begin
         args := args + ' ' + dsFuente.DataSet.FieldByName('R_ID').AsString;
         dsFuente.DataSet.Next;
      end;

      WinExec(PAnsiChar(ruta + archivo + ' ' + args), SW_SHOWNORMAL);
   end
   else
      showMessage('Falta archivo: ' + ruta + archivo);
end;

end.
