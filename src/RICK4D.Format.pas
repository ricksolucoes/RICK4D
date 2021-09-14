unit RICK4D.Format;

interface

uses
  RICK4D.Interfaces,
  RICK.Format.Interfaces;

type
  TRICK4DFormat = class(TInterfacedObject, iRICK4DFormat)
  private
    [weak]
    FParent : iRICK4D;
    FFormat: iRICKFormat;

    function FormatExtra(const AValue: string): iRICK4DFormat;
    function FormatMask(const AValue: string): iRICK4DFormat;
    function LandlinePhone(AValue: TObject): iRICK4DFormat;
    function Mobile(AValue: TObject): iRICK4DFormat;
    function CNPJ(AValue: TObject): iRICK4DFormat;
    function CPF(AValue: TObject): iRICK4DFormat;
    function CNPJorCPF(AValue: TObject): iRICK4DFormat;
    function StateRegistration(AValue: TObject): iRICK4DFormat;
    function CurrencyValue(AValue: TObject): iRICK4DFormat;
    function ZIPCode(AValue: TObject): iRICK4DFormat;
    function DateValue(AValue: TObject): iRICK4DFormat;
    function Weight(AValue: TObject): iRICK4DFormat;
    function Customized(AValue: TObject): iRICK4DFormat;

    function &End: iRICK4D;

    constructor Create(AParent: iRICK4D);
  public
    class function New(AParent: iRICK4D): iRICK4DFormat;
    destructor Destroy; override;
  end;

implementation
uses
  RICK.Format;

function TRICK4DFormat.ZipCode(AValue: TObject): iRICK4DFormat;
begin
  Result:= Self;
  FFormat.ZipCode(AValue);
end;

function TRICK4DFormat.CNPJ(AValue: TObject): iRICK4DFormat;
begin
  Result:= Self;
  FFormat.CNPJ(AValue);
end;

function TRICK4DFormat.CNPJorCPF(AValue: TObject): iRICK4DFormat;
begin
  Result:= Self;
  FFormat.CNPJorCPF(AValue);
end;

function TRICK4DFormat.CPF(AValue: TObject): iRICK4DFormat;
begin
  Result:= Self;
  FFormat.CPF(AValue);
end;

constructor TRICK4DFormat.Create(AParent: iRICK4D);
begin
  FParent:= AParent;
  FFormat:= TRICKFormat.New;

end;

function TRICK4DFormat.CurrencyValue(AValue: TObject): iRICK4DFormat;
begin
  Result:= Self;
  FFormat.CurrencyValue(AValue);
end;

function TRICK4DFormat.Customized(AValue: TObject): iRICK4DFormat;
begin
  Result:= Self;
  FFormat.Customized(AValue);
end;

function TRICK4DFormat.DateValue(AValue: TObject): iRICK4DFormat;
begin
  Result:= Self;
  FFormat.DateValue(AValue);
end;

destructor TRICK4DFormat.Destroy;
begin

  inherited;
end;

function TRICK4DFormat.&End: iRICK4D;
begin
  Result:= FParent;
end;

function TRICK4DFormat.FormatExtra(const AValue: string): iRICK4DFormat;
begin
  Result:= Self;
  FFormat.FormatExtra(AValue);
end;

function TRICK4DFormat.FormatMask(const AValue: string): iRICK4DFormat;
begin
  Result:= Self;
  FFormat.FormatMask(AValue);
end;

function TRICK4DFormat.LandlinePhone(AValue: TObject): iRICK4DFormat;
begin
  Result:= Self;
  FFormat.LandlinePhone(AValue);
end;

function TRICK4DFormat.Mobile(AValue: TObject): iRICK4DFormat;
begin
  Result:= Self;
  FFormat.Mobile(AValue);
end;

class function TRICK4DFormat.New(AParent: iRICK4D): iRICK4DFormat;
begin
  Result:= Self.Create(AParent);
end;

function TRICK4DFormat.Weight(AValue: TObject): iRICK4DFormat;
begin
  Result:= Self;
  FFormat.Weight(AValue);
end;

function TRICK4DFormat.StateRegistration(AValue: TObject): iRICK4DFormat;
begin
  Result:= Self;
  FFormat.StateRegistration(AValue);
end;

end.
