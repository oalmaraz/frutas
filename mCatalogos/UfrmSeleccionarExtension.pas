unit UfrmSeleccionarExtension;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, Db, IBCustomDataSet, IBQuery, IBDatabase,
       ExtCtrls,
       StdCtrls, Mask,
  DBCtrls,    Grids, DBGrids, Buttons;

type
  TDatos = record
     nombre     : string;
     rfc        : string;
     direccionC : string;
     direccion  : string;
     num_ext    : string;
     num_int    : string;
     colonia    : string;
     cp         : string;
     localidad  : string;
     ciudadC    : string;
     ciudad     : string;
     estado     : string;
     pais       : string;
     ccomercial : variant;
     moneda     : variant;
     telefono   : string;
     desc_porc  : double;
  end;

  TfrmSeleccionarExtension = class(TForm)
    IBDatabase1: TIBDatabase;
    IBTransaction1: TIBTransaction;
    dsBusqueda: TDataSource;
    qyBusqueda: TIBQuery;
    pmCampos: TPopupMenu;
    itemID: TMenuItem;
    itemCLAVE: TMenuItem;
    itemEXTENSION: TMenuItem;
    itemCLIENTE: TMenuItem;
    itemVENDEDOR: TMenuItem;
    paBusqueda: TPanel;
    buBusqueda: TBitBtn;
    buEjecutar: TBitBtn;
    buTodos: TBitBtn;
    edDato: TEdit;
    dgExplorar: TDBGrid;
    qyBusquedaCE_ID: TIntegerField;
    qyBusquedaCE_CLAVE: TIBStringField;
    qyBusquedaCE_NOMBRE: TIBStringField;
    qyBusquedaCE_LIMITE_CREDITO: TFloatField;
    qyBusquedaCE_REF_CLI_PROV: TIBStringField;
    qyBusquedaCE_DIRECCION: TIntegerField;
    qyBusquedaCE_CALLE: TIBStringField;
    qyBusquedaCE_NUM_EXT: TIBStringField;
    qyBusquedaCE_LETRA: TIBStringField;
    qyBusquedaCE_NUM_INT: TIBStringField;
    qyBusquedaCE_CP: TIBStringField;
    qyBusquedaCE_COLONIA: TIBStringField;
    qyBusquedaCE_CIUDAD: TIntegerField;
    qyBusquedaCE__CIUDAD: TIBStringField;
    qyBusquedaCE__ESTADO: TIBStringField;
    qyBusquedaCE__PAIS: TIBStringField;
    qyBusquedaCE_TRANSPORTISTA: TIntegerField;
    qyBusquedaCE_T_NOMBRE: TIBStringField;
    qyBusquedaCE_RFC: TIBStringField;
    qyBusquedaCE_FLAG_FACT: TIBStringField;
    qyBusquedaCE_REMITENTE: TIntegerField;
    qyBusquedaCE_R_NOMBRE: TIBStringField;
    qyBusquedaCE_ESTATUS: TIBStringField;
    qyBusquedaC_CLIENTE: TIntegerField;
    qyBusquedaC_CLAVE: TIBStringField;
    qyBusquedaC_NOMBRE: TIBStringField;
    qyBusquedaC_LIMITE_CREDITO: TFloatField;
    qyBusquedaC_DESC_PORC: TFloatField;
    qyBusquedaC_DOMICILIO: TIntegerField;
    qyBusquedaC_CALLE: TIBStringField;
    qyBusquedaC_NUM_EXT: TIBStringField;
    qyBusquedaC_LETRA: TIBStringField;
    qyBusquedaC_NUM_INT: TIBStringField;
    qyBusquedaC_CP: TIBStringField;
    qyBusquedaC_COLONIA: TIBStringField;
    qyBusquedaC_CIUDAD: TIntegerField;
    qyBusquedaC__CIUDAD: TIBStringField;
    qyBusquedaC__ESTADO: TIBStringField;
    qyBusquedaC__PAIS: TIBStringField;
    qyBusquedaC_TELEFONO: TIBStringField;
    qyBusquedaC_RFC: TIBStringField;
    qyBusquedaC_FACTURAR_A: TIBStringField;
    qyBusquedaC_RAZON_SOCIAL: TIBStringField;
    qyBusquedaC_FORMA_DE_PAGO: TIntegerField;
    qyBusquedaC_MONEDA: TIntegerField;
    qyBusquedaC_VENDEDOR: TIntegerField;
    qyBusquedaC_V_NOMBRE: TIBStringField;
    qyBusquedaC_REMITENTE: TIntegerField;
    qyBusquedaC_R_NOMBRE: TIBStringField;
    qyBusquedaC_ESTATUS: TIBStringField;
    itemREMITENTE_EXT: TMenuItem;
    item_REMITENTE_CLIENTE: TMenuItem;
    qyBusquedaC_TELEFONOS: TIntegerField;
    qyBusquedaCE_TELEFONO: TIBStringField;
    Panel2: TPanel;
    buInicio: TBitBtn;
    buAnterior: TBitBtn;
    buFin: TBitBtn;
    buSiguiente: TBitBtn;
    ibSalir: TBitBtn;
    deID: TDBEdit;
    procedure itemIDClick(Sender: TObject);
    procedure itemCLAVEClick(Sender: TObject);
    procedure itemEXTENSIONClick(Sender: TObject);
    procedure itemCLIENTEClick(Sender: TObject);
    procedure itemVENDEDORClick(Sender: TObject);
    procedure buBusquedaClick(Sender: TObject);
    procedure edDatoKeyPress(Sender: TObject; var Key: Char);
    procedure buEjecutarClick(Sender: TObject);
    procedure buTodosClick(Sender: TObject);
    procedure dgExplorarKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure buInicioClick(Sender: TObject);
    procedure buAnteriorClick(Sender: TObject);
    procedure buSiguienteClick(Sender: TObject);
    procedure buFinClick(Sender: TObject);
    procedure ibSalirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dgExplorarDblClick(Sender: TObject);
    procedure itemREMITENTE_EXTClick(Sender: TObject);
    procedure item_REMITENTE_CLIENTEClick(Sender: TObject);
  private
    { Private declarations }
    awrAceptar : Boolean;
    awrDatos   : TDatos;
    awrSQL     : string;
    procedure setCLAVE(valor : string);
    procedure setDatabase(valor : TIBDatabase);
    procedure setTransaction(valor : TIBTransaction);

    function getDatos : TDatos;
    function getEXTENSION : integer;
    function getCLAVE : string;
    function getNOMBRE : string;
    function getCLIENTE : integer;
    function getCLIENTE_CLAVE : string;
    function getC_NOMBRE : string;
    function getC_NOMBRE__ : string;
    function getTELEFONOS : integer;
    function getCCOMERCIAL : variant;
    function getMONEDA : variant;
    function getDESCUENTO : double;
    function getTelefono : string;

    procedure setAceptar(valor : boolean);
    function getAceptar : boolean;
    procedure ejecutar(condicion : boolean);
  public
    { Public declarations }
    function abrirConsulta : boolean;
  published
     property DATABASE : TIBDatabase write setDatabase;
     property TRANSACTION : TIBTransaction write setTransaction;
     property EXTENSION   : integer read getEXTENSION;
     property CLAVE       : string read getCLAVE write setCLAVE;
     property NOMBRE      : string read getNOMBRE;
     property CLIENTE     : integer read getCLIENTE;
     property C_CLAVE     : string read getCLIENTE_CLAVE;
     property C_NOMBRE    : string read getC_NOMBRE;
     property C_NOMBRE__  : string read getC_NOMBRE__;
     property TELEFONOS   : integer read getTELEFONOS;
     property CCOMERCIAL  : variant read getCCOMERCIAL;
     property MONEDA      : variant read getMONEDA;
     property DESC_PORC   : double read getDESCUENTO;
     property TELEFONO    : string read getTelefono;

     property FACTURACION : TDatos read getDatos;
     property ACEPTAR     : Boolean read getAceptar write setAceptar;
  end;

