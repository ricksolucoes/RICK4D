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
  TOperation = (Input, Output);

  TPageView1 = class(TPageBase)
    LayoutHTTP: TLayout;
    lblResponse: TLabel;
    btnGet: TSpeedButton;
    btnDelete: TSpeedButton;
    btnPost: TSpeedButton;
    btnPut: TSpeedButton;
    btnPatch: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure btnGetClick(Sender: TObject);
    procedure btnGetTap(Sender: TObject; const Point: TPointF);
    procedure btnPostClick(Sender: TObject);
    procedure btnPostTap(Sender: TObject; const Point: TPointF);
    procedure btnPutClick(Sender: TObject);
    procedure btnPutTap(Sender: TObject; const Point: TPointF);
    procedure btnPatchClick(Sender: TObject);
    procedure btnPatchTap(Sender: TObject; const Point: TPointF);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnDeleteTap(Sender: TObject; const Point: TPointF);
  private
    procedure SetScreenComponent(Operation: TOperation);
    procedure Get;
    procedure Post;
    procedure Put;
    procedure Patch;
    procedure Delete;
  end;

var
  PageView1: TPageView1;

implementation

uses
  RICK4D,
  RICK4D.Contract;

{$R *.fmx}

procedure TPageView1.SetScreenComponent(Operation: TOperation);
begin
  case Operation of
    TOperation.Input:
      begin
        lblResponse.Visible := False;
        LayoutHTTP.Align := TAlignLayout.Center;
      end;
    TOperation.Output:
      begin
        lblResponse.Text:= EmptyStr;
        LayoutHTTP.Align := TAlignLayout.Top;
        lblResponse.Visible := True;
      end;
  end;
end;

procedure TPageView1.btnDeleteClick(Sender: TObject);
begin
  inherited;
{$IFDEF MSWINDOWS}
  Delete;
{$ENDIF}

end;

procedure TPageView1.btnDeleteTap(Sender: TObject; const Point: TPointF);
begin
  inherited;
{$IFNDEF MSWINDOWS}
  Delete;
{$ENDIF}

end;

procedure TPageView1.btnGetClick(Sender: TObject);
begin
  inherited;
{$IFDEF MSWINDOWS}
  Get;
{$ENDIF}
end;

procedure TPageView1.btnGetTap(Sender: TObject; const Point: TPointF);
begin
  inherited;
{$IFNDEF MSWINDOWS}
  Get;
{$ENDIF}

end;

procedure TPageView1.btnPatchClick(Sender: TObject);
begin
  inherited;
{$IFDEF MSWINDOWS}
  Patch;
{$ENDIF}

end;

procedure TPageView1.btnPatchTap(Sender: TObject; const Point: TPointF);
begin
  inherited;
{$IFNDEF MSWINDOWS}
  Patch;
{$ENDIF}

end;

procedure TPageView1.btnPostClick(Sender: TObject);
begin
  inherited;
{$IFDEF MSWINDOWS}
  Post;
{$ENDIF}

end;

procedure TPageView1.btnPostTap(Sender: TObject; const Point: TPointF);
begin
  inherited;
{$IFNDEF MSWINDOWS}
  Post;
{$ENDIF}

end;

procedure TPageView1.btnPutClick(Sender: TObject);
begin
  inherited;
{$IFDEF MSWINDOWS}
  Put;
{$ENDIF}

end;

procedure TPageView1.btnPutTap(Sender: TObject; const Point: TPointF);
begin
  inherited;
{$IFNDEF MSWINDOWS}
  Put;
{$ENDIF}

end;

procedure TPageView1.Delete;
var
  LResponse: IResponse;
begin
  SetScreenComponent(TOperation.Input);

  LResponse:= TRICK4D.New
    .Rest
      .BaseURL('http://localhost:8888/people/1')
      .Accept('application/json')
    .Delete;

end;

procedure TPageView1.FormCreate(Sender: TObject);
begin
  inherited;
  SetScreenComponent(TOperation.Input);
end;

procedure TPageView1.Get;
var
  LResponse: IResponse;
begin
  SetScreenComponent(TOperation.Output);

  LResponse:= TRICK4D.New
    .Rest
      .BaseURL('http://localhost:8888/people')
      .AddHeader('HeaderName', 'HeaderValue')
      .AddParam('ParameterName', 'ParameterValue')
      .Accept('application/json')
    .Get;

  if LResponse.StatusCode = 200 then
    lblResponse.Text:= LResponse.Content;
end;

procedure TPageView1.Patch;
var
  LResponse: IResponse;
begin
  SetScreenComponent(TOperation.Input);

  LResponse:= TRICK4D.New
    .Rest
      .BaseURL('http://localhost:8888/people/1')
      .Accept('application/json')
      .AddBody('{"name":"Rick","lastName":"Soluções"}')
    .Patch;

end;

procedure TPageView1.Post;
var
  LResponse: IResponse;
begin
  SetScreenComponent(TOperation.Input);

  LResponse:= TRICK4D.New
    .Rest
      .BaseURL('http://localhost:8888/people')
      .Accept('application/json')
      .AddBody('{"name":"Rick","lastName":"Soluções"}')
    .Post;

end;

procedure TPageView1.Put;
var
  LResponse: IResponse;
begin
  SetScreenComponent(TOperation.Input);

  LResponse:= TRICK4D.New
    .Rest
      .BaseURL('http://localhost:8888/people/1')
      .Accept('application/json')
      .AddBody('{"name":"Rick","lastName":"Soluções"}')
    .Put;

end;

end.
