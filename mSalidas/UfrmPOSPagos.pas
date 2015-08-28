unit UfrmPOSPagos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  capturar_punto_de_ventas_pagos,   Db, Menus,
  IBStoredProc, IBCustomDataSet, IBQuery, DBGrids, ComCtrls, jpeg,
  ExtCtrls, Grids, DBCtrls, StdCtrls, Buttons, Mask;

type
  TfrmPOSPagos = class(TfrmCapturar_punto_de_ventas_pagos)
    buF5: TBitBtn;
    buF6: TBitBtn;
    buF7: TBitBtn;
    itemF5: TMenuItem;
    itemTCredito: TMenuItem;
    itemVales: TMenuItem;
    Bevel1: TBevel;
    Panel1: TPanel;
    fcImager1: TImage;
    fcImager5: TImage;
    fcImager4: TImage;
    procedure buF5Click(Sender: TObject);
    procedure itemF5Click(Sender: TObject);
    procedure itemTCreditoClick(Sender: TObject);
    procedure itemValesClick(Sender: TObject);
    procedure buF6Click(Sender: TObject);
    procedure buF7Click(Sender: TObject);
    procedure buF9Click(Sender: TObject);
    procedure cbFacturarChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPOSPagos: TfrmPOSPagos;

implementation

uses
  UfrmPOSEfectivo, reglas_de_negocios, UfrmPOSTC, UfrmPOSVales;

{$R *.DFM}

procedure TfrmPOSPagos.buF5Click(Sender: TObject);
var
   mr : TModalResult;
begin
  inherited;

   frmPOSEfectivo := TfrmPOSEfectivo.Create(self);
   try
      frmPOSEfectivo.POS := dsEncabezado.DataSet.FieldByName('R_ID').AsInteger;
      mr := frmPOSEfectivo.ShowModal;
   finally
     frmPOSEfectivo.Free;
   end;

   if mr = mrOk then
   begin
      reglas.abrir_IBQuery_seek('R_ID',dsEncabezado.DataSet.FieldByName('R_ID').AsInteger, TIBQuery(dsEncabezado.DataSet));
      reglas.abrir_IBQuery_seek('R_ID',qyCComerciales.FieldByName('R_ID').AsInteger, qyCComerciales);

      laSaldo.Caption := FormatFloat('$ ###,###,##0.00',dsEncabezado.DataSet.FieldByName('R_SALDO').AsFloat);
      if dsEncabezado.DataSet.FieldByName('R_SALDO').AsFloat < 0 then //menor a cero para generar nuevo cupon
      begin
         //laSaldo.HotTrack  := true;
         laSaldo.Cursor    := crHandPoint;
         laF4.Visible      := true;
         itemF4.Visible    := true;
      end
      else
         begin
           // laSaldo.HotTrack  := false;
            laSaldo.Cursor    := crDefault;
            laF4.Visible      := false;
            itemF4.Visible    := false;
         end;
      dgFormaPago.SetFocus;
   end;

   fijarBotonesP(false);

   if buF12Imp.Enabled then
      buF12Imp.SetFocus;
end;

procedure TfrmPOSPagos.itemF5Click(Sender: TObject);
begin
  inherited;
  buF5.Click;
end;

procedure TfrmPOSPagos.itemTCreditoClick(Sender: TObject);
begin
  inherited;
  buF6.Click;
end;

procedure TfrmPOSPagos.itemValesClick(Sender: TObject);
begin
  inherited;
  buF7.Click;
end;

procedure TfrmPOSPagos.buF6Click(Sender: TObject);
var
   mr : TModalResult;
begin
  inherited;

   frmPOSTC := TfrmPOSTC.Create(self);
   try
      frmPOSTC.POS := dsEncabezado.DataSet.FieldByName('R_ID').AsInteger;
      mr := frmPOSTC.ShowModal;
   finally
     frmPOSTC.Free;
   end;

   if mr = mrOk then
   begin
      reglas.abrir_IBQuery_seek('R_ID',dsEncabezado.DataSet.FieldByName('R_ID').AsInteger, TIBQuery(dsEncabezado.DataSet));
      reglas.abrir_IBQuery_seek('R_ID',qyCComerciales.FieldByName('R_ID').AsInteger, qyCComerciales);

      laSaldo.Caption := FormatFloat('$ ###,###,##0.00',dsEncabezado.DataSet.FieldByName('R_SALDO').AsFloat);
      if dsEncabezado.DataSet.FieldByName('R_SALDO').AsFloat < 0 then //menor a cero para generar nuevo cupon
      begin
         //laSaldo.HotTrack  := true;
         laSaldo.Cursor    := crHandPoint;
         laF4.Visible      := true;
         itemF4.Visible    := true;
      end
      else
         begin
            //laSaldo.HotTrack  := false;
            laSaldo.Cursor    := crDefault;
            laF4.Visible      := false;
            itemF4.Visible    := false;
         end;
      dgFormaPago.SetFocus;
   end;
   fijarBotonesP(false);

   if buF12Imp.Enabled then
      buF12Imp.SetFocus;
end;

procedure TfrmPOSPagos.buF7Click(Sender: TObject);
var
   mr : TModalResult;
begin
  inherited;

   frmPOSVales := TfrmPOSVales.Create(self);
   try
      frmPOSVales.POS := dsEncabezado.DataSet.FieldByName('R_ID').AsInteger;
      mr := frmPOSVales.ShowModal;
   finally
     frmPOSVales.Free;
   end;

   if mr = mrOk then
   begin
      reglas.abrir_IBQuery_seek('R_ID',dsEncabezado.DataSet.FieldByName('R_ID').AsInteger, TIBQuery(dsEncabezado.DataSet));
      reglas.abrir_IBQuery_seek('R_ID',qyCComerciales.FieldByName('R_ID').AsInteger, qyCComerciales);

      laSaldo.Caption := FormatFloat('$ ###,###,##0.00',dsEncabezado.DataSet.FieldByName('R_SALDO').AsFloat);
      if dsEncabezado.DataSet.FieldByName('R_SALDO').AsFloat < 0 then //menor a cero para generar nuevo cupon
      begin
        // laSaldo.HotTrack  := true;
         laSaldo.Cursor    := crHandPoint;
         laF4.Visible      := true;
         itemF4.Visible    := true;
      end
      else
         begin
          //  laSaldo.HotTrack  := false;
            laSaldo.Cursor    := crDefault;
            laF4.Visible      := false;
            itemF4.Visible    := false;
         end;
      dgFormaPago.SetFocus;
   end;
   fijarBotonesP(false);

   if buF12Imp.Enabled then
      buF12Imp.SetFocus;
end;

procedure TfrmPOSPagos.buF9Click(Sender: TObject);
begin
  inherited;
   if buF12Imp.Enabled then
      buF12Imp.SetFocus;
end;

procedure TfrmPOSPagos.cbFacturarChange(Sender: TObject);
begin
  inherited;
  if buF12Imp.Enabled then
     buF12Imp.SetFocus
  else
  if buF5.Enabled then
     buF5.SetFocus;
end;

procedure TfrmPOSPagos.FormShow(Sender: TObject);
begin
  inherited;
  if (dsEncabezado.DataSet.FieldByName('R_SALDO').AsFloat = 0) and (buF12Imp.Enabled) then
     buF12Imp.SetFocus;
end;

end.
