unit RICK4D.Format;

interface

uses
  RICK4D.Format.Interfaces,

  RICK.Format,
  RICK.Format.Interfaces;
type
  TRICK4DFormat<T:IInterface> = class(TInterfacedObject, iRICK4DFormat<T>)
  private
    [weak]
    FParent : T;
    FFramework: iRICKFormat;

    function FormatExtra(const AValue: string): iRICK4DFormat<T>;
    function FormatMask(const AValue: string): iRICK4DFormat<T>;
    function LandlinePhone(AValue: TObject): iRICK4DFormat<T>;
    function Mobile(AValue: TObject): iRICK4DFormat<T>;
    function CNPJ(AValue: TObject): iRICK4DFormat<T>;
    function CPF(AValue: TObject): iRICK4DFormat<T>;
    function CNPJorCPF(AValue: TObject): iRICK4DFormat<T>;
    function StateRegistration(AValue: TObject): iRICK4DFormat<T>;
    function CurrencyValue(AValue: TObject): iRICK4DFormat<T>;
    function ZIPCode(AValue: TObject): iRICK4DFormat<T>;
    function DateValue(AValue: TObject): iRICK4DFormat<T>;
    function Weight(AValue: TObject): iRICK4DFormat<T>;
    function Customized(AValue: TObject): iRICK4DFormat<T>;

    function &End: T;

    constructor Create(AParent: T);
  public
    class function New(AParent: T): iRICK4DFormat<T>;
    destructor Destroy; override;
  end;

implementation


function TRICK4DFormat<T>.ZipCode(AValue: TObject): iRICK4DFormat<T>;
begin
  Result:= Self;
  FFramework.ZipCode(AValue);
end;

function TRICK4DFormat<T>.CNPJ(AValue: TObject): iRICK4DFormat<T>;
begin
  Result:= Self;
  FFramework.CNPJ(AValue);
end;

function TRICK4DFormat<T>.CNPJorCPF(AValue: TObject): iRICK4DFormat<T>;
begin
  Result:= Self;
  FFramework.CNPJorCPF(AValue);
end;

function TRICK4DFormat<T>.CPF(AValue: TObject): iRICK4DFormat<T>;
begin
  Result:= Self;
  FFramework.CPF(AValue);
end;

constructor TRICK4DFormat<T>.Create(AParent: T);
begin
  FParent:= AParent;
  FFramework:= TRICKFormat.New;
end;

function TRICK4DFormat<T>.CurrencyValue(AValue: TObject): iRICK4DFormat<T>;
begin
  Result:= Self;
  FFramework.CurrencyValue(AValue);
end;

function TRICK4DFormat<T>.Customized(AValue: TObject): iRICK4DFormat<T>;
begin
  Result:= Self;
  FFramework.Customized(AValue);
end;

function TRICK4DFormat<T>.DateValue(AValue: TObject): iRICK4DFormat<T>;
begin
  Result:= Self;
  FFramework.DateValue(AValue);
end;

destructor TRICK4DFormat<T>.Destroy;
begin

  inherited;
end;

function TRICK4DFormat<T>.&End: T;
begin
  Result:= FParent;
end;

function TRICK4DFormat<T>.FormatExtra(const AValue: string): iRICK4DFormat<T>;
begin
  Result:= Self;
  FFramework.FormatExtra(AValue);
end;

function TRICK4DFormat<T>.FormatMask(const AValue: string): iRICK4DFormat<T>;
begin
  Result:= Self;
  FFramework.FormatMask(AValue);
end;

function TRICK4DFormat<T>.LandlinePhone(AValue: TObject): iRICK4DFormat<T>;
begin
  Result:= Self;
  FFramework.LandlinePhone(AValue);
end;

function TRICK4DFormat<T>.Mobile(AValue: TObject): iRICK4DFormat<T>;
begin
  Result:= Self;
  FFramework.Mobile(AValue);
end;

class function TRICK4DFormat<T>.New(AParent: T): iRICK4DFormat<T>;
begin
  Result:= Self.Create(AParent);
end;

function TRICK4DFormat<T>.Weight(AValue: TObject): iRICK4DFormat<T>;
begin
  Result:= Self;
  FFramework.Weight(AValue);
end;

function TRICK4DFormat<T>.StateRegistration(AValue: TObject): iRICK4DFormat<T>;
begin
  Result:= Self;
  FFramework.StateRegistration(AValue);
end;

end.
