unit FormInfo_2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, Buttons, StdCtrls, Mask, DBCtrls, ImgList,
  DBActns, ActnList, ExtCtrls, Grids, Vcl.DBGrids, DB, ADODB, StrUtils,
  ppCtrls, ppBands, ppVar, ppPrnabl, ppClass, ppCache, ppProd, ppReport,
  ppDB, ppComm, ppRelatv, ppDBPipe, ppStrtch, ppSubRpt, Menus, ppParameter,
  MyComboBoxUnit, ppDesignLayer, System.ImageList, System.Actions;

type
  TFormInfo_2F = class(Ttemplate2MDIF)
    DBGrid1: TDBGrid;
    newPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn7: TBitBtn;
    qryItem: TADOQuery;
    qryMaster: TADOQuery;
    SrcMaster: TDataSource;
    SrcItem: TDataSource;
    qryMasterFormInfoID: TIntegerField;
    qryMasterFormType: TIntegerField;
    qryMasterInfoID: TIntegerField;
    qryMasterInfoName_L1: TStringField;
    qryMasterInfoName_L2: TStringField;
    qryInitForm: TADOQuery;
    actSendToExcel: TAction;
    actSort: TAction;
    qryItemFormInfoID: TIntegerField;
    qryItemFormType: TIntegerField;
    qryItemInfoID: TIntegerField;
    qryItemInfoName_L1: TStringField;
    qryItemInfoName_L2: TStringField;
    qryItemPrvInfoID: TIntegerField;
    qryItemAmount: TBCDField;
    qryItemAmount2: TBCDField;
    qryItemCoefficient: TFloatField;
    qryItemStandardDays: TFloatField;
    qryItemStandardTimes: TFloatField;
    qryItemAccTopicCode: TIntegerField;
    qryItemAccDetailCode: TIntegerField;
    qryItemAccCTopicode: TIntegerField;
    qryItemAccCTopicode2: TIntegerField;
    qryItemCalCulateType: TWordField;
    qryItemRecallFormInfoID1: TStringField;
    qryItemRecallFormInfoID2: TStringField;
    qryItemRecalKindClock: TWordField;
    qryItemWordDocuments: TStringField;
    PnlRecall: TPanel;
    DBEdit1: TDBEdit;
    SpeedButton1: TSpeedButton;
    DBEdit2: TDBEdit;
    DBNavigator1: TDBNavigator;
    qryItemFirstAmount: TBCDField;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppDBPipeline2: TppDBPipeline;
    qryItemMaxDay: TFloatField;
    qryItemMaxTime: TFloatField;
    PopList4Printold: TPopupMenu;
    AllClick: TMenuItem;
    forminfo2Dtaile: TMenuItem;
    forminfo2Master: TMenuItem;
    forminfo2day1: TMenuItem;
    forminfo2day2: TMenuItem;
    forminfo2day3: TMenuItem;
    forminfo2day4: TMenuItem;
    forminfo2day5: TMenuItem;
    forminfo2day6: TMenuItem;
    ppTitleBand1: TppTitleBand;
    ppLabel1: TppLabel;
    ppLblFromCaption: TppLabel;
    pplblPrintDate: TppLabel;
    ppHeaderBand1: TppHeaderBand;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppSysVarPageNo: TppSystemVariable;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLabel7: TppLabel;
    ppLabel6: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel3: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel2: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText3: TppDBText;
    ppDBText2: TppDBText;
    ppDBText4: TppDBText;
    ppDBText6: TppDBText;
    ppDBText5: TppDBText;
    ppDBText7: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLine3: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppLine4: TppLine;
    ppLabel8: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppLine5: TppLine;
    ppLine6: TppLine;
    PopList4Print: TPopupMenu;
    AllClikPop: TMenuItem;
    qryMasterAccTopicCode: TIntegerField;
    qryMasterAccDetailCode: TIntegerField;
    qryMasterAccCTopicCode: TIntegerField;
    qryMasterAccCTopicCode2: TIntegerField;
    qryItemMuliplyInDay: TWordField;
    qryItemAccCTopicCode3: TIntegerField;
    BitBtn8: TBitBtn;
    actGetExcel: TAction;
    qryItemPayMentActive: TWordField;
    Image3: TImage;
    Image2: TImage;
    qryItemTaxCode: TWordField;
    qryItemFormInfoID2: TIntegerField;
    qryFormInfo: TADOQuery;
    qryItem_FormInfoID2: TStringField;
    Label2: TLabel;
    qryItemNote: TMemoField;
    qryItemChecking4AllPersonnel2: TWordField;
    qryItemEmployerAmountActive: TWordField;
    qryItemAccTopicCodeB: TIntegerField;
    qryItemAccDetailCodeB: TIntegerField;
    qryItem_PrvInfoID: TStringField;
    qryItem_PrvID: TIntegerField;
    Panel1: TPanel;
    chkAll: TCheckBox;
    yrcmbx1: TYearComboBox;
    qryItemSalaryIDinDocActive: TWordField;
    qryItemWageKind: TWordField;
    qryWageKinds: TADOQuery;
    qryItem_WageKind: TStringField;
    procedure actSendToExcelExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure qryMasterAfterScroll(DataSet: TDataSet);
    procedure qryItemRecalKindClockGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure qryItemAfterInsert(DataSet: TDataSet);
    procedure qryItemCalCulateTypeSetText(Sender: TField; const Text: String);
    procedure qryItemAfterEdit(DataSet: TDataSet);
    procedure qryItemAfterPost(DataSet: TDataSet);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure ppLblFromCaptionGetText(Sender: TObject; var Text: String);
    procedure pplblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
    procedure qryItemBeforeDelete(DataSet: TDataSet);
    procedure BitBtn7Click(Sender: TObject);
    procedure AllClickClick(Sender: TObject);
    procedure ppDBTxtCalCulateTypeGetText(Sender: TObject; var Text: String);
    procedure AllClikPopClick(Sender: TObject);
    procedure qryItemBeforePost(DataSet: TDataSet);
    procedure SrcItemStateChange(Sender: TObject);
    procedure qryItemRecalKindClockSetText(Sender: TField; const Text: String);
    procedure qryItemCalCulateTypeGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure actGetExcelExecute(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure yrcmbx1YearChangeID(Sender: TObject);
    procedure chkAllClick(Sender: TObject);
    procedure qryItemFormInfoID2GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
  private
    { Private declarations }
    FormType: Integer;
    b1: Boolean;
    procedure InitForm;
    function GetTextCalCulateType: String;
    procedure makeSQL;
  public
    { Public declarations }
  end;

var
  FormInfo_2F: TFormInfo_2F;

implementation

uses DM, GlobalPro, search2, sort2, searchCode_ADO, EditNewFormInfo_2,
  Math, SalaryFunctions, GetExcel;

{$R *.dfm}

procedure TFormInfo_2F.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TFormInfo_2F.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryItem);
end;

