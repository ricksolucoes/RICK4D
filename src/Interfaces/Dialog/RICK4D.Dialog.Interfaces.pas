unit RICK4D.Dialog.Interfaces;

interface

uses
  FMX.Forms,

  System.UITypes,

  RICK4D.Events;

type

  iRICK4DDialog<T> = interface
    ['{CDF9A8DA-0C83-4AA5-A8DB-ACAAF7970BC8}']

    function Form(AValue: TForm): iRICK4DDialog<T>;

    function BackgroundOpacity(Const AValue: Single): iRICK4DDialog<T>;
    function BackgroundColor(Const AValue: TAlphaColor): iRICK4DDialog<T>;

    function MessageBoxColor(Const AValue: TAlphaColor): iRICK4DDialog<T>;
    function MessageBoxHeight(Const AValue: Single): iRICK4DDialog<T>;
    function MessageBoxWidth(Const AValue: Single): iRICK4DDialog<T>;

    function IconColor (Const AValue: TAlphaColor): iRICK4DDialog<T>;

    function TitleText(Const AValue: string): iRICK4DDialog<T>;
    function TitleFontSize(Const AValue: Single): iRICK4DDialog<T>;
    function TitleFontColor(Const AValue: TAlphaColor): iRICK4DDialog<T>;

    function MessageText(Const AValue: string): iRICK4DDialog<T>;
    function MessageFontSize(Const AValue: Single): iRICK4DDialog<T>;
    function MessageFontColor(Const AValue: TAlphaColor): iRICK4DDialog<T>;

    function MainButtonColor (Const AValue: TAlphaColor): iRICK4DDialog<T>;
    function MainButtonText(Const AValue: string): iRICK4DDialog<T>;
    function MainButtonFontSize(Const AValue: Single): iRICK4DDialog<T>;
    function MainButtonFontColor(Const AValue: TAlphaColor): iRICK4DDialog<T>;
    function MainButtonProcess(const AValue: TCallbackProc): iRICK4DDialog<T>;

    function AuxiliaryButtonColor (Const AValue: TAlphaColor): iRICK4DDialog<T>;
    function AuxiliaryButtonText(Const AValue: string): iRICK4DDialog<T>;
    function AuxiliaryButtonFontSize(Const AValue: Single): iRICK4DDialog<T>;
    function AuxiliaryButtonFontColor(Const AValue: TAlphaColor): iRICK4DDialog<T>;
    function AuxiliaryButtonProcess(const AValue: TCallbackProc): iRICK4DDialog<T>;

    function ExecuteDialogQuestion: iRICK4DDialog<T>;
    function ExecuteDialogError: iRICK4DDialog<T>;
    function ExecuteDialogSuccess: iRICK4DDialog<T>;
    function ExecuteDialogInfo: iRICK4DDialog<T>;
    function ExecuteDialogWarnig: iRICK4DDialog<T>;

    function &End: T;
  end;

implementation

end.
