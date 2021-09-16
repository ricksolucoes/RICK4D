unit RICK4D.Dialog.Custom.Button.First;

interface

uses
  System.UITypes,

  RICK4D.CallBack,
  RICK4D.Interfaces,
  RICK.Dialog.Interfaces;
type
  TRICK4DDialogCustomButtonFirst = class(TInterfacedObject, iRICK4DDialogButtonFirstCustom)
  private
    [weak]
    FParent : iRICK4DDialogButtonCustom;
    FDialog : iRICKDialog;


    function Color(Const AValue: TAlphaColor): iRICK4DDialogButtonFirstCustom;
    function Text(Const AValue: string): iRICK4DDialogButtonFirstCustom;
    function FontSize(Const AValue: Single): iRICK4DDialogButtonFirstCustom;
    function FontColor(Const AValue: TAlphaColor): iRICK4DDialogButtonFirstCustom;
    function Process(const AValue: TCallbackProc): iRICK4DDialogButtonFirstCustom;

    function &End: iRICK4DDialogButtonCustom;

    constructor Create(AParent: iRICK4DDialogButtonCustom); overload;
    constructor Create(AParent: iRICK4DDialogButtonCustom; ADialog: iRICKDialog); overload;
  public
    class function New(AParent: iRICK4DDialogButtonCustom): iRICK4DDialogButtonFirstCustom; overload;
    class function New(AParent: iRICK4DDialogButtonCustom; ADialog: iRICKDialog): iRICK4DDialogButtonFirstCustom; overload;
    destructor Destroy; override;
  end;
implementation

function TRICK4DDialogCustomButtonFirst.&End: iRICK4DDialogButtonCustom;
begin
  Result:= FParent;
end;

function TRICK4DDialogCustomButtonFirst.FontColor(
  const AValue: TAlphaColor): iRICK4DDialogButtonFirstCustom;
begin
  Result:= Self;
  FDialog.MessagePrimaryButtonFontColor(AValue);
end;

function TRICK4DDialogCustomButtonFirst.FontSize(
  const AValue: Single): iRICK4DDialogButtonFirstCustom;
begin
  Result:= Self;
  FDialog.MessagePrimaryButtonFontSize(AValue);
end;

class function TRICK4DDialogCustomButtonFirst.New(AParent: iRICK4DDialogButtonCustom;
  ADialog: iRICKDialog): iRICK4DDialogButtonFirstCustom;
begin
  Result:= Self.Create(AParent, ADialog);
end;


function TRICK4DDialogCustomButtonFirst.Process(
  const AValue: TCallbackProc): iRICK4DDialogButtonFirstCustom;
begin
  Result:= Self;
  FDialog.MessagePrimaryButtonExecute(AValue);
end;

function TRICK4DDialogCustomButtonFirst.Text(
  const AValue: string): iRICK4DDialogButtonFirstCustom;
begin
  Result:= Self;
  FDialog.MessagePrimaryButtonText(AValue);
end;

constructor TRICK4DDialogCustomButtonFirst.Create(AParent: iRICK4DDialogButtonCustom);
begin
  FParent:= AParent;
end;

function TRICK4DDialogCustomButtonFirst.Color(
  const AValue: TAlphaColor): iRICK4DDialogButtonFirstCustom;
begin
  Result:= Self;
  FDialog.MessagePrimaryButtonColor(AValue);
end;

constructor TRICK4DDialogCustomButtonFirst.Create(AParent: iRICK4DDialogButtonCustom;
  ADialog: iRICKDialog);
begin
  FParent:= AParent;
  FDialog:= ADialog;
end;

destructor TRICK4DDialogCustomButtonFirst.Destroy;
begin

  inherited;
end;

class function TRICK4DDialogCustomButtonFirst.New(AParent: iRICK4DDialogButtonCustom): iRICK4DDialogButtonFirstCustom;
begin
  Result:= Self.Create(AParent);
end;

end.