procedure TFormInfo_2F.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryItem);
end;

procedure TFormInfo_2F.FormCreate(Sender: TObject);
begin
  inherited;
  b1 := True;
  FormType := var_glb_gParam;
  InitForm;
end;

procedure TFormInfo_2F.InitForm;
var
  b: Boolean;
begin
  SetLookUpCash(qryItem);
  lblCaption.Hint := IntToStr(FormType);
  with qryInitForm do
  begin
    Active := false;
    Parameters.ParamByName('FormType').Value := FormType;
    Active := True;
    Caption := FieldByName('FormCaption_L1').AsString;
    if optP.primaryLanguage <> 0 then
      Caption := FieldByName('FormCaption_L2').AsString;

    if FieldByName('AmountCaption').AsString <> '' then
    begin
      qryItemAmount.DisplayLabel := FieldByName('AmountCaption').AsString;
    end;

    qryItemAmount.currency := FormType <> 16;

    qryItemInfoID.ReadOnly := FieldByName('PrefixInfoID').AsInteger = 2;

  end; // with qryInitForm
  yrcmbx1.Visible := qryInitForm.FieldByName('ActiveYearID').AsInteger = 1;
  yrcmbx1.YearsParam := APPBank.Year;
  yrcmbx1.YearID := APPBank.Year;
  makeSQL;

  with qryMaster do
  begin
    Active := false;
    Parameters.ParamByName('RecallFormTypes').Value :=
      qryInitForm.FieldByName('RecallFormTypes').AsInteger;
    Active := True;
  end; // with qryMaster

  setColumns2(DBGrid1, optP.LanguageDisplay1, 'InfoName_L1');
  setColumns2(DBGrid1, optP.LanguageDisplay2, 'InfoName_L2');
  setColumns2(DBGrid1, qryInitForm.FieldByName('FirstAmountActive')
    .AsInteger = 1, 'FirstAmount');
  setColumns2(DBGrid1, qryInitForm.FieldByName('Amount2Active').AsInteger = 1,
    'Amount2');
  setColumns2(DBGrid1, qryInitForm.FieldByName('AmountActive').AsInteger
    in [1, 3], 'Amount');
  setColumns2(DBGrid1, qryInitForm.FieldByName('DurationDayActive')
    .AsInteger = 1, 'StandardDays');
  setColumns2(DBGrid1, qryInitForm.FieldByName('DurationTimeActive')
    .AsInteger = 1, 'StandardTimes');
  setColumns2(DBGrid1, qryInitForm.FieldByName('CoefficientActive')
    .AsInteger = 1, 'Coefficient');
  setColumns2(DBGrid1, qryInitForm.FieldByName('CalCulateTypeactive')
    .AsInteger = 1, 'CalCulateType');

  b := (qryInitForm.FieldByName('FunctionShow').AsInteger = 1) or
    (qryInitForm.FieldByName('MaxDayTimeActive').AsInteger = 1);
  setColumns2(DBGrid1, b, 'MaxDay');
  setColumns2(DBGrid1, b, 'MaxTime');

  setColumns2(DBGrid1, qryInitForm.FieldByName('TopicCodeKind').AsInteger <> 0,
    'AccTopicCode');
  setColumns2(DBGrid1, qryInitForm.FieldByName('DetailCodeKind').AsInteger <> 0,
    'AccDetailCode');
  setColumns2(DBGrid1, qryInitForm.FieldByName('CTopicCodeKind').AsInteger <> 0,
    'AccCTopiccode');
  setColumns2(DBGrid1, qryInitForm.FieldByName('CTopicCodeKind').AsInteger <> 0,
    'AccCTopiccode');
  setColumns2(DBGrid1, qryInitForm.FieldByName('CTopicCode2Kind').AsInteger <>
    0, 'AccCTopiccode2');
  setColumns2(DBGrid1, qryInitForm.FieldByName('RecalKindClock').AsInteger = 1,
    'RecalKindClock');
  setColumns2(DBGrid1, qryInitForm.FieldByName('WordDocumentsActive')
    .AsInteger = 1, 'WordDocuments');
  setColumns2(DBGrid1, qryInitForm.FieldByName('CTopicCode3Kind').AsInteger <>
    0, 'AccCTopiccode3');

  setColumns2(DBGrid1, qryInitForm.FieldByName('PayMentShow').AsInteger = 1,
    'PayMentActive');

  setColumns2(DBGrid1, qryInitForm.FieldByName('SalaryIDinDocShow').AsInteger = 1,
    'SalaryIDinDocActive');


  PnlRecall.Visible := qryInitForm.FieldByName('RecallFormTypes')
    .AsInteger <> 0;

  chkAll.Visible := PnlRecall.Visible;

  setColumns2(DBGrid1, qryInitForm.FieldByName('TaxCodeShow').AsInteger > 0,
    'TaxCode');

  setColumns2(DBGrid1, qryInitForm.FieldByName('Checking4AllPersonnelShow').AsInteger > 0,
    'Checking4AllPersonnel');
  setColumns2(DBGrid1, qryInitForm.FieldByName('EmployerAmountActiveShow').AsInteger > 0,
    'EmployerAmountActive');


  qryFormInfo.Active := True;
  setColumns2(DBGrid1, qryInitForm.FieldByName('MasterFormType').AsInteger > 0,
    'FormInfoID2');
  setColumns2(DBGrid1, qryInitForm.FieldByName('MasterFormType').AsInteger > 0,
    '_FormInfoID2');

