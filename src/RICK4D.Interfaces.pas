unit RICK4D.Interfaces;

interface

uses
  FMX.Types,
  FMX.Controls,

  System.JSON,
  System.UITypes,
  System.Classes,
  System.SysUtils,

  RICK4D.CallBack,
  RICK4D.Contract;

type

{$REGION 'Interfaces'}
  //Show Form Functions
  iRICK4DShowForm = interface;
  //Loading Functions
  iRICK4DLoading = interface;
  //Library Functions
  iRICK4DLibrarys = interface;
  //Check Connection Functions
  iRICK4DCheckConnection = interface;
  //Format Functions
  iRICK4DFormat = interface;

{$REGION 'Dialgo'}
  iRICK4DDialog = interface;
    //Dialog Main Functions
    iRICK4DDialogMain = interface;
      //Dialog Main Back Functions
      iRICK4DDialogMainBackgroundCustom = interface;
    //Dialog Message Window Functions
    iRICK4DDialogCustom = interface;
      //Dialog Message Window Custom Functions
      iRICK4DDialogBackgroundCustom = interface;
      iRICK4DDialogRectangleCustom = interface;
      iRICK4DDialogIconCustom = interface;
      iRICK4DDialogTitleCustom = interface;
      iRICK4DDialogInfoCustom = interface;
      iRICK4DDialogButtonCustom = interface;
      iRICK4DDialogButtonFirstCustom = interface;
      iRICK4DDialogButtonSecondCustom = interface;
    //Displays the Dialog for the user
    iRICK4DDialogExecute = interface;
{$ENDREGION}

{$REGION 'Runs only on Windows or Mac or IOS'}
  {$IFDEF MSWINDOWS OR MACOS OR LINUX}
  //Encryp Functions (Start Custom)
  iRICK4DEncrypt = interface;
  {$ENDIF}

{$ENDREGION}

{$ENDREGION}

{$REGION 'Main Functions'}

  iRICK4D = interface
    ['{1E306179-2275-48E2-9252-4210B6031DCB}']
    function ShowForm : iRICK4DShowForm;
    function Loading : iRICK4DLoading;
    function Librarys : iRICK4DLibrarys;
    function CheckConnection : iRICK4DCheckConnection;
    function Format : iRICK4DFormat;
    function Dialog : iRICK4DDialog;

    {$IFDEF MSWINDOWS OR MACOS OR LINUX}
    function Encrypt: iRICK4DEncrypt;
    {$ENDIF}

  end;

{$ENDREGION}

{$REGION 'Show Form Functions'}

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

{$ENDREGION}

{$REGION 'Loading Functions'}

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

{$ENDREGION}

{$REGION 'Library Functions'}

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
    function DelayedSetFocus(Const AValue: TControl): iRICK4DLibrarys;
    function ShowKeyboard(Const AValue: TControl): iRICK4DLibrarys;
    function HideKeyboard(Const AValue: TControl): iRICK4DLibrarys;

    function &End: iRICK4D;
  end;

{$ENDREGION}

{$REGION 'Check Connection Functions'}

  iRICK4DCheckConnection = interface
    ['{91CCC944-7F7B-4FF3-9501-5050A0F1E9FC}']
    function ConnectionState: Boolean;
    function URLState: Boolean;
    function ConnectionType: string;
    function URL(Const AValue: string): iRICK4DCheckConnection;
    function ClearURL: iRICK4DCheckConnection;
    function StatusCode(Const AValue: Integer): iRICK4DCheckConnection;
    function ClearStausCode: iRICK4DCheckConnection;

    function &End: iRICK4D;
  end;

{$ENDREGION}

