unit AccComprasionMonthCtopic2Balance;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, DBCtrls, Grids, Vcl.DBGrids, ImgList, DBActns,
  ActnList, StdCtrls, ExtCtrls, Buttons, DB, ADODB, Menus, SumDBGrid, ppProd,
  ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppBands, ppCache,
  ppParameter, ppCtrls, ppVar, ppPrnabl, ppDesignLayer, System.ImageList,
  System.Actions;

type
  TAccComprasionMonthCtopic2BalanceF = class(Ttemplate2MDIF)
    DBGrid1: TDBGrid;
    BitBtn2: TBitBtn;
    ButtenLevelTop: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn5: TBitBtn;
    qryComprationCTopic: TADOQuery;
    srcComprationCTopic: TDataSource;
    qryComprationCTopicBalanceLastYear: TBCDField;
    qryComprationCTopicBalanceM1: TBCDField;
    qryComprationCTopicBalanceM2: TBCDField;
    qryComprationCTopicBalanceM3: TBCDField;
    qryComprationCTopicBalanceM4: TBCDField;
    qryComprationCTopicBalanceM5: TBCDField;
    qryComprationCTopicBalanceM6: TBCDField;
    qryComprationCTopicBalanceM7: TBCDField;
    qryComprationCTopicBalanceM8: TBCDField;
    qryComprationCTopicBalanceM9: TBCDField;
    qryComprationCTopicBalanceM10: TBCDField;
    qryComprationCTopicBalanceM11: TBCDField;
    qryComprationCTopicBalanceM12: TBCDField;
    qryComprationCTopicallsum: TBCDField;
    actFilter: TAction;
    actSort: TAction;
    actExcel: TAction;
    actBeforeLevel: TAction;
    actPrint: TAction;
    qry_Init: TADOQuery;
    qry_InitLevelID: TIntegerField;
    qry_InitLevelCaption: TStringField;
    qry_InitPrvLevelID: TIntegerField;
    qry_InitCodeLength: TWordField;
    qry_InitPrvLevelCaption: TStringField;
    qry_InitPrvCodeLength: TWordField;
    qry_InitTopicType: TWordField;
    qryComprationCTopicMoeenName_L1: TStringField;
    qryComprationCTopicMoeenName_L2: TStringField;
    qryComprationCTopicTopicCode: TLargeintField;
    BitBtn4: TBitBtn;
    actOther: TAction;
    popOther: TPopupMenu;
    MenuItem3: TMenuItem;
    MenuItem5: TMenuItem;
    SumGrid1: TSumGrid;
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
    qryComprationCTopicCTopicCode2: TIntegerField;
    qryComprationCTopicCTopicName2_L1: TStringField;
    qryComprationCTopicCTopicName2_L2: TStringField;
    procedure actFilterExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure actBeforeLevelExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actExcelExecute(Sender: TObject);
    procedure _actSearchExecute(Sender: TObject);
    procedure actOtherExecute(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure ppLblCaptionGetText(Sender: TObject; var Text: String);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
    procedure actPrintExecute(Sender: TObject);
  private
    ShowFilter: boolean;
    procedure ShowBeforeAccCode(LevelID: Integer);
    procedure UpdateFilter;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  AccComprasionMonthCtopic2BalanceF: TAccComprasionMonthCtopic2BalanceF;

implementation

uses Dm, filter_ADO, FilterClass_ADO, GlobalPro, search2, sort2,
  AccComprasionMonthBalance, DBGrid2Print, FormFunctions, Resource;

{$R *.dfm}

procedure TAccComprasionMonthCtopic2BalanceF.UpdateFilter;
// var
// ts:TStringList;
// s:String;
// i:Integer;
// param1,param2,param3:string;
begin
  // s:=GetcTo(myParams.ParamValues['checked'],ftString);
  // ts:=TStringList.Create;
  // try
  // ts.Text:=StringReplace(s,',',#13,[rfReplaceAll]);
  // param1:='-1' ;
  // param2:='-1' ;
  // param3:='-1' ;
  // for i:=0 to ts.Count-1 do begin
  // if i=0 then param1:= ts[0];
  // if i=1 then param2:= ts[1];
  // if i=2 then param3:= ts[2];
  // if i>2 then break
  // end;//fot
  // finally
  // ts.Free;
  // end;//try
  with qryComprationCTopic do
  begin
    Active := false;
    // Parameters.ParamByName('DocTypeCodeFrom').Value :=
    // GetcFrom(myParams.ParamValues['DocTypeCode'], ftInteger);
    // Parameters.ParamByName('DocTypeCodeTo').Value :=
    // GetcTo(myParams.ParamValues['DocTypeCode'], ftInteger);;
    Parameters.ParamByName('DocTypeCode1_Not').Value :=
      GetcFrom(myParams.ParamValues['checked'], ftString);
    Parameters.ParamByName('DocTypeCode2_Not').Value := 0;
    Parameters.ParamByName('DocTypeCode3_Not').Value := 0;
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
    Parameters.ParamByName('CTopicCode2From').Value :=
      GetcFrom(myParams.ParamValues['CTopicCode2'], ftInteger);
    Parameters.ParamByName('CTopicCode2To').Value :=
      GetcTo(myParams.ParamValues['CTopicCode2'], ftInteger);
    Parameters.ParamByName('DetailCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['DetailCode'], ftInteger);
    Parameters.ParamByName('DetailCodeTo').Value :=
      GetcTo(myParams.ParamValues['DetailCode'], ftInteger);
    Active := True;
  end; // with
end;

procedure TAccComprasionMonthCtopic2BalanceF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItem(DMF.adcAccounting, 'checked', '«‰Ê«⁄ ”‰œ', '', ftUnknown,
        dvDefaults, 'true', '', ciCheck,
        'SELECT DocTypeCode, DocTypeName_L1 FROM Acc.DocTypes ', '');
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
      AddItem(DMF.adcAccounting, 'CtopicCode2', '  ›’Ì·Ì 3 ', 'ﬂœ ', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT CTopicCode2, CTopicName2_L1 FROM acc.CenterTopics2  ',
        'SELECT  MIN(0) , MAX(CTopicCode2) FROM acc.CenterTopics2 ');
      AddItem(DMF.adcAccounting, 'DetailCode', ' Õ”«»  ›’Ì·Ì', 'ﬂœ  ›’Ì·Ì ',
        ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT DetailCode,DetailName_L1 FROM acc.Details WHERE (DetailCode<>0) ',
        'SELECT Min(DetailCode)  , Max(DetailCode)  FROM acc.Documents');
      AddItem(DMF.adcAccounting, 'AccCode', 'ﬂœ Ê ‰«„ Õ”«» ', 'ﬂœ Õ”«»',
        ftLargeint, dvMinMax, '', '', ciLookup,
        'SELECT acc.Categories.TopicCode,MoeenName_L1 FROM acc.Categories where LevelID =3   ',
        'SELECT Min(TopicCode),Max(TopicCode)  FROM acc.Categories WHERE  LevelID =3');
      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateFilter;
      end; // if
    finally
      Free;
    end; // try
  end; // with
end;

procedure TAccComprasionMonthCtopic2BalanceF.FormCreate(Sender: TObject);
begin
  inherited;
  ShowFilter := var_glb_Boolean;
end;

procedure TAccComprasionMonthCtopic2BalanceF.FormShow(Sender: TObject);
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

procedure TAccComprasionMonthCtopic2BalanceF.DBGrid1DrawColumnCell
  (Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
// var
// r:TRect;
// DataName:TADOQuery;
begin
  inherited;
  // if not(gdSelected in State) then
  // begin
  // if odd(DBGrid1.DataSource.DataSet.RecNo) then
  // if Column.Index in [0, 1] then
  // DBGrid1.Canvas.Brush.Color := const_fixed_columns_color;
  // end; // if
  // DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);

  if not(gdSelected in State) then
  begin
    if odd(DBGrid1.DataSource.DataSet.RecNo) then
      DBGrid1.Canvas.Brush.Color := const_fixed_columns_color;
  end; // if
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TAccComprasionMonthCtopic2BalanceF.ShowBeforeAccCode(LevelID: Integer);
begin
  CreateMDIForm3(false, TAccComprasionMonthBalanceF, AccComprasionMonthBalanceF,
    Self, LevelID);
  with AccComprasionMonthBalanceF do
  Begin
    with qryCompration do
    begin
      Active := false;
      Parameters.ParamByName('LenPrvAccCode').Value :=
        Self.qry_Init.FieldByname('PrvCodeLength').AsInteger;
      Parameters.ParamByName('LenAccCode').Value :=
        Self.qry_Init.FieldByname('CodeLength').AsInteger;
      Parameters.ParamByName('DocTypeCodeFrom').Value :=
        qryComprationCTopic.Parameters.ParamByName('DocTypeCodeFrom').Value;
      Parameters.ParamByName('DocTypeCodeTo').Value :=
        qryComprationCTopic.Parameters.ParamByName('DocTypeCodeTo').Value;
      Parameters.ParamByName('DocTypeCode1_Not').Value :=
        qryComprationCTopic.Parameters.ParamByName('DocTypeCode1_Not').Value;
      Parameters.ParamByName('DocTypeCode2_Not').Value :=
        qryComprationCTopic.Parameters.ParamByName('DocTypeCode2_Not').Value;
      Parameters.ParamByName('DocTypeCode3_Not').Value :=
        qryComprationCTopic.Parameters.ParamByName('DocTypeCode3_Not').Value;
      Parameters.ParamByName('DocDateFrom').Value :=
        qryComprationCTopic.Parameters.ParamByName('DocDateFrom').Value;
      Parameters.ParamByName('DocDateTo').Value :=
        qryComprationCTopic.Parameters.ParamByName('DocDateTo').Value;
      Parameters.ParamByName('PrimaryDocNoFrom').Value :=
        qryComprationCTopic.Parameters.ParamByName('PrimaryDocNoFrom').Value;
      Parameters.ParamByName('PrimaryDocNoTo').Value :=
        qryComprationCTopic.Parameters.ParamByName('PrimaryDocNoTo').Value;
      Parameters.ParamByName('SecondaryDocNoFrom').Value :=
        qryComprationCTopic.Parameters.ParamByName('SecondaryDocNoFrom').Value;
      Parameters.ParamByName('SecondaryDocNoTo').Value :=
        qryComprationCTopic.Parameters.ParamByName('SecondaryDocNoTo').Value;
      Parameters.ParamByName('CTopicCode2From').Value :=
        qryComprationCTopic.Parameters.ParamByName('CTopicCode2From').Value;
      Parameters.ParamByName('CTopicCode2To').Value :=
        qryComprationCTopic.Parameters.ParamByName('CTopicCode2To').Value;
      Parameters.ParamByName('FromYearID').Value := APPBank.Year;
      Parameters.ParamByName('ToYearID').Value := APPBank.Year;
      if gv_MultiCompany then
      begin
        Parameters.ParamByName('CompanyCodeFrom').Value :=
          qryComprationCTopic.Parameters.ParamByName('CompanyCodeFrom').Value;
        Parameters.ParamByName('CompanyCodeTo').Value :=
          qryComprationCTopic.Parameters.ParamByName('CompanyCodeTo').Value;
      end; // if
    SetCompanyFilterinLogin(Parameters);

      Active := True;
      Locate('TopicCode', qryComprationCTopic.FieldByname('TopicCode')
        .AsInteger, []);
    end; // with
  end; // with_RptTrialBalance_AccF

end;

procedure TAccComprasionMonthCtopic2BalanceF.actBeforeLevelExecute
  (Sender: TObject);
var
  LevelID: Integer;
begin
  inherited;
  with DMF.qry_Temp do
  begin
    Active := false;
    SQL.Text := 'SELECT  MAX(LevelID) AS MaxLevel  FROM  Acc.AccTopicLevels ' +
      'WHERE  (TopicType = 0)  GROUP BY TopicType';
    Active := True;
    LevelID := FieldByname('MaxLevel').AsInteger
  end;
  with qry_Init do
  begin
    Active := false;
    Parameters.ParamByName('Type').Value := LevelID;
    Active := True;
  end;
  ShowBeforeAccCode(LevelID);
end;

procedure TAccComprasionMonthCtopic2BalanceF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TAccComprasionMonthCtopic2BalanceF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1, True);
end;

procedure TAccComprasionMonthCtopic2BalanceF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryComprationCTopic);
end;

procedure TAccComprasionMonthCtopic2BalanceF.actExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TAccComprasionMonthCtopic2BalanceF._actSearchExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryComprationCTopic);
end;

