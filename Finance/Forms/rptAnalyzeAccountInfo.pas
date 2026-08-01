unit rptAnalyzeAccountInfo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, Grids, Vcl.DBGrids, ppCtrls, ppVar, ppPrnabl, ppClass,
  ppBands, ppCache, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd, ppReport,
  SumDBGrid, Menus, ppParameter, ppDesignLayer, System.ImageList, System.Actions;

type
  TrptAnalyzeAccountInfoF = class(Ttemplate2MDIF)
    DBGrid1: TDBGrid;
    srcAnalyzeTrial: TDataSource;
    qryAnalyzeTrial: TADOQuery;
    BitBtn1: TBitBtn;
    actFilter: TAction;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    Button1: TButton;
    actSOrt: TAction;
    actExcel: TAction;
    BitBtn4: TBitBtn;
    actRelation: TAction;
    actGhoose: TAction;
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
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
    qryMakeColumn: TADOQuery;
    CheckColumnPercent: TCheckBox;
    CheckRowPercent: TCheckBox;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Comborow2: TComboBox;
    ComboRow1: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    BitBtn7: TBitBtn;
    actPrint: TAction;
    special: TAction;
    BitBtn2: TBitBtn;
    Button2: TButton;
    actOther: TAction;
    popOther: TPopupMenu;
    MenuItem3: TMenuItem;
    MenuItem5: TMenuItem;
    SumGrid1: TSumGrid;
    procedure actFilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actSOrtExecute(Sender: TObject);
    procedure actprintExecute(Sender: TObject);
    procedure ppLBCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppDocDateGetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable2GetText(Sender: TObject; var Text: String);
    procedure ppLabel12GetText(Sender: TObject; var Text: String);
    procedure ppLabel13GetText(Sender: TObject; var Text: String);
    procedure BitBtn2Click(Sender: TObject);
    procedure specialExecute(Sender: TObject);
    procedure CheckColumnPercentClick(Sender: TObject);
    procedure CheckRowPercentClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure _actSearchExecute(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure actOtherExecute(Sender: TObject);
    procedure actExcelExecute(Sender: TObject);
  private
    // sumDebt:integer;
    // sumCredit:integer;
    // sumBalaDebt:integer;
    // sumBalaCredit:integer;
    // cloned:TADOQuery;
    // sqlSelectcode,sqlSelectName:string;
    // LevelID :TStringList;
    // LenCTopic2_1,LenCTopic2_2:string;
    // listLevelID:array of string;
    // firstRun:boolean;

    procedure MakeQry;
    procedure UpdateColumn;
    procedure UpdateList;
    // procedure setParameter(qry:TADOQuery);
    procedure visibleColumnPercent;
    procedure visibleRowPercent;
    procedure setCurrency_width;
    procedure setDisplayLabel;
    procedure setTag;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rptAnalyzeAccountInfoF: TrptAnalyzeAccountInfoF;

implementation

uses Dm, FilterClass_ADO, filter_ADO, GlobalPro, search2,
  sort2, DBGrid2Print, Resource, FormFunctions;

{$R *.dfm}

procedure TrptAnalyzeAccountInfoF.UpdateList;

begin
  // s:=GetcTo(myParams.ParamValues['checked'],ftString);
  // ts:=TStringList.Create;
  // try
  // ts.Text:=StringReplace(s,',',#13,[rfReplaceAll]);
  // param1:='-1' ;param2:='-1' ;param3:='-1' ;
  // for i:=0 to ts.Count-1 do begin
  // if i=0 then param1:= ts[0];
  // if i=1 then param2:= ts[1];
  // if i=2 then param3:= ts[2];
  // if i>2 then break
  // end;//fot
  // s:=GetcTo(myParams.ParamValues['state'],ftString);
  // ts.Text:=StringReplace(s,',',#13,[rfReplaceAll]);
  // Status1:=-1 ; Status2:=-1 ;
  // for i:=0 to ts.Count-1 do begin
  // if i=0 then Status1:=StrToInt(ts[0])-1;
  // if i=1 then Status2:=StrToInt(ts[1])-1;
  // end;//for
  // finally
  // ts.Free;
  // end;//try
  with qryMakeColumn Do
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
    Parameters.ParamByName('PrimaryDocNoFrom').Value :=
      GetcFrom(myParams.ParamValues['PrimaryDocNo'], ftInteger);
    Parameters.ParamByName('PrimaryDocNoTo').Value :=
      GetcTo(myParams.ParamValues['PrimaryDocNo'], ftInteger);
    Parameters.ParamByName('YearIDFrom').Value :=
      GetcFrom(myParams.ParamValues['Year'], ftInteger);
    Parameters.ParamByName('YearIDTo').Value :=
      GetcTo(myParams.ParamValues['Year'], ftInteger);
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
    // -----set update column
    Parameters.ParamByName('RowKind1').Value := ComboRow1.ItemIndex;
    Parameters.ParamByName('RowKind2').Value := Comborow2.ItemIndex;
    Parameters.ParamByName('ColumnKind').Value := ComboBox1.ItemIndex;
    Parameters.ParamByName('PriceKind').Value := ComboBox2.ItemIndex;

    // -----------------------
    Active := ComboRow1.ItemIndex + Comborow2.ItemIndex +
      ComboBox1.ItemIndex > -3;
  end; // with

  if qryMakeColumn.Active then
    with qryAnalyzeTrial Do
    begin
      Active := False;
      MakeQry;
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
      Parameters.ParamByName('YearIDFrom').Value :=
        GetcFrom(myParams.ParamValues['Year'], ftInteger);
      Parameters.ParamByName('YearIDTo').Value :=
        GetcTo(myParams.ParamValues['Year'], ftInteger);
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
      // -----set update column
      Parameters.ParamByName('RowKind1').Value := ComboRow1.ItemIndex;
      Parameters.ParamByName('RowKind2').Value := Comborow2.ItemIndex;
      Parameters.ParamByName('ColumnKind').Value := ComboBox1.ItemIndex;
      Parameters.ParamByName('PriceKind').Value := ComboBox2.ItemIndex;

      // ----------------------
      Active := ComboRow1.ItemIndex + Comborow2.ItemIndex +
        ComboBox1.ItemIndex > -3;

    end; // with

  if qryAnalyzeTrial.Active then
  begin
    setCurrency_width;
    visibleColumnPercent;
    visibleRowPercent;
    setTag;
    setDisplayLabel;
    DBGrid1.Columns[0].Width := 50;
    DBGrid1.Columns[1].Width := 250;
    DBGrid1.Columns[2].Width := 50;
    DBGrid1.Columns[3].Width := 250;
  end;

  if Comborow2.ItemIndex = 6 then
  begin
    DBGrid1.Columns[2].Visible := False;
    DBGrid1.Columns[3].Visible := False;
  end; // if
  SetColSize(DBGrid1, 1, True);

end;

procedure TrptAnalyzeAccountInfoF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItem(DMF.adcAccounting, 'state', 'Ê÷⁄Ì  «”‰«œ', '', ftUnknown,
        dvDefaults, 'true', '', ciCheck, strLookupStatus);

      AddItem(DMF.adcAccounting, 'checked', '«‰Ê«⁄ ”‰œ', '', ftUnknown,
        dvDefaults, 'true', '', ciCheck, strLookUpDocType, '');
      // AddItem(DMF.adcAccounting,'DocTypeCode','«‰Ê«⁄ ”‰œ Õ”«»œ«—Ì','‰Ê⁄ ”‰œ',ftInteger,dvMinMax,'','',ciLookup,'SELECT DocTypeCode, DocTypeName_L1 FROM acc.DocTypes '
      // ,'SELECT Min(DocTypeCode), Max(DocTypeCode) FROM acc.DocTypes');

      AddItem(DMF.adcAccounting, 'SecondaryDocNo', '‘„«—Â ›—⁄Ì ”‰œ Õ”«»œ«—Ì',
        '‘„«—Â ›—⁄Ì', ftInteger, dvMinMax, '', '', ciSimple, '',
        Format(strMaxMinSecondaryDocNo, [APPBank.Year]));
      AddItem(DMF.adcAccounting, 'PrimaryDocNo', '‘„«—Â «’·Ì ”‰œ Õ”«»œ«—Ì',
        '‘„«—Â ”‰œ', ftInteger, dvMinMax, '', '', ciSimple, '',
        'SELECT Min(PrimaryDocNo) , Max(PrimaryDocNo)  FROM acc.DocGroups where yearID = '
        + IntToStr(APPBank.Year));
      AddItem(DMF.adcAccounting, 'DocDate', ' «—ÌŒ ”‰œÕ”«»œ«—Ì', ' «—ÌŒ',
        ftDate, dvMinMax, '', '', ciSimple, '',
        'SELECT Min(DocDate) , Max(DocDate)  FROM acc.DocGroups where yearID = '
        + IntToStr(APPBank.Year));
      AddItem(DMF.adcAccounting, 'CTopicCode2', 'ﬂœ Ê ‰«„  ›’Ì·Ì 3',
        'ﬂœ„—ﬂ“Â“Ì‰Â2', ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT     CTopicCode2, CTopicName2_L1 FROM   acc.CTopics2ForUse',
        'SELECT MIN(CTopicCode2),MAX(CTopicCode2)  FROM acc.CTopics2ForUse');
      AddItem(DMF.adcAccounting, 'CTopicCode', 'ﬂœ Ê ‰«„  ›’Ì·Ì 1',
        ' ›’Ì·Ì 1', ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT   CTopicCode, CTopicName_L1 FROM  acc.CTopicsForUse ',
        'SELECT Min(CTopicCode)  , Max(CTopicCode) from acc.CTopicsForUse');
      AddItem(DMF.adcAccounting, 'DetailCode', 'ﬂœ Ê ‰«„  ›’Ì·Ì', 'ﬂœ  ›’Ì·Ì',
        ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT DetailCode, DetailName_L1  FROM   acc.Details ',
        'SELECT MIN((DetailCode) ),MAX((DetailCode) ) FROM acc.Details');
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
          ftInteger, dvMinMax, '', '', ciLookup,
          'SELECT CompanyCode,CompanyName_L1 FROM acc.Companies ',
           'SELECT 0,999999999');
      AddItem(DMF.adcAccounting, 'Year', '„ÕœÊœ ”«· „«·Ì', '”«· „«·Ì',
        ftInteger, dvMinMax, '', '', ciSimple, '',
        'SELECT Min(YearID),Max(YearID) FROM Util.maliYear');
      if ShowModal = mrOk then
      begin
        GetFilterString;
        SaveColWidth(DBGrid1);
        UpdateList;
      end; // if
    finally
      Free;
    end; // try
  end; // with

