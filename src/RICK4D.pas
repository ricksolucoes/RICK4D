unit RICK4D;

interface
uses
  RICK4D.Interfaces,

  RICK4D.Check.Connection,
  RICK4D.Check.Connection.Interfaces,

  RICK4D.Loading,
  RICK4D.Loading.Interfaces,

  RICK4D.Show.Form,
  RICK4D.Show.Form.Interfaces,

  RICK4D.Librarys,
  RICK4D.Librarys.Interfaces,

  RICK4D.Encrypt,
  RICK4D.Encrypt.Interfaces,

  RICK4D.Dialog,
  RICK4D.Dialog.Interfaces,

  RICK4D.Format,
  RICK4D.Format.Interfaces,

  RICK4D.Rest,
  RICK4D.Rest.Interfaces,

  RICK4D.INI,
  RICK4D.INI.Interfaces;

type
  TRICK4D = class(TInterfacedObject, iRICK4D)
  private
    FCheckConnection         : iRICK4DCheckConnection<iRICK4D>;
    FDialog                  : iRICK4DDialog<iRICK4D>;
    {$IFDEF MSWINDOWS OR MACOS OR LINUX}
    FEncrypt                 : iRICK4DEncrypt<iRICK4D>;
    {$ENDIF}
    FFormat                  : iRICK4DFormat<iRICK4D>;
    FINI                     : iRICK4DINI<iRICK4D>;
    FLibrarys                : iRICK4DLibrarys<iRICK4D>;
    FLoading                 : iRICK4DLoading<iRICK4D>;
    FRest                    : iRICK4DRest<iRICK4D>;
    FShowForm                : iRICK4DShowForm<iRICK4D>;

    function CheckConnection : iRICK4DCheckConnection<iRICK4D>;
    function Dialog          : iRICK4DDialog<iRICK4D>;
    {$IFDEF MSWINDOWS OR MACOS OR LINUX}
    function Encrypt         : iRICK4DEncrypt<iRICK4D>;
    {$ENDIF}
    function Format          : iRICK4DFormat<iRICK4D>;
    function INI             : iRICK4DINI<iRICK4D>;
    function Loading         : iRICK4DLoading<iRICK4D>;
    function Librarys        : iRICK4DLibrarys<iRICK4D>;
    function Rest            : iRICK4DRest<iRICK4D>;
    function ShowForm        : iRICK4DShowForm<iRICK4D>;


    function &End            : iRICK4D;

    constructor Create;
  public
    class function New       : iRICK4D;
    destructor Destroy; override;
  end;

implementation

{ TRICK4D }

function TRICK4D.CheckConnection: iRICK4DCheckConnection<iRICK4D>;
begin
  Result:= FCheckConnection;
end;

{$IFDEF MSWINDOWS OR MACOS OR LINUX}
function TRICK4D.Encrypt: iRICK4DEncrypt<iRICK4D>;
begin
  Result:= FEncrypt;
end;
{$ENDIF}

function TRICK4D.&End: iRICK4D;
begin
  Result:= Self;
end;

function TRICK4D.Format: iRICK4DFormat<iRICK4D>;
begin
  Result:= FFormat;
end;

function TRICK4D.INI: iRICK4DINI<iRICK4D>;
begin
  Result:= FINI;
end;

function TRICK4D.Librarys: iRICK4DLibrarys<iRICK4D>;
begin
  Result:= FLibrarys;
end;

function TRICK4D.Loading: iRICK4DLoading<iRICK4D>;
begin
  Result:= FLoading;
end;

constructor TRICK4D.Create;
begin
  FDialog            := TRICK4DDialog<iRICK4D>.New(Self);
  FCheckConnection   := TRICK4DCheckConnection<iRICK4D>.New(Self);
  {$IFDEF MSWINDOWS OR MACOS OR LINUX}
  FEncrypt           := TRICK4DEncrypt<iRICK4D>.New(Self);
  {$ENDIF}
  FFormat            := TRICK4DFormat<iRICK4D>.New(Self);
  FINI               := TRICK4DINI<iRICK4D>.New(Self);
  FLoading           := TRICK4DLoading<iRICK4D>.New(Self);
  FLibrarys          := TRICK4DLibrarys<iRICK4D>.New(Self);
  FRest              := TRICK4DRest<iRICK4D>.New(Self);
  FShowForm          := TRICK4DShowForm<iRICK4D>.New(Self);
end;

destructor TRICK4D.Destroy;
begin

  inherited;
end;

function TRICK4D.Dialog: iRICK4DDialog<iRICK4D>;
begin
  Result:= FDialog;
end;

class function TRICK4D.New: iRICK4D;
begin
  Result:= Self.Create;
end;

function TRICK4D.Rest: iRICK4DRest<iRICK4D>;
begin
  Result := FRest;
end;

function TRICK4D.ShowForm: iRICK4DShowForm<iRICK4D>;
begin
  Result:= FShowForm;
end;

end.