var
  frmSeleccionarExtension: TfrmSeleccionarExtension;

implementation

{$R *.DFM}

const
   select1 = 'SELECT CE.ID CE_ID,';
   select2 = 'CE.CLAVE CE_CLAVE,';
   select3 = 'CE.NOMBRE CE_NOMBRE,';
   select4 = 'CE.LIMITE_CREDITO CE_LIMITE_CREDITO,';
   select5 = 'CE.PROVEEDOR CE_REF_CLI_PROV,';
   select6 = 'CE.DIRECCION CE_DIRECCION,';
   select7 = 'D.CALLE CE_CALLE,';
   select8 = 'D.NUM_EXT CE_NUM_EXT,';
   select9 = 'D.LETRA CE_LETRA,';
   select10 = 'D.NUM_INT CE_NUM_INT,';
   select11 = 'D.CP CE_CP,';
   select12 = 'D.COLONIA CE_COLONIA,';
   select13 = 'D.CIUDAD CE_CIUDAD,';
   select14 = 'C.DESCRIPCION CE__CIUDAD,';
   select15 = 'E.DESCRIPCION CE__ESTADO,';
   select16 = 'P.DESCRIPCION CE__PAIS,';
   select17 = 'CE.TRANSPORTISTA CE_TRANSPORTISTA,';
   select18 = 'S2.NOMBRE CE_T_NOMBRE,';
   select19 = 'CE.RFC CE_RFC,';
   select20 = 'CE.FLAG_FACTURAR CE_FLAG_FACT,';
   select21 = 'CE.REMITENTE CE_REMITENTE,';
   select22 = 'S3.NOMBRE CE_R_NOMBRE,';
   select23 = 'CE.ESTATUS CE_ESTATUS,';
   select24 = 'CE.SUJETO_CLIENTE C_CLIENTE,';
   select25 = 'S.CLAVE C_CLAVE,';
   select26 = 'S.NOMBRE C_NOMBRE,';
   select27 = 'SC.LIMITE_CREDITO C_LIMITE_CREDITO,';
   select28 = 'SC.DESCUENTO_PORC C_DESC_PORC,';
   select29 = 'S.DOMICILIO C_DOMICILIO,';
   select30 = 'D2.CALLE C_CALLE,';
   select31 = 'D2.NUM_EXT C_NUM_EXT,';
   select32 = 'D2.LETRA C_LETRA,';
   select33 = 'D2.NUM_INT C_NUM_INT,';
   select34 = 'D2.CP C_CP,';
   select35 = 'D2.COLONIA C_COLONIA,';
   select36 = 'D2.CIUDAD C_CIUDAD,';
   select37 = 'C2.DESCRIPCION C__CIUDAD,';
   select38 = 'E2.DESCRIPCION C__ESTADO,';
   select39 = 'P2.DESCRIPCION C__PAIS,';
   select40 = 'S.TEL_PRINCIPAL C_TELEFONO,';
   select41 = 'S.TELEFONOS C_TELEFONOS,';
   select42 = 'S.RFC C_RFC,';
   select43 = 'S.FACTURAR_A C_FACTURAR_A,';
   select44 = 'S.RAZON_SOCIAL C_RAZON_SOCIAL,';
   select45 = 'SC.FORMAS_DE_PAGO C_FORMA_DE_PAGO,';
   select46 = 'SC.MONEDA C_MONEDA,';
   select47 = 'SC.VENDEDOR C_VENDEDOR,';
   select48 = 'S4.NOMBRE C_V_NOMBRE,';
   select49 = 'SC.REMITENTE C_REMITENTE,';
   select50 = 'S5.NOMBRE C_R_NOMBRE,';
   select51 = 'SC.ESTATUS C_ESTATUS,';
   select52 = 'CE.TELEFONO CE_TELEFONO';
   from1  = 'FROM (CLIENTES_EXTENSIONES CE LEFT JOIN SUJETOS_CLIENTES SC ON CE.SUJETO_CLIENTE = SC.ID)';
   from2  = 'LEFT JOIN SUJETOS S                 ON S.ID   = SC.SUJETO';
   from3  = 'LEFT JOIN SUJETOS_TRANSPORTISTAS ST ON ST.ID  = CE.TRANSPORTISTA';
   from4  = 'LEFT JOIN SUJETOS S2                ON S2.ID  = ST.SUJETO';
   from5  = 'LEFT JOIN SUJETOS_REMITENTES SR     ON SR.ID  = CE.REMITENTE';
   from6  = 'LEFT JOIN SUJETOS S3                ON S3.ID  = SR.SUJETO';
   from7  = 'LEFT JOIN SUJETOS_VENDEDORES SV     ON SV.ID  = SC.VENDEDOR';
   from8  = 'LEFT JOIN SUJETOS S4                ON S4.ID  = SV.SUJETO';
   from9  = 'LEFT JOIN DOMICILIOS D              ON D.ID   = CE.DIRECCION';
   from10 = 'LEFT JOIN ENTIDAD_GEOGRAFICA C      ON C.ID   = D.CIUDAD';
   from11 = 'LEFT JOIN ENTIDAD_GEOGRAFICA E      ON E.ID   = C.LINK';
   from12 = 'LEFT JOIN ENTIDAD_GEOGRAFICA P      ON P.ID   = E.LINK';
   from13 = 'LEFT JOIN DOMICILIOS D2             ON D2.ID  = S.DOMICILIO';
   from14 = 'LEFT JOIN ENTIDAD_GEOGRAFICA C2     ON C2.ID  = D2.CIUDAD';
   from15 = 'LEFT JOIN ENTIDAD_GEOGRAFICA E2     ON E2.ID  = C2.LINK';
   from16 = 'LEFT JOIN ENTIDAD_GEOGRAFICA P2     ON P2.ID  = E2.LINK';
   from17 = 'LEFT JOIN SUJETOS_REMITENTES SR2    ON SR2.ID = SC.REMITENTE';
   from18 = 'LEFT JOIN SUJETOS S5                ON S5.ID  = SR2.SUJETO';

