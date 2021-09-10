unit RICK4D.ShowForm;

interface

uses
  System.Classes,
  System.SysUtils,

  RICK4D.Interfaces,

  RICK.ShowForm.Iterfaces;

type
  TRICK4DShowForm = class(TInterfacedObject, iRICK4DShowForm)
  private
    [weak]
    FParent : iRICK4D;
    FShowForm: iRICKShowForm;

    function Formulary(const AValue: TComponentClass): iRICK4DShowForm;
    function ChangeDefaultMainForm: iRICK4DShowForm;
    function ExecuteBefore(const AValue: TProc): iRICK4DShowForm;
    function ExecuteAfter(const AValue: TProc): iRICK4DShowForm;
    function ShowOther: iRICK4DShowForm;
    function Show: iRICK4DShowForm;
    function &End: iRICK4D;

    constructor Create(AParent: iRICK4D);
  public
    class function New(AParent: iRICK4D): iRICK4DShowForm;
    destructor Destroy; override;
  end;

implementation

uses
  RICK.ShowForm;

{ TRICK4DShowForm }

function TRICK4DShowForm.&End: iRICK4D;
begin
  Result:= FParent;
end;

function TRICK4DShowForm.ExecuteAfter(
  const AValue: TProc): iRICK4DShowForm;
begin
  Result:= Self;
  FShowForm.ExecuteAfter(AValue);
end;

function TRICK4DShowForm.ExecuteBefore(
  const AValue: TProc): iRICK4DShowForm;
begin
  Result:= Self;
  FShowForm.ExecuteBefore(AValue);
end;

function TRICK4DShowForm.Formulary(
  const AValue: TComponentClass): iRICK4DShowForm;
begin
  Result:= Self;
  FShowForm.Formulary(AValue);
end;

function TRICK4DShowForm.ChangeDefaultMainForm: iRICK4DShowForm;
begin
  Result:= Self;
  FShowForm.ChangeDefaultMainForm;
end;

constructor TRICK4DShowForm.Create(AParent: iRICK4D);
begin
  FShowForm:= TRICKShowForm.New;
end;

destructor TRICK4DShowForm.Destroy;
begin

  inherited;
end;

class function TRICK4DShowForm.New(AParent: iRICK4D): iRICK4DShowForm;
begin
  Result:= Self.Create(AParent);
end;

function TRICK4DShowForm.Show: iRICK4DShowForm;
begin
  Result:= Self;
  FShowForm.Show;
end;

function TRICK4DShowForm.ShowOther: iRICK4DShowForm;
begin
  Result:= Self;
  FShowForm.ShowOther;
end;

end.
