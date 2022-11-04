unit Report.Base.Simples;

interface

uses
  System.SysUtils, System.Classes, Report.Base, frxClass, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, frxDBSet;

type
  TReportBaseSimples = class(TReportBase)
    dbReport: TfrxDBDataset;
    qryReport: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ReportBaseSimples: TReportBaseSimples;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
