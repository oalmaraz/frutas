unit capturar_lista_precios;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  capturarMDI, IBStoredProc, IBTable,  Db, IBCustomDataSet,
  IBQuery, StdCtrls, Mask, DBCtrls,    jpeg,
   ExtCtrls,
    Buttons;

type
  TfrmCapturar_lista_precios = class(TfrmCapturarMDI)
    Label6: TLabel;
    edMaterial: TEdit;
    deFecha: TEdit;
    Label9: TLabel;
    cePrecio_Minimo: TEdit;
    Label14: TLabel;
    cePrecio_Maximo: TEdit;
    Label3: TLabel;
    Label22: TLabel;
    edDescripcion: TEdit;
    TCapturarID: TIntegerField;
    TCapturarNOMBRE_LISTA_PRECIO: TIntegerField;
    TCapturarMATERIAL: TIntegerField;
    TCapturarFECHA: TDateTimeField;
    TCapturarPRECIO_MINIMO: TFloatField;
    TCapturarPRECIO_MAXIMO: TFloatField;
    TCapturarUSUARIO: TIntegerField;
    TCapturarINCLUIR: TIBStringField;
    qyIBXMateriales: TIBQuery;
    qyIBXMaterialesID: TIntegerField;
    qyIBXMaterialesCLAVE: TIBStringField;
    qyIBXMaterialesDESCRIPCION: TIBStringField;
    qyIBXMaterialesUNIDAD_BASE: TIntegerField;
    qyIBXMaterialesLINEA: TIntegerField;
    qyIBXMaterialesUNIDADES_COMPRADAS: TFloatField;
    qyIBXMaterialesUNIDADES_VENDIDAS: TFloatField;
    qyIBXMaterialesUNIDADES_PRODUCIDAS: TFloatField;
    qyIBXMaterialesLARGO: TFloatField;
    qyIBXMaterialesANCHO: TFloatField;
    qyIBXMaterialesALTO: TFloatField;
    qyIBXMaterialesUNIDAD_LAA: TIntegerField;
    qyIBXMaterialesLOTE: TIBStringField;
    qyIBXMaterialesNUM_SERIE: TIBStringField;
    qyIBXMaterialesCONSOLIDADO: TIBStringField;
    qyIBXMaterialesCOSTO_PROMEDIO: TIBStringField;
    qyIBXMaterialesCOSTO_PEPS: TIBStringField;
    qyIBXMaterialesCOSTO_UEPS: TIBStringField;
    qyIBXMaterialesFECHA_CERO_EXIST: TDateTimeField;
    qyIBXMaterialesFECHA_ULTIMA_COMPRA: TDateTimeField;
    qyIBXMaterialesCODIGO_BARRAS: TIBStringField;
    qyIBXMaterialesIVA_PORC: TFloatField;
    qyIBXMaterialesIEPS_PORC: TFloatField;
    qyIBXMaterialesIMPUESTO_1_PORC: TFloatField;
    qyIBXMaterialesIMPUESTO_2_PORC: TFloatField;
    qyIBXMaterialesOBSERVACIONES: TBlobField;
    qyIBXMaterialesFOTO: TBlobField;
    qyIBXMaterialesDIAS_DE_VIGENCIA: TIntegerField;
    qyIBXMaterialesCOSTO_ULT_COMPRA: TFloatField;
    qyIBXMaterialesNUM_ETIQUETAS: TIntegerField;
    qyIBXMaterialesACTIVO_FIJO: TIBStringField;
    qyIBXMaterialesCALIDAD: TIntegerField;
    dsMateriales: TDataSource;
    cbEstatus: TDBComboBox;
    TCapturarESTATUS: TIBStringField;
    Label1: TLabel;
    qyRepetido: TIBQuery;
    qyRepetidoR_CUANTOS: TIntegerField;
    TCapturarFECHA_U_ACT_1: TDateTimeField;
    TCapturarFECHA_U_ACT_2: TDateTimeField;
    TCapturarENVIAR: TIBStringField;
    TCapturarCOMM_ID_EXTERNO: TIBStringField;
    TCapturarPRECIO_MINIMO_ANT: TFloatField;
    TCapturarPRECIO_MAXIMO_ANT: TFloatField;
    TCapturarMODIFICO: TIntegerField;
    procedure ibNuevoClick(Sender: TObject);
    procedure deFechaEnter(Sender: TObject);
    procedure ibModificarClick(Sender: TObject);
    procedure ibGuardarClick(Sender: TObject);
    procedure edMaterialKeyPress(Sender: TObject; var Key: Char);
    procedure edMaterialButtonClick(Sender: TObject; AbsoluteIndex: Integer);
    procedure cePrecio_MaximoEnter(Sender: TObject);
    procedure buInicioClick(Sender: TObject);
    procedure buAnteriorClick(Sender: TObject);
    procedure buSiguienteClick(Sender: TObject);
    procedure buFinClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ibEliminarClick(Sender: TObject);
  private
    { Private declarations }
    gNLP : integer;
    procedure load;
    procedure setNLP(valor : integer);
    function getNLP : integer;
  public
    { Public declarations }
  published
     property NLP : integer read getNLP write setNLP;//Nombre Lista Precios.
  end;

