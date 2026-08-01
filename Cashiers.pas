// Mostafa
unit Cashiers;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, Grids, Vcl.DBGrids, DB, DBCtrls, ADODB, Mask, zAPIBalloon, ppDB,
  ppBands, ppCtrls, ppPrnabl, ppClass, ppCache, ppProd, ppReport, ppComm,
  ppRelatv, ppDBPipe, ppDBBDE, Menus, ComCtrls, ppParameter, CheckLst,
  ppDesignLayer, System.ImageList, System.Actions;

type
  TCashiersF = class(Ttemplate2MDIF)
    qryCustomersGroup: TADOQuery;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    qryCustomers: TADOQuery;
    srcCustomers: TDataSource;
    qryCustomersCustID: TIntegerField;
    qryCustomersCustName: TStringField;
    qryCustomersacc_DetailCode: TStringField;
    qryCustomersCustomerNote: TStringField;
    Panel4: TPanel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    DBMemo2: TDBMemo;
    Label17: TLabel;
    newPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    qryCustomersModifyDate: TDateTimeField;
    zbal: TzAPIBalloon;
    qryCustomersCustomerGrpID: TIntegerField;
    BitBtn1: TBitBtn;
    actSendToExcel: TAction;
    ppBDEPipeline1: TppBDEPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel6: TppLabel;
    ppLabel8: TppLabel;
    ppLabel10: TppLabel;
    ppLabel12: TppLabel;
    ppLabel9: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText1: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLine3: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppLine4: TppLine;
    ppDBText4: TppDBText;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    actPrint: TAction;
    BitBtn2: TBitBtn;
    DBNavigator1: TDBNavigator;
    BitBtn6: TBitBtn;
    qryCustomersBudgetID: TIntegerField;
    qryCustomersProjectID: TIntegerField;
    qryCustomers_BudgetName: TStringField;
    qryCustomers_ProjectName: TStringField;
    BitBtn9: TBitBtn;
    actSort: TAction;
    ppReport2: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppLabel5: TppLabel;
    ppLabel7: TppLabel;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLabel11: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppLine7: TppLine;
    ppSummaryBand2: TppSummaryBand;
    ppLine8: TppLine;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppDBText9: TppDBText;
    N21: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    qryCustomersacc_CTopicCode: TStringField;
    qryCustomersacc_CTopicCode2: TStringField;
    qryCustomers__CTopicCodeName: TStringField;
    qryCustomers__CTopicCodeName2: TStringField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel5: TPanel;
    Label4: TLabel;
    Label6: TLabel;
    SpeedButton1: TSpeedButton;
    dbtxt__DetailCode: TDBText;
    Label22: TLabel;
    SpeedButton5: TSpeedButton;
    DBText5: TDBText;
    Label24: TLabel;
    SpeedButton6: TSpeedButton;
    DBText6: TDBText;
    DBEdit3: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    Label15: TLabel;
    DBEdit4: TDBEdit;
    qryCustomersMaxCredit: TFMTBCDField;
    qryCustomers__DetailCode: TStringField;
    TabSheet2: TTabSheet;
    chklstOperator: TCheckListBox;
    Label5: TLabel;
    qryCustomersOperatorID: TWideStringField;
    qryCustomersacc_CTopicCode3: TStringField;
    qryCustomers__CTopicCodeName3: TStringField;
    DBText1: TDBText;
    SpeedButton10: TSpeedButton;
    DBEdit29: TDBEdit;
    Label48: TLabel;
    qryCustomers__TopicCodeName: TStringField;
    lbl1: TLabel;
    DBEdit30: TDBEdit;
    SpeedButton11: TSpeedButton;
    DBText4: TDBText;
    qryCustomersAccountKind: TIntegerField;
    qryCustomers_AccountKind: TStringField;
    Label7: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    qryCustomersacc_TopicCode: TLargeintField;
    qryCustomersOtherGroups: TADOQuery;
    qryCustomersOtherGroupsCustID: TIntegerField;
    qryCustomersOtherGroupsCustomerGrpID: TIntegerField;
    GroupBox1: TGroupBox;
    cmbGroups: TComboBox;
    qryCustomersCustFirstName: TStringField;
    qryCustomersEditDateTime: TDateTimeField;
    qryCustomersLastUser: TWideStringField;
    qryCustomersFirstUser: TWideStringField;
    qryCustomersCustomerState: TWordField;
    qryCustomersCustomerActive: TWordField;
    dbchkCustomerState: TDBCheckBox;
    dbchkCustomerActive: TDBCheckBox;
    actChangeCustID: TAction;
    sd: TPopupMenu;
    Mnu_AllClick: TMenuItem;
    MenuItem1: TMenuItem;
    N7: TMenuItem;
    actChangeCustID1: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure srcCustomersStateChange(Sender: TObject);
    procedure qryCustomersAfterInsert(DataSet: TDataSet);
    procedure qryCustomersBeforePost(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure DBEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cmbGroupsChange(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure qryCustomersAfterScroll(DataSet: TDataSet);
    procedure cmbOperatorChange(Sender: TObject);
    procedure cmbGroupsEnter(Sender: TObject);
    procedure qryCustomersBeforeDelete(DataSet: TDataSet);
    procedure qryCustomersAfterPost(DataSet: TDataSet);
    procedure actSearch_Execute(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure qryCustomersCustIDChange(Sender: TField);
    procedure chklstOperatorClick(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure chklstOtherGroupClick(Sender: TObject);
    procedure chklstOtherGroupDblClick(Sender: TObject);
    procedure qryCustomersAfterEdit(DataSet: TDataSet);
    procedure actChangeCustIDExecute(Sender: TObject);
    procedure Mnu_AllClickClick(Sender: TObject);
    procedure qryCustomersAfterOpen(DataSet: TDataSet);
  private
    GroupType: Integer;
    CustomerCaption: String;
    groupID: Integer;
    Procedure InitCobo;
    function CheckVallidDate: boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CashiersF: TCashiersF;

implementation

uses DM, GlobalPro, searchCode_ADO, mmessage, sort2,
  FormFunctions, FaraConsts;

{$R *.dfm}

Procedure TCashiersF.InitCobo;
begin
  cmbGroups.Clear;
  with qryCustomersGroup do
  begin
    Parameters.ParamByName('GroupType').Value := GroupType;
    Active := True;
    while not eof do
    begin
      cmbGroups.AddItem(FieldByname('CustomerGrpName').AsString,
        TObject(FieldByname('CustomerGrpID').AsInteger));
      next;
    end; // while
  end; // with
end;

procedure TCashiersF.Mnu_AllClickClick(Sender: TObject);
begin
  inherited;
    ChangeCustomerGroup(Sender, qryCustomers, CustomerCaption)
end;

procedure TCashiersF.FormCreate(Sender: TObject);
var
  i: Integer;
  NewItem: TMenuItem;
begin
  inherited;
  GroupType := var_glb_gParam;
  CustomerCaption := '’‰œÊﬁœ«—';
  if GroupType <> 2 then
    CustomerCaption := ' ‰ŒÊ«Â ê—œ«‰/ò«—Å—œ«“';

  Caption := StringReplace(Caption, '’‰œÊﬁœ«—', CustomerCaption,
    [rfReplaceAll]);
  Label3.Caption := StringReplace(Label3.Caption, '’‰œÊﬁœ«—', CustomerCaption,
    [rfReplaceAll]);

  qryCustomersGroup.Parameters.ParamByName('GroupType').Value := GroupType;
  qryCustomersGroup.Open;
  qryCustomers.FieldByname('CustName').ReadOnly := opt.EditCustNameLevelID;
  // if opt.AccOldAvailable then
  // begin
  // qryCustomers.FieldByName('_DetailName').LookupResultField:='Desc';
  // qryCustomers.FieldByName('__CTopicCodeName2').LookupResultField:='Desc';
  // qryCustomers.FieldByName('__CTopicCodeName').LookupResultField:='Desc';
  // end;//if
  InitCobo;
  if cmbGroups.Items.Count > 0 then
  begin
    cmbGroups.ItemIndex := 0;
    cmbGroupsChange(cmbGroups);
  end; // if

  For i := 0 to cmbGroups.Items.Count - 1 do
  begin
    NewItem := TMenuItem.Create(self);
    NewItem.Caption := cmbGroups.Items.Strings[i];
    if cmbGroups.Items.Count > 0 then
      NewItem.Tag := Integer(cmbGroups.Items.Objects[i]);
    NewItem.OnClick := Mnu_AllClickClick;
    Mnu_AllClick.Add(NewItem);
  end;

  // if (Not opt.ActiveBudget)and(true) then
  // zs  TabBudget.Destroy;
  // // Sheikh 2015/06/22
  // InitChkList(chklstOtherGroup, cmbGroups, True);
end;

procedure TCashiersF.srcCustomersStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qryCustomers.State in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
  FreeReservedCodes(DMf.adcBSell, '', '', Self.Name);
end;

procedure TCashiersF.qryCustomersAfterEdit(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByname('LastUser').AsString := User.Name;
  DataSet.FieldByname('EditDateTime').AsDateTime := Now;
end;

procedure TCashiersF.qryCustomersAfterInsert(DataSet: TDataSet);
var
  aRange: String;
  rFrom, rTo: Integer;
begin
  inherited;
  with DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text :=
      'Select StartCode,FinishCode,acc_CTopicCode,acc_CTopicCode2,acc_CTopicCode3 from CustomersGroup where CustomerGrpID='
      + IntToStr(groupID);
    Active := True;
    rFrom := Fields[0].AsInteger;
    rTo := Fields[1].AsInteger;
    DataSet.FieldByname('acc_CTopicCode').AsInteger := Fields[2].AsInteger;
    DataSet.FieldByname('acc_CTopicCode2').AsInteger := Fields[3].AsInteger;
    DataSet.FieldByname('acc_CTopicCode3').AsInteger := Fields[4].AsInteger;
    aRange := format('%d and %d', [rFrom, rTo]);
    Active := False;
    if aRange = ' and ' then
      aRange := '0 and 999999999';
  end; // with
  DataSet.FieldByname('CustomerGrpID').AsInteger := groupID;
  DataSet.FieldByname('ModifyDate').AsDateTime := Now;
  DataSet.FieldByname('FirstUser').AsString := User.Name;
  DataSet.FieldByname('CustID').AsInteger :=
    GetANewCode(Self.Name,
    'Select max(CustID) from Customers where CustID between ' + aRange +
    'and CustomerGrpID=' + IntToStr(groupID), 'CustID');
  if not((DataSet.FieldByname('CustID').AsInteger >= rFrom) and
    (DataSet.FieldByname('CustID').AsInteger <= rTo)) then
    DataSet.FieldByname('CustID').AsInteger := rFrom;
  if opt.AccDetailCodeEqualCustID > 0 then
    qryCustomers.FieldByname(AccDetailType(qryCustomersGroup)).AsInteger :=
      DataSet.FieldByname('CustID').AsInteger;
  DBEdit1.SetFocus;
end;

procedure TCashiersF.qryCustomersAfterOpen(DataSet: TDataSet);
begin
  inherited;
  InitchklstOperators(chklstOperator, DataSet.FieldByname('OperatorID')
    .AsString);

end;

procedure TCashiersF.qryCustomersBeforePost(DataSet: TDataSet);
begin
  inherited;
  if CheckVallidDate then
  begin
    Warn('ﬂœ Ê«—œ ‘œÂ Œ«—Ã «“ „ÕœÊœÂ  ⁄—Ì› ‘œÂ „Ì»«‘œ.˛');
    DBEdit1.SetFocus;
    Abort;
  end; // if}
  qryCustomers['OperatorID'] := GetchklstObjectS(chklstOperator);
  if qryCustomers['OperatorID'] = EmptyStr then
  begin
    Warn('‰«„ ﬂ«—»— „— »ÿ —« «‰ Œ«» ﬂ‰Ìœ.˛');
    Abort;
  end;
  // ModifyDate
  // TrimStringFields(DataSet);
  if not UnicFieldName(DataSet.FieldByname('CustID'),
    DataSet.FieldByname('CustName'), 'Customers',
    qryCustomersCustomerGrpID.AsInteger) then
    Abort;
end;

procedure TCashiersF.SpeedButton10Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonCTopicCode3(qryCustomers, 'acc_CTopicCode3', '', False)
end;

procedure TCashiersF.SpeedButton11Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonTopicCode(qryCustomers)
end;

procedure TCashiersF.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonDetailCode(qryCustomers, 'acc_DetailCode', '', False);
end;

procedure TCashiersF.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TCashiersF.DBEdit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    SpeedButton1.Click;
end;

procedure TCashiersF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1, False);
end;

procedure TCashiersF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TCashiersF.chklstOperatorClick(Sender: TObject);
begin
  inherited;
  if not(qryCustomers.State in dsEditModes) then
    qryCustomers.Edit;
end;

procedure TCashiersF.chklstOtherGroupClick(Sender: TObject);
begin
  inherited;
  if not(qryCustomers.State in dsEditModes) then
    qryCustomers.Edit;

end;

procedure TCashiersF.chklstOtherGroupDblClick(Sender: TObject);
begin
  inherited;
  if not(qryCustomers.State in dsEditModes) then
    qryCustomers.Edit;

end;

procedure TCashiersF.cmbGroupsChange(Sender: TObject);
begin
  inherited;
  if cmbGroups.ItemIndex = -1 then
    cmbGroups.ItemIndex := 0;
  groupID := Integer(cmbGroups.Items.Objects[cmbGroups.ItemIndex]);
  qryCustomersGroup.Locate('CustomerGrpID', groupID, []);

  with qryCustomers do
  begin
    Active := False;
    Parameters.ParamByName('GrpIDFrom').Value := groupID;
    Parameters.ParamByName('GrpIDTo').Value := groupID;
    Parameters.ParamByName('GroupType').Value := GroupType;
    Active := True;
  end; // with
  // // Sheikh 2015/06/22
  // InitChkList(chklstOtherGroup, cmbGroups);
end;

procedure TCashiersF.actChangeCustIDExecute(Sender: TObject);
begin
  inherited;
  ChangeCustID(qryCustomers, cmbGroups, CustomerCaption)
end;

procedure TCashiersF.actPrintExecute(Sender: TObject);
begin
  inherited;
  PopupMenu1.Popup(Mouse.CursorPos.x, Mouse.CursorPos.y);
end;

procedure TCashiersF.N1Click(Sender: TObject);
begin
  inherited;
  try
    qryCustomersGroup.DisableControls;
    ppReport1.Print;
  finally
    qryCustomersGroup.EnableControls;
  end; // try
end;

procedure TCashiersF.N2Click(Sender: TObject);
begin
  inherited;
  try
    with qryCustomers do
    begin
      Active := False;
      Parameters.ParamByName('GrpIDFrom').Value := 0;
      Parameters.ParamByName('GrpIDTo').Value := 2147483647;
      Active := True;
    end; // with
    ppReport1.Print;
  finally
    with qryCustomers do
    begin
      Active := False;
      Parameters.ParamByName('GrpIDFrom').Value := groupID;
      Parameters.ParamByName('GrpIDTo').Value := groupID;
      Active := True;
    end; // with
  end; // try
end;

procedure TCashiersF.qryCustomersAfterScroll(DataSet: TDataSet);
begin
  inherited;
  InitchklstOperators(chklstOperator, DataSet.FieldByname('OperatorID')
    .AsString);
  // Sheikh 2015/06/22
  with qryCustomersOtherGroups, Parameters do
  begin
    Active := False;
    ParamByName('CustId').Value := qryCustomersCustID.AsInteger;
    Active := True;
  end;
  // LoadOtherCustomers(qryCustomersOtherGroups, chklstOtherGroup);
end;

function TCashiersF.CheckVallidDate: boolean;
begin
  // Result:=False;
  with DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'SELECT CustomerGrpID FROM CustomersGroup ';
    SQL.Add('WHERE (' + qryCustomers.FieldByname('CustID').AsString);
    SQL.Add('BETWEEN StartCode AND FinishCode) AND (CustomerGrpID =' +
      IntToStr(groupID) + ')');
    Active := True;
    Result := Fields[0].AsInteger = 0;
    Active := False;
  end; // with
end;

procedure TCashiersF.cmbOperatorChange(Sender: TObject);
begin
  inherited;
  DataSetEdit1.Execute;
end;

procedure TCashiersF.cmbGroupsEnter(Sender: TObject);
begin
  inherited;
  cmbGroups.DroppedDown := True;
end;

procedure TCashiersF.qryCustomersBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('¬Ì« »—«Ì Õ–› «Ì‰ ' + CustomerCaption + ' „ÿ„∆‰ Â” Ìœø') <> mrYes
  then
    Abort;
  BigMessage('Õ–› ‘œ.', 1);
end;

procedure TCashiersF.qryCustomersAfterPost(DataSet: TDataSet);
var
  CustID: Integer;
begin
  inherited;
  CustID := qryCustomersCustID.AsInteger;
  // sheikh 2015/06/22
  // SaveOtherCustomers(qryCustomersOtherGroups, qryCustomers, chklstOtherGroup);
  CustIDToDetailCode(qryCustomers, 2);
  cmbGroupsChange(cmbGroups);
  qryCustomers.Locate('CustID', CustID, []);
  BigMessage('À»  ‘œ.˛', 1);
end;

procedure TCashiersF.actSearch_Execute(Sender: TObject);
var
  c: String;
begin
  if groupID = 0 then
    exit;
  inherited;
  if searchCode_ADOF.SearchCode(DMf.adcBSell, c, '',
    'SELECT CustID, CustName,FirstBalance FROM Customers WHERE CustomerGrpID=' +
    IntToStr(groupID), ['ﬂœ', '‰«„ ' + CustomerCaption, '„«‰œÂ «» œ«Ì ”«·'],
    alLeft) <> '' then
    qryCustomers.Locate('CustID', c, []);
end;

procedure TCashiersF.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if not(gdSelected in State) then
  begin
    if odd(DBGrid1.DataSource.DataSet.RecNo) then
      DBGrid1.Canvas.Brush.Color := const_fixed_columns_color;
  end; // if
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TCashiersF.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonBudgetCode(qryCustomers, 'BudgetID')
end;

procedure TCashiersF.SpeedButton4Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonProjectsCode(qryCustomers, 'ProjectID', 'BudgetID')
end;

procedure TCashiersF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryCustomers);
end;

procedure TCashiersF.N11Click(Sender: TObject);
begin
  inherited;
  try
    qryCustomers.DisableControls;
    ppReport2.Print;
  finally
    qryCustomers.EnableControls;
  end; // try

end;

procedure TCashiersF.N21Click(Sender: TObject);
begin
  inherited;
  ppReport2.Print;
end;

procedure TCashiersF.N12Click(Sender: TObject);
begin
  inherited;
  try
    with qryCustomers do
    begin
      Active := False;
      Parameters.ParamByName('GrpIDFrom').Value := 0;
      Parameters.ParamByName('GrpIDTo').Value := 2147483647;
      Active := True;
    end; // with
    ppReport2.Print;
  finally
    with qryCustomers do
    begin
      Active := False;
      Parameters.ParamByName('GrpIDFrom').Value := groupID;
      Parameters.ParamByName('GrpIDTo').Value := groupID;
      Active := True;
    end; // with

  end; // try

end;

procedure TCashiersF.SpeedButton5Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonCTopicCode(qryCustomers, 'acc_CTopicCode', '', False)
end;

procedure TCashiersF.SpeedButton6Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonCTopicCode2(qryCustomers)
end;

procedure TCashiersF.qryCustomersCustIDChange(Sender: TField);
begin
  inherited;
  if opt.AccDetailCodeEqualCustID > 0 then
    qryCustomers.FieldByname(AccDetailType(qryCustomersGroup)).AsInteger :=
      Sender.AsInteger;

end;

end.
