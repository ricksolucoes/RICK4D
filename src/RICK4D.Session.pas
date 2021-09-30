unit RICK4D.Session;

interface

uses
  RICK4D.Session.TOKEN,
  RICK4D.Session.URL;

type
  TSession = class
  private
    FTOKEN: TToken;
    FURL: TURL;
  protected
    procedure Inicializar; virtual;
  public
    property TOKEN: TToken read FTOKEN write FTOKEN;
    property URL: TURL read FURL write FURL;
    class function GetInstance: TSession;
    class function NewInstance: TObject; override;
    Destructor Destroy; override;
  end;
var
  Session: TSession;
implementation

{ TSession }

destructor TSession.Destroy;
begin
  FURL.Free;
  FTOKEN.Free;
  inherited;
end;

class function TSession.GetInstance: TSession;
begin
  Result:= TSession.Create;
end;

procedure TSession.Inicializar;
begin
  FTOKEN:= TToken.Create;
  FURL:= TURL.Create;
end;

class function TSession.NewInstance: TObject;
begin
  if (not (Assigned(Session))) then
  begin
    Session:= TSession(Inherited NewInstance);
    Session.Inicializar;
  end;

  Result:= Session;
end;

Initialization

Finalization
  if Assigned(Session) then
    Session.Free;

end.
