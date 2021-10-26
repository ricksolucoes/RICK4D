unit RICK.Sample.View1;

interface

uses
  FMX.Ani,
  FMX.Forms,
  FMX.Types,
  FMX.Dialogs,
  FMX.Effects,
  FMX.Layouts,
  FMX.Objects,
  FMX.StdCtrls,
  FMX.Controls,
  FMX.Controls.Presentation,

  System.Classes,
  System.UITypes,
  System.SysUtils,

  RICK.Sample.Base, FMX.Edit, System.Types;

type
  TPageView1 = class(TPageBase)
    GridPanelLayout: TGridPanelLayout;
    Layout1: TLayout;
    btnInfoOne: TSpeedButton;
    btnInfoTwo: TSpeedButton;
    btnSuccessOne: TSpeedButton;
    btnSuccessTwo: TSpeedButton;
    btnWarningOne: TSpeedButton;
    btnWarningTwo: TSpeedButton;
    btnErrorOne: TSpeedButton;
    btnErrorTwo: TSpeedButton;
    btnQuestion: TSpeedButton;
    btnCustom: TSpeedButton;
    btnInterfaces: TSpeedButton;
    lblResponse: TLabel;
    procedure btnInfoTwoTap(Sender: TObject; const Point: TPointF);
    procedure btnInfoOneClick(Sender: TObject);
    procedure btnInfoOneTap(Sender: TObject; const Point: TPointF);
    procedure FormCreate(Sender: TObject);
    procedure btnInfoTwoClick(Sender: TObject);
    procedure btnSuccessOneClick(Sender: TObject);
    procedure btnSuccessOneTap(Sender: TObject; const Point: TPointF);
    procedure btnSuccessTwoTap(Sender: TObject; const Point: TPointF);
    procedure btnSuccessTwoClick(Sender: TObject);
    procedure btnWarningOneClick(Sender: TObject);
    procedure btnErrorTwoClick(Sender: TObject);
    procedure btnWarningOneTap(Sender: TObject; const Point: TPointF);
    procedure btnWarningTwoTap(Sender: TObject; const Point: TPointF);
    procedure btnWarningTwoClick(Sender: TObject);
    procedure btnErrorOneClick(Sender: TObject);
    procedure btnErrorTwoTap(Sender: TObject; const Point: TPointF);
    procedure btnErrorOneTap(Sender: TObject; const Point: TPointF);
    procedure btnQuestionClick(Sender: TObject);
    procedure btnQuestionTap(Sender: TObject; const Point: TPointF);
    procedure btnCustomClick(Sender: TObject);
    procedure btnCustomTap(Sender: TObject; const Point: TPointF);
    procedure btnInterfacesClick(Sender: TObject);
    procedure btnInterfacesTap(Sender: TObject; const Point: TPointF);
  private
    procedure FirstResponseProcedure(Sender: TObject);
    procedure SecondResponseProcedure(Sender: TObject);

    procedure DialogInfoOne;
    procedure DialogInfoTwo;
    procedure DialogSuccessOne;
    procedure DialogSuccessTwo;
    procedure DialogWarningOne;
    procedure DialogWarningTwo;
    procedure DialogErrorOne;
    procedure DialogErrorTwo;
    procedure DialogQuestion;
    procedure DialogInterface;
    procedure DialogCustom;
  end;

var
  PageView1: TPageView1;

implementation

uses
  RICK4D,
  RICK4D.Interfaces;

{$R *.fmx}

procedure TPageView1.btnInfoOneClick(Sender: TObject);
begin
  inherited;
{$IFDEF MSWINDOWS}
  DialogInfoOne;
{$ENDIF}
end;

procedure TPageView1.btnInfoOneTap(Sender: TObject; const Point: TPointF);
begin
  inherited;
{$IFNDEF MSWINDOWS}
  DialogInfoOne;
{$ENDIF}
end;

