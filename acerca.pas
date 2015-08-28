unit acerca;

interface
             
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
    StdCtrls, DBCtrls,
  jpeg, Buttons;

type
  TfrmAcerca = class(TForm)
    dtNombre: TDBText;
    Label3: TLabel;
    laVersion: TLabel;
    Label12: TLabel;
    fcLabel1: TLabel;
    buColaboradores: TBitBtn;
    bt: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure buColaboradoresClick(Sender: TObject);
    procedure btClick(Sender: TObject);
  private
    { Private declarations }
    verMayor    : string;
    verMenor    : string;
    verLiberada : string;
    procedure setLiberada(valor : string);
  public
    { Public declarations }
  published
    property vMayor    : string read verMayor write verMayor;
    property vMenor    : string read verMenor write verMenor;
    property vLiberada : string read verLiberada write setLiberada;
  end;

var
  frmAcerca: TfrmAcerca;

implementation

uses IBModulo, IBData, reglas_de_negocios, UfrmColaboradores;

{$R *.DFM}

procedure TfrmAcerca.setLiberada(valor : string);
begin
   verLiberada       := valor;
   laVersion.Caption := verMayor+'.'+verMenor+'.'+valor;
end;

procedure TfrmAcerca.FormCreate(Sender: TObject);
begin
   reglas.abrir_IBTabla(dmIBData.taPreferencias);
end;

procedure TfrmAcerca.buColaboradoresClick(Sender: TObject);
begin
   try
      frmColaboradores := TfrmColaboradores.Create(Application);
      frmColaboradores.ShowModal;
   finally
      frmColaboradores.Free;
   end;
end;

procedure TfrmAcerca.btClick(Sender: TObject);
begin
   Close;
end;

end.
