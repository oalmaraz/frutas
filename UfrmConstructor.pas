unit UfrmConstructor;

interface

uses
  USqlAnaliza, URecords, Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
        ExtCtrls,

   Buttons, StdCtrls,  jpeg,
  Menus,   IBStoredProc, Db, IBCustomDataSet, IBQuery,
   Grids, DBGrids,

   DBCtrls, Mask, ComCtrls;


type
  TfrmConstructor = class(TForm)
    fpPadre: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    laY: TLabel;
    Label5: TLabel;
    sbConsultas: TSpeedButton;
    meSentencias: TCombobox;
    meLogica: TCombobox;
    deValor: TEdit;
    paConsulta: TPanel;
    dgDetalle: TDBGrid;
    dxDBGrid1: TDBGrid;
    FashionPanel1: TPanel;
    dgVista: TDBGrid;
    pmTeclas: TPopupMenu;
    Limpiar1: TMenuItem;
    NuevaPartida1: TMenuItem;
    ModificarPartida1: TMenuItem;
    GuardarPartida1: TMenuItem;
    CancelarPartida1: TMenuItem;
    EliminarPartida1: TMenuItem;
    Pedidos1: TMenuItem;
    qyConstructor: TIBQuery;
    qyConstructorID: TIntegerField;
    qyConstructorFORMA: TIBStringField;
    qyConstructorNOMBRE: TIBStringField;
    qyConstructorCONSULTA: TIBStringField;
    qyConstructorTEMPORAL: TIBStringField;
    qyConstructorUSUARIO: TIntegerField;
    dsConstructor: TDataSource;
    qyConstructor_Detalle: TIBQuery;
    qyConstructor_DetalleID: TIntegerField;
    qyConstructor_DetalleCONSTRUCTOR: TIntegerField;
    qyConstructor_DetalleUSR_SENTENCIA: TIBStringField;
    qyConstructor_DetalleUSR_LOGICA: TIBStringField;
    qyConstructor_DetalleUSR_VALOR: TIBStringField;
    qyConstructor_DetalleBD_SENTENCIA: TIBStringField;
    qyConstructor_DetalleBD_LOGICA: TIBStringField;
    qyConstructor_DetalleBD_VALOR: TIBStringField;
    qyConstructor_DetalleUSR_CAMPO: TIBStringField;
    qyConstructor_DetalleBD_CAMPO: TIBStringField;
    dsConstructor_Detalle: TDataSource;
    qyBorrarTemporales: TIBQuery;
    spADD_CONSTRUCTOR: TIBStoredProc;
    spADD_CONSTRUCTOR_DETALLE: TIBStoredProc;
    spDEL_CONSTRUCTOR_DETALLE: TIBStoredProc;
    spACTUALIZA_CONSTRUCTOR: TIBStoredProc;
    spCONSTRUCTOR_ELIMINAR: TIBStoredProc;
    qyVista: TIBQuery;
    dsVista: TDataSource;
    qyAlmacenados: TIBQuery;
    qyAlmacenadosID: TIntegerField;
    qyAlmacenadosFORMA: TIBStringField;
    qyAlmacenadosNOMBRE: TIBStringField;
    qyAlmacenadosCONSULTA: TIBStringField;
    qyAlmacenadosTEMPORAL: TIBStringField;
    qyAlmacenadosUSUARIO: TIntegerField;
    dsAlmacenados: TDataSource;
    qyAlmacenadosDetalle: TIBQuery;
    qyAlmacenadosDetalleID: TIntegerField;
    qyAlmacenadosDetalleCONSTRUCTOR: TIntegerField;
    qyAlmacenadosDetalleUSR_SENTENCIA: TIBStringField;
    qyAlmacenadosDetalleUSR_LOGICA: TIBStringField;
    qyAlmacenadosDetalleUSR_VALOR: TIBStringField;
    qyAlmacenadosDetalleBD_SENTENCIA: TIBStringField;
    qyAlmacenadosDetalleBD_LOGICA: TIBStringField;
    qyAlmacenadosDetalleBD_VALOR: TIBStringField;
    qyAlmacenadosDetalleUSR_CAMPO: TIBStringField;
    qyAlmacenadosDetalleBD_CAMPO: TIBStringField;
    d: TDataSource;
    cbAlmacenadas: TDBComboBox;
    cbCampos: TComboBox;
    ibAgregar: TBitBtn;
    ibGuardar: TBitBtn;
    ibVista: TBitBtn;
    ibAplicar: TBitBtn;
    ibEliminar: TBitBtn;
    ibCancelar: TBitBtn;
    ibLimpiar: TBitBtn;
    deValorUno: TDateTimePicker;
    deValorDos: TDateTimePicker;
    procedure ibLimpiarClick(Sender: TObject);
    procedure meSentenciasChange(Sender: TObject);
    procedure ibAgregarClick(Sender: TObject);
    procedure ibVistaClick(Sender: TObject);
    procedure ibGuardarClick(Sender: TObject);
    procedure ibEliminarClick(Sender: TObject);
    procedure dgDetalleKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbAlmacenadasChange(Sender: TObject);
    procedure deValorUnoExit(Sender: TObject);
    procedure Limpiar1Click(Sender: TObject);
    procedure NuevaPartida1Click(Sender: TObject);
    procedure ModificarPartida1Click(Sender: TObject);
    procedure GuardarPartida1Click(Sender: TObject);
    procedure CancelarPartida1Click(Sender: TObject);
    procedure EliminarPartida1Click(Sender: TObject);
    procedure Pedidos1Click(Sender: TObject);
    procedure sbConsultasClick(Sender: TObject);
    procedure qyConstructorAfterOpen(DataSet: TDataSet);
    procedure qyAlmacenadosAfterOpen(DataSet: TDataSet);
    procedure ibAplicarClick(Sender: TObject);
    procedure dgDetalleColumn5ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    forma    : string;
    consulta : string;
    select   : string;
    select2  : string;
    tabla    : string;
    whereAlways : string;
    campos      : TList;
    ARecord     : PMisCampos;
    procedure armar_sql;
  public
    { Public declarations }
    procedure construir(const p_forma : string; pSelect, pSelect2, pTabla, pWhereAlways : string; pLista : TList);
  end;

