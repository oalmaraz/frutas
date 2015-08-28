unit UdmLineas;

interface

uses
  UTipos, URecords, IBModulo, Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, IBCustomDataSet,  IBTable, IBQuery, IBStoredProc;

type
  TdmLineas = class(TDataModule)
    TIBXLineas: TIBTable;
    dsLineas: TDataSource;
    TIBXLineasID: TIntegerField;
    TIBXLineasLINK: TIntegerField;
    TIBXLineasDESCRIPCION: TIBStringField;
    TIBXLineasESTATUS: TIBStringField;
    qyIBXEliminar: TIBQuery;
    TIBXLineasORDEN: TIntegerField;
    TIBXLineasMEDIDA: TIntegerField;
    dsRaizMedidas: TDataSource;
    qyIBXRaizMedidas: TIBQuery;
    qyIBXRaizMedidasR_ID: TIntegerField;
    qyIBXRaizMedidasR_DESCRIPCION: TIBStringField;
    dsHijoMedidas: TDataSource;
    qyIBXHijoMedidas: TIBQuery;
    qyIBXHijoMedidasR_ID: TIntegerField;
    qyIBXHijoMedidasR_DESCRIPCION: TIBStringField;
    dsPreferencias: TDataSource;
    TIBXPreferencias: TIBTable;
    TIBXPreferenciasID: TIntegerField;
    TIBXPreferenciasNOMBRE: TIBStringField;
    TIBXPreferenciasTIPO: TIBStringField;
    TIBXPreferenciasVALOR: TIBStringField;
    TIBXGrupoColores: TIBTable;
    dsGrupoColores: TDataSource;
    TIBXGrupoColoresID: TIntegerField;
    TIBXGrupoColoresNOMBRE: TIBStringField;
    TIBXLineasGRUPO_COLORES: TIntegerField;
    qyIBXHijoColores: TIBQuery;
    qyIBXHijoColoresR_COLOR: TIntegerField;
    qyIBXHijoColoresR_COLOR_NOMBRE: TIBStringField;
    dsHijoColores: TDataSource;
    TIBXLineasDESCUENTO_PORC: TFloatField;
    TIBXLineasFACTOR_MAYOR: TFloatField;
    TIBXLineasFACTOR_MENOR_O_IGUAL: TFloatField;
    TIBXLineasFACTOR_K: TFloatField;
    TIBXLineasFACTOR_K_SEP: TFloatField;
    TIBXLineasFACTOR_RP_COLOR: TFloatField;
    TIBXLineasFACTOR_RP_K_SEL: TFloatField;
    TIBXLineasFACTOR_RP_K_SEP: TFloatField;
    TIBXLineasFACTOR_RP_C_SEP: TFloatField;
    spUPDATE_LINEAS: TIBStoredProc;
    spINSERT_LINEAS: TIBStoredProc;
    procedure DataModuleCreate(Sender: TObject);
    procedure TIBXLineasAfterOpen(DataSet: TDataSet);
    procedure TBDELineasAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
    activarMedidas : boolean;
    activarColores : boolean;
  public
    { Public declarations }
    procedure Cargar(var Datos: _Lineas);
    function Guardar(var Datos : _Lineas) : integer;
    procedure eliminar;
    procedure refresh;
    procedure refreshPartidas;
    procedure CommitRetaining;
    procedure refreshMedidas;
    procedure refreshGrupoColores;
    function medidas : boolean;
    function colores : boolean;
  end;

implementation

{$R *.DFM}

procedure TdmLineas.DataModuleCreate(Sender: TObject);
begin
   dsLineas.DataSet       := TIBXLineas;
   dsRaizMedidas.DataSet  := qyIBXRaizMedidas;
   dsPreferencias.DataSet := TIBXPreferencias;
   dsGrupoColores.DataSet := TIBXGrupoColores;
   dsHijoColores.DataSet  := qyIBXHijoColores;

   if dsPreferencias.DataSet.State = dsInactive then
      dsPreferencias.DataSet.Open;
   //Activar medidas
   dsPreferencias.DataSet.Filter := 'ID = 66';
   activarMedidas := (dsPreferencias.DataSet.FieldByName('VALOR').AsString = 'Si');
   //Activar colores
   dsPreferencias.DataSet.Filter := 'ID = 69';
   activarColores := (dsPreferencias.DataSet.FieldByName('VALOR').AsString = 'Si');
end;

function TdmLineas.colores : boolean;
begin
   Result := activarColores;
end;

function TdmLineas.medidas : boolean;
begin
   Result := activarMedidas;
end;

procedure TdmLineas.refreshGrupoColores;
begin
   dsGrupoColores.DataSet.Close;
   dsGrupoColores.DataSet.Open;
end;

