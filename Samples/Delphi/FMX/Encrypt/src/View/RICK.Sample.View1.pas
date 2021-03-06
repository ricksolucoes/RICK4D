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

  RICK.Sample.Base, FMX.Edit, System.Types;

type
  TPageView1 = class(TPageBase)
    lblResponse: TLabel;
    btGeneratehash: TSpeedButton;
    btComparehash: TSpeedButton;
    GridPanelLayout: TGridPanelLayout;
    procedure FormCreate(Sender: TObject);
    procedure btGeneratehashClick(Sender: TObject);
    procedure btGeneratehashTap(Sender: TObject; const Point: TPointF);
    procedure btComparehashTap(Sender: TObject; const Point: TPointF);
    procedure btComparehashClick(Sender: TObject);
  private
    {$IFDEF IOS OR ANDROID}
    procedure FeatureNotImplemented;
    {$ENDIF}
  end;

var
  PageView1: TPageView1;

implementation

uses
  RICK4D,
  RICK4D.Interfaces,
  RICK4D.Dialog.Interfaces;

{$R *.fmx}

procedure TPageView1.btComparehashClick(Sender: TObject);
var
  LVerify : Boolean;
  LRICK4D : iRICK4DDialog<iRICK4D>;
begin
  inherited;
{$IFDEF MSWINDOWS OR MACOS OR LINUX}
  LRICK4D:= TRICK4D.New.Dialog.Form(Self);

  LVerify := TRICK4D.New.Encrypt.CompareHash('Password', lblResponse.Text);
  if LVerify then
    LRICK4D.MessageText('Hash OK').ExecuteDialogSuccess
  else
    LRICK4D.MessageText('Hash Error').ExecuteDialogError;
{$ENDIF}
end;

procedure TPageView1.btComparehashTap(Sender: TObject; const Point: TPointF);
begin
  inherited;
{$IFDEF IOS OR ANDROID}
  FeatureNotImplemented;
{$ENDIF}
end;

procedure TPageView1.btGeneratehashClick(Sender: TObject);
begin
  inherited;
{$IFDEF MSWINDOWS OR MACOS OR LINUX}
  lblResponse.Text:= TRICK4D.New.Encrypt.GenerateHash('Password')
{$ENDIF}
end;

procedure TPageView1.btGeneratehashTap(Sender: TObject; const Point: TPointF);
begin
  inherited;
{$IFDEF IOS OR ANDROID}
  FeatureNotImplemented;
{$ENDIF}
end;

{$IFDEF IOS OR ANDROID}
procedure TPageView1.FeatureNotImplemented;
begin
  TRICK4D
    .New
      .Dialog
        .Form(Self)
          .MessageText('Feature not implemented')
          .ExecuteDialogInfo
      .&End
end;
{$ENDIF}

procedure TPageView1.FormCreate(Sender: TObject);
begin
  inherited;
  lblResponse.Text:= EmptyStr;
end;

end.
