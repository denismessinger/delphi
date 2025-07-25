unit Form.PessoaBD;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Mask, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.DBCGrids, Vcl.Samples.Spin, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Classe.Pessoa, Vcl.ComCtrls;

type
  TForm3 = class(TForm)
    Panel1: TPanel;
    CriarPessoas: TButton;
    SpinEditPessoas: TSpinEdit;
    DBCtrlGridPessoas: TDBCtrlGrid;
    DBText1: TDBText;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    dtsPessoa: TDataSource;
    memPessoa: TFDMemTable;
    memPessoaCodigo: TIntegerField;
    memPessoaSaldo: TFloatField;
    memPessoaDataNascimento: TDateField;
    StatusBar1: TStatusBar;
    procedure CriarPessoasClick(Sender: TObject);
    procedure AtualizaStatus();
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmrPessoaDB : TForm3;

implementation

{$R *.dfm}

procedure TForm3.CriarPessoasClick(Sender: TObject);
begin
  memPessoa.Open;
  memPessoa.EmptyDataSet;

  memPessoa.DisableControls;

  try
    for var i: Integer := 0 to SpinEditPessoas.Value -1 do
    begin
      var pes: TPessoa;

      if Random(10) div 2 = 0 then
      begin
        pes := TPessoaFisica.Create;
        TPessoaMock.GeraPessoaFisica(TPessoaFisica(pes));
      end else begin
        pes := TPessoaJuridica.Create;
        TPessoaMock.GeraPessoaJuridica(pes as TPessoaJuridica);
      end;

      // ORM - Object Relational Mapping - MOR
      memPessoa.Append;
      memPessoaCodigo.AsInteger := pes.Codigo;
  //    memPessoa.FieldByName('Codigo').AsInteger := pes.Codigo;
      memPessoaSaldo.AsCurrency := pes.Saldo;
      memPessoaDataNascimento.AsDateTime := pes.DataNascimento;

      // pes.ClassName = 'TPessoaFisica' = N�o
      // pes.ClassName = TPessoaFisica.ClassName = N�o
      //if (pes is TPessoaFisica) then
      //begin
      //  mPessoaNome.AsString := (pes as TPessoaFisica).Nome;
      //  memPessoaDocumento.AsString := (pes as TPessoaFisica).CPF;
      //  memPessoaTipoPessoa.AsString := 'F�sica';
      //end else if (pes is TPessoaJuridica) then
      //begin
      //  memPessoaNome.AsString := TPessoaJuridica(pes).NomeFantasia;
      //  memPessoaDocumento.AsString := TPessoaJuridica(pes).CNPJ;
      //  memPessoaTipoPessoa.AsString := 'Jur�dica';
      //end;

      memPessoa.Post;

      pes.Free;
    end;

    memPessoa.First;

    AtualizaStatus;
  finally
    memPessoa.EnableControls;
  end;

end;

procedure TForm3.AtualizaStatus;
begin
  StatusBar1.Panels[1].Text := 'Qtd Regs: ' + FormatFloat('0.,', memPessoa.RecordCount);
end;

end.
