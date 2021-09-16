unit RICK4D.Dialog;

interface

uses
  RICK4D.Interfaces,
  RICK.Dialog.Interfaces;
type
  TRICK4DDialog = class(TInterfacedObject, iRICK4DDialog)
  private
    [weak]
    FParent : iRICK4D;
    FDialog: iRICKDialog;
    FCustomMain: iRICK4DDialogMain;
    FCustomDialog: iRICK4DDialogCustom;

    function CustomMain: iRICK4DDialogMain;
    function CustomDialog: iRICK4DDialogCustom;

    function &End: iRICK4D;

    constructor Create(AParent: iRICK4D);
  public
    class function New(AParent: iRICK4D): iRICK4DDialog;
    destructor Destroy; override;
  end;
implementation

uses
  RICK.Dialog,
  RICK4D.Dialog.Custom,
  RICK4D.Dialog.Custom.Main;

{ TRICK4DDialog }

constructor TRICK4DDialog.Create(AParent: iRICK4D);
begin
  FParent:= AParent;
  FDialog:= TRICKDialog.New;

end;

destructor TRICK4DDialog.Destroy;
begin

  inherited;
end;

function TRICK4DDialog.CustomDialog: iRICK4DDialogCustom;
begin
   if not Assigned(FCustomDialog) then
    FCustomDialog := TRICK4DDialogCustom.New(Self, FDialog);

  Result:= FCustomDialog;
end;

function TRICK4DDialog.&End: iRICK4D;
begin
  Result:= FParent;
end;

function TRICK4DDialog.CustomMain: iRICK4DDialogMain;
begin
   if not Assigned(FCustomMain) then
    FCustomMain := TRICK4DDialogCustomMain.New(Self, FDialog);

  Result:= FCustomMain;
end;

class function TRICK4DDialog.New(AParent: iRICK4D): iRICK4DDialog;
begin
  Result:= Self.Create(AParent);
end;

end.
