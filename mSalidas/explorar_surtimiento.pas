unit explorar_surtimiento;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  explorarMDI, Menus,   Db, IBCustomDataSet, IBQuery,
  ComCtrls, Grids, DBGrids, Buttons, IBStoredProc, ExtCtrls, StdCtrls, Mask, DBCtrls;

type
  TfrmExplorar_surtimiento = class(TfrmExplorarMDI)
    Splitter1: TSplitter;
    qyPartidas: TIBQuery;
    qyPartidasR_ROWS: TIntegerField;
    qyPartidasR_ID: TIntegerField;
    qyPartidasR_PEDIDO: TIntegerField;
    qyPartidasR_MATERIAL: TIntegerField;
    qyPartidasR_CLAVE: TIBStringField;
    qyPartidasR_DESCRIPCION: TIBStringField;
    qyPartidasR_UNIDAD: TIntegerField;
    qyPartidasR_DESCRIPCION_UNIDAD: TIBStringField;
    qyPartidasR_CANTIDAD: TFloatField;
    qyPartidasR_CANTIDAD_ENTREGADA: TFloatField;
    qyPartidasR_PRECIO: TFloatField;
    qyPartidasR_SUBTOTAL: TFloatField;
    qyPartidasR_IVA: TFloatField;
    qyPartidasR_IEPS: TFloatField;
    qyPartidasR_IMPUESTO1: TFloatField;
    qyPartidasR_IMPUESTO2: TFloatField;
    qyPartidasR_TOTAL: TFloatField;
    qyPartidasR_DESCUENTO_PORC: TFloatField;
    qyPartidasR_DP: TFloatField;
    qyPartidasR_DG: TFloatField;
    qyPartidasR_GT: TFloatField;
    qyPartidasR_ESTATUS: TIBStringField;
    qyPartidasR_COTIZACION: TIntegerField;
    qyPartidasR_CLAVE_COTIZACION: TIBStringField;
    qyPartidasR_PRECIO_SIN_IMPUESTOS: TFloatField;
    qyPartidasR_CAJAS: TIntegerField;
    qyPartidasR_IVA_PORC: TFloatField;
    qyPartidasR_IEPS_PORC: TFloatField;
    qyPartidasR_IMPUESTO1_PORC: TFloatField;
    qyPartidasR_IMPUESTO2_PORC: TFloatField;
    qyPartidasR_MATERIAL_CBARRAS: TIBStringField;
    qyPartidasR_MATERIAL_OBSERVACIONES: TBlobField;
    qyPartidasR_MATERIAL_FOTO: TBlobField;
    qyPartidasR_PZAS_X_CAJA: TIntegerField;
    qyPartidasR_COMENTARIO: TIBStringField;
    qyPartidasR_MEDIDA: TIntegerField;
    qyPartidasR_MEDIDA_DESCRIPCION: TIBStringField;
    qyPartidasR_COLOR: TIntegerField;
    qyPartidasR_COLOR_NOMBRE: TIBStringField;
    qyPartidasR_CLIENTE_MAT_C: TIBStringField;
    qyPartidasR_CLIENTE_MAT_D: TIBStringField;
    qyPartidasR_F_PROM_ENT: TDateTimeField;
    qyPartidasR_PNC: TFloatField;
    qyPartidasR_CANTIDAD_PENDIENTE: TFloatField;
    qyPartidasR_SERIE: TIBStringField;
    qyPartidasR_NUM_SERIE: TIBStringField;
    qyPartidasR_COSTO_ULT_COMPRA: TFloatField;
    qyPartidasR_DG_PORC: TFloatField;
    dsPartidas: TDataSource;
    dgPartidas: TDBGrid;
    qyExplorarR_ID: TIntegerField;
    qyExplorarR_CLAVE: TIBStringField;
    qyExplorarR_FECHA_ALTA: TDateTimeField;
    qyExplorarR_C_CLAVE: TIBStringField;
    qyExplorarR_CLIENTE: TIBStringField;
    qyExplorarR_RAZON_SOCIAL: TIBStringField;
    qyExplorarR_CODIGO_PAIS: TIBStringField;
    qyExplorarR_CODIGO_ESTADO: TIBStringField;
    qyExplorarR_TELEFONO: TIBStringField;
    qyExplorarR_E_CLAVE: TIBStringField;
    qyExplorarR_EXTENSION: TIBStringField;
    qyExplorarR_FECHA_VALIDEZ: TDateTimeField;
    qyExplorarR_GRANTOTAL: TFloatField;
    qyExplorarR_PRIORIDAD: TIBStringField;
    qyExplorarR_CONSECUTIVO: TIntegerField;
    qyExplorarR_CIUDAD: TIBStringField;
    qyExplorarR_ESTADO: TIBStringField;
    qyExplorarR_PAIS: TIBStringField;
    qyExplorarR_ESTATUS: TIBStringField;
    qyExplorarR_V_CLAVE: TIBStringField;
    qyExplorarR_VENDEDOR: TIBStringField;
    qyExplorarR_ALMACEN: TIBStringField;
    qyExplorarR_CC_CLAVE: TIBStringField;
    qyExplorarR_CC_NOMBRE: TIBStringField;
    qyExplorarR_SEGURO_SUBTOTAL: TFloatField;
    qyExplorarR_SEGURO_IVA: TFloatField;
    qyExplorarseguro: TFloatField;
    qyExplorarsupertotal: TFloatField;
    spP_PEDIDOS_PREVALIDACION: TIBStoredProc;
    spP_PEDIDOS_VALIDACION: TIBStoredProc;
    spP_PEDIDOS_LIBERADO: TIBStoredProc;
    spM_PEDIDO_CANTIDAD: TIBStoredProc;
    spP_PEDIDO_CANCELAR: TIBStoredProc;
    spM_PEDIDO_PRECIO: TIBStoredProc;
    paInsuficiencias: TPanel;
    buInsuficiencias: TBitBtn;
    procedure qyExplorarBeforeOpen(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure dsFuenteDataChange(Sender: TObject; Field: TField);
    procedure dgExplorarACEPTARButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dgPartidasCANTIDADButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dgExplorarCANCELARButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dgPartidasPRECIOButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure buInsuficienciasClick(Sender: TObject);
  private
    { Private declarations }
    awrUsuarioDe : string;
    procedure leerConfiguracion;
    procedure guardarConfiguracion;
  protected
     procedure Parametros; override;
  public
    { Public declarations }
  end;

var
  frmExplorar_surtimiento: TfrmExplorar_surtimiento;

implementation

uses
  USqlAnaliza, iniFiles, reglas_de_negocios, IBData, UfrmSurtimientoUsuarioDe,
  IBModulo, UfrmInsuficienciasPedido;

{$R *.DFM}

procedure TfrmExplorar_surtimiento.Parametros;
var
   status1 : string;
   status2 : string;
begin
   if dmIBData.TFiltroUsuarios.FieldByName('ALMACEN').AsInteger <> 0 then
   begin
      status1 := 'PreValidacion';
      status2 := 'PreValidacion';
   end
   else
   if awrUsuarioDe = 'VENTAS' then
   begin
      status1 := 'Sin Afectar';
      status2 := 'Autorizar';
   end
   else
   if awrUsuarioDe = 'CXC' then
   begin
      status1 := 'Validacion';
      status2 := 'Validacion';
   end;


   sqlExp.setParam(sqlExp.dameParam('P_ESTATUS1'), status1, psCadena);
   sqlExp.setParam(sqlExp.dameParam('P_ESTATUS2'), status2,    psCadena);
end;

procedure TfrmExplorar_surtimiento.qyExplorarBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  reglas.refresh_IBQuery(qyPartidas);
end;

procedure TfrmExplorar_surtimiento.leerConfiguracion;
var
   iniFile       : TIniFile;
begin
   iniFile      := TIniFile.Create(ChangeFileExt(Application.ExeName,'.INI'));
   awrUsuarioDe := iniFile.ReadString('SURTIMIENTO','UsuarioDe','');
   iniFile.Free;
end;

procedure TfrmExplorar_surtimiento.guardarConfiguracion;
var
   iniFile       : TIniFile;
begin
   iniFile := TIniFile.Create(ChangeFileExt(Application.ExeName,'.INI'));
   iniFile.WriteString('SURTIMIENTO','UsuarioDe',awrUsuarioDe);
   iniFile.Free;
end;

procedure TfrmExplorar_surtimiento.FormCreate(Sender: TObject);
begin
   awrUsuarioDe := '';
   reglas.abrir_IBTabla(dmIBData.TFiltroUsuarios);
   dmIBData.TFiltroUsuarios.Filter := 'ID = ' +IntToStr(reglas.dame_usuario);
   //dgPartidasPRECIO.Visible := dmIBData.TFiltroUsuarios.FieldByName('ALMACEN').AsInteger = 0;

   //Saber si es Ventas o CXC
   if dmIBData.TFiltroUsuarios.FieldByName('ALMACEN').AsInteger = 0 then
   begin
      leerConfiguracion;
      if awrUsuarioDe = '' then
      begin
         frmSurtimientoUsuarioDe := TfrmSurtimientoUsuarioDe.Create(self);
         try
            frmSurtimientoUsuarioDe.ShowModal;
            awrUsuarioDe := frmSurtimientoUsuarioDe.USUARIODE;
         finally
            frmSurtimientoUsuarioDe.Free;
         end;

         if awrUsuarioDe = '' then
         begin
            ShowMessage('Falta seleccionar el tipo de Usuario que operara la pantalla.');
            Close;
         end
         else
         begin
            guardarConfiguracion;
         end;
      end;
   end;
   inherited;
   EXP_NVO     := true;
   CAMPO_FECHA := 'R_FECHA_ALTA';

   {
   if dmIBData.TFiltroUsuarios.FieldByName('ALMACEN').AsInteger = 0 then
   begin
      dgExplorarCANCELAR.Visible := true;
      if awrUsuarioDe = 'VENTAS' then
      begin
         dgPartidasCANTIDAD.Buttons[0].Visible         := false;
         dgPartidasPRECIO.Buttons[0].Visible           := true;
      end
      else
      if awrUsuarioDe = 'CXC' then
      begin
         dgPartidasCANTIDAD.Buttons[0].Visible := false;
         dgPartidasPRECIO.Buttons[0].Visible   := false;
      end;
   end
   else
   begin
      dgExplorarCANCELAR.Visible := false;
   end;
   }
end;

procedure TfrmExplorar_surtimiento.dsFuenteDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  //dgPartidas.FullExpand;
end;

procedure TfrmExplorar_surtimiento.dgExplorarACEPTARButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
var
   deEstatus : string;
   aEstatus  : string;
begin
  inherited;
  deEstatus := dsFuente.DataSet.FieldByName('R_ESTATUS').AsString;

  if (deEstatus = 'Sin Afectar') or (deEstatus = 'Autorizar') then
  begin
     aEstatus := 'PreValidacion';
  end
  else
  if (deEstatus = 'PreValidacion') then
  begin
     aEstatus := 'Validacion';
  end
  else
  if (deEstatus = 'Validacion') then
  begin
     aEstatus := 'Liberado';
  end;

  if MessageDlg('Cambiar de: '+ deEstatus + ' a ' + aEstatus, mtConfirmation, [mbYes, mbNo], 0) = mrYes  then
  begin
     if (deEstatus = 'Sin Afectar') or (deEstatus = 'Autorizar') then
     begin
        spP_PEDIDOS_PREVALIDACION.ParamByName('P_ID').AsInteger := dsFuente.DataSet.FieldByName('R_ID').AsInteger;
        spP_PEDIDOS_PREVALIDACION.ExecProc;
        spP_PEDIDOS_PREVALIDACION.Transaction.CommitRetaining;
        reglas.refresh_IBQuery(qyExplorar);
     end
     else
     if (deEstatus = 'PreValidacion') then
     begin
        spP_PEDIDOS_VALIDACION.ParamByName('P_ID').AsInteger := dsFuente.DataSet.FieldByName('R_ID').AsInteger;
        spP_PEDIDOS_VALIDACION.ExecProc;
        spP_PEDIDOS_VALIDACION.Transaction.CommitRetaining;
        reglas.refresh_IBQuery(qyExplorar);
     end
     else
     if (deEstatus = 'Validacion') then
     begin
        spP_PEDIDOS_LIBERADO.ParamByName('P_ID').AsInteger := dsFuente.DataSet.FieldByName('R_ID').AsInteger;
        spP_PEDIDOS_LIBERADO.ExecProc;
        spP_PEDIDOS_LIBERADO.Transaction.CommitRetaining;
        reglas.refresh_IBQuery(qyExplorar);
     end;
     dgExplorar.Datasource.DataSet.First;
    // dgPartidas.FullExpand;
  end;
end;

procedure TfrmExplorar_surtimiento.dgPartidasCANTIDADButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
var
   idE : integer;
   idD : integer;
begin
  inherited;
  {
  idCantidad.Entrada := dsPartidas.DataSet.FieldByName('R_CANTIDAD').AsString;
  idCantidad.Execute;
  if MessageDlg('', mtConfirmation, [mbYes, mbNo], 0) = mrYes  then
  begin
     idE := dsFuente.DataSet.FieldByName('R_ID').AsInteger;
     idD := dsPartidas.DataSet.FieldByName('R_ID').AsInteger;
     spM_PEDIDO_CANTIDAD.ParamByName('P_ID').AsInteger      := idD;
     spM_PEDIDO_CANTIDAD.ParamByName('P_CANTIDAD').AsString := idCantidad.Entrada;
     spM_PEDIDO_CANTIDAD.ExecProc;
     spM_PEDIDO_CANTIDAD.Transaction.CommitRetaining;
     reglas.abrir_IBQuery_seek('R_ID', idE, qyExplorar);
     reglas.abrir_IBQuery_seek('R_ID', idD, qyPartidas);
     dgPartidas.FullExpand;
  end;
  }
end;

procedure TfrmExplorar_surtimiento.dgExplorarCANCELARButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
begin
  inherited;
  if MessageDlg('¿Cancelar Pedido?', mtConfirmation, [mbYes, mbNo], 0) = mrYes  then
  begin
     spP_PEDIDO_CANCELAR.ParamByName('P_ID').AsInteger := dsFuente.DataSet.FieldByName('R_ID').AsInteger;
     spP_PEDIDO_CANCELAR.ExecProc;
     spP_PEDIDO_CANCELAR.Transaction.CommitRetaining;
     reglas.refresh_IBQuery(qyExplorar);
     dgExplorar.Datasource.Dataset.First;
     //dgPartidas.FullExpand;
  end;
end;

procedure TfrmExplorar_surtimiento.dgPartidasPRECIOButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
var
   idE : integer;
   idD : integer;
begin
  inherited;
  {
  idPrecio.Entrada := dsPartidas.DataSet.FieldByName('R_PRECIO').AsString;
  idPrecio.Execute;
  if MessageDlg('', mtConfirmation, [mbYes, mbNo], 0) = mrYes  then
  begin
     idE := dsFuente.DataSet.FieldByName('R_ID').AsInteger;
     idD := dsPartidas.DataSet.FieldByName('R_ID').AsInteger;

     spM_PEDIDO_PRECIO.ParamByName('P_ID').AsInteger    := idD;
     spM_PEDIDO_PRECIO.ParamByName('P_PRECIO').AsString := idPrecio.Entrada;
     spM_PEDIDO_PRECIO.ExecProc;
     spM_PEDIDO_PRECIO.Transaction.CommitRetaining;
     reglas.abrir_IBQuery_seek('R_ID', idE, qyExplorar);
     reglas.abrir_IBQuery_seek('R_ID', idD, qyPartidas);
     dgPartidas.FullExpand;
  end;
  }
end;

procedure TfrmExplorar_surtimiento.buInsuficienciasClick(Sender: TObject);
begin
  inherited;
  try
     frmInsuficienciasPedido    := TfrmInsuficienciasPedido.Create(Application);
     frmInsuficienciasPedido.ID := dsFuente.DataSet.FieldByName('R_ID').AsInteger;
     frmInsuficienciasPedido.ShowModal;
  finally
     frmInsuficienciasPedido.Release;
  end;
end;

end.
