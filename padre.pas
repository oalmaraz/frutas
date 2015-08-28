unit padre;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  jpeg,  ExtCtrls,  StdCtrls;

type
  TfrmPadre = class(TForm)
    fpPadre: TPanel;
    Panel1: TPanel;
    Titulo: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

{var
  frmPadre: TfrmPadre;}

implementation

uses db;

{$R *.DFM}

procedure TfrmPadre.FormClose(Sender: TObject; var Action: TCloseAction);
var
   i : integer;
begin
   for i := 0 to ComponentCount-1 do
      if Components[i] is TDataSource then
      begin
         if TDataSource(Components[i]).DataSet <> nil then
         begin
            if not(TDataSource(Components[i]).DataSet.State = dsInactive) then
            begin
               if TDataSource(Components[i]).DataSet.State in [dsEdit, dsInsert] then
                  TDataSource(Components[i]).DataSet.Cancel;
               TDataSource(Components[i]).DataSet.Close;
            end;
         end;
      end;
end;

end.
