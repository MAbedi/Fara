unit rptAnalyzeBalanceMonth;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, Grids, Vcl.DBGrids, ppCtrls, ppVar, ppPrnabl, ppClass,
  ppBands, ppCache, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd, ppReport,
  SumDBGrid, Menus, DBCtrls, ppParameter, StrUtils, ppDesignLayer,
  System.ImageList, System.Actions;

type
  TrptAnalyzeBalanceMonthF = class(Ttemplate2MDIF)
    DBGrid1: TDBGrid;
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
    btnRelation: TBitBtn;
    BitBtn4: TBitBtn;
    actRelation: TAction;
    actGhoose: TAction;
    actprint: TAction;
    ppDBPipeline1: TppDBPipeline;
    SumGrid1: TSumGrid;
    pnlLblLimitPlace: TPanel;
    LblShowLimitPlace1: TLabel;
    actOther: TAction;
    BitBtn7: TBitBtn;
    popOther: TPopupMenu;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    qryAnalyzeTrial: TADOQuery;
    actFilterForm: TAction;
    mniFilterForm: TMenuItem;
    qryAnalyzeTrialYearId: TIntegerField;
    qryAnalyzeTrialAccCode: TStringField;
    qryAnalyzeTrialAccName: TStringField;
    qryAnalyzeTrialBalanceM1: TBCDField;
    qryAnalyzeTrialBalanceM2: TBCDField;
    qryAnalyzeTrialBalanceM3: TBCDField;
    qryAnalyzeTrialBalanceM4: TBCDField;
    qryAnalyzeTrialBalanceM5: TBCDField;
    qryAnalyzeTrialBalanceM6: TBCDField;
    qryAnalyzeTrialBalanceM8: TBCDField;
    qryAnalyzeTrialBalanceM7: TBCDField;
    qryAnalyzeTrialBalanceM9: TBCDField;
    qryAnalyzeTrialBalanceM10: TBCDField;
    qryAnalyzeTrialBalanceM11: TBCDField;
    qryAnalyzeTrialBalanceM12: TBCDField;
    qryAnalyzeTrialBalanceLastYear: TBCDField;
    qryAnalyzeTrialDetailCode: TIntegerField;
    qryAnalyzeTrialTopicCode2: TLargeintField;
    qryAnalyzeTrialTopicCode1: TLargeintField;
    qryAnalyzeTrialTopicCode3: TLargeintField;
    qryAnalyzeTrialTopicCode4: TLargeintField;
    qryAnalyzeTrialTopicCode5: TLargeintField;
    qryAnalyzeTrialTopicCode6: TLargeintField;
    qryAnalyzeTrialAccName1: TStringField;
    qryAnalyzeTrialAccName2: TStringField;
    qryAnalyzeTrialAccName3: TStringField;
    qryAnalyzeTrialAccName4: TStringField;
    qryAnalyzeTrialAccName5: TStringField;
    qryAnalyzeTrialAccName6: TStringField;
    qryAnalyzeTrialCTopicCode1: TIntegerField;
    qryAnalyzeTrialCTopicCode2: TIntegerField;
    qryAnalyzeTrialCTopicCode3: TIntegerField;
    qryAnalyzeTrialCTopicName1: TStringField;
    qryAnalyzeTrialCTopicName2: TStringField;
    qryAnalyzeTrialCTopicName3: TStringField;
    qryAnalyzeTrialCTopicCode2_2: TIntegerField;
    qryAnalyzeTrialCTopicCode2_1: TIntegerField;
    qryAnalyzeTrialCTopicName2_1: TStringField;
    qryAnalyzeTrialCTopicName2_2: TStringField;
    qryAnalyzeTrialCompanyCode1: TIntegerField;
    qryAnalyzeTrialCompanyCode2: TIntegerField;
    qryAnalyzeTrialCompanyCode3: TIntegerField;
    qryAnalyzeTrialCompanyName1: TStringField;
    qryAnalyzeTrialCompanyName2: TStringField;
    qryAnalyzeTrialCompanyName3: TStringField;
    qryAnalyzeTrialDetailName_L1: TStringField;
    qryAnalyzeTrialsumBalanceDebt: TFMTBCDField;
    qryAnalyzeTrialsumBalanceCredit: TFMTBCDField;
    ppReport1: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLine2: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLabel22: TppLabel;
    SysVarPage2: TppSystemVariable;
    ppLine20: TppLine;
    ppLabel23: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText12: TppDBText;
    ppDBText16: TppDBText;
    ppDBText13: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppDBCalc3: TppDBCalc;
    ppLabel29: TppLabel;
    ppLine23: TppLine;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppSummaryBand2: TppSummaryBand;
    ppDBCalc4: TppDBCalc;
    ppLabel30: TppLabel;
    ppLine24: TppLine;
    ppLine29: TppLine;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppParameterList2: TppParameterList;
    procedure actFilterExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actExcelExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actGhooseExecute(Sender: TObject);
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
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure actprintExecute(Sender: TObject);
    procedure ppLblCaptionGetText(Sender: TObject; var Text: String);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
  private
    // cloned:TADOQuery;
    FsqlAnaliz: string;
    sqlSelectcode, sqlSelectName: string;
    LevelID: TStringList;
    LenAcc: array [1 .. 6] of string;
    LenCompany: array [1 .. 3] of string;
    LenCTopic: array [1 .. 3] of string;
    LenCTopic2_1, LenCTopic2_2: string;
    listLevelID: array of string;
    firstRun: boolean;
