unit RICK4D.Check.Connection.Interfaces;

interface
type
  iRICK4DCheckConnection<T> =  interface
    ['{36E65D69-3960-4255-9DE6-EB31CE0D9F14}']
    function ConnectionState: Boolean;
    function URLState: Boolean;
    function ConnectionType: string;
    function URL(Const AValue: string): iRICK4DCheckConnection<T>;
    function ClearURL: iRICK4DCheckConnection<T>;
    function StatusCode(Const AValue: Integer): iRICK4DCheckConnection<T>;
    function ClearStausCode: iRICK4DCheckConnection<T>;

    function &End: T;
  end;

implementation

end.
