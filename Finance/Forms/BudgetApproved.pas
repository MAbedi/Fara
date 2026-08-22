unit BudgetApproved;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, Mask, DBCtrls, math,
  ComCtrls, ppBands, ppClass, ppCtrls, ppPrnabl, ppCache, ppDB, ppParameter,
  ppProd, ppReport, ppComm, ppRelatv, ppDBPipe, ppStrtch, ppSubRpt, ppTypes,
  Menus, ppDesignLayer, System.ImageList, System.Actions, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, CedarDbGrid;

type
  TBudgetApprovedF = class(Ttemplate2MDIF)
    qryMaster: TADOQuery;
    srcMaster: TDataSource;
    qryMasterBudgetSerial: TIntegerField;
    qryMasterBudgetDate: TStringField;
    qryItems: TADOQuery;
    srcItems: TDataSource;
    qryItemsBudgetItemID: TIntegerField;
    qryItemsBudgetID: TIntegerField;
    qryItemsItemSerial: TIntegerField;
    qryItemsBudgetTopicID: TIntegerField;
    qryItemsBed: TBCDField;
    qryItemsItemNote_L1: TStringField;
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
    BitBtn16: TBitBtn;
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
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    btn2: TBitBtn;
    lbl6: TLabel;
    dblkcbbInterfaceID: TDBLookupComboBox;
    grp1: TGroupBox;
    dbredtNote_L1: TDBRichEdit;
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
    qryMasterYearID: TIntegerField;
    Label1: TLabel;
    DBText5: TDBText;
    qryMasterStatus: TWordField;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppDBPipeline2: TppDBPipeline;
    ppParameterList1: TppParameterList;
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
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDetailBand2: TppDetailBand;
    ppShape3: TppShape;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppHeaderBand1: TppHeaderBand;
    PopPrint: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    ppLabel14: TppLabel;
    qryItemsEntity: TFloatField;
    qryItemsAccCode: TIntegerField;
    qryItemsDetailCode: TIntegerField;
    qryUnits: TADOQuery;
    qryItemsUnitPrice: TBCDField;
    qryInterfaceamountActive: TWordField;
    qryInterfaceWeightActive: TWordField;
    qryInterfaceAcc_RelateShowKind: TWordField;
    qryItemsUnitID: TIntegerField;
    qryItems_UnitName: TStringField;
    qryItemsCustomerID: TIntegerField;
    qryCustomers: TADOQuery;
    qryInterfaceCustGroups: TStringField;
    qryItemsExecuteTime: TStringField;
    BitBtn1: TBitBtn;
    actGetExcel: TAction;
    DBGrid1: TCedarDbgrid;
    actViewFile: TAction;
    BitBtn2: TBitBtn;
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
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure qryMasterBeforePost(DataSet: TDataSet);
    procedure qryItemsBeforePost(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure DBGrid1ColEnter(Sender: TObject);
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure qryItemsAfterPost(DataSet: TDataSet);
    procedure DBGrid1Enter(Sender: TObject);
    procedure srcItemsDataChange(Sender: TObject; Field: TField);
    procedure qryItemsBesGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure qryItemsBesSetText(Sender: TField; const Text: string);
    procedure qryItemsCashtypeGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure qryItemsCashtypeSetText(Sender: TField; const Text: string);
    procedure qryMasterStatusGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure actPrintExecute(Sender: TObject);
    procedure ppLabel1GetText(Sender: TObject; var Text: string);
    procedure N1Click(Sender: TObject);
    procedure ppLabel14GetText(Sender: TObject; var Text: string);
    procedure ppDBText8GetText(Sender: TObject; var Text: string);
    procedure ppDBText9GetText(Sender: TObject; var Text: string);
    procedure qryInterfaceAfterScroll(DataSet: TDataSet);
    procedure qryItemsEntityChange(Sender: TField);
    procedure actGetExcelExecute(Sender: TObject);
    procedure actViewFileExecute(Sender: TObject);
  private
    formType: byte;
    activeGetExcelF: Boolean;
    function ValidateArticle(out ResultMessage: String): Boolean;
    procedure gridkeyenter(Sender: TObject; var Key: Char);
    procedure showBigNum(num: Currency);
    procedure CalculateSummary;
    procedure InitForm;

    { Private declarations }
  public
    { Public declarations }
    procedure FindBudget(budgectID: Integer);
  end;

var
  BudgetApprovedF: TBudgetApprovedF;

implementation

uses Dm, searchCode_L1_L2, GlobalPro, mmessage, search2, sort2, searchCode_ADO,
  sndkey32,
  Note, Main, GetExcel, FaraConsts, FormFunctions, ViewFileOnServer;

{$R *.dfm}

procedure TBudgetApprovedF.CalculateSummary;
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

procedure TBudgetApprovedF.srcMasterStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qryMaster.State in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
  DBGrid1.ReadOnly := newPanel.Visible;
  btn1.Enabled:=  okPanel.Visible;
  // Panel1.Enabled:=okPanel.Visible;
  FreeReservedCodes(Dmf.adcAccounting, 'acc.budgets');
  FreeReservedCodes(Dmf.adcAccounting, 'acc.budgetitems');

end;

procedure TBudgetApprovedF.qryMasterAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.fieldbyname('BudgetID').AsInteger := GetANewCode('', 'ACC.Budgets',
    'BudgetID', Dmf.adcAccounting);
  DataSet.fieldbyname('BudgetSerial').AsInteger :=
    GetANewCode('',
    'select max(BudgetSerial) from acc.Budgets  inner join  acc.Interfaces' +
    ' ON  acc.Interfaces.InterfaceID=acc.Budgets.InterfaceID' +
    ' WHERE  (acc.Interfaces.BudgetEffect=1)', 'BudgetSerial',
    Dmf.adcAccounting);
  DataSet.fieldbyname('BudgetDate').AsString := var_glb_CurrentDate;
  DataSet.fieldbyname('CompanyCode').AsInteger := opta.DefaultCompany;
  DataSet.fieldbyname('YearID').AsInteger := APPBank.Year;
  // DBEdit5.SetFocus;
  dblkcbbInterfaceID.SetFocus;
end;

procedure TBudgetApprovedF.qryMasterAfterPost(DataSet: TDataSet);
begin
  inherited;
  if qryItems.State in [dsedit] then
    qryItems.Post;
  qryItems.UpdateBatch();
  CalculateSummary;
  BigMessage('ثبـت شد.', 1);
end;

procedure TBudgetApprovedF.qryMasterAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryItems do
  begin
    Active := false;
    Parameters.ParamByName('BudgetID').Value :=
      qryMaster.fieldbyname('BudgetID').AsInteger;
    Parameters.ParamByName('CompanyCode').Value :=
      qryMaster.fieldbyname('CompanyCode').AsInteger;


    Active := true;
  end;
end;

procedure TBudgetApprovedF.FormCreate(Sender: TObject);
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
      SQL.Add('WHERE (UserID = :UserID)))');
      Parameters.ParamByName('UserID').Value := User.ID;
    end;
  end;
  activeGetExcelF := false;
  qryInterface.Open;

  with qryItems do
  begin
    SQL.Text :=
      'SELECT BudgetItemID, BudgetID, ItemSerial, BudgetTopicID, ProjectID, Bed, Bes, Entity, Weight, ItemNote_L1,';
    SQL.Add('ItemNote_L2 as ExecuteTime , CustomerID');
    SQL.Add(', AccCode, DetailCode, CTopic1, CTopic2, Cashtype, CompanyCode, AidDate, AidNum, Ctype, CostType, CostCode,');
    SQL.Add('UnitPrice, UnitID');
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
    SQL.Add('(acc.Budgets.InterfaceID in (select acc.Interfaces.InterfaceID from acc.Interfaces where acc.Interfaces.BudgetEffect=1)) and');
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

procedure TBudgetApprovedF.btn1Click(Sender: TObject);
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

procedure TBudgetApprovedF.qryInterfaceAfterScroll(DataSet: TDataSet);
var
  Fvisible: Boolean;
begin
  inherited;
  Fvisible := DataSet.fieldbyname('amountActive').AsInteger = 1;
  DBGrid1.Columns[ColumnIndexByFieldName(DBGrid1, '_UnitName')].Visible
    := Fvisible;
  DBGrid1.Columns[ColumnIndexByFieldName(DBGrid1, 'Entity')].Visible :=
    Fvisible;
  DBGrid1.Columns[ColumnIndexByFieldName(DBGrid1, 'UnitPrice')].Visible
    := Fvisible;
  DBGrid1.Columns[ColumnIndexByFieldName(DBGrid1, 'bed')].ReadOnly := Fvisible;

  DBGrid1.Columns[ColumnIndexByFieldName(DBGrid1, 'AccCode')].Visible :=
    DataSet.fieldbyname('Acc_RelateShowKind').AsInteger = 2;
  DBGrid1.Columns[ColumnIndexByFieldName(DBGrid1, 'DetailCode')].Visible :=
    DataSet.fieldbyname('Acc_RelateShowKind').AsInteger = 2;

  if not qryInterfaceCustGroups.IsNull then
    with qryCustomers do
    begin
      Close;
      Parameters.ParamByName('CustomerGrps').Value :=
        QuotedStr(',' + qryInterfaceCustGroups.AsString + ',');
      Open;
    end;
end;

procedure TBudgetApprovedF.qryItemsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.fieldbyname('BudgetItemID').AsInteger :=
    GetANewCode('', 'ACC.BudgetItems', 'BudgetItemID', Dmf.adcAccounting);
  DataSet.fieldbyname('BudgetID').AsInteger := qryMasterBudgetID.AsInteger;
  DataSet.fieldbyname('bes').AsInteger := 1;
  DataSet.fieldbyname('bed').AsInteger := 0;

end;

procedure TBudgetApprovedF.btn2Click(Sender: TObject);
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

procedure TBudgetApprovedF.qryMasterAfterCancel(DataSet: TDataSet);
begin
  inherited;
  qryItems.Requery;
end;

procedure TBudgetApprovedF.qryMasterBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('آيا براي حذف مطمئن هستيد؟‏') <> mrYes then
    Abort;
end;

procedure TBudgetApprovedF.qryMasterAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('حذف شد.', 1);
end;

procedure TBudgetApprovedF.actExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TBudgetApprovedF.actGetExcelExecute(Sender: TObject);
begin
  inherited;
  try
    activeGetExcelF := true;
    GetExcelF.ShowImPortExcel(qryItems);
  finally
    activeGetExcelF := false;

  end;
end;

procedure TBudgetApprovedF.actPrintExecute(Sender: TObject);
begin
  inherited;
  PopPrint.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TBudgetApprovedF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryItems);
