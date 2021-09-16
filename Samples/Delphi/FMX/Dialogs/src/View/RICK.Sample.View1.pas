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
        .CustomMain
          .Background
            .Opacity(0.7)
            .Color(TAlphaColorRec.Blue)
          .&End
        .&End
        .CustomDialog
          .Background
            .Color(TAlphaColorRec.White)
          .&End
          .Rectangle
            .Width(Self.Width - 60)
            .Height(Self.Height - 120)
          .&End
          .Icon
            .Color(TAlphaColorRec.Coral)
          .&End
          .Title
            .Text('Question')
            .FontSize(24)
            .FontColor(TAlphaColorRec.Black)
          .&End
          .Info
            .Text('The policy of the War on Terror, undertaken by the United States at the beginning of the 21st century, culminated in one of the most important recent geopolitical conflicts. This conflict has become known as the')
            .FontSize(12)
            .FontColor(TAlphaColorRec.Darkcyan)
          .&End
          .Button
            .First
              .Color(TAlphaColorRec.Darkgray)
              .Text('Afghan War')
              .FontSize(14)
              .FontColor(TAlphaColorRec.White)
              .Process(FirstResponseProcedure)
            .&End
            .Second
              .Color(TAlphaColorRec.Darkgray)
              .Text('Syria''s War')
              .FontSize(14)
              .FontColor(TAlphaColorRec.White)
              .Process(SecondResponseProcedure)
            .&End
          .&End
          .Execute
            .Question
          .&End
        .&End
      .&End;
end;

procedure TPageView1.DialogErrorOne;
begin
  lblResponse.Text:= EmptyStr;

  TRICK4D
    .New
      .Dialog
        .CustomDialog
          .Info
            .Text('Your message here')
          .&End
          .Execute
            .Error
          .&End
        .&End
      .&End

end;

procedure TPageView1.DialogErrorTwo;
begin
  lblResponse.Text:= EmptyStr;

  TRICK4D
    .New
      .Dialog
        .CustomDialog
          .Info
            .Text('Your message here')
          .&End
          .Button
            .First
              .Text('Yes')
              .Process(FirstResponseProcedure)
            .&End
            .Second
              .Text('No')
              .Process(SecondResponseProcedure)
            .&End
          .&End
          .Execute
            .Error
          .&End
        .&End
      .&End

end;

procedure TPageView1.DialogInfoOne;
begin
  lblResponse.Text:= EmptyStr;

  TRICK4D
    .New
      .Dialog
        .CustomDialog
          .Info
            .Text('Your message here')
          .&End
          .Execute
            .Info
          .&End
        .&End
      .&End
end;

procedure TPageView1.DialogInfoTwo;
begin
  lblResponse.Text:= EmptyStr;

  TRICK4D
    .New
      .Dialog
        .CustomDialog
          .Info
            .Text('Your message here')
          .&End
          .Button
            .First
              .Text('Yes')
              .Process(FirstResponseProcedure)
            .&End
            .Second
              .Text('No')
              .Process(SecondResponseProcedure)
            .&End
          .&End
          .Execute
            .Info
          .&End
        .&End
      .&End
end;

procedure TPageView1.DialogInterface;
var
  LRICK4D: iRICK4D;
begin
  lblResponse.Text:= EmptyStr;

  LRICK4D:= TRICK4D.New;

  //Customizing Background
  LRICK4D.Dialog
    .CustomMain
      .Background
        .Opacity(0.7)
        .Color(TAlphaColorRec.Blue)
      .&End
    .&End;

  //Customizing the Message Window Background
  LRICK4D.Dialog
    .CustomDialog
      .Background
        .Color(TAlphaColorRec.White)
      .&End
    .&End;

  //Customizing the Message Window
  LRICK4D.Dialog
    .CustomDialog
      .Rectangle
        .Width(Self.Width - 60)
        .Height(Self.Height - 120)
      .&End
    .&End;


  //Customizing Icon
  LRICK4D.Dialog
    .CustomDialog
      .Icon
        .Color(TAlphaColorRec.Coral)
      .&End
    .&End;

  //Customizing Title
  LRICK4D.Dialog
    .CustomDialog
      .Title
        .Text('Question')
        .FontSize(24)
        .FontColor(TAlphaColorRec.Black)
      .&End
    .&End;

  //Customizing message
  LRICK4D.Dialog
    .CustomDialog
      .Info
        .Text('The policy of the War on Terror, undertaken by the United States at the beginning of the 21st century, culminated in one of the most important recent geopolitical conflicts. This conflict has become known as the')
        .FontSize(12)
        .FontColor(TAlphaColorRec.Darkcyan)
      .&End
    .&End;

  //Customizing the First Button
  LRICK4D.Dialog
    .CustomDialog
      .Button
        .First
          .Color(TAlphaColorRec.Darkgray)
          .Text('Afghan War')
          .FontSize(14)
          .FontColor(TAlphaColorRec.White)
          .Process(FirstResponseProcedure)
        .&End
    .&End;

  //Customizing the Second Button
  LRICK4D.Dialog
    .CustomDialog
      .Button
        .Second
          .Color(TAlphaColorRec.Darkgray)
          .Text('Syria''s War')
          .FontSize(14)
          .FontColor(TAlphaColorRec.White)
          .Process(SecondResponseProcedure)
        .&End
      .&End
    .&End;

  //Display screen
  LRICK4D.Dialog
    .CustomDialog
      .Execute
        .Question
      .&End
    .&End;

end;

procedure TPageView1.DialogQuestion;
begin
  lblResponse.Text:= EmptyStr;

  TRICK4D
    .New
      .Dialog
        .CustomDialog
          .Info
            .Text('Your message here')
          .&End
          .Button
            .First
              .Process(FirstResponseProcedure)
            .&End
            .Second
              .Process(SecondResponseProcedure)
            .&End
          .&End
          .Execute
            .Question
          .&End
        .&End
      .&End;
end;

procedure TPageView1.DialogSuccessOne;
begin
  lblResponse.Text:= EmptyStr;

  TRICK4D
    .New
      .Dialog
        .CustomDialog
          .Info
            .Text('Your message here')
          .&End
          .Execute
            .Success
          .&End
        .&End
      .&End

end;

procedure TPageView1.DialogSuccessTwo;
begin
  lblResponse.Text:= EmptyStr;

  TRICK4D
    .New
      .Dialog
        .CustomDialog
          .Info
            .Text('Your message here')
          .&End
          .Button
            .First
              .Text('Yes')
              .Process(FirstResponseProcedure)
            .&End
            .Second
              .Text('No')
              .Process(SecondResponseProcedure)
            .&End
          .&End
          .Execute
            .Success
          .&End
        .&End
      .&End

end;

procedure TPageView1.DialogWarningOne;
begin
  lblResponse.Text:= EmptyStr;

  TRICK4D
    .New
      .Dialog
        .CustomDialog
          .Info
            .Text('Your message here')
          .&End
          .Execute
            .Warnig
          .&End
        .&End
      .&End

end;

procedure TPageView1.DialogWarningTwo;
begin
  lblResponse.Text:= EmptyStr;

  TRICK4D
    .New
      .Dialog
        .CustomDialog
          .Info
            .Text('Your message here')
          .&End
          .Button
            .First
              .Text('Yes')
              .Process(FirstResponseProcedure)
            .&End
            .Second
              .Text('No')
              .Process(SecondResponseProcedure)
            .&End
          .&End
          .Execute
            .Warnig
          .&End
        .&End
      .&End

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
