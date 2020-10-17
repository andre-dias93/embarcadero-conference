program Sample;

uses
  Vcl.Forms,
  Sample.Main in 'sample\src\Sample.Main.pas' {FrmMain},
  FluentInterface.Core.Interfaces.Intf in 'src\core\FluentInterface.Core.Interfaces.Intf.pas',
  FluentInterface.Utils.SmartPointer in 'src\utils\FluentInterface.Utils.SmartPointer.pas',
  FluentInterface.Utils in 'src\utils\FluentInterface.Utils.pas',
  FluentInterface.Types.EvenOdd in 'src\types\FluentInterface.Types.EvenOdd.pas',
  FluentInterface.Core.ListString in 'src\core\FluentInterface.Core.ListString.pas',
  FluentInterface.Core.ListBuilder in 'src\core\FluentInterface.Core.ListBuilder.pas',
  FluentInterface.Core.ListFactory in 'src\core\FluentInterface.Core.ListFactory.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  ReportMemoryLeaksOnShutdown := True;
  Application.CreateForm(TFrmMain, FrmMain);
  Application.Run;
end.
