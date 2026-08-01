unit LanMessages;

interface

const
  PerFix = 'LanMessages';

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
  // ms_DetailCodeNotValid: string = 'كد تفصيلي معتبر نيست.';
  ms_TopicCodeWithDetailCode: string = 'حسابهاي معين داراي تفصيلي';
  ms_TopicCode: string = 'كد معين';
  ms_DetailCode: string = 'كد تفصيلي ';
  ms_DetailCodes: string = 'كدهاي تفصيلي ';
  ms_MoeenName: string = 'عنوان حساب '; // 'شرح حساب';   //'نام حساب'
  ms_HesabhayeMoeen: string = 'حسابهاي معين';
  ms_KolCod: string = 'كد کل';
  ms_GroupCode: string = 'كد گروه';
  ms_kol: string = 'شرح کل';
  ms_Group: string = 'عنوان گروه'; // شرح گروه
  // ms_NameHesab: string = 'نام حساب';
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
  ms_Amount: string = ' مبلغ ';
  ms_Negative: string = ' منفی ';
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
  ms_LastDocumentRead
    : string =
    'آخرين سند وارد شده در سيستم ذخيره نشده، آيا مي‌خواهيد اين سند بازخواني شود؟';
  ms_Add: string = 'اضافه';
  ms_Del: string = 'حذف';
  ms_Was: string = 'شد';

procedure initLanMessages;
procedure ReadLanMessages;
function readStr(key, default: string): string;
procedure writeStr(key, default: string);

implementation

uses IniLang, IniFiles;

procedure initLanMessages;
begin
  writeStr('ms_Post', ms_Post);
  writeStr('ms_Mandeh', ms_Remained);
  writeStr('ms_PostError', ms_PostError);
  writeStr('ms_Status0', ms_Status0);
  writeStr('ms_Status1', ms_Status1);
  writeStr('ms_Status2', ms_Status2);
  writeStr('ms_Status3', ms_Status3);
  // writeStr('ms_TopicCodeNotValid', ms_TopicCodeNotValid);
  writeStr('ms_NotDetailInComapany', ms_NotDetailInComapany);
  // writeStr('ms_DetailCodeNotValid', ms_DetailCodeNotValid);
end;

procedure ReadLanMessages;
begin
  if CLini = nil then
    Exit;
  ms_Post := readStr('ms_Post', ms_Post);
  ms_Remained := readStr('ms_Mandeh', ms_Remained);
  ms_PostError := readStr('ms_PostError', ms_PostError);
  ms_Post := readStr('ms_Status0', ms_Status0);
  ms_Post := readStr('ms_Status1', ms_Status1);
  ms_Post := readStr('ms_Status2', ms_Status2);
  ms_Post := readStr('ms_Status3', ms_Status3);
  // ms_Post := readStr('ms_TopicCodeNotValid', ms_TopicCodeNotValid);
  ms_Post := readStr('ms_NotDetailInComapany', ms_NotDetailInComapany);
  // ms_Post := readStr('ms_DetailCodeNotValid', ms_DetailCodeNotValid);
end;

function readStr(key, default: string): string;
begin
  key := PerFix + '.' + key;
  Result := CLini.readString(PerFix, key, default);
end;

procedure writeStr(key, default: string);
var
  ini: TIniFile;
begin
  ini := TIniFile.create(IniLangPath + '\' + iniName);
  key := PerFix + '.' + key;
  ini.writeString(PerFix, key, default);
end;

end.
