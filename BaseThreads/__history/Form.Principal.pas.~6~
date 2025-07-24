unit Form.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Samples.Gauges, Vcl.StdCtrls,
  Vcl.ExtCtrls;

type
  TMathOperation = reference to function(a, b: Integer): Integer;

  TForm1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Splitter1: TSplitter;
    Panel3: TPanel;
    GeraLoops: TButton;
    Gauge1: TGauge;
    Gauge2: TGauge;
    Gauge3: TGauge;
    Gauge4: TGauge;
    Gauge5: TGauge;
    PanelControlers: TPanel;
    Panel4: TPanel;
    Math: TButton;
    Annonimous: TButton;
    Selecionar: TCheckBox;
    Edit1: TEdit;
    Edit2: TEdit;
    MemoLog: TMemo;
    procedure GeraLoopsClick(Sender: TObject);
    procedure MathClick(Sender: TObject);
    procedure AnnonimousClick(Sender: TObject);
  private
    { Private declarations }
    procedure ExecutaAlgoPorParametro(proc: TProc);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.GeraLoopsClick(Sender: TObject);
const
   MAX_VAL = 800;

  function GetProcth(gauge: TGauge; rotina: TProc): TProc;
  begin
    gauge.MinValue := 0;
    gauge.MaxValue := MAX_VAL;

    Result :=
      procedure
      begin
        for var i: Integer := 0 to MAX_VAL do
        begin
          ExecutaAlgoPorParametro(rotina);

          if (i mod 7 = 0) then
          begin
            TThread.Synchronize(nil,
              procedure
              begin
                gauge.Progress := i;
              end);
          end;
        end;
      end;
  end;

begin

  var localProc: TProc :=
    procedure
    begin
      Sleep(1);
    end;

  TThread.CreateAnonymousThread(GetProcth(Gauge1, localProc)).Start;
  TThread.CreateAnonymousThread(GetProcth(Gauge2, localProc)).Start;
  TThread.CreateAnonymousThread(GetProcth(Gauge3, localProc)).Start;
  TThread.CreateAnonymousThread(GetProcth(Gauge4, localProc)).Start;
  TThread.CreateAnonymousThread(GetProcth(Gauge5, localProc)).Start;

end;

procedure TForm1.MathClick(Sender: TObject);

  function ExecutaOperacao(a,b: Integer; operation: TMathOperation): Integer;
  begin
    Result := operation(a,b);
  end;

var
  a,b, result : Integer;

begin
  a := StrToIntDef(Edit1.Text, 0);
  b := StrToIntDef(Edit2.Text, 0);

  // SOMA
  result := ExecutaOperacao(a, b,
    function(x, y: Integer): Integer
    begin
      Result := x + y;
    end
  );
  MemoLog.Lines.Add('Addition Result: ' + result.ToString);

  // Multiplicação
  result := ExecutaOperacao(a, b,
    function(x, y: Integer): Integer
    begin
      Result := x * y;
    end
  );
  MemoLog.Lines.Add('Multiplication Result: ' + result.ToString);

  // Custom
  result := ExecutaOperacao(a, b,
    function(x, y: Integer): Integer
    begin
      Result := (x * x) + (y * y);
    end
  );
  MemoLog.Lines.Add('Custom Result: ' + result.ToString);
end;

procedure TForm1.AnnonimousClick(Sender: TObject);
var
  localProc: TProc;
begin
  localProc :=
    procedure
    begin
      ShowMessage('Teste anônimo');
    end;

  if Selecionar.Checked then
  begin
    localProc :=
      procedure
      begin
        Caption := TimeToStr(Now);
      end
  end;

//  localProc;
  ExecutaAlgoPorParametro(localProc);
end;

procedure TForm1.ExecutaAlgoPorParametro(proc: TProc);
begin
  proc;
end;


end.
