unit RptTrialBalance_Financial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, Grids, DBGrids, ppBands, ppCtrls, ppPrnabl, ppClass,
  ppDB, ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDBPipe, ComCtrls,
  DBCtrls, Menus, ppVar, SumDBGrid;

type
  TRptTrialBalance_FinancialF = class(Ttemplate2MDIF)
    qry_Init: TADOQuery;
    qry_InitLevelID: TIntegerField;
    qry_InitLevelCaption: TStringField;
    qry_InitPrvLevelID: TIntegerField;
    qry_InitCodeLength: TWordField;
    qry_InitPrvLevelCaption: TStringField;
    qry_InitPrvCodeLength: TWordField;
    qry_InitTopicType: TWordField;
    actFilter: TAction;
    src_TrialBalance: TDataSource;
    DBGrid1: TDBGrid;
    ppDBPipeline1: TppDBPipeline;
    actPrint: TAction;
    actSort: TAction;
    actSendExecl: TAction;
    actShowForm: TAction;
    BitBtn4: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn5: TBitBtn;
    popPrint: TPopupMenu;
    BitBtn1: TBitBtn;
    actAfterLevel: TAction;
    actBeforeLevel: TAction;
    qry_TrialBalance: TADOQuery;
    qry_TrialBalanceTopicCode: TStringField;
    qry_TrialBalanceMoeenName: TStringField;
    qry_TrialBalanceMoeenName_L2: TStringField;
    qry_TrialBalanceDebt: TFMTBCDField;
    qry_TrialBalanceCredit: TFMTBCDField;
    qry_TrialBalanceBalanceDebt: TFMTBCDField;
    qry_TrialBalanceBalanceCredit: TFMTBCDField;
    qry_TrialBalancePrvTopicCode: TStringField;
    qry_TrialBalancePrvMoeenName_L2: TStringField;
    qry_TrialBalancePrvMoeenName: TStringField;
    PopLevel: TPopupMenu;
    N10: TMenuItem;
    N12: TMenuItem;
    N22: TMenuItem;
    ButtenLevelTop: TBitBtn;
    ButtenLevelLow: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn8: TBitBtn;
    actUpdate: TAction;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    ppReport1: TppReport;
    qry_TrialBalancebes: TBCDField;
    qry_TrialBalancebed: TBCDField;
    qry_TrialBalanceMandehBed: TBCDField;
    qry_TrialBalance_row: TStringField;
    qry_TrialBalanceMandehbes: TBCDField;
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
    SumGrid1: TSumGrid;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure actSendExeclExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure actShowFormExecute(Sender: TObject);
    procedure actAfterLevelExecute(Sender: TObject);
    procedure actBeforeLevelExecute(Sender: TObject);
    procedure ppLabel4GetText(Sender: TObject; var Text: String);
    procedure ppLabel5GetText(Sender: TObject; var Text: String);
    procedure N10Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure actUpdateExecute(Sender: TObject);
    procedure qry_TrialBalanceAfterOpen(DataSet: TDataSet);
    procedure ppLBCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppDocDateGetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable2GetText(Sender: TObject; var Text: String);
    procedure ppLabel3GetText(Sender: TObject; var Text: String);
    procedure ppLabel13GetText(Sender: TObject; var Text: String);
    procedure ppLabel12GetText(Sender: TObject; var Text: String);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure N22Click(Sender: TObject);
    procedure DBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure qry_TrialBalanceAfterScroll(DataSet: TDataSet);
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    flag:boolean;
    sumDebt:currency;
    sumCredit:currency;
    sumBalaDebt:currency;
    sumBalaCredit:currency;
    ShowFilter:boolean;
    formtype:byte ;
    param1,param2,param3:string;
    Status1,Status2:integer;
//    procedure Updateremain;
    procedure ShowAfterAccCode(prvLevelID,CodeLength,PrvCodeLength:integer);
    procedure ShowBeforeAccCode(LevelID:integer);
    procedure UpdateFilter;
    procedure InitForm;
    function  CalcSumFileds(FiledName: String): Currency;
    procedure Print(FileName: String);
//    procedure chooseColumnDown;
//    procedure chooseColumnUp;
    { Private declarations }
  public


    { Public declarations }
  end;

var
  RptTrialBalance_FinancialF: TRptTrialBalance_FinancialF;
  cloned:TADOQuery;

implementation

uses Dm, searchCode_ADO, filter_ADO, FilterClass_ADO, GlobalPro, GeneralDM,
  Math, search2, sort2, Rpt_AccBook, Main, RptTrialBalance_CTopics,
  RptTrialBalance_Details, StrUtils, RptTrialBalance_CTopics2;

{$R *.dfm}

{ TRptTrialBalance_AccF }


procedure TRptTrialBalance_FinancialF.FormCreate(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1,1);
  FormType:=var_glb_gParam ;
  ShowFilter:=var_glb_Boolean;
  InitForm;
  flag:=true;
end;

procedure TRptTrialBalance_FinancialF.FormShow(Sender: TObject);
begin
  inherited;
  if ShowFilter then begin
    myParams.Clear;
    actFilter.Execute;
    if myParams.FindParam('DocDate')=nil then close;
  end;
end;

procedure TRptTrialBalance_FinancialF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self,myParams) do begin
    try
      AddItem(DMF.adcAccounting,'state','«”‰«œ »« Ê÷⁄Ì  “Ì— ‰„«Ì‘ ‘Ê‰œ','',ftUnknown,dvDefaults,'true','',ciCheck,
                                ' ÅÌ‘ ‰ÊÌ”#„Êﬁ  ' );
      AddItem(DMF.adcAccounting,'checked','«‰Ê«⁄ ”‰œ','',ftUnknown,dvDefaults,'true','',ciCheck,
                                'SELECT DocTypeCode, DocTypeName_L1 FROM DocTypes where  DocTypeCode <4','');
      AddItem(DMF.adcAccounting,'DocTypeCode','«‰Ê«⁄ ”‰œ Õ”«»œ«—Ì','‰Ê⁄ ”‰œ',ftInteger,dvMinMax,'','',ciLookup,'SELECT DocTypeCode, DocTypeName_L1 FROM DocTypes '
                               ,'SELECT Min(DocTypeCode), Max(DocTypeCode) FROM DocTypes');
      AddItem(DMF.adcAccounting,'DocDate',' «—ÌŒ ”‰œÕ”«»œ«—Ì',' «—ÌŒ',ftDate,dvMinMax,'','',ciSimple,'','SELECT Min(DocDate) , Max(DocDate)  FROM DocGroups');
      AddItem(DMF.adcAccounting,'PrimaryDocNo','‘„«—Â «’·Ì ”‰œ Õ”«»œ«—Ì','‘„«—Â ”‰œ',ftInteger,dvMinMax,'','',ciSimple,'','SELECT Min(PrimaryDocNo) , Max(PrimaryDocNo)  FROM DocGroups');
      AddItem(DMF.adcAccounting,'SecondaryDocNo','‘„«—Â ›—⁄Ì ”‰œ Õ”«»œ«—Ì','‘„«—Â ›—⁄Ì',ftInteger,dvMinMax,'','',ciSimple,'','SELECT Min(SecondaryDocNo) , Max(SecondaryDocNo)  FROM DocGroups');
      if gv_MultiCompany then
         AddItem(DMF.adcAccounting,'CompanyCode','ﬂœ Ê ‰«„ ‘⁄»Â /‘—ﬂ ','‘—ﬂ ',ftInteger,dvMinMax,'','',ciLookup,'SELECT CompanyCode,CompanyName_L1 FROM Companies ',
                                    'SELECT Min(0)  , Max(999)  FROM DocGroups');
      AddItem(DMF.adcAccounting,'AccCode','ﬂœ Ê ‰«„ Õ”«» ','ﬂœ Õ”«»',ftInteger,dvMinMax,'','',ciLookup,
                                'SELECT dbo.Categories.TopicCode,MoeenName_L1 FROM Categories where LevelID ='+IntToStr(formtype)+'   ORDER BY ABS(LEFT(TopicCode, '+ qry_InitCodeLength.AsString  +'))',
                                'SELECT Min(dbo.Categories.TopicCode),Max(dbo.Categories.TopicCode)  FROM Categories WHERE  LevelID ='+IntToStr(formtype));
      if ShowModal=mrOk then begin
        GetFilterString;
        UpdateFilter;
      end;//if
    finally
      Free;
    end;//try
  end;//with
