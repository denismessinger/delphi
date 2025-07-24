unit Classe.InfAnimal;

interface

type
  IInfAnimal = interface
    ['{FB56708E-6185-427D-BEB4-7C4A3C5F8ED3}']
    function GetDNA: string;
    procedure SetDNA(const Value: string);

    procedure Correr;
    procedure Alimentar;
    procedure Respirar;

    property DNA: string read GetDNA write SetDNA;
  end;

implementation

end.
