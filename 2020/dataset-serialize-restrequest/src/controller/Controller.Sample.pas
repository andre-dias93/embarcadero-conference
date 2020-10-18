unit Controller.Sample;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TControllerSample = class(TDataModule)
    mtStudent: TFDMemTable;
    mtCourses: TFDMemTable;
    mtStudentid: TIntegerField;
    mtStudentname: TStringField;
    mtCoursesid: TIntegerField;
    mtCoursesdescription: TStringField;
    mtCoursesworkload: TIntegerField;
    mtCoursesidStudent: TIntegerField;
    mtSearch: TFDMemTable;
    mtSearchid: TIntegerField;
    mtSearchname: TStringField;
    mtStudentra: TStringField;
    mtSearchra: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure mtStudentAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    procedure Insert;
    procedure InsertCourse;
    procedure ListAll;
    procedure GetById;
    procedure Delete;
    procedure Save;
  end;

implementation

uses RESTRequest4D.Request, DataSet.Serialize;

{$R *.dfm}

procedure TControllerSample.DataModuleCreate(Sender: TObject);
begin
  ListAll;
end;

procedure TControllerSample.Insert;
begin
  if not mtStudent.Active then
    mtStudent.Open();
  if not mtCourses.Active then
    mtCourses.Open();
  mtStudent.Append;
end;

procedure TControllerSample.InsertCourse;
begin
  if not mtCourses.Active then
    mtCourses.Open();
  mtCourses.Append;
  mtCoursesid.AsInteger := Random(1000);
end;

procedure TControllerSample.ListAll;
var
  LResponse: IResponse;
begin
  LResponse := TRequest.New.BaseURL('http://localhost:3000').Resource('students')
    .Accept('application/json')
    .DataSetAdapter(mtSearch).Get;
  if LResponse.StatusCode <> 200 then
    raise Exception.Create('Ocorreu um erro ao listar os alunos');
end;

procedure TControllerSample.mtStudentAfterInsert(DataSet: TDataSet);
begin
  mtStudentid.AsInteger := Random(1000);
end;

procedure TControllerSample.Save;
var
  LResponse: IResponse;
  LRequest : IRequest;
  IsNew: Boolean;
  LMemTableAuxiliar: TFDMemTable;
begin
  IsNew := mtStudent.State = dsInsert;
  mtStudent.Post;

  LMemTableAuxiliar := TFDMemTable.Create(Self);
  try
    LMemTableAuxiliar.LoadStructure(mtStudent.SaveStructure);
    LRequest := TRequest.New
      .BaseURL('http://localhost:3000').Resource('students')
      .DataSetAdapter(LMemTableAuxiliar)
      .ClearBody.AddBody(mtStudent.ToJSONObject)
      .Accept('application/json');

    if IsNew then
    begin
      LResponse := LRequest.Post;
      mtSearch.LoadFromJSON(LResponse.Content);
    end
    else
    begin
      LResponse := LRequest.ResourceSuffix(mtStudentid.AsString).Put;
      mtSearch.Edit;
      mtSearch.CopyRecord(LMemTableAuxiliar);
      mtSearch.Post;
    end;
  finally
    LMemTableAuxiliar.Free;
  end;
end;

procedure TControllerSample.Delete;
var
  LResponse: IResponse;
begin
  LResponse := TRequest.New
    .BaseURL('http://localhost:3000').Resource('students').ResourceSuffix(mtSearchid.AsString)
    .Accept('application/json').Delete;
  if LResponse.StatusCode <> 200 then
    raise Exception.Create('Ocorreu um erro ao encontrar um aluno em espec�fico')
  else
    ListAll;
end;

procedure TControllerSample.GetById;
var
  LResponse: IResponse;
begin
  LResponse := TRequest.New.BaseURL('http://localhost:3000').Resource('students').ResourceSuffix(mtSearchid.AsString)
    .Accept('application/json')
    .DataSetAdapter(mtStudent).Get;
  if LResponse.StatusCode <> 200 then
    raise Exception.Create('Ocorreu um erro ao encontrar um aluno em espec�fico')
  else
    mtStudent.Edit;
end;

end.