unit RICK4D.Rest;

interface

uses
  System.JSON,
  System.Classes,

  REST.Types,

  RICK4D.Types,
  RICK4D.Session,
  RICK4D.Rest.Interfaces;

Type
  TRICK4DRest<T: IInterface> = class(TInterfacedObject, iRICK4DRest<T>)
  private
    [weak]
    FParent : T;
    FFramework: IRequest;
    FSESSION : TSession;
    FRefreshTokenBearerAutomatically: Boolean;
    FFieldByNameRefreshToken : String;
    FFieldByNameAccessToken : string;

    function FieldByNameRefreshToken(Const AValue: string) : iRICK4DRest<T>;

    function FieldByNameAccessToken(Const AValue: string) : iRICK4DRest<T>;

    function BaseURL(Const AValue: string): iRICK4DRest<T>;

    function ContentType(const AContentType: string): iRICK4DRest<T>;

    function Timeout(const ATimeout: Integer): iRICK4DRest<T>; overload;

    function SynchronizedEvents(const AValue: Boolean): iRICK4DRest<T>;

    function FallbackCharsetEncoding(const AFallbackCharsetEncoding: string): iRICK4DRest<T>;

    function Resource(Const AValue: string): iRICK4DRest<T>;
    function ClearResource: iRICK4DRest<T>;
    function ResourceSuffix(Const AValue: string): iRICK4DRest<T>;

    function AddBody(Const ABody: TJSONObject; Const AOwns: Boolean = True): iRICK4DRest<T>; overload;
    function AddBody(Const ABody: TJSONArray; Const AOwns: Boolean = True): iRICK4DRest<T>; overload;
    function AddBody(Const ABody: TObject; Const AOwns: Boolean = True): iRICK4DRest<T>; overload;
    function AddBody(Const ABody: TStream; Const AOwns: Boolean = True): iRICK4DRest<T>; overload;
    function AddBody(const AContent: string; const AContentType: TRESTContentType = ctAPPLICATION_JSON): iRICK4DRest<T>; overload;
    function ClearBody: iRICK4DRest<T>;


    function BasicAuthentication(const AUsername, APassword: string): iRICK4DRest<T>;
    function Token(const AToken: string): iRICK4DRest<T>;
    function TokenBearer(const AToken: string): iRICK4DRest<T>;
    function RefreshTokenBearerAutomatically: iRICK4DRest<T>;

    function AcceptEncoding(const AAcceptEncoding: string): iRICK4DRest<T>; overload;
    function AcceptCharset(const AAcceptCharset: string): iRICK4DRest<T>; overload;
    function Accept(const AAccept: string): iRICK4DRest<T>; overload;

    function AddHeader(const AName, AValue: string; const AOptions: TRESTRequestParameterOptions = []): iRICK4DRest<T>;
    function ClearHeaders: iRICK4DRest<T>;

    function AddParam(const AName, AValue: string; const AKind: TRESTRequestParameterKind = {$IF COMPILERVERSION < 33}TRESTRequestParameterKind.pkGETorPOST{$ELSE}TRESTRequestParameterKind.pkQUERY{$ENDIF}): iRICK4DRest<T>;
    function ClearParams: iRICK4DRest<T>;

    function Get: IResponse;
    function Post: IResponse;
    function Put: IResponse;
    function Patch: IResponse;
    function Delete: IResponse;

    function &End: T;

    constructor Create(AParent: T);
  protected
    procedure DoBeforeExecute;
    function RefreshTokenBearer: boolean;
    function Execute(AMethod: TRestRequestMethod): IResponse;
  public
    class function New(AParent: T): iRICK4DRest<T>;
    destructor Destroy; override;
  end;
implementation

uses
  RESTRequest4D, System.SysUtils;

{ TRICK4DRest<T> }

function TRICK4DRest<T>.Accept(const AAccept: string): iRICK4DRest<T>;
begin
  Result:= Self;
  FFramework.Accept(AAccept);
end;

function TRICK4DRest<T>.AcceptCharset(
  const AAcceptCharset: string): iRICK4DRest<T>;
