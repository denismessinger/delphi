unit Classe.Veiculo;

interface

uses
  System.SysUtils, Classe.Base, Classe.Patrimonio, System.DateUtils, System.Generics.Collections;

type
  TVeiculo = class(TClasseBase, TPatrimonio)
  private
    FDataCompra : TDateTime;
    FValorCompra : Currency;
    FNumMesesDepreciacao : Integer;
    FRegistraLog: TProc<string>;
  public
    procedure RegistraGeoLocalizacao; virtual; abstract;
    property RegistraLog: TProc<string> read FRegistraLog write FRegistraLog;
    { IPatrimonio }
    function GetDataCompra: TDateTime;
    function GetDataDepreciacao: TDateTime;
    function GetValorCompra: Currency;
    procedure SetDataCompra(Value: TDateTime);
    procedure SetValorCompra(Value: Currency);
    function GetTipo: string;

    property ValorCompra: Currency read GetValorCompra write SetValorCompra;
    property DataCompra: TDateTime read GetDataCompra write SetDataCompra;
    property DataDepreciacao: TDateTime read GetDataDepreciacao;
    property NumMesesDepreciacao: Integer write FNumMesesDepreciacao;
    property Tipo: string read GetTipo;
  end;

  TCarro = class sealed (TVeiculo)
    procedure RegistraGeoLocalizacao; override;
  end;

  TNavio = class sealed (TVeiculo)
    procedure RegistraGeoLocalizacao; override;
  end;

  TAviao = class sealed (TVeiculo)
    procedure RegistraGeoLocalizacao; override;
  end;

implementation

{ TVeiculo }

function TVeiculo.GetDataCompra: TDateTime;
begin
  Result := FDataCompra;
end;

function TVeiculo.GetDataDepreciacao: TDateTime;
begin
  Result := IncDay(FDataCompra, FNumMesesDepreciacao * 30);
end;

function TVeiculo.GetTipo: string;
begin
  Result := Self.ClassName;
end;

function TVeiculo.GetValorCompra: Currency;
begin
  Result := FValorCompra;
end;

procedure TVeiculo.SetDataCompra(Value: TDateTime);
begin

end;

procedure TVeiculo.SetValorCompra(Value: Currency);
begin

end;

{ TCarro }

procedure TCarro.RegistraGeoLocalizacao;
begin
  inherited;

end;

{ TNavio }

procedure TNavio.RegistraGeoLocalizacao;
begin
  inherited;

end;

{ TAviao }

procedure TAviao.RegistraGeoLocalizacao;
begin
  inherited;

end;

end.
