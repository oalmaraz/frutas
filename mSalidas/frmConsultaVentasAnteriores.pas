unit frmConsultaVentasAnteriores;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, IBCustomDataSet, IBQuery,  Menus, Grids, DBGrids,
  StdCtrls, Buttons,    ComCtrls
  ;

type
  TfmConsultaVentasAnteriores = class(TForm)
    Label2: TLabel;
    dxDateFechaInicial: TDateTimePicker;
    Label3: TLabel;
    dxDateFechaFinal: TDateTimePicker;
    bbBuscar: TBitBtn;
    DBGPuntoVenta: TDBGrid;
    PopupMenu1: TPopupMenu;
    Buscar1: TMenuItem;
    Salir1: TMenuItem;
    dsPuntoVenta: TDataSource;
    IBQYFacturas: TIBQuery;
    DBgDetalle: TDBGrid;
    dsPuntoVentaDetalle: TDataSource;
    IBQyFacturasDetalle: TIBQuery;
    IBQyFacturasDetalleID: TIntegerField;
    IBQyFacturasDetalleMATERIAL: TIntegerField;
    IBQyFacturasDetalleCANTIDAD: TFloatField;
    IBQyFacturasDetalleUNIDAD: TIntegerField;
    IBQyFacturasDetalleDESCRIPCION: TIBStringField;
    bbSalir: TBitBtn;
    IBQyFacturasDetallePRECIO: TFloatField;
    Label5: TLabel;
    Label9: TLabel;
    edExtension: TEdit;
    edCliente: TEdit;
    btnCliente: TBitBtn;
    btnExtension: TBitBtn;
    IBQyFacturasDetalleUNIDADESDESCRIP: TIBStringField;
    IBQyComodin: TIBQuery;
    procedure bbBuscarClick(Sender: TObject);
    procedure dsPuntoVentaDataChange(Sender: TObject; Field: TField);
    procedure btnClienteClick(Sender: TObject);
    procedure btnExtensionClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bbSalirClick(Sender: TObject);
    procedure Buscar1Click(Sender: TObject);
    procedure Salir1Click(Sender: TObject);
  private
    { Private declarations }
    vIdCliente    : integer;
    vIdExtension  : integer;
    procedure vMuestraIdClave(aTabla : string; aIdReferencia : integer ;
                             var aTextoIdClave : string);
    procedure vMuestraNombre(aTabla : string; aIdReferencia : integer ;
                             var aTextoIdClave : string);
    procedure vMuestraDescripcion(aTabla : string; aIdReferencia : integer ;
                             var aTextoIdClave : string);
  public
    { Public declarations }
  end;

var
  fmConsultaVentasAnteriores: TfmConsultaVentasAnteriores;

implementation

uses frmBusqueda, IBModulo;

{$R *.DFM}

procedure TfmConsultaVentasAnteriores.vMuestraIdClave(aTabla : string; aIdReferencia : integer ;
                             var aTextoIdClave : string);
