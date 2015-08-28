unit capturar;

interface

uses
  USqlAnaliza,  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, IBQuery,
  hijo, IBStoredProc, IBTable,  Db, IBCustomDataSet,
   StdCtrls, Mask, DBCtrls,  jpeg,  ExtCtrls,
   ComCtrls, Buttons , dbgrids;

type
  TStatus = record
     id           : integer; 
     estatusAnt   : string;
     estatusSel   : string;
     autorizacion : boolean;
     storeproc    : string;
     nivel        : integer;
     correo       : boolean;
     idEjecutar   : integer;
     unico        : integer;
     unico_n      : string;
     imprimir     : boolean;
  end;

  TfrmCapturar = class(TfrmHijo)
    paLienzo: TPanel;
    TCapturar: TIBTable;
    spID: TIBStoredProc;
    TCapturarforma: TIntegerField;
    ibNuevo: TBitBtn;
    btnEscript: TBitBtn;
    ibModificar: TBitBtn;
    ibGuardar: TBitBtn;
    ibEliminar: TBitBtn;
    ibCancelar: TBitBtn;
    ibAyuda: TBitBtn;
    ibImprimir: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure dsFuenteDataChange(Sender: TObject; Field: TField);
    procedure ibNuevoClick(Sender: TObject);
    procedure ibModificarClick(Sender: TObject);
    procedure ibGuardarClick(Sender: TObject);
    procedure ibCancelarClick(Sender: TObject);
    procedure ibEliminarClick(Sender: TObject);
    procedure TCapturarCalcFields(DataSet: TDataSet);
    procedure buInicioClick(Sender: TObject);
    procedure buAnteriorClick(Sender: TObject);
    procedure buSiguienteClick(Sender: TObject);
    procedure buFinClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnEscriptClick(Sender: TObject);
  private
    { Private declarations }
    select      : string;
    select2     : string;
    tabla       : string;
    whereAlways : string;
    id          : string;
  protected
    awrStatus    : TStatus;
    estatus      : string;
    rejilla      : TDBGrid;
    awrSQL       : TsqlAnaliza;
    awrHabilitar : Boolean;
    awrLogica    : String;
    procedure borrar;virtual;
    procedure asignaStatus;
    procedure setLogica(valor : String);
    procedure mensajes;
  public
    { Public declarations }
    procedure SetRejilla(varRejilla : TDBGrid);
  published
     property Grid : TDBGrid write SetRejilla;
  end;

var
  frmCapturar: TfrmCapturar;

implementation

uses reglas_de_negocios, IBModulo, UfrmScript;

{$R *.DFM}

procedure TfrmCapturar.mensajes;
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
      args := 'email ';//       estatus detalle                     usuario                                    id proceso
      args := args + ' ' + IntToStr(awrStatus.id) + ' ' + IntToStr(reglas.dame_usuario) + ' ' + dsFuente.DataSet.FieldByName('ID').AsString;

      WinExec(PAnsiChar(ruta + archivo + ' ' + args), SW_SHOWNORMAL);
   end
   else
      showMessage('Falta archivo: ' + ruta + archivo);
end;

procedure TfrmCapturar.setLogica(valor : String);
begin
   awrLogica := valor;
end;

procedure TfrmCapturar.asignaStatus;
begin
//  if (dsFuente.DataSet.State in [dsInsert, dsEdit]) and not(dsFuente.DataSet.IsEmpty) then
//  begin
//  end;
end;

procedure TfrmCapturar.SetRejilla(varRejilla : TDBGrid);
begin
   rejilla := varRejilla;
end;

procedure TfrmCapturar.borrar;
begin
  TCapturar.Delete;
  TCapturar.Transaction.CommitRetaining;
  if TCapturar.MasterSource <> nil then
  begin
     TIBQuery(TCapturar.MasterSource.DataSet).Close;
     TIBQuery(TCapturar.MasterSource.DataSet).Open;
  end;
end;

