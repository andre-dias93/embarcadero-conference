unit Presenter.Cidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Shared.Presenter.Base, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.Mask, Vcl.DBCtrls;

type
  TfrmPresenterCidade = class(TfrmPresenterBase)
    Label1: TLabel;
    Label2: TLabel;
    edtDescricao: TDBEdit;
    edtEstado: TDBEdit;
    procedure FormCreate(Sender: TObject);
  end;

implementation

uses Container.Cidade;

{$R *.dfm}


procedure TfrmPresenterCidade.FormCreate(Sender: TObject);
begin
  inherited;
  Container := TContainerCidade.Create(Self);
end;

end.
