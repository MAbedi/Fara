unit BudgetInterface;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, Grids, DBGrids, DBCtrls, ComCtrls, Mask;

type
  TBudgetInterfaceF = class(Ttemplate2MDIF)
    Panel1: TPanel;
    Panel4: TPanel;
    DBGrid1: TDBGrid;
    qryBudgect: TADOQuery;
    srcBudgect: TDataSource;
    qryBudgectInterfaceID: TIntegerField;
    qryBudgectInterfaceCaption_L1: TStringField;
    qryBudgectInterfaceCaption_L2: TStringField;
    qryBudgectHasReload: TWordField;
    qryBudgectReloadInterfaceID: TStringField;
    qryBudgectBudgetEffect: TWordField;
    qryBudgectBedVisible: TWordField;
    qryBudgectBesVisible: TWordField;
    qryBudgectHasDoc: TWordField;
    qryBudgectAccBedType: TWordField;
    qryBudgectAccBesType: TWordField;
    qryBudgectAcc_RelateShowKind: TWordField;
    qryBudgectAmountActive: TWordField;
    qryBudgectWeightActive: TWordField;
    qryBudgectReportFilename: TStringField;
    qryBudgectFormFooter_L1: TStringField;
    qryBudgectFormFooter_L2: TStringField;
    qryBudgectNote_L1: TStringField;
    qryBudgectNote_L2: TStringField;
    qryBudgectCustomerVisible: TWordField;
    qryBudgectCustGroups: TStringField;
    Panel_l2: TPanel;
    Panel_l1: TPanel;
    Panel7: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    CheckReload: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    Label5: TLabel;
    ComboBudgetEffect: TDBComboBox;
    DBCheckBox4: TDBCheckBox;
    Label6: TLabel;
    ComboBoxAccBedType: TDBComboBox;
    Label7: TLabel;
    ComboBoxAccBesType: TDBComboBox;
    Label8: TLabel;
    ComboBoxAcc_RelateShowKind: TDBComboBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    Label9: TLabel;
    editprint: TDBEdit;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    DBMemo1: TDBMemo;
    DBMemo2: TDBMemo;
    BitBtn2: TBitBtn;
    Label15: TLabel;
    btnSort: TButton;
    btnSersh: TButton;
    newPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    actSort: TAction;
    actExcel: TAction;
    OpenDialog1: TOpenDialog;
    DBMemo3: TDBMemo;
    DBMemo4: TDBMemo;
    GroupReload: TGroupBox;
    DBEdit4: TDBEdit;
    BitBtn1: TBitBtn;
    Button1: TButton;
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure srcBudgectStateChange(Sender: TObject);
    procedure qryBudgectAfterInsert(DataSet: TDataSet);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qryBudgectAccBedTypeGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qryBudgectAccBedTypeSetText(Sender: TField;
      const Text: String);
    procedure qryBudgectAccBesTypeGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qryBudgectAccBesTypeSetText(Sender: TField;
      const Text: String);
    procedure qryBudgectAcc_RelateShowKindSetText(Sender: TField;
      const Text: String);
    procedure qryBudgectAcc_RelateShowKindGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure qryBudgectBudgetEffectGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure qryBudgectBudgetEffectSetText(Sender: TField;
      const Text: String);
    procedure BitBtn2Click(Sender: TObject);
    procedure qryBudgectBeforePost(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure qryBudgectBeforeDelete(DataSet: TDataSet);
    procedure qryBudgectAfterDelete(DataSet: TDataSet);
    procedure CheckReloadClick(Sender: TObject);
    procedure qryBudgectAfterScroll(DataSet: TDataSet);
    procedure qryBudgectAfterPost(DataSet: TDataSet);
    procedure actExcelExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BudgetInterfaceF: TBudgetInterfaceF;

implementation

uses Dm,GlobalPro, search2, sort2, ChooseItem, ChooseItems,mmessage;

{$R *.dfm}

procedure TBudgetInterfaceF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryBudgect);
end;

procedure TBudgetInterfaceF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryBudgect);
end;

procedure TBudgetInterfaceF.srcBudgectStateChange(Sender: TObject);
begin
  inherited;
   okPanel.Visible:=qryBudgect.State in dsEditModes;
   newPanel.Visible:=not okPanel.Visible;
   BtnReject.Cancel:=newPanel.Visible;
   FreeReservedCodes(Dmf.adcAccounting);
end;

procedure TBudgetInterfaceF.qryBudgectAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('InterfaceID').AsInteger:=GetANewCode('dbo.BudgetInterfaces','InterfaceID',Dmf.adcAccounting);
  
end;

procedure TBudgetInterfaceF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1,1,false);
end;

procedure TBudgetInterfaceF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TBudgetInterfaceF.FormCreate(Sender: TObject);
begin
  inherited;
  qryBudgect.Active:=true;