end;

function TRptTrialBalance_FinancialF.CalcSumFileds(FiledName: String): Currency;
begin
  Result:=0;
  try
    cloned:=TADOQuery.Create(Self);
    with cloned do begin
      Clone(qry_TrialBalance,ltReadOnly);
      First;
      while not eof do begin
        Result:=Result +fieldbyname(FiledName).AsCurrency;
        Next;
      end;//while
    end;//with
   finally
    cloned.Free; 
  end;//try
end;

procedure TRptTrialBalance_FinancialF.InitForm;
begin
  with qry_Init do Begin
    Active:=False ;
    Parameters.ParamByName('type').Value :=FormType ;
    Active:=True ;
  end ;//with
  Caption:='  —«“ ¬“„«Ì‘Ì Õ”«»Â«Ì  '+qry_InitLevelCaption.AsString;
  if formtype=1 then  ButtenLevelTop.Enabled:=false;
end;


procedure TRptTrialBalance_FinancialF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1,1);
end;

procedure TRptTrialBalance_FinancialF.FormDestroy(Sender: TObject);
var
  i:Integer;
begin
  inherited;
  SaveColWidth(DBGrid1);
end;
procedure TRptTrialBalance_FinancialF.Print(FileName: String);
var
  s:String;
begin
  s:=IncludeTrailingBackslash(ExtractFilePath(ParamStr(0))+'Report\');
  with ppReport1 do begin
    Template.FileName:=s+FileName;
     try
       if FileExists(Template.FileName) then
          Template.LoadFromFile;
          Print ;
     finally
     end;//try
  end;//with
end;

procedure TRptTrialBalance_FinancialF.actPrintExecute(Sender: TObject);
begin
  inherited;
  if formtype=1 then begin
    MenuItem1.Visible:=false;
    MenuItem3.Visible:=false;
  end;
//  If qry_InitPrvCodeLength.AsInteger=0 then
//   popPrint.Items[1].Visible:=false;
   popPrint.Popup(Mouse.CursorPos.X,Mouse.CursorPos.Y);
end;

procedure TRptTrialBalance_FinancialF.actSendExeclExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(qry_TrialBalance);
end;

procedure TRptTrialBalance_FinancialF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qry_TrialBalance);
end;

procedure TRptTrialBalance_FinancialF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qry_TrialBalance);
end;

procedure TRptTrialBalance_FinancialF.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  QuickSearch(Key,qry_TrialBalance.FieldByName('TopicCode'));
end;

procedure TRptTrialBalance_FinancialF.UpdateFilter;
var
  ts:TStringList;
  s:String;
  i:Integer;