end;

procedure TrptAnalyzeAccountInfoF.MakeQry;
var
  sqltext: String;
begin
  sqltext := 'SELECT  RowCode1, RowName1, RowCode2, RowName2  ';
  with qryMakeColumn do
  begin
    First;
    while not eof do
    begin
      sqltext := sqltext + ' , sum (case when ColumnCode=' +
        qryMakeColumn.fieldbyname('ColumnCode').AsString +
        'then Price else 0 end) as Price' + qryMakeColumn.fieldbyname
        ('ColumnCode').AsString;
      sqltext := sqltext + ' , sum (case when ColumnCode=' +
        qryMakeColumn.fieldbyname('ColumnCode').AsString +
        'then ColumnPercent else 0 end) as ColumnPercent' +
        qryMakeColumn.fieldbyname('ColumnCode').AsString;
      sqltext := sqltext + ' , sum (case when ColumnCode=' +
        qryMakeColumn.fieldbyname('ColumnCode').AsString +
        'then RowPercent else 0 end) as RowPercent' + qryMakeColumn.fieldbyname
        ('ColumnCode').AsString;
      next;
    end; // while
  end; // with
  sqltext := sqltext + ' , RowSumPrice as TotalPrice ' +
    ' FROM acc.AnalyzeAccountInfoForUse( ' +
    ' :DocTypeCode1_Not,:DocTypeCode2_Not,:DocTypeCode3_Not, ' +
    ' :DocTypeCodeFrom,:DocTypeCodeTo, ' + ' :YearIDFrom  ,:YearIDTo , ' +
    ' :CompanyCodeFrom,:CompanyCodeTo, ' + ' :AccCodeFrom,:AccCodeTo, ' +
    ' :DetailCodeFrom,:DetailCodeTo, ' + ' :CTopicCodeFrom,:CTopicCodeTo, ' +
    ' :CTopicCode2From,:CTopicCode2To, ' +
    ' :SecondaryDocNoFrom,:SecondaryDocNoTo, ' +
    ' :PrimaryDocNoFrom,:PrimaryDocNoTo, ' + ' :DocDateFrom,:DocDateTo, ' +
    ' :Status1,:Status2, ' +
    ' :RowKind1 , :RowKind2   ,:ColumnKind , :PriceKind' +
    ' ) AnalyzeAccountInfoForUse ' +
    ' Group By   RowCode1, RowName1, RowCode2, RowName2 ,RowSumPrice ';

  qryAnalyzeTrial.SQL.Text := sqltext;

