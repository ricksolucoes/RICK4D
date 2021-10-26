unit RICK4D.Loading;

interface

uses
  FMX.Forms,

  System.Classes,
  System.UITypes,
  System.SysUtils,

  RICK4D.Loading.Interfaces,

  RICK.Loading,
  RICK.Loading.Interfaces;
type
  TRICK4DLoading<T: IInterface> = class(TInterfacedObject, iRICK4DLoading<T>)
  private
    [weak]
    FParent : T;
    FFramework : iRICKLoading;

    function Form(AValue: TForm): iRICK4DLoading<T>;
    function Execute(const AProc: TProc): iRICK4DLoading<T>; overload;
    function Execute(const AProc: TProc; ANotifyEvent: TNotifyEvent): iRICK4DLoading<T>; overload;
    function DoMessage(const AValue: string): iRICK4DLoading<T>;
    function ChangeMessage(const AValue: string): iRICK4DLoading<T>;
    function SourceSize(const AValue: Integer): iRICK4DLoading<T>;
    function SourceName(const AValue: string): iRICK4DLoading<T>;
    function SourceColor(const AValue: TAlphaColor): iRICK4DLoading<T>;
    function AnimationColor(Const AValue: TAlphaColor): iRICK4DLoading<T>;
    function BackgroundColor(Const AValue: TAlphaColor): iRICK4DLoading<T>;
    function OpacityBackground(Const AValue: Single): iRICK4DLoading<T>;
    function OpacityAnimationText(Const AValue: Single): iRICK4DLoading<T>;

    procedure DestroyAnimation;

    function &End: T;

    constructor Create(AParent: T);
  public
    class function New(AParent: T): iRICK4DLoading<T>;
    destructor Destroy; override;
  end;
implementation

{ TRICK4DLoading<T> }

function TRICK4DLoading<T>.AnimationColor(
  const AValue: TAlphaColor): iRICK4DLoading<T>;
begin
  Result:= Self;
  FFramework.AnimationColor(AValue);
end;

function TRICK4DLoading<T>.BackgroundColor(
  const AValue: TAlphaColor): iRICK4DLoading<T>;
begin
  Result:= Self;
  FFramework.BackgroundColor(AValue);
end;

function TRICK4DLoading<T>.ChangeMessage(
  const AValue: string): iRICK4DLoading<T>;
begin
  Result:= Self;
  FFramework.ChangeMessage(AValue);
end;

constructor TRICK4DLoading<T>.Create(AParent: T);
begin
  FParent := AParent;
  FFramework:= TRICKLoading.New;
end;

destructor TRICK4DLoading<T>.Destroy;
begin

  inherited;
end;

procedure TRICK4DLoading<T>.DestroyAnimation;
begin
  FFramework.DestroyAnimation;
end;

function TRICK4DLoading<T>.DoMessage(const AValue: string): iRICK4DLoading<T>;
begin
  Result:= Self;
  FFramework.DoMessage(AValue);
end;

function TRICK4DLoading<T>.&End: T;
begin
  Result:= FParent;
end;

function TRICK4DLoading<T>.Execute(const AProc: TProc): iRICK4DLoading<T>;
begin
  Result:= Self;
  FFramework.Execute(AProc);
end;

function TRICK4DLoading<T>.Execute(const AProc: TProc;
  ANotifyEvent: TNotifyEvent): iRICK4DLoading<T>;
begin
  Result:= Self;
  FFramework.Execute(AProc, ANotifyEvent);
end;

function TRICK4DLoading<T>.Form(AValue: TForm): iRICK4DLoading<T>;
begin
  Result:= Self;
  FFramework.Form(AValue);
end;

class function TRICK4DLoading<T>.New(AParent: T): iRICK4DLoading<T>;
begin
  Result:= Self.Create(AParent);
end;

function TRICK4DLoading<T>.OpacityAnimationText(
  const AValue: Single): iRICK4DLoading<T>;
begin
  Result:= Self;
  FFramework.OpacityAnimationText(AValue);
end;

function TRICK4DLoading<T>.OpacityBackground(
  const AValue: Single): iRICK4DLoading<T>;
begin
  Result:= Self;
  FFramework.OpacityBackground(AValue);
end;

function TRICK4DLoading<T>.SourceColor(
  const AValue: TAlphaColor): iRICK4DLoading<T>;
begin
  Result:= Self;
  FFramework.SourceColor(AValue);
end;

function TRICK4DLoading<T>.SourceName(const AValue: string): iRICK4DLoading<T>;
begin
  Result:= Self;
  FFramework.SourceName(AValue);

end;

function TRICK4DLoading<T>.SourceSize(const AValue: Integer): iRICK4DLoading<T>;
begin
  Result:= Self;
  FFramework.SourceSize(AValue);
end;

end.
