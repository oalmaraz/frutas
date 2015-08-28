unit UfrmEstatusDestinatarios;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls,
  Db, IBCustomDataSet, IBQuery,
  IBStoredProc, Grids, DBGrids;


type
  TfrmEstatusDestinatarios = class(TForm)
    paBotones: TPanel;
    buGuardar: TBitBtn;
    buSalir: TBitBtn;
    dsPartidas: TDataSource;
    qyPartidas: TIBQuery;
    spA_ESTATUS_PROCESOS_MAIL: TIBStoredProc;
    spE_ESTATUS_PROCESOS_MAIL: TIBStoredProc;
    Label2: TLabel;
    edNombre: TEdit;
    edLocal: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    edDominio: TEdit;
    Label5: TLabel;
    dgPartidas: TDBGrid;
    qyPartidasR_ID: TIntegerField;
    qyPartidasR_EPD: TIntegerField;
    qyPartidasR_NOMBRE: TIBStringField;
    qyPartidasR_CORREO: TIBStringField;
    procedure FormCreate(Sender: TObject);
    procedure buGuardarClick(Sender: TObject);
    procedure dgPartidasELIMINARButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
  private
    { Private declarations }
    awrQuien : integer;
    procedure setQuien(valor : integer);
  public
    { Public declarations }
  published
     property QUIEN : integer read awrQuien write setQuien;
  end;

var
  frmEstatusDestinatarios: TfrmEstatusDestinatarios;

implementation

uses
  IBModulo, reglas_de_negocios;

{$R *.DFM}

procedure TfrmEstatusDestinatarios.setQuien(valor : integer);
begin
   awrQuien := valor;

   qyPartidas.Close;
   qyPartidas.ParamByName('P_QUIEN').AsInteger := awrQuien;
   qyPartidas.Open;

   dgPartidas.DataSource.DataSet.First;
end;

procedure TfrmEstatusDestinatarios.FormCreate(Sender: TObject);
begin
   awrQuien := 0;
end;

procedure TfrmEstatusDestinatarios.buGuardarClick(Sender: TObject);
begin
   spA_ESTATUS_PROCESOS_MAIL.ParamByName('P_QUIEN').AsInteger  := awrQuien;
   spA_ESTATUS_PROCESOS_MAIL.ParamByName('P_NOMBRE').AsString  := edNombre.Text;
   spA_ESTATUS_PROCESOS_MAIL.ParamByName('P_LOCAL').AsString   := edLocal.Text;
   spA_ESTATUS_PROCESOS_MAIL.ParamByName('P_DOMINIO').AsString := edDominio.Text;
   spA_ESTATUS_PROCESOS_MAIL.ExecProc;
   spA_ESTATUS_PROCESOS_MAIL.Transaction.CommitRetaining;

   reglas.refresh_IBQuery(qyPartidas);
   edNombre.Clear;
   edLocal.Clear;
   edDominio.Clear;

   edNombre.SetFocus;
end;

procedure TfrmEstatusDestinatarios.dgPartidasELIMINARButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
begin
  if MessageDlg('¿ Eliminar registro ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes  then
  begin
      spE_ESTATUS_PROCESOS_MAIL.ParamByName('P_ID').AsInteger := dsPartidas.DataSet.FieldByName('R_ID').AsInteger;
      spE_ESTATUS_PROCESOS_MAIL.ExecProc;
      spE_ESTATUS_PROCESOS_MAIL.Transaction.CommitRetaining;

      reglas.refresh_IBQuery(qyPartidas);
  end;
end;

end.
