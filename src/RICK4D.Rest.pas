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
    FRefreshTokenBearerAutomatically: Boolean;

    procedure DoBeforeExecute;
    function RefreshTokenBearer: boolean;
    function Execute(AMethod: TRestRequestMethod): IResponse;

    function BaseURL(Const AValue: string): iRICK4DRest;
    function Resource(Const AValue: string): iRICK4DRest;
    function ResourceSuffix(Const AValue: string): iRICK4DRest;
    function ClearParams: iRICK4DRest;
    function ClearBody: iRICK4DRest;
    function AddBody(Const ABody: TJSONObject; Const AOwns: Boolean = True): iRICK4DRest; overload;
    function AddBody(Const ABody: TJSONArray; Const AOwns: Boolean = True): iRICK4DRest; overload;
    function AddBody(Const ABody: TObject; Const AOwns: Boolean = True): iRICK4DRest; overload;
    function AddBody(Const ABody: TStream; Const AOwns: Boolean = True): iRICK4DRest; overload;
    function ContentType(const AContentType: string): iRICK4DRest;
    function BasicAuthentication(const AUsername, APassword: string): iRICK4DRest;
    function Token(const AToken: string): iRICK4DRest;
    function TokenBearer(const AToken: string): iRICK4DRest;
    function RefreshTokenBearerAutomatically: iRICK4DRest;
    function AcceptEncoding(const AAcceptEncoding: string): iRICK4DRest; overload;
    function AcceptCharset(const AAcceptCharset: string): iRICK4DRest; overload;
    function Accept(const AAccept: string): iRICK4DRest; overload;
    function Timeout(const ATimeout: Integer): iRICK4DRest; overload;
    function ClearHeaders: iRICK4DRest;

    function SynchronizedEvents(const AValue: Boolean): iRICK4DRest;
    function AddHeader(const AName, AValue: string; const AOptions: TRESTRequestParameterOptions = []): iRICK4DRest;
    function AddParam(const AName, AValue: string; const AKind: TRESTRequestParameterKind = {$IF COMPILERVERSION < 33}TRESTRequestParameterKind.pkGETorPOST{$ELSE}TRESTRequestParameterKind.pkQUERY{$ENDIF}): iRICK4DRest;
    function AddBody(const AContent: string; const AContentType: TRESTContentType = ctAPPLICATION_JSON): iRICK4DRest; overload;
    function FallbackCharsetEncoding(const AFallbackCharsetEncoding: string): iRICK4DRest;

    function Get: IResponse;
    function Post: IResponse;
    function Put: IResponse;
    function Patch: IResponse;
    function Delete: IResponse;

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

function TRICK4DRest.AddBody(const AContent: string;
  const AContentType: TRESTContentType): iRICK4DRest;
begin
  Result:= Self;
  FRequest.AddBody(AContent, AContentType);
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
  FRefreshTokenBearerAutomatically:= False;
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
    FRequest.TokenBearer(TSession.GetInstance.Token.Access);
end;

function TRICK4DRest.&End: iRICK4D;
begin
  Result:= FParent;
end;

function TRICK4DRest.Execute(AMethod: TRestRequestMethod): IResponse;
begin
  //Token de acesso
  if FRefreshTokenBearerAutomatically then
    DoBeforeExecute;

  case AMethod of
    TRestRequestMethod.rmPOST:   Result:= FRequest.Post;
    TRestRequestMethod.rmPUT:    Result:= FRequest.Put;
    TRestRequestMethod.rmGET:    Result:= FRequest.Get;
    TRestRequestMethod.rmDELETE: Result:= FRequest.Delete;
    TRestRequestMethod.rmPATCH:  Result:= FRequest.Patch;
  end;

  if FRefreshTokenBearerAutomatically then
    //Token Expirado
    if (Result.StatusCode = 401) then
      if RefreshTokenBearer then
        Result:= Execute(AMethod);

end;

function TRICK4DRest.FallbackCharsetEncoding(
  const AFallbackCharsetEncoding: string): iRICK4DRest;
begin
  Result:= Self;
  FRequest.FallbackCharsetEncoding(AFallbackCharsetEncoding);
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

function TRICK4DRest.RefreshTokenBearer: boolean;
var
  LResponse: IResponse;
begin
  LResponse:= TRequest.New
      .BaseURL(FSESSION.URL.AUTHENTICATION)
      .Resource('refresh')
      .TokenBearer(FSESSION.TOKEN.REFRESH)
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

function TRICK4DRest.SynchronizedEvents(const AValue: Boolean): iRICK4DRest;
begin
  Result:= Self;
  FRequest.SynchronizedEvents(AValue);
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

function TRICK4DRest.RefreshTokenBearerAutomatically: iRICK4DRest;
begin
  Result:= Self;

  if FSESSION.TOKEN.ACCESS.Trim.IsEmpty then
    raise Exception.Create('Inform the Access Token');

  if FSESSION.URL.AUTHENTICATION.Trim.IsEmpty then
    raise Exception.Create('Inform the URL Authentication');

  if FSESSION.TOKEN.REFRESH.Trim.IsEmpty then
    raise Exception.Create('Inform the Token Refresh');

  FRefreshTokenBearerAutomatically:= True;
end;

function TRICK4DRest.AddHeader(const AName, AValue: string;
  const AOptions: TRESTRequestParameterOptions): iRICK4DRest;
begin
  Result:= Self;
  FRequest.AddHeader(AName, AName, AOptions);
end;

function TRICK4DRest.AddParam(const AName, AValue: string;
  const AKind: TRESTRequestParameterKind): iRICK4DRest;
begin
  Result:= Self;
  FRequest.AddParam(AName, AValue, AKind);
end;

end.