procedure TPageView1.btnInfoTwoClick(Sender: TObject);
begin
  inherited;
{$IFDEF MSWINDOWS}
  DialogInfoTwo;
{$ENDIF}
end;

procedure TPageView1.btnInfoTwoTap(Sender: TObject; const Point: TPointF);
begin
  inherited;
{$IFNDEF MSWINDOWS}
  DialogInfoTwo;
{$ENDIF}

end;

procedure TPageView1.btnInterfacesClick(Sender: TObject);
begin
  inherited;
{$IFDEF MSWINDOWS}
  DialogInterface;
{$ENDIF}
end;

procedure TPageView1.btnInterfacesTap(Sender: TObject; const Point: TPointF);
begin
  inherited;
{$IFNDEF MSWINDOWS}
  DialogInterface;
{$ENDIF}

end;

procedure TPageView1.btnCustomClick(Sender: TObject);
begin
  inherited;
{$IFDEF MSWINDOWS}
  DialogCustom;
{$ENDIF}
end;

procedure TPageView1.DialogCustom;
begin
  lblResponse.Text:= EmptyStr;

  TRICK4D
    .New
      .Dialog
        .Form(Self)
          .BackgroundOpacity(0.7)
          .BackgroundColor(TAlphaColorRec.Blue)
            .MessageBoxColor(TAlphaColorRec.White)
            .MessageBoxHeight(Self.Height - 120)
            .MessageBoxWidth(Self.Width - 60)
              .IconColor(TAlphaColorRec.Coral)
                .TitleText('Question')
                .TitleFontSize(24)
                .TitleFontColor(TAlphaColorRec.Black)
                  .MessageText('The policy of the War on Terror, undertaken by the United States at the beginning of the 21st century, culminated in one of the most important recent geopolitical conflicts. This conflict has become known as the')
                  .MessageFontSize(12)
                  .MessageFontColor(TAlphaColorRec.Darkcyan)
                    .MainButtonColor(TAlphaColorRec.Darkgray)
                    .MainButtonText('Afghan War')
                    .MainButtonFontSize(14)
                    .MainButtonFontColor(TAlphaColorRec.White)
                    .MainButtonProcess(FirstResponseProcedure)
                    .AuxiliaryButtonText('Syria''s War')
                    .AuxiliaryButtonFontSize(14)
                    .AuxiliaryButtonFontColor(TAlphaColorRec.White)
                    .AuxiliaryButtonProcess(SecondResponseProcedure)
        .ExecuteDialogQuestion
      .&End

end;

procedure TPageView1.DialogErrorOne;
begin
  lblResponse.Text:= EmptyStr;

  TRICK4D
    .New
      .Dialog
        .Form(Self)
          .MessageText('Your message here')
          .ExecuteDialogError
      .&End

end;

procedure TPageView1.DialogErrorTwo;
begin
  lblResponse.Text:= EmptyStr;

  TRICK4D
    .New
      .Dialog
        .Form(Self)
          .MessageText('Your message here')
            .MainButtonText('Yes')
            .MainButtonProcess(FirstResponseProcedure)
            .AuxiliaryButtonText('No')
            .AuxiliaryButtonProcess(SecondResponseProcedure)
        .ExecuteDialogError
      .&End;
end;

procedure TPageView1.DialogInfoOne;
begin
  lblResponse.Text:= EmptyStr;
  TRICK4D
    .New
      .Dialog
        .Form(Self)
          .MessageText('Your message here')
          .ExecuteDialogInfo
      .&End
end;

procedure TPageView1.DialogInfoTwo;
begin
  lblResponse.Text:= EmptyStr;
  TRICK4D
    .New
      .Dialog
        .Form(Self)
          .MessageText('Your message here')
            .MainButtonText('Yes')
            .MainButtonProcess(FirstResponseProcedure)
            .AuxiliaryButtonText('No')
            .AuxiliaryButtonProcess(SecondResponseProcedure)
        .ExecuteDialogInfo
      .&End;
