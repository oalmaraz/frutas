unit capturar_colores;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  capturarMDI, IBStoredProc, IBTable,  Db, IBCustomDataSet,
  IBQuery, StdCtrls, Mask, DBCtrls,    jpeg,
   ExtCtrls,

   explorar_colores, IBModulo, Buttons;

type
  TfrmCapturar_colores = class(TfrmCapturarMDI)
    edOrden: TDBEdit;
    cbColores: TDBLookupComboBox;
    cbMostrar: TDBCheckBox;
    edNombre: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    TCapturarID: TIntegerField;
    TCapturarNOMBRE: TIBStringField;
    TCapturarVALOR: TIntegerField;
    TCapturarORDEN: TIntegerField;
    TCapturarMOSTRAR_POS: TIBStringField;
    TCapturarCOLOR_TEXTO: TIntegerField;
    cbColorTexto: TDBLookupComboBox;
    Label4: TLabel;
    edColor: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    edColorTexto: TDBEdit;
    TCapturarPIGMENTOS: TIBStringField;
    cbPigmento: TDBCheckBox;
    TCapturarPROCESOS: TIBStringField;
    cbProceso: TDBCheckBox;
    procedure ibNuevoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCapturar_colores: TfrmCapturar_colores;

implementation

{$R *.DFM}

procedure TfrmCapturar_colores.ibNuevoClick(Sender: TObject);
begin
  inherited;
  dsFuente.DataSet.FieldByName('MOSTRAR_POS').AsString := 'No';
  dsFuente.DataSet.FieldByName('PROCESOS').AsString    := 'No';
  dsFuente.DataSet.FieldByName('PIGMENTOS').AsString   := 'No';
  edNombre.SetFocus;
end;

end.
