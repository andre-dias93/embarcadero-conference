program cookies;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  Horse,
  System.SysUtils,
  Controller.Cookie in 'src\controller\Controller.Cookie.pas';

begin
  Controller.Cookie.Registry;
  THorse.Listen(9000);
end.