end;

procedure TPageView1.DialogInterface;
var
  LRICK4D: iRICK4D;
begin
  lblResponse.Text:= EmptyStr;

  LRICK4D:= TRICK4D.New;

  //Parent form
  LRICK4D.Dialog
    .Form(Self);

  //Customizing Background
  LRICK4D.Dialog
    .BackgroundOpacity(0.7)
    .BackgroundColor(TAlphaColorRec.Blue);

  //Customizing the Message Window Background
  LRICK4D.Dialog
    .MessageBoxColor(TAlphaColorRec.White);

  //Customizing the Message Window
  LRICK4D.Dialog
    .MessageBoxWidth(Self.Width - 60)
    .MessageBoxHeight(Self.Height - 120);

  //Customizing Icon
  LRICK4D.Dialog
    .IconColor(TAlphaColorRec.Coral);

  //Customizing Title
  LRICK4D.Dialog
    .TitleText('Question')
    .TitleFontSize(24)
    .TitleFontColor(TAlphaColorRec.Black);

  //Customizing message
  LRICK4D.Dialog
    .MessageText('The policy of the War on Terror, undertaken by the United States at the beginning of the 21st century, culminated in one of the most important recent geopolitical conflicts. This conflict has become known as the')
    .MessageFontSize(12)
    .MessageFontColor(TAlphaColorRec.Darkcyan);

  //Customizing the First Button
  LRICK4D.Dialog
    .MainButtonColor(TAlphaColorRec.Darkgray)
    .MainButtonText('Afghan War')
    .MainButtonFontSize(14)
    .MainButtonFontColor(TAlphaColorRec.White)
    .MainButtonProcess(FirstResponseProcedure);

  //Customizing the Second Button
  LRICK4D.Dialog
    .AuxiliaryButtonColor(TAlphaColorRec.Darkgray)
    .AuxiliaryButtonText('Syria''s War')
    .AuxiliaryButtonFontSize(14)
    .AuxiliaryButtonFontColor(TAlphaColorRec.White)
    .AuxiliaryButtonProcess(SecondResponseProcedure);

  //Display screen
  LRICK4D.Dialog
    .ExecuteDialogQuestion;
end;

procedure TPageView1.DialogQuestion;
begin
  lblResponse.Text:= EmptyStr;

  TRICK4D
    .New
      .Dialog
        .Form(Self)
          .MessageText('Your message here')
            .MainButtonText('Yes')
            .MainButtonProcess(FirstResponseProcedure)
            .AuxiliaryButtonText('No')
            .AuxiliaryButtonProcess(SecondResponseProcedure)
        .ExecuteDialogQuestion
      .&End;
end;

procedure TPageView1.DialogSuccessOne;
begin
  lblResponse.Text:= EmptyStr;
  TRICK4D
    .New
      .Dialog
        .Form(Self)
          .MessageText('Your message here')
          .ExecuteDialogSuccess
      .&End
end;

procedure TPageView1.DialogSuccessTwo;
begin
  lblResponse.Text:= EmptyStr;
  TRICK4D
    .New
      .Dialog
        .Form(Self)
          .MessageText('Your message here')
            .MainButtonText('Yes')
            .MainButtonProcess(FirstResponseProcedure)
            .AuxiliaryButtonText('No')
            .AuxiliaryButtonProcess(SecondResponseProcedure)
        .ExecuteDialogSuccess
      .&End;

end;

procedure TPageView1.DialogWarningOne;
begin
  lblResponse.Text:= EmptyStr;
  TRICK4D
    .New
      .Dialog
        .Form(Self)
          .MessageText('Your message here')
          .ExecuteDialogWarnig
      .&End
end;

