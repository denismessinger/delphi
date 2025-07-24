program Exemplo_OO2;

uses
  Vcl.Forms,
  Form.Principal in 'Form.Principal.pas' {Form1},
  Form.Cadastro in 'Form.Cadastro.pas' {Form2},
  Classe.InfAnimal in 'Classe.InfAnimal.pas',
  Classe.Mamiferos in 'Classe.Mamiferos.pas',
  Classe.Oviparo in 'Classe.Oviparo.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
