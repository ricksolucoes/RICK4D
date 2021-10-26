unit RICK4D.Loading.Interfaces;

interface

uses
  FMX.Forms,

  System.Classes,
  System.UITypes,
  System.SysUtils;
type
  iRICK4DLoading<T> = interface
    ['{4B7C4E9C-D9D2-47A5-B613-E4842C1828DD}']

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

  end;
implementation

end.
