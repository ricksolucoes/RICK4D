unit RICK.Sample.View1;

interface

uses
  FMX.Ani,
  FMX.Types,
  FMX.Forms,
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

  RICK.Sample.Base, FMX.Edit, System.Types, FMX.Memo.Types, FMX.ScrollBox,
  FMX.Memo;

type
  TPageView1 = class(TPageBase)
    btGenerateINI: TSpeedButton;
    btReadINI: TSpeedButton;
    GridPanelLayout: TGridPanelLayout;
    mmResponse: TMemo;
    procedure btGenerateINIClick(Sender: TObject);
    procedure btReadINIClick(Sender: TObject);
  private
  end;

var
  PageView1: TPageView1;

implementation

uses
  RICK4D,
  RICK4D.Interfaces,
  RICK4D.INI.Interfaces;

{$R *.fmx}

procedure TPageView1.btGenerateINIClick(Sender: TObject);
begin
  inherited;
  TRICK4D
    .New
      .INI
        .FilePath(ExtractFilePath(ParamStr(0)))
        .FileName(ChangeFileExt(ExtractFileName(ParamStr(0)), EmptyStr))
      .OpenINI
        .Section('String')
          .Identify('Name')
          .ADD('RICK4D')
        .Section('Float')
          .Identify('Value')
          .ADD(1.12)
        .Section('Date')
          .Identify('Now')
          .ADD(Now)
        .Section('Boolean')
          .Identify('Message')
          .ADD(True)
        .Section('Integer')
          .Identify('Age')
          .ADD(13)
        .Section('Stream')
          .Identify('Photo')
          .ADD('No generate')
      .&End
end;

procedure TPageView1.btReadINIClick(Sender: TObject);
var
  LINI : iRICK4DINI<iRICK4D>;
begin
  inherited;
  mmResponse.Lines.Clear;
  LINI:= TRICK4D
    .New
      .INI
        .FilePath(ExtractFilePath(ParamStr(0)))
        .FileName(ChangeFileExt(ExtractFileName(ParamStr(0)), EmptyStr))
      .OpenINI;

  mmResponse.Lines.Add('String     :  ' + LINI.Section('String').Identify('Name').Read(EmptyStr));
  mmResponse.Lines.Add('Float       :  ' + LINI.Section('Float').Identify('Value').Read(0.00).ToString);
  mmResponse.Lines.Add('Date       :  ' + DateTimeToStr(LINI.Section('Date').Identify('Now').Read(Now)));
  mmResponse.Lines.Add('Boolean  :  ' + LINI.Section('Boolean').Identify('Message').Read(True).ToString);
  mmResponse.Lines.Add('Integer    :  ' + LINI.Section('Integer').Identify('Age').Read(0).ToString);
  mmResponse.Lines.Add('Stream    :  ' + LINI.Section('Stream').Identify('Photo').Read(EmptyStr));


end;

end.
