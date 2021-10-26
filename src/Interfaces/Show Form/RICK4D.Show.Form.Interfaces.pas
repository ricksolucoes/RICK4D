unit RICK4D.Show.Form.Interfaces;

interface
uses
  System.Classes,
  System.SysUtils;

type
  iRICK4DShowForm<T> = interface
    ['{7CFD37BC-D6A7-4217-8093-6AC64434EF35}']
    function Formulary(const AValue: TComponentClass): iRICK4DShowForm<T>;
    function ChangeDefaultMainForm: iRICK4DShowForm<T>;
    function ExecuteBefore(const AValue: TProc): iRICK4DShowForm<T>;
    function ExecuteAfter(const AValue: TProc): iRICK4DShowForm<T>;
    function DoNewForm: iRICK4DShowForm<T>;
    function Show: iRICK4DShowForm<T>;

    function &End: T;
  end;
implementation

end.