end;

procedure TBudgetApprovedF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryItems);
end;

procedure TBudgetApprovedF.actViewFileExecute(Sender: TObject);
begin
  inherited;
  ViewFileOnServerF.Enter(qryMaster.FieldByName('BudgetID').AsString,
    'BudgetApprovedsFiles', False);

end;

procedure TBudgetApprovedF.DBGrid1EditButtonClick(Sender: TObject);
var
  c: String;
  aDataSet: TDataSet;
  TmpChar: Char;
  i: Smallint;
  sqlText: String;
  Results: array [0 .. 5] of String;

begin
  inherited;
  if (Sender as TCedarDbgrid).ReadOnly then
    exit;
  i := (Sender as TCedarDbgrid).SelectedIndex;
  aDataSet := (Sender as TCedarDbgrid).DataSource.DataSet;
  (Sender as TCedarDbgrid).SelectedIndex := i;
  if not(aDataSet.State in dsEditModes) then
    aDataSet.Edit;
  case i of
    0:
      begin
        sqlText :=
          'select BudgetTopicID, BudgetCaption_L1, BudgetCaption_L2 from Acc.BudgetTopics where LevelID = '
          + '(select MAX(LevelID) from acc.BudgetTopics)';
        if searchCode_L1_L2F.SearchCode2(Dmf.adcAccounting, 'بودجه', sqlText,
          ['كد ', 'شرح', 'Budget Caption'], Results, [80, 350, 350], alLeft)
        then
          qryItems.fieldbyname('BudgetTopicID').AsString := Results[0];
        TmpChar := #13;
        gridkeyenter(Sender, TmpChar);
      end;
    2:
      begin
        sqlText :=
          'SELECT CompanyCode,CompanyName_l1,CompanyName_l2 FROM acc.Companies ';
        if (CompanyFilterinLogin) and (not User.PowerAdmin) then
          sqlText := sqlText + 'WHERE (CompanyCode = ' +
            FcompanyCodeLogin.ToString + ')';
        if searchCode_L1_L2F.SearchCode2(Dmf.adcAccounting,
          'محل تامین/مرکز هزینه', sqlText, ['کد', 'نام ', 'caption'], Results,
          [30, 200, 200], alLeft) then
          qryItems.fieldbyname('CompanyCode').AsString := Results[0];
        TmpChar := #13;
        gridkeyenter(Sender, TmpChar);
      end;
  end; // case
  if (Sender as TCedarDbgrid).Columns[i].FieldName = 'AccCode' then
  begin
    sqlText :=
      'select BR.TopicCode,ca.MoeenName_L1 from acc.BudgetTopicRange as BR ' +
      'inner join acc.Categories as ca on BR.TopicCode = ca.TopicCode ' +
      'where BR.BudgetTopicID = ' + qryItemsBudgetTopicID.AsString;
    if searchCode_L1_L2F.SearchCode2(Dmf.adcAccounting, 'کد حساب', sqlText,
      ['کد', 'نام '], Results, [30, 200], alLeft) then
      qryItems.fieldbyname('AccCode').AsString := Results[0];
    TmpChar := #13;
    gridkeyenter(Sender, TmpChar);
  end;
  if (Sender as TCedarDbgrid).Columns[i].FieldName = 'DetailCode' then
  begin
    sqlText :=
      'select DR.DetailCode,Detail.DetailName_L1 from acc.DetailRange as DR ' +
      'inner join acc.Details as Detail on DR.DetailCode = Detail.DetailCode  '
      + 'where DR.TopicCode =' + qryItemsAccCode.AsString;
    if searchCode_L1_L2F.SearchCode2(Dmf.adcAccounting, 'کد تفصیلی', sqlText,
      ['کد', 'نام '], Results, [30, 200], alLeft) then
      qryItems.fieldbyname('AccCode').AsString := Results[0];
    TmpChar := #13;
    gridkeyenter(Sender, TmpChar);
  end;
