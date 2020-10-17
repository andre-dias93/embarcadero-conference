unit FluentInterface.Utils;

interface

uses Vcl.StdCtrls;

type
  TFluentInterfaceUtils = class
  public
    class function RemoveAcento(const ATexto: string): string;
  end;

  TStringUtilsHelper = class helper for TEdit
    function RemoveAcento: string;
  end;

implementation

class function TFluentInterfaceUtils.RemoveAcento(const ATexto: string): string;
type
  USAscii20127 = type AnsiString(20127);
begin
  Result := string(USAscii20127(ATexto));
end;

{ TStringUtilsHelper }

function TStringUtilsHelper.RemoveAcento: string;
begin
  Result :=  TFluentInterfaceUtils.RemoveAcento(Self.Text);
end;

end.
