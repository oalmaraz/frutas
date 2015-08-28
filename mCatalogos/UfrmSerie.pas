unit UfrmSerie;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
     StdCtrls, Buttons, ExtCtrls;

type
  TfrmSerie = class(TForm)
    paBotones: TPanel;
    buAceptar: TBitBtn;
    buSalir: TBitBtn;
    Label7: TLabel;
    edSerie: TEdit;
    buPEPS: TBitBtn;
    buUEPS: TBitBtn;
    procedure edSerieKeyPress(Sender: TObject; var Key: Char);
    procedure buPEPSClick(Sender: TObject);
    procedure buUEPSClick(Sender: TObject);
  private
    { Private declarations }
    awrMaterial : integer;
    awrMoneda   : integer;
  public
    { Public declarations }
  published
     property Material : integer read awrMaterial write awrMaterial;
     property Moneda   : integer read awrMoneda write awrMoneda;
  end;

var
  frmSerie: TfrmSerie;

implementation

uses
  UfrmInvSeries;

{$R *.DFM}

procedure TfrmSerie.edSerieKeyPress(Sender: TObject; var Key: Char);
begin
   if (Key = #13) and (edSerie.Text <> '') then
      buAceptar.Click;
end;

procedure TfrmSerie.buPEPSClick(Sender: TObject);
begin
   frmInvSeries := TfrmInvSeries.Create(Application);
   try
      frmInvSeries.Material := awrMaterial;
      frmInvSeries.Moneda   := awrMoneda;
      frmInvSeries.Cual     := tsPEPS;
      frmInvSeries.Open;
      if frmInvSeries.ShowModal = mrOk then
      begin
         edSerie.Text := frmInvSeries.Serie;
         edSerie.SetFocus;
      end;
   finally
     frmInvSeries.Free;
   end;
end;

procedure TfrmSerie.buUEPSClick(Sender: TObject);
begin
   frmInvSeries := TfrmInvSeries.Create(Application);
   try
      frmInvSeries.Material := awrMaterial;
      frmInvSeries.Moneda   := awrMoneda;
      frmInvSeries.Cual     := tsUEPS;
      frmInvSeries.Open;
      if frmInvSeries.ShowModal = mrOk then
      begin
         edSerie.Text := frmInvSeries.Serie;
         edSerie.SetFocus;
      end;
   finally
     frmInvSeries.Free;
   end;
end;

end.
