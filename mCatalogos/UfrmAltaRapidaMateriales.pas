unit UfrmAltaRapidaMateriales;

interface

uses
  UTypeAltaRapidaMateriales, Windows,  SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
        Buttons,
  StdCtrls,    ExtCtrls,
      Db, IBCustomDataSet,
  IBStoredProc, Ulineas, DBCtrls;

type
  TfrmAltaRapidaMateriales = class(TForm)
    paBotones: TPanel;
    ibNuevo: TBitBtn;
    paLienzo: TPanel;
    Label5: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    edDescripcion: TEdit;
    edClave: TEdit;
    ceActivoFijo: TCheckBox;
    edCodigoBarras: TEdit;
    ceNumEtiquetas: TEdit;
    Label10: TLabel;
    sbRefreshUnidades: TSpeedButton;
    ceIVA: TEdit;
    Label3: TLabel;
    laCodigoBarras: TBitBtn;
    laClienteDEL: TLabel;
    edLinea: TEdit;
    Shape5: TShape;
    Label15: TLabel;
    cbConsolidado: TCheckBox;
    cbSerie: TCheckBox;
    cbLote: TCheckBox;
    Panel2: TPanel;
    ibSalir: TBitBtn;
    cbUnidades: TDBLookupComboBox;
    procedure cbConsolidadoChange(Sender: TObject);
    procedure cbSerieChange(Sender: TObject);
    procedure cbLoteChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sbRefreshUnidadesClick(Sender: TObject);
    procedure ibNuevoClick(Sender: TObject);
    procedure ibSalirClick(Sender: TObject);
    procedure laCodigoBarrasClick(Sender: TObject);
    procedure edLineaButtonClick(Sender: TObject; AbsoluteIndex: Integer);
    procedure edLineaKeyPress(Sender: TObject; var Key: Char);
    procedure edCodigoBarrasKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    material : integer;
    AltaRapidaMateriales : TAltaRapidaMateriales;
    SubLineas : TfrmLineasSub;
  public
    { Public declarations }
    function dameMaterial : integer;
  end;

implementation

uses
  reglas_de_negocios;

{$R *.DFM}

procedure TfrmAltaRapidaMateriales.cbConsolidadoChange(Sender: TObject);
begin
  if cbConsolidado.Checked then
  begin
     cbSerie.Checked := false;
     cbLote.Checked   := false;
  end;
end;

procedure TfrmAltaRapidaMateriales.cbSerieChange(Sender: TObject);
begin
  if cbSerie.Checked then
     cbConsolidado.Checked := false;
end;

procedure TfrmAltaRapidaMateriales.cbLoteChange(Sender: TObject);
begin
  if cbLote.Checked then
     cbConsolidado.Checked := false;
end;

procedure TfrmAltaRapidaMateriales.FormCreate(Sender: TObject);
begin
   AltaRapidaMateriales := TAltaRapidaMateriales.Create;
   SubLineas            := TfrmLineasSub.Create(Application);
end;

procedure TfrmAltaRapidaMateriales.FormShow(Sender: TObject);
begin
   cbUnidades.ListSource := AltaRapidaMateriales.DSUNIDADES;
   AltaRapidaMateriales.refreshUnidades;
   //cbUnidades.keyField := cbUnidades.ListSource.DataSet.FieldByName('ID').AsInteger;
   ceIVA.Text := FloatToStr(AltaRapidaMateriales.dameIVA);

   edLinea.Tag  := subLineas.dame_seleccion;
   edLinea.Text := subLineas.dame_strSeleccion;
end;

procedure TfrmAltaRapidaMateriales.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   AltaRapidaMateriales.Free;
   AltaRapidaMateriales := nil;
end;

procedure TfrmAltaRapidaMateriales.sbRefreshUnidadesClick(Sender: TObject);
begin
   AltaRapidaMateriales.refreshUnidades;
end;

function TfrmAltaRapidaMateriales.dameMaterial : integer;
begin
   Result := material;
end;