end;

procedure TBudgetApprovedF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  gridkeyenter(Sender, Key);
end;

procedure TBudgetApprovedF.gridkeyenter(Sender: TObject; var Key: Char);
var
  nextIndex: Integer;
  curIndex: Integer;
  aDataSet: TDataSet;
  TopicCodeIndex, DetailCodeIndex: Integer;
begin
  curIndex := (Sender as TCedarDbgrid).SelectedIndex;
  nextIndex := curIndex;
  case Key of
    #13:
      begin
        if ShiftDown then
          exit;
        aDataSet := (Sender as TCedarDbgrid).DataSource.DataSet;
        Key := #0;
        case curIndex of
          // 1:
          // nextIndex := 2;
          // 2:
          // nextIndex := 3;
          // 3:
          // nextIndex := 4;
          // 4:
          // nextIndex := 5;
          // 5:
          // nextIndex := 6;
          // 6:
          // nextIndex := 7;
          // 7:
          // nextIndex := 8;
          // 8:
          // nextIndex := 9;
          // 9:
          // nextIndex := 10;
          // 10:
          // nextIndex := -1;
          0:
            begin
              if (aDataSet.fieldbyname('BudgetTopicID').AsString = '') or
                (aDataSet.fieldbyname('BudgetTopicID').AsCurrency = 0) then
                nextIndex := -2
              else
                nextIndex := 1;
            end; // 5
          15:
            nextIndex := -1;
        else
          nextIndex := curIndex + 1;
        end; // case

      end; // #13
    '+':
      begin
        Key := #0;
        nextIndex := curIndex - 1;
        while (nextIndex >= 0) and (not(DBGrid1.Columns[nextIndex].Visible) OR
          (DBGrid1.Columns[nextIndex].ReadOnly)) do
          Dec(nextIndex);
        if nextIndex < 0 then
          nextIndex := -3;
      end; // +
    '*':
      begin
        Key := #0;
        SendKeys('000', false);
      end; // *
    #27:
      if (Sender as TCedarDbgrid).DataSource.DataSet.State in dsEditModes then
        (Sender as TCedarDbgrid).DataSource.DataSet.Cancel;

      #32, #157:
    begin
      TopicCodeIndex := ColumnIndexByFieldName(DBGrid1, 'AccCode');
      DetailCodeIndex := ColumnIndexByFieldName(DBGrid1, 'DetailCode');
      if curIndex in [0, 2, TopicCodeIndex, DetailCodeIndex] then
      begin
        Key := #0;
        DBGrid1EditButtonClick(Sender);
      end;
    end; // if
  end; // case
  if nextIndex >= 0 then
    while (nextIndex < DBGrid1.Columns.Count) and
      (not(DBGrid1.Columns[nextIndex].Visible) OR
      (DBGrid1.Columns[nextIndex].ReadOnly)) do
      Inc(nextIndex);
  if nextIndex >= (Sender as TCedarDbgrid).Columns.Count then
    nextIndex := -1;
  if (curIndex <> nextIndex) then
    case nextIndex of
      - 1:
        begin
          sendkey(VK_DOWN, [], false);
          (Sender as TCedarDbgrid).SelectedIndex := 0;
        end; // 0
      -2:
        begin
          if (Sender as TCedarDbgrid).DataSource.State in dsEditModes then
            (Sender as TCedarDbgrid).DataSource.DataSet.Cancel;
          Perform(WM_NEXTDLGCTL, 0, 0);
        end; // -2
      -3:
        begin
          if (Sender as TCedarDbgrid).DataSource.State in dsEditModes then
            (Sender as TCedarDbgrid).DataSource.DataSet.Cancel;
          Perform(WM_NEXTDLGCTL, 1, 0);
        end; // -3
    else
      (Sender as TCedarDbgrid).SelectedIndex := nextIndex;
    if nextIndex in [4, 5] then
    begin
      DBGrid1.EditorMode := true;
      keybd_event(VK_MENU, MapVirtualKey(VK_MENU, 0), 0, 0);
      keybd_event(VK_DOWN, MapVirtualKey(VK_DOWN, 0), 0, 0);
      keybd_event(VK_DOWN, 0, KEYEVENTF_KEYUP, 0);
      keybd_event(VK_MENU, 0, KEYEVENTF_KEYUP, 0);
    end;
    end; // case
