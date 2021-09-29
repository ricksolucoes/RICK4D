unit RICK4D.Contract;

interface

uses
{$IFDEF MSWINDOWS OR MACOS OR LINUX}
  BCrypt.Types,
{$ENDIF}

  RESTRequest4D;
type

{$IFDEF MSWINDOWS OR MACOS OR LINUX}

{$SCOPEDENUMS ON}
  THashType = BCrypt.Types.THashType;
{$SCOPEDENUMS OFF}
  THashInfo = BCrypt.Types.THashInfo;
  EBCrypt = BCrypt.Types.EBCrypt;

{$ENDIF}

  IResponse = RESTRequest4D.IResponse;
  IRequest = RESTRequest4D.IRequest;

implementation

end.
