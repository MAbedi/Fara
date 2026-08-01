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
  ms_NotDetailInComapany: string = 'تفصیلی برای شرکت تعریف نشده است ';
//  ms_DetailCodeNotValid: string = 'كد تفصيلي معتبر نيست.';
  ms_TopicCodeWithDetailCode: string = 'حسابهاي حساب داراي تفصيلي';
  ms_TopicCode: string = 'كد حساب';
  ms_DetailCode: string = 'كد تفصيلي ';
  ms_DetailCodes: string = 'كدهاي تفصيلي ';
  ms_MoeenName: string = 'عنوان حساب '; // 'شرح حساب';   //'نام حساب'
  ms_HesabhayeMoeen: string = 'حسابهاي حساب';
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
  ms_Amount: string =   ' مبلغ ';
  ms_Negative: string =   ' منفي ';
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
//  writeStr('ms_TopicCodeNotValid', ms_TopicCodeNotValid);
  writeStr('ms_NotDetailInComapany', ms_NotDetailInComapany);
//  writeStr('ms_DetailCodeNotValid', ms_DetailCodeNotValid);
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
//  ms_Post := readStr('ms_TopicCodeNotValid', ms_TopicCodeNotValid);
  ms_Post := readStr('ms_NotDetailInComapany', ms_NotDetailInComapany);
//  ms_Post := readStr('ms_DetailCodeNotValid', ms_DetailCodeNotValid);
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
//  ini.Free;
end;

end.
