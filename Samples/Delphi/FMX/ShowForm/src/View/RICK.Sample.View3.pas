unit RICK.Sample.View3;

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
  TPageView3 = class(TPageBase)
    Layout1: TLayout;
    Label1: TLabel;
  end;


implementation

{$R *.fmx}

end.
