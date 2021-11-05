program Estoque;

uses
  Forms,
  UEntrada in 'UEntrada.pas' {fEntrada},
  ULogin in 'ULogin.pas' {fLogin},
  UModuloDados in 'UModuloDados.pas' {ModuloDados: TDataModule},
  UMenuSistema in 'UMenuSistema.pas' {fMenuSistema};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfEntrada, fEntrada);
  Application.CreateForm(TModuloDados, ModuloDados);
  Application.Run;
end.
