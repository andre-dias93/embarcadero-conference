program Sample;

uses
  Vcl.Forms,
  Presenter.Principal in 'presenter\Presenter.Principal.pas' {frmPrincipal},
  Presenter.Cidade in 'presenter\cidade\Presenter.Cidade.pas' {frmPresenterCidade},
  Container.Cidade in 'container\cidade\Container.Cidade.pas' {ContainerCidade: TDataModule},
  Service.Cidade in 'service\Service.Cidade.pas',
  Util.Consts in 'util\Util.Consts.pas',
  Presenter.Pessoa in 'presenter\pessoa\Presenter.Pessoa.pas' {frmPresenterPessoa},
  Container.Pessoa in 'container\pessoa\Container.Pessoa.pas' {ContainerPessoa: TDataModule},
  Shared.Container.Base in 'shared\Shared.Container.Base.pas' {ContainerBase: TDataModule},
  Shared.Presenter.Base in 'shared\Shared.Presenter.Base.pas' {frmPresenterBase};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
