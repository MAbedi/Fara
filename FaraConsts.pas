unit FaraConsts;

interface

uses
  classes, adodb, forms, sysutils, menus, GlobalPro, wsMain, XOptions;

type
  TMainMenuOption = record
    Active: Boolean;
    sys_Menu: TMainMenu;
    SubsysCaption: string;
    SysLockId: Int64;
  end;

  TSysIndex = (Sys0Coffer = 0, Sys1Sell = 1, Sys2Store = 2, Sys3Schedule = 3,
    Sys4Procurement = 4, Sys5ProcurementI = 5, Sys6Contractors = 6,
    Sys7Agriculture = 7, Sys8Machinery = 8, Sys9TimeSheet = 9,
    Sys10StoreProc = 10, Sys11WorkFlow = 11, Sys12MainCoding = 12,
    Sys13Store = 13, Sys14Sell = 14, Sys15Assets = 15, Sys16Laboratory = 16,
    Sys17Acc = 17, Sys18Budget = 18, Sys19Finalcial = 19, Sys20Portion = 20,
    Sys21SpecialReport = 21, Sys22Schedule = 22, Sys23Organization = 23,
    Sys24Salary = 24, Sys25PayRoll = 25, Sys26Government = 26,
    Sys29Maneger = 29);

  TValueControl = (CHkAuxiliary_SD1ToWeight = 1, EditPersonID1Active = 2,
    EditPersonID2Active = 4, EditPersonID3Active = 8, EditPersonID4Active = 16,
    EditPersonID5Active = 32, MainFormIsEditableNote = 64,
    ZeroingAmountWhenEditingCode = 128, chkSyadSystem = 256,
    CHkNotSendItemNote = 512);

  TReciptNumberControl = (CHkServerIDReciptNumber = 1);

  TchangeKind = (CHkEdit, CHkDelete);

  TMyAutoCorrelateCo = (CHkAutoCorrelateCo = 1, CHkAutoCorrelateCoStoreID = 2,
    CHkAutoChangeUserFormula = 4, CHkCommissionPriceInAllAccount = 8,
    CHkCommissionPriceOfTotalPrice = 16,
    CHkCommissionPriceOfTotalPriceOnly = 32, CHkTransFormIDOnStuffCode = 64,
    CHkGetStorIDFormFirstSelect = 128, CHkGetStorIDFormDestinationType = 256,
    CHkFormRegisteredDateday = 512);

  TInsertSeverableOnRecall = (CHkInsertSeverableOnRecall = 1,
    CHkSev2_TopicCode_Bed = 2, CHkSev4_DetailCode_Bed = 4);

  TConfigSettings = (CHkCsServerID4SellsEmporium = 1, CHkCsSpecialCode = 2,
    CHkCs_Ctrl_U_Ctrl_Y = 4, CHkCsFillParentReciptID = 8,
    CHkCsUnitSellPriceCurrency = 16, chkTruckNumberFilterInrRptOper = 32,
    CHkCsUnitCo = 64, CHkADDDateToFilter = 128, CHkAddpopViewFile2Grid = 256);

  TMakeDocumentPost = (CHkAidAmountSt = 1, CHkAidDocDateSt = 2, CHkAidDocNo = 4,
    CHkAidDocNo2AidDocNo = 8, CHkAidDocNoFormID = 16, CHkAidAll2Aid = 32,
    CHkTruckNumberInToReferenceNo = 64, CHkAidDocDateItem = 128,
    CHkAidDocNoItem = 256, CHkBudgetTopicID = 512,
    CHkAidDocNo2AidDocNoCof = 1024, CHkAidDocNoItemCof = 2048,
    CHkAidAmountCh = 4096, CHkAidAmountCo = 8192, CHkAidDocDateCh = 16384,
    CHkAidDocDateCo = 32768, chkWeightToAidAmount = 65536);

  TAllControls = (CHkUnicMobile = 1, CHkUnicNationalID = 2,
    CHkUnicNationalIDPost = 4, CHkUnicRegisterNumber = 8,
    CHkUnicRegisterNumberPost = 16, CHkNotUnicExternalId = 32);

  TMyDeficitValues = (CHkDeficitValue = 1, CHkDeficitValue2 = 2,
    CHkDeficitValue3 = 4, CHkDeficitValue3C = 8, CHkDeficitValue3Add = 16,
    CHkDeficitValue1OfDiscount1 = 32, CHkDeficitValueCo2FreeDeficitValue1 = 64,
    CHkDeficitValue4 = 128);

  { نمایش فراخوانی به تفکیک فرم(Master/Detail)
    فرا خوانی با توضیحات
    فرا خوانی با بهای کل
    فراخوانی مالیات از فرم قبلی انجام شود
    فراخوانی اطلاعات از فرم  Master
    فرمهای فراخوانی شده امکان کنترل موجودی داشته باشند
    موجودی منفی نیز دز فراخوانی نمایش شود
    وزن انتقال داد نشود(مقدار اعلامیه)
    زمان فراخوانی یک به یک شماره فرم نیز انتقال یابد
    (5_فراخوانی ویژه عمومی)شرط خاص
    پر شدن مشتری  Detail در مشتری 2 Master
    فراخوانی از آخرین گردش فقط امکان پذیر باشد.
    فراخوانی یک به یک بدون در نظر گرفتن ParentReciptID
    بعد از ثبت فرم مرتبط فرم اولیه فراخوانی یک به یک رزرو و بعد از حذف قطعی شود.
    زمان فراخوانی کرایه حمل در هیچ صورتی انتقال داده نــشود.
    مطابقت فرم فراخوانی با شماره راهنما از Excel انجام شود
    در فراخوانی مانده صفر و منفی هم نمایش شود
    نمایش فراخوانی شده از/با در لیست
    ویرایش مشتری 1 بعد از فراخوانی امکان پذیر نباشد
    در فراخوانی یک به یک امکان انتخاب آیتم ها وجود نداشته باشد


    تاریخ جانبی و مدت از فرم مستر فرم اصلی فراخوانی شود }
  TMyRecallTypeOption = (CHk00Master = 1, chkNote = 2, chkTotalIn_OutPrice = 4,
    CHkInsertTax = 8, CHkInsertMasterInfo = 16, CHkIsParentCheck = 32,
    CHKNegativeInventory = 64, CHKNoWeight = 128,
    CHkInsertMastrReciptNumber = 256, CHkCase = 512,
    CHkInsertPersonID_D_ToPersonID1 = 1024, CHkLastRciptDate11 = 2048,
    CHkNotUsingParentReciptID = 4096, CHkPostChangeState = 8192,
    chkRecalPortage = 16384, chkExcelComparisonRecall = 32768,
    ShowNegativeOrZero17 = 65536, chkParentForm = 131072,
    chk_RTO_ChangePersonID1 = 262144, CHkNotPossibleSelectItems = 524288,
    CHkDeleteItems = 1048576, CHKEdit2LessAmount = 2097152,
    ChkUnitSellPriceFromManifesto = 4194304,
    ChkTransferAmountCannotBeChanged = 8388608, ChkSeparateTyping = 16777216,
    chk_RTO_ChangeAcc_CTopicCode3 = 33554432, CHKShowEntityInFilter = 67108864,
    chkDefaultDateFillIn = 134217728, chkEWEnteredUserHimself = 268435456,
    chkCheckDuplicateStuffCode = 536870912
    { 12- فراخواني سفارشات-كنترل موجودي کد کالای تکراری بپذیرد }
    , chk11 = 1073741824, xxxxoverflow = 2147483647);

  TMyUsePerson1OnRecall = (CHkPersonID1Filter = 1, CHkPersonID2Filter = 2,
    CHkPersonID3Filter = 4, CHkPersonID4Filter = 8, CHkNotEditValueTfUsedP = 16,
    CHkNotEditValueTfUsedC = 32, CHkPersonID5Filter = 64);

  TMyEntityOption = (CHkEoIndayCheckEntity = 1, CHkEoBuyPrice = 2,
    CHkCheckEntityDetailCaption = 4, CHkInsetCurentEntity = 8,
    CHkNotCalcEntityOnChangeSttuf = 16, CHkInventoryControlDuring = 32);

  TMyCorrelateOption = (CHkChangeAidReciptDate = 1, CHkCorrelateServerID = 2,
    CHkPostWithNewReciptsCorrelate = 4, CHkPostCorolateOnService = 8,
    CHkPostRecalOnService = 16, CHkBeforReciptState2CHKCorrelate = 32,
    CHKPersonID2TozinToRecipts = 64, CHKReciptDateToAidDate = 128,
    CHKInsertTransFormID = 256, CHkManifestoItems = 512,
    CHkRelatedPostWhenCoefficientsPosted = 1024,
    { قبل از ثبت فرم مرتبط کنترل موجودی انجام شود در صورت منفی شدن فرم ثبت نشود }
    CHkInventoryControl = 2048,
    { ثبت فرم مرتبط با توجه به فرم اعلامیه قیمت انجام شود با توجه به تاریخ کمکی فرم مبدا }
    CHkManifestoItemsAidReciptDate =
    4096 { این فرم که فرم فرزند در فرم مرتبط هست قابل ویرایش نباشد } ,
    CHkEditCorrelateReciptType = 8192,
    { مقدارهای بزرگتر از صفر انتقال داده شود } CHKEntityNotZero = 16384);

  TMyOtherSettings = (CHkPrintCheck = 1, CHkBankInfo = 2);
  TMyOtherSettingsR = (CHkOnlyFieldsEdited = 1, CHkMaterialUsageCo = 2);
  TMyShowSettings = (chkAidNumberFilterInlist = 1, chkAidDateFilterInlist = 2);
  TMySpecialSettings = (chkShowMachineName = 1, chkShowMachineNo = 2,
    chkShowMachineInfo = 4, chkShowTruckNumber = 8,
    chkDuplicateMachineInfo = 16);

  TMyFormRegistrationControls = (CHkRepelInsertForm = 1);

  TMyCopyAccOnRecall = (CHkCopyAccDetails = 1, CHkCopyAccMaster = 2,
    CHkCopyAcc1Master2Details = 4, ChkRecallSyadSystem = 8);

  TRecuestActive = (CHkAllRecuestActive = 1, CHkDateRecuestActive = 2,
    chkbsrn = 4, chkSellsEmporiumRA = 8, chkSellsMethodRA = 16,
    // CHkEditTaxCancellation = 32,
    CHKManifestoSellsEmporiumOffFilter = 64, chkCheckUnsaved = 128,
    CHKMachineEntity = 256);


  // اطلاعات مشتریان در زمان ثبت در معرفی مشتریان اجباری باشد.
  // کد ملی
  // شماره همراه
  // تلفن
  // شماره اقتصادی
  // شماره ثبت
  // کد پستی
  // آدرس

  TMyRequiredCustomers = (RcChkALL = 1, RcChkNationalID = 2, RcChkMobile = 4,
    RcChkTel = 8, RcChkEconomicNumber = 16, RcChkRegisterNumber = 32,
    RcChkPostalCode = 64, RcChkAddress = 128, RcManageName = 256, RcFax = 512,
    RcTel2 = 1024, RcHCKharidarTypeCode = 2048, RcSellsMethod = 4096,
    RcSellsEmporium = 8192, RcOstan = 16384);

  TMyShowNotEntityOnSearch = (CHkDelInSearchNotEntity = 1,
    CHkDelInSearchSelected = 2, CHkEditDelete = 4, CHkPrintTax = 8,
    CHkControlEntity = 16, CHkCorrelateReciptDateNow = 32,
    CHkRequiredCustomers = 64, CHkBarCodeOnWeight = 128,
    CHkMinWeeklyShoppingAmount = 256, CHkIRow = 512,
    CHkRciptDateToItemDate = 1024, CHkRciptDateToMiladi = 2048,
    CHkMasterTozinActive = 4096, CHkBarCodePrint = 8192, CHkAidCopy = 16384,
    CHKTozinID = 32768, CHKSellsDefaultState = 65536, CHKRegPrice = 131072,
    CHKCreditBalance = 262144, CHkCorrelatepreReciptItemID = 524288,
    CHKOptimumPoint = 1048576, CHKAddToCustomer = 2097152,
    CHKFormula_SellPrice = 4194304, CHKCalcCostStorage = 8388608,
    CHKNumberOfBags = 16777216, CHKStores2Required = 33554432,
    CHKInfoWeight = 67108864, chkPrintOnSellsEmporium = 134217728,
    chkDefaultUseUnit = 268435456, chkEditTime = 536870912,
    chkRIDateMS_RIDateME = 1073741824, xxxxxxxoverflow = 2147483647);

  TTypeSettings = (chkEditCarton = 1, chkStuffpublicPercentI = 2,
    CHKInfoWeight2 = 4, CHkAidNumberNotCopy = 8, ChkArzType2 = 16,
    ChkTonnage = 32, chkTariffsID = 64, chkMachineRequired = 128,
    ChkOkInSite = 256, ChkCountDetails = 512, ChkConfigDate = 1024,
    chkTozinDate = 2048, CHkFillingCustomerWeight = 4096,
    CHkChangePersonIDInRecipts = 8192, CHkAccOnReciptsDeficits = 16384,
    chk1TruckNumberOnReciptState2 = 32768, CHKAfterCopySetState1 = 65536,
    CHKAfterCopySetState5 = 131072, CHKBeforCopySetCorrelateRecipt = 262144,
    chkTruckNumberFilterInlist = 524288, CHKkReciptState4And5Active = 1048576,
    CHKSetCustomer2ExportType = 2097152, CHKDidNotEditValidDraftForms = 4194304,
    CHKUpFormerFromTruckNumber = 8388608, CHkFillingAidNumberAmount1 = 16777216,
    CHKShowAccCode = 33554432, CHKwebNipc = 67108864,
    chkReciptItemsDetails4Print = 134217728,
    chkSetDefaultSellsMethodEmporium = 268435456,
    chkTozinUseAbleWeight = 536870912, chkTTMS = 1073741824,
    xxxxxoverflow = 2147483647);

  TMyActionKind = (aEdit, aDeleteOrNotMainFun);
  TMyAccessKind = (akShow = 1, akInsert = 2, akedit = 4, akDelete = 8,
    akDesignPrint = 16, akPrint = 32, akChangeState = 64, akSendTo = 128,
    aksaveAs = 256, akRightClick = 512, akRecall = 1024, akGrid2Prn = 2048,
    akCorrelateRecipt = 4096, akCorrelateConversionCo = 8192,
    akShowEntitySerach = 16384, akEditUnitSellPrice = 32768

    , akEditEntity = 65536, akEditPrice = 131072, akEditAccCode = 262144,
    akEditTax = 524288, akManualInsert = 1048576, akItemDelette = 2097152

    , akDocDate = 4194304, akDocNum = 8388608, akSelfDocRedaction = 16777216,
    akSelfDocDelete = 33554432, akSelfDocShow = 67108864

    , akArchiveDel = 134217728, akSendTax = 268435456,
    akNoEditingMaster = 536870912, ak2 = 1073741824, xxxxxxoverflow = 2147483647

    );

  TAccessKind = record
    name: string;
    cation: string;
    kind: TMyAccessKind;
  end;

  TCalculateOutPutFields = record
    name: string;
    Value: string;
    Powers: Int64;
  end;

  TMachinType = (mt0 = 0, mtGhee1 = 1, mtGrease2 = 2, mtElectric3 = 3,
    mtAccessories4 = 4, mtElectric5 = 5);

  TAccessList = array [1 .. 30] of TAccessKind;
  TACalcFieldsList = array [1 .. 10] of TCalculateOutPutFields;

  // TImageTypeFileExt = record
  // ImageType: Int8;
  // FileExt: string;
  // end;
  //
  // TImageTypeFileExts = array [1 .. 3] of TImageTypeFileExt;

