unit RICK4D.Dialog.Custom.Icon;

interface

uses
  System.UITypes,

  RICK4D.Interfaces,
  RICK.Dialog.Interfaces;
type
  TRICK4DDialogCustomIcon = class(TInterfacedObject, iRICK4DDialogIconCustom)
  private
    [weak]
    FParent : iRICK4DDialogCustom;
    FDialog : iRICKDialog;

    function Color(Const AValue: TAlphaColor): iRICK4DDialogIconCustom;

    function &End: iRICK4DDialogCustom;

    constructor Create(AParent: iRICK4DDialogCustom); overload;
    constructor Create(AParent: iRICK4DDialogCustom; ADialog: iRICKDialog); overload;
  public
    class function New(AParent: iRICK4DDialogCustom): iRICK4DDialogIconCustom; overload;
    class function New(AParent: iRICK4DDialogCustom; ADialog: iRICKDialog): iRICK4DDialogIconCustom; overload;
    destructor Destroy; override;
  end;
implementation



function TRICK4DDialogCustomIcon.Color(
  const AValue: TAlphaColor): iRICK4DDialogIconCustom;
begin
  Result:= Self;
  FDialog.MessageIconColor(AValue);
end;

function TRICK4DDialogCustomIcon.&End: iRICK4DDialogCustom;
begin
  Result:= FParent;
end;

class function TRICK4DDialogCustomIcon.New(AParent: iRICK4DDialogCustom;
  ADialog: iRICKDialog): iRICK4DDialogIconCustom;
begin
  Result:= Self.Create(AParent, ADialog);
end;

constructor TRICK4DDialogCustomIcon.Create(AParent: iRICK4DDialogCustom);
begin
  FParent:= AParent;
end;

constructor TRICK4DDialogCustomIcon.Create(AParent: iRICK4DDialogCustom;
  ADialog: iRICKDialog);
begin
  FParent:= AParent;
  FDialog:= ADialog;
end;

destructor TRICK4DDialogCustomIcon.Destroy;
begin

  inherited;
end;

class function TRICK4DDialogCustomIcon.New(AParent: iRICK4DDialogCustom): iRICK4DDialogIconCustom;
begin
  Result:= Self.Create(AParent);
end;

end.



