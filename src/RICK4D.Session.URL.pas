unit RICK4D.Session.URL;

interface
type
  TURL = class
  private
    FAUTHENTICATION: string;
    FSERVER: string;
  public
    property AUTHENTICATION: string read FAUTHENTICATION write FAUTHENTICATION;
    property SERVER: string read FSERVER write FSERVER;
  end;
implementation

end.
