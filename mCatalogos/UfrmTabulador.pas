unit UfrmTabulador;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls,
  jpeg,  Db, IBCustomDataSet, IBStoredProc,
  Buttons;

type
  TfrmTabulador = class(TForm)
    Shape1: TShape;
    laTitulo: TLabel;
    Shape2: TShape;
    Label1: TLabel;
    edLimite2: TEdit;
    Label2: TLabel;
    edLimite1: TEdit;
    edValor: TEdit;
    Label3: TLabel;
    edClave: TEdit;
    Label4: TLabel;
    spA_TABULADOR: TIBStoredProc;
    dsRefresh: TDataSource;
    buAceptar: TBitBtn;
    buCancelar: TBitBtn;
    spM_TABULADOR: TIBStoredProc;
    edAnexo: TEdit;
    Label5: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure buAceptarClick(Sender: TObject);
    procedure buCancelarClick(Sender: TObject);
  private
    { Private declarations }
    awrId   : integer;
    awrLink : integer;
    procedure limpiar;
    procedure setRefreshDT(valor : TDataSet);
  public
    { Public declarations }
  published
     property Id : integer read awrId write awrId;
     property Link : integer read awrLink write awrLink;
     property RefreshDS : TDataSet write setRefreshDT;

  end;

var
  frmTabulador: TfrmTabulador;

implementation

uses
  IBModulo;

{$R *.DFM}

procedure TfrmTabulador.setRefreshDT(valor : TDataSet);
begin
   dsRefresh.DataSet := valor;
end;

procedure TfrmTabulador.limpiar;
begin
   edClave.Clear;
   edLimite1.Clear;
   edLimite2.Clear;
   edValor.Clear;
   edAnexo.Clear;
   edClave.SetFocus;
end;

procedure TfrmTabulador.FormActivate(Sender: TObject);
begin
   if (awrId = 0) then
      limpiar;
end;

procedure TfrmTabulador.FormCreate(Sender: TObject);
begin
   awrId     := 0;
   Self.Left := 20;
   Self.Top  := 50;
end;

procedure TfrmTabulador.buAceptarClick(Sender: TObject);
begin
   if Id = 0 then
   begin
      spA_TABULADOR.ParamByName('P_LINK').AsInteger   := Link;
      spA_TABULADOR.ParamByName('P_CLAVE').AsString   := edClave.Text;
      spA_TABULADOR.ParamByName('P_LIMITE_1').AsFloat := StrToFloat(edLimite1.Text);
      spA_TABULADOR.ParamByName('P_LIMITE_2').AsFloat := StrToFloat(edLimite2.Text);
      spA_TABULADOR.ParamByName('P_CANTIDAD').AsFloat := StrToFloat(edValor.Text);
      spA_TABULADOR.ParamByName('P_ANEXO').AsString   := edAnexo.Text;
      spA_TABULADOR.ExecProc;
      spA_TABULADOR.Transaction.CommitRetaining;
   end
   else
      begin
         spM_TABULADOR.ParamByName('P_ID').AsInteger     := Id;
         spM_TABULADOR.ParamByName('P_CLAVE').AsString   := edClave.Text;
         spM_TABULADOR.ParamByName('P_LIMITE_1').AsFloat := StrToFloat(edLimite1.Text);
         spM_TABULADOR.ParamByName('P_LIMITE_2').AsFloat := StrToFloat(edLimite2.Text);
         spM_TABULADOR.ParamByName('P_CANTIDAD').AsFloat := StrToFloat(edValor.Text);
         spM_TABULADOR.ParamByName('P_ANEXO').AsString   := edAnexo.Text;
         spM_TABULADOR.ExecProc;
         spM_TABULADOR.Transaction.CommitRetaining;
      end;

   dsRefresh.DataSet.Close;
   dsRefresh.DataSet.Open;

   if id = 0 then
      limpiar
   else
      close;
end;

procedure TfrmTabulador.buCancelarClick(Sender: TObject);
begin
   Close;
end;

end.