begin
    if aTabla = 'FACTURAS' then
    begin
      IBQyComodin.SQL.Clear;
      IBQyComodin.SQL.Add(' select ID, CLAVE, FECHA_ALTA, NOMBRE  from ' + aTabla);
      IBQyComodin.SQL.Add(' WHERE ID = :aId ');
      IBQyComodin.ParamByName('aId').AsInteger :=aIdReferencia;
      IBQyComodin.Open;
      aTextoIdClave :=  IBQyComodin.fieldByName('CLAVE').AsString;
    end
    else
    if aTabla = 'MATERIALES' then
    begin
      IBQyComodin.SQL.Clear;
      IBQyComodin.SQL.Add(' select ID, CLAVE, DESCRIPCION  from ' + aTabla);
      IBQyComodin.SQL.Add(' WHERE ID = :aId ');
      IBQyComodin.ParamByName('aId').AsInteger :=aIdReferencia;
      IBQyComodin.Open;
      aTextoIdClave :=  IBQyComodin.fieldByName('DESCRIPCION').AsString;
    end
    else
    if aTabla = 'ALMACENES' then
    begin
      IBQyComodin.SQL.Clear;
      IBQyComodin.SQL.Add(' select ID, CLAVE, NOMBRE  from ' + aTabla);
      IBQyComodin.SQL.Add(' WHERE ID = :aId ');
      IBQyComodin.ParamByName('aId').AsInteger :=aIdReferencia;
      IBQyComodin.Open;
      aTextoIdClave :=  IBQyComodin.fieldByName('NOMBRE').AsString;
    end
    else
    if (aTabla =  'SUJETOS')  then
    begin
      IBQyComodin.SQL.Clear;
      IBQyComodin.SQL.Add('SELECT  SUJETOS.NOMBRE NOMBRE  FROM SUJETOS_CLIENTES, SUJETOS  ' );
      IBQyComodin.SQL.Add('WHERE SUJETOS_CLIENTES.SUJETO = SUJETOS.ID and SUJETOS_CLIENTES.ID  = :aId ');
      IBQyComodin.ParamByName('aId').AsInteger :=aIdReferencia;
      IBQyComodin.Open;
      aTextoIdClave :=  IBQyComodin.fieldByName('NOMBRE').AsString;
    end
    else
    if  ( aTabla =  'CLIENTES_EXTENSIONES') then
    begin
      IBQyComodin.SQL.Clear;
      IBQyComodin.SQL.Add(' SELECT NOMBRE FROM  ' + aTabla );
      IBQyComodin.SQL.Add(' WHERE ID = :aId ');
      IBQyComodin.ParamByName('aId').AsInteger :=aIdReferencia;
      IBQyComodin.Open;
      aTextoIdClave :=  IBQyComodin.fieldByName('NOMBRE').AsString;
    end
    else
    begin
      IBQyComodin.SQL.Clear;
      IBQyComodin.SQL.Add(' Select ID, CLAVE  from ' + aTabla);
      IBQyComodin.SQL.Add(' WHERE ID = :aId ');
      IBQyComodin.ParamByName('aId').AsInteger :=aIdReferencia;
      IBQyComodin.Open;
      aTextoIdClave := IBQyComodin.fieldByName('ID').AsString + '  '+
                      IBQyComodin.fieldByName('CLAVE').AsString;
   end;
end;


procedure TfmConsultaVentasAnteriores.vMuestraNombre(aTabla : string; aIdReferencia : integer ;
                             var aTextoIdClave : string);
begin
    begin
      IBQyComodin.SQL.Clear;
      IBQyComodin.SQL.Add(' select NOMBRE  from ' + aTabla);
      IBQyComodin.SQL.Add(' WHERE ID = :aId ');
      IBQyComodin.ParamByName('aId').AsInteger :=aIdReferencia;
      IBQyComodin.Open;
      aTextoIdClave := IBQyComodin.fieldByName('NOMBRE').AsString;
   end;
end;

procedure TfmConsultaVentasAnteriores.vMuestraDescripcion(aTabla : string; aIdReferencia : integer ;
                             var aTextoIdClave : string);
begin
    begin
      IBQyComodin.SQL.Clear;
      IBQyComodin.SQL.Add(' select DESCRIPCION  from ' + aTabla);
      IBQyComodin.SQL.Add(' WHERE ID = :aId ');
      IBQyComodin.ParamByName('aId').AsInteger :=aIdReferencia;
      IBQyComodin.Open;
      aTextoIdClave := IBQyComodin.fieldByName('DESCRIPCION').AsString;
   end;
end;

procedure TfmConsultaVentasAnteriores.bbBuscarClick(Sender: TObject);
var        
  Year, Month, Day: Word     ;
  lFecha : TDate;