function TfrmSeleccionarExtension.abrirConsulta : boolean;
var
   tmp : boolean;
begin
   tmp := true;
   if edDato.Text <> '' then
   begin
      edDato.Text := UpperCase(edDato.Text);
      awrSQL :='WHERE UPPER(CE.CLAVE)  LIKE "%'+edDato.Text+'%"';
      ejecutar(true);

      if not(qyBusqueda.IsEmpty) and (dgExplorar.DataSource.DataSet.RecordCount = 1) then
         tmp := false
     else
        if (qyBusqueda.IsEmpty) then
        begin
           buEjecutar.Click;
           if not(qyBusqueda.IsEmpty) and (dgExplorar.DataSource.DataSet.RecordCount = 1) then
              tmp := false;
        end;
   end;
   Result := tmp;
end;

procedure TfrmSeleccionarExtension.setAceptar(valor : boolean);
begin
   awrAceptar := valor;
   if awrAceptar then
      Close;
end;

function TfrmSeleccionarExtension.getAceptar : boolean;
begin
   result := awrAceptar;
end;

procedure TfrmSeleccionarExtension.ejecutar(condicion : boolean);
begin
  qyBusqueda.Close;
  qyBusqueda.SQL.Clear;
  qyBusqueda.SQL.Add(select1);
  qyBusqueda.SQL.Add(select2);
  qyBusqueda.SQL.Add(select3);
  qyBusqueda.SQL.Add(select4);
  qyBusqueda.SQL.Add(select5);
  qyBusqueda.SQL.Add(select6);
  qyBusqueda.SQL.Add(select7);
  qyBusqueda.SQL.Add(select8);
  qyBusqueda.SQL.Add(select9);
  qyBusqueda.SQL.Add(select10);
  qyBusqueda.SQL.Add(select11);
  qyBusqueda.SQL.Add(select12);
  qyBusqueda.SQL.Add(select13);
  qyBusqueda.SQL.Add(select14);
  qyBusqueda.SQL.Add(select15);
  qyBusqueda.SQL.Add(select16);
  qyBusqueda.SQL.Add(select17);
  qyBusqueda.SQL.Add(select18);
  qyBusqueda.SQL.Add(select19);
  qyBusqueda.SQL.Add(select20);
  qyBusqueda.SQL.Add(select21);
  qyBusqueda.SQL.Add(select22);
  qyBusqueda.SQL.Add(select23);
  qyBusqueda.SQL.Add(select24);
  qyBusqueda.SQL.Add(select25);
  qyBusqueda.SQL.Add(select26);
  qyBusqueda.SQL.Add(select27);
  qyBusqueda.SQL.Add(select28);
  qyBusqueda.SQL.Add(select29);
  qyBusqueda.SQL.Add(select30);
  qyBusqueda.SQL.Add(select31);
  qyBusqueda.SQL.Add(select32);
  qyBusqueda.SQL.Add(select33);
  qyBusqueda.SQL.Add(select34);
  qyBusqueda.SQL.Add(select35);
  qyBusqueda.SQL.Add(select36);
  qyBusqueda.SQL.Add(select37);
  qyBusqueda.SQL.Add(select38);
  qyBusqueda.SQL.Add(select39);
  qyBusqueda.SQL.Add(select40);
  qyBusqueda.SQL.Add(select41);
  qyBusqueda.SQL.Add(select42);
  qyBusqueda.SQL.Add(select43);
  qyBusqueda.SQL.Add(select44);
  qyBusqueda.SQL.Add(select45);
  qyBusqueda.SQL.Add(select46);
  qyBusqueda.SQL.Add(select47);
  qyBusqueda.SQL.Add(select48);
  qyBusqueda.SQL.Add(select49);
  qyBusqueda.SQL.Add(select50);
  qyBusqueda.SQL.Add(select51);
  qyBusqueda.SQL.Add(select52);
  qyBusqueda.SQL.Add(from1);
  qyBusqueda.SQL.Add(from2);
  qyBusqueda.SQL.Add(from3);
  qyBusqueda.SQL.Add(from4);
  qyBusqueda.SQL.Add(from5);
  qyBusqueda.SQL.Add(from6);
  qyBusqueda.SQL.Add(from7);
  qyBusqueda.SQL.Add(from8);
  qyBusqueda.SQL.Add(from9);
  qyBusqueda.SQL.Add(from10);
  qyBusqueda.SQL.Add(from11);
  qyBusqueda.SQL.Add(from12);
  qyBusqueda.SQL.Add(from13);
  qyBusqueda.SQL.Add(from14);
  qyBusqueda.SQL.Add(from15);
  qyBusqueda.SQL.Add(from16);
  qyBusqueda.SQL.Add(from17);
  qyBusqueda.SQL.Add(from18);
  if condicion then
     qyBusqueda.SQL.Add(awrSQL);
  qyBusqueda.Open;
  dgExplorar.DataSource.DataSet.First;
