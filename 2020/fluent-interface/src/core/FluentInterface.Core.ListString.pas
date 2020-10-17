unit FluentInterface.Core.ListString;

interface

uses FluentInterface.Core.Interfaces.Intf, FluentInterface.Types.EvenOdd, System.Classes;

type
  TListString = class(TInterfacedObject, IListString)
    FListString: TStringList;
    FType: TEvenOddType;
    function Types(const AType: TEvenOddType): IListString;
    function Interval(const AValue1, AValue2: Integer): TStringList;
  public
    constructor Create;
    class function New: IListString;
    destructor Destroy; override;
  end;

implementation

uses
  System.SysUtils;

{ TListString }

constructor TListString.Create;
begin
  FListString := TStringList.Create;
end;

destructor TListString.Destroy;
begin
  FListString.Free;
  inherited;
end;

function TListString.Interval(const AValue1, AValue2: Integer): TStringList;
begin
  for var I := AValue1 to AValue2 do
  begin
    case FType of
      TEvenOddType.Odd:
        if Odd(I) then
          FListString.AddPair('Nº', I.ToString);
      TEvenOddType.Even:
        if not Odd(I) then
          FListString.AddPair('Nº', I.ToString);
    end;
  end;
  Result := FListString;
end;

class function TListString.New: IListString;
begin
  Result := TListString.Create;
end;

function TListString.Types(const AType: TEvenOddType): IListString;
begin
  Result := Self;
  FType := AType;
end;

end.
