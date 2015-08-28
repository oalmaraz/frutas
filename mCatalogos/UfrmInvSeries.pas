unit UfrmInvSeries;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   Db, IBCustomDataSet, IBQuery,
   StdCtrls, Buttons, ExtCtrls, Grids, DBGrids;

type
  TTipoSalida = (tsPEPS, tsUEPS);

  TfrmInvSeries = class(TForm)
    dgSeries: TDBGrid;
    qyPEPS: TIBQuery;
    dsSeries: TDataSource;
    qyUEPS: TIBQuery;
    paBotones: TPanel;
    buCancelar: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure dgSeriesBTNButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
  private
    { Private declarations }
    awrMaterial : integer;
    awrMoneda   : integer;
    awrCual     : TTipoSalida;
    awrSerie    : String;
  public
    { Public declarations }

    procedure Open;
  published
     property Material : integer read awrMaterial write awrMaterial;
     property Moneda   : integer read awrMoneda write awrMoneda;
     property Cual     : TTipoSalida read awrCual write awrCual;
     property Serie    : String read awrSerie;
  end;

var
  frmInvSeries: TfrmInvSeries;

implementation

{$R *.DFM}

procedure TfrmInvSeries.Open;
begin
   if awrCual = tsPEPS then
   begin
      dsSeries.DataSet := qyPEPS;

      qyPEPS.Close;
      qyPEPS.ParamByName('P_MATERIAL').AsInteger := awrMaterial;
      qyPEPS.ParamByName('P_MEDIDA').AsInteger   := 0;
      qyPEPS.ParamByName('P_COLOR').AsInteger    := 0;
      qyPEPS.ParamByName('P_MONEDA').AsInteger   := awrMoneda;
      qyPEPS.Open;
   end
   else
   if awrCual = tsUEPS then
   begin
      dsSeries.DataSet := qyUEPS;

      qyUEPS.Close;
      qyUEPS.ParamByName('P_MATERIAL').AsInteger := awrMaterial;
      qyUEPS.ParamByName('P_MEDIDA').AsInteger   := 0;
      qyUEPS.ParamByName('P_COLOR').AsInteger    := 0;
      qyUEPS.ParamByName('P_MONEDA').AsInteger   := awrMoneda;
      qyUEPS.Open;
   end;
end;

procedure TfrmInvSeries.FormCreate(Sender: TObject);
begin
   awrCual := tsPEPS;
end;

procedure TfrmInvSeries.dgSeriesBTNButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
   awrSerie := dsSeries.DataSet.FieldByName('R_SERIE').AsString;
   self.ModalResult := mrOk;
end;

end.