var
  SubsysMenu: array [0 .. 29] of TMainMenuOption;

const
  APPID = 'Fara';
  SYSID = 40;
  SYSCAPTION = 'مدیریت کسب و کار - فرا رایانه';
  ISDEMO = False;
  DEMO_RecordCount = 50;
  DEMO_FINISH_DATE = '9999/99/99';
  opt_BACKUPREPLACEDBANKS = False;
  VeijeCode = '21195';
  EXPIREDATE = '9999/99/99';

  // TIneffectiveInputChk = (
  CHkIneffectiveInputChk = 1;
  CHkSellsWithCost = 2;
  // );


  // Corporation: string='شركت طرح و پردازش فرا رایانه';
  // aImageTypeFileExts: TImageTypeFileExts = ((ImageType: 0; FileExt: '.jpg'),
  // (ImageType: 1; FileExt: '.png'), (ImageType: 2; FileExt: '.bmp'));

  ACalcFieldsListprvCode: TACalcFieldsList = ((Name: 'StuffCode'; Value: '0';
    Powers: 1), (Name: 'StuffSize'; Value: '0'; Powers: 2),
    (Name: 'StuffDiameter'; Value: '0'; Powers: 4), (Name: 'StuffAlloy';
    Value: '0'; Powers: 8), (Name: 'ControlCode'; Value: '0'; Powers: 16),
    (Name: 'StuffGrade'; Value: '0'; Powers: 32), (Name: 'ProductCode';
    Value: '0'; Powers: 64), (Name: 'ProductModel'; Value: '0'; Powers: 128),
    (Name: 'ItemDate'; Value: '0'; Powers: 256), (Name: 'PersonID1D';
    Value: '0'; Powers: 512));

  AccessList: TAccessList = ((name: 'Show'; cation: 'نمایش'; kind: akShow),
    (name: 'Insert'; cation: 'اضافه'; kind: akInsert), (name: 'edit';
    cation: 'ویرایش'; kind: akedit), (name: 'Delete'; cation: 'حذف';
    kind: akDelete), (name: 'DesignPrint'; cation: 'طراحی چاپ';
    kind: akDesignPrint), (name: 'Print'; cation: 'چاپ'; kind: akPrint),
    (name: 'ChangeState'; cation: 'تغییر وضعیت'; kind: akChangeState),
    (name: 'SendTo'; cation: 'ارسال به'; kind: akSendTo), (name: 'saveAs';
    cation: 'Save AS'; kind: aksaveAs), (name: 'RightClick';
    cation: 'کلیک راست'; kind: akRightClick), (name: 'Recall';
    cation: 'فراخوانی'; kind: akRecall), (name: 'Grid2Prn'; cation: 'چاپ ویژه';
    kind: akGrid2Prn), (name: 'CorrelateRecipt'; cation: 'فرم مرتبط';
    kind: akCorrelateRecipt), (name: 'CorrelateConversionCo';
    cation: 'فرم ضرائب'; kind: akCorrelateConversionCo),
    (name: 'ShowEntitySerach'; cation: 'نمایش موجودی در جستجو';
    kind: akShowEntitySerach), (name: 'EditUnitSellPrice'; cation: 'ویرایش فی';
    kind: akEditUnitSellPrice), (name: 'EditEntity'; cation: 'ویرایش مقدار';
    kind: akEditEntity), (name: 'EditPrice'; cation: 'ویرایش ریال';
    kind: akEditPrice), (name: 'EditAccCode'; cation: 'ویرایش کدحسابداری';
    kind: akEditAccCode), (name: 'EditTax'; cation: 'ویرایش مالیات';
    kind: akEditTax), (name: 'ManualInsert'; cation: 'ثبت دستی';
    kind: akManualInsert), (name: 'ItemDelette'; cation: 'حذف آیتم';
    kind: akItemDelette)

    , (name: 'DocDate'; cation: 'ویرایش تاریخ سند'; kind: akDocDate),
    (name: 'DocNum'; cation: 'ویرایش شماره سند'; kind: akDocNum),
    (name: 'SelfDocRedaction'; cation: 'فقط ویرایش اسناد ثبت شده توسط کاربر';
    kind: akSelfDocRedaction), (name: 'SelfDocDelete';
    cation: 'فقط  حذف  اسناد ثبت شده توسط کاربر'; kind: akSelfDocDelete),
    (name: 'SelfDocShow'; cation: 'عدم کنترل نمایش اسنادثبت شده توسط کاربر';
    kind: akSelfDocShow), (name: 'ArchiveDel'; cation: 'عدم حذف بایگانی';
    kind: akArchiveDel), (name: 'SendTax'; cation: 'عدم ارسال مودیان';
    kind: akSendTax), (name: 'NoEditingMaster'; cation: 'عدم ویرایش مستر فرم';
    kind: akNoEditingMaster)

    );

  CustGroupsNames: array [0 .. 25] of String = ('مشتری', 'حسابهای بانکی',
    'صندوقدار',
    // //////////////////////////////////////////  0        1        2
    'هزینه ها', 'فروشندگان', 'واحدهای سازمانی', 'سرفصل های خاص', 'تسهیلات',
    // 3          4            5                  6               7
    'ویزیتور', 'راننده', 'پکینگ /فروشندگان خارجی', 'پرسنل', 'كارفرمایان',
    // 8          9          10                       11       12
    'پیمانكاران', 'مشاوران', 'قراردادها', 'كارگاهها', 'کارپرداز',
    // 13           14          15           16          17
    'فرآیند تولید', 'گروه های شغلی', 'پرونده ها', 'سفارشات خارجی', 'محل مصرف',
    // 18                 19                   20            21           22
    'پروژه ها', 'جمداراموال/استفاده کننده', 'بانک‌ها و مؤسسه‌های مالی');
  // 23                24                        25

  StuffGroupsNames: array [0 .. 9] of String = ('كلی', 'مواد اولیه',
    /// ///////////////////////////////////////////  0          1
    'قطعات و لوازم یدكی', 'محصولات در جریان ساخت', 'خدمات', 'فهرست بها',
    // 2                      3                        4          5
    'عملیات', 'عناوین تعمیر و نگهداری', 'سوخت', 'دارائیهای ثابت');
  // 6                 7                  8          9

  FunctionInfoType: array [0 .. 10] of String = ('عمومی', 'عمومی(تاریخ)‏',
    'واحد سازمانی', 'ماشین آلات', 'پیمانكاران', 'پرسنل', 'محصول',
    'واحدهای اجرائی', 'واحدهای فنی', 'واحد های ستادی', 'خط تولید');

  ContractsStatuss: array [0 .. 5] of String = ('در خواست قرارداد',
    'انعقاد قرارداد', 'در دست اجراء', 'خاتمه یافته', 'تحویل شده', 'راكد');

  ConstTypeOfSale: array [0 .. 8] of String = (' بهای فروش 1', ' بهای فروش 2',
    ' بهای فروش 3', ' بهای فروش 4', ' انتخاب‏درفاكتور', ' توافقات نرخ خاص',
    ' بهای فروش 5', ' بهای فروش 6', ' بهای فروش 7');

  StoreKind: array [0 .. 11] of String = ('ندارد', 'محصول', 'مواد اولیه',
    'كالای در جریان ساخت', 'كالای امانی', 'قطعات و لوازم یدكی', 'اموال', 'سوخت',
    'ضایعات', 'سایر انبارها', 'انبارک', 'سیلو');

  Grade: array [0 .. 3] of String = ('A', 'B', 'C', 'D');

  SQLWorkShopVahede =
    'SELECT Customers.CustID,Customers.CustName FROM Customers ' +
    'INNER JOIN CustomersGroup ON Customers.CustomerGrpID ' +
    '= CustomersGroup.CustomerGrpID WHERE (CustomersGroup.GroupType IN(5,16)) ';

  SQLPerson = 'SELECT Customers.CustID,Customers.CustName FROM Customers ' +
    'INNER JOIN CustomersGroup ON Customers.CustomerGrpID ' +
    '= CustomersGroup.CustomerGrpID WHERE (CustomersGroup.GroupType IN(11,13,14,19))';

  SQLCase15 = 'SELECT Customers.CustID,Customers.CustName FROM Customers ' +
    'INNER JOIN CustomersGroup ON Customers.CustomerGrpID ' +
    '= CustomersGroup.CustomerGrpID WHERE (CustomersGroup.GroupType IN(15))';

  SQLProductionprocess18 =
    'SELECT Customers.CustID,Customers.CustName FROM Customers ' +
    'INNER JOIN CustomersGroup ON Customers.CustomerGrpID ' +
    '= CustomersGroup.CustomerGrpID WHERE (CustomersGroup.GroupType IN(18))';

  SQLMahsol3 = 'SELECT StuffCoding.c_StuffCode, StuffCoding.c_StuffName ' +
    'FROM StuffCoding INNER JOIN StuffGroups ON StuffCoding.GroupID ' +
    '= StuffGroups.GroupID WHERE (StuffGroups.GroupType IN (3))';

  SQLMahsol3Min =
    'SELECT MIN(StuffCoding.c_StuffCode),MAx(StuffCoding.c_StuffCode)' +
    'FROM StuffCoding INNER JOIN StuffGroups ON StuffCoding.GroupID ' +
    '= StuffGroups.GroupID WHERE (StuffGroups.GroupType IN (3))';

  SQLMachine9 = 'SELECT StuffCoding.c_StuffCode, StuffCoding.c_StuffName ' +
    'FROM StuffCoding INNER JOIN StuffGroups ON StuffCoding.GroupID ' +
    '= StuffGroups.GroupID WHERE (StuffGroups.GroupType IN (9))';

  SQLAmaliyat4_6_7 = 'SELECT StuffCoding.c_StuffCode, StuffCoding.c_StuffName '
    + 'FROM StuffCoding INNER JOIN StuffGroups ON StuffCoding.GroupID ' +
    '= StuffGroups.GroupID WHERE (StuffGroups.GroupType IN (4,6,7))';

  SQLAdavat9 = 'SELECT StuffCoding.c_StuffCode, StuffCoding.c_StuffName ' +
    'FROM StuffCoding INNER JOIN StuffGroups ON StuffCoding.GroupID ' +
    '= StuffGroups.GroupID WHERE (StuffGroups.GroupType IN (9))';

  SqlMaxRelatedID = ' SELECT TOP 1 RelatedID FROM   ( ' +
    ' SELECT MAX(RelatedID) AS RelatedID FROM Forms     UNION ALL ' +
    ' SELECT MAX(RelatedID) AS RelatedID FROM Recipts   UNION ALL ' +
    ' SELECT MAX(RelatedID) AS RelatedID FROM FormItems UNION ALL ' +
    ' SELECT MAX(RelatedID) AS RelatedID FROM Related) AS QryMax ORDER BY RelatedID DESC ';

  TCountingCalckind: array [0 .. 2] of String =
    ('سه بار شمارش بدون توجه به موجودی کاردکس',
    'مقایسه شمارش اول با موحودی واستفاده از شمارش دوم برای شمارش نهایی',
    'مقایسه شمارش اول و دوم با موجودی و شمارش سوم – شمارش نهایی است');

  TValuationType: array [0 .. 9] of String = ('0-میانگین', '1-Lifo', '2-Fifo',
    '3-شناسایی ویژه', '4-میانگین - کالا و مدل', '5-میانگین - کالا و مدل 1 و2',
    '6-میانگین  تاریخ و ساعت', '7-ندارد', '8-شناسایی ویژه تجزیه وزن',
    '9-میانگین همه انبارها');