var
  frmConstructor: TfrmConstructor;

implementation

uses reglas_de_negocios, IBData;

{$R *.DFM}

procedure TfrmConstructor.construir(const p_forma : string; pSelect, pSelect2, pTabla, pWhereAlways : string; pLista : TList);
var
   i : integer;
begin
   forma       := UpperCase(p_forma);
   select      := pSelect;
   select2     := pSelect2;
   tabla       := pTabla;
   whereAlways := pWhereAlways;
   campos      := pLista;
   //Filtra informacion de la forma con el usuario, para dar unicamente sus consultas
   qyConstructor.Close;
   qyConstructor.ParamByName('P_FORMA').AsString    := UpperCase(p_forma);
   qyConstructor.ParamByName('P_USUARIO').AsInteger := reglas.dame_usuario;
   qyConstructor.Open;


   //cargar los campos con los que se puede hacer la consulta.
   for i := 0 to (campos.Count - 1) do
   begin
      ARecord := campos.Items[i];
      cbCampos.items.Add(ARecord^.alias);
      //agrega los campos al grid
      dgVista.Columns[i].FieldName := ARecord^.alias;
      dgVista.Columns[i].Title.Caption   := ARecord^.alias;
      //dgVista.Columns[i].Sizing    := True;
   end;

   //Con el fin de que en el futuro sepamos el tipo de dato que es el campo.
   ARecord := campos.Items[0];
   qyVista.Close;
   qyVista.SQL.Clear;
   qyVista.SQL.Add('SELECT '+select);
   if select2 <> '' then
      qyVista.SQL.Add(', '+select2);
   qyVista.SQL.Add('FROM '+tabla);
   qyVista.SQL.Add('WHERE '+whereAlways+'('+ARecord^.nombre+' = -3)');
   qyVista.Open;

   //cargar consultas.
   qyAlmacenados.Close;
   qyAlmacenados.ParamByName('P_FORMA').AsString    := UpperCase(p_forma);
   qyAlmacenados.ParamByName('P_USUARIO').AsInteger := reglas.dame_usuario;
   qyAlmacenados.Open;
