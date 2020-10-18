program Sample;

uses
  Vcl.Forms,
  Sample.Main in 'sample\src\Sample.Main.pas' {FrmMain},
  Controller.Sample in 'src\controller\Controller.Sample.pas' {ControllerSample: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  ReportMemoryLeaksOnShutdown := True;
  Application.CreateForm(TFrmMain, FrmMain);
  Application.Run;
end.