begin
  Result:= Self;
  FFramework.AcceptCharset(AAcceptCharset);
end;

function TRICK4DRest<T>.AcceptEncoding(
  const AAcceptEncoding: string): iRICK4DRest<T>;
begin
  Result:= Self;
  FFramework.AcceptEncoding(AAcceptEncoding);
end;

function TRICK4DRest<T>.AddBody(const ABody: TStream;
  const AOwns: Boolean): iRICK4DRest<T>;
begin
  Result:= Self;
  FFramework.AddBody(ABody, AOwns);
end;

function TRICK4DRest<T>.AddBody(const AContent: string;
  const AContentType: TRESTContentType): iRICK4DRest<T>;
begin
  Result:= Self;
  FFramework.AddBody(AContent, AContentType);
end;

function TRICK4DRest<T>.AddBody(const ABody: TJSONObject;
  const AOwns: Boolean): iRICK4DRest<T>;
begin
  Result:= Self;
  FFramework.AddBody(ABody, AOwns);
end;

function TRICK4DRest<T>.AddBody(const ABody: TJSONArray;
  const AOwns: Boolean): iRICK4DRest<T>;
begin
  Result:= Self;
  FFramework.AddBody(ABody, AOwns);
end;

function TRICK4DRest<T>.AddBody(const ABody: TObject;
  const AOwns: Boolean): iRICK4DRest<T>;
begin
  Result:= Self;
  FFramework.AddBody(ABody, AOwns);
end;

function TRICK4DRest<T>.AddHeader(const AName, AValue: string;
  const AOptions: TRESTRequestParameterOptions): iRICK4DRest<T>;
begin
  Result:= Self;
  FFramework.AddHeader(AName, AValue, AOptions);
end;

function TRICK4DRest<T>.AddParam(const AName, AValue: string;
  const AKind: TRESTRequestParameterKind): iRICK4DRest<T>;
begin
  Result:= Self;
  FFramework.AddParam(AName, AValue);
end;

function TRICK4DRest<T>.BaseURL(const AValue: string): iRICK4DRest<T>;
begin
  Result:= Self;
  FFramework.BaseURL(AValue);
end;

function TRICK4DRest<T>.BasicAuthentication(const AUsername,
  APassword: string): iRICK4DRest<T>;
begin
  Result:= Self;
  FFramework.BasicAuthentication(AUsername, APassword);
end;

function TRICK4DRest<T>.ClearBody: iRICK4DRest<T>;
begin
  Result:= Self;
  FFramework.ClearBody;
end;

function TRICK4DRest<T>.ClearHeaders: iRICK4DRest<T>;
begin
  Result:= Self;
  FFramework.ClearHeaders;
end;

function TRICK4DRest<T>.ClearParams: iRICK4DRest<T>;
begin
  Result:= Self;
  FFramework.ClearParams;
end;

function TRICK4DRest<T>.ClearResource: iRICK4DRest<T>;
begin
  Result:= Self;
  FFramework.Resource(EmptyStr);
end;

function TRICK4DRest<T>.ContentType(
  const AContentType: string): iRICK4DRest<T>;
begin
  Result:= Self;
  FFramework.ContentType(AContentType);
end;

function TRICK4DRest<T>.&End: T;
begin
  Result:= FParent;
end;

function TRICK4DRest<T>.Execute(AMethod: TRestRequestMethod): IResponse;
begin
  //Token de acesso
  if FRefreshTokenBearerAutomatically then
    DoBeforeExecute;

  case AMethod of
    TRestRequestMethod.rmPOST:   Result:= FFramework.Post;
    TRestRequestMethod.rmPUT:    Result:= FFramework.Put;
    TRestRequestMethod.rmGET:    Result:= FFramework.Get;
    TRestRequestMethod.rmDELETE: Result:= FFramework.Delete;
    TRestRequestMethod.rmPATCH:  Result:= FFramework.Patch;
  end;

  if FRefreshTokenBearerAutomatically then
    //Token Expirado
    if (Result.StatusCode = 401) then
      if RefreshTokenBearer then
        Result:= Execute(AMethod);

