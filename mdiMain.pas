unit mdiMain;

interface

uses
  Windows, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls,
  ExtCtrls, ActnList, Menus, dm, DBCtrls, Vcl.DBGrids, DB, System.UITypes,
  CategoryButtons, CatBtnA, ImgList, System.Actions, System.ImageList,
  CedarDbGrid, FrDesign4LookUp, Vcl.StdActns, jobs, OtherNationalCodeEdit,
  Data.Win.ADODB, acPNG;

type
  TmdiMainF = class(TForm)
    pnlMain: TPanel;
    lblCompanyName: TLabel;
    ImageList1: TImageList;
    lblVersion: TLabel;
    ActionList1: TActionList;
    actRecipt: TAction;
    actRelease: TAction;
    actCoding: TAction;
    actSell: TAction;
    actReject: TAction;
    ActGetCheckF11: TAction;
    ActGetCheckF12: TAction;
    ActGetOtherMoneyF1: TAction;
    ActGetOtherMoneyF2: TAction;
    ActGetCheckF10: TAction;
    ActGetCheckF50: TAction;
    ActRptCardexF1: TAction;
    ActRptCardexF2: TAction;
    ActCustomersF: TAction;
    ActSpecialinventoryF: TAction;
    ActReciptsF13: TAction;
    ActReciptsF7: TAction;
    ActReciptsF10: TAction;
    actrptEntityOnDetailStuffsF: TAction;
    actCardexSpecialinventory: TAction;
    actReciptsF4: TAction;
    actRptChecksInF10: TAction;
    actrptCheckInFormsF10: TAction;
    actrptCheckInFormsF13: TAction;
    actrptCheckInFormsF50: TAction;
    actMnuGetCheckF: TAction;
    actMnuGetOtherMoneyF: TAction;
    actMnuPaymentCashF: TAction;
    actMnuRptCofferF: TAction;
    actMnuReciptsF: TAction;
    actMnuRpt001F: TAction;
    actDailyWorkF: TAction;
    actrptReportDailly: TAction;
    actRptChecksInF26: TAction;
    actGetCheckF26: TAction;
    actGetCheckF18: TAction;
    actRptEntityStuffF: TAction;
    actDailyWorkTowF: TAction;
    actRptReportsF: TAction;
    actMnuStuffToStoreF: TAction;
    actMnuContractF: TAction;
    actMnurptBuySpecialF: TAction;
    actMnuContractStuff: TAction;
    actrptCustomerTrancItemsF0: TAction;
    actrptCustomersBalanceF2: TAction;
    actSellersF: TAction;
    Label1: TLabel;
    actReciptsF14: TAction;
    actMnuReciptsBuyF: TAction;
    actMnuReciptsBuyList: TAction;
    actMnuLookUpsF: TAction;
    actMnuReciptsGridF: TAction;
    actMnuPaymentExpenceF: TAction;
    actStuffGroupsAccessory1: TAction;
    actDailyWorkF1: TAction;
    actMnurptStuffCodingF: TAction;
    actMnuLoan: TAction;
    actCustomers8: TAction;
    actSellPlanF: TAction;
    actInvoiceEmissionF: TAction;
    imgFara: TImage;
    actMnuRentRecipts: TAction;
    actCheckCycleF: TAction;
    actCustomersInterView: TAction;
    actCustomersF9: TAction;
    actHelp: TAction;
    actRptReciptWithGrpCustF: TAction;
    actrptStuffGroupsF: TAction;
    actRptReciptWithCustF: TAction;
    actQuotaPostF: TAction;
    actRptReciptWithCustItemF: TAction;
    actrptRecLstOnCusItemF: TAction;
    actrptReciptListOnCustomersF: TAction;
    actrptRecLstOnStfCodCustIF: TAction;
    actrptReciptListOnStuffCodeF: TAction;
    actrptRecSOnCustItemF: TAction;
    actrptRecSOnStfCodCustIF: TAction;
    actrptReciptSumOnPersonID1: TAction;
    actReciptsDeficitsPostAllF: TAction;
    actGeneralReportF: TAction;
    actSearchRecipts: TAction;
    actRpt001F0: TAction;
    Panel3: TPanel;
    imgMain: TImage;
    Splitter1: TSplitter;
    actSellersF10: TAction;
    actotherCustomerF6: TAction;
    actOfficeCustomerF: TAction;
    btnTools1: TCategoryButtons;
    actMnuReciptsAnalysisF: TAction;
    actMnuReciptsStoreF: TAction;
    actsearchCheckF: TAction;
    actStuffGroupsAccessory2: TAction;
    actMnuPermitIssuanceF: TAction;
    actTshGeneralReport: TAction;
    actCustomersTaxF: TAction;
    actrptDarayiSellsF: TAction;
    actrptDarayiBuysF: TAction;
    actrptDarayiSellsMonthF: TAction;
    actrptDarayiBuysFItem: TAction;
    actCofferGeneralReportF: TAction;
    actMnuReciptsGrid2F: TAction;
    actSWOT: TAction;
    actCustomerCheckListF: TAction;
    actChangePass: TAction;
    actMnuActionPlansF: TAction;
    popStuffCodingF: TPopupMenu;
    mnuStuffCodingF: TMenuItem;
    mnuBookStuffCodingF: TMenuItem;
    mnuArtworksF: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    actMnuCnt_Contracts2F: TAction;
    actF5040F: TAction;
    actSpecialAccDetailOnTopicBookF: TAction;
    actMnuGetTozinF: TAction;
    actMnuGetTozinListF: TAction;
    actCustomersAlternativeF: TAction;
    Panel1: TPanel;
    ActionList2: TActionList;
    actKartDarayi: TAction;
    actMovement: TAction;
    actExpense: TAction;
    actAssetsTable: TAction;
    actAmvalInPlaces: TAction;
    actContNow: TAction;
    Action1: TAction;
    actRptAmval: TAction;
    actDecrease: TAction;
    actSubCard: TAction;
    actBerakAmval: TAction;
    actRevalidate: TAction;
    actAlterAmval: TAction;
    actAlterAssets: TAction;
    actInsouraceGroups: TAction;
    actSpecialInsourance: TAction;
    actAmvalCalc: TAction;
    actAssetsMakeDocument: TAction;
    actAssetsCleanDoc: TAction;
    actAssetsConfig: TAction;
    actMultiReport: TAction;
    actCnt_ContractsF: TAction;
    actSamplesF: TAction;
    actSampleItemsF: TAction;
    actrptCustomerTransactionF: TAction;
    actrptMatrixBalance: TAction;
    actrptDarayiEjareF: TAction;
    actrptDarayiHaghol: TAction;
    actStuffDetailsF: TAction;
    actrptDarayiHaghol2: TAction;
    actrptDarayiHaghol3: TAction;
    actUpdateEXE: TAction;
    Splitter2: TSplitter;
    actUpdateBank: TAction;
    actSelectYear: TAction;
    actExmpel: TAction;
    ActionList3: TActionList;
    actDoc: TAction;
    actListDocs: TAction;
    actTarazDetail: TAction;
    actrptAnalyzeBalance: TAction;
    actRpt_AccBook: TAction;
    actRpt_AccDetailOnTopicBook: TAction;
    actAccCode2: TAction;
    actDetails: TAction;
    actSearchDocs: TAction;
    actBudget: TAction;
    actMnuCoding: TAction;
    actmenuOffices: TAction;
    actTrialBalance: TAction;
    actSpecialTrialBalance: TAction;
    actOperatorNotificationF: TAction;
    actVU_Financial_statement: TAction;
    actlst1: TActionList;
    WindowClose1: TWindowClose;
    WindowCascade1: TWindowCascade;
    WindowTileHorizontal1: TWindowTileHorizontal;
    WindowTileVertical1: TWindowTileVertical;
    WindowMinimizeAll1: TWindowMinimizeAll;
    WindowArrange1: TWindowArrange;
    Action2: TAction;
    ActionList4: TActionList;
    ActFormInfo_2F: TAction;
    ActFormInfo_2FDis5: TAction;
    ActFormInfo_3F: TAction;
    ActFormInfo_4F: TAction;
    ActInterdictsF: TAction;
    ActFormInfo_5F: TAction;
    ActFunctionsF: TAction;
    actActEmployeeLoanF: TAction;
    ActPersonalArchiveF: TAction;
    actEmployeeInfolistF: TAction;
    actListSalary: TAction;
    actInterdicts4FormF1: TAction;
    actArchiveInfoF23: TAction;
    actEmployeeDeeExtinfoF16: TAction;
    actEmployeeDeeExtinfo_4F16: TAction;
    actMakeBankDSKF: TAction;
    actrptPayableSalaryF23: TAction;
    actSalaryList_insuranceF: TAction;
    actSalaryList4OfficeF: TAction;
    actSalaryListGroupF0: TAction;
    actMissionItemsF24: TAction;
    ActFunctions2F: TAction;
    actListBimehNewF: TAction;
    Action3: TAction;
    ActFormInfo_6F: TAction;
    actPersonelDecExtInfo_2F54: TAction;
    actPersonelFormInfo_1F23: TAction;
    actPersonelDecExtInfo_2F53: TAction;
    actPersonelFormInfo_1F43: TAction;
    actSalaryList4GetReprots: TAction;
    Action4: TAction;
    actMakeDskTaxF: TAction;
    actJobs: TAction;
    actSpAnalysisSalary: TAction;
    actChangepassword: TAction;
    actSpAnalysisSalaryActualCostsF: TAction;
    actMakeDskTax95F: TAction;
    actMakeDskTax95_86F: TAction;
    actFormInfo_5FormulaF: TAction;
    actFunctionDayF: TAction;
    Action5: TAction;
    ActPersonelInfoF: TAction;
    actConfig: TAction;
    actUpdateInfoF: TAction;
    actCallOtherNationalCode: TAction;
    actOperators: TAction;
    actMnuGetOtherMoney2F: TAction;
    actrptElectronicsBooksF: TAction;
    Action6: TAction;
    procedure FormActivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure actReciptExecute(Sender: TObject);
    procedure actReleaseExecute(Sender: TObject);
    procedure actSellExecute(Sender: TObject);
    procedure ActGetCheckF11Execute(Sender: TObject);
    procedure ActGetCheckF12Execute(Sender: TObject);
    procedure ActGetOtherMoneyF1Execute(Sender: TObject);
    procedure ActGetOtherMoneyF2Execute(Sender: TObject);
    procedure ActGetCheckF10Execute(Sender: TObject);
    procedure ActGetCheckF50Execute(Sender: TObject);
    procedure actCodingExecute(Sender: TObject);
    procedure ActRptCardexF1Execute(Sender: TObject);
    procedure ActRptCardexF2Execute(Sender: TObject);
    procedure actRejectExecute(Sender: TObject);
    procedure ActCustomersFExecute(Sender: TObject);
    procedure ActSpecialinventoryFExecute(Sender: TObject);
    procedure ActReciptsF13Execute(Sender: TObject);
    procedure ActReciptsF7Execute(Sender: TObject);
    procedure ActReciptsF10Execute(Sender: TObject);
    procedure actrptEntityOnDetailStuffsFExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actCardexSpecialinventoryExecute(Sender: TObject);
    procedure actReciptsF4Execute(Sender: TObject);
    procedure actRptChecksInF10Execute(Sender: TObject);
    procedure actrptCheckInFormsF10Execute(Sender: TObject);
    procedure actrptCheckInFormsF13Execute(Sender: TObject);
    procedure actrptCheckInFormsF50Execute(Sender: TObject);
    procedure actMnuGetCheckFExecute(Sender: TObject);
    procedure actMnuGetOtherMoneyFExecute(Sender: TObject);
    procedure actMnuPaymentCashFExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actMnuRptCofferFExecute(Sender: TObject);
    procedure actMnuReciptsFExecute(Sender: TObject);
    procedure actMnuRpt001FExecute(Sender: TObject);
    procedure actDailyWorkFExecute(Sender: TObject);
    procedure actrptReportDaillyExecute(Sender: TObject);
    procedure actRptChecksInF26Execute(Sender: TObject);
    procedure actGetCheckF26Execute(Sender: TObject);
    procedure actGetCheckF18Execute(Sender: TObject);
    procedure actRptEntityStuffFExecute(Sender: TObject);
    procedure actDailyWorkTowFExecute(Sender: TObject);
    procedure actRptReportsFExecute(Sender: TObject);
    procedure actMnuStuffToStoreFExecute(Sender: TObject);
    procedure actMnuContractFExecute(Sender: TObject);
    procedure actMnurptBuySpecialFExecute(Sender: TObject);
    procedure actMnuContractStuffExecute(Sender: TObject);
    procedure actrptCustomerTrancItemsF0Execute(Sender: TObject);
    procedure actrptCustomersBalanceF2Execute(Sender: TObject);
    procedure actSellersFExecute(Sender: TObject);
    procedure lblVersionMouseEnter(Sender: TObject);
    procedure lblVersionMouseLeave(Sender: TObject);
    procedure lblVersionClick(Sender: TObject);
    procedure actReciptsF14Execute(Sender: TObject);
    procedure actMnuReciptsBuyFExecute(Sender: TObject);
    procedure actMnuReciptsBuyListExecute(Sender: TObject);
    procedure actMnuLookUpsFExecute(Sender: TObject);
    procedure actMnuReciptsGridFExecute(Sender: TObject);
    procedure actMnuPaymentExpenceFExecute(Sender: TObject);
    procedure actStuffGroupsAccessory1Execute(Sender: TObject);
    procedure actDailyWorkF1Execute(Sender: TObject);
    procedure actMnurptStuffCodingFExecute(Sender: TObject);
    procedure actMnuLoanExecute(Sender: TObject);
    procedure actCustomers8Execute(Sender: TObject);
    procedure actSellPlanFExecute(Sender: TObject);
    procedure actInvoiceEmissionFExecute(Sender: TObject);
    procedure actMnuRentReciptsExecute(Sender: TObject);
    procedure actCheckCycleFExecute(Sender: TObject);
    procedure actCustomersInterViewExecute(Sender: TObject);
    procedure actCustomersF9Execute(Sender: TObject);
    procedure actRptReciptWithGrpCustFExecute(Sender: TObject);
    procedure actrptStuffGroupsFExecute(Sender: TObject);
    procedure actRptReciptWithCustFExecute(Sender: TObject);
    procedure actQuotaPostFExecute(Sender: TObject);
    procedure actRptReciptWithCustItemFExecute(Sender: TObject);
    procedure actrptRecLstOnCusItemFExecute(Sender: TObject);
    procedure actrptReciptListOnCustomersFExecute(Sender: TObject);
    procedure actrptRecLstOnStfCodCustIFExecute(Sender: TObject);
    procedure actrptReciptListOnStuffCodeFExecute(Sender: TObject);
    procedure actrptRecSOnCustItemFExecute(Sender: TObject);
    procedure actrptRecSOnStfCodCustIFExecute(Sender: TObject);
    procedure actrptReciptSumOnPersonID1Execute(Sender: TObject);
    procedure actReciptsDeficitsPostAllFExecute(Sender: TObject);
    procedure actGeneralReportFExecute(Sender: TObject);
    procedure actSearchReciptsExecute(Sender: TObject);
    procedure actRpt001F0Execute(Sender: TObject);
    procedure actSellersF10Execute(Sender: TObject);
    procedure actotherCustomerF6Execute(Sender: TObject);
    procedure actOfficeCustomerFExecute(Sender: TObject);
    procedure btnTools1CategoryCollapase(Sender: TObject;
      const Category: TButtonCategory);
    procedure Panel3Resize(Sender: TObject);
    procedure actMnuReciptsAnalysisFExecute(Sender: TObject);
    procedure actMnuReciptsStoreFExecute(Sender: TObject);
    procedure actsearchCheckFExecute(Sender: TObject);
    procedure actStuffGroupsAccessory2Execute(Sender: TObject);
    procedure actMnuPermitIssuanceFExecute(Sender: TObject);
    procedure actTshGeneralReportExecute(Sender: TObject);
    procedure actCustomersTaxFExecute(Sender: TObject);
    procedure actrptDarayiSellsFExecute(Sender: TObject);
    procedure actrptDarayiBuysFExecute(Sender: TObject);
    procedure actrptDarayiSellsMonthFExecute(Sender: TObject);
    procedure actrptDarayiBuysFItemExecute(Sender: TObject);
    procedure actMnuReciptsGrid2FExecute(Sender: TObject);
    procedure actSWOTExecute(Sender: TObject);
    procedure actCustomerCheckListFExecute(Sender: TObject);
    procedure actChangePassExecute(Sender: TObject);
    procedure actMnuActionPlansFExecute(Sender: TObject);
    procedure mnuStuffCodingFClick(Sender: TObject);
    procedure mnuBookStuffCodingFClick(Sender: TObject);
    procedure mnuArtworksFClick(Sender: TObject);
    procedure actMnuCnt_Contracts2FExecute(Sender: TObject);
    procedure actF5040FExecute(Sender: TObject);
    procedure actSpecialAccDetailOnTopicBookFExecute(Sender: TObject);
    procedure actMnuGetTozinFExecute(Sender: TObject);
    procedure actMnuGetTozinListFExecute(Sender: TObject);
    procedure actCustomersAlternativeFExecute(Sender: TObject);
    procedure actKartDarayiExecute(Sender: TObject);
    procedure actRptAmvalExecute(Sender: TObject);
    procedure actExpenseExecute(Sender: TObject);
    procedure actSubCardExecute(Sender: TObject);
    procedure actDecreaseExecute(Sender: TObject);
    procedure actMovementExecute(Sender: TObject);
    procedure actBerakAmvalExecute(Sender: TObject);
    procedure actRevalidateExecute(Sender: TObject);
    procedure actAlterAmvalExecute(Sender: TObject);
    procedure actAlterAssetsExecute(Sender: TObject);
    procedure actInsouraceGroupsExecute(Sender: TObject);
    procedure actSpecialInsouranceExecute(Sender: TObject);
    procedure actAmvalCalcExecute(Sender: TObject);
    procedure actAssetsMakeDocumentExecute(Sender: TObject);
    procedure actAssetsCleanDocExecute(Sender: TObject);
    procedure actAssetsConfigExecute(Sender: TObject);
    procedure actMultiReportExecute(Sender: TObject);
    procedure actCnt_ContractsFExecute(Sender: TObject);
    procedure actSamplesFExecute(Sender: TObject);
    procedure actSampleItemsFExecute(Sender: TObject);
    procedure actrptCustomerTransactionFExecute(Sender: TObject);
    procedure actrptMatrixBalanceExecute(Sender: TObject);
    procedure actrptDarayiEjareFExecute(Sender: TObject);
    procedure actrptDarayiHagholExecute(Sender: TObject);
    procedure actStuffDetailsFExecute(Sender: TObject);
    procedure actrptDarayiHaghol2Execute(Sender: TObject);
    procedure actrptDarayiHaghol3Execute(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure actUpdateBankExecute(Sender: TObject);
    procedure actSelectYearExecute(Sender: TObject);
    procedure actExmpelExecute(Sender: TObject);
    procedure actDocExecute(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure actListDocsExecute(Sender: TObject);
    procedure actTarazKolExecute(Sender: TObject);
    procedure actTarazMoeenExecute(Sender: TObject);
    procedure actTarazDetailExecute(Sender: TObject);
    // procedure btnBarChange(Sender: TObject);
    procedure actrptAnalyzeBalanceExecute(Sender: TObject);
    procedure actRpt_AccBookExecute(Sender: TObject);
    procedure actRpt_AccDetailOnTopicBookExecute(Sender: TObject);
    procedure actAccCode2Execute(Sender: TObject);
    procedure actDetailsExecute(Sender: TObject);
    procedure actSearchDocsExecute(Sender: TObject);
    procedure Label1MouseLeave(Sender: TObject);
    procedure Label1MouseEnter(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure actBudgetExecute(Sender: TObject);
    procedure actMnuCodingExecute(Sender: TObject);
    procedure actmenuOfficesExecute(Sender: TObject);
    procedure actTrialBalanceExecute(Sender: TObject);
    procedure frToolBarChange(Sender: TObject; ActiveSubIndex: Byte);
    procedure actSpecialTrialBalanceExecute(Sender: TObject);
    procedure actOperatorNotificationFExecute(Sender: TObject);
    procedure actVU_Financial_statementExecute(Sender: TObject);
    procedure ActFormInfo_2FExecute(Sender: TObject);
    procedure ActFormInfo_2FDis5Execute(Sender: TObject);
    procedure ActFormInfo_3FExecute(Sender: TObject);
    procedure ActFormInfo_4FExecute(Sender: TObject);
    procedure ActInterdictsFExecute(Sender: TObject);
    procedure ActFormInfo_5FExecute(Sender: TObject);
    procedure ActFunctionsFExecute(Sender: TObject);
    procedure actActEmployeeLoanFExecute(Sender: TObject);
    procedure ActPersonalArchiveFExecute(Sender: TObject);
    procedure actEmployeeInfolistFExecute(Sender: TObject);
    procedure actListSalaryExecute(Sender: TObject);
    procedure actInterdicts4FormF1Execute(Sender: TObject);
    procedure actArchiveInfoF23Execute(Sender: TObject);
    procedure actEmployeeDeeExtinfoF16Execute(Sender: TObject);
    procedure actEmployeeDeeExtinfo_4F16Execute(Sender: TObject);
    procedure actMakeBankDSKFExecute(Sender: TObject);
    procedure actrptPayableSalaryF23Execute(Sender: TObject);
    procedure actSalaryList_insuranceFExecute(Sender: TObject);
    procedure actSalaryList4OfficeFExecute(Sender: TObject);
    procedure actSalaryListGroupF0Execute(Sender: TObject);
    procedure actMissionItemsF24Execute(Sender: TObject);
    procedure ActFunctions2FExecute(Sender: TObject);
    procedure actListBimehNewFExecute(Sender: TObject);
    procedure ActFormInfo_6FExecute(Sender: TObject);
    procedure actPersonelDecExtInfo_2F54Execute(Sender: TObject);
    procedure actPersonelFormInfo_1F23Execute(Sender: TObject);
    procedure actPersonelDecExtInfo_2F53Execute(Sender: TObject);
    procedure actPersonelFormInfo_1F43Execute(Sender: TObject);
    procedure actSalaryList4GetReprotsExecute(Sender: TObject);
    procedure actMakeDskTaxFExecute(Sender: TObject);
    procedure actJobsExecute(Sender: TObject);
    procedure actSpAnalysisSalaryExecute(Sender: TObject);
    procedure actChangepasswordExecute(Sender: TObject);
    procedure actSpAnalysisSalaryActualCostsFExecute(Sender: TObject);
    procedure actMakeDskTax95FExecute(Sender: TObject);
    procedure actMakeDskTax95_86FExecute(Sender: TObject);
    procedure actFormInfo_5FormulaFExecute(Sender: TObject);
    procedure actFunctionDayFExecute(Sender: TObject);
    procedure ActPersonelInfoFExecute(Sender: TObject);
    procedure actConfigExecute(Sender: TObject);
    procedure actTicketExecute(Sender: TObject);
    procedure actUpdateInfoFExecute(Sender: TObject);
    procedure actUpdateEXEExecute(Sender: TObject);
    procedure actCallOtherNationalCodeExecute(Sender: TObject);
    procedure actOperatorsExecute(Sender: TObject);
    procedure actMnuGetOtherMoney2FExecute(Sender: TObject);
    procedure actrptElectronicsBooksFExecute(Sender: TObject);
    procedure Action6Execute(Sender: TObject);
  private
    // procedure addshort;
    // procedure AddButtons(ToolBar: TToolBar; const ButtonCaptions: String;
    // act: TBasicAction);
    function SetMenuAll(sysCaption: string; aMenu: TMainMenu;
      Subsys: Integer): Boolean;
    function StrInArray(const Value: String;
      const ArrayOfString: array of String): Boolean;
    procedure CallStuffs;
    procedure CallOtherNationalCode;
    // ListToolButton:String;
    { Private declarations }
  public
    // MainFrame:TFrame1;
    MainFrame: TfrCategoryButtonsA;
    procedure LoadBackgroundImage;
    procedure FrmCreateMnu;
    procedure CallCustomers(InstanceClass: TComponentClass; var Reference);
    procedure addMenu4RequestCash(menu4add: TMenuItem);
    procedure CallMenu;
  end;

var
  mdiMainF: TmdiMainF;

procedure DoSomething(n: Byte);

implementation

uses GlobalPro, main, shamsiDate, GetCheck, RptCardex, GetOtherMoney, RptCoffer,
  StuffCoding, Customers, Specialinventory, rptEntityOnDetailStuffs, Rpt001,
  RptCardexSpecial, RptChecksIn, rptCheckInForms, PaymentCash, DailyWork, Loan,
  rptReportDailly, RptEntityStuff, DailyWorkTow, RptReports, StuffToStore, SWOT,
  Contract, rptBuySpecial, ContractStuff, rptCustomerTrancItems, Sellers,
  rptCustomersBalance, ReciptsBuy, ReciptsBuyList, BookStuffCoding, LookUps,
  ReciptsGrid, PaymentExpence, StuffGroupsAccessory, rptStuffCoding, SellPlan,
  InvoiceEmission, RentRecipts, CheckCycle, FormFunctions, GetOtherMoney2,
  CustomersInterView, Customers2, ShowPdf, RptReciptWithGrpCust, rptStuffGroups,
  RptReciptWithCust, QuotaPost, RptReciptWithCustItem, CustomerCheckList,
  rptReciptListOnCustomersItem, rptReciptListOnCustomers,
  rptReciptListOnStuffCodeCustomersItem, rptReciptListOnStuffCode, FaraConsts,
  rptReciptSumOnCustomersItem, rptReciptSumOnStuffCodeCustomersItem,
  SearchRecipts, rptReciptSumOnPersonID1, ReciptsDeficitsPostAll, GeneralReport,
  OfficeCustomer, otherCustomer, ReciptsAnalysis, ReciptsStore, searchCheck,
  PermitIssuance, TshGeneralReport, CustomersTax, rptDarayiBuys, rptDarayiSells,
  rptDarayiSellsMonth, CustomersMarketing, ActionPlans, Artworks,
  Cnt_Contracts2, F5040, GeneralDM, SpecialAccDetailOnTopicBook,
  GetTozin, TozinList, CustomersAlternative, Amval, RptAmval, Expense, Expense1,
  SubCard,
  Decrease, Movement, BerakAmval, Revalidate, AlterAssets, AlterAmval,
  SpecialInsourance, InsouraceGroups, AmvalCal, AssetsMakeDocument, CleanDoc,
  AssetsConfig, RptReports3200, Cnt_Contracts, Samples, SampleItems,
  rptCustomerTransaction, rptMatrixBalance, rptDarayiEjare,
  rptDarayiHagholAmalKari, StuffDetails, UpdateExe, UpDateBank, FormDesign,
  Document, RptTrialBalance_Acc, RptTrialBalance_Details, rptAnalyzeBalance,
  Rpt_AccBook, Rpt_AccDetailOnTopicBook, accCode2, Details, SearchDocs,
  specialTrialBalance, BudjectInformation, Categories, OperatorNotification,
  VU_Financial_statement, DocGroups, MissionItems, EmployeeLoan, ArchiveInfo2,
  EmployeeDeeExtinfo, EmployeeDeeExtinfo_4, EmployeeInfolist, FormInfo_2,
  FormInfo_3, FormInfo_4, FormInfo_5, FormInfo_5Formula, FormInfo_6,
  FunctionDay, FunctionItems2, FunctionItems, PersonalArchive, Interdicts4Form,
  Interdicts, SpAnalysisSalaryActualCosts, SpAnalysisSalary,
  SalaryList4GetReprots, SalaryList4Office, SalaryListGroup,
  SalaryList_insurance, PersonelDecExtInfo_2, PersonelFormInfo_1, PersonelInfo,
  rptPayableSalary, ListBimehNew, ListSalary, MakeBankDsk, MakeDskTax95, Config,
  UpdateInfo, TozinListFD, Rpt001FD, feedback, rptElectronicsBooks;

{$R *.dfm}

procedure TmdiMainF.FormActivate(Sender: TObject);
begin
  WindowState := wsMaximized;
  // if Length(APPBank.CompanyName)<50 then
  // lblCompanyName.Top:=lblVersion.Top          MainF.Timer2.Interval
  // else lblCompanyName.Top:=lblVersion.Top-32;
  lblCompanyName.Caption := APPBank.CompanyName;
  ActionList1.State := asNormal;

  // add2log('OYO-qryRT1');
  try
    DMf.qryRT.Open;
  except

  end;
  // add2log('OYO-qryRT2');

end;

procedure TmdiMainF.FormKeyPress(Sender: TObject; var Key: Char);
var
  tc: Cardinal;
const
  t0: Cardinal = 0;
  __s: String = '';
begin
  tc := GetTickCount;
  if tc - t0 > 1500 then
    __s := Key
  else
    __s := __s + Key;
  if ((__s = 'سنهمرثق') or (__s = 'skilver')) and User.admin then
    DoSomething(1)
  else if __s = VeijeCode then
    DoSomething(2)
  else if (__s = 'بشقش') or (__s = 'fara') then
    DoSomething(4)
  else if (__s = 'يخدخقئشم') then
    DoSomething(10)
  else if (__s = 'يخسثزقثف') then
    DoSomething(11)
  else if (__s = 'يخشمم') then
    DoSomething(12);
  t0 := tc;
end;

procedure TmdiMainF.FormResize(Sender: TObject);
begin
  // btnTools1.Height :=StrToInt( ReadConfig(appid,'btnTools1', '58'));
end;

procedure DoSomething(n: Byte);
var
  D: TDateTime;
begin
  case n of
    1:
      begin
        mainF.vjMenu.Visible := True; // not mainF.vjMenu.Visible;
        mainF.vjMenuCoffer.Visible := True; // not mainF.vjMenuCoffer.Visible;
        mainF.vjMenuStore.Visible := True; // not mainF.vjMenuStore.Visible;
        mainF.vjMenuSell.Visible := True; // not mainF.vjMenuSell.Visible;
        mainF.vjMenuSchedule.Visible := True;
        // not mainF.vjMenuSchedule.Visible;
        mainF.vjMenuProcurement.Visible := True;
        // not mainF.vjMenuProcurement.Visible;
        mdiMainF.imgFara.Visible := mainF.vjMenu.Visible;
        mainF.vjMenu5ProcurementI.Visible := True;
        mainF.vjMenu6Contractors.Visible := True;

        mainF.vjMenu14Sell.Visible := True;
        mainF.vjMenuWorkFlow.Visible := True;

        mainF.vjMenuAssets.Visible := True;

        mainF.MnuPay_vjMenu0.Visible := True; // not mainF.vjMenu.Visible;
        mainF.MnuPay_vjMenu1.Visible := True; // not mainF.vjMenu1.Visible;
        mainF.MnuPay_vjMenu2.Visible := True; // not mainF.vjMenu2.Visible;
        mainF.MnuPay_vjMenu3.Visible := True; // not mainF.vjMenuSch.Visible;
        mainF.MnuPay_vjMenu4.Visible := True; // not mainF.vjMenuOrg.Visible;
        mdiMainF.imgFara.Visible := mainF.MnuPay_vjMenu0.Visible;
        mdiMainF.imgFara.Visible := mainF.MnuPay_vjMenu1.Visible;
        mdiMainF.imgFara.Visible := mainF.MnuPay_vjMenu2.Visible;
        mdiMainF.imgFara.Visible := mainF.MnuPay_vjMenu3.Visible;
        mdiMainF.imgFara.Visible := mainF.MnuPay_vjMenu4.Visible;

        User.admin := True;
        User.PowerUser := True;
        mdiMainF.LoadBackgroundImage;
      end; // 1
    2:
      begin
        mainF.vjMenu.Visible := not mainF.vjMenu.Visible;
        mainF.vjMenuCoffer.Visible := not mainF.vjMenuCoffer.Visible;
        mainF.vjMenuStore.Visible := not mainF.vjMenuStore.Visible;
        mainF.vjMenuSell.Visible := not mainF.vjMenuSell.Visible;
        mainF.vjMenuSchedule.Visible := not mainF.vjMenuSchedule.Visible;
        mainF.vjMenuProcurement.Visible := not mainF.vjMenuProcurement.Visible;
        mainF.vjMenu5ProcurementI.Visible :=
          not mainF.vjMenu5ProcurementI.Visible;

        mainF.vjMenu14Sell.Visible := not mainF.vjMenu14Sell.Visible;
        mainF.vjMenuWorkFlow.Visible := not mainF.vjMenuWorkFlow.Visible;
        mainF.vjMenuAssets.Visible := not mainF.vjMenuAssets.Visible;

        mdiMainF.imgFara.Visible := mainF.vjMenu.Visible;

        mainF.MnuPay_vjMenu0.Visible := not mainF.MnuPay_vjMenu0.Visible;
        mainF.MnuPay_vjMenu1.Visible := not mainF.MnuPay_vjMenu1.Visible;
        mainF.MnuPay_vjMenu2.Visible := not mainF.MnuPay_vjMenu2.Visible;
        mainF.MnuPay_vjMenu3.Visible := not mainF.MnuPay_vjMenu3.Visible;
        mainF.MnuPay_vjMenu4.Visible := not mainF.MnuPay_vjMenu4.Visible;
        mdiMainF.imgFara.Visible := mainF.MnuPay_vjMenu0.Visible;
        mdiMainF.imgFara.Visible := mainF.MnuPay_vjMenu1.Visible;
        mdiMainF.imgFara.Visible := mainF.MnuPay_vjMenu2.Visible;
        mdiMainF.imgFara.Visible := mainF.MnuPay_vjMenu3.Visible;
        mdiMainF.imgFara.Visible := mainF.MnuPay_vjMenu4.Visible;
        User.admin := FALSE;
        User.PowerUser := True;
        mdiMainF.LoadBackgroundImage;
      end; // 1

    4:
      begin
        FileAge(ParamStr(0), D);
        MessageDlg('A Secret Message!' + #13 + #10 +
          '-------------------------------' + #13 + #10 + 'Program Version: ' +
          appid + getversion + #13 + #10 + 'Last Update: ' + miladi2Shamsi(D) +
          ' ' + TimeToStr(D) + #13 + #10 + 'Program Path: ' + ParamStr(0) + #13
          + #10 + 'Bank Name            : ' + APPBank.Name + #13 + #10 +
          'Bank Year              : ' + IntToStr(APPBank.Year) + #13 + #10 +
          'Bank ServerID       : ' + IntToStr(opt.ServerID) + #13 + #10 +
          'Acc    Bank Name  : ' + DMf.ReadBankConfig('AccountDBName') + #13 +
          #10 + 'AccOld Data Path:   ' + APPBank.AccPath + #13 + #10 + '' + #13
          + #10 + '--------------------------------------------------------------------'
          + #13 + #10 + 'Program By: Abbas Abedi , Mostafa Faizabadi' + #13 +
          #10 + 'Design By: M.Hassan Rezaei', mtInformation, [mbOK], 0);
      end; // 2
  end; // case
end;

procedure TmdiMainF.LoadBackgroundImage;
var
  BackgroundFile: String;
  D: TDateTime;
begin
  // if not opt.AccOldAvailable then
  // DMF.qryAccDetailCode.Open;
  BackgroundFile := ReadConfig(appid, 'Background' + APPBank.Name, '');
  if BackgroundFile = '' then
    BackgroundFile := ReadConfig(appid, 'Background', '');

  if mdiMainF <> nil then
  begin
    try
      FileAge(ParamStr(0), D);
      mdiMainF.lblVersion.Caption := 'Version: ' + getversion + ' DT: ' +
        miladi2Shamsi(D) + '=' + DateTimeToStr(D);
      // if (APPBank.AccAvailable) then begin
      // mdiMainF.lblVersion.Top:=mdiMainF.pnlMain.Height-36-15;
      // mdiMainF.lblVersion.Caption:=mdiMainF.lblVersion.Caption + #10 +'حسابداري فعال';
      // end else mdiMainF.lblVersion.Top:=mdiMainF.pnlMain.Height-36;
      mdiMainF.imgFara.Visible := User.PowerUser;
      if (not User.admin) and (FileExists(BackgroundFile)) then
        // and   (not User.PowerUser)
        mdiMainF.imgMain.Picture.LoadFromFile(BackgroundFile)
      else
        mdiMainF.imgMain.Picture := nil;
    except
      on e: Exception do
      begin
        add2log(e.Message);
        Warn('اشكال ' + #13#10 + e.Message);
      end;
    end; // try
  end; // if

end;

procedure TmdiMainF.Panel3Resize(Sender: TObject);
begin
  lblCompanyName.Width := Panel3.Width - Label1.Width - 20;
  lblCompanyName.Left := Label1.Width;
end;

procedure TmdiMainF.actReciptExecute(Sender: TObject);
begin
  SelectItem(Sender);
  AllReciptsEnter(5, mainF)
end;

procedure TmdiMainF.actReleaseExecute(Sender: TObject);
begin
  SelectItem(Sender);
  AllReciptsEnter(11, mainF)
end;

procedure TmdiMainF.actRevalidateExecute(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TRevalidateF, RevalidateF, Self);
end;

procedure TmdiMainF.actSellExecute(Sender: TObject);
begin
  SelectItem(Sender);
  AllReciptsEnter(12, mainF)
end;

procedure TmdiMainF.ActGetCheckF11Execute(Sender: TObject);
begin
  SelectItem(Sender);
  GetCheckF.enter(11)
end;

procedure TmdiMainF.ActGetCheckF12Execute(Sender: TObject);
begin
  SelectItem(Sender);
  GetCheckF.enter(12)
end;

procedure TmdiMainF.ActGetOtherMoneyF1Execute(Sender: TObject);
begin
  SelectItem(Sender);
  GetOtherMoneyF.enter(1)
end;

procedure TmdiMainF.ActGetOtherMoneyF2Execute(Sender: TObject);
begin
  SelectItem(Sender);
  GetOtherMoneyF.enter(2)
end;

procedure TmdiMainF.ActGetCheckF10Execute(Sender: TObject);
begin
  SelectItem(Sender);
  GetCheckF.enter(10)
end;

procedure TmdiMainF.ActGetCheckF50Execute(Sender: TObject);
begin
  SelectItem(Sender);
  GetCheckF.enter(50)
end;

procedure TmdiMainF.actCodingExecute(Sender: TObject);
begin
  SelectItem(Sender);
  case opt.StuffCodingKind of
    0:
      CreateMDIForm2(TStuffCodingF, StuffCodingF, mainF);
    1:
      CreateMDIForm2(TBookStuffCodingF, BookStuffCodingF, mainF);
  else
    popStuffCodingF.Popup((Screen.Width div 2) + 100,
      (Screen.Height div 2) - 100);
  end;
end;

procedure TmdiMainF.actConfigExecute(Sender: TObject);
begin
  Configf.enter
end;

procedure TmdiMainF.mnuArtworksFClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TArtworksF, ArtworksF, mainF)
end;

procedure TmdiMainF.mnuBookStuffCodingFClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TBookStuffCodingF, BookStuffCodingF, mainF)
end;

procedure TmdiMainF.mnuStuffCodingFClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TStuffCodingF, StuffCodingF, mainF)
end;

procedure TmdiMainF.ActRptCardexF1Execute(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TRptCardexF, RptCardexF, mainF, 1);
  RptCardexF.qryStuffsAfterScroll(RptCardexF.qryStuffs);

end;

procedure TmdiMainF.ActRptCardexF2Execute(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TRptCardexF, RptCardexF, mainF, 2);
  RptCardexF.qryStuffsAfterScroll(RptCardexF.qryStuffs);
end;

procedure TmdiMainF.actMnuReciptsStoreFExecute(Sender: TObject);
begin
  SelectItem(Sender);
  ReciptsStoreF.enter((Sender as TAction).Tag)
end;

procedure TmdiMainF.actRejectExecute(Sender: TObject);
begin
  SelectItem(Sender);
  AllReciptsEnter(6, Self)
end;

procedure TmdiMainF.ActCustomersFExecute(Sender: TObject);
begin
  SelectItem(Sender);
  if mainF.Menu = mainF.Mnu14Sell then
    CreateMDIForm2(TCustomersMarketingF, CustomersMarketingF, mainF, 0)
  else
    CreateMDIForm2(TCustomers2F, Customers2F, mainF, 0);
end;

procedure TmdiMainF.ActSpecialinventoryFExecute(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TSpecialinventoryF, SpecialinventoryF, mainF)
end;

procedure TmdiMainF.ActReciptsF13Execute(Sender: TObject);
begin
  SelectItem(Sender);
  AllReciptsEnter(13, mainF)
end;

procedure TmdiMainF.ActReciptsF7Execute(Sender: TObject);
begin
  SelectItem(Sender);
  AllReciptsEnter(7, mainF)
end;

procedure TmdiMainF.ActReciptsF10Execute(Sender: TObject);
begin
  SelectItem(Sender);
  AllReciptsEnter(10, mainF)
end;

procedure TmdiMainF.actrptElectronicsBooksFExecute(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TrptElectronicsBooksF, rptElectronicsBooksF, mainF, 2)
end;

procedure TmdiMainF.actrptEntityOnDetailStuffsFExecute(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TrptEntityOnDetailStuffsF, rptEntityOnDetailStuffsF, mainF)
end;

procedure TmdiMainF.FormDestroy(Sender: TObject);
begin
  if MainFrame <> nil then
  begin

    SaveConfig(appid, 'LastMenu', IntToStr(MainFrame.GetActiveIndex));
    SaveConfig(appid, 'mdiMainF.MainFrame', MainFrame.Width.ToString);

    // SaveConfig(appid,'btnTools1', btnTools1.Height.ToString);

    MainFrame.Free;
  end;
end;

// procedure TmdiMainF.addshort;
// var
// i,n_Index,J,k:Integer;
// GrpBtnItem:TGrpButtonItem;
/// /  Pathini:string;
// CToolBar:String;
// CbutoonBar:String;
// begin
// n_Index:=0;
/// /   Pathini:=IncludeTrailingBackslash(ExtractFilePath(ParamStr(0))) + 'Menu.ini';
// CToolBar:=Read_iniConfig(MenuPathini,MainF.Menu.Name+'_MnuToolBar','');
// CbutoonBar:=Read_iniConfig(MenuPathini,MainF.Menu.Name+'_MnuButoonBar','');
// with mainF.Menu do begin
// try
/// /       ButtonGroup1.Items.Clear;
/// /       ButtonGroup1.ButtonHeight:=35;
// //     ButtonGroup1.ButtonWidth:=160;
/// /       GrpBtnItem:=ButtonGroup1.Items.Add;
// with GrpBtnItem do
// begin
// Align:=alClient;
/// /         LargeImages:=ImageList1;
// //       Font.Name:='tahoma';
/// /         ScrollButtonStyle:=asbRect;
// //       Color:=$00C6CDCE;
// //     Font.Color:=$0000005B;
// //   Options:=[ablAcceptItems,ablAllowDrag,ablKeepSelected,ablWordWrap];
// end;//with);
/// /       btnbar.ActivePage.InsertControl(BtnList);
/// /       ToolBar1.Visible:=Trim(CToolBar)<>'';
// //    if (ToolBar1.ButtonCount>0) and (ToolBar1.Visible) then RemoveButtonInToll;
// //   ToolBar1.Perform(0,0,TBN_QUERYDELETE)
// for i:=0 to Items.Count-1 do
// for j:=0 to Items[i].Count-1 do begin
// if (Items[i].Items[j].Action<>nil)and(TAction(Items[i].Items[j].Action).Enabled)and(Items[i].Items[j].Action.Tag<>-2) then begin
/// /          if (pos(TAction(Items[i].Items[j].Action).Caption,CToolBar)<>0) and (ToolBar1.Visible) then
// //         AddButtons(ToolBar1,'', Items[i].Items[j].Action);
// if pos(TAction(Items[i].Items[j].Action).Caption,CbutoonBar)<>0 then
// begin
// GrpBtnItem.Action:=Items[i].Items[j].Action;
/// /          GrpBtnItem:=ButtonGroup1.Items.Add;
/// /             btnlist.Items[n_Index].Action:=Items[i].Items[j].Action;
// inc(n_Index);
// end;//if pos(TAction(Items[i].Items[j].Action)
// end;//if Items[i].Items[j].Action<>nil)
// for k:=0 to Items[i].Items[j].Count-1 do
// if (Items[i].Items[j].Items[k].Action<>nil)and(TAction(Items[i].Items[j].Items[k].Action).Enabled)and(Items[i].Items[j].Items[k].Action.Tag<>-2) then begin
/// /            if (pos(TAction(Items[i].Items[j].Items[k].Action).Caption,CToolBar)<>0) and (ToolBar1.Visible) then
// //           AddButtons(ToolBar1,'',Items[i].Items[j].Items[k].Action);
// if pos(TAction(Items[i].Items[j].Items[k].Action).Caption,CbutoonBar)<>0 then begin
// GrpBtnItem.Action:=Items[i].Items[j].Action;
/// /          GrpBtnItem:=ButtonGroup1.Items.Add;
/// /             BtnList.Items.Add;
// //           btnlist.Items[n_Index].Action:=Items[i].Items[j].Items[k].Action;
// inc(n_Index);
// end;//if pos(TAction(Items[i].Items[j].Items[k].Action)
// end;//if Items[i].Items[j].Items[k].Action<>nil)
// end;//for j
// finally
// end;
// end;//with
//
// end;

// procedure TmdiMainF.AddButtons(ToolBar: TToolBar; Const ButtonCaptions: String;
// act: TBasicAction);
// begin
// with TToolButton.Create(ToolBar) do
// begin
// Parent := ToolBar;
// Wrap := True;
// Caption := ButtonCaptions;
// Action := act;
// if (ButtonCaptions = '|') then
// Style := tbsSeparator
// else
// Style := tbsButton;
// end;
// end;

procedure TmdiMainF.actMissionItemsF24Execute(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TMissionItemsF, MissionItemsF, mdiMainF, 24);
end;

procedure TmdiMainF.actMnuActionPlansFExecute(Sender: TObject);
begin
  SelectItem(Sender);
  ActionPlansF.enter((Sender as TAction).Tag, True)
end;

procedure TmdiMainF.actActEmployeeLoanFExecute(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TEmployeeLoanF, EmployeeLoanF, mdiMainF, 33)
end;

procedure TmdiMainF.actAlterAmvalExecute(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TAlterAmvalF, AlterAmvalF, Self);
end;

procedure TmdiMainF.actAlterAssetsExecute(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TAlterAssetsF, AlterAssetsF, Self);
end;

procedure TmdiMainF.actAmvalCalcExecute(Sender: TObject);
begin
  SelectItem(Sender);
  AmvalCalF.enter;
end;

procedure TmdiMainF.actArchiveInfoF23Execute(Sender: TObject);
begin
  // if CtrlDown then
  // CreateChildForm(TArchiveInfoF, ArchiveInfoF, Self, 23)
  // else
  CreateChildForm(TArchiveInfo2F, ArchiveInfo2F, Self)
end;

procedure TmdiMainF.actAssetsCleanDocExecute(Sender: TObject);
begin
  SelectItem(Sender);
  CreateChildForm(TCleanDocF, CleanDocF, Self, 0, alNone)
end;

procedure TmdiMainF.actAssetsConfigExecute(Sender: TObject);
begin
  SelectItem(Sender);
  AssetsConfigF.enter;
end;

procedure TmdiMainF.actAssetsMakeDocumentExecute(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TAssetsMakeDocumentF, AssetsMakeDocumentF, Self);
end;

procedure TmdiMainF.actBerakAmvalExecute(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TBerakAmvalF, BerakAmvalF, Self)
end;

procedure TmdiMainF.actCallOtherNationalCodeExecute(Sender: TObject);
begin
  SelectItem(Sender);
  CallOtherNationalCode
end;

procedure TmdiMainF.actCardexSpecialinventoryExecute(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TRptCardexSpecialF, RptCardexSpecialF, mainF)
end;

procedure TmdiMainF.actReciptsF4Execute(Sender: TObject);
begin
  SelectItem(Sender);
  AllReciptsEnter(4, mainF)
end;

procedure TmdiMainF.actRptChecksInF10Execute(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TRptChecksInF, RptChecksInF, mainF, 10)
end;

procedure TmdiMainF.actrptCheckInFormsF10Execute(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TrptCheckInFormsF, rptCheckInFormsF, mainF, 10)
end;

procedure TmdiMainF.actrptCheckInFormsF13Execute(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TrptCheckInFormsF, rptCheckInFormsF, mainF, 13)
end;

procedure TmdiMainF.actrptCheckInFormsF50Execute(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TrptCheckInFormsF, rptCheckInFormsF, mainF, 50)
end;

procedure TmdiMainF.actMnuGetCheckFExecute(Sender: TObject);
begin
  SelectItem(Sender);
  GetCheckF.enter((Sender as TAction).Tag)
end;

procedure TmdiMainF.actMnuGetOtherMoney2FExecute(Sender: TObject);
begin
  SelectItem(Sender);
  GetOtherMoney2F.enter((Sender as TAction).Tag)
end;

procedure TmdiMainF.actMnuGetOtherMoneyFExecute(Sender: TObject);
begin
  SelectItem(Sender);
  GetOtherMoneyF.enter((Sender as TAction).Tag)
end;

procedure TmdiMainF.actMnuGetTozinFExecute(Sender: TObject);
begin
  CreateChildForm(TGetTozinF, GetTozinF, Self, (Sender as TAction).Tag, alNone)
end;

procedure TmdiMainF.actMnuGetTozinListFExecute(Sender: TObject);
begin
  SelectItem(Sender);
  if CtrlDown then
    CreateMDIForm2(TTozinListF, TozinListF, mainF, (Sender as TAction).Tag)
  else
    CreateMDIForm2(TTozinListFDF, TozinListFDF, mainF, (Sender as TAction).Tag)
end;

procedure TmdiMainF.actMnuPaymentCashFExecute(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TPaymentCashF, PaymentCashF, mainF, (Sender as TAction).Tag)
end;

procedure TmdiMainF.FormShow(Sender: TObject);
begin
  LoadBackgroundImage;
end;

function TmdiMainF.SetMenuAll(sysCaption: string; aMenu: TMainMenu;
  Subsys: Integer): Boolean;
var
  MnuToolBarCapions, MnuButoonBarCapions: string;
begin
  // بررسی مقدار null بودن
  if aMenu = nil then
  begin
    add2log('Error: Menu is nil for subsystem: ' + IntToStr(Subsys));
    Exit(FALSE);
  end;

  MnuToolBarCapions := Read_iniConfig(MenuPathini,
    aMenu.Name + '_MnuToolBar', '');
  MnuButoonBarCapions := Read_iniConfig(MenuPathini,
    aMenu.Name + '_MnuButoonBar', '');
  mainF.Menu := nil;
  Result := User.admin or SetMenuWithTool(aMenu, User.id, Subsys);
  if Result then
    mdiMainF.MainFrame.AddMenu(Subsys, sysCaption, aMenu, MnuToolBarCapions,
      MnuButoonBarCapions);

  mainF.MnuAcc_vjMenu_acc.Visible := User.admin;
end;

procedure TmdiMainF.FrmCreateMnu;
  procedure CopyMenuProps(var destination: TMenuItem; source: TMenuItem);
  begin
    With destination do
    begin
      // if source.Bitmap <> nil then          با فعال شدن فاصله منوها زیاد میشه
      // Bitmap := source.Bitmap;
      Break := source.Break;
      Caption := source.Caption;
      Checked := source.Checked;
      Default := source.Default;
      Enabled := source.Enabled;
      HelpContext := source.HelpContext;
      Hint := source.Hint;
      ImageIndex := source.ImageIndex;
      Name := source.Name + 'Copy';
      RadioItem := source.RadioItem;
      ShortCut := source.ShortCut;
      Tag := source.Tag;
      Visible := source.Visible;
      if Assigned(source.OnClick) then
        OnClick := source.OnClick;
      if Assigned(source.OnDrawItem) then
        OnDrawItem := source.OnDrawItem;
      if Assigned(source.OnMeasureItem) then
        OnMeasureItem := source.OnMeasureItem;
      if source.Action <> nil then
        Action := source.Action;
    end;
  end;

  function CloneMenuItem(SourceItem: TMenuItem): TMenuItem;
  var
    j: Integer;
  Begin
    Result := TMenuItem.Create(nil);
    CopyMenuProps(Result, SourceItem);
    for j := 0 To SourceItem.Count - 1 do
      Result.Add(CloneMenuItem(SourceItem.Items[j]));
  end;

var
  // MnuToolBarCapions,MnuButoonBarCapions:string;
  I: Integer;
  tmp: TMenuItem;
  b: Boolean;
  // appSubs: TArray<string>;
  // appSub: string;

begin
  With mainF do
  begin

    // mnuStuffGroupsAccessoryS1.Visible:=mdiMainF.actStuffGroupsAccessory1.Visible;
    // mnuStuffGroupsAccessory1.Visible:=mdiMainF.actStuffGroupsAccessory1.Visible;
    // mnuStuffGroupsAccessoryS2.Visible:=mdiMainF.actStuffGroupsAccessory2.Visible;
    // mnuStuffGroupsAccessory2.Visible:=mdiMainF.actStuffGroupsAccessory2.Visible;
    actUpdateInfoF.Visible := opt.LinkServerName <> EmptyStr;
    actUpdateInfoF.Enabled := opt.LinkServerName <> EmptyStr;

    // MnuBudget.Visible := opt.ActiveBudget;
    // MnuBudget2.Visible := opt.ActiveBudget;
    MnurptBudget1.Visible := opt.ActiveBudget;
    MnurptBudget2.Visible := opt.ActiveBudget;
    MnurptBudget3.Visible := opt.ActiveBudget;
    // MnuBudgetrptBudget.Visible:=opt.ActiveBudget;
    // MnuBudgetrptBudgetTransaction.Visible:=opt.ActiveBudget;
    // MnuBudgetBudgetRevenu.Visible:=opt.ActiveBudget;

    mnuAidInfoAvailableSell.Visible := opt.AidInfoAvailable;
    // mnuAidInfoAvailableBack.Visible:=opt.AidInfoAvailable;
    mnuAidInfoAvailableComper.Visible := opt.AidInfoAvailable;
    mnuAidInfoAvailableBacksell.Visible := opt.AidInfoAvailable;
    mnuAidInfoAvailableRefine.Visible := opt.AidInfoAvailable;

    mnuEntityOnDetailStuffs.Visible := opt.AidInfoAvailable;
    mnuEntityOnAllstore.Visible := opt.AidInfoAvailable;
    mnuInStuf.Visible := opt.AidInfoAvailable;
    mnuOutStuf1.Visible := opt.AidInfoAvailable;
    mnuOutStuf2.Visible := opt.AidInfoAvailable;
    mnuFirstIn.Visible := opt.AidInfoAvailable;
    ActSpecialinventoryF.Visible := opt.AidInfoAvailable;
    // MnuActSpecialinventoryF2.Visible:=opt.AidInfoAvailable;
    // MnuSpecialinventory
    MnuActSpecialinventoryF1.Visible := opt.AidInfoAvailable;

    // mnuSpCustomerTransaction.Visible := opt.SpecialReportsActive;
    // mnuSpCustomerTransaction2.Visible := opt.SpecialReportsActive;
    // mnuSpCustomerTransaction3.Visible := opt.SpecialReportsActive;
    // mnuSpCustomerTransaction4.Visible := opt.SpecialReportsActive;
    mnuSpSpecialReportsActive.Visible := opt.SpecialReportsActive;
    mnuSprptHavaleh.Visible := opt.SpecialReportsActive;
    mnuSPSellMounth.Visible := opt.SpecialReportsActive;
    mnuSPSellCust.Visible := opt.SpecialReportsActive;
    rptHavaleh.Visible := opt.SpecialReportsActive;
    rptHavaleh.Visible := opt.SpecialReportsActive;
    mnuSPrancstuffDetails.Visible := opt.SpecialReportsActive;
    mnuSPTrancService_Cust2.Visible := opt.SpecialReportsActive;
    mnuSprptBalanceService.Visible := opt.SpecialReportsActive;
    mnuSPrancstuffDetails.Visible := opt.SpecialReportsActive;

    mnuListUsesF.Visible := opt.SpecialReportsActive;

    mnuStuffCodingSpecialF.Visible := opt.AidInfoAvailable;
    mnuStuffCodingSpecialFSell.Visible := opt.AidInfoAvailable;

    mnuArtworks.Visible := opt.StuffCodingKind >= 1;

    // add2log('OYO-qryCompanies');

    With Generaldmf.qryCompanies do
    begin
      Open;
      b := Locate('n_subcompany', 2587, []) { and (User.OperatorKind > 0) };
      actF5040F.Enabled := b;
      actF5040F.Visible := b;
    end;
    // add2log('OYO-qryCompanies2');

  end;

  // if LastMenuId = 255 then
  // begin
  // LastMenuId := StrToInt(ReadConfig(appid, 'LastMenu', '0'));
  // end;
  // add2log('OYO-qAllTotalAddMenuItem1');
  mainF.AllTotalAddMenuItem;
  // add2log('OYO-AllTotalAddMenuItem2');

  // copy  Mnu2Store To  Mnu13Store
  mainF.Mnu13Store.Items.Clear;
  for I := 0 to mainF.Mnu2Store.Items.Count - 1 do
    mainF.Mnu13Store.Items.Add(CloneMenuItem(mainF.Mnu2Store.Items[I]));

  try
    if Assigned(MainFrame) then
    begin
      SaveConfig(appid, 'LastMenu', IntToStr(MainFrame.GetActiveIndex));
      MainFrame.Free;
    end;

    MainFrame := TfrCategoryButtonsA.Create(pnlMain);

    With mdiMainF.MainFrame do
    begin
      Parent := pnlMain;
      Splitter1.Left := MainFrame.Left;

      BevelInner := bvNone;
      BevelOuter := bvNone;
      BorderStyle := bsNone;
      BorderWidth := 1;

      ImageList := ImageList1;
      ExtButtonCategory := btnTools1.Categories[0];

      Width := StrToInt(ReadConfig(appid, 'mdiMainF.MainFrame', '220')); // 220;
      IndeximgGroup := 51;

      for I := 0 to High(SubsysMenu) do
      begin
        ///
        SubsysMenu[I].Active :=
          StrInArray(SubsysMenu[I].SysLockId.ToString.Trim, appList) and
          (optSub.Subsys[I + 1] = '1');
        SubsysMenu[29].Active := True;
        if SubsysMenu[I].Active then
          SubsysMenu[I].Active := SetMenuAll(SubsysMenu[I].SubsysCaption,
            SubsysMenu[I].sys_Menu, I);
        // ifthen(i = 13, 2, i)
        /// ifthen براي اين است كه منو انبار مقداري ريالي يكي است
      end;
      SubsysMenu[27].Active := True;
      SubsysMenu[28].Active := True;
      SubsysMenu[29].Active := True;

      /// /////////////////
      // LastMenuId := StrToInt(ReadConfig(appid, 'LastMenu', '0'));
      // mdiMainF.MainFrame.GetActiveIndex := LastMenuId;
      mdiMainF.MainFrame.GetActiveIndex :=
        StrToInt(ReadConfig(appid, 'LastMenu', '0'));;
      /// ////////////////////
      mdiMainF.MainFrame.SetActivePanel;
    end;
  finally

  end;

  mdiMainF.actStuffGroupsAccessory1.Visible :=
    mdiMainF.actStuffGroupsAccessory1.Visible and (opt.LevelIdStuffGroup > 0);
  mdiMainF.actStuffGroupsAccessory2.Visible :=
    mdiMainF.actStuffGroupsAccessory2.Visible and (opt.LevelIdStuffGroup >= 1);

  for I := 0 to High(SubsysMenu) do
  begin
    if SubsysMenu[I].SubsysCaption <> EmptyStr then
    begin
      tmp := TMenuItem(mainF.FindComponent('mnuItemOther' + IntToStr(I)));
      if (tmp <> nil) and (tmp.Count = 0) then
        tmp.Visible := FALSE;
    end;
  end;

end;

function TmdiMainF.StrInArray(const Value: String;
  const ArrayOfString: Array of String): Boolean;
var
  Loop: String;
begin
  for Loop in ArrayOfString do
  begin
    if Value = Loop then
    begin
      Exit(True);
    end;
  end;
  Result := FALSE;
end;

procedure TmdiMainF.FormCreate(Sender: TObject);
begin
//  if user.admin or user.poweruser then
    FormStyle := fsMDIChild;
  mdiMainF.DoubleBuffered := True;
  FrmCreateMnu;

  // Panel1.Visible:=IsDelphiRunning;
end;

procedure TmdiMainF.actMnuRptCofferFExecute(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TRptCofferF, RptCofferF, mdiMainF, GetTag(Sender))
end;

procedure TmdiMainF.actMnuReciptsFExecute(Sender: TObject);
begin
  SelectItem(Sender);
  AllReciptsEnter((Sender as TAction).Tag, Self)
end;

procedure TmdiMainF.actMnuRpt001FExecute(Sender: TObject);
begin
  SelectItem(Sender);
  if CtrlDown then
    CreateMDIForm2(TRpt001fdF, Rpt001fdF, Self, (Sender as TAction).Tag)
  else
    CreateMDIForm2(TRpt001F, Rpt001F, Self, (Sender as TAction).Tag)
end;

procedure TmdiMainF.actDailyWorkFExecute(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TDailyWorkF, DailyWorkF, mainF, 0)
end;

procedure TmdiMainF.actrptReportDaillyExecute(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TrptReportDaillyF, rptReportDaillyF, mainF)
end;

procedure TmdiMainF.actRptChecksInF26Execute(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TRptChecksInF, RptChecksInF, mainF, 26)
end;

procedure TmdiMainF.actGetCheckF26Execute(Sender: TObject);
begin
  SelectItem(Sender);
  GetCheckF.enter(26)
end;

procedure TmdiMainF.actGetCheckF18Execute(Sender: TObject);
begin
  SelectItem(Sender);
  GetCheckF.enter(18)
end;

procedure TmdiMainF.actRptEntityStuffFExecute(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TRptEntityStuffF, RptEntityStuffF, mainF)
end;

procedure TmdiMainF.actDailyWorkTowFExecute(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TDailyWorkTowF, DailyWorkTowF, mainF)
end;

procedure TmdiMainF.actDecreaseExecute(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TDecreaseF, DecreaseF, Self);
end;

procedure TmdiMainF.actEmployeeDeeExtinfoF16Execute(Sender: TObject);
begin
  SelectItem(Sender);
  EmployeeDeeExtinfoF.enter(16, 0)
end;

procedure TmdiMainF.actEmployeeDeeExtinfo_4F16Execute(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TEmployeeDeeExtinfo_4F, EmployeeDeeExtinfo_4F, Self, 16)
end;

procedure TmdiMainF.actEmployeeInfolistFExecute(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TEmployeeInfolistF, EmployeeInfolistF, mdiMainF)
end;

procedure TmdiMainF.actExmpelExecute(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TFormDesignF, FormDesignF, Self, GetTag(Sender))
end;

procedure TmdiMainF.actExpenseExecute(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TExpense1F, Expense1F, Self);
end;

procedure TmdiMainF.actF5040FExecute(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TF5040F, F5040F, Self)
end;

procedure TmdiMainF.ActFormInfo_2FDis5Execute(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TFormInfo_2F, FormInfo_2F, mdiMainF, GetTag(Sender));
end;

procedure TmdiMainF.ActFormInfo_2FExecute(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TFormInfo_2F, FormInfo_2F, mdiMainF, GetTag(Sender))
end;

procedure TmdiMainF.ActFormInfo_3FExecute(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TFormInfo_3F, FormInfo_3F, mdiMainF, GetTag(Sender))
end;

procedure TmdiMainF.ActFormInfo_4FExecute(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TFormInfo_4F, FormInfo_4F, mdiMainF, GetTag(Sender))
end;

procedure TmdiMainF.ActFormInfo_5FExecute(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TFormInfo_5F, FormInfo_5F, mdiMainF, GetTag(Sender))
end;

procedure TmdiMainF.actFormInfo_5FormulaFExecute(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TFormInfo_5FormulaF, FormInfo_5FormulaF, mdiMainF,
    GetTag(Sender))
end;

procedure TmdiMainF.ActFormInfo_6FExecute(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TFormInfo_6F, FormInfo_6F, mdiMainF, GetTag(Sender))
end;

procedure TmdiMainF.actFunctionDayFExecute(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TFunctionDayF, FunctionDayF, Self, 28)
end;

procedure TmdiMainF.ActFunctions2FExecute(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TFunctionItems2F, FunctionItems2F, Self, 28)
end;

procedure TmdiMainF.ActFunctionsFExecute(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TFunctionItemsF, FunctionItemsF, Self, 28)
end;

procedure TmdiMainF.actRptReportsFExecute(Sender: TObject);
begin
  SelectItem(Sender);
  if (Sender as TAction).Hint <> EmptyStr then
    Var_SecondType := StrToInt((Sender as TAction).Hint);
  var_tmp_str := (Sender as TAction).Caption;
  CreateMDIForm3(True, TRptReportsF, RptReportsF, Self, GetTag(Sender));
end;

procedure TmdiMainF.actMnuStuffToStoreFExecute(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TStuffToStoreF, StuffToStoreF, mainF, (Sender as TAction).Tag)
end;

procedure TmdiMainF.actMovementExecute(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TMovementF, MovementF, Self, 0)
end;

procedure TmdiMainF.actOfficeCustomerFExecute(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TOfficeCustomerF, OfficeCustomerF, Self, 5)
end;

procedure TmdiMainF.actotherCustomerF6Execute(Sender: TObject);
begin
  CreateMDIForm2(TotherCustomerF, otherCustomerF, Self, 6)
end;

procedure TmdiMainF.ActPersonalArchiveFExecute(Sender: TObject);
begin
  CreateMDIForm2(TPersonalArchiveF, PersonalArchiveF, Self)
end;

procedure TmdiMainF.actMnuCnt_Contracts2FExecute(Sender: TObject);
begin
  CreateMDIForm2(TCnt_Contracts2F, Cnt_Contracts2F, mainF, GetTag(Sender))
end;

procedure TmdiMainF.actMnuContractFExecute(Sender: TObject);
begin
  CreateMDIForm2(TContractF, ContractF, mainF, (Sender as TAction).Tag)
end;

procedure TmdiMainF.actMnurptBuySpecialFExecute(Sender: TObject);
begin
  CreateMDIForm2(TrptBuySpecialF, rptBuySpecialF, mainF,
    (Sender as TAction).Tag)
end;

procedure TmdiMainF.actMnuContractStuffExecute(Sender: TObject);
begin
  CreateMDIForm2(TContractStuffF, ContractStuffF, mainF,
    (Sender as TAction).Tag)
end;

procedure TmdiMainF.actrptCustomerTrancItemsF0Execute(Sender: TObject);
begin
  // CreateMDIForm2(TrptCustomerTrancItemsF, rptCustomerTrancItemsF, Self, 1000)
  CallCustomers(TrptCustomerTrancItemsF, rptCustomerTrancItemsF);
end;

procedure TmdiMainF.actrptCustomerTransactionFExecute(Sender: TObject);
begin
  // CreateMDIForm2(TrptCustomerTransactionF, rptCustomerTransactionF, Self)
  CallCustomers(TrptCustomerTransactionF, rptCustomerTransactionF);
end;

procedure TmdiMainF.actrptDarayiBuysFExecute(Sender: TObject);
begin
  CreateMDIForm2(TrptDarayiBuysF, rptDarayiBuysF, Self, 0)
end;

procedure TmdiMainF.actrptDarayiBuysFItemExecute(Sender: TObject);
begin
  CreateMDIForm2(TrptDarayiBuysF, rptDarayiBuysF, Self, 1)
end;

procedure TmdiMainF.actrptDarayiEjareFExecute(Sender: TObject);
begin
  CreateMDIForm2(TrptDarayiEjareF, rptDarayiEjareF, Self)
end;

procedure TmdiMainF.actrptDarayiHaghol2Execute(Sender: TObject);
begin
  CreateMDIForm2(TrptDarayiHagholAmalKariF, rptDarayiHagholAmalKariF, Self, 2)
end;

procedure TmdiMainF.actrptDarayiHaghol3Execute(Sender: TObject);
begin
  CreateMDIForm2(TrptDarayiHagholAmalKariF, rptDarayiHagholAmalKariF, Self, 3)
end;

procedure TmdiMainF.actrptDarayiHagholExecute(Sender: TObject);
begin
  CreateMDIForm2(TrptDarayiHagholAmalKariF, rptDarayiHagholAmalKariF, Self, 1)
end;

procedure TmdiMainF.actrptDarayiSellsFExecute(Sender: TObject);
begin
  CreateMDIForm2(TrptDarayiSellsF, rptDarayiSellsF, Self)
end;

procedure TmdiMainF.actrptDarayiSellsMonthFExecute(Sender: TObject);
begin
  CreateMDIForm2(TrptDarayiSellsMonthF, rptDarayiSellsMonthF, Self)
end;

procedure TmdiMainF.actrptCustomersBalanceF2Execute(Sender: TObject);
begin
  CreateMDIForm2(TrptCustomersBalanceF, rptCustomersBalanceF, mainF, 2)
end;

procedure TmdiMainF.actSelectYearExecute(Sender: TObject);
begin
  mainF.SelectYearF0Click(nil)
end;

procedure TmdiMainF.actSellersF10Execute(Sender: TObject);
begin
  CreateMDIForm2(TSellersF, SellersF, mainF, 10)
end;

procedure TmdiMainF.actSellersFExecute(Sender: TObject);
begin
  CreateMDIForm2(TSellersF, SellersF, mainF, 4)
end;

procedure TmdiMainF.lblVersionMouseEnter(Sender: TObject);
begin
  (Sender as TLabel).Font.Color := clActiveCaption;
end;

procedure TmdiMainF.lblVersionMouseLeave(Sender: TObject);
begin
  (Sender as TLabel).Font.Color := clSilver;
end;

procedure TmdiMainF.lblVersionClick(Sender: TObject);
begin
  RunDoc('http://FaraRayaneh.com')
end;

procedure TmdiMainF.actReciptsF14Execute(Sender: TObject);
begin
  AllReciptsEnter(14, Self)
end;

procedure TmdiMainF.actMnuReciptsBuyFExecute(Sender: TObject);
begin
  SelectItem(Sender);
  ReciptsBuyF.enter((Sender as TAction).Tag)
end;

procedure TmdiMainF.actMnuReciptsBuyListExecute(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TReciptsBuyListF, ReciptsBuyListF, mainF,
    (Sender as TAction).Tag)
end;

procedure TmdiMainF.actMnuLookUpsFExecute(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TLookUpsF, LookUpsF, mdiMainF, (Sender as TAction).Tag)
end;

procedure TmdiMainF.actMnuReciptsGrid2FExecute(Sender: TObject);
begin
  SelectItem(Sender);
  ReciptsGridF.enter((Sender as TAction).Tag)
end;

procedure TmdiMainF.actMnuReciptsGridFExecute(Sender: TObject);
begin
  SelectItem(Sender);
  ReciptsGridF.enter((Sender as TAction).Tag)
end;

procedure TmdiMainF.actMnuPaymentExpenceFExecute(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TPaymentExpenceF, PaymentExpenceF, mainF,
    (Sender as TAction).Tag)
end;

procedure TmdiMainF.actMnuPermitIssuanceFExecute(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TPermitIssuanceF, PermitIssuanceF, mainF,
    (Sender as TAction).Tag)
end;

procedure TmdiMainF.actStuffDetailsFExecute(Sender: TObject);
begin
  CallStuffs
end;

procedure TmdiMainF.actStuffGroupsAccessory1Execute(Sender: TObject);
begin
  CreateMDIForm2(TStuffGroupsAccessoryF, StuffGroupsAccessoryF, Self, 0)
end;

procedure TmdiMainF.actStuffGroupsAccessory2Execute(Sender: TObject);
begin
  CreateMDIForm2(TStuffGroupsAccessoryF, StuffGroupsAccessoryF, Self, 1)
end;

procedure TmdiMainF.actSubCardExecute(Sender: TObject);
begin
  CreateMDIForm2(TSubCardF, SubCardF, Self);
end;

procedure TmdiMainF.actSWOTExecute(Sender: TObject);
begin
  CreateChildForm(TSWOTF, SWOTF, mainF, 0, alNone)
end;

procedure TmdiMainF.actTshGeneralReportExecute(Sender: TObject);
begin
  CreateMDIForm2(TTshGeneralReportF, TshGeneralReportF, mainF, 1)
end;

procedure TmdiMainF.actUpdateBankExecute(Sender: TObject);
begin
  CreateChildForm(TUpDateBankF, UpDateBankF, Self, 0, alNone)
end;

procedure TmdiMainF.actUpdateEXEExecute(Sender: TObject);
begin
  UpdateExeF.enter
end;

procedure TmdiMainF.actUpdateInfoFExecute(Sender: TObject);
begin
  UpdateInfoF.enter
end;

procedure TmdiMainF.actDailyWorkF1Execute(Sender: TObject);
begin
  CreateMDIForm2(TDailyWorkF, DailyWorkF, mainF, 1)
end;

procedure TmdiMainF.actMnurptStuffCodingFExecute(Sender: TObject);
begin
  CreateMDIForm2(TrptStuffCodingF, rptStuffCodingF, mainF,
    (Sender as TAction).Tag)
end;

procedure TmdiMainF.actMnuLoanExecute(Sender: TObject);
begin
  LoanF.enter((Sender as TAction).Tag)
  // CreateMDIForm2(TLoanF, LoanF, mainF, (Sender as TAction).Tag)
end;

procedure TmdiMainF.actCustomers8Execute(Sender: TObject);
begin
  CreateMDIForm2(TCustomersF, CustomersF, mainF, 8)
end;

procedure TmdiMainF.actCustomersAlternativeFExecute(Sender: TObject);
begin
  CallCustomers(TCustomersAlternativeF, CustomersAlternativeF);
end;

procedure TmdiMainF.actSellPlanFExecute(Sender: TObject);
begin
  CreateMDIForm2(TSellPlanF, SellPlanF, mainF, 10)
end;

procedure TmdiMainF.actInsouraceGroupsExecute(Sender: TObject);
begin
  CreateMDIForm2(TInsouraceGroupsF, InsouraceGroupsF, Self);
end;

procedure TmdiMainF.actInterdicts4FormF1Execute(Sender: TObject);
begin
  CreateMDIForm3(FALSE, TInterdicts4FormF, Interdicts4FormF, Self, 1)
end;

procedure TmdiMainF.ActInterdictsFExecute(Sender: TObject);
begin
  InterdictsF.enter(45, 0, 49, 0, 0)
end;

procedure TmdiMainF.actInvoiceEmissionFExecute(Sender: TObject);
begin
  CreateMDIForm2(TInvoiceEmissionF, InvoiceEmissionF, mainF)
end;

procedure TmdiMainF.Action6Execute(Sender: TObject);
begin
          Warn2('براي فراخواني فرمي وجود ندارد.‏');

end;

procedure TmdiMainF.actMultiReportExecute(Sender: TObject);
var
  I, FormCount: Integer;
begin
  CreateMDIForm2(TRptReports3200F, RptReports3200F, mainF, 3200);
  Exit;

  FormCount := 4;
  for I := 3200 to 3200 + FormCount - 1 do
  begin
    CreateMDIForm2(TRptReportsF, RptReportsF, mainF, I, wsNormal, FALSE);
    RptReportsF.RenamePip;
  end;
  mainF.Tile;
  Screen.Forms[FormCount - 1].Height := mdiMainF.Height + Screen.Forms
    [FormCount - 1].Height;

  // Exit;
  //
  // Mini := 0;
  // Heih := Screen.Forms[Mini].Height;
  // for i := 0 to FormCount - 1 do
  // begin
  // if Screen.Forms[i] is TRptReportsF then
  // begin
  // if Heih < Screen.Forms[i].Height then
  // begin
  // Heih := Screen.Forms[i].Height;
  // Mini := i;
  // end;
  // end;
  // end;
  //
  // CurrentTop := 0; // the Rect from above
  // for i := 0 to FormCount - 1 do
  // begin
  // if Screen.Forms[i] is TRptReportsF then
  // begin
  // Screen.Forms[i].Height := (mainF.Height - MainF.mdiChildrenTabs.Height -
  // MainF.statMain.Height) div 2;
  // Screen.Forms[i].Width := (mainF.Width - 10) div 2;
  // if Odd(i) then
  // begin
  // Screen.Forms[i].Left := 0;
  // Screen.Forms[i].Top := CurrentTop;
  // end
  // else
  // begin
  // Screen.Forms[i].Left := Screen.Forms[i].Width;
  // Inc(CurrentTop, Screen.Forms[i].Height);
  // end;
  // end;
  // end;
end;

procedure TmdiMainF.actJobsExecute(Sender: TObject);
begin
  CreateMDIForm2(TjobsF, jobsF, Self)
end;

procedure TmdiMainF.actKartDarayiExecute(Sender: TObject);
begin
  CreateMDIForm2(TAmvalF, AmvalF, mainF);
end;

procedure TmdiMainF.actSpAnalysisSalaryActualCostsFExecute(Sender: TObject);
begin
  CreateMDIForm2(TSpAnalysisSalaryActualCostsF,
    SpAnalysisSalaryActualCostsF, Self)
end;

procedure TmdiMainF.actSpAnalysisSalaryExecute(Sender: TObject);
begin
  CreateMDIForm2(TSpAnalysisSalaryF, SpAnalysisSalaryF, Self)
end;

procedure TmdiMainF.actSpecialAccDetailOnTopicBookFExecute(Sender: TObject);
begin
  CreateMDIForm2(TSpecialAccDetailOnTopicBookF,
    SpecialAccDetailOnTopicBookF, mainF)
end;

procedure TmdiMainF.actSpecialInsouranceExecute(Sender: TObject);
begin
  CreateMDIForm2(TSpecialInsouranceF, SpecialInsouranceF, Self);
end;

procedure TmdiMainF.actMnuRentReciptsExecute(Sender: TObject);
begin
  CreateMDIForm2(TRentReciptsF, RentReciptsF, mainF, (Sender as TAction).Tag)
end;

procedure TmdiMainF.actChangePassExecute(Sender: TObject);
begin
  Changepassword
end;

procedure TmdiMainF.actChangepasswordExecute(Sender: TObject);
begin
  Changepassword
end;

procedure TmdiMainF.actCheckCycleFExecute(Sender: TObject);
begin
  CheckCycleF.enter(0)
end;

procedure TmdiMainF.actCnt_ContractsFExecute(Sender: TObject);
begin
  CreateMDIForm2(TCnt_ContractsF, Cnt_ContractsF, mainF,
    (Sender as TAction).Tag)
end;

procedure TmdiMainF.actCustomersInterViewExecute(Sender: TObject);
begin
  CallCustomers(TCustomersInterViewF, CustomersInterViewF);
end;

procedure TmdiMainF.actCustomerCheckListFExecute(Sender: TObject);
begin
  CallCustomers(TCustomerCheckListF, CustomerCheckListF);
end;

procedure TmdiMainF.CallCustomers(InstanceClass: TComponentClass;
  var Reference);
var
  I, k: Integer;
  Edt: TDBEdit;
  ts: TStringList;
  aDataSet: TDataSet;
  EdtDataField: string;
begin
  ts := TStringList.Create;
  try
    ts.Sorted := True;
    ts.Duplicates := dupIgnore;
    for I := 0 to Screen.ActiveForm.ComponentCount - 1 do
    begin
      if (Screen.ActiveForm.Components[I] is TDBEdit) or
        (Screen.ActiveForm.Components[I] is TfrmDesign4LookUp) then
      begin
        if (Screen.ActiveForm.Components[I] is TfrmDesign4LookUp) then
        begin
          Edt := TfrmDesign4LookUp(Screen.ActiveForm.Components[I]).DBEdit1;
        end
        else
          Edt := TDBEdit(Screen.ActiveForm.Components[I]);
        if (Edt.Text = EmptyStr) or (Edt.Text = '0') then
          Continue;
        EdtDataField := UpperCase(Edt.DataField);
        if (EdtDataField = 'CUSTID') or (EdtDataField = 'PERSONID1') or
          (EdtDataField = 'PERSONID2') or (EdtDataField = 'PERSONID3') or
          (EdtDataField = 'CUSTOMERID1') or (EdtDataField = 'CUSTOMERID2') or
          (EdtDataField = 'CUSTOMERID3') or (EdtDataField = 'EMPLOYERID') or
          (EdtDataField = 'WORKSHOPID') or (EdtDataField = 'CASENO') then
        begin
          ts.Add(Edt.Text);
          if Screen.ActiveForm.Name = 'rptCustomerTransactionF' then
            Break;
        end;
        Continue;

      end;

      if (Screen.ActiveForm.Components[I] is TDBGrid) then
        aDataSet := TDBGrid(Screen.ActiveForm.Components[I]).DataSource.DataSet
      else if (Screen.ActiveForm.Components[I] is TCedarDbgrid) then
        aDataSet := TCedarDbgrid(Screen.ActiveForm.Components[I])
          .DataSource.DataSet
      else
        aDataSet := nil;

      if aDataSet <> nil then
      begin
        if (aDataSet <> nil) and aDataSet.Active then
          for k := 0 to aDataSet.Fields.Count - 1 do
            if (UpperCase(aDataSet.Fields[k].FieldName) = 'CUSTID') or
              (UpperCase(aDataSet.Fields[k].FieldName) = 'PERSONID1') or
              (UpperCase(aDataSet.Fields[k].FieldName) = 'PERSONID2') or
              (UpperCase(aDataSet.Fields[k].FieldName) = 'CUSTOMERID1') or
              (UpperCase(aDataSet.Fields[k].FieldName) = 'CUSTOMERID2') or
              (UpperCase(aDataSet.Fields[k].FieldName) = 'CUSTOMERID3') then
              if aDataSet.Fields[k].AsLargeInt > 0 then
                ts.Add(aDataSet.Fields[k].AsString);
        // Continue;
      end;

    end;

    // می خواهیم فرم حداقل کلی یکبار باز شود حتی اگر مشتری انتخاب نشده بود
    if ts.Count > 0 then
      SelectCustID := StrToInt(ts[0]);
    if InstanceClass = TrptCustomerTrancItemsF then
    begin
      // می خواهیم فرم حداقل کلی یکبار باز شود حتی اگر مشتری انتخاب نشده بود
      CreateMDIForm2(TrptCustomerTrancItemsF, rptCustomerTrancItemsF,
        Self, 1000);
      if not((opt.ConfigSettings and Integer(CHkCs_Ctrl_U_Ctrl_Y)) <> 0) then
        for I := 1 to ts.Count - 1 do
        begin
          SelectCustID := StrToInt(ts[I]);
          CreateMDIForm2(TrptCustomerTrancItemsF, rptCustomerTrancItemsF,
            Self, 1000);
        end;

    end
    else if InstanceClass = TrptCustomerTransactionF then
    begin
      // می خواهیم فرم حداقل کلی یکبار باز شود حتی اگر مشتری انتخاب نشده بود
      CreateMDIForm2(TrptCustomerTransactionF, rptCustomerTransactionF, Self);
      if not((opt.ConfigSettings and Integer(CHkCs_Ctrl_U_Ctrl_Y)) <> 0) then
        for I := 1 to ts.Count - 1 do
        begin
          SelectCustID := StrToInt(ts[I]);
          CreateMDIForm2(TrptCustomerTransactionF,
            rptCustomerTransactionF, Self);
        end;
    end
    else
      for I := 0 to ts.Count - 1 do
        CreateChildForm(InstanceClass, Reference, mainF,
          StrToInt(ts[I]), alNone);

  finally
    ts.Free;
  end;
end;

procedure TmdiMainF.CallStuffs;
var
  I, k: Integer;
  Edt: TDBEdit;
  ts, ts_STOREID: TStringList;
  aDataSet: TDataSet;
  EdtDataField: string;
  StuffDetailsF: TStuffDetailsF;
begin
  ts := TStringList.Create;
  ts_STOREID := TStringList.Create;
  try
    ts.Sorted := True;
    ts.Duplicates := dupIgnore;
    ts_STOREID.Sorted := True;
    ts_STOREID.Duplicates := dupIgnore;
    for I := 0 to Screen.ActiveForm.ComponentCount - 1 do
    begin
      if (Screen.ActiveForm.Components[I] is TDBEdit) or
        (Screen.ActiveForm.Components[I] is TfrmDesign4LookUp) then
      begin
        if (Screen.ActiveForm.Components[I] is TfrmDesign4LookUp) then
        begin
          Edt := TfrmDesign4LookUp(Screen.ActiveForm.Components[I]).DBEdit1;
        end
        else
          Edt := TDBEdit(Screen.ActiveForm.Components[I]);
        if (Edt.Text = EmptyStr) or (Edt.Text = '0') then
          Continue;
        EdtDataField := UpperCase(Edt.DataField);

        if (EdtDataField = 'STUFFCODE') or (EdtDataField = 'C_STUFFCODE') then
          ts.Add(Edt.Text);

        if (EdtDataField = 'N_STOREID') or (EdtDataField = 'STOREID') then
          ts_STOREID.Add(Edt.Text);

        Continue;

      end;

      if (Screen.ActiveForm.Components[I] is TDBGrid) then
        aDataSet := TDBGrid(Screen.ActiveForm.Components[I]).DataSource.DataSet
      else if (Screen.ActiveForm.Components[I] is TCedarDbgrid) then
        aDataSet := TCedarDbgrid(Screen.ActiveForm.Components[I])
          .DataSource.DataSet
      else
        aDataSet := nil;

      if aDataSet <> nil then
      begin
        if (aDataSet <> nil) and aDataSet.Active then
          for k := 0 to aDataSet.Fields.Count - 1 do
          begin
            if (UpperCase(aDataSet.Fields[k].FieldName) = 'STUFFCODE') or
              (UpperCase(aDataSet.Fields[k].FieldName) = 'C_STUFFCODE') then
              if aDataSet.Fields[k].AsLargeInt > 0 then
                ts.Add(aDataSet.Fields[k].AsString);

            if (UpperCase(aDataSet.Fields[k].FieldName) = 'STOREID') or
              (UpperCase(aDataSet.Fields[k].FieldName) = 'N_STOREID') then
              if aDataSet.Fields[k].AsLargeInt > 0 then
                ts_STOREID.Add(aDataSet.Fields[k].AsString);
          end;
        // Continue;
      end;

    end;

    for I := 0 to ts.Count - 1 do
      With StuffDetailsF do
      begin
        Application.CreateForm(TStuffDetailsF, StuffDetailsF);
        with StuffDetailsF do
        begin
          if ParentFont then
            Font.assign(var_glb_DefaultFont);
          Align := alCustom;
          with qryRIDEntity do
          begin
            Close;
            SQL.Text := 'SELECT RID.DetailCaption, R.StoreID';
            SQL.Add(', SUM(CASE WHEN R.EffectType IN (2, 6, 8) THEN 1 ELSE - 1 END) AS Entity,');
            SQL.Add('R.StuffCode, Sc.c_StuffName');
            SQL.Add('FROM ReciptItemsDetails AS RID INNER JOIN');
            SQL.Add('ReciptItems_Stock AS R ON RID.ReciptItemID = R.ReciptItemID AND RID.ReciptID = R.ReciptID AND');
            SQL.Add('RID.ServerID = R.ServerID AND RID.YearID = R.YearID INNER JOIN');
            SQL.Add('StuffCoding AS Sc ON R.StuffCode = Sc.c_StuffCode');
            SQL.Add('WHERE (R.EffectType IN (2, 4, 6, 7, 8)) AND (R.StuffCode = :StuffCode)');
            if ts_STOREID.Count > 0 then
            begin
              SQL.Add('AND (R.StoreID = :StoreID)');
              Parameters.ParamByName('StoreID').Value := ts_STOREID[0];
            end;
            SQL.Add('GROUP BY R.StoreID, RID.DetailCaption, R.StuffCode, Sc.c_StuffName');
            SQL.Add('HAVING (SUM(CASE WHEN R.EffectType IN (2, 6, 8) THEN 1 ELSE - 1 END) >= 1)');
            SQL.Add('order BY R.StoreID');
            Parameters.ParamByName('StuffCode').Value := ts[I];
            Open;
          end;
          ShowModal;
        end; // with

      end;
  finally
    FreeAndNil(StuffDetailsF);
    ts.Free;
    ts_STOREID.Free;
  end;
end;

procedure TmdiMainF.actCustomersTaxFExecute(Sender: TObject);
begin
  CallCustomers(TCustomersTaxF, CustomersTaxF);
end;

procedure TmdiMainF.CallOtherNationalCode;
var
  I, k, FormItemID: Integer;
  Edt: TDBEdit;
  ts: TStringList;
  aDataSet: TDataSet;
  aDataSet2: TDataSet;
  EdtDataField: string;
  OtherNationalCodeEditF: TOtherNationalCodeEditF;
begin
  FormItemID := 0;
  aDataSet2 := nil;
  ts := TStringList.Create;
  try
    ts.Sorted := True;
    ts.Duplicates := dupIgnore;
    for I := 0 to Screen.ActiveForm.ComponentCount - 1 do
    begin
      if (Screen.ActiveForm.Components[I] is TDBEdit) or
        (Screen.ActiveForm.Components[I] is TfrmDesign4LookUp) then
      begin
        if (Screen.ActiveForm.Components[I] is TfrmDesign4LookUp) then
        begin
          Edt := TfrmDesign4LookUp(Screen.ActiveForm.Components[I]).DBEdit1;
        end
        else
          Edt := TDBEdit(Screen.ActiveForm.Components[I]);

        EdtDataField := UpperCase(Edt.DataField);

        if (EdtDataField = 'FORMITEMID') then
          ts.Add(Edt.Text);

        Continue;

      end;

      if (Screen.ActiveForm.Components[I] is TDBGrid) then
        aDataSet := TDBGrid(Screen.ActiveForm.Components[I]).DataSource.DataSet
      else if (Screen.ActiveForm.Components[I] is TCedarDbgrid) then
        aDataSet := TCedarDbgrid(Screen.ActiveForm.Components[I])
          .DataSource.DataSet
      else
        aDataSet := nil;

      if aDataSet <> nil then
      begin
        if (aDataSet <> nil) and aDataSet.Active then
          for k := 0 to aDataSet.Fields.Count - 1 do
          begin
            if (UpperCase(aDataSet.Fields[k].FieldName) = 'FORMITEMID') then
            begin
              ts.Add(aDataSet.Fields[k].AsString);
              aDataSet2 := aDataSet;
            end;

          end;
        // Continue;
      end;

    end;

    for I := 0 to ts.Count - 1 do
      With OtherNationalCodeEditF do
      begin
        Application.CreateForm(TOtherNationalCodeEditF, OtherNationalCodeEditF);
        with OtherNationalCodeEditF do
        begin
          if Screen.ActiveForm.Name = 'RptChecksInF' then
            dbchkSyadSystem.Enabled := FALSE;
          if ParentFont then
            Font.assign(var_glb_DefaultFont);
          Align := alCustom;
          with qryFormItems do
          begin
            Close;
            FormItemID := ts[I].ToInteger;
            Parameters.ParamByName('FormItemID').Value := FormItemID;
            Parameters.ParamByName('YearID').Value := APPBank.Year;
            Parameters.ParamByName('ServerID').Value := opt.ServerID;
            Open;
          end;
          with qryForms do
          begin
            Close;
            Parameters.ParamByName('FormID').Value :=
              qryFormItems.FieldByName('FormID').AsInteger;
            Parameters.ParamByName('YearID').Value := APPBank.Year;
            Parameters.ParamByName('ServerID').Value := opt.ServerID;
            Open;
          end;

          ShowModal;
        end; // with

      end;
  finally
    if aDataSet2 <> nil then
      if aDataSet2.Active then
      begin
        (aDataSet2 as TADOQuery).Requery();
        (aDataSet2 as TADOQuery).Locate('FormItemID', FormItemID, [])
      end;

    FreeAndNil(OtherNationalCodeEditF);
    ts.Free;
  end;
end;

procedure TmdiMainF.actCustomersF9Execute(Sender: TObject);
begin
  CreateMDIForm2(TCustomersF, CustomersF, mainF, 9)
end;

procedure TmdiMainF.actRptReciptWithGrpCustFExecute(Sender: TObject);
begin
  CreateMDIForm2(TRptReciptWithGrpCustF, RptReciptWithGrpCustF, mainF,
    (Sender as TAction).Tag)
end;

procedure TmdiMainF.actrptStuffGroupsFExecute(Sender: TObject);
begin
  CreateMDIForm2(TrptStuffGroupsF, rptStuffGroupsF, mainF,
    (Sender as TAction).Tag)
end;

procedure TmdiMainF.actSalaryList4GetReprotsExecute(Sender: TObject);
begin
  CreateMDIForm2(TSalaryList4GetReprotsF, SalaryList4GetReprotsF, Self,
    GetTag(Sender)) // (Sender as TAction).Tag

end;

procedure TmdiMainF.actSalaryList4OfficeFExecute(Sender: TObject);
begin
  CreateMDIForm2(TSalaryList4OfficeF, SalaryList4OfficeF, Self)
end;

procedure TmdiMainF.actSalaryListGroupF0Execute(Sender: TObject);
begin
  CreateMDIForm2(TSalaryListGroupF, SalaryListGroupF, Self, 0)
end;

procedure TmdiMainF.actSalaryList_insuranceFExecute(Sender: TObject);
begin
  CreateMDIForm2(TSalaryList_insuranceF, SalaryList_insuranceF, mainF)
end;

procedure TmdiMainF.actSampleItemsFExecute(Sender: TObject);
begin
  CreateMDIForm2(TSampleItemsF, SampleItemsF, mainF, (Sender as TAction).Tag)
end;

procedure TmdiMainF.actSamplesFExecute(Sender: TObject);
begin
  CreateMDIForm2(TSamplesF, SamplesF, mainF, (Sender as TAction).Tag)
end;

procedure TmdiMainF.actsearchCheckFExecute(Sender: TObject);
begin
  CreateMDIForm2(TsearchCheckF, searchCheckF, Self)
end;

procedure TmdiMainF.actRptReciptWithCustFExecute(Sender: TObject);
begin
  CreateMDIForm2(TRptReciptWithCustF, RptReciptWithCustF, mainF,
    (Sender as TAction).Tag)
end;

procedure TmdiMainF.actPersonelDecExtInfo_2F53Execute(Sender: TObject);
begin
  CreateMDIForm2(TPersonelDecExtInfo_2F, PersonelDecExtInfo_2F, mdiMainF, 53)
end;

procedure TmdiMainF.actPersonelDecExtInfo_2F54Execute(Sender: TObject);
begin
  CreateMDIForm2(TPersonelDecExtInfo_2F, PersonelDecExtInfo_2F, mdiMainF, 54);
end;

procedure TmdiMainF.actPersonelFormInfo_1F23Execute(Sender: TObject);
begin
  CreateMDIForm2(TPersonelFormInfo_1F, PersonelFormInfo_1F, mdiMainF, 23)
end;

procedure TmdiMainF.actPersonelFormInfo_1F43Execute(Sender: TObject);
begin
  CreateMDIForm2(TPersonelFormInfo_1F, PersonelFormInfo_1F, mdiMainF, 43)
end;

procedure TmdiMainF.ActPersonelInfoFExecute(Sender: TObject);
begin
  PersonelInfoF.enter(0)
end;

procedure TmdiMainF.actQuotaPostFExecute(Sender: TObject);
begin
  CreateMDIForm2(TQuotaPostF, QuotaPostF, Self)
end;

procedure TmdiMainF.actRptReciptWithCustItemFExecute(Sender: TObject);
begin
  CreateMDIForm2(TRptReciptWithCustItemF, RptReciptWithCustItemF, mainF,
    (Sender as TAction).Tag)
end;

procedure TmdiMainF.actrptRecLstOnCusItemFExecute(Sender: TObject);
begin
  CreateMDIForm2(TrptReciptListOnCustomersItemF, rptReciptListOnCustomersItemF,
    Self, (Sender as TAction).Tag)

end;

procedure TmdiMainF.actrptMatrixBalanceExecute(Sender: TObject);
begin
  CreateMDIForm2(TrptMatrixBalanceF, rptMatrixBalanceF, Self, 0);

end;

procedure TmdiMainF.actrptPayableSalaryF23Execute(Sender: TObject);
begin
  CreateMDIForm2(TrptPayableSalaryF, rptPayableSalaryF, Self, 23)
end;

procedure TmdiMainF.actrptReciptListOnCustomersFExecute(Sender: TObject);
begin
  CreateMDIForm2(TrptReciptListOnCustomersF, rptReciptListOnCustomersF, Self,
    (Sender as TAction).Tag)

end;

procedure TmdiMainF.actrptRecLstOnStfCodCustIFExecute(Sender: TObject);
begin
  CreateMDIForm2(TrptReciptListOnStuffCodeCustomersItemF,
    rptReciptListOnStuffCodeCustomersItemF, Self, (Sender as TAction).Tag)

end;

procedure TmdiMainF.actrptReciptListOnStuffCodeFExecute(Sender: TObject);
begin
  CreateMDIForm2(TrptReciptListOnStuffCodeF, rptReciptListOnStuffCodeF, Self,
    (Sender as TAction).Tag)

end;

procedure TmdiMainF.actrptRecSOnCustItemFExecute(Sender: TObject);
begin
  CreateMDIForm2(TrptReciptSumOnCustomersItemF, rptReciptSumOnCustomersItemF,
    Self, (Sender as TAction).Tag)

end;

procedure TmdiMainF.actrptRecSOnStfCodCustIFExecute(Sender: TObject);
begin
  CreateMDIForm2(TrptReciptSumOnStuffCodeCustomersItemF,
    rptReciptSumOnStuffCodeCustomersItemF, Self, (Sender as TAction).Tag)
end;

procedure TmdiMainF.actrptReciptSumOnPersonID1Execute(Sender: TObject);
begin
  CreateMDIForm2(TrptReciptSumOnPersonID1F, rptReciptSumOnPersonID1F, Self,
    (Sender as TAction).Tag)
end;

procedure TmdiMainF.actMnuReciptsAnalysisFExecute(Sender: TObject);
begin
  CreateMDIForm2(TReciptsAnalysisF, ReciptsAnalysisF, mainF,
    (Sender as TAction).Tag)
end;

procedure TmdiMainF.actReciptsDeficitsPostAllFExecute(Sender: TObject);
begin
  CreateMDIForm2(TReciptsDeficitsPostAllF, ReciptsDeficitsPostAllF, Self,
    (Sender as TAction).Tag)
end;

procedure TmdiMainF.actGeneralReportFExecute(Sender: TObject);
begin
  case MainFrame.GetActiveIndex of
    1, 2:
      CreateMDIForm2(TGeneralReportF, GeneralReportF, Self, 1);
    17, 19, 21:
      actSpecialTrialBalance.Execute;
  else
    Warn('فرمی تعریف نشده');

  end;

end;

procedure TmdiMainF.actSearchReciptsExecute(Sender: TObject);
begin
  case MainFrame.GetActiveIndex of
    1, 2:
      CreateMDIForm2(TSearchReciptsF, SearchReciptsF, Self);
    17, 19, 21:
      actSearchDocs.Execute;
  else
    Warn('فرمی تعریف نشده');

  end;

end;

procedure TmdiMainF.btnTools1CategoryCollapase(Sender: TObject;
  const Category: TButtonCategory);
begin
  Category.Collapsed := FALSE;
end;

procedure TmdiMainF.actRpt001F0Execute(Sender: TObject);
begin
  if CtrlDown then
    CreateMDIForm2(TRpt001fdF, Rpt001fdF, Self, 0)
  else
    CreateMDIForm2(TRpt001F, Rpt001F, Self, 0)
end;

procedure TmdiMainF.actRptAmvalExecute(Sender: TObject);
begin
  CreateMDIForm2(TRptAmvalF, RptAmvalF, Self);
end;
/// ///////////////////////////////////////////////////////////////////////////////////////
///

procedure TmdiMainF.actDocExecute(Sender: TObject);
begin
  CreateMDIForm2(TDocumentF, DocumentF, mainF, 101);
end;

procedure TmdiMainF.frToolBarChange(Sender: TObject; ActiveSubIndex: Byte);
begin
  // SetMenuWithTool (Application.MainForm.Menu, User.id, frToolBar.ActiveSubIndex);
end;

procedure TmdiMainF.FormDeactivate(Sender: TObject);

begin
  // for i := 0 to ActionList1.ActionCount - 1 do
  // begin
  // TheShortCuts[i] := TAction(ActionList1.Actions[i]).ShortCut;
  // TAction(ActionList1.Actions[i]).ShortCut := 0;
  // end; // for
end;

procedure TmdiMainF.actListBimehNewFExecute(Sender: TObject);
begin
  CreateMDIForm2(TListBimehNewF, ListBimehNewF, Self, 1)
end;

procedure TmdiMainF.actListDocsExecute(Sender: TObject);
begin
  CreateMDIForm2(TDocGroupsF, DocGroupsF, mainF, 102)
end;

procedure TmdiMainF.actListSalaryExecute(Sender: TObject);
begin
  CreateMDIForm2(TListSalaryF, ListSalaryF, mdiMainF, 1)
end;

procedure TmdiMainF.actMakeBankDSKFExecute(Sender: TObject);
begin
  CreateMDIForm2(TMakeBankDSKF, MakeBankDSKF, Self, 1)
end;

procedure TmdiMainF.actMakeDskTax95FExecute(Sender: TObject);
begin
  CreateMDIForm2(TMakeDskTax95F, MakeDskTax95F, Self, 85)
end;

procedure TmdiMainF.actMakeDskTax95_86FExecute(Sender: TObject);
begin
  CreateMDIForm2(TMakeDskTax95F, MakeDskTax95F, Self, 86)
end;

procedure TmdiMainF.actMakeDskTaxFExecute(Sender: TObject);
begin
  // CreateMDIForm2(TMakeDskTaxF, MakeDskTaxF, Self)
end;

procedure TmdiMainF.actTarazKolExecute(Sender: TObject);
begin
  CreateMDIForm3(True, TRptTrialBalance_AccF, RptTrialBalance_AccF, Self, 2)
end;

procedure TmdiMainF.actTarazMoeenExecute(Sender: TObject);
begin
  CreateMDIForm3(True, TRptTrialBalance_AccF, RptTrialBalance_AccF, Self, 3)
end;

procedure TmdiMainF.actTicketExecute(Sender: TObject);
var
  ActiveFormName: string;
  ActiveFormCaption: string;
begin
  SelectItem(Sender);
// دریافت نام و کپشن فرم فعال
  if Assigned(Screen.ActiveForm) then
  begin
    ActiveFormName := Screen.ActiveForm.Name;
    ActiveFormCaption := Screen.ActiveForm.Caption;
  end
  else
  begin
    ActiveFormName := 'Unknown';
    ActiveFormCaption := 'Unknown';
  end;

  // فراخوانی فرم فیدبک با اطلاعات فرم فعال
  feedbackF.Enter(ActiveFormName, ActiveFormCaption);
end;

procedure TmdiMainF.actTarazDetailExecute(Sender: TObject);
begin
  CreateMDIForm3(True, TRptTrialBalance_DetailsF,
    RptTrialBalance_DetailsF, Self);

end;

procedure TmdiMainF.actrptAnalyzeBalanceExecute(Sender: TObject);
begin
  CreateMDIForm2(TrptAnalyzeBalanceF, rptAnalyzeBalanceF, mainF)
end;

procedure TmdiMainF.actRpt_AccBookExecute(Sender: TObject);
begin
  CreateMDIForm3(True, TRpt_AccBookF, Rpt_AccBookF, Self, 3)
end;

procedure TmdiMainF.actRpt_AccDetailOnTopicBookExecute(Sender: TObject);
begin
  CreateMDIForm3(True, TRpt_AccDetailOnTopicBookF,
    Rpt_AccDetailOnTopicBookF, Self)
end;

procedure TmdiMainF.actAccCode2Execute(Sender: TObject);
begin
  CreateMDIForm2(TAccCode2F, AccCode2F, Self, 3)
end;

procedure TmdiMainF.actDetailsExecute(Sender: TObject);
begin
  CreateMDIForm2(TDetailsF, DetailsF, Self, 111)
end;

procedure TmdiMainF.actSearchDocsExecute(Sender: TObject);
begin
  CreateMDIForm2(TSearchDocsF, SearchDocsF, Self);
end;

procedure TmdiMainF.actSpecialTrialBalanceExecute(Sender: TObject);
begin
  CreateMDIForm2(TSpecialTrialBalanceF, SpecialTrialBalanceF, mainF, 2);
end;

procedure TmdiMainF.Label1MouseLeave(Sender: TObject);
begin
  (Sender as TLabel).Font.Color := clSilver;
  (Sender as TLabel).Font.Style := [];

end;

procedure TmdiMainF.Label1MouseEnter(Sender: TObject);
begin
  (Sender as TLabel).Font.Color := clActiveCaption;

end;

procedure TmdiMainF.Label1Click(Sender: TObject);
begin
  RunDoc('Http://FaraRayaneh.com')
end;

procedure TmdiMainF.actBudgetExecute(Sender: TObject);
begin
  CreateMDIForm2(TBudjectInformationF, BudjectInformationF, Self,
    (Sender as TAction).Tag);
end;

procedure TmdiMainF.actMnuCodingExecute(Sender: TObject);
begin
  if (Sender as TAction).Tag = 1 then
    CreateMDIForm2(TCategoriesF, CategoriesF, Self, (Sender as TAction).Tag)
  else
    CreateMDIForm2(TAccCode2F, AccCode2F, Self, (Sender as TAction).Tag)
end;

procedure TmdiMainF.actOperatorNotificationFExecute(Sender: TObject);
begin
  OperatorNotificationF.showNotification
end;

procedure TmdiMainF.actOperatorsExecute(Sender: TObject);
begin
  mainF.OperatorsClick(Sender);
end;

procedure TmdiMainF.actmenuOfficesExecute(Sender: TObject);
begin
  CreateMDIForm3(True, TRpt_AccBookF, Rpt_AccBookF, Self,
    (Sender as TAction).Tag)
end;

procedure TmdiMainF.actTrialBalanceExecute(Sender: TObject);
begin
  CreateMDIForm3(True, TRptTrialBalance_AccF, RptTrialBalance_AccF, Self,
    (Sender as TAction).Tag)
end;

procedure TmdiMainF.actVU_Financial_statementExecute(Sender: TObject);
begin
  CreateMDIForm2(TVU_Financial_statementF, VU_Financial_statementF, Self,
    (Sender as TAction).Tag);
end;

procedure TmdiMainF.addMenu4RequestCash(menu4add: TMenuItem);
var
  NewMenu: TMenuItem;
  NewAction: TAction;
begin
  with DMf.qryTmpTmp do
  begin
    Close;
    SQL.Text :=
      'select formtype,formcaption from dbo.FormTypes where DisplayFormType=6';
    Open;
    if DMf.qryTmpTmp.IsEmpty then
    begin
      Close;
      Exit
    end;
    while not eof do
    begin
      NewMenu := TMenuItem.Create(Self);
      NewAction := TAction.Create(Self);
      NewAction.Caption := Fields[1].AsString;
      NewAction.Tag := Fields[0].AsInteger;
      NewAction.OnExecute := mainF.Menu4RequestCashClick;
      NewAction.ActionList := ActionList1;
      NewMenu.Action := NewAction;
      menu4add.Add(NewMenu);
      Next;
    end;
    Close;
  end;
end;

procedure TmdiMainF.CallMenu;
var
  I: Integer;
begin
  try
    if Assigned(MainFrame) then
    begin
      SaveConfig(appid, 'LastMenu', IntToStr(MainFrame.GetActiveIndex));
      MainFrame.Free;
    end;
    MainFrame := TfrCategoryButtonsA.Create(pnlMain);
    With mdiMainF.MainFrame do
    begin
      Parent := pnlMain;
      Splitter1.Left := MainFrame.Left;

      BevelInner := bvNone;
      BevelOuter := bvNone;
      BorderStyle := bsNone;
      BorderWidth := 1;

      ImageList := ImageList1;
      ExtButtonCategory := btnTools1.Categories[0];

      Width := StrToInt(ReadConfig(appid, 'mdiMainF.MainFrame', '220')); // 220;
      IndeximgGroup := 51;

      for I := 0 to High(SubsysMenu) do
      begin
        SubsysMenu[I].Active :=
          StrInArray(SubsysMenu[I].SysLockId.ToString.Trim, appList) and
          (optSub.Subsys[I + 1] = '1');
        SubsysMenu[29].Active := True;
        if SubsysMenu[I].Active then
          SetMenuAll(SubsysMenu[I].SubsysCaption, SubsysMenu[I].sys_Menu, I);
      end;
      SubsysMenu[27].Active := True;
      SubsysMenu[28].Active := True;
      SubsysMenu[29].Active := True;

      mdiMainF.MainFrame.GetActiveIndex :=
        StrToInt(ReadConfig(appid, 'LastMenu', '0'));;
      mdiMainF.MainFrame.SetActivePanel;
    end;
  finally
  end;
end;

end.