procedure TfrmCapturar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if dsFuente.DataSet.State in [dsInsert, dsEdit] then
  begin
    if dsFuente.DataSet.State = dsInsert then
    begin
      if MessageDlg(' ¿ Desea guardar la información ?',
      mtConfirmation, [mbYes, mbNo], 0) = mrYes  then
      begin
        TCapturar.Post;
        TCapturar.Transaction.CommitRetaining;
      end
      else
      begin
        TCapturar.Cancel;
      end
    end
    else
      if dsFuente.DataSet.State = dsEdit then
      begin
         TCapturar.Cancel;
      end;
  end;
  rejilla := nil;
  Action  := caFree;
end;

procedure TfrmCapturar.FormCreate(Sender: TObject);
begin
  inherited;
  awrLogica     := 'OR';
  awrSql        := reglas.tmpSQL;

  reglas.tmpSQL := nil;

  select      := reglas.tmpSelect;
  select2     := reglas.tmpSelect2;
  tabla       := reglas.tmpTabla;
  whereAlways := reglas.tmpWhereAlways;
  id          := reglas.tmpID;
  estatus     := '';
  if (dsFuente.DataSet <> nil) then
  begin
    reglas.abrir_IBTabla(TCapturar);
  end
  else
  begin
    ShowMessage('No existe fuente de datos asignada a esta pantalla');
  end
end;

procedure TfrmCapturar.dsFuenteDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if dsFuente.DataSet <> nil then
  begin
     ibNuevo.Enabled     := nuevo     and (dsFuente.DataSet.State = dsBrowse);
     ibModificar.Enabled := modificar and (dsFuente.DataSet.State = dsBrowse) and not(dsFuente.DataSet.IsEmpty);
     ibGuardar.Enabled   := guardar   and (dsFuente.DataSet.State in [dsInsert, dsEdit]);
     ibCancelar.Enabled  := cancelar  and (dsFuente.DataSet.State in [dsInsert, dsEdit]);
     ibEliminar.Enabled  := eliminar  and (dsFuente.DataSet.State = dsBrowse) and not(dsFuente.DataSet.IsEmpty);
     ibImprimir.Enabled  := imprimir  and (dsFuente.DataSet.State = dsBrowse) and not(dsFuente.DataSet.IsEmpty);
     ibAyuda.Enabled     := ayuda;
     paLienzo.Enabled    :=(dsFuente.DataSet.State in [dsInsert, dsEdit]);
  end;
end;

procedure TfrmCapturar.ibNuevoClick(Sender: TObject);
begin
  inherited;
  TCapturar.Insert;
  spID.ExecProc;
  TCapturar.FieldByName('ID').AsInteger := spID.ParamByName('R_ID').AsInteger;
end;

procedure TfrmCapturar.ibModificarClick(Sender: TObject);
begin
  inherited;
  awrStatus.EstatusSel := '';
  awrStatus.idEjecutar := dsFuente.DataSet.FieldByName('ID').AsInteger;
  try
     awrStatus.estatusAnt := dsFuente.DataSet.FieldByName('ESTATUS').AsString;
  except
  end;

  TCapturar.Edit;
end;

procedure TfrmCapturar.ibGuardarClick(Sender: TObject);
var
   seek   : integer;
   estado : TDataSetState;
   i, j   : integer;
   vCampo  : string;
   vAlias  : string;
   vLogica : string;
begin
  inherited;
  seek   := TCapturar.FieldByName('ID').AsInteger;
  estado := TCapturar.State;
  TCapturar.Post;
  TCapturar.Transaction.CommitRetaining;
  if TCapturar.MasterSource <> nil then
  begin
    if estado = dsEdit then
    begin
       if awrSQL <> nil then
       begin
          if rejilla.DataSource.DataSet.RecordCount = 1 then
          begin
             rejilla.DataSource.DataSet.Close;
             rejilla.DataSource.DataSet.Open;
          end;
       end;
    end
    else
      if estado = dsInsert then
      begin
         if awrSQL <> nil then
         begin