var
  theDM: TDataModule;
  theMainConnection: TADOConnection;
  theAccConnection: TADOConnection;
  theFaraSystems: TADOConnection;
  __replaceExe: Boolean;
  User: TUser;
  theWorkflowStudio: TWorkflowStudio;
  theWorkflowConnection: TADOConnection;
  Xopt: TXOptionclass;
  // LastMenuId: Byte;   ;;

procedure ExtractImportantObjects;
procedure SetSubsysMenu;
procedure GetActionAccess(ActionName: string; ActionKey: Integer);
function GetUserStamp: string;

implementation

uses DM, main;

function GetUserStamp: string;
begin
  Result := User.name + ':' + FormatDateTime('yymmddhhnnss', Now);;
end;

procedure SetSubsysMenu;
var
  I: Integer;
begin
  for I := 0 to High(SubsysMenu) do
    SubsysMenu[I].sys_Menu := mainF.Mnu24Maneger;

  SubsysMenu[00].sys_Menu := mainF.Mnu0Coffer;
  SubsysMenu[00].SubsysCaption := 'سیستم خزانه داری';
  SubsysMenu[00].SysLockId := 1;

  SubsysMenu[01].sys_Menu := mainF.Mnu1Sell;
  SubsysMenu[01].SubsysCaption := 'سیستم فروش';
  SubsysMenu[01].SysLockId := 2;

  SubsysMenu[02].sys_Menu := mainF.Mnu2Store;
  SubsysMenu[02].SubsysCaption := 'سیستم انبار مقداری-ریالی';
  SubsysMenu[02].SysLockId := 3;

  SubsysMenu[03].sys_Menu := mainF.Mnu3Schedule;
  SubsysMenu[03].SubsysCaption := 'برنامه ریزی وكنترل تولید';
  SubsysMenu[03].SysLockId := 4;

  SubsysMenu[04].sys_Menu := mainF.Mnu4Procurement;
  SubsysMenu[04].SubsysCaption := 'تداركات /بازرگانی خارجی';
  SubsysMenu[04].SysLockId := 5;

  SubsysMenu[05].sys_Menu := mainF.Mnu5ProcurementI;
  SubsysMenu[05].SubsysCaption := 'تداركات /بازرگانی داخلی';
  SubsysMenu[05].SysLockId := 6;

  SubsysMenu[06].sys_Menu := mainF.Mnu6Contractors;
  SubsysMenu[06].SubsysCaption := 'امور قراردادها و پیمانكاران';
  SubsysMenu[06].SysLockId := 7;

  SubsysMenu[07].sys_Menu := mainF.Mnu7Agriculture;
  SubsysMenu[07].SubsysCaption := 'امور كشاورزی';
  SubsysMenu[07].SysLockId := 8;

  SubsysMenu[08].sys_Menu := mainF.Mnu8Machinery;
  SubsysMenu[08].SubsysCaption := 'تجهیزات و تعمیرات ماشین آلات';
  SubsysMenu[08].SysLockId := 9;

  SubsysMenu[09].sys_Menu := mainF.Mnu9TimeSheet;
  SubsysMenu[09].SubsysCaption := 'كاركرد Time Sheet';
  SubsysMenu[09].SysLockId := 10;

  SubsysMenu[10].sys_Menu := mainF.Mnu10StoreProc;
  SubsysMenu[10].SubsysCaption := 'انبار محصول و بهای تمام شده';
  SubsysMenu[10].SysLockId := 11;

  SubsysMenu[11].sys_Menu := mainF.Mnu11WorkFlow;
  SubsysMenu[11].SubsysCaption := 'گردش فرمها و گزارشات';
  SubsysMenu[11].SysLockId := 12;

  SubsysMenu[12].sys_Menu := mainF.Mnu12MainCoding;
  SubsysMenu[12].SubsysCaption := 'كدینگ پكپارچه';
  SubsysMenu[12].SysLockId := 13;

  SubsysMenu[13].sys_Menu := mainF.Mnu13Store;
  SubsysMenu[13].SubsysCaption := 'انبار مقداری';
  SubsysMenu[13].SysLockId := 14;

  SubsysMenu[14].sys_Menu := mainF.Mnu14Sell;
  SubsysMenu[14].SubsysCaption := 'بازاریابی';
  SubsysMenu[14].SysLockId := 15;

  SubsysMenu[15].sys_Menu := mainF.mnu15Assets;
  SubsysMenu[15].SubsysCaption := 'دارایی ثابت';
  SubsysMenu[15].SysLockId := 35;

  SubsysMenu[16].sys_Menu := mainF.Mnu16Laboratory;
  SubsysMenu[16].SubsysCaption := 'آزمایشگاه';
  SubsysMenu[16].SysLockId := 16;

  SubsysMenu[17].sys_Menu := mainF.mnu17Acc;
  SubsysMenu[17].SubsysCaption := 'حسابداری';
  SubsysMenu[17].SysLockId := 25;

  SubsysMenu[18].sys_Menu := mainF.mnu18Budget;
  SubsysMenu[18].SubsysCaption := 'بودجه و اعتبارات';
  SubsysMenu[18].SysLockId := 26;

  SubsysMenu[19].sys_Menu := mainF.mnu19Finalcial;
  SubsysMenu[19].SubsysCaption := 'حسابرس و كنترلها';
  SubsysMenu[19].SysLockId := 28;

  SubsysMenu[20].sys_Menu := mainF.mnu20Portion;
  SubsysMenu[20].SubsysCaption := 'تسهیم هزینه';
  SubsysMenu[20].SysLockId := 29;

  SubsysMenu[21].sys_Menu := mainF.mnu21SpecialReport;
  SubsysMenu[21].SubsysCaption := 'گزارشات و امکانات خاص حسابداری';
  SubsysMenu[21].SysLockId := 30;

  SubsysMenu[22].sys_Menu := mainF.MainMenu0Schedule;
  SubsysMenu[22].SubsysCaption := 'برنامه ریزی و آموزش';
  SubsysMenu[22].SysLockId := 19;

  SubsysMenu[23].sys_Menu := mainF.MainMenu1Organization;
  SubsysMenu[23].SubsysCaption := 'تشكیلات و طبقه بندی مشاغل';
  SubsysMenu[23].SysLockId := 20;

  SubsysMenu[24].sys_Menu := mainF.MainMenu2Salary;
  SubsysMenu[24].SubsysCaption := 'کارگزینی و پرسنلی';
  SubsysMenu[24].SysLockId := 21;

  SubsysMenu[25].sys_Menu := mainF.MainMenu3PayRoll;
  SubsysMenu[25].SubsysCaption := 'حقوق دستمزد';
  SubsysMenu[25].SysLockId := 22;

  SubsysMenu[26].sys_Menu := mainF.Mnu26Government;
  SubsysMenu[26].SubsysCaption := 'گزارشات نظارتی دستگاه های دولتی';
  SubsysMenu[26].SysLockId := 16;

  SubsysMenu[29].sys_Menu := mainF.Mnu24Maneger;
  SubsysMenu[29].SubsysCaption := 'مدیر سیستم';
  SubsysMenu[29].SysLockId := 16;
  SubsysMenu[29].Active := True;

