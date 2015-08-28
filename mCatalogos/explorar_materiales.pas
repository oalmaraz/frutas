unit explorar_materiales;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  explorarMDI, Db,      Menus,
    IBCustomDataSet, IBQuery,
     StdCtrls, Mask, DBCtrls,
      jpeg, ExtCtrls,
    Buttons, IBStoredProc, ComCtrls, Grids, DBGrids;

type
  TfrmExplorar_materiales = class(TfrmExplorarMDI)
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
    qyExplorarR_ID: TIntegerField;
    qyExplorarR_CLAVE: TIBStringField;
    qyExplorarR_DESCRIPCION: TIBStringField;
    qyExplorarR_CANTIDAD_MINIMA: TFloatField;
    qyExplorarR_CANTIDAD_MAXIMA: TFloatField;
    qyExplorarR_PREORDEN: TFloatField;
    qyExplorarR_X_CAJA: TIntegerField;
    qyExplorarR_ST: TIBStringField;
    qyExplorarR_COSTO: TFloatField;
    qyExplorarR_CB: TIBStringField;
    qyExplorarR_CANTIDAD1: TFloatField;
    qyExplorarR_CANTIDAD2: TFloatField;
    dgExistencias: TDBGrid;
    dsExistencias: TDataSource;
    qyExistenciasR_TOTAL: TFloatField;
    qyExistenciasR_PRECIO_MINIMO: TFloatField;
    qyExistenciasR_PRECIO_MAXIMO: TFloatField;
    qyExplorarR_ESPRODUCTO: TIBStringField;
    qyExplorarR_SUJETO_A_MED: TIBStringField;
    qyExplorarR_AFECTA_INVENTARIO: TIBStringField;
    paPOS: TPanel;
    paCategorias: TPanel;
    Splitter1: TSplitter;
    paModificadores: TPanel;
    Panel4: TPanel;
    Splitter2: TSplitter;
    paArticulos: TPanel;
    Panel5: TPanel;
    buSeleccionarArticulo: TBitBtn;
    buSeleccionarModificador: TBitBtn;
    Splitter3: TSplitter;
    laArticulos: TLabel;
    laModificadores: TLabel;
    dgCategorias: TDBGrid;
    qyCategorias: TIBQuery;
    dsCategorias: TDataSource;
    spA_POS_CATEGORIA: TIBStoredProc;
    spE_POS_CATEGORIA: TIBStoredProc;
    spSUBIR_POS_CATEGORIA: TIBStoredProc;
    spBAJAR_POS_CATEGORIA: TIBStoredProc;
    buQuitarArticulo: TBitBtn;
    spA_POS_ARTICULO: TIBStoredProc;
    spE_POS_ARTICULO: TIBStoredProc;
    Panel3: TPanel;
    buSubirArticulo: TBitBtn;
    buBajarArticulo: TBitBtn;
    buRefreshArticulos: TBitBtn;
    qyArticulos: TIBQuery;
    dsArticulos: TDataSource;
    dgArticulos: TDBGrid;
    spSUBIR_POS_ARTICULO: TIBStoredProc;
    spBAJAR_POS_ARTICULO: TIBStoredProc;
    qyExplorarR_POS_CORTA: TIBStringField;
    buQuitarModificador: TBitBtn;
    qyModificadores: TIBQuery;
    dsModificadores: TDataSource;
    Panel6: TPanel;
    buSubirModificador: TBitBtn;
    buBajarModificador: TBitBtn;
    buRefreshModificador: TBitBtn;
    spA_POS_MODIFICADOR: TIBStoredProc;
    spE_POS_MODIFICADOR: TIBStoredProc;
    spSUBIR_POS_MODIFICADOR: TIBStoredProc;
    spBAJAR_POS_MODIFICADOR: TIBStoredProc;
    dgModificadores: TDBGrid;
    qyExplorarR_ES_CATEGORIA: TIBStringField;
    qyExplorarR_ES_MODIFICADOR: TIBStringField;
    qyExplorarR_POS_NIVEL: TIntegerField;
    qyExplorarR_LARGO: TFloatField;
    qyExplorarR_ALTO: TFloatField;
    qyExplorarR_ANCHO: TFloatField;
    qyExplorarR_CALIBRE: TFloatField;
    dgCambiosA: TDBGrid;
    Label1: TLabel;
    cbCambiosA: TCheckBox;
    qyCambiosA: TIBQuery;
    dsCambiosA: TDataSource;
    spA_POS_CAMBIO_A: TIBStoredProc;
    spE_POS_CAMBIO: TIBStoredProc;
    spSUBIR_POS_CAMBIO_A: TIBStoredProc;
    spBAJAR_POS_CAMBIO_A: TIBStoredProc;
    spM_MODIFICADOR_AUTO: TIBStoredProc;
    dgCambiosM: TDBGrid;
    Label2: TLabel;
    cbCambiosM: TCheckBox;
    qyCambiosM: TIBQuery;
    dsCambiosM: TDataSource;
    spA_POS_CAMBIO_M: TIBStoredProc;
    spSUBIR_POS_CAMBIO_M: TIBStoredProc;
    spBAJAR_POS_CAMBIO_M: TIBStoredProc;
    qyExplorarR_LINEA_D: TIBStringField;
    procedure FormCreate(Sender: TObject);
    procedure buSeleccionarCategoriaClick(Sender: TObject);
    procedure buQuitarCategoriasClick(Sender: TObject);
    procedure buRefreshCategoriasClick(Sender: TObject);
    procedure buSubirCategoriaClick(Sender: TObject);
    procedure buBajarCategoriaClick(Sender: TObject);
    procedure buSeleccionarArticuloClick(Sender: TObject);
    procedure buQuitarArticuloClick(Sender: TObject);
    procedure buSubirArticuloClick(Sender: TObject);
    procedure buRefreshArticulosClick(Sender: TObject);
    procedure buBajarArticuloClick(Sender: TObject);
    procedure buSeleccionarModificadorClick(Sender: TObject);
    procedure buQuitarModificadorClick(Sender: TObject);
    procedure buRefreshModificadorClick(Sender: TObject);
    procedure buBajarModificadorClick(Sender: TObject);
    procedure buSubirModificadorClick(Sender: TObject);
    procedure cbCambiosAClick(Sender: TObject);
    procedure dgModificadoresColumn6ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure cbCambiosMClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmExplorar_materiales: TfrmExplorar_materiales;

