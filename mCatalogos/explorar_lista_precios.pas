unit explorar_lista_precios;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  explorarMDI, IBStoredProc,  Db,
  Menus,   IBCustomDataSet, IBQuery,  StdCtrls,
       Mask, DBCtrls,
       jpeg,
  ExtCtrls,    IBData,
       ComCtrls, Grids,
  DBGrids, Buttons;

type
  TfrmExplorar_lista_precios = class(TfrmExplorarMDI)
    qyExplorarR_ID: TIntegerField;
    qyExplorarR_MATERIAL_CLAVE: TIBStringField;
    qyExplorarR_MATERIAL_DESCRIPCION: TIBStringField;
    qyExplorarR_FECHA: TDateTimeField;
    qyExplorarR_PRECIO_MINIMO: TFloatField;
    qyExplorarR_PRECIO_MAXIMO: TFloatField;
    ibIncremento: TBitBtn;
    ibDecremento: TBitBtn;
    spLP_INCREMENTO_GRAL: TIBStoredProc;
    spLP_DECREMENTO_GRAL: TIBStoredProc;
    qyExplorarR_COSTO: TFloatField;
    qyExplorarR_FUCOMPRA: TDateTimeField;
    qyEncabezadosAlmacenes: TIBQuery;
    qyEncabezadosAlmacenesR_ALMACEN1: TIntegerField;
    qyEncabezadosAlmacenesR_ALMACEN2: TIntegerField;
    qyEncabezadosAlmacenesR_ALMACEN3: TIntegerField;
    qyEncabezadosAlmacenesR_ALMACEN4: TIntegerField;
    qyEncabezadosAlmacenesR_ALMACEN5: TIntegerField;
    qyEncabezadosAlmacenesR_ALMACEN6: TIntegerField;
    qyEncabezadosAlmacenesR_ALMACEN7: TIntegerField;
    qyEncabezadosAlmacenesR_ALMACEN8: TIntegerField;
    qyEncabezadosAlmacenesR_ALMACEN9: TIntegerField;
    qyEncabezadosAlmacenesR_ALMACEN10: TIntegerField;
    qyEncabezadosAlmacenesR_ALMACEN1_CLAVE: TIBStringField;
    qyEncabezadosAlmacenesR_ALMACEN2_CLAVE: TIBStringField;
    qyEncabezadosAlmacenesR_ALMACEN3_CLAVE: TIBStringField;
    qyEncabezadosAlmacenesR_ALMACEN4_CLAVE: TIBStringField;
    qyEncabezadosAlmacenesR_ALMACEN5_CLAVE: TIBStringField;
    qyEncabezadosAlmacenesR_ALMACEN6_CLAVE: TIBStringField;
    qyEncabezadosAlmacenesR_ALMACEN7_CLAVE: TIBStringField;
    qyEncabezadosAlmacenesR_ALMACEN8_CLAVE: TIBStringField;
    qyEncabezadosAlmacenesR_ALMACEN9_CLAVE: TIBStringField;
    qyEncabezadosAlmacenesR_ALMACEN10_CLAVE: TIBStringField;
    qyEncabezadosAlmacenesR_CUANTOS: TIntegerField;
    qyExplorarR_X_CAJA: TIntegerField;
    qyExistencias: TIBQuery;
    qyExistenciasR_MATERIAL: TIntegerField;
    qyExistenciasR_CANTIDAD1: TFloatField;
    qyExistenciasR_CANTIDAD2: TFloatField;
    qyExistenciasR_CANTIDAD3: TFloatField;
    qyExistenciasR_CANTIDAD4: TFloatField;
    qyExistenciasR_CANTIDAD5: TFloatField;
    qyExistenciasR_CANTIDAD6: TFloatField;
    qyExistenciasR_CANTIDAD7: TFloatField;
    qyExistenciasR_CANTIDAD8: TFloatField;
    qyExistenciasR_CANTIDAD9: TFloatField;
    qyExistenciasR_CANTIDAD10: TFloatField;
    dsExistencias: TDataSource;
    dgExistencias: TDBGrid;
    qyExplorarR_MATERIAL_ID: TIntegerField;
    qyExistenciasR_TOTAL: TFloatField;
    qyExplorarR_ESTATUS: TIBStringField;
    Shape1: TShape;
    Shape17: TShape;
    Label1: TLabel;
    spNLP_MONEDA: TIBStoredProc;
    Label2: TLabel;
    Shape2: TShape;
    Shape3: TShape;
    qyNLP: TIBQuery;
    dsNLP: TDataSource;
    qyNLPID: TIntegerField;
    qyNLPDESCRIPCION: TIBStringField;
    qyExplorarR_CBARRAS: TIBStringField;
    rbMin: TRadioButton;
    rbMax: TRadioButton;
    rbAmbos: TRadioButton;
    spM_PRECIO: TIBStoredProc;
    edPrecio: TEdit;
    laMaximo: TDBText;
    laClave: TDBText;
    cbMonedas: TDBLookupComboBox;
    cbNLP: TDBLookupComboBox;
    procedure FormCreate(Sender: TObject);
    procedure ibIncrementoClick(Sender: TObject);
    procedure ibDecrementoClick(Sender: TObject);
    procedure ibVerClick(Sender: TObject);
    procedure cbMonedasChange(Sender: TObject);
    procedure edExplorarValorKeyPress(Sender: TObject; var Key: Char);
    procedure ibPantallaClick(Sender: TObject);
    procedure cbNLPChange(Sender: TObject);
    procedure edPrecioKeyPress(Sender: TObject; var Key: Char);
    procedure rbMinClick(Sender: TObject);
    procedure rbMaxClick(Sender: TObject);
    procedure rbAmbosClick(Sender: TObject);
  private
    { Private declarations }
    gMBase : integer;//global
    procedure LoadAlmacenes;
    procedure LoadMoneda;
    function getNLP : integer;
    procedure OpenLP;
  protected
    procedure AddSentHoy;override;
    procedure AddSentAyer;override;
    procedure AddSentAmbas;override;
    procedure Parametros; override;
  public
    { Public declarations }
  published
     property NLP : integer read getNLP;//Nombre Lista de Precios
  end;

