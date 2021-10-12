program Sample;

uses
  Vcl.Forms,
  Presenter.Principal in 'presenter\Presenter.Principal.pas' {frmPrincipal},
  Layout.Container.Base in 'layout\Layout.Container.Base.pas' {ContainerBase: TDataModule},
  Layout.Presenter.Base in 'layout\Layout.Presenter.Base.pas' {frmPresenterBase},
  Presenter.Cidade in 'presenter\cidade\Presenter.Cidade.pas' {frmPresenterCidade},
  Container.Cidade in 'container\cidade\Container.Cidade.pas' {ContainerCidade: TDataModule},
  Service.Cidade in 'service\Service.Cidade.pas',
  Util.Consts in 'util\Util.Consts.pas',
  Presenter.Pessoa in 'presenter\pessoa\Presenter.Pessoa.pas' {frmPresenterPessoa},
  Container.Pessoa in 'container\pessoa\Container.Pessoa.pas' {ContainerPessoa: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