implementation

uses
  IBModulo, reglas_de_negocios, IBData;

{$R *.DFM}

procedure TfrmExplorar_materiales.FormCreate(Sender: TObject);
var
   i : integer;
begin
  inherited;
  reglas.abrir_IBTabla(dmIBData.TPreferencias);

  EXP_NVO     := true;
  CAMPO_FECHA := '';
  FForma      := 'frmCapturar_materiales';

  qyExistencias.Close;
  qyExistencias.Open;

  qyEncabezadosAlmacenes.Close;
  qyEncabezadosAlmacenes.Open;
  {
  for i := 1 to qyEncabezadosAlmacenes.FieldByName('R_CUANTOS').AsInteger do
  begin
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
             dgExistenciasCANTIDAD3.Caption := qyEncabezadosAlmacenes.FieldByName('R_ALMACEN3_CLAVE').AsString;
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
  end;
  }
  dmIBData.TPreferencias.Filter := 'ID = 179';
  paPOS.Visible                       := UpperCase(dmIBData.TPreferencias.FieldByName('VALOR').AsString) = 'SI';

  if paPOS.Visible then
  begin
     reglas.refresh_IBQuery(qyCategorias);
     reglas.refresh_IBQuery(qyArticulos);
     reglas.refresh_IBQuery(qyModificadores);
     reglas.refresh_IBQuery(qyCambiosA);
     reglas.refresh_IBQuery(qyCambiosM);
  end;
end;

procedure TfrmExplorar_materiales.buSeleccionarCategoriaClick(
  Sender: TObject);
begin
  inherited;
  spA_POS_CATEGORIA.ParamByName('P_ID').AsInteger := dsFuente.DataSet.FieldByName('R_ID').AsInteger;
  spA_POS_CATEGORIA.ExecProc;
  spA_POS_CATEGORIA.Transaction.CommitRetaining;

  reglas.refresh_IBQuery(qyCategorias);
