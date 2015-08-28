unit UfrmFTP;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, ExtCtrls, StdCtrls;

type
  TfrmFTP = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edServidor: TEdit;
    edUsuario: TEdit;
    edClave: TEdit;
    buF10: TBitBtn;
    buF9: TBitBtn;
    Bevel1: TBevel;
    edPuerto: TEdit;
    paEnc: TPanel;
    Label5: TLabel;
    edDestino: TEdit;
    procedure buF9Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFTP: TfrmFTP;

implementation

uses
  FileCtrl, iniFiles, reglas_de_negocios;

{$R *.DFM}

procedure TfrmFTP.buF9Click(Sender: TObject);
var
   iniFile : TIniFile;
   ruta    : string;
begin
   ruta  := ExtractFilePath(ParamStr(0))+'ftp';
   if not DirectoryExists(ruta) then
   begin
       if not CreateDir(ruta) then
           raise Exception.Create('No se puede crear '+ruta)
       else
       begin
         ShowMessage('No olvide copiar los formatos, son necesarios para el envio de informacion.');
       end
   end;

   ruta := ruta + '\awrFTP.INI';

   edClave.Text    := reglas.espejo(edClave.Text);
   edClave.Text    := reglas.encriptar(edClave.text);
   //grabar archivo de configuracion
   iniFile := nil;
   try
      iniFile := TIniFile.Create(ruta);
      iniFile.WriteString('FTP','Servidor',edServidor.Text);
      iniFile.WriteString('FTP','Destino',edDestino.Text);
      iniFile.WriteString('FTP','Usuario',edUsuario.Text);
      iniFile.WriteString('FTP','Clave',edClave.Text);
      iniFile.WriteString('FTP','Puerto',edPuerto.Text);
   finally
      iniFile.Free;
   end;
end;

end.
