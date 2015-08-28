unit capturar_empresa;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  capturar_base_sujetos,  DBCtrls,
   Menus, ExtDlgs, ImgList,  Db, IBStoredProc,
  IBTable,  IBCustomDataSet, IBQuery,
   Buttons, ExtCtrls,
      StdCtrls, ComCtrls, 
  Mask,    jpeg,

   Grids, DBGrids,  System.ImageList;

type
  TfrmCapturar_empresa = class(TfrmCapturar_base_sujetos)
    TCapturarID: TIntegerField;
    TCapturarSUJETO: TIntegerField;
    TCapturarID_INFORMAR: TIntegerField;
    TCapturarESTATUS: TIBStringField;
    cbEmpresas: TDBLookupComboBox;
    Label12: TLabel;
    TEmpresas: TIBTable;
    dsEmpresas: TDataSource;
    TEmpresasID: TIntegerField;
    TEmpresasNOMBRE: TIBStringField;
    TEmpresasNOMBRE_AWR: TIBStringField;
    Label13: TLabel;
    qyEmpresaUpdate: TIBQuery;
    lfBaseDeDatos: TDBText;
    TCapturarTILEMODE: TIBStringField;
    Label14: TLabel;
    cbImagenPresentacion: TDBComboBox;
    buLoad: TBitBtn;
    buOriginal: TBitBtn;
    buCFD: TBitBtn;
    qyCFD: TIBQuery;
    TCapturarCFD: TIntegerField;
    spA_CFD_EMPRESA: TIBStoredProc;
    spM_CFD_EMPRESA: TIBStoredProc;
    meCertificado: TDBMemo;
    dsCFD: TDataSource;
    mePKEY: TDBMemo;
    procedure dsFuenteDataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
    procedure ibNuevoClick(Sender: TObject);
    procedure ibGuardarClick(Sender: TObject);
    procedure buCFDClick(Sender: TObject);
  private
    { Private declarations }
    awrRuta : string;
  protected
    procedure valores;override;
  public
    { Public declarations }
  end;

var
  frmCapturar_empresa: TfrmCapturar_empresa;

implementation

uses  reglas_de_negocios, IBModulo, menu, UfrmCFD;

{$R *.DFM}

procedure WinExecNoWait32(FileName:String; Visibility : integer);
{Ejectuta el programa y espera a que termine.
Las opciones de visibilidad son las típicas
en estos casos: SW_HIDE, SW_MAXIMIZE, SW_MINIMIZE, SW_RESTORE,
                SW_SHOW, SW_SHOWDEFAULT, SW_SHOWMAXIMIZED,
                SW_SHOWMINIMIZED, SW_SHOWMINNOACTIVE, SW_SHOWNA,
                SW_SHOWNOACTIVATE, SW_SHOWNORMAL
                Si necesitas más información sobre estas opciones
                busca la función ShowWindow en la ayuda del Api de
                Windows}
var
  zAppName:array[0..512] of char;
  zCurDir:array[0..255] of char;
  WorkDir:String;
  StartupInfo:TStartupInfo;
  ProcessInfo:TProcessInformation;
