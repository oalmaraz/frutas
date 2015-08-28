unit capturar_grupos_tabulador;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  capturarMDI, IBStoredProc, IBTable,  Db, IBCustomDataSet,
  IBQuery, StdCtrls, Mask, DBCtrls,    jpeg,
   ExtCtrls, ComCtrls, Buttons, Grids, DBGrids;

type
  TfrmCapturar_grupos_tabulador = class(TfrmCapturarMDI)
    TCapturarID: TIntegerField;
    TCapturarNOMBRE: TIBStringField;
    TCapturarPOR_PORC: TIBStringField;
    TCapturarPOR_VALOR: TIBStringField;
    TCapturarESTATUS: TIBStringField;
    Label7: TLabel;
    deNombre: TDBEdit;
    cbPorPorc: TDBCheckBox;
    cbPorValor: TDBCheckBox;
    laEstatus: TLabel;
    cbEstatus: TDBComboBox;
    pcPrecios: TPageControl;
    tsPrincipal: TTabSheet;
    dgPartidas: TDBGrid;
    paLP: TPanel;
    buItemF7: TBitBtn;
    paPartidas: TPanel;
    qyPartidas: TIBQuery;
    qyPartidasR_ID: TIntegerField;
    qyPartidasR_LINK: TIntegerField;
    qyPartidasR_CLAVE: TIBStringField;
    qyPartidasR_LIMITE_1: TFloatField;
    qyPartidasR_LIMITE_2: TFloatField;
    qyPartidasR_VALOR: TFloatField;
    dsPartidas: TDataSource;
    qyPartidasR_ROW: TIntegerField;
    buF8Proveedores: TBitBtn;
    spE_TABULADOR: TIBStoredProc;
    qyPartidasR_ANEXO: TIBStringField;
    procedure cbPorPorcChange(Sender: TObject);
    procedure cbPorValorChange(Sender: TObject);
    procedure ibNuevoClick(Sender: TObject);
    procedure ibModificarClick(Sender: TObject);
    procedure buItemF7Click(Sender: TObject);
    procedure TCapturarBeforeOpen(DataSet: TDataSet);
    procedure dgPartidasELIMINARButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure buF8ProveedoresClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCapturar_grupos_tabulador: TfrmCapturar_grupos_tabulador;

implementation

uses
  IBModulo, explorar_grupos_tabulador, UfrmTabulador, reglas_de_negocios;

{$R *.DFM}

procedure TfrmCapturar_grupos_tabulador.cbPorPorcChange(Sender: TObject);
begin
  inherited;
  if cbPorPorc.Checked then
  begin
    dsFuente.DataSet.FieldByName('POR_VALOR').AsString := 'No';
  end;

end;

procedure TfrmCapturar_grupos_tabulador.cbPorValorChange(Sender: TObject);
begin
  inherited;
  if cbPorValor.Checked then
  begin
    dsFuente.DataSet.FieldByName('POR_PORC').AsString := 'No';
  end;
end;

procedure TfrmCapturar_grupos_tabulador.ibNuevoClick(Sender: TObject);
begin
  inherited;
  dsFuente.DataSet.FieldByName('POR_PORC').AsString  := 'No';
  dsFuente.DataSet.FieldByName('POR_VALOR').AsString := 'No';
  dsFuente.DataSet.FieldByName('ESTATUS').AsString   := 'Activo';
  deNombre.SetFocus;
end;

procedure TfrmCapturar_grupos_tabulador.ibModificarClick(Sender: TObject);
begin
  inherited;
  deNombre.SetFocus;
end;

procedure TfrmCapturar_grupos_tabulador.buItemF7Click(Sender: TObject);
begin
  inherited;
  try
     frmTabulador           := TfrmTabulador.Create(Application);
     frmTabulador.Link      := dsFuente.DataSet.FieldByName('ID').AsInteger;
     frmTabulador.RefreshDS := qyPartidas;
     frmTabulador.ShowModal;
  finally
     frmTabulador.Destroy;
  end;
end;

procedure TfrmCapturar_grupos_tabulador.TCapturarBeforeOpen(
  DataSet: TDataSet);
begin
  inherited;
  reglas.refresh_IBQuery(qyPartidas);
end;

procedure TfrmCapturar_grupos_tabulador.dgPartidasELIMINARButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
begin
  inherited;
  if MessageDlg('¿ Eliminar registro ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes  then
  begin
     spE_TABULADOR.ParamByName('P_ID').AsInteger := dsPartidas.DataSet.FieldByName('R_ID').AsInteger;
     spE_TABULADOR.ExecProc;
     spE_TABULADOR.Transaction.CommitRetaining;
     
     reglas.refresh_IBQuery(qyPartidas);
  end;
end;

procedure TfrmCapturar_grupos_tabulador.buF8ProveedoresClick(
  Sender: TObject);
begin
  inherited;
  try
     frmTabulador                 := TfrmTabulador.Create(Application);
     frmTabulador.Id              := dsPartidas.DataSet.FieldByName('R_ID').AsInteger;
     frmTabulador.edClave.Text    := dsPartidas.DataSet.FieldByName('R_CLAVE').AsString;
     frmTabulador.edLimite1.Text := dsPartidas.DataSet.FieldByName('R_LIMITE_1').AsString;
     frmTabulador.edLimite2.Text := dsPartidas.DataSet.FieldByName('R_LIMITE_2').AsString;
     frmTabulador.edValor.Text   := dsPartidas.DataSet.FieldByName('R_VALOR').AsString;
     frmTabulador.edAnexo.Text    := dsPartidas.DataSet.FieldByName('R_ANEXO').AsString;
     frmTabulador.RefreshDS       := qyPartidas;
     frmTabulador.ShowModal;
  finally
     frmTabulador.Destroy;
  end;
end;

end.
