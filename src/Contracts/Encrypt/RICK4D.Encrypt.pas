unit RICK4D.Encrypt;

interface
uses
  RICK4D.Types,
  RICK4D.Encrypt.Interfaces,

  BCrypt.Intf,
  BCrypt.Core,
  BCrypt.Consts;

type
  TRICK4DEncrypt<T: IInterface> = class(TInterfacedObject, iRICK4DEncrypt<T>)
  private
    [weak]
    FParent : T;
    FFramework: IBCrypt;

    function GenerateHash(const APassword: string): string; overload;
    function GenerateHash(const APassword: string; ACost: Byte): string; overload;
    function GenerateHash(const APassword: string; ACost: Byte; AHashType: THashType): string; overload;
    function CompareHash(const APassword: string; const AHash: string): Boolean;
    function NeedsRehash(const AHash: string): Boolean; overload;
    function NeedsRehash(const AHash: string; ACost: Byte): Boolean; overload;
    function GetHashInfo(const AHash: string): THashInfo;

    function &End: T;

    constructor Create(AParent: T);
  public
    class function New(AParent: T): iRICK4DEncrypt<T>;
    destructor Destroy; override;
  end;

implementation

{ TRICK4DEncrypt<T> }

function TRICK4DEncrypt<T>.CompareHash(const APassword, AHash: string): Boolean;
begin
  Result:= FFramework.CompareHash(UTF8String(APassword), AHash);
end;

constructor TRICK4DEncrypt<T>.Create(AParent: T);
begin
  FParent := AParent;
  FFramework:= TBCryptImpl.New;
end;

destructor TRICK4DEncrypt<T>.Destroy;
begin

  inherited;
end;

function TRICK4DEncrypt<T>.&End: T;
begin
  Result:= FParent;
end;

function TRICK4DEncrypt<T>.GenerateHash(const APassword: string;
  ACost: Byte): string;
begin
  Result:= FFramework.GenerateHash(UTF8String(APassword), THashType.BSD, ACost);
end;

function TRICK4DEncrypt<T>.GenerateHash(const APassword: string): string;
begin
  Result:= FFramework.GenerateHash(UTF8String(APassword), THashType.BSD, BCRYPT_DEFAULT_COST);
end;

function TRICK4DEncrypt<T>.GenerateHash(const APassword: string; ACost: Byte;
  AHashType: THashType): string;
begin
  Result:= FFramework.GenerateHash(UTF8String(APassword), AHashType, ACost);
end;

function TRICK4DEncrypt<T>.GetHashInfo(const AHash: string): THashInfo;
begin
  Result:= FFramework.GetHashInfo(AHash);
end;

function TRICK4DEncrypt<T>.NeedsRehash(const AHash: string;
  ACost: Byte): Boolean;
begin
  Result:= FFramework.NeedsRehash(AHash, ACost);
end;

function TRICK4DEncrypt<T>.NeedsRehash(const AHash: string): Boolean;
begin
  Result:= FFramework.NeedsRehash(AHash, BCRYPT_DEFAULT_COST);
end;

class function TRICK4DEncrypt<T>.New(AParent: T): iRICK4DEncrypt<T>;
begin
  Result:= Self.Create(AParent);
end;

end.