{$REGION 'Format Functions'}

  iRICK4DFormat = interface
    ['{E2E46BC0-CCE2-4E4B-BA54-40AF7EDB4832}']
    function FormatExtra(const AValue: string): iRICK4DFormat;
    function FormatMask(const AValue: string): iRICK4DFormat;
    function LandlinePhone(AValue: TObject): iRICK4DFormat;
    function Mobile(AValue: TObject): iRICK4DFormat;
    function CNPJ(AValue: TObject): iRICK4DFormat;
    function CPF(AValue: TObject): iRICK4DFormat;
    function CNPJorCPF(AValue: TObject): iRICK4DFormat;
    function StateRegistration(AValue: TObject): iRICK4DFormat;
    function CurrencyValue(AValue: TObject): iRICK4DFormat;
    function ZipCode(AValue: TObject): iRICK4DFormat;
    function DateValue(AValue: TObject): iRICK4DFormat;
    function Weight(AValue: TObject): iRICK4DFormat;
    function Customized(AValue: TObject): iRICK4DFormat;

    function &End: iRICK4D;
  end;

{$ENDREGION}

{$REGION 'Dialogs Functions'}

  iRICK4DDialog = interface
    ['{FE1E5611-AB76-40BD-9C66-6AFEF9EF6B18}']
    function CustomMain: iRICK4DDialogMain;
    function CustomDialog: iRICK4DDialogCustom;

    function &End: iRICK4D; overload;
  end;

{$REGION 'Main'}

  iRICK4DDialogMain = interface
    ['{B3F6BB5D-202C-433B-B0D6-CF498162F905}']
    function Background: iRICK4DDialogMainBackgroundCustom;

    function &End: iRICK4DDialog;
  end;

  iRICK4DDialogMainBackgroundCustom = interface
    ['{2FDE0850-9F85-4420-B842-E49532A142E3}']
    function Opacity(Const AValue: Single): iRICK4DDialogMainBackgroundCustom;
    function Color(Const AValue: TAlphaColor): iRICK4DDialogMainBackgroundCustom;

    function &End: iRICK4DDialogMain;
  end;

{$ENDREGION}

{$REGION 'Custom'}

  iRICK4DDialogCustom = interface
    ['{B1313CF9-EE5E-442E-B0F0-BA13D0064159}']
    function Background: iRICK4DDialogBackgroundCustom;
    function Rectangle: iRICK4DDialogRectangleCustom;
    function Icon: iRICK4DDialogIconCustom;
    function Title: iRICK4DDialogTitleCustom;
    function Info: iRICK4DDialogInfoCustom;
    function Button: iRICK4DDialogButtonCustom;
    function Execute: iRICK4DDialogExecute;

    function &End: iRICK4DDialog;
  end;

  iRICK4DDialogBackgroundCustom = interface
    ['{6F216BD9-1BDE-4B7A-8595-EAD724FC8D1D}']
    function Color(Const AValue: TAlphaColor): iRICK4DDialogBackgroundCustom;

    function &End: iRICK4DDialogCustom;
  end;

  iRICK4DDialogRectangleCustom = interface
    ['{414B59D1-B4E9-4EB9-A537-3CAD42DBE70F}']
    function Width(Const AValue: Single): iRICK4DDialogRectangleCustom;
    function Height(Const AValue: Single): iRICK4DDialogRectangleCustom;

    function &End: iRICK4DDialogCustom;
  end;

  iRICK4DDialogIconCustom = interface
    ['{1174AD18-A8B9-4D5D-972D-FACEE38DCB30}']
    function Color(Const AValue: TAlphaColor): iRICK4DDialogIconCustom;

    function &End: iRICK4DDialogCustom;
  end;

  iRICK4DDialogTitleCustom = interface
    ['{12BC3B77-ED24-428D-A9AA-969A1C9200FC}']

    function Text(Const AValue: string): iRICK4DDialogTitleCustom;
    function FontSize(Const AValue: Single): iRICK4DDialogTitleCustom;
    function FontColor(Const AValue: TAlphaColor): iRICK4DDialogTitleCustom;

    function &End: iRICK4DDialogCustom;
  end;

  iRICK4DDialogInfoCustom = interface
    ['{7B719635-2B61-4230-A03B-D7FC8CEF2EA2}']
    function Text(Const AValue: string): iRICK4DDialogInfoCustom;
    function FontSize(Const AValue: Single): iRICK4DDialogInfoCustom;
    function FontColor(Const AValue: TAlphaColor): iRICK4DDialogInfoCustom;

    function &End: iRICK4DDialogCustom;
  end;

   iRICK4DDialogButtonCustom = interface
    ['{7B719635-2B61-4230-A03B-D7FC8CEF2EA2}']
    function First: iRICK4DDialogButtonFirstCustom;
    function Second: iRICK4DDialogButtonSecondCustom;

    function &End: iRICK4DDialogCustom;
  end;

   iRICK4DDialogButtonFirstCustom = interface
     ['{1A7624FF-D3A0-47BE-B4BE-040815BA84F0}']

    function Color(Const AValue: TAlphaColor): iRICK4DDialogButtonFirstCustom;
    function Text(Const AValue: string): iRICK4DDialogButtonFirstCustom;
    function FontSize(Const AValue: Single): iRICK4DDialogButtonFirstCustom;
    function FontColor(Const AValue: TAlphaColor): iRICK4DDialogButtonFirstCustom;
    function Process(const AValue: TCallbackProc): iRICK4DDialogButtonFirstCustom;

    function &End: iRICK4DDialogButtonCustom;
   end;

   iRICK4DDialogButtonSecondCustom = interface
     ['{CFBF60CA-D9A9-4537-9578-79C1436D17E4}']

    function Color(Const AValue: TAlphaColor): iRICK4DDialogButtonSecondCustom;
    function Text(Const AValue: string): iRICK4DDialogButtonSecondCustom;
    function FontSize(Const AValue: Single): iRICK4DDialogButtonSecondCustom;
    function FontColor(Const AValue: TAlphaColor): iRICK4DDialogButtonSecondCustom;
    function Process(const AValue: TCallbackProc): iRICK4DDialogButtonSecondCustom;

    function &End: iRICK4DDialogButtonCustom;
   end;

   iRICK4DDialogExecute = interface
    ['{22CFEA62-04D5-402D-BAB7-A963E108579B}']

    function Question: iRICK4DDialogExecute;
    function Error: iRICK4DDialogExecute;
    function Success: iRICK4DDialogExecute;
    function Info: iRICK4DDialogExecute;
    function Warnig: iRICK4DDialogExecute;

    function &End: iRICK4DDialogCustom;
  end;

