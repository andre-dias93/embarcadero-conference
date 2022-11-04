unit Report.Profissional;

interface

uses
  System.SysUtils, System.Classes, Report.Base.Simples, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, frxClass, frxDBSet;

type
  TReportProfissional = class(TReportBaseSimples)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ReportProfissional: TReportProfissional;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
