unit rptAnalyzeCormparisonBalance;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, Grids, Vcl.DBGrids, ppCtrls, ppVar, ppPrnabl, ppClass,
  ppBands, ppCache, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd, ppReport,FaraConsts,
  SumDBGrid, Menus, ppParameter, ppDesignLayer, System.ImageList, System.Actions;

type
  TrptAnalyzeCormparisonBalanceF = class(Ttemplate2MDIF)
    DBGrid1: TDBGrid;
    srcAnalyzeTrial: TDataSource;
    qryAnalyzeTrial: TADOQuery;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    actFilter: TAction;
    qryFirstRun: TADOQuery;
    qryFirstRunLevelID: TIntegerField;
    qryFirstRunCodeLength: TWordField;
    BitBtn5: TBitBtn;
    btnactSearch: TBitBtn;
    Button1: TButton;
    actSOrt: TAction;
    actExcel: TAction;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    actRelation: TAction;
    actGhoose: TAction;
    actprint: TAction;
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    tStringField: tStringField;
    qryAnalyzeTrialAccName: tStringField;
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
    qryAnalyzeTrialMandehBed: TBCDField;
    qryAnalyzeTrialMandehbes: TBCDField;
    qryAnalyzeTrialBalanceLastYear: TBCDField;
    qryAnalyzeTrialBalanceM1: TBCDField;
    qryAnalyzeTrialBalanceM2: TBCDField;
    qryAnalyzeTrialBalanceM3: TBCDField;
    qryAnalyzeTrialBalanceM4: TBCDField;
    qryAnalyzeTrialBalanceM5: TBCDField;
    qryAnalyzeTrialBalanceM6: TBCDField;
    qryAnalyzeTrialBalanceM7: TBCDField;
    qryAnalyzeTrialBalanceM8: TBCDField;
    qryAnalyzeTrialBalanceM9: TBCDField;
    qryAnalyzeTrialBalanceM10: TBCDField;
    qryAnalyzeTrialBalanceM11: TBCDField;
    qryAnalyzeTrialBalanceM12: TBCDField;
    qryAnalyzeTrialallsuminYear: TBCDField;
    qryAnalyzeTrial_row: TLargeintField;
    qryAnalyzeTrialsumDebt: TFMTBCDField;
    qryAnalyzeTrialsumCredit: TFMTBCDField;
    qryAnalyzeTrialsumBalanceDebt: TFMTBCDField;
    qryAnalyzeTrialsumBalanceCredit: TFMTBCDField;
    qryAnalyzeTrialbes: TIntegerField;
    qryAnalyzeTrialbed: TBCDField;
    SumGrid1: TSumGrid;
    Button2: TButton;
    actOther: TAction;
    popOther: TPopupMenu;
    MenuItem3: TMenuItem;
    MenuItem5: TMenuItem;
    procedure actFilterExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actExcelExecute(Sender: TObject);
    procedure actSOrtExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actGhooseExecute(Sender: TObject);
    procedure actprintExecute(Sender: TObject);
    procedure qryAnalyzeTrialAfterOpen(DataSet: TDataSet);
    procedure actRelationExecute(Sender: TObject);
    procedure ppLBCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppDocDateGetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable2GetText(Sender: TObject; var Text: String);
    procedure ppLabel12GetText(Sender: TObject; var Text: String);
    procedure ppLabel13GetText(Sender: TObject; var Text: String);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure actOtherExecute(Sender: TObject);
  private
    // cloned: TADOQuery;
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
//    Status1, Status2: integer;
    // procedure Updateremain;

    procedure MakeQry(listLevel: string);
    procedure UpdateList;
    procedure setParameter(qry: TADOQuery);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rptAnalyzeCormparisonBalanceF: TrptAnalyzeCormparisonBalanceF;

implementation

uses Dm, ChooseCols, FilterClass_ADO, filter_ADO, GlobalPro, search2,
  sort2, AccBookAnalyze, DBGrid2Print, FormFunctions, Resource;

{$R *.dfm}

