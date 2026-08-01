unit LanMessages;

interface

const
  Prefix = 'LanMessages';

var
  ms_Post: string = 'ثبت شد.';
  ms_Remained: string = 'مانده';
  ms_PostError: string = 'اشكال در ثبت';
  ms_Status0: string = 'پيش نويس';
  ms_Status1: string = 'موقت';
  ms_Status2: string = 'قطعي';
  ms_Status3: string = 'دائم';
  ms_NotValid: string = ' معتبر نيست.';
  ms_Valid: string = ' مورد تأييد است.';
  ms_NotDetailInComapany: string = 'تفصیلی برای شرکت تعریف نشده است ';

  ms_TopicCodeWithDetailCode: string = 'حسابهاي حساب داراي تفصيلي';
  ms_TopicCode: string = 'كد حساب';
  ms_DetailCode: string = 'كد تفصيلي ';
  ms_DetailCodes: string = 'كدهاي تفصيلي ';
  ms_MoeenName: string = 'عنوان معین '; // 'شرح حساب';   //'نام حساب'
  ms_HesabhayeMoeen: string = 'حسابهاي حساب';
  ms_KolCod: string = 'كد کل';
  ms_GroupCode: string = 'كد گروه';
  ms_kol: string = 'شرح کل';
  ms_Group: string = 'عنوان گروه'; // شرح گروه

  ms_LinkedDetailCode: string = 'كدهاي تفصيلي مرتبط با ';
  ms_CTopicCodes: string = 'كدهاي تفصیلی 1';
  ms_CTopicCode: string = 'كد تفصیلی 1';
  ms_LinkedCTopicCode: string = 'كدهاي تفصیلی 1 مرتبط با ';
  ms_CTopicCode2s: string = 'كدهاي تفصیلی 3';
  ms_CTopicCode2: string = 'كد تفصیلی 3';
  ms_LinkedCTopicCode2: string = 'كدهاي تفصیلی 3 مرتبط با ';
  ms_CTopicCode3s: string = 'كدهاي تفصیلی 4';
  ms_CTopicCode3: string = 'كد تفصیلی 4';
  ms_LinkedCTopicCode3: string = 'كدهاي تفصیلی 4 مرتبط با ';
  ms_For: string = ' براي ';
  ms_Price: string = ' مبلغ ';
  ms_Amount: string = ' مقدار ';
  ms_Negative: string = ' منفي ';
  ms_EnterAmountDebitedAndCreditedAre
    : string = 'مبلغ بدهكار و بستانكار همزمان وارد شده‌اند.';
  ms_NotEnterAmount: string = 'مبلغ وارد نشده ';
  ms_ThisCodeIsUsedInTheAnalysisOfAccounts
    : string = 'از این کد در آنالیز حساب استفاده شده است .';
  ms_BeforeGettingToTheRoundedNumbersPlease
    : string = 'قبل از دریافت نسبت به رند نمودن اعداد اقدام فرمائید. ';
  ms_SubheadingIsRepeated: string = 'شماره فرعي تكراري است.‏';
  ms_DocumentDoesNotBalance: string = 'سند موازنه نيست.';
  ms_DocDate: string = 'تاريخ سند ';
  ms_TheDocumentHasBeenPermanentlyHistory
    : string = 'سند در اين تاريخ دائم شده است .‏';
  ms_Row: string = 'رديف';
  ms_NumberOfErrors: string = 'تعداد خطاها';
  ms_Search: string = 'جستجوي ';
  ms_code: string = 'كد ';
  ms_Company: string = 'نام شركت';
  ms_AreYouSureYouWantToCancel: string = 'آيا براي انصراف مطمئن هستيد؟';
  ms_SendDocumentBbecauseThereIsNoOtherSoftwareCanEdit
    : string = 'به دلیل ارسال سند از سایر نرم افزارها امکان ویرایش وجود ندارد.';
  ms_PermanentAndDefinitiveDocumentsAreNotEeditable
    : string = 'اسناد دائم و قطعي قابل ويرايش نمي باشند.‏ ';
  ms_Document: string = 'سند ';
  ms_HasNotBeenSaved_TheChangesAreSaved
    : string = ' ذخيره نشده است. تغييرات ذخيره شوند؟‏';
  ms_Description: string = 'شرح ';
  ms_Debit: string = 'بدهكار';
  ms_Credit: string = 'بستانكار';
  ms_Number: string = 'شماره ';
  ms_Help: string = ' كمكي';
  ms_Value: string = 'مقدار كمكي';
  ms_Date: string = 'تاريخ ';
  ms_Budget: string = 'بودجه ';
  ms_Plan: string = 'طرح ';
  ms_Difference: string = ' تفاوت ';
  ms_Of: string = ' از ';
  ms_At: string = ' به ';
  ms_LastDocumentRead
    : string =
    'آخرين سند وارد شده در سيستم ذخيره نشده، آيا مي‌خواهيد اين سند بازخواني شود؟';
  ms_Add: string = 'اضافه';
  ms_Del: string = 'حذف';
  ms_Was: string = 'شد';
  ms_NotAllowDelDocument: string = 'سند قابل حذف كردن نيست.';
  ms_Sure: string = 'مطمئن هستيد؟';
  ms_SureDelDoc: string = 'آيا براي حذف سند شماره %d مطمئن هستید؟';
  ms_ThisDocIsUsedInTheAnalysisOfAccounts
    : string =
    'این %s در آنالیز حساب استفاده شده است آیا مایل به حذف می باشید؟';
  ms_TextInFooterDoc: string = 'متن ذيل سند: ‏';
  ms_BeforePrintConfirmDoc: string = 'قبل از چاپ سند را تائيد كنيد.‏';
  ms_RelationBetweenTopicAndDetail
    : string = 'آيا ارتباط بين تفصيلي و حساب برقرار گردد';
  ms_CTopicCOde__: string = '__كد تفصیلی 1';
  ms_RelationBetweenTopicAndCtopic
    : string = 'آيا ارتباط بين مركزهزينه و حساب برقرار گردد';
  ms_RelationBetweenTopicAndCtopic2
    : string = 'آيا ارتباط بين مركزهزينه2 و حساب برقرار گردد';
  ms_CommunicationErrorCodes: string = 'اشكال در ارتباط كدها';
  ms_EditNature: string = 'ماهیت حساب کدحساب %d تغییر یافت';
  ms_EditedNatureAndNotAllowEntry
    : string =
    'با این ثبت ماهیت حساب کد حساب %d تغییر خواهد کرد و شما مجاز به ثبت نمی باشید.';
  ms_Rial: string = 'ر یال';
  ms_Title: string = ' عنوان';
  ms_Kind: string = ' نوع';
  ms_Status: string = ' وضعیت';
  ms_Second: string = 'فرعی';
  ms_CompanyCode: string = 'کد شرکت';
  ms_MainNumberDoc: string = 'شماره اصلي سند حسابداري';
  ms_EmptyAidField: string = ' %s کمکی وارد نشده است.';
  ms_EnterDesDoc: string = 'شرح نمونه سند را وارد كنيد';
  ms_article: string = 'ثبت';

  // TAccCode2F
  ms_NotValidFeildForUpLevelCode
    : string = ' فيلد وارد شده از نظر  كد سطح بالايي معتبر نمي باشد ';
  ms_CodeLength: string = ' طول كد حساب';
  ms_ImpossibleEdit: string = 'امکان ویرایش وجود ندارد.';
  ms_ExistDownLevelCode: string = ' ، به دليل وجود كد زير سطح';
  ms_ImpossibleDel: string = 'امکان حذف وجود ندارد.';
  ms_ConfirmDelForCode: string = 'آيا براي حذف اين كد حساب مطمئن هستيد؟';
  ms_Name: string = 'نام ';
  ms_Ha: string = 'ها ';
  ms_Category: string = 'طبقه بندی';
  ms_Balance: string = 'ترازنامه';
  ms_Project: string = 'پروژه';
  ms_Control: string = 'کنترل';
  ms_ControlsAudit: string = 'کنترلهای حسابرسی';
  ms_SaveChangesForRelation: string = 'برای ارتباط با %s تغییرات ذخیره شوند ؟';
  ms_CodeUsedInDocNotAllowAddRelation
    : string =
    'از اين كد در سند حسابداري بدون  %s استفاده شده است و شما مجاز به ايجاد ارتباط نيستيد.‏';
  ms_SelectGroup: string = 'انتخاب گروه ';
  ms_ConfirmDel: string = 'آيا براي حذف %s مطمئن هستيد؟';
  ms_Relation: string = 'ارتباط';
  ms_ImpossibleEditCodeUsedInLastYear
    : string =
    'به دلیل استفاده از این کد در سالهای گذشته تنها اطلاعات کمکی قابل ویرایش می باشد.';