end;

function TfrmSeleccionarExtension.getDatos : TDatos;
begin
   awrDatos.nombre     := '';
   awrDatos.rfc        := '';
   awrDatos.direccionC := '';
   awrDatos.num_ext    := '';
   awrDatos.num_int    := '';
   awrDatos.direccionC := '';
   awrDatos.direccion  := '';
   awrDatos.colonia    := '';
   awrDatos.cp         := '';
   awrDatos.ciudadC    := '';
   awrDatos.ciudad     := '';
   awrDatos.estado     := '';
   awrDatos.pais       := '';
   awrDatos.ccomercial := 0;
   awrDatos.moneda     := 0;
   awrDatos.telefono   := '';
   awrDatos.desc_porc  := 0;

   if dsBusqueda.DataSet.FieldByName('CE_FLAG_FACT').AsString = 'Si' then
   begin
      awrDatos.nombre     := dsBusqueda.DataSet.FieldByName('CE_NOMBRE').AsString;
      awrDatos.rfc        := dsBusqueda.DataSet.FieldByName('CE_RFC').AsString;

      //Direccion Completa
      awrDatos.direccionC  := dsBusqueda.DataSet.FieldByName('CE_CALLE').AsString;
      if dsBusqueda.DataSet.FieldByName('CE_NUM_EXT').AsString <> '' then
         awrDatos.direccionC  :=  awrDatos.direccionC + ' ' + dsBusqueda.DataSet.FieldByName('CE_NUM_EXT').AsString;
      if dsBusqueda.DataSet.FieldByName('CE_LETRA').AsString <> '' then
         awrDatos.direccionC  :=  awrDatos.direccionC + '-' + dsBusqueda.DataSet.FieldByName('CE_LETRA').AsString;
      if dsBusqueda.DataSet.FieldByName('CE_NUM_INT').AsString <> '' then
         awrDatos.direccionC  :=  awrDatos.direccionC + ' INT. ' + dsBusqueda.DataSet.FieldByName('CE_NUM_INT').AsString;

      awrDatos.direccion  := dsBusqueda.DataSet.FieldByName('CE_CALLE').AsString;
      awrDatos.num_ext    := dsBusqueda.DataSet.FieldByName('CE_NUM_EXT').AsString;
      if dsBusqueda.DataSet.FieldByName('CE_LETRA').AsString <> '' then
         awrDatos.num_ext :=  awrDatos.num_ext + '-' + dsBusqueda.DataSet.FieldByName('CE_LETRA').AsString;
      awrDatos.num_int    := dsBusqueda.DataSet.FieldByName('CE_NUM_INT').AsString;

      awrDatos.colonia    := dsBusqueda.DataSet.FieldByName('CE_COLONIA').AsString;
      awrDatos.cp         := dsBusqueda.DataSet.FieldByName('CE_CP').AsString;

      //Ciudad Completa
      awrDatos.ciudadC    := dsBusqueda.DataSet.FieldByName('CE__CIUDAD').AsString+', '+dsBusqueda.DataSet.FieldByName('CE__ESTADO').AsString+', '+dsBusqueda.DataSet.FieldByName('CE__PAIS').AsString+'.';
      awrDatos.ciudad     := dsBusqueda.DataSet.FieldByName('CE__CIUDAD').AsString;
      awrDatos.estado     := dsBusqueda.DataSet.FieldByName('CE__ESTADO').AsString;
      awrDatos.pais       := dsBusqueda.DataSet.FieldByName('CE__PAIS').AsString;

      awrDatos.ccomercial := dsBusqueda.DataSet.FieldByName('C_FORMA_DE_PAGO').AsInteger;
      awrDatos.moneda     := dsBusqueda.DataSet.FieldByName('C_MONEDA').AsInteger;
      awrDatos.telefono   := dsBusqueda.DataSet.FieldByName('CE_TELEFONO').AsString;
      awrDatos.desc_porc  := dsBusqueda.DataSet.FieldByName('C_DESC_PORC').AsFloat;
   end
   else
      begin
         awrDatos.nombre     := C_NOMBRE;
         awrDatos.rfc        := dsBusqueda.DataSet.FieldByName('C_RFC').AsString;
         awrDatos.direccion  := dsBusqueda.DataSet.FieldByName('C_CALLE').AsString;

         if dsBusqueda.DataSet.FieldByName('C_NUM_EXT').AsString <> '' then
            awrDatos.direccion  :=  awrDatos.direccion + ' ' + dsBusqueda.DataSet.FieldByName('C_NUM_EXT').AsString;
         if dsBusqueda.DataSet.FieldByName('C_LETRA').AsString <> '' then
            awrDatos.direccion  :=  awrDatos.direccion + '-' + dsBusqueda.DataSet.FieldByName('C_LETRA').AsString;
         if dsBusqueda.DataSet.FieldByName('C_NUM_INT').AsString <> '' then
            awrDatos.direccion  :=  awrDatos.direccion + 'INT. ' + dsBusqueda.DataSet.FieldByName('C_NUM_INT').AsString;

         awrDatos.colonia    := dsBusqueda.DataSet.FieldByName('C_COLONIA').AsString;
         awrDatos.cp         := dsBusqueda.DataSet.FieldByName('C_CP').AsString;
         awrDatos.localidad  := '';
         awrDatos.ciudad     := dsBusqueda.DataSet.FieldByName('C__CIUDAD').AsString+', '+dsBusqueda.DataSet.FieldByName('C__ESTADO').AsString+', '+dsBusqueda.DataSet.FieldByName('C__PAIS').AsString+'.';
         awrDatos.ccomercial := dsBusqueda.DataSet.FieldByName('C_FORMA_DE_PAGO').AsInteger;
         awrDatos.moneda     := dsBusqueda.DataSet.FieldByName('C_MONEDA').AsInteger;
         awrDatos.telefono   := dsBusqueda.DataSet.FieldByName('C_TELEFONO').AsString;
         awrDatos.desc_porc  := dsBusqueda.DataSet.FieldByName('C_DESC_PORC').AsFloat;
      end;

   Result := awrDatos;
