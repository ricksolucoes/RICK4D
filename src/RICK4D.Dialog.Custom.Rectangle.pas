unit RICK4D.Dialog.Custom.Rectangle;

interface

uses
  System.UITypes,

  RICK4D.Interfaces,
  RICK.Dialog.Interfaces;
type
  TRICK4DDialogCustomRectangle = class(TInterfacedObject, iRICK4DDialogRectangleCustom)
  private
    [weak]
    FParent : iRICK4DDialogCustom;
    FDialog : iRICKDialog;

    function Width(Const AValue: Single): iRICK4DDialogRectangleCustom;
    function Height(Const AValue: Single): iRICK4DDialogRectangleCustom;

    function &End: iRICK4DDialogCustom;

    constructor Create(AParent: iRICK4DDialogCustom); overload;
    constructor Create(AParent: iRICK4DDialogCustom; ADialog: iRICKDialog); overload;
  public
    class function New(AParent: iRICK4DDialogCustom): iRICK4DDialogRectangleCustom; overload;
    class function New(AParent: iRICK4DDialogCustom; ADialog: iRICKDialog): iRICK4DDialogRectangleCustom; overload;
    destructor Destroy; override;
  end;
implementation

function TRICK4DDialogCustomRectangle.&End: iRICK4DDialogCustom;
begin
  Result:= FParent;
end;

function TRICK4DDialogCustomRectangle.Height(
  const AValue: Single): iRICK4DDialogRectangleCustom;
begin
  Result:= Self;
  FDialog.MessageRectangleHeight(AValue);
end;

class function TRICK4DDialogCustomRectangle.New(AParent: iRICK4DDialogCustom;
  ADialog: iRICKDialog): iRICK4DDialogRectangleCustom;
begin
  Result:= Self.Create(AParent, ADialog);
end;

function TRICK4DDialogCustomRectangle.Width(
  const AValue: Single): iRICK4DDialogRectangleCustom;
begin
  Result:= Self;
  FDialog.MessageRectangleWidth(AValue);
end;

constructor TRICK4DDialogCustomRectangle.Create(AParent: iRICK4DDialogCustom);
begin
  FParent:= AParent;
end;

constructor TRICK4DDialogCustomRectangle.Create(AParent: iRICK4DDialogCustom;
  ADialog: iRICKDialog);
begin
  FParent:= AParent;
  FDialog:= ADialog;
end;

destructor TRICK4DDialogCustomRectangle.Destroy;
begin

  inherited;
end;

class function TRICK4DDialogCustomRectangle.New(AParent: iRICK4DDialogCustom): iRICK4DDialogRectangleCustom;
begin
  Result:= Self.Create(AParent);
end;



end.