procedure initLanMessages;
procedure ReadLanMessages;
function readStr(key, default: string): string;
procedure writeStr(key, default: string);

implementation

uses IniLang, IniFiles;

procedure initLanMessages;
begin
  writeStr('ms_Post', ms_Post);
  writeStr('ms_Remained', ms_Remained);
  writeStr('ms_PostError', ms_PostError);
  writeStr('ms_Status0', ms_Status0);
  writeStr('ms_Status1', ms_Status1);
  writeStr('ms_Status2', ms_Status2);
  writeStr('ms_Status3', ms_Status3);
  writeStr('ms_NotDetailInComapany', ms_NotDetailInComapany);
  writeStr('ms_TopicCodeWithDetailCode', ms_TopicCodeWithDetailCode);
  writeStr('ms_TopicCode', ms_TopicCode);
  writeStr('ms_DetailCode', ms_DetailCode);
  writeStr('ms_DetailCodes', ms_DetailCodes);
  writeStr('ms_MoeenName', ms_MoeenName);
  writeStr('ms_HesabhayeMoeen', ms_HesabhayeMoeen);
  writeStr('ms_KolCod', ms_KolCod);
  writeStr('ms_GroupCode', ms_GroupCode);
  writeStr('ms_kol', ms_kol);
  writeStr('ms_Group', ms_Group);
  writeStr('ms_LinkedDetailCode', ms_LinkedDetailCode);
  writeStr('ms_CTopicCodes', ms_CTopicCodes);
  writeStr('ms_CTopicCode', ms_CTopicCode);
  writeStr('ms_LinkedCTopicCode', ms_LinkedCTopicCode);
  writeStr('ms_CTopicCode2s', ms_CTopicCode2s);
  writeStr('ms_CTopicCode2', ms_CTopicCode2);
  writeStr('ms_LinkedCTopicCode2', ms_LinkedCTopicCode2);
  writeStr('ms_CTopicCode3s', ms_CTopicCode3s);
  writeStr('ms_CTopicCode3', ms_CTopicCode3);
  writeStr('ms_LinkedCTopicCode3', ms_LinkedCTopicCode3);
  writeStr('ms_For', ms_For);
  writeStr('ms_Price', ms_Price);
  writeStr('ms_Amount', ms_Amount);
  writeStr('ms_Negative', ms_Negative);
  writeStr('ms_EnterAmountDebitedAndCreditedAre',
    ms_EnterAmountDebitedAndCreditedAre);
  writeStr('ms_NotEnterAmount', ms_NotEnterAmount);
  writeStr('ms_ThisCodeIsUsedInTheAnalysisOfAccounts',
    ms_ThisCodeIsUsedInTheAnalysisOfAccounts);
  writeStr('ms_BeforeGettingToTheRoundedNumbersPlease',
    ms_BeforeGettingToTheRoundedNumbersPlease);
  writeStr('ms_SubheadingIsRepeated', ms_SubheadingIsRepeated);
  writeStr('ms_DocumentDoesNotBalance', ms_DocumentDoesNotBalance);
  writeStr('ms_DocDate', ms_DocDate);
  writeStr('ms_TheDocumentHasBeenPermanentlyHistory',
    ms_TheDocumentHasBeenPermanentlyHistory);
  writeStr('ms_Row', ms_Row);
  writeStr('ms_NumberOfErrors', ms_NumberOfErrors);
  writeStr('ms_Search', ms_Search);
  writeStr('ms_code', ms_code);
  writeStr('ms_Company', ms_Company);
  writeStr('ms_AreYouSureYouWantToCancel', ms_AreYouSureYouWantToCancel);
  writeStr('ms_SendDocumentBbecauseThereIsNoOtherSoftwareCanEdit',
    ms_SendDocumentBbecauseThereIsNoOtherSoftwareCanEdit);
  writeStr('ms_PermanentAndDefinitiveDocumentsAreNotEeditable',
    ms_PermanentAndDefinitiveDocumentsAreNotEeditable);
  writeStr('ms_Document', ms_Document);
  writeStr('ms_HasNotBeenSaved_TheChangesAreSaved',
    ms_HasNotBeenSaved_TheChangesAreSaved);
  writeStr('ms_Description', ms_Description);
  writeStr('ms_Debit', ms_Debit);
  writeStr('ms_Credit', ms_Credit);
  writeStr('ms_Number', ms_Number);
  writeStr('ms_Help', ms_Help);
  writeStr('ms_Value', ms_Value);
  writeStr('ms_Date', ms_Date);
  writeStr('ms_Budget', ms_Budget);
  writeStr('ms_Plan', ms_Plan);
  writeStr('ms_Difference', ms_Difference);
  writeStr('ms_Of', ms_Of);
  writeStr('ms_At', ms_At);
  writeStr('ms_LastDocumentRead', ms_LastDocumentRead);
  writeStr('ms_Add', ms_Add);
  writeStr('ms_Del', ms_Del);
  writeStr('ms_Was', ms_Was);
  writeStr('ms_NotAllowDelDocument', ms_NotAllowDelDocument);
  writeStr('ms_Sure', ms_Sure);
  writeStr('ms_SureDelDoc', ms_SureDelDoc);
  writeStr('ms_ThisDocIsUsedInTheAnalysisOfAccounts',
    ms_ThisDocIsUsedInTheAnalysisOfAccounts);
  writeStr('ms_TextInFooterDoc', ms_TextInFooterDoc);
  writeStr('ms_BeforePrintConfirmDoc', ms_BeforePrintConfirmDoc);
  writeStr('ms_RelationBetweenTopicAndDetail',
    ms_RelationBetweenTopicAndDetail);
  writeStr('ms_CTopicCOde__', ms_CTopicCOde__);
  writeStr('ms_RelationBetweenTopicAndCtopic',
    ms_RelationBetweenTopicAndCtopic);
  writeStr('ms_RelationBetweenTopicAndCtopic2',
    ms_RelationBetweenTopicAndCtopic2);
  writeStr('ms_CommunicationErrorCodes', ms_CommunicationErrorCodes);
  writeStr('ms_EditNature', ms_EditNature);
  writeStr('ms_EditedNatureAndNotAllowEntry', ms_EditedNatureAndNotAllowEntry);
  writeStr('ms_Rial', ms_Rial);
  writeStr('ms_Title', ms_Title);
  writeStr('ms_Kind', ms_Kind);
  writeStr('ms_Status', ms_Status);
  writeStr('ms_Second', ms_Second);
  writeStr('ms_CompanyCode', ms_CompanyCode);
  writeStr('ms_MainNumberDoc', ms_MainNumberDoc);
  writeStr('ms_EmptyAidField', ms_EmptyAidField);
  writeStr('ms_EnterDesDoc', ms_EnterDesDoc);
  writeStr('ms_article', ms_article);

  writeStr('ms_NotValidFeildForUpLevelCode', ms_NotValidFeildForUpLevelCode);
  writeStr('ms_CodeLength', ms_CodeLength);
  writeStr('ms_ImpossibleEdit', ms_ImpossibleEdit);
  writeStr('ms_ExistDownLevelCode', ms_ExistDownLevelCode);
  writeStr('ms_ImpossibleDel', ms_ImpossibleDel);
  writeStr('ms_ConfirmDelForCode', ms_ConfirmDelForCode);
  writeStr('ms_Name', ms_Name);
  writeStr('ms_Ha', ms_Ha);
  writeStr('ms_Category', ms_Category);
  writeStr('ms_Balance', ms_Balance);
  writeStr('ms_Project', ms_Project);
  writeStr('ms_Control', ms_Control);
  writeStr('ms_ControlsAudit', ms_ControlsAudit);
  writeStr('ms_SaveChangesForRelation', ms_SaveChangesForRelation);
  writeStr('ms_CodeUsedInDocNotAllowAddRelation',
    ms_CodeUsedInDocNotAllowAddRelation);
  writeStr('ms_SelectGroup', ms_SelectGroup);
  writeStr('ms_ConfirmDel', ms_ConfirmDel);
  writeStr('ms_Relation', ms_Relation);
  writeStr('ms_ImpossibleEditCodeUsedInLastYear',
    ms_ImpossibleEditCodeUsedInLastYear);
