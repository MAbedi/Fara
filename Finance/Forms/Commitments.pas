unit Commitments;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, Vcl.DBGrids, Grids, DB, ADODB, Mask, DBCtrls, MyDBGrids, math,
  ComCtrls, ppReport, ppStrtch, ppSubRpt, ppCtrls, ppPrnabl, ppClass, ppBands,
  ppCache, ppDB, ppParameter, ppProd, ppComm, ppRelatv, ppDBPipe, ppTypes,
  Menus, ppDesignLayer, System.ImageList, System.Actions, FormFunctions,
  FaraConsts;

type
  TCommitmentsF = class(Ttemplate2MDIF)
    qryMaster: TADOQuery;
    srcMaster: TDataSource;
    qryMasterBudgetSerial: TIntegerField;
    qryMasterBudgetDate: TStringField;
    qryMasterAccCode: TIntegerField;
    qryMasterDetailCode: TIntegerField;
    qryMasterCTopic1: TIntegerField;
    qryMasterCTopic2: TIntegerField;
    qryItems: TADOQuery;
    srcItems: TDataSource;
    qryItemsBudgetItemID: TIntegerField;
    qryItemsBudgetID: TIntegerField;
    qryItemsItemSerial: TIntegerField;
    qryItemsBudgetTopicID: TIntegerField;
    qryItemsItemNote_L1: TStringField;
    qryItemsItemNote_L2: TStringField;
    qryItemsCustomerID: TIntegerField;
    newPanel: TPanel;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    okPanel: TPanel;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    BitBtn13: TBitBtn;
    BitBtn14: TBitBtn;
    _qryBudject: TADOQuery;
    qryItems_BudjectName: TStringField;
    qryMasterCompanyCode: TIntegerField;
    qryComponyName: TADOQuery;
    qryMaster_ComponyName: TStringField;
    qryMasterBudgetID: TIntegerField;
    qryMasterInterfaceID: TIntegerField;
    DBNavigator1: TDBNavigator;
    actExcel: TAction;
    actSort: TAction;
    actPrint: TAction;
    DataSetDelete1: TDataSetDelete;
    qryMasterNote_L1: TStringField;
    qryMasterNote_L2: TStringField;
    StatusBar1: TStatusBar;
    Panel6: TPanel;
    PnlCompany: TPanel;
    lbl1: TLabel;
    btn1: TBitBtn;
    DBEdit12: TDBEdit;
    Panel5: TPanel;
    lbl4: TLabel;
    lbl5: TLabel;
    edtBudgetSerial: TDBEdit;
    DBEdit6: TDBEdit;
    btn2: TBitBtn;
    lbl6: TLabel;
    dblkcbbInterfaceID: TDBLookupComboBox;
    grp1: TGroupBox;
    dbredtNote_L1: TDBRichEdit;
    DBGrid1: TDBGrid;
    qryInterface: TADOQuery;
    qryInterfaceInterfaceID: TIntegerField;
    strngfldInterfaceInterfaceCaption_L1: TStringField;
    strngfldInterfaceInterfaceCaption_L2: TStringField;
    srcInterface: TDataSource;
    qryItemsBes: TSmallintField;
    qryItemsCompanyCode: TIntegerField;
    qryItemsCashtype: TWordField;
    strngfldItemsAidDate: TStringField;
    strngfldItemsAidNum: TStringField;
    strngfldItems_Companyname: TStringField;
    Label1: TLabel;
    qryMasterYearID: TIntegerField;
    qryMasterStatus: TWordField;
    qryItemsCtype: TWordField;
    qryItemsCostType: TWordField;
    qryItemsCostCode: TStringField;
    Panel4: TPanel;
    Panel7: TPanel;
    Label9: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label11: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    DBEdit3: TDBEdit;
    DBEdit9: TDBEdit;
    BitBtn3: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    DBEdit1: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit13: TDBEdit;
    DBComboBox2: TDBComboBox;
    DBComboBox3: TDBComboBox;
    DBComboBox4: TDBComboBox;
    BitBtn4: TBitBtn;
    _qryCustomers: TADOQuery;
    DataSetInsert_: TDataSetInsert;
    DataSetEdit_: TDataSetEdit;
    _qryCost: TADOQuery;
    _qryCustomersCustID: TIntegerField;
    _qryCustomersCustName: TStringField;
    qryItems_CustomerName: TStringField;
    _qryCostKeyID: TStringField;
    _qryCostreciptnumber: TIntegerField;
    _qryCostCaption: TStringField;
    qryItems_reciptNumber: TIntegerField;
    qryItems_costName: TStringField;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DataSetPost_: TDataSetPost;
    DataSetCancel_: TDataSetCancel;
    qryItemsBed: TBCDField;
    DBText5: TDBText;
    Panel1: TPanel;
    PnlNewItem: TPanel;
    BitBtn16: TBitBtn;
    BitBtn15: TBitBtn;
    BitBtn5: TBitBtn;
    PnlOkItem: TPanel;
    BitBtn17: TBitBtn;
    BitBtn18: TBitBtn;
    DBMemo1: TDBMemo;
    Panel8: TPanel;
    Label16: TLabel;
    qryHistory: TADOQuery;
    srcHistory: TDataSource;
    DBGrid2: TDBGrid;
    qryHistoryid: TIntegerField;
    qryHistorystatus: TStringField;
    qryHistoryCash: TBCDField;
    qryHistoryCashOut: TBCDField;
    qryHistorySumCash: TBCDField;
    StatusBar2: TStatusBar;
    ppDBPipeline1: TppDBPipeline;
    ppDBPipeline2: TppDBPipeline;
    ppReport1: TppReport;
    ppParameterList1: TppParameterList;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppShape1: TppShape;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppDBText1: TppDBText;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppDBText3: TppDBText;
    ppLabel6: TppLabel;
    ppDBText4: TppDBText;
    ppShape2: TppShape;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine13: TppLine;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLabel17: TppLabel;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDetailBand2: TppDetailBand;
    ppShape3: TppShape;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    PopPrint: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    ppLabel18: TppLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    qrylookup: TADOQuery;
    qrylookupReciptType: TWordField;
    qrylookupReciptCaption: TStringField;
    srcLookUp: TDataSource;
    qryItemsCostTypeName: TStringField;
    qryInterfaceCustGroups: TStringField;
    actViewFile: TAction;
    BitBtn19: TBitBtn;
    procedure srcMasterStateChange(Sender: TObject);
    procedure qryMasterAfterInsert(DataSet: TDataSet);
    procedure qryMasterAfterPost(DataSet: TDataSet);
    procedure qryMasterAfterScroll(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure qryItemsAfterInsert(DataSet: TDataSet);
    procedure btn2Click(Sender: TObject);
    procedure qryMasterAfterCancel(DataSet: TDataSet);
    procedure qryMasterBeforeDelete(DataSet: TDataSet);
    procedure qryMasterAfterDelete(DataSet: TDataSet);
    procedure actExcelExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure qryMasterBeforePost(DataSet: TDataSet);
    procedure qryItemsBeforePost(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure qryItemsAfterPost(DataSet: TDataSet);
    procedure srcItemsDataChange(Sender: TObject; Field: TField);
    procedure qryItemsBesGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure qryItemsBesSetText(Sender: TField; const Text: string);
    procedure qryItemsCashtypeGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure qryItemsCashtypeSetText(Sender: TField; const Text: string);
    procedure qryItemsCtypeGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure qryItemsCtypeSetText(Sender: TField; const Text: string);
    procedure srcItemsStateChange(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure qryMasterStatusGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure qryMasterStatusSetText(Sender: TField; const Text: string);
    procedure qryItemsCostTypeGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure qryItemsCostTypeSetText(Sender: TField; const Text: string);
    procedure DBEdit10Change(Sender: TObject);
    procedure DBComboBox2Enter(Sender: TObject);
    procedure DBComboBox3Enter(Sender: TObject);
    procedure DBComboBox4Enter(Sender: TObject);
    procedure DBEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit7KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit9KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryItemsBudgetTopicIDChange(Sender: TField);
    procedure qryItemsCtypeChange(Sender: TField);
    procedure N1Click(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure ppLabel1GetText(Sender: TObject; var Text: string);
    procedure ppLabel17GetText(Sender: TObject; var Text: string);
    procedure ppDBText8GetText(Sender: TObject; var Text: string);
    procedure ppDBText9GetText(Sender: TObject; var Text: string);
    procedure ppDBText14GetText(Sender: TObject; var Text: string);
    procedure qryItemsCashtypeChange(Sender: TField);
    procedure ppLabel18GetText(Sender: TObject; var Text: string);
    procedure DBLookupComboBox1Enter(Sender: TObject);
    procedure qryItemsCostTypeChange(Sender: TField);
    procedure qryInterfaceAfterScroll(DataSet: TDataSet);
    procedure actViewFileExecute(Sender: TObject);
  private
    SumRemaining: Currency;
    formType: byte;
    procedure showBigNum(num: Currency);
    procedure CalculateSummary;
    procedure InitForm;
    procedure History;
    procedure CalcRemaining;
    { Private declarations }
  public
    procedure FindBudget(budgectID: Integer);
    { Public declarations }
  end;

var
  CommitmentsF: TCommitmentsF;

implementation

uses Dm, searchCode_L1_L2, GlobalPro, mmessage, search2, sort2, searchCode_ADO,
  sndkey32,
  Note, Main, ViewFileOnServer;

{$R *.dfm}

procedure TCommitmentsF.CalculateSummary;
var
  bed, bes: Extended;
begin
  bed := 0;
  bes := 0;
  // mandeh:=0;
  with TADOQuery.Create(NIL) do
    try
      DisableControls;
      Clone(qryItems, ltReadOnly);
      while not eof do
      begin
        bed := bed + fieldbyname('bed').AsCurrency;
        Next;
      end; // while
    finally
      // mandeh:=bed - bes;
      StatusBar1.Panels[0].Text := 'مبلغ:‏ ' + CurrToStrF(bed, ffCurrency, 0);
      Free;
    end
  // StatusBar1.Panels[0].Text:='مانده '+ CurrToStrF(mandeh,ffCurrency,0);
end;

procedure TCommitmentsF.DBComboBox2Enter(Sender: TObject);
begin
  inherited;
  DBComboBox2.DroppedDown := True;
end;

procedure TCommitmentsF.DBComboBox3Enter(Sender: TObject);
begin
  inherited;
  DBComboBox3.DroppedDown := True;
end;

procedure TCommitmentsF.DBComboBox4Enter(Sender: TObject);
begin
  inherited;
  DBComboBox4.DroppedDown := True;
end;

procedure TCommitmentsF.DBEdit10Change(Sender: TObject);
var
  m: Integer;
begin
  inherited;
  if Trim(DBEdit10.Text) <> '' then
    Label15.Caption :=
      num2alphabet(StrToInt64(RemoveComma(Trim(DBEdit10.Text))));
end;

procedure TCommitmentsF.DBEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    BitBtn1.Click;
end;

procedure TCommitmentsF.DBEdit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    BitBtn2.Click;
end;

procedure TCommitmentsF.DBEdit7KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    BitBtn3.Click;
end;

procedure TCommitmentsF.DBEdit9KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    BitBtn4.Click;
end;

procedure TCommitmentsF.DBLookupComboBox1Enter(Sender: TObject);
begin
  inherited;
  DBLookupComboBox1.DropDown;
end;

procedure TCommitmentsF.srcMasterStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qryMaster.State in dsEditModes;
  Panel1.Visible := okPanel.Visible;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
  FreeReservedCodes(Dmf.adcAccounting, 'acc.Budgets');
  btn1.Enabled:=  okPanel.Visible;

end;

procedure TCommitmentsF.qryMasterAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.fieldbyname('BudgetID').AsInteger := GetANewCode('', 'acc.Budgets',
    'BudgetID', Dmf.adcAccounting);
  DataSet.fieldbyname('BudgetSerial').AsInteger :=
    GetANewCode('',
    'select ISNULL(MAX(BudgetSerial),0) from acc.Budgets  inner join  acc.Interfaces'
    + ' ON  acc.Interfaces.InterfaceID=acc.Budgets.InterfaceID' +
    ' WHERE  (acc.Interfaces.BudgetEffect=2)and (acc.Budgets.YearID=' +
    APPBank.Year.ToString + ')', 'BudgetSerial', Dmf.adcAccounting);
  DataSet.fieldbyname('BudgetDate').AsString := var_glb_CurrentDate;
  DataSet.fieldbyname('CompanyCode').AsInteger := opta.DefaultCompany;
  DataSet.fieldbyname('YearID').AsInteger := APPBank.Year;
  DataSet.fieldbyname('Status').AsInteger := 1;
  // DBEdit5.SetFocus;
  dblkcbbInterfaceID.SetFocus;
end;

procedure TCommitmentsF.qryMasterAfterPost(DataSet: TDataSet);
begin
  inherited;
  if qryItems.State in [dsedit] then
    qryItems.Post;
  qryItems.UpdateBatch();
  CalculateSummary;
  BigMessage('ثبـت شد.', 1);
end;

procedure TCommitmentsF.qryMasterAfterScroll(DataSet: TDataSet);
begin
  inherited;

  with qryItems do
  begin
    Active := false;
    Parameters.ParamByName('BudgetID').Value :=
      qryMaster.fieldbyname('BudgetID').AsInteger;
    Parameters.ParamByName('CompanyCode').Value :=
      qryMaster.fieldbyname('CompanyCode').AsInteger;

//    SetCompanyFilterinLogin(Parameters);

    Active := True;
  end;
end;

procedure TCommitmentsF.FormCreate(Sender: TObject);
begin
  inherited;
  with qryComponyName do
  begin
    SQL.Text := 'SELECT CompanyCode, CompanyName_L1, CompanyName_L2';
    SQL.Add('FROM acc.Companies');
    if (CompanyFilterinLogin) and (not User.PowerAdmin) then
    begin
      SQL.Add(' WHERE (CompanyCode IN');
      SQL.Add('(SELECT n_subcompany');
      SQL.Add('FROM FaraSystems.dbo.OperatorCompanies');
      SQL.Add('WHERE (UserID = ' + User.ID.ToString + ')))');
    end;
  end;

  qryInterface.Open;

  with qrylookup, Parameters do
  begin
    Close;
    SQL.Text := StringReplace(SQL.Text, '$', opta.BudgetType, [rfReplaceAll]);
    Open;
  end;

  with qryItems do
  begin
    SQL.Text := 'SELECT * ';
    SQL.Add('FROM Acc.BudgetItems');
    SQL.Add('WHERE (CompanyCode = :CompanyCode )');
    SQL.Add('AND (BudgetID = :BudgetID )');
    if (CompanyFilterinLogin) and (not User.PowerAdmin) then
    begin
      SQL.Add(' AND (CompanyCode IN');
      SQL.Add('(SELECT n_subcompany');
      SQL.Add('FROM FaraSystems.dbo.OperatorCompanies');
      SQL.Add('WHERE (UserID = :UserID)))');
      Parameters.ParamByName('UserID').Value := User.ID;
    end;
  end;

  with qryMaster do
  begin
    Close;
    SQL.Text := 'SELECT acc.Budgets.*';
    SQL.Add('FROM acc.Budgets');
    SQL.Add('WHERE');
    SQL.Add('(acc.Budgets.InterfaceID in (select acc.Interfaces.InterfaceID from acc.Interfaces where acc.Interfaces.BudgetEffect=2)) and');
    SQL.Add('(acc.Budgets.YearID=:yearid )');
    if (CompanyFilterinLogin) and (not User.PowerAdmin) then
    begin
      SQL.Add(' AND (CompanyCode IN');
      SQL.Add('(SELECT n_subcompany');
      SQL.Add('FROM FaraSystems.dbo.OperatorCompanies');
      SQL.Add('WHERE (UserID = :UserID)))');
      Parameters.ParamByName('UserID').Value := User.ID;
    end;
    Parameters.ParamByName('yearid').Value := APPBank.Year;
    Open;
    Last;
  end;

end;

procedure TCommitmentsF.btn1Click(Sender: TObject);
var
  s: Boolean;
  Results: array [0 .. 2] of String;
  Txt: String;
begin
  inherited;
  Txt := 'SELECT CompanyCode,CompanyName_l1,CompanyName_l2 FROM acc.Companies ';
  if (CompanyFilterinLogin) and (not User.PowerAdmin) then
  begin
    Txt := Txt + ' WHERE (CompanyCode IN(SELECT n_subcompany';
    Txt := Txt + ' FROM FaraSystems.dbo.OperatorCompanies';
    Txt := Txt + ' WHERE (UserID = ' + User.ID.ToString + ')))';
  end;

  s := searchCode_L1_L2F.SearchCode2(Dmf.adcAccounting, 'شركتها', Txt,
    ['کد', 'نام ', 'caption'], Results, [30, 200, 200], alLeft);
  if s then
  begin
    if not(qryMaster.State in [dsedit]) then
      qryMaster.Edit;
    qryMaster['CompanyCode'] := Results[0];
  end; // if

end;

procedure TCommitmentsF.qryInterfaceAfterScroll(DataSet: TDataSet);
var
  CustGroups: string;
begin
  inherited;
  if not qryInterfaceCustGroups.IsNull then
    with _qryCustomers do
    begin
      Close;
      CustGroups := ',' + qryInterfaceCustGroups.AsString + ',';
      Parameters.ParamByName('CustomerGrps').Value := QuotedStr(CustGroups);
      Open;
    end;

end;

procedure TCommitmentsF.qryItemsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  // Panel4.BringToFront;
  DataSet.fieldbyname('BudgetItemID').AsInteger :=
    GetANewCode('', 'acc.BudgetItems', 'BudgetItemID');
  DataSet.fieldbyname('BudgetID').AsInteger := qryMasterBudgetID.AsInteger;
  DataSet.fieldbyname('bes').AsInteger := 1;
  DataSet.fieldbyname('Ctype').AsInteger := 1;
  DataSet.fieldbyname('Cashtype').AsInteger := 1;
  DataSet.fieldbyname('CostType').AsInteger := 1;
  DataSet.fieldbyname('bed').AsInteger := 0;
  DBEdit1.SetFocus;
end;

procedure TCommitmentsF.btn2Click(Sender: TObject);
var
  s: Boolean;
  Results: array [0 .. 1] of String;
  Txt: String;
begin
  inherited;
  Txt := 'SELECT BudgetSerial, BudgetDate FROM acc.Budgets ';

  if (CompanyFilterinLogin) and (not User.PowerAdmin) then
  begin
    Txt := Txt +
      ' WHERE (CompanyCode IN (SELECT n_subcompany FROM FaraSystems.dbo.OperatorCompanies';
    Txt := Txt + ' WHERE (UserID = ' + User.ID.ToString + ')))';
  end;

  s := searchCode_L1_L2F.SearchCode2(Dmf.adcAccounting, 'فرمها', Txt,
    ['شماره', 'تاريخ'], Results, [30, 200], alLeft);
  if s then
  begin
    qryMaster.Locate('BudgetSerial', Results[0], []);
  end; // if

end;

procedure TCommitmentsF.qryMasterAfterCancel(DataSet: TDataSet);
begin
  inherited;
  if qryItems.State in dsEditModes then
    qryItems.Cancel;
  qryItems.Requery;
end;

procedure TCommitmentsF.qryMasterBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('آيا براي حذف مطمئن هستيد؟‏') <> mrYes then
    Abort;
end;

procedure TCommitmentsF.qryMasterAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('حذف شد.', 1);
end;

procedure TCommitmentsF.actExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TCommitmentsF.actPrintExecute(Sender: TObject);
begin
  inherited;
  PopPrint.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TCommitmentsF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryItems);
end;

procedure TCommitmentsF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryItems);
end;

procedure TCommitmentsF.actViewFileExecute(Sender: TObject);
begin
  inherited;
  ViewFileOnServerF.Enter(qryMaster.FieldByName('BudgetID').AsString,
    'BudgetsCommitmentsFiles', False);

end;

procedure TCommitmentsF.BitBtn1Click(Sender: TObject);
var
  sqlText: string;
  Results: array [0 .. 2] of String;
begin
  inherited;
  sqlText :=
    'select BudgetTopicID, BudgetCaption_L1, BudgetCaption_L2 from Acc.BudgetTopics where LevelID = '
    + '(select MAX(LevelID) from acc.BudgetTopics)';
  if searchCode_L1_L2F.SearchCode2(Dmf.adcAccounting, 'بودجه', sqlText,
    ['كد ', 'شرح', 'Budget Caption'], Results, [80, 350, 350], alLeft) then
    qryItems.fieldbyname('BudgetTopicID').AsString := Results[0];
end;

procedure TCommitmentsF.BitBtn2Click(Sender: TObject);
var
  sqlText: string;
  Results: array [0 .. 2] of String;
begin
  inherited;
  sqlText := qryComponyName.SQL.Text;
  if searchCode_L1_L2F.SearchCode2(Dmf.adcAccounting, 'محل تامین/مرکز هزینه',
    sqlText, ['کد', 'نام ', 'caption'], Results, [30, 200, 200], alLeft) then
    qryItems.fieldbyname('CompanyCode').AsString := Results[0];
end;

procedure TCommitmentsF.BitBtn3Click(Sender: TObject);
var
  sqlText: string;
  Results: array [0 .. 2] of String;
begin
  inherited;
  sqlText := _qryCustomers.SQL.Text;
  if searchCode_L1_L2F.SearchCode2(Dmf.adcAccounting, 'شخص عامل', sqlText,
    ['کد', 'نام ', 'caption'], Results, [80, 200, 200], alLeft) then
    qryItems.fieldbyname('CustomerID').AsString := Results[0];
end;

procedure TCommitmentsF.BitBtn4Click(Sender: TObject);
var
  sqlText: string;
  CostType: Integer;
  Results: array [0 .. 5] of String;
begin
  inherited;
  sqlText :=
    Format(' select recipts.reciptnumber, stores.c_storename, customers.custname,'
    + ' Ltrim(recipts.yearid) +''_''+ Ltrim(recipts.serverid) +''_''+ Ltrim(recipts.reciptid) as KeyID,'
    + ' stores.c_storename +''_''+ customers.custname + case when ((lookups.name is not null) and (lookups.name<>''''))'
    + ' then ''_''+ lookups.name else '''' end as Caption' +
    ' from customers inner join recipts on customers.custid = recipts.personid1 inner join stores'
    + ' on recipts.storeid = stores.n_storeid left outer join lookups' +
    ' on recipts.secondtype = lookups.lookupid where (recipts.yearid =%d)and(recipts.recipttype =%d)',
    [APPBank.Year, qryItemsCostType.AsInteger]);
  if searchCode_L1_L2F.SearchCode2(Dmf.adcAccounting, 'عامل هزینه', sqlText,
    ['کد', 'نام ', 'caption', '', ''], Results, [80, 200, 200, 0, 0], alLeft)
  then
    qryItems.fieldbyname('CostCode').AsString := Results[3];
end;

procedure TCommitmentsF.qryMasterBeforePost(DataSet: TDataSet);
var
  msg: String;
begin
  inherited;
  if qryItems.State in dsEditModes then
  begin
    if ((qryItemsBed.AsCurrency) = 0) then
      qryItems.Cancel
    else
      qryItems.Post;
  end; // if

  // if not CheckRequiredFields(qryMaster) then
  // begin
  // Abort;
  // exit;
  // end; // if
end;

procedure TCommitmentsF.qryMasterStatusGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    2:
      Text := 'بررسی شده';
    1:
      Text := 'بررسی نشده';
    3:
      Text := 'تایید شده';
  end;
end;

procedure TCommitmentsF.qryMasterStatusSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  if Text = 'بررسی شده' then
    Sender.AsInteger := 2;
  if Text = 'بررسی نشده' then
    Sender.AsInteger := 1;
  if Text = 'تایید شده' then
    Sender.AsInteger := 3;
end;

procedure TCommitmentsF.qryItemsBeforePost(DataSet: TDataSet);
begin
  inherited;
  if qryItemsBed.AsString = '' then
    qryItemsBed.AsString := '0';
  CalcRemaining;
  if (DataSet.fieldbyname('bed').AsCurrency <= 0) or
    ((DataSet.fieldbyname('CType').AsInteger = 1) and
    (SumRemaining - DataSet.fieldbyname('bed').AsCurrency <= 0)) then
  begin
    Warn('مبلغ  معتبر نيست.');
    DBEdit10.SetFocus;
    Abort;
  end;
end;

procedure TCommitmentsF.qryItemsBesGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    1:
      Text := 'افزایشی';
    -1:
      Text := 'کاهشی'
  end;
end;

procedure TCommitmentsF.qryItemsBesSetText(Sender: TField; const Text: string);
begin
  inherited;
  if Text = 'افزایشی' then
    Sender.AsInteger := 1;
  if Text = 'کاهشی' then
    Sender.AsInteger := -1;

end;

procedure TCommitmentsF.qryItemsBudgetTopicIDChange(Sender: TField);
begin
  inherited;
  History;
  CalcRemaining;
end;

procedure TCommitmentsF.qryItemsCashtypeChange(Sender: TField);
begin
  inherited;
  CalcRemaining;
end;

procedure TCommitmentsF.qryItemsCashtypeGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    1:
      Text := 'نقدی';
    2:
      Text := 'غیر نقدی'
  end;
end;

procedure TCommitmentsF.qryItemsCashtypeSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  if Text = 'نقدی' then
    Sender.AsInteger := 1;
  if Text = 'غیر نقدی' then
    Sender.AsInteger := 2;
end;

procedure TCommitmentsF.qryItemsCostTypeChange(Sender: TField);
begin
  inherited;
  with _qryCost, Parameters do
  begin
    Close;
    ParamByName('YearId').Value := APPBank.Year;
    ParamByName('recipttype').Value := qryItemsCostType.AsInteger;
    Open;
  end;

end;

procedure TCommitmentsF.qryItemsCostTypeGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  // case Sender.AsInteger of
  // 1:
  // Text := 'سفارشات';
  // 2:
  // Text := 'رسید انبار';
  // 3:
  // Text := 'قرارداد';
  // end;
end;

procedure TCommitmentsF.qryItemsCostTypeSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  // if Text = 'سفارشات' then
  // Sender.AsInteger := 1;
  // if Text = 'رسید انبار' then
  // Sender.AsInteger := 2;
  // if Text = 'قرارداد' then
  // Sender.AsInteger := 3;
end;

procedure TCommitmentsF.qryItemsCtypeChange(Sender: TField);
begin
  inherited;
  CalcRemaining;
end;

procedure TCommitmentsF.qryItemsCtypeGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    1:
      Text := 'اعتباری';
    2:
      Text := 'فاقد اعتبار'
  end;
end;

procedure TCommitmentsF.qryItemsCtypeSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  if Text = 'اعتباری' then
    Sender.AsInteger := 1;
  if Text = 'فاقد اعتبار' then
    Sender.AsInteger := 2;
end;

procedure TCommitmentsF.FormDestroy(Sender: TObject);
begin
  inherited;
  qryItems.Close;
  qryMaster.Close;
  SaveColWidth(DBGrid1);
  SaveColWidth(DBGrid2);
end;

procedure TCommitmentsF.showBigNum(num: Currency);
begin
  // aBigPanel.Caption := CurrToStrF(num, ffCurrency, 0);
  // horoofPanel.Caption := num2alphabet(trunc(num));
end;

procedure TCommitmentsF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1, True);
  SetColSize(DBGrid2, 0, false);
end;

procedure TCommitmentsF.qryItemsAfterPost(DataSet: TDataSet);
begin
  inherited;
  CalculateSummary;
end;

procedure TCommitmentsF.InitForm;

begin

end;

procedure TCommitmentsF.N1Click(Sender: TObject);
begin
  inherited;
  try
    qryMaster.DisableControls;
    qryItems.DisableControls;
    case (Sender as TMenuItem).Tag of
      1:
        begin
          ppDBPipeline1.RangeBegin := rbCurrentRecord;
          ppDBPipeline1.RangeEnd := reCurrentRecord;
        end;
      2:
        begin
          ppDBPipeline1.RangeBegin := rbFirstRecord;
          ppDBPipeline1.RangeEnd := reLastRecord;
        end;
    end;
    InitReportFile(ppReport1, 'Commitments', DBGrid1, ppDBPipeline1);
  finally
    qryMaster.EnableControls;
    qryItems.EnableControls;
  end;
end;

procedure TCommitmentsF.ppDBText14GetText(Sender: TObject; var Text: string);
begin
  inherited;
  case StrToInt(Text) of
    1:
      Text := 'سفارشات';
    2:
      Text := 'رسید انبار';
    3:
      Text := 'قرارداد';
  end;
end;

procedure TCommitmentsF.ppDBText8GetText(Sender: TObject; var Text: string);
begin
  inherited;
  case StrToInt(Text) of
    1:
      Text := 'نقدی';
    2:
      Text := 'غیر نقدی';
  end;
end;

procedure TCommitmentsF.ppDBText9GetText(Sender: TObject; var Text: string);
begin
  inherited;
  case StrToInt(Text) of
    1:
      Text := 'افزایشی';
    -1:
      Text := 'کاهشی';
  end;
end;

procedure TCommitmentsF.ppLabel17GetText(Sender: TObject; var Text: string);
begin
  inherited;
  Text := DBText5.Caption;
end;

procedure TCommitmentsF.ppLabel18GetText(Sender: TObject; var Text: string);
begin
  inherited;
  Text := dblkcbbInterfaceID.Text;
end;

procedure TCommitmentsF.ppLabel1GetText(Sender: TObject; var Text: string);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TCommitmentsF.srcItemsDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  CalculateSummary;
end;

procedure TCommitmentsF.srcItemsStateChange(Sender: TObject);
begin
  inherited;
  FreeReservedCodes(Dmf.adcAccounting, 'acc.budgetitems');
  PnlOkItem.Visible := qryItems.State in dsEditModes;
  Panel6.Enabled := not PnlOkItem.Visible;
  grp1.Enabled := Panel6.Enabled;
  PnlNewItem.Visible := not PnlOkItem.Visible;
  Panel4.Enabled := PnlOkItem.Visible;
  if qryItems.State in dsEditModes then
  begin
    Panel4.BringToFront;
    DBGrid2.DrawingStyle := gdsGradient;
    History;
    CalcRemaining;
  end
  else
    Panel4.SendToBack;

end;

procedure TCommitmentsF.History;
begin
  with qryHistory do
  begin
    Close;
    Parameters.ParamByName('ID').Value := qryItemsBudgetTopicID.AsInteger;
    Parameters.ParamByName('ID2').Value := qryItemsBudgetTopicID.AsInteger;
    Parameters.ParamByName('ID3').Value := qryItemsBudgetTopicID.AsInteger;
    Parameters.ParamByName('ID4').Value := qryItemsBudgetTopicID.AsInteger;
    Parameters.ParamByName('ID5').Value := qryItemsBudgetTopicID.AsInteger;
    Open;
  end;
end;

procedure TCommitmentsF.CalcRemaining;
var
  sumcommitments, sumapproved: Currency;
begin
  if ((qryItemsBudgetTopicID.AsInteger <> 0) and (qryItemsCtype.AsInteger = 1))
  then
  begin
    with Dmf.qry_Temp do
    begin
      Close;
      SQL.Text :=
        Format(' select isnull(SUM(BI.Bes*BI.Bed),0) from acc.BudgetItems as BI'
        + ' inner join acc.Budgets B' + ' on BI.BudgetID=B.BudgetID' +
        ' inner join acc.Interfaces as I' + ' on I.InterfaceID=B.InterfaceID' +
        ' where (I.BudgetEffect=1) and (BI.BudgetTopicID=%d) and (BI.Cashtype=%d)'
        + ' and (B.BudgetDate<=''%s'') and (B.YearID=%d)',
        [qryItemsBudgetTopicID.AsInteger, qryItemsCashtype.AsInteger,
        qryMasterBudgetDate.AsString, APPBank.Year]);
      Open;
      sumapproved := Fields[0].AsCurrency;
      Close;
      SQL.Text :=
        Format(' select isnull(SUM(BI.Bes*BI.Bed),0) from acc.BudgetItems as BI'
        + ' inner join acc.Budgets B' + ' on BI.BudgetID=B.BudgetID' +
        ' inner join acc.Interfaces as I' + ' on I.InterfaceID=B.InterfaceID' +
        ' where (I.BudgetEffect=2) and (BI.BudgetTopicID=%d) and (BI.Cashtype=%d) and (B.BudgetID<%d)'
        + ' and (BI.Ctype=1) and (BI.BudgetItemID<>%d)',
        [qryItemsBudgetTopicID.AsInteger, qryItemsCashtype.AsInteger,
        qryMasterBudgetID.AsInteger, qryItemsBudgetItemID.AsInteger]);
      Open;
      sumcommitments := Fields[0].AsCurrency;
      Close;
    end;
    SumRemaining := sumapproved - sumcommitments;
    StatusBar2.Panels[1].Text := 'مانده اعتبار:   ' + CurrToStrF(SumRemaining,
      ffCurrency, 0);
  end
  else
  begin
    SumRemaining := 0;
    StatusBar2.Panels[1].Text := 'مانده اعتبار:   ' + 'ــــ';
  end;
end;

procedure TCommitmentsF.FindBudget(budgectID: Integer);
begin
  CreateMDIForm3(false, TCommitmentsF, CommitmentsF, MainF);
  with CommitmentsF do
    try
      qryItems.DisableControls;
      qryMaster.DisableControls;
      qryMaster.Filter := Format('BudgetID=%d', [budgectID]);
      qryMaster.Filtered := True;
      if (not(qryMaster.Locate('BudgetID', (budgectID), [loPartialKey]))) then
        Warn('سند در دسترس نمی باشد');
    finally
      qryItems.EnableControls;
      qryMaster.EnableControls;
    end;
end;

end.
