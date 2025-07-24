unit ProjetosDelphi;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    FlowPanel1: TFlowPanel;
    FlowPanel2: TFlowPanel;
    Label1: TLabel;
    ComboBox1: TComboBox;
    Label2: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Edit2: TEdit;
    Label5: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Conversor.Moeda;

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = Char(VK_RETURN) then
  begin
    Edit2.Text := TConversorMoeda.ConverterValor(Combobox1.ItemIndex,Edit1.Text);
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  //ComboBox1.Items.Add('Converter REAL -> EURO');
  //ComboBox1.Items.Add('Converter REAL -> DOLAR');
end;

end.
