unit RICK.Sample.View1;

interface

uses
  FMX.Ani,
  FMX.Edit,
  FMX.Forms,
  FMX.Types,
  FMX.Dialogs,
  FMX.Effects,
  FMX.Layouts,
  FMX.Objects,
  FMX.ListView, 
  FMX.StdCtrls,
  FMX.Controls, 
  FMX.ListView.Types, 
  FMX.ListView.Appearances,
  FMX.Controls.Presentation,
  FMX.ListView.Adapters.Base, 

  System.Classes,
  System.UITypes,
  System.SysUtils,

  RICK.Sample.Base;

type
  TPageView1 = class(TPageBase)
    ListView: TListView;
    recTranslate: TRectangle;
    Switch: TSwitch;
    lblTranslate: TLabel;
    lytInputData: TLayout;
    edtData: TEdit;
    lnData: TLine;
    lblData: TLabel;
    recList: TRectangle;
    procedure FormCreate(Sender: TObject);
    procedure LoadingListView;
    procedure SwitchClick(Sender: TObject);
    procedure edtDataTyping(Sender: TObject);
    procedure ListViewClick(Sender: TObject);
  end;

var
  PageView1: TPageView1;

implementation

uses
  RICK4D,
  RICK4D.Interfaces;

{$R *.fmx}

procedure TPageView1.edtDataTyping(Sender: TObject);
var
  LRICK4D: iRICK4D;
begin
  LRICK4D:= TRICK4D.New;
  inherited;
  case ListView.ItemIndex of
    0 : LRICK4D.Format.LandlinePhone(Sender);
    1 : LRICK4D.Format.Mobile(Sender);
    2 : LRICK4D.Format.CNPJ(Sender);
    3 : LRICK4D.Format.CPF(Sender);
    4 : LRICK4D.Format.CNPJorCPF(Sender);
    5 : LRICK4D.Format.FormatExtra('rj').StateRegistration(Sender);
    6 : LRICK4D.Format.CurrencyValue(Sender);
    7 : LRICK4D.Format.FormatExtra('R$').CurrencyValue(Sender);
    8 : LRICK4D.Format.ZipCode(Sender);
    9 : LRICK4D.Format.DateValue(Sender);
    10: LRICK4D.Format.Weight(Sender);
    11: LRICK4D.Format.FormatExtra('##.###-###-####>###').Customized(Sender);
  end;
end;

procedure TPageView1.FormCreate(Sender: TObject);
begin
  inherited;
  LoadingListView;
end;

procedure TPageView1.ListViewClick(Sender: TObject);
begin
  inherited;
  edtData.Text:= EmptyStr;
  lytInputData.Visible:= True;
  TRICK4D.New.Librarys.DelayedSetFocus(edtData);

end;

procedure TPageView1.LoadingListView;
begin
  ListView.Items.Clear;
  edtData.Text:= EmptyStr;
  lytInputData.Visible:= False;
  if Switch.IsChecked = True then
  begin
    lblTranslate.Text:= 'Traduzir para o Inglês';
    lblData.Text:= 'Informar dados:';
    ListView.Items.Add.Text:= 'Telefone';
    ListView.Items.Add.Text:= 'Celular';
    ListView.Items.Add.Text:= 'CNPJ';
    ListView.Items.Add.Text:= 'CPF';
    ListView.Items.Add.Text:= 'CPF e CNPJ';
    ListView.Items.Add.Text:= 'Inscrição Estadual';
    ListView.Items.Add.Text:= 'Valor';
    ListView.Items.Add.Text:= 'Moeda';
    ListView.Items.Add.Text:= 'CEP';
    ListView.Items.Add.Text:= 'Data';
    ListView.Items.Add.Text:= 'Peso';
    ListView.Items.Add.Text:= 'Cutomizado';
  end
  else
  begin
    lblTranslate.Text:= 'Translate to Brazilian Portuguese';
    lblData.Text:= 'Inform Data:';
    ListView.Items.Add.Text:= 'Phone';
    ListView.Items.Add.Text:= 'Cell Phone';
    ListView.Items.Add.Text:= 'CNPJ';
    ListView.Items.Add.Text:= 'CPF';
    ListView.Items.Add.Text:= 'CPF and CNPJ';
    ListView.Items.Add.Text:= 'State Registration';
    ListView.Items.Add.Text:= 'Value';
    ListView.Items.Add.Text:= 'Currency';
    ListView.Items.Add.Text:= 'ZIP CODE';
    ListView.Items.Add.Text:= 'Date';
    ListView.Items.Add.Text:= 'Weight';
    ListView.Items.Add.Text:= 'Cutomized';

  end;
end;

procedure TPageView1.SwitchClick(Sender: TObject);
begin
  inherited;
  edtData.Text:= EmptyStr;
  LoadingListView;
end;

end.
