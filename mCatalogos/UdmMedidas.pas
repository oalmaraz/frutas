unit UdmMedidas;

interface

uses
  UTipos, URecords, IBModulo, Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, IBCustomDataSet, IBQuery, IBStoredProc, IBTable;

type
  TdmMedidas = class(TDataModule)
    dsMedidas: TDataSource;
    spIBXInsert: TIBStoredProc;
    spIBXUpdate: TIBStoredProc;
    qyIBXEliminar: TIBQuery;
    TIBXMedidas: TIBTable;
    TIBXMedidasID: TIntegerField;
    TIBXMedidasLINK: TIntegerField;
    TIBXMedidasDESCRIPCION: TIBStringField;
    TIBXMedidasORDEN: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Cargar(var Datos: _Medidas);
    function Guardar(var Datos : _Medidas) : integer;
    procedure refreshPartidas;
    procedure refresh;
    procedure eliminar;
    procedure CommitRetaining;
  end;

implementation

{$R *.DFM}

procedure TdmMedidas.CommitRetaining;
begin
   TIBXMedidas.Transaction.CommitRetaining;
end;

procedure TdmMedidas.eliminar;
begin
   if not(dsMedidas.DataSet.IsEmpty) then
   begin
      qyIBXEliminar.ParamByName('P_ID').AsInteger := dsMedidas.DataSet.FieldByName('ID').AsInteger;
      qyIBXEliminar.ExecSQL;
      qyIBXEliminar.Transaction.CommitRetaining;

      refreshPartidas;
   end;
end;

procedure TdmMedidas.refresh;
begin
   TIBXMedidas.Refresh;
end;

function TdmMedidas.Guardar(var Datos : _Medidas) : integer;
var
   tmp : integer;
begin
   tmp := -1;
                 case Datos.ID of
                   -1 : begin //registro nuevo
                           spIBXInsert.ParamByName('P_DESCRIPCION').AsString := Datos.DESCRIPCION;
                           spIBXInsert.ParamByName('P_ORDEN').AsInteger      := Datos.ORDEN;
                           spIBXInsert.ExecProc;
                           spIBXInsert.Transaction.CommitRetaining;
                           tmp := spIBXInsert.ParamByName('R_ID').AsInteger;
                        end;
                  else
                     begin //registro modificado
                        spIBXUpdate.ParamByName('P_ID').AsInteger         := Datos.ID;
                        spIBXUpdate.ParamByName('P_LINK').Value           := Datos.LINK;
                        spIBXUpdate.ParamByName('P_DESCRIPCION').AsString := Datos.DESCRIPCION;
                        spIBXUpdate.ParamByName('P_ORDEN').AsInteger      := Datos.ORDEN;
                        spIBXUpdate.ExecProc;
                        spIBXUpdate.Transaction.CommitRetaining;
                        refresh;
                     end;
                 end;
                 
   Result := tmp;
end;

procedure TdmMedidas.Cargar(var Datos: _Medidas);
begin
   Datos.ID          := dsMedidas.DataSet.FieldByName('ID').AsInteger;
   Datos.LINK        := dsMedidas.DataSet.FieldByName('LINK').Value;
   Datos.DESCRIPCION := dsMedidas.DataSet.FieldByName('DESCRIPCION').AsString;
   Datos.ORDEN       := dsMedidas.DataSet.FieldByName('ORDEN').AsInteger;
end;

procedure TdmMedidas.refreshPartidas;
begin
   dsMedidas.DataSet.Close;
   dsMedidas.DataSet.Open;
end;

procedure TdmMedidas.DataModuleCreate(Sender: TObject);
begin
   dsMedidas.DataSet := TIBXMedidas;
end;

end.