end;

function TfrmSeleccionarExtension.getCLIENTE_CLAVE : string;
begin
   Result := dsBusqueda.DataSet.FieldByName('C_CLAVE').AsString;
end;

function TfrmSeleccionarExtension.getC_NOMBRE : string;
var
   tmp : string;
begin
   tmp := dsBusqueda.DataSet.FieldByName('C_NOMBRE').AsString;
   if dsBusqueda.DataSet.FieldByName('C_FACTURAR_A').AsString = 'Razon Social' then
      tmp := dsBusqueda.DataSet.FieldByName('C_RAZON_SOCIAL').AsString;

   result := tmp;
end;

function TfrmSeleccionarExtension.getC_NOMBRE__ : string;
begin
   result := dsBusqueda.DataSet.FieldByName('C_NOMBRE').AsString;
end;

function TfrmSeleccionarExtension.getTelefono : string;
begin
   Result := dsBusqueda.DataSet.FieldByName('C_TELEFONO').AsString;
end;

function TfrmSeleccionarExtension.getTelefonos : integer;
begin
   Result := dsBusqueda.DataSet.FieldByName('C_TELEFONOS').AsInteger;
end;

function TfrmSeleccionarExtension.getDESCUENTO : double;
begin
   result := dsBusqueda.DataSet.FieldByName('C_DESC_PORC').AsFloat;
