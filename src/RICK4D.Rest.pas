unit RICK4D.Rest;

interface
uses
  System.JSON,
  System.Classes,

  REST.Types,

  Data.DB,

  RICK4D.Session,
  RICK4D.Interfaces,

  RESTRequest4D;

type
  TRICK4DRest = class(TInterfacedObject, iRICK4DRest)
  private
    [weak]
    FParent : iRICK4D;
    FRequest: IRequest;
    FSESSION : TSession;
    FRenewTokenAutomatically: Boolean;

    procedure DoBeforeExecute;
    function RenovarToken: boolean;
    function Execute(AMethod: TRestRequestMethod): IResponse;

    function BaseURL(Const AValue: string): iRICK4DRest;
    function Resource(Const AValue: string): iRICK4DRest;
    function ResourceSuffix(Const AValue: string): iRICK4DRest;
    function ClearParams: iRICK4DRest;
    function AddParam(Const AKey, AValue: string): iRICK4DRest;
    function ClearBody: iRICK4DRest;
    function AddBody(Const ABody: TJSONObject; Const AOwns: Boolean = True): iRICK4DRest; overload;
    function AddBody(Const ABody: TJSONArray; Const AOwns: Boolean = True): iRICK4DRest; overload;
    function AddBody(Const ABody: TObject; Const AOwns: Boolean = True): iRICK4DRest; overload;
    function AddBody(Const ABody: TStream; Const AOwns: Boolean = True): iRICK4DRest; overload;
    function ContentType(const AContentType: string): iRICK4DRest;
    function BasicAuthentication(const AUsername, APassword: string): iRICK4DRest;
    function Token(const AToken: string): iRICK4DRest;
    function TokenBearer(const AToken: string): iRICK4DRest;
    function Get: IResponse;
    function Post: IResponse;
    function Put: IResponse;
    function Patch: IResponse;
    function Delete: IResponse;

    function RenewTokenAutomatically: iRICK4DRest;

    function AcceptEncoding(const AAcceptEncoding: string): iRICK4DRest; overload;
    function AcceptCharset(const AAcceptCharset: string): iRICK4DRest; overload;
    function Accept(const AAccept: string): iRICK4DRest; overload;
    function Timeout(const ATimeout: Integer): iRICK4DRest; overload;
    function ClearHeaders: iRICK4DRest;

    function &End: iRICK4D;

    constructor Create(AParent: iRICK4D);
  public
    class function New(AParent: iRICK4D): iRICK4DRest;
    destructor Destroy; override;
  end;
implementation

uses
  System.SysUtils;

{ TRICK4DRest }

function TRICK4DRest.Accept(const AAccept: string): iRICK4DRest;
begin
  Result:= Self;
  FRequest.Accept(AAccept);
end;

function TRICK4DRest.AcceptCharset(const AAcceptCharset: string): iRICK4DRest;
begin
  Result:= Self;
  FRequest.AcceptCharset(AAcceptCharset);
end;

function TRICK4DRest.AcceptEncoding(const AAcceptEncoding: string): iRICK4DRest;
begin
  Result:= Self;
  FRequest.AcceptEncoding(AAcceptEncoding);
end;

function TRICK4DRest.AddBody(const ABody: TStream;
  const AOwns: Boolean): iRICK4DRest;
begin
  Result:= Self;
  FRequest.AddBody(ABody, AOwns);
end;

function TRICK4DRest.AddBody(const ABody: TJSONObject;
  const AOwns: Boolean): iRICK4DRest;
begin
  Result:= Self;
  FRequest.AddBody(ABody, AOwns);
end;

function TRICK4DRest.AddBody(const ABody: TObject;
  const AOwns: Boolean): iRICK4DRest;
begin
  Result:= Self;
  FRequest.AddBody(ABody, AOwns);
end;

function TRICK4DRest.AddBody(const ABody: TJSONArray;
  const AOwns: Boolean): iRICK4DRest;
begin
  Result:= Self;
  FRequest.AddBody(ABody, AOwns);
end;

function TRICK4DRest.AddParam(const AKey, AValue: string): iRICK4DRest;
begin
  Result:= Self;
  FRequest.AddParam(AKey, AValue);
end;

function TRICK4DRest.BaseURL(const AValue: string): iRICK4DRest;
begin
  Result:= Self;
  FRequest.BaseURL(AValue);
end;

function TRICK4DRest.BasicAuthentication(const AUsername,
  APassword: string): iRICK4DRest;
begin
  Result:= Self;
  FRequest.BasicAuthentication(AUsername, APassword);
end;

function TRICK4DRest.ClearBody: iRICK4DRest;
begin
  Result:= Self;
  FRequest.ClearBody;