procedure TfrmAltaRapidaMateriales.ibNuevoClick(Sender: TObject);
begin
   if (edClave.Text        <> '') and
      (edDescripcion.Text  <> '') and
      (edCodigoBarras.Text <> '') and
      (ceNumEtiquetas.Text > '0') then
   begin
      AltaRapidaMateriales.CLAVE         := edClave.Text;
      AltaRapidaMateriales.DESCRIPCION   := edDescripcion.Text;
      AltaRapidaMateriales.IVA           := StrToFloat(ceIVA.Text);
      AltaRapidaMateriales.CODIGO_BARRAS := edCodigoBarras.Text;
      AltaRapidaMateriales.UNIDAD_BASE   := cbUnidades.KeyValue;
      AltaRapidaMateriales.NUM_ETIQUETAS := StrToInt(ceNumEtiquetas.Text);
      AltaRapidaMateriales.LINEA         := edLinea.Tag;

      if ceActivoFijo.Checked then
         AltaRapidaMateriales.ACTIVO_FIJO := 'Si'
      else
         AltaRapidaMateriales.ACTIVO_FIJO := 'No';

      if cbConsolidado.Checked then
         AltaRapidaMateriales.CONSOLIDADO := 'Si'
      else
         AltaRapidaMateriales.CONSOLIDADO := 'No';

      if cbSerie.Checked then
         AltaRapidaMateriales.SERIE := 'Si'
      else
         AltaRapidaMateriales.SERIE := 'No';

      if cbLote.Checked then
         AltaRapidaMateriales.LOTE := 'Si'
      else
         AltaRapidaMateriales.LOTE := 'No';

      material := AltaRapidaMateriales.Guardar;
      Close;
   end
   else
      if edClave.Text = '' then
      begin
         ShowMessage('Falta capturar clave material.');
         edClave.SetFocus;
      end
      else
         if edDescripcion.Text = '' then
         begin
            ShowMessage('Falta capturar descripcion de material.');
            edDescripcion.SetFocus;
         end
         else
            if edCodigoBarras.Text = '' then
            begin
               ShowMessage('Falta capturar codigo de barras');
               edCodigoBarras.SetFocus;
            end
            else
            if ceNumEtiquetas.Text = '0' then
            begin
               ShowMessage('Falta capturar numero de etiquetas.');
               ceNumEtiquetas.SetFocus;
            end;
end;

procedure TfrmAltaRapidaMateriales.ibSalirClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmAltaRapidaMateriales.laCodigoBarrasClick(Sender: TObject);
var
   tmp   : string;
   sc    : integer;
   i     : integer;
   folio : string;
begin
  sc := 0;
  tmp := 'MATERIALES';
  for i := 0 to length(tmp) do
     sc := sc + ord(tmp[i]);

  folio := AltaRapidaMateriales.Codigo(sc);
  {
  idClave.Entrada := folio;
  idClave.Execute;
  if idClave.Respuesta and (idClave.Entrada <> '') then
  begin
     if idClave.Entrada <> folio then
     begin
        AltaRapidaMateriales.Codigo(sc, idClave.Entrada);
     end;
     edCodigoBarras.Text := reglas.EAN13('3'+reglas.rellenar(StrToInt(idClave.Entrada), 11));
  end;
  }
end;

procedure TfrmAltaRapidaMateriales.edLineaButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
var
   c : TPoint;
begin
   case AbsoluteIndex of
     0: begin
           c := edLinea.ClientToScreen(Point(0,0));
           SubLineas.coordenadas(c.x, c.y + edLinea.Height);
           SubLineas.ShowModal();
           edLinea.Tag := SubLineas.dame_seleccion;
           if edLinea.Tag = 0 then
           begin
              edLinea.Text := '<FALTA>';
              //edLinea.SetSelection(Length(edLinea.Text),Length(edLinea.Text),false);
           end
           else
              begin
                 edLinea.Text    := SubLineas.dame_strSeleccion;
                // edLinea.SetSelection(Length(edLinea.Text),Length(edLinea.Text),false);
              end;
        end;
     1: begin
           edLinea.Text    := '<FALTA>';
           //edLinea.SetSelection(Length(edLinea.Text),Length(edLinea.Text),false);
           edLinea.Tag     := 0;
        end;
   end;
end;

procedure TfrmAltaRapidaMateriales.edLineaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (key = #13) then
  begin
    // edLinea.OnButtonClick(nil, 0);
  end;
end;

procedure TfrmAltaRapidaMateriales.edCodigoBarrasKeyPress(Sender: TObject;
  var Key: Char);
begin
   if Key = #10 then
      laCodigoBarras.Click;
end;

end.