var
  frmCapturar_lista_precios: TfrmCapturar_lista_precios;

implementation

uses explorar_lista_precios, IBModulo, IBData, UfrmSeleccionarMaterial,
  reglas_de_negocios;{UfrmAltaRapidaMateriales,
  seleccionar_material, }

{$R *.DFM}

function TfrmCapturar_lista_precios.getNLP : integer;
begin
   result := gNLP;
end;

procedure TfrmCapturar_lista_precios.setNLP(valor : integer);
begin
   gNLP := valor;
end;

procedure TfrmCapturar_lista_precios.load;
begin
  edMaterial.Text    := frmExplorar_lista_precios.dsFuente.DataSet.FieldByName('R_MATERIAL_CLAVE').AsString;
  edDescripcion.Text := frmExplorar_lista_precios.dsFuente.DataSet.FieldByName('R_MATERIAL_DESCRIPCION').AsString;
end;

procedure TfrmCapturar_lista_precios.ibNuevoClick(Sender: TObject);
begin
  edMaterial.Clear;
  edDescripcion.Clear;
  dmIBData.spFECHA_SERVIDOR.ExecProc;
  inherited;
  dsFuente.DataSet.FieldByName('FECHA').AsDateTime              := StrToDate(FormatDateTime('dd/mm/yyy',dmIBData.spFECHA_SERVIDOR.ParamByName('R_FECHA').AsDateTime));
  dsFuente.DataSet.FieldByName('FECHA_U_ACT_1').AsDateTime      := dmIBData.spFECHA_SERVIDOR.ParamByName('R_FECHA').AsDateTime;
  dsFuente.DataSet.FieldByName('FECHA_U_ACT_2').AsDateTime      := dmIBData.spFECHA_SERVIDOR.ParamByName('R_FECHA').AsDateTime;
  dsFuente.DataSet.FieldByName('PRECIO_MINIMO').AsFloat         := 0.00;
  dsFuente.DataSet.FieldByName('PRECIO_MAXIMO').AsFloat         := 0.00;
  dsFuente.DataSet.FieldByName('PRECIO_MINIMO_ANT').AsFloat     := 0.00;
  dsFuente.DataSet.FieldByName('PRECIO_MAXIMO_ANT').AsFloat     := 0.00;
  dsFuente.DataSet.FieldByName('INCLUIR').AsString              := 'No';
  dsFuente.DataSet.FieldByName('ENVIAR').AsString               := 'Si';
  dsFuente.DataSet.FieldByName('COMM_ID_EXTERNO').AsString      := '0';
  dsFuente.DataSet.FieldByName('MODIFICO').AsInteger            := reglas.dame_usuario;
  dsFuente.DataSet.FieldByName('NOMBRE_LISTA_PRECIO').AsInteger := NLP;
  dsFuente.DataSet.FieldByName('ESTATUS').AsString              := 'Activo';
  edMaterial.SetFocus;
end;

procedure TfrmCapturar_lista_precios.deFechaEnter(Sender: TObject);
begin
  inherited;
  deFecha.Text := (FormatDateTime('dd/mm/yyyy',dsFuente.DataSet.FieldByName('FECHA').AsDateTime));
