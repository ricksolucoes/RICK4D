unit RICK4D.Session;

interface

uses
  RICK4D.Session.Entity.TOKEN,
  RICK4D.Session.Entity.URL;

type
  TSession = class
  private
    FTOKEN: TEntityToken;
    FURL: TEntityURL;
  protected
    procedure Inicializar; virtual;
  public
    property TOKEN: TEntityToken read FTOKEN write FTOKEN;
    property URL: TEntityURL read FURL write FURL;
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
  FTOKEN:= TEntityToken.Create;
  FURL:= TEntityURL.Create;
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
