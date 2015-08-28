unit capturar_despachador;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  capturarMDIEstatus,
   Buttons, Grids, DBGrids, Db, ExtCtrls, IBStoredProc, IBTable,
  IBCustomDataSet, IBQuery, DBCtrls, StdCtrls, Mask;

type
  TfrmCapturar_Despachador = class(TfrmCapturarMDIEstatus)
    Label2: TLabel;
    deFechaAlta: TDBEdit;
    TCapturarID: TIntegerField;
    TCapturarFECHA_ALTA: TDateTimeField;
    TCapturarUSUARIO: TIntegerField;
    TCapturarESTATUS: TIBStringField;
    dgPedidos: TDBGrid;
    qyPedidos: TIBQuery;
    dsPedidos: TDataSource;
    dgFacturas: TDBGrid;
    qyFacturas: TIBQuery;
    dsFacturas: TDataSource;
    Splitter1: TSplitter;
    spACT_CLIENTE_PEDIDO: TIBStoredProc;
    spACT_CLIENTE_FACTURA: TIBStoredProc;
    qyPedidosR_ID: TIntegerField;
    qyPedidosR_CLIENTE: TIBStringField;
    qyPedidosR_C_NOMBRE: TIBStringField;
    qyPedidosR_C_RSOCIAL: TIBStringField;
    qyPedidosR_EXTENSION: TIBStringField;
    qyPedidosR_E_NOMBRE: TIBStringField;
    qyPedidosR_P_ID: TIntegerField;
    qyPedidosR_P_CLAVE: TIBStringField;
    qyPedidosR_P_FOLIO: TIntegerField;
    qyPedidosR_P_GRANTOTAL: TFloatField;
    qyPedidosR_P_ESTATUS: TIBStringField;
    qyPedidosR_ALMACEN: TIBStringField;
    qyPedidosR_A_NOMBRE: TIBStringField;
    qyPedidosR_CCOMERCIAL: TIBStringField;
    qyFacturasR_ID: TIntegerField;
    qyFacturasR_C_CLAVE: TIBStringField;
    qyFacturasR_C_NOMBRE: TIBStringField;
    qyFacturasR_C_RSOCIAL: TIBStringField;
    qyFacturasR_E_NOMBRE: TIBStringField;
    qyFacturasR_F_ID: TIntegerField;
    qyFacturasR_F_CLAVE: TIBStringField;
    qyFacturasR_F_SERIE: TIBStringField;
    qyFacturasR_F_FOLIO: TIntegerField;
    qyFacturasR_F_GRANTOTAL: TFloatField;
    qyFacturasR_F_ESTATUS: TIBStringField;
    qyFacturasR_A_CLAVE: TIBStringField;
    qyFacturasR_A_NOMBRE: TIBStringField;
    qyFacturasR_CCOMERCIAL: TIBStringField;
    spDESPACHADOR_AGRUPAR_FAC: TIBStoredProc;
    spDESPACHADOR_AGRUPAR_PED: TIBStoredProc;
    spQUITAR_IMPUESTOS_PEDIDO: TIBStoredProc;
    spAUMENTAR_IMPUESTOS_PEDIDO: TIBStoredProc;
    procedure ibNuevoClick(Sender: TObject);
    procedure TCapturarAfterOpen(DataSet: TDataSet);
    procedure dgPedidosBTN_IMPRIMIRButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure FormCreate(Sender: TObject);
    procedure dgFacturasBTN_IMPRESIONButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dgPedidosBTN_CLIENTEButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dgPedidosBTN_EXTButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dgFacturasBTN_CLIENTEButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dgFacturasBTN_EXTButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
      {
    procedure dgPedidosBandClick(Sender: TObject; ABand: TdxTreeListBand);
    procedure dgFacturasBandClick(Sender: TObject; ABand: TdxTreeListBand);
    }
    procedure dgPedidosBTN_QUITARButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dgPedidosBTN_AUMENTARButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dsFuenteDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
    awrMedidas  : boolean;
    awrCalcular : boolean;
  public
    { Public declarations }
  end;

var
  frmCapturar_Despachador: TfrmCapturar_Despachador;

implementation

uses USqlAnaliza, IBData, IBModulo, explorar_despachador, UfrmDespachador,
  reglas_de_negocios, PRN_0026, PRN_0003_FACTURAR_TXT,
  UfrmSeleccionarCliente, UfrmSeleccionarExtension, explorar_pedidos,
  explorar_facturas;

{$R *.DFM}

