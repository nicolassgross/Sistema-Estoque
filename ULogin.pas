unit ULogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, Buttons, StdCtrls, UModuloDados, UMenuSistema;

type
  TfLogin = class(TForm)
    Panel1: TPanel;
    imgLogin: TImage;
    labelLogin: TLabel;
    labelSenha: TLabel;
    editUsuario: TEdit;
    editSenha: TEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure editSenhaEnter(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fLogin: TfLogin;

implementation

{$R *.dfm}

procedure TfLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate;
end;

procedure TfLogin.SpeedButton1Click(Sender: TObject);
begin
  ModuloDados.IBQuery1.Close;
  ModuloDados.IBQuery1.ParamByName('name').AsString := editUsuario.Text;
  ModuloDados.IBQuery1.ParamByName('password').AsString := editSenha.Text;
  ModuloDados.IBQuery1.Open;
  if ModuloDados.IBQuery1.FieldByName('CONTADOR').AsInteger = 1 then
    begin
    showmessage('Usu?rio autenticado com sucesso');
      if (fMenuSistema = nil) then
      begin
      fMenuSistema := TfMenuSistema.create(application);
      end;
      fMenuSistema.show;
      fLogin.Destroy;
    end
  else
    showmessage('Usu?rio ou senha inv?lidos!')
end;

procedure TfLogin.editSenhaEnter(Sender: TObject);
begin
    editSenha.Text := '';
end;

procedure TfLogin.SpeedButton3Click(Sender: TObject);
begin
  showmessage('Voc? ir? sair da aplica??o!');
  Application.Terminate;
end;

end.
