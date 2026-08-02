unit main;

interface

uses
  Windows, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, ComCtrls, ActnList, StrUtils, DateUtils, DB, ADODB, StdCtrls,
  IniLang, Tabs, StdActns, ExtCtrls, {JvDesktopAlert,} wsMain, WorkflowDm,
  Messages, System.Actions, Vcl.Themes, Telegram, wsClasses, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase,
  IdFTP, DMnipc, System.ImageList, Vcl.ImgList, IdURI, System.UITypes, Taxs,
  // LMDSysInfo,
  // CedarMainMenu, CedarLabel,
  Vcl.Mask, sMaskEdit, sCustomComboEdit, sComboBox, sComboBoxes,
  uAppUsageLogger, sStatusBar, uUpdateSystem, frmUpdateInfo;

type

  TmainF = class(TForm)
    Mnu0Coffer: TMainMenu;
    vjMenuCoffer: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem13: TMenuItem;
    MenuItem14: TMenuItem;
    MenuItem23: TMenuItem;
    MenuItem24: TMenuItem;
    MenuItem31: TMenuItem;
    MenuItem33: TMenuItem;
    MenuItem34: TMenuItem;
    MItemCoffer1: TMenuItem;
    mnuActGetOtherMoneyF1: TMenuItem;
    mnuActGetOtherMoneyF2: TMenuItem;
    MenuItem191: TMenuItem;
    MenuItem192: TMenuItem;
    mnuRptCofferF: TMenuItem;
    MenuItem194: TMenuItem;
    MenuItem195: TMenuItem;
    mnuActGetCheckF10: TMenuItem;
    mnuActGetCheckF11: TMenuItem;
    MenuItem199: TMenuItem;
    MenuItem200: TMenuItem;
    MenuItem201: TMenuItem;
    MenuItem202: TMenuItem;
    MenuItem203: TMenuItem;
    MenuItem204: TMenuItem;
    MenuItem205: TMenuItem;
    MItemCoffer4: TMenuItem;
    MenuItem207: TMenuItem;
    MenuItem208: TMenuItem;
    MenuItem209: TMenuItem;
    MenuItem210: TMenuItem;
    MenuItem211: TMenuItem;
    MItemCoffer5: TMenuItem;
    MenuItem213: TMenuItem;
    MenuItem214: TMenuItem;
    MenuItem215: TMenuItem;
    MenuItem216: TMenuItem;
    MenuItem217: TMenuItem;
    MenuItem218: TMenuItem;
    MenuItem219: TMenuItem;
    MenuItem220: TMenuItem;
    MenuItem221: TMenuItem;
    MenuItem222: TMenuItem;
    MenuItem223: TMenuItem;
    MItemCoffer6: TMenuItem;
    mnuActGetCheckF12: TMenuItem;
    MenuItem226: TMenuItem;
    MenuItem227: TMenuItem;
    MenuItem228: TMenuItem;
    mnuGetCheckF18: TMenuItem;
    MenuItem230: TMenuItem;
    MenuItem231: TMenuItem;
    MenuItem232: TMenuItem;
    MenuItem233: TMenuItem;
    MenuItem234: TMenuItem;
    MenuItem235: TMenuItem;
    MItemCoffer3: TMenuItem;
    mnuActGetCheckF50: TMenuItem;
    MenuItem238: TMenuItem;
    MenuItem239: TMenuItem;
    MenuItem240: TMenuItem;
    MenuItem241: TMenuItem;
    MenuItem242: TMenuItem;
    MenuItem243: TMenuItem;
    MenuItem244: TMenuItem;
    MenuItem245: TMenuItem;
    MenuItem246: TMenuItem;
    MenuItem247: TMenuItem;
    MenuItem248: TMenuItem;
    rptCofferTransF1: TMenuItem;
    rptCofferTransF2: TMenuItem;
    rptCofferTransF4: TMenuItem;
    rptCofferTransF3: TMenuItem;
    rptCofferTransF5: TMenuItem;
    mnuCheckInFormsF10: TMenuItem;
    mnuCheckInFormsF13: TMenuItem;
    mnuRptChecksInF10: TMenuItem;
    MenuItem259: TMenuItem;
    mnuCheckInFormsF50: TMenuItem;
    MnuRptChecksInF50: TMenuItem;
    MnurptBudget1: TMenuItem;
    MnurptBudget2: TMenuItem;
    MnurptBudget3: TMenuItem;
    MenuItem269: TMenuItem;
    MenuItem270: TMenuItem;
    MenuItem271: TMenuItem;
    MenuItem272: TMenuItem;
    MenuItem276: TMenuItem;
    MenuItem277: TMenuItem;
    MenuItem278: TMenuItem;
    MenuItem279: TMenuItem;
    MenuItem280: TMenuItem;
    MenuItem281: TMenuItem;
    MenuItem282: TMenuItem;
    MenuItem283: TMenuItem;
    Mnu2Store: TMainMenu;
    vjMenuStore: TMenuItem;
    MenuItem286: TMenuItem;
    MenuItem290: TMenuItem;
    MenuItem291: TMenuItem;
    Mnu_GetFirstEntityF: TMenuItem;
    MenuItem307: TMenuItem;
    MenuItem308: TMenuItem;
    MenuItem309: TMenuItem;
    mnuCoding: TMenuItem;
    MenuItem311: TMenuItem;
    MenuItem314: TMenuItem;
    MenuItem319: TMenuItem;
    MenuItem320: TMenuItem;
    mnuItemOther2: TMenuItem;
    MenuItem325: TMenuItem;
    mnuReciptsF4: TMenuItem;
    mnuRecipt: TMenuItem;
    mnuReject: TMenuItem;
    mnuRelease: TMenuItem;
    mnuReciptsF14: TMenuItem;
    mnuActReciptsF13: TMenuItem;
    mnuActReciptsF7: TMenuItem;
    MenuItem343: TMenuItem;
    MenuItem344: TMenuItem;
    MenuItem345: TMenuItem;
    MenuItem347: TMenuItem;
    MenuItem349: TMenuItem;
    MenuItem351: TMenuItem;
    MenuItem352: TMenuItem;
    MenuItem360: TMenuItem;
    MenuItem361: TMenuItem;
    MenuItem362: TMenuItem;
    MenuItem364: TMenuItem;
    MenuItem365: TMenuItem;
    MenuItem366: TMenuItem;
    MenuItem367: TMenuItem;
    mnuRptEntityStuffF: TMenuItem;
    MenuItem370: TMenuItem;
    MenuItem371: TMenuItem;
    mnuEntityOnDetailStuffsF: TMenuItem;
    mnuActSpecialinventoryF: TMenuItem;
    mnuActRptCardexF1: TMenuItem;
    mnuActRptCardexF2: TMenuItem;
    mnirptStuffGroupsF2: TMenuItem;
    MnurptStuffCodingF2: TMenuItem;
    mnuInStuf: TMenuItem;
    MenuItem382: TMenuItem;
    mniStoRptReciptWithGrpCustF2: TMenuItem;
    mniRptReciptWithCustF2: TMenuItem;
    MenuItem385: TMenuItem;
    mnirptStuffGroupsF4: TMenuItem;
    MnurptStuffCodingF4: TMenuItem;
    mnuOutStuf1: TMenuItem;
    MenuItem389: TMenuItem;
    mniStoRptReciptWithGrpCustF4: TMenuItem;
    mniRptReciptWithCustF4: TMenuItem;
    mnuFirstIn: TMenuItem;
    mnuRptReportsF: TMenuItem;
    MenuItem410: TMenuItem;
    MenuItem411: TMenuItem;
    rptCountingItemsF3: TMenuItem;
    rptCountingItemsF1: TMenuItem;
    rptCountingItemsF2: TMenuItem;
    MenuItem419: TMenuItem;
    PrintCountingLabelF0: TMenuItem;
    mnuSPTrancService_Cust2: TMenuItem;
    mnuSprptBalanceService: TMenuItem;
    mnuSPrancstuffDetails: TMenuItem;
    MenuItem427: TMenuItem;
    MenuItem552: TMenuItem;
    MenuItem553: TMenuItem;
    MenuItem554: TMenuItem;
    MenuItem555: TMenuItem;
    MenuItem556: TMenuItem;
    MenuItem557: TMenuItem;
    MenuItem558: TMenuItem;
    MenuItem559: TMenuItem;
    MenuItem560: TMenuItem;
    MenuItem561: TMenuItem;
    MenuItem562: TMenuItem;
    MenuItem564: TMenuItem;
    MenuItem565: TMenuItem;
    MenuItem566: TMenuItem;
    Mnu1Sell: TMainMenu;
    vjMenuSell: TMenuItem;
    MenuItem569: TMenuItem;
    MenuItem573: TMenuItem;
    MenuItem574: TMenuItem;
    MenuItem575: TMenuItem;
    MenuItem578: TMenuItem;
    MenuItem580: TMenuItem;
    MenuItem590: TMenuItem;
    MenuItem591: TMenuItem;
    MenuItem592: TMenuItem;
    mnuCoding1: TMenuItem;
    MenuItem594: TMenuItem;
    MenuItem596: TMenuItem;
    MenuItem597: TMenuItem;
    mnuActCustomersF2: TMenuItem;
    MenuItem604: TMenuItem;
    ReciptsF1: TMenuItem;
    mnuReciptsF5: TMenuItem;
    mnuRecipt1: TMenuItem;
    mnuReject1: TMenuItem;
    mnuActReciptsF11: TMenuItem;
    mnuRelease1: TMenuItem;
    mnuSell_1: TMenuItem;
    mnuActReciptsF14: TMenuItem;
    mnuActReciptsF8: TMenuItem;
    MenuItem626: TMenuItem;
    MenuItem627: TMenuItem;
    MenuItem628: TMenuItem;
    MenuItem629: TMenuItem;
    MenuItem630: TMenuItem;
    MenuItem631: TMenuItem;
    MenuItem634: TMenuItem;
    MenuItem635: TMenuItem;
    MenuItem707: TMenuItem;
    MenuItem708: TMenuItem;
    mnuCustomerTrancItemsF1: TMenuItem;
    MenuItem710: TMenuItem;
    MenuItem711: TMenuItem;
    MenuItem713: TMenuItem;
    mnuCustomersBalanceF31: TMenuItem;
    MenuItem715: TMenuItem;
    mnirptStuffGroupsF5: TMenuItem;
    MnurptStuffCodingF5: TMenuItem;
    mnuAidInfoAvailableSell: TMenuItem;
    mniStoRptReciptWithGrpCustF5: TMenuItem;
    mniRptReciptWithCustF5: TMenuItem;
    mnuSellsWithCost: TMenuItem;
    MenuItem734: TMenuItem;
    MenuItem735: TMenuItem;
    MenuItem736: TMenuItem;
    MenuItem737: TMenuItem;
    mnuAidInfoAvailableComper: TMenuItem;
    MenuItem739: TMenuItem;
    MenuItem740: TMenuItem;
    MenuItem741: TMenuItem;
    MenuItem742: TMenuItem;
    MenuItem743: TMenuItem;
    MenuItem744: TMenuItem;
    mnuAidInfoAvailableBacksell: TMenuItem;
    MenuItem746: TMenuItem;
    MenuItem747: TMenuItem;
    MenuItem748: TMenuItem;
    MenuItem749: TMenuItem;
    MenuItem752: TMenuItem;
    MenuItem835: TMenuItem;
    MenuItem836: TMenuItem;
    MenuItem837: TMenuItem;
    MenuItem838: TMenuItem;
    MenuItem842: TMenuItem;
    MenuItem843: TMenuItem;
    MenuItem844: TMenuItem;
    MenuItem845: TMenuItem;
    MenuItem846: TMenuItem;
    MenuItem847: TMenuItem;
    MenuItem848: TMenuItem;
    MenuItem849: TMenuItem;
    MItemCoffer2: TMenuItem;
    N14: TMenuItem;
    N12: TMenuItem;
    N16: TMenuItem;
    N25: TMenuItem;
    N26: TMenuItem;
    N35: TMenuItem;
    N36: TMenuItem;
    N38: TMenuItem;
    N39: TMenuItem;
    N43: TMenuItem;
    mnuItemOther1: TMenuItem;
    N53: TMenuItem;
    N20: TMenuItem;
    N27: TMenuItem;
    N34: TMenuItem;
    N46: TMenuItem;
    N57: TMenuItem;
    N58: TMenuItem;
    N59: TMenuItem;
    N61: TMenuItem;
    N62: TMenuItem;
    N63: TMenuItem;
    N64: TMenuItem;
    N65: TMenuItem;
    Mnu24Maneger: TMainMenu;
    vjMenu: TMenuItem;
    MenuItem10: TMenuItem;
    MenuItem11: TMenuItem;
    MenuItem25: TMenuItem;
    MenuItem35: TMenuItem;
    MenuItem37: TMenuItem;
    MenuItem109_: TMenuItem;
    MenuItem166: TMenuItem;
    MenuItem478: TMenuItem;
    N67: TMenuItem;
    N69: TMenuItem;
    N70: TMenuItem;
    CommandUpDate: TMenuItem;
    oolbar1: TMenuItem;
    oolbar2: TMenuItem;
    oolbar3: TMenuItem;
    ReciptsF2: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    ReciptsF3: TMenuItem;
    GetCheckF21: TMenuItem;
    GetCheckF22: TMenuItem;
    GetCheckF73: TMenuItem;
    N4: TMenuItem;
    mnuSellersF1: TMenuItem;
    rptHavaleh: TMenuItem;
    mnuSprptHavaleh: TMenuItem;
    rptTrancDetailsF12: TMenuItem;
    N3: TMenuItem;
    N15: TMenuItem;
    N19: TMenuItem;
    mnuRptChecksInF17: TMenuItem;
    mnuCardexSpecialinventory: TMenuItem;
    RptChecksInF80: TMenuItem;
    GetCheckF23: TMenuItem;
    RptCofferF23: TMenuItem;
    mnuActReciptsF10: TMenuItem;
    Mnu3Schedule: TMainMenu;
    vjMenuSchedule: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem49: TMenuItem;
    MenuItem50: TMenuItem;
    MenuItem51: TMenuItem;
    MenuItem52: TMenuItem;
    MenuItem54: TMenuItem;
    MenuItem55: TMenuItem;
    MenuItem56: TMenuItem;
    MenuItem57: TMenuItem;
    MenuItem440: TMenuItem;
    MenuItem441: TMenuItem;
    MenuItem442: TMenuItem;
    MenuItem443: TMenuItem;
    MenuItem444: TMenuItem;
    MenuItem445: TMenuItem;
    MenuItem446: TMenuItem;
    MenuItem447: TMenuItem;
    MenuItem448: TMenuItem;
    MenuItem449: TMenuItem;
    MenuItem450: TMenuItem;
    MenuItem451: TMenuItem;
    MenuItem453: TMenuItem;
    MenuItem454: TMenuItem;
    MenuItem455: TMenuItem;
    TrptCashier: TMenuItem;
    N22: TMenuItem;
    mnusearchCheckF: TMenuItem;
    N23: TMenuItem;
    N24: TMenuItem;
    N110: TMenuItem;
    N29: TMenuItem;
    N31: TMenuItem;
    N41: TMenuItem;
    N51: TMenuItem;
    N68: TMenuItem;
    N71: TMenuItem;
    N81: TMenuItem;
    N91: TMenuItem;
    N30: TMenuItem;
    N32: TMenuItem;
    N33: TMenuItem;
    N40: TMenuItem;
    N111: TMenuItem;
    N210: TMenuItem;
    N310: TMenuItem;
    N112: TMenuItem;
    N211: TMenuItem;
    N311: TMenuItem;
    N42: TMenuItem;
    mnuItemOther3: TMenuItem;
    N45: TMenuItem;
    N47: TMenuItem;
    N49: TMenuItem;
    N113: TMenuItem;
    N212: TMenuItem;
    N114: TMenuItem;
    N52: TMenuItem;
    l1: TMenuItem;
    rptCofferTransF11: TMenuItem;
    N115: TMenuItem;
    mnuGetCheckF26: TMenuItem;
    N54: TMenuItem;
    N116: TMenuItem;
    N214: TMenuItem;
    N60: TMenuItem;
    GetOtherMoneyF101: TMenuItem;
    GetOtherMoneyF102: TMenuItem;
    N74: TMenuItem;
    N75: TMenuItem;
    RptCofferF101: TMenuItem;
    RptCofferF102: TMenuItem;
    Bsell_Store_OtherReport: TMenuItem;
    N79: TMenuItem;
    mnuOutStuf2: TMenuItem;
    N82: TMenuItem;
    RptEntityStuffAllStore: TMenuItem;
    RptEntityStuffGrpAllStore: TMenuItem;
    RptEntityStuffDetailsAllStoreF: TMenuItem;
    rptEntityOnDetailStuffsAllStore: TMenuItem;
    mnuRptControlEntity: TMenuItem;
    N83: TMenuItem;
    N84: TMenuItem;
    N87: TMenuItem;
    N89: TMenuItem;
    GetCheckF19: TMenuItem;
    RptCofferF19: TMenuItem;
    RptCofferF27: TMenuItem;
    GetCheckF27: TMenuItem;
    RptCofferF54: TMenuItem;
    GetCheckF54: TMenuItem;
    mnuMnuStuffToStoreF: TMenuItem;
    mnuMnurptBuySpecialF: TMenuItem;
    N94: TMenuItem;
    mnuSPSellMounth: TMenuItem;
    MItemCoffer7: TMenuItem;
    rptcheckSadereh_StateF: TMenuItem;
    rptTrancDetailsF5: TMenuItem;
    mnuDailyWorkF: TMenuItem;
    mnuReportDailly: TMenuItem;
    N11: TMenuItem;
    mnuRecallBranchF: TMenuItem;
    N48: TMenuItem;
    mnuSpSpecialReportsActive: TMenuItem;
    N98: TMenuItem;
    GetCheckFenter31: TMenuItem;
    RptCofferF31: TMenuItem;
    mnuRptChecksInF26: TMenuItem;
    AllrptRefineSell: TMenuItem;
    N118: TMenuItem;
    N119: TMenuItem;
    N120: TMenuItem;
    mnuAidInfoAvailableRefine: TMenuItem;
    N122: TMenuItem;
    N123: TMenuItem;
    N109: TMenuItem;
    N117: TMenuItem;
    N124: TMenuItem;
    N125: TMenuItem;
    N126: TMenuItem;
    N312: TMenuItem;
    N313: TMenuItem;
    N127: TMenuItem;
    N128: TMenuItem;
    N129: TMenuItem;
    GetCheckF28: TMenuItem;
    RptCofferF28: TMenuItem;
    rptCompare_Count_EntityF: TMenuItem;
    N92: TMenuItem;
    N50: TMenuItem;
    N130: TMenuItem;
    N131: TMenuItem;
    N133: TMenuItem;
    RptCofferF103: TMenuItem;
    N8: TMenuItem;
    AllrptReciptListOnStuffCodeF: TMenuItem;
    N136: TMenuItem;
    N137: TMenuItem;
    AllrptReciptListOnCustomers: TMenuItem;
    N138: TMenuItem;
    N139: TMenuItem;
    mnuDailyWorkTowF: TMenuItem;
    AllGetCheckClick: TMenuItem;
    BsellOtherReport: TMenuItem;
    mnuMnuContractF: TMenuItem;
    N76: TMenuItem;
    N28: TMenuItem;
    N77: TMenuItem;
    n1000: TMenuItem;
    N140: TMenuItem;
    Bsell_Coffer_OtherRpt: TMenuItem;
    N56: TMenuItem;
    N66: TMenuItem;
    N18: TMenuItem;
    mnuSPSellCust: TMenuItem;
    N144: TMenuItem;
    N145: TMenuItem;
    N146: TMenuItem;
    N147: TMenuItem;
    mnuEntityOnDetailStuffs: TMenuItem;
    mnuEntityOnAllstore: TMenuItem;
    mnuLookUpsF: TMenuItem;
    N10: TMenuItem;
    PaymentExpenceF: TMenuItem;
    mnuRptControlCardexf: TMenuItem;
    mnuStuffGroupsAccessoryS1: TMenuItem;
    mnuStuffGroupsAccessory1: TMenuItem;
    CountingItemsF20: TMenuItem;
    N95: TMenuItem;
    N99: TMenuItem;
    mnuDailyWorkF1: TMenuItem;
    N101: TMenuItem;
    mnuStuffCodingSpecialF: TMenuItem;
    ExcelImport: TMenuItem;
    ExcelImportToTabel: TMenuItem;
    mnuStuffCodingSpecialFSell: TMenuItem;
    MItemCoffer8: TMenuItem;
    OtherCustomerF7: TMenuItem;
    N150: TMenuItem;
    NUseOthers: TMenuItem;
    mnuListUsesF: TMenuItem;
    mnuLookUps2F: TMenuItem;
    N154: TMenuItem;
    N155: TMenuItem;
    N156: TMenuItem;
    mnuCustomers8: TMenuItem;
    ManifestoF0: TMenuItem;
    Xml1: TMenuItem;
    mnuSellPlanF: TMenuItem;
    mnuInvoiceEmissionF: TMenuItem;
    N161: TMenuItem;
    N162: TMenuItem;
    mnurptWorkCustomerF: TMenuItem;
    N166: TMenuItem;
    N167: TMenuItem;
    N169: TMenuItem;
    N170: TMenuItem;
    N175: TMenuItem;
    mnuCheckCycleF: TMenuItem;
    rptCustomerTransactionF6: TMenuItem;
    rptCustomerTrancItemsF6: TMenuItem;
    N179: TMenuItem;
    mniIncorporate: TMenuItem;
    actMnuReciptsGridF1: TMenuItem;
    mnuCustomersInterView2: TMenuItem;
    N178: TMenuItem;
    N180: TMenuItem;
    N181: TMenuItem;
    N182: TMenuItem;
    MnuSellsEmporiums: TMenuItem;
    N184: TMenuItem;
    N185: TMenuItem;
    mniChangeUnit: TMenuItem;
    MnuN183: TMenuItem;
    mnuCustomersF9: TMenuItem;
    N183: TMenuItem;
    mnuHelp: TMenuItem;
    mnuHelp2: TMenuItem;
    mnuHelp1: TMenuItem;
    mnuHelp4: TMenuItem;
    N192: TMenuItem;
    N193: TMenuItem;
    N194: TMenuItem;
    N195: TMenuItem;
    N196: TMenuItem;
    N197: TMenuItem;
    N198: TMenuItem;
    ReciptReleaseF12: TMenuItem;
    N17: TMenuItem;
    N21: TMenuItem;
    MakeMaliYear: TMenuItem;
    N100: TMenuItem;
    mniRemainEarlyF: TMenuItem;
    mniRemainEarlyClick2: TMenuItem;
    mniN165: TMenuItem;
    mniN166: TMenuItem;
    mnuN165: TMenuItem;
    mnuQuotaPostF: TMenuItem;
    mnuActSpecialinventoryF1: TMenuItem;
    mnuN167: TMenuItem;
    mnuAllCheckInFormsF: TMenuItem;
    mnuN168: TMenuItem;
    mnuN169: TMenuItem;
    mnuN170: TMenuItem;
    MnuRptReciptWithCustItemF2: TMenuItem;
    MnuRptReciptWithCustItemF4: TMenuItem;
    MnuN166: TMenuItem;
    MnuN171: TMenuItem;
    MnuN172: TMenuItem;
    MnurptReciptListOnStuffCode2: TMenuItem;
    MnurptReciptListOnCustomersF2: TMenuItem;
    MnuN175: TMenuItem;
    MnurptReciptListOnStuffCodeCustomersItem2: TMenuItem;
    MnurptReciptListOnCustomersItemF2: TMenuItem;
    MnuN173: TMenuItem;
    MnurptReciptListOnStuffCode4: TMenuItem;
    MnurptReciptListOnStuffCodeCustomersItem4: TMenuItem;
    MnuN121: TMenuItem;
    MnurptReciptListOnCustomersF4: TMenuItem;
    MnurptReciptListOnCustomersItemF4: TMenuItem;
    MnuN122: TMenuItem;
    N121: TMenuItem;
    MnurptReciptSumOnStuffCodeCustomersItemF2: TMenuItem;
    MnurptReciptSumOnCustomersItemF2: TMenuItem;
    MnuN1651: TMenuItem;
    MnurptReciptSumOnCustomersItemF4: TMenuItem;
    MnurptReciptSumOnStuffCodeCustomersItemF4: TMenuItem;
    mniReciptsDeficitsPostAllF: TMenuItem;
    N171: TMenuItem;
    mnuN174: TMenuItem;
    mnuSellPricingF: TMenuItem;
    mnuN177: TMenuItem;
    mnurptReciptSumOnPersonID1F2: TMenuItem;
    mnurptReciptSumOnPersonID1F4: TMenuItem;
    mnuN179: TMenuItem;
    mnuN180: TMenuItem;
    mnuGeneralReportF: TMenuItem;
    mnuN181: TMenuItem;
    mnuGeneralReportF2: TMenuItem;
    mnuGeneralReportF1: TMenuItem;
    mnuN185: TMenuItem;
    mnuGeneralReportF4: TMenuItem;
    mnuRptReportsF192: TMenuItem;
    mnuSearchRecipts: TMenuItem;
    mnuSearchRecipts1: TMenuItem;
    mnuGetFirstEntity: TMenuItem;
    mdiChildrenTabs: TTabSet;
    Mnu4Procurement: TMainMenu;
    vjMenuProcurement: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem20: TMenuItem;
    MenuItem27: TMenuItem;
    MenuItem28: TMenuItem;
    MenuItem29: TMenuItem;
    MenuItem30: TMenuItem;
    MenuItem58: TMenuItem;
    MenuItem73: TMenuItem;
    MenuItem74: TMenuItem;
    MenuItem75: TMenuItem;
    MenuItem76: TMenuItem;
    MenuItem78: TMenuItem;
    MenuItem92: TMenuItem;
    MenuItem93: TMenuItem;
    mnuotherCustomerF6: TMenuItem;
    Bsell_04Procurement: TMenuItem;
    MenuItem466: TMenuItem;
    MenuItem467: TMenuItem;
    MenuItem469: TMenuItem;
    MenuItem470: TMenuItem;
    MenuItem471: TMenuItem;
    MenuItem472: TMenuItem;
    MenuItem473: TMenuItem;
    MenuItem474: TMenuItem;
    MenuItem475: TMenuItem;
    MenuItem476: TMenuItem;
    MenuItem477: TMenuItem;
    MenuItem480: TMenuItem;
    MenuItem481: TMenuItem;
    mnuHelp5: TMenuItem;
    MenuItem484: TMenuItem;
    MenuItem485: TMenuItem;
    MenuItem486: TMenuItem;
    N165: TMenuItem;
    N172: TMenuItem;
    N173: TMenuItem;
    N176: TMenuItem;
    N189: TMenuItem;
    N204: TMenuItem;
    mnuSellersF10: TMenuItem;
    N205: TMenuItem;
    N206: TMenuItem;
    N142: TMenuItem;
    N207: TMenuItem;
    N220: TMenuItem;
    N221: TMenuItem;
    N224: TMenuItem;
    N227: TMenuItem;
    N228: TMenuItem;
    mnuN229: TMenuItem;
    N230: TMenuItem;
    mnuN231: TMenuItem;
    mnuN232: TMenuItem;
    N233: TMenuItem;
    N234: TMenuItem;
    RptChecksInF70: TMenuItem;
    N141: TMenuItem;
    N186: TMenuItem;
    N225: TMenuItem;
    N229: TMenuItem;
    mnuRptControlCardexf2: TMenuItem;
    N231: TMenuItem;
    mnuN234: TMenuItem;
    mnuN236: TMenuItem;
    mnuN237: TMenuItem;
    mnu5: TMenuItem;
    mnu6: TMenuItem;
    mnu7: TMenuItem;
    mnu8: TMenuItem;
    ileHorizontally1: TMenuItem;
    mnu9: TMenuItem;
    mnuArrange1: TMenuItem;
    mnuCascade1: TMenuItem;
    mnuClose1: TMenuItem;
    mnuMinimizeAll1: TMenuItem;
    mnuHorizontally2: TMenuItem;
    mnuVertically1: TMenuItem;
    mnuArrange11: TMenuItem;
    mnuCascade11: TMenuItem;
    mnuClose11: TMenuItem;
    mnuMinimizeAll11: TMenuItem;
    mnuHorizontally21: TMenuItem;
    mnuVertically11: TMenuItem;
    mnuStuffGroupsAccessoryS2: TMenuItem;
    mnuStuffGroupsAccessory2: TMenuItem;
    Mnu7Agriculture: TMainMenu;
    MenuItem60: TMenuItem;
    MenuItem69: TMenuItem;
    MenuItem70: TMenuItem;
    MenuItem71: TMenuItem;
    MenuItem72: TMenuItem;
    MenuItem83: TMenuItem;
    MenuItem84: TMenuItem;
    mnuItemOther7: TMenuItem;
    MenuItem98: TMenuItem;
    MenuItem99: TMenuItem;
    Bsell_07Agriculture: TMenuItem;
    MenuItem115: TMenuItem;
    MenuItem116: TMenuItem;
    MenuItem117: TMenuItem;
    MenuItem118: TMenuItem;
    MenuItem119: TMenuItem;
    MenuItem120: TMenuItem;
    MenuItem121: TMenuItem;
    MenuItem122: TMenuItem;
    MenuItem123: TMenuItem;
    MenuItem124: TMenuItem;
    MenuItem125: TMenuItem;
    MenuItem126: TMenuItem;
    MenuItem127: TMenuItem;
    MenuItem128: TMenuItem;
    mnuHelp6: TMenuItem;
    MenuItem130: TMenuItem;
    MenuItem131: TMenuItem;
    MenuItem132: TMenuItem;
    Mnu8Machinery: TMainMenu;
    MenuItem150: TMenuItem;
    MenuItem161: TMenuItem;
    MenuItem162: TMenuItem;
    MenuItem163: TMenuItem;
    MenuItem168: TMenuItem;
    MenuItem198: TMenuItem;
    mnuStuffCodingMachineryF: TMenuItem;
    mnuItemOther8: TMenuItem;
    MenuItem229: TMenuItem;
    MenuItem236: TMenuItem;
    MenuItem237: TMenuItem;
    MenuItem249: TMenuItem;
    MenuItem250: TMenuItem;
    MenuItem255: TMenuItem;
    MenuItem263: TMenuItem;
    MenuItem264: TMenuItem;
    MenuItem267: TMenuItem;
    MenuItem268: TMenuItem;
    Bsell_08Machinery: TMenuItem;
    MenuItem312: TMenuItem;
    MenuItem315: TMenuItem;
    MenuItem318: TMenuItem;
    MenuItem323: TMenuItem;
    MenuItem326: TMenuItem;
    MenuItem327: TMenuItem;
    MenuItem328: TMenuItem;
    MenuItem330: TMenuItem;
    MenuItem332: TMenuItem;
    MenuItem334: TMenuItem;
    MenuItem335: TMenuItem;
    MenuItem341: TMenuItem;
    MenuItem342: TMenuItem;
    MenuItem346: TMenuItem;
    mnuHelp7: TMenuItem;
    MenuItem350: TMenuItem;
    MenuItem353: TMenuItem;
    MenuItem354: TMenuItem;
    Mnu5ProcurementI: TMainMenu;
    MenuItem374: TMenuItem;
    MenuItem375: TMenuItem;
    MenuItem376: TMenuItem;
    MenuItem386: TMenuItem;
    MenuItem387: TMenuItem;
    MenuItem388: TMenuItem;
    mnuCoding4: TMenuItem;
    mnuItemOther5: TMenuItem;
    MenuItem418: TMenuItem;
    MenuItem420: TMenuItem;
    MenuItem421: TMenuItem;
    MenuItem422: TMenuItem;
    MenuItem423: TMenuItem;
    MenuItem426: TMenuItem;
    MenuItem429: TMenuItem;
    MenuItem431: TMenuItem;
    MenuItem433: TMenuItem;
    MenuItem434: TMenuItem;
    MenuItem435: TMenuItem;
    MenuItem436: TMenuItem;
    MenuItem437: TMenuItem;
    MenuItem438: TMenuItem;
    MenuItem439: TMenuItem;
    MenuItem452: TMenuItem;
    MenuItem456: TMenuItem;
    MenuItem457: TMenuItem;
    MenuItem458: TMenuItem;
    MenuItem459: TMenuItem;
    MenuItem460: TMenuItem;
    MenuItem461: TMenuItem;
    MenuItem462: TMenuItem;
    mnuGeneralReportF5: TMenuItem;
    Bsell_05ProcurementI: TMenuItem;
    MenuItem465: TMenuItem;
    MenuItem482: TMenuItem;
    MenuItem483: TMenuItem;
    MenuItem487: TMenuItem;
    MenuItem489: TMenuItem;
    MenuItem494: TMenuItem;
    MenuItem497: TMenuItem;
    MenuItem498: TMenuItem;
    MenuItem499: TMenuItem;
    MenuItem511: TMenuItem;
    MenuItem515: TMenuItem;
    MenuItem516: TMenuItem;
    MenuItem517: TMenuItem;
    MenuItem518: TMenuItem;
    mnuHelp8: TMenuItem;
    MenuItem520: TMenuItem;
    MenuItem521: TMenuItem;
    MenuItem522: TMenuItem;
    Mnu6Contractors: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem9: TMenuItem;
    MenuItem15: TMenuItem;
    MenuItem32: TMenuItem;
    MenuItem36: TMenuItem;
    mnuCoding5: TMenuItem;
    MenuItem59: TMenuItem;
    mnuAllotherCustomerF: TMenuItem;
    MenuItem63: TMenuItem;
    Bsell_06Contractors: TMenuItem;
    MenuItem88: TMenuItem;
    MenuItem89: TMenuItem;
    MenuItem90: TMenuItem;
    MenuItem91: TMenuItem;
    MenuItem94: TMenuItem;
    MenuItem95: TMenuItem;
    MenuItem96: TMenuItem;
    MenuItem100: TMenuItem;
    MenuItem101: TMenuItem;
    MenuItem102: TMenuItem;
    MenuItem103: TMenuItem;
    MenuItem105: TMenuItem;
    MenuItem106: TMenuItem;
    MenuItem107: TMenuItem;
    mnuHelp9: TMenuItem;
    MenuItem110: TMenuItem;
    MenuItem113: TMenuItem;
    MenuItem114: TMenuItem;
    N153: TMenuItem;
    mnuN157: TMenuItem;
    N232: TMenuItem;
    mnuAllCustomersF: TMenuItem;
    N238: TMenuItem;
    N239: TMenuItem;
    N237: TMenuItem;
    mnuCnt_ContractsF145: TMenuItem;
    mnuCnt_ContractOperationsF: TMenuItem;
    N242: TMenuItem;
    mnuCnt_RunSchedulesF: TMenuItem;
    mnuCnt_RunScheduleItemsF: TMenuItem;
    N157: TMenuItem;
    mnuN1100: TMenuItem;
    Mnu12MainCoding: TMainMenu;
    MenuItem53: TMenuItem;
    MenuItem61: TMenuItem;
    MenuItem62: TMenuItem;
    MenuItem64: TMenuItem;
    MenuItem108: TMenuItem;
    MenuItem129: TMenuItem;
    MenuItem133: TMenuItem;
    MenuItem134: TMenuItem;
    MenuItem135: TMenuItem;
    MenuItem136: TMenuItem;
    MenuItem356: TMenuItem;
    MenuItem357: TMenuItem;
    MenuItem358: TMenuItem;
    mnuStuffGroupsAccessory3: TMenuItem;
    mnuStuffGroupsAccessory4: TMenuItem;
    mnuCoding2: TMenuItem;
    MenuItem372: TMenuItem;
    MenuItem373: TMenuItem;
    MenuItem377: TMenuItem;
    mnuActCustomersF3: TMenuItem;
    MenuItem379: TMenuItem;
    mnuSellersF11: TMenuItem;
    mnuOfficeCustomerF2: TMenuItem;
    MenuItem391: TMenuItem;
    MenuItem392: TMenuItem;
    MenuItem393: TMenuItem;
    MenuItem729: TMenuItem;
    MenuItem738: TMenuItem;
    MenuItem745: TMenuItem;
    MenuItem753: TMenuItem;
    MenuItem754: TMenuItem;
    MenuItem755: TMenuItem;
    MenuItem756: TMenuItem;
    MenuItem757: TMenuItem;
    MenuItem758: TMenuItem;
    MenuItem759: TMenuItem;
    MenuItem760: TMenuItem;
    MenuItem761: TMenuItem;
    MenuItem762: TMenuItem;
    MenuItem763: TMenuItem;
    MenuItem764: TMenuItem;
    MenuItem765: TMenuItem;
    MenuItem766: TMenuItem;
    MenuItem767: TMenuItem;
    MenuItem768: TMenuItem;
    MenuItem769: TMenuItem;
    mnuHelp10: TMenuItem;
    MenuItem771: TMenuItem;
    MenuItem772: TMenuItem;
    MenuItem773: TMenuItem;
    N248: TMenuItem;
    mnuItemOther4: TMenuItem;
    mnuItemOther6: TMenuItem;
    mnuItemOther24_: TMenuItem;
    mnuCustGroupsF0Click1: TMenuItem;
    mnuSellersFAll: TMenuItem;
    N249: TMenuItem;
    N250: TMenuItem;
    N251: TMenuItem;
    mnuN182: TMenuItem;
    mnuNegotiationsF: TMenuItem;
    N174: TMenuItem;
    N187: TMenuItem;
    N188: TMenuItem;
    N203: TMenuItem;
    N253: TMenuItem;
    N254: TMenuItem;
    N255: TMenuItem;
    mnuN257: TMenuItem;
    N258: TMenuItem;
    N259: TMenuItem;
    mnuN200: TMenuItem;
    mnuN201: TMenuItem;
    mnuN202: TMenuItem;
    mnuN199: TMenuItem;
    mnuLookUps3F: TMenuItem;
    mnuN192: TMenuItem;
    mnuN193: TMenuItem;
    mnuN1901: TMenuItem;
    mnuN1911: TMenuItem;
    mnuN194: TMenuItem;
    mnuN195: TMenuItem;
    mnuN196: TMenuItem;
    mnuN197: TMenuItem;
    N190: TMenuItem;
    mnuN198: TMenuItem;
    mnuN203: TMenuItem;
    mnuN1912: TMenuItem;
    mnuN1913: TMenuItem;
    mnuN204: TMenuItem;
    mnuN205: TMenuItem;
    mnuN1914: TMenuItem;
    Mnu9TimeSheet: TMainMenu;
    mnu17: TMenuItem;
    mnu18: TMenuItem;
    mnu27: TMenuItem;
    mnu32: TMenuItem;
    mnu33: TMenuItem;
    mnu35: TMenuItem;
    mnu36: TMenuItem;
    mnu40: TMenuItem;
    mnuOfficeCustomerF4: TMenuItem;
    mnuTshFunctionsAll: TMenuItem;
    Bsell_09TimeSheet: TMenuItem;
    mnu63: TMenuItem;
    mnu64: TMenuItem;
    mnu65: TMenuItem;
    mnu66: TMenuItem;
    mnu67: TMenuItem;
    mnu68: TMenuItem;
    mnu69: TMenuItem;
    mnu70: TMenuItem;
    mnu71: TMenuItem;
    mnu72: TMenuItem;
    mnu73: TMenuItem;
    mnu74: TMenuItem;
    mnu75: TMenuItem;
    mnu76: TMenuItem;
    mnuHelp11: TMenuItem;
    mnu77: TMenuItem;
    mnu78: TMenuItem;
    mnu79: TMenuItem;
    mnur9: TMenuItem;
    mnuN206: TMenuItem;
    mnuGroupsPerson: TMenuItem;
    mnuWorkGroupsPerson51: TMenuItem;
    mnuFormDesign52: TMenuItem;
    mnuTshSchedules: TMenuItem;
    mnuFormDesign53: TMenuItem;
    mnuTshFunctions: TMenuItem;
    mnuFormDesign54: TMenuItem;
    mnuN207: TMenuItem;
    mnuN208: TMenuItem;
    mnuOfficeCustomerF3: TMenuItem;
    mnuOfficeCustomerFAll: TMenuItem;
    mnuN209: TMenuItem;
    mnuN210: TMenuItem;
    mnuN211: TMenuItem;
    mnuCoding3: TMenuItem;
    N199: TMenuItem;
    mnuMaintenanceF: TMenuItem;
    N226: TMenuItem;
    mnuMachinDeliveryF: TMenuItem;
    N200: TMenuItem;
    N201: TMenuItem;
    mnuSellPlan2: TMenuItem;
    N202: TMenuItem;
    mnuCnt_ContractsF146: TMenuItem;
    N235: TMenuItem;
    mnuTshGeneralReport: TMenuItem;
    N241: TMenuItem;
    N243: TMenuItem;
    mnuCnt_ContractsF149: TMenuItem;
    mnuCnt_ContractsF148: TMenuItem;
    mnuCnt_ContractsF147: TMenuItem;
    N240: TMenuItem;
    Mnu10StoreProc: TMainMenu;
    MenuItem65: TMenuItem;
    MenuItem66: TMenuItem;
    MenuItem67: TMenuItem;
    MenuItem68: TMenuItem;
    MenuItem77: TMenuItem;
    MenuItem79: TMenuItem;
    MenuItem80: TMenuItem;
    MenuItem81: TMenuItem;
    MenuItem82: TMenuItem;
    MenuItem85: TMenuItem;
    MenuItem97: TMenuItem;
    MenuItem139: TMenuItem;
    MenuItem149: TMenuItem;
    MenuItem151: TMenuItem;
    MenuItem253: TMenuItem;
    MenuItem256: TMenuItem;
    MenuItem258: TMenuItem;
    MenuItem363: TMenuItem;
    MenuItem368: TMenuItem;
    MenuItem369: TMenuItem;
    mnuStuffGroupsAccessory5: TMenuItem;
    mnuStuffGroupsAccessory6: TMenuItem;
    mnuCoding6: TMenuItem;
    MenuItem384: TMenuItem;
    MenuItem390: TMenuItem;
    MenuItem417: TMenuItem;
    mnuItemOther10: TMenuItem;
    MenuItem563: TMenuItem;
    mnuActRptCardexF4: TMenuItem;
    MenuItem576: TMenuItem;
    MenuItem577: TMenuItem;
    MenuItem579: TMenuItem;
    MenuItem581: TMenuItem;
    mnuRptEntityStuffF1: TMenuItem;
    MenuItem600: TMenuItem;
    MenuItem601: TMenuItem;
    MenuItem609: TMenuItem;
    MenuItem610: TMenuItem;
    MenuItem611: TMenuItem;
    MenuItem612: TMenuItem;
    MenuItem613: TMenuItem;
    MenuItem615: TMenuItem;
    MenuItem616: TMenuItem;
    MenuItem620: TMenuItem;
    MenuItem621: TMenuItem;
    MenuItem625: TMenuItem;
    Bsell_10StoreProc: TMenuItem;
    MenuItem780: TMenuItem;
    MenuItem781: TMenuItem;
    MenuItem782: TMenuItem;
    MenuItem783: TMenuItem;
    MenuItem784: TMenuItem;
    MenuItem785: TMenuItem;
    MenuItem786: TMenuItem;
    MenuItem787: TMenuItem;
    MenuItem788: TMenuItem;
    MenuItem789: TMenuItem;
    MenuItem790: TMenuItem;
    MenuItem791: TMenuItem;
    MenuItem792: TMenuItem;
    MenuItem793: TMenuItem;
    MenuItem794: TMenuItem;
    MenuItem795: TMenuItem;
    MenuItem796: TMenuItem;
    MenuItem797: TMenuItem;
    MenuItem798: TMenuItem;
    MenuItem799: TMenuItem;
    mnuHelp12: TMenuItem;
    MenuItem801: TMenuItem;
    MenuItem802: TMenuItem;
    MenuItem803: TMenuItem;
    N244: TMenuItem;
    N245: TMenuItem;
    N246: TMenuItem;
    N247: TMenuItem;
    mnuGeneralReportF7: TMenuItem;
    mnuSellPlanF1: TMenuItem;
    mnuRptCardMachinesF: TMenuItem;
    mnuRptReportsFAll: TMenuItem;
    mnuRpt001F4: TMenuItem;
    N262: TMenuItem;
    mnuGeneralReportF6: TMenuItem;
    N264: TMenuItem;
    N265: TMenuItem;
    N266: TMenuItem;
    N267: TMenuItem;
    N268: TMenuItem;
    N269: TMenuItem;
    N270: TMenuItem;
    PackingList1: TMenuItem;
    N271: TMenuItem;
    N272: TMenuItem;
    N273: TMenuItem;
    N274: TMenuItem;
    N275: TMenuItem;
    N276: TMenuItem;
    N277: TMenuItem;
    N278: TMenuItem;
    N279: TMenuItem;
    N280: TMenuItem;
    N281: TMenuItem;
    N282: TMenuItem;
    PackingList2: TMenuItem;
    N283: TMenuItem;
    N284: TMenuItem;
    N285: TMenuItem;
    N286: TMenuItem;
    N287: TMenuItem;
    N73: TMenuItem;
    mnuRptOperationalFStore: TMenuItem;
    N288: TMenuItem;
    mnuGetOtherMoneyF6: TMenuItem;
    mnuGetOtherMoneyF7: TMenuItem;
    mnuListGetOtherMoneyF6: TMenuItem;
    N292: TMenuItem;
    N293: TMenuItem;
    N294: TMenuItem;
    N295: TMenuItem;
    mnuListGetOtherMoneyF7: TMenuItem;
    N296: TMenuItem;
    N297: TMenuItem;
    N164: TMenuItem;
    mnuRptOperationalFSell: TMenuItem;
    N289: TMenuItem;
    N291: TMenuItem;
    N298: TMenuItem;
    mnuCustomersTaxF2: TMenuItem;
    mnuZoneF: TMenuItem;
    N102: TMenuItem;
    N103: TMenuItem;
    N302: TMenuItem;
    N303: TMenuItem;
    mnuN309: TMenuItem;
    mnuN310: TMenuItem;
    mnuN311: TMenuItem;
    mnuUsersCustomers: TMenuItem;
    N309: TMenuItem;
    N315: TMenuItem;
    N317: TMenuItem;
    SMServiceFEnter1: TMenuItem;
    SMS1: TMenuItem;
    SMS2: TMenuItem;
    mnuClockDmpF0: TMenuItem;
    Mnu11WorkFlow: TMainMenu;
    MenuItem12: TMenuItem;
    MenuItem38: TMenuItem;
    MenuItem39: TMenuItem;
    MenuItem40: TMenuItem;
    MenuItem41: TMenuItem;
    MenuItem42: TMenuItem;
    MenuItem143: TMenuItem;
    MenuItem171: TMenuItem;
    MenuItem175: TMenuItem;
    MenuItem176: TMenuItem;
    MenuItem177: TMenuItem;
    MenuItem178: TMenuItem;
    MenuItem179: TMenuItem;
    MenuItem180: TMenuItem;
    MenuItem181: TMenuItem;
    MenuItem182: TMenuItem;
    MenuItem183: TMenuItem;
    MenuItem184: TMenuItem;
    MenuItem185: TMenuItem;
    MenuItem186: TMenuItem;
    MenuItem187: TMenuItem;
    MenuItem188: TMenuItem;
    mnuHelp13: TMenuItem;
    MenuItem193: TMenuItem;
    MenuItem197: TMenuItem;
    MenuItem206: TMenuItem;
    N318: TMenuItem;
    N319: TMenuItem;
    mnuMailboxdatacontrolF: TMenuItem;
    N321: TMenuItem;
    N322: TMenuItem;
    N323: TMenuItem;
    N324: TMenuItem;
    rptCofferTransF16: TMenuItem;
    rptCofferTransF17: TMenuItem;
    N327: TMenuItem;
    N325: TMenuItem;
    N326: TMenuItem;
    N328: TMenuItem;
    N329: TMenuItem;
    mnurptLoanF: TMenuItem;
    vjMenu6Contractors: TMenuItem;
    N339: TMenuItem;
    N340: TMenuItem;
    Mnu13Store: TMainMenu;
    mnuCofferGeneralReport1: TMenuItem;
    vjMenu5ProcurementI: TMenuItem;
    N341: TMenuItem;
    N342: TMenuItem;
    Timer1: TTimer;
    N290: TMenuItem;
    N331: TMenuItem;
    N332: TMenuItem;
    N333: TMenuItem;
    N334: TMenuItem;
    N335: TMenuItem;
    UpdateUnitSellPriceF1: TMenuItem;
    AllRptChecksInF: TMenuItem;
    N336: TMenuItem;
    N337: TMenuItem;
    N338: TMenuItem;
    N343: TMenuItem;
    N344: TMenuItem;
    mnuN13: TMenuItem;
    mnuN14: TMenuItem;
    mnurptCardProjectF: TMenuItem;
    mnuCofferTransAllF: TMenuItem;
    mnuCustomersTaxF3: TMenuItem;
    mnuStuffGroups2F: TMenuItem;
    mnuStuffGroups2FClick1: TMenuItem;
    mnuN239: TMenuItem;
    mnuForwards2FF: TMenuItem;
    mnuMaintenanceGeneralReportF1: TMenuItem;
    mnuReciptsFundF: TMenuItem;
    mnuN15: TMenuItem;
    mnuActRptCardexF5: TMenuItem;
    mnuCoding7: TMenuItem;
    mnuReportID3500: TMenuItem;
    mnuStuffCodingMachinery2F: TMenuItem;
    mnuN1110: TMenuItem;
    mnuN16: TMenuItem;
    mnuN17: TMenuItem;
    mnuN18: TMenuItem;
    mnuN19: TMenuItem;
    mnuN20: TMenuItem;
    mnuN21: TMenuItem;
    mnuN22: TMenuItem;
    mnuTRequestManagementF: TMenuItem;
    mnuIntegrateDatabase: TMenuItem;
    mnurptCountingItemsCtrlF: TMenuItem;
    Mnu14Sell: TMainMenu;
    vjMenu14Sell: TMenuItem;
    MenuItem45: TMenuItem;
    MenuItem46: TMenuItem;
    MenuItem87: TMenuItem;
    MenuItem104: TMenuItem;
    MenuItem111: TMenuItem;
    MenuItem112: TMenuItem;
    MenuItem141: TMenuItem;
    MenuItem142: TMenuItem;
    MenuItem145: TMenuItem;
    MenuItem146: TMenuItem;
    MenuItem251: TMenuItem;
    MenuItem254: TMenuItem;
    MenuItem257: TMenuItem;
    MenuItem260: TMenuItem;
    MenuItem261: TMenuItem;
    MenuItem262: TMenuItem;
    MenuItem266: TMenuItem;
    MenuItem275: TMenuItem;
    MenuItem285: TMenuItem;
    MenuItem287: TMenuItem;
    MenuItem288: TMenuItem;
    MenuItem296: TMenuItem;
    MenuItem303: TMenuItem;
    MenuItem304: TMenuItem;
    MenuItem310: TMenuItem;
    MenuItem316: TMenuItem;
    MenuItem317: TMenuItem;
    MenuItem324: TMenuItem;
    MenuItem331: TMenuItem;
    MenuItem333: TMenuItem;
    MenuItem336: TMenuItem;
    MenuItem337: TMenuItem;
    MenuItem338: TMenuItem;
    MenuItem339: TMenuItem;
    MenuItem340: TMenuItem;
    MenuItem397: TMenuItem;
    MenuItem398: TMenuItem;
    MenuItem399: TMenuItem;
    mnuItemOther14: TMenuItem;
    MenuItem528: TMenuItem;
    MenuItem539: TMenuItem;
    MenuItem540: TMenuItem;
    MenuItem543: TMenuItem;
    MenuItem544: TMenuItem;
    MenuItem545: TMenuItem;
    MenuItem583: TMenuItem;
    MenuItem586: TMenuItem;
    MenuItem589: TMenuItem;
    MenuItem593: TMenuItem;
    MenuItem595: TMenuItem;
    MenuItem598: TMenuItem;
    MenuItem599: TMenuItem;
    MenuItem602: TMenuItem;
    MenuItem603: TMenuItem;
    MenuItem606: TMenuItem;
    MenuItem607: TMenuItem;
    MenuItem608: TMenuItem;
    MenuItem614: TMenuItem;
    MenuItem617: TMenuItem;
    MenuItem618: TMenuItem;
    MenuItem619: TMenuItem;
    MenuItem622: TMenuItem;
    MenuItem623: TMenuItem;
    MenuItem638: TMenuItem;
    MenuItem639: TMenuItem;
    MenuItem640: TMenuItem;
    MenuItem641: TMenuItem;
    MenuItem642: TMenuItem;
    MenuItem643: TMenuItem;
    MenuItem644: TMenuItem;
    MenuItem666: TMenuItem;
    MenuItem667: TMenuItem;
    MenuItem668: TMenuItem;
    MenuItem669: TMenuItem;
    MenuItem670: TMenuItem;
    MenuItem675: TMenuItem;
    MenuItem676: TMenuItem;
    BSell_14Marketing: TMenuItem;
    MenuItem697: TMenuItem;
    MenuItem698: TMenuItem;
    MenuItem699: TMenuItem;
    MenuItem700: TMenuItem;
    MenuItem701: TMenuItem;
    MenuItem702: TMenuItem;
    MenuItem703: TMenuItem;
    MenuItem704: TMenuItem;
    MenuItem705: TMenuItem;
    MenuItem706: TMenuItem;
    MenuItem709: TMenuItem;
    MenuItem712: TMenuItem;
    MenuItem714: TMenuItem;
    MenuItem716: TMenuItem;
    MenuItem717: TMenuItem;
    MenuItem718: TMenuItem;
    MenuItem719: TMenuItem;
    MenuItem720: TMenuItem;
    MenuItem721: TMenuItem;
    MenuItem722: TMenuItem;
    MenuItem723: TMenuItem;
    MenuItem724: TMenuItem;
    MenuItem725: TMenuItem;
    MenuItem726: TMenuItem;
    N72: TMenuItem;
    mnuSendSMSF: TMenuItem;
    N13: TMenuItem;
    N97: TMenuItem;
    N106: TMenuItem;
    N135: TMenuItem;
    N191: TMenuItem;
    new1: TMenuItem;
    N236: TMenuItem;
    N252: TMenuItem;
    N260: TMenuItem;
    N261: TMenuItem;
    mnuMainTaskListF: TMenuItem;
    N263: TMenuItem;
    vjMenuWorkFlow: TMenuItem;
    N299: TMenuItem;
    N751: TMenuItem;
    m76: TMenuItem;
    actCustomerCheckListF1: TMenuItem;
    SOWT1: TMenuItem;
    N300: TMenuItem;
    SWOT5: TMenuItem;
    mnuCashReport: TMenuItem;
    mnuMarketingForms: TMenuItem;
    N301: TMenuItem;
    N320: TMenuItem;
    N330: TMenuItem;
    N345: TMenuItem;
    N346: TMenuItem;
    N347: TMenuItem;
    N348: TMenuItem;
    N349: TMenuItem;
    N350: TMenuItem;
    N351: TMenuItem;
    mnuReciptsImport: TMenuItem;
    mnuExcel1: TMenuItem;
    mniFormDesignF77: TMenuItem;
    N353: TMenuItem;
    N355: TMenuItem;
    N54541: TMenuItem;
    N357: TMenuItem;
    N358: TMenuItem;
    N359: TMenuItem;
    N356: TMenuItem;
    mnuArtworks: TMenuItem;
    mnuMakeDesignFormsF: TMenuItem;
    F5040F1: TMenuItem;
    N367: TMenuItem;
    N369: TMenuItem;
    N370: TMenuItem;
    N371: TMenuItem;
    mnuRatings: TMenuItem;
    N373: TMenuItem;
    N374: TMenuItem;
    N375: TMenuItem;
    mnuThemes: TMenuItem;
    N376: TMenuItem;
    mnuSpecialAccDetailOnTopicBookF1: TMenuItem;
    N372: TMenuItem;
    N378: TMenuItem;
    N379: TMenuItem;
    N381: TMenuItem;
    N382: TMenuItem;
    N384: TMenuItem;
    mnuChangeCustIDF: TMenuItem;
    N385: TMenuItem;
    mnuReviewOrders: TMenuItem;
    ProjectCard1: TMenuItem;
    mnuInventoryByBarcode: TMenuItem;
    N386: TMenuItem;
    mnuReviewRequestsF: TMenuItem;
    N387: TMenuItem;
    mnuGroupReciptPostF: TMenuItem;
    N44: TMenuItem;
    N388: TMenuItem;
    N390: TMenuItem;
    mnurptCustomersBalance2F: TMenuItem;
    mnu15Assets: TMainMenu;
    vjMenuAssets: TMenuItem;
    MenuItem44: TMenuItem;
    MenuItem47: TMenuItem;
    MenuItem48: TMenuItem;
    MenuItem86: TMenuItem;
    MenuItem147: TMenuItem;
    MenuItem148: TMenuItem;
    MenuItem152: TMenuItem;
    MenuItem153: TMenuItem;
    MenuItem154: TMenuItem;
    N25631: TMenuItem;
    MenuItem159: TMenuItem;
    MenuItem164: TMenuItem;
    MenuItem189: TMenuItem;
    mnuInfo: TMenuItem;
    MenuItem284: TMenuItem;
    mnuKartDarayi: TMenuItem;
    mnuRptAmval: TMenuItem;
    MenuItem298: TMenuItem;
    mnuExpense: TMenuItem;
    MenuItem300: TMenuItem;
    MenuItem301: TMenuItem;
    mnuSumCard: TMenuItem;
    MenuItem305: TMenuItem;
    mnuDecrease: TMenuItem;
    MenuItem321: TMenuItem;
    MenuItem329: TMenuItem;
    mnuMovement: TMenuItem;
    mnuN11: TMenuItem;
    MenuItem359: TMenuItem;
    MenuItem378: TMenuItem;
    MenuItem380: TMenuItem;
    MenuItem381: TMenuItem;
    MenuItem383: TMenuItem;
    MenuItem394: TMenuItem;
    MenuItem395: TMenuItem;
    MenuItem396: TMenuItem;
    MenuItem400: TMenuItem;
    MenuItem401: TMenuItem;
    mnuAssetsReport: TMenuItem;
    MenuItem402: TMenuItem;
    MenuItem403: TMenuItem;
    MenuItem404: TMenuItem;
    MenuItem405: TMenuItem;
    MenuItem406: TMenuItem;
    MenuItem407: TMenuItem;
    MenuItem408: TMenuItem;
    MenuItem413: TMenuItem;
    MenuItem415: TMenuItem;
    MenuItem463: TMenuItem;
    MenuItem464: TMenuItem;
    MenuItem468: TMenuItem;
    MenuItem491: TMenuItem;
    MenuItem492: TMenuItem;
    MenuItem496: TMenuItem;
    MenuItem519: TMenuItem;
    actMultiReport1: TMenuItem;
    N391: TMenuItem;
    N392: TMenuItem;
    Excel1: TMenuItem;
    mnuAllCheckInFormsF17: TMenuItem;
    mnuRptReciptsRegulatesF: TMenuItem;
    Mnu16Laboratory: TMainMenu;
    MenuItem224: TMenuItem;
    MenuItem225: TMenuItem;
    MenuItem252: TMenuItem;
    MenuItem409: TMenuItem;
    MenuItem412: TMenuItem;
    MenuItem523: TMenuItem;
    MenuItem524: TMenuItem;
    MenuItem525: TMenuItem;
    MenuItem526: TMenuItem;
    MenuItem527: TMenuItem;
    MenuItem529: TMenuItem;
    MenuItem530: TMenuItem;
    MenuItem531: TMenuItem;
    MenuItem532: TMenuItem;
    MenuItem533: TMenuItem;
    MenuItem534: TMenuItem;
    MenuItem535: TMenuItem;
    MenuItem536: TMenuItem;
    MenuItem537: TMenuItem;
    MenuItem538: TMenuItem;
    MenuItem541: TMenuItem;
    MenuItem542: TMenuItem;
    MenuItem546: TMenuItem;
    MenuItem547: TMenuItem;
    MenuItem548: TMenuItem;
    MenuItem549: TMenuItem;
    MenuItem550: TMenuItem;
    MenuItem551: TMenuItem;
    MenuItem567: TMenuItem;
    MenuItem570: TMenuItem;
    MenuItem571: TMenuItem;
    MenuItem584: TMenuItem;
    MenuItem605: TMenuItem;
    MenuItem624: TMenuItem;
    MenuItem632: TMenuItem;
    MenuItem633: TMenuItem;
    MenuItem636: TMenuItem;
    MenuItem637: TMenuItem;
    MenuItem645: TMenuItem;
    MenuItem646: TMenuItem;
    MenuItem647: TMenuItem;
    MenuItem648: TMenuItem;
    MenuItem649: TMenuItem;
    MenuItem650: TMenuItem;
    MenuItem651: TMenuItem;
    MenuItem652: TMenuItem;
    MenuItem653: TMenuItem;
    MenuItem654: TMenuItem;
    MenuItem655: TMenuItem;
    MenuItem656: TMenuItem;
    MenuItem657: TMenuItem;
    MenuItem658: TMenuItem;
    MenuItem659: TMenuItem;
    MenuItem660: TMenuItem;
    MenuItem661: TMenuItem;
    MenuItem662: TMenuItem;
    MenuItem663: TMenuItem;
    MenuItem664: TMenuItem;
    MenuItem665: TMenuItem;
    MenuItem671: TMenuItem;
    MenuItem673: TMenuItem;
    MenuItem678: TMenuItem;
    MenuItem679: TMenuItem;
    MenuItem680: TMenuItem;
    MenuItem681: TMenuItem;
    MenuItem682: TMenuItem;
    MenuItem683: TMenuItem;
    MenuItem684: TMenuItem;
    MenuItem685: TMenuItem;
    MenuItem686: TMenuItem;
    MenuItem687: TMenuItem;
    MenuItem688: TMenuItem;
    MenuItem689: TMenuItem;
    MenuItem690: TMenuItem;
    MenuItem691: TMenuItem;
    MenuItem692: TMenuItem;
    MenuItem693: TMenuItem;
    MenuItem694: TMenuItem;
    MenuItem695: TMenuItem;
    MenuItem696: TMenuItem;
    MenuItem727: TMenuItem;
    MenuItem730: TMenuItem;
    MenuItem750: TMenuItem;
    MenuItem751: TMenuItem;
    MenuItem770: TMenuItem;
    MenuItem774: TMenuItem;
    N394: TMenuItem;
    N398: TMenuItem;
    N400: TMenuItem;
    mnuGeneralRegistrationF: TMenuItem;
    N405: TMenuItem;
    N406: TMenuItem;
    MnurptMatrixBalance: TMenuItem;
    N408: TMenuItem;
    N409: TMenuItem;
    N412: TMenuItem;
    N414: TMenuItem;
    N415: TMenuItem;
    N416: TMenuItem;
    N417: TMenuItem;
    N419: TMenuItem;
    N418: TMenuItem;
    mniFormDesignF92: TMenuItem;
    N423: TMenuItem;
    N424: TMenuItem;
    mnuExcelConflictF: TMenuItem;
    IMEI1: TMenuItem;
    N427: TMenuItem;
    CreateMDIForm2TrptCompareCountEntityFrptCompareCountEntityFSelf1: TMenuItem;
    N426: TMenuItem;
    N428: TMenuItem;
    N429: TMenuItem;
    N430: TMenuItem;
    N431: TMenuItem;
    mnuRptTrialBalance_Details: TMenuItem;
    N433: TMenuItem;
    GetAllReciptFromExlF1: TMenuItem;
    MnuStereotypy: TMenuItem;
    N435: TMenuItem;
    Mnu17Acc: TMainMenu;
    MnuAcc_vjMenu_acc: TMenuItem;
    MnuAcc_AccTopicLevel: TMenuItem;
    MnuAcc_ActDocTypesF1: TMenuItem;
    MnuAcc_ActFormInfo1F1: TMenuItem;
    MnuAcc_N50: TMenuItem;
    MnuAcc_N4: TMenuItem;
    MnuAcc_CleanDataBase: TMenuItem;
    MnuAcc_mnuvije: TMenuItem;
    MnuAcc_actCnPrefixWizard: TMenuItem;
    MnuAcc_MangeAcc: TMenuItem;
    MnuAcc_Companies: TMenuItem;
    MnuAcc_ImportDocGroups: TMenuItem;
    MnuAcc_N44: TMenuItem;
    MnuAcc_MnuEftetamieh: TMenuItem;
    MnuAcc_EndExpence: TMenuItem;
    MnuAcc_MnuEkhtetamieh: TMenuItem;
    MnuAcc_N27: TMenuItem;
    MnuAcc_N134: TMenuItem;
    MnuAcc_N13: TMenuItem;
    MnuAcc_ConfigAcc: TMenuItem;
    MnuAcc_MnuAccCoding: TMenuItem;
    MnuAcc_MnuCategories_1: TMenuItem;
    MnuAcc_MnuAccCode2_2: TMenuItem;
    MnuAcc_actCode2: TMenuItem;
    MnuAcc_Mnu_AccCode3: TMenuItem;
    MnuAcc_N1: TMenuItem;
    MnuAcc__DetailGroup: TMenuItem;
    MnuAcc_Details: TMenuItem;
    MnuAcc_N17: TMenuItem;
    MnuAcc_N124: TMenuItem;
    MnuAcc_AllDocuments: TMenuItem;
    MnuAcc_Document: TMenuItem;
    MnuAcc_DocGroup: TMenuItem;
    MnuAcc_N73: TMenuItem;
    MnuAcc_MnuMonthDocs: TMenuItem;
    MnuAcc_MnuDailyDocs: TMenuItem;
    MnuAcc_N7: TMenuItem;
    MnuAcc_actCnPrefixWizard5: TMenuItem;
    MnuAcc_N11: TMenuItem;
    MnuAcc_DescTemp: TMenuItem;
    MnuAcc_DocTypes: TMenuItem;
    MnuAcc_Offices: TMenuItem;
    MnuAcc_MnuAccBook_1: TMenuItem;
    MnuAcc_MnuAccBook_2: TMenuItem;
    MnuAcc_actCnPrefixWizard6: TMenuItem;
    MnuAcc_MnuAccBook_4: TMenuItem;
    MnuAcc_N24: TMenuItem;
    MnuAcc_actBooksDetail: TMenuItem;
    MnuAcc_N25: TMenuItem;
    MnuAcc_MnuAllCtopicsBook: TMenuItem;
    MnuAcc_Mnu_RptCtopicBookOnAcc: TMenuItem;
    MnuAcc_Mnu_RptCtopicBookOnDetail: TMenuItem;
    MnuAcc_OfficeCtopic2: TMenuItem;
    MnuAcc_aa1: TMenuItem;
    MnuAcc_N42: TMenuItem;
    MnuAcc_N188: TMenuItem;
    MnuAcc_N189: TMenuItem;
    MnuAcc_N190: TMenuItem;
    MnuAcc_N29: TMenuItem;
    MnuAcc_N30: TMenuItem;
    MnuAcc_N70: TMenuItem;
    MnuAcc_MnuLow: TMenuItem;
    MnuAcc_MnuGeneralJornal: TMenuItem;
    MnuAcc_MnuLedger: TMenuItem;
    MnuAcc_N46: TMenuItem;
    MnuAcc_MnuTrialBalance: TMenuItem;
    MnuAcc_MnuTRialBalanceAcc_1: TMenuItem;
    MnuAcc_MnuTRialBalanceAcc_2: TMenuItem;
    MnuAcc_MnuTRialBalanceAcc_3: TMenuItem;
    MnuAcc_MnuTRialBalanceAcc_4: TMenuItem;
    MnuAcc_N38: TMenuItem;
    MnuAcc_TarazDetail: TMenuItem;
    MnuAcc_N40: TMenuItem;
    MnuAcc_MnuTRialBalanceCtopic_1: TMenuItem;
    MnuAcc_N112: TMenuItem;
    MnuAcc_N130: TMenuItem;
    MnuAcc_MnuTRialBalanceCtopic_2: TMenuItem;
    MnuAcc_N113: TMenuItem;
    MnuAcc_N109: TMenuItem;
    MnuAcc_N123: TMenuItem;
    MnuAcc_N187: TMenuItem;
    MnuAcc_N1210: TMenuItem;
    MnuAcc_N41: TMenuItem;
    MnuAcc_rptAnalyzeBalance: TMenuItem;
    MnuAcc_specialTrialBalance: TMenuItem;
    MnuAcc_N185: TMenuItem;
    MnuAcc_MnuTrialBalance_SomeClumn: TMenuItem;
    MnuAcc_MnuBalace_SomeColumn_acc_1_1: TMenuItem;
    MnuAcc_MnuBalace_SomeColumn_acc_1_2: TMenuItem;
    MnuAcc_MnuBalace_SomeColumn_acc_1_3: TMenuItem;
    MnuAcc_N3: TMenuItem;
    MnuAcc_MnuBalace_SomeColumn_acc_2_1: TMenuItem;
    MnuAcc_MnuBalace_SomeColumn_acc_2_2: TMenuItem;
    MnuAcc_MnuBalace_SomeColumn_acc_2_3: TMenuItem;
    MnuAcc_N2: TMenuItem;
    MnuAcc_N12: TMenuItem;
    MnuAcc_N21: TMenuItem;
    MnuAcc_N31: TMenuItem;
    MnuAcc_N181: TMenuItem;
    MnuAcc_BalanceLevel4_1: TMenuItem;
    MnuAcc_BalanceLevel4_2: TMenuItem;
    MnuAcc_BalanceLevel4_3: TMenuItem;
    MnuAcc_N5: TMenuItem;
    MnuAcc_MnuBalace_SomeColumn_Detail_1: TMenuItem;
    MnuAcc_MnuBalace_SomeColumn_Detail_2: TMenuItem;
    MnuAcc_MnuBalace_SomeColumn_Detail_3: TMenuItem;
    MnuAcc_N129: TMenuItem;
    MnuAcc_Ctopic: TMenuItem;
    MnuAcc_N131: TMenuItem;
    MnuAcc_N132: TMenuItem;
    MnuAcc_N194: TMenuItem;
    MnuAcc_N196: TMenuItem;
    MnuAcc_N197: TMenuItem;
    MnuAcc_N198: TMenuItem;
    MnuAcc_Systems: TMenuItem;
    MnuAcc_MnuUserList: TMenuItem;
    MnuAcc_N52: TMenuItem;
    MnuAcc_MnuIcon: TMenuItem;
    MnuAcc_actCnPrefixWizard11: TMenuItem;
    MnuAcc_MnuChooseMalyYear: TMenuItem;
    MnuAcc_N33: TMenuItem;
    MnuAcc_MnuAllBackUp: TMenuItem;
    MnuAcc_MnuBackUp: TMenuItem;
    MnuAcc_MnuBackUpCd: TMenuItem;
    MnuAcc_N14: TMenuItem;
    MnuAcc_MnuOption: TMenuItem;
    MnuAcc_N35: TMenuItem;
    MnuAcc_MnuWindow: TMenuItem;
    MnuAcc_MnuTogether: TMenuItem;
    MnuAcc_Kashi: TMenuItem;
    MnuAcc_actCnPrefixWizard12: TMenuItem;
    MnuAcc_MnuAbout: TMenuItem;
    MnuAcc_N19: TMenuItem;
    MnuAcc_MnuClose: TMenuItem;
    Mnu18Budget: TMainMenu;
    MnuAcc_vjMenu_budject: TMenuItem;
    MnuAcc_119: TMenuItem;
    MnuAcc_120: TMenuItem;
    MnuAcc_121: TMenuItem;
    MnuAcc_122: TMenuItem;
    MnuAcc_123: TMenuItem;
    MnuAcc_124: TMenuItem;
    MnuAcc_actCnPrefixWizard15: TMenuItem;
    MnuAcc_BudgetMange: TMenuItem;
    MnuAcc_MnuBudgetLevel: TMenuItem;
    MnuAcc_N28: TMenuItem;
    MnuAcc_125: TMenuItem;
    MnuAcc_126: TMenuItem;
    MnuAcc_N68: TMenuItem;
    MnuAcc_Sanama: TMenuItem;
    MnuAcc_ContrastAccountSanama: TMenuItem;
    MnuAcc_SendSanama: TMenuItem;
    MnuAcc_BudgetCoding: TMenuItem;
    MnuAcc_127: TMenuItem;
    MnuAcc_Utility: TMenuItem;
    MnuAcc_N175: TMenuItem;
    MnuAcc_j1: TMenuItem;
    MnuAcc_N178: TMenuItem;
    MnuAcc_N176: TMenuItem;
    MnuAcc_g1: TMenuItem;
    MnuAcc_Request: TMenuItem;
    acc_budgetReport: TMenuItem;
    MnuAcc_N186: TMenuItem;
    MnuAcc_N180: TMenuItem;
    MnuAcc_N179: TMenuItem;
    MnuAcc_N182: TMenuItem;
    MnuAcc_128: TMenuItem;
    MnuAcc_129: TMenuItem;
    MnuAcc_N122: TMenuItem;
    MnuAcc_N125: TMenuItem;
    MnuAcc_130: TMenuItem;
    MnuAcc_131: TMenuItem;
    MnuAcc_132: TMenuItem;
    MnuAcc_133: TMenuItem;
    MnuAcc_134: TMenuItem;
    MnuAcc_N121: TMenuItem;
    MnuAcc_135: TMenuItem;
    MnuAcc_HELP2: TMenuItem;
    MnuAcc_N88: TMenuItem;
    MnuAcc_N89: TMenuItem;
    MnuAcc_N90: TMenuItem;
    MnuAcc_N177: TMenuItem;
    MnuAcc_136: TMenuItem;
    Mnu19Finalcial: TMainMenu;
    MnuAcc_vjMenu_financial: TMenuItem;
    MnuAcc_137: TMenuItem;
    MnuAcc_138: TMenuItem;
    MnuAcc_139: TMenuItem;
    MnuAcc_140: TMenuItem;
    MnuAcc_141: TMenuItem;
    MnuAcc_142: TMenuItem;
    MnuAcc_FTP3: TMenuItem;
    MnuAcc_143: TMenuItem;
    MnuAcc_144: TMenuItem;
    MnuAcc_145: TMenuItem;
    MnuAcc_146: TMenuItem;
    MnuAcc_147: TMenuItem;
    MnuAcc_Financial_1: TMenuItem;
    MnuAcc_Financial_2: TMenuItem;
    MnuAcc_Financial_3: TMenuItem;
    MnuAcc_148: TMenuItem;
    MnuAcc_Financial_4: TMenuItem;
    MnuAcc_Financial_5: TMenuItem;
    MnuAcc_149: TMenuItem;
    MnuAcc_Financial_All: TMenuItem;
    Acc_financial: TMenuItem;
    MnuAcc_Acc_11: TMenuItem;
    MnuAcc_N8: TMenuItem;
    MnuAcc_N9: TMenuItem;
    MnuAcc_N10: TMenuItem;
    MnuAcc_N15: TMenuItem;
    MnuAcc_N16: TMenuItem;
    MnuAcc__Financial_rpt: TMenuItem;
    MnuAcc_150: TMenuItem;
    MnuAcc_151: TMenuItem;
    MnuAcc_152: TMenuItem;
    MnuAcc_153: TMenuItem;
    MnuAcc_154: TMenuItem;
    MnuAcc_155: TMenuItem;
    MnuAcc_156: TMenuItem;
    MnuAcc_157: TMenuItem;
    MnuAcc_Help3: TMenuItem;
    MnuAcc_N85: TMenuItem;
    MnuAcc_N86: TMenuItem;
    MnuAcc_N87: TMenuItem;
    MnuAcc_158: TMenuItem;
    Mnu21SpecialReport: TMainMenu;
    MnuAcc_vjMenu_special: TMenuItem;
    MnuAcc_N99: TMenuItem;
    MnuAcc_N100: TMenuItem;
    MnuAcc_178: TMenuItem;
    MnuAcc_179: TMenuItem;
    MnuAcc_180: TMenuItem;
    MnuAcc_FTP6: TMenuItem;
    MnuAcc_181: TMenuItem;
    MnuAcc_N69: TMenuItem;
    MnuAcc_N94: TMenuItem;
    MnuAcc_N115: TMenuItem;
    MnuAcc_UserTopicRelated: TMenuItem;
    MnuAcc_N195: TMenuItem;
    MnuAcc_UserDetailGroup: TMenuItem;
    MnuAcc_UserDetailRelated: TMenuItem;
    MnuAcc_MnuUserDetailRelated2F: TMenuItem;
    MnuAcc_N74: TMenuItem;
    MnuAcc_N135: TMenuItem;
    MnuAcc_N137: TMenuItem;
    MnuAcc_N138: TMenuItem;
    MnuAcc_N136: TMenuItem;
    MnuAcc_N139: TMenuItem;
    MnuAcc_MnuN194: TMenuItem;
    MnuAcc_VU_Finacial_st: TMenuItem;
    MnuAcc_Expense: TMenuItem;
    MnuAcc_N141: TMenuItem;
    MnuAcc_N142: TMenuItem;
    MnuAcc_N145: TMenuItem;
    MnuAcc_N143: TMenuItem;
    MnuAcc_N144: TMenuItem;
    MnuAcc_N103: TMenuItem;
    MnuAcc_N108: TMenuItem;
    MnuAcc_n102: TMenuItem;
    MnuAcc_N104: TMenuItem;
    MnuAcc_MnuRptJournal: TMenuItem;
    MnuAcc_N114: TMenuItem;
    MnuAcc_Compare: TMenuItem;
    MnuAcc_N116: TMenuItem;
    MnuAcc_N117: TMenuItem;
    MnuAcc_N118: TMenuItem;
    MnuAcc_N119: TMenuItem;
    MnuAcc__special_1: TMenuItem;
    MnuAcc_RptAccMonth_1: TMenuItem;
    MnuAcc_RptAccMonth_2: TMenuItem;
    MnuAcc_RptAccMonth_3: TMenuItem;
    MnuAcc_N20: TMenuItem;
    MnuAcc_RptAcc_DetailMonth: TMenuItem;
    MnuAcc_RptAcc_CTopicMonth_1: TMenuItem;
    MnuAcc_N211: TMenuItem;
    MnuAcc_N65: TMenuItem;
    MnuAcc_N49: TMenuItem;
    MnuAcc_N67: TMenuItem;
    MnuAcc_N66: TMenuItem;
    MnuAcc_N91: TMenuItem;
    MnuAcc_YearsTest: TMenuItem;
    MnuAcc_N6: TMenuItem;
    MnuAcc_N101: TMenuItem;
    acc_special_otherReport: TMenuItem;
    MnuAcc_N126: TMenuItem;
    MnuAcc_ChangeCodeDoc: TMenuItem;
    MnuAcc_N47: TMenuItem;
    MnuAcc_N170: TMenuItem;
    MnuAcc_N158: TMenuItem;
    MnuAcc_N96: TMenuItem;
    MnuAcc_N146: TMenuItem;
    MnuAcc_N147: TMenuItem;
    MnuAcc_N106: TMenuItem;
    MnuAcc_166: TMenuItem;
    MnuAcc_N183: TMenuItem;
    MnuAcc_N184: TMenuItem;
    MnuAcc_Action: TMenuItem;
    MnuAcc_N148: TMenuItem;
    MnuAcc_N171: TMenuItem;
    MnuAcc_N151: TMenuItem;
    MnuAcc_N149: TMenuItem;
    MnuAcc_N150: TMenuItem;
    MnuAcc_N169: TMenuItem;
    MnuAcc_N172: TMenuItem;
    MnuAcc_N173: TMenuItem;
    MnuAcc_N174: TMenuItem;
    MnuAcc__manage_rpt: TMenuItem;
    MnuAcc_168: TMenuItem;
    MnuAcc_169: TMenuItem;
    MnuAcc_N32: TMenuItem;
    MnuAcc_170: TMenuItem;
    MnuAcc_actCnPrefixWizard20: TMenuItem;
    MnuAcc_171: TMenuItem;
    MnuAcc_172: TMenuItem;
    MnuAcc_173: TMenuItem;
    MnuAcc_174: TMenuItem;
    MnuAcc_N107: TMenuItem;
    MnuAcc_N79: TMenuItem;
    MnuAcc_N80: TMenuItem;
    MnuAcc_N81: TMenuItem;
    MnuAcc_Help4: TMenuItem;
    MnuAcc_175: TMenuItem;
    MnuAcc_N34: TMenuItem;
    MnuAcc_176: TMenuItem;
    MnuAcc_N140: TMenuItem;
    MnuAcc_177: TMenuItem;
    Mnu20Portion: TMainMenu;
    MnuAcc_vjMenu_portion: TMenuItem;
    MnuAcc_N97: TMenuItem;
    MnuAcc_N98: TMenuItem;
    MnuAcc_FTP5: TMenuItem;
    MnuAcc_N26: TMenuItem;
    MnuAcc_N62: TMenuItem;
    MnuAcc_N93: TMenuItem;
    MnuAcc_N37: TMenuItem;
    MnuAcc_N39: TMenuItem;
    MnuAcc_N212: TMenuItem;
    MnuAcc_N22: TMenuItem;
    MnuAcc_N23: TMenuItem;
    MnuAcc_s1: TMenuItem;
    MnuAcc_N110: TMenuItem;
    MnuAcc_N64: TMenuItem;
    MnuAcc_N63: TMenuItem;
    MnuAcc_N18: TMenuItem;
    MnuAcc_N43: TMenuItem;
    MnuAcc_N318: TMenuItem;
    MnuAcc_N210: TMenuItem;
    mnuAccPortion: TMenuItem;
    MnuAcc_N36: TMenuItem;
    MnuAcc_N61: TMenuItem;
    MnuAcc_N60: TMenuItem;
    MnuAcc_N57: TMenuItem;
    MnuAcc_N59: TMenuItem;
    MnuAcc_N58: TMenuItem;
    MnuAcc_CD1: TMenuItem;
    MnuAcc_N56: TMenuItem;
    MnuAcc_N55: TMenuItem;
    MnuAcc_N54: TMenuItem;
    MnuAcc_N53: TMenuItem;
    MnuAcc_N521: TMenuItem;
    MnuAcc_N51: TMenuItem;
    MnuAcc_Help6: TMenuItem;
    MnuAcc_N76: TMenuItem;
    MnuAcc_N77: TMenuItem;
    MnuAcc_N78: TMenuItem;
    MnuAcc_N48: TMenuItem;
    AddToolbarClick1: TMenuItem;
    MnuPay_vjMenu4: TMenuItem;
    MnuPay_128: TMenuItem;
    MnuPay_N199: TMenuItem;
    MnuPay_N200: TMenuItem;
    MnuPay_N234: TMenuItem;
    MnuPay_actCnPrefixWizard26: TMenuItem;
    MnuPay_ConfigFenter: TMenuItem;
    MnuPay_132: TMenuItem;
    MnuPay_133: TMenuItem;
    MnuPay_N33: TMenuItem;
    MnuPay_N8: TMenuItem;
    MnuPay_N26: TMenuItem;
    MnuSys: TMenuItem;
    MnuPay_N233: TMenuItem;
    MnuPay_N236: TMenuItem;
    MnuPay_137: TMenuItem;
    MnuPay_N106: TMenuItem;
    MnuPay_actCnPrefixWizard28: TMenuItem;
    MnuPay_AddToolbar: TMenuItem;
    MnuPay_actCnPrefixWizard29: TMenuItem;
    MnuPay_138: TMenuItem;
    MnuPay_N80: TMenuItem;
    MnuPay_N101: TMenuItem;
    MnuPay_139: TMenuItem;
    MnuPay_140: TMenuItem;
    MnuPay_141: TMenuItem;
    MnuPay_142: TMenuItem;
    MnuPay_Windows: TMenuItem;
    MnuPay_Tile0: TMenuItem;
    MnuPay_Cascade0: TMenuItem;
    MnuPay_actCnPrefixWizard30: TMenuItem;
    MnuPay_143: TMenuItem;
    MnuPay_N1: TMenuItem;
    MnuPay_144: TMenuItem;
    MainMenu0Schedule: TMainMenu;
    MnuPay_vjMenu0: TMenuItem;
    MnuPay_N124: TMenuItem;
    MnuPay_N123: TMenuItem;
    MnuPay_MItemOtherFormTypeScVijeh: TMenuItem;
    MnuPay_N1211: TMenuItem;
    MnuPay_N202: TMenuItem;
    MnuPay_N203: TMenuItem;
    MnuPay_N204: TMenuItem;
    MnuPay_N120: TMenuItem;
    MnuPay_actCnPrefixWizard46: TMenuItem;
    MnuPay_N119: TMenuItem;
    MnuPay_N134: TMenuItem;
    MnuPay_N133: TMenuItem;
    MnuPay_N132: TMenuItem;
    MnuPay_N131: TMenuItem;
    MnuPay_N125: TMenuItem;
    MnuPay_N188: TMenuItem;
    MnuPay_N189: TMenuItem;
    MnuPay_N190: TMenuItem;
    MnuPay_N112: TMenuItem;
    MnuPay_N149: TMenuItem;
    MnuPay_N148: TMenuItem;
    MnuPay_MItemSchedule5: TMenuItem;
    MnuPay_FormDesignF: TMenuItem;
    MnuPay_actCnPrefixWizard47: TMenuItem;
    MnuPay_AllFormDesignSalaryF: TMenuItem;
    MnuPay_N218: TMenuItem;
    MnuPay_N221: TMenuItem;
    MnuPay_N180: TMenuItem;
    MnuPay_N122: TMenuItem;
    MnuPay_N162: TMenuItem;
    MnuPay_N160: TMenuItem;
    MnuPay_actCnPrefixWizard48: TMenuItem;
    MnuPay_oolbar3: TMenuItem;
    MnuPay_actCnPrefixWizard49: TMenuItem;
    MnuPay_N161: TMenuItem;
    MnuPay_N154: TMenuItem;
    MnuPay_N147: TMenuItem;
    MnuPay_N150: TMenuItem;
    MnuPay_CD1: TMenuItem;
    MnuPay_N153: TMenuItem;
    MnuPay_N152: TMenuItem;
    MnuPay_N157: TMenuItem;
    MnuPay_N159: TMenuItem;
    MnuPay_N158: TMenuItem;
    MnuPay_actCnPrefixWizard50: TMenuItem;
    MnuPay_N145: TMenuItem;
    MnuPay_N143: TMenuItem;
    MnuPay_N128: TMenuItem;
    MainMenu1Organization: TMainMenu;
    MnuPay_vjMenu1: TMenuItem;
    MnuPay_N130: TMenuItem;
    MnuPay_N129: TMenuItem;
    MnuPay_MItemOtherFormTypeOVijeh: TMenuItem;
    MnuPay_N127: TMenuItem;
    MnuPay_N205: TMenuItem;
    MnuPay_N206: TMenuItem;
    MnuPay_N207: TMenuItem;
    MnuPay_N126: TMenuItem;
    MnuPay_actCnPrefixWizard51: TMenuItem;
    MnuPay_N136: TMenuItem;
    MnuPay_N141: TMenuItem;
    MnuPay_N140: TMenuItem;
    MnuPay_N139: TMenuItem;
    MnuPay_N138: TMenuItem;
    MnuPay_N137: TMenuItem;
    MnuPay_N191: TMenuItem;
    MnuPay_N192: TMenuItem;
    MnuPay_N193: TMenuItem;
    MnuPay_N113: TMenuItem;
    MnuPay_N156: TMenuItem;
    MnuPay_N182: TMenuItem;
    MnuPay_N155: TMenuItem;
    MnuPay_MItemOrganization4: TMenuItem;
    MnuPay_MItemOrganization2: TMenuItem;
    MnuPay_N151: TMenuItem;
    MnuPay_MItemOrganization5: TMenuItem;
    MnuPay_MItemOrganization6: TMenuItem;
    MnuPay_actCnPrefixWizard52: TMenuItem;
    MnuPay_N222: TMenuItem;
    MnuPay_N223: TMenuItem;
    MnuPay_N56: TMenuItem;
    MnuPay_actCnPrefixWizard53: TMenuItem;
    MnuPay_actCnPrefixWizard54: TMenuItem;
    MnuPay_N2321: TMenuItem;
    MnuPay_N2311: TMenuItem;
    MnuPay_actCnPrefixWizard55: TMenuItem;
    MnuPay_N2351: TMenuItem;
    MnuPay_actCnPrefixWizard56: TMenuItem;
    MnuPay_N2421: TMenuItem;
    MnuPay_N241: TMenuItem;
    MnuPay_N2401: TMenuItem;
    MnuPay_actCnPrefixWizard57: TMenuItem;
    MnuPay_N2381: TMenuItem;
    MnuPay_N2371: TMenuItem;
    MnuPay_N2361: TMenuItem;
    MnuPay_N208: TMenuItem;
    MnuPay_N2091: TMenuItem;
    MnuPay_N2101: TMenuItem;
    MnuPay_N2081: TMenuItem;
    MnuPay_N2111: TMenuItem;
    MnuPay_N2121: TMenuItem;
    MnuPay_N2131: TMenuItem;
    MnuPay_N2141: TMenuItem;
    MnuPay_N2151: TMenuItem;
    MnuPay_N181: TMenuItem;
    MnuPay_N163: TMenuItem;
    MnuPay_N179: TMenuItem;
    MnuPay_N177: TMenuItem;
    MnuPay_actCnPrefixWizard58: TMenuItem;
    MnuPay_oolbar4: TMenuItem;
    MnuPay_actCnPrefixWizard59: TMenuItem;
    MnuPay_N178: TMenuItem;
    MnuPay_N173: TMenuItem;
    MnuPay_N169: TMenuItem;
    MnuPay_N170: TMenuItem;
    MnuPay_CD2: TMenuItem;
    MnuPay_N172: TMenuItem;
    MnuPay_N171: TMenuItem;
    MnuPay_N168: TMenuItem;
    MnuPay_N174: TMenuItem;
    MnuPay_N176: TMenuItem;
    MnuPay_N175: TMenuItem;
    MnuPay_actCnPrefixWizard60: TMenuItem;
    MnuPay_N167: TMenuItem;
    MnuPay_N165: TMenuItem;
    MnuPay_N164: TMenuItem;
    MainMenu2Salary: TMainMenu;
    MnuPay_vjMenu2: TMenuItem;
    MnuPay_1: TMenuItem;
    MnuPay_145: TMenuItem;
    MnuPay_MItemOtherFormTypeSVijeh: TMenuItem;
    MnuPay_146: TMenuItem;
    MnuPay_N142: TMenuItem;
    MnuPay_N194: TMenuItem;
    MnuPay_N195: TMenuItem;
    MnuPay_WorkflowMainF: TMenuItem;
    MnuPay_N230: TMenuItem;
    MnuPay_147: TMenuItem;
    MnuPay_actCnPrefixWizard31: TMenuItem;
    MnuPay_148: TMenuItem;
    MnuPay_149: TMenuItem;
    MnuPay_150: TMenuItem;
    MnuPay_N99: TMenuItem;
    MnuPay_N74: TMenuItem;
    MnuPay_N226: TMenuItem;
    MnuPay_N52: TMenuItem;
    MnuPay_N1831: TMenuItem;
    MnuPay_151: TMenuItem;
    MnuPay_MakeMaliYear: TMenuItem;
    MnuPay_ERP1: TMenuItem;
    MnuPay_152: TMenuItem;
    MnuPay_153: TMenuItem;
    MnuPay_154: TMenuItem;
    MnuPay_MItemSalaryCalcS: TMenuItem;
    MnuPay_MItemInterdictEffectS: TMenuItem;
    MnuPay_MItemSalaryEffectS: TMenuItem;
    MnuPay_155: TMenuItem;
    MnuPay_MItemOtherFormTypeS: TMenuItem;
    MnuPay_MItemSalaryCorrelateS: TMenuItem;
    MnuPay_SalaryRanges: TMenuItem;
    MnuPay_156: TMenuItem;
    MnuPay_157: TMenuItem;
    MnuPay_N135: TMenuItem;
    MnuPay_2PersonelInfo: TMenuItem;
    MnuPay_actCnPrefixWizard33: TMenuItem;
    MnuPay_158: TMenuItem;
    MnuPay_PersonelSponsorshipF: TMenuItem;
    MnuPay_actCnPrefixWizard34: TMenuItem;
    MnuPay_159: TMenuItem;
    MnuPay_2InterdictsF: TMenuItem;
    MnuPay_InterdictsF49_1: TMenuItem;
    MnuPay_N11: TMenuItem;
    MnuPay_N15: TMenuItem;
    MnuPay_actCnPrefixWizard36: TMenuItem;
    MnuPay_N54: TMenuItem;
    MnuPay_Interdicts4HistoryF1: TMenuItem;
    MnuPay_N7: TMenuItem;
    MnuPay_Function_Mission: TMenuItem;
    MnuPay_FunctionsF: TMenuItem;
    MnuPay_Functions2F: TMenuItem;
    MnuPay_FunctionDayF: TMenuItem;
    MnuPay_FunctionDayChekF28: TMenuItem;
    MnuPay_FunctionDayChek2F28: TMenuItem;
    MnuPay_FunctionDayListF: TMenuItem;
    MnuPay_FunctionYearsF: TMenuItem;
    MnuPay_N118: TMenuItem;
    MnuPay_N87: TMenuItem;
    MnuPay_N14: TMenuItem;
    MnuPay_N210: TMenuItem;
    MnuPay_N77: TMenuItem;
    MnuPay_N40: TMenuItem;
    MnuPay_KartSaat_WinF: TMenuItem;
    MnuPay_KartSaatNewF0: TMenuItem;
    MnuPay_N70: TMenuItem;
    MnuPay_N90: TMenuItem;
    MnuPay_N209: TMenuItem;
    MnuPay_160: TMenuItem;
    MnuPay_161: TMenuItem;
    MnuPay_N211: TMenuItem;
    MnuPay_FunctionItemYearF: TMenuItem;
    MnuPay_162: TMenuItem;
    MnuPay_MissionF24: TMenuItem;
    MnuPay_actCnPrefixWizard40: TMenuItem;
    MnuPay_MissionInfo: TMenuItem;
    MnuPay_N102: TMenuItem;
    MnuPay_actCnPrefixWizard41: TMenuItem;
    MnuPay_TPersonelLeaveF16: TMenuItem;
    MnuPay_N9: TMenuItem;
    MnuPay_actCnPrefixWizard42: TMenuItem;
    MnuPay_AllDecExtOnMounthF: TMenuItem;
    MnuPay_N66: TMenuItem;
    MnuPay_N225: TMenuItem;
    MnuPay_N227: TMenuItem;
    MnuPay_DecExtOnMounthSeparationF: TMenuItem;
    MnuPay_N2301: TMenuItem;
    MnuPay_VacationOver9F: TMenuItem;
    MnuPay_163: TMenuItem;
    MnuPay_164: TMenuItem;
    MnuPay_N6: TMenuItem;
    MnuPay_165: TMenuItem;
    MnuPay_166: TMenuItem;
    MnuPay_RptCrossTab: TMenuItem;
    MnuPay_167: TMenuItem;
    MnuPay_168: TMenuItem;
    MnuPay_N18: TMenuItem;
    MnuPay_DetailInterdictListF13: TMenuItem;
    MnuPay_DetailInterdictListF8: TMenuItem;
    MnuPay_DetailInterdictListF12: TMenuItem;
    MnuPay_DetailInterdictListF27: TMenuItem;
    MnuPay_N64: TMenuItem;
    MnuPay_FunctionSpecialControlF: TMenuItem;
    MnuPay_N121: TMenuItem;
    SalaryOtherReportSalary: TMenuItem;
    MnuPay_169: TMenuItem;
    MnuPay_N232: TMenuItem;
    MnuPay_N237: TMenuItem;
    MnuPay_170: TMenuItem;
    MnuPay_User: TMenuItem;
    MnuPay_actCnPrefixWizard43: TMenuItem;
    MnuPay_oolbar1: TMenuItem;
    MnuPay_actCnPrefixWizard44: TMenuItem;
    MnuPay_171: TMenuItem;
    MnuPay_N82: TMenuItem;
    MnuPay_N103: TMenuItem;
    MnuPay_172: TMenuItem;
    MnuPay_173: TMenuItem;
    MnuPay_174: TMenuItem;
    MnuPay_175: TMenuItem;
    MnuPay_176: TMenuItem;
    MnuPay_177: TMenuItem;
    MnuPay_178: TMenuItem;
    MnuPay_actCnPrefixWizard45: TMenuItem;
    MnuPay_179: TMenuItem;
    MnuPay_N2: TMenuItem;
    MnuPay_180: TMenuItem;
    MainMenu3PayRoll: TMainMenu;
    MnuPay_vjMenu3: TMenuItem;
    MnuPay_11: TMenuItem;
    MnuPay_12: TMenuItem;
    MnuPay_MItemOtherFormTypePVijeh: TMenuItem;
    MnuPay_13: TMenuItem;
    MnuPay_N196: TMenuItem;
    MnuPay_N197: TMenuItem;
    MnuPay_N198: TMenuItem;
    MnuPay_14: TMenuItem;
    MnuPay_ArchiveInfoF2: TMenuItem;
    MnuPay_ArchiveInfo2F: TMenuItem;
    MnuPay_N231: TMenuItem;
    MnuPay_actCnPrefixWizard: TMenuItem;
    MnuPay_15: TMenuItem;
    MnuPay_17: TMenuItem;
    MnuPay_N76: TMenuItem;
    MnuPay_GetReprotsF0: TMenuItem;
    MnuPay_N32: TMenuItem;
    MnuPay_N111: TMenuItem;
    MnuPay_MnuRecallBranchF: TMenuItem;
    MnuPay_ShowWorkflowDefinitionsDlg: TMenuItem;
    MnuPay_19: TMenuItem;
    MnuPay_110: TMenuItem;
    MnuPay_N65: TMenuItem;
    MnuPay_MItemSalaryCalcP: TMenuItem;
    MnuPay_MItemInterdictEffectP: TMenuItem;
    MnuPay_MItemSalaryEffectP: TMenuItem;
    MnuPay_111: TMenuItem;
    MnuPay_MItemOtherFormTypeP: TMenuItem;
    MnuPay_MItemSalaryCorrelateP: TMenuItem;
    MnuPay_N71: TMenuItem;
    MnuPay_112: TMenuItem;
    MnuPay_113: TMenuItem;
    MnuPay_3PersonelInfo: TMenuItem;
    MnuPay_actCnPrefixWizard2: TMenuItem;
    MnuPay_N5: TMenuItem;
    MnuPay_PersonelAccountsF0: TMenuItem;
    MnuPay_N13: TMenuItem;
    MnuPay_3InterdictsF: TMenuItem;
    MnuPay_N39: TMenuItem;
    MnuPay_114: TMenuItem;
    MnuPay_actCnPrefixWizard4: TMenuItem;
    MnuPay_N25: TMenuItem;
    MnuPay_Interdicts4HistoryF: TMenuItem;
    MnuPay_N17: TMenuItem;
    MnuPay_actCnPrefixWizard5: TMenuItem;
    MnuPay_actCnPrefixWizard6: TMenuItem;
    MnuPay_N58: TMenuItem;
    MnuPay_actCnPrefixWizard7: TMenuItem;
    MnuPay_actCnPrefixWizard8: TMenuItem;
    MnuPay_PersonelFormInfo_1F: TMenuItem;
    MnuPay_N50: TMenuItem;
    MnuPay_EmployeeLoanItem: TMenuItem;
    MnuPay_actCnPrefixWizard9: TMenuItem;
    MnuPay_actCnPrefixWizard10: TMenuItem;
    MnuPay_PaymentLoanWithRemainf: TMenuItem;
    MnuPay_Loan: TMenuItem;
    MnuPay_N47: TMenuItem;
    MnuPay_MissionItemsF92: TMenuItem;
    MnuPay_N43: TMenuItem;
    MnuPay_dddd1: TMenuItem;
    MnuPay_N41: TMenuItem;
    MnuPay_actCnPrefixWizard11: TMenuItem;
    MnuPay_N12: TMenuItem;
    MnuPay_PersonelDecExtInfo_2F35: TMenuItem;
    MnuPay_PersonelFormInfo_1F31: TMenuItem;
    MnuPay_N35: TMenuItem;
    MnuPay_N37: TMenuItem;
    MnuPay_N38: TMenuItem;
    MnuPay_InsouranceOther2F: TMenuItem;
    MnuPay_N20: TMenuItem;
    MnuPay_N30: TMenuItem;
    MnuPay_N24: TMenuItem;
    MnuPay_N23: TMenuItem;
    MnuPay_N21: TMenuItem;
    MnuPay_MnuN120: TMenuItem;
    MnuPay_N73: TMenuItem;
    MnuPay_DecExtCalculateF: TMenuItem;
    MnuPay_DecExtCalculateFClick1: TMenuItem;
    MnuPay_MnuN119: TMenuItem;
    MnuPay_PersonelDecExt111F1: TMenuItem;
    MnuPay_N242: TMenuItem;
    MnuPay_N67: TMenuItem;
    MnuPay_actCnPrefixWizard12: TMenuItem;
    MnuPay_actCnPrefixWizard13: TMenuItem;
    MnuPay_N213: TMenuItem;
    MnuPay_actCnPrefixWizard14: TMenuItem;
    MnuPay_N212: TMenuItem;
    MnuPay_SalaryList_insurance2: TMenuItem;
    MnuPay_SalaryList4Office25F: TMenuItem;
    MnuPay_SalaryList4Office25_2F: TMenuItem;
    MnuPay_SalaryList4SumOfficeUnLimitF0: TMenuItem;
    MnuPay_N310: TMenuItem;
    MnuPay_N240: TMenuItem;
    MnuPay_N1210: TMenuItem;
    MnuPay_MnuSalaryList4GetReprots: TMenuItem;
    MnuPay_TSalaryList_insurancePartF1: TMenuItem;
    MnuPay_TSalaryList_insurancePartF2: TMenuItem;
    MnuPay_N1100: TMenuItem;
    MnuPay_N92: TMenuItem;
    MnuPay_SalaryList4Office2F: TMenuItem;
    MnuPay_SalaryList4OfficeUnLimitF: TMenuItem;
    MnuPay_N85: TMenuItem;
    MnuPay_SalaryListProjectGroupF00: TMenuItem;
    MnuPay_N22: TMenuItem;
    MnuPay_SalaryList4ProjectF00: TMenuItem;
    MnuPay_SalaryList4Office25MissionF00: TMenuItem;
    MnuPay_N79: TMenuItem;
    MnuPay_actCnPrefixWizard15: TMenuItem;
    MnuPay_ListSalaryKaroonF: TMenuItem;
    MnuPay_N96: TMenuItem;
    MnuPay_actCnPrefixWizard16: TMenuItem;
    MnuPay_SalaryList3colF: TMenuItem;
    MnuPay_N88: TMenuItem;
    MnuPay_actCnPrefixWizard17: TMenuItem;
    MnuPay_actCnPrefixWizard18: TMenuItem;
    MnuPay_actCnPrefixWizard19: TMenuItem;
    MnuPay_actCnPrefixWizard20: TMenuItem;
    MnuPay_SalaryListTaxF: TMenuItem;
    MnuPay_ListPensionerF60: TMenuItem;
    MnuPay_N224: TMenuItem;
    MnuPay_N229: TMenuItem;
    MnuPay_PersonelListPensionerF1: TMenuItem;
    MnuPay_N62: TMenuItem;
    MnuPay_RetardListSalary: TMenuItem;
    MnuPay_RetardSalaryList: TMenuItem;
    MnuPay_RetardSalaryListF2: TMenuItem;
    MnuPay_N60: TMenuItem;
    MnuPay_ListBimehNewF2: TMenuItem;
    MnuPay_RetardMakeBankDSK: TMenuItem;
    MnuPay_N84: TMenuItem;
    MnuPay_N114: TMenuItem;
    MnuPay_N83: TMenuItem;
    MnuPay_N248: TMenuItem;
    MnuPay_N68: TMenuItem;
    MnuPay_N249: TMenuItem;
    MnuPay_N228: TMenuItem;
    MnuPay_N2200: TMenuItem;
    MnuPay_N250: TMenuItem;
    MnuPay_SalaryOverTime: TMenuItem;
    MnuPay_N251: TMenuItem;
    MnuPay_actCnPrefixWizard21: TMenuItem;
    MnuPay_actCnPrefixWizard22: TMenuItem;
    MnuPay_oo1: TMenuItem;
    MnuPay_PersonelDecExtInfo_2F32: TMenuItem;
    MnuPay_N36: TMenuItem;
    MnuPay_N110: TMenuItem;
    MnuPay_N72: TMenuItem;
    MnuPay_PersonalTideF: TMenuItem;
    MnuPay_SalaryEndServiceF: TMenuItem;
    MnuPay_N146: TMenuItem;
    MnuPay_Interdicts4ItemsTideF: TMenuItem;
    MnuPay_N63: TMenuItem;
    MnuPay_PonyF0: TMenuItem;
    MnuPay_N239: TMenuItem;
    MnuPay_N51: TMenuItem;
    MnuPay_N100: TMenuItem;
    MnuPay_CalcAnnuityF: TMenuItem;
    SalaryOtherReportPay: TMenuItem;
    MnuPay_115: TMenuItem;
    MnuPay_MainTaskListF: TMenuItem;
    MnuPay_N238: TMenuItem;
    MnuPay_116: TMenuItem;
    MnuPay_N105: TMenuItem;
    MnuPay_actCnPrefixWizard23: TMenuItem;
    MnuPay_oolbar2: TMenuItem;
    MnuPay_actCnPrefixWizard24: TMenuItem;
    MnuPay_117: TMenuItem;
    MnuPay_118: TMenuItem;
    MnuPay_N104: TMenuItem;
    MnuPay_119: TMenuItem;
    MnuPay_120: TMenuItem;
    MnuPay_121: TMenuItem;
    MnuPay_N81: TMenuItem;
    MnuPay_Windows1: TMenuItem;
    MnuPay_122: TMenuItem;
    MnuPay_123: TMenuItem;
    MnuPay_actCnPrefixWizard25: TMenuItem;
    MnuPay_124: TMenuItem;
    MnuPay_N3: TMenuItem;
    MnuPay_125: TMenuItem;
    N436: TMenuItem;
    N437: TMenuItem;
    MnuRptTrialBalance_AccFin: TMenuItem;
    MnuCustomersProjectF: TMenuItem;
    N5: TMenuItem;
    N9: TMenuItem;
    MnuCustomers17: TMenuItem;
    N55: TMenuItem;
    N6: TMenuItem;
    N78: TMenuItem;
    N85: TMenuItem;
    Mnu26Government: TMainMenu;
    MenuItem6: TMenuItem;
    MenuItem19: TMenuItem;
    MenuItem21: TMenuItem;
    MenuItem22: TMenuItem;
    MenuItem852: TMenuItem;
    MenuItem853: TMenuItem;
    MenuItem974: TMenuItem;
    MenuItem975: TMenuItem;
    MenuItem976: TMenuItem;
    MenuItem977: TMenuItem;
    MenuItem978: TMenuItem;
    MenuItem979: TMenuItem;
    MenuItem980: TMenuItem;
    MenuItem981: TMenuItem;
    Mnu26RptGovernment: TMenuItem;
    MenuItem1018: TMenuItem;
    MenuItem1019: TMenuItem;
    MenuItem1020: TMenuItem;
    MenuItem1021: TMenuItem;
    MenuItem1022: TMenuItem;
    MenuItem1023: TMenuItem;
    MenuItem1024: TMenuItem;
    MenuItem1025: TMenuItem;
    MenuItem1026: TMenuItem;
    MenuItem1027: TMenuItem;
    MenuItem1028: TMenuItem;
    MenuItem1029: TMenuItem;
    MenuItem1030: TMenuItem;
    MenuItem1031: TMenuItem;
    MenuItem1032: TMenuItem;
    MenuItem1033: TMenuItem;
    MenuItem1034: TMenuItem;
    MenuItem1035: TMenuItem;
    MenuItem1036: TMenuItem;
    MenuItem1037: TMenuItem;
    MenuItem1038: TMenuItem;
    MenuItem1039: TMenuItem;
    MenuItem1040: TMenuItem;
    MenuItem1041: TMenuItem;
    MenuItem1042: TMenuItem;
    MenuItem1043: TMenuItem;
    MenuItem1044: TMenuItem;
    MenuItem1046: TMenuItem;
    MenuItem1047: TMenuItem;
    N7: TMenuItem;
    N37: TMenuItem;
    N86: TMenuItem;
    N93: TMenuItem;
    N108: TMenuItem;
    N132: TMenuItem;
    N134: TMenuItem;
    N152: TMenuItem;
    log1: TMenuItem;
    Timer2: TTimer;
    MnuTaxTabel: TMenuItem;
    MnuInsurance: TMenuItem;
    N163: TMenuItem;
    N168: TMenuItem;
    N177: TMenuItem;
    mnuSpCustomerTransaction11: TMenuItem;
    mnuForwards2FFClick1: TMenuItem;
    N208: TMenuItem;
    N209: TMenuItem;
    N213: TMenuItem;
    mnuCustomersBalanceF3: TMenuItem;
    N215: TMenuItem;
    MnuGetFirstDepTable: TMenuItem;
    N216: TMenuItem;
    N218: TMenuItem;
    N223: TMenuItem;
    N256: TMenuItem;
    actCntContractsF1: TMenuItem;
    N159: TMenuItem;
    N257: TMenuItem;
    N352: TMenuItem;
    N107: TMenuItem;
    N148: TMenuItem;
    N151: TMenuItem;
    N219: TMenuItem;
    N222: TMenuItem;
    N88: TMenuItem;
    N96: TMenuItem;
    N149: TMenuItem;
    N217: TMenuItem;
    MakeDesignForms1: TMenuItem;
    N80: TMenuItem;
    N90: TMenuItem;
    N158: TMenuItem;
    MnuCustomers: TMenuItem;
    N364: TMenuItem;
    N377: TMenuItem;
    N380: TMenuItem;
    N314: TMenuItem;
    N316: TMenuItem;
    N383: TMenuItem;
    N389: TMenuItem;
    N395: TMenuItem;
    N396: TMenuItem;
    N397: TMenuItem;
    N399: TMenuItem;
    N401: TMenuItem;
    N402: TMenuItem;
    N143: TMenuItem;
    N104: TMenuItem;
    MnuGetFirstEntityFClick1: TMenuItem;
    N105: TMenuItem;
    N160: TMenuItem;
    N354: TMenuItem;
    N365: TMenuItem;
    N366: TMenuItem;
    N368: TMenuItem;
    N393: TMenuItem;
    N403: TMenuItem;
    N404: TMenuItem;
    Acc_CurrencyReport: TMenuItem;
    N360: TMenuItem;
    BOM1: TMenuItem;
    N361: TMenuItem;
    N362: TMenuItem;
    N363: TMenuItem;
    N410: TMenuItem;
    N411: TMenuItem;
    N413: TMenuItem;
    N420: TMenuItem;
    N421: TMenuItem;
    N422: TMenuItem;
    N425: TMenuItem;
    N432: TMenuItem;
    N434: TMenuItem;
    N439: TMenuItem;
    N442: TMenuItem;
    MnuFindMenuInfoF: TMenuItem;
    MnuSetMakeReport: TMenuItem;
    N443: TMenuItem;
    N444: TMenuItem;
    N445: TMenuItem;
    N446: TMenuItem;
    FTP1: TMenuItem;
    N447: TMenuItem;
    N438: TMenuItem;
    N448: TMenuItem;
    FTP2: TMenuItem;
    N449: TMenuItem;
    N450: TMenuItem;
    N451: TMenuItem;
    N452: TMenuItem;
    N453: TMenuItem;
    N454: TMenuItem;
    N455: TMenuItem;
    Mnufeedback: TMenuItem;
    MnuFeedBackList: TMenuItem;
    MnuStuffTransactionDateF: TMenuItem;
    N456: TMenuItem;
    MnuImportData: TMenuItem;
    MnuPay_Function4ProjectPersonF1: TMenuItem;
    N407: TMenuItem;
    N440: TMenuItem;
    N441: TMenuItem;
    N457: TMenuItem;
    N458: TMenuItem;
    N459: TMenuItem;
    N460: TMenuItem;
    N461: TMenuItem;
    N462: TMenuItem;
    N463: TMenuItem;
    N464: TMenuItem;
    mnuListBimehRetired: TMenuItem;
    N465: TMenuItem;
    N466: TMenuItem;
    N467: TMenuItem;
    N468: TMenuItem;
    mnuCustomersNotUseF: TMenuItem;
    N470: TMenuItem;
    N469: TMenuItem;
    N471: TMenuItem;
    mnuIntegratingAcc2FaraF: TMenuItem;
    N472: TMenuItem;
    Accounting1: TMenuItem;
    N473: TMenuItem;
    mnurptCustomersBalance20: TMenuItem;
    mnuShowMaliYear01: TMenuItem;
    mnuShowMaliYear02: TMenuItem;
    mnuShowMaliYear03: TMenuItem;
    mnuShowMaliYear04: TMenuItem;
    mnuShowMaliYear05: TMenuItem;
    mnuShowMaliYear06: TMenuItem;
    mnuShowMaliYear07: TMenuItem;
    mnuShowMaliYear08: TMenuItem;
    mnuShowMaliYear09: TMenuItem;
    mnuShowMaliYear10: TMenuItem;
    mnuShowMaliYear11: TMenuItem;
    mnuShowMaliYear12: TMenuItem;
    mnuShowMaliYear13: TMenuItem;
    mnuShowMaliYear14: TMenuItem;
    mnuShowMaliYear15: TMenuItem;
    mnuShowMaliYear16: TMenuItem;
    mnuShowMaliYear17: TMenuItem;
    mnuShowMaliYear18: TMenuItem;
    mnuShowMaliYear19: TMenuItem;
    mnuShowMaliYear20: TMenuItem;
    mnuShowMaliYear21: TMenuItem;
    mnuShowMaliYear22: TMenuItem;
    mnuShowMaliYear23: TMenuItem;
    mnuShowMaliYear24: TMenuItem;
    mnuShowMaliYear25: TMenuItem;
    N477: TMenuItem;
    N479: TMenuItem;
    N481: TMenuItem;
    N483: TMenuItem;
    mnuCashReport2: TMenuItem;
    N474: TMenuItem;
    N475: TMenuItem;
    N476: TMenuItem;
    N478: TMenuItem;
    N480: TMenuItem;
    Panel1: TPanel;
    statMain: TsStatusBar;
    sSkinSelector1: TsSkinSelector;
    mnuUseUnitsNew: TMenuItem;
    N482: TMenuItem;
    N484: TMenuItem;
    l2: TMenuItem;
    N485: TMenuItem;
    mnuRptSalaryAdjustment: TMenuItem;
    N486: TMenuItem;
    N487: TMenuItem;
    mnuUserActivitiesF: TMenuItem;
    mnuRptCardex2F: TMenuItem;
    N488: TMenuItem;
    tmrForceNotification: TTimer;
    procedure FormShow(Sender: TObject);
    procedure UnitsF0Click(Sender: TObject);
    procedure StuffGroupsF0Click(Sender: TObject);
    procedure CustGroupsF0Click(Sender: TObject);
    procedure CompanyBankAccountsF0Click(Sender: TObject);
    procedure CashiersF0Click(Sender: TObject);
    procedure DeficitsF0Click(Sender: TObject);
    procedure otherCustomerF0Click(Sender: TObject);
    procedure UseUnitsF0Click(Sender: TObject);
    procedure StoresF0Click(Sender: TObject);
    procedure CofferFormTypesF0Click(Sender: TObject);
    procedure ReciptTypesF0Click(Sender: TObject);
    procedure ReciptsF1Click(Sender: TObject);
    procedure GetOtherMoneyF101Click(Sender: TObject);
    procedure GetOtherMoneyF102Click(Sender: TObject);
    procedure Rpt001F4Click(Sender: TObject);
    procedure Rpt001F5Click(Sender: TObject);
    procedure Rpt001F6Click(Sender: TObject);
    procedure Rpt001F10Click(Sender: TObject);
    procedure Rpt001F11Click(Sender: TObject);
    procedure Rpt001F12Click(Sender: TObject);
    procedure Rpt001F13Click(Sender: TObject);
    procedure Rpt001F7Click(Sender: TObject);
    procedure RptCoffer1Click(Sender: TObject);
    procedure RptCofferF1Click(Sender: TObject);
    procedure RptCofferF12Click(Sender: TObject);
    procedure RptCofferF13Click(Sender: TObject);
    procedure RptCofferF14Click(Sender: TObject);
    procedure RptCofferF15Click(Sender: TObject);
    procedure RptCofferF16Click(Sender: TObject);
    procedure RptCofferF17Click(Sender: TObject);
    procedure RptCofferF18Click(Sender: TObject);
    procedure RptCofferF50Click(Sender: TObject);
    procedure RptCofferF51Click(Sender: TObject);
    procedure RptCofferF52Click(Sender: TObject);
    procedure RptCofferF53Click(Sender: TObject);
    procedure RptCofferF90Click(Sender: TObject);
    procedure RptCofferF91Click(Sender: TObject);
    procedure RptCofferF101Click(Sender: TObject);
    procedure RptCofferF102Click(Sender: TObject);
    procedure RptEntityStuffGrpF0Click(Sender: TObject);
    procedure rptFormsOnStuffF12Click(Sender: TObject);
    procedure rptCustomerTransactionF1Click(Sender: TObject);
    procedure rptFormsOnStuffF5Click(Sender: TObject);
    procedure rptFormsOnStuffF11Click(Sender: TObject);
    procedure rptCustomersBalanceF1Click(Sender: TObject);
    procedure OperatorsClick(Sender: TObject);
    procedure MakeBackUpF0Click(Sender: TObject);
    procedure RestoreDataBaseClick(Sender: TObject);
    procedure ConfigClick(Sender: TObject);
    procedure SelectYearF0Click(Sender: TObject);
    procedure Close0Click(Sender: TObject);
    procedure rptCustTrancDetailsStuffF0Click(Sender: TObject);
    procedure rptCustTransDetailsF0Click(Sender: TObject);
    procedure rptCustomerCashtracsacionF0Click(Sender: TObject);
    procedure rptCofferTransF1Click(Sender: TObject);
    procedure RptEntityStuffDetailsF0Click(Sender: TObject);
    procedure GetOtherMoneyF3Click(Sender: TObject);
    procedure GetOtherMoneyF90Click(Sender: TObject);
    procedure GetOtherMoneyF91Click(Sender: TObject);
    procedure GetCheckF13Click(Sender: TObject);
    procedure GetCheckF14Click(Sender: TObject);
    procedure GetCheckF15Click(Sender: TObject);
    procedure GetCheckF16Click(Sender: TObject);
    procedure GetCheckF17Click(Sender: TObject);
    procedure GetCheckF51Click(Sender: TObject);
    procedure GetCheckF52Click(Sender: TObject);
    procedure GetCheckF53Click(Sender: TObject);
    procedure rptBalanceCofferF0Click(Sender: TObject);
    procedure RptChecksInF17Click(Sender: TObject);
    procedure optionsF0Click(Sender: TObject);
    procedure BudgetTopicLevelsF0Click(Sender: TObject);
    procedure BudgetTopics2F0Click(Sender: TObject);
    procedure rptCofferTransF4Click(Sender: TObject);
    procedure rptCofferTransF3Click(Sender: TObject);
    procedure RptCofferF70Click(Sender: TObject);
    procedure RptCofferF71Click(Sender: TObject);
    procedure RptCofferF80Click(Sender: TObject);
    procedure RptCofferF81Click(Sender: TObject);
    procedure RptCofferF82Click(Sender: TObject);
    procedure GetCheckF70Click(Sender: TObject);
    procedure GetCheckF71Click(Sender: TObject);
    procedure GetCheckF80Click(Sender: TObject);
    procedure GetCheckF81Click(Sender: TObject);
    procedure GetCheckF82Click(Sender: TObject);
    procedure rptCofferTransF2Click(Sender: TObject);
    procedure rptCofferTransF5Click(Sender: TObject);
    procedure CountingF0Click(Sender: TObject);
    procedure ConversionCoF0Click(Sender: TObject);
    procedure CountingItemsF1Click(Sender: TObject);
    procedure CountingItemsF3Click(Sender: TObject);
    procedure CountingItemsF2Click(Sender: TObject);
    procedure rptBudgetF0Click(Sender: TObject);
    procedure rptBudgetTransactionF0Click(Sender: TObject);
    procedure RptReciptWithCustMonthsF12Click(Sender: TObject);
    procedure RptReciptWithGrpCustMonthsF12Click(Sender: TObject);
    procedure rptFormsOnStuffMonthsF12Click(Sender: TObject);
    procedure rptStuffCodingMonthsF12Click(Sender: TObject);
    procedure rptStuffGroupsMonthsF12Click(Sender: TObject);
    procedure rptStuffGroupsMonthsF6Click(Sender: TObject);
    procedure rptStuffCodingMonthsF6Click(Sender: TObject);
    procedure rptFormsOnStuffMonthsF6Click(Sender: TObject);
    procedure RptReciptWithGrpCustMonthsF6Click(Sender: TObject);
    procedure RptReciptWithCustMonthsF6Click(Sender: TObject);
    procedure RptChecks4PrintF0Click(Sender: TObject);
    procedure rptFormsOnStuffF1Click(Sender: TObject);
    procedure CalculateOutPutF0Click(Sender: TObject);
    procedure Tile0Click(Sender: TObject);
    procedure Cascade0Click(Sender: TObject);
    procedure MakeDocumentF0Click(Sender: TObject);
    procedure MakeDocumentCofferF0Click(Sender: TObject);
    procedure MakeDocumentCheckF0Click(Sender: TObject);
    procedure PrintStuffLabelF0Click(Sender: TObject);
    procedure TrancService_Cust2F0Click(Sender: TObject);
    procedure rptBalanceServiceF0Click(Sender: TObject);
    procedure rancstuffDetailsF11Click(Sender: TObject);
    procedure StuffTransactionF0Click(Sender: TObject);
    procedure aboutF0Click(Sender: TObject);
    procedure BackUpBurnCDBsellClick(Sender: TObject);
    procedure ReciptsF20Click(Sender: TObject);
    procedure ReciptsF21Click(Sender: TObject);
    procedure kl1Click(Sender: TObject);
    procedure Rpt001F20Click(Sender: TObject);
    procedure Rpt001F21Click(Sender: TObject);
    procedure Rpt001F14Click(Sender: TObject);
    procedure rptBudgetRevenuF0Click(Sender: TObject);
    procedure PaymentCashFClick(Sender: TObject);
    procedure changeUserClick(Sender: TObject);
    procedure StuffTransaction_ControlCodeClick(Sender: TObject);
    procedure StuffGroupsTransactionClick(Sender: TObject);
    procedure CommandUpDateClick(Sender: TObject);
    procedure AddToolbarClick(Sender: TObject);
    procedure rptUseUnitFClick(Sender: TObject);
    procedure rptGroupUseUnitFClick(Sender: TObject);
    procedure ReciptsF2Click(Sender: TObject);
    procedure ReciptsF3Click(Sender: TObject);
    procedure GetCheckF21Click(Sender: TObject);
    procedure GetCheckF22Click(Sender: TObject);
    procedure GetCheckF73Click(Sender: TObject);
    procedure TarazGroupUseUnitClick(Sender: TObject);
    procedure rptHavalehClick(Sender: TObject);
    procedure rptTrancDetailsF12Click(Sender: TObject);
    procedure MnuRptChecksInF50Click(Sender: TObject);
    procedure mnuRptChecksInF17Click(Sender: TObject);
    procedure statMainDrawPanel(StatusBar: TStatusBar; Panel: TStatusPanel;
      const Rect: TRect);
    procedure RptChecksInF80Click(Sender: TObject);
    procedure GetCheckF23Click(Sender: TObject);
    procedure RptCofferF23Click(Sender: TObject);
    procedure NewYearClick(Sender: TObject);
    procedure TrptCashierClick(Sender: TObject);
    procedure N24Click(Sender: TObject);
    procedure N110Click(Sender: TObject);
    procedure N29Click(Sender: TObject);
    procedure N31Click(Sender: TObject);
    procedure N41Click(Sender: TObject);
    procedure N51Click(Sender: TObject);
    procedure N68Click(Sender: TObject);
    procedure N71Click(Sender: TObject);
    procedure N81Click(Sender: TObject);
    procedure N91Click(Sender: TObject);
    procedure N30Click(Sender: TObject);
    procedure N32Click(Sender: TObject);
    procedure N33Click(Sender: TObject);
    procedure N111Click(Sender: TObject);
    procedure N210Click(Sender: TObject);
    procedure N112Click(Sender: TObject);
    procedure MnuAcc_N112Click(Sender: TObject);
    procedure N311Click(Sender: TObject);
    procedure N42Click(Sender: TObject);
    procedure N212Click(Sender: TObject);
    procedure N113Click(Sender: TObject);
    procedure N114Click(Sender: TObject);
    procedure l1Click(Sender: TObject);
    procedure rptCofferTransF11Click(Sender: TObject);
    procedure N115Click(Sender: TObject);
    procedure N214Click(Sender: TObject);
    procedure mnuOutStuf2Click(Sender: TObject);
    procedure RptEntityStuffAllStoreClick(Sender: TObject);
    procedure RptEntityStuffGrpAllStoreClick(Sender: TObject);
    procedure RptEntityStuffDetailsAllStoreFClick(Sender: TObject);
    procedure rptEntityOnDetailStuffsAllStoreClick(Sender: TObject);
    procedure mnuRptControlEntityClick(Sender: TObject);
    procedure LookUp1Click(Sender: TObject);
    procedure LookUp2Click(Sender: TObject);
    procedure GetCheckF19Click(Sender: TObject);
    procedure RptCofferF19Click(Sender: TObject);
    procedure GetCheckF27Click(Sender: TObject);
    procedure RptCofferF27Click(Sender: TObject);
    procedure GetCheckF54Click(Sender: TObject);
    procedure RptCofferF54Click(Sender: TObject);
    procedure rptanalyzSellsClick(Sender: TObject);
    procedure rptcheckSadereh_StateFClick(Sender: TObject);
    procedure rptTrancDetailsF5Click(Sender: TObject);
    procedure RecallBranchFClick(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure mnuRecallBranchFClick(Sender: TObject);
    procedure N48Click(Sender: TObject);
    procedure rptCountingItemsF1Click(Sender: TObject);
    procedure rptCountingItemsF2Click(Sender: TObject);
    procedure rptCountingItemsF3Click(Sender: TObject);
    procedure AllrptCustomerTrancItemsFClick(Sender: TObject);
    procedure PrintCountingLabelF0Click(Sender: TObject);
    procedure GetCheckFenter31Click(Sender: TObject);
    procedure RptCofferF31Click(Sender: TObject);
    procedure AllrptRefineSellClick(Sender: TObject);
    procedure GetCheckF28Click(Sender: TObject);
    procedure RptCofferF28Click(Sender: TObject);
    procedure rptCompare_Count_EntityFClick(Sender: TObject);
    procedure rptSupportCustMonthsFClick(Sender: TObject);
    procedure rptSupportMonthsClick(Sender: TObject);
    procedure RptReciptWithCustF8Click(Sender: TObject);
    procedure rptBuySpecialOnCostomersFClick(Sender: TObject);
    procedure AllrptReciptListOnStuffCodeFClick(Sender: TObject);
    procedure AllrptReciptListOnCustomersClick(Sender: TObject);
    procedure AllGetCheckClickClick(Sender: TObject);
    procedure N56Click(Sender: TObject);
    procedure N66Click(Sender: TObject);
    procedure mnuSPSellCustClick(Sender: TObject);
    procedure N145Click(Sender: TObject);
    procedure EarthFClick(Sender: TObject);
    procedure PaymentExpenceFClick(Sender: TObject);
    procedure mnuRptControlCardexfClick(Sender: TObject);
    procedure Mnu_GetFirstEntityFClick(Sender: TObject);
    procedure CountingItemsF20Click(Sender: TObject);
    procedure N95Click(Sender: TObject);
    procedure mnuStuffCodingSpecialFClick(Sender: TObject);
    procedure ExcelImportClick(Sender: TObject);
    procedure ExcelImportToTabelClick(Sender: TObject);
    procedure OtherCustomerF7Click(Sender: TObject);
    procedure NUseOthersClick(Sender: TObject);
    procedure mnuListUsesFClick(Sender: TObject);
    procedure N153Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure ManifestoF0Click(Sender: TObject);
    procedure Xml1Click(Sender: TObject);
    procedure N162Click(Sender: TObject);
    procedure mnurptWorkCustomerFClick(Sender: TObject);
    procedure N175Click(Sender: TObject);
    procedure rptCustomerTrancItemsF6Click(Sender: TObject);
    procedure rptCustomerTransactionF6Click(Sender: TObject);
    procedure mniIncorporateClick(Sender: TObject);
    procedure mniFormDesignFClick(Sender: TObject);
    procedure mniChangeUnitClick(Sender: TObject);
    procedure N183Click(Sender: TObject);
    procedure MnuN183Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure N193Click(Sender: TObject);
    procedure N194Click(Sender: TObject);
    procedure N195Click(Sender: TObject);
    procedure N197Click(Sender: TObject);
    procedure N198Click(Sender: TObject);
    procedure ReciptReleaseF12Click(Sender: TObject);
    procedure MakeMaliYearClick(Sender: TObject);
    procedure mniRemainEarlyFClick(Sender: TObject);
    procedure mniN166Click(Sender: TObject);
    procedure mniN165Click(Sender: TObject);
    procedure mnuN165Click(Sender: TObject);
    procedure mnuN167Click(Sender: TObject);
    procedure mnuAllCheckInFormsFClick(Sender: TObject);
    procedure mnuCustomersBalanceF3Click(Sender: TObject);
    procedure mnuSellPricingFClick(Sender: TObject);
    procedure mnuN176Click(Sender: TObject);
    procedure mnuRptReportsF192Click(Sender: TObject);
    procedure mnuN186Click(Sender: TObject);
    procedure mdiChildrenTabsChange(Sender: TObject; NewTab: Integer;
      var AllowChange: Boolean);
    procedure mnuReciptsgridFEnterClick(Sender: TObject);
    procedure mnuRpt00Click(Sender: TObject);
    procedure mnuProformaClick(Sender: TObject);
    procedure mnuOrderControlPointClick(Sender: TObject);
    procedure mnuCosts0Click(Sender: TObject);
    procedure N201Click(Sender: TObject);
    procedure mnuRptCofferFAllTagClick(Sender: TObject);
    procedure mnuInsurancesFClick(Sender: TObject);
    procedure mnuRptReportsFClick(Sender: TObject);
    procedure RptChecksInF70Click(Sender: TObject);
    procedure mnuAllotherCustomerFClick(Sender: TObject);
    procedure mnuAllCustomersFClick(Sender: TObject);
    procedure mnuSellersFAllClick(Sender: TObject);
    procedure mnuNegotiationsFClick(Sender: TObject);
    procedure mnuTshFunctionsClick(Sender: TObject);
    procedure mnuTshSchedulesClick(Sender: TObject);
    procedure mnuOfficeCustomerFAllClick(Sender: TObject);
    procedure mnuStuffCodingMachineryFClick(Sender: TObject);
    procedure mnuMaintenanceFClick(Sender: TObject);
    procedure mnuMachinDeliveryFClick(Sender: TObject);
    procedure mnuSellPlan2Click(Sender: TObject);
    procedure mnuCnt_ContractsF145Click(Sender: TObject);
    procedure mnuCnt_ContractOperationsFClick(Sender: TObject);
    procedure mnuCnt_RunSchedulesFClick(Sender: TObject);
    procedure mnuCnt_RunScheduleItemsFClick(Sender: TObject);
    procedure mnuRptCardMachinesFClick(Sender: TObject);
    procedure mnuRptReportsFAllClick(Sender: TObject);
    procedure N285Click(Sender: TObject);
    procedure WindowMinimizeAll1Execute(Sender: TObject);
    procedure mnuRptOperationalFStoreClick(Sender: TObject);
    procedure mnuGetOtherMoneyF6Click(Sender: TObject);
    procedure N297Click(Sender: TObject);
    procedure AllrptCustomerTransactionF1Click(Sender: TObject);
    procedure N102Click(Sender: TObject);
    procedure N103Click(Sender: TObject);
    procedure mnuZoneFClick(Sender: TObject);
    procedure N302Click(Sender: TObject);
    procedure mnuForwardsFClick(Sender: TObject);
    procedure mnuForwards2FClick(Sender: TObject);
    procedure MenuConversionCoListClick(Sender: TObject);
    procedure mnuN309Click(Sender: TObject);
    procedure mnuN310Click(Sender: TObject);
    procedure SMServiceFEnter1Click(Sender: TObject);
    procedure mnuClockDmpF0Click(Sender: TObject);
    procedure N319Click(Sender: TObject);
    procedure mnuMailboxdatacontrolFClick(Sender: TObject);
    procedure N318Click(Sender: TObject);
    procedure N321Click(Sender: TObject);
    procedure mnurptLoanFClick(Sender: TObject);
    procedure mnuCofferGeneralReport1Click(Sender: TObject);
    procedure JvDesktopAlert1BMessageClick(Sender: TObject);
    procedure JvDesktopAlert2BMessageClick(Sender: TObject);
    procedure JvDesktopAlert3BMessageClick(Sender: TObject);
    procedure JvDesktopAlert1PMessageClick(Sender: TObject);
    procedure JvDesktopAlert2PMessageClick(Sender: TObject);
    procedure JvDesktopAlert3PMessageClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure N290Click(Sender: TObject);
    procedure UpdateUnitSellPriceF1Click(Sender: TObject);
    procedure AllRptChecksInFClick(Sender: TObject);
    procedure mnuSomeChangeOrdersFClick(Sender: TObject);
    procedure mnuN13Click(Sender: TObject);
    procedure mnurptCardProjectFClick(Sender: TObject);
    procedure mnuCofferTransAllFClick(Sender: TObject);
    procedure mnuStuffGroups2FClick(Sender: TObject);
    procedure mnuForwards2FFClick(Sender: TObject);
    procedure mnuMaintenanceGeneralReportF1Click(Sender: TObject);
    procedure mnuReciptsFundFClick(Sender: TObject);
    procedure mnuReportID3500Click(Sender: TObject);
    procedure mnuStuffCodingMachinery2FClick(Sender: TObject);
    procedure mnuN1110Click(Sender: TObject);
    procedure mnuTRequestManagementFClick(Sender: TObject);
    procedure mnuIntegrateDatabaseClick(Sender: TObject);
    procedure mnurptCountingItemsCtrlFClick(Sender: TObject);
    procedure mnuSendSMSFClick(Sender: TObject);
    procedure new1Click(Sender: TObject);
    procedure N236Click(Sender: TObject);
    procedure N260Click(Sender: TObject);
    procedure mnuMainTaskListFClick(Sender: TObject);
    procedure N97Click(Sender: TObject);
    procedure mnuDesignFormsFClick(Sender: TObject);
    procedure mnuRptDesignFormsFClick(Sender: TObject);
    procedure mnuCashReportClick(Sender: TObject);
    procedure N301Click(Sender: TObject);
    procedure mnuReciptsImportClick(Sender: TObject);
    procedure mnuExcel1Click(Sender: TObject);
    procedure mnuArtworksClick(Sender: TObject);
    procedure mnuMakeDesignFormsFClick(Sender: TObject);
    // procedure mnuThemesClick(Sender: TObject);
    procedure mnuRatingsClick(Sender: TObject);
    procedure mnuChangeCustIDFClick(Sender: TObject);
    procedure mnuReviewOrdersClick(Sender: TObject);
    procedure statMainDblClick(Sender: TObject);
    procedure ProjectCard1Click(Sender: TObject);
    procedure mnuInventoryByBarcodeClick(Sender: TObject);
    procedure mnuReviewRequestsFClick(Sender: TObject);
    procedure mnuGroupReciptPostFClick(Sender: TObject);
    procedure N390Click(Sender: TObject);
    procedure mnurptCustomersBalance2FClick(Sender: TObject);
    procedure MenuItem300Click(Sender: TObject);
    procedure MenuItem321Click(Sender: TObject);
    procedure mnuN11Click(Sender: TObject);
    procedure N392Click(Sender: TObject);
    procedure mnuRptReciptsRegulatesFClick(Sender: TObject);
    procedure mnuGeneralRegistrationFClick(Sender: TObject);
    procedure N409Click(Sender: TObject);
    procedure mnuPakingClick(Sender: TObject);
    procedure mnuExcelConflictFClick(Sender: TObject);
    procedure IMEI1Click(Sender: TObject);
    procedure CreateMDIForm2TrptCompareCountEntityFrptCompareCountEntityFSelf1Click
      (Sender: TObject);
    procedure OperatorNotificationClick(Sender: TObject);
    procedure InterViewClick(Sender: TObject);
    procedure actOperatorNotificationFExecute(Sender: TObject);
    procedure mnuRptTrialBalance_DetailsClick(Sender: TObject);
    procedure GetAllReciptFromExlF1Click(Sender: TObject);
    procedure MnuStereotypyClick(Sender: TObject);
    procedure MnuAcc_CleanDataBaseClick(Sender: TObject);
    procedure MnuAcc_MnuOptionClick(Sender: TObject);
    procedure MnuAcc_RestoreDataBaseClick(Sender: TObject);
    procedure MnuAcc_ConfigAccClick(Sender: TObject);
    procedure MnuAcc_MnuTRialBalanceAcc_4Click(Sender: TObject);
    procedure MnuAcc_DescTempClick(Sender: TObject);
    procedure MnuAcc__DetailGroupClick(Sender: TObject);
    procedure MnuAcc_MnuCloseClick(Sender: TObject);
    procedure MnuTRialBalanceCtopic_1Click(Sender: TObject);
    procedure MnuAcc_MnuGeneralJornalClick(Sender: TObject);
    procedure MnuAcc_MnuLedgerClick(Sender: TObject);
    procedure MnuAcc_Mnu_RptCtopicBookOnAccClick(Sender: TObject);
    procedure mnuAccBooksDetailClick(Sender: TObject);
    procedure MnuAcc_Mnu_RptCtopicBookOnDetailClick(Sender: TObject);
    procedure MnuAcc_DocTypesClick(Sender: TObject);
    procedure MnuAcc_N45Click(Sender: TObject);
    procedure MnuAcc_CompaniesClick(Sender: TObject);
    procedure MnuAcc_MnuAboutClick(Sender: TObject);
    procedure MnuAcc_Mnu_AccCode3Click(Sender: TObject);
    procedure MnuAcc_MnuBalace_SomeColumn_acc_1_1Click(Sender: TObject);
    procedure N54Click(Sender: TObject);
    procedure N1111Click(Sender: TObject);
    procedure N65Click(Sender: TObject);
    procedure N64Click(Sender: TObject);
    procedure MnuAcc_MnuBackUpClick(Sender: TObject);
    procedure MnuAcc_MnuBackUpCdClick(Sender: TObject);
    procedure MnuAcc_MnuRptJournalClick(Sender: TObject);
    procedure MnuAcc_MnuDailyDocsClick(Sender: TObject);
    procedure ss1Click(Sender: TObject);
    procedure MnuAcc_AccTopicLevelClick(Sender: TObject);
    procedure MnuAcc_ActFormInfo1F1Click(Sender: TObject);
    procedure MnuAcc_ActDocTypesF1Click(Sender: TObject);
    procedure MnuAcc_MnuBalace_SomeColumn_acc_1_2Click(Sender: TObject);
    procedure MnuAcc_MnuBalace_SomeColumn_acc_1_3Click(Sender: TObject);
    procedure MnuAcc_MnuBalace_SomeColumn_acc_2_1Click(Sender: TObject);
    procedure MnuAcc_MnuBalace_SomeColumn_acc_2_2Click(Sender: TObject);
    procedure MnuAcc_MnuBalace_SomeColumn_acc_2_3Click(Sender: TObject);
    procedure MnuAcc_N12Click(Sender: TObject);
    procedure MnuAcc_N21Click(Sender: TObject);
    procedure MnuAcc_N31Click(Sender: TObject);
    procedure MnuAcc_MnuEkhtetamiehClick(Sender: TObject);
    procedure MnuAcc_MnuBalace_SomeColumn_Detail_1Click(Sender: TObject);
    procedure MnuAcc_MnuBalace_SomeColumn_Detail_2Click(Sender: TObject);
    procedure MnuAcc_MnuBalace_SomeColumn_Detail_3Click(Sender: TObject);
    procedure mnuSearchDocsClick(Sender: TObject);
    procedure MnuAcc_RptAccMonth_1Click(Sender: TObject);
    procedure MnuAcc_RptAccMonth_2Click(Sender: TObject);
    procedure MnuAcc_RptAccMonth_3Click(Sender: TObject);
    procedure MnuAcc_RptAcc_DetailMonthClick(Sender: TObject);
    procedure MnuAcc_RptAcc_CTopicMonth_1Click(Sender: TObject);
    procedure MnuAcc_MnuBudgetLevelClick(Sender: TObject);
    procedure MnuAcc_N30Click(Sender: TObject);
    procedure MnuTRialBalanceAnalyzaClick(Sender: TObject);
    procedure MenuItem423Click(Sender: TObject);
    procedure N34Click(Sender: TObject);
    procedure MnuTRialBalanceCtopic_2Click(Sender: TObject);
    procedure MnuAcc_119Click(Sender: TObject);
    procedure MnuAcc_N39Click(Sender: TObject);
    procedure MnuAcc_aa1Click(Sender: TObject);
    procedure MnuAcc_N42Click(Sender: TObject);
    procedure MnuAcc_N110Click(Sender: TObject);
    procedure MnuAcc_N212Click(Sender: TObject);
    procedure MnuAcc_N318Click(Sender: TObject);
    procedure MnuAcc_N43Click(Sender: TObject);
    procedure MnuAcc_EndExpenceClick(Sender: TObject);
    procedure MnuAcc_N47Click(Sender: TObject);
    procedure MnuAcc_N48Click(Sender: TObject);
    procedure MnuAcc_N63Click(Sender: TObject);
    procedure MnuAcc_N66Click(Sender: TObject);
    procedure MnuAcc_N91Click(Sender: TObject);
    procedure MnuAcc_MnuTogetherClick(Sender: TObject);
    procedure MnuAcc_KashiClick(Sender: TObject);
    procedure MnuAcc_MnuEftetamiehClick(Sender: TObject);
    procedure MnuAcc_N28Click(Sender: TObject);
    procedure MnuAcc_ImportDocGroupsClick(Sender: TObject);
    procedure MnuAcc_N101Click(Sender: TObject);
    procedure MnuAcc_n102Click(Sender: TObject);
    procedure MnuAcc_ChangeCodeDocClick(Sender: TObject);
    procedure MnuAcc_N108Click(Sender: TObject);
    procedure MnuAcc_N109Click(Sender: TObject);
    procedure MnuAcc_mnuvijeClick(Sender: TObject);
    procedure MnuAcc_CompareClick(Sender: TObject);
    procedure MnuAcc_N115Click(Sender: TObject);
    procedure MnuAcc_N23Click(Sender: TObject);
    procedure MnuAcc_N124Click(Sender: TObject);
    procedure MnuAcc_N127Click(Sender: TObject);
    procedure MnuAcc_N128Click(Sender: TObject);
    procedure MnuAcc_CtopicClick(Sender: TObject);
    procedure MnuAcc_N14Click(Sender: TObject);
    procedure MnuAcc_N49Click(Sender: TObject);
    procedure MnuAcc_N130Click(Sender: TObject);
    procedure MnuAcc_N50Click(Sender: TObject);
    procedure MnuAcc_N52Click(Sender: TObject);
    procedure MnuAcc_N137Click(Sender: TObject);
    procedure MnuAcc_N136Click(Sender: TObject);
    procedure MnuAcc_N139Click(Sender: TObject);
    procedure MnuAcc_N134Click(Sender: TObject);
    procedure MnuAcc_N210Click(Sender: TObject);
    procedure MnuAcc_N211Click(Sender: TObject);
    procedure MnuAcc_N141Click(Sender: TObject);
    procedure MnuAcc_N142Click(Sender: TObject);
    procedure MnuAcc_N143Click(Sender: TObject);
    procedure MnuAcc_N144Click(Sender: TObject);
    procedure MnuAcc_N147Click(Sender: TObject);
    procedure N148Click(Sender: TObject);
    procedure MnuAcc_N148Click(Sender: TObject);
    procedure MnuAcc_N149Click(Sender: TObject);
    procedure MnuAcc_N150Click(Sender: TObject);
    procedure MnuAcc_testClick(Sender: TObject);
    procedure MnuAcc_N151Click(Sender: TObject);
    procedure matrixTestClick(Sender: TObject);
    procedure MnuAcc_YearsTestClick(Sender: TObject);
    procedure MnuAcc_N169Click(Sender: TObject);
    procedure MnuAcc_N170Click(Sender: TObject);
    procedure MnuAcc_N158Click(Sender: TObject);
    procedure MnuAcc_N173Click(Sender: TObject);
    procedure MnuAcc_N174Click(Sender: TObject);
    procedure MnuAcc_N175Click(Sender: TObject);
    procedure MnuAcc_j1Click(Sender: TObject);
    procedure MnuAcc_N176Click(Sender: TObject);
    procedure MnuAcc_g1Click(Sender: TObject);
    procedure MnuAcc_N178Click(Sender: TObject);
    procedure MnuAcc_N179Click(Sender: TObject);
    procedure MnuAcc_BalanceLevel4_1Click(Sender: TObject);
    procedure MnuAcc_BalanceLevel4_2Click(Sender: TObject);
    procedure MnuAcc_BalanceLevel4_3Click(Sender: TObject);
    procedure MnuAcc_N182Click(Sender: TObject);
    procedure MnuAcc_N183Click(Sender: TObject);
    procedure MnuAcc_N184Click(Sender: TObject);
    procedure MnuAcc_N180Click(Sender: TObject);
    procedure MnuAcc_N186Click(Sender: TObject);
    procedure MnuAcc_ContrastAccountSanamaClick(Sender: TObject);
    procedure MnuAcc_UserDetailRelatedClick(Sender: TObject);
    procedure MnuAcc_UserDetailGroupClick(Sender: TObject);
    procedure MnuAcc_SendSanamaClick(Sender: TObject);
    procedure MnuAcc_N74Click(Sender: TObject);
    procedure MnuAcc_N187Click(Sender: TObject);
    procedure MnuAcc_N189Click(Sender: TObject);
    procedure MnuAcc_N1210Click(Sender: TObject);
    procedure MnuAcc_N190Click(Sender: TObject);
    procedure MnuAcc_MnuUserDetailRelated2FClick(Sender: TObject);
    procedure MnuAcc_N196Click(Sender: TObject);
    procedure MnuAcc_N197Click(Sender: TObject);
    procedure MnuAcc_N198Click(Sender: TObject);

    ///
    /// /////////////////////////////////////////////////////
    procedure MnuPay_Tile0Click(Sender: TObject);
    procedure MnuPay_Cascade0Click(Sender: TObject);
    procedure FormTypesF0Click(Sender: TObject);
    procedure FormInfo_4F0Click(Sender: TObject);
    procedure FormInfo_1F1ffffffffffffffClick(Sender: TObject);
    procedure FormInfo_1F0Click(Sender: TObject);
    procedure CDBurnF0Click(Sender: TObject);
    procedure Word1Click(Sender: TObject);
    procedure N17Click(Sender: TObject);
    procedure MnuPay_FClick(Sender: TObject);
    procedure MnuPay_InterdictEffectListF1Click(Sender: TObject);
    procedure DecExtCalculateF23Click(Sender: TObject);
    procedure MnuPay_RptFunctionWithMonthF1Click(Sender: TObject);
    procedure MnuPay_Function4ProjectPersonF1Click(Sender: TObject);
    procedure MnuPay_PersonelDecExtinfoF1Click(Sender: TObject);
    procedure MnuPay_N31Click(Sender: TObject);
    procedure PersonelDecExtInfo_2F52Click(Sender: TObject);
    procedure InterdictsFs50Click(Sender: TObject);
    procedure Interdicts4HistoryF0tClick(Sender: TObject);
    procedure MnuPay_PaymentLoanWithRemainfClick(Sender: TObject);
    procedure MnuPay_N44Click(Sender: TObject);
    procedure MnuPay_N45Click(Sender: TObject);
    procedure MnuPay_N46Click(Sender: TObject);
    procedure DecExtCalculateF43Click(Sender: TObject);
    procedure DecExtCalculateF54Click(Sender: TObject);
    procedure DecExtCalculateF53Click(Sender: TObject);
    procedure MnuPay_CommandUpDateClick(Sender: TObject);
    procedure Interdicts4ItemsF1Click(Sender: TObject);
    procedure MnuPay_DetailInterdictListF13Click(Sender: TObject);
    procedure MnuPay_AddToolbarClick(Sender: TObject);
    procedure MnuPay_DetailInterdictListF8Click(Sender: TObject);
    procedure MnuPay_DetailInterdictListF12Click(Sender: TObject);
    procedure MnuPay_DetailInterdictListF27Click(Sender: TObject);
    procedure MnuPay_LoanClick(Sender: TObject);
    procedure MnuPay_RptCrossTabClick(Sender: TObject);
    procedure MnuPay_ConfigFenterClick(Sender: TObject);
    procedure MnuPay_N213Click(Sender: TObject);
    procedure MnuPay_N212Click(Sender: TObject);
    procedure MnuPay_N84Click(Sender: TObject);
    procedure MnuPay_N83Click(Sender: TObject);
    procedure MnuPay_N68Click(Sender: TObject);
    procedure MnuPay_RetardSalaryListClick(Sender: TObject);
    procedure MnuPay_RetardMakeBankDSKClick(Sender: TObject);
    procedure MnuPay_N40Click(Sender: TObject);
    procedure MnuPay_N43Click(Sender: TObject);
    procedure MnuPay_PersonelDecExtInfo_2F35Click(Sender: TObject);
    procedure MnuPay_PersonelDecExtInfo_2F32Click(Sender: TObject);
    procedure MnuPay_FunctionYearsFClick(Sender: TObject);
    procedure MnuPay_SalaryOverTimeClick(Sender: TObject);
    procedure NewYearMangeClick(Sender: TObject);
    procedure MnuPay_SalaryList3colFClick(Sender: TObject);
    procedure MnuPay_SalaryListTaxFClick(Sender: TObject);
    procedure MnuPay_RetardListSalaryClick(Sender: TObject);
    procedure MnuPay_TPersonelLeaveF16Click(Sender: TObject);
    procedure MnuPay_SalaryList_insurance2Click(Sender: TObject);
    procedure MnuPay_ListPensionerF60Click(Sender: TObject);
    procedure MnuPay_N19Click(Sender: TObject);
    procedure MnuPay_CalcAnnuityFClick(Sender: TObject);
    procedure MnuPay_PersonalTideFClick(Sender: TObject);
    procedure MnuPay_SalaryEndServiceFClick(Sender: TObject);
    procedure MnuPay_N37Click(Sender: TObject);
    procedure MnuPay_N38Click(Sender: TObject);
    procedure MnuPay_AllDecExtOnMounthFClick(Sender: TObject);
    procedure MnuPay_FunctionDayListFClick(Sender: TObject);
    procedure act_PersonelFormInfo_1F23Execute(Sender: TObject);
    procedure MnuPay_FunctionDayChekF28Click(Sender: TObject);
    procedure MnuPay_N72Click(Sender: TObject);
    procedure MnuPay_N73Click(Sender: TObject);
    procedure MnuPay_SalaryList4Office25FClick(Sender: TObject);
    procedure MnuPay_N74Click(Sender: TObject);
    procedure MnuPay_ArchiveInfoF2Click(Sender: TObject);
    procedure MnuPay_InterdictsF49_1Click(Sender: TObject);
    procedure MnuPay_N75Click(Sender: TObject);
    procedure MnuPay_N210Click(Sender: TObject);
    procedure MnuPay_KartSaat_WinFClick(Sender: TObject);
    procedure MnuPay_PersonelSponsorshipFClick(Sender: TObject);
    procedure MnuPay_SalaryList4Office25_2FClick(Sender: TObject);
    procedure MnuPay_MissionF24Click(Sender: TObject);
    procedure MnuPay_SalaryList4Office2FClick(Sender: TObject);
    procedure MnuPay_FunctionDayChek2F28Click(Sender: TObject);
    procedure MnuPay_MissionInfoClick(Sender: TObject);
    procedure MnuPay_NMakeDocumentMissionFClick(Sender: TObject);
    procedure MnuPay_SalaryList4OfficeUnLimitFClick(Sender: TObject);
    procedure MnuPay_EmployeeLoanItemClick(Sender: TObject);
    procedure MnuPay_PersonelAccountsF0Click(Sender: TObject);
    procedure MnuPay_KartSaatNewF0Click(Sender: TObject);
    procedure MnuPay_SalaryListProjectGroupF00Click(Sender: TObject);
    procedure MnuPay_SalaryList4ProjectF00Click(Sender: TObject);
    procedure MnuPay_SalaryList4Office25MissionF00Click(Sender: TObject);
    procedure MnuPay_PonyF0Click(Sender: TObject);
    procedure MnuPay_SalaryList4SumOfficeUnLimitF0Click(Sender: TObject);
    procedure MnuPay_MissionItemsF92Click(Sender: TObject);
    procedure MnuPay_N110Click(Sender: TObject);
    procedure MnuPay_DecExtCalculateFClick(Sender: TObject);
    procedure MnuPay_GetReprotsF0Click(Sender: TObject);
    procedure MnuPay_N70Click(Sender: TObject);
    procedure MnuPay_UserClick(Sender: TObject);
    procedure MnuPay_RetardSalaryListF2Click(Sender: TObject);
    procedure MnuPay_N114Click(Sender: TObject);
    procedure MnuPay_N118Click(Sender: TObject);
    procedure MnuPay_MnuN119Click(Sender: TObject);
    procedure MnuPay_MnuN120Click(Sender: TObject);
    procedure MnuPay_InsouranceOther2FClick(Sender: TObject);
    procedure MnuPay_FunctionSpecialControlFClick(Sender: TObject);
    procedure MnuPay_FormDesignFClick(Sender: TObject);
    procedure MnuPay_MakeMaliYearClick(Sender: TObject);
    procedure MnuPay_AllFormDesignSalaryFClick(Sender: TObject);
    procedure MnuPay_N2091Click(Sender: TObject);
    procedure MnuPay_N2101Click(Sender: TObject);
    procedure MnuPay_ListBimehNewF2Click(Sender: TObject);
    procedure MnuPay_N310Click(Sender: TObject);
    procedure MnuPay_PersonelFormInfo_1F31Click(Sender: TObject);
    procedure MnuPay_N211Click(Sender: TObject);
    procedure MnuPay_N221Click(Sender: TObject);
    procedure MnuPay_N223Click(Sender: TObject);
    procedure MnuPay_PersonelListPensionerF1Click(Sender: TObject);
    procedure MnuPay_N226Click(Sender: TObject);
    procedure MnuPay_PersonelDecExt111F1Click(Sender: TObject);
    procedure MnuPay_N228Click(Sender: TObject);
    procedure MnuPay_DecExtOnMounthSeparationFClick(Sender: TObject);
    procedure MnuPay_N229Click(Sender: TObject);
    procedure MnuPay_N224Click(Sender: TObject);
    procedure MnuPay_N2301Click(Sender: TObject);
    procedure MnuPay_VacationOver9FClick(Sender: TObject);
    procedure MnuPay_ArchiveInfo2FClick(Sender: TObject);
    procedure MnuPay_ListSalaryKaroonFClick(Sender: TObject);
    procedure MnuPay_N32Click(Sender: TObject);
    procedure MnuPay_ShowWorkflowDefinitionsDlgClick(Sender: TObject);
    procedure MnuPay_MainTaskListFClick(Sender: TObject);
    procedure MnuPay_WorkflowMainFClick(Sender: TObject);
    procedure mnuAllPersonelFormInfo_1FClick(Sender: TObject);
    procedure MnuPay_N2200Click(Sender: TObject);
    procedure MnuPay_N22Click(Sender: TObject);
    procedure MnuPay_N239Click(Sender: TObject);
    procedure MnuPay_TSalaryList_insurancePartF1Click(Sender: TObject);
    procedure MnuPay_N51Click(Sender: TObject);
    procedure MnuPay_Interdicts4ItemsTideFClick(Sender: TObject);
    procedure MnuPay_N240Click(Sender: TObject);
    procedure MnuPay_FunctionItemYearFClick(Sender: TObject);
    procedure MnuPay_N1210Click(Sender: TObject);
    procedure MnuPay_ERP1Click(Sender: TObject);
    procedure MnuPay_N242Click(Sender: TObject);
    procedure MnuPay_dddd1Click(Sender: TObject);
    procedure MnuPay_N248Click(Sender: TObject);
    procedure MnuPay_MnuRecallBranchFClick(Sender: TObject);
    procedure MnuAcc_N113Click(Sender: TObject);
    procedure MnuPay_157Click(Sender: TObject);
    procedure MnuPay_N11Click(Sender: TObject);
    procedure MnuPay_N54Click(Sender: TObject);
    procedure MnuPay_Interdicts4HistoryF1Click(Sender: TObject);
    procedure MnuPay_1Click(Sender: TObject);
    procedure MnuPay_145Click(Sender: TObject);
    procedure MnuPay_N142Click(Sender: TObject);
    procedure MnuPay_N194Click(Sender: TObject);
    procedure MnuPay_151Click(Sender: TObject);
    procedure MnuPay_153Click(Sender: TObject);
    procedure MnuPay_161Click(Sender: TObject);
    procedure MnuPay_164Click(Sender: TObject);
    procedure MnuPay_N6Click(Sender: TObject);
    procedure MnuPay_165Click(Sender: TObject);
    procedure MnuPay_167Click(Sender: TObject);
    procedure MnuPay_168Click(Sender: TObject);
    procedure MnuPay_N232Click(Sender: TObject);
    procedure MnuPay_177Click(Sender: TObject);
    procedure MnuPay_178Click(Sender: TObject);
    procedure MnuPay_N30Click(Sender: TObject);
    procedure MnuPay_N23Click(Sender: TObject);
    procedure MnuPay_N21Click(Sender: TObject);
    procedure MnuPay_DecExtCalculateFClick1Click(Sender: TObject);
    procedure MnuPay_N24Click(Sender: TObject);
    procedure MnuPay_N146Click(Sender: TObject);
    procedure MnuPay_122Click(Sender: TObject);
    procedure MnuPay_123Click(Sender: TObject);
    procedure MnuAcc_MnuMonthDocsClick(Sender: TObject);
    procedure MnuAcc_N185Click(Sender: TObject);
    procedure MnuAcc_N69Click(Sender: TObject);
    procedure MnuRptTrialBalance_AccFinClick(Sender: TObject);
    procedure MnuCustomersProjectFClick(Sender: TObject);
    procedure lbl1DblClick(Sender: TObject);
    procedure MnuAcc_N119Click(Sender: TObject);
    procedure log1Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure MnuTaxTabelClick(Sender: TObject);
    procedure MnuInsuranceClick(Sender: TObject);
    procedure N168Click(Sender: TObject);
    procedure N209Click(Sender: TObject);
    procedure N213Click(Sender: TObject);
    procedure MnuGetFirstDepTableClick(Sender: TObject);
    procedure MnuAcc_127Click(Sender: TObject);
    procedure MnuSellsEmporiumsClick(Sender: TObject);
    procedure N159Click(Sender: TObject);
    procedure MnuFindMenuInfoFClick(Sender: TObject);
    procedure MnuSetMakeReportClick(Sender: TObject);
    procedure MnufeedbackClick(Sender: TObject);
    procedure MnuFeedBackListClick(Sender: TObject);
    procedure MnuStuffTransactionDateFClick(Sender: TObject);
    procedure MnuImportDataClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure mnuListBimehRetiredClick(Sender: TObject);
    procedure UpdateDynamicMenu();
    procedure N468Click(Sender: TObject);
    procedure MnuPay_PersonelFormInfo_1FClick(Sender: TObject);
    procedure mnuCustomersNotUseFClick(Sender: TObject);
    procedure mnuIntegratingAcc2FaraFClick(Sender: TObject);
    procedure N473Click(Sender: TObject);
    procedure mnuShowMaliYearClick(Sender: TObject);
    procedure mnuCashReport2Click(Sender: TObject);
    procedure mnuRptSalaryAdjustmentClick(Sender: TObject);
    procedure mnuUserActivitiesFClick(Sender: TObject);
    procedure mnuRptCardex2FClick(Sender: TObject);
    procedure N488Click(Sender: TObject);
    procedure mnuSellsWithCostClick(Sender: TObject);
    procedure tmrForceNotificationTimer(Sender: TObject);
    ///
  private
    tsControlReports: TStringList;
    Date_: TDateTime;
    Tasklst: TTaskInstanceList;
    WarrantySQL: string;
    EndDate: string;
    procedure AddMenuItemFormTypes;
    procedure AddMenuItemReciptTypes;
    procedure CheckWarn;
    procedure AddItem4Menu(NewAction: TAction; MnuItemPlace: TMenuItem;
      MyName: string);
    procedure AddItem4SubMenu(Name, Caption: string; MnuItemPlace: TMenuItem);
    function GetReportName(ReportID: Integer): string;
    // procedure CheckCustomerMnu;
    procedure AllAddMenuItem4DesignForms;
    procedure wmmcommand(var Message: TMessage); message WM_command;
    procedure InitBMP;
    // procedure StyleCreate;
    procedure CheckWarnWarrantyFormTypes;

    // procedure initDesktopAlert(ReportID: Integer; ReportName: string;
    // On_Message_Click: TNotifyEvent);
    // function CreateImageIndex(ImageCaption:String):Integer;
    // procedure ActiveMenus(n:byte);
    { Private declarations }
    procedure BuildMenuCoding;
    procedure AddBalance2Menu;
    // procedure N116Click(Sender: TObject);
    // procedure MnuAcc_N114Click(Sender: TObject);

    procedure InterdictsWarnShow;
    procedure AddMenuItem2p;
    procedure WarnShow;
  public
    { Public declarations }
    tsListRecipts: TStringList;
    BtmTiket, BtmTiketNot: TBitmap;
    procedure AllTotalAddMenuItem;
    procedure AllAddMenuItem4Reports;
    procedure AllAddMenuItem4LookUps;
    procedure AllAddMenuItem4EffectType(Mnu4add: TMenuItem;
      NotEvn: TNotifyEvent; EffectType: Byte);
    procedure UpdateStatusbarMain;
    procedure CalControlReports;
    procedure AddListRecipts(const sFName: string);
    procedure DelListRecipts(sFName: string);
    procedure CategoryButtonCommandClick(Sender: TObject);

    procedure MackMenuBudget;
    procedure Menu4RequestCashClick(Sender: TObject);

    procedure AllAddMenuItemPay;
    procedure AddMenuItemP(MnuItem: TMenuItem; DisplayFormType: Integer;
      ActionName: TAction; MainMnuId: Byte);
    function CheckActiveFunctions(mnu: TMenuItem): Boolean;
  end;

var
  mainF: TmainF;
  // SysInfo1: TLMDSysInfo;
  // sysFormat: Array [1 .. 4] of String;
  OriginalDecimalSeparator: string;
  OriginalCurrencySymbol: string;
  OriginalCurrencyDigits: string;
  OriginalNumberDigits: string;

implementation

uses GlobalPro, mdiMain, CustGroups, Stores, CompanyBankAccounts,
  StuffGroups, Units, Cashiers, Deficits, otherCustomer, Recipts, UseUnits,
  ReciptTypes, CofferFormTypes, GetOtherMoney, GetCheck, Rpt001,
  rptFormsOnStuff, RptCoffer, rptCustomerTransaction, RptEntityStuffGrp,
  rptCustomersBalance, RptReciptWithCust, RptChecksIn, DM,
  vjForm1, SelectYear, RestoreDataBase, options, RptCardex2,
  rptCustomerTrancItems, rptCustTransDetails, rptCustTrancDetailsStuff,
  rptCustomerCashTransacion, RptEntityStuffDetails, RptBalanceCoffer,
  MakeDocument, Config, Counting, ConversionCo, CountingItems,
  BudgetTopicLevels, BudgetTopics2, rptBudgetTransaction, rptBudget,
  RptReciptWithCustMonths, RptReciptWithGrpCustMonths, rptFormsOnStuffMonths,
  rptStuffCodingMonths, rptStuffGroupsMonths, RptChecks4Print,
  CalculateOutPut, MakeDocumentCoffer, MakeDocumentCheck, PrintStuffLabel,
  TrancService_Cust2, rptBalanceService, TrancstuffDetails, StuffTransaction,
  About, CDBurn, rptBudgetRevenu, PaymentCash, LOGIN3, NewYear, mmessage,
  StuffTransaction_ControlCode, StuffGroupsTransaction, AddToolbar,
  Operators2, rptUseUnit, rptGroupUseUnit, TarazGroupUseUnit, rptHavaleh,
  rptTrancDetails, rptCashier, ScheduleTypes, ScheduleInfo, ScheduleProcItems,
  ScheduleTimeTabel, ScheduleTimeWorks, RptScheduleTimeWorks,
  RptMashin_StuffLossItems, RptMashin_TimePerson,
  RptMashin_WorksItems, PurchaseEffect, rptTrans_Cust, RptEntityStuffAllStore,
  RptEntityStuffGrpAllStore, RptEntityStuffDetailsAllStore,
  rptEntityOnDetailStuffsAllStore, RptControlEntity, rptAnalayzSells,
  rptCheckSadereh_State, shamsiDate, RecallBranch, StuffTranction_Detail,
  rptCountingItems, PrintCountingLabel, rptRefineSell,
  rptCompare_Count_Entity, UpDateBank, rptSupportMonths, rptSupportCustMonths,
  rptBuySpecialOnCostomers, rptReciptListOnStuffCode,
  rptReciptListOnCustomers, Earth, rptEntityOnDetailStuffs_wihtoutMoney,
  PaymentExpence, RptControlCardex, GetFirstEntity, RecallBranchChecks,
  RptReports, StuffCodingSpecial, ExcelImport, ExcelImportToTabel, UseOthers,
  LookUpNew, ListUses, Earth2, Manifesto, StuffCodingToXml, InvoiceWithCash,
  rptWorkCustomer, RentRecipts, rptCofferTrans2, Incorporate, FormDesign,
  AddressInfo, ChangeUnit, MaliYear, AddressInMasir, ReciptRelease,
  MakeMaliYear, RemainEarly, Agreements, Quota, ReciptsRegulation,
  ReciptOnPersonel, rptCheckInForms, FormFunctions,
  RecallBranchNew, RecallBranchChecksNew, Negotiations, Proforma, ReciptsGrid,
  rptOrderControlPoint, Costs, Insurances, Customers, Sellers,
  TshFunctions, TshSchedules, FaraConsts, OfficeCustomer, StuffCodingMachinery,
  Maintenance, MachinDelivery, SellPlan2, Cnt_Contracts, Cnt_ContractOperations,
  Cnt_RunSchedules, Cnt_RunScheduleItems, RptCardMachines,
  ConsumptionStatistics, RptOperational, StuffCodeSearch,
  ProductionForecasts, ConversionCoCalc, Zone, RptCardexParentCo, Forwards,
  ConversionCoList, SMService, TshClockDmp, Position, FlowForms,
  Mailboxdatacontrol, rptFunctionComparison, rptLoan,
  CofferGeneralReport, FaraDesktopAlert, ProductionForecasts2,
  UpdateUnitSellPrice, SomeChangeOrders, rptMailboxdatacontrol, rptCardProject,
  rptCofferTransAll, StuffGroups2, Forwards2, MaintenanceGeneralReport,
  ReciptsFund, rptOrderPointAnalytical, StuffCodingMachinery2, MachineStop2,
  RequestManagement, IntegrateDatabase, CountingList, SendSMS,
  WorkflowMain, MainTaskList, Marketting, DesignForms, rptCash,
  RptScheduleTimeWorks_Stuff, SellPricing, rptCountingItemsCtrl, ReciptsImport,
  GetAllReciptFromExl, Artworks, MakeDesignForms, RptDesignForms, Ratings,
  ChangeCustID, ReviewOrders, GeneralDM, ProfitOrLosss, InventoryByBarcode,
  ReviewRequests, GroupReciptPost, Ranking, rptCustomersBalance2,
  StuffTransactionSum, RptReciptsRegulates, GeneralRegistration,
  RptControlCardex2, Pakings, ExcelConflict, CountingDetails, SellsWithCost,
  rptCompare_Count_EntityD, OperatorNotification_U, OperatorNotification,
  RptTrialBalance_Details, UpdateExe, BackupData, GetAllFormFromExl, Stereotypy

  // ---------------------------------
    , AccTopicLevels, Categories, RptTrialBalance_Acc, DescTemplates, infoSMS,
  DetailGroups, RptTrialBalance_CTopics, GeneralJournal, Rpt_Ledger, Eftetahieh,
  Rpt_AccBook, Rpt_AccDetailOnTopicBook, FinancialTopics2, Companies, MoveDoc,
  Rpt_CtopicsOnTopicBook, Rpt_CtopicsOnDetailsBook, DocTypes, accCode2, Details,
  FormTypes, FormInfo_Acc, FinancialTopics_1, FinancialTopics_3,
  RptFinanceReport,
  FinancialTopics_4, rptJournal, rptDailyDocuments, rptMonthDocuments,
  rptBalaceKollWithSomeColumn, Ekhtetamie, RptBalanceDetailWithSomeColumn,
  SearchDocs, AccComprasionMonthBalance, AccComprasionMonthCtopicBalance,
  AccComprasionMonthDetailBalance, rptAnalyzeBalance, AccBookAnalyze,
  RptTrialBalance_CTopics2, Rpt_Ctopics2OnTopicBook, PortionTopicCode,
  PortionTable, PortionRange, Rpt_Ctopics2OnDetailsBook, listPortionRange,
  RptPortionShare, DocTransaction, MakeDocPortionShare, Manifest, rptCurrency,
  rptAnalyzeCormparisonBalance, rptAnalyzeAccountInfo, BudgetInterface,
  BudjectInformation, InportDocGroups, SpecialAccDetailOnTopicBook,
  AccDetailBookForSomeYear, ChangeCodeDoc, AccBookForSomeYear, AccCompare,
  Contacts, PortionTable2, ReViewCoding, Math, filter_ADO, PortionInDoc,
  BackUpMaliYear, ShowPdf, RptBalanceCtopicWithSomeColumn, specialTrialBalance,
  rptAnalyzeBalanceMonth, Resource, ConfigTrial, HelpShow, FinanceReports,
  DefineReportItems, DefineReport, SelectDefineReport, listPortionRange_2,
  RptTrialBalance_CTopics_Details, Expense, ExpenseList, rptBudgect_WorkTopic,
  RptTrialBalance_CTopics2_CTopics, XOptions, AccComprasionMonthCtopic2Balance,
  rptBudgect_WorkTopicWithDetail, rptMatrixBalance, rptMatrixBalance2,
  YearsTrialBalance,
  VarianceBook, BudgetApproved, Commitments, BudgetList, BudgetItemsList,
  BudgetReport, ContrastAccount, UserDetailRelated, CreateSanamaXML,
  DocReference, RptTrialBalance_CTopics3, Rpt_Ctopics3OnTopicBook,
  RptTrialBalance_CTopics3_CTopics, Rpt_Ctopics3OnDetailsBook,
  UserDetailRelated2, RptBalanceDetailWithSomeColumnKol, ConfigAcc, SendToDivan,
  VarianceBookBsell, RequestCash, BudgetTopicBook, BudgetSettlement,
  /// ///////////////////////////
  ConfigPay, FormInfo_1, FormTypesPay, FormInfo_4, FormInfo_2, Interdicts,
  FormInfo_3, PersonelFormInfo_1, EmployeeInfolist, PersonelInfo,
  InsuranceCONSTinfo, EmployeeLoan, FunctionItems, Interdicts4Form, KartSaat1_1,
  EmployeeDeeExtinfo, PersonalArchive, PersonelDecExtInfo_2,
  rptfunction, WordSend, InterdictEffectList, FormInfo_5,
  MissionItems, DecExtCalculate, PersonelDecExtinfo, ArchiveInfo,
  EmployeeDeeExtinfo_4, rptFunction4ProjectPerson, RptFunctionWithMonth, Pony,
  rptPayableSalary, MakeBankDSK, InterdictsWarn, Interdicts4History,
  ListSalary, rptLoanPersonel, Insurance,
  SalaryList_insurance, SalaryList_Office, SalaryList_Personel, GetReprots,
  SummerySalaryList, SalaryListGroup, Interdicts4Items, SalaryList4GetReprots,
  DetailInterdictList, AllSalaryList, rptLoanSalary, FunctionDay, FormInfo_6,
  RetardSalaryList, KartSaat2_1, SalaryList4Office, SummerySalaryList_Personel,
  SalaryList4Office2, RptCrossTab, FunctionYears, SalaryOverTime,
  SalaryList3col, SalaryListTax, RetardListSalary,
  SalaryList_insurance2, FunctionItems2, ListPensioner, MakeDocumentpay,
  CalcAnnuity, PersonalTide, SalaryEndService, InsouranceOther,
  rptInsouranceOther, ListBimehNew, PersonelLeave, DecExtOnMounth, Mission,
  InterdictsEndDateWarn, FunctionDayList, FunctionDayChek,
  SalaryList4Office25, ChangeWage, calcArchiveInfo2, KartSaat_donya,
  MakeDocumentDec, KartSaat_Win, PersonelSponsorship, KartSaat_New,
  SalaryList4Office25_2, SalaryList4CTopicCode, FunctionDayChek2,
  MissionInfo, MakeDocumentMission, SalaryList4OfficeUnLimit, EmployeeLoanItem,
  PersonelAccounts, SalaryListProjectGroup, SalaryList4Project,
  SalaryList4Office25Mission, SalaryList4SumOfficeUnLimit,
  FunctionSpecialControl, rptInsouranceOther2, rptFunctionSpecialControl,
  jobs, FormDesignSalary, RecInMinistry,
  RecOutMinistry, SalaryList4Office3, rptFunctionYear, JobsInfolist,
  SalaryList4Office3Year, SpAnalysisSalary, PersonelListPensioner,
  Interdicts4Copy, PersonelDecExt_111,
  SummerySalaryList_PersonelTotal, DecExtOnMounthSeparation,
  SalaryList4Office3YearDecWage, ADD2PersonelDecExt, VacationOver9,
  SpAnalysisSalaryActualCosts, ArchiveInfo2, GetReprotsKaroon, ListSalaryKaroon,
  MakeDskTax95, FormInfo_5Formula, FeedBackList,
  SummerySalaryList_PersonelTotal2, SalaryListProjectGroupYear, Pony2,
  SalaryList_insurancePart, PonyList, Interdicts4ItemsTide,
  SalaryList4OfficeMonth, rptFunctionItemYear, SalaryList4Office25_UnLimit,
  SendToOracel, SalaryList_Project, RecallBranchPay, RptTrialBalance_AccFin,
  Customers2, CustomersProject, SecurityCode, AuditLog,
  RptTrialBalance_AccStore, GetFirstDepTable, SellsEmporiums, Rpt001FD,
  FindMenuInfo, feedback, StuffTransactionDate, ImportData, ListBimehRetired,
  OperatorsNew, CustomersNotUse, IntegratingAcc2Fara, RptControlCardexFD,
  Operators4, rptCash2, RptSalaryAdjustment, UserActivities;

{$R *.dfm}

function FindItemInner(Item: TMenuItem; const Caption: String): TMenuItem;
var
  i: Integer;
begin
  Result := Nil;
  if Item.Caption = Caption then
  begin
    Result := Item;
    Exit;
  end
  else
  begin
    for i := 0 to Item.Count - 1 do
    begin
      Result := FindItemInner(Item.Items[i], Caption);
      if Result <> Nil then
        Break;
    end;
  end;
end;

procedure TmainF.UpdateDynamicMenu();
var
  i, j: Integer;
  s: string;
  Menu1: TMainMenu;
  Item, Item2: TMenuItem;
  qryMenuFind, qryMenuD: TADOQuery;
begin
  qryMenuD := TADOQuery.Create(nil);
  qryMenuFind := TADOQuery.Create(nil);
  with qryMenuD do
  begin
    Connection := theFaraSystems;
    SQL.ADD('Delete from MenuDynamic');
    ExecSQL;
    SQL.Clear;
    SQL.ADD('Select * from MenuDynamic ');
    Open;
  end;
  with qryMenuFind do
  begin
    Connection := theFaraSystems;
    SQL.ADD('SELECT ID,MenuName ,MenuCaption FROM Menu_M WHERE MenuCaption =:MenuCaption');
    Open;
  end;

  for j := 0 to mainF.ComponentCount - 1 do
  begin
    if mainF.Components[j] = nil then
      Continue;
    if (mainF.Components[j] is TMainMenu) then
    begin
      Menu1 := TMainMenu(mainF.Components[j]);
      for Item in Menu1.Items do
      begin
        Item2 := FindItemInner(Item, Item.Caption);
        for i := 0 to Item2.Count - 1 do
        begin
          s := Item2[i].Caption;
          delete(s, Pos('&', s), 1);
          qryMenuFind.Close;
          qryMenuFind.Parameters[0].Value := s;
          qryMenuFind.Open;
          if (Item2[i].Name = '') and (s <> '-') then
          begin
            qryMenuD.Insert;
            qryMenuD.FieldByName('MenuName_M').AsString := Item.Name;
            qryMenuD.FieldByName('MenuCaption').AsString := s;
            qryMenuD.Post;
          end;
        end;
      end;
    end;
  end;
  with qryMenuD do
  begin
    Close;
    SQL.Clear;
    SQL.ADD('UPDATE MenuDynamic SET FormName = FormDynamicCoding.FormName, ReciptType = MenuD_1.ReciptType ');
    SQL.ADD('FROM (SELECT ReciptCaption, TemplateCode, NULL AS Formname, ReciptType FROM ');
    SQL.ADD(APPBank.Name + '.dbo.ReciptTypes as MenuD union all');
    SQL.ADD(' SELECT FormCaption, DisplayFormType, NULL AS Formname, NULL AS ReciptType FROM ');
    SQL.ADD(APPBank.Name + '.dbo.formTypes as MenuD) AS MenuD_1');
    SQL.ADD(' INNER JOIN FormDynamicCoding ON MenuD_1.TemplateCode = FormDynamicCoding.TemplateCode INNER JOIN ');
    SQL.ADD(' MenuDynamic ON MenuD_1.ReciptCaption = MenuDynamic.MenuCaption ');

    SQL.ADD('UPDATE MenuDynamic SET ReciptType = ' + APPBank.Name +
      '.dbo.ReciptTypes1.ReciptType ');
    SQL.ADD(',FormName = case TemplateCode when 13 then ' +
      QuotedStr('GetTozinListF') + ' when 5 then ' + QuotedStr('ReciptsBuyList')
      + ' when 1 then ' + QuotedStr('rptBuySpecialF') + ' else ' +
      QuotedStr('Rpt001F') + ' end FROM ');
    SQL.ADD(APPBank.Name + '.dbo.ReciptTypes1 INNER JOIN  MenuDynamic ON ' +
      QuotedStr('لیست ') + '+');
    SQL.ADD(APPBank.Name +
      '.dbo.ReciptTypes1.ReciptCaption = MenuDynamic.MenuCaption WHERE (');
    SQL.ADD(APPBank.Name +
      '.dbo.ReciptTypes1.ShowListOnMnu = 1) AND (MenuDynamic.FormName IS NULL) AND (MenuDynamic.ReciptType IS NULL)');
    // SQL.ADD(' delete FROM MenuDynamic where FormName is null');
    ExecSQL;
  end;
end;

procedure TmainF.UpdateStatusbarMain;
var
  T1, T2: TThread;

begin
  // add2log('OYO-10');
  optP.StartMaliYear := APPBank.StartYear;
  optP.FinishMaliYear := APPBank.endYear;
  mdiMainF.LoadBackgroundImage;

  statMain.Panels[1].Text := Format(' سال مالي %.2d', [APPBank.year]) + ' <> ' +
    APPBank.Name + ' -> ' + opt.AccountName;
  statMain.Panels[2].Text := Format('امروز %s %s‏',
    [formatdatetime('dddd', date), var_glb_CurrentDate]);
  statMain.Panels[3].Text := 'نام كاربر : ' + User.Name;
  // statMain.Panels[4].Text := APPBank.Title;

  mdiMainF.OnActivate(mdiMainF);

  mdiMainF.lblVersion.Caption := 'Version: ' + getversion;
  statMain.Panels[4].Text := FcompanyCodeLogin.ToString;
  statMain.Panels[5].Text := APPBank.Title + ' ' + mdiMainF.lblVersion.Caption;

  if DMF.adcAccounting.Connected then
    mdiMainF.lblVersion.Caption := mdiMainF.lblVersion.Caption + #10 +
      'حسابداري فعال';

  if optSub.ActiveCoffer then
  begin
    try
      // mainF.CheckWarn;
      T1 := TThread.CreateAnonymousThread(
        procedure()
        begin
          TThread.Synchronize(nil, mainF.CheckWarn)
        end);
      T1.FreeOnTerminate := True;
      T1.Start;
    finally
    end;

    try
      T2 := TThread.CreateAnonymousThread(
        procedure()
        begin
          TThread.Synchronize(nil, mainF.CheckWarnWarrantyFormTypes)
        end);
      T2.FreeOnTerminate := True;
      T2.Start;
    finally
    end;

  end;

  // add2log('OYO-11');
  CheckNotification;

  if User.admin then
    DoSomething(1);
  // add2log('OYO-12');
  SetUserQualitative;
  // add2log('OYO-13');
  SelectDefaultYear;
  // add2log('OYO-14');

  if ((User.Email = EmptyStr) or (User.Mobile = EmptyStr)) then
    initDesktopAlert(0, 'جهت اطلاع رسانی موضوعات امنیتی سیستم' + #13#10 +
      'اطلاعات شماره همراه و ایمیل خود را تکمیل کنید', OperatorsClick);

  // try
  //
  // if WorkflowDmF.RunStartupWorkflow('StartupWorkFlow') <> EmptyStr then
  // Warn2('(StartupWorkFlow)درحال اجرای گردش کارهای ابتدای سیستم');
  //
  // if (not Assigned(Tasklst)) and (User.OperatorKind = 0) then
  // begin
  // Tasklst := TTaskInstanceList.Create(TTaskInstanceItem);
  // theWorkflowStudio.TaskManager.LoadTaskInstanceList(Tasklst, tfUser,
  // WorkflowDmF.GETUser.UserId, True, '');
  // if Tasklst.Count > 0 then
  // initDesktopAlert(0, 'تعداد ' + Tasklst.Count.ToString +
  // '  درخواست در کارتابل شما وجود دارد', mnuMainTaskListFClick, 0);
  // end;
  //
  // except
  // on E: Exception do
  // end;

  if ((optSub.Subsys[17] = '1') or (optSub.Subsys[18] = '1')) then
  begin
    AddBalance2Menu;
    MnuAcc_Mnu_AccCode3.Visible := False;
    // Mnu_AccCode3.Visible and NOT(opt.CountAccLevel = 3);
    MnuAcc_MnuAccBook_4.Visible := MnuAcc_MnuAccBook_4.Visible and
      MnuAcc_Mnu_AccCode3.Visible;
    MnuAcc_MnuTRialBalanceAcc_4.Visible :=
      MnuAcc_MnuTRialBalanceAcc_4.Visible and MnuAcc_Mnu_AccCode3.Visible;

    MnuAcc_Details.Visible := MnuAcc_Details.Visible and
      (DMF.ReadBankConfigAcc('DetailCodeActive', '1') = '1');
    MnuAcc__DetailGroup.Visible := MnuAcc__DetailGroup.Visible and
      MnuAcc_Details.Visible;

    MnuAcc_MnuTRialBalanceCtopic_1.Visible :=
      MnuAcc_MnuTRialBalanceCtopic_1.Visible and optA.ActiveCtopic1;
    MnuAcc_MnuAllCtopicsBook.Visible := MnuAcc_MnuAllCtopicsBook.Visible and
      optA.ActiveCtopic1;
    MnuAcc_OfficeCtopic2.Visible := MnuAcc_OfficeCtopic2.Visible and
      optA.ActiveCtopic2;
    MnuAcc_MnuTRialBalanceCtopic_2.Visible :=
      MnuAcc_MnuTRialBalanceCtopic_2.Visible and optA.ActiveCtopic2;

    MnuAcc_ImportDocGroups.Enabled := APPBank.StatusYear <> 2;
    MnuAcc_ChangeCodeDoc.Enabled := MnuAcc_ImportDocGroups.Enabled;
    MnuAcc_Expense.Visible := MnuAcc_Expense.Visible and
      (DMF.ReadBankConfigAcc('ActiveExpense', '0') = '1');
  end;

  // Self.Menu := nil;
  With mdiMainF do
  begin
    ActFunctionsF.Visible := optP.FunctionKind in [0, 1, 2];
    ActFunctions2F.Visible := optP.FunctionKind in [1, 2];
    actFunctionDayF.Visible := optP.FunctionKind in [2];
    MnuPay_FunctionDayChekF28.Visible := actFunctionDayF.Visible;
    MnuPay_FunctionDayListF.Visible := actFunctionDayF.Visible;
    MnuPay_FunctionDayChek2F28.Visible := actFunctionDayF.Visible;
  end;

  try
    T1 := TThread.CreateAnonymousThread(
      procedure()
      begin
        TThread.Synchronize(nil, mainF.InterdictsWarnShow)
      end);
    T1.FreeOnTerminate := True;
    T1.Start;
  finally
  end;

end;

procedure TmainF.UpdateUnitSellPriceF1Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TUpdateUnitSellPriceF, UpdateUnitSellPriceF, Self)
end;

procedure TmainF.FormShow(Sender: TObject);
var
  T, T2: TThread;
  s: string;
  b: Boolean;

  // U: TUpdateSystem;
  // F: TfrmUpdateInfo;

begin
  try

    Self.Enabled := False;
    DMF.adcbsell.Connected := False;
    ALLOWRUN := not(login3F.getUserID = 0);

    try
      if not ALLOWRUN then
      begin
        Close;
        DMF.adcbsell.Close;
        Application.Terminate;
        Exit;
      end;
      if SelectYearF.SelectAYear(APPBank) then
      begin
        assignServerName(DMF.adcbsell, APPBank.Name);
        try
          if GetAppNewVersion then
          begin
            Warn('برنامه با موفقیت به روز شد.' + #10 +
              'لطفا برنامه را دوباره اجرا کنید.', mtInformation);
            Close;
            Exit;
          end;
        except
          on E: Exception do
          begin
            s := 'اشكال در اجراي بروز رسانی برنامه' + #13 + E.Message;
            add2log(s);
            Warn2(s, 3000);
          end;
        end;
        // CheckCustomerMnu;
        AppLogger := TAppUsageLogger.Create(User.ID, User.Name, GetComputerName,
          Getip, APPBank.Name, DMF.adcAuditLog);
        AppLogger.LogLogin; // 1
        // HookADOQueries(AppLogger, []);
        ReadAllOption; // Dmf.adcBSell.Open
        if ((optSub.Subsys[17] = '1') or (optSub.Subsys[18] = '1')) then
          if not Assigned(xopt) then
          begin
            xopt := TXOptionclass.Create(__ConfigINI, 'Acc.Config', 'Options');
          end;
      end
      else
      begin
        Warn('اشكال در اتصال به بانك اطلاعات1', mtError);
        Close;
        Exit;
      end;
      if not MaliYearF.ShowMaliYear then
      begin
        Warn('اشكال در اتصال به سالهاي مالي', mtError);
        Close;
        Exit;
      end;
    except
      on E: Exception do
      begin
        Warn(E.Message);
        Warn('از منوي مديرسيستم بروز رساني را انجام دهيد');
      end;
    end;
    if ALLOWRUN then
    begin

      // add2log('OYO-1') ;

      CreateMDIForm2(TmdiMainF, mdiMainF, Self, 0, wsMaximized);
      // add2log('OYO-2');
      ShowStartUp([Mnu0Coffer, Mnu1Sell, Mnu2Store, Mnu3Schedule,
        Mnu4Procurement, Mnu5ProcurementI, Mnu6Contractors, Mnu7Agriculture,
        Mnu8Machinery, Mnu12MainCoding, Mnu13Store, Mnu24Maneger, Mnu17Acc,
        Mnu18Budget, Mnu19Finalcial, Mnu20Portion, Mnu21SpecialReport

        ]);
      // add2log('OYO-3');
      UpdateStatusbarMain;
      // add2log('OYO-4');
      Self.Enabled := True;
      mdiMainF.ActRptCardexF2.Visible := opt.AidInfoAvailable;
      // mdiMainF.actCardexSpecialinventory.Visible := opt.AidInfoAvailable;
      if MidStr(var_glb_CurrentDate, 6, 5) < '01/16' then
        BigMessage('֍ ֍ سال نو مبارک! ֍ ֍', 1);
      OnCloseQuery := FormCloseQuery;

      // mainF.CalControlReports;
      T := TThread.CreateAnonymousThread(
        procedure()
        begin
          TThread.Synchronize(nil, mainF.CalControlReports)
        end);
      T.FreeOnTerminate := True;
      T.Start;
      // mainF.CalControlReports;

      // mainF.FindInterView;
      T2 := TThread.CreateAnonymousThread(
        procedure()
        begin
          TThread.Synchronize(nil, FindInterView)
        end);
      T2.FreeOnTerminate := True;
      T2.Start;
      // mainF.FindInterView;

      if (Trim(DMF.ReadBankConfig('LastVersion', LastVertion)) < LastVertion)
      then
        CreateChildForm(TUpDateBankF, UpDateBankF, mainF, 0, alNone);

      // if User.OperatorKind = 3 then
      // OperatorsClick(nil);

      SetKeyboardFarsi;
      // add2log('OYO-5');

      if ReadConfig(APPID, 'LastConnectDate', '0') <> var_glb_CurrentDate then
      begin
        uTelegram.SendSystemInfo(APPID + '= #' + opt.ServerName + ' : #' +
          APPBank.CompanyName.Replace(' ', '_').Replace('(', '_') + ' : #' +
          APPBank.Name.Replace(' ', '_') + ' : #' + User.Name.Replace(' ', '_')
          + ' : #P' + User.Mobile + ' : #' + User.Email.Replace(' ', '_') +
          ' : #S' + FSerialLock.Replace('-', '_') + ' : #V' +
          LastVertion.Replace('.', '_'));
      end;
      // add2log('OYO-6');

    end;
  except
    on E: Exception do
    begin
      Warn(E.Message);
      Warn('اشكال در اجراي برنامه تنظيمات را چك كنيد');
      CreateChildForm(TUpDateBankF, UpDateBankF, Self, 0, alNone)
    end;
    // Application.Terminate;
  end;

  if ALLOWRUN then
  begin
    Timer1.Enabled := User.SysWarnTime > 1;
    if Timer1.Enabled then
    begin
      Timer1.Interval := (User.SysWarnTime - 1) * 15 * 60 * 1000;
      if User.SysWarnTime > 5 then
        Timer1.Interval := (User.SysWarnTime - 1) * 60 * 60 * 1000;
    end;

    Timer2.Enabled := User.InterViewTime > 1;
    if Timer2.Enabled then
    begin
      Timer2.Interval := (User.InterViewTime - 1) * 15 * 60 * 1000;
      if User.InterViewTime > 5 then
        Timer2.Interval := (User.InterViewTime - 1) * 60 * 60 * 1000;
    end;

  end
  else
    Application.Terminate;

  Self.OnCloseQuery := FormCloseQuery;

  if Application.MainForm.MDIChildCount > 1 then
    mdiChildrenTabsChange(mdiChildrenTabs, 0, b);

  if DMF.SkinManager.Active then
  begin
    mdiMainF.FormStyle := fsMDIChild;
    mdiMainF.CallMenu;
  end;

  /// ////////////////////////////////////
  ///
  // if FFTP_Host<>'192.168.200.55' then
  // Exit;
  TThread.CreateAnonymousThread(
    procedure
    var
      U: TUpdateSystem;
      NeedShow: Boolean;
    begin
      U := TUpdateSystem.Create(ExtractFilePath(Application.ExeName) +
        'system_info.json', FFTP_Host, 'updater', 'Gyw8A55S1B');

      try
        if not U.UpdateAndLoad then
          Exit;

        NeedShow := U.HasNewMessages or U.IsNewVersion or U.AlertActive;

        if NeedShow then
        begin
          TThread.Synchronize(nil,
            procedure
            var
              F: TfrmUpdateInfo;
            begin
              F := TfrmUpdateInfo.Create(nil);
              try
                F.LoadData(U);
                F.ShowModal;
              finally
                F.Free;
              end;
            end);

          U.SaveLastSeenMessages;
          U.SaveSeenVersion;
        end;

      finally
        U.Free;
      end;
    end).Start;

  /// /////////////////////////

end;

procedure TmainF.CalControlReports;
var
  i: Byte;
begin
  if User.SysWarnTime = 0 then
    Exit;
  with mainF do
  begin
    if tsControlReports.Count = 0 then
      Exit;

    if tsControlReports.Count > 3 then
    begin
      if get_response(IntToStr(tsControlReports.Count) +
        ' گزارش کنترلی بیشتر از تعداد معمول است آیا ادامه می دهید') <> mrYes
      then
        Exit;
    end;

    try
      for i := 0 to tsControlReports.Count - 1 do
      begin
        CreateMDIForm3(True, TRptReportsF, RptReportsF, mdiMainF,
          Integer(tsControlReports.Objects[i]));
        RptReportsF.DBGrid1.setSizeColDBGrid;
        if RptReportsF.qryDetails.RecordCount > 0 then
          initDesktopAlert(Integer(tsControlReports.Objects[i]),
            tsControlReports[i], JvDesktopAlert1BMessageClick)
        else
          RptReportsF.Close
      end;

    except
      on E: Exception do
      begin
        tsControlReports.Clear;
        Warn2('اشكال در نمايش گزارشات كنترلي سيستم' + #10#13 + E.Message);
      end;
    end;

  end;
end;

procedure TmainF.CategoryButtonCommandClick(Sender: TObject);
// var
// mi: TMenuItem;
begin
  // SelectItem(Sender);
  if (Sender is TAction) then
  begin
    // mi := findMenuItemByHint(Menu, (Sender as TAction).Hint);
    SendMessage(Handle, WM_command, StrToInt((Sender as TAction).Hint), 0);
  end;
end;

procedure TmainF.UnitsF0Click(Sender: TObject);
begin
  CreateMDIForm2(TUnitsF, UnitsF, Self)
end;

procedure TmainF.wmmcommand(var Message: TMessage);
var
  mi: TMenuItem;
begin
  mi := Menu.FindItem(message.WParam, fkCommand);
  if mi <> nil then
  begin
    if User.admin then
      CurAccess := 16777215 // عدم داره 2147483647
    else
      CurAccess := mi.HelpContext;
    mi.Click
  end
  else if message.WParam = 61536 then
    Screen.ActiveForm.Close
  else if message.WParam = 61472 then
    Screen.ActiveForm.WindowState := wsMinimized
  else if message.WParam = 61728 then
    Screen.ActiveForm.WindowState := wsNormal
  else if DebugHook <> 0 then

end;

procedure TmainF.StuffGroupsF0Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TStuffGroupsF, StuffGroupsF, Self)
end;

procedure TmainF.CustGroupsF0Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TCustGroupsF, CustGroupsF, Self, GetTag(Sender))
end;

procedure TmainF.CompanyBankAccountsF0Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TCompanyBankAccountsF, CompanyBankAccountsF, Self)
end;

procedure TmainF.CashiersF0Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TCashiersF, CashiersF, Self, GetTag(Sender))
end;

procedure TmainF.DeficitsF0Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TDeficitsF, DeficitsF, Self)
end;

procedure TmainF.otherCustomerF0Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TotherCustomerF, otherCustomerF, Self, GetTag(Sender))
end;

procedure TmainF.UseUnitsF0Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TUseUnitsF, UseUnitsF, Self);
end;

procedure TmainF.StoresF0Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TStoresF, StoresF, Self)
end;

procedure TmainF.CofferFormTypesF0Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TCofferFormTypesF, CofferFormTypesF, Self)
end;

procedure TmainF.ReciptTypesF0Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TReciptTypesF, ReciptTypesF, Self)
end;

procedure TmainF.ReciptsF1Click(Sender: TObject);
begin
  SelectItem(Sender);
  ReciptsF.Enter(GetTag(Sender))
end;

procedure TmainF.GetOtherMoneyF101Click(Sender: TObject);
begin
  SelectItem(Sender);
  GetOtherMoneyF.Enter(101)
end;

procedure TmainF.GetOtherMoneyF102Click(Sender: TObject);
begin
  SelectItem(Sender);
  GetOtherMoneyF.Enter(102)
end;

procedure TmainF.Rpt001F4Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TRpt001F, Rpt001F, Self, 4)
end;

procedure TmainF.Rpt001F5Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TRpt001F, Rpt001F, Self, 5)
end;

procedure TmainF.Rpt001F6Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TRpt001F, Rpt001F, Self, 6)
end;

procedure TmainF.Rpt001F10Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TRpt001F, Rpt001F, Self, 10)
end;

procedure TmainF.Rpt001F11Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TRpt001F, Rpt001F, Self, 11)
end;

procedure TmainF.Rpt001F12Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TRpt001F, Rpt001F, Self, 12)
end;

procedure TmainF.Rpt001F13Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TRpt001F, Rpt001F, Self, 13)
end;

procedure TmainF.Rpt001F7Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TRpt001F, Rpt001F, Self, 7)
end;

procedure TmainF.RptCoffer1Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TRptCofferF, RptCofferF, Self, 1)
end;

procedure TmainF.RptCofferF1Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TRptCofferF, RptCofferF, Self, GetTag(Sender))
end;

procedure TmainF.RptCofferF12Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TRptCofferF, RptCofferF, Self, 12)
end;

procedure TmainF.RptCofferF13Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TRptCofferF, RptCofferF, Self, 13)
end;

procedure TmainF.RptCofferF14Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TRptCofferF, RptCofferF, Self, 14)
end;

procedure TmainF.RptCofferF15Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TRptCofferF, RptCofferF, Self, 15)
end;

procedure TmainF.RptCofferF16Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TRptCofferF, RptCofferF, Self, 16)
end;

procedure TmainF.RptCofferF17Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TRptCofferF, RptCofferF, Self, 17)
end;

procedure TmainF.RptCofferF18Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TRptCofferF, RptCofferF, Self, 18)
end;

procedure TmainF.RptCofferF50Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TRptCofferF, RptCofferF, Self, 50)
end;

procedure TmainF.RptCofferF51Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TRptCofferF, RptCofferF, Self, 51)
end;

procedure TmainF.RptCofferF52Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TRptCofferF, RptCofferF, Self, 52)
end;

procedure TmainF.RptCofferF53Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TRptCofferF, RptCofferF, Self, 53)
end;

procedure TmainF.RptCofferF90Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TRptCofferF, RptCofferF, Self, 90)
end;

procedure TmainF.RptCofferF91Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TRptCofferF, RptCofferF, Self, 91)
end;

procedure TmainF.RptCofferF101Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TRptCofferF, RptCofferF, Self, 101)
end;

procedure TmainF.RptCofferF102Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TRptCofferF, RptCofferF, Self, 102)
end;

procedure TmainF.RptEntityStuffGrpF0Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TRptEntityStuffGrpF, RptEntityStuffGrpF, Self);
end;

procedure TmainF.rptFormsOnStuffF12Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TrptFormsOnStuffF, rptFormsOnStuffF, Self, 12)
end;

procedure TmainF.rptCustomerTransactionF1Click(Sender: TObject);
begin
  SelectItem(Sender);
  mdiMainF.actrptCustomerTransactionF.Execute
end;

procedure TmainF.rptFormsOnStuffF5Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TrptFormsOnStuffF, rptFormsOnStuffF, Self, 5)
end;

procedure TmainF.rptFormsOnStuffF11Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TrptFormsOnStuffF, rptFormsOnStuffF, Self, 11)
end;

procedure TmainF.rptCustomersBalanceF1Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TrptCustomersBalanceF, rptCustomersBalanceF, Self,
    GetTag(Sender))
end;

procedure TmainF.OperatorsClick(Sender: TObject);
var
  i: Integer;
begin
  {
    Operators2F := TOperators2F.Create(Application);
    try
    for i := 0 to High(SubsysMenu) do
    begin
    SubsysMenu[i].Active := optSub.Subsys[i + 1] = '1';
    SubsysMenu[29].Active := True;
    if SubsysMenu[i].Active then
    Operators2F.AddMenu(SubsysMenu[i].sys_Menu,
    SubsysMenu[i].SubsysCaption, i);
    // SetMenuAll(SubsysMenu[i].SubsysCaption, SubsysMenu[i].sys_Menu, i);
    // ifthen(i = 13, 2, i)
    /// ifthen براي اين است كه منو انبار مقداري ريالي يكي است
    end;
    SubsysMenu[29].Active := True;
    Operators2F.ShowModal;
    finally
    Operators2F.Free;
    end; }
  // 1. استفاده از nil به جای Application برای فرم‌های داینامیک و مودال
Operators2F := TOperators2F.Create(nil);
try
  with Operators2F do
  begin
    // 2. حلقه اصلاح شده
    for i := 0 to High(SubsysMenu) do
    begin
      SubsysMenu[i].Active := optSub.Subsys[i + 1] = '1';
      if SubsysMenu[i].Active then
        AddMenu(SubsysMenu[i].sys_Menu, SubsysMenu[i].SubsysCaption, i);
    end;

    // 3. انتقال به بیرون حلقه
    SubsysMenu[29].Active := True;

    // 4. بررسی حالت نمایش
    if opt.OperatorsNewActive then
    begin
      width := 500;
      Height := 500;
      MainPanel.left := 6;
      MainPanel.top := 6;
      MainPanel.BringToFront;

      // نمایش فرم اول به صورت غیرمودال
      Show;

      // ساخت و نمایش فرم دوم به صورت مودال
      Operators4F := TOperators4F.Create(nil);
      try
        Operators4F.ShowModal;
      finally
        Operators4F.Free; // فرم دوم همیشه Free می‌شود
      end;

    end
    else
    begin
      // نمایش فرم اول به صورت مودال
      ShowModal;
    end;
  end;
finally
  // 5. فرم اول در هر دو حالت (چه Show شده باشد چه ShowModal) در نهایت Free می‌شود
  Operators2F.Free;
end;
end;

procedure TmainF.WindowMinimizeAll1Execute(Sender: TObject);
begin
  if MDIChildCount < 2 then
    Abort;
end;

procedure TmainF.MakeBackUpF0Click(Sender: TObject);
begin
  // BackupDatabaseLocalAndNet('', True)
  BackupDataF.Enter
end;

procedure TmainF.RestoreDataBaseClick(Sender: TObject);
begin
  SelectItem(Sender);
  RestoreDataBaseF.Enter
end;

procedure TmainF.ConfigClick(Sender: TObject);
begin
  SelectItem(Sender);
  ConfigF.Enter
end;

// procedure TmainF.SelectYearF0Click(Sender: TObject);
// var
// T: TThread;
// mnu: TMainMenu;
// begin
// SelectItem(Sender);
// if MDIChildCount > 1 then
// begin
// Warn('لطفاً قبل از تغيير سال مالي همه پنجره‌هاي باز را ببنديد.');
// Exit;
// end; //
// mnu := Self.Menu;
// Self.Menu := nil;
//
// // FreeDesktopAlert;
//
// DMF.adcFaraSystem.Close;
// if SelectYearF.SelectAYear(APPBank) then
// try
// DMF.adcbsell.Close;
// DMF.adcAccounting.Connected := False;
// DMF.adcOldAccounting.Connected := False;
//
// DMF.adcSalary.Connected := False;
//
// assignServerName(DMF.adcbsell, APPBank.Name);
// ReadAllOption;
// except
// on E: Exception do
// begin
// Warn('اشكال در اتصال به بانك اطلاعات2' + #13#10 + E.Message, mtError);
// Exit;
// end;
// end; // try
//
// try
// if not MaliYearF.ShowMaliYear then
// Exit;
// except
// on E: Exception do
// begin
// Warn(E.Message);
// Warn('اشكال در اتصال به سالهاي مالي', mtError);
// end;
// end;
//
// UpdateStatusbarMain;
// mdiMainF.FrmCreateMnu;
//
// // mainF.CalControlReports;
// T := TThread.CreateAnonymousThread(
// procedure()
// begin
// TThread.Synchronize(nil, mainF.CalControlReports)
// end);
// T.FreeOnTerminate := True;
// T.Start;
// // mainF.CalControlReports;
//
// if (mainF.Menu = mainF.Mnu13Store) then
// Abort;
//
// Self.Menu := mnu;
//
// if DMF.SkinManager.Active then
// begin
// mdiMainF.FormStyle := fsMDIForm;
// mdiMainF.FormStyle := fsMDIChild;
// mdiMainF.CallMenu;
// Menu.ParentBiDiMode := False;
// Self.Menu.ParentBiDiModeChanged;
// Self.Menu.bidimode := bdlefttoright;
// Self.Menu.ParentBiDiMode := True;
// end;
//
// end;

procedure TmainF.SelectYearF0Click(Sender: TObject);
var
  T: TThread;
  mnu: TMainMenu;
  i: Integer;
  Component: TComponent;
begin
  if DMF.SkinManager.Active then
  begin

    for i := 0 to ComponentCount - 1 do
    begin
      Component := Components[i];
      if Component is TMenu then
      begin
        mnu := TMainMenu(Component);
        mnu.ParentBiDiModeChanged;
        mnu.bidimode := bdrighttoleft;
        mnu.ParentBiDiMode := False;
      end;
    end;
  end;

  if MDIChildCount > 1 then
  begin
    Warn('لطفاً قبل از تغيير سال مالي همه پنجره‌هاي باز را ببنديد.');
    Exit;
  end; //
  mnu := Self.Menu;
  Self.Menu := nil;
  // FreeDesktopAlert;
  DMF.adcFaraSystem.Close;
  if SelectYearF.SelectAYear(APPBank) then
    try
      DMF.adcbsell.Close;
      DMF.adcAccounting.Connected := False;
      DMF.adcOldAccounting.Connected := False;
      DMF.adcSalary.Connected := False;
      assignServerName(DMF.adcbsell, APPBank.Name);
      ReadAllOption;
    except
      on E: Exception do
      begin
        Warn('اشكال در اتصال به بانك اطلاعات2' + #13#10 + E.Message, mtError);
        Exit;
      end;
    end; // try
  try
    if not MaliYearF.ShowMaliYear then
      Exit;
  except
    on E: Exception do
    begin
      Warn(E.Message);
      Warn('اشكال در اتصال به سالهاي مالي', mtError);
    end;
  end;
  UpdateStatusbarMain;
  mdiMainF.FrmCreateMnu;
  // mainF.CalControlReports;
  T := TThread.CreateAnonymousThread(
    procedure()
    begin
      TThread.Synchronize(nil, mainF.CalControlReports)
    end);
  T.FreeOnTerminate := True;
  T.Start;
  // if (mainF.Menu = mainF.Mnu13Store) then
  // Abort;
  if DMF.SkinManager.Active then
  begin
    mdiMainF.FormStyle := fsMDIForm;
    mdiMainF.FormStyle := fsMDIChild;
    mdiMainF.CallMenu;
  end;

  Self.Menu := mnu;
end;

procedure TmainF.SMServiceFEnter1Click(Sender: TObject);
begin
  SelectItem(Sender);
  SMServiceF.Enter();
end;

procedure TmainF.Close0Click(Sender: TObject);
begin
  Close;
end;

procedure TmainF.rptCustTrancDetailsStuffF0Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TrptCustTrancDetailsStuffF, rptCustTrancDetailsStuffF, Self)
end;

procedure TmainF.rptCustTransDetailsF0Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TrptCustTransDetailsF, rptCustTransDetailsF, Self, 1)
end;

procedure TmainF.rptCustomerCashtracsacionF0Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TrptCustomerCashtracsacionF, rptCustomerCashtracsacionF, Self)
end;

procedure TmainF.rptCofferTransF1Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm3(True, TrptCofferTrans2F, rptCofferTrans2F, Self,
    GetTag(Sender))
end;

procedure TmainF.RptEntityStuffDetailsF0Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TRptEntityStuffDetailsF, RptEntityStuffDetailsF, Self)
end;

procedure TmainF.GetOtherMoneyF3Click(Sender: TObject);
begin
  SelectItem(Sender);
  GetOtherMoneyF.Enter(3)
end;

procedure TmainF.GetOtherMoneyF90Click(Sender: TObject);
begin
  SelectItem(Sender);
  GetOtherMoneyF.Enter(90)
end;

procedure TmainF.GetOtherMoneyF91Click(Sender: TObject);
begin
  SelectItem(Sender);
  GetOtherMoneyF.Enter(91)
end;

procedure TmainF.GetAllReciptFromExlF1Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateChildForm(TGetAllFormFromExlF, GetAllFormFromExlF, mainF, 0, alNone)
end;

procedure TmainF.GetCheckF13Click(Sender: TObject);
begin
  SelectItem(Sender);
  GetCheckF.Enter(13)
end;

procedure TmainF.GetCheckF14Click(Sender: TObject);
begin
  SelectItem(Sender);
  GetCheckF.Enter(14)
end;

procedure TmainF.GetCheckF15Click(Sender: TObject);
begin
  SelectItem(Sender);
  GetCheckF.Enter(15)
end;

procedure TmainF.GetCheckF16Click(Sender: TObject);
begin
  SelectItem(Sender);
  GetCheckF.Enter(16)
end;

procedure TmainF.GetCheckF17Click(Sender: TObject);
begin
  SelectItem(Sender);
  GetCheckF.Enter(17)
end;

procedure TmainF.GetCheckF51Click(Sender: TObject);
begin
  SelectItem(Sender);
  GetCheckF.Enter(51)
end;

procedure TmainF.GetCheckF52Click(Sender: TObject);
begin
  SelectItem(Sender);
  GetCheckF.Enter(52)
end;

procedure TmainF.GetCheckF53Click(Sender: TObject);
begin
  SelectItem(Sender);
  GetCheckF.Enter(53)
end;

procedure TmainF.rptBalanceCofferF0Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TrptBalanceCofferF, rptBalanceCofferF, Self, GetTag(Sender))
end;

procedure TmainF.optionsF0Click(Sender: TObject);
begin
  SelectItem(Sender);
  optionsF.Enter
end;

procedure TmainF.BudgetTopicLevelsF0Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TBudgetTopicLevelsF, BudgetTopicLevelsF, Self)
end;

procedure TmainF.BudgetTopics2F0Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TBudgetTopics2F, BudgetTopics2F, Self)
end;

procedure TmainF.rptCofferTransF4Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm3(True, TrptCofferTrans2F, rptCofferTrans2F, Self, 4)
end;

procedure TmainF.rptCofferTransF3Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm3(True, TrptCofferTrans2F, rptCofferTrans2F, Self, 3)
end;

procedure TmainF.RptCofferF70Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TRptCofferF, RptCofferF, Self, 70)
end;

procedure TmainF.RptCofferF71Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TRptCofferF, RptCofferF, Self, 71)
end;

procedure TmainF.RptCofferF80Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TRptCofferF, RptCofferF, Self, 80)
end;

procedure TmainF.RptCofferF81Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TRptCofferF, RptCofferF, Self, 81)
end;

procedure TmainF.RptCofferF82Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TRptCofferF, RptCofferF, Self, 82)
end;

procedure TmainF.GetCheckF70Click(Sender: TObject);
begin
  SelectItem(Sender);
  GetCheckF.Enter(70)
end;

procedure TmainF.GetCheckF71Click(Sender: TObject);
begin
  SelectItem(Sender);
  GetCheckF.Enter(71)
end;

procedure TmainF.GetCheckF80Click(Sender: TObject);
begin
  SelectItem(Sender);
  GetCheckF.Enter(80)
end;

procedure TmainF.GetCheckF81Click(Sender: TObject);
begin
  SelectItem(Sender);
  GetCheckF.Enter(81)
end;

procedure TmainF.GetCheckF82Click(Sender: TObject);
begin
  SelectItem(Sender);
  GetCheckF.Enter(82)
end;

procedure TmainF.rptCofferTransF2Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm3(True, TrptCofferTrans2F, rptCofferTrans2F, Self, 2)
end;

procedure TmainF.rptCofferTransF5Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm3(True, TrptCofferTrans2F, rptCofferTrans2F, Self, 5)
end;

procedure TmainF.CountingF0Click(Sender: TObject);
begin
  SelectItem(Sender);
  CountingF.Enter
end;

procedure TmainF.ConversionCoF0Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TConversionCoF, ConversionCoF, Self)
end;

procedure TmainF.CountingItemsF1Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TCountingItemsF, CountingItemsF, Self, 1)
end;

procedure TmainF.CountingItemsF3Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TCountingItemsF, CountingItemsF, Self, 3)
end;

procedure TmainF.
  CreateMDIForm2TrptCompareCountEntityFrptCompareCountEntityFSelf1Click
  (Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TrptCompare_Count_EntityDF, rptCompare_Count_EntityDF, Self)

end;

procedure TmainF.CountingItemsF2Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TCountingItemsF, CountingItemsF, Self, 2)
end;

procedure TmainF.rptBudgetF0Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TrptBudgetF, rptBudgetF, Self)
end;

procedure TmainF.rptBudgetTransactionF0Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TrptBudgetTransactionF, rptBudgetTransactionF, Self)
end;

procedure TmainF.RptReciptWithCustMonthsF12Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TRptReciptWithCustMonthsF, RptReciptWithCustMonthsF, Self, 12)
end;

procedure TmainF.RptReciptWithGrpCustMonthsF12Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TRptReciptWithGrpCustMonthsF,
    RptReciptWithGrpCustMonthsF, Self, 12)
end;

procedure TmainF.rptFormsOnStuffMonthsF12Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TrptFormsOnStuffMonthsF, rptFormsOnStuffMonthsF, Self, 12)
end;

procedure TmainF.rptStuffCodingMonthsF12Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TrptStuffCodingMonthsF, rptStuffCodingMonthsF, Self, 12)
end;

procedure TmainF.rptStuffGroupsMonthsF12Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TrptStuffGroupsMonthsF, rptStuffGroupsMonthsF, Self, 12)
end;

procedure TmainF.rptStuffGroupsMonthsF6Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TrptStuffGroupsMonthsF, rptStuffGroupsMonthsF, Self, 6)
end;

procedure TmainF.rptStuffCodingMonthsF6Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TrptStuffCodingMonthsF, rptStuffCodingMonthsF, Self, 6)
end;

procedure TmainF.rptFormsOnStuffMonthsF6Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TrptFormsOnStuffMonthsF, rptFormsOnStuffMonthsF, Self, 6)
end;

procedure TmainF.RptReciptWithGrpCustMonthsF6Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TRptReciptWithGrpCustMonthsF,
    RptReciptWithGrpCustMonthsF, Self, 6)
end;

procedure TmainF.RptReciptWithCustMonthsF6Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TRptReciptWithCustMonthsF, RptReciptWithCustMonthsF, Self, 6)
end;

procedure TmainF.RptChecks4PrintF0Click(Sender: TObject);
begin
  SelectItem(Sender);
  RptChecks4PrintF.Enter
end;

procedure TmainF.rptFormsOnStuffF1Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TrptFormsOnStuffF, rptFormsOnStuffF, Self, 1)
end;

procedure TmainF.CalculateOutPutF0Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TCalculateOutPutF, CalculateOutPutF, Self)
end;

procedure TmainF.Tile0Click(Sender: TObject);
begin
  SelectItem(Sender);
  Tile
end;

procedure TmainF.Timer1Timer(Sender: TObject);
begin
  // FreeDesktopAlert;
  Timer1.Enabled := False;
  CalControlReports;
  FindNotification;
  Timer1.Enabled := True;
end;

procedure TmainF.Timer2Timer(Sender: TObject);
begin
  // FreeDesktopAlert;
  // Label1.Tag := Label1.Tag + 1;
  // Label1.Caption := IntToStr(Label1.Tag);
  Timer2.Enabled := False;
  FindInterView;
  Timer2.Enabled := True;
end;

procedure TmainF.tmrForceNotificationTimer(Sender: TObject);
begin
  // FreeDesktopAlert;
  tmrForceNotification.Enabled := False;
  FindNotificationForce;
  tmrForceNotification.Enabled := True;
end;

procedure TmainF.Cascade0Click(Sender: TObject);
begin
  Cascade
end;

procedure TmainF.MakeDocumentF0Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TMakeDocumentF, MakeDocumentF, Self, GetTag(Sender))
end;

procedure TmainF.MakeDocumentCofferF0Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TMakeDocumentCofferF, MakeDocumentCofferF, Self)
end;

procedure TmainF.mnuMakeDesignFormsFClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TMakeDesignFormsF, MakeDesignFormsF, Self)
end;

procedure TmainF.MakeDocumentCheckF0Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TMakeDocumentCheckF, MakeDocumentCheckF, Self)
end;

procedure TmainF.PrintStuffLabelF0Click(Sender: TObject);
begin
  SelectItem(Sender);
  PrintStuffLabelF.Enter
end;

procedure TmainF.ProjectCard1Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TProfitOrLosssF, ProfitOrLosssF, Self)
end;

procedure TmainF.TrancService_Cust2F0Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TTrancService_Cust2F, TrancService_Cust2F, Self)
end;

procedure TmainF.rptBalanceServiceF0Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TrptBalanceServiceF, rptBalanceServiceF, Self)
end;

procedure TmainF.rancstuffDetailsF11Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TTrancstuffDetailsF, TrancstuffDetailsF, Self, 11)
end;

procedure TmainF.StuffTransactionF0Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TStuffTransactionF, StuffTransactionF, Self)
end;

procedure TmainF.aboutF0Click(Sender: TObject);
begin
  SelectItem(Sender);
  aboutF.Enter
end;

procedure TmainF.BackUpBurnCDBsellClick(Sender: TObject);
begin
  SelectItem(Sender);
  CdBurnf.BackUpBurnCD(DMF.adcbsell, APPBank)
end;

procedure TmainF.ReciptsF20Click(Sender: TObject);
begin
  SelectItem(Sender);
  ReciptsF.Enter(20)
end;

procedure TmainF.ReciptsF21Click(Sender: TObject);
begin
  SelectItem(Sender);
  ReciptsF.Enter(21)
end;

procedure TmainF.kl1Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TrptCustTransDetailsF, rptCustTransDetailsF, Self, 6)
end;

procedure TmainF.Rpt001F20Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TRpt001F, Rpt001F, Self, 20)
end;

procedure TmainF.Rpt001F21Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TRpt001F, Rpt001F, Self, 21)
end;

procedure TmainF.Rpt001F14Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TRpt001F, Rpt001F, Self, 14)
end;

procedure TmainF.rptBudgetRevenuF0Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TrptBudgetRevenuF, rptBudgetRevenuF, Self)
end;

procedure TmainF.PaymentCashFClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TPaymentCashF, PaymentCashF, Self, 103)
end;

procedure TmainF.RptChecksInF17Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TRptChecksInF, RptChecksInF, Self, 11)
end;

procedure TmainF.RptChecksInF70Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TRptChecksInF, RptChecksInF, Self, 70)
end;

procedure TmainF.changeUserClick(Sender: TObject);
begin
  SelectItem(Sender);
  FormShow(mainF);
  // if not(login3F.getUserID = 0) then
  // UpdateStatusbar
end;

procedure TmainF.StuffTransaction_ControlCodeClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TStuffTransaction_ControlCodeF,
    StuffTransaction_ControlCodeF, Self)
end;

procedure TmainF.StuffGroupsTransactionClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TStuffGroupsTransactionF, StuffGroupsTransactionF, Self)
end;

procedure TmainF.CommandUpDateClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateChildForm(TUpDateBankF, UpDateBankF, Self, 0, alNone)
end;

procedure TmainF.AddToolbarClick(Sender: TObject);
begin
  SelectItem(Sender);
  try
    AddToolbarF.Enter(Menu)
  finally
    mdiMainF.FrmCreateMnu;
  end;
end;

procedure TmainF.rptUseUnitFClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm3(True, TrptUseUnitF, rptUseUnitF, Self)
end;

procedure TmainF.rptGroupUseUnitFClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm3(True, TrptGroupUseUnitF, rptGroupUseUnitF, Self)
end;

procedure TmainF.ReciptsF2Click(Sender: TObject);
begin
  SelectItem(Sender);
  ReciptsF.Enter(2)
end;

procedure TmainF.ReciptsF3Click(Sender: TObject);
begin
  SelectItem(Sender);
  ReciptsF.Enter(3)
end;

procedure TmainF.GetCheckF21Click(Sender: TObject);
begin
  SelectItem(Sender);
  GetCheckF.Enter(21)
end;

procedure TmainF.GetCheckF22Click(Sender: TObject);
begin
  SelectItem(Sender);
  GetCheckF.Enter(22)
end;

procedure TmainF.GetCheckF73Click(Sender: TObject);
begin
  SelectItem(Sender);
  GetCheckF.Enter(73)
end;

procedure TmainF.TarazGroupUseUnitClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TTarazGroupUseUnitF, TarazGroupUseUnitF, Self)
end;

procedure TmainF.rptHavalehClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TrptHavalehF, rptHavalehF, Self)
end;

procedure TmainF.rptTrancDetailsF12Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TrptTrancDetailsF, rptTrancDetailsF, Self, 12)
end;

procedure TmainF.MnuRptChecksInF50Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TRptChecksInF, RptChecksInF, Self, 50)
end;

procedure TmainF.mnuReciptsFundFClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TReciptsFundF, ReciptsFundF, mainF)
end;

procedure TmainF.mnuReciptsgridFEnterClick(Sender: TObject);
begin
  SelectItem(Sender);
  ReciptsGridF.Enter(GetTag(Sender))
end;

procedure TmainF.mnuReciptsImportClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TReciptsImportF, ReciptsImportF, mainF)
end;

procedure TmainF.mnuRpt00Click(Sender: TObject);
begin
  SelectItem(Sender);
  if CtrlDown then
    CreateMDIForm2(TRpt001fdF, Rpt001fdF, mdiMainF, GetTag(Sender))
  else
    CreateMDIForm2(TRpt001F, Rpt001F, mdiMainF, GetTag(Sender))

end;

procedure TmainF.mnuRptCardMachinesFClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TRptCardMachinesF, RptCardMachinesF, Self, GetTag(Sender))
end;

procedure TmainF.mnuRptChecksInF17Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TRptChecksInF, RptChecksInF, Self, 17)
end;

procedure TmainF.statMainDblClick(Sender: TObject);

// var
// i, j: Integer;
// FormClass: TFormClass;
// Form: TForm;
// ActionList: TActionList;
// Action: TContainedAction;
// s: string;

begin
  // theServerClient.Connect2Server;
  // CreateMDIForm2(TProfitOrLosssF, ProfitOrLosssF, Self);

  // while JvDesktopAlertStack1.Count > 0 do
  // JvDesktopAlertStack1.Items[JvDesktopAlertStack1.Count - 1].Close;

  //
  //
  // SelectItem(Sender);
  // FormClass := TFormClass(FindClass('ReciptsGridF'));
  // if Assigned(FormClass) then
  // begin
  // Form := FormClass.Create(nil);
  // try
  // for i := 0 to Form.ComponentCount - 1 do
  // begin
  // if Form.Components[i] is TActionList then
  // begin
  // ActionList := TActionList(Form.Components[i]);
  // for j := 0 to ActionList.ActionCount - 1 do
  // begin
  // Action := ActionList.Actions[j];
  // s := s + #13#10 + Action.Name;
  //
  // end;
  // end;
  // end;
  // finally
  // Form.Free;
  // end;
  // ShowMessage(s);
  // end
  // else
  // ShowMessage('Form not found');

end;

procedure TmainF.statMainDrawPanel(StatusBar: TStatusBar; Panel: TStatusPanel;
const Rect: TRect);
var
  Btm: TBitmap;
  _Width: Integer;
begin
  _Width := 0;
  StatusBar.Hint := 'ServerName = ' + opt.ServerName;
  if LockIsSet then
  begin
    Btm := TBitmap.Create;
    with Btm do
      try
        Transparent := True;
        LoadFromResourceName(HInstance, 'LockIsSet');
        StatusBar.Canvas.Draw((Rect.left + Rect.Right - Btm.width) div 2 - 10,
          (Rect.top + Rect.Bottom - Btm.Height) div 2, Btm);
        _Width := width;
      finally
        Free
      end;
  end;

  if (opt.ServerName = EmptyStr) then
    Exit;
  if Pos(GetComputerName + '\', UpperCase(opt.ServerName + '\')) <> 0 then
    Exit;
  Btm := TBitmap.Create;
  with Btm do
    try
      Transparent := True;
      LoadFromResourceName(HInstance, 'NetOn');
      StatusBar.Canvas.Draw((_Width + 5), (Rect.top + Rect.Bottom - Btm.Height)
        div 2, Btm);
    finally
      Free
    end;

end;

procedure TmainF.RptChecksInF80Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TRptChecksInF, RptChecksInF, Self, 80)
end;

procedure TmainF.GetCheckF23Click(Sender: TObject);
begin
  SelectItem(Sender);
  GetCheckF.Enter(23)
end;

procedure TmainF.RptCofferF23Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TRptCofferF, RptCofferF, Self, 23)
end;

procedure TmainF.MakeMaliYearClick(Sender: TObject);
begin
  SelectItem(Sender);
  if opt.IsEstil then
    if get_box('تأييد ايجاد سال مالي با اين روش!!!' + #13#10 +
      'ايجاد سال مالي با اين روش براي اطلاعات شما مناسب نمي‌باشد',
      'لطفاً كلمه رمز را براي تأييد ايجاد سال مالي وارد كنيد:', '', True) <> VeijeCode
    then
      Exit;

  CreateChildForm(TMakeMaliYearF, MakeMaliYearF, Self, 0, alNone)
end;

procedure TmainF.NewYearClick(Sender: TObject);
begin
  if NOT opt.IsEstil then
    if get_box('تأييد ايجاد سال مالي با اين روش!!!' + #13#10 +
      'ايجاد سال مالي با اين روش براي اطلاعات شما مناسب نمي‌باشد',
      'لطفاً كلمه رمز را براي تأييد ايجاد سال مالي وارد كنيد:', '', True) <> VeijeCode
    then
      Exit;
  NewYearF.Enter
end;

procedure TmainF.TrptCashierClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TrptCashierF, rptCashierF, Self)
end;

procedure TmainF.N24Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TScheduleTypesF, ScheduleTypesF, Self)
end;

procedure TmainF.N260Click(Sender: TObject);
begin
  SelectItem(Sender);
  theWorkflowStudio.UserInterface.ShowUserTasksDlg
    (WorkflowDmF.GETUser.UserId, wfmMDI);
end;

procedure TmainF.N285Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TConsumptionStatisticsF, ConsumptionStatisticsF, Self)
end;

procedure TmainF.mnuGetOtherMoneyF6Click(Sender: TObject);
begin
  SelectItem(Sender);
  GetOtherMoneyF.Enter(GetTag(Sender))
end;

procedure TmainF.mnuGroupReciptPostFClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TGroupReciptPostF, GroupReciptPostF, Self)
end;

procedure TmainF.N102Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TProductionForecastsF, ProductionForecastsF, Self)
end;

procedure TmainF.N103Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TConversionCoCalcF, ConversionCoCalcF, Self)
end;

procedure TmainF.N110Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TScheduleInfoF, ScheduleInfoF, Self, 1)
end;

procedure TmainF.N290Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TProductionForecasts2F, ProductionForecasts2F, Self)
end;

procedure TmainF.N297Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TStuffCodeSearchF, StuffCodeSearchF, Self)
end;

procedure TmainF.N29Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TScheduleInfoF, ScheduleInfoF, Self, 2)
end;

procedure TmainF.N31Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TScheduleInfoF, ScheduleInfoF, Self, 3)
end;

procedure TmainF.mnuGeneralRegistrationFClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TGeneralRegistrationF, GeneralRegistrationF, Self)
end;

procedure TmainF.MnuGetFirstDepTableClick(Sender: TObject);
begin
  SelectItem(Sender);
  GetFirstDepTablef.Enter
end;

procedure TmainF.N409Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TRptControlCardex2F, RptControlCardex2F, Self, GetTag(Sender))
end;

procedure TmainF.N41Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TScheduleInfoF, ScheduleInfoF, Self, 4)
end;

procedure TmainF.N51Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TScheduleInfoF, ScheduleInfoF, Self, 5)
end;

procedure TmainF.N68Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TScheduleInfoF, ScheduleInfoF, Self, 6)
end;

procedure TmainF.N71Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TScheduleInfoF, ScheduleInfoF, Self, 7)
end;

procedure TmainF.N81Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TScheduleInfoF, ScheduleInfoF, Self, 8)
end;

procedure TmainF.N91Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TScheduleInfoF, ScheduleInfoF, Self, 9)
end;

procedure TmainF.mnuZoneFClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TZoneF, ZoneF, Self)
end;

procedure TmainF.N301Click(Sender: TObject);
begin
  SelectItem(Sender);
  AllAddMenuItem4DesignForms
end;

procedure TmainF.N302Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TRptCardexParentCoF, RptCardexParentCoF, mainF)
end;

procedure TmainF.mnuForwards2FClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TForwardsF, ForwardsF, Self, 2)
end;

procedure TmainF.N30Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TScheduleProcItemsF, ScheduleProcItemsF, Self)
end;

procedure TmainF.mnuMailboxdatacontrolFClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TMailboxdatacontrolF, MailboxdatacontrolF, Self)
end;

procedure TmainF.N321Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TrptFunctionComparisonF, rptFunctionComparisonF, Self)
end;

procedure TmainF.N32Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TScheduleTimeTabelF, ScheduleTimeTabelF, Self)
end;

procedure TmainF.N33Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TScheduleTimeWorksF, ScheduleTimeWorksF, Self)
end;

procedure TmainF.N390Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TRankingF, RankingF, Self)
end;

procedure TmainF.N392Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TStuffTransactionSumF, StuffTransactionSumF, Self)
end;

procedure TmainF.mnuReviewRequestsFClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TReviewRequestsF, ReviewRequestsF, Self)
end;

procedure TmainF.N111Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TRptScheduleTimeWorksF, RptScheduleTimeWorksF, Self)
end;

procedure TmainF.N201Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TPaymentCashF, PaymentCashF, Self, 108)
end;

procedure TmainF.N209Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TForwardsF, ForwardsF, Self, 1)
end;

procedure TmainF.mnuInsurancesFClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TInsurancesF, InsurancesF, Self, 60)
end;

procedure TmainF.mnuIntegrateDatabaseClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateChildForm(TIntegrateDatabaseF, IntegrateDatabaseF, Self, 0, alNone)
end;

procedure TmainF.mnuIntegratingAcc2FaraFClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TIntegratingAcc2FaraF, IntegratingAcc2FaraF, Self)
end;

procedure TmainF.mnuInventoryByBarcodeClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TInventoryByBarcodeF, InventoryByBarcodeF, Self)
end;

procedure TmainF.N210Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TRptScheduleTimeWorks_StuffF,
    RptScheduleTimeWorks_StuffF, Self)
end;

procedure TmainF.N112Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TRptMashin_StuffLossItemsF, RptMashin_StuffLossItemsF, Self)
end;

procedure TmainF.N311Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TRptMashin_TimePersonF, RptMashin_TimePersonF, Self)
end;

procedure TmainF.N318Click(Sender: TObject);
begin
  SelectItem(Sender);
  PositionF.Enter
end;

procedure TmainF.N319Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TFlowFormsF, FlowFormsF, Self)
end;

procedure TmainF.mnuForwardsFClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TForwardsF, ForwardsF, Self, 1)
end;

procedure TmainF.mnuExcelConflictFClick(Sender: TObject);
begin
  SelectItem(Sender);
  ExcelConflictF.Enter
end;

procedure TmainF.N42Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TRptMashin_WorksItemsF, RptMashin_WorksItemsF, Self)
end;

procedure TmainF.N468Click(Sender: TObject);
begin
  SelectItem(Sender);
  OperatorsNewF.Enter;
end;

procedure TmainF.N473Click(Sender: TObject);
begin
  Warn2(' 3 ثانیه پیغام سیستم با ماندن', 3000);

  Warn2('تست پیغام سیستم با ماندن تا بسته شدن', 0);

end;

procedure TmainF.mnuCustomersNotUseFClick(Sender: TObject);
begin
  CreateChildForm(TCustomersNotUseF, CustomersNotUseF, mainF, 0, alNone);
end;

procedure TmainF.MnuSetMakeReportClick(Sender: TObject);
begin
  SelectItem(Sender);
  BigMessage('لطفا صبر کنید.....', 0);
  try
    theServerClient.SellsMethods.SetMakeReport
  except
    on E: Exception do
    begin
      add2log('گزارشات پویا  ' + E.Message);
    end;
  end;
  CloseMessage;
  Warn('انجام شد', mtConfirmation);
end;

procedure TmainF.MnufeedbackClick(Sender: TObject);
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

procedure TmainF.MnuFeedBackListClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TFeedBackListF, FeedBackListF, Self)
end;

procedure TmainF.MnuFindMenuInfoFClick(Sender: TObject);
begin
  SelectItem(Sender);
  FindMenuInfoF.Enter(Menu)
end;

procedure TmainF.N212Click(Sender: TObject);
begin
  SelectItem(Sender);
  ReciptsF.Enter(15)
end;

procedure TmainF.N213Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TForwardsF, ForwardsF, Self, 2)
end;

procedure TmainF.N113Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TRpt001F, Rpt001F, Self, 15)
end;

procedure TmainF.N114Click(Sender: TObject);
begin
  SelectItem(Sender);
  ReciptsF.Enter(15)
end;

procedure TmainF.l1Click(Sender: TObject);
begin
  SelectItem(Sender);
  GetCheckF.Enter(24)
end;

procedure TmainF.rptCofferTransF11Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm3(True, TrptCofferTrans2F, rptCofferTrans2F, Self, 11)
end;

procedure TmainF.N115Click(Sender: TObject);
begin
  SelectItem(Sender);
  GetCheckF.Enter(25)
end;

procedure TmainF.N214Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TRptCofferF, RptCofferF, Self, 26)
end;

procedure TmainF.N236Click(Sender: TObject);
begin
  SelectItem(Sender);
  theWorkflowStudio.UserInterface.ShowWorkflowDefinitionsDlg;
end;

procedure TmainF.mnuOfficeCustomerFAllClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TOfficeCustomerF, OfficeCustomerF, Self, GetTag(Sender))
end;

procedure TmainF.mnuOrderControlPointClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TrptOrderControlPointF, rptOrderControlPointF, Self)
end;

procedure TmainF.mnuOutStuf2Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TrptTrans_CustF, rptTrans_CustF, Self, 11)
end;

procedure TmainF.mnuPakingClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TPakingsF, PakingsF, mainF, GetTag(Sender))
end;

procedure TmainF.mnuProformaClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TProformaF, ProformaF, Self, GetTag(Sender))
end;

procedure TmainF.RptEntityStuffAllStoreClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm3(True, TRptEntityStuffAllStoreF, RptEntityStuffAllStoreF, Self)
end;

procedure TmainF.RptEntityStuffGrpAllStoreClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TRptEntityStuffGrpAllStoreF, RptEntityStuffGrpAllStoreF, Self)
end;

procedure TmainF.RptEntityStuffDetailsAllStoreFClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TRptEntityStuffDetailsAllStoreF,
    RptEntityStuffDetailsAllStoreF, Self)
end;

procedure TmainF.rptEntityOnDetailStuffsAllStoreClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TrptEntityOnDetailStuffsAllStoreF,
    rptEntityOnDetailStuffsAllStoreF, Self)
end;

procedure TmainF.mnuRptControlEntityClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TRptControlEntityF, RptControlEntityF, Self)
end;

procedure TmainF.lbl1DblClick(Sender: TObject);
begin
  SelectItem(Sender);
  SecurityCodeF.Enter
end;

procedure TmainF.log1Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TAuditLogF, AuditLogF, Self)
end;

procedure TmainF.LookUp1Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TLookUpNewF, LookUpNewF, Self, 1)
end;

procedure TmainF.LookUp2Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TLookUpNewF, LookUpNewF, Self, 2)
end;

procedure TmainF.GetCheckF19Click(Sender: TObject);
begin
  SelectItem(Sender);
  GetCheckF.Enter(19)
end;

procedure TmainF.RptCofferF19Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TRptCofferF, RptCofferF, Self, 19)
end;

procedure TmainF.GetCheckF27Click(Sender: TObject);
begin
  SelectItem(Sender);
  GetCheckF.Enter(27)
end;

procedure TmainF.RptCofferF27Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TRptCofferF, RptCofferF, Self, 27)
end;

procedure TmainF.GetCheckF54Click(Sender: TObject);
begin
  SelectItem(Sender);
  GetCheckF.Enter(54)
end;

procedure TmainF.RptCofferF54Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TRptCofferF, RptCofferF, Self, 54)
end;

procedure TmainF.rptanalyzSellsClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TrptAnalayzSellsF, rptAnalayzSellsF, Self)
end;

procedure TmainF.AllAddMenuItem4DesignForms;
var
  NewItem: TMenuItem;
begin
  with mainF do
    try
      with DMF.qryTmpTmp do
      begin
        Active := False;
        SQL.Text := 'SELECT DISTINCT MenuName';
        SQL.ADD('FROM Dsn.DesignForms');
        Active := True;
        while not Eof do
        begin
          try
            TMenuItem(mainF.FindComponent(FieldByName('MenuName')
              .AsString)).Clear;
          except
            on E: Exception do
            begin
              Warn(E.Message);
              Warn('Dsn.DesignFormsاشكال در نام منوهای فرمهای طراحی شده!!‏',
                mtWarning);
            end;
          end;
          Next;
        end;
        Active := False;
        SQL.Text := 'SELECT ID, FormCaption, MenuName ';
        SQL.ADD('FROM Dsn.DesignForms');
        Active := True;
        while not Eof do
        begin
          NewItem := TMenuItem.Create(Self);
          NewItem.Caption := FieldByName('FormCaption').AsString;
          if IsDelphiRunning then
            NewItem.Caption := FieldByName('ID').AsString +
              FieldByName('FormCaption').AsString;
          NewItem.Tag := FieldByName('ID').AsInteger;
          NewItem.OnClick := mnuDesignFormsFClick;
          TMenuItem(mainF.FindComponent(FieldByName('MenuName').AsString))
            .ADD(NewItem);
          Next;
        end;
        if RecordCount > 0 then
        begin
          NewItem := TMenuItem.Create(Self);
          NewItem.Caption := '-';
          TMenuItem(mainF.FindComponent(FieldByName('MenuName').AsString))
            .ADD(NewItem);
        end;
        First;
        while not Eof do
        begin
          NewItem := TMenuItem.Create(Self);
          NewItem.Caption := 'لیست ' + FieldByName('FormCaption').AsString;
          if IsDelphiRunning then
            NewItem.Caption := FieldByName('ID').AsString + 'لیست ' +
              FieldByName('FormCaption').AsString;
          NewItem.Tag := FieldByName('ID').AsInteger;
          NewItem.OnClick := mnuRptDesignFormsFClick;
          TMenuItem(mainF.FindComponent(FieldByName('MenuName').AsString))
            .ADD(NewItem);
          Next;
        end;

        Active := False;
      end;
    except

    end;
end;

procedure TmainF.AllAddMenuItem4Reports;
var
  // mnu: TMainMenu;
  NewItem, FindItem, mnuI: TMenuItem;
  NewAction: TAction;
  mnuName, actName: string;
  // ReportID: Integer;
begin
  MnuPay_MnuSalaryList4GetReprots.Clear;
  with TADOQuery.Create(nil) do
    try
      Connection := DMF.adcFaraSystem;
      Close;
      case opt.LevelGroup of
        3:
          SQL.Text :=
            Format('SELECT FormID, MenuName, FormCaption,linemenu FROM  FormDesign WHERE (n_systemparts = %d) order by Row',
            [32]);
        2:
          SQL.Text :=
            Format('SELECT FormID, MenuName, FormCaption,linemenu FROM  FormDesign WHERE (n_systemparts = %d) And (NOT FormID IN(62))order by Row',
            [32]);
      else
        SQL.Text :=
          Format('SELECT FormID, MenuName, FormCaption,linemenu FROM  FormDesign WHERE (n_systemparts = %d) And (NOT FormID IN(62,61))order by Row',
          [32]);
      end;
      Open;
      mnuInfo.Clear;

      while not Eof do
      begin
        mnuI := TMenuItem(Self.FindComponent(Fields[1].AsString));
        if mnuI <> nil then
        begin
          NewItem := TMenuItem.Create(Self);
          NewItem.Name := 'mnu' +
            IntToStr(FieldByName('FormID').AsInteger * 125);
          NewItem.Caption := FieldByName('FormCaption').AsString;
          if IsDelphiRunning then
            NewItem.Caption := FieldByName('FormID').AsString + NewItem.Caption;
          NewItem.Hint := FieldByName('FormID').AsString;
          NewItem.Tag := FieldByName('FormID').AsInteger;
          NewItem.OnClick := mdiMainF.actExmpelExecute;
          mnuI.ADD(NewItem);
          if FieldByName('linemenu').AsInteger = 1 then
          begin
            NewItem := TMenuItem.Create(nil);
            NewItem.Caption := '-';
            mnuI.ADD(NewItem);
          end;
        end;
        Next;
      end;
      NewItem := TMenuItem.Create(nil);
      NewItem.Action := mdiMainF.actContNow;
      mnuInfo.ADD(NewItem);
    finally
      Free;
    end;

  with mainF do
    try
      with DMF.qryGlbTmpTmp do
      begin
        Active := False;
        SQL.Text := 'SELECT MenuName,max(ReportID) as ReportID FROM Reports ';
        SQL.ADD('WHERE ( n_systemparts  IN (:n_systemparts , :n_systemparts32, :n_systemparts25 , :n_systemparts40 )  )');
        SQL.ADD('AND (MenuName <> ''SalaryOtherReport'')');
        SQL.ADD('GROUP BY MenuName');
        Parameters.ParamByName('n_systemparts').Value := 39;
        if optSub.Subsys[16] = '1' { SubsysMenu[15].Active } then
          Parameters.ParamByName('n_systemparts32').Value := 32
        else
          Parameters.ParamByName('n_systemparts32').Value := 39;

        if (optSub.Subsys[26] = '1') and (optSub.Subsys[25] = '1') then
          Parameters.ParamByName('n_systemparts25').Value := 25
        else
          Parameters.ParamByName('n_systemparts25').Value := 39;

        Parameters.ParamByName('n_systemparts40').Value := 18;

        Active := True;
        tsControlReports.Clear;
        while not Eof do
        begin
          try
            // TMenuItem(mainF.FindComponent(FieldByName('MenuName')
            // .AsString)).Clear;

            FindItem :=
              TMenuItem(mainF.FindComponent(FieldByName('MenuName').AsString));
            if FindItem <> nil then
              FindItem.Clear
            else
              Warn('اشكال در گزارشات!!‏' + #13 + 'MenuName Not Found ' +
                FieldByName('MenuName').AsString + FieldByName('ReportID')
                .AsString, mtWarning);

          except
            on E: Exception do
            begin
              // DMF.adcFaraSystem.Execute
              // (Format('DELETE FROM Reports WHERE (ReportID = %d)',
              // [ReportID]));
              Warn(E.Message);
              Warn('اشكال در گزارشات!!‏' + #13 + 'MenuName Not Found ' +
                FieldByName('MenuName').AsString + FieldByName('ReportID')
                .AsString, mtWarning);
              Exit;
            end;
          end;
          Next;
        end; // while
        Active := False;
        SQL.Text :=
          'SELECT ReportID, ReportName,MenuName,FormCaption4 AS ShortCutKey';
        SQL.ADD('FROM Reports');
        SQL.ADD('WHERE (Row > 0)and(n_systemparts  IN (:n_systemparts , :n_systemparts32 , :n_systemparts25 , :n_systemparts40 ) )');
        SQL.ADD('AND (MenuName <> ''SalaryOtherReport'')');
        Parameters.ParamByName('n_systemparts').Value := 39;

        if optSub.Subsys[16] = '1' { SubsysMenu[15].Active } then
          Parameters.ParamByName('n_systemparts32').Value := 32
        else
          Parameters.ParamByName('n_systemparts32').Value := 39;

        if (optSub.Subsys[26] = '1') and (optSub.Subsys[25] = '1') then
          Parameters.ParamByName('n_systemparts25').Value := 25
        else
          Parameters.ParamByName('n_systemparts25').Value := 39;

        Parameters.ParamByName('n_systemparts40').Value := 18;

        Active := True;
        while not Eof do
        begin
          mnuName := 'mnuReports' + FieldByName('ReportID').AsString;
          actName := 'actReports' + FieldByName('ReportID').AsString;

          NewItem := TMenuItem(mainF.FindComponent(mnuName));
          if NewItem = nil then
            NewItem := TMenuItem.Create(Self);
          NewItem.Name := mnuName;

          NewAction := TAction(mainF.FindComponent(actName));
          if NewAction = nil then
            NewAction := TAction.Create(Self);
          NewAction.Name := actName;

          NewAction.Caption := FieldByName('ReportName').AsString;
          if IsDelphiRunning then
            NewAction.Caption := FieldByName('ReportID').AsString +
              FieldByName('ReportName').AsString;
          NewAction.Tag := FieldByName('ReportID').AsInteger;
          // NewAction.Hint := FieldByName('ReportID').AsString;
          NewAction.OnExecute := mdiMainF.actRptReportsF.OnExecute;
          NewItem.Action := NewAction;
          NewAction.ShortCut := TextToShortCut(FieldByName('ShortCutKey')
            .AsString);
          NewAction.ActionList := mdiMainF.actionlist1;
          if ((FieldByName('ReportID').AsInteger < 3500) or
            (FieldByName('ReportID').AsInteger > 4000)) then
            TMenuItem(mainF.FindComponent(FieldByName('MenuName').AsString))
              .ADD(NewItem)
          else
          begin
            FindItem :=
              TMenuItem(mainF.FindComponent('mnuReportID' +
              FieldByName('ReportID').AsString));
            if FindItem <> nil then
              FindItem.Caption := FieldByName('ReportName').AsString;
            FindItem.Visible := True;
          end;
          if NewAction.Tag = 103 then
          begin
            NewItem := TMenuItem.Create(Self);
            NewItem.Action := NewAction;
            MItemCoffer3.ADD(NewItem);
          end;
          if (FieldByName('ReportID').AsInteger >= 3000) and
            (FieldByName('ReportID').AsInteger <= 3050) and opt.SystemWarn then
          begin
            tsControlReports.AddObject(FieldByName('ReportName').AsString,
              TObject(FieldByName('ReportID').AsInteger));
          end;
          Next;
        end; // while
        Active := False;
      end; // with

      if (optSub.Subsys[26] = '1') and (optSub.Subsys[25] = '1') then
        try
          with DMF.qryTmpTmpp do
          begin
            Active := False;
            SQL.Text :=
              'SELECT GetReprotsID,GetReprotsName FROM Pay.GetReprots';
            Active := True;
            while not Eof do
            begin
              NewItem := TMenuItem.Create(Self);
              NewAction := TAction.Create(Self);
              NewAction.Caption := FieldByName('GetReprotsName').AsString;
              NewAction.Tag := FieldByName('GetReprotsID').AsInteger;
              NewAction.OnExecute :=
                mdiMainF.actSalaryList4GetReprots.OnExecute;
              NewItem.Action := NewAction;
              NewAction.ActionList := mdiMainF.ActionList4;

              MnuPay_MnuSalaryList4GetReprots.ADD(NewItem);
              Next;
            end; // while
            Active := False;
          end; // with
        except
          Warn('اشكال در گزارشات!!‏' + #13 +
            'MenuName Not Found Pay.GetReprots ', mtWarning);
        end;

    finally
      mainF.Bsell_Store_OtherReport.Visible :=
        mainF.Bsell_Store_OtherReport.Count > 0;
      // mainF.BsellSpecialReports.Visible := mainF.BsellSpecialReports.Count > 0;
      mainF.BsellOtherReport.Visible := mainF.BsellOtherReport.Count > 0;
      mainF.Bsell_Coffer_OtherRpt.Visible :=
        mainF.Bsell_Coffer_OtherRpt.Count > 0;
      mainF.Bsell_04Procurement.Visible := mainF.Bsell_04Procurement.Count > 0;

      MnuPay_MnuSalaryList4GetReprots.Visible :=
        MnuPay_MnuSalaryList4GetReprots.Count > 0;
      // SalaryOtherReport.Visible := SalaryOtherReport.Count > 0;
      SalaryOtherReportSalary.Visible := SalaryOtherReportSalary.Count > 0;
      SalaryOtherReportPay.Visible := SalaryOtherReportPay.Count > 0;

    end;

  with mainF, DMF.qryGlbTmpTmp do
    try
      Active := False;
      SQL.Text := 'SELECT MenuName,max(ReportID) as ReportID  FROM Reports';
      SQL.ADD('WHERE (n_systemparts in ( :n_systemparts , :n_systemparts2 ) ) GROUP BY MenuName');
      Parameters.ParamByName('n_systemparts').Value := SYSID;
      Parameters.ParamByName('n_systemparts2').Value := 18;
      Active := True;
      while not Eof do
      begin
        try
          TMenuItem(mainF.FindComponent(FieldByName('MenuName')
            .AsString)).Clear;
        except
          on E: Exception do
          begin
            Warn(E.Message);
            Warn('اشكال در گزارشات!!‏' + #13 + 'MenuName Not Found ' +
              FieldByName('MenuName').AsString + FieldByName('ReportID')
              .AsString, mtWarning);
          end;
        end;
        Next;
      end; // while

      Active := False;
      SQL.Text := 'SELECT ReportID, ReportName,MenuName FROM Reports';
      SQL.ADD('WHERE  (Row > 0)and(n_systemparts  in ( :n_systemparts , :n_systemparts2 )  ) ');
      Parameters.ParamByName('n_systemparts').Value := SYSID;
      Parameters.ParamByName('n_systemparts2').Value := 18;
      Active := True;
      while not Eof do
      begin
        NewItem := TMenuItem.Create(Self);
        NewAction := TAction.Create(Self);
        NewAction.Caption := FieldByName('ReportName').AsString;
        NewAction.Tag := FieldByName('ReportID').AsInteger;
        NewAction.OnExecute := mdiMainF.actRptReportsF.OnExecute;
        NewItem.Action := NewAction;
        // NewAction.ActionList:=mdiMainF.ActionList1;
        TMenuItem(mainF.FindComponent(FieldByName('MenuName').AsString))
          .ADD(NewItem);
        Next;
      end; // while
      Active := False;
      if ((optSub.Subsys[17] = '1') or (optSub.Subsys[18] = '1')) then
      begin
        BuildMenuCoding;
        mdiMainF.addMenu4RequestCash(mainF.MnuAcc_Request);
      end;

    finally
      Active := False;
      // Menu := mnu;
    end;

  if ((optSub.Subsys[17] = '1') or (optSub.Subsys[18] = '1')) then
    with mainF, DMF.qry_Temp do
      try
        Active := False;
        SQL.Text := 'select COUNT(*) from sysobjects';
        SQL.ADD('where id = object_id(N''Acc.Financial_statement'')');
        SQL.ADD('AND xtype in (N''FN'', N''IF'', N''TF'')');
        Active := True;
        mdiMainF.actVU_Financial_statement.Visible := Fields[0].AsInteger = 1;
        mdiMainF.actVU_Financial_statement.Enabled :=
          mdiMainF.actVU_Financial_statement.Visible;
      finally
        Active := False;
      end;

end;

procedure TmainF.AllAddMenuItem4EffectType(Mnu4add: TMenuItem;
NotEvn: TNotifyEvent; EffectType: Byte);

var
  NewItem: TMenuItem;
  NewAction: TAction;
  MenuTag: Integer;
begin
  with mainF do
    with DMF.qryTmpTmp do
    begin
      Mnu4add.Clear;
      Active := False;

      if EffectType <> 0 then
        SQL.Text :=
          'SELECT ReciptType,ReciptCaption FROM ReciptTypes WHERE EffectType=' +
          IntToStr(EffectType)
      else
        SQL.Text :=
          'SELECT ReciptType,ReciptCaption FROM ReciptTypes WHERE SellEffect > 0 ';

      // if mdiMainF.MainFrame = NIL then
      // i := LastMenuId
      // else
      // i := mdiMainF.MainFrame.GetActiveIndex;
      MenuTag := Mnu4add.GetParentMenu.Tag + 1;
      SQL.ADD('and (SUBSTRING(MnuPlaceIDs, ' + IntToStr(MenuTag) + ', 1) = 1)');

      Active := True;
      while not Eof do
      begin
        NewItem := TMenuItem.Create(Self);
        NewAction := TAction.Create(Self);
        NewAction.Caption := Mnu4add.Caption + '>' +
          FieldByName('ReciptCaption').AsString;
        NewAction.Tag := FieldByName('ReciptType').AsInteger;
        NewAction.OnExecute := NotEvn;
        NewItem.Action := NewAction;
        NewAction.ActionList := mdiMainF.actionlist1;
        Mnu4add.ADD(NewItem);
        Next;
      end;
      // while
      Active := False;
    end; // with
end;

procedure TmainF.AllAddMenuItem4LookUps;

var
  NewItem: TMenuItem;
  NewItem2: TMenuItem;
  NewItem3: TMenuItem;
  NewAction: TAction;
  mnuName, actName: string;
begin
  with mainF do
    with DMF.qryTmpTmp do
    begin
      mnuLookUpsF.Clear;
      mnuLookUps2F.Clear;
      mnuLookUps3F.Clear;
      Active := False;
      SQL.Text := 'SELECT LookUpID,Name FROM LookUps';
      SQL.ADD('WHERE (Code > 300) AND (Kind = 0) ');
      Active := True;
      while not Eof do
      begin
        mnuName := 'NewItem1_' + FieldByName('LookUpID').AsString;
        NewItem := TMenuItem(mainF.FindComponent(mnuName));
        if NewItem = nil then
          NewItem := TMenuItem.Create(Self);
        NewItem.Name := mnuName;

        mnuName := 'NewItem2_' + FieldByName('LookUpID').AsString;
        NewItem2 := TMenuItem(mainF.FindComponent(mnuName));
        if NewItem2 = nil then
          NewItem2 := TMenuItem.Create(Self);
        NewItem2.Name := mnuName;

        mnuName := 'NewItem3_' + FieldByName('LookUpID').AsString;
        NewItem3 := TMenuItem(mainF.FindComponent(mnuName));
        if NewItem3 = nil then
          NewItem3 := TMenuItem.Create(Self);
        NewItem3.Name := mnuName;

        actName := 'actNewItem_' + FieldByName('LookUpID').AsString;
        NewAction := TAction(mainF.FindComponent(actName));
        if NewAction = nil then
          NewAction := TAction.Create(Self);
        NewAction.Name := actName;

        NewAction.Caption := FieldByName('Name').AsString;
        NewAction.Tag := FieldByName('LookUpID').AsInteger;
        NewAction.OnExecute := mdiMainF.actMnuLookUpsF.OnExecute;
        NewItem.Action := NewAction;
        NewItem2.Action := NewAction;
        NewItem3.Action := NewAction;
        NewAction.ActionList := mdiMainF.actionlist1;
        mnuLookUpsF.ADD(NewItem);
        mnuLookUps2F.ADD(NewItem2);
        mnuLookUps3F.ADD(NewItem3);
        Next;
      end;
      // while
      Active := False;
    end; // with
end;

procedure TmainF.AddMenuItemFormTypes;

var
  a: Integer;
  NewItem, tmpMnu: TMenuItem;
  NewAction: TAction;
  mnuName, actName: string;
  // Pathini:String;
  procedure AddLine(i: Byte);
  begin
    NewItem := TMenuItem.Create(Self);
    NewItem.Caption := '-';
    TMenuItem(mainF.FindComponent('MItemCoffer' + IntToStr(i))).ADD(NewItem);
  end;

begin
  // Pathini:=IncludeTrailingBackslash(ExtractFilePath(ParamStr(0))) + 'Menu.ini';
  for a := 1 to 8 do
    TMenuItem(FindComponent('MItemCoffer' + IntToStr(a))).Clear;
  with DMF.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'SELECT DISTINCT FormTypes.PrimaryFormType,';
    SQL.ADD('FormTypes_1.FormCaption, FormTypes_1.MnuPlaceID FROM FormTypes INNER JOIN');
    SQL.ADD('FormTypes AS FormTypes_1 ON FormTypes.PrimaryFormType = FormTypes_1.FormType');
    SQL.ADD('WHERE (FormTypes.PrimaryFormType <> 0)');
    try
      Active := True;
    except
      SQL.Text :=
        'if ( COLUMNPROPERTY( OBJECT_ID(''FormTypes''),''PrimaryFormType'',''IsRowGuidCol'')is null )';
      SQL.ADD('ALTER TABLE FormTypes ADD PrimaryFormType Tinyint NOT NULL CONSTRAINT DF_FormTypes_PrimaryFormTypes');
      SQL.ADD('DEFAULT (0)');
      ExecSQL;
      Active := True;
    end;

    while not Eof do
    begin
      for a := 1 to 8 do
      begin
        if SubsysMenu[a].SubsysCaption <> EmptyStr then
          if FieldByName('MnuPlaceID').AsInteger = a then
          begin
            tmpMnu := TMenuItem
              (mainF.FindComponent('MItemCoffer' + IntToStr(a)));
            if tmpMnu <> nil then
              AddItem4SubMenu('MItemCoffer' + IntToStr(a) + '_' +
                FieldByName('PrimaryFormType').AsString,
                FieldByName('FormCaption').AsString, tmpMnu);
          end;
      end;

      Next;
    end;
    Active := False;
    SQL.Text := 'SELECT * ';
    SQL.ADD('FROM FormTypes WHERE (MnuPlaceID>0)');
    SQL.ADD('ORDER BY  RowOnMnu ');
    Active := True;
    while not Eof do
    begin
      mnuName := 'mnuFormTypes' + FieldByName('FormType').AsString;
      actName := 'actFormTypes' + FieldByName('FormType').AsString;

      NewItem := TMenuItem(mainF.FindComponent(mnuName));
      if NewItem = nil then
        NewItem := TMenuItem.Create(Self);
      NewItem.Name := mnuName;

      NewAction := TAction(mainF.FindComponent(actName));
      if NewAction = nil then
        NewAction := TAction.Create(Self);
      NewAction.Name := actName;

      NewAction.Caption := FieldByName('FormCaption').AsString;
      NewAction.ImageIndex :=
        StrToInt(Read_iniConfig(MenuPathini, 'Image' + FieldByName('FormType')
        .AsString, '-1'));
      // CreateImageIndex(NewAction.Caption);
      NewAction.Tag := FieldByName('FormType').AsInteger;
      // NewAction.Hint:='h';
      case FieldByName('DisplayFormType').AsInteger of
        0:
          NewAction.OnExecute := mdiMainF.actMnuGetOtherMoneyF.OnExecute;
        1:
          NewAction.OnExecute := mdiMainF.actMnuGetCheckF.OnExecute;
        2:
          NewAction.OnExecute := mdiMainF.Action6.OnExecute;
        // Warn2('براي فراخواني فرمي وجود ندارد.‏');
        3:
          NewAction.OnExecute := mdiMainF.actMnuPaymentCashF.OnExecute;
        4:
          NewAction.OnExecute := mdiMainF.actMnuPaymentExpenceF.OnExecute;
        5:
          NewAction.OnExecute := mdiMainF.actMnuLoan.OnExecute;
        6:
          begin
            NewAction.OnExecute := mdiMainF.Action6.OnExecute;
            // Warn2('براي فراخواني فرمي وجود ندارد.‏');
          end;
        7:
          NewAction.OnExecute := mdiMainF.actMnuGetOtherMoney2F.OnExecute;
      end;
      NewItem.Action := NewAction;
      NewAction.ActionList := mdiMainF.actionlist1;



      // TMenuItem(mainF.FindComponent('MItemCoffer' + FieldByName('MnuPlaceID')      .AsString)).Add(NewItem);

      for a := 1 to 8 do
      begin
        if (SubsysMenu[a].SubsysCaption <> EmptyStr) then
          if FieldByName('MnuPlaceID').AsInteger = a then
          begin
            if (FieldByName('PrimaryFormType').AsInteger = 0) then

              tmpMnu := TMenuItem
                (mainF.FindComponent('MItemCoffer' + IntToStr(a)))

            else
              tmpMnu := TMenuItem
                (mainF.FindComponent('MItemCoffer' + IntToStr(a) + '_' +
                FieldByName('PrimaryFormType').AsString));

            if tmpMnu <> nil then
              AddItem4Menu(NewAction, tmpMnu, NewAction.Tag.ToString + 'F');

          end;

      end;

      Next;
    end; // while
    if MItemCoffer1.Count > 0 then
      AddLine(1);
    if MItemCoffer2.Count > 0 then
      AddLine(2);
    if MItemCoffer3.Count > 0 then
      AddLine(3);
    if MItemCoffer4.Count > 0 then
      AddLine(4);
    if MItemCoffer5.Count > 0 then
      AddLine(5);
    if MItemCoffer6.Count > 0 then
      AddLine(6);
    if MItemCoffer7.Count > 0 then
      AddLine(7);
    if MItemCoffer8.Count > 0 then
      AddLine(8);
    First;
    while (not Eof) do
    begin
      if (FieldByName('ShowListOnMnu').AsInteger = 1) then
      begin // for List

        mnuName := 'mnuFormTypesL' + FieldByName('FormType').AsString;
        actName := 'actFormTypesL' + FieldByName('FormType').AsString;

        NewItem := TMenuItem(mainF.FindComponent(mnuName));
        if NewItem = nil then
          NewItem := TMenuItem.Create(Self);
        NewItem.Name := mnuName;

        NewAction := TAction(mainF.FindComponent(actName));
        if NewAction = nil then
          NewAction := TAction.Create(Self);
        NewAction.Name := actName;

        NewAction.Caption := 'ليست ' + FieldByName('FormCaption').AsString;
        NewAction.ImageIndex := 30; // CreateImageIndex(NewAction.Caption);
        NewAction.Tag := FieldByName('FormType').AsInteger;

        if (FindField('NextFormType') <> nil) AND
          (FieldByName('NextFormType').AsInteger > 0) then
          NewAction.OnExecute := mdiMainF.actMnuPermitIssuanceF.OnExecute
        else
          NewAction.OnExecute := mdiMainF.actMnuRptCofferF.OnExecute;

        NewItem.Action := NewAction;
        NewAction.ActionList := mdiMainF.actionlist1;
        // TMenuItem(mainF.FindComponent('MItemCoffer' + FieldByName('MnuPlaceID')          .AsString)).Add(NewItem);

        for a := 1 to 8 do
        begin
          if (SubsysMenu[a].SubsysCaption <> EmptyStr) then
            if FieldByName('MnuPlaceID').AsInteger = a then
            begin
              if (FieldByName('PrimaryFormType').AsInteger = 0) then
                tmpMnu := TMenuItem
                  (mainF.FindComponent('MItemCoffer' + IntToStr(a)))
              else
                tmpMnu := TMenuItem
                  (mainF.FindComponent('MItemCoffer' + IntToStr(a) + '_' +
                  FieldByName('PrimaryFormType').AsString));

              if tmpMnu <> nil then
                AddItem4Menu(NewAction, tmpMnu, NewAction.Tag.ToString + 'L');
            end;
        end;
      end; // if

      Next;
    end; // while
    Active := False;
  end; // with

  if MItemCoffer8.Count > 0 then
  begin
    NewItem := TMenuItem.Create(Self);
    NewItem.Caption := '-';
    MItemCoffer8.ADD(NewItem);
    NewItem := TMenuItem.Create(Self);
    NewItem.Caption := 'گزارش وام';
    NewItem.Tag := 109;
    NewItem.OnClick := mnurptLoanFClick;
    MItemCoffer8.ADD(NewItem);
  end;
end;

procedure TmainF.AddMenuItemReciptTypes;

var
  i: Integer;
  New_Item, tmpMnu: TMenuItem;
  NewAction: TAction;
  b: Boolean;
  MnuPlaceIDs, ActionName: string;

  procedure AddLine(j: TMenuItem);
  begin
    New_Item := TMenuItem.Create(Self);
    New_Item.Caption := '-';
    j.ADD(New_Item);
  end;

begin
  for i := 0 to High(SubsysMenu) do
    if SubsysMenu[i].SubsysCaption <> EmptyStr then
    begin
      tmpMnu := TMenuItem(mainF.FindComponent('mnuItemOther' + IntToStr(i)));
      if tmpMnu <> nil then
        tmpMnu.Clear;
    end;
  with DMF.qryTmpTmp do
  begin
    Active := False;
    SQL.Text :=
      'if ( COLUMNPROPERTY( OBJECT_ID(''ReciptTypes''),''MnuPlaceIDs'',''IsRowGuidCol'')is null )';
    SQL.ADD('ALTER TABLE ReciptTypes ADD MnuPlaceIDs VARCHAR(25)');
    ExecSQL;
    // SQL.Text := 'UPDATE ReciptTypes SET MnuPlaceIDs=case MnuPlaceID';
    // SQL.Add('when 0 then ''0000000000000000000000000''');
    // SQL.Add('when 1 then ''0010000000000000000000000''');
    // SQL.Add('when 2 then ''0100000000000000000000000''');
    // SQL.Add('when 3 then ''0001000000000000000000000''');
    // SQL.Add('when 4 then ''0110000000000000000000000''');
    // SQL.Add('when 5 then ''0011000000000000000000000''');
    // SQL.Add('when 6 then ''0101000000000000000000000''');
    // SQL.Add('when 7 then ''0111000000000000000000000''');
    // SQL.Add('end');
    // SQL.Add('WHERE MnuPlaceIDs IS NULL');
    // ExecSQL; // (MnuPlaceID > 0)
    /// ////////// -----------------------------------------------------
    SQL.Text := 'SELECT DISTINCT ReciptTypes.PrimaryReciptType,';
    SQL.ADD('ReciptTypes_1.ReciptCaption, ReciptTypes_1.MnuPlaceIDs FROM ReciptTypes INNER JOIN');
    SQL.ADD('ReciptTypes AS ReciptTypes_1 ON ReciptTypes.PrimaryReciptType = ReciptTypes_1.ReciptType');
    SQL.ADD('WHERE (ReciptTypes.PrimaryReciptType <> 0)');
    Active := True;

    while not Eof do
    begin
      MnuPlaceIDs := FieldByName('MnuPlaceIDs').AsString;
      for i := 0 to High(SubsysMenu) do
      begin
        if SubsysMenu[i].SubsysCaption <> EmptyStr then
          if MnuPlaceIDs[i + 1] = '1' then
          begin
            tmpMnu := TMenuItem(mainF.FindComponent('mnuItemOther' +
              IntToStr(i)));
            if tmpMnu <> nil then
              AddItem4SubMenu('mnuItemOther' + IntToStr(i) + '_' +
                FieldByName('PrimaryReciptType').AsString,
                FieldByName('ReciptCaption').AsString, tmpMnu);
          end;
      end;
      Next;
    end;
    opt.IsEstil := False;
    Active := False;
    SQL.Text := 'SELECT * FROM ReciptTypes WHERE MnuPlaceIDs IS NOT NULL';
    SQL.ADD('ORDER BY  RowOnMnu ');
    Active := True;
    b := FindField('ShortCutKey') <> nil;
    while not Eof do
    begin
      MnuPlaceIDs := FieldByName('MnuPlaceIDs').AsString;
      ActionName := 'actReciptType' + '_' + FieldByName('ReciptType').AsString;

      NewAction := TAction(mainF.FindComponent(ActionName));
      if NewAction = nil then
        NewAction := TAction.Create(Self);
      NewAction.Name := ActionName;
      NewAction.Caption := FieldByName('ReciptCaption').AsString;
      NewAction.Tag := FieldByName('ReciptType').AsInteger;
      NewAction.Hint := 'ReciptType' + FieldByName('ReciptType').AsString;
      NewAction.ImageIndex :=
        StrToInt(Read_iniConfig(MenuPathini,
        'RImage' + FieldByName('ReciptType').AsString, '-1'));
      if b then
        NewAction.ShortCut := TextToShortCut(FieldByName('ShortCutKey')
          .AsString);

      case FieldByName('TemplateCode').AsInteger of
        0:
          begin
            NewAction.OnExecute := mdiMainF.actMnuReciptsF.OnExecute;
            if NewAction.Tag in [5, 12] then
              opt.IsEstil := True;
          end;
        1:
          NewAction.OnExecute := mdiMainF.actMnuStuffToStoreF.OnExecute;
        2:
          NewAction.OnExecute := mdiMainF.actMnuReciptsGridF.OnExecute;
        3:
          NewAction.OnExecute := mdiMainF.actMnuContractF.OnExecute;
        4:
          NewAction.OnExecute := mdiMainF.actMnuContractStuff.OnExecute;
        5:
          NewAction.OnExecute := mdiMainF.actMnuReciptsBuyF.OnExecute;
        6:
          NewAction.OnExecute := mdiMainF.actMnuRentRecipts.OnExecute;
        7:
          NewAction.OnExecute := mdiMainF.actMnuReciptsAnalysisF.OnExecute;
        8:
          NewAction.OnExecute := mdiMainF.actMnuReciptsStoreF.OnExecute;
        9:
          NewAction.OnExecute := mnuMaintenanceFClick;
        10:
          NewAction.OnExecute := mdiMainF.actMnuReciptsGrid2F.OnExecute;
        11:
          NewAction.OnExecute := mdiMainF.actMnuActionPlansF.OnExecute;
        12:
          NewAction.OnExecute := mdiMainF.actMnuCnt_Contracts2F.OnExecute;
        13:
          NewAction.OnExecute := mdiMainF.actMnuGetTozinF.OnExecute;
        14:
          NewAction.OnExecute := mdiMainF.actCnt_ContractsFExecute;
        15:
          NewAction.OnExecute := mdiMainF.actSamplesFExecute;
        16:
          NewAction.OnExecute := mdiMainF.actSampleItemsFExecute;

      end;
      NewAction.ActionList := mdiMainF.actionlist1;

      for i := 0 to High(SubsysMenu) do
      begin
        if (SubsysMenu[i].SubsysCaption <> EmptyStr) then
          if (MnuPlaceIDs[i + 1] = '1') then
          begin
            if (FieldByName('PrimaryReciptType').AsInteger = 0) then

              tmpMnu := TMenuItem
                (mainF.FindComponent('mnuItemOther' + IntToStr(i)))
            else
              tmpMnu := TMenuItem
                (mainF.FindComponent('mnuItemOther' + IntToStr(i) + '_' +
                FieldByName('PrimaryReciptType').AsString));

            if tmpMnu <> nil then
              AddItem4Menu(NewAction, tmpMnu, NewAction.Tag.ToString + '_' +
                i.ToString);

          end;

      end;
      Next;
    end; // while

    for i := 0 to High(SubsysMenu) do
    begin
      if SubsysMenu[i].SubsysCaption <> EmptyStr then
      begin
        tmpMnu := TMenuItem(mainF.FindComponent('mnuItemOther' + IntToStr(i)));
        if (tmpMnu <> nil) and (tmpMnu.Count > 0) then
          AddLine(tmpMnu);
      end;
    end;

    First;
    while (not Eof) do
    begin // for List
      MnuPlaceIDs := FieldByName('MnuPlaceIDs').AsString;
      if (FieldByName('ShowListOnMnu').AsInteger > 0) then
      begin

        ActionName := 'actReciptTypeL' + '_' +
          FieldByName('ReciptType').AsString;
        NewAction := TAction(mainF.FindComponent(ActionName));
        if NewAction = nil then
          NewAction := TAction.Create(Self);
        NewAction.Name := ActionName;

        NewAction.ImageIndex := 30;

        if (FieldByName('ShowListOnMnu').AsInteger = 1) then
        begin
          NewAction.Caption := 'ليست ' + FieldByName('ReciptCaption').AsString;
          NewAction.Tag := FieldByName('ReciptType').AsInteger;
          case FieldByName('TemplateCode').AsInteger of
            1:
              NewAction.OnExecute := mdiMainF.actMnurptBuySpecialF.OnExecute;
            5:
              NewAction.OnExecute := mdiMainF.actMnuReciptsBuyList.OnExecute;
            13:
              NewAction.OnExecute := mdiMainF.actMnuGetTozinListF.OnExecute;
          else
            NewAction.OnExecute := mdiMainF.actMnuRpt001F.OnExecute;
          end;

        end
        else
        begin
          NewAction.Caption := GetReportName(FieldByName('ReportID').AsInteger)
            + ' ' + FieldByName('ReciptCaption').AsString;
          NewAction.Tag := FieldByName('ReportID').AsInteger;
          NewAction.Hint := FieldByName('ReciptType').AsString;
          NewAction.OnExecute := mdiMainF.actRptReportsF.OnExecute;
        end;

        NewAction.ActionList := mdiMainF.actionlist1;

        for i := 0 to High(SubsysMenu) do
        begin
          if SubsysMenu[i].SubsysCaption <> EmptyStr then
            if MnuPlaceIDs[i + 1] = '1' then
            begin
              if FieldByName('PrimaryReciptType').AsInteger = 0 then
                tmpMnu := TMenuItem
                  (mainF.FindComponent('mnuItemOther' + IntToStr(i)))
              else
                tmpMnu := TMenuItem
                  (mainF.FindComponent('mnuItemOther' + IntToStr(i) + '_' +
                  FieldByName('PrimaryReciptType').AsString));

              if tmpMnu <> nil then
                AddItem4Menu(NewAction, tmpMnu, NewAction.Tag.ToString + '_' +
                  i.ToString);
            end;
        end;
      end; // if
      Next;
    end; // while
    Active := False;
  end; // with

  // for i := 0 to High(SubsysMenu) do
  // begin
  // if SubsysMenu[i].SubsysCaption <> EmptyStr then
  // begin
  // tmp := TMenuItem(mainF.FindComponent('mnuItemOther' + IntToStr(i)));
  // if (tmp <> nil) and (tmp.Count = 0) then
  // tmp.Visible := False;
  // end;
  // end;

end;

function TmainF.GetReportName(ReportID: Integer): string;
begin
  With TADOQuery.Create(DMF) do
    try
      Connection := DMF.adcFaraSystem;
      SQL.Text := 'SELECT ReportName FROM Reports';
      SQL.ADD('WHERE (ReportID = :ReportID )');
      Parameters.ParamByName('ReportID').Value := ReportID;
      Active := True;
      Result := Fields[0].AsString;
      Active := False;
    finally
      Free;
    end;
end;

procedure TmainF.mnuSendSMSFClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TSendSMSF, SendSMSF, Self)
end;

procedure TmainF.actOperatorNotificationFExecute(Sender: TObject);
begin
  OperatorNotificationF.showNotification
end;

procedure TmainF.AddItem4Menu(NewAction: TAction; MnuItemPlace: TMenuItem;
MyName: string);
var
  NewItem: TMenuItem;
  sname: string;
begin
  sname := MnuItemPlace.Name + NewAction.Name + MyName;
  // add2log(sname);
  NewItem := TMenuItem(mainF.FindComponent(sname));
  if NewItem = nil then
    NewItem := TMenuItem.Create(Self);
  NewItem.Name := sname;
  NewItem.Action := NewAction;
  MnuItemPlace.ADD(NewItem)
end;

procedure TmainF.AddItem4SubMenu(Name, Caption: string;
MnuItemPlace: TMenuItem);
var
  NewItem: TMenuItem;
begin
  NewItem := TMenuItem(mainF.FindComponent(name));
  if NewItem = nil then
    NewItem := TMenuItem.Create(Self);
  NewItem.Caption := Caption;
  NewItem.Name := Name;
  MnuItemPlace.ADD(NewItem)
end;

procedure TmainF.rptcheckSadereh_StateFClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TrptcheckSadereh_StateF, rptcheckSadereh_StateF, Self, 50)
end;

procedure TmainF.rptTrancDetailsF5Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TrptTrancDetailsF, rptTrancDetailsF, Self, 5)
end;

procedure TmainF.CheckWarn;
var
  qry: TADOQuery;
  s: string;
  b: Boolean;
begin
  if (not opt.CheckWarn) or (not optSub.ActiveCoffer) then
    Exit;
  if User.SysWarnTime = 0 then
    Exit;

  with DMF.qryGlbTmpTmp do
  begin
    Active := False;
    SQL.Text := 'SELECT COUNT(*)';
    SQL.ADD('FROM OperatorItems');
    SQL.ADD('WHERE (SystemID = 18) AND ');
    SQL.ADD('(UserID = :UserID) AND (subsystem = 0)');
    Parameters.ParamByName('UserID').Value := User.ID;
    Active := True;
    b := (Fields[0].AsInteger > 0) or (User.PowerUser);
    Active := False;
  end;
  if not b then
    Exit;
  Date_ := Shamsi2Miladi(var_glb_CurrentDate);
  Date_ := IncDay(Date_, opt.CheckWarnDay);
  qry := TADOQuery.Create(DMF);
  with qry do
  begin
    try
      Connection := DMF.adcbsell;
      SQL.Text := 'SELECT FormItems.CheckNumber, FormItems.ItemAmount';
      SQL.ADD('FROM FormItems INNER JOIN Forms ON FormItems.FormID = Forms.FormID ');
      SQL.ADD('AND FormItems.ServerID = Forms.ServerID AND FormItems.YearID = Forms.YearID LEFT OUTER JOIN');
      SQL.ADD('FormItems AS formitems_1 ON FormItems.FormItemID = formitems_1.preFormItemID');
      SQL.ADD('WHERE (formitems_1.preFormItemID IS NULL) ');
      SQL.ADD('AND (FormItems.CheckDate between ''' +
        Date1400Cnv(var_glb_CurrentDate) + ''' AND  ''' +
        Date1400Cnv(miladi2Shamsi(Date_)) + ''')');
      SQL.ADD('AND (formitems_1.CheckDate between ''' +
        Date1400Cnv(var_glb_CurrentDate) + ''' AND  ''' +
        Date1400Cnv(miladi2Shamsi(Date_)) +
        ''' or FormItems_1.CheckDate is null )');
      SQL.ADD('AND (Forms.FormType IN (50,54))');
      SQL.ADD('AND Forms.YearId = ' + IntToStr(APPBank.year));
      Active := True;
      if RecordCount > 0 then
      begin
        s := 'تعداد ' + IntToStr(RecordCount) +
          ' چك در گزارش چكهاي معوق (صادره و به بانك مراجعه نشده) وجود دارد';
        // + #10#13;
        // s := s + 'آيا ليست را مشاهده مي‏كنيد؟';
        Beep;
        Beep;
        Beep;
        initDesktopAlert(50, s, JvDesktopAlert2BMessageClick);
      end;
      Active := False;
    finally
      qry.Free;
    end; // try
  end; // with
end;

procedure TmainF.CheckWarnWarrantyFormTypes;
var
  qry: TADOQuery;
  s: string;
  b: Boolean;
begin
  if (Length(opt.WarrantyFormTypes.Trim) < 1) or (opt.WarrantyFormTypes = '0')
  then
    Exit;

  with DMF.qryGlbTmpTmp do
  begin
    Active := False;
    SQL.Text := 'SELECT COUNT(*)';
    SQL.ADD('FROM OperatorItems');
    SQL.ADD('WHERE (SystemID = 18) AND ');
    SQL.ADD('(UserID = :UserID) AND (subsystem = 0)');
    Parameters.ParamByName('UserID').Value := User.ID;
    Active := True;
    b := (Fields[0].AsInteger > 0) or (User.PowerUser);
    Active := False;
  end;
  if not b then
    Exit;
  Date_ := Shamsi2Miladi(var_glb_CurrentDate);
  Date_ := IncDay(Date_, opt.WarrantyDay);
  qry := TADOQuery.Create(DMF);
  with qry do
  begin
    try
      Connection := DMF.adcbsell;
      // SQL.Text := 'SELECT FormItems.CheckNumber, FormItems.ItemAmount';
      SQL.Text :=
        'SELECT Forms.FormType AS کدفرم, Forms.FormNumber AS [شماره فرم], Forms.CustomerID1 AS کدبانک,';
      SQL.ADD('Customers_1.CustName AS بانک, Forms.CustomerID2 AS کدمشتري, Customers_2.CustName AS مشتري,');
      SQL.ADD('FormItems.CheckNumber AS [شماره چک], FormItems.ItemAmount AS مبلغ, FormItems.FormItemID,');
      SQL.ADD('FormItems.FormID, FormItems.ServerID, FormItems.YearID');
      SQL.ADD('FROM FormItems INNER JOIN Forms ON FormItems.FormID = Forms.FormID ');
      SQL.ADD('AND FormItems.ServerID = Forms.ServerID AND FormItems.YearID = Forms.YearID LEFT OUTER JOIN');
      SQL.ADD('FormItems AS formitems_1 ON FormItems.FormItemID = formitems_1.preFormItemID');
      SQL.ADD('INNER JOIN Customers AS Customers_1 ON Forms.CustomerID1 = Customers_1.CustID');
      SQL.ADD('INNER JOIN Customers AS Customers_2 ON Forms.CustomerID2 = Customers_2.CustID ');

      SQL.ADD('WHERE (formitems_1.preFormItemID IS NULL) ');
      SQL.ADD('AND (FormItems.CheckDate between ''' +
        Date1400Cnv(var_glb_CurrentDate) + ''' AND  ''' +
        Date1400Cnv(miladi2Shamsi(Date_)) + ''')');
      SQL.ADD('AND (formitems_1.CheckDate between ''' +
        Date1400Cnv(var_glb_CurrentDate) + ''' AND  ''' +
        Date1400Cnv(miladi2Shamsi(Date_)) +
        ''' or FormItems_1.CheckDate is null )');
      SQL.ADD('AND (Forms.FormType IN (' + opt.WarrantyFormTypes + '))');
      // SQL.Add('AND Forms.YearId = ' + IntToStr(APPBank.year));
      Active := True;
      WarrantySQL := SQL.Text;
      if RecordCount > 0 then
      begin
        s := 'تعداد ' + IntToStr(RecordCount) +
          '  ضمانت نامه  در گزارش  ضمانت نامه ها وجود دارد';
        Beep;
        Beep;
        Beep;
        initDesktopAlert(50, s, JvDesktopAlert3BMessageClick);
      end;
      Active := False;
    finally
      qry.Free;
    end; // try
  end; // with
end;

procedure TmainF.RecallBranchFClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TRecallBranchF, RecallBranchF, Self)
end;

procedure TmainF.N11Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TPurchaseEffectF, PurchaseEffectF, Self)
end;

procedure TmainF.mnurptCountingItemsCtrlFClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TrptCountingItemsCtrlF, rptCountingItemsCtrlF, Self)
end;

procedure TmainF.mnurptCustomersBalance2FClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TrptCustomersBalance2F, rptCustomersBalance2F, Self,
    GetTag(Sender))
end;

procedure TmainF.mnuRecallBranchFClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TRecallBranchF, RecallBranchF, Self)
end;

procedure TmainF.mnuRptCardex2FClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TRptCardex2F, RptCardex2F, mainF, 1);
  RptCardex2F.qryStuffsAfterScroll(RptCardex2F.qryStuffs);

end;

procedure TmainF.N488Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TRptControlCardexFDF, RptControlCardexFDF, Self,
    GetTag(Sender))
end;

procedure TmainF.N48Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TStuffTranction_DetailF, StuffTranction_DetailF, Self)
end;

procedure TmainF.rptCountingItemsF1Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TrptCountingItemsF, rptCountingItemsF, Self, 1)
end;

procedure TmainF.rptCountingItemsF2Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TrptCountingItemsF, rptCountingItemsF, Self, 2)
end;

procedure TmainF.rptCountingItemsF3Click(Sender: TObject);
begin
  /// CreateMDIForm2(TrptCountingItemsF, rptCountingItemsF, Self, 3)
  SelectItem(Sender);
  CreateMDIForm2(TCountingListF, CountingListF, Self)
end;

procedure TmainF.AllrptCustomerTrancItemsFClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TrptCustomerTrancItemsF, rptCustomerTrancItemsF, Self,
    GetTag(Sender))
end;

procedure TmainF.PrintCountingLabelF0Click(Sender: TObject);
begin
  SelectItem(Sender);
  PrintCountingLabelF.Enter
end;

procedure TmainF.GetCheckFenter31Click(Sender: TObject);
begin
  SelectItem(Sender);
  GetCheckF.Enter(31)
end;

procedure TmainF.RptCofferF31Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TRptCofferF, RptCofferF, Self, 31)
end;

procedure TmainF.AllrptRefineSellClick(Sender: TObject);
begin
  // CreateMDIForm2(TrptRefineSellF, rptRefineSellF, Self, (Sender as  TMenuItem).Tag)
  SelectItem(Sender);
  CreateMDIForm2(TrptRefineSellF, rptRefineSellF, Self, GetTag(Sender))
end;

procedure TmainF.GetCheckF28Click(Sender: TObject);
begin
  SelectItem(Sender);
  GetCheckF.Enter(28)
end;

procedure TmainF.RptCofferF28Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TRptCofferF, RptCofferF, Self, 28)
end;

procedure TmainF.rptCompare_Count_EntityFClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TrptCompare_Count_EntityF, rptCompare_Count_EntityF, Self)
end;

procedure TmainF.rptSupportCustMonthsFClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TrptSupportCustMonthsF, rptSupportCustMonthsF, Self)
end;

procedure TmainF.rptSupportMonthsClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TrptSupportMonthsF, rptSupportMonthsF, Self)
end;

procedure TmainF.RptReciptWithCustF8Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TRptReciptWithCustF, RptReciptWithCustF, Self, 8)
end;

procedure TmainF.rptBuySpecialOnCostomersFClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TrptBuySpecialOnCostomersF, rptBuySpecialOnCostomersF, Self, 8)
end;

procedure TmainF.AllrptReciptListOnStuffCodeFClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TrptReciptListOnStuffCodeF, rptReciptListOnStuffCodeF, Self,
    GetTag(Sender))
end;

procedure TmainF.AllrptCustomerTransactionF1Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TrptCustomerTransactionF, rptCustomerTransactionF, Self,
    GetTag(Sender))
end;

procedure TmainF.AllrptReciptListOnCustomersClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TrptReciptListOnCustomersF, rptReciptListOnCustomersF, Self,
    GetTag(Sender))
end;

procedure TmainF.AllGetCheckClickClick(Sender: TObject);
begin
  SelectItem(Sender);
  GetCheckF.Enter(GetTag(Sender))
end;

procedure TmainF.AllRptChecksInFClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TRptChecksInF, RptChecksInF, Self, GetTag(Sender))
end;

procedure TmainF.N56Click(Sender: TObject);
begin
  SelectItem(Sender);
  GetOtherMoneyF.Enter(101)
end;

procedure TmainF.N66Click(Sender: TObject);
begin
  SelectItem(Sender);
  GetOtherMoneyF.Enter(102)
end;

procedure TmainF.mnuSPSellCustClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TrptHavalehF, rptHavalehF, Self)
end;

procedure TmainF.MnuStereotypyClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TStereotypyF, StereotypyF, Self)
end;

procedure TmainF.N145Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TrptEntityOnDetailStuffs_wihtoutMoneyF,
    rptEntityOnDetailStuffs_wihtoutMoneyF, Self)
end;

procedure TmainF.EarthFClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TEarthF, EarthF, Self)
end;

procedure TmainF.PaymentExpenceFClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TPaymentExpenceF, PaymentExpenceF, Self, 104)
end;

procedure TmainF.mnuRptControlCardexfClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TRptControlCardexF, RptControlCardexF, Self, GetTag(Sender))
end;

procedure TmainF.mnurptLoanFClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TrptLoanF, rptLoanF, Self, GetTag(Sender))
end;

procedure TmainF.Mnu_GetFirstEntityFClick(Sender: TObject);
begin
  SelectItem(Sender);
  GetFirstEntityF.Enter(False)
end;

procedure TmainF.CountingItemsF20Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TCountingItemsF, CountingItemsF, Self, 20)
end;

procedure TmainF.N95Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TRecallBranchChecksF, RecallBranchChecksF, Self)
end;

procedure TmainF.N97Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TMarkettingF, MarkettingF, Self)
end;

procedure TmainF.new1Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TWorkflowMainF, WorkflowMainF, Self)
end;

procedure TmainF.mnuMainTaskListFClick(Sender: TObject);
begin
  SelectItem(Sender);
  MainTaskListF.ShowUserTasksDlg(WorkflowDmF.GETUser.UserId, wfmMDI,
    avmBottomPanel);
end;

procedure TmainF.AllTotalAddMenuItem;
var
  mnu: TMainMenu;
begin
  mnu := Menu;
  // Menu := nil;
  with mainF do
  begin
    // add2log('OYO-TMainMenu1');
    if opt.AddMenuItem then
      try
        if (optSub.Subsys[1] = '1') or (optSub.Subsys[2] = '1') then
          AddMenuItemFormTypes;
        if (optSub.Subsys[2] = '1') or (optSub.Subsys[3] = '1') then
          AddMenuItemReciptTypes
      except
        on E: Exception do
        begin
          add2log('OYO-FormTypes or ReciptTypes');
          Warn2('مشکل در چیدمان منوهای خزانه یا انبار وفروش');
        end;
      end;
    // add2log('OYO-TMainMenu21');
    AllAddMenuItem4DesignForms;
    // add2log('OYO-TMainMenu22');
    AllAddMenuItem4Reports;
    // add2log('OYO-TMainMenu23');
    try
      AllAddMenuItem4LookUps;

    except
      on E: Exception do
      begin
        add2log('OYO-AllAddMenuItem4LookUps');
        Warn2('مشکل در چیدمان منوهای سایر اطلاعات ثابت');
      end;
    end;

    // add2log('OYO-TMainMenu24');
    // AllAddMenuItem4EffectType(MnurptStuffCodingF0,
    // mdiMainF.actMnurptStuffCodingF.OnExecute, 0);
    AllAddMenuItem4EffectType(MnurptStuffCodingF2,
      mdiMainF.actMnurptStuffCodingF.OnExecute, 2);
    AllAddMenuItem4EffectType(MnurptStuffCodingF4,
      mdiMainF.actMnurptStuffCodingF.OnExecute, 4);
    AllAddMenuItem4EffectType(MnurptStuffCodingF5,
      mdiMainF.actMnurptStuffCodingF.OnExecute, 0);
    // AllAddMenuItem4EffectType(MnuManegrptStuffCodingF0,
    // mdiMainF.actMnurptStuffCodingF.OnExecute, 0);
    // AllAddMenuItem4EffectType(MnuManegrptStuffCodingF5,
    // mdiMainF.actMnurptStuffCodingF.OnExecute, 0);

    AllAddMenuItem4EffectType(mniStoRptReciptWithGrpCustF2,
      mdiMainF.actRptReciptWithGrpCustF.OnExecute, 2);
    AllAddMenuItem4EffectType(mniStoRptReciptWithGrpCustF4,
      mdiMainF.actRptReciptWithGrpCustF.OnExecute, 4);
    AllAddMenuItem4EffectType(mniStoRptReciptWithGrpCustF5,
      mdiMainF.actRptReciptWithGrpCustF.OnExecute, 0);
    // AllAddMenuItem4EffectType(mniStoRptReciptWithGrpCustF0,
    // mdiMainF.actRptReciptWithGrpCustF.OnExecute, 0);

    AllAddMenuItem4EffectType(mnirptStuffGroupsF5,
      mdiMainF.actrptStuffGroupsF.OnExecute, 0);
    // AllAddMenuItem4EffectType(mnirptStuffGroupsF0,
    // mdiMainF.actrptStuffGroupsF.OnExecute, 0);
    AllAddMenuItem4EffectType(mnirptStuffGroupsF2,
      mdiMainF.actrptStuffGroupsF.OnExecute, 2);
    AllAddMenuItem4EffectType(mnirptStuffGroupsF4,
      mdiMainF.actrptStuffGroupsF.OnExecute, 4);

    AllAddMenuItem4EffectType(mniRptReciptWithCustF5,
      mdiMainF.actRptReciptWithCustF.OnExecute, 0);

    // AllAddMenuItem4EffectType(mniRptReciptWithCustF0,
    // mdiMainF.actRptReciptWithCustF.OnExecute, 0);

    AllAddMenuItem4EffectType(mniRptReciptWithCustF2,
      mdiMainF.actRptReciptWithCustF.OnExecute, 2);
    AllAddMenuItem4EffectType(mniRptReciptWithCustF4,
      mdiMainF.actRptReciptWithCustF.OnExecute, 4);

    AllAddMenuItem4EffectType(MnuRptReciptWithCustItemF2,
      mdiMainF.actRptReciptWithCustItemF.OnExecute, 2);
    AllAddMenuItem4EffectType(MnuRptReciptWithCustItemF4,
      mdiMainF.actRptReciptWithCustItemF.OnExecute, 4);

    AllAddMenuItem4EffectType(MnurptReciptListOnCustomersF2,
      mdiMainF.actrptReciptListOnCustomersF.OnExecute, 2);
    AllAddMenuItem4EffectType(MnurptReciptListOnCustomersF4,
      mdiMainF.actrptReciptListOnCustomersF.OnExecute, 4);

    AllAddMenuItem4EffectType(MnurptReciptListOnCustomersItemF2,
      mdiMainF.actrptRecLstOnCusItemF.OnExecute, 2);
    AllAddMenuItem4EffectType(MnurptReciptListOnCustomersItemF4,
      mdiMainF.actrptRecLstOnCusItemF.OnExecute, 4);

    AllAddMenuItem4EffectType(MnurptReciptListOnStuffCode2,
      mdiMainF.actrptReciptListOnStuffCodeF.OnExecute, 2);
    AllAddMenuItem4EffectType(MnurptReciptListOnStuffCode4,
      mdiMainF.actrptReciptListOnStuffCodeF.OnExecute, 4);

    AllAddMenuItem4EffectType(MnurptReciptListOnStuffCodeCustomersItem2,
      mdiMainF.actrptRecLstOnStfCodCustIF.OnExecute, 2);
    AllAddMenuItem4EffectType(MnurptReciptListOnStuffCodeCustomersItem4,
      mdiMainF.actrptRecLstOnStfCodCustIF.OnExecute, 4);

    AllAddMenuItem4EffectType(MnurptReciptSumOnStuffCodeCustomersItemF2,
      mdiMainF.actrptRecSOnStfCodCustIF.OnExecute, 2);
    AllAddMenuItem4EffectType(MnurptReciptSumOnStuffCodeCustomersItemF4,
      mdiMainF.actrptRecSOnStfCodCustIF.OnExecute, 4);

    AllAddMenuItem4EffectType(MnurptReciptSumOnCustomersItemF2,
      mdiMainF.actrptRecSOnCustItemF.OnExecute, 2);
    AllAddMenuItem4EffectType(MnurptReciptSumOnCustomersItemF4,
      mdiMainF.actrptRecSOnCustItemF.OnExecute, 4);

    AllAddMenuItem4EffectType(mnurptReciptSumOnPersonID1F2,
      mdiMainF.actrptReciptSumOnPersonID1.OnExecute, 2);
    AllAddMenuItem4EffectType(mnurptReciptSumOnPersonID1F4,
      mdiMainF.actrptReciptSumOnPersonID1.OnExecute, 4);

    AllAddMenuItem4EffectType(mniReciptsDeficitsPostAllF,
      mdiMainF.actReciptsDeficitsPostAllF.OnExecute, 0);

    // add2log('OYO-TMainMenu300');

    with DMF.qryTmpTmp do
    begin
      Active := False;
      SQL.Text := 'SELECT FormCaption FROM FormTypes';
      SQL.ADD('WHERE FormType in (6,7)');
      SQL.ADD('ORDER BY FormType');
      Active := True;
      mnuGetOtherMoneyF6.Caption := Fields[0].AsString;
      mnuListGetOtherMoneyF6.Caption := 'ليست ' + Fields[0].AsString;
      Next;
      mnuGetOtherMoneyF7.Caption := Fields[0].AsString;
      mnuListGetOtherMoneyF7.Caption := 'ليست ' + Fields[0].AsString;
      Active := False;
    end;

  end;
  if (optSub.Subsys[25] = '1') or (optSub.Subsys[26] = '1') then
    AllAddMenuItemPay;
  Menu := mnu;
end;

procedure TmainF.mnuStuffCodingSpecialFClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TStuffCodingSpecialF, StuffCodingSpecialF, Self)
end;

procedure TmainF.mnuTRequestManagementFClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TRequestManagementF, RequestManagementF, Self, GetTag(Sender))
end;

procedure TmainF.mnuTshFunctionsClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TTshFunctionsF, TshFunctionsF, Self, GetTag(Sender))
end;

procedure TmainF.mnuTshSchedulesClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TTshSchedulesF, TshSchedulesF, Self)
end;

procedure TmainF.mnuUserActivitiesFClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TUserActivitiesF, UserActivitiesF, Self)
end;

procedure TmainF.mnuExcel1Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateChildForm(TGetAllReciptFromExlF, GetAllReciptFromExlF, mainF, 0, alNone)
end;

procedure TmainF.ExcelImportClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TExcelImportF, ExcelImportF, Self)
end;

procedure TmainF.ExcelImportToTabelClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TExcelImportToTabelF, ExcelImportToTabelF, Self)
end;

procedure TmainF.OtherCustomerF7Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TotherCustomerF, otherCustomerF, Self, 7)
end;

procedure TmainF.NUseOthersClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TUseOthersF, UseOthersF, Self)
end;

procedure TmainF.mnuListBimehRetiredClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TListBimehRetiredF, ListBimehRetiredF, Self, 1)
end;

procedure TmainF.mnuListUsesFClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TListUsesF, ListUsesF, Self)
end;

procedure TmainF.mnuMachinDeliveryFClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TMachinDeliveryF, MachinDeliveryF, Self)
end;

procedure TmainF.mnuMaintenanceFClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TMaintenanceF, MaintenanceF, Self, GetTag(Sender))
end;

procedure TmainF.mnuMaintenanceGeneralReportF1Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TMaintenanceGeneralReportF, MaintenanceGeneralReportF, Self)
end;

procedure TmainF.N153Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TEarth2F, Earth2F, Self)
end;

procedure TmainF.N159Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TrptCurrencyF, rptCurrencyF, mainF)
end;

procedure TmainF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  try
    // SysInfo1.LocaleDecimalSeparator := sysFormat[1];
    // SysInfo1.LocaleDigits := sysFormat[2];
    // SysInfo1.LocaleCurrencySymbol := sysFormat[3];
    // SysInfo1.LocaleCurrencyDigits := sysFormat[4];
    // SysInfo1.BeginUpdate;

    // بازگرداندن تنظیمات به حالت اولیه
    SetLocaleInfo(LOCALE_USER_DEFAULT, LOCALE_SDECIMAL,
      PChar(OriginalDecimalSeparator));
    SetLocaleInfo(LOCALE_USER_DEFAULT, LOCALE_IDIGITS,
      PChar(OriginalNumberDigits));
    SetLocaleInfo(LOCALE_USER_DEFAULT, LOCALE_SCURRENCY,
      PChar(OriginalCurrencySymbol));
    SetLocaleInfo(LOCALE_USER_DEFAULT, LOCALE_ICURRDIGITS,
      PChar(OriginalCurrencyDigits));

  except
    on E: Exception do
    begin
      add2log('تنظیمات کنترل پنل  ' + E.Message);
    end;
  end;
end;

procedure TmainF.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CheckBackupPath('AutoBackupPath');
  if NOT IsDelphiRunning then
    if get_response('خروج از برنامه؟‏') <> mrYes then
      Abort;
end;

procedure TmainF.ManifestoF0Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TManifestoF, ManifestoF, Self, GetTag(Sender))
end;

procedure TmainF.Xml1Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateChildForm(TStuffCodingToXmlF, StuffCodingToXmlF, Self, 0, alNone);
end;

procedure TmainF.MnuImportDataClick(Sender: TObject);
begin
  SelectItem(Sender);
  ImportDataF.Enter
end;

procedure TmainF.MnuInsuranceClick(Sender: TObject);
begin
  SelectItem(Sender);
  InsuranceF.Enter
end;

procedure TmainF.N162Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TInvoiceWithCashF, InvoiceWithCashF, Self)
end;

procedure TmainF.N168Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm3(True, TRptTrialBalance_AccStoreF,
    RptTrialBalance_AccStoreF, Self, 3)
end;

procedure TmainF.mnuRptOperationalFStoreClick(Sender: TObject);
begin
  SelectItem(Sender);
  RptOperationalF.Enter(nil);
end;

procedure TmainF.mnuReportID3500Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TrptOrderPointAnalyticalF, rptOrderPointAnalyticalF, Self)
end;

procedure TmainF.mnuReviewOrdersClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TReviewOrdersF, ReviewOrdersF, Self)
end;

procedure TmainF.mnurptWorkCustomerFClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TrptWorkCustomerF, rptWorkCustomerF, Self, GetTag(Sender))
end;

procedure TmainF.N175Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TRentReciptsF, RentReciptsF, Self, 5)
end;

procedure TmainF.rptCustomerTrancItemsF6Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TrptCustomerTrancItemsF, rptCustomerTrancItemsF, Self,
    GetTag(Sender))
end;

procedure TmainF.rptCustomerTransactionF6Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TrptCustomerTransactionF, rptCustomerTransactionF, Self,
    GetTag(Sender))
end;

procedure TmainF.mniIncorporateClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TIncorporateF, IncorporateF, Self)
end;

procedure TmainF.mniFormDesignFClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TFormDesignF, FormDesignF, mdiMainF, GetTag(Sender))
end;

procedure TmainF.mdiChildrenTabsChange(Sender: TObject; NewTab: Integer;
var AllowChange: Boolean);
var
  cHandle: LongWord;
  i: Integer;
begin
  cHandle := Integer(myMdiChildrenTabs.Tabs.Objects[NewTab]);
  if myMdiChildrenTabs.Tag = -1 then
    Exit;
  for i := 0 to MDIChildCount - 1 do
  begin
    if MDIChildren[i].Handle = cHandle then
    begin
      MDIChildren[i].show;
      Break;
    end;
  end;

end;

procedure TmainF.MenuConversionCoListClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TConversionCoListF, ConversionCoListF, Self)
end;

procedure TmainF.MenuItem300Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TRptReportsF, RptReportsF, Self, 6566);
end;

procedure TmainF.MenuItem321Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TRptReportsF, RptReportsF, Self, 6567);
end;

procedure TmainF.mniChangeUnitClick(Sender: TObject);
begin
  SelectItem(Sender);
  ChangeUnitF.Enter
end;

procedure TmainF.N183Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TAddressInfoF, AddressInfoF, Self)
end;

procedure TmainF.MnuN183Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TAddressInMasirF, AddressInMasirF, Self)
end;

procedure TmainF.IMEI1Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TCountingDetailsF, CountingDetailsF, Self)
end;

procedure TmainF.InitBMP;
begin
  BtmTiket := TBitmap.Create;
  with BtmTiket do
    try
      Transparent := True;
      LoadFromResourceName(HInstance, 'Tiket');
    finally
      // Free
    end;
  BtmTiketNot := TBitmap.Create;
  with BtmTiketNot do
    try
      Transparent := True;
      LoadFromResourceName(HInstance, 'TiketNot');
    finally
      // Free
    end;
end;

procedure TmainF.FormCreate(Sender: TObject);
begin
  mainF.DoubleBuffered := True;
  // GetAppNewVersionFromFtp;
  // initDesktopAlert(0, 'كد كالا = %d  %s ', nil, 0,dapBottomLeft);
  if IsDelphiRunning then
  begin
    // غیرفعال کردن دکمه مینیمایز
    BorderIcons := BorderIcons - [biMinimize];

    // تنظیم وضعیت فرم به حالت عادی
    WindowState := wsNormal;
  end;
  InitBMP;
  SetSubsysMenu;
  myMdiChildrenTabs := mdiChildrenTabs;
  if CLini <> nil then
  begin
    fillProps([Self], CLini);
    mainF.bidimode := bdlefttoright;
  end;
  tsControlReports := TStringList.Create;
  tsListRecipts := TStringList.Create;
  // StyleCreate;
  opt.ActiveNipc := True;
  if opt.ActiveNipc then
    Application.CreateForm(TDMnipcF, DMnipcF);

  try
    // SysInfo1 := TLMDSysInfo.Create(Self);
    // sysFormat[1] := SysInfo1.LocaleDecimalSeparator;
    // sysFormat[2] := SysInfo1.LocaleDigits;
    // sysFormat[3] := SysInfo1.LocaleCurrencySymbol;
    // sysFormat[4] := SysInfo1.LocaleCurrencyDigits;

    // SysInfo1.LocaleDigits := '0';
    // SysInfo1.LocaleCurrencySymbol := ' ';
    // SysInfo1.LocaleDecimalSeparator := '.';
    // SysInfo1.LocaleCurrencyDigits := '0';
    // SysInfo1.BeginUpdate;

    // ذخیره تنظیمات قبلی
    SetLength(OriginalDecimalSeparator, GetLocaleInfo(LOCALE_USER_DEFAULT,
      LOCALE_SDECIMAL, PChar(OriginalDecimalSeparator), 0));
    GetLocaleInfo(LOCALE_USER_DEFAULT, LOCALE_SDECIMAL,
      PChar(OriginalDecimalSeparator), Length(OriginalDecimalSeparator));

    SetLength(OriginalCurrencySymbol, GetLocaleInfo(LOCALE_USER_DEFAULT,
      LOCALE_SCURRENCY, PChar(OriginalCurrencySymbol), 0));
    GetLocaleInfo(LOCALE_USER_DEFAULT, LOCALE_SCURRENCY,
      PChar(OriginalCurrencySymbol), Length(OriginalCurrencySymbol));

    SetLength(OriginalCurrencyDigits, GetLocaleInfo(LOCALE_USER_DEFAULT,
      LOCALE_ICURRDIGITS, PChar(OriginalCurrencyDigits), 0));
    GetLocaleInfo(LOCALE_USER_DEFAULT, LOCALE_ICURRDIGITS,
      PChar(OriginalCurrencyDigits), Length(OriginalCurrencyDigits));

    SetLength(OriginalNumberDigits, GetLocaleInfo(LOCALE_USER_DEFAULT,
      LOCALE_IDIGITS, PChar(OriginalNumberDigits), 0));
    GetLocaleInfo(LOCALE_USER_DEFAULT, LOCALE_IDIGITS,
      PChar(OriginalNumberDigits), Length(OriginalNumberDigits));

    // تنظیم مقادیر جدید
    SetLocaleInfo(LOCALE_USER_DEFAULT, LOCALE_SDECIMAL, '.');
    SetLocaleInfo(LOCALE_USER_DEFAULT, LOCALE_IDIGITS, '0');
    SetLocaleInfo(LOCALE_USER_DEFAULT, LOCALE_SCURRENCY, ' ');
    SetLocaleInfo(LOCALE_USER_DEFAULT, LOCALE_ICURRDIGITS, '0');

  except
    on E: Exception do
    begin
      add2log('تنظیمات کنترل پنل  ' + E.Message);
    end;
  end;
  tmrForceNotification.Enabled := True;
end;

procedure TmainF.JvDesktopAlert2BMessageClick(Sender: TObject);
begin
  SelectItem(Sender);
  try
    Var_glb_NoFilter := True;
    CreateMDIForm2(TRptChecksInF, RptChecksInF, Self, 50);
    with RptChecksInF.qryChecksIn do
    begin
      Active := False;
      Parameters.ParamByName('DateFrom').Value :=
        Date1400Cnv(var_glb_CurrentDate);
      Parameters.ParamByName('DateTo').Value :=
        Date1400Cnv(miladi2Shamsi(Date_));
      Parameters.ParamByName('Date2From').Value :=
        Date1400Cnv(var_glb_CurrentDate);
      Parameters.ParamByName('Date2To').Value :=
        Date1400Cnv(miladi2Shamsi(Date_));
      Active := True;
    end; // with
  finally
    Var_glb_NoFilter := False;
    (Sender as TCustomTrayIcon).BalloonTimeout := 1;
  end;

end;

procedure TmainF.JvDesktopAlert3BMessageClick(Sender: TObject);
begin
  SelectItem(Sender);
  try
    Var_glb_NoFilter := True;
    try
      CreateMDIForm2(TRptChecksInF, RptChecksInF, Self,
        opt.WarrantyFormTypes.Trim.ToInteger);
      with RptChecksInF.qryChecksIn do
      begin
        Active := False;
        Parameters.ParamByName('DateFrom').Value :=
          Date1400Cnv(var_glb_CurrentDate);
        Parameters.ParamByName('DateTo').Value :=
          Date1400Cnv(miladi2Shamsi(Date_));
        Parameters.ParamByName('Date2From').Value :=
          Date1400Cnv(var_glb_CurrentDate);
        Parameters.ParamByName('Date2To').Value :=
          Date1400Cnv(miladi2Shamsi(Date_));
        Active := True;
      end; // with

    except
      CreateMDIForm2(TRptChecksInF, RptChecksInF, Self, 0);
      with RptChecksInF.qryChecksIn do
      begin
        Active := False;
        SQL.Text := WarrantySQL;
        Fields.Clear;
        RptChecksInF.DBGrid1.Columns.Clear;
        Active := True;
        RptChecksInF.DBGrid1.ColorDBGrid;
        RptChecksInF.DBGrid1.setSizeColDBGrid;
        Active := True;
      end; // with
    end;
  finally
    Var_glb_NoFilter := False;
    // (Sender as TCustomTrayIcon).StyleHandler.DisplayDuration := 1;
    (Sender as TCustomTrayIcon).BalloonTimeout := 1;

  end;

end;

procedure TmainF.JvDesktopAlert1BMessageClick(Sender: TObject);
begin
  SelectItem(Sender);
  try
    CreateMDIForm2(TRptReportsF, RptReportsF, Self, GetTag(Sender))
  finally
    (Sender as TCustomTrayIcon).BalloonTimeout := 1;
  end;
end;

procedure TmainF.FormDestroy(Sender: TObject);
begin
  AppLogger.LogLogout;
  FreeAndNil(AppLogger);
  Tasklst.Free;
  BtmTiket.Free;
  BtmTiketNot.Free;
  tsControlReports.Free;
  tsListRecipts.Free;
  // JvDesktopAlertStack1.Free;;
  xopt.Free;

  if TPopupMenu(FindComponent('MyPopUP')) is TPopupMenu then
  begin
    TPopupMenu(FindComponent('MyPopUP')).Destroy;
  end;
end;

procedure TmainF.AddListRecipts(const sFName: string);
begin
  // بررسی تکراری بودن
  var_MultiType_Boolean := tsListRecipts.IndexOf(sFName) > -1;

  // اضافه کردن بدون شرط
  tsListRecipts.Add(sFName);
end;

procedure TmainF.DelListRecipts(sFName: string);
begin
  mainF.tsListRecipts.delete(mainF.tsListRecipts.IndexOf(sFName));
end;

procedure TmainF.N193Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TrptStuffGroupsMonthsF, rptStuffGroupsMonthsF, Self, 5)
end;

procedure TmainF.N194Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TrptStuffCodingMonthsF, rptStuffCodingMonthsF, Self, 5)
end;

procedure TmainF.N195Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TrptFormsOnStuffMonthsF, rptFormsOnStuffMonthsF, Self, 5)
end;

procedure TmainF.N197Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TRptReciptWithGrpCustMonthsF,
    RptReciptWithGrpCustMonthsF, Self, 5)
end;

procedure TmainF.N198Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TRptReciptWithCustMonthsF, RptReciptWithCustMonthsF, Self, 5)
end;

procedure TmainF.ReciptReleaseF12Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TReciptReleaseF, ReciptReleaseF, Self, 12)
end;

procedure TmainF.mniRemainEarlyFClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TRemainEarlyF, RemainEarlyF, Self)
end;

procedure TmainF.mniN166Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TAgreementsF, AgreementsF, Self)
end;

procedure TmainF.mniN165Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TQuotaF, QuotaF, Self)
end;

procedure TmainF.mnuN1110Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TMachineStop2F, MachineStop2F, mainF)
end;

procedure TmainF.mnuN11Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TRptReportsF, RptReportsF, Self, 10012);
end;

procedure TmainF.mnuN13Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TrptMailboxdatacontrolF, rptMailboxdatacontrolF, Self)
end;

procedure TmainF.mnuForwards2FFClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TForwards2F, Forwards2F, Self)
end;

procedure TmainF.mnuCofferTransAllFClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm3(True, TrptCofferTransAllF, rptCofferTransAllF, Self,
    GetTag(Sender))
end;

procedure TmainF.mnurptCardProjectFClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TrptCardProjectF, rptCardProjectF, Self)
end;

procedure TmainF.mnuN165Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TReciptsRegulationF, ReciptsRegulationF, Self)
end;

procedure TmainF.mnuN167Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TReciptOnPersonelF, ReciptOnPersonelF, Self)
end;

procedure TmainF.mnuAllCustomersFClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TCustomersF, CustomersF, mainF, GetTag(Sender))
end;

procedure TmainF.mnuAllotherCustomerFClick(Sender: TObject);
begin
  SelectItem(Sender);
  // CreateMDIForm2(TotherCustomerF, otherCustomerF, Self, GetTag(Sender))
  CreateMDIForm2(TCashiersF, CashiersF, Self, GetTag(Sender))
end;

procedure TmainF.mnuArtworksClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TArtworksF, ArtworksF, Self, 0)
end;

procedure TmainF.mnuSellsWithCostClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TSellsWithCostF, SellsWithCostF, Self, GetTag(Sender))
end;

procedure TmainF.mnuAllCheckInFormsFClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TrptCheckInFormsF, rptCheckInFormsF, mainF, GetTag(Sender))
end;

procedure TmainF.mnuCashReport2Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TrptCash2F, rptCash2F, Self, 0)
end;

procedure TmainF.mnuCashReportClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TrptCashF, rptCashF, Self, 0)
end;

procedure TmainF.mnuChangeCustIDFClick(Sender: TObject);
begin
  SelectItem(Sender);
  TChangeCustIDF.Enter;
end;

procedure TmainF.mnuClockDmpF0Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TTshClockDmpF, TshClockDmpF, mainF)
end;

procedure TmainF.mnuCnt_ContractOperationsFClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TCnt_ContractOperationsF, Cnt_ContractOperationsF, mainF)
end;

procedure TmainF.mnuCnt_ContractsF145Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TCnt_ContractsF, Cnt_ContractsF, mainF, GetTag(Sender))
end;

procedure TmainF.mnuCnt_RunScheduleItemsFClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TCnt_RunScheduleItemsF, Cnt_RunScheduleItemsF, mainF)
end;

procedure TmainF.mnuCnt_RunSchedulesFClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TCnt_RunSchedulesF, Cnt_RunSchedulesF, mainF)
end;

procedure TmainF.mnuStuffCodingMachinery2FClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TStuffCodingMachinery2F, StuffCodingMachinery2F, mainF)
end;

procedure TmainF.mnuStuffCodingMachineryFClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TStuffCodingMachineryF, StuffCodingMachineryF, mainF)
end;

procedure TmainF.mnuCofferGeneralReport1Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TCofferGeneralReportF, CofferGeneralReportF, mainF)
end;

procedure TmainF.mnuCosts0Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TCostsF, CostsF, mainF, GetTag(Sender))
end;

procedure TmainF.MnuCustomersProjectFClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TCustomersProjectF, CustomersProjectF, Self, GetTag(Sender))
end;

procedure TmainF.mnuCustomersBalanceF3Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TrptCustomersBalanceF, rptCustomersBalanceF, mainF, 3)
end;

procedure TmainF.mnuSellersFAllClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TSellersF, SellersF, mainF, GetTag(Sender))
end;

procedure TmainF.mnuSellPlan2Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TSellPlan2F, SellPlan2F, mainF)
end;

procedure TmainF.mnuSellPricingFClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TSellPricingF, SellPricingF, mainF)
end;

procedure TmainF.MnuSellsEmporiumsClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TSellsEmporiumsF, SellsEmporiumsF, mainF)
end;

procedure TmainF.mnuShowMaliYearClick(Sender: TObject);
begin
  SelectItem(Sender);
  if MDIChildCount > 1 then
  begin
    Warn('لطفاً قبل از تغيير سال مالي همه پنجره‌هاي باز را ببنديد.');
    Exit;
  end; //

  try
    if not MaliYearF.ShowMaliYear then
      Exit;
    UpdateStatusbarMain;
  except
    on E: Exception do
    begin
      Warn(E.Message);
      Warn('اشكال در اتصال به سالهاي مالي', mtError);
    end;
  end;

end;

procedure TmainF.mnuSomeChangeOrdersFClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TSomeChangeOrdersF, SomeChangeOrdersF, mainF, GetTag(Sender))
end;

procedure TmainF.mnuN176Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TRecallBranchNewF, RecallBranchNewF, mainF)
end;

procedure TmainF.mnuRptCofferFAllTagClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TRptCofferF, RptCofferF, Self, GetTag(Sender))
end;

procedure TmainF.mnuRptReciptsRegulatesFClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TRptReciptsRegulatesF, RptReciptsRegulatesF, mainF)
end;

procedure TmainF.mnuRptReportsF192Click(Sender: TObject);
begin
  SelectItem(Sender);
  var_tmp_str := (Sender as TMenuItem).Caption;
  CreateMDIForm2(TRptReportsF, RptReportsF, mainF, 192)
end;

procedure TmainF.mnuRptReportsFAllClick(Sender: TObject);
begin
  SelectItem(Sender);
  var_tmp_str := (Sender as TMenuItem).Caption;
  CreateMDIForm2(TRptReportsF, RptReportsF, mainF, GetTag(Sender))
end;

procedure TmainF.mnuRptReportsFClick(Sender: TObject);
begin
  SelectItem(Sender);
  var_tmp_str := (Sender as TMenuItem).Caption;
  CreateMDIForm2(TRptReportsF, RptReportsF, mainF, 322)
end;

procedure TmainF.mnuRptSalaryAdjustmentClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TRptSalaryAdjustmentF, RptSalaryAdjustmentF, mdiMainF)

end;

procedure TmainF.MnuRptTrialBalance_AccFinClick(Sender: TObject);
begin
  CreateMDIForm3(True, TRptTrialBalance_AccFinF,
    RptTrialBalance_AccFinF, Self, 4)
end;

procedure TmainF.mnuRptTrialBalance_DetailsClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TRptTrialBalance_DetailsF, RptTrialBalance_DetailsF, Self)
end;

procedure TmainF.mnuN186Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TRecallBranchChecksNewF, RecallBranchChecksNewF, mainF)
end;

procedure TmainF.mnuStuffGroups2FClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TStuffGroups2F, StuffGroups2F, Self)
end;

procedure TmainF.MnuStuffTransactionDateFClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TStuffTransactionDateF, StuffTransactionDateF, Self)
end;

procedure TmainF.MnuTaxTabelClick(Sender: TObject);
begin
  SelectItem(Sender);
  TaxsF.Enter
end;

procedure TmainF.mnuN309Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TTshFunctionsF, TshFunctionsF, Self, GetTag(Sender))
end;

procedure TmainF.mnuN310Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TTshFunctionsF, TshFunctionsF, Self, GetTag(Sender))
end;

procedure TmainF.mnuNegotiationsFClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TNegotiationsF, NegotiationsF, Self)
end;

// procedure TmainF.CheckCustomerMnu;
// var
// i, GroupType: Integer;
// cmp: TComponent;
// begin
// cmp := nil;
// with DMF.qryTmpTmp do
// begin
// Close;
// SQL.Text := 'SELECT Distinct GroupType FROM CustomersGroup ';
// SQL.Add('WHERE (FinishCode <> 0)');
// Open;
// try
// for i := 0 to Self.ComponentCount - 1 do
// begin
// cmp := Self.Components[i];
// if cmp is TMenuItem then
// if (TMenuItem(cmp).Hint = 'ValidGroupType') then
// begin
// GroupType := TMenuItem(cmp).HelpContext;
// TMenuItem(cmp).Visible := Locate('GroupType', GroupType, []);
// end;
// end;
// except
// Warn(TMenuItem(cmp).Hint + cmp.Name);
// end;
// end;
// end;

procedure TmainF.mnuDesignFormsFClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TDesignFormsF, DesignFormsF, Self, GetTag(Sender))
end;

procedure TmainF.mnuRptDesignFormsFClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TrptDesignFormsF, rptDesignFormsF, Self, GetTag(Sender))
end;

// procedure TmainF.StyleCreate;
// var
// Style: String;
// Item: TMenuItem;
// searchResults: TSearchRec;
// SearchDir: string;
// SLStyles: TStringList;
// begin
// SearchDir := ExtractFilePath(ParamStr(0)) + 'styles' + PathDelim;
// if DirectoryExists(SearchDir) then
// begin
// if FindFirst(SearchDir + '*.*', faAnyFile - faDirectory, searchResults) = 0
// then
// repeat
// try
// if TStyleManager.IsValidStyle(SearchDir + searchResults.Name) then
// TStyleManager.LoadFromFile(SearchDir + searchResults.Name);
// except
// // Who cares.. try the next one.
// end;
// until FindNext(searchResults) <> 0;
// end;
// // Sort the styles using a StringList
// SLStyles := TStringList.Create;
// try
// SLStyles.Duplicates := TDuplicates.dupIgnore;
// for Style in TStyleManager.StyleNames do
// SLStyles.Add(Style);
// SLStyles.Sort;
//
// mnuThemes.Clear;
// // build menu from sorted list of styles
// for Style in SLStyles do
// begin
// Item := TMenuItem.Create(mnuThemes);
// Item.Caption := Style;
// Item.OnClick := mnuThemesClick;
// if TStyleManager.ActiveStyle.Name = Style then
// Item.Checked := True;
// mnuThemes.Add(Item);
// end;
// finally
// SLStyles.Free;
// end;
// end;

// procedure TmainF.mnuThemesClick(Sender: TObject);
// var
// StyleName: String;
// i: Integer;
// begin
// // get style name
// StyleName := StringReplace(TMenuItem(Sender).Caption, '&', '',
// [rfReplaceAll, rfIgnoreCase]);
// // set active style
// try
// TStyleManager.SetStyle(StyleName);
// except
// end;
// // check the currently selected menu item
// (Sender as TMenuItem).Checked := True;
// // uncheck all other style menu items
// for i := 0 to mnuThemes.Count - 1 do
// begin
// if not mnuThemes.Items[i].Equals(Sender) then
// mnuThemes.Items[i].Checked := False;
// end;
//
// end;

procedure TmainF.mnuRatingsClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TRatingsF, RatingsF, mainF, GetTag(Sender))
end;

// CheckNotification
procedure TmainF.OperatorNotificationClick(Sender: TObject);
var
  qry: TADOQuery;
begin
  SelectItem(Sender);
  qry := TADOQuery.Create(nil);
  with qry do
    try
      Connection := theFaraSystems;
      SQL.Text := 'SELECT ID, SentDate';
      SQL.ADD('FROM OperatorNotification');
      SQL.ADD('WHERE (ID = :ID )');
      Parameters.ParamByName('ID').Value := (Sender as TCustomTrayIcon).Tag;
      Active := True;
      if RecordCount > 0 then
      begin
        Edit;
        FieldByName('SentDate').AsDateTime := now;
        Post;
      end
      // else        Warn2('پیام برای تغییر وضعیت یافت نشد')
        ;
    finally
      (Sender as TCustomTrayIcon).BalloonTimeout := 1;
      Free;
    end;
end;

procedure TmainF.InterViewClick(Sender: TObject);
var
  qry: TADOQuery;
begin
  SelectItem(Sender);
  qry := TADOQuery.Create(nil);
  with qry do
    try
      Connection := theMainConnection;
      SQL.Text := 'SELECT ID, FollowUp';
      SQL.ADD('FROM CustomersInterView');
      SQL.ADD('WHERE (ID = :ID )');
      Parameters.ParamByName('ID').Value := (Sender as TCustomTrayIcon).Tag;
      Active := True;
      Edit;
      FieldByName('FollowUp').AsDateTime :=
        IncMillisecond(now, Timer2.Interval);
      Post;
    finally
      (Sender as TCustomTrayIcon).BalloonTimeout := 1;
      Free;
    end;
end;

procedure TmainF.MnuAcc_YearsTestClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TYearsTrialBalanceF, YearsTrialBalanceF, Self);
end;

procedure TmainF.MnuAcc_g1Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TBudgetListF, BudgetListF, Self, 2);
end;

procedure TmainF.MnuAcc_j1Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TCommitmentsF, CommitmentsF, Self)
end;

procedure TmainF.MnuAcc_CleanDataBaseClick(Sender: TObject);
var
  n: Byte;
begin
  SelectItem(Sender);
  with DMF.qryGlbTmpTmp do
  begin
    Active := False;
    SQL.Text := 'Select * from Sections where SYSID=' + IntToStr(SYSID);
    Active := True;
    n := 0;
    while not Eof do
    begin
      if not BankExists(FieldByName('BankName').AsString) then
      begin
        delete;
        Inc(n);
      end
      else
        Next;
    end; // while
    Active := False;
  end; // with
  if n = 0 then
    Warn('موردي براي پاكسازي پيدا نشد!')
  else
    Warn(IntToStr(n) + ' مورد پاكسازي شد.');
end;

procedure TmainF.MnuAcc_MnuOptionClick(Sender: TObject);
begin
  SelectItem(Sender);
  optionsF.Enter;
end;

procedure TmainF.MnuAcc_RestoreDataBaseClick(Sender: TObject);
begin
  SelectItem(Sender);
  if User.Level < 7 then
    Warn('خارج از محدوده دسترسي مي باشد')
  else
    RestoreDataBaseF.Enter;
end;

procedure TmainF.MnuAcc_ConfigAccClick(Sender: TObject);
begin
  SelectItem(Sender);
  ConfigAccF.Enter;
end;

procedure TmainF.MnuAcc_ContrastAccountSanamaClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TContrastAccountF, ContrastAccountF, Self);
end;

procedure TmainF.MnuAcc_MnuTRialBalanceAcc_4Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm3(True, TRptTrialBalance_AccF, RptTrialBalance_AccF, Self, 4);
end;

procedure TmainF.MnuAcc_DescTempClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateChildForm(TDescTemplatesF, DescTemplatesF, Self, 0, alNone)
end;

procedure TmainF.MnuAcc__DetailGroupClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TDetailGroupsF, DetailGroupsF, Self, 110)
end;

procedure TmainF.MnuAcc_MnuCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TmainF.MnuTRialBalanceCtopic_1Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm3(True, TRptTrialBalance_CTopicsF,
    RptTrialBalance_CTopicsF, Self) //
end;

procedure TmainF.MnuAcc_MnuGeneralJornalClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TGeneralJournalF, GeneralJournalF, Self, 2)
end;

procedure TmainF.MnuAcc_MnuLedgerClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TRpt_LedgerF, Rpt_LedgerF, Self, 2)
end;

procedure TmainF.MnuAcc_MnuMonthDocsClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TrptmonthDocumentsF, rptMonthDocumentsF, Self);
end;

procedure TmainF.MnuAcc_Mnu_RptCtopicBookOnAccClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm3(True, TRpt_CtopicsOnTopicBookF, Rpt_CtopicsOnTopicBookF, Self)
end;

procedure TmainF.mnuAccBooksDetailClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm3(True, TRpt_AccDetailOnTopicBookF,
    Rpt_AccDetailOnTopicBookF, Self)
end;

procedure TmainF.MnuAcc_Mnu_RptCtopicBookOnDetailClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm3(True, TRpt_CtopicsOnDetailsBookF,
    Rpt_CtopicsOnDetailsBookF, Self)
end;

procedure TmainF.MnuAcc_DocTypesClick(Sender: TObject);
begin
  SelectItem(Sender);
  DocTypesF.Enter;
end;

procedure TmainF.MnuAcc_N45Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateChildForm(TUpDateBankF, UpDateBankF, Self, 0, alNone);
  // CreateMDIForm2(TAuditTopics2F,AuditTopics2F,Self,42)
end;

procedure TmainF.MnuAcc_CompaniesClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TCompaniesF, CompaniesF, Self, 51)
end;

procedure TmainF.MnuAcc_MnuAboutClick(Sender: TObject);
begin
  SelectItem(Sender);
  aboutF.Enter;
end;

procedure TmainF.MnuAcc_testClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TrptCurrencyF, rptCurrencyF, mainF)
end;

procedure TmainF.MnuAcc_Mnu_AccCode3Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TAccCode2F, AccCode2F, Self, 4);
end;

procedure TmainF.MnuAcc_MnuBalace_SomeColumn_acc_1_1Click(Sender: TObject);
begin
  SelectItem(Sender);
  rptBalaceKollWithSomeColumnF.Enter(True, 1, 1, mainF);
end;

procedure TmainF.N54Click(Sender: TObject);
begin
  // CreateMDIForm2(TProjectsF,ProjectsF,MainF,10)
end;

procedure TmainF.MnuAcc_N112Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm3(True, TRptTrialBalance_CTopicsF,
    RptTrialBalance_CTopicsF, Self)
end;

procedure TmainF.MnuAcc_N113Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm3(True, TRptTrialBalance_CTopics2F,
    RptTrialBalance_CTopics2F, mainF)
end;

procedure TmainF.N1111Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TFinancialTopics_3F, FinancialTopics_3F, mainF, 22)
end;

procedure TmainF.N65Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TFinancialTopics_4F, FinancialTopics_4F, mainF, 25)
end;

procedure TmainF.N64Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TFinancialTopics2F, FinancialTopics2F, mainF, 24)
end;

procedure TmainF.MnuAcc_MnuBackUpClick(Sender: TObject);
begin
  SelectItem(Sender);
  // BackupDatabaseLocalAndNet('', True);
  // Warn2('نسبت به پشتیبان گیری از زیر سیستم کدینگ یکپارچه اقذام کنید', 5000);
  BackupDataF.Enter
end;

procedure TmainF.MnuAcc_MnuBackUpCdClick(Sender: TObject);
begin
  SelectItem(Sender);
  CdBurnf.BackUpBurnCD(DMF.adcAccounting, APPBank);
end;

procedure TmainF.MnuAcc_MnuRptJournalClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TrptJournalF, rptJournalF, Self, 2);
end;

procedure TmainF.MnuAcc_MnuDailyDocsClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TrptDailyDocumentsF, rptDailyDocumentsF, Self);
end;

procedure TmainF.ss1Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TrptmonthDocumentsF, rptMonthDocumentsF, Self);
end;

procedure TmainF.MnuAcc_AccTopicLevelClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TAccTopicLevelsF, AccTopicLevelsF, Self);
end;

procedure TmainF.MnuAcc_ActFormInfo1F1Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TFormInfo_AccF, FormInfo_AccF, Self)
end;

procedure TmainF.MnuAcc_ActDocTypesF1Click(Sender: TObject);
begin
  SelectItem(Sender);
  FormTypesF.Enter;
end;

procedure TmainF.MnuAcc_MnuBalace_SomeColumn_acc_1_2Click(Sender: TObject);
begin
  SelectItem(Sender);
  rptBalaceKollWithSomeColumnF.Enter(True, 1, 2, mainF);
end;

procedure TmainF.MnuAcc_MnuBalace_SomeColumn_acc_1_3Click(Sender: TObject);
begin
  SelectItem(Sender);
  rptBalaceKollWithSomeColumnF.Enter(True, 1, 3, mainF);
end;

procedure TmainF.MnuAcc_MnuBalace_SomeColumn_acc_2_1Click(Sender: TObject);
begin
  SelectItem(Sender);
  rptBalaceKollWithSomeColumnF.Enter(True, 2, 1, mainF);
end;

procedure TmainF.MnuAcc_MnuBalace_SomeColumn_acc_2_2Click(Sender: TObject);
begin
  SelectItem(Sender);
  rptBalaceKollWithSomeColumnF.Enter(True, 2, 2, mainF);
end;

procedure TmainF.MnuAcc_MnuBalace_SomeColumn_acc_2_3Click(Sender: TObject);
begin
  SelectItem(Sender);
  rptBalaceKollWithSomeColumnF.Enter(True, 2, 3, mainF);
end;

procedure TmainF.MnuAcc_N12Click(Sender: TObject);
begin
  SelectItem(Sender);
  rptBalaceKollWithSomeColumnF.Enter(True, 3, 1, mainF);
end;

procedure TmainF.MnuAcc_N21Click(Sender: TObject);
begin
  SelectItem(Sender);
  rptBalaceKollWithSomeColumnF.Enter(True, 3, 2, mainF);
end;

procedure TmainF.MnuAcc_N31Click(Sender: TObject);
begin
  SelectItem(Sender);
  rptBalaceKollWithSomeColumnF.Enter(True, 3, 3, mainF);
end;

procedure TmainF.MnuAcc_MnuEkhtetamiehClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TEkhtetanieF, EkhtetanieF, Self, 1);
end;

procedure TmainF.MnuAcc_MnuBalace_SomeColumn_Detail_1Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm3(True, TRptBalanceDetailWithSomeColumnF,
    RptBalanceDetailWithSomeColumnF, Self, 1);
end;

procedure TmainF.MnuAcc_MnuBalace_SomeColumn_Detail_2Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm3(True, TRptBalanceDetailWithSomeColumnF,
    RptBalanceDetailWithSomeColumnF, Self, 2);
end;

procedure TmainF.MnuAcc_MnuBalace_SomeColumn_Detail_3Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm3(True, TRptBalanceDetailWithSomeColumnF,
    RptBalanceDetailWithSomeColumnF, Self, 3);
end;

procedure TmainF.MnuAcc_BalanceLevel4_1Click(Sender: TObject);
begin
  SelectItem(Sender);
  rptBalaceKollWithSomeColumnF.Enter(True, 4, 1, mainF);
end;

procedure TmainF.MnuAcc_BalanceLevel4_2Click(Sender: TObject);
begin
  SelectItem(Sender);
  rptBalaceKollWithSomeColumnF.Enter(True, 4, 2, mainF);
end;

procedure TmainF.MnuAcc_BalanceLevel4_3Click(Sender: TObject);
begin
  SelectItem(Sender);
  rptBalaceKollWithSomeColumnF.Enter(True, 4, 3, mainF);
end;

procedure TmainF.mnuSearchDocsClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TSearchDocsF, SearchDocsF, Self);
end;

procedure TmainF.MnuAcc_SendSanamaClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TCreateSanamaXMLF, CreateSanamaXMLF, Self);
end;

procedure TmainF.MnuAcc_RptAccMonth_1Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm3(True, TAccComprasionMonthBalanceF,
    AccComprasionMonthBalanceF, Self, 1);
end;

procedure TmainF.MnuAcc_RptAccMonth_2Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm3(True, TAccComprasionMonthBalanceF,
    AccComprasionMonthBalanceF, Self, 2);
end;

procedure TmainF.MnuAcc_RptAccMonth_3Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm3(True, TAccComprasionMonthBalanceF,
    AccComprasionMonthBalanceF, Self, 3);
end;

procedure TmainF.MnuAcc_RptAcc_DetailMonthClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm3(True, TAccComprasionMonthDetailBalanceF,
    AccComprasionMonthDetailBalanceF, Self);
end;

procedure TmainF.MnuAcc_RptAcc_CTopicMonth_1Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm3(True, TAccComprasionMonthCtopicBalanceF,
    AccComprasionMonthCtopicBalanceF, Self);
end;

procedure TmainF.MnuAcc_MnuBudgetLevelClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TBudgetTopicLevelsF, BudgetTopicLevelsF, Self);
end;

procedure TmainF.MnuAcc_N30Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm3(True, TAccBookAnalyzeF, AccBookAnalyzeF, mainF)
end;

procedure TmainF.MnuTRialBalanceAnalyzaClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TrptAnalyzeBalanceF, rptAnalyzeBalanceF, mainF)
end;

procedure TmainF.MenuItem423Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TrptAnalyzeBalanceF, rptAnalyzeBalanceF, mainF)
end;

procedure TmainF.N34Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm3(True, TAccBookAnalyzeF, AccBookAnalyzeF, mainF)
end;

procedure TmainF.MnuTRialBalanceCtopic_2Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm3(True, TRptTrialBalance_CTopics2F,
    RptTrialBalance_CTopics2F, mainF)
end;

procedure TmainF.MnuAcc_119Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TBudgetTopicLevelsF, BudgetTopicLevelsF, Self);
end;

procedure TmainF.MnuAcc_127Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TBudgetTopics2F, BudgetTopics2F, mainF)
end;

procedure TmainF.MnuAcc_N39Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TPortionTableF, PortionTableF, Self)
end;

procedure TmainF.MnuAcc_aa1Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm3(True, TRpt_Ctopics2OnTopicBookF,
    Rpt_Ctopics2OnTopicBookF, Self)
end;

procedure TmainF.MnuAcc_N42Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm3(True, TRpt_Ctopics2OnDetailsBookF,
    Rpt_Ctopics2OnDetailsBookF, Self)
end;

procedure TmainF.MnuAcc_N110Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TPortionTopicCodeF, PortionTopicCodeF, Self)
end;

procedure TmainF.MnuAcc_N180Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TBudgetTopicBookF, BudgetTopicBookF, Self);
end;

procedure TmainF.MnuAcc_N182Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TBudgetReportF, BudgetReportF, Self);
end;

procedure TmainF.MnuAcc_N183Click(Sender: TObject);
begin
  SelectItem(Sender);
  theWorkflowStudio.UserInterface.ShowWorkflowDefinitionsDlg;
end;

procedure TmainF.MnuAcc_N184Click(Sender: TObject);
begin
  // MainTaskListF.ShowUserTasksDlg(WorkflowDmF.GETUser.UserId);
end;

procedure TmainF.MnuAcc_N185Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TrptMatrixBalance2F, rptMatrixBalance2F, Self);
end;

procedure TmainF.MnuAcc_N186Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TBudgetSettlementF, BudgetSettlementF, Self)
end;

procedure TmainF.MnuAcc_N187Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm3(True, TRptTrialBalance_CTopics3F,
    RptTrialBalance_CTopics3F, mainF)
end;

procedure TmainF.MnuAcc_N189Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm3(True, TRpt_Ctopics3OnTopicBookF,
    Rpt_Ctopics3OnTopicBookF, Self)
end;

procedure TmainF.MnuAcc_N190Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm3(True, TRpt_Ctopics3OnDetailsBookF,
    Rpt_Ctopics3OnDetailsBookF, Self)
end;

procedure TmainF.MnuAcc_N196Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm3(True, TRptBalanceDetailWithSomeColumnKolf,
    RptBalanceDetailWithSomeColumnKolf, Self, 1);

end;

procedure TmainF.MnuAcc_N197Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm3(True, TRptBalanceDetailWithSomeColumnKolf,
    RptBalanceDetailWithSomeColumnKolf, Self, 2);

end;

procedure TmainF.MnuAcc_N198Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm3(True, TRptBalanceDetailWithSomeColumnKolf,
    RptBalanceDetailWithSomeColumnKolf, Self, 3);

end;

procedure TmainF.MnuAcc_MnuUserDetailRelated2FClick(Sender: TObject);
begin
  SelectItem(Sender);
  UserDetailRelated2F.Enter(Sender);
end;

procedure TmainF.MnuAcc_N210Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm3(True, TlistPortionRange_2F, listPortionRange_2F, Self);
end;

procedure TmainF.MnuAcc_N212Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TPortionRangeF, PortionRangeF, Self)
end;

procedure TmainF.MnuAcc_N318Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm3(True, TlistPortionRangeF, listPortionRangeF, Self)
end;

procedure TmainF.MnuAcc_N43Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm3(True, TRptPortionShareF, RptPortionShareF, Self)
end;

procedure TmainF.MnuAcc_EndExpenceClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TEkhtetanieF, EkhtetanieF, Self, 2);
end;

procedure TmainF.MnuAcc_N47Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TDocTransactionF, DocTransactionF, Self)
end;

procedure TmainF.MnuAcc_N48Click(Sender: TObject);
begin
  Close;
end;

procedure TmainF.MnuAcc_N63Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TMakeDocPortionShareF, MakeDocPortionShareF, Self)
end;

procedure TmainF.MnuAcc_N66Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TrptAnalyzeCormparisonBalanceF,
    rptAnalyzeCormparisonBalanceF, Self);
end;

procedure TmainF.MnuAcc_N69Click(Sender: TObject);
begin
  SelectItem(Sender);
  ConfigAccF.Enter
end;

procedure TmainF.MnuAcc_N74Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TDocReferenceF, DocReferenceF, Self);
end;

procedure TmainF.MnuAcc_N91Click(Sender: TObject);
begin
  SelectItem(Sender);
  // CreateMDIForm2(TrptAnalyzeAccountInfoF, rptAnalyzeAccountInfoF, Self);
  CreateMDIForm2(TrptMatrixBalance2F, rptMatrixBalance2F, Self);
end;

procedure TmainF.MnuAcc_MnuTogetherClick(Sender: TObject);
begin
  Cascade;
end;

procedure TmainF.MnuAcc_KashiClick(Sender: TObject);
begin
  Tile;
end;

procedure TmainF.MnuAcc_MnuEftetamiehClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TEftetahiehF, EftetahiehF, Self, 1);
end;

procedure TmainF.MnuAcc_N28Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TBudgetInterfaceF, BudgetInterfaceF, Self);
end;

procedure TmainF.MnuAcc_ImportDocGroupsClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TInportDocGroupsF, InportDocGroupsF, Self);
end;

procedure TmainF.MnuAcc_N101Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TSpecialAccDetailOnTopicBookF,
    SpecialAccDetailOnTopicBookF, Self);
end;

procedure TmainF.MnuAcc_n102Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TAccDetailBookForSomeYearF, AccDetailBookForSomeYearF, Self);
end;

procedure TmainF.MnuAcc_ChangeCodeDocClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TChangeCodeDocF, ChangeCodeDocF, Self);
end;

procedure TmainF.MnuAcc_N108Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TAccBookForSomeYearF, AccBookForSomeYearF, Self, 3);
end;

procedure TmainF.MnuAcc_N109Click(Sender: TObject);
begin
  // CreateMDIForm3(True, TRptReportsF, RptReportsF, Self, 6029);
  SelectItem(Sender);
  CreateMDIForm3(True, TRptTrialBalance_CTopics2_CTopicsF,
    RptTrialBalance_CTopics2_CTopicsF, Self)
end;

procedure TmainF.MnuAcc_UserDetailGroupClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TFormDesignF, FormDesignF, Self, GetTag(Sender));
end;

procedure TmainF.MnuAcc_UserDetailRelatedClick(Sender: TObject);
begin
  SelectItem(Sender);
  UserDetailRelatedF.Enter(Sender);
end;

procedure TmainF.MnuAcc_mnuvijeClick(Sender: TObject);
var
  s: string;
begin
  SelectItem(Sender);
  s := Trim(get_box('تغيير نام شركت', 'لطفاً نام جديد را وارد كنيد:',
    APPBank.CompanyName));
  if s = EmptyStr then
    Exit;
  with DMF.qryGlbTmpTmp do
  begin
    Close;
    SQL.Text := Format('Update Sections Set CompanyName=%s  where sid=%D',
      [QuotedStr(s), APPBank.ID]);
    if ExecSQL > 0 then
      BigMessage('انجام شد!', 1);
    Close;
  end; // with
  APPBank.CompanyName := s;
end;

procedure TmainF.MnuAcc_CompareClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TAccCompareF, AccCompareF, Self, GetTag(Sender))
end;

procedure TmainF.MackMenuBudget;
var
  NewItem: TMenuItem;
  NewAction: TAction;
begin
  // mnuUtility.Clear;
  with TADOQuery.Create(Self) do
    try
      Connection := DMF.adcAccounting;
      SQL.Text := 'SELECT * FROM Acc.Interfaces ORDER BY InterfaceID DESC';
      Open;
      while not Eof do
      begin
        NewItem := TMenuItem.Create(Self);
        NewAction := TAction.Create(Self);
        NewAction.Caption := FieldByName('InterfaceCaption_L1').AsString;
        NewAction.Tag := FieldByName('InterfaceID').AsInteger;
        NewAction.OnExecute := mdiMainF.actBudget.OnExecute;
        NewItem.Action := NewAction;
        // NewAction.ActionList:=mdiMainF.ActionList1;
        MnuAcc_Utility.Insert(0, NewItem);
        Next;

      end;
    finally
      Close;
      Free;
    end;
end;

procedure TmainF.matrixTestClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TrptMatrixBalance2F, rptMatrixBalance2F, Self);
end;

procedure TmainF.MnuAcc_N115Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TContactsF, ContactsF, Self)
end;

procedure TmainF.MnuAcc_N119Click(Sender: TObject);
begin

end;

// procedure TMainF.FormResize(Sender: TObject);
// var
// aWidth: Integer;
// acolumn: Integer;
// i: SmallInt;
// begin
// aWidth := 0;
// StatusBar1.Panels[0].Width := StatusBar1.Height;
// for i := 0 to StatusBar1.Panels.Count - 1 do
// aWidth := aWidth + StatusBar1.Panels[i].Width;
// acolumn := StatusBar1.Width - aWidth;
// StatusBar1.Panels[0].Width := acolumn;
//
// end;

procedure TmainF.MnuAcc_N23Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TPortionTable2F, PortionTable2F, Self)
end;

procedure TmainF.MnuAcc_N1210Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm3(True, TRptTrialBalance_CTopics3_CTopicsF,
    RptTrialBalance_CTopics3_CTopicsF, Self)
end;

procedure TmainF.MnuAcc_N124Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TReViewCodingF, ReViewCodingF, Self);
end;

procedure TmainF.MnuAcc_N127Click(Sender: TObject);
begin
  SelectItem(Sender);
  NewYearF.Enter;
end;

procedure TmainF.MnuAcc_N128Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateChildForm(TMakeMaliYearF, MakeMaliYearF, Self, 0, alNone)
end;

procedure TmainF.MnuAcc_CtopicClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm3(True, TRptBalanceCtopicWithSomeColumnF,
    RptBalanceCtopicWithSomeColumnF, Self, GetTag(Sender));
end;

procedure TmainF.BuildMenuCoding;
const
  sqltxt = 'Select TopicType,LevelID,LevelCaption_L1,LevelCaption_L2 from acc.AccTopicLevels'
    + ' where TopicType in (0,1,2) order by TopicType, LevelID';
var
  i: Byte;
  NewItem: TMenuItem;
  NewAction: TAction;
  sL1_2, tL1_2, dL1_2, taL1_2: string;
begin
  if opt.primaryLanguage = 0 then
  begin
    sL1_2 := '_L1';
    tL1_2 := 'تعريف ';
    dL1_2 := 'دفتر ';
    taL1_2 := 'تراز ';
  end
  else
  begin
    sL1_2 := '_L2';
    tL1_2 := 'Definition ';
    dL1_2 := 'Journals ';
    taL1_2 := 'Balance ';
  end;
  i := 0;
  with TADOQuery.Create(Self) do
    try
      Connection := DMF.adcAccounting;
      SQL.Text := Format(sqltxt, [0]);
      Open;
      while not Eof do
        case FieldByName('TopicType').AsInteger of
          0:
            begin
              // Clean Old Mnue
              MnuAcc_MnuAccCoding.delete(i);
              MnuAcc_Offices.delete(i);
              MnuAcc_MnuTrialBalance.delete(i);
              // finishe Clean Old Menu

              // Create New Menu For AccCoding
              NewItem := TMenuItem.Create(Self);
              NewAction := TAction.Create(Self);
              NewAction.Caption := tL1_2 +
                FieldByName('LevelCaption' + sL1_2).AsString;

              NewAction.Tag := FieldByName('LevelID').AsInteger;
              NewAction.OnExecute := mdiMainF.actMnuCoding.OnExecute;
              NewItem.Action := NewAction;
              MnuAcc_MnuAccCoding.Insert(i, NewItem);
              NewAction.ImageIndex := 1 + 57;
              // Finish Create New Menu For AccCoding

              // Create New Menu For MnuOffices
              NewItem := TMenuItem.Create(Self);
              NewAction := TAction.Create(Self);
              NewAction.Caption := dL1_2 +
                FieldByName('LevelCaption' + sL1_2).AsString;
              NewAction.Tag := FieldByName('LevelID').AsInteger;
              NewAction.OnExecute := mdiMainF.actmenuOffices.OnExecute;
              NewItem.Action := NewAction;
              NewAction.ImageIndex := 11 + 57;
              MnuAcc_Offices.Insert(i, NewItem);
              // Finish New Menu For MnuOffices

              // Create New Menu For MnuTrialBalance
              NewItem := TMenuItem.Create(Self);
              NewAction := TAction.Create(Self);
              NewAction.Caption := taL1_2 +
                FieldByName('LevelCaption' + sL1_2).AsString;
              NewAction.Tag := FieldByName('LevelID').AsInteger;
              NewAction.OnExecute := mdiMainF.actTrialBalance.OnExecute;
              NewItem.Action := NewAction;
              if (i mod 2) = 0 then
                NewAction.ImageIndex := 2 + 57
              else
                NewAction.ImageIndex := 3 + 57;
              MnuAcc_MnuTrialBalance.Insert(i, NewItem);
              // Finish New Menu For MnuTrialBalance
              Inc(i);
              Next;
            end;
        else
          Next;
        end;
    finally
      Close;
      Free;
    end;
end;

procedure TmainF.MnuAcc_N141Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TExpenseF, ExpenseF, Self);
end;

procedure TmainF.MnuAcc_N142Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TExpenseListF, ExpenseListF, Self);
end;

procedure TmainF.MnuAcc_N143Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TrptBudgect_WorkTopicF, rptBudgect_WorkTopicF, Self);
end;

procedure TmainF.MnuAcc_N144Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TrptBudgect_WorkTopicWithDetailF,
    rptBudgect_WorkTopicWithDetailF, Self);
end;

procedure TmainF.MnuAcc_N147Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TFormDesignF, FormDesignF, Self, GetTag(Sender))
end;

procedure TmainF.N148Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm3(True, TRptReportsF, RptReportsF, Self, 2027);
end;

procedure TmainF.MnuAcc_N149Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TFormDesignF, FormDesignF, Self, GetTag(Sender));
end;

procedure TmainF.MnuAcc_N14Click(Sender: TObject);
begin
  SelectItem(Sender);
  BackUpMaliYearF.BackUpMaliYear(DMF.adcAccounting)
end;

procedure TmainF.MnuAcc_N150Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TFormDesignF, FormDesignF, Self, GetTag(Sender));
end;

procedure TmainF.MnuAcc_N151Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TFormDesignF, FormDesignF, Self, GetTag(Sender));
end;

procedure TmainF.MnuAcc_N158Click(Sender: TObject);
begin
  SelectItem(Sender);
  SendToDivanF.ShowImPortExcel;
end;

procedure TmainF.MnuAcc_N169Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TVarianceBookF, VarianceBookF, Self)
end;

procedure TmainF.MnuAcc_N170Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TMakeDocumentF, MakeDocumentF, Self);
end;

procedure TmainF.MnuAcc_N173Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TVarianceBookBsellF, VarianceBookBsellF, Self, 2)
end;

procedure TmainF.MnuAcc_N174Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TVarianceBookBsellF, VarianceBookBsellF, Self, 1)
end;

procedure TmainF.MnuAcc_N175Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TBudgetApprovedF, BudgetApprovedF, Self)
end;

procedure TmainF.MnuAcc_N176Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TBudgetListF, BudgetListF, Self, 1);
end;

procedure TmainF.MnuAcc_N178Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TBudgetItemsListF, BudgetItemsListF, Self)
end;

procedure TmainF.MnuAcc_N179Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TrptBudgetF, rptBudgetF, Self);
end;

procedure TmainF.MnuAcc_N49Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TrptAnalyzeBalanceMonthF, rptAnalyzeBalanceMonthF, Self);
end;

procedure TmainF.MnuAcc_N130Click(Sender: TObject);
begin
  SelectItem(Sender);
  // CreateMDIForm3(True, TRptReportsF, RptReportsF, Self, 7006);
  CreateMDIForm3(True, TRptTrialBalance_CTopics_DetailsF,
    RptTrialBalance_CTopics_DetailsF, Self);
end;

procedure TmainF.MnuAcc_N211Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm3(True, TAccComprasionMonthCtopic2BalanceF,
    AccComprasionMonthCtopic2BalanceF, Self);
end;

procedure TmainF.MnuAcc_N50Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TConfigTrialF, ConfigTrialF, Self)
end;

procedure TmainF.MnuAcc_N52Click(Sender: TObject);
var
  mnu: TMainMenu;
begin
  SelectItem(Sender);
  if not(login3F.getUserID = 0) then
  begin
    mnu := Self.Menu;
    setMenuy(mnu.Items, User.AccessKey, False);
    UpdateStatusbarMain;
    Menu := mnu;
  end;
end;

procedure TmainF.MnuAcc_N137Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TRptFinanceReportF, RptFinanceReportF, Self);
end;

procedure TmainF.MnuAcc_N136Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TFinanceReportsF, FinanceReportsF, Self);
end;

procedure TmainF.MnuAcc_N139Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TDefineReportF, DefineReportF, Self);
end;

procedure TmainF.MnuAcc_N134Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(tMoveDocF, MoveDocF, Self)
end;

procedure TmainF.MnuAcc_N148Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TManifestF, ManifestF, Self)
end;

procedure TmainF.AddBalance2Menu;
begin
  with DMF.qry_Temp do
  begin
    Close;
    SQL.Text :=
      'select levelID,LevelCaption_L1 from acc.AccTopicLevels where levelID=4';
    Open;
    MnuAcc_BalanceLevel4_1.Visible := RecordCount <> 0;
    MnuAcc_BalanceLevel4_2.Visible := MnuAcc_BalanceLevel4_1.Visible;
    MnuAcc_BalanceLevel4_3.Visible := MnuAcc_BalanceLevel4_2.Visible;
    MnuAcc_N5.Visible := MnuAcc_BalanceLevel4_1.Visible;
    if RecordCount <> 0 then
    begin
      MnuAcc_BalanceLevel4_1.Caption :=
        StringReplace(CorrectFarsiChars(MnuAcc_BalanceLevel4_1.Caption),
        CorrectFarsiChars('حساب دو'), FieldByName('LevelCaption_L1').AsString,
        [rfReplaceAll]);
      MnuAcc_BalanceLevel4_2.Caption :=
        StringReplace(CorrectFarsiChars(MnuAcc_BalanceLevel4_2.Caption),
        CorrectFarsiChars('حساب دو'), FieldByName('LevelCaption_L1').AsString,
        [rfReplaceAll]);
      MnuAcc_BalanceLevel4_3.Caption :=
        StringReplace(CorrectFarsiChars(MnuAcc_BalanceLevel4_3.Caption),
        CorrectFarsiChars('حساب دو'), FieldByName('LevelCaption_L1').AsString,
        [rfReplaceAll]);
    end;
    Close;
  end;
end;

procedure TmainF.Menu4RequestCashClick(Sender: TObject);
begin
  SelectItem(Sender);
  if (Sender is TAction) then
    CreateMDIForm2(TRequestCashF, RequestCashF, Self, (Sender as TAction).Tag);
end;

procedure TmainF.InterdictsWarnShow;
begin
  if ( { (optSub.SubSys[23] <> '1') or } (optSub.Subsys[24] <> '1') or
    (optSub.Subsys[25] <> '1') or (optSub.Subsys[26] <> '1')) then
    Exit;
  WarnShow;
  if not Interdicts_WarnShow then
    Exit;
  if APPBank.year <> StrToInt(MidStr(var_glb_CurrentDate, 1, 2)) then
    Exit;
  // Interdicts_WarnShow:=True;
  With DMF.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'SELECT InterdictID FROM pay.[EmployeeStoreDayTime] ' +
      ' WHERE   (len(employDate)>7)and substring(employDate,6,2) <= ' +
      MidStr(var_glb_CurrentDate, 6, 2);
    Active := True;
    if RecordCount > 0 then
      // if get_response('' + IntToStr(RecordCount) +
      // ' پرسنل در ليست احكام پرسنلي جهت كنترل سنوات وجود دارد آيا اين فرم را مشاهده مي‏كنيد.‏')
      // = mrYes then
      // CreateMDIForm2(TInterdictsWarnF, InterdictsWarnF, Self); // ,0,wsNormal
      initDesktopAlert(0,
        ' پرسنل در ليست احكام پرسنلي جهت كنترل سنوات وجود دارد آيا اين فرم را مشاهده مي‏كنيد.‏',
        JvDesktopAlert1PMessageClick);

    Active := False;
    SQL.Text := 'SELECT InterdictID FROM pay.InterdictsInterdicEndDate ';
    SQL.ADD('WHERE InterdicEndDate <= ''' + var_glb_CurrentDate + '''');
    Active := True;
    if RecordCount > 0 then
      // if get_response('' + IntToStr(RecordCount) +
      // ' پرسنل در ليست احكام پرسنلي جهت كنترل تاريخ پايان قرارداد وجود دارد آيا اين فرم را مشاهده مي‏كنيد.‏')
      // = mrYes then
      // CreateMDIForm2(TInterdictsEndDateWarnF, InterdictsEndDateWarnF, Self);
      initDesktopAlert(0,
        ' پرسنل در ليست احكام پرسنلي جهت كنترل تاريخ پايان قرارداد وجود دارد آيا اين فرم را مشاهده مي‏كنيد.‏',
        JvDesktopAlert2PMessageClick);

    Active := False;

  end; // With
end;

procedure TmainF.WarnShow;
begin
  EndDate := EmptyStr;
  With DMF.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text := 'SELECT FormTypes.FormCaption_L1 ';
    SQL.ADD('+ '' '' + FormsInfo.InfoName_L1+ '' ش.پرسنل '' + ');
    SQL.ADD('LTRIM(PersonelDecExt.PersonelNo) + '' تاريخ : '' + PersonelDecExt.EndDate AS EndDate');
    SQL.ADD('FROM pay.PersonelDecExt INNER JOIN');
    SQL.ADD('pay.FormsInfo ON PersonelDecExt.FormInfoID = FormsInfo.FormInfoID INNER JOIN');
    SQL.ADD('pay.FormTypes ON FormsInfo.FormType = FormTypes.FormType');
    SQL.ADD('WHERE (LEN(PersonelDecExt.EndDate) BETWEEN 2 AND 9)');
    SQL.ADD('AND (PersonelDecExt.EndDate<>''  /  /    '')');
    Active := True;
    if RecordCount > 0 then
      initDesktopAlert(0,
        'تاریخ تعدادی از اطلاعات ثبت شده برای برخی از پرسنل صحیح ثبت نشده آیا مشاهده و اصلاح انجام می دهید؟؟',
        JvDesktopAlert3PMessageClick);
    while not Eof do
    begin
      EndDate := EndDate + #13#10 + FieldByName('EndDate').AsString;
      Next;
    end;

    Active := False;

  end; // With
end;

procedure TmainF.AddMenuItem2p;
var
  NewItem: TMenuItem;
begin
  with DMF.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text := 'SELECT FormType, FormCaption_L1';
    SQL.ADD('FROM Pay.FormTypes');
    SQL.ADD('WHERE (SalaryEffectKind = 3)');
    Active := True;
    MnuPay_PersonelFormInfo_1F.Enabled := RecordCount > 0;
    MnuPay_PersonelFormInfo_1F.Clear;
    while not Eof do
    begin
      NewItem := TMenuItem.Create(Self);
      NewItem.Caption := Fields[1].AsString;
      NewItem.Tag := Fields[0].AsInteger;
      NewItem.Name := MnuPay_PersonelFormInfo_1F.Name + 'Item' +
        Fields[0].AsString;
      NewItem.OnClick := mnuAllPersonelFormInfo_1FClick;
      MnuPay_PersonelFormInfo_1F.ADD(NewItem);
      Next;
    end;
    Active := False;
  end;
end;

procedure TmainF.AllAddMenuItemPay;
var
  mnu: TMainMenu;
begin
  mnu := mainF.Menu;
  with mdiMainF do
    try
      mainF.Menu := nil;
      // AddMenuItemP(MnuPay_MItemInterdictEffectT, 3, mdiMainF.ActFormInfo_3F, 4);
      // AddMenuItemP(MnuPay_MItemSalaryCalcT, 4, mdiMainF.ActFormInfo_5F, 4);
      // AddMenuItemP(MnuPay_MItemSalaryEffectT, 2, mdiMainF.ActFormInfo_2F, 4);
      // AddMenuItemP(MnuPay_MItemOtherFormTypeT, 5, ActFormInfo_2FDis5, 4);
      // AddMenuItemP(MnuPay_MItemOtherFormTypeTVijeh, 0, ActFormInfo_2FDis5, 4);
      // AddMenuItemP(MnuPay_MItemSalaryCorrelateT, 6, ActFormInfo_6F, 4);

      AddMenuItemP(MnuPay_MItemInterdictEffectS, 3, mdiMainF.ActFormInfo_3F, 2);
      AddMenuItemP(MnuPay_MItemSalaryCalcS, 4, mdiMainF.ActFormInfo_5F, 2);
      AddMenuItemP(MnuPay_MItemSalaryEffectS, 2, ActFormInfo_2F, 2);
      AddMenuItemP(MnuPay_MItemOtherFormTypeS, 5, ActFormInfo_2FDis5, 2);
      AddMenuItemP(MnuPay_MItemOtherFormTypeSVijeh, 0, ActFormInfo_2FDis5, 2);
      AddMenuItemP(MnuPay_MItemSalaryCorrelateS, 6, ActFormInfo_6F, 2);

      AddMenuItemP(MnuPay_MItemInterdictEffectP, 3, mdiMainF.ActFormInfo_3F, 3);
      AddMenuItemP(MnuPay_MItemSalaryCalcP, 4, ActFormInfo_5F, 3);
      AddMenuItemP(MnuPay_MItemSalaryEffectP, 2, ActFormInfo_2F, 3);
      AddMenuItemP(MnuPay_MItemOtherFormTypeP, 5, ActFormInfo_2FDis5, 3);
      AddMenuItemP(MnuPay_MItemOtherFormTypePVijeh, 0, ActFormInfo_2FDis5, 3);
      AddMenuItemP(MnuPay_MItemSalaryCorrelateP, 6, ActFormInfo_6F, 3);

      AddMenuItemP(MnuPay_MItemOtherFormTypeScVijeh, 0, ActFormInfo_2FDis5, 0);
      AddMenuItemP(MnuPay_MItemSchedule5, 5, ActFormInfo_2FDis5, 0);

      AddMenuItemP(MnuPay_MItemOtherFormTypeOVijeh, 0, ActFormInfo_2FDis5, 1);
      AddMenuItemP(MnuPay_MItemOrganization5, 5, ActFormInfo_2FDis5, 1);
      AddMenuItemP(MnuPay_MItemOrganization6, 6, ActFormInfo_6F, 1);
      AddMenuItemP(MnuPay_MItemOrganization4, 4, ActFormInfo_5F, 1);
      AddMenuItemP(MnuPay_MItemOrganization2, 2, ActFormInfo_2F, 1);

      AddMenuItem2p;
    finally
      mainF.Menu := mnu;
    end;
end;

procedure TmainF.AddMenuItemP(MnuItem: TMenuItem; DisplayFormType: Integer;
ActionName: TAction; MainMnuId: Byte);
var
  NewItem: TMenuItem;
  Action_Name: TAction;
begin
  with DMF.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text :=
      'SELECT FormType,FormCaption_L1,FormCaption_L2,SalaryKind FROM Pay.FormTypes ';
    SQL.ADD(Format('WHERE (DisplayFormType= %d )', [DisplayFormType]));
    // SQL.Add(format('AND ('','' + ShowMnuPlace + '','' LIKE ''%,%d,%'')',[MainMnuId]));
    SQL.ADD('AND ('',''+ShowMnuPlace+'','' LIKE ''%,' + IntToStr(MainMnuId)
      + ',%'')');

    SQL.ADD('ORDER BY MnuRow,FormType');
    Active := True;
    MnuItem.Visible := not IsEmpty;
    MnuItem.Clear;
    while not Eof do
    begin
      if FieldByName('SalaryKind').AsInteger = 4 then
        Action_Name := mdiMainF.actFormInfo_5FormulaF
      else
        Action_Name := ActionName;

      NewItem := TMenuItem.Create(Self);
      If optP.primaryLanguage = 0 then
        NewItem.Caption := Fields[1].AsString
      else
        NewItem.Caption := Fields[2].AsString;
      NewItem.Tag := Fields[0].AsInteger;
      NewItem.Name := MnuItem.Name + Action_Name.Name + Fields[0].AsString +
      // tToStr(MainMnuId * (MainMnuId + 1));
        '_' + IntToStr(MainMnuId);
      // s4NameUnique;
      // NewItem.Caption:=NewItem.Caption+NewItem.Name;
      NewItem.OnClick := Action_Name.OnExecute;
      MnuItem.ADD(NewItem);
      Next;
    end; // while
    Active := False;
  end; // with
end;

function TmainF.CheckActiveFunctions(mnu: TMenuItem): Boolean;
var
  s: String;
begin
  Result := not IsInMenu(CorrectFarsiChars(mnu.Caption));
  Exit;

  with TADOQuery.Create(nil) do
    try
      Active := False;
      ConnectionString := GetConStr('FaraSystems');
      SQL.Text := 'SELECT menus ';
      SQL.ADD('FROM OperatorItems ');
      SQL.ADD('WHERE (subsystem = 2) AND (UserID = :UID)');
      SQL.ADD('AND ((SystemID=:SysID) OR (SystemID = 0))');
      Parameters.ParamByName('SysID').Value := SYSID;
      Parameters.ParamByName('UID').Value := User.ID;
      Active := True;
      s := Fields[0].AsString + #$0d#$0a;
    finally
      Free;
    end; // try

  mnu.Visible := (User.admin) or
    ((Pos(StringReplace(CorrectFarsiChars(mnu.Caption), '&', '',
    [rfReplaceAll, rfIgnoreCase]) + #$0d#$0a, s) <> 0) or
    (Pos(StringReplace(CorrectFarsiChars(MnuPay_Function_Mission.Caption), '&',
    '', [rfReplaceAll, rfIgnoreCase]) + #$0d#$0a, s) <> 0));
  Result := not mnu.Visible;
end;

procedure TmainF.JvDesktopAlert1PMessageClick(Sender: TObject);
begin
  SelectItem(Sender);
  try
    CreateMDIForm2(TInterdictsWarnF, InterdictsWarnF, Self); // ,0,wsNormal
  finally
    (Sender as TCustomTrayIcon).BalloonTimeout := 1;
  end;
end;

procedure TmainF.JvDesktopAlert2PMessageClick(Sender: TObject);
begin
  SelectItem(Sender);
  try
    CreateMDIForm2(TInterdictsEndDateWarnF, InterdictsEndDateWarnF, Self);
  finally
    (Sender as TCustomTrayIcon).BalloonTimeout := 1;
  end;
end;

procedure TmainF.JvDesktopAlert3PMessageClick(Sender: TObject);
begin
  SelectItem(Sender);
  try
    MessageDlg(EndDate, mtWarning, [mbOK], 0);
  finally
    (Sender as TCustomTrayIcon).BalloonTimeout := 1;
  end;
end;

procedure TmainF.MnuPay_WorkflowMainFClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TWorkflowMainF, WorkflowMainF, Self)
end;

procedure TmainF.MnuPay_Tile0Click(Sender: TObject);
begin
  Tile
end;

procedure TmainF.MnuPay_Cascade0Click(Sender: TObject);
begin
  Cascade
end;

procedure TmainF.FormTypesF0Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TFormTypesF, FormTypesF, Self)
end;

procedure TmainF.FormInfo_4F0Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TFormInfo_4F, FormInfo_4F, Self, 7)
end;

procedure TmainF.FormInfo_1F1ffffffffffffffClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TFormInfo_1F, FormInfo_1F, Self, 1)
end;

procedure TmainF.FormInfo_1F0Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TFormInfo_1F, FormInfo_1F, Self, 0)
end;

procedure TmainF.CDBurnF0Click(Sender: TObject);
begin
  SelectItem(Sender);
  CdBurnf.BackUpBurnCD(DMF.adcSalary, APPBank)
end;

procedure TmainF.MnuPay_N51Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TPonyListF, PonyListF, mdiMainF)
end;

procedure TmainF.MnuPay_N54Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TInterdicts4ItemsF, Interdicts4ItemsF, Self)
end;

procedure TmainF.Word1Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TWordSendF, WordSendF, Self)
end;

procedure TmainF.N17Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TPersonalArchiveF, PersonalArchiveF, Self)
end;

procedure TmainF.MnuPay_MainTaskListFClick(Sender: TObject);
begin
  SelectItem(Sender);
  MainTaskListF.ShowUserTasksDlg(WorkflowDmF.GETUser.UserId);
end;

procedure TmainF.MnuPay_MakeMaliYearClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateChildForm(TMakeMaliYearF, MakeMaliYearF, Self, 0, alNone)
end;

procedure TmainF.MnuPay_FClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TrptfunctionF, rptfunctionF, Self)
end;

procedure TmainF.MnuPay_InterdictEffectListF1Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TInterdictEffectListF, InterdictEffectListF, Self)
end;

procedure TmainF.DecExtCalculateF23Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateChildForm(TDecExtCalculateF, DecExtCalculateF, Self, 23)
end;

procedure TmainF.MnuPay_RptFunctionWithMonthF1Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TRptFunctionWithMonthF, RptFunctionWithMonthF, Self, 23)
end;

procedure TmainF.MnuPay_Function4ProjectPersonF1Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TrptFunction4ProjectPersonF,
    rptFunction4ProjectPersonF, Self, 23)
end;

procedure TmainF.MnuPay_PersonelDecExt111F1Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TPersonelDecExt_111F, PersonelDecExt_111F, mdiMainF,
    GetTag(Sender))
end;

procedure TmainF.MnuPay_PersonelDecExtinfoF1Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TPersonelDecExtinfoF, PersonelDecExtinfoF, mdiMainF,
    GetTag(Sender))
end;

procedure TmainF.MnuPay_N30Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateChildForm(TDecExtCalculateF, DecExtCalculateF, Self, 23)
end;

procedure TmainF.MnuPay_N310Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TSalaryList4Office3F, SalaryList4Office3F, mdiMainF)
end;

procedure TmainF.MnuPay_N31Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TInterdictsWarnF, InterdictsWarnF, Self)
end;

procedure TmainF.MnuPay_N32Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TGetReprotsKaroonF, GetReprotsKaroonF, mdiMainF)
end;

procedure TmainF.PersonelDecExtInfo_2F52Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TPersonelDecExtInfo_2F, PersonelDecExtInfo_2F, mdiMainF, 52)
end;

procedure TmainF.MnuPay_PersonelListPensionerF1Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TPersonelListPensionerF, PersonelListPensionerF, mdiMainF)
end;

procedure TmainF.InterdictsFs50Click(Sender: TObject);
begin
  SelectItem(Sender);
  InterdictsF.Enter(45, 50, 50, 0, 0)
end;

procedure TmainF.Interdicts4HistoryF0tClick(Sender: TObject);
begin
  SelectItem(Sender);
  Interdicts4HistoryF.Enter(0, 0)
end;

procedure TmainF.MnuPay_PaymentLoanWithRemainfClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TrptLoanPersonelF, rptLoanPersonelF, mdiMainF, 33)
end;

procedure TmainF.MnuPay_N44Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TSalaryList_OfficeF, SalaryList_OfficeF, Self)
end;

procedure TmainF.MnuPay_N45Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TSalaryList_PersonelF, SalaryList_PersonelF, Self)
end;

procedure TmainF.MnuPay_N46Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TSummerySalaryListF, SummerySalaryListF, Self)
end;

procedure TmainF.DecExtCalculateF43Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateChildForm(TDecExtCalculateF, DecExtCalculateF, mdiMainF, 43)
end;

procedure TmainF.DecExtCalculateF54Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateChildForm(TDecExtCalculateF, DecExtCalculateF, mdiMainF, 54)
end;

procedure TmainF.DecExtCalculateF53Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateChildForm(TDecExtCalculateF, DecExtCalculateF, mdiMainF, 53)
end;

procedure TmainF.MnuPay_CommandUpDateClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateChildForm(TUpDateBankF, UpDateBankF, Self, 0, alNone);
end;

procedure TmainF.Interdicts4ItemsF1Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TInterdicts4ItemsF, Interdicts4ItemsF, Self)
end;

procedure TmainF.MnuPay_122Click(Sender: TObject);
begin
  Tile
end;

procedure TmainF.MnuPay_123Click(Sender: TObject);
begin
  Cascade
end;

procedure TmainF.MnuPay_145Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TFormInfo_1F, FormInfo_1F, Self, 0)
end;

procedure TmainF.MnuPay_151Click(Sender: TObject);
begin
  SelectItem(Sender);
  NewYearF.Enter
end;

procedure TmainF.MnuPay_153Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TFormInfo_1F, FormInfo_1F, Self, 1)
end;

procedure TmainF.MnuPay_157Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TInsuranceCONSTinfoF, InsuranceCONSTinfoF, mdiMainF)
end;

procedure TmainF.MnuPay_161Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TrptfunctionF, rptfunctionF, Self)
end;

procedure TmainF.MnuPay_164Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TInterdictsWarnF, InterdictsWarnF, Self)
end;

procedure TmainF.MnuPay_165Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TPersonelDecExtInfo_2F, PersonelDecExtInfo_2F, mdiMainF, 35)
end;

procedure TmainF.MnuPay_167Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TWordSendF, WordSendF, Self)
end;

procedure TmainF.MnuPay_168Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TInterdictEffectListF, InterdictEffectListF, Self)
end;

procedure TmainF.MnuPay_177Click(Sender: TObject);
begin
  Tile
end;

procedure TmainF.MnuPay_178Click(Sender: TObject);
begin
  Cascade
end;

procedure TmainF.MnuPay_1Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TFormTypespayF, FormTypespayF, Self)
end;

procedure TmainF.MnuPay_AddToolbarClick(Sender: TObject);
begin
  SelectItem(Sender);
  try
    AddToolbarF.Enter(Menu)
  finally
    mdiMainF.FrmCreateMnu;
  end;
end;

procedure TmainF.MnuPay_DetailInterdictListF13Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TDetailInterdictListF, DetailInterdictListF, mdiMainF, 13)
end;

procedure TmainF.MnuPay_DetailInterdictListF8Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TDetailInterdictListF, DetailInterdictListF, mdiMainF, 8)
end;

procedure TmainF.MnuPay_DetailInterdictListF12Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TDetailInterdictListF, DetailInterdictListF, mdiMainF, 12)
end;

procedure TmainF.MnuPay_DetailInterdictListF27Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TDetailInterdictListF, DetailInterdictListF, mdiMainF, 27)
end;

procedure TmainF.MnuPay_LoanClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TrptLoanSalaryF, rptLoanSalaryF, Self)
end;

procedure TmainF.MnuPay_RptCrossTabClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TRptCrossTabF, RptCrossTabF, Self)
end;

procedure TmainF.MnuPay_ConfigFenterClick(Sender: TObject);
begin
  SelectItem(Sender);
  ConfigpayF.Enter;
end;

procedure TmainF.MnuPay_dddd1Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TPersonelDecExtInfo_2F, PersonelDecExtInfo_2F, mdiMainF, 137);
end;

procedure TmainF.MnuPay_N213Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TSalaryList4Office2F, SalaryList4Office2F, Self)
end;

procedure TmainF.MnuPay_N21Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateChildForm(TDecExtCalculateF, DecExtCalculateF, mdiMainF, 53)
end;

procedure TmainF.MnuPay_N221Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TJobsInfolistF, JobsInfolistF, Self)
end;

procedure TmainF.MnuPay_N223Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TJobsInfolistF, JobsInfolistF, Self)
end;

procedure TmainF.MnuPay_N224Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TSalaryList4Office3YearF, SalaryList4Office3YearF, Self)
end;

procedure TmainF.MnuPay_N226Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TInterdicts4CopyF, Interdicts4CopyF, Self)
end;

procedure TmainF.MnuPay_N228Click(Sender: TObject);
begin
  CreateMDIForm2(TSummerySalaryList_PersonelTotalF,
    SummerySalaryList_PersonelTotalF, Self)
end;

procedure TmainF.MnuPay_N229Click(Sender: TObject);
begin
  CreateMDIForm2(TSalaryList4Office3YearDecWageF,
    SalaryList4Office3YearDecWageF, Self)
end;

procedure TmainF.MnuPay_N22Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TSalaryListProjectGroupYearF,
    SalaryListProjectGroupYearF, mainF)
end;

procedure TmainF.MnuPay_N239Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TPony2F, Pony2F, mainF)
end;

procedure TmainF.MnuPay_N23Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateChildForm(TDecExtCalculateF, DecExtCalculateF, mdiMainF, 43)
end;

procedure TmainF.MnuPay_N240Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TSalaryList4OfficeMonthF, SalaryList4OfficeMonthF, mdiMainF)
end;

procedure TmainF.MnuPay_N242Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TPersonelDecExtInfo_2F, PersonelDecExtInfo_2F, mdiMainF, 136)
end;

procedure TmainF.MnuPay_N248Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TSalaryList_ProjectF, SalaryList_ProjectF, Self)
end;

procedure TmainF.MnuPay_N24Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateChildForm(TDecExtCalculateF, DecExtCalculateF, mdiMainF, 54)
end;

procedure TmainF.MnuPay_MnuRecallBranchFClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TRecallBranchpayF, RecallBranchpayF, Self)
end;

procedure TmainF.MnuPay_FunctionItemYearFClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TrptFunctionItemYearF, rptFunctionItemYearF, Self)
end;

procedure TmainF.MnuPay_N2200Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TSummerySalaryList_PersonelTotal2F,
    SummerySalaryList_PersonelTotal2F, Self)

end;

procedure TmainF.mnuAllPersonelFormInfo_1FClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TPersonelFormInfo_1F, PersonelFormInfo_1F, mdiMainF,
    (Sender as TMenuItem).Tag)
end;

procedure TmainF.MnuPay_ListSalaryKaroonFClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TListSalaryKaroonF, ListSalaryKaroonF, Self)
end;

procedure TmainF.MnuPay_N212Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TAllSalaryListF, AllSalaryListF, Self)
end;

procedure TmainF.MnuPay_N84Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TSalaryList_OfficeF, SalaryList_OfficeF, Self)
end;

procedure TmainF.MnuPay_VacationOver9FClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TVacationOver9F, VacationOver9F, mdiMainF, 16)
end;

procedure TmainF.MnuPay_N83Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TSalaryList_PersonelF, SalaryList_PersonelF, Self)
end;

procedure TmainF.MnuPay_N68Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TSummerySalaryListF, SummerySalaryListF, mdiMainF)
end;

procedure TmainF.MnuPay_N6Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TPersonelDecExtInfo_2F, PersonelDecExtInfo_2F, mdiMainF, 52)
end;

procedure TmainF.MnuPay_RetardSalaryListClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TRetardSalaryListF, RetardSalaryListF, mdiMainF, 1)
end;

procedure TmainF.MnuPay_RetardMakeBankDSKClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TMakeBankDSKF, MakeBankDSKF, mdiMainF, 2)
end;

procedure TmainF.MnuPay_N40Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TKartSaat2_1F, KartSaat2_1F, Self)
end;

procedure TmainF.MnuPay_N43Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TPersonelDecExtInfo_2F, PersonelDecExtInfo_2F, mdiMainF, 25)
end;

procedure TmainF.MnuPay_PersonelDecExtInfo_2F35Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TPersonelDecExtInfo_2F, PersonelDecExtInfo_2F, mdiMainF, 35)
end;

procedure TmainF.MnuPay_PersonelDecExtInfo_2F32Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TPersonelDecExtInfo_2F, PersonelDecExtInfo_2F, mdiMainF, 32)
end;

procedure TmainF.MnuPay_FunctionYearsFClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TFunctionYearsF, FunctionYearsF, Self)
end;

procedure TmainF.MnuPay_SalaryOverTimeClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TSalaryOverTimeF, SalaryOverTimeF, Self)
end;

procedure TmainF.NewYearMangeClick(Sender: TObject);
begin
  SelectItem(Sender);
  NewYearF.Enter
end;

procedure TmainF.MnuPay_SalaryList3colFClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TSalaryList3colF, SalaryList3colF, Self)
end;

procedure TmainF.MnuPay_SalaryListTaxFClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TSalaryListTaxF, SalaryListTaxF, Self)
end;

procedure TmainF.MnuPay_RetardListSalaryClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TRetardListSalaryF, RetardListSalaryF, Self)
end;

procedure TmainF.MnuPay_TPersonelLeaveF16Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TPersonelLeaveF, PersonelLeaveF, Self, 16)
end;

procedure TmainF.MnuPay_SalaryList_insurance2Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TSalaryList_insurance2F, SalaryList_insurance2F, Self)
end;

procedure TmainF.MnuPay_ListPensionerF60Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TListPensionerF, ListPensionerF, Self, 60)
end;

procedure TmainF.MnuPay_N194Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TFormDesignF, FormDesignF, Self, GetTag(Sender))
end;

procedure TmainF.MnuPay_N19Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TMakeDocumentpayF, MakeDocumentpayF, Self)
end;

procedure TmainF.MnuPay_CalcAnnuityFClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TCalcAnnuityF, CalcAnnuityF, Self)
end;

procedure TmainF.MnuPay_PersonalTideFClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TPersonalTideF, PersonalTideF, Self)
end;

procedure TmainF.MnuPay_SalaryEndServiceFClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TSalaryEndServiceF, SalaryEndServiceF, Self)
end;

procedure TmainF.MnuPay_N37Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TInsouranceOtherF, InsouranceOtherF, Self, 61);
end;

procedure TmainF.MnuPay_N38Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TrptInsouranceOtherF, rptInsouranceOtherF, Self, 61);
end;

procedure TmainF.MnuPay_AllDecExtOnMounthFClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TDecExtOnMounthF, DecExtOnMounthF, Self, GetTag(Sender));
end;

procedure TmainF.MnuPay_FunctionDayListFClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TFunctionDayListF, FunctionDayListF, Self)
end;

procedure TmainF.MnuPay_Interdicts4HistoryF1Click(Sender: TObject);
begin
  SelectItem(Sender);
  Interdicts4HistoryF.Enter(0, 0)
end;

procedure TmainF.MnuPay_Interdicts4ItemsTideFClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TInterdicts4ItemsTideF, Interdicts4ItemsTideF, Self)
end;

procedure TmainF.MnuPay_ListBimehNewF2Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TListBimehNewF, ListBimehNewF, Self, 2)
end;

procedure TmainF.act_PersonelFormInfo_1F23Execute(Sender: TObject);
begin
  CreateMDIForm2(TPersonelFormInfo_1F, PersonelFormInfo_1F, mdiMainF, 23)
end;

procedure TmainF.MnuPay_FunctionDayChekF28Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TFunctionDayChekF, FunctionDayChekF, Self, 28)
end;

procedure TmainF.MnuPay_N72Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TPersonelFormInfo_1F, PersonelFormInfo_1F, mdiMainF, 58);
end;

procedure TmainF.MnuPay_N73Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateChildForm(TDecExtCalculateF, DecExtCalculateF, Self, 58)
end;

procedure TmainF.MnuPay_SalaryList4Office25FClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TSalaryList4Office25F, SalaryList4Office25F, Self)
end;

procedure TmainF.MnuPay_N74Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TChangeWageF, ChangeWageF, Self)
end;

procedure TmainF.MnuPay_ArchiveInfoF2Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateChildForm(TCalcArchiveInfo2F, CalcArchiveInfo2F, Self, 23)
end;

procedure TmainF.MnuPay_InterdictsF49_1Click(Sender: TObject);
begin
  SelectItem(Sender);
  InterdictsF.Enter(45, 0, 49, 1, 0)
end;

procedure TmainF.MnuPay_N75Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TMakeDocumentDecF, MakeDocumentDecF, Self)
end;

procedure TmainF.MnuPay_N210Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TKartSaat1_1F, KartSaat1_1F, Self)
end;

procedure TmainF.MnuPay_N211Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TrptFunctionYearF, rptFunctionYearF, Self)
end;

procedure TmainF.MnuPay_KartSaat_WinFClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TKartSaat_WinF, KartSaat_WinF, Self)
end;

procedure TmainF.MnuPay_PersonelSponsorshipFClick(Sender: TObject);
begin
  SelectItem(Sender);
  PersonelSponsorshipF.Enter(0)
end;

procedure TmainF.MnuPay_SalaryList4Office25_2FClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TSalaryList4Office25_2F, SalaryList4Office25_2F, Self)
end;

procedure TmainF.MnuPay_MissionF24Click(Sender: TObject);
begin
  SelectItem(Sender);
  MissionF.Enter(24)
end;

procedure TmainF.MnuPay_SalaryList4Office2FClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TSalaryList4CTopicCodeF, SalaryList4CTopicCodeF, Self)
end;

procedure TmainF.MnuPay_AllFormDesignSalaryFClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TFormDesignSalaryF, FormDesignSalaryF, Self, GetTag(Sender));
end;

procedure TmainF.MnuPay_DecExtOnMounthSeparationFClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TDecExtOnMounthSeparationF, DecExtOnMounthSeparationF, Self)
end;

procedure TmainF.MnuPay_FormDesignFClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TFormDesignF, FormDesignF, Self, GetTag(Sender))
end;

procedure TmainF.MnuPay_FunctionDayChek2F28Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TFunctionDayChek2F, FunctionDayChek2F, Self, 28)
end;

procedure TmainF.MnuPay_MissionInfoClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TMissionInfoF, MissionInfoF, Self)
end;

procedure TmainF.MnuPay_NMakeDocumentMissionFClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TMakeDocumentMissionF, MakeDocumentMissionF, Self)
end;

procedure TmainF.MnuPay_SalaryList4OfficeUnLimitFClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TSalaryList4OfficeUnLimitF, SalaryList4OfficeUnLimitF, Self)
end;

procedure TmainF.MnuPay_EmployeeLoanItemClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TEmployeeLoanItemF, EmployeeLoanItemF, mdiMainF, 14)
end;

procedure TmainF.MnuPay_ERP1Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TSendToOracelF, SendToOracelF, Self)
end;

procedure TmainF.MnuPay_PersonelAccountsF0Click(Sender: TObject);
begin
  SelectItem(Sender);
  PersonelAccountsF.Enter(0)
end;

procedure TmainF.MnuPay_KartSaatNewF0Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TKartSaat_NewF, KartSaat_NewF, Self)
end;

procedure TmainF.MnuPay_SalaryListProjectGroupF00Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TSalaryListProjectGroupF, SalaryListProjectGroupF, mainF)
end;

procedure TmainF.MnuPay_SalaryList4ProjectF00Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TSalaryList4ProjectF, SalaryList4ProjectF, mainF)
end;

procedure TmainF.MnuPay_SalaryList4Office25MissionF00Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TSalaryList4Office25MissionF,
    SalaryList4Office25MissionF, mainF)
end;

procedure TmainF.MnuPay_PonyF0Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TPonyF, PonyF, mainF)
end;

procedure TmainF.MnuPay_SalaryList4SumOfficeUnLimitF0Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TSalaryList4SumOfficeUnLimitF,
    SalaryList4SumOfficeUnLimitF, Self)
end;

procedure TmainF.MnuPay_MissionItemsF92Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TMissionItemsF, MissionItemsF, Self, 92)
end;

procedure TmainF.MnuPay_N110Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TPersonelFormInfo_1F, PersonelFormInfo_1F, mdiMainF, 95)
end;

procedure TmainF.MnuPay_ArchiveInfo2FClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateChildForm(TArchiveInfo2F, ArchiveInfo2F, Self)
end;

procedure TmainF.MnuPay_DecExtCalculateFClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateChildForm(TDecExtCalculateF, DecExtCalculateF, Self, GetTag(Sender))
end;

procedure TmainF.MnuPay_DecExtCalculateFClick1Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateChildForm(TDecExtCalculateF, DecExtCalculateF, Self, GetTag(Sender))
end;

procedure TmainF.MnuPay_GetReprotsF0Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TGetReprotsF, GetReprotsF, Self)
end;

procedure TmainF.MnuPay_N70Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TKartSaat_donyaF, KartSaat_donyaF, Self)
end;

procedure TmainF.MnuPay_UserClick(Sender: TObject);
begin
  SelectItem(Sender);
  FormShow(Self)
end;

procedure TmainF.MnuPay_RetardSalaryListF2Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TRetardSalaryListF, RetardSalaryListF, Self, 2)
end;

procedure TmainF.MnuPay_N114Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TSummerySalaryList_PersonelF,
    SummerySalaryList_PersonelF, Self)
end;

procedure TmainF.MnuPay_N118Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TFunctionSpecialControlF, FunctionSpecialControlF, Self)
end;

procedure TmainF.MnuPay_N11Click(Sender: TObject);
begin
  SelectItem(Sender);
  InterdictsF.Enter(45, 50, 50, 0, 0);
end;

procedure TmainF.MnuPay_N1210Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TSalaryList4Office25_UnLimitF,
    SalaryList4Office25_UnLimitF, Self)
end;

procedure TmainF.MnuPay_N142Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TFormDesignF, FormDesignF, Self, GetTag(Sender))
end;

procedure TmainF.MnuPay_N146Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TDecExtOnMounthF, DecExtOnMounthF, Self, GetTag(Sender));
end;

procedure TmainF.MnuPay_MnuN119Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TPersonelFormInfo_1F, PersonelFormInfo_1F, mdiMainF, 92)
end;

procedure TmainF.MnuPay_MnuN120Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateChildForm(TDecExtCalculateF, DecExtCalculateF, Self, 92)
end;

procedure TmainF.MnuPay_InsouranceOther2FClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TrptInsouranceOther2F, rptInsouranceOther2F, Self, 61);
end;

procedure TmainF.MnuPay_ShowWorkflowDefinitionsDlgClick(Sender: TObject);
begin
  SelectItem(Sender);
  theWorkflowStudio.UserInterface.ShowWorkflowDefinitionsDlg
end;

procedure TmainF.MnuPay_TSalaryList_insurancePartF1Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TSalaryList_insurancePartF, SalaryList_insurancePartF,
    mdiMainF, GetTag(Sender));
end;

procedure TmainF.MnuPay_N2091Click(Sender: TObject);
begin
  SelectItem(Sender);
  RecInMinistryF.Enter(0);
end;

procedure TmainF.MnuPay_N2101Click(Sender: TObject);
begin
  SelectItem(Sender);
  RecOutMinistryF.Enter(0);
end;

procedure TmainF.MnuPay_N2301Click(Sender: TObject);
begin
  SelectItem(Sender);
  if (RptReportsF <> nil) and (Assigned(RptReportsF)) then
    try
      ADD2PersonelDecExtF.Enter(RptReportsF.qryDetails);
    finally
      RptReportsF.qryDetails.Close;
      RptReportsF.qryDetails.Open;
    end
  else
    Warn('این فرم در گزارش ...باز میشود');
end;

procedure TmainF.MnuPay_N232Click(Sender: TObject);
begin
  SelectItem(Sender);
  MainTaskListF.ShowUserTasksDlg(WorkflowDmF.GETUser.UserId);
end;

procedure TmainF.MnuPay_PersonelFormInfo_1F31Click(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TPersonelFormInfo_1F, PersonelFormInfo_1F, mdiMainF, 31)
end;

procedure TmainF.MnuPay_PersonelFormInfo_1FClick(Sender: TObject);
begin
  SelectItem(Sender)
end;

procedure TmainF.MnuPay_FunctionSpecialControlFClick(Sender: TObject);
begin
  SelectItem(Sender);
  CreateMDIForm2(TrptFunctionSpecialControlF, rptFunctionSpecialControlF, Self,
    GetTag(Sender));
  // تست پروزه
end;

end.
