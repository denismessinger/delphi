program ModeloConversor;

uses
  Vcl.Forms,
  ProjetosDelphi in 'ProjetosDelphi.pas' {Form1},
  Conversor.Moeda in 'Conversor.Moeda.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