end;

procedure TFormInfo_2F.makeSQL;
begin
  with qryItem do
  begin
    Active := false;
    SQL.Text := 'SELECT Pay.FormsInfo.*';
    SQL.Add('FROM Pay.FormsInfo');
    SQL.Add('WHERE (FormType = :FormType ) ');
    if not chkAll.Checked then
      SQL.Add('AND (PrvInfoID = isnull(:FormInfoID,0))');

//    SQL.Add('AND (Years = :Years OR Years IS NULL)');
    SQL.Add('order by InfoID');
    if FormType = 16 then
      qryItemPayMentActive.DisplayLabel := 'نمایش در فیش';
    Parameters.ParamByName('FormType').Value := FormType;
//    Parameters.ParamByName('Years').Value := yrcmbx1.YearID;
    // Parameters.ParamByName('FormInfoID').Value := 0;
    Active := True;
  end;
  if (not chkAll.Checked) and qryMaster.Active then
    qryMasterAfterScroll(qryMaster);
  PnlRecall.Visible := not chkAll.Checked;

  setColumns2(DBGrid1, chkAll.Checked, '_PrvInfoID');
  setColumns2(DBGrid1, chkAll.Checked, '_PrvID');
  newPanel.Enabled := PnlRecall.Visible;

end;

procedure TFormInfo_2F.SpeedButton1Click(Sender: TObject);
var
  Txt: String;
  s: Boolean;
  Results: array [0 .. 2] of String;