end;

procedure TfrmCapturar_lista_precios.ibModificarClick(Sender: TObject);
begin
  inherited;
  dmIBData.spFECHA_SERVIDOR.ExecProc;
  dsFuente.DataSet.FieldByName('FECHA_U_ACT_1').AsDateTime  := dsFuente.DataSet.FieldByName('FECHA_U_ACT_2').AsDateTime;
  dsFuente.DataSet.FieldByName('FECHA_U_ACT_2').AsDateTime  := dmIBData.spFECHA_SERVIDOR.ParamByName('R_FECHA').AsDateTime;
  dsFuente.DataSet.FieldByName('ENVIAR').AsString           := 'Si';
  dsFuente.DataSet.FieldByName('PRECIO_MINIMO_ANT').AsFloat := dsFuente.DataSet.FieldByName('PRECIO_MINIMO').AsFloat;
  dsFuente.DataSet.FieldByName('PRECIO_MAXIMO_ANT').AsFloat := dsFuente.DataSet.FieldByName('PRECIO_MAXIMO').AsFloat;
  dsFuente.DataSet.FieldByName('MODIFICO').AsInteger        := reglas.dame_usuario;
  
  cePrecio_Minimo.SetFocus;
end;

procedure TfrmCapturar_lista_precios.ibGuardarClick(Sender: TObject);
var
   fraccion : Real;
   entero   : Real;
   aceptar  : Boolean;
begin
   aceptar := true;

   if TCapturar.State = dsInsert then
   begin
      qyRepetido.Close;
      qyRepetido.ParamByName('P_GRUPO').AsInteger    := NLP;
      qyRepetido.ParamByName('P_MATERIAL').AsInteger := edMaterial.Tag;
      qyRepetido.Open;

      if qyRepetido.FieldByName('R_CUANTOS').AsInteger > 0 then
      begin
         aceptar := false;
         ShowMessage('Ya se encuentra el material.');
      end;
   end;

   if aceptar then
   begin
      if deFecha.Focused then
         cePrecio_Minimo.SetFocus;
      entero   := Int(StrToDateTime(deFecha.text));
      fraccion := Frac(StrToDateTime(deFecha.text));
      if entero > 0 then
      begin
         if fraccion = 0 then
         begin
            dsFuente.DataSet.FieldByName('FECHA').AsDateTime := StrToDateTime ( deFecha.text) + time;
         end;
      end;
      inherited;
   end;
end;

procedure TfrmCapturar_lista_precios.edMaterialKeyPress(Sender: TObject;
  var Key: Char);
{var
   AltaRapidaMaterial : TfrmAltaRapidaMateriales;
   tmpMaterial : integer;
   tmpClave : string;
   tmpDescripcion : string;}