//            awrSQL.LoadOriginal;

            vAlias := awrSQL.dameAlias(1);
            vCampo := awrSQL.dameCampo(1);

            if (awrSQL.CountWhere = 0) then
               vLogica := ''
            else
               vLogica := awrLogica;

            awrSQL.clearWhereExtra;
            j := awrSQL.AddParamIndex('P_CAPTURA'+IntToStr(seek));
            awrSQL.setParam(j, IntToStr(seek), psCadena);
            awrSQL.AddWhereExtra(vLogica+' ('+vCampo+' = '+':P_CAPTURA'+IntToStr(seek)+')');
            awrSQL.construir;
            awrSQL.construirExtra;

            TIBQuery(TCapturar.MasterSource.DataSet).SQL.Clear;
            TIBQuery(TCapturar.MasterSource.DataSet).SQL.AddStrings(awrSQL.strSql);
            for i := 1 to awrSQL.indexParam do
            begin
               TIBQuery(TCapturar.MasterSource.DataSet).ParamByName(awrSQL.dameParam(i)).Value := awrSQL.dameParamValor(i);
            end;
            TIBQuery(TCapturar.MasterSource.DataSet).Open;
            TIBQuery(TCapturar.MasterSource.DataSet).Locate(vAlias, seek, [loCaseInsensitive]);
         end
         else
            begin
               TIBQuery(TCapturar.MasterSource.DataSet).Close;
               TIBQuery(TCapturar.MasterSource.DataSet).SQL.Clear;
               TIBQuery(TCapturar.MasterSource.DataSet).SQL.Add('SELECT '+select);
               if select2 <> '' then
                  TIBQuery(TCapturar.MasterSource.DataSet).SQL.Add(', '+select2);
               TIBQuery(TCapturar.MasterSource.DataSet).SQL.Add('FROM '+tabla);
               TIBQuery(TCapturar.MasterSource.DataSet).SQL.Add('WHERE '+whereAlways+'('+id+' = '+IntToStr(seek)+')');
               TIBQuery(TCapturar.MasterSource.DataSet).Open;
            end;
      end;
  end;
end;

procedure TfrmCapturar.ibCancelarClick(Sender: TObject);
begin
  inherited;
  TCapturar.Cancel;
  awrStatus.estatusSel := '';
end;

procedure TfrmCapturar.ibEliminarClick(Sender: TObject);
begin
  inherited;
  if MessageDlg(' ¿ Eliminar Registro ?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes  then
  begin
      borrar;
  end;

end;

procedure TfrmCapturar.TCapturarCalcFields(DataSet: TDataSet);
begin
  inherited;
  if dsFuente.DataSet <> nil then
  begin
     DataSet.FieldByName('FORMA').AsInteger := Tag;
  end;
end;

procedure TfrmCapturar.buInicioClick(Sender: TObject);
begin
  inherited;
  if rejilla <> nil then
  begin
     if dsFuente.DataSet.State in [dsEdit, dsInsert] then
        dsFuente.DataSet.Cancel;
     rejilla.DataSource.DataSet.First;
  end;
end;

procedure TfrmCapturar.buAnteriorClick(Sender: TObject);
begin
  inherited;
  if rejilla <> nil then
  begin
     if dsFuente.DataSet.State in [dsEdit, dsInsert] then
        dsFuente.DataSet.Cancel;
     rejilla.DataSource.DataSet.Prior;
  end;
end;

procedure TfrmCapturar.buSiguienteClick(Sender: TObject);
begin
  inherited;
  if rejilla <> nil then
  begin
     if dsFuente.DataSet.State in [dsEdit, dsInsert] then
        dsFuente.DataSet.Cancel;
     rejilla.DataSource.DataSet.Next;

  end;
end;

procedure TfrmCapturar.buFinClick(Sender: TObject);
begin
  inherited;
  if rejilla <> nil then
  begin
     if dsFuente.DataSet.State in [dsEdit, dsInsert] then
        dsFuente.DataSet.Cancel;
     rejilla.DataSource.DataSet.Last;
  end;
end;

procedure TfrmCapturar.FormDestroy(Sender: TObject);
begin
  inherited;

//  FreeAndNil(awrSQL);
//  awrSql.Free;
end;

procedure TfrmCapturar.btnEscriptClick(Sender: TObject);
begin
  inherited;
  if awrSql <> nil then
  begin
     try
        frmScript := TfrmScript.Create(Application);
        frmScript.AddStrings(awrSql.strSql);
        frmScript.ShowModal;
     finally
        frmScript.Free;
     end;
  end;

end;

end.