begin
  inherited;
  Txt := 'SELECT     FormInfoID,InfoID, InfoName_L1, InfoName_L2 FROM Pay.FormsInfo '
    + 'WHERE (FormType = ' + qryInitForm.FieldByName('RecallFormTypes')
    .AsString + ') ';
  s := searchCode_ADOF.SearchCode2(DMF.adcSalary, ' سطح‏هاي قبلي  ', Txt,
    ['', 'كد', 'نام 1', 'نام 2'], Results, [0, 50, 100, 100], alLeft);
  if s then
    qryMaster.Locate('FormInfoID', Results[0], []);
end;

procedure TFormInfo_2F.qryMasterAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryItem do
  begin
    Active := false;
    Parameters.ParamByName('FormInfoID').Value :=
      IfThen(qryMaster.FieldByName('FormInfoID').IsNull, 0,
      qryMaster.FieldByName('FormInfoID').AsInteger);

    Parameters.ParamByName('FormType').Value := FormType;

    Active := True;
  end; // with
end;

procedure TFormInfo_2F.qryItemRecalKindClockGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  case qryItem.FieldByName('RecalKindClock').AsInteger of
    0:
      Text := 'ندارد';
    1:
      Text := 'اضافه كاري';
    2:
      Text := 'شبكاري';
    3:
      Text := 'نوبت كاري';
    4:
      Text := 'تعطيل كاري';
    5:
      Text := 'غيبت';
    6:
      Text := 'مرخصي ساعتي';
    7:
      Text := 'مرخصي استحقاقي';
    8:
      Text := 'مرخصي استعلاجي';
    9:
      Text := 'مرخصي بدون حقوق';
  end; // case
end;

procedure TFormInfo_2F.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1, IntToStr(FormType));
end;

procedure TFormInfo_2F.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1, True, IntToStr(FormType));
end;

procedure TFormInfo_2F.qryItemAfterInsert(DataSet: TDataSet);
begin
  inherited;
  with qryItem do
  begin
    FieldByName('FormInfoID').AsInteger :=
      GetANewCode('','Pay.FormsInfo', 'FormInfoID', DMF.adcSalary);

