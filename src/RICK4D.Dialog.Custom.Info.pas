unit RICK4D.Dialog.Custom.Info;

interface

uses
  System.UITypes,

  RICK4D.Interfaces,
  RICK.Dialog.Interfaces;
type
  TRICK4DDialogCustomInfo = class(TInterfacedObject, iRICK4DDialogInfoCustom)
  private
    [weak]
    FParent : iRICK4DDialogCustom;
    FDialog : iRICKDialog;

    function Text(Const AValue: string): iRICK4DDialogInfoCustom;
    function FontSize(Const AValue: Single): iRICK4DDialogInfoCustom;
    function FontColor(Const AValue: TAlphaColor): iRICK4DDialogInfoCustom;

    function &End: iRICK4DDialogCustom;

    constructor Create(AParent: iRICK4DDialogCustom); overload;
    constructor Create(AParent: iRICK4DDialogCustom; ADialog: iRICKDialog); overload;
  public
    class function New(AParent: iRICK4DDialogCustom): iRICK4DDialogInfoCustom; overload;
    class function New(AParent: iRICK4DDialogCustom; ADialog: iRICKDialog): iRICK4DDialogInfoCustom; overload;
    destructor Destroy; override;
  end;
implementation

function TRICK4DDialogCustomInfo.&End: iRICK4DDialogCustom;
begin
  Result:= FParent;
end;

class function TRICK4DDialogCustomInfo.New(AParent: iRICK4DDialogCustom;
  ADialog: iRICKDialog): iRICK4DDialogInfoCustom;
begin
  Result:= Self.Create(AParent, ADialog);
end;

function TRICK4DDialogCustomInfo.FontSize(
  const AValue: Single): iRICK4DDialogInfoCustom;
begin
  Result:= Self;
  FDialog.MessageInfoFontSize(AValue);
end;

function TRICK4DDialogCustomInfo.Text(
  const AValue: string): iRICK4DDialogInfoCustom;
begin
  Result:= Self;
  FDialog.MessageInfoText(AValue);
end;

constructor TRICK4DDialogCustomInfo.Create(AParent: iRICK4DDialogCustom);
begin
  FParent:= AParent;
end;

function TRICK4DDialogCustomInfo.FontColor(
  const AValue: TAlphaColor): iRICK4DDialogInfoCustom;
begin
  Result:= Self;
  FDialog.MessageInfoFontColor(AValue);
end;

constructor TRICK4DDialogCustomInfo.Create(AParent: iRICK4DDialogCustom;
  ADialog: iRICKDialog);
begin
  FParent:= AParent;
  FDialog:= ADialog;
end;

destructor TRICK4DDialogCustomInfo.Destroy;
begin

  inherited;
end;

class function TRICK4DDialogCustomInfo.New(AParent: iRICK4DDialogCustom): iRICK4DDialogInfoCustom;
begin
  Result:= Self.Create(AParent);
end;

end.



