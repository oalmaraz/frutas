unit UdmDocumentoNCreditoSAfectar;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  IBModulo, Db, IBCustomDataSet, IBQuery;

type
  TdmDocumentoNCreditoSAfectar = class(TDataModule)
    qyPartidas: TIBQuery;
    dsPartidas: TDataSource;
    qyPartidasR_ID: TIntegerField;
    qyPartidasR_FECHA_ALTA: TDateTimeField;
    qyPartidasR_CLAVE: TIBStringField;
    qyPartidasR_SERIE: TIBStringField;
    qyPartidasR_CONSECUTIVO: TIntegerField;
    qyPartidasR_GRANTOTAL: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure detalle(valor : integer);
  end;

{var
  dmDocumentoNCreditoSAfectar: TdmDocumentoNCreditoSAfectar;}

implementation

{$R *.DFM}

procedure TdmDocumentoNCreditoSAfectar.detalle(valor : integer);
begin
   qyPartidas.Close;
   qyPartidas.ParamByName('P_DOCUMENTO').AsInteger := valor;
   qyPartidas.Open;
end;

end.
