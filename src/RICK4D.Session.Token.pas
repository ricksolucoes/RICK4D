unit RICK4D.Session.Token;

interface
Type
   TToken = class
  private
    FREFRESH: string;
    FACCESS: string;
  public
    property ACCESS: string read FACCESS write FACCESS;
    property REFRESH: string read FREFRESH write FREFRESH;
  end;

implementation

end.
