unit Presenter.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TfrmPrincipal = class(TForm)
    mainMenu: TMainMenu;
    menuItem: TMenuItem;
    menuItemCidade: TMenuItem;
    menuItemPessoa: TMenuItem;
    procedure menuItemCidadeClick(Sender: TObject);
    procedure menuItemPessoaClick(Sender: TObject);
  end;

var frmPrincipal: TfrmPrincipal;

implementation

uses
  Presenter.Cidade, Presenter.Pessoa;

{$R *.dfm}

procedure TfrmPrincipal.menuItemCidadeClick(Sender: TObject);
var
  LForm: TfrmPresenterCidade;
begin
  try
    LForm := TfrmPresenterCidade.Create(Self);
    LForm.ShowModal;
  finally
    FreeAndNil(LForm);
  end;
end;

procedure TfrmPrincipal.menuItemPessoaClick(Sender: TObject);
var
  LForm: TfrmPresenterPessoa;
begin
  try
    LForm := TfrmPresenterPessoa.Create(Self);
    LForm.ShowModal;
  finally
    FreeAndNil(LForm);
  end;
end;
end.
