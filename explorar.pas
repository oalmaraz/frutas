unit explorar;

interface

uses
  USQLAnaliza, URecords, Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  hijo, Menus,   StdCtrls,
         Db,
  IBCustomDataSet, IBQuery, Mask, DBCtrls,
   jpeg,  ExtCtrls,
    ComCtrls, Buttons, Grids, DBGrids;

type
  TfrmExplorar = class(TfrmHijo)
    dgExplorar: TDBGrid;
    qyExplorar: TIBQuery;
    paExplorarBusqueda: TPanel;
    edExplorarValor: TEdit;
    laCampo: TLabel;
    ppImprimir: TPopupMenu;
    itemImprimir: TMenuItem;
    itemArriba: TMenuItem;
    TextoAbajo1: TMenuItem;
    ppExpDias: TPopupMenu;
    Ayer1: TMenuItem;
    AyeryHoy1: TMenuItem;
    edExplorarDel: TDateTimePicker;
    edExplorarAl: TDateTimePicker;
    ibVer: TBitBtn;
    ibConstructor: TBitBtn;
    ibImprimir: TBitBtn;
    ibPantalla: TBitBtn;
    ibExportarXLS: TBitBtn;
    ibExportarHTML: TBitBtn;
    ibExportarXML: TBitBtn;
    buExpHoy: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ibVerClick(Sender: TObject);
    procedure ibPantallaClick(Sender: TObject);
    procedure ibExportarXLSClick(Sender: TObject);
    procedure ibExportarHTMLClick(Sender: TObject);
    procedure ibExportarXMLClick(Sender: TObject);
    procedure dgExplorarDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ibConstructorClick(Sender: TObject);
    procedure ibImprimirClick(Sender: TObject);
    procedure buInicioClick(Sender: TObject);
    procedure buAnteriorClick(Sender: TObject);
    procedure buSiguienteClick(Sender: TObject);
    procedure buFinClick(Sender: TObject);
    procedure edExplorarValorKeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure itemArribaClick(Sender: TObject);
    procedure TextoAbajo1Click(Sender: TObject);
    procedure fcImager2DblClick(Sender: TObject);
    procedure laCampoDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure laCampoDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure buExpHoyClick(Sender: TObject);
    procedure Ayer1Click(Sender: TObject);
    procedure AyeryHoy1Click(Sender: TObject);
    procedure edExplorarDelKeyPress(Sender: TObject; var Key: Char);
    procedure dgExplorarTitleClick(Column: TColumn);
  private
    { Private declarations }
    awrQuien       : integer;
    {
    awrComo        : TdxTreeListColumnSort;
    }
    awrRows        : string;
    awrExpFecha    : string;
    awrFieldSearch : string;
    awrViewSearch  : boolean;
    {
    procedure BeforePreview(Sender: TObject; AReportLink: TBasedxReportLink);
    }
    procedure addCampo(pCampo, pAlias : string);
    procedure quien;
    procedure devolver;
    procedure setNuevo(valor : boolean);
    procedure setCampoFecha(vCampo : string);
    procedure setFieldSearch(valor : string);
  protected
    awrNvo      : boolean;
    awrTextUp   : string;
    awrTextDown : string;
    ARecord : PMisCampos;
    campos  : TList;//lista de los campos a presentar
    FForma  : string;
    select  : string;
    select2 : string;
    tabla   : string;
    whereIfThen : string;
    whereAlways : string;
    function separarCampos(pCampos : string) : string;
    procedure Parametros; virtual;
    procedure AddSentHoy;virtual;
    procedure AddSentAyer;virtual;
    procedure AddSentAmbas;virtual;
  public
    { Public declarations }
    sqlExp : TsqlAnaliza;
  protected
     procedure construirBusqueda;
  published
     property EXP_NVO : boolean read awrNvo write setNuevo;
     property CAMPO_FECHA : string read awrExpFecha write setCampoFecha;
     property FieldSearch : string read awrFieldSearch write setFieldSearch;
     property ViewSearch  : boolean read awrViewSearch write awrViewSearch;
  end;


implementation

uses  menu, reglas_de_negocios, IBModulo,  IBData,
  UfrmConstructor, UfrmBuild, UfrmScript;