end;

function TfrmSeleccionarExtension.getCCOMERCIAL : variant;
begin
   result := dsBusqueda.DataSet.FieldByName('C_FORMA_DE_PAGO').AsInteger;
end;

function TfrmSeleccionarExtension.getMONEDA : variant;
begin
   result := dsBusqueda.DataSet.FieldByName('C_MONEDA').AsInteger;
end;

function TfrmSeleccionarExtension.getCLIENTE : integer;
begin
   result := dsBusqueda.DataSet.FieldByName('C_CLIENTE').AsInteger;
end;

function TfrmSeleccionarExtension.getEXTENSION : integer;
begin
   Result := dsBusqueda.DataSet.FieldByName('CE_ID').AsInteger;
end;

function TfrmSeleccionarExtension.getNOMBRE : string;
begin
   Result :=  dsBusqueda.DataSet.FieldByName('CE_NOMBRE').AsString;
end;

procedure TfrmSeleccionarExtension.setCLAVE(valor : string);
begin
   edDato.Text := valor;
end;

function TfrmSeleccionarExtension.getCLAVE : string;
begin
   Result := dsBusqueda.DataSet.FieldByName('CE_CLAVE').AsString;
end;

procedure TfrmSeleccionarExtension.setTransaction(valor : TIBTransaction);
begin
   qyBusqueda.Transaction  := valor;
