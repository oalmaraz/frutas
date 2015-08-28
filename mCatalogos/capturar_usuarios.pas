unit capturar_usuarios;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  capturar_base_sujetos,    ImgList,
  Db, IBStoredProc, IBTable,  IBCustomDataSet, IBQuery,
   StdCtrls, ComCtrls,  DBCtrls, Mask,
    jpeg,  ExtCtrls,  ExtDlgs,
   Menus,  Buttons,
     Grids, DBGrids, System.ImageList;

type
  TfrmCapturar_usuarios = class(TfrmCapturar_base_sujetos)
    TCapturarID: TIntegerField;
    TCapturarSUJETO: TIntegerField;
    TCapturarUSUARIO: TIBStringField;
    TCapturarBAJA: TIBStringField;
    Label12: TLabel;
    deUsuario: TDBEdit;
    ceBaja: TDBCheckBox;
    seNivel: TDBEdit;
    Label13: TLabel;
    TCapturarNIVEL: TIntegerField;
    edPClave: TDBEdit;
    Label2: TLabel;
    TCapturarPSECRETA: TIBStringField;
    qyAlmacenes: TIBQuery;
    qyAlmacenesID: TIntegerField;
    qyAlmacenesCLAVE: TIBStringField;
    qyAlmacenesNOMBRE: TIBStringField;
    qyAlmacenesCOMPRA: TIBStringField;
    qyAlmacenesVENDE: TIBStringField;
    qyAlmacenesTRANSFORMA: TIBStringField;
    qyAlmacenesFECHA_ALTA: TDateTimeField;
    qyAlmacenesRESPONSABLE: TIntegerField;
    qyAlmacenesOBSERVACIONES: TBlobField;
    qyAlmacenesSERIE_FACTURA: TIBStringField;
    qyAlmacenesCONSECUTIVO: TIntegerField;
    qyAlmacenesFECHA_ULT_INV: TDateTimeField;
    qyAlmacenesESTATUS: TIBStringField;
    qyAlmacenesSERIE_NC: TIBStringField;
    qyAlmacenesSERIE_NVENTA: TIBStringField;
    qyAlmacenesSERIE_NCARGO: TIBStringField;
    dsAlmacenes: TDataSource;
    Label17: TLabel;
    cbAlmacenes: TDBLookupComboBox;
    sbActAlmacen: TSpeedButton;
    sbLimAlmacen: TSpeedButton;
    TCapturarALMACEN: TIntegerField;
    TCapturarCODIGO_BARRAS: TIBStringField;
    laIdentificarse: TBitBtn;
    edCBarras: TDBEdit;
    spAUTO_FOLIO_U: TIBStoredProc;
    procedure ibCandadoClick(Sender: TObject);
    procedure dsFuenteDataChange(Sender: TObject; Field: TField);
    procedure laClaveClick(Sender: TObject);
    procedure sbActAlmacenClick(Sender: TObject);
    procedure sbLimAlmacenClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure laIdentificarseClick(Sender: TObject);
  private
    { Private declarations }
  protected
     procedure valores;override;
  public
    { Public declarations }
  end;

var
  frmCapturar_usuarios: TfrmCapturar_usuarios;

implementation

uses explorar_usuarios, IBModulo, capturar_seguridad, reglas_de_negocios;

{$R *.DFM}

procedure TfrmCapturar_usuarios.valores;
begin
   dsFuente.DataSet.FieldByName('BAJA').AsString   := 'No';
   dsFuente.DataSet.FieldByName('NIVEL').AsInteger := 1;
end;

procedure TfrmCapturar_usuarios.ibCandadoClick(Sender: TObject);
begin
  inherited;
  frmCapturar_seguridad := TfrmCapturar_seguridad.Crear(Application, dsFuente.DataSet.FieldByName('ID').AsInteger);
  frmCapturar_seguridad.ShowModal;
  frmCapturar_seguridad.Free;
end;

procedure TfrmCapturar_usuarios.dsFuenteDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  {
  if dsFuente.DataSet <> nil then
    ibCandado.Enabled := (dsFuente.DataSet.State = dsBrowse) and not(dsFuente.DataSet.IsEmpty);
    }
end;

procedure TfrmCapturar_usuarios.laClaveClick(Sender: TObject);
begin
//  inherited;
end;

procedure TfrmCapturar_usuarios.sbActAlmacenClick(Sender: TObject);
begin
  inherited;
  reglas.refresh_IBQuery(qyAlmacenes);
end;

procedure TfrmCapturar_usuarios.sbLimAlmacenClick(Sender: TObject);
begin
  inherited;
  dsFuente.DataSet.FieldByName('ALMACEN').AsVariant := 0;
end;

procedure TfrmCapturar_usuarios.FormCreate(Sender: TObject);
begin
  reglas.refresh_IBQuery(qyAlmacenes);
  inherited;
end;

procedure TfrmCapturar_usuarios.laIdentificarseClick(Sender: TObject);
var
   tmp  : string;
   sc   : integer;
   i    : integer;
begin
  inherited;
  sc := 0;
  tmp := UpperCase(Self.Caption);
  for i := 0 to length(tmp) do
     sc := sc + ord(tmp[i]);
  spAUTO_FOLIO_U.ParamByName('P_SUBCLASE').AsInteger := sc;
  spAUTO_FOLIO_U.ParamByName('P_AFECTAR').AsString   := 'Si';
  spAUTO_FOLIO_U.ExecProc;
  spAUTO_FOLIO_U.Transaction.CommitRetaining;
  dsFuente.DataSet.FieldByName('CODIGO_BARRAS').AsString := reglas.rellenar(spAUTO_FOLIO_U.ParamByName('R_FOLIO').AsInteger, 25);
end;

end.

