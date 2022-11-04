unit Service.Profissional;

interface

uses
  System.SysUtils, System.Classes, Service.Base.Simples, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, frxClass, frxDBSet, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, frxExportBaseDialog, frxExportPDF;

type
  TServiceProfissional = class(TServiceBaseSimples)
    qryReportID: TIntegerField;
    qryReportJOB: TWideStringField;
    qryReportNAME: TWideStringField;
    qryReportEMAIL: TWideStringField;
  protected
    function GetReportName: string; override;
  end;

implementation

{$R *.dfm}

function TServiceProfissional.GetReportName: string;
begin
  Result := 'Profissional';
end;

end.