end;

procedure TrptAnalyzeAccountInfoF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('DocDate') = nil then
    close;
end;

procedure TrptAnalyzeAccountInfoF.FormResize(Sender: TObject);
begin
  inherited;
  // SetColSize(DBGrid1,1,true);
end;

procedure TrptAnalyzeAccountInfoF.FormDestroy(Sender: TObject);
begin
  inherited;
  // cloned.Free;
  SaveColWidth(DBGrid1);
end;

procedure TrptAnalyzeAccountInfoF.actSOrtExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryAnalyzeTrial);
end;

procedure TrptAnalyzeAccountInfoF.actprintExecute(Sender: TObject);
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

procedure TrptAnalyzeAccountInfoF.ppLBCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TrptAnalyzeAccountInfoF.ppDocDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TrptAnalyzeAccountInfoF.ppSystemVariable2GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TrptAnalyzeAccountInfoF.ppLabel12GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := '«”‰«œ „Êﬁ  «“ ' +
    IntToStr(GetcFrom(myParams.ParamValues['SecondaryDocNo'], ftInteger)) +
    '  « ' + IntToStr(GetcTo(myParams.ParamValues['SecondaryDocNo'],
    ftInteger));

end;

procedure TrptAnalyzeAccountInfoF.ppLabel13GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := '«“  «—ÌŒ ' + GetcFrom(myParams.ParamValues['DocDate'], ftString) +
    '  «  «—ÌŒ ' + GetcTo(myParams.ParamValues['DocDate'], ftString);