end;

constructor TRICK4DRest<T>.Create(AParent: T);
begin
  FParent:= AParent;
  FFramework:= TRequest.New;
  FSESSION:= TSession.GetInstance;
  FRefreshTokenBearerAutomatically:= False;
  FFieldByNameRefreshToken := 'refresh';
  FFieldByNameAccessToken := 'access';

end;

function TRICK4DRest<T>.Delete: IResponse;
begin
  Result:= Execute(TRESTRequestMethod.rmDELETE);
end;

destructor TRICK4DRest<T>.Destroy;
begin

  inherited;
end;

procedure TRICK4DRest<T>.DoBeforeExecute;
begin
  if not FSESSION.TOKEN.ACCESS.Trim.IsEmpty then
    FFramework.TokenBearer(TSession.GetInstance.Token.Access);
end;

function TRICK4DRest<T>.FallbackCharsetEncoding(
  const AFallbackCharsetEncoding: string): iRICK4DRest<T>;
begin
  Result:= Self;
  FFramework.FallbackCharsetEncoding(AFallbackCharsetEncoding);
end;

function TRICK4DRest<T>.FieldByNameAccessToken(
  const AValue: string): iRICK4DRest<T>;
begin
  Result:= Self;
  FFieldByNameAccessToken:= AValue;
end;

function TRICK4DRest<T>.FieldByNameRefreshToken(
  const AValue: string): iRICK4DRest<T>;
begin
  Result:= Self;
  FFieldByNameRefreshToken:= AValue;
end;

function TRICK4DRest<T>.Get: IResponse;
begin
  Result:= Execute(TRESTRequestMethod.rmGET);
end;

class function TRICK4DRest<T>.New(AParent: T): iRICK4DRest<T>;
begin
  Result:= Self.Create(AParent);
end;

function TRICK4DRest<T>.Patch: IResponse;
begin
  Result:= Execute(TRESTRequestMethod.rmPATCH);
end;

function TRICK4DRest<T>.Post: IResponse;
begin
  Result:= Execute(TRESTRequestMethod.rmPOST);
end;

function TRICK4DRest<T>.Put: IResponse;
begin
  Result:= Execute(TRESTRequestMethod.rmPUT);
end;

function TRICK4DRest<T>.RefreshTokenBearer: boolean;
var
  LResponse: IResponse;
begin
  LResponse:= TRequest.New
      .BaseURL(FSESSION.URL.AUTHENTICATION)
      .Resource(FFieldByNameRefreshToken)
      .TokenBearer(FSESSION.TOKEN.REFRESH)
    .Get;

  Result:= (LResponse.StatusCode = 200);

  if Result then
    FSESSION.TOKEN.ACCESS:= LResponse.JSONValue.GetValue<string>(FFieldByNameAccessToken);
end;

function TRICK4DRest<T>.RefreshTokenBearerAutomatically: iRICK4DRest<T>;
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

function TRICK4DRest<T>.Resource(const AValue: string): iRICK4DRest<T>;
begin
  Result:= Self;
  FFramework.Resource(AValue);
end;

function TRICK4DRest<T>.ResourceSuffix(const AValue: string): iRICK4DRest<T>;
begin
  Result:= Self;
  FFramework.ResourceSuffix(AValue);
end;

function TRICK4DRest<T>.SynchronizedEvents(
  const AValue: Boolean): iRICK4DRest<T>;
begin
  Result:= Self;
  FFramework.SynchronizedEvents(AValue);
end;

function TRICK4DRest<T>.Timeout(const ATimeout: Integer): iRICK4DRest<T>;
begin
  Result:= Self;
  FFramework.Timeout(ATimeout);
end;

function TRICK4DRest<T>.Token(const AToken: string): iRICK4DRest<T>;
begin
  Result:= Self;
  FFramework.Token(AToken);
end;

function TRICK4DRest<T>.TokenBearer(const AToken: string): iRICK4DRest<T>;
begin
  Result:= Self;
  FFramework.TokenBearer(AToken);
end;

end.
