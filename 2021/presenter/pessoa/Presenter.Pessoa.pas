unit Presenter.Pessoa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Shared.Presenter.Base, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TfrmPresenterPessoa = class(TfrmPresenterBase)
    Label1: TLabel;
    edtNome: TDBEdit;
    edtEmail: TDBEdit;
    Label2: TLabel;
    dsCidade: TDataSource;
    cbbCidade: TDBLookupComboBox;
    Label3: TLabel;
    procedure FormCreate(Sender: TObject);
  end;

implementation

uses Container.Pessoa;

{$R *.dfm}

procedure TfrmPresenterPessoa.FormCreate(Sender: TObject);
begin
  inherited;
  Container := TContainerPessoa.Create(Self);
  dsCidade.DataSet := TContainerPessoa(Container).mtCidade;

  TContainerPessoa(Container).ListarCidades;
end;

end.
