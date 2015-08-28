unit UdmHorizontal;

interface

uses
   UTipos,  IBModulo, Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  IBCustomDataSet, IBQuery, Db,  IBTable, dbgrids;

type
  TdmHorizontal = class(TDataModule)
    dsVerMaterialesMedidas: TDataSource;
    qyIBXVerMaterialesMedidas: TIBQuery;
    qyIBXVerMaterialesMedidasR_ID: TIntegerField;
    qyIBXVerMaterialesMedidasR_ID_MEDIDA: TIntegerField;
    qyIBXVerMaterialesMedidasR_DESCRIPCION: TIBStringField;
    qyIBXVerMaterialesMedidasR_CODIGO_BARRAS: TIBStringField;
    qyIBXColumnas: TIBQuery;
    qyIBXColumnasCUANTOS: TIntegerField;
    qyIBXVerMaterialesMedidasR_ORDEN: TIntegerField;
    dsMaterialesColores: TDataSource;
    qyIBXMaterialesColores: TIBQuery;
    qyIBXRenglones: TIBQuery;
    qyIBXRenglonesCUANTOS: TIntegerField;
    TIBXPreferencias: TIBTable;
    TIBXPreferenciasID: TIntegerField;
    TIBXPreferenciasNOMBRE: TIBStringField;
    TIBXPreferenciasTIPO: TIBStringField;
    TIBXPreferenciasVALOR: TIBStringField;
    dsPreferencias: TDataSource;
    qyIBXMaterialesColoresR_ORDEN: TIntegerField;
    qyIBXMaterialesColoresR_COLOR: TIntegerField;
    qyIBXMaterialesColoresR_COLOR_NOMBRE: TIBStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    columnas  : integer;
    renglones : integer;
    activarColores : boolean;
  public
    { Public declarations }
    procedure refreshMedidas(pMaterial : integer);
    procedure refreshColores(pMaterial : integer);
    procedure titulosColumnas(rejilla : TDBGrid);
    procedure tituloColumnas(rejilla : TDBGrid);
    procedure titulosRenglones(rejilla : TDBGrid);
    procedure tituloRenglones(rejilla : TDBGrid);
    function dameColumnas : integer;
    function dameRenglones : integer;
    function colores : boolean;
    function medida(columna : integer) : integer;
    function color(renglon : integer) : integer;
  end;

implementation

{$R *.DFM}

function TdmHorizontal.colores : boolean;
begin
   Result := activarColores;
end;

function TdmHorizontal.dameColumnas : integer;
begin
   Result := columnas;
end;

function TdmHorizontal.dameRenglones : integer;
begin
   Result := renglones;
end;

procedure TdmHorizontal.refreshColores(pMaterial : integer);
begin
   qyIBXMaterialesColores.Close;
   qyIBXMaterialesColores.ParamByName('P_MATERIAL').AsInteger := pMaterial;
   qyIBXMaterialesColores.Open;
   qyIBXRenglones.Close;
   qyIBXRenglones.ParamByName('P_MATERIAL').AsInteger := pMaterial;
   qyIBXRenglones.Open;
   renglones := qyIBXRenglones.FieldByName('CUANTOS').AsInteger;
end;

function TdmHorizontal.medida(columna : integer) : integer;
var
   tmp : integer;
begin
   if dsVerMaterialesMedidas.DataSet.Locate('R_ORDEN',columna,[loCaseInsensitive]) then
      tmp := dsVerMaterialesMedidas.DataSet.FieldByName('R_ID_MEDIDA').AsInteger
   else
      tmp := -3;
   Result := tmp;
end;

function TdmHorizontal.color(renglon : integer) : integer;
var
   tmp : integer;
begin
   if dsMaterialesColores.DataSet.Locate('R_ORDEN',renglon,[loCaseInsensitive]) then
      tmp := dsMaterialesColores.DataSet.FieldByName('R_COLOR').AsInteger
   else
      tmp := -3;
   Result := tmp;
end;

procedure TdmHorizontal.tituloRenglones(rejilla : TDBGrid);
var
  //N : TdxTreeListNode;
  primero : boolean;
