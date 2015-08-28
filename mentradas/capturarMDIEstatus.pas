unit capturarMDIEstatus;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  capturarMDI, IBStoredProc, IBTable,  Db, IBCustomDataSet,
  IBQuery, StdCtrls, Mask, DBCtrls,    jpeg,
   ExtCtrls, Buttons;

type
  TfrmCapturarMDIEstatus = class(TfrmCapturarMDI)
    laHEstatus: TLabel;
    qyEstatus: TIBQuery;
    dsEstatus: TDataSource;
    spEstatus: TIBStoredProc;
    edHEstatus: TDBEdit;
    buAplicar: TBitBtn;
    cbHEstatus: TDBLookupComboBox;
    procedure FormCreate(Sender: TObject);
    procedure dsFuenteDataChange(Sender: TObject; Field: TField);
    procedure cbHEstatusChange(Sender: TObject);
    procedure buAplicarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCapturarMDIEstatus: TfrmCapturarMDIEstatus;

implementation

uses
  reglas_de_negocios, UfrmAcceso;

{$R *.DFM}

procedure TfrmCapturarMDIEstatus.FormCreate(Sender: TObject);
begin
  inherited;
  reglas.refresh_IBQuery(qyEstatus);
end;

procedure TfrmCapturarMDIEstatus.dsFuenteDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if dsFuente.DataSet <> nil then
  begin
     buAplicar.Enabled := false;
  end;
end;

procedure TfrmCapturarMDIEstatus.cbHEstatusChange(Sender: TObject);
begin
  inherited;
  if (cbHEstatus.Text <> '') and (cbHEstatus.Text <> awrStatus.EstatusSel) then
  begin
     awrStatus.estatusSel   := dsEstatus.DataSet.FieldByName('R_ESTATUS').AsString;
     awrStatus.autorizacion := dsEstatus.DataSet.FieldByName('R_AUTORIZACION').AsString = 'Si';
     awrStatus.storeproc    := dsEstatus.DataSet.FieldByName('R_STOREPROC').AsString;
     awrStatus.nivel        := dsEstatus.DataSet.FieldByName('R_NIVEL').AsInteger;
     awrStatus.id           := dsEstatus.DataSet.FieldByName('R_ID').AsInteger;
     awrStatus.correo       := dsEstatus.DataSet.FieldByName('R_CORREO').AsString = 'Si';
     awrStatus.unico        := dsEstatus.DataSet.FieldByName('R_USUARIO').AsInteger;
     awrStatus.unico_n      := dsEstatus.DataSet.FieldByName('R_USUARIO_N').AsString;
     awrStatus.imprimir     := dsEstatus.DataSet.FieldByName('R_IMPRIMIR').AsString = 'Si';

     dsFuente.DataSet.FieldByName('ESTATUS').AsString := awrStatus.estatusSel;

     buAplicar.Enabled := true;
     ibGuardar.Enabled := false;
  end;
end;

procedure TfrmCapturarMDIEstatus.buAplicarClick(Sender: TObject);
var
   ejecutar  : boolean;
begin
  inherited;
  ejecutar := TRUE;
  dsFuente.DataSet.FieldByName('ESTATUS').AsString := awrStatus.estatusAnt;
  dsFuente.DataSet.Post;
  if (awrStatus.autorizacion) and (awrStatus.nivel > reglas.dameUsuarioNivel) then
  begin
     try
        Application.CreateForm(TfrmAcceso, frmAcceso);
        frmAcceso.UnicoN    := awrStatus.unico_n;
        frmAcceso.Unico     := awrStatus.unico;
        frmAcceso.Nivel     := awrStatus.nivel;
        frmAcceso.Status    := awrStatus.estatusSel;
        frmAcceso.ShowModal;
        ejecutar := frmAcceso.Rsp;
     finally
        frmAcceso.Free;
     end;
  end;

  if ejecutar then
  begin
     if awrStatus.imprimir then
     begin
        ibImprimir.Click;
     end;

     spEstatus.Params.Clear;
     spEstatus.StoredProcName := awrStatus.storeproc;
     spEstatus.Params.CreateParam(ftInteger,'P_ID',ptInput);
     spEstatus.ParamByName('P_ID').AsInteger := awrStatus.idEjecutar;
     spEstatus.ExecProc;
     spEstatus.Transaction.CommitRetaining;

     awrStatus.estatusSel := '';
     reglas.abrir_IBTabla(TCapturar);

     if awrStatus.correo then
     begin
        mensajes;
     end;
  end;
end;

end.
