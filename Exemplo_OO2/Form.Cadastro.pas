unit Form.Cadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm2 = class(TForm)
    Panel1: TPanel;
    BtnBaleia: TButton;
    BtnCachorro: TButton;
    BtnMorcego: TButton;
    BtnGalinha: TButton;
    procedure BtnBaleiaClick(Sender: TObject);
    procedure BtnCachorroClick(Sender: TObject);
    procedure BtnMorcegoClick(Sender: TObject);
    procedure BtnGalinhaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses
  Classe.Mamiferos, Classe.Oviparo;

procedure TForm2.BtnBaleiaClick(Sender: TObject);
const
  TEMPO_30_MIN = 1000 * 60 * 30;
begin
  var baleia: TBaleia := TBaleia.Create(nil);
  baleia.Respirar(TEMPO_30_MIN);
  baleia.Free;
end;



procedure TForm2.BtnCachorroClick(Sender: TObject);
begin
  var cachorro := TCachorro.Create(nil);
  cachorro.Respirar;
  cachorro.Alimentar;
  cachorro.Free;
end;

procedure TForm2.BtnGalinhaClick(Sender: TObject);
begin
  var galinha := TGalinha.Create();
  galinha.Correr;
  galinha.Free;
end;

procedure TForm2.BtnMorcegoClick(Sender: TObject);
begin
  var morcego := TMorcego.Create(nil);
  morcego.Respirar;
  morcego.Free;
end;

end.
