unit Controller.Cookie;

interface

uses Horse, System.Classes;

procedure Registry;

implementation

procedure DoGetCookies(Resp: THorseResponse);
begin
  Resp.AddHeader('Set-Cookie', 'ec=ec2023;Path=/');
  Resp.Send('Cookie Finded')
end;

procedure DoGetHome(Resp: THorseResponse);
begin
  Resp.Send('Embarcadero Conference 2023')
end;

procedure Registry;
begin
  THorse.Get('/cookies', DoGetCookies);
  THorse.Get('/', DoGetHome);
end;

end.
