unit Service.Cidade;

interface

uses FireDAC.Comp.Client;

type
  TServiceCidade = class
    class procedure Get(AMemTable: TFDMemtable);
  end;

implementation

uses RESTRequest4D, DataSet.Serialize, Util.Consts, System.SysUtils;

class procedure TServiceCidade.Get(AMemTable: TFDMemtable);
var
  LResponse: IResponse;
begin
  LResponse := TRequest.New.BaseURL(ENVIRONMENT)
    .Resource('cidades')
    .DataSetAdapter(AMemTable)
    .Get;
  if LResponse.StatusCode <> 200 then
    raise Exception.Create('Ocorreu um erro ao listar as cidades');
end;

end.
