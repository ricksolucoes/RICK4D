unit RICK4D.Dialog.Custom.Background;

interface

uses
  System.UITypes,

  RICK4D.Interfaces,
  RICK.Dialog.Interfaces;
type
  TRICK4DDialogCustomBackground = class(TInterfacedObject, iRICK4DDialogBackgroundCustom)
  private
    [weak]
    FParent : iRICK4DDialogCustom;
    FDialog : iRICKDialog;

    function Color(Const AValue: TAlphaColor): iRICK4DDialogBackgroundCustom;

    function &End: iRICK4DDialogCustom;

    constructor Create(AParent: iRICK4DDialogCustom); overload;
    constructor Create(AParent: iRICK4DDialogCustom; ADialog: iRICKDialog); overload;
  public
    class function New(AParent: iRICK4DDialogCustom): iRICK4DDialogBackgroundCustom; overload;
    class function New(AParent: iRICK4DDialogCustom; ADialog: iRICKDialog): iRICK4DDialogBackgroundCustom; overload;
    destructor Destroy; override;
  end;
implementation



function TRICK4DDialogCustomBackground.Color(
  const AValue: TAlphaColor): iRICK4DDialogBackgroundCustom;
begin
  Result:= Self;
  FDialog.MessageBackgroundColor(AValue);
end;

function TRICK4DDialogCustomBackground.&End: iRICK4DDialogCustom;
begin
  Result:= FParent;
end;

class function TRICK4DDialogCustomBackground.New(AParent: iRICK4DDialogCustom;
  ADialog: iRICKDialog): iRICK4DDialogBackgroundCustom;
begin
  Result:= Self.Create(AParent, ADialog);
end;

constructor TRICK4DDialogCustomBackground.Create(AParent: iRICK4DDialogCustom);
begin
  FParent:= AParent;
end;

constructor TRICK4DDialogCustomBackground.Create(AParent: iRICK4DDialogCustom;
  ADialog: iRICKDialog);
begin
  FParent:= AParent;
  FDialog:= ADialog;
end;

destructor TRICK4DDialogCustomBackground.Destroy;
begin

  inherited;
end;

class function TRICK4DDialogCustomBackground.New(AParent: iRICK4DDialogCustom): iRICK4DDialogBackgroundCustom;
begin
  Result:= Self.Create(AParent);
end;



end.



