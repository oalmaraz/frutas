unit UdmDetalleDeLaCompra;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, IBCustomDataSet, IBQuery;

type
  TdmDetalleDeLaCompra = class(TDataModule)
    qyIBXDetalle: TIBQuery;
    dsDetalle: TDataSource;
    qyIBXDetalleR_ID: TIntegerField;
    qyIBXDetalleR_CONCEPTO: TIBStringField;
    qyIBXDetalleR_CANTIDAD: TFloatField;
    qyIBXDetalleR_UNIDAD: TIntegerField;
    qyIBXDetalleR_UNIDAD_CLAVE: TIBStringField;
    qyIBXDetalleR_UNIDAD_DESCRIPCION: TIBStringField;
    qyIBXDetalleR_COSTO: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure refreshDetalle(p_id : integer);
  end;

{var
  dmDetalleDeLaCompra: TdmDetalleDeLaCompra;}

implementation

{$R *.DFM}

procedure TdmDetalleDeLaCompra.refreshDetalle(p_id : integer);
begin
   qyIBXDetalle.Close;
   qyIBXDetalle.ParamByName('P_ID').AsInteger := p_id;
   qyIBXDetalle.Open;
end;

end.
