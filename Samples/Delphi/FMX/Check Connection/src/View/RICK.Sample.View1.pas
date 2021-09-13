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

  RICK.Sample.Base, FMX.Edit;

type
  TPageView1 = class(TPageBase)
    btTestLink: TSpeedButton;
    btnCheckConnection: TSpeedButton;
    GridPanelLayout: TGridPanelLayout;
    btConnectionType: TSpeedButton;
    edtTestLink: TEdit;
    lnTestLink: TLine;
    lblConn: TLabel;
    procedure btTestLinkClick(Sender: TObject);
    procedure btnCheckConnectionClick(Sender: TObject);
    procedure btConnectionTypeClick(Sender: TObject);

  end;

var
  PageView1: TPageView1;

implementation

uses
  RICK4D,
  RICK4D.Interfaces;

{$R *.fmx}



procedure TPageView1.btConnectionTypeClick(Sender: TObject);
begin
  inherited;
  lblConn.Text:= TRICK4D.New.CheckConnection.ConnectionType;
end;

procedure TPageView1.btnCheckConnectionClick(Sender: TObject);
var
  LRICK4D: iRICK4D;
begin
  inherited;
  lblConn.Text:= 'Agurade....';
  lblConn.TextSettings.FontColor:= $FF65A6D5;

  LRICK4D:= TRICK4D.New;

  if not LRICK4D.CheckConnection.ConnectionState then
    Self.Fill.Color:= TAlphaColorRec.Red;

  lblConn.Text:= LRICK4D.CheckConnection.ConnectionType;
end;

procedure TPageView1.btTestLinkClick(Sender: TObject);
var
  LRICK4D: iRICK4D;
begin
  inherited;
  lblConn.Text:= 'Agurade....';
  lblConn.TextSettings.FontColor:= $FF65A6D5;

  LRICK4D:= TRICK4D.New;
  LRICK4D.CheckConnection.ClearURL.URL(edtTestLink.Text);
  LRICK4D.CheckConnection.ClearStausCode.StatusCode(200); //Status Code Defualt 400

  if not LRICK4D.CheckConnection.URLState then
    lblConn.TextSettings.FontColor:= TAlphaColorRec.Red;

  lblConn.Text:= LRICK4D.CheckConnection.ConnectionType;
end;

end.
