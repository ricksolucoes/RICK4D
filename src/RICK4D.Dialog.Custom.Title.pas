unit RICK4D.Dialog.Custom.Title;

interface

uses
  System.UITypes,

  RICK4D.Interfaces,
  RICK.Dialog.Interfaces;
type
  TRICK4DDialogCustomTitle = class(TInterfacedObject, iRICK4DDialogTitleCustom)
  private
    [weak]
    FParent : iRICK4DDialogCustom;
    FDialog : iRICKDialog;

    function Text(Const AValue: string): iRICK4DDialogTitleCustom;
    function FontSize(Const AValue: Single): iRICK4DDialogTitleCustom;
    function FontColor(Const AValue: TAlphaColor): iRICK4DDialogTitleCustom;

    function &End: iRICK4DDialogCustom;

    constructor Create(AParent: iRICK4DDialogCustom); overload;
    constructor Create(AParent: iRICK4DDialogCustom; ADialog: iRICKDialog); overload;
  public
    class function New(AParent: iRICK4DDialogCustom): iRICK4DDialogTitleCustom; overload;
    class function New(AParent: iRICK4DDialogCustom; ADialog: iRICKDialog): iRICK4DDialogTitleCustom; overload;
    destructor Destroy; override;
  end;
implementation

function TRICK4DDialogCustomTitle.&End: iRICK4DDialogCustom;
begin
  Result:= FParent;
end;

class function TRICK4DDialogCustomTitle.New(AParent: iRICK4DDialogCustom;
  ADialog: iRICKDialog): iRICK4DDialogTitleCustom;
begin
  Result:= Self.Create(AParent, ADialog);
end;

function TRICK4DDialogCustomTitle.FontSize(
  const AValue: Single): iRICK4DDialogTitleCustom;
begin
  Result:= Self;
  FDialog.MessageTitleFontSize(AValue);
end;

function TRICK4DDialogCustomTitle.Text(
  const AValue: string): iRICK4DDialogTitleCustom;
begin
  Result:= Self;
  FDialog.MessageTitleText(AValue);
end;

constructor TRICK4DDialogCustomTitle.Create(AParent: iRICK4DDialogCustom);
begin
  FParent:= AParent;
end;

function TRICK4DDialogCustomTitle.FontColor(
  const AValue: TAlphaColor): iRICK4DDialogTitleCustom;
begin
  Result:= Self;
  FDialog.MessageTitleFontColor(AValue);
end;

constructor TRICK4DDialogCustomTitle.Create(AParent: iRICK4DDialogCustom;
  ADialog: iRICKDialog);
begin
  FParent:= AParent;
  FDialog:= ADialog;
end;

destructor TRICK4DDialogCustomTitle.Destroy;
begin

  inherited;
end;

class function TRICK4DDialogCustomTitle.New(AParent: iRICK4DDialogCustom): iRICK4DDialogTitleCustom;
begin
  Result:= Self.Create(AParent);
end;

end.