begin
  inherited;
  if (key = #13) then
  begin
    // edMaterial.OnButtonClick(nil, 0);
  end;
{  if (key = #13) and (edClave.Text <> '') then
  begin
     qyIBXMateriales.Close;
     qyIBXMateriales.ParamByName('P_CLAVE').AsString   := edClave.Text;
     qyIBXMateriales.Open;
     if not(qyIBXMateriales.IsEmpty) then
     begin
        edDescripcion.Text := qyIBXMateriales.FieldByName('DESCRIPCION').AsString;
        dsFuente.DataSet.FieldByName('MATERIAL').AsInteger := qyIBXMateriales.FieldByName('ID').AsInteger;
     end
     else
        begin
           if MessageDlg('El material no existe.  ¿Desea agregarlo?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
           begin
              AltaRapidaMaterial := TfrmAltaRapidaMateriales.Create(Application);
              AltaRapidaMaterial.edClave.Text := edClave.Text;
              AltaRapidaMaterial.ShowModal;
              tmpMaterial    := AltaRapidaMaterial.dameMaterial;
              tmpClave       := AltaRapidaMaterial.edClave.Text;
              tmpDescripcion := AltaRapidaMaterial.edDescripcion.Text;
              AltaRapidaMaterial.Free;
              if tmpMaterial <> 0 then
              begin
                 dsFuente.DataSet.FieldByName('MATERIAL').AsInteger := tmpMaterial;
                 edClave.Text       := tmpClave;
                 edDescripcion.Text := tmpDescripcion;
              end;
           end;
        end;
  end
  else
     if (key = #13) and (edClave.Text = '') then
     begin
        edClave.OnButtonClick(nil,0);
     end;}
end;

procedure TfrmCapturar_lista_precios.edMaterialButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  frmSeleccionarMaterial             := TfrmSeleccionarMaterial.Create(Application);
  frmSeleccionarMaterial.DATABASE    := dmIBModulo.ibSistema;
  frmSeleccionarMaterial.TRANSACTION := dmIBModulo.ibSistemaTransaccion;
  frmSeleccionarMaterial.CLAVE       := edMaterial.Text;
  if frmSeleccionarMaterial.abrirConsulta then
  begin
     frmSeleccionarMaterial.ShowModal;
     if frmSeleccionarMaterial.ACEPTAR then
     begin
        edMaterial.Tag     := frmSeleccionarMaterial.ID;
        edMaterial.Text    := frmSeleccionarMaterial.CLAVE;
        edDescripcion.Text := frmSeleccionarMaterial.DESCRIPCION;
        //edMaterial.SetSelection(Length(edMaterial.Text),Length(edMaterial.Text),false);
        dsFuente.DataSet.FieldByName('MATERIAL').AsInteger := frmSeleccionarMaterial.ID;
     end;
  end
  else
     if frmSeleccionarMaterial.ID <> 0 then
     begin
        edMaterial.Tag     := frmSeleccionarMaterial.ID;
        edMaterial.Text    := frmSeleccionarMaterial.CLAVE;
        edDescripcion.Text := frmSeleccionarMaterial.DESCRIPCION;
        //edMaterial.SetSelection(Length(edMaterial.Text),Length(edMaterial.Text),false);
        dsFuente.DataSet.FieldByName('MATERIAL').AsInteger := frmSeleccionarMaterial.ID;
     end;
  frmSeleccionarMaterial.Free;
  frmSeleccionarMaterial := nil;

{  pnt := paLienzo.ClientToScreen(Point(0,0));
  frmSeleccionar_material := TfrmSeleccionar_material.Create(Application);
  frmSeleccionar_material.dsDestino.DataSet := TCapturar;
  frmSeleccionar_material.coordenadas(pnt.y, pnt.x, paLienzo.width, paLienzo.Height);
  frmSeleccionar_material.ShowModal;
  tmpClave       := frmSeleccionar_material.dameClave;
  tmpDescripcion := frmSeleccionar_material.dameDescripcion;
  frmSeleccionar_material.Destroy;
  if dsFuente.DataSet.FieldByName('MATERIAL').AsString <> '' then
  begin
     edClave.Text       := tmpClave;
     edDescripcion.Text := tmpDescripcion;
  end;}
end;

procedure TfrmCapturar_lista_precios.cePrecio_MaximoEnter(Sender: TObject);
begin
  inherited;
  if dsFuente.DataSet.State = dsInsert then
     dsFuente.DataSet.FieldByName('PRECIO_MAXIMO').AsFloat := dsFuente.DataSet.FieldByName('PRECIO_MINIMO').AsFloat;
end;

procedure TfrmCapturar_lista_precios.buInicioClick(Sender: TObject);
begin
  inherited;
  load;
end;

procedure TfrmCapturar_lista_precios.buAnteriorClick(Sender: TObject);
begin
  inherited;
  load;
end;

procedure TfrmCapturar_lista_precios.buSiguienteClick(Sender: TObject);
begin
  inherited;
  load;
end;

procedure TfrmCapturar_lista_precios.buFinClick(Sender: TObject);
begin
  inherited;
  load;
end;

procedure TfrmCapturar_lista_precios.FormActivate(Sender: TObject);
begin
  inherited;
  load;
end;

procedure TfrmCapturar_lista_precios.FormCreate(Sender: TObject);
begin
  inherited;
  setLogica('AND');
end;

procedure TfrmCapturar_lista_precios.ibEliminarClick(Sender: TObject);
begin
  inherited;
  load;
end;

end.
