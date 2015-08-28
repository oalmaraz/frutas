unit UfrmInfo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Menus, Buttons, StdCtrls, ExtCtrls;

type
  TfrmInfo = class(TForm)
    imBack: TImage;
    Label1: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    edNombre: TEdit;
    Shape3: TShape;
    Label2: TLabel;
    Shape4: TShape;
    edTelefono: TEdit;
    Label3: TLabel;
    Shape5: TShape;
    Shape6: TShape;
    edTarjeta: TEdit;
    ibEjecutar: TBitBtn;
    Shape7: TShape;
    Label4: TLabel;
    Shape8: TShape;
    Bevel1: TBevel;
    ppFunciones: TPopupMenu;
    Ejecutar1: TMenuItem;
    Shape14: TShape;
    Label20: TLabel;
    Shape15: TShape;
    edPuntos: TEdit;
    procedure ibEjecutarClick(Sender: TObject);
    procedure Ejecutar1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmInfo: TfrmInfo;

implementation

{$R *.DFM}

procedure TfrmInfo.ibEjecutarClick(Sender: TObject);
begin
   if edTarjeta.Text <> '' then
      Close
   else
      begin
         ShowMessage('Falta capturar tarjeta (Monedero Electronico)');
         edTarjeta.SetFocus;
      end;
end;

procedure TfrmInfo.Ejecutar1Click(Sender: TObject);
begin
   ibEjecutar.Click;
end;

procedure TfrmInfo.FormActivate(Sender: TObject);
begin
   if edNombre.Color = edPuntos.Color then
      edTarjeta.SetFocus
   else
      edNombre.SetFocus;
end;

end.
