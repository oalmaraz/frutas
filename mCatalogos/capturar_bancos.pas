unit capturar_bancos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  capturar_base_sujetos, ImgList,  Db, IBStoredProc, IBTable,
   IBCustomDataSet, IBQuery,

    StdCtrls, ComCtrls,  DBCtrls, Mask,
     jpeg,  ExtCtrls,
  Menus, ExtDlgs, Buttons,
     Grids, DBGrids, System.ImageList;

type
  TfrmCapturar_bancos = class(TfrmCapturar_base_sujetos)
    TMonedas: TIBTable;
    dsMonedas: TDataSource;
    TCapturardescripcion_moneda: TStringField;
    TCapturarID: TIntegerField;
    TCapturarSUJETO: TIntegerField;
    TCapturarSUCURSAL: TIBStringField;
    TCapturarCUENTA: TIBStringField;
    TCapturarMONEDA: TIntegerField;
    TCapturarTIPO_CTA: TIntegerField;
    TTipo_de_cuentas: TIBTable;
    dsTipo_de_cuentas: TDataSource;
    TCapturarnombre_cuenta: TStringField;
    Label12: TLabel;
    deSucursal: TDBEdit;
    Label15: TLabel;
    deCuenta: TDBEdit;
    Label14: TLabel;
    leMoneda: TDBLookupComboBox;
    Label13: TLabel;
    sbRefreshTipo: TSpeedButton;
    sbRefreshMoneda: TSpeedButton;
    cbActivarEnPVta: TDBCheckBox;
    cbActivarPagosCXC: TDBCheckBox;
    cbActivarPagosCXP: TDBCheckBox;
    TCapturarACTIVAR_EN_PVTA: TIBStringField;
    TCapturarACTIVAR_PAGOS_CXC: TIBStringField;
    TCapturarACTIVAR_PAGOS_CXP: TIBStringField;
    procedure FormCreate(Sender: TObject);
    procedure sbRefreshTipoClick(Sender: TObject);
    procedure sbRefreshMonedaClick(Sender: TObject);
  private
    { Private declarations }
  protected
     procedure valores; override;
  public
    { Public declarations }
  end;

var
  frmCapturar_bancos: TfrmCapturar_bancos;

implementation

uses IBModulo, explorar_bancos, reglas_de_negocios, IBData;

{$R *.DFM}

procedure TfrmCapturar_bancos.valores;
begin
  dmIBData.TPreferencias.Filter := 'ID = 3';
  if dmIBData.TPreferencias.FieldByName('VALOR').AsInteger <> 0 then
     dsFuente.DataSet.FieldByName('MONEDA').AsInteger := dmIBData.TPreferencias.FieldByName('VALOR').AsInteger
  else
     dsFuente.DataSet.FieldByName('MONEDA').AsInteger := -3;
  dsFuente.DataSet.FieldByName('ACTIVAR_EN_PVTA').AsString   := 'No';
  dsFuente.DataSet.FieldByName('ACTIVAR_PAGOS_CXC').AsString := 'No';
  dsFuente.DataSet.FieldByName('ACTIVAR_PAGOS_CXP').AsString := 'No';
end;

procedure TfrmCapturar_bancos.FormCreate(Sender: TObject);
begin
  inherited;
  reglas.abrir_IBTabla(TMonedas);
  reglas.abrir_IBTabla(TTipo_de_cuentas);
end;

procedure TfrmCapturar_bancos.sbRefreshTipoClick(Sender: TObject);
begin
  inherited;
  reglas.abrir_IBTabla(TTipo_de_cuentas);
end;

procedure TfrmCapturar_bancos.sbRefreshMonedaClick(Sender: TObject);
begin
  inherited;
  reglas.abrir_IBTabla(TMonedas);
end;

end.