{$R *.DFM}

procedure TfrmExplorar.AddSentHoy;
begin
end;

procedure TfrmExplorar.AddSentAyer;
begin
end;

procedure TfrmExplorar.AddSentAmbas;
begin
end;

procedure TfrmExplorar.Parametros;
begin
end;

procedure TfrmExplorar.setFieldSearch(valor : string);
var
   vTipo : TFieldType;
begin
   if awrNvo then
   begin
      awrFieldSearch := valor;

      vTipo := sqlExp.dameTipoA(awrFieldSearch);
                                                  
      if vTipo in [ftDate, ftDateTime] then
      begin
         dmIBData.spFECHA_SERVIDOR_SH.ExecProc;
         edExplorarDel.Date      := dmIBData.spFECHA_SERVIDOR_SH.ParamByName('R_FECHA').AsDate;
         edExplorarAl.Date       := dmIBData.spFECHA_SERVIDOR_SH.ParamByName('R_FECHA').AsDate;
         edExplorarDel.Visible   := true  and awrViewSearch;
         edExplorarAl.Visible    := true  and awrViewSearch;
         edExplorarValor.Visible := false and awrViewSearch;
      end
      else
         begin
            edExplorarDel.Visible   := false and awrViewSearch;
            edExplorarAl.Visible    := false and awrViewSearch;
            edExplorarValor.Visible := true  and awrViewSearch;
         end;

      laCampo.Caption      := LowerCase(valor);
      edExplorarValor.Left := laCampo.Width + 10;
      edExplorarDel.Left   := edExplorarValor.Left;
      edExplorarAl.Left    := edExplorarDel.Left + edExplorarDel.Width + 2;
   end;
end;

procedure TfrmExplorar.setCampoFecha(vCampo : string);
begin
   awrExpFecha := vCampo;
   if (awrExpFecha <> '') and (awrNvo) then
      buExpHoy.Visible := true;
end;

procedure TfrmExplorar.setNuevo(valor : boolean);
begin
   awrNvo := valor;
   if valor then
   begin
      if awrExpFecha <> '' then
         buExpHoy.Visible := true;
      if (sqlExp = nil) then
      begin
         sqlExp := TsqlAnaliza.Create;
         sqlExp.DataBase    := qyExplorar.Database;
         sqlExp.Transaction := qyExplorar.Transaction;
         sqlExp.AddStrings(qyExplorar.SQL);
         sqlExp.AddParams;
         sqlExp.AddSentenciaHasta;
         sqlExp.AddSentenciaGrupo;
         sqlExp.AddSentenciaRows(awrRows);
      end;

      quien;
      FieldSearch := dgExplorar.Columns[awrQuien].FieldName;
   end;
end;

procedure TfrmExplorar.quien;
var
   i : integer;
begin
   for i := 0 to dgExplorar.Columns.Count - 1 do
   begin
      {
      if dgExplorar.Columns[i].Sorted <> csNone then
      begin
         awrQuien := i;
         awrComo  := dgExplorar.Columns[i].Sorted;
         break;
      end;
      }
   end
end;

procedure TfrmExplorar.devolver;
begin
   {
   dgExplorar.Columns[awrQuien].Sorted := awrComo;
   }
end;

function TfrmExplorar.separarCampos(pCampos : string) : string;
var
   i, j  : integer;
   tmp   : string;
   field : string;
   alias : string;
begin
   tmp := '';
   for i := 1 to length(pCampos) do
   begin
      if pCampos[i] = ',' then
      begin
         if tmp[1] = ' ' then
            tmp := copy(tmp, 2, length(tmp));
         j := pos(' ',tmp);
         field := copy(tmp,1,j-1);
         alias := copy(tmp, j+1, length(tmp));
         addCampo(field, alias);
         tmp := '';
      end
      else
         tmp := tmp + pCampos[i];
   end;
   //primero o ultimo registro
   if tmp[1] = ' ' then
      tmp := copy(tmp, 2, length(tmp));
   j := pos(' ',tmp);
   field := copy(tmp,1,j-1);
   alias := copy(tmp, j+1, length(tmp));
   addCampo(field, alias);
   //regresa el mismo dato
   separarCampos := pCampos;
end;

