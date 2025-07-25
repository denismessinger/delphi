unit OOP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Classe.Pessoa;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    BtnVisualizar: TButton;
    MemoPrincipal: TMemo;
    btnInstancia: TButton;
    PessoaDB: TButton;
    procedure BtnVisualizarClick(Sender: TObject);
    procedure btnInstanciaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PessoaDBClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses
  Form.Visualizar.Pessoa, Form.PessoaBD;

procedure TForm1.btnInstanciaClick(Sender: TObject);
begin

  var pes1: TPessoa := nil;
  pes1 := TPessoa.Create;

  pes1.Codigo := 1;
  pes1.Saldo := 10;
  MemoPrincipal.Lines.Add(intToStr(pes1.Codigo));
  pes1.Free;

end;

procedure TForm1.BtnVisualizarClick(Sender: TObject);
begin
  for var i := 0 to 1 do
  begin
    var pes : TPessoa;

    if Random(10) div 2 = 0 then
    begin
      pes := TPessoaFisica.Create;
      TPessoaMock.GeraPessoaFisica(TPessoaFisica(pes));
    end else begin
      pes := TPessoaJuridica.Create;
      TPessoaMock.GeraPessoaJuridica(pes as TPessoaJuridica);
    end;

   frmVisualizaPessoa.VisualizaPessoa(pes);

  end;

  frmVisualizaPessoa.Show;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  ReportMemoryLeaksOnShutdown := True;
end;

procedure TForm1.PessoaDBClick(Sender: TObject);
begin
  fmrPessoaDB.Show;
end;

end.
