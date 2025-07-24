program Exemplo_OO1;

uses
  Vcl.Forms,
  OOP in 'OOP.pas' {Form1},
  Form.Visualizar.Pessoa in 'Form.Visualizar.Pessoa.pas' {Form2},
  Classe.Pessoa in 'Classe.Pessoa.pas',
  Form.PessoaBD in 'Form.PessoaBD.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, frmVisualizaPessoa);
  Application.CreateForm(TForm3, fmrPessoaDB);
  Application.Run;
end.
