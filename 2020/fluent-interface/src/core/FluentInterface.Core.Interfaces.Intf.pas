unit FluentInterface.Core.Interfaces.Intf;

interface

uses System.Classes, System.SysUtils, FluentInterface.Types.EvenOdd;

type
  IListString = Interface
    ['{7BFBB1A6-D348-4EAD-81FD-D1562C5AF358}']
    function Types(const AType: TEvenOddType): IListString;
    function Interval(const AValue1, AValue2: Integer): TStringList;
  End;

  IListBuilder = Interface
    ['{571BD610-14AB-4564-A348-5DA91328CEF8}']
    function Types(const AType: TEvenOddType): IListBuilder;
    function Interval(const AValue1, AValue2: Integer): string;
  End;

  IListFactory = Interface
    ['{26A3BAC3-65F6-40B4-8D3D-B895F5181CC6}']
    function ListString: IListString;
    function ListBuilder: IListBuilder;
  End;

implementation

end.
