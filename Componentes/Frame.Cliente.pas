unit Frame.Cliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFrame1 = class(TFrame)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Cliente: TLabel;
    BtnLigar: TButton;
    BtnImprimir: TButton;
    LbCliente: TLabel;
    Label1: TLabel;
    Panel4: TPanel;
    procedure BtnLigarClick(Sender: TObject);
    procedure BtnImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TFrame1.BtnImprimirClick(Sender: TObject);
begin
  ShowMessage('Imprimindo...');
end;

procedure TFrame1.BtnLigarClick(Sender: TObject);
begin
 ShowMessage('Ligando...');
end;

end.
