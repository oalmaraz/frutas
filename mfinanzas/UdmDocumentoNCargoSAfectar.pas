unit UdmDocumentoNCargoSAfectar;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, IBCustomDataSet, IBQuery;

type
  TdmDocumentoNCargoSAfectar = class(TDataModule)
    qyPartidas: TIBQuery;
    dsPartidas: TDataSource;
    qyPartidasR_ID: TIntegerField;
    qyPartidasR_FECHA_ALTA: TDateTimeField;
    qyPartidasR_CLAVE: TIBStringField;
    qyPartidasR_SERIE: TIBStringField;
    qyPartidasR_CONSECUTIVO: TIntegerField;
    qyPartidasR_TOTAL: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure detalle(valor : integer);
  end;

{var
  dmDocumentoNCargoSAfectar: TdmDocumentoNCargoSAfectar;}

implementation

uses
  IBModulo;

{$R *.DFM}

procedure TdmDocumentoNCargoSAfectar.detalle(valor : integer);
begin
   qyPartidas.Close;
   qyPartidas.ParamByName('P_DOCUMENTO').AsInteger := valor;
   qyPartidas.Open;
end;

end.
