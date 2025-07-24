unit Classe.Patrimonio;

interface

uses
  System.Generics.Collections;

type
  TPatrimonio = interface(IInterface)
  ['{6BD3BE12-30EE-47B0-A09A-2F3B8C3ABC68}']
    function GetValorCompra: Currency;
    function GetDataCompra: TDateTime;
    procedure SetDataCompra(Value: TDateTime);
    procedure SetValorCompra(Value: Currency);
    function GetDataDepreciacao: TDateTime;
    function GetTipo: string;

    property ValorCompra: Currency read GetValorCompra write SetValorCompra;
    property DataCompra: TDateTime read GetDataCompra write SetDataCompra;
    property DataDepreciacao: TDateTime read GetDataDepreciacao;
    property Tipo: string read GetTipo;
  end;

  TListaPatrimonio = class(TList<TPatrimonio>)
    function GetValorTotal : Currency;
  end;

implementation

{ TListaPatrimonio }

function TListaPatrimonio.GetValorTotal: Currency;
begin
  Result := 0;
  for var pat: TPatrimonio in Self do
  begin
    Result:= Result + pat.ValorCompra;
  end;
end;

end.
