program RICK4Delphi;

uses
  System.StartUpCopy,
  FMX.Forms,
  RICK4D.Interfaces in 'src\RICK4D.Interfaces.pas',
  RICK4D in 'src\RICK4D.pas',
  RICK4D.ShowForm in 'src\RICK4D.ShowForm.pas',
  RICK4D.CallBack in 'src\RICK4D.CallBack.pas',
  RICK4D.Loading in 'src\RICK4D.Loading.pas',
  RICK4D.Librarys in 'src\RICK4D.Librarys.pas',
  RICK4D.CheckConnection in 'src\RICK4D.CheckConnection.pas',
  RICK4D.Format in 'src\RICK4D.Format.pas',
  RICK4D.Dialog in 'src\RICK4D.Dialog.pas',
  RICK4D.Dialog.Custom.Main in 'src\RICK4D.Dialog.Custom.Main.pas',
  RICK4D.Dialog.Custom.Main.Background in 'src\RICK4D.Dialog.Custom.Main.Background.pas',
  RICK4D.Dialog.Custom in 'src\RICK4D.Dialog.Custom.pas',
  RICK4D.Dialog.Custom.Background in 'src\RICK4D.Dialog.Custom.Background.pas',
  RICK4D.Dialog.Custom.Rectangle in 'src\RICK4D.Dialog.Custom.Rectangle.pas',
  RICK4D.Dialog.Custom.Icon in 'src\RICK4D.Dialog.Custom.Icon.pas',
  RICK4D.Dialog.Custom.Title in 'src\RICK4D.Dialog.Custom.Title.pas',
  RICK4D.Dialog.Custom.Info in 'src\RICK4D.Dialog.Custom.Info.pas',
  RICK4D.Dialog.Custom.Button in 'src\RICK4D.Dialog.Custom.Button.pas',
  RICK4D.Dialog.Custom.Execute in 'src\RICK4D.Dialog.Custom.Execute.pas',
  RICK4D.Dialog.Custom.Button.First in 'src\RICK4D.Dialog.Custom.Button.First.pas',
  RICK4D.Dialog.Custom.Button.Second in 'src\RICK4D.Dialog.Custom.Button.Second.pas',
  RICK4D.Encrypt in 'src\RICK4D.Encrypt.pas',
  RICK4D.Contract in 'src\RICK4D.Contract.pas',
  RICK4D.Rest in 'src\RICK4D.Rest.pas',
  RICK4D.Session.Token in 'src\RICK4D.Session.Token.pas',
  RICK4D.Session.URL in 'src\RICK4D.Session.URL.pas',
  RICK4D.Session in 'src\RICK4D.Session.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.Run;
end.