var
  frmExplorar_lista_precios: TfrmExplorar_lista_precios;

implementation

uses USqlAnaliza, IBModulo, reglas_de_negocios;

{$R *.DFM}

procedure TfrmExplorar_lista_precios.OpenLP;
var
   tmp : integer;
begin
   if cbNLP.KeyValue = 0 then
      tmp := 0
   else
      tmp := cbNLP.KeyValue;
   sqlExp.setParam('P_NLP', tmp);
end;

procedure TfrmExplorar_lista_precios.Parametros;
var
   idx   : integer;
   v_nlp : integer;
begin
   if cbNLP.KeyValue = 0 then
      v_nlp := 0
   else
      v_nlp := cbNLP.KeyValue;

   idx := sqlExp.dameParam('P_NLP');
   sqlExp.setParam(idx, v_nlp, psCadena);
end;

procedure TfrmExplorar_lista_precios.AddSentHoy;
var
   tmp : integer;
begin
   if cbNLP.KeyValue = 0 then
      tmp := 0
   else
      tmp := cbNLP.KeyValue;
   sqlExp.setParam('P_NLP', tmp);
end;

procedure TfrmExplorar_lista_precios.AddSentAyer;
begin
   AddSentHoy;
end;

procedure TfrmExplorar_lista_precios.AddSentAmbas;
begin
   AddSentHoy;
end;

function TfrmExplorar_lista_precios.getNLP : integer;
begin
   if cbNLP.KeyValue = 0 then
   begin
      spNLP_MONEDA.ParamByName('P_MONEDA').AsInteger := cbMonedas.KeyValue;
      spNLP_MONEDA.ExecProc;
      spNLP_MONEDA.Transaction.CommitRetaining;
      reglas.refresh_IBQuery(qyNLP);
      cbNLP.KeyValue := spNLP_MONEDA.ParamByName('R_ID').AsInteger;
   end;

   result := cbNLP.KeyValue;
end;

procedure TfrmExplorar_lista_precios.LoadMoneda;
begin
   reglas.refresh_IBQuery(dmIBData.qyMonedas);
   reglas.refresh_IBQuery(qyNLP);
   reglas.abrir_IBTabla(dmIBData.TPreferencias);

   //Moneda base
   dmIBData.TPreferencias.Filter := 'ID = 3';
   cbMonedas.KeyValue := dmIBData.TPreferencias.FieldByName('VALOR').AsInteger;
   cbNLP.KeyValue     := dsNLP.DataSet.FieldByName('ID').AsInteger;
   gMBase             := dmIBData.TPreferencias.FieldByName('VALOR').AsInteger;
