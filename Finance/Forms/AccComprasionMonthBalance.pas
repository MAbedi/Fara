unit AccComprasionMonthBalance;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, DBCtrls, Grids, Vcl.DBGrids, ImgList, DBActns,
  ActnList, StdCtrls, ExtCtrls, Buttons, DB, ADODB, Menus, SumDBGrid, ppProd,
  ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppParameter, ppBands,
  ppCtrls, ppVar, ppPrnabl, ppCache, ppDesignLayer, System.ImageList,
  System.Actions;

type
  TAccComprasionMonthBalanceF = class(Ttemplate2MDIF)
    DBGrid1: TDBGrid;
    BitBtn2: TBitBtn;
    ButtenLevelTop: TBitBtn;
    ButtenLevelLow: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn5: TBitBtn;
    qryCompration: TADOQuery;
    srcCompration: TDataSource;
    qryComprationPrvTopicCode: TStringField;
    qryComprationBalanceLastYear: TBCDField;
    qryComprationBalanceM1: TBCDField;
    qryComprationBalanceM2: TBCDField;
    qryComprationBalanceM3: TBCDField;
    qryComprationBalanceM4: TBCDField;
    qryComprationBalanceM5: TBCDField;
    qryComprationBalanceM6: TBCDField;
    qryComprationBalanceM7: TBCDField;
    qryComprationBalanceM8: TBCDField;
    qryComprationBalanceM9: TBCDField;
    qryComprationBalanceM10: TBCDField;
    qryComprationBalanceM11: TBCDField;
    qryComprationBalanceM12: TBCDField;
    qryComprationallsum: TBCDField;
    actFilter: TAction;
    actSort: TAction;
    actExcel: TAction;
    actBeforeLevel: TAction;
    actAfterLevel: TAction;
    actPrint: TAction;
    qry_Init: TADOQuery;
    qry_InitLevelID: TIntegerField;
    qry_InitLevelCaption: TStringField;
    qry_InitPrvLevelID: TIntegerField;
    qry_InitCodeLength: TWordField;
    qry_InitPrvLevelCaption: TStringField;
    qry_InitPrvCodeLength: TWordField;
    qry_InitTopicType: TWordField;
    PopLevel: TPopupMenu;
    N10: TMenuItem;
    N12: TMenuItem;
    qryComprationTopicCode: TStringField;
    qryComprationMoeenName_L1: TStringField;
    qryComprationMoeenName_L2: TStringField;
    SumGrid1: TSumGrid;
    BitBtn4: TBitBtn;
    actOther: TAction;
    popOther: TPopupMenu;
    MenuItem3: TMenuItem;
    MenuItem5: TMenuItem;
    ppDBPipeline1: TppDBPipeline;
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
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure actBeforeLevelExecute(Sender: TObject);
    procedure actAfterLevelExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actExcelExecute(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure _actSearchExecute(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure actOtherExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure ppLblCaptionGetText(Sender: TObject; var Text: String);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
  private
    ShowFilter: boolean;
    formtype: byte;
    procedure ShowBeforeAccCode(LevelID: Integer);
    procedure UpdateFilter;
    procedure InitForm;
    procedure ShowAfterAccCode(prvLevelID, CodeLength, PrvCodeLength: Integer);


    { Private declarations }
  public
    { Public declarations }
  end;

var
  AccComprasionMonthBalanceF: TAccComprasionMonthBalanceF;

implementation

uses Dm, filter_ADO, FilterClass_ADO, GlobalPro, search2, sort2,
  AccComprasionMonthDetailBalance, AccComprasionMonthCtopicBalance,
  DBGrid2Print, FormFunctions, Resource;

{$R *.dfm}

procedure TAccComprasionMonthBalanceF.UpdateFilter;
begin
  with qryCompration do
  begin
    Active := false;
    Parameters.ParamByName('LenPrvAccCode').Value :=
      qry_Init.fieldbyname('PrvCodeLength').AsInteger;
    Parameters.ParamByName('LenAccCode').Value :=
      qry_Init.fieldbyname('CodeLength').AsInteger;
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
    Parameters.ParamByName('DocTypeCode1_Not').Value :=
      GetcFrom(myParams.ParamValues['checked'], ftString);
    Parameters.ParamByName('DocTypeCode2_Not').Value := 0;
    Parameters.ParamByName('DocTypeCode3_Not').Value := 0;
    Parameters.ParamByName('miladiActive').Value := opta.MiladiActive;
    Parameters.ParamByName('FromYearID').Value := APPBank.Year;
    Parameters.ParamByName('ToYearID').Value := APPBank.Year;
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
    Active := True;
  end; // with
end;

procedure TAccComprasionMonthBalanceF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
    try
      AddItem(DMF.adcAccounting, 'checked', '«‰Ê«⁄ ”‰œ', '', ftUnknown,
        dvDefaults, 'true', '', ciCheck,
        'SELECT DocTypeCode, DocTypeName_L1 FROM acc.DocTypes ', '');
      // AddItem(DMF.adcAccounting,'DocTypeCode','«‰Ê«⁄ ”‰œ Õ”«»œ«—Ì','‰Ê⁄ ”‰œ',ftInteger,dvMinMax,'','',ciLookup,'SELECT DocTypeCode, DocTypeName_L1 FROM acc.DocTypes '
      // ,'SELECT Min(DocTypeCode), Max(DocTypeCode) FROM acc.DocTypes');
      AddItem(DMF.adcAccounting, 'DocDate', ' «—ÌŒ ”‰œÕ”«»œ«—Ì', ' «—ÌŒ',
        ftDate, dvMinMax, '', '', ciSimple, '', Format(strMaxMinDocDate,
        [APPBank.Year]));
      AddItem(DMF.adcAccounting, 'PrimaryDocNo', '‘„«—Â «’·Ì ”‰œ Õ”«»œ«—Ì',
        '‘„«—Â ”‰œ', ftInteger, dvMinMax, '', '', ciSimple, '',
        Format(strMaxMinPrimaryDocNo, [APPBank.Year]));
      AddItem(DMF.adcAccounting, 'SecondaryDocNo', '‘„«—Â ›—⁄Ì ”‰œ Õ”«»œ«—Ì',
        '‘„«—Â ›—⁄Ì', ftInteger, dvMinMax, '', '', ciSimple, '',
        Format(strMaxMinSecondaryDocNo, [APPBank.Year]));
      if gv_MultiCompany then
        AddItem(DMF.adcAccounting, 'CompanyCode', 'ﬂœ Ê ‰«„ ‘⁄»Â /‘—ﬂ ', '‘—ﬂ ',
          ftInteger, dvMinMax, '', '', ciLookup,
          'SELECT CompanyCode,CompanyName_L1 FROM acc.Companies',
                'SELECT 0,999999999');
      AddItem(DMF.adcAccounting, 'CtopicCode', '  ›’Ì·Ì 1 ', 'ﬂœ ', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT CTopicCode, CTopicName_L1 FROM acc.CenterTopics ',
        'SELECT  MIN(0) , MAX(CTopicCode) FROM acc.CenterTopics ');
      AddItem(DMF.adcAccounting, 'AccCode', 'ﬂœ Ê ‰«„ Õ”«» ', 'ﬂœ Õ”«»',
        ftLargeint, dvMinMax, '', '', ciLookup,
        'SELECT acc.Categories.TopicCode,MoeenName_L1 FROM acc.Categories where LevelID ='
        + IntToStr(formtype),
        'SELECT Min(TopicCode),Max(TopicCode)  FROM acc.Categories WHERE  LevelID ='
        + IntToStr(formtype));
      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateFilter;
      end; // if
    finally
      Free;
    end; // try

end;

procedure TAccComprasionMonthBalanceF.InitForm;
var
  i: byte;
begin
  with qry_Init do
  Begin
    Active := false;
    Parameters.ParamByName('type').Value := formtype;
    Active := True;
  end; // with
  Caption := 'ê“«—‘ „ﬁ«Ì”Â «Ì „«‰œÂ Õ”«»Â«Ì ' + qry_InitLevelCaption.AsString;
  if formtype = 1 then
    ButtenLevelTop.Enabled := false;

  if opta.MiladiActive <> 0 then
    for i := 3 to 14 do
      DBGrid1.Columns[i].Title.Caption :=
        FormatDateTime('mmm', StrToDate(IntToStr(i - 2) + '/01' + '/2008'));
end;

procedure TAccComprasionMonthBalanceF.FormCreate(Sender: TObject);
begin
  inherited;
  formtype := var_glb_gParam;
  ShowFilter := var_glb_Boolean;
  InitForm;
end;

procedure TAccComprasionMonthBalanceF.FormShow(Sender: TObject);
begin
  inherited;
  if ShowFilter then
  begin
    myParams.Clear;
    actFilter.Execute;
    if myParams.FindParam('DocDate') = nil then
      close;
  end;
end;

procedure TAccComprasionMonthBalanceF.DBGrid1DrawColumnCell(Sender: TObject;
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

procedure TAccComprasionMonthBalanceF.actBeforeLevelExecute(Sender: TObject);
var
  LevelID: Integer;
begin
  inherited;
  LevelID := formtype - 1;
  ShowBeforeAccCode(LevelID);
end;

procedure TAccComprasionMonthBalanceF.ShowBeforeAccCode(LevelID: Integer);
begin
  CreateMDIForm3(false, TAccComprasionMonthBalanceF, AccComprasionMonthBalanceF,
    Self, LevelID);
  with AccComprasionMonthBalanceF do
  Begin
    with qryCompration do
    begin
      Active := false;
      Parameters.ParamByName('LenPrvAccCode').Value :=
        qry_Init.fieldbyname('PrvCodeLength').AsInteger;
      Parameters.ParamByName('LenAccCode').Value :=
        qry_Init.fieldbyname('CodeLength').AsInteger;
      Parameters.ParamByName('DocTypeCodeFrom').Value :=
        Self.qryCompration.Parameters.ParamByName('DocTypeCodeFrom').Value;
      Parameters.ParamByName('DocTypeCodeTo').Value :=
        Self.qryCompration.Parameters.ParamByName('DocTypeCodeTo').Value;
      Parameters.ParamByName('DocTypeCode1_Not').Value :=
        Self.qryCompration.Parameters.ParamByName('DocTypeCode1_Not').Value;
      Parameters.ParamByName('DocTypeCode2_Not').Value :=
        Self.qryCompration.Parameters.ParamByName('DocTypeCode2_Not').Value;
      Parameters.ParamByName('DocTypeCode3_Not').Value :=
        Self.qryCompration.Parameters.ParamByName('DocTypeCode3_Not').Value;
      Parameters.ParamByName('DocDateFrom').Value :=
        Self.qryCompration.Parameters.ParamByName('DocDateFrom').Value;
      Parameters.ParamByName('DocDateTo').Value :=
        Self.qryCompration.Parameters.ParamByName('DocDateTo').Value;
      Parameters.ParamByName('PrimaryDocNoFrom').Value :=
        Self.qryCompration.Parameters.ParamByName('PrimaryDocNoFrom').Value;
      Parameters.ParamByName('PrimaryDocNoTo').Value :=
        Self.qryCompration.Parameters.ParamByName('PrimaryDocNoTo').Value;
      Parameters.ParamByName('SecondaryDocNoFrom').Value :=
        Self.qryCompration.Parameters.ParamByName('SecondaryDocNoFrom').Value;
      Parameters.ParamByName('SecondaryDocNoTo').Value :=
        Self.qryCompration.Parameters.ParamByName('SecondaryDocNoTo').Value;
      Parameters.ParamByName('CTopicCodeFrom').Value :=
        Self.qryCompration.Parameters.ParamByName('CTopicCodeFrom').Value;
      Parameters.ParamByName('CTopicCodeTo').Value :=
        Self.qryCompration.Parameters.ParamByName('CTopicCodeTo').Value;
      Parameters.ParamByName('FromYearID').Value := APPBank.Year;
      Parameters.ParamByName('ToYearID').Value := APPBank.Year;
      if gv_MultiCompany then
      begin
        Parameters.ParamByName('CompanyCodeFrom').Value :=
          Self.qryCompration.Parameters.ParamByName('CompanyCodeFrom').Value;
        Parameters.ParamByName('CompanyCodeTo').Value :=
          Self.qryCompration.Parameters.ParamByName('CompanyCodeTo').Value;
      end; // if
    SetCompanyFilterinLogin(Parameters);

      Active := True;
    end; // with
    with DMF.qry_Temp do
    begin
      Active := false;
      SQL.Text := 'SELECT LEFT(' + Self.qryCompration.fieldbyname('TopicCode')
        .AsString + ',' + Self.qry_Init.fieldbyname('PrvCodeLength').AsString +
        ') AS TopicCode FROM  acc.Documents';
      Active := True;
      qryCompration.Locate('TopicCode', fieldbyname('TopicCode')
        .AsLargeInt, []);
    end;

  end; // with_RptTrialBalance_AccF

end;

procedure TAccComprasionMonthBalanceF.actAfterLevelExecute(Sender: TObject);
var
  prvLevelID: Integer;
  PrvCodeLength, CodeLength: Integer;
begin
  inherited;
  // if  qryCompration.FieldByname('TopicCode').AsString='' then abort;
  // TopTopice:=qryCompration.Fieldbyname('TopicCode').AsLargeInt;
  with DMF.qry_Temp do
  begin
    Active := false;
    SQL.Text :=
      'SELECT acc.AccTopicLevels.LevelID, acc.AccTopicLevels.CodeLength, ISNULL(AccTopicLevels_1.CodeLength, 0) AS PrvCodeLength '
      + ' FROM  acc.AccTopicLevels LEFT OUTER JOIN  acc.AccTopicLevels AccTopicLevels_1 ON acc.AccTopicLevels.PrvLevelID = AccTopicLevels_1.LevelID '
      + ' WHERE (acc.AccTopicLevels.TopicType = 0) AND acc.AccTopicLevels.PrvLevelID ='
      + IntToStr(formtype);
    Active := True;
    PrvCodeLength := fieldbyname('PrvCodeLength').AsInteger;
    CodeLength := fieldbyname('CodeLength').AsInteger;
    prvLevelID := fieldbyname('LevelID').AsInteger;

    if fieldbyname('LevelID').AsString = '' then
      PopLevel.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y)
    else
      ShowAfterAccCode(prvLevelID, CodeLength, PrvCodeLength);

  end;
end;

procedure TAccComprasionMonthBalanceF.ShowAfterAccCode(prvLevelID, CodeLength,
  PrvCodeLength: Integer);
begin
  CreateMDIForm3(false, TAccComprasionMonthBalanceF, AccComprasionMonthBalanceF,
    Self, prvLevelID);
  with AccComprasionMonthBalanceF do
  Begin
    with qryCompration do
    begin
      Active := false;
      Parameters.ParamByName('DocTypeCodeFrom').Value :=
        Self.qryCompration.Parameters.ParamByName('DocTypeCodeFrom').Value;
      Parameters.ParamByName('DocTypeCodeTo').Value :=
        Self.qryCompration.Parameters.ParamByName('DocTypeCodeTo').Value;
      Parameters.ParamByName('DocTypeCode1_Not').Value :=
        Self.qryCompration.Parameters.ParamByName('DocTypeCode1_Not').Value;
      // Self.Param1 ;
      Parameters.ParamByName('DocTypeCode2_Not').Value :=
        Self.qryCompration.Parameters.ParamByName('DocTypeCode2_Not').Value;
      // Self.param2;
      Parameters.ParamByName('DocTypeCode3_Not').Value :=
        Self.qryCompration.Parameters.ParamByName('DocTypeCode3_Not').Value;
      // Self.param3;
      Parameters.ParamByName('LenPrvAccCode').Value := PrvCodeLength;
      Parameters.ParamByName('LenAccCode').Value := CodeLength;
      Parameters.ParamByName('DocDateFrom').Value :=
        Self.qryCompration.Parameters.ParamByName('DocDateFrom').Value;
      Parameters.ParamByName('DocDateTo').Value :=
        Self.qryCompration.Parameters.ParamByName('DocDateTo').Value;
      Parameters.ParamByName('PrimaryDocNoFrom').Value :=
        Self.qryCompration.Parameters.ParamByName('PrimaryDocNoFrom').Value;
      Parameters.ParamByName('PrimaryDocNoTo').Value :=
        Self.qryCompration.Parameters.ParamByName('PrimaryDocNoTo').Value;
      Parameters.ParamByName('SecondaryDocNoFrom').Value :=
        Self.qryCompration.Parameters.ParamByName('SecondaryDocNoFrom').Value;
      Parameters.ParamByName('SecondaryDocNoTo').Value :=
        Self.qryCompration.Parameters.ParamByName('SecondaryDocNoTo').Value;
      Parameters.ParamByName('CTopicCodeFrom').Value :=
        Self.qryCompration.Parameters.ParamByName('CTopicCodeFrom').Value;
      Parameters.ParamByName('CTopicCodeTo').Value :=
        Self.qryCompration.Parameters.ParamByName('CTopicCodeTo').Value;
      Parameters.ParamByName('FromYearID').Value := APPBank.Year;
      Parameters.ParamByName('ToYearID').Value := APPBank.Year;
      if gv_MultiCompany then
      begin
        Parameters.ParamByName('CompanyCodeFrom').Value :=
          Self.qryCompration.Parameters.ParamByName('CompanyCodeFrom').Value;
        Parameters.ParamByName('CompanyCodeTo').Value :=
          Self.qryCompration.Parameters.ParamByName('CompanyCodeTo').Value;
      end; // if
    SetCompanyFilterinLogin(Parameters);

      with DMF.qry_Temp do
      begin
        Active := false;
        SQL.Text := 'SELECT  MIN(LEFT(TopicCode, ' + IntToStr(CodeLength) +
          ')) AS MinTopicCode, ' + 'MAX(LEFT(TopicCode, ' + IntToStr(CodeLength)
          + ')) AS MaxTopicCode ' +
          ' FROM  acc.Documents WHERE LEFT(TopicCode, ' +
          IntToStr(PrvCodeLength) + ') = ' + Self.qryCompration.fieldbyname
          ('TopicCode').AsString;
        Active := True;
        qryCompration.Parameters.ParamByName('AccCodeFrom').Value :=
          fieldbyname('MinTopicCode').AsInteger;
        qryCompration.Parameters.ParamByName('AccCodeTo').Value :=
          fieldbyname('MaxTopicCode').AsInteger;
      end; // with
      Active := True;
    end; // with  qry_TrialBalance
  end; // with_RptTrialBalance_Acc2F
end;

procedure TAccComprasionMonthBalanceF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TAccComprasionMonthBalanceF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1, True);
end;

procedure TAccComprasionMonthBalanceF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryCompration);
end;