end;

procedure TfrmConstructor.armar_sql;
var
   primero : boolean;
   valor   : string;
begin
   primero := False;
   qyVista.SQL.Clear;
   qyVista.SQL.Add('SELECT '+select);
   if select2 <> '' then
      qyVista.SQL.Add(', '+select2);
   qyVista.SQL.Add('FROM '+tabla);

   dsConstructor_Detalle.DataSet.First;
   while not(dsConstructor_Detalle.DataSet.Eof) do
   begin
      if not(primero) then
      begin
         valor := 'WHERE '+whereAlways+'( ( '+dsConstructor_Detalle.DataSet.FieldByName('BD_CAMPO').AsString+' '+dsConstructor_Detalle.DataSet.FieldByName('BD_SENTENCIA').AsString+' '+dsConstructor_Detalle.DataSet.FieldByName('BD_VALOR').AsString+' )';
         qyVista.SQL.Add(valor);
         primero := True;
      end
      else
         begin
            valor := dsConstructor_Detalle.DataSet.FieldByName('BD_LOGICA').AsString+' ( '+dsConstructor_Detalle.DataSet.FieldByName('BD_CAMPO').AsString+' '+dsConstructor_Detalle.DataSet.FieldByName('BD_SENTENCIA').AsString+' '+dsConstructor_Detalle.DataSet.FieldByName('BD_VALOR').AsString+' )';
            qyVista.SQL.Add(valor);
         end;
      dsConstructor_Detalle.DataSet.Next;
   end;
   if primero then
      qyVista.SQL.Add(' )');
   ARecord := campos.Items[0];
   qyVista.SQL.Add('ORDER BY '+ARecord^.nombre);
end;

procedure TfrmConstructor.ibLimpiarClick(Sender: TObject);
begin
  qyConstructor.Close;
  qyConstructor.SQL.Clear;
  qyConstructor.SQL.Add('SELECT *');
  qyConstructor.SQL.Add('FROM CONSTRUCTOR');
  qyConstructor.SQL.Add('WHERE (FORMA = :P_FORMA) AND (USUARIO = :P_USUARIO) AND (TEMPORAL = "Si")');
  qyConstructor.ParamByName('P_FORMA').AsString    := forma;
  qyConstructor.ParamByName('P_USUARIO').AsInteger := reglas.dame_usuario;
  qyConstructor.Open;
  ibVista.OnClick(Sender);
end;

procedure TfrmConstructor.meSentenciasChange(Sender: TObject);
begin
  if meSentencias.Text = 'ENTRE' then
  begin
     deValor.Visible    := FALSE;
     deValorUno.Visible := TRUE;
     deValorDos.Visible := TRUE;
  end
  else
     begin
        deValor.Visible    := TRUE;
        deValorUno.Visible := FALSE;
        deValorDos.Visible := FALSE;
     end;
end;

