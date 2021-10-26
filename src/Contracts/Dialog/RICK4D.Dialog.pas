unit RICK4D.Dialog;

interface

uses
  FMX.Forms,

  System.UITypes,

  RICK.Dialog,
  RICK.Dialog.Interfaces,

  RICK4D.Events,
  RICK4D.Dialog.Interfaces;

Type
  TRICK4DDialog<T: IInterface> = class(TInterfacedObject, iRICK4DDialog<T>)
  private
    [weak]
    FParent : T;
    FFramework: iRICKDialog;
    FForm: TForm;

    function Form(AValue: TForm): iRICK4DDialog<T>;

    function BackgroundOpacity(Const AValue: Single): iRICK4DDialog<T>;
    function BackgroundColor(Const AValue: TAlphaColor): iRICK4DDialog<T>;

    function MessageBoxColor(Const AValue: TAlphaColor): iRICK4DDialog<T>;
    function MessageBoxHeight(Const AValue: Single): iRICK4DDialog<T>;
    function MessageBoxWidth(Const AValue: Single): iRICK4DDialog<T>;

    function IconColor (Const AValue: TAlphaColor): iRICK4DDialog<T>;

    function TitleText(Const AValue: string): iRICK4DDialog<T>;
    function TitleFontSize(Const AValue: Single): iRICK4DDialog<T>;
    function TitleFontColor(Const AValue: TAlphaColor): iRICK4DDialog<T>;

    function MessageText(Const AValue: string): iRICK4DDialog<T>;
    function MessageFontSize(Const AValue: Single): iRICK4DDialog<T>;
    function MessageFontColor(Const AValue: TAlphaColor): iRICK4DDialog<T>;

    function MainButtonColor (Const AValue: TAlphaColor): iRICK4DDialog<T>;
    function MainButtonText(Const AValue: string): iRICK4DDialog<T>;
    function MainButtonFontSize(Const AValue: Single): iRICK4DDialog<T>;
    function MainButtonFontColor(Const AValue: TAlphaColor): iRICK4DDialog<T>;
    function MainButtonProcess(const AValue: TCallbackProc): iRICK4DDialog<T>;

    function AuxiliaryButtonColor (Const AValue: TAlphaColor): iRICK4DDialog<T>;
    function AuxiliaryButtonText(Const AValue: string): iRICK4DDialog<T>;
    function AuxiliaryButtonFontSize(Const AValue: Single): iRICK4DDialog<T>;
    function AuxiliaryButtonFontColor(Const AValue: TAlphaColor): iRICK4DDialog<T>;
    function AuxiliaryButtonProcess(const AValue: TCallbackProc): iRICK4DDialog<T>;

    function ExecuteDialogQuestion: iRICK4DDialog<T>;
    function ExecuteDialogError: iRICK4DDialog<T>;
    function ExecuteDialogSuccess: iRICK4DDialog<T>;
    function ExecuteDialogInfo: iRICK4DDialog<T>;
    function ExecuteDialogWarnig: iRICK4DDialog<T>;

    function &End: T;

    constructor Create(AParent: T);
  public
    class function New(AParent: T): iRICK4DDialog<T>;
    destructor Destroy; override;
  end;
implementation

uses
  System.SysUtils;

{ TRICK4DDialog<T> }

function TRICK4DDialog<T>.AuxiliaryButtonColor(
  const AValue: TAlphaColor): iRICK4DDialog<T>;
begin
  Result:= Self;
  FFramework.MessageSecondaryButtonColor(AValue);
end;

function TRICK4DDialog<T>.AuxiliaryButtonFontColor(
  const AValue: TAlphaColor): iRICK4DDialog<T>;
begin
  Result:= Self;
  FFramework.MessageSecondaryButtonFontColor(AValue);
end;

function TRICK4DDialog<T>.AuxiliaryButtonFontSize(
  const AValue: Single): iRICK4DDialog<T>;
begin
  Result:= Self;
  FFramework.MessageSecondaryButtonFontSize(AValue);
end;

function TRICK4DDialog<T>.AuxiliaryButtonProcess(
  const AValue: TCallbackProc): iRICK4DDialog<T>;
begin
  Result:= Self;
  FFramework.MessageSecondaryButtonExecute(AValue);
end;

function TRICK4DDialog<T>.AuxiliaryButtonText(
  const AValue: string): iRICK4DDialog<T>;
begin
  Result:= Self;
  FFramework.MessageSecondaryButtonText(AValue);
end;

function TRICK4DDialog<T>.BackgroundColor(
  const AValue: TAlphaColor): iRICK4DDialog<T>;
begin
  Result:= Self;
  FFramework.BackgroundColor(AValue);
end;

function TRICK4DDialog<T>.BackgroundOpacity(
  const AValue: Single): iRICK4DDialog<T>;
begin
  Result:= Self;
  FFramework.BackgroundOpacity(AValue);
end;

constructor TRICK4DDialog<T>.Create(AParent: T);
begin
  FParent:= AParent;
  FFramework:= TRICKDialog.New;
end;