procedure TfrmExplorar.addCampo(pCampo, pAlias : string);
begin
  New(ARecord);
  ARecord^.nombre := pCampo;
  ARecord^.alias  := pAlias;
  campos.Add(ARecord);
end;

procedure TfrmExplorar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if dsFuente.DataSet <> nil then
    dsFuente.DataSet.Close;
  if FForma <> '' then
    cerrar(FForma);
  Action := caFree;
end;

procedure TfrmExplorar.ibVerClick(Sender: TObject);
var
   donde : string;
   alias : string;
   mayor : integer;
   i     : integer;
begin
  inherited;
  if dsFuente.DataSet <> nil then
  begin
     if (awrNvo) then
     begin
        alias := sqlExp.firstAlias;
        if qyExplorar.State = dsBrowse then
        begin
           quien;
           {
           dgExplorar.Columns[0].Sorted := csUp;
           dgExplorar.GotoLast(true);
           }
           mayor := dgExplorar.DataSource.DataSet.FieldByName(alias).AsInteger;

           devolver;
        end
        else
           mayor := 0;

        Parametros;
        sqlExp.clearWhereExtra;
        sqlExp.construir;
        sqlExp.AddSentenciaHasta;
        sqlExp.AddSentenciaGrupo;
        sqlExp.AddSentenciaRows(awrRows);

        qyExplorar.SQL.Clear;
        qyExplorar.SQL.AddStrings(sqlExp.strSql);

        for i := 1 to sqlExp.indexParam do
        begin
           qyExplorar.ParamByName(sqlExp.dameParam(i)).Value := sqlExp.dameParamValor(i);
        end;
        qyExplorar.ParamByName('P_ROWS').AsInteger := mayor;
        qyExplorar.Open;
     end
     else
        begin
           ARecord := campos.Items[0];
           if qyExplorar.State = dsBrowse then
           begin
              quien;
              {
              dgExplorar.Columns[0].Sorted := csUp;
              dgExplorar.GotoLast(true);
              }
              donde := IntToStr(dgExplorar.DataSource.DataSet.FieldByName(ARecord^.alias).AsInteger);
              devolver;
           end
           else
              donde := '0';

           qyExplorar.Close;
           qyExplorar.SQL.Clear;
           qyExplorar.SQL.Add('SELECT '+select);
           if select2 <> '' then
              qyExplorar.SQL.Add(', '+select2);
           qyExplorar.SQL.Add('FROM '+tabla);
           qyExplorar.SQL.Add('WHERE '+whereAlways+'('+ARecord^.nombre+' > '+donde+')');
           qyExplorar.SQL.Add('ORDER BY '+ARecord^.nombre);
           qyExplorar.SQL.Add('ROWS '+awrRows);
           qyExplorar.Open;
        end;
     {
     dgExplorar.GotoFirst;
     }
  end;
end;

procedure TfrmExplorar.ibPantallaClick(Sender: TObject);
begin
  inherited;
  if awrNvo then
  begin
     reglas.tmpSQL := sqlExp;
  end
  else
     begin
        ARecord := campos.Items[0];
        reglas.tmpSelect      := select;
        reglas.tmpSelect2     := select2;
        reglas.tmpTabla       := tabla;
        reglas.tmpWhereAlways := whereAlways;
        reglas.tmpID          := ARecord^.nombre;
     end;
  if FForma <> '' then
     forma(FForma , dgExplorar   )
  else
  begin
    ShowMessage('Falta pantalla');
  end;
end;

procedure TfrmExplorar.ibExportarXLSClick(Sender: TObject);
begin
  inherited;
  {
  reglas.Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', 'exportar.xls', dgExplorar.SaveToXLS);
  }
end;

procedure TfrmExplorar.ibExportarHTMLClick(Sender: TObject);
begin
  inherited;
  {
  reglas.Save('htm', 'HTML File (*.htm; *.html)|*.htm', 'exportar.htm', dgExplorar.SaveToHTML);
  }
end;

procedure TfrmExplorar.ibExportarXMLClick(Sender: TObject);
begin
  inherited;
  {
  reglas.Save('xml', 'XML File (*.xml)|*.xml', 'exportar.xml', dgExplorar.SaveToXML);
  }
end;

