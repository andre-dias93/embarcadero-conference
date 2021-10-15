unit Container.Pessoa;

interface

uses
  System.SysUtils, System.Classes, Shared.Container.Base, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TContainerPessoa = class(TContainerBase)
    mtPesquisaid: TIntegerField;
    mtPesquisanome: TStringField;
    mtPesquisaemail: TStringField;
    mtCadastroid: TIntegerField;
    mtCadastronome: TStringField;
    mtCadastroemail: TStringField;
    mtCidade: TFDMemTable;
    IntegerField1: TIntegerField;
    mtCidadedescricao: TStringField;
    mtCadastroid_cidade: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
    public
      procedure ListarCidades;
  end;

implementation

uses
  Service.Cidade;

{$R *.dfm}

procedure TContainerPessoa.DataModuleCreate(Sender: TObject);
begin
  Resource := 'pessoas';
  inherited;
  mtCidade.Open;
end;

procedure TContainerPessoa.ListarCidades;
begin
  TServiceCidade.Get(mtCidade);
end;

end.