procedure TAccComprasionMonthBalanceF.actExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TAccComprasionMonthBalanceF.N10Click(Sender: TObject);
var
  TopTopice: Integer;
begin
  inherited;
  if qryCompration.fieldbyname('TopicCode').AsString = '' then
    abort;
  TopTopice := qryCompration.fieldbyname('TopicCode').AsLargeInt;
  CreateMDIForm3(false, TAccComprasionMonthDetailBalanceF,
    AccComprasionMonthDetailBalanceF, AccComprasionMonthBalanceF);
  // --------SET Parameters in  TAccComprasionMonthDetailBalanceF  form
  with AccComprasionMonthDetailBalanceF do
  Begin
    with qryComprationDetail do
    begin
      Active := false;
      Parameters.ParamByName('DocTypeCodeFrom').Value :=
        qryCompration.Parameters.ParamByName('DocTypeCodeFrom').Value;
      Parameters.ParamByName('DocTypeCodeTo').Value :=
        qryCompration.Parameters.ParamByName('DocTypeCodeTo').Value;
      Parameters.ParamByName('DocTypeCode1_Not').Value :=
        qryCompration.Parameters.ParamByName('DocTypeCode1_Not').Value;
      // Self.Param1 ;
      Parameters.ParamByName('DocTypeCode2_Not').Value :=
        qryCompration.Parameters.ParamByName('DocTypeCode2_Not').Value;
      // Self.param2;
      Parameters.ParamByName('DocTypeCode3_Not').Value :=
        qryCompration.Parameters.ParamByName('DocTypeCode3_Not').Value;
      // Self.param3;

      Parameters.ParamByName('DocDateFrom').Value :=
        qryCompration.Parameters.ParamByName('DocDateFrom').Value;
      Parameters.ParamByName('DocDateTo').Value :=
        qryCompration.Parameters.ParamByName('DocDateTo').Value;
      Parameters.ParamByName('PrimaryDocNoFrom').Value :=
        qryCompration.Parameters.ParamByName('PrimaryDocNoFrom').Value;
      Parameters.ParamByName('PrimaryDocNoTo').Value :=
        qryCompration.Parameters.ParamByName('PrimaryDocNoTo').Value;
      Parameters.ParamByName('SecondaryDocNoFrom').Value :=
        qryCompration.Parameters.ParamByName('SecondaryDocNoFrom').Value;
      Parameters.ParamByName('SecondaryDocNoTo').Value :=
        qryCompration.Parameters.ParamByName('SecondaryDocNoTo').Value;
      if gv_MultiCompany then
      begin
        Parameters.ParamByName('CompanyCodeFrom').Value :=
          qryCompration.Parameters.ParamByName('CompanyCodeFrom').Value;
        Parameters.ParamByName('CompanyCodeTo').Value :=
          qryCompration.Parameters.ParamByName('CompanyCodeTo').Value;
      end; // if
    SetCompanyFilterinLogin(Parameters);

      Parameters.ParamByName('CTopicCodeFrom').Value :=
        Self.qryCompration.Parameters.ParamByName('CTopicCodeFrom').Value;
      Parameters.ParamByName('CTopicCodeTo').Value :=
        Self.qryCompration.Parameters.ParamByName('CTopicCodeTo').Value;
      Parameters.ParamByName('AccCodeFrom').Value := TopTopice;
      Parameters.ParamByName('AccCodeTo').Value := TopTopice;
      Parameters.ParamByName('FromYearID').Value := APPBank.Year;
      Parameters.ParamByName('ToYearID').Value := APPBank.Year;
      Active := True;
    end; // with
  end // with_ TAccComprasionMonthDetailBalanceF
