unit Controller.Cidade;

interface

uses Horse, System.Classes, Horse.OctetStream;

procedure Registry;

implementation

uses Service.Cidade;

procedure DoReportCidades(Req: THorseRequest; Resp: THorseResponse; Next: TProc);
var
  LService: TServiceCidade;
begin
  LService := TServiceCidade.Create(nil);
  try
    Resp.Send<TFileReturn>(LService.GetReport)
  finally
    LService.Free;
  end;
end;

procedure Registry;
begin
  THorse.Get('/cidades', DoReportCidades);
end;

end.
