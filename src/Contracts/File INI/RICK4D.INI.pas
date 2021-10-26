unit RICK4D.INI;

interface
uses
  System.Classes,

  RICK.INI,
  RICK.INI.Interfaces,

  RICK4D.INI.Interfaces;

type
  TRICK4DINI<T:IInterface> = class(TInterfacedObject, iRICK4DINI<T>)
  private
    [weak]
    FParent : T;
    FFramework: iRICKINI;

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

    constructor Create(AParent: T);
  public
    class function New(AParent: T): iRICK4DINI<T>;
    destructor Destroy; override;
  end;
implementation

{ TRICK4DINI<T> }

function TRICK4DINI<T>.ADD(const AValue: TStream): iRICK4DINI<T>;
begin
  Result:= Self;
  FFramework.Add(AValue);
end;

function TRICK4DINI<T>.ADD(const AValue: Boolean): iRICK4DINI<T>;
begin
  Result:= Self;
  FFramework.Add(AValue);
end;

function TRICK4DINI<T>.ADD(const AValue: Integer): iRICK4DINI<T>;
begin
  Result:= Self;
  FFramework.Add(AValue);
end;

function TRICK4DINI<T>.ADD(const AValue: String): iRICK4DINI<T>;
begin
  Result:= Self;
  FFramework.Add(AValue);
end;

function TRICK4DINI<T>.ADD(const AValue: Extended): iRICK4DINI<T>;
begin
  Result:= Self;
  FFramework.Add(AValue);
end;

function TRICK4DINI<T>.ADD(const AValue: TDateTime): iRICK4DINI<T>;
begin
  Result:= Self;
  FFramework.Add(AValue);
end;

function TRICK4DINI<T>.&End: T;
begin
  Result:= FParent;
end;

constructor TRICK4DINI<T>.Create(AParent: T);
begin
  FParent:= AParent;
  FFramework:= TRICKIni.New;
end;

destructor TRICK4DINI<T>.Destroy;
begin

  inherited;
end;

function TRICK4DINI<T>.FileName(const AValue: String): iRICK4DINI<T>;
begin
  Result:= Self;
  FFramework.FileName(AValue);
end;

function TRICK4DINI<T>.FilePath(const AValue: String): iRICK4DINI<T>;
begin
  Result:= Self;
  FFramework.FilePath(AValue);
end;

function TRICK4DINI<T>.Identify(const AValue: String): iRICK4DINI<T>;
begin
  Result:= Self;
  FFramework.Identify(AValue);
end;

class function TRICK4DINI<T>.New(AParent: T): iRICK4DINI<T>;
begin
  Result:= Self.Create(AParent);
end;

function TRICK4DINI<T>.OpenINI: iRICK4DINI<T>;
begin
  Result:= Self;
  FFramework.ExecuteFileINI;
end;

function TRICK4DINI<T>.Read(AValue: String): String;
begin
  Result:= FFramework.Read(AValue);
end;

function TRICK4DINI<T>.Read(AValue: Extended): Extended;
begin
  Result:= FFramework.Read(AValue);
end;

function TRICK4DINI<T>.Read(AValue: Integer): Integer;
begin
  Result:= FFramework.Read(AValue);
end;

function TRICK4DINI<T>.Read(AValue: TDateTime): TDateTime;
begin
  Result:= FFramework.Read(AValue);
end;

function TRICK4DINI<T>.Read(AValue: TStream): Integer;
begin
  Result:= FFramework.Read(AValue);
end;

function TRICK4DINI<T>.Read(AValue: Boolean): Boolean;
begin
  Result:= FFramework.Read(AValue);
end;

function TRICK4DINI<T>.Section(const AValue: String): iRICK4DINI<T>;
begin
  Result:= Self;
  FFramework.Section(AValue);
end;

end.
