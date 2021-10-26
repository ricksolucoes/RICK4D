unit RICK4D.Check.Connection;

interface

uses
  RICK4D.Check.Connection.Interfaces,

  RICK.Check.Connection,
  RICK.Check.Connection.Intefaces;
type
  TRICK4DCheckConnection<T: IInterface> = class(TInterfacedObject, iRICK4DCheckConnection<T>)
  private
    [weak]
    FParent : T;
    FFramework : iRICKCheckConnection;

    function ConnectionState: Boolean;
    function URLState: Boolean;
    function ConnectionType: string;
    function URL(Const AValue: string): iRICK4DCheckConnection<T>;
    function ClearURL: iRICK4DCheckConnection<T>;
    function StatusCode(Const AValue: Integer): iRICK4DCheckConnection<T>;
    function ClearStausCode: iRICK4DCheckConnection<T>;
    function &End: T;

    constructor Create(AParent: T);
  public
    class function New(AParent: T): iRICK4DCheckConnection<T>;
    destructor Destroy; override;
  end;

implementation

{ TRICK4DCheckConnection<T> }

function TRICK4DCheckConnection<T>.&End: T;
begin
  Result:= FParent;
end;

function TRICK4DCheckConnection<T>.ClearStausCode: iRICK4DCheckConnection<T>;
begin
  Result:= Self;
  FFramework.ClearStausCode;
end;

function TRICK4DCheckConnection<T>.ClearURL: iRICK4DCheckConnection<T>;
begin
  Result:= Self;
  FFramework.ClearURL;
end;

function TRICK4DCheckConnection<T>.ConnectionState: Boolean;
begin
  Result:= FFramework.ConnectionState;
end;

function TRICK4DCheckConnection<T>.ConnectionType: string;
begin
  Result:= FFramework.ConnectionType;
end;

constructor TRICK4DCheckConnection<T>.Create(AParent: T);
begin
  FParent:= AParent;
  FFramework:= TRICKCheckConnection.New;
end;

destructor TRICK4DCheckConnection<T>.Destroy;
begin

  inherited;
end;

class function TRICK4DCheckConnection<T>.New(AParent: T): iRICK4DCheckConnection<T>;
begin
  Result:= Self.Create(AParent);
end;

function TRICK4DCheckConnection<T>.StatusCode(
  const AValue: Integer): iRICK4DCheckConnection<T>;
begin
  Result:= Self;
  FFramework.StatusCode(AValue);
end;

function TRICK4DCheckConnection<T>.URL(
  const AValue: string): iRICK4DCheckConnection<T>;
begin
  Result:= Self;
  FFramework.URL(AValue);
end;

function TRICK4DCheckConnection<T>.URLState: Boolean;
begin
  Result:= FFramework.URLState;
end;

end.
