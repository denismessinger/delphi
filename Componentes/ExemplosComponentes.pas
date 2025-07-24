unit ExemplosComponentes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Classe.Patrimonio,
  Classe.Veiculo, Classe.Imovel, VclTee.TeeGDIPlus, VCLTee.TeEngine, VCLTee.TeeProcs, VCLTee.Chart,
  Frame.Cliente;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Panel3: TPanel;
    BtnCriaPatrimonio: TButton;
    ScrollBox1: TScrollBox;
    Label2: TLabel;
    FlowPanel1: TFlowPanel;
    Panel4: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Frame11: TFrame1;
    procedure BtnCriaPatrimonioClick(Sender: TObject);
    procedure PopulaPatrimonio;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.BtnCriaPatrimonioClick(Sender: TObject);
begin
  PopulaPatrimonio;
end;

procedure TForm1.PopulaPatrimonio;
begin
  var lstPat : TListaPatrimonio := TListaPatrimonio.Create;
  var veic : TVeiculo;

  veic := TCarro.Create;
  veic.DataCompra := IncMonth(Now, - (Random(60) + 1));
  veic.ValorCompra := 18976.29 * Random(10) + 18976.29;
  veic.NumMesesDepreciacao := Random(55) + 5;
  lstPat.Add(veic);

  veic := TNavio.Create;
  veic.DataCompra := IncMonth(Now, - (Random(60) + 1));
  veic.ValorCompra := 18976.29 * Random(10) + 18976.29;
  veic.NumMesesDepreciacao := Random(55) + 5;
  lstPat.Add(veic);

  veic := TAviao.Create;
  veic.DataCompra := IncMonth(Now, - (Random(60) + 1));
  veic.ValorCompra := 18976.29 * Random(10) + 18976.29;
  veic.NumMesesDepreciacao := Random(55) + 5;
  lstPat.Add(veic);

  var imv: TImovel;
  imv := TCasa.Create;
  imv.DataCompra := IncMonth(Now, - (Random(60) + 1));
  imv.ValorCompra := 18976.29 * Random(10) + 18976.29;
  imv.NumMesesDepreciacao := Random(55) + 5;
  lstPat.Add(imv);

  imv := TApartamento.Create;
  imv.DataCompra := IncMonth(Now, - (Random(60) + 1));
  imv.ValorCompra := 18976.29 * Random(10) + 18976.29;
  imv.NumMesesDepreciacao := Random(55) + 5;
  lstPat.Add(imv);

  imv := TSalaComercial.Create;
  imv.DataCompra := IncMonth(Now, - (Random(60) + 1));
  imv.ValorCompra := 18976.29 * Random(10) + 18976.29;
  imv.NumMesesDepreciacao := Random(55) + 5;
  lstPat.Add(imv);

  for var pat : TPatrimonio in lstPat do
  begin
    var panelCard: TPanel := TPanel.Create(Self);
    panelCard.Parent := FlowPanel1;
    panelCard.AlignWithMargins := True;
    panelCard.Width := Panel4.Width;
    panelCard.Height := Panel4.Height;

    var labelValor: TLabel := TLabel.Create(Self);
    labelValor.Parent := panelCard;
    labelValor.Align := alTop;
    labelValor.Caption := 'Valor: ' + FormatFloat('R$ 0.,00', pat.ValorCompra);

    var labelDataCompra: TLabel := TLabel.Create(Self);
    labelDataCompra.Parent := panelCard;
    labelDataCompra.Align := alTop;
    labelDataCompra.Caption := 'Data Compra: ' + DateToStr(pat.DataCompra);

    var labelDeprec: TLabel := TLabel.Create(Self);
    labelDeprec.Parent := panelCard;
    labelDeprec.Align := alTop;
    labelDeprec.Caption := 'Depreciação: ' + DateToStr(pat.DataDepreciacao);

    var label3: TLabel := TLabel.Create(Self);
    label3.Parent := panelCard;
    label3.Align := alTop;
    label3.Caption := 'Tipo: ' + pat.Tipo; // pat is TCarro => (pat as TCarro).
    label3.Font.Style := [fsBold];
  end;

  Label2.Caption := 'Total: ' + FormatFloat('R$ 0.,00', lstPat.GetValorTotal);
  lstPat.Free;
end;

end.