end;

procedure TrptAnalyzeAccountInfoF.UpdateColumn;
begin
  with qryMakeColumn do
  begin
    Active := False;
    Parameters.ParamByName('RowKind1').Value := ComboRow1.ItemIndex;
    Parameters.ParamByName('RowKind2').Value := Comborow2.ItemIndex;
    Parameters.ParamByName('ColumnKind').Value := ComboBox1.ItemIndex;
    Parameters.ParamByName('PriceKind').Value := ComboBox2.ItemIndex;
    Active := True;
  end; // with
  with qryAnalyzeTrial Do
  begin
    Active := False;
    MakeQry;
    Parameters.ParamByName('RowKind1').Value := ComboRow1.ItemIndex;
    Parameters.ParamByName('RowKind2').Value := Comborow2.ItemIndex;
    Parameters.ParamByName('ColumnKind').Value := ComboBox1.ItemIndex;
    Parameters.ParamByName('PriceKind').Value := ComboBox2.ItemIndex;
    Active := True;
    setCurrency_width;
    visibleColumnPercent;
    visibleRowPercent;
    setTag;
    setDisplayLabel;
  end; // with
  DBGrid1.Columns[0].Width := 50;
  DBGrid1.Columns[1].Width := 250;
  DBGrid1.Columns[2].Width := 50;
  DBGrid1.Columns[3].Width := 250;
  if Comborow2.ItemIndex = 6 then
  begin
    DBGrid1.Columns[2].Visible := False;
    DBGrid1.Columns[3].Visible := False;
  end; // if
  SetColSize(DBGrid1, 1, True);

  if qryAnalyzeTrial.FieldCount > 0 then
  begin
    if SumGrid1 = nil then
    begin
      SumGrid1 := TSumGrid.Create(Self);
      SumGrid1.Parent := Panel3;
      SumGrid1.AutoRefresh := False;
      SumGrid1.MasterGrid := DBGrid1;

    end;

    SumGrid1.Active := False;