end;

function TRICK4DRest.ClearHeaders: iRICK4DRest;
begin
  Result:= Self;
  FRequest.ClearHeaders;
end;

function TRICK4DRest.ClearParams: iRICK4DRest;
begin
  Result:= Self;
  FRequest.ClearParams;
end;

function TRICK4DRest.ContentType(const AContentType: string): iRICK4DRest;
begin
  Result:= Self;
  FRequest.ContentType(AContentType);
end;

constructor TRICK4DRest.Create(AParent: iRICK4D);
begin
  FParent:= AParent;
  FRequest:= TRequest.New;
  FSESSION:= TSession.GetInstance;
  FRenewTokenAutomatically:= False;
end;

function TRICK4DRest.Delete: IResponse;
begin
  Result:= Execute(TRESTRequestMethod.rmDELETE);
end;

destructor TRICK4DRest.Destroy;
begin

  inherited;
end;

procedure TRICK4DRest.DoBeforeExecute;
begin
  if not FSESSION.TOKEN.ACCESS.Trim.IsEmpty then
    FRequest.Token(Format('Bearer %s', [TSession.GetInstance.Token.Access]))

end;

function TRICK4DRest.&End: iRICK4D;
begin
  Result:= FParent;
end;

function TRICK4DRest.Execute(AMethod: TRestRequestMethod): IResponse;
begin
  //Token de acesso
  if FRenewTokenAutomatically then
    DoBeforeExecute;

  case AMethod of
    TRestRequestMethod.rmPOST:   Result:= FRequest.Post;
    TRestRequestMethod.rmPUT:    Result:= FRequest.Put;
    TRestRequestMethod.rmGET:    Result:= FRequest.Get;
    TRestRequestMethod.rmDELETE: Result:= FRequest.Delete;
    TRestRequestMethod.rmPATCH:  Result:= FRequest.Patch;
  end;

  if FRenewTokenAutomatically then
    //Token Expirado
    if (Result.StatusCode = 401) then
      if RenovarToken then
        Result:= Execute(AMethod);

end;

function TRICK4DRest.Get: IResponse;
begin
  Result:= Execute(TRESTRequestMethod.rmGET);
end;

class function TRICK4DRest.New(AParent: iRICK4D): iRICK4DRest;
begin
  Result:= Self.Create(AParent);
end;

function TRICK4DRest.Patch: IResponse;
begin
  Result:= Execute(TRESTRequestMethod.rmPATCH);
end;

function TRICK4DRest.Post: IResponse;
begin
  Result:= Execute(TRESTRequestMethod.rmPOST);
end;

function TRICK4DRest.Put: IResponse;
begin
  Result:= Execute(TRESTRequestMethod.rmPUT);
end;

function TRICK4DRest.RenovarToken: boolean;
var
  LResponse: IResponse;
begin
  LResponse:= TRequest.New
      .BaseURL(FSESSION.URL.AUTHENTICATION)
      .Resource('refresh')
      .Token(Format('Bearer %s', [FSESSION.TOKEN.REFRESH]))
    .Get;

  Result:= (LResponse.StatusCode = 200);

  if Result then
    FSESSION.TOKEN.ACCESS:= LResponse.JSONValue.GetValue<string>('access');

end;


function TRICK4DRest.Resource(const AValue: string): iRICK4DRest;
begin
  Result:= Self;
  FRequest.Resource(AValue);
end;

function TRICK4DRest.ResourceSuffix(const AValue: string): iRICK4DRest;
begin
  Result:= Self;
  FRequest.ResourceSuffix(AValue);
end;

function TRICK4DRest.Timeout(const ATimeout: Integer): iRICK4DRest;
begin
  Result:= Self;
  FRequest.Timeout(ATimeout);
end;

function TRICK4DRest.Token(const AToken: string): iRICK4DRest;
begin
  Result:= Self;
  FRequest.Token(AToken);
end;

function TRICK4DRest.TokenBearer(const AToken: string): iRICK4DRest;
begin
  Result:= Self;
  FRequest.TokenBearer(AToken);
end;

function TRICK4DRest.RenewTokenAutomatically: iRICK4DRest;
begin
  Result:= Self;

  if FSESSION.TOKEN.ACCESS.Trim.IsEmpty then
    raise Exception.Create('Inform the Access Token');

  if FSESSION.URL.AUTHENTICATION.Trim.IsEmpty then
    raise Exception.Create('Inform the URL Authentication');

  if FSESSION.TOKEN.REFRESH.Trim.IsEmpty then
    raise Exception.Create('Inform the Token Refresh');

  FRenewTokenAutomatically:= True;
end;

end.
