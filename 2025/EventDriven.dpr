program EventDriven;

uses
  Vcl.Forms,
  Views.Principal in 'src\views\Views.Principal.pas' {frmEventDriven},
  Providers.EventDriven in 'src\providers\Providers.EventDriven.pas';

{$R *.res}

begin
  {$IFDEF DEBUG}
  ReportMemoryLeaksOnShutdown := True;
  {$ENDIF}
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmEventDriven, frmEventDriven);
  Application.Run;
end.