//    param1, param2, param3: String;
//    Status1, Status2: Integer;
    procedure MakeQry(listLevel: string);
    procedure UpdateList;
    procedure setParameter(qry: TADOQuery);

    { Private declarations }
  public
    { Public declarations }
  end;

var
  rptAnalyzeBalanceMonthF: TrptAnalyzeBalanceMonthF;

implementation

uses Dm, ChooseCols, FilterClass_ADO, filter_ADO, GlobalPro, search2,
  sort2, AccBookAnalyze, FormFunctions, DBGrid2Print,
  TreeChart, Resource;

{$R *.dfm}

procedure TrptAnalyzeBalanceMonthF.UpdateList;
begin

  with qryAnalyzeTrial Do
  begin
    Active := False;

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
    // Parameters.ParamByName('DocTypeCodeFrom').Value :=
    // GetcFrom(myParams.ParamValues['DocTypeCode'], ftInteger);
    // Parameters.ParamByName('DocTypeCodeTo').Value :=
    // GetcTo(myParams.ParamValues['DocTypeCode'], ftInteger);;
    Parameters.ParamByName('DocTypeCode1_Not').Value :=
      GetcFrom(myParams.ParamValues['checked'], ftString);
    Parameters.ParamByName('DocTypeCode2_Not').Value := 0;
    Parameters.ParamByName('DocTypeCode3_Not').Value := 0;
    Parameters.ParamByName('Status1').Value :=
      GetcFrom(myParams.ParamValues['state'], ftString);
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
    MakeQry(listLevelID[0]);

    Active := true;

    LblShowLimitPlace1.Caption := '   «“  «—ÌŒ  ' +
      qryAnalyzeTrial.Parameters.ParamByName('DocDateFrom').Value +
      '   «  «—ÌŒ  ' + qryAnalyzeTrial.Parameters.ParamByName
      ('DocDateTo').Value;

  end; // with
  SetColSize(DBGrid1, 1, true);
end;

