unit Layout.Presenter.Base;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Layout.Container.Base;

type
  TfrmPresenterBase = class(TForm)
    pgControl: TPageControl;
    tabCadastro: TTabSheet;
    tabPesquisa: TTabSheet;
    pnlToolBar: TPanel;
    btnIncluir: TSpeedButton;
    btnAlterar: TSpeedButton;
    btnExcluir: TSpeedButton;
    dbGridPesquisa: TDBGrid;
    pnlFooterCadastro: TPanel;
    btnCancelar: TSpeedButton;
    btnConfirmar: TSpeedButton;
    dsCadastro: TDataSource;
    dsPesquisa: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure dsCadastroStateChange(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure dbGridPesquisaDblClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
  private
    FContainer: TContainerBase;
  public
    property Container: TContainerBase read FContainer write FContainer;
  end;

implementation

{$R *.dfm}


procedure TfrmPresenterBase.btnAlterarClick(Sender: TObject);
begin
  Container.Editar;
end;

procedure TfrmPresenterBase.btnCancelarClick(Sender: TObject);
begin
  dsCadastro.DataSet.Cancel;
end;

procedure TfrmPresenterBase.btnConfirmarClick(Sender: TObject);
begin
  Container.Savar;
end;

procedure TfrmPresenterBase.btnExcluirClick(Sender: TObject);
begin
  Container.Excluir;
end;

procedure TfrmPresenterBase.btnIncluirClick(Sender: TObject);
begin
  dsCadastro.DataSet.Append;
end;

procedure TfrmPresenterBase.dbGridPesquisaDblClick(Sender: TObject);
begin
  btnAlterar.Click;
end;

procedure TfrmPresenterBase.dsCadastroStateChange(Sender: TObject);
begin
  btnIncluir.Enabled := dsCadastro.State in [dsBrowse, dsInactive];
  btnAlterar.Enabled := btnIncluir.Enabled;
  btnExcluir.Enabled := btnIncluir.Enabled;
  pgControl.ActivePage := tabPesquisa;
  if not btnIncluir.Enabled then
    pgControl.ActivePage := tabCadastro;
end;

procedure TfrmPresenterBase.FormCreate(Sender: TObject);
begin
  for var LPage := 0 to pgControl.PageCount - 1 do
    pgControl.Pages[LPage].TabVisible := false;
end;

procedure TfrmPresenterBase.FormShow(Sender: TObject);
begin
  dsPesquisa.DataSet := Container.mtPesquisa;
  dsCadastro.DataSet := Container.mtCadastro;
end;

end.
