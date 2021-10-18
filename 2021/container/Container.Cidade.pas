unit Container.Cidade;

interface

uses
  System.SysUtils, System.Classes, Shared.Container.Base, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TContainerCidade = class(TContainerBase)
    mtPesquisaid: TIntegerField;
    mtPesquisadescricao: TStringField;
    mtPesquisaestado: TStringField;
    mtCadastroid: TIntegerField;
    mtCadastrodescricao: TStringField;
    mtCadastroestado: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure mtCadastroAfterInsert(DataSet: TDataSet);
  end;

implementation

uses Service.Cidade;

{$R *.dfm}

procedure TContainerCidade.DataModuleCreate(Sender: TObject);
begin
  Resource := 'cidades';
  inherited;
end;

procedure TContainerCidade.mtCadastroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  mtCadastroid.AsInteger := Random(1000);
end;

end.
