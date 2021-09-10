unit RICK.Sample.View2;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Layouts, FMX.Objects,
  FMX.Controls.Presentation, RICK.Sample.Base, System.Math.Vectors,
  FMX.Controls3D, FMX.Layers3D;

type
  TPageView2 = class(TPageBase)
    Label1: TLabel;
    Layout1: TLayout;
  private
    { Private declarations }
  public
    { Public declarations }
  end;


implementation

{$R *.fmx}

end.