end;

procedure TfrmExplorar_lista_precios.LoadAlmacenes;
var
   i : integer;
begin
  qyExistencias.Close;
  qyExistencias.ParamByName('P_MONEDA').AsInteger := cbMonedas.KeyValue;
  qyExistencias.Open;

  qyEncabezadosAlmacenes.Close;
  qyEncabezadosAlmacenes.Open;
  for i := 1 to qyEncabezadosAlmacenes.FieldByName('R_CUANTOS').AsInteger do
  begin
     {
     case i of
       1: begin
             dgExistenciasCANTIDAD1.Caption := qyEncabezadosAlmacenes.FieldByName('R_ALMACEN1_CLAVE').AsString;
             dgExistenciasCANTIDAD1.Visible := TRUE;
          end;
       2: begin
             dgExistenciasCANTIDAD2.Caption := qyEncabezadosAlmacenes.FieldByName('R_ALMACEN2_CLAVE').AsString;
             dgExistenciasCANTIDAD2.Visible := TRUE;
          end;
       3: begin
             dgExistenciasCANTIDAD3.Caption :=
             qyEncabezadosAlmacenes.FieldByName('R_ALMACEN3_CLAVE').AsString;
             dgExistenciasCANTIDAD3.Visible := TRUE;
          end;
       4: begin
             dgExistenciasCANTIDAD4.Caption := qyEncabezadosAlmacenes.FieldByName('R_ALMACEN4_CLAVE').AsString;
             dgExistenciasCANTIDAD4.Visible := TRUE;
          end;
       5: begin
             dgExistenciasCANTIDAD5.Caption := qyEncabezadosAlmacenes.FieldByName('R_ALMACEN5_CLAVE').AsString;
             dgExistenciasCANTIDAD5.Visible := TRUE;
          end;
       6: begin
             dgExistenciasCANTIDAD6.Caption := qyEncabezadosAlmacenes.FieldByName('R_ALMACEN6_CLAVE').AsString;
             dgExistenciasCANTIDAD6.Visible := TRUE;
          end;
       7: begin
             dgExistenciasCANTIDAD7.Caption := qyEncabezadosAlmacenes.FieldByName('R_ALMACEN7_CLAVE').AsString;
             dgExistenciasCANTIDAD7.Visible := TRUE;
          end;
       8: begin
             dgExistenciasCANTIDAD8.Caption := qyEncabezadosAlmacenes.FieldByName('R_ALMACEN8_CLAVE').AsString;
             dgExistenciasCANTIDAD8.Visible := TRUE;
          end;
       9: begin
             dgExistenciasCANTIDAD9.Caption := qyEncabezadosAlmacenes.FieldByName('R_ALMACEN9_CLAVE').AsString;
             dgExistenciasCANTIDAD9.Visible := TRUE;
          end;
      10: begin
             dgExistenciasCANTIDAD10.Caption := qyEncabezadosAlmacenes.FieldByName('R_ALMACEN10_CLAVE').AsString;
             dgExistenciasCANTIDAD10.Visible := TRUE;
          end;
     end;
     }
  end;
end;

procedure TfrmExplorar_lista_precios.FormCreate(Sender: TObject);
begin
  inherited;
  EXP_NVO     := true;
  CAMPO_FECHA := 'R_FECHA';
  FForma      := 'frmCapturar_lista_precios';

  LoadMoneda;
  LoadAlmacenes;
end;

procedure TfrmExplorar_lista_precios.ibIncrementoClick(Sender: TObject);
begin
  inherited;
  {
  idPorcI.Entrada := '0';
  idPorcI.Execute;
  if (idPorcI.Respuesta) and (idPorcI.Entrada <> '') then
  begin
     spLP_INCREMENTO_GRAL.ParamByName('P_PORCENTAJE').AsFloat := StrToFloat(idPorcI.Entrada);
     spLP_INCREMENTO_GRAL.ExecProc;
     spLP_INCREMENTO_GRAL.Transaction.CommitRetaining;
     reglas.refresh_IBQuery(qyExplorar);
  end;
  }
end;