//    FieldByName('Years').AsInteger := APPBank.Year;


    // TADOQuery(DataSet).FieldByName('InfoID').AsInteger:=

    GetNewInfoID(qryMaster.FieldByName('FormInfoID').AsInteger,
      FormType, qryItem);

    // TADOQuery(DataSet).FieldByName('InfoID').AsInteger:=
    // GetANewCode('','SELECT MAX(InfoID) FROM Pay.FormsInfo WHERE(FormType = '+IntToStr(FormType)+') and PrvInfoID = '+
    // IfThen(qryMaster.FieldByName('FormInfoID').IsNull,'0',
    // qryMaster.FieldByName('FormInfoID').AsString),'InfoID');
    FieldByName('FormType').AsInteger := FormType;
    FieldByName('RecalKindClock').AsInteger := 0;
    FieldByName('CalCulateType').AsInteger := 0;

    FieldByName('PrvInfoID').AsInteger :=
      IfThen(qryMaster.FieldByName('FormInfoID').IsNull, 0,
      qryMaster.FieldByName('FormInfoID').AsInteger);

    if qryInitForm.FieldByName('TopicCodeKind').AsInteger = 5 then
      FieldByName('AccTopicCode').AsString :=
        qryMaster.FieldByName('AccTopicCode').AsString;

    if qryInitForm.FieldByName('DetailCodeKind').AsInteger = 5 then
      FieldByName('AccDetailCode').AsString :=
        qryMaster.FieldByName('AccDetailCode').AsString;

    if qryInitForm.FieldByName('CTopicCodeKind').AsInteger = 5 then
      FieldByName('AccCTopicCode').AsString :=
        qryMaster.FieldByName('AccCTopicCode').AsString;

    if qryInitForm.FieldByName('CTopicCode2Kind').AsInteger = 5 then
      FieldByName('AccCTopicCode2').AsString :=
        qryMaster.FieldByName('AccCTopicCode2').AsString;
  end; // with
  if b1 then
    EditNewFormInfo_2F.Enter(FormType);
end;

procedure TFormInfo_2F.qryItemCalCulateTypeSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsInteger := EditNewFormInfo_2F.CmbCalCulateType.ItemIndex;
end;

procedure TFormInfo_2F.qryItemFormInfoID2GetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  //  fo
end;

procedure TFormInfo_2F.qryItemAfterEdit(DataSet: TDataSet);
begin
  inherited;
  if b1 then
    EditNewFormInfo_2F.Enter(FormType);
end;

procedure TFormInfo_2F.qryItemAfterPost(DataSet: TDataSet);
begin
  inherited;
  if b1 then
    EditNewFormInfo_2F.Close;
end;

procedure TFormInfo_2F.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  qryItem.Edit;
end;

procedure TFormInfo_2F.ppLblFromCaptionGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := Caption;
end;

procedure TFormInfo_2F.pplblPrintDateGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := 'تاريخ چاپ' + var_glb_CurrentDate;
end;

procedure TFormInfo_2F.ppSysVarPageNoGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TFormInfo_2F.qryItemBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if not FormInfoDelete(DataSet.FieldByName('FormInfoID').AsInteger) then
    Abort;
  if get_response('آيا براي حذف اين فرم مطمئن هستيد؟') <> mrYes then
    Abort;
end;

procedure TFormInfo_2F.BitBtn7Click(Sender: TObject);
begin
  inherited;
  MakeMenuItem(FormType, AllClikPopClick, PopList4Print);
  try
    qryMaster.DisableControls;
    qryItem.DisableControls;
    PopList4Print.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
  finally
    qryMaster.EnableControls;
    qryItem.EnableControls;
  end;

  // PopList4Print.Popup(Mouse.CursorPos.X,Mouse.CursorPos.Y);
end;

procedure TFormInfo_2F.chkAllClick(Sender: TObject);
begin
  inherited;
  makeSQL;
end;

procedure TFormInfo_2F.AllClickClick(Sender: TObject);
begin
  inherited;
  // qryItem.Sort:=(Sender as TMenuItem).Hint;
  InitReportFile(ppReport1, (Sender as TMenuItem).Name);
end;

procedure TFormInfo_2F.ppDBTxtCalCulateTypeGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetTextCalCulateType
end;

procedure TFormInfo_2F.AllClikPopClick(Sender: TObject);
begin
  inherited;
  InitReportFile(ppReport1, (Sender as TMenuItem).Hint);

end;

