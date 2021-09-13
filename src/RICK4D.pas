unit RICK4D;

interface
uses
  RICK4D.Interfaces;
type
  TRICK4D = class(TInterfacedObject, iRICK4D)
  private
    FShowForm : iRICK4DShowForm;
    FLoading : iRICK4DLoading;
    FLibrarys : iRICK4DLibrarys;

    function ShowForm : iRICK4DShowForm;
    function Loading : iRICK4DLoading;
    function Librarys : iRICK4DLibrarys;

    constructor Create;
  public
    class function New: iRICK4D;
    destructor Destroy; override;
  end;

implementation

uses
  RICK4D.Loading,
  RICK4D.ShowForm,
  RICK4D.Librarys;


{ TRICK4D }

constructor TRICK4D.Create;
begin

end;

destructor TRICK4D.Destroy;
begin

  inherited;
end;

function TRICK4D.Librarys: iRICK4DLibrarys;
begin
   if not Assigned(FLibrarys) then
    FLibrarys := TRICK4DLibrarys.New(Self);

  Result := FLibrarys;
end;

function TRICK4D.Loading: iRICK4DLoading;
begin
  if not Assigned(FLoading) then
    FLoading := TRICK4DLoading.New(Self);

  Result := FLoading;

end;

class function TRICK4D.New: iRICK4D;
begin
  Result:= Self.Create;
end;

function TRICK4D.ShowForm: iRICK4DShowForm;
begin
  if not Assigned(FShowForm) then
    FShowForm := TRICK4DShowForm.New(Self);

  Result := FShowForm;
end;

end.