end;

function TBudgetApprovedF.ValidateArticle(out ResultMessage: String): Boolean;
begin
  ResultMessage := '';
  Result := false;
  with qryItems do
  begin
    // // if FieldByName('_MoeenName_L1').AsString='' then begin
    // // ResultMessage:='كد حساب معتبر نيست.';
    // // Exit;
    // // end;//if
    // IF pnlAcc.Visible then
    // if fieldbyname('_accName').AsString = '' then
    // with Dmf.qry_Temp do
    // begin
    // Active := false;
    // SQL.Text :=
    // 'SELECT TopicCode,MoeenName_L1 FROM  acc.Categories where TopicCode='
    // + IntToStr(qryItems.fieldbyname('AccCode').AsInteger);
    // Active := true;
    // if qryItems.fieldbyname('AccCode').AsString = '' then
    // begin
    // ResultMessage := 'كد حساب معتبر نيست.';
    // exit;
    // end; // if
    // end; // with
    // if HasDetail(fieldbyname('AccCode').AsInteger) then
    // begin
    // if not IsValidDetailForMoeen(fieldbyname('AccCode').AsInteger,
    // fieldbyname('DetailCode').AsInteger) then
    // begin
    // // if GetDetailsOfMoeen(Fieldbyname('TopicCode').AsLargeInt).IndexOf(fieldbyname('DetailCode').AsString)=-1 then begin
    // DBGrid1.SelectedIndex := 3;
    // ResultMessage := 'كد تفصيلي معتبر نيست.';
    // exit;
    // end;
    // end
    // else
    // begin
    // if fieldbyname('DetailCode').AsInteger <> 0 then
    // begin
    // ResultMessage := 'كد تفصيلي ' + fieldbyname('DetailCode').AsString +
    // 'براي كد حساب ' + fieldbyname('AccCode').AsString + ' معتبر نيست.';
    // DBGrid1.SelectedIndex := 3;
    // exit;
    // end;
    // end; // else not HasDetail
    //
    // if HasExpenseCode2(fieldbyname('CTopic1').AsInteger) then begin
    // if not IsValidCTopic2ForCTopics(fieldbyname('CTopic2').AsInteger,fieldbyname('CTopic1').AsInteger) then begin
    // ResultMessage:='كد تفصیلی 3 معتبر نيست.';
    // DBGrid1.SelectedIndex:=1;
    // Exit;
    // end;
    // end ;
    //
    // if HasExpenseCode(fieldbyname('AccCode').AsInteger) then begin
    // if not IsValidCTopicForMoeen(fieldbyname('AccCode').AsInteger,fieldbyname('CTopic1').AsInteger) then begin
    // ResultMessage:='كد تفصیلی 1 معتبر نيست.';
    // DBGrid1.SelectedIndex:=2;
    // Exit;
    // end;
    // end else begin
    // if FieldByName('CTopic1').AsInteger<>0 then begin
    // ResultMessage:='كد تفصیلی 1 ' + FieldByName('CTopic1').AsString + 'براي كد حساب '+ FieldByName('AccCode').AsString + ' معتبر نيست.';
    // DBGrid1.SelectedIndex:=2;
    // Exit;
    // end;
    // end;//else not ExpenseCode

  end; // with
  Result := true;

