program Sample;

uses
  Vcl.Forms,
  Presenter.Principal in 'presenter\Presenter.Principal.pas' {frmPrincipal},
  Service.Cidade in 'service\Service.Cidade.pas',
  Util.Consts in 'util\Util.Consts.pas',
  Shared.Container.Base in 'shared\Shared.Container.Base.pas' {ContainerBase: TDataModule},
  Shared.Presenter.Base in 'shared\Shared.Presenter.Base.pas' {frmPresenterBase},
  Presenter.Cidade in 'presenter\Presenter.Cidade.pas' {frmPresenterCidade},
  Presenter.Pessoa in 'presenter\Presenter.Pessoa.pas' {frmPresenterPessoa},
  Container.Cidade in 'container\Container.Cidade.pas' {ContainerCidade: TDataModule},
  Container.Pessoa in 'container\Container.Pessoa.pas' {ContainerPessoa: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
