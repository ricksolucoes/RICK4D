unit RICK4D.Librarys;

interface
uses
  FMX.Controls,

  RICK4D.Interfaces,
  RICK.Librarys.Interfaces;
type
  TRICK4DLibrarys = class(TInterfacedObject, iRICK4DLibrarys)
  private
    [weak]
    FParent : iRICK4D;
    FLibrarys: iRICKLibrarys;

    function StringInSet(const S: String;
      const StringSet: array of String): Boolean;
    function OnlyNumber(const AValue: string): string;
    function Mask(Const AMascara, AValue: string): string;
    function IEFormat(Const ANumber: string; Const AState: string): string;
    function FormatValue(Const AValue: string): string;
    function FormatDate(Const AValue: string): string;
    function FormatPeso(const AValue: string): string;
    function DelayedSetFocus(Const AValue: TControl): iRICK4DLibrarys;
    function ShowKeyboard(Const AValue: TControl): iRICK4DLibrarys;
    function HideKeyboard(Const AValue: TControl): iRICK4DLibrarys;

    function &End: iRICK4D;

    constructor Create(AParent: iRICK4D);
  public
    class function New(AParent: iRICK4D): iRICK4DLibrarys;
    destructor Destroy; override;
  end;
implementation

uses
  RICK.Librarys;
{ TRICK4DLibrarys }

constructor TRICK4DLibrarys.Create(AParent: iRICK4D);
begin
  FParent := AParent;
  FLibrarys:= TRICKLibrarys.New;
end;

function TRICK4DLibrarys.DelayedSetFocus(Const AValue: TControl): iRICK4DLibrarys;
begin
  Result:= Self;
  FLibrarys.DelayedSetFocus(AValue);
end;

destructor TRICK4DLibrarys.Destroy;
begin

  inherited;
end;

function TRICK4DLibrarys.&End: iRICK4D;
begin
  Result:= FParent;

end;

function TRICK4DLibrarys.FormatDate(const AValue: string): string;
begin
  Result:= FLibrarys.FormatDate(AValue);
end;

function TRICK4DLibrarys.FormatPeso(const AValue: string): string;
begin
  Result:= FLibrarys.FormatPeso(AValue);
end;

function TRICK4DLibrarys.FormatValue(const AValue: string): string;
begin
  Result:= FLibrarys.FormatValue(AValue);
end;

function TRICK4DLibrarys.HideKeyboard(const AValue: TControl): iRICK4DLibrarys;
begin
  Result:= Self;
  FLibrarys.HideKeyboard(AValue);
end;

function TRICK4DLibrarys.IEFormat(const ANumber, AState: string): string;
begin
  Result:= FLibrarys.IEFormat(ANumber, AState);
end;

function TRICK4DLibrarys.Mask(const AMascara, AValue: string): string;
begin
  Result:= FLibrarys.Mask(AMascara, AValue);
end;

class function TRICK4DLibrarys.New(AParent: iRICK4D): iRICK4DLibrarys;
begin
  Result:= Self.Create(AParent);
end;

function TRICK4DLibrarys.OnlyNumber(const AValue: string): string;
begin
  Result:= FLibrarys.OnlyNumber(AValue);
end;

function TRICK4DLibrarys.ShowKeyboard(const AValue: TControl): iRICK4DLibrarys;
begin
  Result:= Self;
  FLibrarys.ShowKeyboard(AValue);
end;

function TRICK4DLibrarys.StringInSet(const S: String;
  const StringSet: array of String): Boolean;
begin
  Result:= FLibrarys.StringInSet(S, StringSet);
end;

end.
