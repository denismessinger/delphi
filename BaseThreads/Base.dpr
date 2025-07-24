program Base;

uses
  Vcl.Forms,
  Form.Principal in 'Form.Principal.pas' {Form1},
  Form.ThreadEcept in 'Form.ThreadEcept.pas' {Form2},
  Form.CriticalSection in 'Form.CriticalSection.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
