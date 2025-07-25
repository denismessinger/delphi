unit Form.ThreadEcept;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, System.Generics.Collections;

type
  TForm2 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BtbException: TButton;
    ExceptionThr: TButton;
    ComException: TButton;
    SemException: TButton;
    procedure BtbExceptionClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ExceptionThrClick(Sender: TObject);
    procedure ComExceptionClick(Sender: TObject);
    procedure SemExceptionClick(Sender: TObject);
  private
    const
      MAX_LOOP = 5000;
  private
    FListaErros: TDictionary<string, Integer>;
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.BtbExceptionClick(Sender: TObject);
var
  erroPair: TPair<string, Integer>;
begin
  raise Exception.Create('Error Message');
  for erroPair in FListaErros do
  begin
    ShowMessage(erroPair.Key + ': ' + IntToStr(erroPair.Value));
  end;
end;

procedure TForm2.ComExceptionClick(Sender: TObject);
begin
//  for var i: integer := 0 to 0 do
  TThread.CreateAnonymousThread(
    procedure
    begin
      TThread.NameThreadForDebugging('Thread-ComEx');
      try
        var iniTime: TDateTime := Now;
        var str: string := 'r';
        var intOut: Integer;
        for var j := 0 to MAX_LOOP -1 do
        begin
          try
            StrToInt(str);
          except
            // n�o usar
            intOut := 0;
          end;
        end;

        TThread.Synchronize(nil,
          procedure
          begin
            ShowMessage('Com erro finalizado: ' + TimeToStr(Now - iniTime));
          end);
      except
        on E: Exception do
        begin
          TThread.Synchronize(nil,
            procedure
            begin
              if FListaErros.ContainsKey(E.Message) then
              begin
                FListaErros[E.Message] := FListaErros[E.Message] + 1;
              end else begin
                FListaErros.Add(E.Message, 1);
              end;
            end);
        end;
      end;
    end).Start;
end;

procedure TForm2.ExceptionThrClick(Sender: TObject);
begin
  FListaErros.Clear;
  for var i: integer := 0 to 5 do
    TThread.CreateAnonymousThread(
      procedure
      begin
        TThread.NameThreadForDebugging('Thread-ex');
        try
          raise Exception.Create('Error Message');
        except
          on E: Exception do
          begin
            TThread.Synchronize(nil,
              procedure
              begin
                if FListaErros.ContainsKey(E.Message) then
                begin
                  FListaErros[E.Message] := FListaErros[E.Message] + 1;
                end else begin
                  FListaErros.Add(E.Message, 1);
                end;
//                ShowMessage('Erro na Thread: ' + E.Message);
              end);
          end;
        end;
        var j: Integer := Random(1000);
        j := j + 9;

      end).Start;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  TThread.NameThreadForDebugging('Main');
  FListaErros := TDictionary<string, Integer>.Create;
end;

procedure TForm2.FormDestroy(Sender: TObject);
begin
   FListaErros.Free;
end;

procedure TForm2.SemExceptionClick(Sender: TObject);
begin
  TThread.CreateAnonymousThread(
    procedure
    begin
      TThread.NameThreadForDebugging('Thread-SemEx');
      try
        var iniTime: TDateTime := Now;
        var str: string := 'r';
        var intOut: Integer;
        for var j := 0 to MAX_LOOP -1 do
        begin
          try
            TryStrToInt(str, intOut);
          except
            // n�o usar
          end;
        end;

        TThread.Synchronize(nil,
          procedure
          begin
            ShowMessage('Com erro finalizado: ' + TimeToStr(Now - iniTime));
          end);
      except
        on E: Exception do
        begin
          TThread.Synchronize(nil,
            procedure
            begin
              if FListaErros.ContainsKey(E.Message) then
              begin
                FListaErros[E.Message] := FListaErros[E.Message] + 1;
              end else begin
                FListaErros.Add(E.Message, 1);
              end;
            end);
        end;
      end;
    end).Start;
end;

end.
