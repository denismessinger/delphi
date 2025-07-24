unit Form.Visualizar.Pessoa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Classe.Pessoa, System.Generics.Collections;

type
  TForm2 = class(TForm)
    ListBoxPessoas: TListBox;
    MemoPessoas: TMemo;
    procedure FormDestroy(Sender: TObject);
    procedure VisualizaPessoa(pes: TPessoa);
    procedure FormCreate(Sender: TObject);
    procedure ListBoxPessoasClick(Sender: TObject);
  private
    FPessoas: TDictionary<string, TPessoa>;
  public
    { Public declarations }
  end;

var
  frmVisualizaPessoa: TForm2;

implementation

{$R *.dfm}

procedure TForm2.FormCreate(Sender: TObject);
begin
  FPessoas := TDictionary<string, TPessoa>.Create;
end;

procedure TForm2.FormDestroy(Sender: TObject);
begin

  for var pes: TPessoa in FPessoas.Values do
  begin
    pes.Free;
  end;

  FPessoas.Free;

end;

procedure TForm2.ListBoxPessoasClick(Sender: TObject);
begin
  MemoPessoas.Clear;
  if ListBoxPessoas.ItemIndex <> -1 { Não Selecionado } then
  begin
    var pes: TPessoa := FPessoas[ListBoxPessoas.Items[ListBoxPessoas.ItemIndex]];
    MemoPessoas.Lines.Add(pes.ClassName);
    MemoPessoas.Lines.Add(pes.ToString);
  end;
end;

procedure TForm2.VisualizaPessoa(pes: TPessoa);
begin

  if not FPessoas.ContainsKey(pes.Codigo.ToString) then
  begin
    FPessoas.Add(pes.Codigo.ToString, pes);
    ListBoxPessoas.Items.Add(pes.Codigo.ToString);
  end;

  MemoPessoas.Lines.Add(pes.ClassName);
  MemoPessoas.Lines.Add(pes.ToString);

end;

end.