{$ENDREGION}

{$ENDREGION}

{$REGION 'Encrypt Functions'}

{$IFDEF MSWINDOWS OR MACOS OR LINUX}
  iRICK4DEncrypt = interface
    ['{A5EBCAF3-DB5A-40C3-A3F8-0B854F06BF4B}']

    function GenerateHash(const APassword: string): string; overload;
    function GenerateHash(const APassword: string; ACost: Byte): string; overload;
    function GenerateHash(const APassword: string; ACost: Byte; AHashType: THashType): string; overload;
    function CompareHash(const APassword: string; const AHash: string): Boolean;
    function NeedsRehash(const AHash: string): Boolean; overload;
    function NeedsRehash(const AHash: string; ACost: Byte): Boolean; overload;
    function GetHashInfo(const AHash: string): THashInfo;

    function &End: iRICK4D;
  end;
{$ENDIF}

{$ENDREGION}

{$REGION 'Rest'}
  iRICKRequest = interface
    ['{94770BC3-6FDD-40E7-B445-48250C90EB4D}']

    function BaseURL(Const AValue: string): iRICKRequest;
    function Resource(Const AValue: string): iRICKRequest;
    function ResourceSuffix(Const AValue: string): iRICKRequest;
    function ClearParams: iRICKRequest;
    function AddParam(Const AKey, AValue: string): iRICKRequest;
    function ClearBody: iRICKRequest;
    function AddBody(Const ABody: TJSONObject; Const AOwns: Boolean = True): iRICKRequest; overload;
    function AddBody(Const ABody: TMemoryStream; Const AOwns: Boolean = True): iRICKRequest; overload;
    function ContentType(const AContentType: string): iRICKRequest;
    function BasicAuthentication(const AUsername, APassword: string): iRICKRequest;
    function Token(const AToken: string): iRICKRequest;
    function TokenBearer(const AToken: string): iRICKRequest;
    function Get: IResponse;
    function Post: IResponse;
    function Put: IResponse;
    function Patch: IResponse;
    function Delete: IResponse;

    function &End: iRICK4D;
  end;
{$ENDREGION}

implementation

end.
