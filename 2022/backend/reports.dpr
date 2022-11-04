program reports;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  Horse,
  Horse.CORS,
  Horse.OctetStream,
  System.SysUtils,
  Service.Base in 'src\service\Service.Base.pas' {ServiceBase: TDataModule},
  Service.Base.Simples in 'src\service\Service.Base.Simples.pas' {ServiceBaseSimples: TDataModule},
  Service.Profissional in 'src\service\Service.Profissional.pas' {ServiceProfissional: TDataModule},
  Controller.Profissional in 'src\controller\Controller.Profissional.pas',
  Service.Cidade in 'src\service\Service.Cidade.pas' {ServiceCidade: TDataModule},
  Controller.Cidade in 'src\controller\Controller.Cidade.pas';

begin
  THorse.Use(OctetStream)
    .Use(CORS);
  Controller.Profissional.Registry;
  Controller.Cidade.Registry;
  THorse.Listen(9000);

end.

