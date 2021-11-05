unit UEntrada;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, ULogin, ComCtrls;

type
  TfEntrada = class(TForm)
    Image1: TImage;
    Timer1: TTimer;
    LabelBarra: TLabel;
    ProgressBar1: TProgressBar;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fEntrada: TfEntrada;

implementation

{$R *.dfm}

procedure TfEntrada.Timer1Timer(Sender: TObject);
begin
ProgressBar1.Position := ProgressBar1.position + 1;
LabelBarra.caption := IntToStr(ProgressBar1.Position) + '%';

  if ProgressBar1.Position = 100 then
begin
  fEntrada.Destroy;
  if (fLogin = nil) then
    begin
    fLogin := TfLogin.create(application);
    end;
    fLogin.show;
end;

end;

end.
