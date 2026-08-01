{ -----------------------------------------------------------------------------
  Unit Name: CustGroups
  Author:    Mahmood
  ----------------------------------------------------------------------------- }
unit CustGroups;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, Mask, DBCtrls, StrUtils,
  ComCtrls, zAPIBalloon, ppDB, ppCtrls, ppBands, ppVar, ppPrnabl, ppClass,
  ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDBPipe, ppParameter,
  ppDesignLayer, System.ImageList, System.Actions, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, CedarDbGrid, Vcl.Menus;

type
  TCustGroupsF = class(Ttemplate2MDIF)
    TabControl1: TTabControl;
    qryGroups: TADOQuery;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    newPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    qryGroupsCustomerGrpID: TIntegerField;
    qryGroupsCustomerGrpName: TStringField;
    qryGroupsStartCode: TIntegerField;
    qryGroupsFinishCode: TIntegerField;
    qryGroupsGroupType: TWordField;
    qryGroups__TopicCodeName: TStringField;
    qryGroups__ChecksTopicCodeName: TStringField;
    qryGroups__ReChecksTCName: TStringField;
    qryGroups__CertifyTCName: TStringField;
    actsendExel: TAction;
    BitBtn9: TBitBtn;
    BitBtn12: TBitBtn;
    actSort: TAction;
    qryGroupsacc_CTopicCode: TStringField;
    qryGroups__CTopicCodeName3: TStringField;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLine2: TppLine;
    ppLabel9: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLabel13: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppLine3: TppLine;
    ppLabel3: TppLabel;
    ppLine1: TppLine;
    ppLabel4: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppLabel19: TppLabel;
    actPrint: TAction;
    BitBtn1: TBitBtn;
    ppLabel5: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    SpeedButton1: TSpeedButton;
    DBText1: TDBText;
    Label9: TLabel;
    SpeedButton5: TSpeedButton;
    DBText5: TDBText;
    DBEdit5: TDBEdit;
    DBEdit9: TDBEdit;
    Panel4: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    EdtStartCode: TDBEdit;
    EdtFinishCode: TDBEdit;
    DBNavigator1: TDBNavigator;
    ppLabel10: TppLabel;
    ppFooterBand1: TppFooterBand;
    ppLine4: TppLine;
    ppLine6: TppLine;
    qryGroupsacc_CTopicCode3: TStringField;
    qryGroups__CTopicCodeName: TStringField;
    Label10: TLabel;
    DBEdit3: TDBEdit;
    SpeedButton6: TSpeedButton;
    DBText6: TDBText;
    BitBtn2: TBitBtn;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    Panel1: TPanel;
    srcGroups: TDataSource;
    qryGroupsacc_CTopicCode2: TStringField;
    qryGroups__CTopicCodeName2: TStringField;
    DBText2: TDBText;
    SpeedButton2: TSpeedButton;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    qryGroupsacc_TopicCode: TLargeintField;
    qryGroupsacc_ChecksTopicCode: TLargeintField;
    qryGroupsacc_CertifyTopicCode: TLargeintField;
    qryGroupsacc_ReChecksTopicCode: TLargeintField;
    qryGroupsSellsTypeCodes: TStringField;
    DBGrid1: TCedarDbgrid;
    pnlSellsTypeCodes: TPanel;
    edtSellsTypeCodes: TDBEdit;
    SpeedButton3: TSpeedButton;
    Label7: TLabel;
    pnlTopic: TPanel;
    Txtacc_ChecksTopicCode: TDBText;
    SBtnacc_ChecksTopicCode: TSpeedButton;
    edtacc_ChecksTopicCode: TDBEdit;
    Lblacc_ChecksTopicCode: TLabel;
    Lbl_ReChecksTopicCode: TLabel;
    Edt_ReChecksTopicCode: TDBEdit;
    Txt_ReChecksTopicCode: TDBText;
    sbn_ReChecksTopicCode: TSpeedButton;
    sbn_CertifyTopicCode: TSpeedButton;
    Edt_CertifyTopicCode: TDBEdit;
    Lbl_CertifyTopicCode: TLabel;
    Txt_CertifyTopicCode: TDBText;
    popGroupType: TPopupMenu;
    MnuAll: TMenuItem;
    N1: TMenuItem;
    procedure qryGroupsAfterDelete(DataSet: TDataSet);
    procedure qryGroupsAfterInsert(DataSet: TDataSet);
    procedure qryGroupsAfterPost(DataSet: TDataSet);
    procedure qryGroupsBeforeDelete(DataSet: TDataSet);
    procedure srcGroupsStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TabControl1Change(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SBtnacc_ChecksTopicCodeClick(Sender: TObject);
    procedure sbn_ReChecksTopicCodeClick(Sender: TObject);
    procedure actsendExelExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure sbn_CertifyTopicCodeClick(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure ppLabel19GetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable1GetText(Sender: TObject; var Text: String);
    procedure ppLabel1GetText(Sender: TObject; var Text: String);
    procedure DBEdit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtacc_ChecksTopicCodeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edt_ReChecksTopicCodeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edt_CertifyTopicCodeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit9KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryGroupsBeforePost(DataSet: TDataSet);
    procedure ppLabel10GetText(Sender: TObject; var Text: String);
    procedure FormResize(Sender: TObject);
    procedure ppLabel6GetText(Sender: TObject; var Text: String);
    procedure ppLabel7GetText(Sender: TObject; var Text: String);
    procedure ppLabel2GetText(Sender: TObject; var Text: String);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure DBEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure actSearch_Execute(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure MnuAllClick(Sender: TObject);
  private
    GroupType: Integer;
    { Private declarations }
    procedure valid;
    function CheckRange: Boolean;
  public
    { Public declarations }
  end;

var
  CustGroupsF: TCustGroupsF;

implementation

uses DM, mmessage, GlobalPro, search2, sort2, FormFunctions, FaraConsts,
  ChooseItem;

{$R *.dfm}

procedure TCustGroupsF.qryGroupsAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('حذف شد.', 1);
  // qryGroups.Requery;
end;

procedure TCustGroupsF.qryGroupsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('CustomerGrpID').AsInteger :=
    GetANewCode(Self.Name, 'CustomersGroup', 'CustomerGrpID', nil);
  DataSet.FieldByName('GroupType').AsInteger := GroupType;
  DataSet.FieldByName('acc_TopicCode').AsInteger := 0;
  DataSet.FieldByName('acc_ChecksTopicCode').AsInteger := 0;
  DataSet.FieldByName('acc_ReChecksTopicCode').AsInteger := 0;
  DataSet.FieldByName('acc_CertifyTopicCode').AsInteger := 0;
  DataSet.FieldByName('acc_CTopicCode').AsInteger := 0;
  DataSet.FieldByName('acc_CTopicCode2').AsInteger := 0;
  DataSet.FieldByName('acc_CTopicCode3').AsInteger := 0;
  DataSet.FieldByName('StartCode').AsInteger := 0;
  DataSet.FieldByName('FinishCode').AsInteger := 0;
  DBEdit2.SetFocus;
end;

procedure TCustGroupsF.qryGroupsAfterPost(DataSet: TDataSet);
begin
  inherited;
  BigMessage('ثبت شد.', 1);
end;

procedure TCustGroupsF.qryGroupsBeforeDelete(DataSet: TDataSet);
var
  canDel: Boolean;
begin
  inherited;
  with DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text :=
      'SELECT COUNT(CustomerGrpID)FROM Customers WHERE CustomerGrpID =' +
      qryGroupsCustomerGrpID.AsString;
    Active := True;
    canDel := Fields[0].AsInteger = 0;
    Active := False;
  end; // with
  if canDel then
  begin
    if get_response('آيا براي حذف اين ' + TabControl1.Tabs[TabControl1.TabIndex]
      + ' مطمئن هستيد؟') <> mrYes then
      Abort;
  end
  else
  begin
    Warn('حذف اين ' + TabControl1.Tabs[TabControl1.TabIndex] + ' مجاز نيست.');
    Abort;
  end; // else
end;

procedure TCustGroupsF.srcGroupsStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qryGroups.State in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
  FreeReservedCodes(DMf.adcBSell, '', '', Self.Name);
end;

procedure TCustGroupsF.FormCreate(Sender: TObject);
var
  i: Integer;
  NewItem: TMenuItem;
begin
  inherited;
  DMf.adcAccounting.Connected := True;
  getCustGroupsNames(TabControl1.Tabs, False);
  case var_glb_gParam of
    0:
      Caption := 'گروه بندي مشتريان ، حسابها و طرف حسابها ';
    1:
      Caption := 'گروه بندی خریداران ';
    2:
      Caption := 'گروه بندي تحويل دهنده /گيرنده';
  end; //
  TabControl1Change(TabControl1);

  for i := 0 to High(CustGroupsNames) do
  begin
    NewItem := TMenuItem.Create(Self);
    NewItem.Caption := CustGroupsNames[i];
    NewItem.Tag := i;
    NewItem.OnClick := MnuAllClick;
    MnuAll.Add(NewItem);
  end;

end;

procedure TCustGroupsF.TabControl1Change(Sender: TObject);
begin
  inherited;
  GroupType := Integer(TabControl1.Tabs.Objects[TabControl1.TabIndex]);
  Label2.Caption := 'عنوان گروه ' + CustGroupsNames[GroupType];
  qryGroupsCustomerGrpName.DisplayLabel := Label2.Caption;
  lblCaption.Caption := Caption + '->' + CustGroupsNames[GroupType];
  case GroupType{TabControl1.TabIndex} of
    0,2, 8:
      begin
        edtacc_ChecksTopicCode.Enabled := True;
        Edt_ReChecksTopicCode.Enabled := True;
        Lblacc_ChecksTopicCode.Enabled := True;
        Lbl_ReChecksTopicCode.Enabled := True;
        Lblacc_ChecksTopicCode.Caption := 'كد حساب اسناد دريافتي';
        Lbl_ReChecksTopicCode.Caption := 'كد حساب اسناد واخواستي';
        Edt_CertifyTopicCode.Enabled := True;
        Lbl_CertifyTopicCode.Enabled := True;
        SBtnacc_ChecksTopicCode.Enabled := True;
        sbn_ReChecksTopicCode.Enabled := True;
        sbn_CertifyTopicCode.Enabled := True;
        Txtacc_ChecksTopicCode.Enabled := True;
        Txt_ReChecksTopicCode.Enabled := True;
        Txt_CertifyTopicCode.Enabled := True;
      end; // 0
    1:
      begin
        edtacc_ChecksTopicCode.Enabled := True;
        Edt_ReChecksTopicCode.Enabled := True;
        Lblacc_ChecksTopicCode.Enabled := True;
        Lbl_ReChecksTopicCode.Enabled := True;
        Lblacc_ChecksTopicCode.Caption := 'كد حساب اسناد پرداختني';
        Lbl_ReChecksTopicCode.Caption := 'كد حساب اسناد در جريان وصول';
        Edt_CertifyTopicCode.Enabled := False;
        Lbl_CertifyTopicCode.Enabled := False;
        SBtnacc_ChecksTopicCode.Enabled := True;
        sbn_ReChecksTopicCode.Enabled := True;
        sbn_CertifyTopicCode.Enabled := False;
        Txtacc_ChecksTopicCode.Enabled := True;
        Txt_ReChecksTopicCode.Enabled := True;
        Txt_CertifyTopicCode.Enabled := False;
      end; // 1
     3, 6, 7:
      begin
        edtacc_ChecksTopicCode.Enabled := True;
        Edt_ReChecksTopicCode.Enabled := True;
        Lblacc_ChecksTopicCode.Enabled := True;
        Lbl_ReChecksTopicCode.Enabled := True;
        Lblacc_ChecksTopicCode.Caption := 'كد حساب اسناد دريافتي';
        Lbl_ReChecksTopicCode.Caption := 'كد حساب اسناد واخواستي';
        SBtnacc_ChecksTopicCode.Enabled := True;
        Txtacc_ChecksTopicCode.Enabled := True;
      end; // 2
    4:
      begin
        edtacc_ChecksTopicCode.Enabled := True;
        Edt_ReChecksTopicCode.Enabled := True;
        Lblacc_ChecksTopicCode.Enabled := True;
        Lbl_ReChecksTopicCode.Enabled := True;
        Lblacc_ChecksTopicCode.Caption := 'كد حساب اسناد دريافتي';
        Lbl_ReChecksTopicCode.Caption := 'كد حساب اسناد واخواستي';
        Edt_CertifyTopicCode.Enabled := True;
        Lbl_CertifyTopicCode.Enabled := True;
        SBtnacc_ChecksTopicCode.Enabled := True;
        sbn_ReChecksTopicCode.Enabled := True;
        sbn_CertifyTopicCode.Enabled := True;
        Txtacc_ChecksTopicCode.Enabled := True;
        Txt_ReChecksTopicCode.Enabled := True;
        Txt_CertifyTopicCode.Enabled := True;
      end; // 4
    5:
      begin
        edtacc_ChecksTopicCode.Enabled := True;
        Edt_ReChecksTopicCode.Enabled := True;
        Lblacc_ChecksTopicCode.Enabled := True;
        Lbl_ReChecksTopicCode.Enabled := True;
        Lblacc_ChecksTopicCode.Caption := 'كد حساب اسناد دريافتي';
        Lbl_ReChecksTopicCode.Caption := 'كد حساب اسناد واخواستي';
        edtacc_ChecksTopicCode.Enabled := False;
        Edt_ReChecksTopicCode.Enabled := False;
        Edt_CertifyTopicCode.Enabled := False;
        Lblacc_ChecksTopicCode.Enabled := False;
        Lbl_ReChecksTopicCode.Enabled := False;
        Lbl_CertifyTopicCode.Enabled := False;
        SBtnacc_ChecksTopicCode.Enabled := False;
        sbn_ReChecksTopicCode.Enabled := False;
        sbn_CertifyTopicCode.Enabled := False;
        Txtacc_ChecksTopicCode.Enabled := False;
        Txt_ReChecksTopicCode.Enabled := False;
        Txt_CertifyTopicCode.Enabled := False;
      end; // 2
  end; // case
  pnlSellsTypeCodes.Visible := (GroupType in [0, 4, 10, 12, 13, 14]);
  pnlTopic.Visible := not(GroupType in [ 7, 15, 16, 17, 18, 19, 21,
    22, 23, 24]);
  With qryGroups do
  begin
    Active := False;
    Parameters.ParamByName('GroupType').Value := GroupType;
    Active := True;
  end; // with
end;

procedure TCustGroupsF.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonTopicCode(qryGroups)
end;

procedure TCustGroupsF.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonCTopicCode3(qryGroups)
end;

procedure TCustGroupsF.SpeedButton3Click(Sender: TObject);
var
  s: String;
begin
  inherited;
  s := qryGroups.FieldByName('SellsTypeCodes').AsString;
  if ChooseItemF.SelectChecks(s, 'SellsType', 'SellsTypeName', ' SellsTypes')
  then
  begin
    with qryGroups do
    begin
      Edit;
      FieldByName('SellsTypeCodes').Value := LeftStr(s, length(s) - 1);
    end;
  end;
end;

procedure TCustGroupsF.SBtnacc_ChecksTopicCodeClick(Sender: TObject);
begin
  inherited;
  AccSpeedButtonTopicCode(qryGroups, 'acc_ChecksTopicCode')
end;

procedure TCustGroupsF.sbn_ReChecksTopicCodeClick(Sender: TObject);
begin
  inherited;
  AccSpeedButtonTopicCode(qryGroups, 'acc_ReChecksTopicCode')
end;

procedure TCustGroupsF.actsendExelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TCustGroupsF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryGroups);
end;

procedure TCustGroupsF.SpeedButton5Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonCTopicCode(qryGroups)
end;

procedure TCustGroupsF.sbn_CertifyTopicCodeClick(Sender: TObject);
begin
  inherited;
  AccSpeedButtonTopicCode(qryGroups, 'acc_CertifyTopicCode')
end;

procedure TCustGroupsF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qryGroups.DisableControls;
    ppReport1.Print;
  finally
    qryGroups.EnableControls;
  end; // try
end;

procedure TCustGroupsF.ppLabel19GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := '  گروه حساب  ' + TabControl1.Tabs[TabControl1.TabIndex];
end;

procedure TCustGroupsF.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TCustGroupsF.ppLabel1GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TCustGroupsF.DBEdit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    SpeedButton1.Click;
end;

procedure TCustGroupsF.edtacc_ChecksTopicCodeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    SBtnacc_ChecksTopicCode.Click;
end;

procedure TCustGroupsF.Edt_ReChecksTopicCodeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    sbn_ReChecksTopicCode.Click;
end;

procedure TCustGroupsF.Edt_CertifyTopicCodeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    sbn_CertifyTopicCode.Click;
end;

procedure TCustGroupsF.DBEdit9KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    SpeedButton5.Click;
end;

procedure TCustGroupsF.qryGroupsBeforePost(DataSet: TDataSet);
begin
  if get_response('تغييرات ذخيره شوند؟') <> mrYes then
    Abort;
  TrimStringFields(qryGroups);
  valid();
end;

procedure TCustGroupsF.ppLabel10GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TCustGroupsF.FormResize(Sender: TObject);
begin
  inherited;
  if Panel3.Width > 800 then
    DBGrid1.Width := Panel3.Width div 2
  else
    DBGrid1.Width := 374;
  // l1.Width*4) div 7;
end;

procedure TCustGroupsF.valid;
var
  canInsert: Boolean;
  FinishCode, StartCode, GroupName: String;
begin
  StartCode := EdtStartCode.Text;
  FinishCode := EdtFinishCode.Text;
  inherited;
  if (StrToInt(FinishCode) + StrToInt(StartCode) <> 0) AND
    (FinishCode = StartCode) then
  begin
    Warn('لطفا محدوده كدينگ را وارد كنيد');
    EdtStartCode.SetFocus;
    Abort;
  end // if
  else if (StrToInt(FinishCode) + StrToInt(StartCode) <> 0) AND
    (StrToInt(FinishCode) <= StrToInt(StartCode)) then
  begin
    Warn('در محدوده كدينگ (از كد) بايد كوچكتر از (تا كد) باشد.');
    EdtFinishCode.SetFocus;
    Abort;
  end; // if
  with DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text :=
      'SELECT LTRIM(STR(CustomerGrpID)) + CustomerGrpName AS Name FROM CustomersGroup ';
    SQL.Add('WHERE (StartCode+FinishCode <> 0 )AND ((' + StartCode +
      ' BETWEEN StartCode AND FinishCode) AND (CustomerGrpID <> ' + DBEdit1.Text
      + ') OR');
    SQL.Add('(CustomerGrpID <> ' + DBEdit1.Text + ') AND (' + FinishCode +
      ' BETWEEN StartCode AND FinishCode))');
    Active := True;
    GroupName := Trim(Fields[0].AsString);
    canInsert := GroupName <> EmptyStr;
    Active := False;
  end; // with
  if canInsert then
  begin
    Warn('محدوده تعريف شده با محدوده ذيل تداخل دارد.' + #13#10 + GroupName);
    EdtStartCode.SetFocus;
    Abort;
  end; // if

  if CheckRange then
  begin
    Warn('حداقل یک کد مشتری خارج از محدوده وارد شده وجود دارد');
    EdtStartCode.SetFocus;
    Abort;
  end; // if
end;

procedure TCustGroupsF.ppLabel6GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := 'عنوان گروه ' + TabControl1.Tabs[TabControl1.TabIndex]
end;

procedure TCustGroupsF.ppLabel7GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := 'محدوده كد ' + TabControl1.Tabs[TabControl1.TabIndex] +
    ' قابل تعريف ';
end;

procedure TCustGroupsF.ppLabel2GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := 'ليست گروه بندي  ' + TabControl1.Tabs[TabControl1.TabIndex] + '';
end;

procedure TCustGroupsF.FormShow(Sender: TObject);
begin
  inherited;
  lblCaption.Caption := Caption + '->' + TabControl1.Tabs[0];
end;

procedure TCustGroupsF.MnuAllClick(Sender: TObject);
begin
  inherited;
  With DMf.qryTmpTmp do
  begin
    SQL.Text := 'UPDATE CustomersGroup';
    SQL.Add('SET GroupType = :GroupType');
    SQL.Add('WHERE (CustomerGrpID = :CustomerGrpID )');
    Parameters.ParamByName('GroupType').Value := (Sender as TMenuItem).Tag;
    Parameters.ParamByName('CustomerGrpID').Value :=
      qryGroupsCustomerGrpID.AsInteger;
    ExecSQL;
    qryGroups.Requery;
  end;

end;

procedure TCustGroupsF.SpeedButton6Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonCTopicCode2(qryGroups)
end;

procedure TCustGroupsF.DBEdit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    SpeedButton6.Click;
end;

procedure TCustGroupsF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryGroups);
end;

function TCustGroupsF.CheckRange: Boolean;
begin
  with DMf.qryTmpTmp do
  begin
    Close;
    SQL.Text := 'SELECT CustID FROM Customers WHERE (CustomerGrpID = %d) ';
    SQL.Add('AND ((CustID < %d) OR (CustID > %d)) AND (CustID <> 0)');
    SQL.Text := Format(SQL.Text, [qryGroupsCustomerGrpID.AsInteger,
      qryGroupsStartCode.AsInteger, qryGroupsFinishCode.AsInteger]);
    Open;
    Result := RecordCount > 0;
    Close;
  end;
end;

end.
