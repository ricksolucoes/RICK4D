unit RICK4D.Dialog.Custom.Button.Second;

interface

uses
  System.UITypes,

  RICK4D.CallBack,
  RICK4D.Interfaces,
  RICK.Dialog.Interfaces;
type
  TRICK4DDialogCustomButtonSecond = class(TInterfacedObject, iRICK4DDialogButtonSecondCustom)
  private
    [weak]
    FParent : iRICK4DDialogButtonCustom;
    FDialog : iRICKDialog;

    function Color(Const AValue: TAlphaColor): iRICK4DDialogButtonSecondCustom;
    function Text(Const AValue: string): iRICK4DDialogButtonSecondCustom;
    function FontSize(Const AValue: Single): iRICK4DDialogButtonSecondCustom;
    function FontColor(Const AValue: TAlphaColor): iRICK4DDialogButtonSecondCustom;
    function Process(const AValue: TCallbackProc): iRICK4DDialogButtonSecondCustom;

    function &End: iRICK4DDialogButtonCustom;

    constructor Create(AParent: iRICK4DDialogButtonCustom); overload;
    constructor Create(AParent: iRICK4DDialogButtonCustom; ADialog: iRICKDialog); overload;
  public
    class function New(AParent: iRICK4DDialogButtonCustom): iRICK4DDialogButtonSecondCustom; overload;
    class function New(AParent: iRICK4DDialogButtonCustom; ADialog: iRICKDialog): iRICK4DDialogButtonSecondCustom; overload;
    destructor Destroy; override;
  end;
implementation

function TRICK4DDialogCustomButtonSecond.&End: iRICK4DDialogButtonCustom;
begin
  Result:= FParent;
end;

function TRICK4DDialogCustomButtonSecond.FontColor(
  const AValue: TAlphaColor): iRICK4DDialogButtonSecondCustom;
begin
  Result:= Self;
  FDialog.MessageSecondaryButtonFontColor(AValue);
end;

function TRICK4DDialogCustomButtonSecond.FontSize(
  const AValue: Single): iRICK4DDialogButtonSecondCustom;
begin
  Result:= Self;
  FDialog.MessageSecondaryButtonFontSize(AValue);
end;

class function TRICK4DDialogCustomButtonSecond.New(AParent: iRICK4DDialogButtonCustom;
  ADialog: iRICKDialog): iRICK4DDialogButtonSecondCustom;
begin
  Result:= Self.Create(AParent, ADialog);
end;


function TRICK4DDialogCustomButtonSecond.Process(
  const AValue: TCallbackProc): iRICK4DDialogButtonSecondCustom;
begin
  Result:= Self;
  FDialog.MessageSecondaryButtonExecute(AValue);
end;

function TRICK4DDialogCustomButtonSecond.Text(
  const AValue: string): iRICK4DDialogButtonSecondCustom;
begin
  Result:= Self;
  FDialog.MessageSecondaryButtonText(AValue);
end;

constructor TRICK4DDialogCustomButtonSecond.Create(AParent: iRICK4DDialogButtonCustom);
begin
  FParent:= AParent;
end;

function TRICK4DDialogCustomButtonSecond.Color(
  const AValue: TAlphaColor): iRICK4DDialogButtonSecondCustom;
begin
  Result:= Self;
  FDialog.MessageSecondaryButtonColor(AValue);
end;

constructor TRICK4DDialogCustomButtonSecond.Create(AParent: iRICK4DDialogButtonCustom;
  ADialog: iRICKDialog);
begin
  FParent:= AParent;
  FDialog:= ADialog;
end;

destructor TRICK4DDialogCustomButtonSecond.Destroy;
begin

  inherited;
end;

class function TRICK4DDialogCustomButtonSecond.New(AParent: iRICK4DDialogButtonCustom): iRICK4DDialogButtonSecondCustom;
begin
  Result:= Self.Create(AParent);
end;

end.




