unit RICK4D.Interfaces;

interface

uses
  FMX.Types,
  FMX.Controls,

  System.UITypes,
  System.Classes,
  System.SysUtils,

  RICK.ShowForm.CallBack;

type
  iRICK4DShowForm = interface;
  iRICK4DLoading = interface;
  iRICK4DLibrarys = interface;
  iRICK4DCheckConnection = interface;
  iRICK4DFormat = interface;

  iRICK4D = interface
    ['{1E306179-2275-48E2-9252-4210B6031DCB}']
    function ShowForm : iRICK4DShowForm;
    function Loading : iRICK4DLoading;
    function Librarys : iRICK4DLibrarys;
    function CheckConnection : iRICK4DCheckConnection;
    function Format : iRICK4DFormat;
  end;

  iRICK4DShowForm = interface
    ['{754DD786-C10F-457D-94AB-EF12C49884A4}']
    function Formulary(const AValue: TComponentClass): iRICK4DShowForm;
    function ChangeDefaultMainForm: iRICK4DShowForm;
    function ExecuteBefore(const AValue: TProc): iRICK4DShowForm;
    function ExecuteAfter(const AValue: TProc): iRICK4DShowForm;
    function ShowOther: iRICK4DShowForm;
    function Show: iRICK4DShowForm;

    function &End: iRICK4D;
  end;

  iRICK4DLoading = interface
    ['{F26CEBE6-119A-4F19-9615-6B18266FE164}']
    function Execute(const AProc: TProc): iRICK4DLoading;
    function DoMessage(const AValue: string): iRICK4DLoading;
    function ChangeMessage(const AValue: string): iRICK4DLoading;
    function SourceSize(const AValue: Integer): iRICK4DLoading;
    function SourceName(const AValue: string): iRICK4DLoading;
    function SourceColor(const AValue: TAlphaColor): iRICK4DLoading;
    function AnimationColor(Const AValue: TAlphaColor): iRICK4DLoading;
    function BackgroundColor(Const AValue: TAlphaColor): iRICK4DLoading;
    function OpacityBackground(Const AValue: Single): iRICK4DLoading;
    function OpacityAnimationText(Const AValue: Single): iRICK4DLoading;

    function &End: iRICK4D;

  end;
  iRICK4DLibrarys = interface
    ['{DBF1DFCF-B159-43D6-92F2-4C2450C020EB}']
    function StringInSet(const S: String;
      const StringSet: array of String): Boolean;
    function OnlyNumber(const AValue: string): string;
    function Mask(Const AMascara, AValue: string): string;
    function IEFormat(Const ANumber: string; Const AState: string): string;
    function FormatValue(Const AValue: string): string;
    function FormatDate(Const AValue: string): string;
    function FormatPeso(const AValue: string): string;
    procedure DelayedSetFocus(Const AValue: TControl);

    function &End: iRICK4D;
  end;

  iRICK4DCheckConnection = interface
    function ConnectionState: Boolean;
    function URLState: Boolean;
    function ConnectionType: string;
    function URL(Const AValue: string): iRICK4DCheckConnection;
    function ClearURL: iRICK4DCheckConnection;
    function StatusCode(Const AValue: Integer): iRICK4DCheckConnection;
    function ClearStausCode: iRICK4DCheckConnection;

    function &End: iRICK4D;
  end;

  iRICK4DFormat = interface
    function FormatExtra(const AValue: string): iRICK4DFormat;
    function FormatMask(const AValue: string): iRICK4DFormat;
    function LandlinePhone(AValue: TObject): iRICK4DFormat;
    function Mobile(AValue: TObject): iRICK4DFormat;
    function CNPJ(AValue: TObject): iRICK4DFormat;
    function CPF(AValue: TObject): iRICK4DFormat;
    function CNPJorCPF(AValue: TObject): iRICK4DFormat;
    function StateRegistration(AValue: TObject): iRICK4DFormat;
    function CurrencyValue(AValue: TObject): iRICK4DFormat;
    function CEP(AValue: TObject): iRICK4DFormat;
    function DateValue(AValue: TObject): iRICK4DFormat;
    function Peso(AValue: TObject): iRICK4DFormat;
    function Customized(AValue: TObject): iRICK4DFormat;

    function &End: iRICK4D;
  end;
implementation

end.