procedure TfrmConstructor.ibAgregarClick(Sender: TObject);
   //analiza el campo valor del constructor
   function valor(p_valor, p_sentencia, p_alias : string) : string;
   var
      res            : string;
      entro          : boolean;
      tipo_de_dato   : TFieldType;
      es_tipo_cadena : boolean;
   begin
      entro          := False;
      tipo_de_dato   := qyVista.FieldByName(ARecord^.Alias).DataType;
      es_tipo_cadena := (tipo_de_dato = ftString) or (tipo_de_dato = ftDate) or (tipo_de_dato = ftDateTime) or (tipo_de_dato = ftTime);

      if (p_sentencia = 'SEMEJANTE') then
      begin
         res   := '%'+p_valor+'%';
         entro := True;
      end
      else
      if (p_sentencia = 'SEMEJANTE AL INICIO') then
      begin
         res   := p_valor+'%';
         entro := True;
      end
      else
      if (p_sentencia = 'SEMEJANTE AL FINAL') then
      begin
         res   := '%'+p_valor;
         entro := True;
      end
      else
         res := p_valor;

      if entro or es_tipo_cadena then
         res := ''''+res+'''';

      Result := res;
   end;
   //analiza el campo between
   function valorDato(alias : string) : string;
   var
      resultado : string;
      meses     : array[1..12] of string;
   begin
      meses[1]  := 'Jan';
      meses[2]  := 'Feb';
      meses[3]  := 'Mar';
      meses[4]  := 'Apr';
      meses[5]  := 'May';
      meses[6]  := 'Jun';
      meses[7]  := 'Jul';
      meses[8]  := 'Aug';
      meses[9]  := 'Sep';
      meses[10] := 'Oct';
      meses[11] := 'Nov';
      meses[12] := 'Dec';

      if meSentencias.Text = 'ENTRE' then
      begin
         resultado := '''' + FormatDateTime('dd-',deValorUno.Date)+meses[StrToInt(FormatDateTime('m',deValorUno.Date))]+FormatDateTime('-yyyy',deValorUno.Date)+ ''''+ ' AND '+''''+FormatDateTime('dd-',deValorDos.Date + 1)+meses[StrToInt(FormatDateTime('m',deValorDos.Date + 1))]+FormatDateTime('-yyyy',deValorDos.Date + 1)+'''';
      end
      else
        resultado := valor(deValor.Text, meSentencias.Text, alias);
      Result := resultado;
   end;
   //analiza el campo logica del contructor
   function logica(valor : string) : string;
   var
      res : string;
   begin
      if valor = 'Y' then
         res := 'AND'
      else
      if valor = 'O' then
         res := 'OR';
      Result := res;
   end;
   //analiza el campo sentencia del constructor
   function sentencia(valor : string) : string;
   var
      res : string;
   begin
      if valor = 'IGUAL' then
         res := '='
      else
      if valor = 'MAYOR QUE' then
         res := '>'
      else
      if valor = 'MENOR QUE' then
         res := '<'
      else
      if valor = 'MAYOR O IGUAL QUE' then
         res := '>='
      else
      if valor = 'MENOR O IGUAL QUE' then
         res := '<='
      else
      if valor = 'DIFERENTE DE' then
         res := '<>'
      else
      if (valor = 'SEMEJANTE') or (valor = 'SEMEJANTE AL INICIO') or (valor = 'SEMEJANTE AL FINAL') then
         res := 'LIKE'
      else
      if valor = 'ENTRE' then
         res := 'BETWEEN';
      Result := res;
   end;
var
   error : boolean;
   id    : integer;
   dato  : string;
   campo : string;
