unit FluentInterface.Core.ListBuilder;

interface

uses FluentInterface.Core.Interfaces.Intf, System.SysUtils, FluentInterface.Types.EvenOdd, System.Classes;

type
  TListBuilder = class(TInterfacedObject, IListBuilder)
    FListBuilder: TStringBuilder;
    FType: TEvenOddType;
    function Types(const AType: TEvenOddType): IListBuilder;
    function Interval(const AValue1, AValue2: Integer): string;
  public
    constructor Create;
    class function New: IListBuilder;
    destructor Destroy; override;
  end;

implementation

{ TListBuilder }

constructor TListBuilder.Create;
begin
  FListBuilder := TStringBuilder.Create;
end;

destructor TListBuilder.Destroy;
begin
  FListBuilder.Free;
  inherited;
end;

function TListBuilder.Interval(const AValue1, AValue2: Integer): string;
begin
  for var I := AValue1 to AValue2 do
  begin
    case FType of
      TEvenOddType.Odd:
        if Odd(I) then
          FListBuilder.Append('Nº').Append(I.ToString).AppendLine;
      TEvenOddType.Even:
        if not Odd(I) then
          FListBuilder.Append('Nº').Append(I.ToString).AppendLine;
    end;
  end;
  Result := FListBuilder.ToString;
end;

class function TListBuilder.New: IListBuilder;
begin
  Result := TListBuilder.Create;
end;

function TListBuilder.Types(const AType: TEvenOddType): IListBuilder;
begin
  Result := Self;
  FType := AType;
end;

end.