procedure TrptAnalyzeBalanceMonthF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
    try
      AddItem(DMF.adcAccounting, 'state', 'Ê÷⁄Ì  «”‰«œ', '', ftUnknown,
        dvDefaults, 'true', '', ciCheck, strLookUpStatus);

      AddItem(DMF.adcAccounting, 'checked', '«‰Ê«⁄ ”‰œ', '', ftUnknown,
        dvDefaults, 'true', '', ciCheck, strLookUpDocType, '');

      // AddItem(DMF.adcAccounting, 'DocTypeCode', '«‰Ê«⁄ ”‰œ Õ”«»œ«—Ì', '‰Ê⁄ ”‰œ',
      // ftInteger, dvMinMax, '', '', ciLookup,
      // 'SELECT DocTypeCode, DocTypeName_L1 FROM  acc.DocTypes ',
      // 'SELECT Min(DocTypeCode), Max(DocTypeCode) FROM  acc.DocTypes');

      AddItem(DMF.adcAccounting, 'SecondaryDocNo', '‘„«—Â ›—⁄Ì ”‰œ Õ”«»œ«—Ì',
        '‘„«—Â ›—⁄Ì', ftInteger, dvMinMax, '', '', ciSimple, '',
        Format(strMaxMinSecondaryDocNo, [APPBank.Year]));
      AddItem(DMF.adcAccounting, 'PrimaryDocNo', '‘„«—Â «’·Ì ”‰œ Õ”«»œ«—Ì',
        '‘„«—Â ”‰œ', ftInteger, dvMinMax, '', '', ciSimple, '',
        Format(strMaxMinPrimaryDocNo, [APPBank.Year]));
      AddItem(DMF.adcAccounting, 'DocDate', ' «—ÌŒ ”‰œÕ”«»œ«—Ì', ' «—ÌŒ',
        ftDate, dvMinMax, '', '', ciSimple, '', Format(strMaxMinDocDate,
        [APPBank.Year]));
      AddItem(DMF.adcAccounting, 'CTopicCode2', 'ﬂœ Ê ‰«„  ›’Ì·Ì 3',
        'ﬂœ„—ﬂ“Â“Ì‰Â2', ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT     CTopicCode2, CTopicName2_L1 FROM   acc.CTopics2ForUse',
        'SELECT MIN(CTopicCode2),MAX(CTopicCode2)  FROM acc.CTopics2ForUse');
      AddItem(DMF.adcAccounting, 'CTopicCode', 'ﬂœ Ê ‰«„  ›’Ì·Ì 1',
        ' ›’Ì·Ì 1', ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT   CTopicCode, CTopicName_L1 FROM   acc.CTopicsForUse ',
        'SELECT Min(CTopicCode)  , Max(CTopicCode)  FROM acc.CTopicsForUse');
      AddItem(DMF.adcAccounting, 'DetailCode', 'ﬂœ Ê ‰«„  ›’Ì·Ì', 'ﬂœ  ›’Ì·Ì',
        ftInteger, dvMinMax, '', '', ciLookup, strLookUpDetail,
        strMaxMinDetail);
      AddItem(DMF.adcAccounting, 'AccCode', 'ﬂœ Ê ‰«„ Õ”«» ', 'ﬂœ Õ”«»',
        ftLargeint, dvMinMax, '', '', ciLookup,
        'SELECT ACC.Categories.TopicCode, ACC.Categories.MoeenName_L1 FROM ACC.Categories LEFT OUTER JOIN '
        + ' ACC.CategoriesForUse ON ACC.Categories.TopicCode = ACC.CategoriesForUse.PrvTopicCode '
        + ' WHERE (ACC.CategoriesForUse.PrvTopicCode IS NULL) ',
        'SELECT min(ACC.Categories.TopicCode), max(ACC.Categories.TopicCode) FROM ACC.Categories LEFT OUTER JOIN '
        + ' ACC.CategoriesForUse ON ACC.Categories.TopicCode = ACC.CategoriesForUse.PrvTopicCode '
        + ' WHERE (ACC.CategoriesForUse.PrvTopicCode IS NULL) ');
      if gv_MultiCompany then
        AddItem(DMF.adcAccounting, 'CompanyCode', 'ﬂœ Ê ‰«„ ‘⁄»Â /‘—ﬂ ', '‘—ﬂ ',
          ftInteger, dvMinMax, '', '', ciLookup,
          'SELECT CompanyCode,CompanyName_L1 FROM  acc.Companies ',
                 'SELECT 0,999999999');
      if (Sender as TAction).Tag = 1 then
        AddItem(DMF.adcAccounting, 'Year', '„ÕœÊœ ”«· „«·Ì', '”«· „«·Ì',
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

procedure TrptAnalyzeBalanceMonthF.MakeQry(listLevel: string);
var
  i, j, k,  p, q: Integer;
  SortName: string;
begin
  firstRun := False;
  for i := 1 to 6 do
    LenAcc[i] := '0';
  for i := 1 to 3 do
    LenCompany[i] := '0';
  for i := 1 to 3 do
    LenCTopic[i] := '0';
  j := 1;
  k := 1;
  p := 1;

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
  // -------------------Õ–› «Ê·Ì‰ ÊÌ—êÊ· “«∆œ-------------------------------------------
  sqlSelectcode := StringReplace(sqlSelectcode, '+ ''_'' ', ' ',
    [rfIgnoreCase]);
  sqlSelectName := StringReplace(sqlSelectName, '+ ''_'' ', ' ',
    [rfIgnoreCase]);
  SetLength(SortName, length(SortName) - 1);
  // -------«ÌÃ«œ ” Ê‰Â«Ì  «‰ Œ«» ‘œÂ---------------------------------------------------
  with qryAnalyzeTrial do
  begin
    Active := False;
    SQL.Text := FsqlAnaliz;
    SQL.Text := StringReplace(SQL.Text, 'w_Code', sqlSelectcode,
      [rfIgnoreCase]);
    SQL.Text := StringReplace(SQL.Text, 'w_Name', sqlSelectName,
      [rfIgnoreCase]);
    // œ— ” Ê‰Â« »«Ìœ „ﬁœ«— ’›— Ã«Ìê“Ì‰ ‘Êœ DetailCode œ— ’Ê—  ⁄œ„ «‰ Œ«» ---------------
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

    // UpdateList;
    Active := true;
  end;

end;

procedure TrptAnalyzeBalanceMonthF.FormCreate(Sender: TObject);
begin
  inherited;
  FsqlAnaliz := qryAnalyzeTrial.SQL.Text;
  firstRun := true;
end;

procedure TrptAnalyzeBalanceMonthF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('DocDate') = nil then
    Close;
end;

procedure TrptAnalyzeBalanceMonthF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1, true);
end;

