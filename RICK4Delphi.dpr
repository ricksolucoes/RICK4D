program RICK4Delphi;

uses
  System.StartUpCopy,
  FMX.Forms,
  RICK4D.Interfaces in 'src\RICK4D.Interfaces.pas',
  RICK4D in 'src\RICK4D.pas',
  RICK4D.ShowForm in 'src\RICK4D.ShowForm.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.Run;
end.
