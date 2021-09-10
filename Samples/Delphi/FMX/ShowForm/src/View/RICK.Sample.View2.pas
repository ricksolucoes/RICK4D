unit RICK.Sample.View2;

interface

uses
  FMX.Types,
  FMX.Objects,
  FMX.Layouts,
  FMX.Controls,
  FMX.StdCtrls,
  FMX.Controls.Presentation,

  System.Classes,

  RICK.Sample.Base;

type
  TPageView2 = class(TPageBase)
    Label1: TLabel;
    Layout1: TLayout;

  end;


implementation

{$R *.fmx}

end.
