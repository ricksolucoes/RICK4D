unit RICK.Sample.View1;

interface

uses
  FMX.Ani,
  FMX.Forms,
  FMX.Types,
  FMX.Layouts,
  FMX.Objects,
  FMX.Controls,
  FMX.StdCtrls,
  FMX.Controls.Presentation,

  System.Classes,
  System.UITypes,

  RICK.Sample.Base;

type
  TPageView1 = class(TPageBase)
    btShowForm: TSpeedButton;
    btnShowFormTwo: TSpeedButton;
    GridPanelLayout: TGridPanelLayout;
    procedure btShowFormClick(Sender: TObject);
    procedure btnShowFormTwoClick(Sender: TObject);
  protected
    procedure BeforeShow; override;
    procedure AfterShow; override;
    procedure AfterShowClose;


  end;

var
  PageView1: TPageView1;

implementation

uses
  RICK4D,
  RICK.Sample.VIew2, RICK.Sample.View3, FMX.Dialogs;

{$R *.fmx}


procedure TPageView1.AfterShow;
begin
  ShowMessage('After Show');
end;

procedure TPageView1.AfterShowClose;
begin
  ShowMessage('After Show');
  Self.Close;
end;

procedure TPageView1.BeforeShow;
begin
  ShowMessage('Before Show')
end;

procedure TPageView1.btnShowFormTwoClick(Sender: TObject);
begin
  inherited;
  TRICK4D
    .New
      .ShowForm
        .Formulary(TPageView2) //Inform the form's class
        .ExecuteBefore(BeforeShow) //Procedure to be performed before show form
        .ExecuteAfter(AfterShow) //Procedure to be performed after show form
      .Show //Open the formulary
      .ShowOther //Prepare new form to show
        .Formulary(TPageView3) //Inform the form's class
      .Show;  //Open the formulary}
end;

procedure TPageView1.btShowFormClick(Sender: TObject);
begin
  inherited;
  TRICK4D
    .New
      .ShowForm
        .Formulary(TPageView2) //Inform the form's class
        .ExecuteBefore(BeforeShow) //Procedure to be performed before show form
        .ExecuteAfter(AfterShowClose) //Procedure to be performed after show form
        .ChangeDefaultMainForm //Set the specified form as the main form
      .Show;  //Open the formulary

end;

end.