end;

procedure TfrmSeleccionarExtension.setDatabase(valor : TIBDatabase);
begin
   qyBusqueda.Database  := valor;
end;

procedure TfrmSeleccionarExtension.itemIDClick(Sender: TObject);
begin
   buBusqueda.Caption := 'CE.ID';
end;

procedure TfrmSeleccionarExtension.itemCLAVEClick(Sender: TObject);
begin
   buBusqueda.Caption := 'CE.CLAVE';
end;

procedure TfrmSeleccionarExtension.itemEXTENSIONClick(Sender: TObject);
begin
   buBusqueda.Caption := 'CE.NOMBRE';
end;

procedure TfrmSeleccionarExtension.itemCLIENTEClick(Sender: TObject);
begin
   buBusqueda.Caption := 'S.NOMBRE';
end;

procedure TfrmSeleccionarExtension.itemVENDEDORClick(Sender: TObject);
begin
   buBusqueda.Caption := 'S4.NOMBRE';
end;

procedure TfrmSeleccionarExtension.buBusquedaClick(Sender: TObject);
begin
   buEjecutar.Click;
end;

procedure TfrmSeleccionarExtension.edDatoKeyPress(Sender: TObject;
  var Key: Char);
begin
   if (key = #13) and (edDato.Text <> '') then
      buEjecutar.Click;
end;

procedure TfrmSeleccionarExtension.buEjecutarClick(Sender: TObject);
begin
   edDato.Text := UpperCase(edDato.Text);
   awrSQL      := 'WHERE UPPER('+buBusqueda.Caption+') LIKE "%'+edDato.Text+'%"';
   ejecutar(true);
end;

procedure TfrmSeleccionarExtension.buTodosClick(Sender: TObject);
begin
   ejecutar(false);
end;

procedure TfrmSeleccionarExtension.dgExplorarKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if (key = 13) and not(qyBusqueda.IsEmpty) then
      ACEPTAR := true;
end;

procedure TfrmSeleccionarExtension.buInicioClick(Sender: TObject);
begin
   dgExplorar.DataSource.DataSet.First;
end;

procedure TfrmSeleccionarExtension.buAnteriorClick(Sender: TObject);
begin
   dgExplorar.DataSource.DataSet.Prior;
end;

procedure TfrmSeleccionarExtension.buSiguienteClick(Sender: TObject);
begin
   dgExplorar.DataSource.DataSet.Next;
end;

procedure TfrmSeleccionarExtension.buFinClick(Sender: TObject);
begin
   dgExplorar.DataSource.DataSet.Last;
end;

procedure TfrmSeleccionarExtension.ibSalirClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmSeleccionarExtension.FormCreate(Sender: TObject);
begin
   ACEPTAR := false;
   //dgExplorar.IniFileName := ExtractFilePath(ParamStr(0))+'\SeleccionarExtension.ini';
   //dgExplorar.LoadFromIniFile(ExtractFilePath(ParamStr(0))+'\SeleccionarExtension.ini');
end;

procedure TfrmSeleccionarExtension.dgExplorarDblClick(Sender: TObject);
begin
   if not(qyBusqueda.IsEmpty) then
      ACEPTAR := true;
end;

procedure TfrmSeleccionarExtension.itemREMITENTE_EXTClick(Sender: TObject);
begin
   buBusqueda.Caption := 'S3.NOMBRE';
end;

procedure TfrmSeleccionarExtension.item_REMITENTE_CLIENTEClick(
  Sender: TObject);
begin
   buBusqueda.Caption := 'S5.NOMBRE';
end;

end.
