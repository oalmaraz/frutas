unit UfrmFacturasGastos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls,  Db,
  IBCustomDataSet, IBStoredProc;

type
  TfrmFacturasGastos = class(TForm)
    Bevel1: TBevel;
    paAdmin: TPanel;
    Panel34: TPanel;
    Label71: TLabel;
    laF1: TLabel;
    Panel35: TPanel;
    Label73: TLabel;
    laEsc: TLabel;
    laCliente: TLabel;
    edGasto: TEdit;
    edFactura: TEdit;
    Label86: TLabel;
    edImporte: TEdit;
    Label19: TLabel;
    spA_GASTO_FACTURA: TIBStoredProc;
    procedure laEscClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edGastoButtonClick(Sender: TObject; AbsoluteIndex: Integer);
    procedure laF1Click(Sender: TObject);
  private
    { Private declarations }
    awrIdent : integer;
    awrLink  : integer;
    
    procedure presionoTeclado(Sender : TObject; Key : word);

    function validacion : boolean;
  public
    { Public declarations }
  published
     property IDENT : integer read awrIdent write awrIdent;
     property LINK  : integer read awrLink  write awrLink;
  end;

var
  frmFacturasGastos: TfrmFacturasGastos;

implementation

uses
  UfrmSeleccionarCGastos, IBModulo;

{$R *.DFM}

function TfrmFacturasGastos.validacion : boolean;
var
   rsp : boolean;
begin
   rsp := false;
   if (edGasto.Tag    <> 0 ) and
      (edFactura.Text <> '') then
      rsp := true
   else
   if edGasto.Tag = 0 then
   begin
     ShowMessage('Falta capturar el concepto de gasto.');
   end
   else
   if edFactura.Text = '' then
   begin
     ShowMessage('Falta capturar la Factura.');
   end ;

   result := rsp;
end;

procedure TfrmFacturasGastos.presionoTeclado(Sender : TObject; Key : word);
begin
   case Key of
       13 : begin //Enter
               if edGasto.Focused and (edGasto.Text <> '')  then
                  edGastoButtonClick(Sender, 0);
            end;
       27 : begin //Esc
              laEscClick(Sender);
            end;
      112 : begin //F1
              laF1Click(Sender);
            end;
   end;

   if (key in [13, 27, 112]) and (edGasto.Visible) then
      edGasto.SetFocus;
end;


procedure TfrmFacturasGastos.laEscClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmFacturasGastos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   presionoTeclado(Sender, Key);
end;

procedure TfrmFacturasGastos.edGastoButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
   procedure interno;
   begin
      edGasto.Tag  := frmSeleccionarCGastos.ID;
      edGasto.Text := frmSeleccionarCGastos.CONCEPTO;
      //edGasto.SetSelection(Length(edGasto.Text),Length(edGasto.Text),false);
   end;
begin
   case AbsoluteIndex of
     0 : begin
            frmSeleccionarCGastos := TfrmSeleccionarCGastos.Create(Application);
            try
               frmSeleccionarCGastos.DATABASE    := dmIBModulo.ibSistema;
               frmSeleccionarCGastos.TRANSACTION := dmIBModulo.ibSistemaTransaccion;
               frmSeleccionarCGastos.edDato.Text := edGasto.Text;
               if frmSeleccionarCGastos.abrirConsulta then
               begin
                  frmSeleccionarCGastos.ShowModal;
                  if frmSeleccionarCGastos.ACEPTAR then
                  begin
                     interno;
                  end;
               end
               else
                  begin
                     interno;
                  end;
            finally
               frmSeleccionarCGastos.Free;
            end;

            if edGasto.Tag <> 0 then
               edFactura.SetFocus
            else
               edGasto.SetFocus;
         end;
     1 : begin
            edGasto.Text := '';
            edGasto.Tag  := 0;
         end;
   end;
end;

procedure TfrmFacturasGastos.laF1Click(Sender: TObject);
begin
   if validacion then
   begin
      spA_GASTO_FACTURA.ParamByName('P_ID').AsInteger         := awrIdent;
      spA_GASTO_FACTURA.ParamByName('P_LINK').AsInteger       := awrLink;
      spA_GASTO_FACTURA.ParamByName('P_LINK_GASTO').AsInteger := edGasto.Tag;
      spA_GASTO_FACTURA.ParamByName('P_FACTURA').AsString     := edFactura.Text;
      spA_GASTO_FACTURA.ParamByName('P_IMPORTE').AsFloat      := StrToFloat(edImporte.Text);
      spA_GASTO_FACTURA.ExecProc;
      spA_GASTO_FACTURA.Transaction.CommitRetaining;

      Close;
   end;
end;

end.