procedure TfrmExplorar.dgExplorarDblClick(Sender: TObject);
begin
  inherited;
  if ibPantalla.Enabled then
     ibPantalla.Click;
end;

procedure TfrmExplorar.FormCreate(Sender: TObject);
begin
  inherited;
  //Numero de registro a mostrar en el grid
  dmIBData.TPreferencias.Filter := 'ID = 2';
  awrRows := dmIBData.TPreferencias.FieldByName('VALOR').AsString;

  awrNvo        := false;
  awrViewSearch := true;

  {
  dgExplorar.IniFileName := ExtractFilePath(ParamStr(0))+Self.Caption+'.ini';
  dgExplorar.LoadFromIniFile(ExtractFilePath(ParamStr(0))+Self.Caption+'.ini');
  }
  reglas.abrir_IBTabla(dmIBData.TFiltroEmpresas);
  reglas.abrir_IBTabla(dmIBData.TPreferencias);

  select2 := '';
  campos  := TList.Create;

  whereAlways := '';
  whereIfThen := laCampo.Caption+' LIKE :P_VALOR';
  ibVer.Enabled          := ver;
  ibConstructor.Enabled  := construir;
  ibImprimir.Enabled     := imprimir;
  ibPantalla.Enabled     := capturar;
  ibExportarXLS.Enabled  := xls;
  ibExportarHTML.Enabled := html;
  ibExportarXML.Enabled  := xml;
end;

procedure TfrmExplorar.ibConstructorClick(Sender: TObject);
var
   resBuild : TModalResult;
   i : integer;
begin
  inherited;
  if dsFuente.DataSet <> nil then
  begin
     if awrNvo then
     begin
        Parametros;
        try
           frmBuild             := TfrmBuild.Create(Application);
           frmBuild.DATABASE    := dmIBModulo.ibSistema;
           frmBuild.TRANSACTION := dmIBModulo.ibSistemaTransaccion;
           frmBuild.SQL         := sqlExp;
           resBuild             := frmBuild.ShowModal;
        finally
           frmBuild.Free;
        end;

        if resBuild = mrOk then
        begin
           qyExplorar.SQL.Clear;
           qyExplorar.SQL.AddStrings(sqlExp.strSql);
        end
        else
           begin
              sqlExp.clearWhereExtra;
              sqlExp.construir;
              sqlExp.AddSentenciaHasta;
              sqlExp.AddSentenciaGrupo;
              sqlExp.AddSentenciaRows(awrRows);

              qyExplorar.SQL.Clear;
              qyExplorar.SQL.AddStrings(sqlExp.strSql);
           end;

        for i := 1 to sqlExp.indexParam do
        begin
           qyExplorar.ParamByName(sqlExp.dameParam(i)).Value := sqlExp.dameParamValor(i);
        end;
        qyExplorar.Open;
     end
     else
     begin
        try
           frmConstructor          := TfrmConstructor.Create(Application);
           frmConstructor.construir(self.Name, select, select2, tabla, whereAlways, campos);
           if frmConstructor.ShowModal = mrOk then
           begin
              qyExplorar.Close;
              qyExplorar.SQL.Clear;
              qyExplorar.SQL := frmConstructor.qyVista.SQL;
              Parametros;
              qyExplorar.Open;
           end;
        finally
           frmConstructor.Free;
        end;
     end;
     {
     dgExplorar.GotoFirst;
     }
  end;
end;

{
procedure TfrmExplorar.BeforePreview(Sender: TObject; AReportLink: TBasedxReportLink);
begin
   TdxComponentPrinter(Sender).PreviewOptions.WindowState := wsMaximized;
end;
}

procedure TfrmExplorar.ibImprimirClick(Sender: TObject);
var
   {
   cpPrint    : TdxComponentPrinter;
   }
   encabezado : string;
   titulo     : string;
