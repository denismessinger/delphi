unit Form.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, System.Zip,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, System.StrUtils, System.Generics.Collections;

type
  TStringHelperLocal = record helper for string
    private
    public
      function Reverse : string;
      procedure Avisar;
  end;

  TGUIDHelperLocal = record helper for TGUID
  private
    class function NewGuidToString: string; static;
  end;

  TForm1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    MemoLog: TMemo;
    BtnReverse: TButton;
    BtnAviso: TButton;
    BtnUnzip: TButton;
    BtnZip: TButton;
    Button1: TButton;
    Button2: TButton;
    procedure BtnAvisoClick(Sender: TObject);
    procedure BtnReverseClick(Sender: TObject);
    procedure BtnZipClick(Sender: TObject);
    procedure BtnUnzipClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Classe.ZipHelper;

procedure TStringHelperLocal.Avisar;
begin
  Application.MessageBox(PChar(Self), 'Aviso!', MB_DEFBUTTON1 + MB_OK + MB_ICONINFORMATION)
end;

procedure TForm1.BtnAvisoClick(Sender: TObject);
begin
  'Este � um aviso!'.Avisar;
end;

function TStringHelperLocal.Reverse: string;
begin
  Result := ReverseString(self);
end;

procedure TForm1.BtnReverseClick(Sender: TObject);
begin
  var teste : string := 'Testetor';
  MemoLog.Lines.Add(teste.Reverse);
end;

procedure TForm1.BtnUnzipClick(Sender: TObject);
const
  ARQ = 'C:\Users\denis\Documents\Embarcadero\Studio\Projetos_Delphi\Helper\Win32\Debug\testetor.zip';
begin
  TZipFile.DesZippaArquivos(ARQ, 'TESTETOR');
end;

procedure TForm1.BtnZipClick(Sender: TObject);
begin
  var stl: TStringList := TStringList.Create;

  stl.Add('C:\Users\denis\Documents\Embarcadero\Studio\Projetos_Delphi\Helper\Teste1.txt');
  stl.Add('C:\Users\denis\Documents\Embarcadero\Studio\Projetos_Delphi\Helper\Teste 2.txt');

  TZipFile.ZipparArquivos('testetor.zip',stl.ToStringArray);
  stl.Free;

end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  MemoLog.Lines.Add(TGUID.NewGuidToString);
end;

class function TGUIDHelperLocal.NewGuidToString: string;
begin
  var guidTmp: TGuid;
  if CreateGUID(guidTmp) <> S_OK then
    RaiseLastOSError;

  Result := GuidToString(guidTmp);

  Result := StringReplace(Result, '-', '', [rfReplaceAll]);
  Result := StringReplace(Result, '{', '', [rfReplaceAll]);
  Result := StringReplace(Result, '}', '', [rfReplaceAll]);
end;


end.
