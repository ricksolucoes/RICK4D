unit RICK4D.Session.Entity.TOKEN;

interface
Type
   TEntityToken = class
  private
    FREFRESH: string;
    FACCESS: string;
  public
    property ACCESS: string read FACCESS write FACCESS;
    property REFRESH: string read FREFRESH write FREFRESH;
  end;
implementation

end.