end;

procedure TBudgetInterfaceF.qryBudgectAccBedTypeGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  case sender.AsInteger  of
    0: text:='‰œ«—œ';
    1: text:='master  »— «”«” ﬂœÌ‰ê »ÊœÃÂ';
    2: text:='details  »— «”«” ﬂœÌê »ÊœÃÂ';
    3: text:='master  «ÿ·«⁄«  Õ”«»œ«—Ì';
    4: text:='details  «ÿ·«⁄«  Õ”«»œ«—Ì';
  end;
end;

procedure TBudgetInterfaceF.qryBudgectAccBedTypeSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsInteger:=integer(ComboBoxAccBedType.ItemIndex);
end;

procedure TBudgetInterfaceF.qryBudgectAccBesTypeGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  case sender.AsInteger  of
    0: text:='‰œ«—œ';
    1: text:='master  »— «”«” ﬂœÌ‰ê »ÊœÃÂ';
    2: text:='details  »— «”«” ﬂœÌê »ÊœÃÂ';
    3: text:='master  «ÿ·«⁄«  Õ”«»œ«—Ì';
    4: text:='details  «ÿ·«⁄«  Õ”«»œ«—Ì';
  end;
end;

procedure TBudgetInterfaceF.qryBudgectAccBesTypeSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsInteger:=integer(ComboBoxAccBesType.ItemIndex);
end;

procedure TBudgetInterfaceF.qryBudgectAcc_RelateShowKindSetText(
  Sender: TField; const Text: String);
begin
  Sender.AsInteger:=integer(ComboBoxAcc_RelateShowKind.ItemIndex);

end;

procedure TBudgetInterfaceF.qryBudgectAcc_RelateShowKindGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  case sender.AsInteger  of
    0: text:='‰œ«—œ';
    1: text:='master';
    2: text:='details';
  end;

end;

procedure TBudgetInterfaceF.qryBudgectBudgetEffectGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  case sender.AsInteger  of
    0: text:='»Ì  «ÀÌ—';
    1: text:='„ÊÀ— »— »ÊœÃÂ';
    2: text:='„ÊÀ— »—  ⁄Âœ« ';
  end;

end;

procedure TBudgetInterfaceF.qryBudgectBudgetEffectSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsInteger:=integer(ComboBudgetEffect.ItemIndex);  

end;

procedure TBudgetInterfaceF.BitBtn2Click(Sender: TObject);
begin
  inherited;
  with OpenDialog1 do begin
    InitialDir:=IncludeTrailingBackslash(ExtractFilePath(ParamStr(0))+'Report');

  if OpenDialog1.Execute then begin
   if not (qryBudgect.State in [dsedit]) then qryBudgect.Edit;
   qryBudgectReportFilename.AsString:=ExtractFileName(OpenDialog1.FileName);
  end;
  end;
end;

procedure TBudgetInterfaceF.qryBudgectBeforePost(DataSet: TDataSet);
begin
  inherited;
  if not CheckRequiredFields(qryBudgect) then begin
    Abort;
    exit;
  end;//if
end;

procedure TBudgetInterfaceF.BitBtn1Click(Sender: TObject);
var
   ts:TStringList;
   s,id:String;
   i:Integer;
begin
  inherited;
  ts:=TStringList.Create;
  try
     s:=qryBudgect.fieldbyname('ReloadInterfaceID').AsString;
     id:=qryBudgect.fieldbyname('InterfaceID').AsString;
    if ChooseItemsF.SelectChecks(s,id,'InterfaceID','InterfaceCaption_L1','InterfaceCaption_L2','BudgetInterfaces','') then begin
      ts.Text:=StringReplace(s,',',#13,[rfReplaceAll]);
    end;//if
  finally
    ts.Free;
    qryBudgect.Requery;
  end;//try

end;

procedure TBudgetInterfaceF.qryBudgectBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('¬Ì« »—«Ì Õ–› «Ì‰ ﬂœ „ÿ„∆‰ Â” Ìœø')<>mrYes then Abort;
end;

procedure TBudgetInterfaceF.qryBudgectAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('Õ–› ‘œ.',1);
end;

procedure TBudgetInterfaceF.CheckReloadClick(Sender: TObject);
begin
  inherited;
  GroupReload.Visible:=CheckReload.Checked;  
end;

procedure TBudgetInterfaceF.qryBudgectAfterScroll(DataSet: TDataSet);
begin
  inherited;
  GroupReload.Visible:=CheckReload.Checked; 
end;

procedure TBudgetInterfaceF.qryBudgectAfterPost(DataSet: TDataSet);
begin
  inherited;
   BigMessage('À»‹  ‘œ.',1);
end;

procedure TBudgetInterfaceF.actExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(qryBudgect);
end;

end.
