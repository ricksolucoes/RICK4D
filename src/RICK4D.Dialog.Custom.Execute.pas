unit RICK4D.Dialog.Custom.Execute;


interface

uses
  RICK4D.Interfaces,
  RICK.Dialog.Interfaces;
type
  TRICK4DDialogExecute = class(TInterfacedObject, iRICK4DDialogExecute)
  private
    [weak]
    FParent : iRICK4DDialogCustom;
    FDialog : iRICKDialog;

    function Question: iRICK4DDialogExecute;
    function Error: iRICK4DDialogExecute;
    function Success: iRICK4DDialogExecute;
    function Info: iRICK4DDialogExecute;
    function Warnig: iRICK4DDialogExecute;

    function &End: iRICK4DDialogCustom;

    constructor Create(AParent: iRICK4DDialogCustom); overload;
    constructor Create(AParent: iRICK4DDialogCustom; ADialog: iRICKDialog); overload;
  public
    class function New(AParent: iRICK4DDialogCustom): iRICK4DDialogExecute; overload;
    class function New(AParent: iRICK4DDialogCustom; ADialog: iRICKDialog): iRICK4DDialogExecute; overload;
    destructor Destroy; override;
  end;
implementation

function TRICK4DDialogExecute.&End: iRICK4DDialogCustom;
begin
  Result:= FParent;
end;

function TRICK4DDialogExecute.Error: iRICK4DDialogExecute;
begin
  Result:= Self;
  FDialog.DisplayError;
end;

function TRICK4DDialogExecute.Info: iRICK4DDialogExecute;
begin
  Result:= Self;
  FDialog.DisplayInfo;
end;

class function TRICK4DDialogExecute.New(AParent: iRICK4DDialogCustom;
  ADialog: iRICKDialog): iRICK4DDialogExecute;
begin
  Result:= Self.Create(AParent, ADialog);
end;

function TRICK4DDialogExecute.Question: iRICK4DDialogExecute;
begin
  Result:= Self;
  FDialog.DisplayQuestion;
end;

function TRICK4DDialogExecute.Success: iRICK4DDialogExecute;
begin
  Result:= Self;
  FDialog.DisplaySuccess;
end;

function TRICK4DDialogExecute.Warnig: iRICK4DDialogExecute;
begin
  Result:= Self;
  FDialog.DisplayWarnig;
end;

constructor TRICK4DDialogExecute.Create(AParent: iRICK4DDialogCustom);
begin
  FParent:= AParent;
end;

constructor TRICK4DDialogExecute.Create(AParent: iRICK4DDialogCustom;
  ADialog: iRICKDialog);
begin
  FParent:= AParent;
  FDialog:= ADialog;
end;

destructor TRICK4DDialogExecute.Destroy;
begin

  inherited;
end;

class function TRICK4DDialogExecute.New(AParent: iRICK4DDialogCustom): iRICK4DDialogExecute;
begin
  Result:= Self.Create(AParent);
end;

end.
