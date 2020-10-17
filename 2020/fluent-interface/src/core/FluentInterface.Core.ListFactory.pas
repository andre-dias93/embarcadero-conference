unit FluentInterface.Core.ListFactory;

interface

uses
  FluentInterface.Core.Interfaces.Intf;

type
  TListFactory = class(TInterfacedObject, IListFactory)
  public
    constructor Create;
    function ListString: IListString;
    function ListBuilder: IListBuilder;
    class function New: IListFactory;
    destructor Destroy; override;
  end;

implementation

uses FluentInterface.Core.ListBuilder, FluentInterface.Core.ListString;

{ TListFactory }

constructor TListFactory.Create;
begin

end;

destructor TListFactory.Destroy;
begin
  inherited;
end;

function TListFactory.ListBuilder: IListBuilder;
begin
  Result := TListBuilder.Create;
end;

function TListFactory.ListString: IListString;
begin
  Result := TListString.Create;
end;

class function TListFactory.New: IListFactory;
begin
  Result := TListFactory.Create;
end;

end.
