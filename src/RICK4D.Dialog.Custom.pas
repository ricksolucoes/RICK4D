unit RICK4D.Dialog.Custom;

interface

uses
  RICK4D.Interfaces,
  RICK.Dialog.Interfaces;
type
  TRICK4DDialogCustom = class(TInterfacedObject, iRICK4DDialogCustom)
  private
    [weak]
    FParent : iRICK4DDialog;
    FDialog : iRICKDialog;
    FBackground: iRICK4DDialogBackgroundCustom;
    FRectangle: iRICK4DDialogRectangleCustom;
    FIcon: iRICK4DDialogIconCustom;
    FTitle: iRICK4DDialogTitleCustom;
    FInfo: iRICK4DDialogInfoCustom;
    FButton: iRICK4DDialogButtonCustom;
    FExecute: iRICK4DDialogExecute;

    function Background: iRICK4DDialogBackgroundCustom;
    function Rectangle: iRICK4DDialogRectangleCustom;
    function Icon: iRICK4DDialogIconCustom;
    function Title: iRICK4DDialogTitleCustom;
    function Info: iRICK4DDialogInfoCustom;
    function Button: iRICK4DDialogButtonCustom;
    function Execute: iRICK4DDialogExecute;

    function &End: iRICK4DDialog;

    constructor Create(AParent: iRICK4DDialog); overload;
    constructor Create(AParent: iRICK4DDialog; ADialog: iRICKDialog); overload;
  public
    class function New(AParent: iRICK4DDialog): iRICK4DDialogCustom; overload;
    class function New(AParent: iRICK4DDialog; ADialog: iRICKDialog): iRICK4DDialogCustom; overload;
    destructor Destroy; override;
  end;
implementation

uses
  RICK4D.Dialog.Custom.Info,
  RICK4D.Dialog.Custom.Icon,
  RICK4D.Dialog.Custom.Title,
  RICK4D.Dialog.Custom.Button,
  RICK4D.Dialog.Custom.Execute,
  RICK4D.Dialog.Custom.Rectangle,
  RICK4D.Dialog.Custom.Background,
  RICK4D.Dialog.Custom.Main.Background;


{ TRICK4DDialogCustom }


constructor TRICK4DDialogCustom.Create(AParent: iRICK4DDialog);
begin
  FParent:= AParent;
end;

function TRICK4DDialogCustom.Background: iRICK4DDialogBackgroundCustom;
begin
   if not Assigned(FBackground) then
    FBackground := TRICK4DDialogCustomBackground.New(Self, FDialog);

  Result:= FBackground;

end;

function TRICK4DDialogCustom.Button: iRICK4DDialogButtonCustom;
begin
   if not Assigned(FButton) then
    FButton := TRICK4DDialogCustomButton.New(Self, FDialog);

  Result:= FButton;
end;

constructor TRICK4DDialogCustom.Create(AParent: iRICK4DDialog;
  ADialog: iRICKDialog);
begin
  FParent:= AParent;
  FDialog:= ADialog;
end;

destructor TRICK4DDialogCustom.Destroy;
begin

  inherited;
end;


function TRICK4DDialogCustom.&End: iRICK4DDialog;
begin
  Result:= FParent;
end;

function TRICK4DDialogCustom.Execute: iRICK4DDialogExecute;
begin
   if not Assigned(FExecute) then
    FExecute := TRICK4DDialogExecute.New(Self, FDialog);

  Result:= FExecute;
end;

function TRICK4DDialogCustom.Icon: iRICK4DDialogIconCustom;
begin
   if not Assigned(FIcon) then
    FIcon := TRICK4DDialogCustomIcon.New(Self, FDialog);

  Result:= FIcon;
end;

function TRICK4DDialogCustom.Info: iRICK4DDialogInfoCustom;
begin
   if not Assigned(FInfo) then
    FInfo := TRICK4DDialogCustomInfo.New(Self, FDialog);

  Result:= FInfo;

end;

class function TRICK4DDialogCustom.New(AParent: iRICK4DDialog;
  ADialog: iRICKDialog): iRICK4DDialogCustom;
begin
  Result:= Self.Create(AParent, ADialog);
end;

function TRICK4DDialogCustom.Rectangle: iRICK4DDialogRectangleCustom;
begin
   if not Assigned(FRectangle) then
    FRectangle := TRICK4DDialogCustomRectangle.New(Self, FDialog);

  Result:= FRectangle;

end;

function TRICK4DDialogCustom.Title: iRICK4DDialogTitleCustom;
begin
   if not Assigned(FTitle) then
    FTitle := TRICK4DDialogCustomTitle.New(Self, FDialog);

  Result:= FTitle;
end;

class function TRICK4DDialogCustom.New(AParent: iRICK4DDialog): iRICK4DDialogCustom;
begin
  Result:= Self.Create(AParent);
end;

end.