procedure TfrmCapturar_Despachador.ibNuevoClick(Sender: TObject);
var
   vAlias  : string;
   vCampo  : string;
   vLogica : string;
   i, j    : integer;
   seek    : integer;
begin
//  inherited;
   try
      frmDespachador             := nil;
      frmDespachador             := TfrmDespachador.Create(Application);
      frmDespachador.DATABASE    := dmIBModulo.ibSistema;
      frmDespachador.TRANSACTION := dmIBModulo.ibSistemaTransaccion;
      frmDespachador.USUARIO     := reglas.dame_usuario;
      frmDespachador.Open;
      frmDespachador.ShowModal;
      seek := frmDespachador.DESPACHADO;
   finally
      frmDespachador.Free;
   end;

   if seek > 0 then
   begin
      awrSQL.LoadOriginal;

      vAlias := awrSQL.dameAlias(1);
      vCampo := awrSQL.dameCampo(1);

      if (awrSQL.CountWhere = 0) then
         vLogica := ''
      else
         vLogica := 'OR';

      j := awrSQL.AddParamIndex('P_CAPTURA'+IntToStr(seek));
      awrSQL.setParam(j, IntToStr(seek), psCadena);
      awrSQL.AddWhereExtra(vLogica+' ('+vCampo+' = '+':P_CAPTURA'+IntToStr(seek)+')');

      awrSQL.construirExtra;

      frmExplorar_Despachador.qyExplorar.SQL.Clear;
      frmExplorar_Despachador.qyExplorar.SQL.AddStrings(awrSQL.strSql);
      for i := 1 to awrSQL.indexParam do
      begin
         frmExplorar_Despachador.qyExplorar.ParamByName(awrSQL.dameParam(i)).Value := awrSQL.dameParamValor(i);
      end;
      frmExplorar_Despachador.qyExplorar.Open;
      frmExplorar_Despachador.qyExplorar.Locate(vAlias, seek, [loCaseInsensitive]);

      asignaStatus;
   end;
end;

procedure TfrmCapturar_Despachador.TCapturarAfterOpen(DataSet: TDataSet);
begin
  inherited;
  reglas.refresh_IBQuery(qyPedidos);
  reglas.refresh_IBQuery(qyFacturas);

  //dgPedidosBTN_QUITAR.Visible   := (dsFuente.DataSet.FieldByName('ESTATUS').AsString = 'Sin Afectar') and awrCalcular;
  //dgPedidosBTN_AUMENTAR.Visible := (dsFuente.DataSet.FieldByName('ESTATUS').AsString = 'Sin Afectar') and not(awrCalcular);
end;

procedure TfrmCapturar_Despachador.dgPedidosBTN_IMPRIMIRButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
var
  vActual : integer;
begin
  inherited;
  if not(dsPedidos.DataSet.IsEmpty) then
  begin
     vActual := dsPedidos.DataSet.FieldByName('R_P_ID').AsInteger;
     try
        frmPRN_0026    := TfrmPRN_0026.Create(Application);
        frmPRN_0026.ID := vActual;
        if not(awrMedidas) then
        begin
           if frmPRN_0026.OpenP then
              frmPRN_0026.imprimirP;
        end
        else
           begin
              if frmPRN_0026.OpenMP then
                 frmPRN_0026.imprimirP;
           end;
     finally
        frmPRN_0026.Free;
     end;
     reglas.abrir_IBQuery_seek('R_P_ID', vActual, qyPedidos);
   end;
end;

procedure TfrmCapturar_Despachador.FormCreate(Sender: TObject);
begin
  inherited;
  reglas.abrir_IBTabla(dmIBData.TPreferencias);
  //Activar medidas
  dmIBData.TPreferencias.Filter := 'ID = 66';
  awrMedidas  := UpperCase(dmIBData.TPreferencias.FieldByName('VALOR').AsString) = 'SI';
  //Calcular Impuesto en Pedidos
  dmIBData.TPreferencias.Filter := 'ID = 126';
  awrCalcular := UpperCase(dmIBData.TPreferencias.FieldByName('VALOR').AsString) = 'SI';
end;

procedure TfrmCapturar_Despachador.dgFacturasBTN_IMPRESIONButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
var
 vActual : integer;
