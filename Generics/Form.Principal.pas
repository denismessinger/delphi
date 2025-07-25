unit Form.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, System.Generics.Collections;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    ColorBox1: TColorBox;
    Edit1: TEdit;
    BtnAdicionar: TButton;
    BtnArrays: TButton;
    Panel2: TPanel;
    Splitter1: TSplitter;
    ListBoxCores: TListBox;
    procedure BtnAdicionarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ListBoxCoresClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    FListaCores : TDictionary<string, TColor>;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.BtnAdicionarClick(Sender: TObject);
begin
  if Edit1.Text = '' then
  begin
    raise Exception.Create('Informe um nome!');
  end;

  if ColorBox1.Selected = clDefault then
  begin
    raise Exception.Create('Informe uma cor!');
  end;

  if FListaCores.ContainsKey(Edit1.Text) then
  begin
    raise Exception.Create('Nome j� informado!');
  end;

  if FListaCores.ContainsValue(ColorBox1.Selected) then
  begin
    raise Exception.Create('Cor j� selecionada!');
  end;

  ListBoxCores.Items.Add(Edit1.Text);
  Panel2.Color := ColorBox1.Selected;
  FListaCores.Add(Edit1.Text, ColorBox1.Selected);

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  FListaCores := TDictionary<string, TColor>.Create
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  FListaCores.Free;
end;

procedure TForm1.ListBoxCoresClick(Sender: TObject);
begin
  if ListBoxCores.ItemIndex > -1 then
  begin
    var i : Integer := ListBoxCores.ItemIndex;
    Panel2.Color := FListaCores[ListBoxCores.Items[i]];
  end;

end;

end.
