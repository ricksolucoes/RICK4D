unit RICK4D.Dialog.Custom.Main;

interface

uses
  RICK4D.Interfaces,
  RICK.Dialog.Interfaces;
type
  TRICK4DDialogCustomMain = class(TInterfacedObject, iRICK4DDialogMain)
  private
    [weak]
    FParent : iRICK4DDialog;
    FDialog : iRICKDialog;
    FBackground: iRICK4DDialogMainBackgroundCustom;

    function Background: iRICK4DDialogMainBackgroundCustom;

    function &End: iRICK4DDialog;

    constructor Create(AParent: iRICK4DDialog); overload;
    constructor Create(AParent: iRICK4DDialog; ADialog: iRICKDialog); overload;
  public
    class function New(AParent: iRICK4DDialog): iRICK4DDialogMain; overload;
    class function New(AParent: iRICK4DDialog; ADialog: iRICKDialog): iRICK4DDialogMain; overload;
    destructor Destroy; override;
  end;
implementation

uses
  RICK4D.Dialog.Custom.Main.Background;


{ TRICK4DDialogCustomMain }

function TRICK4DDialogCustomMain.Background: iRICK4DDialogMainBackgroundCustom;
begin
   if not Assigned(FBackground) then
    FBackground := TRICK4DDialogCustomMainBackground.New(Self, FDialog);

  Result:= FBackground;
end;

constructor TRICK4DDialogCustomMain.Create(AParent: iRICK4DDialog);
begin
  FParent:= AParent;
end;

constructor TRICK4DDialogCustomMain.Create(AParent: iRICK4DDialog;
  ADialog: iRICKDialog);
begin
  FParent:= AParent;
  FDialog:= ADialog;
end;

destructor TRICK4DDialogCustomMain.Destroy;
begin

  inherited;
end;


function TRICK4DDialogCustomMain.&End: iRICK4DDialog;
begin
  Result:= FParent;
end;

class function TRICK4DDialogCustomMain.New(AParent: iRICK4DDialog;
  ADialog: iRICKDialog): iRICK4DDialogMain;
begin
  Result:= Self.Create(AParent, ADialog);
end;

class function TRICK4DDialogCustomMain.New(AParent: iRICK4DDialog): iRICK4DDialogMain;
begin
  Result:= Self.Create(AParent);
end;

end.

