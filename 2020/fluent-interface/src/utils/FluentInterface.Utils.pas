unit FluentInterface.Utils;

interface

uses Vcl.StdCtrls;

type
  TFluentInterfaceUtils = class
  public
    class function RemoveAccent(const AText: string): string;
  end;

  TStringUtilsHelper = class helper for TEdit
    function RemoveAccent: string;
  end;

implementation

class function TFluentInterfaceUtils.RemoveAccent(const AText: string): string;
type
  USAscii20127 = type AnsiString(20127);
begin
  Result := string(USAscii20127(AText));
end;

{ TStringUtilsHelper }

function TStringUtilsHelper.RemoveAccent: string;
begin
  Result :=  TFluentInterfaceUtils.RemoveAccent(Self.Text);
end;

end.