begin
  StrPCopy(zAppName,FileName);
  GetDir(0,WorkDir);
  StrPCopy(zCurDir,WorkDir);
  FillChar(StartupInfo,Sizeof(StartupInfo),#0);
  StartupInfo.cb := Sizeof(StartupInfo);

  StartupInfo.dwFlags := STARTF_USESHOWWINDOW;
  StartupInfo.wShowWindow := Visibility;
  CreateProcess(nil,
    zAppName,
    nil,
    nil,
    false,
    CREATE_NEW_CONSOLE or
    NORMAL_PRIORITY_CLASS,
    nil,
    nil,
    StartupInfo,
    ProcessInfo);
end;

procedure TfrmCapturar_empresa.valores;
begin
  dsFuente.DataSet.FieldByName('ID').AsInteger     := 1;
  dsFuente.DataSet.FieldByName('ESTATUS').AsString := 'Alta';
end;

procedure TfrmCapturar_empresa.dsFuenteDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if dsFuente.DataSet <> nil then
  begin
     ibNuevo.Enabled := dsFuente.DataSet.IsEmpty;
  end;
end;

procedure TfrmCapturar_empresa.FormCreate(Sender: TObject);
begin
   awrRuta := ExtractFileDir(Application.ExeName) + '\';
   reglas.abrir_IBTabla(TEmpresas);
   inherited;
end;

procedure TfrmCapturar_empresa.ibNuevoClick(Sender: TObject);
begin
//  inherited;
  TCapturar.Insert;
  pcSujetos.ActivePage := tsDatos;
  valores;
  ibGuardar.Click;
  ibModificar.Click;
end;

procedure TfrmCapturar_empresa.ibGuardarClick(Sender: TObject);
var
   nombre : string;
begin
  inherited;
  if dsFuente.DataSet.FieldByName('ID_INFORMAR').AsString <> '' then
  begin
     if dsSujetos.DataSet.FieldByName('FACTURAR_A').AsString = 'Razon Social' then
        nombre := dsSujetos.DataSet.FieldByName('RAZON_SOCIAL').AsString
     else
        nombre := dsSujetos.DataSet.FieldByName('NOMBRE').AsString;
     qyEmpresaUpdate.ParamByName('P_NOMBRE').AsString := nombre;
     qyEmpresaUpdate.ParamByName('P_ID').AsInteger    := dsFuente.DataSet.FieldByName('ID_INFORMAR').AsInteger;
     qyEmpresaUpdate.ExecSQL;
     qyEmpresaUpdate.Transaction.CommitRetaining;
     reglas.abrir_IBTabla(TEmpresas);
  end;
end;

procedure TfrmCapturar_empresa.buCFDClick(Sender: TObject);
var
   arch : string;
{   StreamCer : TMemoryStream;
   StreamKey : TMemoryStream;}
begin
  inherited;
  arch := awrRuta + 'CFD\' + 'awrCFDCfg.exe';
  if FileExists(arch) then
  begin
     WinExecNoWait32(arch, SW_SHOWDEFAULT);
  end
  else
     ShowMessage('Falta archivo: '+ arch);


{  qyCFD.Close;
  qyCFD.ParamByName('P_ID').AsInteger := dsFuente.DataSet.FieldByName('CFD').AsInteger;
  qyCFD.Open;
  frmCFD := TfrmCFD.Create(Application);
  try
     StreamCer := TMemoryStream.Create;
     StreamKey := TMemoryStream.Create;
     try
        TBlobField(qyCFD.FieldByName('R_CERTIFICADO')).SaveToStream(StreamCer);
        TBlobField(qyCFD.FieldByName('R_PKEY')).SaveToStream(StreamKey);
        StreamCer.Position := 0;
        StreamKey.Position := 0;
        frmCFD.meCertificado.Lines.LoadFromStream(StreamCer);
        frmCFD.mePKEY.Lines.LoadFromStream(StreamKey);
     finally
        StreamCer.Free;
        StreamKey.Free;
     end;

     frmCFD.ANIO        := qyCFD.FieldByName('R_ANIO_APROBACION').AsString;
     frmCFD.NUM         := qyCFD.FieldByName('R_APROBACION').AsString;
     frmCFD.SERIE       := qyCFD.FieldByName('R_SERIE').AsString;
     frmCFD.F_INI       := qyCFD.FieldByName('R_FOLIO_INI').AsInteger;
     frmCFD.F_FIN       := qyCFD.FieldByName('R_FOLIO_FIN').AsInteger;
     frmCFD.SSL         := qyCFD.FieldByName('R_RUTA_OPEN_SSL').AsString;
     frmCFD.CER         := qyCFD.FieldByName('R_RUTA_CER').AsString;
     frmCFD.KEY         := qyCFD.FieldByName('R_RUTA_KEY').AsString;
     frmCFD.NUM_CER     := qyCFD.FieldByName('R_NUM_CER').AsString;
     frmCFD.INICIAL     := qyCFD.FieldByName('R_VIGENCIA_INI').AsDateTime;
     frmCFD.FINAL       := qyCFD.FieldByName('R_VIGENCIA_FIN').AsDateTime;
     frmCFD.CLAVE       := qyCFD.FieldByName('R_CLAVE_CER').AsString;

     frmCFD.NOMBRE  := deRazon.Text;
     frmCFD.CALLE   := deCalle.Text + ' ' + deNumExt.Text;
     frmCFD.COLONIA := deColonia.Text;
     frmCFD.CIUDAD  := leCiudades.Text;
     frmCFD.CP      := deCP.Text;
     frmCFD.RFC     := deRFC.Text;
     if frmCFD.ShowModal = mrOk then
     begin
        //se agrega registro
        if qyCFD.FieldByName('R_ID').AsInteger = 0 then
        begin
           StreamCer := TMemoryStream.Create;
           StreamKey := TMemoryStream.Create;
           try
             frmCFD.meCertificado.Lines.SaveToStream(StreamCer);
             frmCFD.mePKEY.Lines.SaveToStream(StreamKey);
             StreamCer.Position := 0;
             StreamKey.Position := 0;

             spA_CFD_EMPRESA.ParamByName('P_ID').AsInteger             := dsFuente.DataSet.FieldByName('ID').AsInteger;
             spA_CFD_EMPRESA.ParamByName('P_APROBACION').AsString      := frmCFD.edNumAprobacion.Text;
             spA_CFD_EMPRESA.ParamByName('P_ANIO_APROBACION').AsString := frmCFD.edAnio.Text;
             spA_CFD_EMPRESA.ParamByName('P_SERIE').AsString           := frmCFD.edSerie.Text;
             spA_CFD_EMPRESA.ParamByName('P_FOLIO_INI').AsInteger      := StrToInt(FormatFloat('########0',frmCFD.edInicial.Value));
             spA_CFD_EMPRESA.ParamByName('P_FOLIO_FIN').AsInteger      := StrToInt(FormatFloat('########0',frmCFD.edFinal.Value));
             spA_CFD_EMPRESA.ParamByName('P_SSL').AsString             := frmCFD.edSSL.Text;
             spA_CFD_EMPRESA.ParamByName('P_CER').AsString             := frmCFD.edCer.Text;
             spA_CFD_EMPRESA.ParamByName('P_KEY').AsString             := frmCFD.edKey.Text;
             spA_CFD_EMPRESA.ParamByName('P_VIGENCIA_INI').AsDatetime  := frmCFD.edVigenciaInicial.Date;
             spA_CFD_EMPRESA.ParamByName('P_VIGENCIA_FIN').AsDatetime  := frmCFD.edVigenciaFinal.Date;
             spA_CFD_EMPRESA.ParamByName('P_CLAVE_CER').AsString       := frmCFD.edClave.Text;
             spA_CFD_EMPRESA.ParamByName('P_NUM_CER').AsString         := frmCFD.edNumCertificado.Text;
             spA_CFD_EMPRESA.ParamByName('P_CERTIFICADO').LoadFromStream(StreamCer, ftMemo);
             spA_CFD_EMPRESA.ParamByName('P_PKEY').LoadFromStream(StreamKey, ftMemo);
             spA_CFD_EMPRESA.ExecProc;
             spA_CFD_EMPRESA.Transaction.CommitRetaining;
           finally
              StreamCer.Free;
              StreamKey.Free;
           end;
        end
        else //se modifica registro
        begin
           StreamCer := TMemoryStream.Create;
           StreamKey := TMemoryStream.Create;
           try
             frmCFD.meCertificado.Lines.SaveToStream(StreamCer);
             frmCFD.mePKEY.Lines.SaveToStream(StreamKey);
             StreamCer.Position := 0;
             StreamKey.Position := 0;

             spM_CFD_EMPRESA.ParamByName('P_ID').AsInteger             := qyCFD.FieldByName('R_ID').AsInteger;
             spM_CFD_EMPRESA.ParamByName('P_APROBACION').AsString      := frmCFD.edNumAprobacion.Text;
             spM_CFD_EMPRESA.ParamByName('P_ANIO_APROBACION').AsString := frmCFD.edAnio.Text;
             spM_CFD_EMPRESA.ParamByName('P_SERIE').AsString           := frmCFD.edSerie.Text;
             spM_CFD_EMPRESA.ParamByName('P_FOLIO_INI').AsInteger      := StrToInt(FormatFloat('########0',frmCFD.edInicial.Value));
             spM_CFD_EMPRESA.ParamByName('P_FOLIO_FIN').AsInteger      := StrToInt(FormatFloat('########0',frmCFD.edFinal.Value));
             spM_CFD_EMPRESA.ParamByName('P_SSL').AsString             := frmCFD.edSSL.Text;
             spM_CFD_EMPRESA.ParamByName('P_CER').AsString             := frmCFD.edCer.Text;
             spM_CFD_EMPRESA.ParamByName('P_KEY').AsString             := frmCFD.edKey.Text;
             spM_CFD_EMPRESA.ParamByName('P_VIGENCIA_INI').AsDatetime  := frmCFD.edVigenciaInicial.Date;
             spM_CFD_EMPRESA.ParamByName('P_VIGENCIA_FIN').AsDatetime  := frmCFD.edVigenciaFinal.Date;
             spM_CFD_EMPRESA.ParamByName('P_CLAVE_CER').AsString       := frmCFD.edClave.Text;;
             spM_CFD_EMPRESA.ParamByName('P_NUM_CER').AsString         := frmCFD.edNumCertificado.Text;
             spM_CFD_EMPRESA.ParamByName('P_CERTIFICADO').LoadFromStream(StreamCer, ftMemo);
             spM_CFD_EMPRESA.ParamByName('P_PKEY').LoadFromStream(StreamKey, ftMemo);
             spM_CFD_EMPRESA.ExecProc;
             spM_CFD_EMPRESA.Transaction.CommitRetaining;
           finally
              StreamCer.Free;
              StreamKey.Free;
           end;
        end;
        TCapturar.Post;
        reglas.abrir_IBTabla(TCapturar);
     end;
  finally
     frmCFD.Free;
  end;}
end;

end.
