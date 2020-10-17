unit FluentInterface.Types.EvenOdd;

interface

type
{$SCOPEDENUMS ON}
  TEvenOddType = (Even, Odd);
{$SCOPEDENUMS OFF}

  TEvenOddTypeHelper = record helper for TEvenOddType
    function ToString: string;
    function GetValue: Integer;
  end;


implementation

uses System.TypInfo;

{ TEvenOddTypeHelper }

function TEvenOddTypeHelper.GetValue: Integer;
begin
  Result := Ord(Self);
end;

function TEvenOddTypeHelper.ToString: string;
begin
  Result := GetEnumName(TypeInfo(TEvenOddType), Ord(Self));
end;

end.
