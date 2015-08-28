unit seleccionar_extension;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  seleccionar, Db, Grids, DBGrids, Buttons, IBStoredProc, Menus,
  IBCustomDataSet, IBQuery, Mask, DBCtrls, StdCtrls, ExtCtrls;

type
  TfrmSeleccionar_extension = class(TfrmSeleccionar)
    qySeleccionarR_ID_EXTENSION: TIntegerField;
    qySeleccionarR_ID_CLIENTE: TIntegerField;
    qySeleccionarR_CLAVE: TIBStringField;
    qySeleccionarR_NOMBRE: TIBStringField;
    qySeleccionarR_FOTO: TBlobField;
    qySeleccionarR_FIRMA: TBlobField;
    qySeleccionarR_LIMITE_CREDITO: TFloatField;
    qySeleccionarR_ESTATUS: TIBStringField;
    ibTeclado: TBitBtn;
    ibAceptar: TBitBtn;
    ibCancelar: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ibTecladoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    proceso     : integer;
    touchScreen : boolean;
  protected
    procedure agregar; override;
  public
    { Public declarations }
    constructor crearBase(AOwner : TComponent; pntX, pntY : TPoint; p_proceso : integer);
    constructor crearTouchScreen(AOwner : TComponent; x1, y1, x2, y2 : integer);
    constructor crear(AOwner : TComponent; x1, y1, x2, y2, p_cliente, p_proceso : integer);
    constructor crearClienteTouchScreen(AOwner : TComponent; x1, y1, x2, y2, p_cliente : integer);
  end;

var
  frmSeleccionar_extension: TfrmSeleccionar_extension;

implementation

uses IBModulo, IBTable, teclado, IBData, reglas_de_negocios;

{$R *.DFM}

constructor TfrmSeleccionar_extension.crearBase(AOwner : TComponent; pntX, pntY : TPoint; p_proceso : integer);
begin
   CrearObj(AOwner, pntX.x, pntX.y, pntY.x, pntY.y);
   proceso := p_proceso
end;

constructor TfrmSeleccionar_extension.crearTouchScreen(AOwner : TComponent; x1, y1, x2, y2 : integer);
begin
   proceso := 2;
   CrearObj(AOwner, x1, y1, x2, y2);
   touchScreen        := TRUE;
   ibAceptar.Visible  := TRUE;
   ibTeclado.Visible  := TRUE;
   ibCancelar.Visible := TRUE;
   //Tamaño de letra en pantallas TouchScreen
   reglas.abrir_IBTabla(dmIBData.TPreferencias);
   dmIBData.TPreferencias.Filter := 'ID = 17';
   dgExplorar.Font.Size          := dmIBData.TPreferencias.FieldByName('VALOR').AsInteger;
end;

constructor TfrmSeleccionar_extension.crearClienteTouchScreen(AOwner : TComponent; x1, y1, x2, y2, p_cliente : integer);
begin
   proceso := 2;
   CrearObj(AOwner, x1, y1, x2, y2);
   touchScreen        := TRUE;
   ibAceptar.Visible  := TRUE;
   ibTeclado.Visible  := TRUE;
   ibCancelar.Visible := TRUE;
   //Tamaño de letra en pantallas TouchScreen
   reglas.abrir_IBTabla(dmIBData.TPreferencias);
   dmIBData.TPreferencias.Filter := 'ID = 17';
   dgExplorar.Font.Size          := dmIBData.TPreferencias.FieldByName('VALOR').AsInteger;
   todos := 'WHERE (R_ID_EXTENSION > 0) AND R_ID_CLIENTE = '+IntToStr(p_cliente);
end;

constructor TfrmSeleccionar_extension.crear(AOwner : TComponent; x1, y1, x2, y2, p_cliente, p_proceso : integer);
begin
   proceso := p_proceso;
   CrearObj(AOwner, x1, y1, x2, y2);
   todos := 'WHERE (R_ID_EXTENSION > 0) AND R_ID_CLIENTE = '+IntToStr(p_cliente);
end;

procedure TfrmSeleccionar_extension.agregar;
begin
   case proceso of
     1 : begin
            TIBTable(dsDestino.DataSet).FieldByName('EXTENSION').AsInteger := dsFuente.DataSet.FieldByName('R_ID_EXTENSION').AsInteger;
         end;
     2 : valor := dsFuente.DataSet.FieldByName('R_ID_EXTENSION').AsInteger;
   else
      begin
         if dsDestino.DataSet <> nil then
         begin
            TIBQuery(dsDestino.DataSet).Close;
            TIBQuery(dsDestino.DataSet).ParamByName('P_EXTENSION').AsInteger := dsFuente.DataSet.FieldByName('R_ID_EXTENSION').AsInteger;
            TIBQuery(dsDestino.DataSet).Open;
         end;
      end;
   end;
   Close;
end;

procedure TfrmSeleccionar_extension.FormCreate(Sender: TObject);
begin
  touchScreen        := false;
  ibAceptar.Visible  := false;
  ibTeclado.Visible  := false;
  ibCancelar.Visible := false;

  todos := 'WHERE R_ID_EXTENSION = 0';
  tabla := 'VER_EXTENSIONES';
  inherited;
  todos := 'WHERE R_ID_EXTENSION > 0';
  laCampo.Caption := 'R_NOMBRE';
end;

procedure TfrmSeleccionar_extension.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dsDestino.DataSet := nil;
  inherited;
end;

procedure TfrmSeleccionar_extension.ibTecladoClick(Sender: TObject);
var
   resultado : TModalResult;
   dato      : string;
begin
  inherited;
  frmTeclado := TfrmTeclado.Create(Application);
  resultado  := frmTeclado.ShowModal;
  dato       := frmTeclado.edCaptura.Text;
  frmTeclado.Free;

  if resultado = mrOk then
  begin
     meValor.Text     := dato;
     meValor.SelStart := length(dato);
     ibBuscar.Click;
  end;
end;

procedure TfrmSeleccionar_extension.FormShow(Sender: TObject);
begin
  inherited;
  if touchScreen then
  begin
     ibTeclado.Click;
     ibBuscar.Click;
  end;
end;

end.
