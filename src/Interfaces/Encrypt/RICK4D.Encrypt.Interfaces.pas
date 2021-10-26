unit RICK4D.Encrypt.Interfaces;

interface
uses
  RICK4D.Types;
type
  iRICK4DEncrypt<T> = interface
    ['{508D4332-63F9-41C7-96E3-9B87BCC43744}']
    function GenerateHash(const APassword: string): string; overload;
    function GenerateHash(const APassword: string; ACost: Byte): string; overload;
    function GenerateHash(const APassword: string; ACost: Byte; AHashType: THashType): string; overload;
    function CompareHash(const APassword: string; const AHash: string): Boolean;
    function NeedsRehash(const AHash: string): Boolean; overload;
    function NeedsRehash(const AHash: string; ACost: Byte): Boolean; overload;
    function GetHashInfo(const AHash: string): THashInfo;

    function &End: T;

  end;

implementation

end.