end;

procedure TfrmExplorar_materiales.buQuitarCategoriasClick(Sender: TObject);
begin
  inherited;
  spE_POS_CATEGORIA.ParamByName('P_ID').AsInteger := dsCategorias.DataSet.FieldByName('R_ID').AsInteger;
  spE_POS_CATEGORIA.ExecProc;
  spE_POS_CATEGORIA.Transaction.CommitRetaining;

  reglas.refresh_IBQuery(qyCategorias);
end;

procedure TfrmExplorar_materiales.buRefreshCategoriasClick(
  Sender: TObject);
var
   v_id : integer;
begin
  inherited;
  v_id := dsCategorias.DataSet.FieldByName('R_ID').AsInteger;
  reglas.refresh_IBQuery(qyCategorias);

  dsCategorias.DataSet.Locate('R_ID', v_id, [loPartialKey]);
end;

procedure TfrmExplorar_materiales.buSubirCategoriaClick(Sender: TObject);
begin
  inherited;
  spSUBIR_POS_CATEGORIA.ParamByName('P_ID').AsInteger := dsCategorias.DataSet.FieldByName('R_ID').AsInteger;
  spSUBIR_POS_CATEGORIA.ExecProc;
  spSUBIR_POS_CATEGORIA.Transaction.CommitRetaining;

  //buRefreshCategorias.Click;
end;

procedure TfrmExplorar_materiales.buBajarCategoriaClick(Sender: TObject);
begin
  inherited;
  spBAJAR_POS_CATEGORIA.ParamByName('P_ID').AsInteger := dsCategorias.DataSet.FieldByName('R_ID').AsInteger;
  spBAJAR_POS_CATEGORIA.ExecProc;
  spBAJAR_POS_CATEGORIA.Transaction.CommitRetaining;

  //buRefreshCategorias.Click;
end;

procedure TfrmExplorar_materiales.buSeleccionarArticuloClick(
  Sender: TObject);
begin
  inherited;
  if cbCambiosA.Checked then
  begin
     if not(dsArticulos.DataSet.IsEmpty) then
     begin
        spA_POS_CAMBIO_A.ParamByName('P_ARTICULO').AsInteger := dsArticulos.DataSet.FieldByName('R_ID').AsInteger;
        spA_POS_CAMBIO_A.ParamByName('P_CAMBIO').AsInteger   := dsFuente.DataSet.FieldByName('R_ID').AsInteger;
        spA_POS_CAMBIO_A.ExecProc;
        spA_POS_CAMBIO_A.Transaction.CommitRetaining;

        reglas.refresh_IBQuery(qyCambiosA);
     end;
  end
  else
  begin
     spA_POS_ARTICULO.ParamByName('P_CATEGORIA').AsInteger := dsCategorias.DataSet.FieldByName('R_ID').AsInteger;
     spA_POS_ARTICULO.ParamByName('P_ARTICULO').AsInteger  := dsFuente.DataSet.FieldByName('R_ID').AsInteger;
     spA_POS_ARTICULO.ExecProc;
     spA_POS_ARTICULO.Transaction.CommitRetaining;

     reglas.refresh_IBQuery(qyArticulos);
  end;
end;

procedure TfrmExplorar_materiales.buQuitarArticuloClick(Sender: TObject);
begin
  inherited;
  if cbCambiosA.Checked then
  begin
     if not(dsCambiosA.DataSet.IsEmpty) then
     begin
        spE_POS_CAMBIO.ParamByName('P_ID').AsInteger := dsCambiosA.DataSet.FieldByName('R_ID').AsInteger;
        spE_POS_CAMBIO.ExecProc;
        spE_POS_CAMBIO.Transaction.CommitRetaining;

        reglas.refresh_IBQuery(qyCambiosA);
     end;
  end
  else
  begin
     spE_POS_ARTICULO.ParamByName('P_ID').AsInteger := dsArticulos.DataSet.FieldByName('R_ID').AsInteger;
     spE_POS_ARTICULO.ExecProc;
     spE_POS_ARTICULO.Transaction.CommitRetaining;

     reglas.refresh_IBQuery(qyArticulos);
  end;
