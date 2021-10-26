unit RICK4D.Librarys;

interface
uses
  FMX.Controls,

  RICK4D.Librarys.Interfaces,

  RICK.Librarys,
  RICK.Librarys.Interfaces;
type
  TRICK4DLibrarys<T: IInterface> = class(TInterfacedObject, iRICK4DLibrarys<T>)
  private
    [weak]
    FParent : T;
    FFramework: iRICKLibrarys;

    function StringInSet(const S: String;
      const StringSet: array of String): Boolean;
    function OnlyNumber(const AValue: string): string;
    function Mask(Const AMascara, AValue: string): string;
    function IEFormat(Const ANumber: string; Const AState: string): string;
    function FormatValue(Const AValue: string): string;
    function FormatDate(Const AValue: string; AValidateLength: Boolean = False): string; overload;
    function FormatDate(Const AValue: TDate): string; overload;
    function FormatPeso(const AValue: string): string;

    function DelayedSetFocus(Const AValue: TControl): iRICK4DLibrarys<T>;
    function ShowKeyboard(Const AValue: TControl): iRICK4DLibrarys<T>;
    function HideKeyboard(Const AValue: TControl): iRICK4DLibrarys<T>;

    function &End: T;

    constructor Create(AParent: T);
  public
    class function New(AParent: T): iRICK4DLibrarys<T>;
    destructor Destroy; override;
  end;
implementation

{ TRICK4DLibrarys<T> }

function TRICK4DLibrarys<T>.&End: T;
begin
  Result:= FParent;
end;

constructor TRICK4DLibrarys<T>.Create(AParent: T);
begin
  FParent := AParent;
  FFramework:= TRICKLibrarys.New;
end;

function TRICK4DLibrarys<T>.DelayedSetFocus(
  const AValue: TControl): iRICK4DLibrarys<T>;
begin
  Result:= Self;
  FFramework.DelayedSetFocus(AValue);
end;

destructor TRICK4DLibrarys<T>.Destroy;
begin

  inherited;
end;

function TRICK4DLibrarys<T>.FormatDate(const AValue: string;
  AValidateLength: Boolean): string;
begin
  Result:= FFramework.FormatDate(AValue, AValidateLength);
end;

function TRICK4DLibrarys<T>.FormatDate(const AValue: TDate): string;
begin
  Result:= FFramework.FormatDate(AValue);
end;

function TRICK4DLibrarys<T>.FormatPeso(const AValue: string): string;
begin
  Result:= FFramework.FormatPeso(AValue);
end;

function TRICK4DLibrarys<T>.FormatValue(const AValue: string): string;
begin
  Result:= FFramework.FormatValue(AValue);
end;

function TRICK4DLibrarys<T>.HideKeyboard(
  const AValue: TControl): iRICK4DLibrarys<T>;
begin
  Result:= Self;
  FFramework.HideKeyboard(AValue);
end;

function TRICK4DLibrarys<T>.IEFormat(const ANumber, AState: string): string;
begin
  Result:= FFramework.IEFormat(ANumber, AState);
end;

function TRICK4DLibrarys<T>.Mask(const AMascara, AValue: string): string;
begin
  Result:= FFramework.Mask(AMascara, AValue);

end;

class function TRICK4DLibrarys<T>.New(AParent: T): iRICK4DLibrarys<T>;
begin
  Result:= Self.Create(AParent);
end;

function TRICK4DLibrarys<T>.OnlyNumber(const AValue: string): string;
begin
  Result:= FFramework.OnlyNumber(AValue);
end;

function TRICK4DLibrarys<T>.ShowKeyboard(
  const AValue: TControl): iRICK4DLibrarys<T>;
begin
  Result:= Self;
  FFramework.ShowKeyboard(AValue);
end;

function TRICK4DLibrarys<T>.StringInSet(const S: String;
  const StringSet: array of String): Boolean;
begin
  Result:= FFramework.StringInSet(S, StringSet);
end;

end.