destructor TRICK4DDialog<T>.Destroy;
begin

  inherited;
end;

function TRICK4DDialog<T>.&End: T;
begin
  Result:= FParent;
end;

function TRICK4DDialog<T>.ExecuteDialogError: iRICK4DDialog<T>;
begin
  Result:= Self;

  if not Assigned(FForm) then
    raise Exception.Create('Inform the form.');

  FFramework.DisplayError;
end;

function TRICK4DDialog<T>.Form(AValue: TForm): iRICK4DDialog<T>;
begin
  Result:= Self;

  FForm:= AValue;

  FFramework.Form(FForm);
end;

function TRICK4DDialog<T>.IconColor(
  const AValue: TAlphaColor): iRICK4DDialog<T>;
begin
  Result:= Self;
  FFramework.MessageIconColor(AValue);
end;

function TRICK4DDialog<T>.ExecuteDialogInfo: iRICK4DDialog<T>;
begin
  Result:= Self;

  if not Assigned(FForm) then
    raise Exception.Create('Inform the form.');

  FFramework.DisplayInfo;
end;

function TRICK4DDialog<T>.MainButtonColor(
  const AValue: TAlphaColor): iRICK4DDialog<T>;
begin
  Result:= Self;
  FFramework.MessagePrimaryButtonColor(AValue);
end;

function TRICK4DDialog<T>.MainButtonFontColor(
  const AValue: TAlphaColor): iRICK4DDialog<T>;
begin
  Result:= Self;
  FFramework.MessagePrimaryButtonFontColor(AValue);
end;

function TRICK4DDialog<T>.MainButtonFontSize(
  const AValue: Single): iRICK4DDialog<T>;
begin
  Result:= Self;
  FFramework.MessagePrimaryButtonFontSize(AValue);
end;

function TRICK4DDialog<T>.MainButtonProcess(
  const AValue: TCallbackProc): iRICK4DDialog<T>;
begin
  Result:= Self;
  FFramework.MessagePrimaryButtonExecute(AValue);
end;

function TRICK4DDialog<T>.MainButtonText(
  const AValue: string): iRICK4DDialog<T>;
begin
  Result:= Self;
  FFramework.MessagePrimaryButtonText(AValue);
end;

function TRICK4DDialog<T>.MessageBoxColor(
  const AValue: TAlphaColor): iRICK4DDialog<T>;
begin
  Result:= Self;
  FFramework.MessageBackgroundColor(AValue);
end;

function TRICK4DDialog<T>.MessageBoxHeight(
  const AValue: Single): iRICK4DDialog<T>;
begin
  Result:= Self;
  FFramework.MessageRectangleHeight(AValue);
end;

function TRICK4DDialog<T>.MessageBoxWidth(
  const AValue: Single): iRICK4DDialog<T>;
begin
  Result:= Self;
  FFramework.MessageRectangleWidth(AValue);
end;

function TRICK4DDialog<T>.MessageFontColor(
  const AValue: TAlphaColor): iRICK4DDialog<T>;
begin
  Result:= Self;
  FFramework.MessageInfoFontColor(AValue);
end;

function TRICK4DDialog<T>.MessageFontSize(
  const AValue: Single): iRICK4DDialog<T>;
begin
  Result:= Self;
  FFramework.MessageInfoFontSize(AValue);
end;

function TRICK4DDialog<T>.MessageText(const AValue: string): iRICK4DDialog<T>;
begin
  Result:= Self;
  FFramework.MessageInfoText(AValue);
end;

class function TRICK4DDialog<T>.New(AParent: T): iRICK4DDialog<T>;
begin
  Result:= Self.Create(AParent);
end;

function TRICK4DDialog<T>.ExecuteDialogQuestion: iRICK4DDialog<T>;
begin
  Result:= Self;

  if not Assigned(FForm) then
    raise Exception.Create('Inform the form.');

  FFramework.DisplayQuestion;
end;

function TRICK4DDialog<T>.ExecuteDialogSuccess: iRICK4DDialog<T>;
begin
  Result:= Self;

  if not Assigned(FForm) then
    raise Exception.Create('Inform the form.');

  FFramework.DisplaySuccess;
end;

function TRICK4DDialog<T>.TitleFontColor(
  const AValue: TAlphaColor): iRICK4DDialog<T>;
begin
  Result:= Self;
  FFramework.MessageTitleFontColor(AValue);
end;

function TRICK4DDialog<T>.TitleFontSize(const AValue: Single): iRICK4DDialog<T>;
begin
  Result:= Self;
  FFramework.MessageTitleFontSize(AValue);
end;

function TRICK4DDialog<T>.TitleText(const AValue: string): iRICK4DDialog<T>;
begin
  Result:= Self;
  FFramework.MessageTitleText(AValue);
end;

function TRICK4DDialog<T>.ExecuteDialogWarnig: iRICK4DDialog<T>;
begin
  Result:= Self;

  if not Assigned(FForm) then
    raise Exception.Create('Inform the form.');

  FFramework.DisplayWarnig;
end;

end.
