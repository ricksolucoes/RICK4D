unit RICK4D.Format.Interfaces;

interface
type
  iRICK4DFormat<T> = interface
    ['{B4D06C12-74B7-4D8F-9B1A-FC453F3B3B25}']
    function FormatExtra(const AValue: string): iRICK4DFormat<T>;
    function FormatMask(const AValue: string): iRICK4DFormat<T>;
    function LandlinePhone(AValue: TObject): iRICK4DFormat<T>;
    function Mobile(AValue: TObject): iRICK4DFormat<T>;
    function CNPJ(AValue: TObject): iRICK4DFormat<T>;
    function CPF(AValue: TObject): iRICK4DFormat<T>;
    function CNPJorCPF(AValue: TObject): iRICK4DFormat<T>;
    function StateRegistration(AValue: TObject): iRICK4DFormat<T>;
    function CurrencyValue(AValue: TObject): iRICK4DFormat<T>;
    function ZipCode(AValue: TObject): iRICK4DFormat<T>;
    function DateValue(AValue: TObject): iRICK4DFormat<T>;
    function Weight(AValue: TObject): iRICK4DFormat<T>;
    function Customized(AValue: TObject): iRICK4DFormat<T>;

    function &End: T;
  end;
implementation

end.
