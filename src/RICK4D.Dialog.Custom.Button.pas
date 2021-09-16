unit RICK4D.Dialog.Custom.Button;

interface

uses
  RICK4D.Interfaces,
  RICK.Dialog.Interfaces;
type
  TRICK4DDialogCustomButton = class(TInterfacedObject, iRICK4DDialogButtonCustom)
  private
    [weak]
    FParent : iRICK4DDialogCustom;
    FDialog : iRICKDialog;
    FFirst: iRICK4DDialogButtonFirstCustom;
    FSecond: iRICK4DDialogButtonSecondCustom;

    function First: iRICK4DDialogButtonFirstCustom;
    function Second: iRICK4DDialogButtonSecondCustom;

    function &End: iRICK4DDialogCustom;

    constructor Create(AParent: iRICK4DDialogCustom); overload;
    constructor Create(AParent: iRICK4DDialogCustom; ADialog: iRICKDialog); overload;
  public
    class function New(AParent: iRICK4DDialogCustom): iRICK4DDialogButtonCustom; overload;
    class function New(AParent: iRICK4DDialogCustom; ADialog: iRICKDialog): iRICK4DDialogButtonCustom; overload;
    destructor Destroy; override;
  end;
implementation

uses
  RICK4D.Dialog.Custom.Button.First,
  RICK4D.Dialog.Custom.Button.Second;

function TRICK4DDialogCustomButton.&End: iRICK4DDialogCustom;
begin
  Result:= FParent;
end;

function TRICK4DDialogCustomButton.First: iRICK4DDialogButtonFirstCustom;
begin
   if not Assigned(FFirst) then
    FFirst := TRICK4DDialogCustomButtonFirst.New(Self, FDialog);

  Result:= FFirst;
end;

class function TRICK4DDialogCustomButton.New(AParent: iRICK4DDialogCustom;
  ADialog: iRICKDialog): iRICK4DDialogButtonCustom;
begin
  Result:= Self.Create(AParent, ADialog);
end;

function TRICK4DDialogCustomButton.Second: iRICK4DDialogButtonSecondCustom;
begin
   if not Assigned(FSecond) then
    FSecond := TRICK4DDialogCustomButtonSecond.New(Self, FDialog);

  Result:= FSecond;
end;

constructor TRICK4DDialogCustomButton.Create(AParent: iRICK4DDialogCustom);
begin
  FParent:= AParent;
end;

constructor TRICK4DDialogCustomButton.Create(AParent: iRICK4DDialogCustom;
  ADialog: iRICKDialog);
begin
  FParent:= AParent;
  FDialog:= ADialog;
end;

destructor TRICK4DDialogCustomButton.Destroy;
begin

  inherited;
end;

class function TRICK4DDialogCustomButton.New(AParent: iRICK4DDialogCustom): iRICK4DDialogButtonCustom;
begin
  Result:= Self.Create(AParent);
end;

end.