end;

procedure ExtractImportantObjects;
var
  I: Integer;
begin
  if Screen.DataModuleCount = 0 then
    raise exception.Create('No Data module defined in your project!');

  theMainConnection := DMf.adcBSell;
  theAccConnection := DMf.adcAccounting;
  theFaraSystems := DMf.adcFaraSystem;
  // LastMenuId:=255;
  theWorkflowConnection := DMf.adcBSell;

  theDM := DMf;
  if sametext(theDM.name, 'GeneralDMF') then
    theDM := Screen.DataModules[1];
  for I := 0 to theDM.ComponentCount - 1 do
  begin
    if (theDM.Components[I] is TADOConnection) and (theDM.Components[I].Tag = 0)
    then
      theMainConnection := TADOConnection(theDM.Components[I]);
  end; // for
  // User.appVersion := GetVersion;
  // AppDir := IncludeTrailingBackslash(ExtractFilePath(ParamStr(0)))
end;

procedure GetActionAccess(ActionName: string; ActionKey: Integer);
var
  I, AccessCode: Integer;
begin
  AccessCode := 0;
  ActionName := LowerCase(ActionName);
  for I := 1 to Length(AccessList) do
    if Pos(LowerCase(AccessList[I].name), ActionName) <> 0 then
    begin
      AccessCode := Integer(AccessList[I].kind);
      Break;
    end;
  if AccessCode <> 0 then
    GlobalPro.CheckAccess(ActionKey, AccessCode);

end;

end.
