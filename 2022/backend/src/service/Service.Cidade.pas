unit Service.Cidade;

interface

uses
  System.SysUtils, System.Classes, Service.Base.Simples, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, frxClass, frxDBSet, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, frxExportBaseDialog, frxExportPDF;

type
  TServiceCidade = class(TServiceBaseSimples)
    qryReportID: TIntegerField;
    qryReportNAME: TWideStringField;
    qryReportCOUNTRY: TWideStringField;
    qryReportADDRESS: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ServiceCidade: TServiceCidade;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