end;

procedure ReadLanMessages;
begin
  if CLini = nil then
    Exit;
  ms_Post := readStr('ms_Post', ms_Post);
  ms_Remained := readStr('ms_Mandeh', ms_Remained);
  ms_PostError := readStr('ms_PostError', ms_PostError);
  ms_Status0 := readStr('ms_Status0', ms_Status0);
  ms_Status1 := readStr('ms_Status1', ms_Status1);
  ms_Status2 := readStr('ms_Status2', ms_Status2);
  ms_Status3 := readStr('ms_Status3', ms_Status3);
  ms_NotDetailInComapany := readStr('ms_NotDetailInComapany',
    ms_NotDetailInComapany);
  ms_TopicCodeWithDetailCode := readStr('ms_TopicCodeWithDetailCode',
    ms_TopicCodeWithDetailCode);
  ms_TopicCode := readStr('ms_TopicCode', ms_TopicCode);
  ms_DetailCode := readStr('ms_DetailCode', ms_DetailCode);
  ms_DetailCodes := readStr('ms_DetailCodes', ms_DetailCodes);
  ms_MoeenName := readStr('ms_MoeenName', ms_MoeenName);
  ms_HesabhayeMoeen := readStr('ms_HesabhayeMoeen', ms_HesabhayeMoeen);
  ms_KolCod := readStr('ms_KolCod', ms_KolCod);
  ms_GroupCode := readStr('ms_GroupCode', ms_GroupCode);
  ms_kol := readStr('ms_kol', ms_kol);
  ms_Group := readStr('ms_Group', ms_Group);
  ms_LinkedDetailCode := readStr('ms_LinkedDetailCode', ms_LinkedDetailCode);
  ms_CTopicCodes := readStr('ms_CTopicCodes', ms_CTopicCodes);
  ms_CTopicCode := readStr('ms_CTopicCode', ms_CTopicCode);
  ms_LinkedCTopicCode := readStr('ms_LinkedCTopicCode', ms_LinkedCTopicCode);
  ms_CTopicCode2s := readStr('ms_CTopicCode2s', ms_CTopicCode2s);
  ms_CTopicCode2 := readStr('ms_CTopicCode2', ms_CTopicCode2);
  ms_LinkedCTopicCode2 := readStr('ms_LinkedCTopicCode2', ms_LinkedCTopicCode2);
  ms_CTopicCode3s := readStr('ms_CTopicCode3s', ms_CTopicCode3s);
  ms_LinkedCTopicCode3 := readStr('ms_LinkedCTopicCode3', ms_LinkedCTopicCode3);
  ms_For := readStr('ms_For', ms_For);
  ms_Price := readStr('ms_Price', ms_Price);
  ms_Amount := readStr('ms_Amount', ms_Amount);
  ms_Negative := readStr('ms_Negative', ms_Negative);
  ms_EnterAmountDebitedAndCreditedAre :=
    readStr('ms_EnterAmountDebitedAndCreditedAre',
    ms_EnterAmountDebitedAndCreditedAre);
  ms_NotEnterAmount := readStr('ms_NotEnterAmount', ms_NotEnterAmount);
  ms_ThisCodeIsUsedInTheAnalysisOfAccounts :=
    readStr('ms_ThisCodeIsUsedInTheAnalysisOfAccounts',
    ms_ThisCodeIsUsedInTheAnalysisOfAccounts);
  ms_BeforeGettingToTheRoundedNumbersPlease :=
    readStr('ms_BeforeGettingToTheRoundedNumbersPlease',
    ms_BeforeGettingToTheRoundedNumbersPlease);
  ms_SubheadingIsRepeated := readStr('ms_SubheadingIsRepeated',
    ms_SubheadingIsRepeated);
  ms_DocumentDoesNotBalance := readStr('ms_DocumentDoesNotBalance',
    ms_DocumentDoesNotBalance);
  ms_DocDate := readStr('ms_DocDate', ms_DocDate);
  ms_TheDocumentHasBeenPermanentlyHistory :=
    readStr('ms_TheDocumentHasBeenPermanentlyHistory',
    ms_TheDocumentHasBeenPermanentlyHistory);
  ms_Row := readStr('ms_Row', ms_Row);
  ms_NumberOfErrors := readStr('ms_NumberOfErrors', ms_NumberOfErrors);
  ms_Search := readStr('ms_Search', ms_Search);
  ms_code := readStr('ms_code', ms_code);
  ms_Company := readStr('ms_Company', ms_Company);
  ms_AreYouSureYouWantToCancel := readStr('ms_AreYouSureYouWantToCancel',
    ms_AreYouSureYouWantToCancel);
  ms_SendDocumentBbecauseThereIsNoOtherSoftwareCanEdit :=
    readStr('ms_SendDocumentBbecauseThereIsNoOtherSoftwareCanEdit',
    ms_SendDocumentBbecauseThereIsNoOtherSoftwareCanEdit);
  ms_PermanentAndDefinitiveDocumentsAreNotEeditable :=
    readStr('ms_PermanentAndDefinitiveDocumentsAreNotEeditable',
    ms_PermanentAndDefinitiveDocumentsAreNotEeditable);
  ms_Document := readStr('ms_Document', ms_Document);
  ms_HasNotBeenSaved_TheChangesAreSaved :=
    readStr('ms_HasNotBeenSaved_TheChangesAreSaved',
    ms_HasNotBeenSaved_TheChangesAreSaved);
  ms_Description := readStr('ms_Description', ms_Description);
  ms_Debit := readStr('ms_Debit', ms_Debit);
  ms_Credit := readStr('ms_Credit', ms_Credit);
  ms_Number := readStr('ms_Number', ms_Number);
  ms_Help := readStr('ms_Help', ms_Help);
  ms_Value := readStr('ms_Value', ms_Value);
  ms_Date := readStr('ms_Date', ms_Date);
  ms_Budget := readStr('ms_Budget', ms_Budget);
  ms_Plan := readStr('ms_Plan', ms_Plan);
  ms_Difference := readStr('ms_Difference', ms_Difference);
  ms_Of := readStr('ms_Of', ms_Of);
  ms_At := readStr('ms_At', ms_At);
  ms_LastDocumentRead := readStr('ms_LastDocumentRead', ms_LastDocumentRead);
  ms_Add := readStr('ms_Add', ms_Add);
  ms_Del := readStr('ms_Del', ms_Del);
  ms_Was := readStr('ms_Was', ms_Was);
  ms_NotAllowDelDocument := readStr('ms_NotAllowDelDocument',
    ms_NotAllowDelDocument);

  ms_Sure := readStr('ms_Sure', ms_Sure);
  ms_SureDelDoc := readStr('ms_SureDelDoc', ms_SureDelDoc);
  ms_ThisDocIsUsedInTheAnalysisOfAccounts :=
    readStr('ms_ThisDocIsUsedInTheAnalysisOfAccounts',
    ms_ThisDocIsUsedInTheAnalysisOfAccounts);
  ms_TextInFooterDoc := readStr('ms_TextInFooterDoc', ms_TextInFooterDoc);
  ms_BeforePrintConfirmDoc := readStr('ms_BeforePrintConfirmDoc',
    ms_BeforePrintConfirmDoc);
  ms_RelationBetweenTopicAndDetail :=
    readStr('ms_RelationBetweenTopicAndDetail',
    ms_RelationBetweenTopicAndDetail);
  ms_CTopicCOde__ := readStr('ms_CTopicCOde__', ms_CTopicCOde__);
  ms_RelationBetweenTopicAndCtopic :=
    readStr('ms_RelationBetweenTopicAndCtopic',
    ms_RelationBetweenTopicAndCtopic);
  ms_RelationBetweenTopicAndCtopic2 :=
    readStr('ms_RelationBetweenTopicAndCtopic2',
    ms_RelationBetweenTopicAndCtopic2);
  ms_CommunicationErrorCodes := readStr('ms_CommunicationErrorCodes',
    ms_CommunicationErrorCodes);
  ms_EditNature := readStr('ms_EditNature', ms_EditNature);
  ms_EditedNatureAndNotAllowEntry := readStr('ms_EditedNatureAndNotAllowEntry',
    ms_EditedNatureAndNotAllowEntry);
  ms_Rial := readStr('ms_Rial', ms_Rial);
  ms_Title := readStr('ms_Title', ms_Title);
  ms_Kind := readStr('ms_Kind', ms_Kind);
  ms_Status := readStr('ms_Status', ms_Status);
  ms_Second := readStr('ms_Second', ms_Second);
  ms_CompanyCode := readStr('ms_CompanyCode', ms_CompanyCode);
  ms_MainNumberDoc := readStr('ms_MainNumberDoc', ms_MainNumberDoc);
  ms_EmptyAidField := readStr('ms_EmptyAidField', ms_EmptyAidField);
  ms_EnterDesDoc := readStr('ms_EnterDesDoc', ms_EnterDesDoc);
  ms_article := readStr('ms_article', ms_article);

  ms_NotValidFeildForUpLevelCode := readStr('ms_NotValidFeildForUpLevelCode',
    ms_NotValidFeildForUpLevelCode);
  ms_CodeLength := readStr('ms_CodeLength', ms_CodeLength);
  ms_ImpossibleEdit := readStr('ms_ImpossibleEdit', ms_ImpossibleEdit);
  ms_ExistDownLevelCode := readStr('ms_ExistDownLevelCode',
    ms_ExistDownLevelCode);
  ms_ImpossibleDel := readStr('ms_ImpossibleDel', ms_ImpossibleDel);
  ms_ConfirmDelForCode := readStr('ms_ConfirmDelForCode', ms_ConfirmDelForCode);
  ms_Name := readStr('ms_Name', ms_Name);
  ms_Ha := readStr('ms_Ha', ms_Ha);
  ms_Category := readStr('ms_Category', ms_Category);
  ms_Balance := readStr('ms_Balance', ms_Balance);
  ms_Project := readStr('ms_Project', ms_Project);
  ms_Control := readStr('ms_Control', ms_Control);
  ms_ControlsAudit := readStr('ms_ControlsAudit', ms_ControlsAudit);
  ms_SaveChangesForRelation := readStr('ms_SaveChangesForRelation',
    ms_SaveChangesForRelation);
  ms_CodeUsedInDocNotAllowAddRelation :=
    readStr('ms_CodeUsedInDocNotAllowAddRelation',
    ms_CodeUsedInDocNotAllowAddRelation);
  ms_SelectGroup := readStr('ms_SelectGroup', ms_SelectGroup);
  ms_ConfirmDel := readStr('ms_ConfirmDel', ms_ConfirmDel);
  ms_Relation := readStr('ms_Relation', ms_Relation);
  ms_ImpossibleEditCodeUsedInLastYear :=
    readStr('ms_ImpossibleEditCodeUsedInLastYear',
    ms_ImpossibleEditCodeUsedInLastYear);

end;

function readStr(key, default: string): string;
begin
  key := Prefix + '.' + key;
  Result := CLini.readString(Prefix, key, default);
end;

procedure writeStr(key, default: string);
var
  ini: TIniFile;
begin
  ini := TIniFile.create(IniLangPath + '\' + iniName);
  key := Prefix + '.' + key;
  ini.writeString(Prefix, key, default);
end;

end.