end;

procedure TBudgetApprovedF.qryMasterBeforePost(DataSet: TDataSet);
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

  if not CheckRequiredFields(qryMaster) then
  begin
    Abort;
    exit;
  end; // if
  // if not ValidateArticle(msg) then
  // begin
  // Warn(msg);
  // Abort;
  // end;
end;

procedure TBudgetApprovedF.qryMasterStatusGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    0:
      Text := 'موقت';
  end;
end;

procedure TBudgetApprovedF.qryItemsBeforePost(DataSet: TDataSet);
begin
  inherited;

  // if qryItemsBed.AsString='' then qryItemsBed.AsString:='0';
  // if qryItemsBes.AsString='' then qryItemsBes.AsString:='0';

  if (DataSet.fieldbyname('bed').IsNull) then
    DataSet.fieldbyname('bed').AsCurrency := 0;

  // if (FieldByName('bed').AsCurrency<0) or (FieldByName('bes').AsCurrency<0) then begin
  // ResultMessage:='مبلغ منفي معتبر نيست.';
  // DBGrid1.SelectedIndex:=6;
  // Exit;
  // end;//if
  /// / mary
  /// /    if (FieldByName('Debt').AsCurrency + FieldByName('Credit').AsCurrency)=0 then begin
  /// /      ResultMessage:='مبلغ وارد نشده است.';
  /// /      DBGrid1.SelectedIndex:=6;
  /// /      Exit;
  /// /    end;//if
  /// /
  //
  // if (FieldByName('bes').AsString = Null) then FieldByName('bes').AsCurrency := 0;

