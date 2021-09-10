unit RICK4D;

interface
uses
  RICK4D.Interfaces;
type
  TRICK4D = class(TInterfacedObject, iRICK4D)
  private
    FRICK4DShowForm : iRICK4DShowForm;
    function ShowForm : iRICK4DShowForm;
    constructor Create;
  public
    class function New: iRICK4D;
    destructor Destroy; override;
  end;

implementation

uses
  RICK4D.ShowForm;


{ TRICK4D }

constructor TRICK4D.Create;
begin

end;

destructor TRICK4D.Destroy;
begin

  inherited;
end;

class function TRICK4D.New: iRICK4D;
begin
  Result:= Self.Create;
end;

function TRICK4D.ShowForm: iRICK4DShowForm;
begin
  if not Assigned(FRICK4DShowForm) then
    FRICK4DShowForm := TRICK4DShowForm.New(Self);

  Result := FRICK4DShowForm;
end;

end.