begin
  error := False;

  {
  if cbCampos.Text = '' then
  begin
     ledCampos.Blinking := True;
     error              := True;
  end
  else
     begin
        ledCampos.Blinking := False;
        ledCampos.LedisOn  := False;
     end;

  if meSentencias.Text = '' then
  begin
     ledSentencias.Blinking := True;
     error                  := True;
  end
  else
     begin
        ledSentencias.Blinking := False;
        ledSentencias.LedisOn  := False;
     end;

  if deValor.Visible then
  begin
     if deValor.Text = '' then
     begin
        ledValor.Blinking := True;
        error             := True;
     end
     else
        begin
           ledValor.Blinking := False;
           ledValor.LedisOn  := False;
        end;
  end
  else
     begin

        if (deValorUno.Text = '  /  /    ') or (deValorDos.Text = '  /  /    ') then
        begin
           ledValor.Blinking := True;
           error             := True;
        end
        else
           begin
              ledValor.Blinking := False;
              ledValor.LedisOn  := False;
           end;
     end;

  if (meLogica.Text = 'NINGUNA') and not(dsConstructor_Detalle.DataSet.IsEmpty) then
  begin
     ledLogica.Blinking := True;
     error              := True;
  end
  else
     begin
        ledLogica.Blinking := False;
        ledLogica.LedisOn  := False;
     end;
  }
  //agrega la sentencia si no hay error
  if not(Error) then
  begin
     if meSentencias.Text = 'ENTRE' then
        dato := DateToStr(deValorUno.Date) + ' Y ' + DateToStr( deValorDos.Date)
     else
        dato := deValor.Text;
     //agrega el encabezado si es el primer registro
     if dsConstructor.DataSet.IsEmpty then
     begin
        spADD_CONSTRUCTOR.ParamByName('P_FORMA').AsString    := UpperCase(forma);
        spADD_CONSTRUCTOR.ParamByName('P_NOMBRE').AsString   := 'Temporal';
        spADD_CONSTRUCTOR.ParamByName('P_CONSULTA').AsString := consulta;
        spADD_CONSTRUCTOR.ParamByName('P_TEMPORAL').AsString := 'Si';
        spADD_CONSTRUCTOR.ParamByName('P_USUARIO').AsInteger := reglas.dame_usuario;
        spADD_CONSTRUCTOR.ExecProc;
        spADD_CONSTRUCTOR.Transaction.CommitRetaining;
        id := spADD_CONSTRUCTOR.ParamByName('R_ID').AsInteger;
        reglas.abrir_IBQuery(qyConstructor);
     end
     else
        id := dsConstructor.DataSet.FieldByName('ID').AsInteger;

      ARecord := campos.Items[cbCampos.ItemIndex];
      campo   := ARecord^.nombre;

     spADD_CONSTRUCTOR_DETALLE.ParamByName('P_CONSTRUCTOR').AsInteger  := id;
     spADD_CONSTRUCTOR_DETALLE.ParamByName('P_USR_CAMPO').AsString     := cbCampos.Text;
     spADD_CONSTRUCTOR_DETALLE.ParamByName('P_USR_SENTENCIA').AsString := meSentencias.Text;
     spADD_CONSTRUCTOR_DETALLE.ParamByName('P_USR_LOGICA').AsString    := meLogica.Text;
     spADD_CONSTRUCTOR_DETALLE.ParamByName('P_USR_VALOR').AsString     := dato;
     spADD_CONSTRUCTOR_DETALLE.ParamByName('P_BD_CAMPO').AsString      := campo;
     spADD_CONSTRUCTOR_DETALLE.ParamByName('P_BD_SENTENCIA').AsString  := sentencia(meSentencias.Text);
     spADD_CONSTRUCTOR_DETALLE.ParamByName('P_BD_LOGICA').AsString     := logica(meLogica.Text);
     spADD_CONSTRUCTOR_DETALLE.ParamByName('P_BD_VALOR').AsString      := valorDato(cbCampos.Text);
     spADD_CONSTRUCTOR_DETALLE.ExecProc;
     spADD_CONSTRUCTOR_DETALLE.Transaction.CommitRetaining;
     reglas.abrir_IBQuery(qyConstructor_Detalle);
  end;
end;

procedure TfrmConstructor.ibVistaClick(Sender: TObject);
begin
  qyVista.Close;
  armar_sql;
  qyVista.Open;
end;

procedure TfrmConstructor.ibGuardarClick(Sender: TObject);
var
   id_tmp : integer;
begin
{
  idConstructor.Execute;
  if idConstructor.Respuesta then
  begin
     id_tmp := dsConstructor.DataSet.FieldByName('ID').AsInteger;
     spACTUALIZA_CONSTRUCTOR.ParamByName('P_ID').AsInteger    := id_tmp;
     spACTUALIZA_CONSTRUCTOR.ParamByName('P_NOMBRE').AsString := idConstructor.Entrada;
     spACTUALIZA_CONSTRUCTOR.ExecProc;
     spACTUALIZA_CONSTRUCTOR.Transaction.CommitRetaining;
     reglas.refresh_IBQuery(qyConstructor);
     reglas.abrir_IBQuery_seek('ID',id_tmp,qyAlmacenados);
     sbConsultas.Click;
  end
  else
     begin
        ShowMessage('Consulta no guardada');
     end;
     }
end;

procedure TfrmConstructor.ibEliminarClick(Sender: TObject);
var
   id_tmp : integer;