begin
  inherited;
  if not(dsFacturas.DataSet.IsEmpty) then
  begin
     vActual := dsFacturas.DataSet.FieldByName('R_F_ID').AsInteger;
     try
        frmPRN_0003_TXT    := TfrmPRN_0003_TXT.Create(Application);
        frmPRN_0003_TXT.ID := vActual;
        if not(awrMedidas) then
        begin
           frmPRN_0003_TXT.ESTATUS := dsFacturas.DataSet.FieldByName('R_F_ESTATUS').AsString;
           if frmPRN_0003_TXT.OpenFormato then
              frmPRN_0003_TXT.imprimir;
        end
        else
           begin
              frmPRN_0003_TXT.ESTATUS := 'Medidas';
              if frmPRN_0003_TXT.OpenFormatoM then//Medida Normal
                 frmPRN_0003_TXT.imprimir;
           end;
     finally
        frmPRN_0003_TXT.Free;
     end;
     reglas.abrir_IBQuery_seek('R_F_ID', vActual, qyFacturas);
  end;
end;

procedure TfrmCapturar_Despachador.dgPedidosBTN_CLIENTEButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
begin
  inherited;
  frmSeleccionarCliente := TfrmSeleccionarCliente.Create(Application);
  frmSeleccionarCliente.DATABASE    := dmIBModulo.ibSistema;
  frmSeleccionarCliente.TRANSACTION := dmIBModulo.ibSistemaTransaccion;
  frmSeleccionarCliente.CLAVE       := '';
  if frmSeleccionarCliente.abrirConsulta then
  begin
     frmSeleccionarCliente.ShowModal;
     if frmSeleccionarCliente.ACEPTAR then
     begin
        spACT_CLIENTE_PEDIDO.ParamByName('P_ID').AsInteger        := dgPedidos.DataSource.DataSet.FieldByName('R_P_ID').AsInteger;
        spACT_CLIENTE_PEDIDO.ParamByName('P_CLIENTE').AsInteger   := frmSeleccionarCliente.ID;
        spACT_CLIENTE_PEDIDO.ParamByName('P_EXTENSION').AsInteger := 0;
        spACT_CLIENTE_PEDIDO.ExecProc;
        spACT_CLIENTE_PEDIDO.Transaction.CommitRetaining;
        reglas.abrir_IBQuery_seek('R_P_ID',qyPedidos.FieldByName('R_P_ID').AsInteger, qyPedidos);
     end;
  end;
end;

procedure TfrmCapturar_Despachador.dgPedidosBTN_EXTButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
begin
  inherited;
  frmSeleccionarExtension             := TfrmSeleccionarExtension.Create(Application);
  frmSeleccionarExtension.DATABASE    := dmIBModulo.ibSistema;
  frmSeleccionarExtension.TRANSACTION := dmIBModulo.ibSistemaTransaccion;
  frmSeleccionarExtension.CLAVE       := '';
  if frmSeleccionarExtension.abrirConsulta then
  begin
     frmSeleccionarExtension.ShowModal;
     if frmSeleccionarExtension.ACEPTAR then
     begin
        spACT_CLIENTE_PEDIDO.ParamByName('P_ID').AsInteger        := dgPedidos.DataSource.DataSet.FieldByName('R_P_ID').AsInteger;
        spACT_CLIENTE_PEDIDO.ParamByName('P_CLIENTE').AsInteger   := frmSeleccionarExtension.CLIENTE;
        spACT_CLIENTE_PEDIDO.ParamByName('P_EXTENSION').AsInteger := frmSeleccionarExtension.EXTENSION;
        spACT_CLIENTE_PEDIDO.ExecProc;
        spACT_CLIENTE_PEDIDO.Transaction.CommitRetaining;
        reglas.abrir_IBQuery_seek('R_P_ID',qyPedidos.FieldByName('R_P_ID').AsInteger, qyPedidos);
     end;
  end;
end;

procedure TfrmCapturar_Despachador.dgFacturasBTN_CLIENTEButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
begin
  inherited;
  frmSeleccionarCliente := TfrmSeleccionarCliente.Create(Application);
  frmSeleccionarCliente.DATABASE    := dmIBModulo.ibSistema;
  frmSeleccionarCliente.TRANSACTION := dmIBModulo.ibSistemaTransaccion;
  frmSeleccionarCliente.CLAVE       := '';
  if frmSeleccionarCliente.abrirConsulta then
  begin
     frmSeleccionarCliente.ShowModal;
     if frmSeleccionarCliente.ACEPTAR then
     begin
        spACT_CLIENTE_FACTURA.ParamByName('P_ID').AsInteger        := dgFacturas.DataSource.DataSet.FieldByName('R_F_ID').AsInteger;
        spACT_CLIENTE_FACTURA.ParamByName('P_CLIENTE').AsInteger   := frmSeleccionarCliente.ID;
        spACT_CLIENTE_FACTURA.ParamByName('P_EXTENSION').AsInteger := 0;
        spACT_CLIENTE_FACTURA.ExecProc;
        spACT_CLIENTE_FACTURA.Transaction.CommitRetaining;
        reglas.abrir_IBQuery_seek('R_F_ID',qyFacturas.FieldByName('R_F_ID').AsInteger, qyFacturas);
     end;
  end;