begin
  inherited;
  if dsFuente.DataSet <> nil then
  begin
     {
     reglas.abrir_IBTabla(dmIBData.TSujetosEmpresa);
     if dmIBData.TSujetosEmpresa.FieldByName('FACTURAR_A').AsString = 'Razon Social' then
        encabezado := dmIBData.TSujetosEmpresa.FieldByName('RAZON_SOCIAL').AsString
     else
        encabezado := dmIBData.TSujetosEmpresa.FieldByName('NOMBRE').AsString;



     titulo := copy(self.Caption,10, length(self.Caption) - 9);

     cpPrint := nil;
     try
        cpPrint := TdxComponentPrinter.Create(Application);
        cpPrint.OnBeforePreview := BeforePreview;
        cpPrint.AddLink(dgExplorar);

        cpPrint.ReportLink[0].ReportTitle.Font.Name  := 'Arial';
        cpPrint.ReportLink[0].ReportTitle.Font.Size  := 12;
        cpPrint.ReportLink[0].ReportTitle.Font.Style := [];
        cpPrint.ReportLink[0].ReportTitle.Text := titulo+' '+awrTextUp;

        cpPrint.ReportLink[0].PrinterPage.PageHeader.Font.Name  := 'Arial';
        cpPrint.ReportLink[0].PrinterPage.PageHeader.Font.Size  := 14;
        cpPrint.ReportLink[0].PrinterPage.PageHeader.CenterTitle.Add(encabezado);
        cpPrint.ReportLink[0].PrinterPage.PageFooter.LeftTitle.Add(awrTextDown);
        cpPrint.ReportLink[0].PrinterPage.PageFooter.RightTitle.Add('[Date & Time Printed] Pag.[Page #] de [Total Pages]');
        cpPrint.ReportLink[0].ShrinkToPageWidth := true;
        cpPrint.Preview(True, nil);
     finally
        cpPrint.Free;
     end;

     dgExplorar.OptionsDB := [edgoCancelOnExit,edgoCanDelete,edgoCanInsert,edgoCanNavigation,edgoConfirmDelete,edgoLoadAllRecords,edgoUseBookmarks];
     }
   end;     
end;

procedure TfrmExplorar.buInicioClick(Sender: TObject);
begin
  inherited;
  dgExplorar.DataSource.DataSet.First;
end;

procedure TfrmExplorar.buAnteriorClick(Sender: TObject);
begin
  inherited;
  dgExplorar.DataSource.DataSet.Prior;
end;

procedure TfrmExplorar.buSiguienteClick(Sender: TObject);
begin
  inherited;
  dgExplorar.DataSource.DataSet.Next;
end;

procedure TfrmExplorar.buFinClick(Sender: TObject);
begin
  inherited;
  dgExplorar.DataSource.DataSet.Last;
end;

procedure TfrmExplorar.construirBusqueda;
var
   i     : integer;
   vTipo : TFieldType;
   varJ  : integer;
begin
   if (edExplorarValor.Text <> '') and (dsFuente.DataSet <> nil) then
   begin
      if (awrNvo) then
      begin
         sqlExp.clearWhereExtra;
         sqlExp.construir;

         vTipo := sqlExp.dameTipoA(awrFieldSearch);
         if vTipo in [ftDate, ftDateTime] then
         begin
            varJ     := sqlExp.AddParamIndex('P_BUSQUEDA_INI');
            sqlExp.setParam(varJ, edExplorarDel.Date, psFecha);
            
            varJ     := sqlExp.AddParamIndex('P_BUSQUEDA_FIN');
            sqlExp.setParam(varJ, edExplorarAl.Date, psFecha);

         end
         else
         if vTipo in [ftString] then
         begin
            varJ     := sqlExp.AddParamIndex('P_BUSQUEDA');
            sqlExp.setParam(varJ, '%'+edExplorarValor.Text+'%', psCadena);
         end
         else
         begin
            varJ     := sqlExp.AddParamIndex('P_BUSQUEDA');
            sqlExp.setParam(varJ, edExplorarValor.Text, psCadena);
         end;
         Parametros;
         sqlExp.AddSentenciaFind(awrFieldSearch);
         sqlExp.AddSentenciaGrupo;

         qyExplorar.SQL.Clear;
         qyExplorar.SQL.AddStrings(sqlExp.strSql);
         for i := 1 to sqlExp.indexParam do
         begin
            qyExplorar.ParamByName(sqlExp.dameParam(i)).Value := sqlExp.dameParamValor(i);
         end;
         qyExplorar.Open;
      end
      else
         begin
            qyExplorar.Close;
            qyExplorar.SQL.Clear;
            qyExplorar.SQL.Add('SELECT '+select);
            if select2 <> '' then
               qyExplorar.SQL.Add(', '+select2);
            qyExplorar.SQL.Add('FROM '+tabla);
            qyExplorar.SQL.Add('WHERE '+whereAlways+whereIfThen);
            qyExplorar.ParamByName('P_VALOR').AsString := edExplorarValor.Text;
            qyExplorar.Open;
         end;
   end;
