unit UfrmBasculaPuerto;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls,   ExtCtrls, Buttons;

type
  TPuertoCom = record
               Name : string;
      BitsPerSecond : string;
           DataBits : string;
             Parity : string;
           StopBits : string;
        FlowControl : string;
  end;

  TfrmBasculaPuerto = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    cbParity: TComboBox;
    cbStopBits: TComboBox;
    cbFlowControl: TComboBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    cbBPS: TComboBox;
    cbDB: TComboBox;
    buProbar: TButton;
    buGuardar: TBitBtn;
    buCancelar: TBitBtn;
    cbPuertos: TComboBox;
    procedure buProbarClick(Sender: TObject);
    procedure buGuardarClick(Sender: TObject);
  private
    { Private declarations }
    puerto : TPuertoCom;
  public
    { Public declarations }
  end;

var
  frmBasculaPuerto: TfrmBasculaPuerto;

implementation

uses
   TypInfo, Inifiles;

{$R *.DFM}

procedure TfrmBasculaPuerto.buProbarClick(Sender: TObject);
begin
{
   setPropValue(nrBarCodeScan1, 'ComPort',        cbPuertos.Text);
   setPropValue(nrBarCodeScan1, 'BaudRate',       cbBPS.Text);
   setPropValue(nrBarCodeScan1, 'ByteSize',       cbDB.Text);
   setPropValue(nrBarCodeScan1, 'Parity',         cbParity.Text);
   setPropValue(nrBarCodeScan1, 'StopBits',       cbStopBits.Text);
   setPropValue(nrBarCodeScan1, 'StreamProtocol', cbFlowControl.Text);

   try
      nrBarCodeScan1.Active := true;
      ShowMessage('Se logro activar.');
      nrBarCodeScan1.Active := false;
   except
      ShowMessage('No se logro activar.');
   end;
   }
end;

procedure TfrmBasculaPuerto.buGuardarClick(Sender: TObject);
var
   iniFile : TIniFile;
begin
   iniFile := TIniFile.Create(ChangeFileExt(Application.ExeName,'.INI'));
   iniFile.WriteString('POS_PUERTO','Name',          cbPuertos.Text);
   iniFile.WriteString('POS_PUERTO','BitsPerSecond', cbBPS.Text);
   iniFile.WriteString('POS_PUERTO','DataBits',      cbDB.Text);
   iniFile.WriteString('POS_PUERTO','Parity',        cbParity.Text);
   iniFile.WriteString('POS_PUERTO','StopBits',      cbStopBits.Text);
   iniFile.WriteString('POS_PUERTO','FlowControl',   cbFlowControl.Text);
   iniFile.Free;

   self.ModalResult := mrOk;
end;

end.
