program TeseComponente;

uses
  Vcl.Forms,
  ExemplosComponentes in 'ExemplosComponentes.pas' {Form1},
  Classe.Base in 'Classe.Base.pas',
  Classe.Patrimonio in 'Classe.Patrimonio.pas',
  Classe.Imovel in 'Classe.Imovel.pas',
  Classe.Veiculo in 'Classe.Veiculo.pas',
  Classe.Pessoas in 'Classe.Pessoas.pas',
  Frame.Cliente in 'Frame.Cliente.pas' {Frame1: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
