unit RICK4D.Loading;
interface
uses
  System.UITypes,
  System.Classes,
  System.SysUtils,
  RICK4D.Interfaces,
  RICK.Loading.Interfaces;
type
  TRICK4DLoading = class(TInterfacedObject, iRICK4DLoading)
  private
    [weak]
    FParent : iRICK4D;
    FLoading: iRICKLoading;
    function Execute(const AProc: TProc): iRICK4DLoading; overload;
    function Execute(const AProc: TProc; ANotifyEvent: TNotifyEvent): iRICK4DLoading; overload;
    function DoMessage(const AValue: string): iRICK4DLoading;
    function ChangeMessage(const AValue: string): iRICK4DLoading;
    function SourceSize(const AValue: Integer): iRICK4DLoading;
    function SourceName(const AValue: string): iRICK4DLoading;
    function SourceColor(const AValue: TAlphaColor): iRICK4DLoading;
    function AnimationColor(Const AValue: TAlphaColor): iRICK4DLoading;
    function BackgroundColor(Const AValue: TAlphaColor): iRICK4DLoading;
    function OpacityBackground(Const AValue: Single): iRICK4DLoading;
    function OpacityAnimationText(Const AValue: Single): iRICK4DLoading;
    procedure DestroyAnimation;
    function &End: iRICK4D;
    constructor Create(AParent: iRICK4D); overload;
    constructor Create; overload;
  public
    class function New(AParent: iRICK4D): iRICK4DLoading; overload;
    class function New: iRICK4DLoading; overload;
    destructor Destroy; override;
  end;
implementation
uses
  RICK.Loading;
{ TRICK4DLoading }
function TRICK4DLoading.AnimationColor(
  const AValue: TAlphaColor): iRICK4DLoading;
begin
  Result:= Self;
  FLoading.AnimationColor(AValue);
end;
function TRICK4DLoading.BackgroundColor(
  const AValue: TAlphaColor): iRICK4DLoading;
begin
  Result:= Self;
  FLoading.BackgroundColor(AValue);
end;
function TRICK4DLoading.ChangeMessage(const AValue: string): iRICK4DLoading;
begin
  Result:= Self;
  FLoading.ChangeMessage(AValue);
end;
constructor TRICK4DLoading.Create;
begin
  FLoading:= TRICKLoading.New;
end;

constructor TRICK4DLoading.Create(AParent: iRICK4D);
begin
  FParent := AParent;
  FLoading:= TRICKLoading.New;
end;
destructor TRICK4DLoading.Destroy;
begin
  inherited;
end;
procedure TRICK4DLoading.DestroyAnimation;
begin
  FLoading.DestroyAnimation;
end;

function TRICK4DLoading.DoMessage(const AValue: string): iRICK4DLoading;
begin
  Result:= Self;
  FLoading.DoMessage(AValue);
end;
function TRICK4DLoading.&End: iRICK4D;
begin
  Result:= FParent;
end;
function TRICK4DLoading.Execute(const AProc: TProc;
  ANotifyEvent: TNotifyEvent): iRICK4DLoading;
begin
  Result:= Self;
  FLoading.Execute(AProc, ANotifyEvent);
end;

class function TRICK4DLoading.New: iRICK4DLoading;
begin
  Result:= Self.Create;
end;

function TRICK4DLoading.Execute(const AProc: TProc): iRICK4DLoading;
begin
  Result:= Self;
  FLoading.Execute(AProc);
end;

class function TRICK4DLoading.New(AParent: iRICK4D): iRICK4DLoading;
begin
  Result:= Self.Create(AParent);
end;
function TRICK4DLoading.OpacityAnimationText(
  const AValue: Single): iRICK4DLoading;
begin
  Result:= Self;
  FLoading.OpacityAnimationText(AValue);
end;
function TRICK4DLoading.OpacityBackground(const AValue: Single): iRICK4DLoading;
begin
  Result:= Self;
  FLoading.OpacityBackground(AValue);
end;
function TRICK4DLoading.SourceColor(const AValue: TAlphaColor): iRICK4DLoading;
begin
  Result:= Self;
  FLoading.SourceColor(AValue);
end;
function TRICK4DLoading.SourceName(const AValue: string): iRICK4DLoading;
begin
  Result:= Self;
  FLoading.SourceName(AValue);
end;
function TRICK4DLoading.SourceSize(const AValue: Integer): iRICK4DLoading;
begin
  Result:= Self;
  FLoading.SourceSize(AValue);
end;
end.