begin
  s:=GetcTo(myParams.ParamValues['checked'],ftString);
  ts:=TStringList.Create;
  try
    ts.Text:=StringReplace(s,',',#13,[rfReplaceAll]);
    param1:='-1' ;param2:='-1' ;param3:='-1' ;
    for i:=0 to ts.Count-1 do begin
      if i=0 then param1:= ts[0];
      if i=1 then param2:= ts[1];
      if i=2 then param3:= ts[2];
      if i>2 then break
    end;//fot
    s:=GetcTo(myParams.ParamValues['state'],ftString);
    ts.Text:=StringReplace(s,',',#13,[rfReplaceAll]);
    Status1:=-1 ; Status2:=-1 ;
    for i:=0 to ts.Count-1 do begin
      if i=0 then Status1:=StrToInt(ts[0])-1;
      if i=1 then Status2:=StrToInt(ts[1])-1;
    end;//for
  finally
    ts.Free;
  end;//try
  with qry_TrialBalance do begin
    Active:=false;
    Parameters.ParamByName('LenPrvAccCode').Value:= qry_Init.fieldbyname('PrvCodeLength').AsInteger;
    Parameters.ParamByName('LenAccCode').Value:= qry_Init.fieldbyname('CodeLength').AsInteger;
    Parameters.ParamByName('DocDateFrom').Value:= GetcFrom(myParams.ParamValues['DocDate'],ftString);
    Parameters.ParamByName('DocDateTo').Value:= GetcTo(myParams.ParamValues['DocDate'],ftString);
    Parameters.ParamByName('PrimaryDocNoFrom').Value:= GetcFrom(myParams.ParamValues['PrimaryDocNo'],ftInteger);
    Parameters.ParamByName('PrimaryDocNoTo').Value:= GetcTo(myParams.ParamValues['PrimaryDocNo'],ftInteger);
    Parameters.ParamByName('SecondaryDocNoFrom').Value:= GetcFrom(myParams.ParamValues['SecondaryDocNo'],ftInteger);
    Parameters.ParamByName('SecondaryDocNoTo').Value:= GetcTo(myParams.ParamValues['SecondaryDocNo'],ftInteger);
    Parameters.ParamByName('DocTypeCodeFrom').Value:=GetcFrom(myParams.ParamValues['DocTypeCode'],ftInteger);
    Parameters.ParamByName('DocTypeCodeTo').Value:=GetcTo(myParams.ParamValues['DocTypeCode'],ftInteger);;
    Parameters.ParamByName('DocTypeCode1_Not').Value:=Param1 ;
    Parameters.ParamByName('DocTypeCode2_Not').Value:=param2;
    Parameters.ParamByName('DocTypeCode3_Not').Value:=param3;
    Parameters.ParamByName('Status1').Value:=Status1;
    Parameters.ParamByName('Status2').Value:=Status2;

    if gv_MultiCompany then begin
      qry_TrialBalance.Parameters.ParamByName('CompanyCodeFrom').Value:=GetcFrom(myParams.ParamValues['CompanyCode'],ftInteger);
      qry_TrialBalance.Parameters.ParamByName('CompanyCodeTo').Value:=GetcTo(myParams.ParamValues['CompanyCode'],ftInteger);
    end;

    Parameters.ParamByName('AccCodeFrom').Value:=GetcFrom(myParams.ParamValues['AccCode'],ftCurrency);
    Parameters.ParamByName('AccCodeTo').Value:=GetcTo(myParams.ParamValues['AccCode'],ftCurrency);
    Active:=True ;
  end;//with
end;

procedure TRptTrialBalance_FinancialF.actShowFormExecute(Sender: TObject);
begin
  inherited;
  //Call rpt_AccbookF
  CreateMDIForm3(false,TRpt_AccBookF,Rpt_AccBookF,RptTrialBalance_AccF,formtype);
  with Rpt_AccBookF do begin
    with qry_Doc do begin
      Active:=false;
      Parameters.ParamByName('DocDateFrom').Value:=qry_TrialBalance.Parameters.ParamByName('DocDateFrom').Value;
      Parameters.ParamByName('DocDateTo').Value:=qry_TrialBalance.Parameters.ParamByName('DocDateTo').Value;
      Parameters.ParamByName('PrimaryDocNoFrom').Value:=qry_TrialBalance.Parameters.ParamByName('PrimaryDocNoFrom').Value;
      Parameters.ParamByName('PrimaryDocNoTo').Value:=qry_TrialBalance.Parameters.ParamByName('PrimaryDocNoTo').Value;
      Parameters.ParamByName('SecondaryDocNoFrom').Value:=qry_TrialBalance.Parameters.ParamByName('SecondaryDocNoFrom').Value;
      Parameters.ParamByName('SecondaryDocNoTo').Value:= qry_TrialBalance.Parameters.ParamByName('SecondaryDocNoTo').Value;
      Parameters.ParamByName('AccCodeLen').Value:=qry_Init.fieldbyname('CodeLength').AsInteger;
      Parameters.ParamByName('Status1').Value:=qry_TrialBalance.Parameters.ParamByName('Status1').Value;
      Parameters.ParamByName('Status2').Value:=qry_TrialBalance.Parameters.ParamByName('Status2').Value;
//      Active:=true;
    end;//with);
    with qry_AccCode do begin
      Active:=false;
       Parameters.ParamByName('FormType').Value:=formtype;
       Parameters.ParamByName('AccCodeFrom').Value:=qry_TrialBalance.Parameters.ParamByName('AccCodeFrom').Value;
       Parameters.ParamByName('AccCodeTo').Value:=qry_TrialBalance.Parameters.ParamByName('AccCodeTo').Value;
//      Active:=true;
    end;//with
    with qry_Companies do begin
      Active:=false;
      Parameters.ParamByName('CompanyCodeFrom').Value:=qry_TrialBalance.Parameters.ParamByName('CompanyCodeFrom').Value;
      Parameters.ParamByName('CompanyCodeTo').Value:=qry_TrialBalance.Parameters.ParamByName('CompanyCodeTo').Value;
      Active:=true;
    end;//with);



    qry_AccCode.Locate('AccCode',qry_TrialBalance.fieldbyname('TopicCode').AsCurrency,[]);
  end;//with
end;

procedure TRptTrialBalance_FinancialF.actAfterLevelExecute(Sender: TObject);
var
  TopTopice:Currency;
  prvLevelID,PrvCodeLength,CodeLength:Integer;
begin
  inherited;
  if  qry_TrialBalance.FieldByname('TopicCode').AsString='' then abort;
  TopTopice:=qry_TrialBalance.FieldByname('TopicCode').AsCurrency;
  with Dmf.qry_Temp do begin
    Active:=False ;
     SQL.Text:='SELECT dbo.AccTopicLevels.LevelID, dbo.AccTopicLevels.CodeLength, ISNULL(AccTopicLevels_1.CodeLength, 0) AS PrvCodeLength '+
               ' FROM  dbo.AccTopicLevels LEFT OUTER JOIN  dbo.AccTopicLevels AccTopicLevels_1 ON dbo.AccTopicLevels.PrvLevelID = AccTopicLevels_1.LevelID '+
               ' WHERE (dbo.AccTopicLevels.TopicType = 0) AND dbo.AccTopicLevels.PrvLevelID ='+IntToStr(formtype);
    Active:=True ;
    PrvCodeLength:=fieldbyname('PrvCodeLength').AsInteger;
    CodeLength:=fieldbyname('CodeLength').AsInteger;
    prvLevelID:=Fieldbyname('LevelID').AsInteger;

    if Fieldbyname('LevelID').AsString=''  then
      PopLevel.Popup(Mouse.CursorPos.X,Mouse.CursorPos.Y)
    else
      ShowAfterAccCode(prvLevelID,CodeLength,PrvCodeLength);
  end;

end;

procedure TRptTrialBalance_FinancialF.actBeforeLevelExecute(Sender: TObject);
var
  levelID:integer;
begin
  inherited;
  levelID:=FormType-1;
  ShowBeforeAccCode(LevelID);
end;

procedure TRptTrialBalance_FinancialF.ppLabel4GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:=APPBank.CompanyName;
end;

procedure TRptTrialBalance_FinancialF.ppLabel5GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:=GetPrintDate;
end;

procedure TRptTrialBalance_FinancialF.N10Click(Sender: TObject);
var
  LowLevelID,TopTopice:Integer;
  PrvCodeLength,CodeLength:Integer;
  s:string;
begin
  inherited;
  TopTopice:=qry_TrialBalance.FieldByname('TopicCode').AsInteger;
  CreateMDIForm3(false,TRptTrialBalance_DetailsF,RptTrialBalance_DetailsF,RptTrialBalance_AccF);
//------------------SET Parameters in  TRptTrialBalance_DetailsF  form
  with RptTrialBalance_DetailsF  do Begin
    with qrySum do begin
      Active:=false;
      Parameters.ParamByName('DocTypeCodeFrom').Value:=qry_TrialBalance.Parameters.ParamByName('DocTypeCodeFrom').Value;
      Parameters.ParamByName('DocTypeCodeTo').Value:=qry_TrialBalance.Parameters.ParamByName('DocTypeCodeTo').Value;
      Parameters.ParamByName('DocTypeCode1_Not').Value:=qry_TrialBalance.Parameters.ParamByName('DocTypeCode1_Not').Value;
      Parameters.ParamByName('DocTypeCode2_Not').Value:=qry_TrialBalance.Parameters.ParamByName('DocTypeCode2_Not').Value;
      Parameters.ParamByName('DocTypeCode3_Not').Value:=qry_TrialBalance.Parameters.ParamByName('DocTypeCode3_Not').Value;
      Parameters.ParamByName('Status1').Value:=qry_TrialBalance.Parameters.ParamByName('Status1').Value;
      Parameters.ParamByName('Status2').Value:=qry_TrialBalance.Parameters.ParamByName('Status2').Value;

      Parameters.ParamByName('DocDateFrom').Value:=qry_TrialBalance.Parameters.ParamByName('DocDateFrom').Value;
      Parameters.ParamByName('DocDateTo').Value:=qry_TrialBalance.Parameters.ParamByName('DocDateTo').Value;
      Parameters.ParamByName('PrimaryDocNoFrom').Value:=qry_TrialBalance.Parameters.ParamByName('PrimaryDocNoFrom').Value;
      Parameters.ParamByName('PrimaryDocNoTo').Value:= qry_TrialBalance.Parameters.ParamByName('PrimaryDocNoTo').Value;
      Parameters.ParamByName('SecondaryDocNoFrom').Value:=qry_TrialBalance.Parameters.ParamByName('SecondaryDocNoFrom').Value;
      Parameters.ParamByName('SecondaryDocNoTo').Value:= qry_TrialBalance.Parameters.ParamByName('SecondaryDocNoTo').Value;
      if gv_MultiCompany then begin
         Parameters.ParamByName('CompanyCodeFrom').Value:= qry_TrialBalance.Parameters.ParamByName('CompanyCodeFrom').Value;
         Parameters.ParamByName('CompanyCodeTo').Value:= qry_TrialBalance.Parameters.ParamByName('CompanyCodeTo').Value;
      end;//if
      Parameters.ParamByName('DetailCodeFrom').Value:=0;
      Parameters.ParamByName('DetailCodeTo').Value:=2147483647;
      Parameters.ParamByName('AccCodeFrom').Value:=TopTopice;
      Parameters.ParamByName('AccCodeTo').Value:=TopTopice;
      Active:=true;
    end;//with
    with qry_TrialDetailsBalance do begin
      Active:=false;
      Parameters.ParamByName('DocTypeCodeFrom').Value:=qry_TrialBalance.Parameters.ParamByName('DocTypeCodeFrom').Value;
      Parameters.ParamByName('DocTypeCodeTo').Value:=qry_TrialBalance.Parameters.ParamByName('DocTypeCodeTo').Value;
      Parameters.ParamByName('DocTypeCode1_Not').Value:=qry_TrialBalance.Parameters.ParamByName('DocTypeCode1_Not').Value;//Self.Param1 ;
      Parameters.ParamByName('DocTypeCode2_Not').Value:=qry_TrialBalance.Parameters.ParamByName('DocTypeCode2_Not').Value;//Self.param2;
      Parameters.ParamByName('DocTypeCode3_Not').Value:=qry_TrialBalance.Parameters.ParamByName('DocTypeCode3_Not').Value;//Self.param3;
      Parameters.ParamByName('Status1').Value:=qry_TrialBalance.Parameters.ParamByName('Status1').Value;
      Parameters.ParamByName('Status2').Value:=qry_TrialBalance.Parameters.ParamByName('Status2').Value;

      Parameters.ParamByName('DocDateFrom').Value:=qry_TrialBalance.Parameters.ParamByName('DocDateFrom').Value;
      Parameters.ParamByName('DocDateTo').Value:=qry_TrialBalance.Parameters.ParamByName('DocDateTo').Value;
      Parameters.ParamByName('PrimaryDocNoFrom').Value:=qry_TrialBalance.Parameters.ParamByName('PrimaryDocNoFrom').Value;
      Parameters.ParamByName('PrimaryDocNoTo').Value:= qry_TrialBalance.Parameters.ParamByName('PrimaryDocNoTo').Value;
      Parameters.ParamByName('SecondaryDocNoFrom').Value:=qry_TrialBalance.Parameters.ParamByName('SecondaryDocNoFrom').Value;
      Parameters.ParamByName('SecondaryDocNoTo').Value:= qry_TrialBalance.Parameters.ParamByName('SecondaryDocNoTo').Value;
      if gv_MultiCompany then begin
         Parameters.ParamByName('CompanyCodeFrom').Value:= qry_TrialBalance.Parameters.ParamByName('CompanyCodeFrom').Value;
         Parameters.ParamByName('CompanyCodeTo').Value:= qry_TrialBalance.Parameters.ParamByName('CompanyCodeTo').Value;
      end;//if
      Parameters.ParamByName('DetailCodeFrom').Value:=0;
      Parameters.ParamByName('DetailCodeTo').Value:=2147483647;

      Parameters.ParamByName('AccCodeFrom').Value:=TopTopice;
      Parameters.ParamByName('AccCodeTo').Value:=TopTopice;
      Active:=true;
    end;//with
  end //with_ RptTrialBalance_CTopicsF

end;

procedure TRptTrialBalance_FinancialF.N12Click(Sender: TObject);
var
  LowLevelID,TopTopice:Integer;
  PrvCodeLength,CodeLength:Integer;
  s:string;
begin
  inherited;
  TopTopice:=qry_TrialBalance.FieldByname('TopicCode').AsInteger;
  CreateMDIForm3(false,tRptTrialBalance_CTopicsF,RptTrialBalance_CTopicsF,RptTrialBalance_AccF);
 //SET Parameters in  RptTrialBalance_CTopicsF form
  with RptTrialBalance_CTopicsF do Begin
     with qrySumCTopic do begin
        Active:=false;
        Parameters.ParamByName('DocTypeCodeFrom').Value:=qry_TrialBalance.Parameters.ParamByName('DocTypeCodeFrom').Value;
        Parameters.ParamByName('DocTypeCodeTo').Value:=qry_TrialBalance.Parameters.ParamByName('DocTypeCodeTo').Value;
        Parameters.ParamByName('DocTypeCode1_Not').Value:=qry_TrialBalance.Parameters.ParamByName('DocTypeCode1_Not').Value;
        Parameters.ParamByName('DocTypeCode2_Not').Value:=qry_TrialBalance.Parameters.ParamByName('DocTypeCode2_Not').Value;
        Parameters.ParamByName('DocTypeCode3_Not').Value:=qry_TrialBalance.Parameters.ParamByName('DocTypeCode3_Not').Value;
        Parameters.ParamByName('DocDateFrom').Value:=qry_TrialBalance.Parameters.ParamByName('DocDateFrom').Value;
        Parameters.ParamByName('DocDateTo').Value:=qry_TrialBalance.Parameters.ParamByName('DocDateTo').Value;
        Parameters.ParamByName('PrimaryDocNoFrom').Value:=qry_TrialBalance.Parameters.ParamByName('PrimaryDocNoFrom').Value;
        Parameters.ParamByName('PrimaryDocNoTo').Value:= qry_TrialBalance.Parameters.ParamByName('PrimaryDocNoTo').Value;
        Parameters.ParamByName('SecondaryDocNoFrom').Value:=qry_TrialBalance.Parameters.ParamByName('SecondaryDocNoFrom').Value;
        Parameters.ParamByName('SecondaryDocNoTo').Value:= qry_TrialBalance.Parameters.ParamByName('SecondaryDocNoTo').Value;
        Parameters.ParamByName('Status1').Value:=qry_TrialBalance.Parameters.ParamByName('Status1').Value;
        Parameters.ParamByName('Status2').Value:=qry_TrialBalance.Parameters.ParamByName('Status2').Value;

      if gv_MultiCompany then begin
         Parameters.ParamByName('CompanyCodeFrom').Value:=qry_TrialBalance.Parameters.ParamByName('CompanyCodeFrom').Value;
         Parameters.ParamByName('CompanyCodeTo').Value:=qry_TrialBalance.Parameters.ParamByName('CompanyCodeTo').Value;
      end;//if
        Parameters.ParamByName('AccCodeFrom').Value:=qry_TrialBalance.Fieldbyname('TopicCode').AsInteger;
        Parameters.ParamByName('AccCodeTo').Value:=qry_TrialBalance.Fieldbyname('TopicCode').AsInteger;
        Active:=true;
     end;// end qrysum
     with qry_TrialCTopicBalance do begin
        Active:=false;
        Parameters.ParamByName('DocTypeCodeFrom').Value:=qry_TrialBalance.Parameters.ParamByName('DocTypeCodeFrom').Value;
        Parameters.ParamByName('DocTypeCodeTo').Value:=qry_TrialBalance.Parameters.ParamByName('DocTypeCodeTo').Value;
        Parameters.ParamByName('DocTypeCode1_Not').Value:=qry_TrialBalance.Parameters.ParamByName('DocTypeCode1_Not').Value;
        Parameters.ParamByName('DocTypeCode2_Not').Value:=qry_TrialBalance.Parameters.ParamByName('DocTypeCode2_Not').Value;
        Parameters.ParamByName('DocTypeCode3_Not').Value:=qry_TrialBalance.Parameters.ParamByName('DocTypeCode3_Not').Value;
        Parameters.ParamByName('Status1').Value:=qry_TrialBalance.Parameters.ParamByName('Status1').Value;
        Parameters.ParamByName('Status2').Value:=qry_TrialBalance.Parameters.ParamByName('Status2').Value;

        Parameters.ParamByName('DocDateFrom').Value:=qry_TrialBalance.Parameters.ParamByName('DocDateFrom').Value;
        Parameters.ParamByName('DocDateTo').Value:=qry_TrialBalance.Parameters.ParamByName('DocDateTo').Value;
        Parameters.ParamByName('PrimaryDocNoFrom').Value:=qry_TrialBalance.Parameters.ParamByName('PrimaryDocNoFrom').Value;
        Parameters.ParamByName('PrimaryDocNoTo').Value:=qry_TrialBalance.Parameters.ParamByName('PrimaryDocNoTo').Value;
        Parameters.ParamByName('SecondaryDocNoFrom').Value:=qry_TrialBalance.Parameters.ParamByName('SecondaryDocNoFrom').Value;
        Parameters.ParamByName('SecondaryDocNoTo').Value:= qry_TrialBalance.Parameters.ParamByName('SecondaryDocNoTo').Value;
        if gv_MultiCompany then begin
           Parameters.ParamByName('CompanyCodeFrom').Value:=qry_TrialBalance.Parameters.ParamByName('CompanyCodeFrom').Value;
           Parameters.ParamByName('CompanyCodeTo').Value:=qry_TrialBalance.Parameters.ParamByName('CompanyCodeTo').Value;
        end;//if
        Parameters.ParamByName('AccCodeFrom').Value:=TopTopice;
        Parameters.ParamByName('AccCodeTo').Value:=TopTopice;
        Active:=true;
    end;//with
  end //with_ RptTrialBalance_CTopicsF
end;


procedure TRptTrialBalance_FinancialF.actUpdateExecute(Sender: TObject);
begin
  inherited;
  qry_TrialBalance.Requery();
end;

//procedure TRptTrialBalance_AccF.Updateremain;
//var
//  c,bes,bed,mbes,mbed: Currency ;
//  amount,i:integer;
//begin
//  with qry_TrialBalance do begin
//   try
//    First;
//    DisableControls;
//    c:= 0 ;
//    bed:=0;mbes:=0;
//    bes:=0; mbed:=0;
//    amount:=0;i:=0;
//    while not eof do begin
//      i:=i+1;
//      bed:=bed + fieldbyname('Debt').AsCurrency;
//      bes:=bes + fieldbyname('Credit').AsCurrency;
//      mbed:=mbed + fieldbyname('BalanceDebt').AsCurrency;
//      mbes:=mbes + fieldbyname('BalanceCredit').AsCurrency;
//      edit ;
//      fieldbyname('_row').AsInteger:=i;
//      fieldbyname('bed').AsCurrency := bed ;
//      fieldbyname('bes').AsCurrency := bes ;
//      fieldbyname('MandehBed').AsCurrency := mbed ;
//      fieldbyname('Mandehbes').AsCurrency := mbes ;
//      post ;
//      Next;
//    end;//
//   finally
//    first;
//    EnableControls;
//   end;//try
//  end;//with
//  StatusBar1.Panels[5].Text:=' ⁄œ«œ ”ÿ— ﬂ·= '+IntToStr(qry_TrialBalance.RecordCount);
//  StatusBar1.Panels[3].Text:=CurrToStrF(bed,ffCurrency,0) ;
//  StatusBar1.Panels[2].Text:=CurrToStrF(bes,ffCurrency,0) ;
//  StatusBar1.Panels[1].Text:=CurrToStrF(mbed,ffCurrency,0);
//  StatusBar1.Panels[0].Text:=CurrToStrF(mbes,ffCurrency,0);
//
//
//end;

procedure TRptTrialBalance_FinancialF.qry_TrialBalanceAfterOpen(
  DataSet: TDataSet);
begin
  inherited;
//  Updateremain;
end;

procedure TRptTrialBalance_FinancialF.ppLBCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:=APPBank.CompanyName;
end;

procedure TRptTrialBalance_FinancialF.ppDocDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:=GetPrintDate;
end;

procedure TRptTrialBalance_FinancialF.ppSystemVariable2GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:=GetPageNumberString(Text);
end;

procedure TRptTrialBalance_FinancialF.ppLabel13GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:='«“  «—ÌŒ '+ GetcFrom(myParams.ParamValues['DocDate'],ftString)+
        '  «  «—ÌŒ '+GetcTo(myParams.ParamValues['DocDate'],ftString);
end;

procedure TRptTrialBalance_FinancialF.ppLabel12GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:=' «”‰«œ «“ '+IntToStr(GetcFrom(myParams.ParamValues['PrimaryDocNo'],ftInteger))+
        '  « '+ IntToStr(GetcTo(myParams.ParamValues['PrimaryDocNo'],ftInteger));
end;

procedure TRptTrialBalance_FinancialF.MenuItem2Click(Sender: TObject);
begin
  inherited;
  try
    qry_TrialBalance.DisableControls;
    InitReportFile(ppReport1,'RepRptTrialBalance_Acc');
  finally
    qry_TrialBalance.EnableControls;
  end;
end;

procedure TRptTrialBalance_FinancialF.MenuItem1Click(Sender: TObject);
begin
  inherited;
  try
    qry_TrialBalance.DisableControls;
    InitReportFile(ppReport1,'RepRptTrialBalance_Acc_Topic');
  finally
    qry_TrialBalance.EnableControls;
  end;
end;

procedure TRptTrialBalance_FinancialF.ppLabel3GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  case formtype of
   1: Text:=' —«“ ¬“„«Ì‘Ì ê—ÊÂ Õ”«»Â« ';
   2: Text:=' —«“¬“„«Ì‘Ì Õ”«»Â«Ì ﬂ·';
   3: Text:=' —«“ ¬“„«Ì‘Ì Õ”«»Â«Ì Õ”«»';
   4: Text:=' —«“ ¬“„«Ì‘Ì ”— ›’· Õ”«»Â«';
  end;//case
end;

procedure TRptTrialBalance_FinancialF.MenuItem4Click(Sender: TObject);
begin
  inherited;
  try
   qry_TrialBalance.DisableControls;
    InitReportFile(ppReport1,'RepRptTrialBalance_Acc_L');
  finally
   qry_TrialBalance.EnableControls;
  end;
end;

procedure TRptTrialBalance_FinancialF.MenuItem3Click(Sender: TObject);
begin
  inherited;
  try
   qry_TrialBalance.DisableControls;
   InitReportFile(ppReport1,'RepRptTrialBalance_Acc_Topic_L');
  finally
   qry_TrialBalance.EnableControls;
  end;
end;


procedure TRptTrialBalance_FinancialF.N22Click(Sender: TObject);
var
  LowLevelID,TopTopice:Integer;
  PrvCodeLength,CodeLength:Integer;
  s:string;
begin
  inherited;
  TopTopice:=qry_TrialBalance.FieldByname('TopicCode').AsInteger;
  CreateMDIForm3(false,TRptTrialBalance_CTopics2F,RptTrialBalance_CTopics2F,RptTrialBalance_AccF);
//----------------SET Parameters in  RptTrialBalance_CTopics2F form
  with RptTrialBalance_CTopics2F do Begin
     with qrySumCTopic2 do begin
        Active:=false;
        Parameters.ParamByName('DocTypeCodeFrom').Value:=qry_TrialBalance.Parameters.ParamByName('DocTypeCodeFrom').Value;
        Parameters.ParamByName('DocTypeCodeTo').Value:=qry_TrialBalance.Parameters.ParamByName('DocTypeCodeTo').Value;
        Parameters.ParamByName('DocTypeCode1_Not').Value:=qry_TrialBalance.Parameters.ParamByName('DocTypeCode1_Not').Value;
        Parameters.ParamByName('DocTypeCode2_Not').Value:=qry_TrialBalance.Parameters.ParamByName('DocTypeCode2_Not').Value;
        Parameters.ParamByName('DocTypeCode3_Not').Value:=qry_TrialBalance.Parameters.ParamByName('DocTypeCode3_Not').Value;
        Parameters.ParamByName('Status1').Value:=qry_TrialBalance.Parameters.ParamByName('Status1').Value;
        Parameters.ParamByName('Status2').Value:=qry_TrialBalance.Parameters.ParamByName('Status2').Value;

        Parameters.ParamByName('DocDateFrom').Value:=qry_TrialBalance.Parameters.ParamByName('DocDateFrom').Value;
        Parameters.ParamByName('DocDateTo').Value:=qry_TrialBalance.Parameters.ParamByName('DocDateTo').Value;
        Parameters.ParamByName('PrimaryDocNoFrom').Value:=qry_TrialBalance.Parameters.ParamByName('PrimaryDocNoFrom').Value;
        Parameters.ParamByName('PrimaryDocNoTo').Value:= qry_TrialBalance.Parameters.ParamByName('PrimaryDocNoTo').Value;
        Parameters.ParamByName('SecondaryDocNoFrom').Value:=qry_TrialBalance.Parameters.ParamByName('SecondaryDocNoFrom').Value;
        Parameters.ParamByName('SecondaryDocNoTo').Value:= qry_TrialBalance.Parameters.ParamByName('SecondaryDocNoTo').Value;
      if gv_MultiCompany then begin
         Parameters.ParamByName('CompanyCodeFrom').Value:=qry_TrialBalance.Parameters.ParamByName('CompanyCodeFrom').Value;
         Parameters.ParamByName('CompanyCodeTo').Value:=qry_TrialBalance.Parameters.ParamByName('CompanyCodeTo').Value;
      end;//if
        Parameters.ParamByName('AccCodeFrom').Value:=qry_TrialBalance.Fieldbyname('TopicCode').AsInteger;
        Parameters.ParamByName('AccCodeTo').Value:=qry_TrialBalance.Fieldbyname('TopicCode').AsInteger;
        Active:=true;
     end;// end qrysum
     with qry_TrialCTopic2Balance do begin
        Active:=false;
        Parameters.ParamByName('DocTypeCodeFrom').Value:=qry_TrialBalance.Parameters.ParamByName('DocTypeCodeFrom').Value;
        Parameters.ParamByName('DocTypeCodeTo').Value:=qry_TrialBalance.Parameters.ParamByName('DocTypeCodeTo').Value;
        Parameters.ParamByName('DocTypeCode1_Not').Value:=qry_TrialBalance.Parameters.ParamByName('DocTypeCode1_Not').Value;
        Parameters.ParamByName('DocTypeCode2_Not').Value:=qry_TrialBalance.Parameters.ParamByName('DocTypeCode2_Not').Value;
        Parameters.ParamByName('DocTypeCode3_Not').Value:=qry_TrialBalance.Parameters.ParamByName('DocTypeCode3_Not').Value;
        Parameters.ParamByName('Status1').Value:=qry_TrialBalance.Parameters.ParamByName('Status1').Value;
        Parameters.ParamByName('Status2').Value:=qry_TrialBalance.Parameters.ParamByName('Status2').Value;

        Parameters.ParamByName('DocDateFrom').Value:=qry_TrialBalance.Parameters.ParamByName('DocDateFrom').Value;
        Parameters.ParamByName('DocDateTo').Value:=qry_TrialBalance.Parameters.ParamByName('DocDateTo').Value;
        Parameters.ParamByName('PrimaryDocNoFrom').Value:=qry_TrialBalance.Parameters.ParamByName('PrimaryDocNoFrom').Value;
        Parameters.ParamByName('PrimaryDocNoTo').Value:=qry_TrialBalance.Parameters.ParamByName('PrimaryDocNoTo').Value;
        Parameters.ParamByName('SecondaryDocNoFrom').Value:=qry_TrialBalance.Parameters.ParamByName('SecondaryDocNoFrom').Value;
        Parameters.ParamByName('SecondaryDocNoTo').Value:= qry_TrialBalance.Parameters.ParamByName('SecondaryDocNoTo').Value;
        if gv_MultiCompany then begin
           Parameters.ParamByName('CompanyCodeFrom').Value:=qry_TrialBalance.Parameters.ParamByName('CompanyCodeFrom').Value;
           Parameters.ParamByName('CompanyCodeTo').Value:=qry_TrialBalance.Parameters.ParamByName('CompanyCodeTo').Value;
        end;//if
        Parameters.ParamByName('AccCodeFrom').Value:=TopTopice;
        Parameters.ParamByName('AccCodeTo').Value:=TopTopice;
        Active:=true;
    end;//with
  end //with_ RptTrialBalance_CTopicsF
end;

procedure TRptTrialBalance_FinancialF.ShowBeforeAccCode(LevelID:integer);
begin
 CreateMDIForm3(False,TRptTrialBalance_AccF,RptTrialBalance_AccF,Self,LevelID);
 with RptTrialBalance_AccF do Begin
   with qry_TrialBalance do begin
      Active:=false;
      Parameters.ParamByName('LenPrvAccCode').Value:=qry_Init.FieldByname('PrvCodeLength').AsInteger;
      Parameters.ParamByName('LenAccCode').Value:=qry_Init.FieldByname('CodeLength').AsInteger;

      Parameters.ParamByName('DocTypeCodeFrom').Value:=Self.qry_TrialBalance.Parameters.ParamByName('DocTypeCodeFrom').Value;
      Parameters.ParamByName('DocTypeCodeTo').Value:=Self.qry_TrialBalance.Parameters.ParamByName('DocTypeCodeTo').Value;
      Parameters.ParamByName('DocTypeCode1_Not').Value:=Self.qry_TrialBalance.Parameters.ParamByName('DocTypeCode1_Not').Value;
      Parameters.ParamByName('DocTypeCode2_Not').Value:=Self.qry_TrialBalance.Parameters.ParamByName('DocTypeCode2_Not').Value;
      Parameters.ParamByName('DocTypeCode3_Not').Value:=Self.qry_TrialBalance.Parameters.ParamByName('DocTypeCode3_Not').Value;
      Parameters.ParamByName('DocDateFrom').Value:=Self.qry_TrialBalance.Parameters.ParamByName('DocDateFrom').Value;
      Parameters.ParamByName('DocDateTo').Value:=Self.qry_TrialBalance.Parameters.ParamByName('DocDateTo').Value;
      Parameters.ParamByName('PrimaryDocNoFrom').Value:=Self.qry_TrialBalance.Parameters.ParamByName('PrimaryDocNoFrom').Value;
      Parameters.ParamByName('PrimaryDocNoTo').Value:= Self.qry_TrialBalance.Parameters.ParamByName('PrimaryDocNoTo').Value;
      Parameters.ParamByName('SecondaryDocNoFrom').Value:=Self.qry_TrialBalance.Parameters.ParamByName('SecondaryDocNoFrom').Value;
      Parameters.ParamByName('SecondaryDocNoTo').Value:= Self.qry_TrialBalance.Parameters.ParamByName('SecondaryDocNoTo').Value;
      Parameters.ParamByName('Status1').Value:=Self.qry_TrialBalance.Parameters.ParamByName('Status1').Value;
      Parameters.ParamByName('Status2').Value:= Self.qry_TrialBalance.Parameters.ParamByName('Status2').Value;

      if gv_MultiCompany then begin
        Parameters.ParamByName('CompanyCodeFrom').Value:=Self.qry_TrialBalance.Parameters.ParamByName('CompanyCodeFrom').Value;
        Parameters.ParamByName('CompanyCodeTo').Value:=Self.qry_TrialBalance.Parameters.ParamByName('CompanyCodeTo').Value;
      end;//if
      Active:=true;
   end;//with
   with Dmf.qry_Temp do begin
    Active:=False ;
     SQL.Text:='SELECT LEFT('+Self.qry_TrialBalance.FieldByname('TopicCode').AsString+
              ','+Self.qry_Init.FieldByname('PrvCodeLength').AsString+') AS TopicCode FROM  dbo.Documents';
    Active:=True ;
    qry_TrialBalance.Locate('TopicCode',Fieldbyname('TopicCode').AsInteger,[]);
   end;
 end; //with_RptTrialBalance_AccF
end;

procedure TRptTrialBalance_FinancialF.ShowAfterAccCode(prvLevelID, CodeLength,PrvCodeLength: integer);
begin
  CreateMDIForm3(False,TRptTrialBalance_AccF,RptTrialBalance_AccF,Self,prvLevelID);
  with RptTrialBalance_AccF do Begin
   with qry_TrialBalance do begin
      Active:=false;
      Parameters.ParamByName('DocTypeCodeFrom').Value:=Self.qry_TrialBalance.Parameters.ParamByName('DocTypeCodeFrom').Value;
      Parameters.ParamByName('DocTypeCodeTo').Value:=Self.qry_TrialBalance.Parameters.ParamByName('DocTypeCodeTo').Value;
      Parameters.ParamByName('DocTypeCode1_Not').Value:=Self.qry_TrialBalance.Parameters.ParamByName('DocTypeCode1_Not').Value;
      Parameters.ParamByName('DocTypeCode2_Not').Value:=Self.qry_TrialBalance.Parameters.ParamByName('DocTypeCode2_Not').Value;
      Parameters.ParamByName('DocTypeCode3_Not').Value:=Self.qry_TrialBalance.Parameters.ParamByName('DocTypeCode3_Not').Value;
      Parameters.ParamByName('LenPrvAccCode').Value:=PrvCodeLength;
      Parameters.ParamByName('LenAccCode').Value:=CodeLength;
      Parameters.ParamByName('DocDateFrom').Value:=Self.qry_TrialBalance.Parameters.ParamByName('DocDateFrom').Value;
      Parameters.ParamByName('DocDateTo').Value:=Self.qry_TrialBalance.Parameters.ParamByName('DocDateTo').Value;
      Parameters.ParamByName('PrimaryDocNoFrom').Value:=Self.qry_TrialBalance.Parameters.ParamByName('PrimaryDocNoFrom').Value;
      Parameters.ParamByName('PrimaryDocNoTo').Value:= Self.qry_TrialBalance.Parameters.ParamByName('PrimaryDocNoTo').Value;
      Parameters.ParamByName('SecondaryDocNoFrom').Value:=Self.qry_TrialBalance.Parameters.ParamByName('SecondaryDocNoFrom').Value;
      Parameters.ParamByName('SecondaryDocNoTo').Value:= Self.qry_TrialBalance.Parameters.ParamByName('SecondaryDocNoTo').Value;
      Parameters.ParamByName('Status1').Value:=Self.qry_TrialBalance.Parameters.ParamByName('Status1').Value;
      Parameters.ParamByName('Status2').Value:= Self.qry_TrialBalance.Parameters.ParamByName('Status2').Value;
      with Dmf.qry_Temp do begin
        Active:=False ;
         SQL.Text:='SELECT  MIN(LEFT(TopicCode, '+IntToStr(CodeLength)+')) AS MinTopicCode, '+
                  'MAX(LEFT(TopicCode, '+IntToStr(CodeLength)+')) AS MaxTopicCode '+
                  ' FROM  dbo.Documents WHERE LEFT(TopicCode, '+IntToStr(PrvCodeLength)+') = '+Self.qry_TrialBalance.FieldByname('TopicCode').AsString;
        Active:=True ;
         qry_TrialBalance.Parameters.ParamByName('AccCodeFrom').Value:=Fieldbyname('MinTopicCode').AsCurrency;
         qry_TrialBalance.Parameters.ParamByName('AccCodeTo').Value:=Fieldbyname('MaxTopicCode').AsCurrency;
      end;//with
      if gv_MultiCompany then begin
        Parameters.ParamByName('CompanyCodeFrom').Value:=Self.qry_TrialBalance.Parameters.ParamByName('CompanyCodeFrom').Value;
        Parameters.ParamByName('CompanyCodeTo').Value:=Self.qry_TrialBalance.Parameters.ParamByName('CompanyCodeTo').Value;
      end;//if
      Active:=true;
   end;//with  qry_TrialBalance
  end; //with_RptTrialBalance_Acc2F
end;

procedure TRptTrialBalance_FinancialF.DBGrid1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
//  if DBGrid1.SelectedRows.Count>1 then begin
//    if (Button=mbleft) and (Shift=[ssctrl] )then
//     if DBGrid1.SelectedRows.CurrentRowSelected  then begin
//       sumDebt:=sumDebt+qry_TrialBalance.Fieldbyname('Debt').AsCurrency;
//       sumCredit:=sumCredit+qry_TrialBalance.Fieldbyname('Credit').AsCurrency;
//       sumBalaDebt:=sumBalaDebt+qry_TrialBalance.Fieldbyname('BalanceDebt').AsCurrency;
//       sumBalaCredit:=sumBalaCredit+qry_TrialBalance.Fieldbyname('BalanceCredit').AsCurrency;
//     end
//       else begin
//        sumDebt:=sumDebt-qry_TrialBalance.Fieldbyname('Debt').AsCurrency;
//        sumCredit:=sumCredit-qry_TrialBalance.Fieldbyname('Credit').AsCurrency;
//        sumBalaDebt:=sumBalaDebt-qry_TrialBalance.Fieldbyname('BalanceDebt').AsCurrency;
//        sumBalaCredit:=sumBalaCredit-qry_TrialBalance.Fieldbyname('BalanceCredit').AsCurrency;
//       end
//  end
//   else begin
//       sumDebt:=qry_TrialBalance.Fieldbyname('Debt').AsCurrency;
//       sumCredit:=qry_TrialBalance.Fieldbyname('Credit').AsCurrency;
//       sumBalaDebt:=qry_TrialBalance.Fieldbyname('BalanceDebt').AsCurrency;
//       sumBalaCredit:=qry_TrialBalance.Fieldbyname('BalanceCredit').AsCurrency;
//  end;//if
//  if DBGrid1.SelectedRows.CurrentRowSelected=false  then begin
//     if DBGrid1.SelectedRows.Count>0 then
//       qry_TrialBalance.GotoBookmark(pointer(DBGrid1.SelectedRows[DBGrid1.SelectedRows.Count-1]));
//     if DBGrid1.SelectedRows.Count=1 then begin
//       sumDebt:=qry_TrialBalance.Fieldbyname('Debt').AsCurrency;
//       sumCredit:=qry_TrialBalance.Fieldbyname('Credit').AsCurrency;
//       sumBalaDebt:=qry_TrialBalance.Fieldbyname('BalanceDebt').AsCurrency;
//       sumBalaCredit:=qry_TrialBalance.Fieldbyname('BalanceCredit').AsCurrency;
//     end;
//  end;
//  StatusBar2.Panels[5].Text:='  ⁄œ«œ ”ÿ— «‰ Œ«»Ì='+IntToStr(DBGrid1.SelectedRows.count);
//  StatusBar2.Panels[3].Text:=CurrToStrF(sumDebt,ffCurrency,0);
//  StatusBar2.Panels[2].text:=CurrToStrF(sumCredit,ffCurrency,0);
//  StatusBar2.Panels[1].Text:=CurrToStrF(sumBalaDebt,ffCurrency,0);
//  StatusBar2.Panels[0].text:=CurrToStrF(sumBalaCredit,ffCurrency,0);
end;

procedure TRptTrialBalance_FinancialF.qry_TrialBalanceAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
//  StatusBar3.Panels[5].Text:=' ⁄œ«œ ”ÿ—  « Ã«—Ì= '+IfThen(DataSet.Fieldbyname('_row').AsString<>'',DataSet.Fieldbyname('_row').AsString,'0');
//  StatusBar3.Panels[3].Text:=CurrToStrF(DataSet.fieldbyname('bed').AsCurrency,ffCurrency,0)  ;
//  StatusBar3.Panels[2].Text:=CurrToStrF(DataSet.fieldbyname('bes').AsCurrency,ffCurrency,0)  ;
//  StatusBar3.Panels[1].Text:=CurrToStrF(DataSet.fieldbyname('mandehbed').AsCurrency,ffCurrency,0)  ;
//  StatusBar3.Panels[0].Text:=CurrToStrF(DataSet.fieldbyname('mandehbes').AsCurrency,ffCurrency,0)  ;
//  if flag and ((DBGrid1.SelectedRows.Count = 1) or ((DBGrid1.SelectedRows.Count =0))and (qry_TrialBalance.RecordCount<>0)) then begin
//    StatusBar2.Panels[5].Text:='  ⁄œ«œ ”ÿ— «‰ Œ«»Ì= 1';
//    StatusBar2.Panels[3].Text:=CurrToStrF(DataSet.fieldbyname('Debt').AsCurrency,ffCurrency,0)  ;
//    StatusBar2.Panels[2].text:=CurrToStrF(DataSet.fieldbyname('credit').AsCurrency,ffCurrency,0)  ;
//    StatusBar2.Panels[1].Text:=CurrToStrF(DataSet.fieldbyname('BalanceDebt').AsCurrency,ffCurrency,0)  ;
//    StatusBar2.Panels[0].text:=CurrToStrF(DataSet.fieldbyname('Balancecredit').AsCurrency,ffCurrency,0)  ;
//  end;

end;

procedure TRptTrialBalance_FinancialF.DBGrid1KeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
//  if (Key =vk_UP) and (Shift =[SSshift])   then
//   chooseColumnUp
//  else
//   if (Key=vk_DOWN)or(Key=vk_up) then flag:=true
//   else flag:=false;
end;

//procedure TRptTrialBalance_AccF.chooseColumnUp;
//var
// i:integer;
// bed,bes,balanceBed,balanceBes:Currency;
//begin
//  bed:=0;
//  bes:=0;
//  balanceBed:=0;
//  balanceBes:=0;
//  with qry_TrialBalance do begin
//   try
//    DisableControls;
//    for i:=0 to DBGrid1.SelectedRows.Count-1 do begin
//      GotoBookmark(pointer(DBGrid1.SelectedRows[i]));
//      bed:=bed +fieldbyname('Debt').AsCurrency;
//      bes:=bes +fieldbyname('Credit').AsCurrency;
//      balanceBed:=balanceBed+Fieldbyname('BalanceDebt').AsCurrency;
//      balanceBes:=balanceBes+Fieldbyname('BalanceCredit').AsCurrency;
//    end;//for
//    StatusBar2.Panels[5].Text:='  ⁄œ«œ ”ÿ—Â«Ì «‰ Œ«»Ì = '+IntToStr(DBGrid1.SelectedRows.Count);
//    StatusBar2.Panels[3].Text:=CurrToStrF(bed,ffCurrency,0)  ;
//    StatusBar2.Panels[2].text:=CurrToStrF(bes,ffCurrency,0)  ;
//    StatusBar2.Panels[1].Text:=CurrToStrF(balanceBed,ffCurrency,0)  ;
//    StatusBar2.Panels[0].Text:=CurrToStrF(balanceBes,ffCurrency,0)  ;
//   finally
//    EnableControls;
//   End;
// end ;
//end;
//
//procedure TRptTrialBalance_AccF.chooseColumnDown;
//var
// i:integer;
// bed,bes,balanceBed,balanceBes:Currency;
//begin
//  if qry_TrialBalance.Fieldbyname('_row').AsInteger=qry_TrialBalance.RecordCount then exit;
//  bed:=0;
//  bes:=0;
//  balanceBed:=0;
//  balanceBes:=0;
//  with qry_TrialBalance do begin
//   try
//     DisableControls;
//     DBGrid1.SelectedRows.CurrentRowSelected:=true;
//     for i:=0 to IfThen(DBGrid1.SelectedRows.Count<>0,DBGrid1.SelectedRows.Count-1,0) do begin
//         GotoBookmark(pointer(DBGrid1.SelectedRows[i]));
//         bed:=bed +fieldbyname('Debt').AsCurrency;
//         bes:=bes +fieldbyname('Credit').AsCurrency;
//         balanceBed:=balanceBed+Fieldbyname('BalanceDebt').AsCurrency;
//         balanceBes:=balanceBes+Fieldbyname('BalanceCredit').AsCurrency;
//     end;//for
//     Next;
//     bed:=bed +fieldbyname('Debt').AsCurrency;
//     bes:=bes +fieldbyname('Credit').AsCurrency;
//     balanceBed:=balanceBed+Fieldbyname('BalanceDebt').AsCurrency;
//     balanceBes:=balanceBes+Fieldbyname('BalanceCredit').AsCurrency;
//     Prior;
//     StatusBar2.Panels[5].Text:='  ⁄œ«œ ”ÿ—Â«Ì «‰ Œ«»Ì = '+IntToStr(DBGrid1.SelectedRows.Count+1);
//     StatusBar2.Panels[3].Text:=CurrToStrF(bed,ffCurrency,0)  ;
//     StatusBar2.Panels[2].text:=CurrToStrF(bes,ffCurrency,0)  ;
//     StatusBar2.Panels[1].Text:=CurrToStrF(balanceBed,ffCurrency,0)  ;
//     StatusBar2.Panels[0].Text:=CurrToStrF(balanceBes,ffCurrency,0)  ;
//   finally
//     EnableControls;
//   end;//finally
// end ;
//end;

procedure TRptTrialBalance_FinancialF.DBGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
//  if (Key=vk_DOWN) and (Shift=[SSshift]) then
//   chooseColumnDown
//  else
//   if (Key=vk_DOWN)or(Key=vk_up) then flag:=true
//   else flag:=false;
end;

end.