procedure TrptAnalyzeBalanceMonthF.FormDestroy(Sender: TObject);
begin
  inherited;
  // if  Assigned(listLevelID) then listLevelID.Free;
  if Assigned(LevelID) then
    FreeAndNil(LevelID);

  SaveColWidth(DBGrid1);
end;

procedure TrptAnalyzeBalanceMonthF.actExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TrptAnalyzeBalanceMonthF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryAnalyzeTrial);
end;

procedure TrptAnalyzeBalanceMonthF.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if not(gdSelected in State) then
  begin
    if odd(DBGrid1.DataSource.DataSet.RecNo) then
      DBGrid1.Canvas.Brush.Color := const_fixed_columns_color;
  end; // if
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TrptAnalyzeBalanceMonthF.actGhooseExecute(Sender: TObject);
var
  s: string;
begin
  inherited;
  s := ChooseColsF.GetCols(listLevelID);
  if s <> EmptyStr then
    MakeQry(s);
end;

procedure TrptAnalyzeBalanceMonthF.actRelationExecute(Sender: TObject);
var
  i: Integer;
  strTemp: string;
begin
  inherited;
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
      SQL.Text := Format('Select * From (%s) as Qry ', [SQL.Text]);
      SQL.Add(Format('Where  acccode = %s ',
        [QuotedStr(qryAnalyzeTrial.Fieldbyname('accCode').AsString)]));
      Open;
    end;
  end;
end;

procedure TrptAnalyzeBalanceMonthF.setParameter(qry: TADOQuery);
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
  // with

end;

procedure TrptAnalyzeBalanceMonthF.ppLBCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TrptAnalyzeBalanceMonthF.ppDocDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TrptAnalyzeBalanceMonthF.ppSystemVariable2GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TrptAnalyzeBalanceMonthF.ppLabel12GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := '«”‰«œ „Êﬁ  «“ ' +
    IntToStr(GetcFrom(myParams.ParamValues['SecondaryDocNo'], ftInteger)) +
    '  « ' + IntToStr(GetcTo(myParams.ParamValues['SecondaryDocNo'],
    ftInteger));

end;

procedure TrptAnalyzeBalanceMonthF.ppLabel13GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := '«“  «—ÌŒ ' + GetcFrom(myParams.ParamValues['DocDate'], ftString) +
    '  «  «—ÌŒ ' + GetcTo(myParams.ParamValues['DocDate'], ftString);
end;

procedure TrptAnalyzeBalanceMonthF.actOtherExecute(Sender: TObject);
begin
  inherited;
  popOther.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TrptAnalyzeBalanceMonthF.actprintExecute(Sender: TObject);
begin
  inherited;
  try
    qryAnalyzeTrial.DisableControls;
    InitReportFile(ppReport1, Self.Name, DBGrid1,ppDBPipeline1);
  finally
    qryAnalyzeTrial.EnableControls;
  end;
end;

procedure TrptAnalyzeBalanceMonthF.MenuItem3Click(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, 0, LblShowLimitPlace1.Caption);
end;

procedure TrptAnalyzeBalanceMonthF.MenuItem4Click(Sender: TObject);
begin
  inherited;
  TreeChartF.showChart(qryAnalyzeTrial, Self);

end;

procedure TrptAnalyzeBalanceMonthF.MenuItem5Click(Sender: TObject);
begin
  inherited;
  UpdateAllQry(Self);

end;

procedure TrptAnalyzeBalanceMonthF._actSearchExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryAnalyzeTrial);

end;

procedure TrptAnalyzeBalanceMonthF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  Text := GetPrintDate;
end;

procedure TrptAnalyzeBalanceMonthF.ppSysVarPageNoGetText(Sender: TObject;
  var Text: String);
begin
  Text := GetPageNumberString(Text)
end;

procedure TrptAnalyzeBalanceMonthF.ppLblCaptionGetText(Sender: TObject;
  var Text: String);
begin
  Text := Caption;
end;

procedure TrptAnalyzeBalanceMonthF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  Text := APPBank.CompanyName;
end;

end.