end;

procedure TfrmCapturar_Despachador.dgFacturasBTN_EXTButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
begin
  inherited;
  frmSeleccionarExtension             := TfrmSeleccionarExtension.Create(Application);
  frmSeleccionarExtension.DATABASE    := dmIBModulo.ibSistema;
  frmSeleccionarExtension.TRANSACTION := dmIBModulo.ibSistemaTransaccion;
  frmSeleccionarExtension.CLAVE       := '';
  if frmSeleccionarExtension.abrirConsulta then
  begin
     frmSeleccionarExtension.ShowModal;
     if frmSeleccionarExtension.ACEPTAR then
     begin
        spACT_CLIENTE_FACTURA.ParamByName('P_ID').AsInteger        := dgFacturas.DataSource.DataSet.FieldByName('R_F_ID').AsInteger;
        spACT_CLIENTE_FACTURA.ParamByName('P_CLIENTE').AsInteger   := frmSeleccionarExtension.CLIENTE;
        spACT_CLIENTE_FACTURA.ParamByName('P_EXTENSION').AsInteger := frmSeleccionarExtension.EXTENSION;
        spACT_CLIENTE_FACTURA.ExecProc;
        spACT_CLIENTE_FACTURA.Transaction.CommitRetaining;
        reglas.abrir_IBQuery_seek('R_F_ID',qyFacturas.FieldByName('R_F_ID').AsInteger, qyFacturas);
     end;
  end;
end;

