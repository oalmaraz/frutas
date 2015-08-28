unit capturar_remitentes;

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
  TfrmCapturar_remitentes = class(TfrmCapturar_base_sujetos)
    dsTransportistas: TDataSource;
    qyTransportistas: TIBQuery;
    qyTransportistasR_ID: TIntegerField;
    qyTransportistasR_CLAVE: TIBStringField;
    qyTransportistasR_NOMBRE: TIBStringField;
    TCapturarID: TIntegerField;
    TCapturarSUJETO: TIntegerField;
    TCapturarENVIAR_POR: TIntegerField;
    TCapturarclave: TStringField;
    Label12: TLabel;
    leEnviar: TDBLookupComboBox;
    sbRefreshEnviarPor: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure sbRefreshEnviarPorClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCapturar_remitentes: TfrmCapturar_remitentes;

implementation

uses IBModulo, explorar_remitentes, reglas_de_negocios;

{$R *.DFM}

procedure TfrmCapturar_remitentes.FormCreate(Sender: TObject);
begin
  inherited;
  reglas.refresh_IBQuery(qyTransportistas);
end;

procedure TfrmCapturar_remitentes.sbRefreshEnviarPorClick(Sender: TObject);
begin
  inherited;
  reglas.refresh_IBQuery(qyTransportistas);
end;

end.