procedure TFormInfo_2F.qryItemBeforePost(DataSet: TDataSet);
begin
  inherited;
  TrimStringFields(DataSet);
  if not ValidInfoName(DataSet, qryInitForm) then
    Abort;
  if (DataSet.FieldByName('MaxTime').AsInteger <> 0) and
    (DataSet.FieldByName('MaxDay').AsInteger <> 0) then
  begin
    Warn('حداكثر روز و حداكثر ساعت هردو مقدار دارند يكي از آنها بايد صفر باشند.!‏');
    Abort;
  end;

end;

procedure TFormInfo_2F.SrcItemStateChange(Sender: TObject);
begin
  inherited;
  FreeReservedCodes(DMF.adcSalary);
end;

procedure TFormInfo_2F.yrcmbx1YearChangeID(Sender: TObject);
begin
  inherited;
  makeSQL;
end;

procedure TFormInfo_2F.qryItemRecalKindClockSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsInteger := EditNewFormInfo_2F.CmbRecalKindClock.ItemIndex;
end;

procedure TFormInfo_2F.qryItemCalCulateTypeGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text := GetTextCalCulateType
end;

function TFormInfo_2F.GetTextCalCulateType: String;
begin
  case qryItem.FieldByName('CalCulateType').AsInteger of
    0:
      Result := 'ندارد';
    1:
      Result := 'ضريب از 30 روز';
    2:
      Result := 'ضريب از روزهاي استاندارد';
    3:
      Result := 'ضريب از ساعات استاندارد تا سقف مبلغ حكم';
    4:
      Result := 'مبلغ ثابت';
    5:
      Result := 'ضريب از ماه';
    6:
      Result := 'حقوق روزانه';
    7:
      Result := 'تقسيم بر 30 ضربدر روزهاي استاندارد';
    8:
      Result := ' كاركرد بعلاوه ايام بيماري تقسيم بر 30';
    9:
      Result := 'روزهاي كاركرد ، كاركرد اصلي جهت ساير مزايا';
    10:
      Result := 'ساعات كاركرد ، كاركرد اصلي ، جهت ساير مزايا';
    11:
      Result := 'مبلغ ثابت بدون در نظر گرفتن پروژه';
    12:
      Result := 'حقوق ساعتي';
    13:
      Result := 'حقوق روزانه مازاد بر 15 روز با ضریب 1.4';
    14:
      Result := 'ضريب از ساعت استاندارد - بدون سقف';
    15:
      Result := 'کارکرد + ایام بیماری / روزهای استاندارد ';
  end; // case
end;

procedure TFormInfo_2F.actGetExcelExecute(Sender: TObject);
begin
  inherited;
  try
    b1 := false;
    GetExcelf.ShowImPortExcel(qryItem);
  finally
    b1 := True;
  end;

end;

procedure TFormInfo_2F.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if Column.FieldName = 'PayMentActive' then
  begin
    DBGrid1.Canvas.Rectangle(Rect);
    if Column.Field.AsInteger = 1 then
      DBGrid1.Canvas.Draw(Rect.Left, Rect.Top, Image3.Picture.Graphic)
    else
      DBGrid1.Canvas.Draw(Rect.Left, Rect.Top, Image2.Picture.Graphic)
  end;
  if Column.FieldName = 'Checking4AllPersonnel' then
  begin
    DBGrid1.Canvas.Rectangle(Rect);
    if Column.Field.AsInteger = 1 then
      DBGrid1.Canvas.Draw(Rect.Left, Rect.Top, Image3.Picture.Graphic)
    else
      DBGrid1.Canvas.Draw(Rect.Left, Rect.Top, Image2.Picture.Graphic)
  end;
  if Column.FieldName = 'EmployerAmountActive' then
  begin
    DBGrid1.Canvas.Rectangle(Rect);
    if Column.Field.AsInteger = 1 then
      DBGrid1.Canvas.Draw(Rect.Left, Rect.Top, Image3.Picture.Graphic)
    else
      DBGrid1.Canvas.Draw(Rect.Left, Rect.Top, Image2.Picture.Graphic)
  end;

end;

end.