end;

procedure TfrmExplorar_materiales.buSubirArticuloClick(Sender: TObject);
begin
  inherited;
  if cbCambiosA.Checked then
  begin
     spSUBIR_POS_CAMBIO_A.ParamByName('P_ID').AsInteger := dsCambiosA.DataSet.FieldByName('R_ID').AsInteger;
     spSUBIR_POS_CAMBIO_A.ExecProc;
     spSUBIR_POS_CAMBIO_A.Transaction.CommitRetaining;
  end
  else
  begin
     spSUBIR_POS_ARTICULO.ParamByName('P_ID').AsInteger := dsArticulos.DataSet.FieldByName('R_ID').AsInteger;
     spSUBIR_POS_ARTICULO.ExecProc;
     spSUBIR_POS_ARTICULO.Transaction.CommitRetaining;
  end;
  buRefreshArticulos.Click;
end;

procedure TfrmExplorar_materiales.buRefreshArticulosClick(Sender: TObject);
var
   v_id : integer;
begin
  inherited;
  if cbCambiosA.Checked then
  begin
     v_id := dsCambiosA.DataSet.FieldByName('R_ID').AsInteger;
     reglas.refresh_IBQuery(qyCambiosA);

     dsCambiosA.DataSet.Locate('R_ID', v_id, [loPartialKey]);
  end
  else
  begin
     v_id := dsArticulos.DataSet.FieldByName('R_ID').AsInteger;
     reglas.refresh_IBQuery(qyArticulos);

     dsArticulos.DataSet.Locate('R_ID', v_id, [loPartialKey]);
  end;
end;

procedure TfrmExplorar_materiales.buBajarArticuloClick(Sender: TObject);
begin
  inherited;
  if cbCambiosA.Checked then
  begin
     spBAJAR_POS_CAMBIO_A.ParamByName('P_ID').AsInteger := dsCambiosA.DataSet.FieldByName('R_ID').AsInteger;
     spBAJAR_POS_CAMBIO_A.ExecProc;
     spBAJAR_POS_CAMBIO_A.Transaction.CommitRetaining;
  end
  else
  begin
     spBAJAR_POS_ARTICULO.ParamByName('P_ID').AsInteger := dsArticulos.DataSet.FieldByName('R_ID').AsInteger;
     spBAJAR_POS_ARTICULO.ExecProc;
     spBAJAR_POS_ARTICULO.Transaction.CommitRetaining;
  end;
  buRefreshArticulos.Click;
end;

procedure TfrmExplorar_materiales.buSeleccionarModificadorClick(
  Sender: TObject);
begin
  inherited;
  if cbCambiosM.Checked then
  begin
     if not(dsArticulos.DataSet.IsEmpty) then
     begin
        spA_POS_CAMBIO_M.ParamByName('P_MODIFICADOR').AsInteger := dsModificadores.DataSet.FieldByName('R_ID').AsInteger;
        spA_POS_CAMBIO_M.ParamByName('P_CAMBIO').AsInteger      := dsFuente.DataSet.FieldByName('R_ID').AsInteger;
        spA_POS_CAMBIO_M.ExecProc;
        spA_POS_CAMBIO_M.Transaction.CommitRetaining;

        reglas.refresh_IBQuery(qyCambiosM);
     end;
  end
  else
  begin
     spA_POS_MODIFICADOR.ParamByName('P_ING_DET').AsInteger      := dsArticulos.DataSet.FieldByName('R_ID').AsInteger;
     spA_POS_MODIFICADOR.ParamByName('P_MODIFICADOR').AsInteger  := dsFuente.DataSet.FieldByName('R_ID').AsInteger;
     spA_POS_MODIFICADOR.ExecProc;
     spA_POS_MODIFICADOR.Transaction.CommitRetaining;

     reglas.refresh_IBQuery(qyModificadores);
  end;
end;

procedure TfrmExplorar_materiales.buQuitarModificadorClick(
  Sender: TObject);
