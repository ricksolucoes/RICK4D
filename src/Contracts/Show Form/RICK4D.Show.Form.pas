unit RICK4D.Show.Form;

interface
uses
  System.Classes,
  System.SysUtils,

  RICK4D.Show.Form.Interfaces,

  RICK.ShowForm,
  RICK.ShowForm.Iterfaces;

type
  TRICK4DShowForm<T: IInterface> = class(TInterfacedObject, iRICK4DShowForm<T>)
  private
    [weak]
    FParent : T;
    FFramework: iRICKShowForm;

    function Formulary(const AValue: TComponentClass): iRICK4DShowForm<T>;
    function ChangeDefaultMainForm: iRICK4DShowForm<T>;
    function ExecuteBefore(const AValue: TProc): iRICK4DShowForm<T>;
    function ExecuteAfter(const AValue: TProc): iRICK4DShowForm<T>;
    function DoNewForm: iRICK4DShowForm<T>;
    function Show: iRICK4DShowForm<T>;
    function &End: T;

    constructor Create(AParent: T);
  public
    class function New(AParent: T): iRICK4DShowForm<T>;
    destructor Destroy; override;
  end;
implementation

{ TRICK4DShowForm<T> }

function TRICK4DShowForm<T>.ChangeDefaultMainForm: iRICK4DShowForm<T>;
begin
  Result:= Self;
  FFramework.ChangeDefaultMainForm;
end;

constructor TRICK4DShowForm<T>.Create(AParent: T);
begin
  FParent := AParent;
  FFramework:= TRICKShowForm.New;
end;

destructor TRICK4DShowForm<T>.Destroy;
begin

  inherited;
end;

function TRICK4DShowForm<T>.&End: T;
begin
  Result:= FParent;
end;

function TRICK4DShowForm<T>.ExecuteAfter(
  const AValue: TProc): iRICK4DShowForm<T>;
begin
  Result:= Self;
  FFramework.ExecuteAfter(AValue);
end;

function TRICK4DShowForm<T>.ExecuteBefore(
  const AValue: TProc): iRICK4DShowForm<T>;
begin
  Result:= Self;
  FFramework.ExecuteBefore(AValue);
end;

function TRICK4DShowForm<T>.Formulary(
  const AValue: TComponentClass): iRICK4DShowForm<T>;
begin
  Result:= Self;
  FFramework.Formulary(AValue);
end;

class function TRICK4DShowForm<T>.New(AParent: T): iRICK4DShowForm<T>;
begin
  Result:= Self.Create(AParent);
end;

function TRICK4DShowForm<T>.Show: iRICK4DShowForm<T>;
begin
  Result:= Self;
  FFramework.Show;
end;

function TRICK4DShowForm<T>.DoNewForm: iRICK4DShowForm<T>;
begin
  Result:= Self;
  FFramework.DoNewForm;
end;

end.