begin
  if cbAlmacenadas.Text <> '' then
  begin
     id_tmp := dsAlmacenados.DataSet.FieldByName('ID').AsInteger;
     spCONSTRUCTOR_ELIMINAR.ParamByName('P_ID').AsInteger := id_tmp;
     spCONSTRUCTOR_ELIMINAR.ExecProc;
     spCONSTRUCTOR_ELIMINAR.Transaction.CommitRetaining;
     reglas.refresh_IBQuery(qyConstructor);
     reglas.refresh_IBQuery(qyAlmacenados);
     ibLimpiar.OnClick(Sender);
  end;
end;

procedure TfrmConstructor.dgDetalleKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 46 then //DELETE
  begin
     if not(dsConstructor_Detalle.DataSet.IsEmpty) then
     begin
        spDEL_CONSTRUCTOR_DETALLE.ParamByName('P_ID').AsInteger := dsConstructor_detalle.DataSet.FieldByName('ID').AsInteger;
        spDEL_CONSTRUCTOR_DETALLE.ExecProc;
        spDEL_CONSTRUCTOR_DETALLE.Transaction.CommitRetaining;
        reglas.abrir_IBQuery(qyConstructor_Detalle);
     end;
  end;
end;

procedure TfrmConstructor.cbAlmacenadasChange(Sender: TObject);
begin
  sbConsultas.Click;
end;

procedure TfrmConstructor.deValorUnoExit(Sender: TObject);
begin
  deValorDos.Date := deValorUno.Date;
end;

procedure TfrmConstructor.Limpiar1Click(Sender: TObject);
begin
   ibLimpiar.Click;
end;

procedure TfrmConstructor.NuevaPartida1Click(Sender: TObject);
begin
   ibAgregar.Click;
end;

procedure TfrmConstructor.ModificarPartida1Click(Sender: TObject);
begin
  ibVista.Click;
end;

procedure TfrmConstructor.GuardarPartida1Click(Sender: TObject);
begin
  ibGuardar.Click;
end;

procedure TfrmConstructor.CancelarPartida1Click(Sender: TObject);
begin
  ibCancelar.Click;
end;

procedure TfrmConstructor.EliminarPartida1Click(Sender: TObject);
begin
  ibEliminar.Click;
end;

procedure TfrmConstructor.Pedidos1Click(Sender: TObject);
begin
  ibAplicar.Click;
end;

procedure TfrmConstructor.sbConsultasClick(Sender: TObject);
begin
  if cbAlmacenadas.Text <> '' then
  begin
     qyConstructor.Close;
     qyConstructor.SQL.Clear;
     qyConstructor.SQL.Add('SELECT *');
     qyConstructor.SQL.Add('FROM CONSTRUCTOR');
     qyConstructor.SQL.Add('WHERE ID = '+dsAlmacenados.DataSet.FieldByName('ID').AsString);
     qyConstructor.Open;
     ibVista.OnClick(Sender);
  end;
end;

procedure TfrmConstructor.qyConstructorAfterOpen(DataSet: TDataSet);
begin
   reglas.abrir_IBQuery(qyConstructor_Detalle);
end;

procedure TfrmConstructor.qyAlmacenadosAfterOpen(DataSet: TDataSet);
begin
   reglas.refresh_IBQuery(qyAlmacenadosDetalle);
end;

procedure TfrmConstructor.ibAplicarClick(Sender: TObject);
begin
   armar_sql;
end;

procedure TfrmConstructor.dgDetalleColumn5ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
   if not(dsConstructor_Detalle.DataSet.IsEmpty) then
   begin
      spDEL_CONSTRUCTOR_DETALLE.ParamByName('P_ID').AsInteger := dsConstructor_detalle.DataSet.FieldByName('ID').AsInteger;
      spDEL_CONSTRUCTOR_DETALLE.ExecProc;
      spDEL_CONSTRUCTOR_DETALLE.Transaction.CommitRetaining;
      reglas.abrir_IBQuery(qyConstructor_Detalle);
   end;
end;

procedure TfrmConstructor.FormCreate(Sender: TObject);
begin
   reglas.abrir_IBTabla(dmIBData.TPreferencias);
end;

end.