procedure TrptAnalyzeCormparisonBalanceF.UpdateList;
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
    Parameters.ParamByName('FromYearId').Value := APPBank.Year;
    Parameters.ParamByName('ToYearID').Value := APPBank.Year;
    if firstRun then
    begin
      qryFirstRun.Active := true;
      Parameters.ParamByName('LenAcc1').Value :=
        qryFirstRun.Fieldbyname('CodeLength').AsInteger;
      SetLength(listLevelID, 1);
      listLevelID[0] := qryFirstRun.Fieldbyname('LevelID').AsString;
      MakeQry(listLevelID[0]);
    end;
    Active := true;
  end; // with
  SetColSize(DBGrid1, 1, true);
end;

procedure TrptAnalyzeCormparisonBalanceF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
    try
      AddItem(DMF.adcAccounting, 'state', 'Ê÷⁄Ì  «”‰«œ', '', ftUnknown,
        dvDefaults, 'true', '', ciCheck, strLookupStatus);

      AddItem(DMF.adcAccounting, 'checked', '«‰Ê«⁄ ”‰œ', '', ftUnknown,
        dvDefaults, 'true', '', ciCheck, strLookUpDocType, strMaxMinDocType);

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
        'ﬂœ„—ﬂ“Â“Ì‰Â2', ftInteger, dvMinMax, '', '', ciLookup, strLookUpCTopic2,
        strMaxMinCTopic2);
      AddItem(DMF.adcAccounting, 'CTopicCode', 'ﬂœ Ê ‰«„  ›’Ì·Ì 1',
        ' ›’Ì·Ì 1', ftInteger, dvMinMax, '', '', ciLookup, strLookUpCtopic1,
        strMaxMinCtopic1);
      AddItem(DMF.adcAccounting, 'DetailCode', 'ﬂœ Ê ‰«„  ›’Ì·', 'ﬂœ  ›’Ì·',
        ftInteger, dvMinMax, '', '', ciLookup, strLookUpDetail,
        strMaxMinDetail);
      AddItem(DMF.adcAccounting, 'AccCode', 'ﬂœ Ê ‰«„ Õ”«» ', 'ﬂœ Õ”«»',
        ftLargeint, dvMinMax, '', '', ciLookup,
        'SELECT acc.Categories.TopicCode, acc.Categories.MoeenName_L1 FROM acc.Categories LEFT OUTER JOIN '
        + ' acc.CategoriesForUse ON acc.Categories.TopicCode = acc.CategoriesForUse.PrvTopicCode '
        + ' WHERE (acc.CategoriesForUse.PrvTopicCode IS NULL) ',
        'SELECT min(acc.Categories.TopicCode), max(acc.Categories.TopicCode) FROM acc.Categories LEFT OUTER JOIN '
        + ' acc.CategoriesForUse ON acc.Categories.TopicCode = acc.CategoriesForUse.PrvTopicCode '
        + ' WHERE (acc.CategoriesForUse.PrvTopicCode IS NULL) ');
      if gv_MultiCompany then
        AddItem(DMF.adcAccounting, 'CompanyCode', 'ﬂœ Ê ‰«„ ‘⁄»Â /‘—ﬂ ', '‘—ﬂ ',
          ftInteger, dvMinMax, '', '', ciLookup, strLookUpCompany+User.CompanieCodes,
          strMaxMinCompany);
      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateList;
      end; // if
    finally
      Free;
    end; // try

end;

procedure TrptAnalyzeCormparisonBalanceF.MakeQry(listLevel: string);
var
  i, j, k,  p, q: integer;
