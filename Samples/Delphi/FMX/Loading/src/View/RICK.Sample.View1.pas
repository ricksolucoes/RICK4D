unit RICK.Sample.View1;

interface

uses
  FMX.Ani,
  FMX.Forms,
  FMX.Types,
  FMX.Dialogs,
  FMX.Effects,
  FMX.Layouts,
  FMX.Objects,
  FMX.StdCtrls,
  FMX.Controls,
  FMX.Controls.Presentation,

  System.Classes,
  System.UITypes,
  System.SysUtils,

  RICK.Sample.Base;

type
  TPageView1 = class(TPageBase)
    btShowForm: TSpeedButton;
    btnShowFormTwo: TSpeedButton;
    GridPanelLayout: TGridPanelLayout;
    procedure btShowFormClick(Sender: TObject);
    procedure btnShowFormTwoClick(Sender: TObject);

  end;

var
  PageView1: TPageView1;

implementation

uses
  RICK4D,
  RICK4D.Interfaces;

{$R *.fmx}

procedure TPageView1.btnShowFormTwoClick(Sender: TObject);
var
  LRICK4D: iRICK4D;
begin
  inherited;

  LRICK4D:= TRICK4D.New;
  LRICK4D.Loading.DoMessage('Loading Modified'); //Changes the initial loading message
  LRICK4D.Loading.SourceSize(32); //Change the font size
  LRICK4D.Loading.SourceName('Segoe UI'); //Change the font type
  LRICK4D.Loading.SourceColor($FFF52121); //Change the font color
  LRICK4D.Loading.AnimationColor($FFF52121); //Changes the color of the animation
  LRICK4D.Loading.BackgroundColor($FF24CCC6); //Changes the color of the loading background
  LRICK4D.Loading.OpacityBackground(0.9); //Changes the opacity of the background;
  LRICK4D.Loading.OpacityAnimationText(0.6); //Change the opacity of text

  LRICK4D.Loading.Execute(
  procedure
  begin

    TThread.Sleep(500);

    TThread.Synchronize(TThread.Current,
    procedure
    begin
      LRICK4D.Loading.ChangeMessage('Changing message'); //Change the message to the user
    end);

    TThread.Sleep(1500);


    TThread.Synchronize(TThread.Current,
    procedure
    begin
      ShowMessage('Command to refresh the screen here...');
    end);
  end);

end;

procedure TPageView1.btShowFormClick(Sender: TObject);
begin
  inherited;
  TRICK4D
    .New
      .Loading
        .Execute(
          procedure
          begin
            // Delayed Command
            Sleep(500);

            TThread.Synchronize(TThread.Current,
              procedure
              begin
                TRICK4D.New.Loading.ChangeMessage('Changing message');
                // Change the message to the user
              end);

            // Another command if there is one
            TThread.Sleep(1500);

            TThread.Synchronize(TThread.Current,
              procedure
              begin
                // Command to refresh the screen
                ShowMessage('Command to refresh the screen here...');
              end);
          end);


end;

end.
