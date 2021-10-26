unit RICK4D.Librarys.Interfaces;

interface
uses
  FMX.Controls;
type
  iRICK4DLibrarys<T> = interface
    ['{E9B39E72-7E9C-4C14-9230-F5535C4211AF}']
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

  end;

implementation

end.
