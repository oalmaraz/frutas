unit capturar_entidad_geografica;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  capturarMDI, IBStoredProc, IBTable,  Db, IBCustomDataSet,
  IBQuery, DBCtrls, StdCtrls, Mask,    jpeg,
   ExtCtrls,
      ImgList,  Buttons, Grids,
  DBGrids, System.ImageList;

type
  TfrmCapturar_entidad_geografica = class(TfrmCapturarMDI)
    TCapturarID: TIntegerField;
    TCapturarLINK: TIntegerField;
    TCapturarCLAVE: TIBStringField;
    TCapturarDESCRIPCION: TIBStringField;
    TCapturarCODIGO_TEL: TIBStringField;
    TCapturarIMPUESTO_AL_CONSUMO: TFloatField;
    TCapturarTIPO_GEOGRAFICO: TIBStringField;
    deClave: TDBEdit;
    deDescripcion: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    deCodigo: TDBEdit;
    ceImpuesto: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    tlArbol: TDBGrid;
    meEntidad: TDBComboBox;
    Label5: TLabel;
    ilEntidad: TImageList;
    TCapturarTIPO_ENTIDAD: TIBStringField;
    ibExpander: TBitBtn;
    fcImageBtn1: TBitBtn;
    dxDBGrid1: TDBGrid;
    Splitter1: TSplitter;
    paBotonesEntidades: TPanel;
    qyLocales: TIBQuery;
    qyLocalesR_ID: TIntegerField;
    qyLocalesR_CIUDAD: TIBStringField;
    dsLocales: TDataSource;
    spA_ENTIDAD_LOCAL: TIBStoredProc;
    spE_ENTIDAD_LOCAL: TIBStoredProc;
    buAgregar: TSpeedButton;
    buEliminar: TSpeedButton;
    {
    procedure tlArbolGetImageIndex(Sender: TObject;
      Node: TdxTreeListNode; var Index: Integer);
    procedure tlArbolGetSelectedIndex(Sender: TObject;
      Node: TdxTreeListNode; var Index: Integer);
    }
    procedure ibNuevoClick(Sender: TObject);
    procedure ibModificarClick(Sender: TObject);
    procedure tlArbolEndDrag(Sender, Target: TObject; X, Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure TCapturarBeforePost(DataSet: TDataSet);
    procedure dsFuenteDataChange(Sender: TObject; Field: TField);
    procedure ibColapsarClick(Sender: TObject);
    procedure ibExpanderClick(Sender: TObject);
    procedure buInicioClick(Sender: TObject);
    procedure buAnteriorClick(Sender: TObject);
    procedure buSiguienteClick(Sender: TObject);
    procedure buFinClick(Sender: TObject);
    procedure buAgregarClick(Sender: TObject);
    procedure buEliminarClick(Sender: TObject);
  private
    { Private declarations }
    entidad : string;
  public
    { Public declarations }
  end;

var
  frmCapturar_entidad_geografica: TfrmCapturar_entidad_geografica;

implementation

uses IBModulo, reglas_de_negocios;

{$R *.DFM}

{
procedure TfrmCapturar_entidad_geografica.tlArbolGetImageIndex(
  Sender: TObject; Node: TdxTreeListNode; var Index: Integer);
begin
  inherited;
  Index := Node.Level;
end;

procedure TfrmCapturar_entidad_geografica.tlArbolGetSelectedIndex(
  Sender: TObject; Node: TdxTreeListNode; var Index: Integer);
begin
  inherited;
  Index := Node.Level;
end;
}
procedure TfrmCapturar_entidad_geografica.ibNuevoClick(Sender: TObject);
begin
  inherited;
  dsFuente.DataSet.FieldByName('LINK').AsInteger                := 0;
  dsFuente.DataSet.FieldByName('IMPUESTO_AL_CONSUMO').AsInteger := 0;
  dsFuente.DataSet.FieldByName('TIPO_ENTIDAD').AsString         := 'Pais';
  deClave.SetFocus;
end;

procedure TfrmCapturar_entidad_geografica.ibModificarClick(
  Sender: TObject);
begin
  inherited;
  deClave.SetFocus;
end;

procedure TfrmCapturar_entidad_geografica.tlArbolEndDrag(Sender,
  Target: TObject; X, Y: Integer);
begin
  inherited;
  TCapturar.Transaction.CommitRetaining;
  Entidad := '';
end;

procedure TfrmCapturar_entidad_geografica.FormCreate(Sender: TObject);
begin
  inherited;
  reglas.refresh_IBQuery(qyLocales);
  Entidad := '';
  //tlArbol.FullExpand;
end;

procedure TfrmCapturar_entidad_geografica.TCapturarBeforePost(
  DataSet: TDataSet);
begin
  inherited;
{  if DataSet.State = dsEdit then
  begin
     if Entidad = 'Pais' then
        DataSet.FieldByName('TIPO_ENTIDAD').AsString := 'Estado'
     else
        if Entidad = 'Estado' then
           DataSet.FieldByName('TIPO_ENTIDAD').AsString := 'Ciudad'
        else
           DataSet.FieldByName('TIPO_ENTIDAD').AsString := 'Pais'
  end;}
end;

procedure TfrmCapturar_entidad_geografica.dsFuenteDataChange(
  Sender: TObject; Field: TField);
begin
  inherited;
  if TDataSource(Sender).DataSet <> nil then
     Entidad := TDataSource(Sender).DataSet.FieldByName('TIPO_ENTIDAD').AsString;
end;

procedure TfrmCapturar_entidad_geografica.ibColapsarClick(Sender: TObject);
begin
  inherited;
  //tlArbol.FullCollapse;
end;

procedure TfrmCapturar_entidad_geografica.ibExpanderClick(Sender: TObject);
begin
  inherited;
  //tlArbol.FullExpand;
end;

procedure TfrmCapturar_entidad_geografica.buInicioClick(Sender: TObject);
begin
  inherited;
  tlArbol.DataSource.Dataset.First;
end;

procedure TfrmCapturar_entidad_geografica.buAnteriorClick(Sender: TObject);
begin
  inherited;
  tlArbol.DataSource.Dataset.Prior;
end;

procedure TfrmCapturar_entidad_geografica.buSiguienteClick(
  Sender: TObject);
begin
  inherited;
  tlArbol.DataSource.Dataset.Next;
end;

procedure TfrmCapturar_entidad_geografica.buFinClick(Sender: TObject);
begin
  inherited;
  tlArbol.DataSource.Dataset.Last;
end;

procedure TfrmCapturar_entidad_geografica.buAgregarClick(
  Sender: TObject);
begin
  inherited;
  if (dsFuente.DataSet.FieldByName('TIPO_ENTIDAD').AsString = 'Ciudad') then
  begin
     spA_ENTIDAD_LOCAL.ParamByName('P_ID').AsInteger := dsFuente.DataSet.FieldByName('ID').AsInteger;
     spA_ENTIDAD_LOCAL.ExecProc;
     spA_ENTIDAD_LOCAL.Transaction.CommitRetaining;
     reglas.refresh_IBQuery(qyLocales);
  end
  else
  begin
    ShowMessage('Solamente es posible asignar entidades que sean ciudades.');
  end;
end;

procedure TfrmCapturar_entidad_geografica.buEliminarClick(
  Sender: TObject);
begin
  inherited;
  if MessageDlg('¿ Eliminar registro ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes  then
  begin
     spE_ENTIDAD_LOCAL.ParamByName('P_ID').AsInteger := dsLocales.DataSet.FieldByName('R_ID').AsInteger;
     spE_ENTIDAD_LOCAL.ExecProc;
     spE_ENTIDAD_LOCAL.Transaction.CommitRetaining;
     reglas.refresh_IBQuery(qyLocales);
  end;


end;

end.
