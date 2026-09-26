{ -----------------------------------------------------------------------------
  Unit Name: RptChecksIn
  Author:    Mahmood
  Purpose:
  History:
  ----------------------------------------------------------------------------- }
unit RptChecksIn;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, DBCtrls, Menus, ppDB, ppDBPipe, StrUtils,
  ppBands, ppClass, ppCtrls, ppVar, ppPrnabl, ppCache, ppComm, ppRelatv,
  ppProd, ppReport, ppStrtch, ppSubRpt, ppModule, ComCtrls,
  ppParameter, Mask, searchCode_ADO, ppDesignLayer, System.ImageList,
  System.Actions, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid, xcalAdvEdit,
  xcalAdvMEdBtn, xcalPlannerMaskDatePicker;

type
  TRptChecksInF = class(Ttemplate2MDIF)
    qryChecksIn: TADOQuery;
    srcChecksIn: TDataSource;
    qryChecksInFormItemID: TIntegerField;
    qryChecksInCheckNumber: TStringField;
    qryChecksInCheckDate: TStringField;
    qryChecksInBankName: TStringField;
    qryChecksInAccountNumber: TStringField;
    qryChecksInItemAmount: TBCDField;
    qryChecksInItemNote: TStringField;
    qryChecksInFormNumber: TIntegerField;
    qryChecksInFormDate: TStringField;
    qryChecksInCustomerID2: TIntegerField;
    qryChecksInFormType: TWordField;
    qryChecksInFormCaption: TStringField;
    qryChecksInCustomerID1: TIntegerField;
    qryChecksInDetailDataType: TWordField;
    qryInitQry: TADOQuery;
    BitBtn2: TBitBtn;
    BitBtn7: TBitBtn;
    DBNavigator1: TDBNavigator;
    BitBtn4: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn5: TBitBtn;
    actFilter: TAction;
    qryChecksInCustname1: TStringField;
    qryChecksInCustname2: TStringField;
    PopMenu: TPopupMenu;
    RptChecksIn2: TMenuItem;
    RptChecksIn3: TMenuItem;
    actPrint: TAction;
    RptChecksIn1: TMenuItem;
    ppRptList: TppReport;
    ppDBPipeline1: TppDBPipeline;
    actSendExel: TAction;
    actSort: TAction;
    qryChecksInBudgetCode: TIntegerField;
    StatusBar1: TStatusBar;
    BitBtn1: TBitBtn;
    qryChecksInFormID: TIntegerField;
    actShow: TAction;
    qryChecksInCity: TStringField;
    AllC_l_i_c_k_: TMenuItem;
    ppHeaderBand2: TppHeaderBand;
    ppShape4: TppShape;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLine4: TppLine;
    ppLabel11: TppLabel;
    ppLabel16: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel22: TppLabel;
    ppLine5: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppDBText16: TppDBText;
    ppDBText18: TppDBText;
    ppLine35: TppLine;
    ppLine52: TppLine;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel56: TppLabel;
    ppLine65: TppLine;
    ppDetailBand2: TppDetailBand;
    ppDBText21: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText13: TppDBText;
    ppDBText12: TppDBText;
    ppDBText22: TppDBText;
    ppDBText11: TppDBText;
    ppDBText10: TppDBText;
    ppDBText17: TppDBText;
    ppLine30: TppLine;
    ppLine20: TppLine;
    ppLine31: TppLine;
    ppLine19: TppLine;
    ppLine36: TppLine;
    ppLine18: TppLine;
    ppLine28: TppLine;
    ppLine29: TppLine;
    ppLine53: TppLine;
    ppLine32: TppLine;
    ppDBText26: TppDBText;
    ppLine66: TppLine;
    ppSummaryBand2: TppSummaryBand;
    ppShape6: TppShape;
    ppLabel34: TppLabel;
    ppDBCalc4: TppDBCalc;
    ppLabel35: TppLabel;
    ppLine42: TppLine;
    ppDBCalc3: TppDBCalc;
    ppLine38: TppLine;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel29: TppLabel;
    ppShape5: TppShape;
    ppDBCalc2: TppDBCalc;
    ppLabel33: TppLabel;
    ppLine39: TppLine;
    ppDBCalc1: TppDBCalc;
    ppLine37: TppLine;
    ppLabel54: TppLabel;
    qryChecksInServerID: TIntegerField;
    qryChecksInYearID: TIntegerField;
    qryChecksInChecktype: TWordField;
    qryChecksInChecktypeName: TStringField;
    qryChecksInchk_ExistAttachments: TStringField;
    qryChecksInCheckCounter: TIntegerField;
    grpMaster: TGroupBox;
    btnMaster: TSpeedButton;
    dbedtMasterCode: TDBEdit;
    dbedtName: TDBEdit;
    dbnvgr1: TDBNavigator;
    srcMaster: TDataSource;
    qryMaster: TADOQuery;
    actAddpopViewFile: TAction;
    qryChecksInAccountNumberNew: TStringField;
    DBGrid1: TCedarDbgrid;
    qryChecksInMobile: TStringField;
    qryChecksInCTopicCode: TStringField;
    qryChecksInCTopicCode2: TStringField;
    actShowCheckDate: TAction;
    qryChecksInCTopicCodeD: TStringField;
    qryChecksInCTopicCode2D: TStringField;
    qryChecksInTopicCode: TLargeintField;
    qryChecksInDetailCode: TStringField;
    qryChecksInCTopicCode3: TStringField;
    qryChecksInTopicCodeD: TLargeintField;
    qryChecksInDetailCodeD: TStringField;
    qryChecksInCTopicCode3D: TStringField;
    actCallOtherNationalCode: TAction;
    qryChecksInSyadSystem: TBooleanField;
    qryChecksInSellsEmporium: TIntegerField;
    qryChecksInSellsEmporiumName: TWideStringField;
    qryChecksInHunterCode: TStringField;
    qryChecksInCustomerID2M: TIntegerField;
    qryChecksInCustName2M: TStringField;
    qryChecksInPayTypesName: TStringField;
    procedure actFilterExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNumberGetText(Sender: TObject; var Text: String);
    procedure ppLblFormNameGetText(Sender: TObject; var Text: String);
    procedure ppLblDateGetText(Sender: TObject; var Text: String);
    procedure ppLblCustomerID1GetText(Sender: TObject; var Text: String);
    procedure ppLblCustname1GetText(Sender: TObject; var Text: String);
    procedure ppLblCustomerID2GetText(Sender: TObject; var Text: String);
    procedure ppLblCustname2GetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure actSendExelExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure qryChecksInAfterOpen(DataSet: TDataSet);
    procedure actShowExecute(Sender: TObject);
    procedure AllC_l_i_c_k_Click(Sender: TObject);
    procedure qryMasterAfterScroll(DataSet: TDataSet);
    procedure btnMasterClick(Sender: TObject);
    procedure actAddpopViewFileExecute(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure actShowCheckDateExecute(Sender: TObject);
    procedure actCallOtherNationalCodeExecute(Sender: TObject);
  private
    { Private declarations }
    FormType: String;
    formTypeInt: Integer;
    ShowCheckDate: Boolean;
    CustName1, CustName2: String;
    PayTypes: Boolean;
    procedure UpdateFilter;
    function GetFormTypes(CustomerDocType: string): string;
  public
    { Public declarations }
  end;

var
  RptChecksInF: TRptChecksInF;

implementation

uses filter_ADO, FilterClass_ADO, GlobalPro, DM, search2,
  sort2, FormFunctions, Filter_ADO_Const, mdiMain;

{$R *.dfm}

procedure TRptChecksInF.UpdateFilter;
var
  custIDKindActive, SyadSystem: Integer;
  historicalCheckInventory: Boolean;
  b: Boolean;
begin
  with qryChecksIn do
  begin
    Active := False;
    historicalCheckInventory := formTypeInt in [10, 11, 50];
    SQL.Text := 'SELECT FormItems.FormItemID,';
    SQL.Add('ltrim(rtrim( FormItems.CheckNumber))as CheckNumber, FormItems.CheckDate,FormItems.BankName,');
    SQL.Add('FormItems.AccountNumber,');
    SQL.Add('FormItems.ItemAmount, FormItems.ItemNote, Forms.FormNumber, Forms.FormDate, FormItems.CustomerID2 as CustomerID2,');
    SQL.Add('CASE WHEN LEN(isnull(Customers_2.CustFirstName,'''')) = 0 THEN Customers_2.CustName ELSE');
    SQL.Add('Customers_2.CustFirstName+'' '' +Customers_2.CustName END AS Custname2,');
    SQL.Add('Customers_2.Mobile');
    SQL.Add(', Forms.FormType, FormTypes.FormCaption, Forms.CustomerID1 as CustomerID1,');
    SQL.Add('CASE WHEN LEN(isnull(Customers_1.CustFirstName,'''')) = 0 THEN Customers_1.CustName ELSE');
    SQL.Add('Customers_1.CustFirstName+'' '' +Customers_1.CustName END AS Custname1');
    SQL.Add(', FormTypes.DetailDataType, Forms.BudgetCode,FormItems.FormID, FormItems.City');
    SQL.Add(', Forms.ServerID, Forms.YearID,FormItems.Checktype');
    SQL.Add(', case FormItems.Checktype when 0 then ''چك مدت دار'' when 1 then ''چك روز'' else ''ساير'' end as ChecktypeName');
    SQL.Add(', dbo.Fn_chk_ExistAttachments(FormItems.CheckNumber, FormItems.FormItemID, FormItems.YearID, FormItems.ServerID) AS');
    SQL.Add('chk_ExistAttachments');
    SQL.Add(', FormItems.CheckCounter , FormItems.AccountNumberNew, Forms.CTopicCode, Forms.CTopicCode2');
    SQL.Add(', FormItems.CTopicCode as CTopicCodeD, FormItems.CTopicCode2 AS CTopicCode2D');

    SQL.Add(', Forms.TopicCode, Forms.DetailCode, Forms.CTopicCode3, FormItems.TopicCode AS TopicCodeD');
    SQL.Add(', FormItems.DetailCode AS DetailCodeD, FormItems.CTopicCode3 AS CTopicCode3D, FormItems.SyadSystem');
    SQL.Add(',Forms.SellsEmporium,SellsEmporiums.SellsEmporiumName, FormItems.HunterCode');
    SQL.Add(',Forms.CustomerID2 CustomerID2M ,C2M.CustName CustName2M ,lookupspaytypes.Name AS paytypesname');

    SQL.Add('FROM FormItems INNER JOIN');
    SQL.Add('Forms ON FormItems.YearID = Forms.YearID AND FormItems.ServerID = Forms.ServerID AND FormItems.FormID =');
    SQL.Add('Forms.FormID INNER JOIN');
    SQL.Add('FormTypes ON Forms.FormType = FormTypes.FormType  JOIN');
    SQL.Add('Customers Customers_2 ON FormItems.CustomerID2 = Customers_2.CustID JOIN');
    SQL.Add('Customers Customers_1 ON Forms.CustomerID1 = Customers_1.CustID  JOIN');
    SQL.Add('Customers C2M ON Forms.CustomerID2 = C2M.CustID');
    if not historicalCheckInventory then
    begin
      SQL.Add('LEFT OUTER JOIN');
      SQL.Add('(SELECT FormItems.FormItemID, FormItems.preFormItemID, FormItems.FormID,');
      SQL.Add('FormItems.ServerID, FormItems.YearID');
      SQL.Add(', Forms.FormDate, FormItems.PerServerID, FormItems.CheckDate');
      SQL.Add('FROM FormItems INNER JOIN');
      SQL.Add('Forms ON FormItems.FormID = Forms.FormID AND FormItems.ServerID = Forms.ServerID AND FormItems.YearID');
      SQL.Add('= Forms.YearID');
      SQL.Add('WHERE (Forms.FormDate BETWEEN :DueDateFrom AND :DueDateTo))');
      SQL.Add('FormItems_1 ON FormItems.ServerID =FormItems_1.PerServerID AND FormItems.YearID = FormItems_1.YearID AND');
      SQL.Add('FormItems.FormItemID = FormItems_1.preFormItemID');
    end;

    SQL.Add('INNER JOIN CustomersGroup CG2 ON Customers_2.CustomerGrpID = CG2.CustomerGrpID');
    SQL.Add('inner join SellsEmporiums on forms.sellsemporium = SellsEmporiums.sellsemporium');

    // if PayTypes then
    SQL.Add('LEFT OUTER JOIN LookUps AS lookupspaytypes ON forms.PayTypes = lookupspaytypes.LookUpID');

    SQL.Add('WHERE ');
    if historicalCheckInventory then
    begin
      SQL.Add('NOT EXISTS (SELECT 1 FROM FormItems FormItems_1 INNER JOIN Forms Forms_1');
      SQL.Add('ON FormItems_1.FormID = Forms_1.FormID AND FormItems_1.ServerID = Forms_1.ServerID');
      SQL.Add('AND FormItems_1.YearID = Forms_1.YearID');
      SQL.Add('WHERE FormItems_1.preFormItemID = FormItems.FormItemID');
      SQL.Add('AND FormItems_1.PerServerID = FormItems.ServerID');
      SQL.Add('AND FormItems_1.YearID = FormItems.YearID');
      SQL.Add('AND Forms_1.FormDate <= :FormDateToChild');
      SQL.Add('AND ((FormItems_1.CheckDate BETWEEN :Date2From AND :Date2To)');
      SQL.Add('OR FormItems_1.CheckDate IS NULL)) AND');
    end
    else
      SQL.Add('(FormItems_1.preFormItemID IS NULL) AND');
    SQL.Add('((FormItems.CheckDate BETWEEN :DateFrom AND :DateTo) or FormItems.CheckDate <= ''0'' ) AND');
    if not historicalCheckInventory then
      SQL.Add('((FormItems_1.CheckDate BETWEEN :Date2From AND :Date2To) or FormItems_1.CheckDate IS NULL ) AND');
    SQL.Add('(Forms.FormType in( ' + FormType + '))AND');

    if formTypeInt = 10 then
    begin
      SQL.Add('((Forms.CustomerID1 BETWEEN :CustID1From AND :CustID1To)or');
      SQL.Add(' (Forms.CustomerID2 BETWEEN :CustID12From AND :CustID12To))AND');
      Parameters.ParamByName('CustID12From').Value :=
        GetcFrom(myParams.ParamValues['CustomerID1'], ftInteger);
      Parameters.ParamByName('CustID12To').Value :=
        GetcTo(myParams.ParamValues['CustomerID1'], ftInteger);
    end
    else
      SQL.Add('(Forms.CustomerID1 BETWEEN :CustID1From AND :CustID1To)AND');

    SQL.Add('(FormItems.CustomerID2 BETWEEN :CustID2From AND :CustID2To) AND');
    SQL.Add('((Forms.BudgetCode BETWEEN :BudgetCodeFrom AND :BudgetCodeTo)OR (Forms.BudgetCode IS NULL )) AND');
    if historicalCheckInventory then
      // Inventory is an as-of report: include all forms up to the report date.
      SQL.Add('(Forms.FormDate <= :FormDateTo) AND')
    else
      SQL.Add('(Forms.FormDate BETWEEN :FormDateFrom AND :FormDateTo) AND');
    SQL.Add('(Forms.FormNumber BETWEEN :NumberForm AND :NumberTo)');
    SQL.Add('AND (Forms.FormState<10) and (Forms.YearID between :YearIDFrom and :YearIDTo)');
    SQL.Add('AND (FormItems.Checktype BETWEEN :ChecktypeFrom AND :ChecktypeTo)');

    SQL.Add('AND (Forms.SellsEmporium BETWEEN :SellsEmporiumFrom AND :SellsEmporiumTo)');
    Parameters.ParamByName('SellsEmporiumFrom').Value :=
      GetcFrom(myParams.ParamValues['SellsEmporium'], ftInteger);
    Parameters.ParamByName('SellsEmporiumTo').Value :=
      GetcTo(myParams.ParamValues['SellsEmporium'], ftInteger);

    SQL.Add('AND (CG2.CustomerGrpID BETWEEN :CustomerGrpIDFrom AND :CustomerGrpIDTo)');
    Parameters.ParamByName('CustomerGrpIDFrom').Value :=
      GetcFrom(myParams.ParamValues['CustomerGrpID'], ftInteger);
    Parameters.ParamByName('CustomerGrpIDTo').Value :=
      GetcTo(myParams.ParamValues['CustomerGrpID'], ftInteger);

    SyadSystem := GetcTo(myParams.ParamValues['SyadSystem'], ftInteger);
    if SyadSystem <> -1 then
      SQL.Add('AND (FormItems.SyadSystem = ' + SyadSystem.ToString + ')');

    if PayTypes then
    begin
      SQL.Add('AND (LookUpsPayTypes.Code BETWEEN :PayTypesCodeFrom AND :PayTypesCodeTo )');
      Parameters.ParamByName('PayTypesCodeFrom').Value :=
        GetcFrom(myParams.ParamValues['PayTypes'], ftInteger);
      Parameters.ParamByName('PayTypesCodeTo').Value :=
        GetcTo(myParams.ParamValues['PayTypes'], ftInteger);
    end;

    b := qryInitQry.FieldByName('AccountRelationPosition').AsInteger > 0;
    if b then
    begin
      SQL.Add('AND (');
      SQL.Add('((ISNULL(Forms.CTopicCode,0) between :CTopicCodeFrom and :CTopicCodeTo ) OR(Forms.CTopicCode = ''''))');
      SQL.Add('OR ((ISNULL(FormItems.CTopicCode,0) between :CTopicCodeDFrom and :CTopicCodeDTo ) OR(FormItems.CTopicCode = ''''))');
      SQL.Add(')');

      SQL.Add('AND (');
      SQL.Add('((ISNULL(Forms.CTopicCode2,0) between :CTopicCode2From and :CTopicCode2To )OR(Forms.CTopicCode2= ''''))');
      SQL.Add('OR ((ISNULL(FormItems.CTopicCode2,0) between :CTopicCode2DFrom and :CTopicCode2DTo )OR(FormItems.CTopicCode2= ''''))');
      SQL.Add(')');

      Parameters.ParamByName('CTopicCodeFrom').Value :=
        GetcFrom(myParams.ParamValues['CTopicCode'], ftInteger);
      Parameters.ParamByName('CTopicCodeTo').Value :=
        GetcTo(myParams.ParamValues['CTopicCode'], ftInteger);
      Parameters.ParamByName('CTopicCode2From').Value :=
        GetcFrom(myParams.ParamValues['CTopicCode2'], ftInteger);
      Parameters.ParamByName('CTopicCode2To').Value :=
        GetcTo(myParams.ParamValues['CTopicCode2'], ftInteger);

      Parameters.ParamByName('CTopicCodeDFrom').Value :=
        GetcFrom(myParams.ParamValues['CTopicCode'], ftInteger);
      Parameters.ParamByName('CTopicCodeDTo').Value :=
        GetcTo(myParams.ParamValues['CTopicCode'], ftInteger);
      Parameters.ParamByName('CTopicCode2DFrom').Value :=
        GetcFrom(myParams.ParamValues['CTopicCode2'], ftInteger);
      Parameters.ParamByName('CTopicCode2DTo').Value :=
        GetcTo(myParams.ParamValues['CTopicCode2'], ftInteger);

    end;
    SQL.Add('Order by FormItems.CheckDate');

    custIDKindActive := GetcFrom(myParams.ParamValues['MasterSelect'],
      ftInteger);
    SQL.Text := LowerCase(SQL.Text);
    case custIDKindActive of
      1:
        SQL.Text := StringReplace(SQL.Text, 'formitems.customerid2',
          'forms.customerid1', [rfReplaceAll]);
      2:
        SQL.Text := StringReplace(SQL.Text, 'formitems.customerid2',
          'forms.customerid2', [rfReplaceAll]);
      3:
        SQL.Text := StringReplace(SQL.Text, 'formitems.customerid2',
          'forms.customerid3', [rfReplaceAll]);
    else
      SQL.Text := StringReplace(SQL.Text, 'formitems.customerid2',
        'formitems.customerid2', [rfReplaceAll]);
    end;

    if formTypeInt = 50 then
    begin
      Parameters.ParamByName('ChecktypeFrom').Value :=
        GetcFrom(myParams.ParamValues['Checktype'], ftInteger);
      Parameters.ParamByName('ChecktypeTo').Value :=
        GetcTo(myParams.ParamValues['Checktype'], ftInteger);
    end
    else
    begin
      Parameters.ParamByName('ChecktypeFrom').Value := 0;
      Parameters.ParamByName('ChecktypeTo').Value := 999;
    end;

    Parameters.ParamByName('BudgetCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['BudgetID'], ftInteger);
    Parameters.ParamByName('BudgetCodeTo').Value :=
      GetcTo(myParams.ParamValues['BudgetID'], ftInteger);

    Parameters.ParamByName('CustID1From').Value :=
      GetcFrom(myParams.ParamValues['CustomerID1'], ftInteger);
    Parameters.ParamByName('CustID1To').Value :=
      GetcTo(myParams.ParamValues['CustomerID1'], ftInteger);
    if historicalCheckInventory then
    begin
      if Parameters.FindParam('FormDateTo') <> nil then
        Parameters.ParamByName('FormDateTo').Value :=
          GetcTo(myParams.ParamValues['FormDate'], ftDate);
      if Parameters.FindParam('FormDateToChild') <> nil then
        Parameters.ParamByName('FormDateToChild').Value :=
          GetcTo(myParams.ParamValues['FormDate'], ftDate);
    end
    else
    begin
      if Parameters.FindParam('FormDateFrom') <> nil then
        Parameters.ParamByName('FormDateFrom').Value :=
          GetcFrom(myParams.ParamValues['FormDate'], ftDate);
      if Parameters.FindParam('FormDateTo') <> nil then
        Parameters.ParamByName('FormDateTo').Value :=
          GetcTo(myParams.ParamValues['FormDate'], ftDate);
    end;

    Parameters.ParamByName('NumberForm').Value :=
      GetcFrom(myParams.ParamValues['Number'], ftInteger);
    Parameters.ParamByName('NumberTo').Value :=
      GetcTo(myParams.ParamValues['Number'], ftInteger);
    Parameters.ParamByName('YearIDFrom').Value := opt.DefaultYear;
    Parameters.ParamByName('YearIDTo').Value := APPBank.Year;

    if ShowCheckDate then
    begin
      Parameters.ParamByName('DateFrom').Value :=
        GetcFrom(myParams.ParamValues['CheckDate'], ftDate);
      Parameters.ParamByName('DateTo').Value :=
        GetcTo(myParams.ParamValues['CheckDate'], ftDate);
      Parameters.ParamByName('Date2From').Value :=
        GetcFrom(myParams.ParamValues['CheckDate'], ftDate);
      Parameters.ParamByName('Date2To').Value :=
        GetcTo(myParams.ParamValues['CheckDate'], ftDate);

      if Parameters.FindParam('DueDateFrom') <> nil then
      begin
        Parameters.ParamByName('DueDateFrom').Value :=
          GetcFrom(myParams.ParamValues['DueDate'], ftDate);
        Parameters.ParamByName('DueDateTo').Value :=
          GetcTo(myParams.ParamValues['DueDate'], ftDate);
      end;

    end
    else
    begin
      Parameters.ParamByName('DateFrom').Value := '0000/00/00';
      Parameters.ParamByName('DateTo').Value := '9999/99/99';
      Parameters.ParamByName('Date2From').Value := '0000/00/00';
      Parameters.ParamByName('Date2To').Value := '9999/99/99';
      if Parameters.FindParam('DueDateFrom') <> nil then
      begin
        Parameters.ParamByName('DueDateFrom').Value := '0000/00/00';
        Parameters.ParamByName('DueDateTo').Value := '9999/99/99';
      end;
    end;

    grpMaster.Visible := custIDKindActive <> 0;
    if grpMaster.Visible then
      with qryMaster do
      begin
        Active := False;
        Parameters.ParamByName('CustomerFrom').Value :=
          GetcFrom(myParams.ParamValues['CustomerID2'], ftInteger);
        Parameters.ParamByName('CustomerTo').Value :=
          GetcTo(myParams.ParamValues['CustomerID2'], ftInteger);
        Active := True;
      end
    else
    begin
      Parameters.ParamByName('CustID2From').Value :=
        GetcFrom(myParams.ParamValues['CustomerID2'], ftInteger);
      Parameters.ParamByName('CustID2To').Value :=
        GetcTo(myParams.ParamValues['CustomerID2'], ftInteger);
      Active := True;
    end;

  end; // with
end;

procedure TRptChecksInF.actAddpopViewFileExecute(Sender: TObject);
begin
  inherited;
  AddpopViewFile(qryChecksInchk_ExistAttachments.AsString,
    GetDetailKeyID(qryChecksIn, qryChecksInFormItemID.AsString), Caption);

end;

procedure TRptChecksInF.actCallOtherNationalCodeExecute(Sender: TObject);
begin
  inherited;
  mdiMainf.actCallOtherNationalCode.Execute;
end;

procedure TRptChecksInF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try

      if PayTypes then
        AddItemFilter(GetFilter, TFilterPayTypes, False, '',
          'WHERE (Kind = ' + IntToStr(qryInitQry.FieldByName('FormPaySerial')
          .AsInteger) + ')and (Kind <>0) ');
      AddItemFilter(GetFilter, TFilterSellsEmporium);
      AddItemFilter(GetFilter, TFilterCTopicCode2);
      AddItemFilter(GetFilter, TFilterCTopicCode);
      AddItemFilter(GetFilter, TFilterSyadSystem);

      if formTypeInt = 50 then
        AddItem(DMf.adcBSell, 'Checktype', ' نوع چك ', 'كد', ftInteger,
          dvMinMax, '', '', ciLookup,
          ' SELECT DISTINCT CheckType, CASE Checktype ' +
          'WHEN 0 THEN ''چك مدت دار'' WHEN 1 THEN ''چك روز'' ELSE ''ساير''' +
          ' END AS ChecktypeName FROM FormItems',
          // 'SELECT min(Checktype),Max(Checktype) FROM FormItems');
          'SELECT 0,2');

      AddItem(DMf.adcAccounting, 'BudgetID', ' بودجه ', 'كد', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT BudgetTopicID , BudgetCaption_L1 FROM acc.BudgetTopics ',
        'SELECT 0,isnull(Max(BudgetTopicID),999999999) From acc.BudgetTopics');

      // AddItem(DMf.adcBSell, 'custIDKindActive', 'سطح', 'شماره سطح', ftUnknown,
      // dvDefaults, '0', '', ciRadioGroup,
      // 'SELECT ID,Person1Caption FROM dbo.GetPersonCaption( ''' +
      // IntToStr(formTypeInt) + ''')');

      AddItem(DMf.adcBSell, 'CustomerID2', CustName2, 'كد', ftInteger, dvMinMax,
        '', '', ciLookup,
        'SELECT DISTINCT CustID,CustName FROM Vu_CustomersGroups ',
        'SELECT Min(CustID),Max(CustID) From Customers');

      AddItemFilter(GetFilter, TFilterCustomerGrpID);

      AddItem(DMf.adcBSell, 'MasterSelect', 'طبقه بندي اطلاعات', '', ftUnknown,
        dvDefaults, '0', '', ciRadioGroup,
        'SELECT 0 As MasterType,''ندارد'' as MasterName  Union All ' +
        'SELECT ID+1,Customer1Label FROM dbo.GetCustomerCaption(' +
        IntToStr(formTypeInt) + ')');

      AddItem(DMf.adcBSell, 'CustomerID1', CustName1, 'كد', ftInteger, dvMinMax,
        '', '', ciLookup,
        'SELECT DISTINCT CustID,CustName FROM Vu_CustomersGroups ' +
        'WHERE (GroupType IN (1, 2)) ',
        'select Min(CustID),Max(CustID) From Customers');
      // 'SELECT Min(CustID),Max(CustID) FROM Vu_CustomersGroups '
      // + 'WHERE (GroupType IN (1, 2))');

      if ShowCheckDate then
      begin
        AddItem(DMf.adcBSell, 'CheckDate', ' تاريخ سررسيد چك ', 'تاريخ', ftDate,
          dvMinMax, '', '', ciSimple, '',
          'SELECT MIN(dbo.FormItems.CheckDate),MAX(dbo.FormItems.CheckDate) ' +
          'FROM dbo.FormItems INNER JOIN dbo.Forms ON dbo.FormItems.FormID = dbo.Forms.FormID '
          + 'WHERE dbo.Forms.FormType IN(' + FormType + ')', False, '',
          '', True);

        AddItem(DMf.adcBSell, 'DueDate', 'تاريخ وصول چك', 'تاريخ', ftDate,
          dvMinMax, '', '', ciSimple, '',
          'SELECT min(FormDate),MAX(FormDate) FROM Forms');

      end; // if

      AddItem(DMf.adcBSell, 'FormDate', ' تاريخ فرم ', 'تاريخ', ftDate,
        dvMinMax, '', '', ciSimple, '', 'Select  ''' + APPBank.StartYear +
        ''',''' + APPBank.endYear + '''');

      AddItem(DMf.adcBSell, 'Number', ' فرم ', 'شماره', ftInteger, dvMinMax, '',
        '', ciSimple, '', 'SELECT 0,2147483647');
      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateFilter;
      end; // if
    finally
      Free;
    end; // try
  end; // with
end;

function TRptChecksInF.GetFormTypes(CustomerDocType: string): string;
begin
  with DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'SELECT FormType FROM FormTypes';
    SQL.Add('WHERE ( Customer1DocType IN( %s ) and BedBes = 1 ) ');
    SQL.Add('OR( BedBes = 0 AND Customer2DocType IN ( %s ) ) ');
    SQL.Add('OR( CustomerDetailsDocType IN ( %s ) AND BedBesDetails = 1 )');
    SQL.Text := Format(SQL.Text, [CustomerDocType, CustomerDocType,
      CustomerDocType]);
    if CtrlDown then
      ShowQryParam(DMf.qryTmpTmp);
    Active := True;
    while not Eof do
    begin
      Result := Result + Trim(FieldByName('FormType').AsString) + ',';
      Next;
    end;
    Active := False;
    Result := LeftStr(Result, Length(Result) - 1);
  end;
end;

procedure TRptChecksInF.FormCreate(Sender: TObject);
begin
  inherited;
  formTypeInt := var_glb_gParam;
  ShowCheckDate := True;
  case formTypeInt of
    10:
      begin // 10,15,21,17,18,50,54,11,22
        // FormType := '10,15,21';
        FormType := GetFormTypes('4');
        Caption := 'گزارش موجودي چكهاي نزد صندوق';
      end;
    17:
      begin
        // FormType := '17,18,24';
        FormType := GetFormTypes('11,12');
        Caption := 'گزارش موجودي چكهاي برگشتي نزد صندوق';
      end;
    50:
      begin
        FormType := '50,54';
        Caption := 'گزارش چكهاي معوق (صادره و به بانك مراجعه نشده)‏';
      end;
    11:
      begin
        // FormType := '11,22,19'; // 1
        FormType := GetFormTypes('3');
        Caption := 'گزارش موجودي چكهاي نزد بانك ‏';
      end;
    26:
      begin
        FormType := '26,34,25'; // GetFormTypes('12');//
        Caption := 'گزارش عودت چك برگشتي';
      end;
    80:
      begin
        FormType := GetFormTypes('5'); // '80,73'; // ?????!!!!!!!!
        Caption := ' گزارش موجودي چكهاي تضميني نزد صندوق ‏';
        ShowCheckDate := False;
      end;
    70:
      begin
        FormType := '70,74';
        Caption := ' گزارش موجودي چكهاي تضميني صادره نزد مشتريان';
        ShowCheckDate := False;
      end;
    1700:
      begin
        FormType := '17';
        Caption := 'چکهای برگشتی واگذار شده به بانک';
      end;
  else
    FormType := IntToStr(formTypeInt);
  end; // case

  setColumns2(DBGrid1, formTypeInt = 50, 'ChecktypeName');
  with qryInitQry do
  begin
    Active := False;
    SQL.Add(' WHERE FormType IN(' + FormType + ') ORDER BY FormType ');
    Active := True;
    CustName1 := 'صندوقدار/بانك';
    CustName2 := 'مشتري';
    if not(formTypeInt in [10, 17, 50, 11, 26, 80, 70]) then
    begin
      Caption := 'گزارش ' + FieldByName('FormCaption').AsString;
      CustName1 := FieldByName('Customer1Label').AsString;
      CustName2 := FieldByName('Customer2Lable').AsString;
    end;
    lblCaption.Hint := FormType;
    setColumns2(DBGrid1, FieldByName('DetailDataType').AsInteger <> 1,
      'BankName');
    setColumns2(DBGrid1, FieldByName('DetailDataType').AsInteger <> 1,
      'AccountNumber');
    setColumns2(DBGrid1, FieldByName('BudgetCodePosition').AsInteger <> 0,
      'BudgetCode');

    PayTypes := FieldByName('Pay_Topic_Active').AsInteger in [1, 3];

  end; // with
  with qryChecksIn do
  begin

    FieldByName('CustomerID1').DisplayLabel := 'كد ' + CustName1;
    FieldByName('CustName1').DisplayLabel := 'نام ' + CustName1;
    FieldByName('CustomerID2').DisplayLabel := 'كد ' + CustName2;
    FieldByName('CustName2').DisplayLabel := 'نام ' + CustName2;
  end; // with

end;

procedure TRptChecksInF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('CustomerID1') = nil then
    close;
  // if not ShowFilter then
  // begin
  // Date_:=Shamsi2Miladi(var_glb_CurrentDate);
  // Date_:=IncDay(Date_,3);
  // with qryChecksIn do
  // begin
  // Active:=False;
  // Parameters.ParamByName('BudgetCodeFrom').Value:=0;
  // Parameters.ParamByName('BudgetCodeTo').Value:=999999999;
  // Parameters.ParamByName('CustID1From').Value:=0;
  // Parameters.ParamByName('CustID1To').Value:=999999999;
  // Parameters.ParamByName('CustID2From').Value:=0;
  // Parameters.ParamByName('CustID2To').Value:=999999999;
  // Parameters.ParamByName('DateFrom').Value:=var_glb_CurrentDate;
  // Parameters.ParamByName('DateTo').Value:=miladi2Shamsi(Date_);
  // Parameters.ParamByName('Date2From').Value:=var_glb_CurrentDate;
  // Parameters.ParamByName('Date2To').Value:=miladi2Shamsi(Date_);
  // Parameters.ParamByName('FormDateFrom').Value:='0';
  // Parameters.ParamByName('FormDateTo').Value:='9999/99/99';
  // Parameters.ParamByName('NumberForm').Value:=0;
  // Parameters.ParamByName('NumberTo').Value:=999999999;
  // Active:=True;
  // end;//with
  // end;
end;

procedure TRptChecksInF.actPrintExecute(Sender: TObject);
begin
  inherited;
  SeletedPrint(ppDBPipeline1, DBGrid1);
  PopMenu.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TRptChecksInF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TRptChecksInF.ppSysVarPageNumberGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TRptChecksInF.ppLblFormNameGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := Caption
end;

procedure TRptChecksInF.ppLblDateGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := 'از تاريخ ' + qryChecksIn.Parameters.ParamByName('DateFrom').Value +
    ' تا ' + qryChecksIn.Parameters.ParamByName('DateTo').Value
end;

procedure TRptChecksInF.ppLblCustomerID1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := 'كد ' + CustName1
end;

procedure TRptChecksInF.ppLblCustname1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := 'نام ' + CustName1
end;

procedure TRptChecksInF.ppLblCustomerID2GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := 'كد ' + CustName2
end;

procedure TRptChecksInF.ppLblCustname2GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := 'نام ' + CustName2
end;

procedure TRptChecksInF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate
end;

procedure TRptChecksInF.actSendExelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TRptChecksInF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryChecksIn);
end;

procedure TRptChecksInF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryChecksIn);
end;

procedure TRptChecksInF.qryChecksInAfterOpen(DataSet: TDataSet);
var
  b: Boolean;
begin
  inherited;
  b := qryInitQry.FieldByName('AccountRelationPosition').AsInteger in [2, 3];
  setColumns2(DBGrid1, b, 'CTopicCode');
  setColumns2(DBGrid1, b, 'CTopicCode2');
  setColumns2(DBGrid1, b, 'TopicCode');
  setColumns2(DBGrid1, b, 'DetailCode');
  setColumns2(DBGrid1, b, 'CTopicCode3');

  b := qryInitQry.FieldByName('AccountRelationPosition').AsInteger in [1, 2];
  setColumns2(DBGrid1, b, 'CTopicCodeD');
  setColumns2(DBGrid1, b, 'CTopicCode2D');
  setColumns2(DBGrid1, b, 'TopicCodeD');
  setColumns2(DBGrid1, b, 'DetailCodeD');
  setColumns2(DBGrid1, b, 'CTopicCode3D');
  setColumns2(DBGrid1, PayTypes, 'PayTypesName');
  StatusBar1.Panels[0].Text := 'جمع=' +
    CurrToStrF(CalcSumFileds(qryChecksIn, 'ItemAmount'), ffCurrency, 0);
  StatusBar1.Panels[1].Text := 'تعداد=' + IntToStr(qryChecksIn.RecordCount);
end;

procedure TRptChecksInF.qryMasterAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryChecksIn do
  begin
    Active := False;
    Parameters.ParamByName('CustID2From').Value :=
      qryMaster.FieldByName('CustID').AsInteger;
    Parameters.ParamByName('CustID2To').Value := qryMaster.FieldByName('CustID')
      .AsInteger;
    Active := True;
  end;
end;

procedure TRptChecksInF.actShowCheckDateExecute(Sender: TObject);
begin
  inherited;
  ShowCheckDate := not ShowCheckDate;
  actFilter.Execute;
end;

procedure TRptChecksInF.actShowExecute(Sender: TObject);
begin
  inherited;
  ShowFormTypesForms(qryChecksIn, Self);
end;

procedure TRptChecksInF.AllC_l_i_c_k_Click(Sender: TObject);
begin
  inherited;
  try
    qryChecksIn.DisableControls;
    InitReportFile(ppRptList, (Sender as TMenuItem).Name, True)
  finally
    qryChecksIn.EnableControls;
  end; // try
end;

procedure TRptChecksInF.btnMasterClick(Sender: TObject);
var
  b: Boolean;
  Results: array [0 .. 1] of String;
begin
  inherited;
  b := searchCode_ADOF.SearchCode2(qryMaster.Connection, grpMaster.Caption,
    ShowQryParam(qryMaster, True), ['کد', 'مشخصات '], Results,
    [50, 150], alLeft);
  if b then
  begin
    qryMaster.Locate('CustID', Results[0], [loPartialKey]);
  end;
end;

procedure TRptChecksInF.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  inherited;
  Exit;
  if DataCol = ColumnIndexByFieldName(DBGrid1, qryChecksInFormItemID.FieldName)
  then
    AddpopViewFile2Grid(Rect, DBGrid1,
      qryChecksInchk_ExistAttachments.AsString);
end;

end.