procedure TfrmExplorar_lista_precios.ibDecrementoClick(Sender: TObject);
begin
  inherited;
  {
  idPorcD.Entrada := '0';
  idPorcD.Execute;
  if (idPorcD.Respuesta) and (idPorcD.Entrada <> '') then
  begin
     spLP_DECREMENTO_GRAL.ParamByName('P_PORCENTAJE').AsFloat := StrToFloat(idPorcD.Entrada);
     spLP_DECREMENTO_GRAL.ExecProc;
     spLP_DECREMENTO_GRAL.Transaction.CommitRetaining;
     reglas.refresh_IBQuery(qyExplorar);
  end;
  }
end;

procedure TfrmExplorar_lista_precios.ibVerClick(Sender: TObject);
//var
//   i, j : integer;
//   tmp  : integer;
begin
   inherited;
{   if cbNLP.KeyValue = null then
      tmp  := 0
   else
      tmp := cbNLP.KeyValue;

   sqlExp.LoadOriginal;

   j := sqlExp.AddParamIndex('P_NLP');
   sqlExp.setParam(j, tmp, psCadena);
   sqlExp.construirExtra;

   qyExplorar.SQL.Clear;
   qyExplorar.SQL.AddStrings(sqlExp.strSql);

   for i := 1 to sqlExp.indexParam do
   begin
      qyExplorar.ParamByName(sqlExp.dameParam(i)).Value := sqlExp.dameParamValor(i);
   end;
   qyExplorar.Open;
   dgExplorar.GotoFirst;}
end;

procedure TfrmExplorar_lista_precios.cbMonedasChange(
  Sender: TObject);
begin
  inherited;
  if dsNLP.DataSet.IsEmpty then
  begin
     qyExplorar.Close;
  end
  else
     cbNLP.KeyValue := dsNLP.DataSet.FieldByName('ID').AsInteger;
end;

procedure TfrmExplorar_lista_precios.edExplorarValorKeyPress(
  Sender: TObject; var Key: Char);
//var
//   tmp : integer;
begin
  if (Key = #13) and (edExplorarValor.Text <> '') and (dsFuente.DataSet <> nil) then
  begin
     OpenLP;
  end;
  inherited;
end;

procedure TfrmExplorar_lista_precios.ibPantallaClick(Sender: TObject);
begin
  if (dsFuente.DataSet.State = dsInactive) then
     Parametros;
  inherited;
end;

procedure TfrmExplorar_lista_precios.cbNLPChange(Sender: TObject);
begin
  inherited;
  OpenLP;
  construirBusqueda;
end;

procedure TfrmExplorar_lista_precios.edPrecioKeyPress(
  Sender: TObject; var Key: Char);
var
   v_quien    : string;
   v_ejecutar : boolean;
begin
  inherited;
  if (Key = #13) and not(dsFuente.DataSet.IsEmpty) then
  begin
     if rbMin.Checked then
        v_quien := 'MIN'
     else
     if rbMax.Checked then
        v_quien := 'MAX'
     else
     if rbAmbos.Checked then
        v_quien := 'AMBOS';

     v_ejecutar := true;
     if edPrecio.Text = '0' then
     begin
         if MessageDlg('El valor del precio es CERO, ¿Afectar precio?', mtConfirmation, [mbYes, mbNo], 0) = mrYes  then
         begin
           v_ejecutar := true;
         end
         else
         begin
           v_ejecutar := false;
         end
     end;

     if v_ejecutar then
     begin
        spM_PRECIO.ParamByName('P_ID').AsInteger   := dsFuente.DataSet.FieldByName('R_ID').AsInteger;
        spM_PRECIO.ParamByName('P_PRECIO').AsFloat := StrToFloat(edPrecio.Text);
        spM_PRECIO.ParamByName('P_QUIEN').AsString := v_quien;
        spM_PRECIO.ExecProc;
        spM_PRECIO.Transaction.CommitRetaining;
        dgExplorar.DataSource.DataSet.First;

        edPrecio.Clear;
     end;
  end;
end;

procedure TfrmExplorar_lista_precios.rbMinClick(Sender: TObject);
begin
  inherited;
  edPrecio.SetFocus;
end;

procedure TfrmExplorar_lista_precios.rbMaxClick(Sender: TObject);
begin
  inherited;
  edPrecio.SetFocus;
end;

procedure TfrmExplorar_lista_precios.rbAmbosClick(Sender: TObject);
begin
  inherited;
  edPrecio.SetFocus;
end;

end.
