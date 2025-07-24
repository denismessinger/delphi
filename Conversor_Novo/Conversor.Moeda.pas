unit Conversor.Moeda;

interface

uses Winapi.Windows, System.SysUtils;

type
  TConversorMoeda = class
    const DOLAR = 4.88;
    const EURO = 5.25;
    class function ConverterValor(tipo: Integer; valorReal: string): string; overload;
    class function ConverterValor(tipo: Integer; valorReal: Double): Double; overload;
  end;

implementation

{ TConversorMoeda }

class function TConversorMoeda.ConverterValor(tipo: Integer; valorReal: string): string;
begin
  var valorConversao : Double := 0;

  if valorReal = ' ' then
  begin
    Exit('Valor não informado!');
  end;

  valorReal := StringReplace(valorReal, '.', ',', []);

  if not tryStrToFloat(valorReal, valorConversao) then
  begin
    Exit('Valor informado é inválido!');
  end
  else
  begin
    if tipo = 0 then
    begin
      valorConversao := valorConversao / EURO;
    end
    else
    begin
      valorConversao := valorConversao / DOLAR;
    end;
  end;
  RESULT := floatToStr(valorConversao);  
end;

class function TConversorMoeda.ConverterValor(tipo: Integer; valorReal: Double): Double;
begin
  var valorConversao : Double := 0;
  if tipo = 0 then
  begin
    valorConversao := valorReal / EURO;
  end
  else
  begin
    valorConversao := valorReal / DOLAR;
  end;
  RESULT := valorConversao;  
end;

end.
