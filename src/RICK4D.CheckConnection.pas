unit RICK4D.CheckConnection;

interface

uses
  RICK4D.Interfaces,
  RICK.Check.Connection.Intefaces;

type
  TRICK4DCheckConnection = class(TInterfacedObject, iRICK4DCheckConnection)
  private
    [weak]
    FParent : iRICK4D;
    FCheckConnection: iRICKCheckConnection;

    function ConnectionState: Boolean;
    function URLState: Boolean;
    function ConnectionType: string;
    function URL(Const AValue: string): iRICK4DCheckConnection;
    function ClearURL: iRICK4DCheckConnection;
    function StatusCode(Const AValue: Integer): iRICK4DCheckConnection;
    function ClearStausCode: iRICK4DCheckConnection;

    function &End: iRICK4D;

    constructor Create(AParent: iRICK4D);
  public
    class function New(AParent: iRICK4D): iRICK4DCheckConnection;
    destructor Destroy; override;
  end;
implementation
uses
  RICK.Check.Connection;

function TRICK4DCheckConnection.ClearStausCode: iRICK4DCheckConnection;
begin
  Result:= Self;
  FCheckConnection.ClearStausCode;
end;

function TRICK4DCheckConnection.ClearURL: iRICK4DCheckConnection;
begin
  Result:= Self;
  FCheckConnection.ClearURL;
end;

function TRICK4DCheckConnection.ConnectionState: Boolean;
begin
  Result:= FCheckConnection.ConnectionState;
end;

function TRICK4DCheckConnection.ConnectionType: string;
begin
  Result:= FCheckConnection.ConnectionType;
end;

constructor TRICK4DCheckConnection.Create(AParent: iRICK4D);
begin
  FParent := AParent;
  FCheckConnection:= TRICKCheckConnection.New;
end;

destructor TRICK4DCheckConnection.Destroy;
begin

  inherited;
end;

function TRICK4DCheckConnection.&End: iRICK4D;
begin
  Result:= FParent;
end;

class function TRICK4DCheckConnection.New(
  AParent: iRICK4D): iRICK4DCheckConnection;
begin
  Result:= Self.Create(AParent);
end;

function TRICK4DCheckConnection.StatusCode(
  const AValue: Integer): iRICK4DCheckConnection;
begin
  Result:= Self;
  FCheckConnection.StatusCode(AValue);
end;

function TRICK4DCheckConnection.URL(
  const AValue: string): iRICK4DCheckConnection;
begin
  Result:= Self;
  FCheckConnection.URL(AValue);
end;

function TRICK4DCheckConnection.URLState: Boolean;
begin
  Result:= FCheckConnection.URLState;
end;

end.
