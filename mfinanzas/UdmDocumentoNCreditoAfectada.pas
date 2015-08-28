unit UdmDocumentoNCreditoAfectada;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, IBCustomDataSet, IBQuery;

type
  TdmDocumentoNCreditoAfectada = class(TDataModule)
    qyPartidas: TIBQuery;
    qyPartidasR_ID: TIntegerField;
    qyPartidasR_FECHA_ALTA: TDateTimeField;
    qyPartidasR_CLAVE: TIBStringField;
    qyPartidasR_SERIE: TIBStringField;
    qyPartidasR_CONSECUTIVO: TIntegerField;
    qyPartidasR_GRANTOTAL: TFloatField;
    dsPartidas: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure detalle(valor : integer);
  end;

{var
  dmDocumentoNCreditoAfectada: TdmDocumentoNCreditoAfectada;}

implementation

uses
  IBModulo;

{$R *.DFM}

procedure TdmDocumentoNCreditoAfectada.detalle(valor : integer);
begin
   qyPartidas.Close;
   qyPartidas.ParamByName('P_DOCUMENTO').AsInteger := valor;
   qyPartidas.Open;
end;

end.