//    SumGrid1.Active := True;
  end;

end;

procedure TrptAnalyzeAccountInfoF.BitBtn2Click(Sender: TObject);
begin
  inherited;
  if SumGrid1 = nil then
  begin
    SumGrid1 := TSumGrid.Create(Self);
    SumGrid1.Name := 'SumGrid2';
    SumGrid1.Parent := Panel3;
    SumGrid1.MasterGrid := DBGrid1;
  end;

  SaveColWidth(DBGrid1);

  UpdateColumn;
end;

procedure TrptAnalyzeAccountInfoF.visibleRowPercent;
var
  i: Integer;
begin
  if qryMakeColumn.Active then
    with qryMakeColumn do
    begin
      First;
      while not eof do
      begin
        for i := 0 to DBGrid1.Columns.Count - 1 do
          if DBGrid1.Columns[i].FieldName = 'RowPercent' +
            qryMakeColumn.fieldbyname('ColumnCode').AsString then
          begin
            qryAnalyzeTrial.fieldbyname('RowPercent' + fieldbyname('ColumnCode')
              .AsString).Tag := 3;
            DBGrid1.Columns[i].Visible := CheckRowPercent.Checked;
            break;
          end; // if
        next;
      end; // while
    end; // with
end;

procedure TrptAnalyzeAccountInfoF.visibleColumnPercent;
var
  i: Integer;
begin
  if qryMakeColumn.Active then
    with qryMakeColumn do
    begin
      First;
      while not eof do
      begin
        for i := 0 to DBGrid1.Columns.Count - 1 do
          if DBGrid1.Columns[i].FieldName = 'ColumnPercent' +
            fieldbyname('ColumnCode').AsString then
          begin
            qryAnalyzeTrial.fieldbyname('ColumnPercent' +
              fieldbyname('ColumnCode').AsString).Tag := 3;
            DBGrid1.Columns[i].Visible := CheckColumnPercent.Checked;
            break;
          end; // if
        next;
      end; // while
    end; // with
end;

procedure TrptAnalyzeAccountInfoF.specialExecute(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, 0);
end;

procedure TrptAnalyzeAccountInfoF.setCurrency_width;
var
  i, j: Integer;
begin
  j := 0;
  with qryMakeColumn do
  begin
    First;
    while not eof do
    begin
      TBCDField(qryAnalyzeTrial.fieldbyname('Price' + fieldbyname('ColumnCode')
        .AsString)).currency := True;
      qryAnalyzeTrial.fieldbyname('Price' + fieldbyname('ColumnCode')
        .AsString).Tag := 3;
      for i := j to DBGrid1.Columns.Count - 1 do
      begin
        if 'Price' + fieldbyname('ColumnCode').AsString = DBGrid1.Columns[i]
          .FieldName then
          DBGrid1.Columns[i].Width := 60;
        if 'ColumnPercent' + fieldbyname('ColumnCode')
          .AsString = DBGrid1.Columns[i].FieldName then
          DBGrid1.Columns[i].Width := 40;
        if 'RowPercent' + fieldbyname('ColumnCode').AsString = DBGrid1.Columns
          [i].FieldName then
        begin
          DBGrid1.Columns[i].Width := 40;
          j := i + 1;
          break;
        end;
      end;
      next;
    end;

    TBCDField(qryAnalyzeTrial.fieldbyname('TotalPrice')).currency := True;
  end; // with
  // SetColSize(DBGrid1,1,true);
