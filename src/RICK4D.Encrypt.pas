unit RICK4D.Encrypt;

interface
{$IFDEF MSWINDOWS OR MACOS OR LINUX}
uses
  RICK4D.Interfaces,
  BCrypt.Intf,
  RICK4D.Contract;
type
  TRICK4DEncrypt = class(TInterfacedObject, iRICK4DEncrypt)
  private
    [weak]
    FParent : iRICK4D;
    FEncrypt: IBCrypt;

    function GenerateHash(const APassword: string): string; overload;
    function GenerateHash(const APassword: string; ACost: Byte): string; overload;
    function GenerateHash(const APassword: string; ACost: Byte; AHashType: THashType): string; overload;
    function CompareHash(const APassword: string; const AHash: string): Boolean;
    function NeedsRehash(const AHash: string): Boolean; overload;
    function NeedsRehash(const AHash: string; ACost: Byte): Boolean; overload;
    function GetHashInfo(const AHash: string): THashInfo;

    function &End: iRICK4D;

    constructor Create(AParent: iRICK4D);
  public
    class function New(AParent: iRICK4D): iRICK4DEncrypt;
    destructor Destroy; override;
  end;
{$ENDIF}

implementation

{$IFDEF MSWINDOWS OR MACOS OR LINUX}
uses
  BCrypt.Core,
  BCrypt.Consts;

{ TRICK4DEncrypt }

constructor TRICK4DEncrypt.Create(AParent: iRICK4D);
begin
  FParent := AParent;
  FEncrypt:= TBCryptImpl.New;
end;

destructor TRICK4DEncrypt.Destroy;
begin

  inherited;
end;

class function TRICK4DEncrypt.New(AParent: iRICK4D): iRICK4DEncrypt;
begin
  Result:= Self.Create(AParent);
end;

function TRICK4DEncrypt.CompareHash(const APassword, AHash: string): Boolean;
begin
  Result:= FEncrypt.CompareHash(UTF8String(APassword), AHash);
end;

function TRICK4DEncrypt.&End: iRICK4D;
begin
  Result:= FParent;
end;

function TRICK4DEncrypt.GenerateHash(const APassword: string;
  ACost: Byte): string;
begin
  Result:= FEncrypt.GenerateHash(UTF8String(APassword), THashType.BSD, ACost);
end;

function TRICK4DEncrypt.GenerateHash(const APassword: string): string;
begin
  Result:= FEncrypt.GenerateHash(UTF8String(APassword), THashType.BSD, BCRYPT_DEFAULT_COST);
end;

function TRICK4DEncrypt.GenerateHash(const APassword: string; ACost: Byte;
  AHashType: THashType): string;
begin
  Result:= FEncrypt.GenerateHash(UTF8String(APassword), AHashType, ACost);
end;

function TRICK4DEncrypt.GetHashInfo(const AHash: string): THashInfo;
begin
  Result:= FEncrypt.GetHashInfo(AHash);
end;

function TRICK4DEncrypt.NeedsRehash(const AHash: string; ACost: Byte): Boolean;
begin
  Result:= FEncrypt.NeedsRehash(AHash, ACost);
end;

function TRICK4DEncrypt.NeedsRehash(const AHash: string): Boolean;
begin
  Result:= FEncrypt.NeedsRehash(AHash, BCRYPT_DEFAULT_COST);
end;
{$ENDIF}

end.