begin
  IBQYFacturas.Close;
  IBQYFacturas.SQL.Clear;

  IBQYFacturas.SQL.Add('SELECT *  ');
  IBQYFacturas.SQL.Add(' FROM FACTURAS  ');
  IBQYFacturas.SQL.Add('WHERE   FECHA_ALTA BETWEEN :aFechaInicial AND :aFechaFinal + 1 ');
  IBQYFacturas.SQL.Add('AND ESTATUS <> "Cancelado" ');
  DecodeDate(dxDateFechaInicial.Date, Year, Month, Day)  ;
  lFecha := EncodeDate(Year, Month, Day);
  IBQYFacturas.ParamByName('aFechaInicial').AsDateTime :=   lFecha;
  DecodeDate(dxDateFechaFinal.Date, Year, Month, Day)  ;
  lFecha := EncodeDate(Year, Month, Day);
  IBQYFacturas.ParamByName('aFechaFinal').AsDateTime :=   lFecha;

  if vIdCliente > 0 then
  begin
    IBQYFacturas.SQL.Add('AND CLIENTE = :aCliente');
    IBQYFacturas.ParamByName('aCliente').AsInteger :=  vIdCliente ;
  end;

  if vIdExtension > 0 then
  begin
    IBQYFacturas.SQL.Add('AND EXTENSION = :aExtension');
    IBQYFacturas.ParamByName('aExtension').AsInteger :=  vIdExtension ;
  end;

  IBQYFacturas.SQL.Add(' ORDER BY FECHA_ALTA DESC  ');
  IBQYFacturas.Open;

  IBQYFacturasDetalle.Close;
  IBQYFacturasDetalle.ParamByName('aFactura').AsInteger :=  IBQYFacturas.FieldByName('Id').AsInteger;
  IBQYFacturasDetalle.Open;

end;

procedure TfmConsultaVentasAnteriores.dsPuntoVentaDataChange(
  Sender: TObject; Field: TField);
begin
  IBQyFacturasDetalle.Close;
  IBQyFacturasDetalle.ParamByName('aFactura').AsInteger :=  IBQYFacturas.FieldByName('Id').AsInteger;
  IBQyFacturasDetalle.Open;
end;

procedure TfmConsultaVentasAnteriores.btnClienteClick(Sender: TObject);
var
  lResultadoBusqueda : string;
begin
   application.CreateForm(TfmBusquedas, fmBusquedas);
   fmBusquedas.vParametros(
     'SELECT SUJETOS_CLIENTES.ID  ID , SUJETOS.CLAVE CLAVE , SUJETOS.NOMBRE NOMBRE ' +
     ' FROM SUJETOS, SUJETOS_CLIENTES',
     'WHERE SUJETOS_CLIENTES.SUJETO = SUJETOS.ID');

   fmBusquedas.ShowModal;
   if fmBusquedas.vRegresaID <> 0  then
   begin
     vIdCliente :=  fmBusquedas.vRegresaID  ;
                                                    
     if vIdCliente = -1 then
     begin
        vIdCliente := 0
     end;

     //Trae Almacen Origen
     vMuestraIdClave('SUJETOS', vIdCliente,  lResultadoBusqueda);
     edCliente.Text := lResultadoBusqueda;
   end;

   fmBusquedas.Free;


end;

procedure TfmConsultaVentasAnteriores.btnExtensionClick(Sender: TObject);
var  lResultadoBusqueda : string;
begin
  if vIdCliente > 0 then
  begin
       application.CreateForm(TfmBusquedas, fmBusquedas);
       fmBusquedas.vParametros(
         'SELECT id, clave, nombre ' +
         ' FROM CLIENTES_EXTENSIONES ',
         'WHERE  SUJETO_CLIENTE   =  '+ IntToStr( vIdCliente) );

      // fmBusquedas.vParametros('CLIENTES_EXTENSIONES');
       fmBusquedas.ShowModal;
       if fmBusquedas.vRegresaID <> 0  then
       begin
         vIdExtension :=  fmBusquedas.vRegresaID  ;
         //Trae Almacen Origen
         vMuestraIdClave('CLIENTES_EXTENSIONES', vIdExtension,  lResultadoBusqueda);
         edExtension.Text := lResultadoBusqueda;
       end;
       fmBusquedas.Free;
  end;

end;

procedure TfmConsultaVentasAnteriores.FormCreate(Sender: TObject);
begin
    vIdCliente    := 0;
    vIdExtension  := 0;
    dxDateFechaInicial.Date := Now;
    dxDateFechaFinal.Date   := Now;
end;

procedure TfmConsultaVentasAnteriores.bbSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TfmConsultaVentasAnteriores.Buscar1Click(Sender: TObject);
begin
  bbBuscar.OnClick(Sender);
end;

procedure TfmConsultaVentasAnteriores.Salir1Click(Sender: TObject);
begin
  bbSalir.OnClick(Sender);
end;

end.