begin
  firstRun := False;
  i := 1;
  j := 1;
  k := 1;
  p := 1;

  sqlSelectcode := '';
  sqlSelectName := '';
  LenAcc[1] := '0';
  LenAcc[2] := '0';
  LenAcc[3] := '0';
  LenAcc[4] := '0';
  LenAcc[5] := '0';
  LenAcc[6] := '0';
  LenCompany[1] := '0';
  LenCompany[2] := '0';
  LenCompany[3] := '0';
  LenCTopic[1] := '0';
  LenCTopic[2] := '0';
  LenCTopic[3] := '0';
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
      Active := False;
      SQL.Text := 'SELECT  LevelID, TopicType, CodeLength' +
        ' FROM acc.AccTopicLevels WHERE ((TopicType BETWEEN 0 AND 2) OR TopicType = 5)'
        + ' AND LevelID=' + LevelID[q];
      Active := true;
      if LevelID[q] = '100' then
      begin
        sqlSelectcode := '+''_''+ltrim(str(isnull(acc.Details.DetailCode,0)))' +
          sqlSelectcode;
        sqlSelectName := sqlSelectName +
          '+''_''+isnull(acc.Details.DetailName_L1,'''')';
      end
      else
      begin
        case Fieldbyname('TopicType').AsInteger of
          0:
            begin
              sqlSelectcode := '+''_''+ltrim(str(isnull(Categories_' +
                IntToStr(i) + '.TopicCode,0)))' + sqlSelectcode;
              sqlSelectName := sqlSelectName + '+''_''+isnull(Categories_' +
                IntToStr(i) + '.MoeenName_L1,'''')';
              LenAcc[i] := Fieldbyname('CodeLength').AsString;
              i := i + 1;
            end;
          5:
            begin
              sqlSelectcode := '+''_''+ltrim(str(isnull(Companies_' +
                IntToStr(j) + '.CompanyCode,0)))' + sqlSelectcode;
              sqlSelectName := sqlSelectName + '+''_''+isnull(Companies_' +
                IntToStr(j) + '.CompanyName_L1,'''')';
              LenCompany[j] := Fieldbyname('CodeLength').AsString;
              j := j + 1;
            end;
          1:
            begin
              sqlSelectcode := '+''_''+ltrim(str(isnull(CenterTopics_' +
                IntToStr(k) + '.CTopicCode,0)))' + sqlSelectcode;
              sqlSelectName := sqlSelectName + '+''_''+isnull(CenterTopics_' +
                IntToStr(k) + '.CTopicName_L1,'''')';
              LenCTopic[k] := Fieldbyname('CodeLength').AsString;
              k := k + 1;
            end;
          2:
            begin
              if p = 1 then
              begin
                sqlSelectcode :=
                  '+''_''+ltrim(str(isnull(CenterTopics2_1.CTopicCode2,0)))' +
                  sqlSelectcode;
                sqlSelectName := sqlSelectName +
                  '+''_''+isnull(CenterTopics2_1.CTopicName2_L1,'''')';
                LenCTopic2_1 := Fieldbyname('CodeLength').AsString;
              end
              else
              begin
                sqlSelectcode :=
                  '+''_''+ltrim(str(isnull(CenterTopics2_2.CTopicCode2,0)))' +
                  sqlSelectcode;
                sqlSelectName := sqlSelectName +
                  '+''_''+isnull(CenterTopics2_2.CTopicName2_L1,'''')';
                LenCTopic2_2 := Fieldbyname('CodeLength').AsString;
              end;
              p := p + 1;
            end;
        end; // case
      end;
      Next;
    end; // with
  end; // for
  // -------------------Õ–› «Ê·Ì‰ ÊÌ—êÊ· “«∆œ-------------------------------------------
  sqlSelectcode := StringReplace(sqlSelectcode, '+''_''+', ' ', [rfIgnoreCase]);
  sqlSelectName := StringReplace(sqlSelectName, '+''_''+', ' ', [rfIgnoreCase]);
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
        'acc.Details.DetailCode', [rfIgnoreCase]);
      SQL.Text := SQL.Text + ',acc.Details.DetailCode, DetailName_L1';
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
    Active := true;
  end;

end;

procedure TrptAnalyzeCormparisonBalanceF.FormCreate(Sender: TObject);
begin
  inherited;
  // cloned := TADOQuery.Create(Self);
  FsqlAnaliz := qryAnalyzeTrial.SQL.Text;
  firstRun := true;
end;

procedure TrptAnalyzeCormparisonBalanceF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('DocDate') = nil then
    close;
end;

procedure TrptAnalyzeCormparisonBalanceF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1, true);
end;

procedure TrptAnalyzeCormparisonBalanceF.FormDestroy(Sender: TObject);
begin
  inherited;

  SaveColWidth(DBGrid1);
end;

