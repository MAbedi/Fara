unit rptAnalyzeBalance;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, ppCtrls, ppVar, ppPrnabl, ppClass, Filter_ADO_Const,
  ppBands, ppCache, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd, ppReport,
  Menus, DBCtrls, ppParameter, ppDesignLayer, System.ImageList,AccFunctions,
  System.Actions, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid;

type
  TrptAnalyzeBalanceF = class(Ttemplate2MDIF)
    srcAnalyzeTrial: TDataSource;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    actFilter: TAction;
    qryFirstRun: TADOQuery;
    qryFirstRunLevelID: TIntegerField;
    qryFirstRunCodeLength: TWordField;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    Button1: TButton;
    actSort: TAction;
    actExcel: TAction;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    actRelation: TAction;
    actGhoose: TAction;
    actprint: TAction;
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    qrysqlText: TADOQuery;
    pnlLblLimitPlace: TPanel;
    LblShowLimitPlace1: TLabel;
    actOther: TAction;
    BitBtn7: TBitBtn;
    popOther: TPopupMenu;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    qryAnalyzeTrial: TADOQuery;
    qryAnalyzeTrialAccName: TStringField;
    qryAnalyzeTrialCompanyCode1: TIntegerField;
    qryAnalyzeTrialCompanyCode2: TIntegerField;
    qryAnalyzeTrialCompanyCode3: TIntegerField;
    qryAnalyzeTrialaccName1: TStringField;
    qryAnalyzeTrialaccName2: TStringField;
    qryAnalyzeTrialaccName3: TStringField;
    qryAnalyzeTrialaccName4: TStringField;
    qryAnalyzeTrialaccName5: TStringField;
    qryAnalyzeTrialaccName6: TStringField;
    qryAnalyzeTrialCompanyName1: TStringField;
    qryAnalyzeTrialCompanyName2: TStringField;
    qryAnalyzeTrialCompanyName3: TStringField;
    qryAnalyzeTrialsumDebt: TFMTBCDField;
    qryAnalyzeTrialsumCredit: TFMTBCDField;
    qryAnalyzeTrialsumBalanceDebt: TFMTBCDField;
    qryAnalyzeTrialsumBalanceCredit: TFMTBCDField;
    qryAnalyzeTrialTopicCode1: TLargeintField;
    qryAnalyzeTrialTopicCode2: TLargeintField;
    qryAnalyzeTrialTopicCode3: TLargeintField;
    qryAnalyzeTrialTopicCode4: TLargeintField;
    qryAnalyzeTrialTopicCode5: TLargeintField;
    qryAnalyzeTrialTopicCode6: TLargeintField;
    qryAnalyzeTrialCTopicCode1: TIntegerField;
    qryAnalyzeTrialCTopicCode2: TIntegerField;
    qryAnalyzeTrialCTopicCode3: TIntegerField;
    qryAnalyzeTrialCTopicCode2_2: TIntegerField;
    qryAnalyzeTrialCTopicCode2_1: TIntegerField;
    qryAnalyzeTrialCTopicName2_1: TStringField;
    qryAnalyzeTrialCTopicName2_2: TStringField;
    qryAnalyzeTrialCTopicName1: TStringField;
    qryAnalyzeTrialCTopicName2: TStringField;
    qryAnalyzeTrialCTopicName3: TStringField;
    qryAnalyzeTrialDetailCode: TIntegerField;
    qryAnalyzeTrialDetailName_L1: TStringField;
    qryAnalyzeTrialAccCode: TStringField;
    pop4Print: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    actFilterForm: TAction;
    mniFilterForm: TMenuItem;
    qryAnalyzeTrialYearID: TIntegerField;
    ppParameterList1: TppParameterList;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppLine1: TppLine;
    ppLine7: TppLine;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel2: TppLabel;
    ppLabel6: TppLabel;
    ppLine6: TppLine;
    ppLine13: TppLine;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLine3: TppLine;
    ppLBCompanyName: TppLabel;
    ppLabel3: TppLabel;
    ppDocDate: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel7: TppLabel;
    ppLabel10: TppLabel;
    ppLine29: TppLine;
    ppLabel13: TppLabel;
    ppLine16: TppLine;
    ppLabel12: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText9: TppDBText;
    ppLine5: TppLine;
    ppLine11: TppLine;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine15: TppLine;
    ppLine19: TppLine;
    ppFooterBand1: TppFooterBand;
    ppShape2: TppShape;
    ppLine2: TppLine;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppLine4: TppLine;
    ppLine12: TppLine;
    ppLine14: TppLine;
    ppDBCalc4: TppDBCalc;
    ppLabel1: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppShape3: TppShape;
    ppLine21: TppLine;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppDBCalc8: TppDBCalc;
    ppLabel11: TppLabel;
    DBGrid1: TCedarDbgrid;
    procedure actFilterExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actExcelExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actGhooseExecute(Sender: TObject);
    procedure actprintExecute(Sender: TObject);
    procedure actRelationExecute(Sender: TObject);
    procedure ppLBCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppDocDateGetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable2GetText(Sender: TObject; var Text: String);
    procedure ppLabel12GetText(Sender: TObject; var Text: String);
    procedure ppLabel13GetText(Sender: TObject; var Text: String);
    procedure actOtherExecute(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure _actSearchExecute(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure qryAnalyzeTrialAfterOpen(DataSet: TDataSet);
  private
    // cloned:TADOQuery;
    sqlSelectcode, sqlSelectName: string;
    LevelID: TStringList;
    LenAcc: array [1 .. 6] of string;
    LenCompany: array [1 .. 3] of string;
    LenCTopic: array [1 .. 3] of string;
    LenCTopic2_1, LenCTopic2_2: string;
    listLevelID: array of string;
    firstRun: boolean;
//    param1, param2, param3: String;
//    Status1, Status2: integer;
    procedure MakeQry(listLevel: string);
    procedure UpdateList;
    procedure setParameter(qry: TADOQuery);

    { Private declarations }
  public
    { Public declarations }
  end;

var
  rptAnalyzeBalanceF: TrptAnalyzeBalanceF;

implementation

uses Dm, ChooseCols, FilterClass_ADO, filter_ADO, GlobalPro, search2,
  sort2, AccBookAnalyze, FormFunctions, DBGrid2Print,
  TreeChart, Resource;
{$R *.dfm}

procedure TrptAnalyzeBalanceF.UpdateList;
begin
  // s := GetcTo(myParams.ParamValues['checked'], ftString);
  // ts := TStringList.Create;
  // try
  // ts.Text := StringReplace(s, ',', #13, [rfReplaceAll]);
  // param1 := '-1';
  // param2 := '-1';
  // param3 := '-1';
  // for i := 0 to ts.Count - 1 do
  // begin
  // if i = 0 then
  // param1 := ts[0];
  // if i = 1 then
  // param2 := ts[1];
  // if i = 2 then
  // param3 := ts[2];
  // if i > 2 then
  // break
  // end; // fot
  // s := GetcTo(myParams.ParamValues['state'], ftString);
  // ts.Text := StringReplace(s, ',', #13, [rfReplaceAll]);
  // Status1 := -1;
  // Status2 := -1;
  // for i := 0 to ts.Count - 1 do
  // begin
  // if i = 0 then
  // Status1 := StrToInt(ts[0]) - 1;
  // if i = 1 then
  // Status2 := StrToInt(ts[1]) - 1;
  // end; // for
  // finally
  // ts.Free;
  // end; // try
  with qryAnalyzeTrial Do
  begin
    Active := False;

    SetArzParameters(qryAnalyzeTrial,MyParams);

    Parameters.ParamByName('DocDateFrom').Value :=
      GetcFrom(myParams.ParamValues['DocDate'], ftString);
    Parameters.ParamByName('DocDateTo').Value :=
      GetcTo(myParams.ParamValues['DocDate'], ftString);
    Parameters.ParamByName('PrimaryDocNoFrom').Value :=
      GetcFrom(myParams.ParamValues['PrimaryDocNo'], ftInteger);
    Parameters.ParamByName('PrimaryDocNoTo').Value :=
      GetcTo(myParams.ParamValues['PrimaryDocNo'], ftInteger);
    Parameters.ParamByName('SecondaryDocNoFrom').Value :=
      GetcFrom(myParams.ParamValues['SecondaryDocNo'], ftInteger);
    Parameters.ParamByName('SecondaryDocNoTo').Value :=
      GetcTo(myParams.ParamValues['SecondaryDocNo'], ftInteger);
    Parameters.ParamByName('DocTypeCodeFrom').Value := 0;
    Parameters.ParamByName('DocTypeCodeTo').Value := 0;
    Parameters.ParamByName('DocTypeCode1_Not').Value :=
      GetcFrom(myParams.ParamValues['checked'], ftString);
    Parameters.ParamByName('DocTypeCode2_Not').Value := 0;
    Parameters.ParamByName('DocTypeCode3_Not').Value := 0;
    Parameters.ParamByName('Status1').Value :=
      GetcFrom(myParams.ParamValues['state'], ftString);;
    Parameters.ParamByName('Status2').Value := 0;
    Parameters.ParamByName('FromYearId').Value := APPBank.Year;
    Parameters.ParamByName('ToYearID').Value := APPBank.Year;
    if myParams.FindParam('Year') <> nil then
    begin
      Parameters.ParamByName('FromYearID').Value :=
        GetcFrom(myParams.ParamValues['Year'], ftInteger);
      Parameters.ParamByName('ToYearID').Value :=
        GetcTo(myParams.ParamValues['Year'], ftInteger);
    end;

    if gv_MultiCompany then
    begin
      Parameters.ParamByName('CompanyCodeFrom').Value :=
        GetcFrom(myParams.ParamValues['CompanyCode'], ftInteger);
      Parameters.ParamByName('CompanyCodeTo').Value :=
        GetcTo(myParams.ParamValues['CompanyCode'], ftInteger);
    end;
    SetCompanyFilterinLogin(Parameters);
    Parameters.ParamByName('AccCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['AccCode'], ftLargeint);
    Parameters.ParamByName('AccCodeTo').Value :=
      GetcTo(myParams.ParamValues['AccCode'], ftLargeint);
    Parameters.ParamByName('CTopicCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['CTopicCode'], ftInteger);
    Parameters.ParamByName('CTopicCodeTo').Value :=
      GetcTo(myParams.ParamValues['CTopicCode'], ftInteger);
    Parameters.ParamByName('CTopicCode2From').Value :=
      GetcFrom(myParams.ParamValues['CTopicCode2'], ftInteger);
    Parameters.ParamByName('CTopicCode2To').Value :=
      GetcTo(myParams.ParamValues['CTopicCode2'], ftInteger);
    Parameters.ParamByName('DetailCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['DetailCode'], ftInteger);
    Parameters.ParamByName('DetailCodeTo').Value :=
      GetcTo(myParams.ParamValues['DetailCode'], ftInteger);

    if firstRun then
    begin
      qryFirstRun.Active := true;
      Parameters.ParamByName('LenAcc1').Value :=
        qryFirstRun.Fieldbyname('CodeLength').AsInteger;
      SetLength(listLevelID, 1);
      listLevelID[0] := qryFirstRun.Fieldbyname('LevelID').AsString;
    end;

    Active := true;
    LblShowLimitPlace1.Caption :=
      Format('از تاریخ %s تا تاریخ %s  از شماره سند %s تا شماره سند %s',
      [qryAnalyzeTrial.Parameters.ParamByName('DocDateFrom').Value,
      qryAnalyzeTrial.Parameters.ParamByName('DocDateTo').Value,
      qryAnalyzeTrial.Parameters.ParamByName('PrimaryDocNoFrom').Value,
      qryAnalyzeTrial.Parameters.ParamByName('PrimaryDocNoTo').Value])

  end; // with

end;

procedure TrptAnalyzeBalanceF.actFilterExecute(Sender: TObject);
var
  tmpDefault: TcDefaultValues;
begin
  inherited;
  if (Sender as TAction).Tag = 1 then
    tmpDefault := dvDefaults
  else
    tmpDefault := dvMinMax;

  with TfilterF.Create2(Self, myParams) do
    try
       AddItemFilter(GetFilter, TFilterCurrencies);
       AddItemFilter(GetFilter, TFilterCurrencyKind);

      AddItem(DMF.adcAccounting, 'state', 'وضعيت اسناد', '', ftUnknown,
        dvDefaults, 'true', '', ciCheck, strLookupStatus);

      AddItem(DMF.adcAccounting, 'checked', 'انواع سند', '', ftUnknown,
        dvDefaults, 'true', '', ciCheck,
        'SELECT DocTypeCode, DocTypeName_L1 FROM acc.DocTypes ', '');

      AddItem(DMF.adcAccounting, 'SecondaryDocNo', 'شماره فرعي سند حسابداري',
        'شماره فرعي', ftInteger, tmpDefault, '0', '2147483647', ciSimple, '',
        Format(strMaxMinSecondaryDocNo, [APPBank.Year]));
      AddItem(DMF.adcAccounting, 'PrimaryDocNo', 'شماره اصلي سند حسابداري',
        'شماره سند', ftInteger, tmpDefault, '0', '2147483647', ciSimple, '',
        Format(strMaxMinPrimaryDocNo, [APPBank.Year]));
      AddItem(DMF.adcAccounting, 'DocDate', 'تاريخ سندحسابداري', 'تاريخ',
        ftDate, tmpDefault, '0000/00/00', '9999/99/99', ciSimple, '',
        Format(strMaxMinDocDate, [APPBank.Year]));
      AddItem(DMF.adcAccounting, 'CTopicCode2', 'كد و نام تفصیلی 3',
        'کد تفصیلی3', ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT     CTopicCode2, CTopicName2_L1 FROM   acc.CTopics2ForUse',
        'SELECT MIN(CTopicCode2),MAX(CTopicCode2)  FROM acc.CTopics2ForUse');
      AddItem(DMF.adcAccounting, 'CTopicCode', 'كد و نام تفصیلی 2',
        'کد تفصیلی2', ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT   CTopicCode, CTopicName_L1 FROM   acc.CTopicsForUse ',
        'SELECT Min(CTopicCode)  , Max(CTopicCode)  FROM acc.CTopicsForUse');
      AddItem(DMF.adcAccounting, 'DetailCode', 'كد و نام تفصيلي 1',
        'كد تفصيلي1', ftInteger, dvMinMax, '', '', ciLookup, strLookUpDetail,
        strMaxMinDetail);
      AddItem(DMF.adcAccounting, 'AccCode', 'كد و نام حساب ', 'كد حساب',
        ftLargeint, dvMinMax, '', '', ciLookup,
        'SELECT ACC.Categories.TopicCode, ACC.Categories.MoeenName_L1 FROM ACC.Categories LEFT OUTER JOIN '
        + ' ACC.CategoriesForUse ON ACC.Categories.TopicCode = ACC.CategoriesForUse.PrvTopicCode '
        + ' WHERE (ACC.CategoriesForUse.PrvTopicCode IS NULL) ',
        'SELECT min(ACC.Categories.TopicCode), max(ACC.Categories.TopicCode) FROM ACC.Categories LEFT OUTER JOIN '
        + ' ACC.CategoriesForUse ON ACC.Categories.TopicCode = ACC.CategoriesForUse.PrvTopicCode '
        + ' WHERE (ACC.CategoriesForUse.PrvTopicCode IS NULL) ');
      if gv_MultiCompany then
        AddItem(DMF.adcAccounting, 'CompanyCode', 'كد و نام شعبه /شركت', 'شركت',
          ftInteger, dvMinMax, '', '', ciLookup,
          'SELECT CompanyCode,CompanyName_L1 FROM  acc.Companies ',
          'SELECT 0,999999999');
      if (Sender as TAction).Tag = 1 then
        AddItem(DMF.adcAccounting, 'Year', 'محدود سال مالي', 'سال مالي',
          ftInteger, dvMinMax, '', '', ciSimple, '',
          'SELECT Min(YearID),Max(YearID) FROM util.maliYear');

      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateList;
      end; // if
    finally
      Free;
    end; // try

end;

procedure TrptAnalyzeBalanceF.MakeQry(listLevel: string);
var
  i, j, k,  p, q: integer;
  SortName: string;
begin
  firstRun := False;
  for i := 1 to 6 do
    LenAcc[i] := '0';
  for i := 1 to 3 do
    LenCompany[i] := '0';
  for i := 1 to 3 do
    LenCTopic[i] := '0';
  i := 1;
  j := i;
  k := i;
  p := i;

  sqlSelectcode := '';
  sqlSelectName := EmptyStr;
  LenCTopic2_1 := '0';
  LenCTopic2_2 := '0';
  LevelID := TStringList.Create;
  LevelID.Text := StringReplace(listLevel, ',', #13, [rfReplaceAll]);
  SetLength(listLevelID, LevelID.Count);
  for q := 0 to LevelID.Count - 1 do
  begin
    listLevelID[q] := LevelID[q];

    With DMF.qry_Temp do
    begin
      Close;
      SQL.Text :=
        'SELECT  LevelID, TopicType, CodeLength FROM acc.AccTopicLevels';
      SQL.Add('WHERE ((TopicType BETWEEN 0 AND 2) OR TopicType = 5) AND LevelID = '
        + LevelID[q]);
      Open;
      if LevelID[q] = '100' then
      begin
        sqlSelectcode :=
          '+ ''_'' + ltrim(str(isnull(acc.Details.DetailCode,0)))' +
          sqlSelectcode;
        SortName := SortName + 'ltrim(str(isnull(acc.Details.DetailCode,0))),';
        sqlSelectName := sqlSelectName +
          ' + ''_'' + isnull(ACC.Details.DetailName_L1,'''')';

      end
      else
        case Fieldbyname('TopicType').AsInteger of
          0:
            begin
              sqlSelectcode := '+ ''_'' + ltrim(str(isnull(Categories_' +
                IntToStr(i) + '.TopicCode,0)))' + sqlSelectcode;
              SortName := SortName + 'ltrim(str(isnull(Categories_' +
                IntToStr(i) + '.TopicCode,0))),';
              sqlSelectName := sqlSelectName + '+ ''_'' + isnull(Categories_' +
                IntToStr(i) + '.MoeenName_L1,'''')';

              LenAcc[i] := Fieldbyname('CodeLength').AsString;
              inc(i);

            end;
          5:
            begin
              sqlSelectcode := '+ ''_'' + ltrim(str(isnull(Companies_' +
                IntToStr(j) + '.CompanyCode,0)))' + sqlSelectcode;
              SortName := SortName + 'ltrim(str(isnull(Companies_' + IntToStr(j)
                + '.CompanyCode,0))),';
              sqlSelectName := sqlSelectName + ' + ''_'' + isnull(Companies_' +
                IntToStr(j) + '.CompanyName_L1,'''')';
              LenCompany[j] := Fieldbyname('CodeLength').AsString;

              inc(j);
            end;
          1:
            begin
              sqlSelectcode := '+ ''_'' +  ltrim(str(isnull(CenterTopics_' +
                IntToStr(k) + '.CTopicCode,0)))' + sqlSelectcode;
              SortName := SortName + ' ltrim(str(isnull(CenterTopics_' +
                IntToStr(k) + '.CTopicCode,0))),';
              sqlSelectName := sqlSelectName + '+ ''_'' + isnull(CenterTopics_'
                + IntToStr(k) + '.CTopicName_L1,'''')';
              LenCTopic[k] := Fieldbyname('CodeLength').AsString;

              inc(k);
            end;
          2:
            begin
              if p = 1 then
              begin
                sqlSelectcode :=
                  '+ ''_'' + ltrim(str(isnull(CenterTopics2_1.CTopicCode2,0)))'
                  + sqlSelectcode;
                SortName := SortName +
                  'ltrim(str(isnull(CenterTopics2_1.CTopicCode2,0))),';
                sqlSelectName := sqlSelectName +
                  ' + ''_'' + isnull(CenterTopics2_1.CTopicName2_L1,'''')';
                LenCTopic2_1 := Fieldbyname('CodeLength').AsString;
              end
              else
              begin
                sqlSelectcode :=
                  '+ ''_'' + ltrim(str(isnull(CenterTopics2_2.CTopicCode2,0)))'
                  + sqlSelectcode;
                SortName := SortName +
                  'ltrim(str(isnull(CenterTopics2_2.CTopicCode2,0))),';
                sqlSelectName := sqlSelectName +
                  ' + ''_'' + isnull(CenterTopics2_2.CTopicName2_L1,'''')';
                LenCTopic2_2 := Fieldbyname('CodeLength').AsString;

              end;
              inc(p);
            end;
        end; // case
      Next;
    end; // with
  end; // for
  // -------------------حذف اولين ويرگول زائد-------------------------------------------
  sqlSelectcode := StringReplace(sqlSelectcode, '+ ''_'' ', ' ',
    [rfIgnoreCase]);
  sqlSelectName := StringReplace(sqlSelectName, '+ ''_'' ', ' ',
    [rfIgnoreCase]);
  SetLength(SortName, length(SortName) - 1);
  // -------ايجاد ستونهاي  انتخاب شده---------------------------------------------------
  with qryAnalyzeTrial do
  begin
    Active := False;
    SQL.Text := qrysqlText.SQL.Text;
    SQL.Text := StringReplace(SQL.Text, 'w_Code', sqlSelectcode,
      [rfIgnoreCase]);
    SQL.Text := StringReplace(SQL.Text, 'w_Name', sqlSelectName,
      [rfIgnoreCase]);
    // در ستونها بايد مقدار صفر جايگزين شود DetailCode در صورت عدم انتخاب ---------------
    if Pos('100', listLevel) > 0 then
    begin
      SQL.Text := StringReplace(SQL.Text, 'W_DetailCode',
        'ACC.Details.DetailCode', [rfIgnoreCase]);
      SQL.Text := SQL.Text + ',ACC.Details.DetailCode, DetailName_L1';
    end
    else
      SQL.Text := StringReplace(SQL.Text, 'W_DetailCode', ' 0 ',
        [rfIgnoreCase]);
    for i := 1 to 6 do
      SQL.Text := StringReplace(SQL.Text, ':LenAcc' + IntToStr(i), LenAcc[i],
        [rfIgnoreCase]);
    for i := 1 to 3 do
      SQL.Text := StringReplace(SQL.Text, ':LenCompany' + IntToStr(i),
        LenCompany[i], [rfIgnoreCase]);
    for i := 1 to 3 do
      SQL.Text := StringReplace(SQL.Text, ':LenCTopic' + IntToStr(i),
        LenCTopic[i], [rfIgnoreCase]);

    SQL.Text := StringReplace(SQL.Text, ':LenCTopic2_1', LenCTopic2_1,
      [rfIgnoreCase]);
    SQL.Text := StringReplace(SQL.Text, ':LenCTopic2_2', LenCTopic2_2,
      [rfIgnoreCase]);
    SQL.Add('Order By ' + SortName);

    UpdateList;
  end;

end;

procedure TrptAnalyzeBalanceF.FormCreate(Sender: TObject);
begin
  inherited;
  firstRun := true;
end;

procedure TrptAnalyzeBalanceF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('DocDate') = nil then
    Close;

end;

procedure TrptAnalyzeBalanceF.FormDestroy(Sender: TObject);
begin
  inherited;
  // if  Assigned(listLevelID) then listLevelID.Free;
  if Assigned(LevelID) then
    FreeAndNil(LevelID);


end;

procedure TrptAnalyzeBalanceF.actExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TrptAnalyzeBalanceF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryAnalyzeTrial);
end;

procedure TrptAnalyzeBalanceF.actGhooseExecute(Sender: TObject);
var
  s: string;
begin
  inherited;
  s := ChooseColsF.GetCols(listLevelID);
  if s <> EmptyStr then
    MakeQry(s);
end;

procedure TrptAnalyzeBalanceF.actprintExecute(Sender: TObject);
begin
  inherited;
  pop4Print.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);

end;

procedure TrptAnalyzeBalanceF.actRelationExecute(Sender: TObject);
var
  i: integer;
  strAccCode, strTemp: string;
begin
  inherited;

  strAccCode := Trim(qryAnalyzeTrialAccCode.AsString);
  if not Assigned(LevelID) then
    MakeQry(listLevelID[0]);
  CreateMDIForm3(False, TAccBookAnalyzeF, AccBookAnalyzeF, Self);

  with AccBookAnalyzeF do
  begin
    setParameter(qry_AccCode);
    setParameter(qry_Doc);
    for i := 0 to High(listLevelID) do
      strTemp := strTemp + listLevelID[i] + ',';
    SetLength(strTemp, length(strTemp) - 1);
    MakeQry(strTemp);
    with qry_AccCode do
    begin
      Close;
      // SQL.Text := Format('Select * From (%s) as Qry ', [SQL.Text]);
      // SQL.Add(Format('Where acccode = %s ', [QuotedStr(strAccCode)]));

      SQL.Text := Format('Select * From (%s) as Qry ', [SQL.Text]);
      SQL.Add(Format('Where acccode = %s ', [QuotedStr(strAccCode)]));

      Open;
    end;
  end;
end;

procedure TrptAnalyzeBalanceF.setParameter(qry: TADOQuery);
var
  i: SmallInt;
  paramName: string;
begin
  with qry do
  begin
    for i := 0 to Parameters.Count - 1 do
    begin
      paramName := Parameters[i].Name;
      if qryAnalyzeTrial.Parameters.FindParam(paramName) <> nil then
        Parameters.ParamByName(paramName).Value :=
          qryAnalyzeTrial.Parameters.ParamByName(paramName).Value;
    end;
    if firstRun then
    begin
      qryFirstRun.Active := true;
      Parameters.ParamByName('LenAcc1').Value :=
        qryFirstRun.Fieldbyname('CodeLength').AsInteger;
      SetLength(listLevelID, 1);
      listLevelID[0] := qryFirstRun.Fieldbyname('LevelID').AsString;
    end;
  end;
end;

procedure TrptAnalyzeBalanceF.ppLBCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TrptAnalyzeBalanceF.ppDocDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TrptAnalyzeBalanceF.ppSystemVariable2GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TrptAnalyzeBalanceF.qryAnalyzeTrialAfterOpen(DataSet: TDataSet);
begin
  inherited;
  DBGridCurrencyKind(DBGrid1,myParams,qryAnalyzeTrial)
end;

procedure TrptAnalyzeBalanceF.ppLabel12GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := 'اسناد موقت از ' +
    IntToStr(GetcFrom(myParams.ParamValues['SecondaryDocNo'], ftInteger)) +
    ' تا ' + IntToStr(GetcTo(myParams.ParamValues['SecondaryDocNo'],
    ftInteger));

end;

procedure TrptAnalyzeBalanceF.ppLabel13GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := 'از تاريخ ' + GetcFrom(myParams.ParamValues['DocDate'], ftString) +
    ' تا تاريخ ' + GetcTo(myParams.ParamValues['DocDate'], ftString);
end;

procedure TrptAnalyzeBalanceF.actOtherExecute(Sender: TObject);
begin
  inherited;
  popOther.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TrptAnalyzeBalanceF.MenuItem3Click(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, 0, LblShowLimitPlace1.Caption);
end;

procedure TrptAnalyzeBalanceF.MenuItem4Click(Sender: TObject);
begin
  inherited;
  TreeChartF.showChart(qryAnalyzeTrial, Self);

end;

procedure TrptAnalyzeBalanceF.MenuItem5Click(Sender: TObject);
begin
  inherited;
  UpdateAllQry(Self);

end;

procedure TrptAnalyzeBalanceF._actSearchExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryAnalyzeTrial);

end;

procedure TrptAnalyzeBalanceF.N1Click(Sender: TObject);
begin
  inherited;
  try
    qryAnalyzeTrial.DisableControls;
    InitReportFile(ppReport1, 'rptAnalyzeBalance_' +
      IntToStr((Sender as TMenuItem).Tag), DBGrid1, ppDBPipeline1);
  finally
    qryAnalyzeTrial.EnableControls;
  end; // try
end;

end.