procedure TAccComprasionMonthCtopic2BalanceF.actOtherExecute(Sender: TObject);
begin
  inherited;
  popOther.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TAccComprasionMonthCtopic2BalanceF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qryComprationCTopic.DisableControls;
    InitReportFile(ppReport1, Self.Name, DBGrid1,ppDBPipeline1);
  finally
    qryComprationCTopic.EnableControls;
  end;
end;

procedure TAccComprasionMonthCtopic2BalanceF.MenuItem3Click(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, 0);
end;

procedure TAccComprasionMonthCtopic2BalanceF.MenuItem5Click(Sender: TObject);
begin
  inherited;
  UpdateAllQry(Self);
end;

procedure TAccComprasionMonthCtopic2BalanceF.ppLblPrintDateGetText
  (Sender: TObject; var Text: String);
begin
  Text := GetPrintDate;
end;

procedure TAccComprasionMonthCtopic2BalanceF.ppSysVarPageNoGetText
  (Sender: TObject; var Text: String);
begin
  Text := GetPageNumberString(Text)
end;

procedure TAccComprasionMonthCtopic2BalanceF.ppLblCaptionGetText(Sender: TObject;
  var Text: String);
begin
  Text := Caption;
end;

procedure TAccComprasionMonthCtopic2BalanceF.ppLblCompanyNameGetText
  (Sender: TObject; var Text: String);
begin
  Text := APPBank.CompanyName;
end;

end.
