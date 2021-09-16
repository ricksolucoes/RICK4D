unit RICK4D.Dialog.Custom.Main.Background;

interface

uses
  System.UITypes,

  RICK4D.Interfaces,
  RICK.Dialog.Interfaces;
type
  TRICK4DDialogCustomMainBackground = class(TInterfacedObject, iRICK4DDialogMainBackgroundCustom)
  private
    [weak]
    FParent : iRICK4DDialogMain;
    FDialog : iRICKDialog;

    function Opacity(Const AValue: Single): iRICK4DDialogMainBackgroundCustom;
    function Color(Const AValue: TAlphaColor): iRICK4DDialogMainBackgroundCustom;

    function &End: iRICK4DDialogMain;

    constructor Create(AParent: iRICK4DDialogMain); overload;
    constructor Create(AParent: iRICK4DDialogMain; ADialog: iRICKDialog); overload;
  public
    class function New(AParent: iRICK4DDialogMain): iRICK4DDialogMainBackgroundCustom; overload;
    class function New(AParent: iRICK4DDialogMain; ADialog: iRICKDialog): iRICK4DDialogMainBackgroundCustom; overload;
    destructor Destroy; override;
  end;
implementation



function TRICK4DDialogCustomMainBackground.Color(
  const AValue: TAlphaColor): iRICK4DDialogMainBackgroundCustom;
begin
  Result:= Self;
  FDialog.BackgroundColor(AValue);
end;

function TRICK4DDialogCustomMainBackground.&End: iRICK4DDialogMain;
begin
  Result:= FParent;
end;

class function TRICK4DDialogCustomMainBackground.New(AParent: iRICK4DDialogMain;
  ADialog: iRICKDialog): iRICK4DDialogMainBackgroundCustom;
begin
  Result:= Self.Create(AParent, ADialog);
end;

constructor TRICK4DDialogCustomMainBackground.Create(AParent: iRICK4DDialogMain);
begin
  FParent:= AParent;
end;

constructor TRICK4DDialogCustomMainBackground.Create(AParent: iRICK4DDialogMain;
  ADialog: iRICKDialog);
begin
  FParent:= AParent;
  FDialog:= ADialog;
end;

destructor TRICK4DDialogCustomMainBackground.Destroy;
begin

  inherited;
end;




class function TRICK4DDialogCustomMainBackground.New(AParent: iRICK4DDialogMain): iRICK4DDialogMainBackgroundCustom;
begin
  Result:= Self.Create(AParent);
end;



function TRICK4DDialogCustomMainBackground.Opacity(
  const AValue: Single): iRICK4DDialogMainBackgroundCustom;
begin
  Result:= Self;
  FDialog.BackgroundOpacity(AValue);
end;

end.


