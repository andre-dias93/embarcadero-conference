unit Shared.Container.Base;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TContainerBase = class(TDataModule)
    mtPesquisa: TFDMemTable;
    mtCadastro: TFDMemTable;
    procedure DataModuleCreate(Sender: TObject);
    procedure Savar;
    procedure Editar;
    procedure Excluir;
  private
    FResource: string;
    procedure Listar;
  public
    property Resource: string read FResource write FResource;
  end;

implementation

uses RESTRequest4D, DataSet.Serialize, Util.Consts;

{$R *.dfm}


procedure TContainerBase.DataModuleCreate(Sender: TObject);

begin
  mtCadastro.Open;
  mtPesquisa.Open;

  Listar;
end;

procedure TContainerBase.Editar;
var
  LResponse: IResponse;
begin
  LResponse := TRequest.New.BaseURL(ENVIRONMENT)
    .Resource(FResource)
    .ResourceSuffix(mtPesquisa.FieldByName('id').AsString)
    .DataSetAdapter(mtCadastro).Get;
  if LResponse.StatusCode <> 200 then
    raise Exception.Create('Ocorreu um erro ao encontrar o registro')
  else
    mtCadastro.Edit;
end;

procedure TContainerBase.Excluir;
var
  LResponse: IResponse;
begin
  LResponse := TRequest.New
    .BaseURL(ENVIRONMENT)
    .Resource(FResource)
    .ResourceSuffix(mtPesquisa.FieldByName('id').AsString)
    .Delete;
  if LResponse.StatusCode <> 200 then
    raise Exception.Create('Ocorreu um erro ao excluir um aluno em específico')
  else
    Listar;
end;

procedure TContainerBase.Listar;
var
  LResponse: IResponse;
begin
  LResponse := TRequest.New.BaseURL(ENVIRONMENT).Resource(FResource)
    .DataSetAdapter(mtPesquisa).Get;
  if LResponse.StatusCode <> 200 then
    raise Exception.Create('Ocorreu um erro ao listar os alunos');
end;

procedure TContainerBase.Savar;
var
  LResponse: IResponse;
  LRequest: IRequest;
  IsNew: Boolean;
  LMemTableAuxiliar: TFDMemTable;
begin
  IsNew := mtCadastro.State = dsInsert;
  mtCadastro.Post;

  LMemTableAuxiliar := TFDMemTable.Create(Self);
  try
    LMemTableAuxiliar.LoadStructure(mtCadastro.SaveStructure);
    LRequest := TRequest.New
      .BaseURL(ENVIRONMENT).Resource(FResource)
      .DataSetAdapter(LMemTableAuxiliar)
      .ClearBody.AddBody(mtCadastro.ToJSONObject);

    if IsNew then
    begin
      LResponse := LRequest.Post;
      mtPesquisa.LoadFromJSON(LResponse.Content);
    end
    else
    begin
      LResponse := LRequest.ResourceSuffix(mtCadastro.FieldByName('id').AsString).Put;
      mtPesquisa.Edit;
      mtPesquisa.CopyRecord(LMemTableAuxiliar);
      mtPesquisa.Post;
    end;

    if (LResponse.StatusCode <> 201) and (LResponse.StatusCode <> 200) then
      raise Exception.Create('Ocorreu um erro ao salvar')
  finally
    LMemTableAuxiliar.Free;
  end;
end;

end.
