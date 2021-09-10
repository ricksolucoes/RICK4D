program RICKSampleFormShow;

uses
  System.StartUpCopy,
  FMX.Forms,
  RICK.Sample.Base in '..\Comum\Base\RICK.Sample.Base.pas' {PageBase},
  RICK.Sample.View1 in 'src\View\RICK.Sample.View1.pas' {PageView1},
  RICK.Sample.View2 in 'src\View\RICK.Sample.View2.pas' {PageView2},
  RICK.Sample.View3 in 'src\View\RICK.Sample.View3.pas' {PageView3};

{$R *.res}

begin
{$IFDEF DEBUG}
  ReportMemoryLeaksOnShutdown:= True;
{$ENDIF}
  Application.Initialize;
  Application.CreateForm(TPageView1, PageView1);
  Application.Run;
end.