begin
   primero := true;
   {
   if activarColores then
   begin
      dsMaterialesColores.DataSet.First;
      while not(dsMaterialesColores.DataSet.Eof) do
      begin
         if primero then
         begin
            N := rejilla.Insert(rejilla.Items[0]);
            N.Values[0] := dsMaterialesColores.DataSet.FieldByName('R_COLOR_NOMBRE').AsString;
            primero := false;
         end
         else
         begin
            N := rejilla.Add;
            N.Values[0] := dsMaterialesColores.DataSet.FieldByName('R_COLOR_NOMBRE').AsString;
         end;
         dsMaterialesColores.DataSet.Next;
      end;
   end
   else
   begin
      N := rejilla.Insert(rejilla.Items[0]);
      N.Values[0] := 'Cantidad';
   end;
   N := rejilla.Add;
   N.Values[0] := 'TOTALES';
   }
end;

procedure TdmHorizontal.titulosRenglones(rejilla : TDBGrid);
var
   i : integer;
begin
   //se agregan 2 renglones:
   //un renglon para titulos de colores,
   //otra renglon para totales
   inc(renglones,2);
   {
   rejilla.RowCount := renglones;
   if activarColores then
   begin
      for i := 1 to (renglones - 2)  do
      begin
         dsMaterialesColores.DataSet.Locate('R_ORDEN',i,[loCaseInsensitive]);
         rejilla.Cells[0, i] := dsMaterialesColores.DataSet.FieldByName('R_COLOR_NOMBRE').AsString;
      end;
      rejilla.Cells[0, renglones - 1] := 'Totales';
   end
   else
      begin
         rejilla.Cells[0, 1] := 'Cantidad';
      end;
      }
end;

procedure TdmHorizontal.tituloColumnas(rejilla : TDBGrid);
var
   i : integer;
begin
{
   i := 1;
   dsVerMaterialesMedidas.DataSet.First;
   while not(dsVerMaterialesMedidas.DataSet.Eof) do
   begin
      rejilla.Columns[i].Visible := true;
      rejilla.Columns[i].Caption := dsVerMaterialesMedidas.DataSet.FieldByName('R_DESCRIPCION').AsString;
      dsVerMaterialesMedidas.DataSet.Next;
      inc(i,1);
   end;
   }
end;

procedure TdmHorizontal.titulosColumnas(rejilla : TDBGrid);
var
   i : integer;
begin
   //se agregan 2 columnas:
   //una columna para titulos de medidas,
   //otra columna para totales
   {
   inc(columnas,2);
   rejilla.ColCount := columnas;
   for i := 1 to (columnas - 2)  do
   begin
      dsVerMaterialesMedidas.DataSet.Locate('R_ORDEN',i,[loCaseInsensitive]);
      rejilla.Cells[i, 0] := dsVerMaterialesMedidas.DataSet.FieldByName('R_DESCRIPCION').AsString;
   end;
   rejilla.Cells[columnas - 1, 0] := 'Totales';
   }
end;

procedure TdmHorizontal.refreshMedidas(pMaterial : integer);
begin
   qyIBXVerMaterialesMedidas.Close;
   qyIBXVerMaterialesMedidas.ParamByName('P_MATERIAL').AsInteger := pMaterial;
   qyIBXVerMaterialesMedidas.Open;
   qyIBXColumnas.Close;
   qyIBXColumnas.ParamByName('P_MATERIAL').AsInteger := pMaterial;
   qyIBXColumnas.Open;
   columnas := qyIBXColumnas.FieldByName('CUANTOS').AsInteger;
end;

procedure TdmHorizontal.DataModuleCreate(Sender: TObject);
begin
   renglones := 0;
   columnas := 0;
   if dsPreferencias.DataSet.State = dsInactive then
      dsPreferencias.DataSet.Open;
   //Activar colores
   dsPreferencias.DataSet.Filter := 'ID = 69';
   activarColores := UpperCase(dsPreferencias.DataSet.FieldByName('VALOR').AsString) = 'SI';
end;

end.
