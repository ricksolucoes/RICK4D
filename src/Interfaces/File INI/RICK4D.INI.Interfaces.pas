unit RICK4D.INI.Interfaces;

interface
uses
  System.Classes;
type
  iRICK4DINI<T> = interface
    ['{8F58A7B7-19B6-4B96-8439-D1A1E30D1739}']
    function FilePath(const AValue: String): iRICK4DINI<T>;
    function FileName(const AValue: String): iRICK4DINI<T>;
    function OpenINI:iRICK4DINI<T>;
    function Section(const AValue: String): iRICK4DINI<T>;
    function Identify(const AValue: String): iRICK4DINI<T>;
    function ADD(const AValue: String): iRICK4DINI<T>; overload;
    function ADD(const AValue: Integer): iRICK4DINI<T>; overload;
    function ADD(const AValue: Boolean): iRICK4DINI<T>; overload;
    function ADD(const AValue: TStream): iRICK4DINI<T>; overload;
    function ADD(const AValue: TDateTime): iRICK4DINI<T>; overload;
    function ADD(const AValue: Extended): iRICK4DINI<T>; overload;
    function Read(AValue: String = ''): String; overload;
    function Read(AValue: Integer = 0): Integer; overload;
    function Read(AValue: Boolean = False): Boolean; overload;
    function Read(AValue: TStream = nil): Integer; overload;
    function Read(AValue: TDateTime): TDateTime; overload;
    function Read(AValue: Extended = 0.00): Extended; overload;

    function &End: T;

  end;

implementation

end.