begin
  inherited;
  if cbCambiosM.Checked then
  begin
     if not(dsCambiosM.DataSet.IsEmpty) then
     begin
        spE_POS_CAMBIO.ParamByName('P_ID').AsInteger := dsCambiosM.DataSet.FieldByName('R_ID').AsInteger;
        spE_POS_CAMBIO.ExecProc;
        spE_POS_CAMBIO.Transaction.CommitRetaining;

        reglas.refresh_IBQuery(qyCambiosM);
     end;
  end
  else
  begin
     spE_POS_MODIFICADOR.ParamByName('P_ID').AsInteger := dsModificadores.DataSet.FieldByName('R_ID').AsInteger;
     spE_POS_MODIFICADOR.ExecProc;
     spE_POS_MODIFICADOR.Transaction.CommitRetaining;

     reglas.refresh_IBQuery(qyModificadores);
  end;
end;

procedure TfrmExplorar_materiales.buRefreshModificadorClick(
  Sender: TObject);
var
   v_id : integer;
begin
  inherited;
  if cbCambiosM.Checked then
  begin
     v_id := dsCambiosM.DataSet.FieldByName('R_ID').AsInteger;
     reglas.refresh_IBQuery(qyCambiosM);

     dsCambiosM.DataSet.Locate('R_ID', v_id, [loPartialKey]);
  end
  else
  begin
     v_id := dsModificadores.DataSet.FieldByName('R_ID').AsInteger;
     reglas.refresh_IBQuery(qyModificadores);

     dsModificadores.DataSet.Locate('R_ID', v_id, [loPartialKey]);
  end;
end;

procedure TfrmExplorar_materiales.buBajarModificadorClick(Sender: TObject);
begin
  inherited;
  if cbCambiosM.Checked then
  begin
     spBAJAR_POS_CAMBIO_M.ParamByName('P_ID').AsInteger := dsCambiosM.DataSet.FieldByName('R_ID').AsInteger;
     spBAJAR_POS_CAMBIO_M.ExecProc;
     spBAJAR_POS_CAMBIO_M.Transaction.CommitRetaining;
  end
  else
  begin
     spBAJAR_POS_MODIFICADOR.ParamByName('P_ID').AsInteger := dsModificadores.DataSet.FieldByName('R_ID').AsInteger;
     spBAJAR_POS_MODIFICADOR.ExecProc;
     spBAJAR_POS_MODIFICADOR.Transaction.CommitRetaining;
  end;
  buRefreshModificador.Click;
end;

procedure TfrmExplorar_materiales.buSubirModificadorClick(Sender: TObject);
begin
  inherited;
  if cbCambiosM.Checked then
  begin
     spSUBIR_POS_CAMBIO_M.ParamByName('P_ID').AsInteger := dsCambiosM.DataSet.FieldByName('R_ID').AsInteger;
     spSUBIR_POS_CAMBIO_M.ExecProc;
     spSUBIR_POS_CAMBIO_M.Transaction.CommitRetaining;
  end
  else
  begin
     spSUBIR_POS_MODIFICADOR.ParamByName('P_ID').AsInteger := dsModificadores.DataSet.FieldByName('R_ID').AsInteger;
     spSUBIR_POS_MODIFICADOR.ExecProc;
     spSUBIR_POS_MODIFICADOR.Transaction.CommitRetaining;
  end;
  buRefreshModificador.Click;
end;

procedure TfrmExplorar_materiales.cbCambiosAClick(Sender: TObject);
begin
  inherited;
  if cbCambiosA.Checked then
     laArticulos.Caption := 'Articulo-Cambios'
  else
     laArticulos.Caption := 'Articulos';
end;

procedure TfrmExplorar_materiales.dgModificadoresColumn6ButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
begin
  inherited;
  spM_MODIFICADOR_AUTO.ParamByName('P_ID').AsInteger := dsModificadores.DataSet.FieldByName('R_ID').AsInteger;
  spM_MODIFICADOR_AUTO.ExecProc;
  spM_MODIFICADOR_AUTO.Transaction.CommitRetaining;

  buRefreshModificador.Click;
end;

procedure TfrmExplorar_materiales.cbCambiosMClick(Sender: TObject);
begin
  inherited;
  if cbCambiosM.Checked then
     laModificadores.Caption := 'Modificadores-Cambios'
  else
     laModificadores.Caption := 'Modificadores';
end;

end.
