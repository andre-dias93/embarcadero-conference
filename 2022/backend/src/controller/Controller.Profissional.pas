unit Controller.Profissional;

interface

uses Horse, System.Classes, Horse.OctetStream, Service.Profissional;

procedure Registry;

implementation

procedure DoReportProfissionais(Req: THorseRequest; Resp: THorseResponse; Next: TProc);
var
  LService: TServiceProfissional;
begin
  LService := TServiceProfissional.Create(nil);
  try
    Resp.Send<TFileReturn>(LService.GetReport)
  finally
    LService.Free;
  end;
end;

procedure Registry;
begin
  THorse.Get('/profissionais', DoReportProfissionais);
end;

end.
