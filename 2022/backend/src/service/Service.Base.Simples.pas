unit Service.Base.Simples;

interface

uses
  System.SysUtils, System.Classes, Service.Base, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, frxClass, Data.DB,
  FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, frxDBSet, FireDAC.Comp.DataSet, frxExportBaseDialog,
  frxExportPDF;

type
  TServiceBaseSimples = class(TServiceBase)
    qryReport: TFDQuery;
    dbReport: TfrxDBDataset;
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
