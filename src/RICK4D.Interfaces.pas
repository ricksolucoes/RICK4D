unit RICK4D.Interfaces;

interface

uses
  System.Classes,

  RICK.ShowForm.CallBack;

type
  iRICK4DShowForm = interface;

  iRICK4D = interface
    ['{1E306179-2275-48E2-9252-4210B6031DCB}']
    function ShowForm : iRICK4DShowForm;
  end;

  iRICK4DShowForm = interface
    ['{754DD786-C10F-457D-94AB-EF12C49884A4}']
    function Formulary(const AValue: TComponentClass): iRICK4DShowForm;
    function ChangeDefaultMainForm: iRICK4DShowForm;
    function ExecuteBefore(const AValue: TRickShowFormCallBackProc): iRICK4DShowForm;
    function ExecuteAfter(const AValue: TRickShowFormCallBackProc): iRICK4DShowForm;
    function ShowOther: iRICK4DShowForm;
    function Show: iRICK4DShowForm;

    function &End: iRICK4D;
  end;

implementation

end.