end;

procedure TfrmExplorar.edExplorarValorKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if (Key = #13) then
  begin
     construirBusqueda;
  end
end;

procedure TfrmExplorar.FormDestroy(Sender: TObject);
var
   i : integer;
begin
  inherited;
  for i := 0 to (campos.Count - 1) do
  begin
     ARecord := campos.Items[i];
     Dispose(ARecord);
  end;

  campos.Free;
  if (sqlExp <> nil) then
     sqlExp.Free;
end;

procedure TfrmExplorar.itemArribaClick(Sender: TObject);
begin
  inherited;
  InputQuery('Arriba', 'Texto', awrTextUp);
end;

procedure TfrmExplorar.TextoAbajo1Click(Sender: TObject);
begin
  inherited;
  InputQuery('Abajo', 'Texto', awrTextDown);
end;

procedure TfrmExplorar.fcImager2DblClick(Sender: TObject);
begin
  inherited;
  if sqlExp <> nil then
  begin
     try
        frmScript := TfrmScript.Create(Application);
        frmScript.AddStrings(sqlExp.strSql);
        frmScript.ShowModal;
     finally
        frmScript.Free;
     end;
  end;
end;

procedure TfrmExplorar.laCampoDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  inherited;
  {
  Accept := Source is TdxTreeListBands;
  }
end;

procedure TfrmExplorar.laCampoDragDrop(Sender, Source: TObject; X,
  Y: Integer);
begin
  inherited;
  {
  if Source is TdxTreeListBands then
    showmessage('cambio de etiqueta');
    }
end;

procedure TfrmExplorar.buExpHoyClick(Sender: TObject);
var
   varCampo : string;
   varI     : integer;
   varJ     : integer;
   varLogica: string;
begin
  inherited;
  dmIBData.spFECHA_SERVIDOR_SH.ExecProc;

  varCampo := sqlExp.dameCampo(awrExpFecha);
  varCampo := 'F_FECHA('+varCampo+')';

  if (sqlExp.CountWhere = 0) then
     varLogica := ''
  else
     varLogica := 'AND';

  sqlExp.clearWhereExtra;
  varJ     := sqlExp.AddParamIndex('P_HOY_INI');
  sqlExp.setParam(varJ, dmIBData.spFECHA_SERVIDOR_SH.ParamByName('R_FECHA').AsDateTime, psFecha);
  varJ     := sqlExp.AddParamIndex('P_HOY_FIN');
  sqlExp.setParam(varJ, dmIBData.spFECHA_SERVIDOR_SH.ParamByName('R_FECHA').AsDateTime, psFecha);
  sqlExp.AddWhereExtra(varLogica+' ('+varCampo+' BETWEEN :P_HOY_INI AND :P_HOY_FIN)');
  sqlExp.construir;
  AddSentHoy;
  sqlExp.construirExtra;

  qyExplorar.SQL.Clear;
  qyExplorar.SQL.AddStrings(sqlExp.strSql);
  for varI := 1 to sqlExp.indexParam do
  begin
     qyExplorar.ParamByName(sqlExp.dameParam(varI)).Value := sqlExp.dameParamValor(varI);
  end;
  qyExplorar.Open;
end;

procedure TfrmExplorar.Ayer1Click(Sender: TObject);
var
   varCampo : string;
   varI     : integer;
   varJ     : integer;
   varLogica: string;
begin
  inherited;
  dmIBData.spFECHA_SERVIDOR_SH.ExecProc;

  varCampo := sqlExp.dameCampo(awrExpFecha);
  varCampo := 'F_FECHA('+varCampo+')';

  if (sqlExp.CountWhere = 0) then
     varLogica := ''
  else
     varLogica := 'AND';

  sqlExp.clearWhereExtra;
  varJ     := sqlExp.AddParamIndex('P_HOY_INI');
  sqlExp.setParam(varJ, dmIBData.spFECHA_SERVIDOR_SH.ParamByName('R_FECHA').AsDateTime - 1, psFecha);
  varJ     := sqlExp.AddParamIndex('P_HOY_FIN');
  sqlExp.setParam(varJ, dmIBData.spFECHA_SERVIDOR_SH.ParamByName('R_FECHA').AsDateTime - 1, psFecha);
  sqlExp.AddWhereExtra(varLogica+' ('+varCampo+' BETWEEN :P_HOY_INI AND :P_HOY_FIN)');
  sqlExp.construir;
  AddSentAyer;
  sqlExp.construirExtra;

  qyExplorar.SQL.Clear;
  qyExplorar.SQL.AddStrings(sqlExp.strSql);
  for varI := 1 to sqlExp.indexParam do
  begin
     qyExplorar.ParamByName(sqlExp.dameParam(varI)).Value := sqlExp.dameParamValor(varI);
  end;
  qyExplorar.Open;
end;

procedure TfrmExplorar.AyeryHoy1Click(Sender: TObject);
var
   varCampo : string;
   varI     : integer;
   varJ     : integer;
   varLogica: string;
begin
  inherited;
  dmIBData.spFECHA_SERVIDOR_SH.ExecProc;

  varCampo := sqlExp.dameCampo(awrExpFecha);
  varCampo := 'F_FECHA('+varCampo+')';

  if (sqlExp.CountWhere = 0) then
     varLogica := ''
  else
     varLogica := 'AND';

  sqlExp.clearWhereExtra;
  varJ     := sqlExp.AddParamIndex('P_HOY_INI');
  sqlExp.setParam(varJ, dmIBData.spFECHA_SERVIDOR_SH.ParamByName('R_FECHA').AsDateTime - 1, psFecha);
  varJ     := sqlExp.AddParamIndex('P_HOY_FIN');
  sqlExp.setParam(varJ, dmIBData.spFECHA_SERVIDOR_SH.ParamByName('R_FECHA').AsDateTime, psFecha);
  sqlExp.AddWhereExtra(varLogica+' ('+varCampo+' BETWEEN :P_HOY_INI AND :P_HOY_FIN)');
  sqlExp.construir;
  AddSentAmbas;
  sqlExp.construirExtra;

  qyExplorar.SQL.Clear;
  qyExplorar.SQL.AddStrings(sqlExp.strSql);
  for varI := 1 to sqlExp.indexParam do
  begin
     qyExplorar.ParamByName(sqlExp.dameParam(varI)).Value := sqlExp.dameParamValor(varI);
  end;
  qyExplorar.Open;
end;

procedure TfrmExplorar.edExplorarDelKeyPress(Sender: TObject;
  var Key: Char);
var
   i    : integer;
   varJ : integer;
begin
  inherited;
  if (Key = #13) and (dsFuente.DataSet <> nil) then
  begin
      sqlExp.clearWhereExtra;
      sqlExp.construir;

      varJ     := sqlExp.AddParamIndex('P_BUSQUEDA_INI');
      sqlExp.setParam(varJ, edExplorarDel.Date, psFecha);

      varJ     := sqlExp.AddParamIndex('P_BUSQUEDA_FIN');
      sqlExp.setParam(varJ, edExplorarAl.Date, psFecha);

      Parametros;
      sqlExp.AddSentenciaFind(awrFieldSearch);
      sqlExp.AddSentenciaGrupo;

      qyExplorar.SQL.Clear;
      qyExplorar.SQL.AddStrings(sqlExp.strSql);
      for i := 1 to sqlExp.indexParam do
      begin
         qyExplorar.ParamByName(sqlExp.dameParam(i)).Value := sqlExp.dameParamValor(i);
      end;
      qyExplorar.Open;

  end
end;

procedure TfrmExplorar.dgExplorarTitleClick(Column: TColumn);
begin
  inherited;
  FieldSearch := Column.FieldName;
  if edExplorarValor.Visible then
     edExplorarValor.SetFocus
  else
     if edExplorarDel.Visible then
        edExplorarDel.SetFocus;
end;

end.