procedure TPageView1.DialogWarningTwo;
begin
  lblResponse.Text:= EmptyStr;

  TRICK4D
    .New
      .Dialog
        .Form(Self)
          .MessageText('Your message here')
            .MainButtonText('Yes')
            .MainButtonProcess(FirstResponseProcedure)
            .AuxiliaryButtonText('No')
            .AuxiliaryButtonProcess(SecondResponseProcedure)
        .ExecuteDialogWarnig
      .&End;

end;

procedure TPageView1.FirstResponseProcedure(Sender: TObject);
begin
  lblResponse.Text:= 'First Response Procedure';
end;

procedure TPageView1.FormCreate(Sender: TObject);
begin
  inherited;
  lblResponse.Text:= EmptyStr;

end;

procedure TPageView1.SecondResponseProcedure(Sender: TObject);
begin
  lblResponse.Text:= 'Second Response Procedure';
end;

procedure TPageView1.btnQuestionClick(Sender: TObject);
begin
  inherited;
{$IFDEF MSWINDOWS}
  DialogQuestion;
{$ENDIF}
end;

procedure TPageView1.btnQuestionTap(Sender: TObject; const Point: TPointF);
begin
  inherited;
{$IFNDEF MSWINDOWS}
  DialogQuestion;
{$ENDIF}

end;

procedure TPageView1.btnCustomTap(Sender: TObject; const Point: TPointF);
begin
  inherited;
{$IFNDEF MSWINDOWS}
  DialogCustom;
{$ENDIF}

end;

procedure TPageView1.btnErrorOneClick(Sender: TObject);
begin
  inherited;
{$IFDEF MSWINDOWS}
  DialogErrorOne;
{$ENDIF}

end;

procedure TPageView1.btnErrorOneTap(Sender: TObject; const Point: TPointF);
begin
  inherited;
{$IFNDEF MSWINDOWS}
  DialogErrorOne;
{$ENDIF}

end;

procedure TPageView1.btnErrorTwoClick(Sender: TObject);
begin
  inherited;
{$IFDEF MSWINDOWS}
  DialogErrorTwo;
{$ENDIF}

end;

procedure TPageView1.btnErrorTwoTap(Sender: TObject; const Point: TPointF);
begin
  inherited;
{$IFNDEF MSWINDOWS}
  DialogErrorTwo;
{$ENDIF}

end;

procedure TPageView1.btnSuccessOneClick(Sender: TObject);
begin
  inherited;
{$IFDEF MSWINDOWS}
  DialogSuccessOne;
{$ENDIF}
end;

procedure TPageView1.btnSuccessOneTap(Sender: TObject; const Point: TPointF);
begin
  inherited;
{$IFNDEF MSWINDOWS}
  DialogSuccessOne;
{$ENDIF}
end;

procedure TPageView1.btnSuccessTwoClick(Sender: TObject);
begin
  inherited;
{$IFDEF MSWINDOWS}
  DialogSuccessTwo;
{$ENDIF}

end;

procedure TPageView1.btnSuccessTwoTap(Sender: TObject; const Point: TPointF);
begin
  inherited;
{$IFNDEF MSWINDOWS}
  DialogSuccessTwo;
{$ENDIF}

end;

procedure TPageView1.btnWarningOneClick(Sender: TObject);
begin
  inherited;
{$IFDEF MSWINDOWS}
  DialogWarningOne;
{$ENDIF}

end;

procedure TPageView1.btnWarningOneTap(Sender: TObject; const Point: TPointF);
begin
  inherited;
{$IFNDEF MSWINDOWS}
  DialogWarningOne;
{$ENDIF}

end;

procedure TPageView1.btnWarningTwoClick(Sender: TObject);
begin
  inherited;
{$IFDEF MSWINDOWS}
  DialogWarningTwo;
{$ENDIF}

end;

procedure TPageView1.btnWarningTwoTap(Sender: TObject; const Point: TPointF);
begin
  inherited;
{$IFNDEF MSWINDOWS}
  DialogWarningTwo;
{$ENDIF}

end;

end.