end;

procedure TrptAnalyzeAccountInfoF.CheckColumnPercentClick(Sender: TObject);
begin
  inherited;
  visibleColumnPercent;
end;

procedure TrptAnalyzeAccountInfoF.CheckRowPercentClick(Sender: TObject);
begin
  inherited;
  visibleRowPercent;
end;

procedure TrptAnalyzeAccountInfoF.FormCreate(Sender: TObject);
begin
  inherited;
  CheckColumnPercent.Checked := True;
  CheckRowPercent.Checked := True;
end;

procedure TrptAnalyzeAccountInfoF.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  // with DBGrid1 do begin
  // DBGrid1.Columns[i].FieldName
  // if pos('Price',Column.FieldName)>0 then Column.Width:=40;
  // if pos('ColumnPercent',Column.FieldName)>0 then Column.Width:=40;
  // if pos('RowPercent',Column.FieldName)>0 then Column.Width:=40;
  // end;
end;

procedure TrptAnalyzeAccountInfoF.setTag;
begin
  with qryAnalyzeTrial do
  begin
    fieldbyname('RowCode1').Tag := 3;
    fieldbyname('RowName1').Tag := 3;
    fieldbyname('RowName1').Tag := 3;
    fieldbyname('RowCode2').Tag := 3;
    fieldbyname('RowName2').Tag := 3;
    fieldbyname('TotalPrice').Tag := 3;
  end;
end;

procedure TrptAnalyzeAccountInfoF.setDisplayLabel;
begin
  with qryMakeColumn do
  begin
    First;
    with qryAnalyzeTrial do
    begin
      fieldbyname('RowCode1').DisplayLabel := 'ﬂœ ' + ComboRow1.Items
        [ComboRow1.ItemIndex];
      fieldbyname('RowName1').DisplayLabel := '⁄‰Ê«‰ ' + ComboRow1.Items
        [ComboRow1.ItemIndex];
      fieldbyname('RowCode2').DisplayLabel := 'ﬂœ ' + Comborow2.Items
        [Comborow2.ItemIndex];
      fieldbyname('RowName2').DisplayLabel := '⁄‰Ê«‰ ' + Comborow2.Items
        [Comborow2.ItemIndex];
      fieldbyname('TotalPrice').DisplayLabel := 'Ã„⁄ ﬂ·';
      while not qryMakeColumn.eof do
      begin
        fieldbyname('Price' + qryMakeColumn.fieldbyname('ColumnCode').AsString)
          .DisplayLabel := '„»·€ ' + qryMakeColumn.fieldbyname
          ('columnName').AsString;
        fieldbyname('ColumnPercent' + qryMakeColumn.fieldbyname('ColumnCode')
          .AsString).DisplayLabel := '”Â„ ” Ê‰Ì ' + qryMakeColumn.fieldbyname
          ('columnName').AsString;
        fieldbyname('rowPercent' + qryMakeColumn.fieldbyname('ColumnCode')
          .AsString).DisplayLabel := '”Â„ ”ÿ—Ì ' + qryMakeColumn.fieldbyname
          ('columnName').AsString;
        qryMakeColumn.next;
      end; // while
    end;
  end;
end;

procedure TrptAnalyzeAccountInfoF._actSearchExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryAnalyzeTrial);
end;

procedure TrptAnalyzeAccountInfoF.MenuItem3Click(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, 0);
end;

procedure TrptAnalyzeAccountInfoF.MenuItem5Click(Sender: TObject);
begin
  inherited;
  qryAnalyzeTrial.Requery;
end;

procedure TrptAnalyzeAccountInfoF.actOtherExecute(Sender: TObject);
begin
  inherited;
  popOther.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TrptAnalyzeAccountInfoF.actExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

end.