procedure TrptAnalyzeCormparisonBalanceF.actExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TrptAnalyzeCormparisonBalanceF.actSOrtExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryAnalyzeTrial);
end;

procedure TrptAnalyzeCormparisonBalanceF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryAnalyzeTrial);
end;

procedure TrptAnalyzeCormparisonBalanceF.actGhooseExecute(Sender: TObject);
var
  s: string;
begin
  inherited;
  s := ChooseColsF.GetCols(listLevelID);
  if s <> '' then
  begin
    MakeQry(s);
    qryAnalyzeTrial.Open;
  end;
end;

procedure TrptAnalyzeCormparisonBalanceF.actprintExecute(Sender: TObject);
begin
  inherited;
  try
    qryAnalyzeTrial.DisableControls;
    ppReport1.PreviewFormSettings.SinglePageOnly := True;
    ppReport1.Print;
  finally
    qryAnalyzeTrial.EnableControls;
  end;
end;

procedure TrptAnalyzeCormparisonBalanceF.qryAnalyzeTrialAfterOpen
  (DataSet: TDataSet);
begin
  inherited;
  // Updateremain;
end;

procedure TrptAnalyzeCormparisonBalanceF.actRelationExecute(Sender: TObject);
var
  i: integer;
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
      close;
      SQL.Text := Format('Select * From (%s) as Qry ', [SQL.Text]);
      SQL.Add(Format('Where  acccode = %s ',
        [QuotedStr(qryAnalyzeTrial.Fieldbyname('accCode').AsString)]));
      Open;
    end;
  end;
end;

procedure TrptAnalyzeCormparisonBalanceF.setParameter(qry: TADOQuery);
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

procedure TrptAnalyzeCormparisonBalanceF.ppLBCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TrptAnalyzeCormparisonBalanceF.ppDocDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TrptAnalyzeCormparisonBalanceF.ppSystemVariable2GetText
  (Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TrptAnalyzeCormparisonBalanceF.ppLabel12GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := '«”‰«œ „Êﬁ  «“ ' +
    IntToStr(GetcFrom(myParams.ParamValues['SecondaryDocNo'], ftInteger)) +
    '  « ' + IntToStr(GetcTo(myParams.ParamValues['SecondaryDocNo'],
    ftInteger));

end;

procedure TrptAnalyzeCormparisonBalanceF.ppLabel13GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := '«“  «—ÌŒ ' + GetcFrom(myParams.ParamValues['DocDate'], ftString) +
    '  «  «—ÌŒ ' + GetcTo(myParams.ParamValues['DocDate'], ftString);
end;

// procedure TrptAnalyzeCormparisonBalanceF.Updateremain;
// var
// bes,bed,mbes,mbed: Currency ;
// i:integer;
// begin
// with qryAnalyzeTrial do begin
// try
// First;
// DisableControls;   //
// bed:=0;mbes:=0;
// bes:=0; mbed:=0;
// i:=0;
// while not eof do begin
// i:=i+1;
// bed:=bed + fieldbyname('sumDebt').AsCurrency;
// bes:=bes + fieldbyname('sumCredit').AsCurrency;
// mbed:=mbed + fieldbyname('sumBalanceDebt').AsCurrency;
// mbes:=mbes + fieldbyname('sumBalanceCredit').AsCurrency;
// edit ;
// fieldbyname('_row').AsInteger:=i;
// fieldbyname('bed').AsCurrency := bed ;
// fieldbyname('bes').AsCurrency := bes ;
// fieldbyname('MandehBed').AsCurrency := mbed ;
// fieldbyname('Mandehbes').AsCurrency := mbes ;
// post ;
// Next;
// end;//
// finally
// first;
// EnableControls;
// end;//try
// ShowMessage(fieldbyname('bed').AsString);
// end;//with
//
// end;

procedure TrptAnalyzeCormparisonBalanceF.MenuItem3Click(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, 0);
end;

procedure TrptAnalyzeCormparisonBalanceF.MenuItem5Click(Sender: TObject);
begin
  inherited;
  UpdateAllQry(Self);
end;

procedure TrptAnalyzeCormparisonBalanceF.actOtherExecute(Sender: TObject);
begin
  inherited;
  popOther.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

end.
