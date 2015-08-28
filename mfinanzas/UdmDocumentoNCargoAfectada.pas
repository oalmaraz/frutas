unit UdmDocumentoNCargoAfectada;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, IBCustomDataSet, IBQuery;

type
  TdmDocumentoNCargoAfectada = class(TDataModule)
    qyPartidas: TIBQuery;
    qyPartidasR_ID: TIntegerField;
    qyPartidasR_FECHA_ALTA: TDateTimeField;
    qyPartidasR_CLAVE: TIBStringField;
    qyPartidasR_SERIE: TIBStringField;
    qyPartidasR_CONSECUTIVO: TIntegerField;
    qyPartidasR_TOTAL: TFloatField;
    dsPartidas: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure detalle(valor : integer);
  end;

{var
  dmDocumentoNCargoAfectada: TdmDocumentoNCargoAfectada;}

implementation

uses
  IBModulo;

{$R *.DFM}

procedure TdmDocumentoNCargoAfectada.detalle(valor : integer);
begin
   qyPartidas.Close;
   qyPartidas.ParamByName('P_DOCUMENTO').AsInteger := valor;
   qyPartidas.Open;
end;

end.
