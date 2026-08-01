unit AccBookAnalyze;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, Grids, Vcl.DBGrids, DBCtrls, Mask, ppModule, raCodMod,
  ppCtrls, ppBands, ppReport, ppStrtch, ppSubRpt, ppVar, ppPrnabl, ppClass,
  ppCache, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd,
  Menus, SumDBGrid, ppTypes, ppParameter, Math, ppDesignLayer, System.ImageList,
  System.Actions, AccFunctions, Filter_ADO_Const, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  CedarDbGrid;

type
  TAccBookAnalyzeF = class(Ttemplate2MDIF)
    src_Doc: TDataSource;
    src_AccCode: TDataSource;
    actFilter: TAction;
    BitBtn5: TBitBtn;
    btnSearch_: TBitBtn;
    BitBtn4: TBitBtn;
    btnPrint: TBitBtn;
    BitBtn8: TBitBtn;
    actSendExcel: TAction;
    actSort: TAction;
    BitBtn3: TBitBtn;
    actPrint: TAction;
    actchoose: TAction;
    qryFirstRun: TADOQuery;
    qryFirstRunLevelID: TIntegerField;
    qryFirstRunCodeLength: TWordField;
    DBNavigator2: TDBNavigator;
    Label2: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    qry_doc: TADOQuery;
    qry_docSecondaryDocNo: TIntegerField;
    qry_docPrimaryDocNo: TIntegerField;
    qry_docDocDate: TStringField;
    qry_docComment_L1: TStringField;
    qry_docCredit: TFMTBCDField;
    qry_docRunningBalance: TBCDField;
    qry_docAidDocdate: TStringField;
    qry_docAidAmount: TFloatField;
    BitBtn2: TBitBtn;
    qry_AccCode: TADOQuery;
    qry_AccCodeaccCode: TStringField;
    qry_AccCodeaccName: TStringField;
    qry_AccCodeTopicCode1: TLargeintField;
    qry_AccCodeTopicCode3: TLargeintField;
    qry_AccCodeTopicCode4: TLargeintField;
    qry_AccCodeTopicCode5: TLargeintField;
    qry_AccCodeTopicCode6: TLargeintField;
    qry_AccCodeTopicCode2: TLargeintField;
    qry_AccCodeMoeenName1: TStringField;
    qry_AccCodeMoeenName2: TStringField;
    qry_AccCodeMoeenName3: TStringField;
    qry_AccCodeMoeenName4: TStringField;
    qry_AccCodeMoeenName5: TStringField;
    qry_AccCodeMoeenName6: TStringField;
    qry_AccCodeCTopicCode1: TIntegerField;
    qry_AccCodeCTopicCode2: TIntegerField;
    qry_AccCodeCTopicCode3: TIntegerField;
    qry_AccCodeCTopicName1: TStringField;
    qry_AccCodeCTopicName2: TStringField;
    qry_AccCodeCTopicName3: TStringField;
    qry_AccCodeCTopicCode2_1: TIntegerField;
    qry_AccCodeCTopicCode2_2: TIntegerField;
    qry_AccCodeCTopicName2_1: TStringField;
    qry_AccCodeCTopicName2_2: TStringField;
    qry_AccCodeCompanyCode1: TIntegerField;
    qry_AccCodeCompanyCode2: TIntegerField;
    qry_AccCodeCompanyCode3: TIntegerField;
    qry_AccCodeCompanyName1: TStringField;
    qry_AccCodeCompanyName2: TStringField;
    qry_AccCodeCompanyName3: TStringField;
    qry_AccCodeDetailCode: TIntegerField;
    qrySearch: TADOQuery;
    qry_doc_row: TIntegerField;
    BitBtn1: TBitBtn;
    ppReport1: TppReport;
    actShow: TAction;
    qry_docserial: TIntegerField;
    pop4Print: TPopupMenu;
    N11: TMenuItem;
    pop2: TMenuItem;
    ppDBPipeline1: TppDBPipeline;
    ppDBPipeline2: TppDBPipeline;
    Label1: TLabel;
    qry_docid: TIntegerField;
    N1: TMenuItem;
    BitBtn7: TBitBtn;
    actOther: TAction;
    popOther: TPopupMenu;
    MenuItem1: TMenuItem;
    N3: TMenuItem;
    actFilterForm: TAction;
    mniFilterForm: TMenuItem;
    qry_docYearID: TIntegerField;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    qry_docCompanyCode: TIntegerField;
    qry_docAidDocNo: TFMTBCDField;
    qry_docCurrencyType: TIntegerField;
    qry_docCurrenciesName: TStringField;
    qry_docCurrencyDebit: TFMTBCDField;
    qry_docCurrencyCredit: TFMTBCDField;
    qry_docRunningCurrencyBalance: TFMTBCDField;
    DBGrid1: TCedarDbgrid;
    procedure FormCreate(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure qry_AccCodeAfterScroll(DataSet: TDataSet);
    procedure BitBtn2Click(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSendExcelExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actchooseExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure actShowExecute(Sender: TObject);
    procedure ppLblSeconNo_DocNoGetText(Sender: TObject; var Text: String);
    procedure ppLabel11GetText(Sender: TObject; var Text: String);
    procedure ppLblDateGetText(Sender: TObject; var Text: String);
    procedure N11Click(Sender: TObject);
    procedure pop2Click(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure actOtherExecute(Sender: TObject);
    procedure ppDBCalcnum2alphabetGetText(Sender: TObject; var Text: string);
    procedure qry_AccCodeBeforeOpen(DataSet: TDataSet);
    procedure qry_docAfterOpen(DataSet: TDataSet);

  private
    FSqlAcc: string;
    FSqlDoc: string;
    CountID: integer;
    LevelID: TStringList;
    listLevelID: array of string;
    ShowFilter: boolean;
    firstRun: boolean;
    sqlSelectcode, sqlSelectName: string;
    LenAcc: array [1 .. 6] of string;
    LenCompany: array [1 .. 3] of string;
    LenCTopic: array [1 .. 3] of string;
    LenCTopic2_1, LenCTopic2_2: string;

//    procedure Updateremain;
    procedure UpdateList;
    /// function CalcSumFileds(FiledName: String): Currency;
    // procedure Print(FileName: String);
    { Private declarations }
  public
    procedure MakeQry(listLevel: string);

    { Public declarations }
  end;

var
  AccBookAnalyzeF: TAccBookAnalyzeF;

implementation

uses Dm, GlobalPro, FilterClass_ADO, filter_ADO,
  search2, sort2, ChooseCols,
  searchCode_L1_L2, Document, DBGrid2Print, Resource, HelpShow, FormFunctions,
  FaraConsts;
{$R *.dfm}

procedure TAccBookAnalyzeF.MakeQry(listLevel: string);
var
  i, j, k, p, q: integer;
begin
  firstRun := false;
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
  CountID := LevelID.Count;
  SetLength(listLevelID, LevelID.Count);
  for q := 0 to LevelID.Count - 1 do
  begin
    listLevelID[q] := LevelID[q];
    With Dmf.qry_Temp do
    begin
      Active := false;
      SQL.Text := 'SELECT  LevelID, TopicType, CodeLength' +
        ' FROM acc.AccTopicLevels WHERE ((TopicType BETWEEN 0 AND 2) OR TopicType = 5)'
        + ' AND LevelID=' + LevelID[q];
      Active := true;
      if LevelID[q] = '100' then
      begin
        sqlSelectcode := '+''_''+ltrim(str(isnull(acc.Details.DetailCode,0)))' +
          sqlSelectcode;
        sqlSelectName := sqlSelectName + '+''_''+isnull(DetailName_L1,'''')';
      end
      else
      begin
        case FieldByName('TopicType').AsInteger of
          0:
            begin
              sqlSelectcode := '+''_''+ltrim(str(isnull(Categories_' +
                IntToStr(i) + '.TopicCode,0)))' + sqlSelectcode;
              sqlSelectName := sqlSelectName + '+''_''+isnull(Categories_' +
                IntToStr(i) + '.MoeenName_L1,'''')';
              LenAcc[i] := FieldByName('CodeLength').AsString;
              i := i + 1;
            end;
          5:
            begin
              sqlSelectcode := '+''_''+ltrim(str(isnull(Companies_' +
                IntToStr(j) + '.CompanyCode,0)))' + sqlSelectcode;
              sqlSelectName := sqlSelectName + '+''_''+isnull(Companies_' +
                IntToStr(j) + '.CompanyName_L1,'''')';
              LenCompany[j] := FieldByName('CodeLength').AsString;
              j := j + 1;
            end;
          1:
            begin
              sqlSelectcode := '+''_''+ltrim(str(isnull(CenterTopics_' +
                IntToStr(k) + '.CTopicCode,0)))' + sqlSelectcode;
              sqlSelectName := sqlSelectName + '+''_''+isnull(CenterTopics_' +
                IntToStr(k) + '.CTopicName_L1,'''')';
              LenCTopic[k] := FieldByName('CodeLength').AsString;
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
                LenCTopic2_1 := FieldByName('CodeLength').AsString;
              end
              else
              begin
                sqlSelectcode :=
                  '+''_''+ltrim(str(isnull(CenterTopics2_2.CTopicCode2,0)))' +
                  sqlSelectcode;
                sqlSelectName := sqlSelectName +
                  '+''_''+isnull(CenterTopics2_2.CTopicName2_L1,'''')';
                LenCTopic2_2 := FieldByName('CodeLength').AsString;
              end;
              p := p + 1;
            end;
        end; // case
      end;
      Next;
    end; // with
  end; // for
  // -------------------حذف اولين ويرگول زائد-------------------------------------------
  sqlSelectcode := StringReplace(sqlSelectcode, '+''_''+', ' ', [rfIgnoreCase]);
  sqlSelectName := StringReplace(sqlSelectName, '+''_''+', ' ', [rfIgnoreCase]);
  // -------ايجاد ستونهاي انتخاب شده---------------------------------------------------
  with qry_AccCode do
  begin
    Active := false;
    SQL.Text := FSqlAcc;
    SQL.Text := StringReplace(SQL.Text, 'w_Code', sqlSelectcode,
      [rfReplaceAll]);
    SQL.Text := StringReplace(SQL.Text, 'w_Name', sqlSelectName,
      [rfIgnoreCase]);
    if Pos('100', listLevel) > 0 then
    begin
      SQL.Text := SQL.Text + ', acc.Details.DetailName_L1';
      SQL.Text := StringReplace(SQL.Text, ':LenDetailCode', '15',
        [rfReplaceAll]);
    end;
    for i := 1 to 6 do
      SQL.Text := StringReplace(SQL.Text, ':LenAcc' + IntToStr(i), LenAcc[i],
        [rfReplaceAll]);
    for i := 1 to 3 do
      SQL.Text := StringReplace(SQL.Text, ':LenCompany' + IntToStr(i),
        LenCompany[i], [rfReplaceAll]);
    for i := 1 to 3 do
      SQL.Text := StringReplace(SQL.Text, ':LenCTopic_' + IntToStr(i),
        LenCTopic[i], [rfReplaceAll]);

    SQL.Text := StringReplace(SQL.Text, ':LenCTopic2_1', LenCTopic2_1,
      [rfReplaceAll]);
    SQL.Text := StringReplace(SQL.Text, ':LenCTopic2_2', LenCTopic2_2,
      [rfReplaceAll]);

  end;
  with qry_doc do
  begin
    Active := false;
    SQL.Text := FSqlDoc;
    for i := 1 to 6 do
      SQL.Text := StringReplace(SQL.Text, ':LenAcc' + IntToStr(i), LenAcc[i],
        [rfReplaceAll]);
    for i := 1 to 3 do
      SQL.Text := StringReplace(SQL.Text, ':LenCompany' + IntToStr(i),
        LenCompany[i], [rfReplaceAll]);
    for i := 1 to 3 do
      SQL.Text := StringReplace(SQL.Text, ':LenCTopic_' + IntToStr(i),
        LenCTopic[i], [rfReplaceAll]);
    SQL.Text := StringReplace(SQL.Text, ':LenCTopic2_1', LenCTopic2_1,
      [rfReplaceAll]);
    SQL.Text := StringReplace(SQL.Text, ':LenCTopic2_2', LenCTopic2_2,
      [rfReplaceAll]);
    SQL.Text := StringReplace(SQL.Text, ':FromYearID', IntToStr(APPBank.Year),
      [rfReplaceAll]);
    SQL.Text := StringReplace(SQL.Text, ':ToYearID', IntToStr(APPBank.Year),
      [rfReplaceAll]);
  end;
  UpdateList;
end;

procedure TAccBookAnalyzeF.UpdateList;
begin
  if MyParams.FindParam('DocDate') = nil then
  begin
    qry_AccCode.Active := true;
    Exit;
  end;

  with qry_doc Do
  begin
    Active := false;
    SetArzParameters(qry_doc, MyParams);
    Parameters.ParamByName('DocDateFrom').Value :=
      GetcFrom(MyParams.ParamValues['DocDate'], ftString);
    Parameters.ParamByName('DocDateTo').Value :=
      GetcTo(MyParams.ParamValues['DocDate'], ftString);
    Parameters.ParamByName('PrimaryDocNoFrom').Value :=
      GetcFrom(MyParams.ParamValues['PrimaryDocNo'], ftInteger);
    Parameters.ParamByName('PrimaryDocNoTo').Value :=
      GetcTo(MyParams.ParamValues['PrimaryDocNo'], ftInteger);
    Parameters.ParamByName('SecondaryDocNoFrom').Value :=
      GetcFrom(MyParams.ParamValues['SecondaryDocNo'], ftInteger);
    Parameters.ParamByName('SecondaryDocNoTo').Value :=
      GetcTo(MyParams.ParamValues['SecondaryDocNo'], ftInteger);
    // Parameters.ParamByName('DocTypeCodeFrom').Value :=
    // GetcFrom(MyParams.ParamValues['DocTypeCode'], ftInteger);
    // Parameters.ParamByName('DocTypeCodeTo').Value :=
    // GetcTo(MyParams.ParamValues['DocTypeCode'], ftInteger);;
    Parameters.ParamByName('DocTypeCode1_Not').Value :=
      GetcFrom(MyParams.ParamValues['checked'], ftString);;
    Parameters.ParamByName('DocTypeCode2_Not').Value := 0;
    Parameters.ParamByName('DocTypeCode3_Not').Value := 0;
    Parameters.ParamByName('Status1').Value :=
      GetcFrom(MyParams.ParamValues['state'], ftString);;
    Parameters.ParamByName('Status2').Value := 0;

    if gv_MultiCompany then
    begin
      Parameters.ParamByName('CompanyCodeFrom').Value :=
        GetcFrom(MyParams.ParamValues['CompanyCode'], ftInteger);
      Parameters.ParamByName('CompanyCodeTo').Value :=
        GetcTo(MyParams.ParamValues['CompanyCode'], ftInteger);
    end;
    SetCompanyFilterinLogin(Parameters);

    Parameters.ParamByName('TopicCodeFrom').Value :=
      GetcFrom(MyParams.ParamValues['TopicCode'], ftInteger);
    Parameters.ParamByName('TopicCodeTo').Value :=
      GetcTo(MyParams.ParamValues['TopicCode'], ftInteger);
    Parameters.ParamByName('CTopicCodeFrom').Value :=
      GetcFrom(MyParams.ParamValues['CTopicCode'], ftInteger);
    Parameters.ParamByName('CTopicCodeTo').Value :=
      GetcTo(MyParams.ParamValues['CTopicCode'], ftInteger);
    Parameters.ParamByName('CTopicCode2From').Value :=
      GetcFrom(MyParams.ParamValues['CTopicCode2'], ftInteger);
    Parameters.ParamByName('CTopicCode2To').Value :=
      GetcTo(MyParams.ParamValues['CTopicCode2'], ftInteger);
    Parameters.ParamByName('DetailCodeFrom').Value :=
      GetcFrom(MyParams.ParamValues['DetailCode'], ftInteger);
    Parameters.ParamByName('DetailCodeTo').Value :=
      GetcTo(MyParams.ParamValues['DetailCode'], ftInteger);
    Parameters.ParamByName('FromYearId').Value := APPBank.Year;
    Parameters.ParamByName('ToYearId').Value := APPBank.Year;
    if MyParams.FindParam('Year') <> nil then
    begin
      Parameters.ParamByName('FromYearID').Value :=
        GetcFrom(MyParams.ParamValues['Year'], ftInteger);
      Parameters.ParamByName('ToYearID').Value :=
        GetcTo(MyParams.ParamValues['Year'], ftInteger);
    end;
    if firstRun then
    begin
      qryFirstRun.Active := true;
      Parameters.ParamByName('LenAcc1').Value :=
        qryFirstRun.FieldByName('CodeLength').AsInteger;
    end;
  end; // with
  with qry_AccCode Do
  begin
    Active := false;
    SetArzParameters(qry_AccCode, MyParams);

    Parameters.ParamByName('UserAdmin').Value := ifthen(User.PowerUser, 1, 0);
    Parameters.ParamByName('UserID').Value := User.id;

    Parameters.ParamByName('DocDateFrom').Value :=
      GetcFrom(MyParams.ParamValues['DocDate'], ftString);
    Parameters.ParamByName('DocDateTo').Value :=
      GetcTo(MyParams.ParamValues['DocDate'], ftString);
    Parameters.ParamByName('PrimaryDocNoFrom').Value :=
      GetcFrom(MyParams.ParamValues['PrimaryDocNo'], ftInteger);
    Parameters.ParamByName('PrimaryDocNoTo').Value :=
      GetcTo(MyParams.ParamValues['PrimaryDocNo'], ftInteger);
    Parameters.ParamByName('SecondaryDocNoFrom').Value :=
      GetcFrom(MyParams.ParamValues['SecondaryDocNo'], ftInteger);
    Parameters.ParamByName('SecondaryDocNoTo').Value :=
      GetcTo(MyParams.ParamValues['SecondaryDocNo'], ftInteger);
    // Parameters.ParamByName('DocTypeCodeFrom').Value :=
    // GetcFrom(MyParams.ParamValues['DocTypeCode'], ftInteger);
    // Parameters.ParamByName('DocTypeCodeTo').Value :=
    // GetcTo(MyParams.ParamValues['DocTypeCode'], ftInteger);;
    Parameters.ParamByName('DocTypeCode1_Not').Value :=
      GetcFrom(MyParams.ParamValues['checked'], ftString);;
    Parameters.ParamByName('DocTypeCode2_Not').Value := 0;
    Parameters.ParamByName('DocTypeCode3_Not').Value := 0;
    Parameters.ParamByName('Status1').Value :=
      GetcFrom(MyParams.ParamValues['state'], ftString);;
    Parameters.ParamByName('Status2').Value := 0;

    Parameters.ParamByName('FromYearId').Value := APPBank.Year;
    Parameters.ParamByName('ToYearId').Value := APPBank.Year;
    if MyParams.FindParam('Year') <> nil then
    begin
      Parameters.ParamByName('FromYearID').Value :=
        GetcFrom(MyParams.ParamValues['Year'], ftInteger);
      Parameters.ParamByName('ToYearID').Value :=
        GetcTo(MyParams.ParamValues['Year'], ftInteger);
    end;

    if gv_MultiCompany then
    begin
      Parameters.ParamByName('CompanyCodeFrom').Value :=
        GetcFrom(MyParams.ParamValues['CompanyCode'], ftInteger);
      Parameters.ParamByName('CompanyCodeTo').Value :=
        GetcTo(MyParams.ParamValues['CompanyCode'], ftInteger);
    end;
    SetCompanyFilterinLogin(Parameters);
    Parameters.ParamByName('TopicCodeFrom').Value :=
      GetcFrom(MyParams.ParamValues['TopicCode'], ftInteger);
    Parameters.ParamByName('TopicCodeTo').Value :=
      GetcTo(MyParams.ParamValues['TopicCode'], ftInteger);
    Parameters.ParamByName('CTopicCodeFrom').Value :=
      GetcFrom(MyParams.ParamValues['CTopicCode'], ftInteger);
    Parameters.ParamByName('CTopicCodeTo').Value :=
      GetcTo(MyParams.ParamValues['CTopicCode'], ftInteger);
    Parameters.ParamByName('CTopicCode2From').Value :=
      GetcFrom(MyParams.ParamValues['CTopicCode2'], ftInteger);
    Parameters.ParamByName('CTopicCode2To').Value :=
      GetcTo(MyParams.ParamValues['CTopicCode2'], ftInteger);
    Parameters.ParamByName('DetailCodeFrom').Value :=
      GetcFrom(MyParams.ParamValues['DetailCode'], ftInteger);
    Parameters.ParamByName('DetailCodeTo').Value :=
      GetcTo(MyParams.ParamValues['DetailCode'], ftInteger);
    if firstRun then
    begin
      Parameters.ParamByName('LenAcc1').Value :=
        qryFirstRun.FieldByName('CodeLength').AsInteger;
      SetLength(listLevelID, 1);
      listLevelID[0] := qryFirstRun.FieldByName('LevelID').AsString;
      MakeQry(listLevelID[0]);
    end;
    Active := true;
  end; // with

end;

procedure TAccBookAnalyzeF.FormCreate(Sender: TObject);
begin
  inherited;
  firstRun := false;
  ShowFilter := var_glb_Boolean;
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
  FSqlAcc := qry_AccCode.SQL.Text;
  FSqlDoc := qry_doc.SQL.Text;
  // mGrid1.SumCurrentRecord := opta.SumBook;
end;

//procedure TAccBookAnalyzeF.Updateremain;
//var
//  c, bes, bed: Currency;
//  amount, i: integer;
//begin
//  with qry_doc do
//    try
//      First;
//      DisableControls;
//      c := 0;
//      i := 0;
//      bed := 0;
//      bes := 0;
//      amount := 0;
//      while not eof do
//      begin
//        amount := amount + FieldByName('AidAmount').AsInteger;
//        c := c + FieldByName('Balance').AsCurrency;
//        bed := bed + FieldByName('Debt').AsCurrency;
//        bes := bes + FieldByName('Credit').AsCurrency;
//        i := i + 1;
//        edit;
//        FieldByName('row').AsInteger := i;
//        FieldByName('Amount').AsInteger := amount;
//        FieldByName('calcuBalance').AsCurrency := c;
//        FieldByName('bed').AsCurrency := bed;
//        FieldByName('bes').AsCurrency := bes;
//        post;
//        Next;
//      end; //
//    finally
//      First;
//      EnableControls;
//    end; // try
//
//end;

procedure TAccBookAnalyzeF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, MyParams) do
    try

      AddItemFilter(GetFilter, TFilterCurrencies);
      AddItemFilter(GetFilter, TFilterCurrencyKind);

      AddItem(Dmf.adcAccounting, 'state', 'وضعيت اسناد', '', ftUnknown,
        dvDefaults, 'true', '', ciCheck, strLookupStatus);
      AddItem(Dmf.adcAccounting, 'checked', 'انواع سند', '', ftUnknown,
        dvDefaults, 'true', '', ciCheck,
        'SELECT DocTypeCode, DocTypeName_L1 FROM acc.DocTypes ', '');
      // AddItem(Dmf.adcAccounting, 'DocTypeCode', 'انواع سند حسابداري', 'نوع سند',
      // ftInteger, dvMinMax, '', '', ciLookup,
      // 'SELECT DocTypeCode, DocTypeName_L1 FROM acc.DocTypes ',
      // 'SELECT Min(DocTypeCode), Max(DocTypeCode) FROM acc.DocTypes');
      AddItem(Dmf.adcAccounting, 'SecondaryDocNo', 'شماره فرعي سند حسابداري',
        'شماره فرعي', ftInteger, dvMinMax, '', '', ciSimple, '',
        Format(strMaxMinSecondaryDocNo, [APPBank.Year]));
      AddItem(Dmf.adcAccounting, 'PrimaryDocNo', 'شماره اصلي سند حسابداري',
        'شماره سند', ftInteger, dvMinMax, '', '', ciSimple, '',
        Format(strMaxMinPrimaryDocNo, [APPBank.Year]));
      AddItem(Dmf.adcAccounting, 'DocDate', 'تاريخ سندحسابداري', 'تاريخ',
        ftDate, dvMinMax, '', '', ciSimple, '', Format(strMaxMinDocDate,
        [APPBank.Year]));
      AddItem(Dmf.adcAccounting, 'CTopicCode2', 'كد و نام حساب تفصیلی 3',
        'حساب تفصیلی 3', ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT     CTopicCode2, CTopicName2_L1 FROM   acc.CTopics2ForUse',
        'SELECT MIN(CTopicCode2),MAX(CTopicCode2)  FROM acc.CTopics2ForUse');
      AddItem(Dmf.adcAccounting, 'CTopicCode', 'كد و نام حساب تفصیلی 2',
        'حساب تفصیلی 2', ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT  CTopicCode, CTopicName_L1 FROM  acc.CTopicsForUse',
        'SELECT Min(CTopicCode)  , Max(CTopicCode)  FROM  acc.CTopicsForUse');
      AddItem(Dmf.adcAccounting, 'DetailCode', 'كد و نام حساب تفصیلی 1',
        'حساب تفصیلی 1', ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT DetailCode, DetailName_L1  FROM   acc.Details ',
        'SELECT MIN((DetailCode) ),MAX((DetailCode) ) FROM acc.Details');
      AddItem(Dmf.adcAccounting, 'TopicCode', 'كد و نام حساب ', 'كد حساب',
        ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT acc.Categories.TopicCode, acc.Categories.MoeenName_L1 FROM acc.Categories LEFT OUTER JOIN '
        + ' acc.CategoriesForUse ON acc.Categories.TopicCode = acc.CategoriesForUse.PrvTopicCode '
        + ' WHERE (acc.CategoriesForUse.PrvTopicCode IS NULL) ',
        'SELECT min(acc.Categories.TopicCode), max(acc.Categories.TopicCode) FROM acc.Categories LEFT OUTER JOIN '
        + ' acc.CategoriesForUse ON acc.Categories.TopicCode = acc.CategoriesForUse.PrvTopicCode '
        + ' WHERE (acc.CategoriesForUse.PrvTopicCode IS NULL) ');

      if gv_MultiCompany then
        AddItem(Dmf.adcAccounting, 'CompanyCode', 'كد و نام شعبه /شركت', 'شركت',
          ftInteger, dvMinMax, '', '', ciLookup,
          'SELECT CompanyCode,CompanyName_L1 FROM acc.Companies ',
          'SELECT 0,999999999');
      if (Sender as TAction).Tag = 1 then
        AddItem(Dmf.adcAccounting, 'Year', 'محدود سال مالي', 'سال مالي',
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

procedure TAccBookAnalyzeF.qry_AccCodeAfterScroll(DataSet: TDataSet);
var
  i, j, k, id: integer;
begin
  inherited;
  i := 1;
  j := 1;
  k := 1;
  with qry_doc do
  begin
    Active := false;
    Parameters.ParamByName('TopicCode1From').Value :=
      qry_AccCodeTopicCode1.AsInteger;
    Parameters.ParamByName('TopicCode1To').Value :=
      qry_AccCodeTopicCode1.AsInteger;

    if not(firstRun) then
      for id := 0 to CountID - 1 do
        case StrToInt(listLevelID[id]) of
          1, 2, 3, 4, 5, 6:
            begin
              Parameters.ParamByName('TopicCode' + IntToStr(i) + 'FROM').Value
                := qry_AccCode.FieldByName('TopicCode' + IntToStr(i)).AsInteger;
              Parameters.ParamByName('TopicCode' + IntToStr(i) + 'to').Value :=
                qry_AccCode.FieldByName('TopicCode' + IntToStr(i)).AsInteger;
              i := i + 1;
            end;
          51, 52, 53:
            begin
              Parameters.ParamByName('CompanyCode' + IntToStr(j) + 'from').Value
                := qry_AccCode.FieldByName('CompanyCode' + IntToStr(j))
                .AsInteger;
              Parameters.ParamByName('CompanyCode' + IntToStr(j) + 'to').Value
                := qry_AccCode.FieldByName('CompanyCode' + IntToStr(j))
                .AsInteger;
              j := j + 1;
            end;
          61, 62, 63:
            begin
              Parameters.ParamByName('CTopicCode_' + IntToStr(k) + 'from').Value
                := qry_AccCode.FieldByName('CTopicCode' + IntToStr(k))
                .AsInteger;
              Parameters.ParamByName('CTopicCode_' + IntToStr(k) + 'to').Value
                := qry_AccCode.FieldByName('CTopicCode' + IntToStr(k))
                .AsInteger;
              k := k + 1;
            end;
          71:
            begin
              Parameters.ParamByName('CTopicCode2_1From').Value :=
                qry_AccCode.FieldByName('CTopicCode2_1').AsInteger;
              Parameters.ParamByName('CTopicCode2_1to').Value :=
                qry_AccCode.FieldByName('CTopicCode2_1').AsInteger;
            end;
          72:
            begin
              Parameters.ParamByName('CTopicCode2_2From').Value :=
                qry_AccCode.FieldByName('CTopicCode2_2').AsInteger;
              Parameters.ParamByName('CTopicCode2_2to').Value :=
                qry_AccCode.FieldByName('CTopicCode2_2').AsInteger;
            end;
          100:
            begin
              Parameters.ParamByName('DetailCode1From').Value :=
                qry_AccCode.FieldByName('DetailCode').AsInteger;
              Parameters.ParamByName('DetailCode1to').Value :=
                qry_AccCode.FieldByName('DetailCode').AsInteger;
            end;
        end; // case
    Active := true;
  end; // with
//  Updateremain;
end;

procedure TAccBookAnalyzeF.qry_AccCodeBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  qry_AccCode.Parameters.ParamByName('UserAdmin').Value :=
    ifthen(User.PowerUser, 1, 0);
  qry_AccCode.Parameters.ParamByName('UserID').Value := User.id;

end;

procedure TAccBookAnalyzeF.qry_docAfterOpen(DataSet: TDataSet);
begin
  inherited;
  DBGridCurrencyKind(DBGrid1, MyParams,qry_Doc)
end;

procedure TAccBookAnalyzeF.BitBtn2Click(Sender: TObject);
var
  s: boolean;
  Results: array [0 .. 1] of String;
  Txt: wideString;
  i: integer;
begin
  inherited;
  Txt := qrySearch.SQL.Text;
  if firstRun then
  begin
    Txt := StringReplace(Txt, 'w_accCode', 'str(Categories_1.TopicCode)',
      [rfReplaceAll]);
    Txt := StringReplace(Txt, 'w_accName', 'Categories_1.MoeenName_L1',
      [rfIgnoreCase]);
    Txt := StringReplace(Txt, ':LenAcc1', qryFirstRun.FieldByName('CodeLength')
      .AsString, [rfReplaceAll]);
    Txt := StringReplace(Txt, ':LenDetailCode', '0', [rfReplaceAll]);

  end
  else
  begin
    Txt := StringReplace(Txt, 'w_accCode', sqlSelectcode, [rfReplaceAll]);
    Txt := StringReplace(Txt, 'w_accName', sqlSelectName, [rfIgnoreCase]);
    if Pos('100', LevelID.Text) > 0 then
    begin
      Txt := Txt + ', acc.Details.DetailName_L1';
      Txt := StringReplace(Txt, ':LenDetailCode', '15', [rfReplaceAll]);
    end
    else
      Txt := StringReplace(Txt, ':LenDetailCode', '0', [rfReplaceAll]);
  end;
  for i := 1 to 6 do
    Txt := StringReplace(Txt, ':LenAcc' + IntToStr(i), LenAcc[i],
      [rfReplaceAll]);
  for i := 1 to 3 do
    Txt := StringReplace(Txt, ':LenCompany' + IntToStr(i), LenCompany[i],
      [rfReplaceAll]);
  for i := 1 to 3 do
    Txt := StringReplace(Txt, ':LenCTopic_' + IntToStr(i), LenCTopic[i],
      [rfReplaceAll]);
  Txt := StringReplace(Txt, ':FromYearID', IntToStr(APPBank.Year),
    [rfReplaceAll]);
  Txt := StringReplace(Txt, ':ToYearID', IntToStr(APPBank.Year),
    [rfReplaceAll]);
  Txt := StringReplace(Txt, ':LenCTopic2_1', LenCTopic2_1, [rfReplaceAll]);
  Txt := StringReplace(Txt, ':LenCTopic2_2', LenCTopic2_2, [rfReplaceAll]);

  Txt := 'select accCode, accName from (' + Txt + ') fun ';
  // HelpShowF.enter(Txt);
  s := searchCode_L1_L2F.SearchCode2(Dmf.adcAccounting, 'حسابها', Txt,
    ['کد', 'عنوان معین '], Results, [100, 300], alLeft);
  if s then
    qry_AccCode.Locate('AccCode', Results[0], []);

end;

procedure TAccBookAnalyzeF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qry_doc);
end;

procedure TAccBookAnalyzeF.actSendExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TAccBookAnalyzeF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qry_doc);
//  Updateremain
end;

procedure TAccBookAnalyzeF.actchooseExecute(Sender: TObject);
var
  s: string;
begin
  inherited;
  s := ChooseColsF.GetCols(listLevelID);
  if s <> '' then
    MakeQry(s);
end;

procedure TAccBookAnalyzeF.FormShow(Sender: TObject);
begin
  inherited;
  if ShowFilter then
  begin
    firstRun := true;
    MyParams.Clear;
    actFilter.Execute;
    if MyParams.FindParam('DocDate') = nil then
      close;
  end; // .if
end;

procedure TAccBookAnalyzeF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qry_doc.FieldByName('SecondaryDocNo'));
end;

procedure TAccBookAnalyzeF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TAccBookAnalyzeF.ppSysVarPageNoGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TAccBookAnalyzeF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TAccBookAnalyzeF.actShowExecute(Sender: TObject);
begin
  inherited;
  DocumentF.FindDoc(qry_doc.FieldByName('serial').AsVariant,
    qry_doc.FieldByName('YearId').AsInteger, qry_doc.FieldByName('CompanyCode')
    .AsInteger);
  DocumentF.qry_Documents.Locate('id', qry_doc.FieldByName('id').AsInteger, []);
end;

procedure TAccBookAnalyzeF.ppLblSeconNo_DocNoGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  With qry_doc.Parameters do
    Text := 'از شماره موقت ' + IntToStr(ParamByName('SecondaryDocNoFrom').Value)
      + ' تا ' + IntToStr(ParamByName('SecondaryDocNoTo').Value);
end;

procedure TAccBookAnalyzeF.ppLabel11GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := 'از شماره سند ' +
    IntToStr(qry_doc.Parameters.ParamByName('PrimaryDocNoFrom').Value) + ' تا '
    + IntToStr(qry_doc.Parameters.ParamByName('PrimaryDocNoTo').Value)
end;

procedure TAccBookAnalyzeF.ppLblDateGetText(Sender: TObject; var Text: String);
begin
  inherited;
  With qry_doc.Parameters do
    Text := 'از تاريخ ' + ParamByName('DocDateFrom').Value + ' تا ' +
      ParamByName('DocDateTo').Value;

end;

procedure TAccBookAnalyzeF.N11Click(Sender: TObject);
begin
  inherited;
  try
    qry_doc.DisableControls;
    qry_AccCode.DisableControls;
    case (Sender as TMenuItem).Tag of
      0:
        begin
          ppDBPipeline2.RangeBegin := rbFirstRecord;
          ppDBPipeline2.RangeEnd := reLastRecord;
        end;
      1:
        begin
          ppDBPipeline2.RangeBegin := rbCurrentRecord;
          ppDBPipeline2.RangeEnd := reCurrentRecord;
        end;
    end;

    InitReportFile(ppReport1, 'AccBookAnalyze', DBGrid1, ppDBPipeline1);
  finally
    qry_doc.EnableControls;
    qry_AccCode.EnableControls;
  end; // try
end;

procedure TAccBookAnalyzeF.pop2Click(Sender: TObject);
begin
  inherited;
  try
    qry_doc.DisableControls;
    InitReportFile(ppReport1, 'AccBookAnalyze_land', DBGrid1, ppDBPipeline1);
  finally
    qry_doc.EnableControls;
  end; // try
end;

procedure TAccBookAnalyzeF.actPrintExecute(Sender: TObject);
begin
  inherited;
  pop4Print.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TAccBookAnalyzeF.MenuItem1Click(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, 0);
end;

procedure TAccBookAnalyzeF.N3Click(Sender: TObject);
begin
  inherited;
  qry_doc.close;
  qry_doc.Open;
end;

procedure TAccBookAnalyzeF.actOtherExecute(Sender: TObject);
begin
  inherited;
  popOther.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);

end;

procedure TAccBookAnalyzeF.ppDBCalcnum2alphabetGetText(Sender: TObject;
  var Text: string);
var
  c: Currency;
begin
  inherited;
  if TryStrToCurr(Text, c) then
  begin
    c := RoundTo(c, 0);
    Text := num2alphabet(StrToInt64(CurrToStr(c)));
  end;
end;

end.