procedure TdmLineas.refreshMedidas;
begin
   dsRaizMedidas.DataSet.Close;
   dsRaizMedidas.DataSet.Open;
end;

procedure TdmLineas.Cargar(var Datos: _Lineas);
begin
   Datos.ID            := dsLineas.DataSet.FieldByName('ID').AsInteger;
   Datos.LINK          := dsLineas.DataSet.FieldByName('LINK').Value;
   Datos.DESCRIPCION   := dsLineas.DataSet.FieldByName('DESCRIPCION').AsString;
   Datos.ORDEN         := dsLineas.DataSet.FieldByName('ORDEN').AsInteger;
   Datos.PORCENTAJE    := dsLineas.DataSet.FieldByName('DESCUENTO_PORC').AsFloat;
   Datos.MEDIDA        := dsLineas.DataSet.FieldByName('MEDIDA').Value;
   Datos.ESTATUS       := dsLineas.DataSet.FieldByName('ESTATUS').AsString;
   Datos.GRUPO_COLORES := dsLineas.DataSet.FieldByName('GRUPO_COLORES').Value;
end;

function TdmLineas.Guardar(var Datos : _Lineas) : integer;
var
   tmp : integer;
begin
   tmp := -1;
                 case Datos.ID of
                   -1 : begin //registro nuevo
                           spINSERT_LINEAS.ParamByName('P_DESCRIPCION').AsString := Datos.DESCRIPCION;
                           spINSERT_LINEAS.ParamByName('P_ESTATUS').AsString     := Datos.ESTATUS;
                           spINSERT_LINEAS.ParamByName('P_ORDEN').AsInteger      := Datos.ORDEN;
                           spINSERT_LINEAS.ParamByName('P_MEDIDA').Value         := Datos.MEDIDA;
                           spINSERT_LINEAS.ParamByName('P_GRUPO_COLORES').Value  := Datos.GRUPO_COLORES;
                           spINSERT_LINEAS.ParamByName('P_PORCENTAJE').AsFloat   := Datos.PORCENTAJE;
                           spINSERT_LINEAS.ExecProc;
                           spINSERT_LINEAS.Transaction.CommitRetaining;
                           tmp := spINSERT_LINEAS.ParamByName('R_ID').AsInteger;
                        end;
                  else
                     begin //registro modificado
                        spUPDATE_LINEAS.ParamByName('P_ID').AsInteger         := Datos.ID;
                        spUPDATE_LINEAS.ParamByName('P_LINK').Value           := Datos.LINK;
                        spUPDATE_LINEAS.ParamByName('P_DESCRIPCION').AsString := Datos.DESCRIPCION;
                        spUPDATE_LINEAS.ParamByName('P_ESTATUS').AsString     := Datos.ESTATUS;
                        spUPDATE_LINEAS.ParamByName('P_ORDEN').AsInteger      := Datos.ORDEN;
                        spUPDATE_LINEAS.ParamByName('P_MEDIDA').Value         := Datos.MEDIDA;
                        spUPDATE_LINEAS.ParamByName('P_GRUPO_COLORES').Value  := Datos.GRUPO_COLORES;
                        spUPDATE_LINEAS.ParamByName('P_PORCENTAJE').AsFloat   := Datos.PORCENTAJE;
                        spUPDATE_LINEAS.ExecProc;
                        spUPDATE_LINEAS.Transaction.CommitRetaining;
                        refresh;
                     end;
                 end;
   Result := tmp;
end;

procedure TdmLineas.refresh;
begin
   TIBXLineas.Refresh;
end;

procedure TdmLineas.refreshPartidas;
begin
   dsLineas.DataSet.Close;
   dsLineas.DataSet.Open;
end;

procedure TdmLineas.eliminar;
begin
   if not(dsLineas.DataSet.IsEmpty) then
   begin
      qyIBXEliminar.ParamByName('P_ID').AsInteger := dsLineas.DataSet.FieldByName('ID').AsInteger;
      qyIBXEliminar.ExecSQL;
      qyIBXEliminar.Transaction.CommitRetaining;

      refreshPartidas;
   end;
end;

procedure TdmLineas.CommitRetaining;
begin
   TIBXLineas.Transaction.CommitRetaining;
end;

procedure TdmLineas.TIBXLineasAfterOpen(DataSet: TDataSet);
begin
   if dsHijoMedidas.State = dsInactive then
      dsHijoMedidas.DataSet.Open;
   if dsHijoColores.State = dsInactive then
      dsHijoColores.DataSet.Open;
end;

procedure TdmLineas.TBDELineasAfterOpen(DataSet: TDataSet);
begin
   if dsHijoMedidas.State = dsInactive then
      dsHijoMedidas.DataSet.Open;
   if dsHijoColores.State = dsInactive then
      dsHijoColores.DataSet.Open;
end;

end.