{
procedure TfrmCapturar_Despachador.dgPedidosBandClick(Sender: TObject;
  ABand: TdxTreeListBand);
var
  i, j : integer;
begin
  inherited;
  case ABand.Index of
    0 : begin
    El agrupar pedidos tomara como base el primer registro del depachador detalle (Id.)

           meAgruparP.Execute;
           if meAgruparP.Respuesta then
           begin
              spDESPACHADOR_AGRUPAR_PED.ParamByName('P_ID').AsInteger := dsFuente.DataSet.FieldByName('ID').AsInteger;
              spDESPACHADOR_AGRUPAR_PED.ExecProc;
              spDESPACHADOR_AGRUPAR_PED.Transaction.CommitRetaining;
              reglas.refresh_IBQuery(qyPedidos);
           end;
        end;
    1 : begin
           forma('frmExplorar_pedidos');
//           frmExplorar_pedidos.sqlExp.LoadOriginal;
           frmExplorar_pedidos.sqlExp.clearWhereExtra;
           frmExplorar_pedidos.sqlExp.construir;

           qyPedidos.Last;
           j := frmExplorar_pedidos.sqlExp.AddParamIndex('P_FINAL');
           frmExplorar_pedidos.sqlExp.setParam(j, qyPedidos.FieldByName('R_P_ID').AsInteger, psCadena);

           qyPedidos.First;
           j := frmExplorar_pedidos.sqlExp.AddParamIndex('P_INICIAL');
           frmExplorar_pedidos.sqlExp.setParam(j, qyPedidos.FieldByName('R_P_ID').AsInteger, psCadena);

           frmExplorar_pedidos.sqlExp.AddWhereExtra(' ( (P.ID >= :P_INICIAL) AND (P.ID <= :P_FINAL) )');
           frmExplorar_pedidos.sqlExp.construirExtra;


           frmExplorar_pedidos.qyExplorar.SQL.Clear;
           frmExplorar_pedidos.qyExplorar.SQL.AddStrings(frmExplorar_pedidos.sqlExp.strSql);

           for i := 1 to frmExplorar_pedidos.sqlExp.indexParam do
           begin
              frmExplorar_pedidos.qyExplorar.ParamByName(frmExplorar_pedidos.sqlExp.dameParam(i)).Value := frmExplorar_pedidos.sqlExp.dameParamValor(i);
           end;
           frmExplorar_pedidos.qyExplorar.Open;
           frmExplorar_pedidos.dgExplorar.GotoFirst;
           if not(frmExplorar_pedidos.qyExplorar.IsEmpty) then
              frmExplorar_pedidos.ibPantalla.Click;
        end;
  end;
end;

procedure TfrmCapturar_Despachador.dgFacturasBandClick(Sender: TObject;
  ABand: TdxTreeListBand);
var
   i, j : integer;
begin
  inherited;
  case ABand.Index of
    0 : begin
       El agrupar facturas tomara como base el primer registro del depachador detalle (Id.)

           meAgruparF.Execute;
           if meAgruparF.Respuesta then
           begin
              spDESPACHADOR_AGRUPAR_FAC.ParamByName('P_ID').AsInteger := dsFuente.DataSet.FieldByName('ID').AsInteger;
              spDESPACHADOR_AGRUPAR_FAC.ExecProc;
              spDESPACHADOR_AGRUPAR_FAC.Transaction.CommitRetaining;
              reglas.refresh_IBQuery(qyFacturas);
           end;
        end;
    1 : begin
           forma('frmExplorar_Facturas');
//           frmExplorar_Facturas.sqlExp.LoadOriginal;
           frmExplorar_Facturas.sqlExp.clearWhereExtra;
           frmExplorar_Facturas.sqlExp.construir;

           qyFacturas.Last;
           j := frmExplorar_Facturas.sqlExp.AddParamIndex('P_FINAL');
           frmExplorar_Facturas.sqlExp.setParam(j, qyFacturas.FieldByName('R_F_ID').AsInteger, psCadena);

           qyFacturas.First;
           j := frmExplorar_Facturas.sqlExp.AddParamIndex('P_INICIAL');
           frmExplorar_Facturas.sqlExp.setParam(j, qyFacturas.FieldByName('R_F_ID').AsInteger, psCadena);

           frmExplorar_Facturas.sqlExp.AddWhereExtra(' ( (F.ID >= :P_INICIAL) AND (F.ID <= :P_FINAL) )');
           frmExplorar_Facturas.sqlExp.construirExtra;

           frmExplorar_Facturas.qyExplorar.SQL.Clear;
           frmExplorar_Facturas.qyExplorar.SQL.AddStrings(frmExplorar_Facturas.sqlExp.strSql);

           for i := 1 to frmExplorar_Facturas.sqlExp.indexParam do
           begin
              frmExplorar_Facturas.qyExplorar.ParamByName(frmExplorar_Facturas.sqlExp.dameParam(i)).Value := frmExplorar_Facturas.sqlExp.dameParamValor(i);
           end;
           frmExplorar_Facturas.qyExplorar.Open;
           frmExplorar_Facturas.dgExplorar.GotoFirst;
           if not(frmExplorar_Facturas.qyExplorar.IsEmpty) then
              frmExplorar_Facturas.ibPantalla.Click;
        end;
  end;
end;
}
procedure TfrmCapturar_Despachador.dgPedidosBTN_QUITARButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
begin
  inherited;
  if MessageDlg('¿Quitar impuestos del pedido?', mtConfirmation, [mbYes, mbNo], 0) = mrYes  then
  begin
     spQUITAR_IMPUESTOS_PEDIDO.ParamByName('P_ID').AsInteger := qyPedidos.FieldByName('R_P_ID').AsInteger;
     spQUITAR_IMPUESTOS_PEDIDO.ExecProc;
     spQUITAR_IMPUESTOS_PEDIDO.Transaction.CommitRetaining;
     reglas.abrir_IBQuery_seek('R_P_ID',qyPedidos.FieldByName('R_P_ID').AsInteger, qyPedidos);
  end;
end;

procedure TfrmCapturar_Despachador.dgPedidosBTN_AUMENTARButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
begin
  inherited;
  if MessageDlg('Aumentar impuestos en el pedido.', mtConfirmation, [mbYes, mbNo], 0) = mrYes  then
  begin
     spAUMENTAR_IMPUESTOS_PEDIDO.ParamByName('P_ID').AsInteger := qyPedidos.FieldByName('R_P_ID').AsInteger;
     spAUMENTAR_IMPUESTOS_PEDIDO.ExecProc;
     spAUMENTAR_IMPUESTOS_PEDIDO.Transaction.CommitRetaining;
     reglas.abrir_IBQuery_seek('R_P_ID',qyPedidos.FieldByName('R_P_ID').AsInteger, qyPedidos);
  end;
end;

procedure TfrmCapturar_Despachador.dsFuenteDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if dsFuente.DataSet <> nil then
  begin
     //dgPedidosBTN_QUITAR.Visible   := (dsFuente.DataSet.FieldByName('ESTATUS').AsString = 'Sin Afectar') and awrCalcular;
     //dgPedidosBTN_AUMENTAR.Visible := (dsFuente.DataSet.FieldByName('ESTATUS').AsString = 'Sin Afectar') and not(awrCalcular);
  end;
end;

end.
