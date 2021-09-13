program RICKSampleLibrarys;

uses
  System.StartUpCopy,
  FMX.Forms,
  RICK.Sample.Base in '..\Comum\Base\RICK.Sample.Base.pas' {PageBase},
  RICK.Sample.View1 in 'src\View\RICK.Sample.View1.pas' {PageView1};

{$R *.res}

begin
{$IFDEF DEBUG}
  ReportMemoryLeaksOnShutdown:= True;
{$ENDIF}
  Application.Initialize;
  Application.CreateForm(TPageView1, PageView1);
  Application.Run;
end.
