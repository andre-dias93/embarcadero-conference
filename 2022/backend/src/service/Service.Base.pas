unit Service.Base;

interface

uses
  System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.ConsoleUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.VCLUI.Wait, frxClass, Horse.OctetStream, Winapi.Windows,
  frxExportBaseDialog, frxExportPDF;

type
  TServiceBase = class(TDataModule)
    Connection: TFDConnection;
    frxReport: TfrxReport;
    frxPDFExport: TfrxPDFExport;
  public
    function GetReport: TFileReturn;
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  protected
    function GetReportName: string; virtual;
  private
    FReportName: string;
    FReportDirectory: string;
    procedure SaveReportToFile;
    procedure ExportPDF(const AfrxCustomExportFilter: TfrxCustomExportFilter);
    function GetReportStream: TMemoryStream;
    function GetReportFilePath: string;
    function GetTempDirectory: string;
  end;

implementation

uses System.SysUtils;

{$R *.dfm}


function TServiceBase.GetReportName: string;
begin
  Result := 'report';
end;

function TServiceBase.GetReportStream: TMemoryStream;
begin
  Result := TMemoryStream.Create;
  Result.LoadFromFile(GetReportFilePath);
end;

function TServiceBase.GetTempDirectory: string;
var
  LTempFolder: array [0 .. MAX_PATH] of Char;
begin
  GetTempPath(MAX_PATH, @LTempFolder);
  Result := StrPas(LTempFolder);
  if not Result.EndsWith('\') then
    Result := Result + '\';
end;

constructor TServiceBase.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FReportName := Format('%s%s.pdf', [GetReportName, FormatDateTime('ddmmyyhhmmss', Now)]);
  FReportDirectory := GetTempDirectory;
end;

destructor TServiceBase.Destroy;
begin
  if FileExists(GetReportFilePath) then
    DeleteFile(GetReportFilePath);
  inherited;
end;

procedure TServiceBase.ExportPDF(const AfrxCustomExportFilter: TfrxCustomExportFilter);
begin
  AfrxCustomExportFilter.ShowProgress := False;
  AfrxCustomExportFilter.ShowDialog := False;
  AfrxCustomExportFilter.UseFileCache := True;
  AfrxCustomExportFilter.DefaultPath := GetReportFilePath;
  AfrxCustomExportFilter.FileName := GetReportFilePath;
  frxReport.PreviewPages.Export(AfrxCustomExportFilter);
  frxReport.PreviewPages.Clear;
  frxReport.Clear;
end;

function TServiceBase.GetReport: TFileReturn;
begin
  SaveReportToFile;
  Result := TFileReturn.Create(GetReportName + '.pdf', GetReportStream);
end;

function TServiceBase.GetReportFilePath: string;
begin
  Result := FReportDirectory + FReportName;
end;

procedure TServiceBase.SaveReportToFile;
begin
  frxReport.ShowProgress := False;
  frxReport.PrepareReport();
  ExportPDF(frxPDFExport);
end;

end.