end;

procedure TAccComprasionMonthBalanceF.N12Click(Sender: TObject);
var
  TopTopice: Integer;
begin
  inherited;
  TopTopice := qryCompration.fieldbyname('TopicCode').AsLargeInt;
  CreateMDIForm3(false, TAccComprasionMonthCtopicBalanceF,
    AccComprasionMonthCtopicBalanceF, AccComprasionMonthBalanceF);
  // --------SET Parameters in  TF  form
  with AccComprasionMonthCtopicBalanceF do
  Begin
    with qryComprationCTopic do
    begin
      Active := false;
      Parameters.ParamByName('DocTypeCodeFrom').Value :=
        qryCompration.Parameters.ParamByName('DocTypeCodeFrom').Value;
      Parameters.ParamByName('DocTypeCodeTo').Value :=
        qryCompration.Parameters.ParamByName('DocTypeCodeTo').Value;
      Parameters.ParamByName('DocTypeCode1_Not').Value :=
        qryCompration.Parameters.ParamByName('DocTypeCode1_Not').Value;
      // Self.Param1 ;
      Parameters.ParamByName('DocTypeCode2_Not').Value :=
        qryCompration.Parameters.ParamByName('DocTypeCode2_Not').Value;
      // Self.param2;
      Parameters.ParamByName('DocTypeCode3_Not').Value :=
        qryCompration.Parameters.ParamByName('DocTypeCode3_Not').Value;
      // Self.param3;

      Parameters.ParamByName('DocDateFrom').Value :=
        qryCompration.Parameters.ParamByName('DocDateFrom').Value;
      Parameters.ParamByName('DocDateTo').Value :=
        qryCompration.Parameters.ParamByName('DocDateTo').Value;
      Parameters.ParamByName('PrimaryDocNoFrom').Value :=
        qryCompration.Parameters.ParamByName('PrimaryDocNoFrom').Value;
      Parameters.ParamByName('PrimaryDocNoTo').Value :=
        qryCompration.Parameters.ParamByName('PrimaryDocNoTo').Value;
      Parameters.ParamByName('SecondaryDocNoFrom').Value :=
        qryCompration.Parameters.ParamByName('SecondaryDocNoFrom').Value;
      Parameters.ParamByName('SecondaryDocNoTo').Value :=
        qryCompration.Parameters.ParamByName('SecondaryDocNoTo').Value;
      if gv_MultiCompany then
      begin
        Parameters.ParamByName('CompanyCodeFrom').Value :=
          qryCompration.Parameters.ParamByName('CompanyCodeFrom').Value;
        Parameters.ParamByName('CompanyCodeTo').Value :=
          qryCompration.Parameters.ParamByName('CompanyCodeTo').Value;
      end; // if
    SetCompanyFilterinLogin(Parameters);

      Parameters.ParamByName('CTopicCodeFrom').Value :=
        Self.qryCompration.Parameters.ParamByName('CTopicCodeFrom').Value;
      Parameters.ParamByName('CTopicCodeTo').Value :=
        Self.qryCompration.Parameters.ParamByName('CTopicCodeTo').Value;
      Parameters.ParamByName('AccCodeFrom').Value := TopTopice;
      Parameters.ParamByName('AccCodeTo').Value := TopTopice;
      Parameters.ParamByName('FromYearID').Value := APPBank.Year;
      Parameters.ParamByName('ToYearID').Value := APPBank.Year;
      Active := True;
    end; // with
  end // with AccComprasionMonthCtopicBalanceF
end;

procedure TAccComprasionMonthBalanceF._actSearchExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryCompration);
end;

procedure TAccComprasionMonthBalanceF.MenuItem3Click(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, 0);
end;

procedure TAccComprasionMonthBalanceF.MenuItem5Click(Sender: TObject);
begin
  inherited;
  UpdateAllQry(Self);
end;

procedure TAccComprasionMonthBalanceF.actOtherExecute(Sender: TObject);
begin
  inherited;
  popOther.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TAccComprasionMonthBalanceF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qryCompration.DisableControls;
    InitReportFile(ppReport1, Self.Name, DBGrid1,ppDBPipeline1);
  finally
    qryCompration.EnableControls;
  end;

end;

procedure TAccComprasionMonthBalanceF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  Text := GetPrintDate;
end;

procedure TAccComprasionMonthBalanceF.ppSysVarPageNoGetText(Sender: TObject;
  var Text: String);
begin
  Text := GetPageNumberString(Text)
end;

procedure TAccComprasionMonthBalanceF.ppLblCaptionGetText(Sender: TObject; var Text: String);
begin
  Text := Caption;
end;

procedure TAccComprasionMonthBalanceF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  Text := APPBank.CompanyName;
end;

end.
