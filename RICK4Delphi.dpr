program RICK4Delphi;

uses
  System.StartUpCopy,
  FMX.Forms,
  RICK4D.Interfaces in 'src\Interfaces\RICK4D.Interfaces.pas',
  RICK4D.Check.Connection.Interfaces in 'src\Interfaces\Check Connection\RICK4D.Check.Connection.Interfaces.pas',
  RICK4D in 'src\RICK4D.pas',
  RICK4D.Check.Connection in 'src\Contracts\Check Connection\RICK4D.Check.Connection.pas',
  RICK4D.Loading.Interfaces in 'src\Interfaces\Loading\RICK4D.Loading.Interfaces.pas',
  RICK4D.Loading in 'src\Contracts\Loading\RICK4D.Loading.pas',
  RICK4D.Show.Form.Interfaces in 'src\Interfaces\Show Form\RICK4D.Show.Form.Interfaces.pas',
  RICK4D.Show.Form in 'src\Contracts\Show Form\RICK4D.Show.Form.pas',
  RICK4D.Librarys.Interfaces in 'src\Interfaces\Librarys\RICK4D.Librarys.Interfaces.pas',
  RICK4D.Librarys in 'src\Contracts\Librarys\RICK4D.Librarys.pas',
  RICK4D.Encrypt.Interfaces in 'src\Interfaces\Encrypt\RICK4D.Encrypt.Interfaces.pas',
  RICK4D.Encrypt in 'src\Contracts\Encrypt\RICK4D.Encrypt.pas',
  RICK4D.Types in 'src\Contracts\RICK4D.Types.pas',
  RICK4D.Format in 'src\Contracts\Format\RICK4D.Format.pas',
  RICK4D.Format.Interfaces in 'src\Interfaces\Format\RICK4D.Format.Interfaces.pas',
  RICK4D.Events in 'src\Contracts\RICK4D.Events.pas',
  RICK4D.Dialog.Interfaces in 'src\Interfaces\Dialog\RICK4D.Dialog.Interfaces.pas',
  RICK4D.Dialog in 'src\Contracts\Dialog\RICK4D.Dialog.pas',
  RICK4D.Rest.Interfaces in 'src\Interfaces\Rest\RICK4D.Rest.Interfaces.pas',
  RICK4D.Rest in 'src\Contracts\Rest\RICK4D.Rest.pas',
  RICK4D.Session in 'src\Contracts\Session\RICK4D.Session.pas',
  RICK4D.Session.Entity.TOKEN in 'src\Contracts\Session\Entity\RICK4D.Session.Entity.TOKEN.pas',
  RICK4D.Session.Entity.URL in 'src\Contracts\Session\Entity\RICK4D.Session.Entity.URL.pas',
  RICK4D.INI in 'src\Contracts\File INI\RICK4D.INI.pas',
  RICK4D.INI.Interfaces in 'src\Interfaces\File INI\RICK4D.INI.Interfaces.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.Run;
end.