end;

procedure TBudgetApprovedF.qryItemsBesGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    1:
      Text := 'افزایشی';
    -1:
      Text := 'کاهشی';
  end;
end;

procedure TBudgetApprovedF.qryItemsBesSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  if Text = 'افزایشی' then
    Sender.AsInteger := 1;
  if Text = 'کاهشی' then
    Sender.AsInteger := -1;

end;

procedure TBudgetApprovedF.qryItemsCashtypeGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    1:
      Text := 'نقدی';
    2:
      Text := 'غیر نقدی';
  end;
end;

procedure TBudgetApprovedF.qryItemsCashtypeSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  if Text = 'نقدی' then
    Sender.AsInteger := 1;
  if Text = 'غیر نقدی' then
    Sender.AsInteger := 2;
end;

procedure TBudgetApprovedF.qryItemsEntityChange(Sender: TField);
begin
  inherited;
  if (not qryItemsEntity.IsNull) and (not qryItemsUnitPrice.IsNull) then
    qryItemsBed.AsCurrency := qryItemsEntity.AsFloat *
      qryItemsUnitPrice.AsFloat;
end;

procedure TBudgetApprovedF.FormDestroy(Sender: TObject);
begin
  inherited;
  qryItems.Close;
  qryMaster.Close;

end;

