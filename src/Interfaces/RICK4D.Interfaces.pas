unit RICK4D.Interfaces;

interface

uses
  RICK4D.INI.Interfaces,
  RICK4D.Rest.Interfaces,
  RICK4D.Dialog.Interfaces,
  RICK4D.Format.Interfaces,
  RICK4D.Loading.Interfaces,
  RICK4D.Encrypt.Interfaces,
  RICK4D.Librarys.Interfaces,
  RICK4D.Show.Form.Interfaces,
  RICK4D.Check.Connection.Interfaces;

type
  iRICK4D = interface
    ['{04043DAA-261D-427B-97A1-23A133C8E393}']
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

  end;

implementation

end.
