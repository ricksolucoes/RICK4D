unit RICK4D.Rest.Interfaces;

interface

uses
  System.JSON,
  System.Classes,

  REST.Types,

  RICK4D.Types;
type
  iRICK4DRest<T> = interface
    ['{3C14F520-30B0-4198-977A-7DD89ABBCEFC}']

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
  end;
implementation

end.
