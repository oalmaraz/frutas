unit UdmAltaRapidaMateriales;

interface

uses
  URecords, Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, IBCustomDataSet,   IBStoredProc, IBTable;

type
  TdmAltaRapidaMateriales = class(TDataModule)
    TIBXUnidades: TIBTable;
    TIBXUnidadesID: TIntegerField;
    TIBXUnidadesCLAVE: TIBStringField;
    TIBXUnidadesDESCRIPCION: TIBStringField;
    dsUnidades: TDataSource;
    TIBXPreferencias: TIBTable;
    TIBXPreferenciasID: TIntegerField;
    TIBXPreferenciasNOMBRE: TIBStringField;
    TIBXPreferenciasTIPO: TIBStringField;
    TIBXPreferenciasVALOR: TIBStringField;
    dsPreferencias: TDataSource;
    spIBXALTA_RAPIDA_MATERIALES: TIBStoredProc;
    spMODIFICAR_FOLIO: TIBStoredProc;
    spAUTO_FOLIO: TIBStoredProc;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    IVA : double;
  public
    { Public declarations }
    function getIVA : double;
    procedure refreshUnidades;
    function Guardar(var Datos : _MaterialesAltaRapida) : integer;
    function Codigo(valor : integer) : string; overload;
    procedure Codigo(subclase : integer; valor : string); overload;
  end;

implementation

uses UTipos, IBModulo;

{$R *.DFM}

function TdmAltaRapidaMateriales.Codigo(valor : integer) : string;
begin
   spAUTO_FOLIO.ParamByName('P_SUBCLASE').AsInteger := valor;
   spAUTO_FOLIO.ExecProc;
   spAUTO_FOLIO.Transaction.CommitRetaining;
   result := spAUTO_FOLIO.ParamByName('R_FOLIO').AsString;
end;

procedure TdmAltaRapidaMateriales.Codigo(subclase : integer; valor : string);
begin
   spMODIFICAR_FOLIO.ParamByName('P_SUBCLASE').AsInteger   := subclase;

   spMODIFICAR_FOLIO.ParamByName('P_CONSECUTIVO').AsString := valor;
   spMODIFICAR_FOLIO.ExecProc;
   spMODIFICAR_FOLIO.Transaction.CommitRetaining;
end;

function TdmAltaRapidaMateriales.Guardar(var Datos : _MaterialesAltaRapida) : integer;
var
   tmp : integer;
begin
   tmp := 0;

   spIBXALTA_RAPIDA_MATERIALES.ParamByName('P_CLAVE').AsString         := Datos.CLAVE;
   spIBXALTA_RAPIDA_MATERIALES.ParamByName('P_DESCRIPCION').AsString   := Datos.DESCRIPCION;
   spIBXALTA_RAPIDA_MATERIALES.ParamByName('P_IVA').AsFloat            := Datos.IVA;
   spIBXALTA_RAPIDA_MATERIALES.ParamByName('P_CODIGO_BARRAS').AsString := Datos.CODIGO_BARRAS;
   spIBXALTA_RAPIDA_MATERIALES.ParamByName('P_UNIDAD').AsInteger       := Datos.UNIDAD_BASE;
   spIBXALTA_RAPIDA_MATERIALES.ParamByName('P_ETIQUETAS').AsInteger    := Datos.NUM_ETIQUETAS;
   spIBXALTA_RAPIDA_MATERIALES.ParamByName('P_ACTIVO_FIJO').AsString   := Datos.ACTIVO_FIJO;
   spIBXALTA_RAPIDA_MATERIALES.ParamByName('P_CONSOLIDADO').AsString   := Datos.CONSOLIDADO;
   spIBXALTA_RAPIDA_MATERIALES.ParamByName('P_SERIE').AsString         := Datos.SERIE;
   spIBXALTA_RAPIDA_MATERIALES.ParamByName('P_LOTE').AsString          := Datos.LOTE;
   spIBXALTA_RAPIDA_MATERIALES.ParamByName('P_LINEA').AsInteger        := Datos.LINEA;
   spIBXALTA_RAPIDA_MATERIALES.ExecProc;
   spIBXALTA_RAPIDA_MATERIALES.Transaction.CommitRetaining;
   tmp := spIBXALTA_RAPIDA_MATERIALES.ParamByName('R_ID').AsInteger;

   Result := tmp;
end;

procedure TdmAltaRapidaMateriales.refreshUnidades;
begin
   dsUnidades.DataSet.Close;
   dsUnidades.DataSet.Open;
end;

function TdmAltaRapidaMateriales.getIVA : double;
begin
   Result := IVA;
end;

procedure TdmAltaRapidaMateriales.DataModuleCreate(Sender: TObject);
begin
   dsUnidades.DataSet     := TIBXUnidades;
   dsPreferencias.DataSet := TIBXPreferencias;

   if dsPreferencias.DataSet.State = dsInactive then
      dsPreferencias.DataSet.Open;
   //IVA
   dsPreferencias.DataSet.Filter := 'ID = 68';
   IVA := dsPreferencias.DataSet.FieldByName('VALOR').AsFloat;
end;

end.