procedure TBudgetApprovedF.showBigNum(num: Currency);
begin
  // aBigPanel.Caption := CurrToStrF(num, ffCurrency, 0);
  // horoofPanel.Caption := num2alphabet(trunc(num));
end;

procedure TBudgetApprovedF.DBGrid1ColEnter(Sender: TObject);
begin
  inherited;
  // aBigPanel.Visible := (Sender as TDBGrid).SelectedIndex in [5, 6];
  // if aBigPanel.Visible then
  // begin
  // showBigNum((Sender as TDBGrid).Columns[(Sender as TDBGrid).SelectedIndex]
  // .Field.AsCurrency);
  // aBigPanel.BringToFront;
  // end
  // else
  // aBigPanel.SendToBack;
end;

procedure TBudgetApprovedF.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Sender as TCedarDbgrid).SelectedIndex = 9 then
    if DBGrid1.EditorMode then
      showBigNum(StrToCurrDef(RemoveComma(DBGrid1.InplaceEditor.Text), 0));
end;

procedure TBudgetApprovedF.qryItemsAfterPost(DataSet: TDataSet);
begin
  inherited;
  CalculateSummary
end;

procedure TBudgetApprovedF.DBGrid1Enter(Sender: TObject);
begin
  inherited;
  (Sender as TCedarDbgrid).SelectedIndex := 0;
end;

procedure TBudgetApprovedF.InitForm;

begin

end;

procedure TBudgetApprovedF.N1Click(Sender: TObject);
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
    InitReportFile(ppReport1, 'BudgetApproved', DBGrid1, ppDBPipeline1);
  finally
    qryMaster.EnableControls;
    qryItems.EnableControls;
  end;
end;

procedure TBudgetApprovedF.ppDBText8GetText(Sender: TObject; var Text: string);
begin
  inherited;
  case StrToInt(Text) of
    1:
      Text := 'نقدی';
    2:
      Text := 'غیر نقدی'
  end;
end;

procedure TBudgetApprovedF.ppDBText9GetText(Sender: TObject; var Text: string);
begin
  inherited;
  case StrToInt(Text) of
    1:
      Text := 'افزایشی';
    -1:
      Text := 'کاهشی';
  end;
end;

procedure TBudgetApprovedF.ppLabel14GetText(Sender: TObject; var Text: string);
begin
  inherited;
  Text := dblkcbbInterfaceID.Text;
end;

procedure TBudgetApprovedF.ppLabel1GetText(Sender: TObject; var Text: string);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TBudgetApprovedF.srcItemsDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  CalculateSummary;
end;

procedure TBudgetApprovedF.FindBudget(budgectID: Integer);
begin
  CreateMDIForm3(false, TBudgetApprovedF, BudgetApprovedF, MainF);
  with BudgetApprovedF do
    try
      qryItems.DisableControls;
      qryMaster.DisableControls;
      qryMaster.Filter := Format('BudgetID=%d', [budgectID]);
      qryMaster.Filtered := true;
      if (not(qryMaster.Locate('BudgetID', (budgectID), [loPartialKey]))) then
        Warn('فرم در دسترس نمی باشد');
    finally
      qryItems.EnableControls;
      qryMaster.EnableControls;
    end;
end;

end.
