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
    lytExecute: TLayout;
    btExecute: TSpeedButton;
    ListView: TListView;
    recInformation: TRectangle;
    lblTitleInformation: TLabel;
    recTranslate: TRectangle;
    Switch: TSwitch;
    lblTranslate: TLabel;
    lblInformation: TLabel;
    lblResult: TLabel;
    lytInputData: TLayout;
    edtData: TEdit;
    lnData: TLine;
    lblData: TLabel;
    recList: TRectangle;
    procedure FormCreate(Sender: TObject);
    procedure LoadingListView;
    procedure SwitchClick(Sender: TObject);
    procedure ListViewItemClick(const Sender: TObject;
      const AItem: TListViewItem);
    procedure btExecuteClick(Sender: TObject);
  end;

var
  PageView1: TPageView1;

implementation

uses
  RICK4D,
  RICK4D.Interfaces;

{$R *.fmx}

procedure TPageView1.btExecuteClick(Sender: TObject);
var
  LRICK4D: iRICK4D;
begin
  inherited;
  LRICK4D := TRICK4D.New;

  case ListView.ItemIndex of
    0:
      if LRICK4D.Librarys.StringInSet(edtData.Text.ToLower, ['ok', 'cancel']) then
      begin
        if Switch.IsChecked then
          lblResult.Text:= Format('Existe %s', [edtData.Text])  
        else
          lblResult.Text:= Format('There is %s', [edtData.Text]);
      end
      else
      begin
        if Switch.IsChecked then
          lblResult.Text:= Format('Não Existe %s', [edtData.Text])  
        else
          lblResult.Text:= Format('Does Not Exist %s', [edtData.Text]);

      end;
    1:
      lblResult.Text:= LRICK4D.Librarys.OnlyNumber(edtData.Text);
    2:
      lblResult.Text:= LRICK4D.Librarys.Mask('###-###', edtData.Text);
    3:
      lblResult.Text:= LRICK4D.Librarys.IEFormat(edtData.Text, 'RJ');
    4:
      lblResult.Text:= LRICK4D.Librarys.FormatValue(edtData.Text);
    5:
      lblResult.Text:= LRICK4D.Librarys.FormatDate(edtData.Text);
    6:
      lblResult.Text:= LRICK4D.Librarys.FormatPeso(edtData.Text);
  end;

  lblResult.Visible:= True;
end;

procedure TPageView1.FormCreate(Sender: TObject);
begin
  inherited;
  LoadingListView;
end;

procedure TPageView1.ListViewItemClick(const Sender: TObject;
  const AItem: TListViewItem);
begin
  inherited;
  lytExecute.Visible:= False;
  lytInputData.Visible:= False;
  recInformation.Visible:= False;
  lblResult.Text:= EmptyStr;
  lblResult.Visible:= False;

  case AItem.Index of
    0: edtData.Text:= 'OK';
    1: edtData.Text:= '456OK123';
    2: edtData.Text:= '123OK232';
    3: edtData.Text:= '12312313';
    4: edtData.Text:= '123123232123';
    5: edtData.Text:= '31122100';
    6: edtData.Text:= '233821';
  end;
  
  if AItem.Index > -1 then
  begin  
    lytExecute.Visible:= True;
    lytInputData.Visible:= True;
    TRICK4D.New.Librarys.DelayedSetFocus(edtData); //Dealy on Focus
  end;

  if AItem.Index = 0 then
  begin
    recInformation.Align:= TAlignLayout.Top;
    recInformation.Visible:= True;
    recInformation.Align:= TAlignLayout.Bottom;
  end;

end;

procedure TPageView1.LoadingListView;
begin
  ListView.Items.Clear;
  if Switch.IsChecked = True then
  begin
    lblTranslate.Text:= 'Traduzir para o Inglês';
    lblInformation.Text:= 'A lista de teste contém as palavras: "OK" e "Cancel"';
    lblTitleInformation.Text:= 'Informação';
    ListView.Items.Add.Text:= 'Localizar na Lista';
    ListView.Items.Add.Text:= 'Somente Número';
    ListView.Items.Add.Text:= 'Mascara';
    ListView.Items.Add.Text:= 'Formatar IE';
    ListView.Items.Add.Text:= 'Formatar Valor';
    ListView.Items.Add.Text:= 'Formatar Data';
    ListView.Items.Add.Text:= 'Formatar Peso';
    ListView.Items.Add.Text:= 'Dealy no Focus';
    lblData.Text:= 'Informar dados:';
      
  end
  else
  begin
    lblTranslate.Text:= 'Translate to Brazilian Portuguese';
    lblTitleInformation.Text:= 'Information';
    lblInformation.Text:=  'The test list contains the words: "OK" and "Cancel';
    lblData.Text:= 'Inform Data:';
    ListView.Items.Add.Text:= 'Locate in List';
    ListView.Items.Add.Text:= 'Number Only';
    ListView.Items.Add.Text:= 'Mask';
    ListView.Items.Add.Text:= 'Formatting IE';
    ListView.Items.Add.Text:= 'Formatting Value';
    ListView.Items.Add.Text:= 'Formatting Date';
    ListView.Items.Add.Text:= 'Formatting Weight';
    ListView.Items.Add.Text:= 'Dealy on Focus';
  end;
end;

procedure TPageView1.SwitchClick(Sender: TObject);
begin
  inherited;
  LoadingListView;
  btExecuteClick(Sender);
  
end;

end.
