unit DocGroups;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, Menus, ppCtrls, ppDB, ppPrnabl, System.Types,
  ppClass, ppBands, ppCache, ppDBPipe, ppComm, ppRelatv, ppProd, ppReport,
  ppVar, DBCtrls, ppTypes, ppParameter, FormFunctions, ppDesignLayer,
  System.ImageList, System.Actions, GeneralDM, ToolCtrlsEh, DBGridEhGrouping,
  DBGridEhToolCtrls, DynVarsEh, Vcl.Mask, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, CedarDbGrid, System.Generics.Collections;

type
  TDocGroupsF = class(Ttemplate2MDIF)
    src_DocGroups: TDataSource;
    qry_DocGroups: TADOQuery;
    qry_DocGroupsCompanyCode: TIntegerField;
    qry_DocGroupsSerial: TIntegerField;
    qry_DocGroupsSecondaryDocNo: TIntegerField;
    qry_DocGroupsPrimaryDocNo: TIntegerField;
    qry_DocGroupsDocDate: TStringField;
    qry_DocGroupsDocTopic: TStringField;
    qry_DocGroupsStatus: TWordField;
    qry_DocGroupsDocTypeCode: TIntegerField;
    qry_DocGroupsDocTypeName: TStringField;
    BitBtn2: TBitBtn;
    BitBtn4: TBitBtn;
    actFilter: TAction;
    actPrint: TAction;
    BitBtn5: TBitBtn;
    actSendToExcel: TAction;
    PopupMenu1: TPopupMenu;
    actShowDoc: TAction;
    actDeleteDoc: TAction;
    actChangeStateDoc: TAction;
    N17: TMenuItem;
    N18: TMenuItem;
    N19: TMenuItem;
    N20: TMenuItem;
    N110: TMenuItem;
    N22: TMenuItem;
    N32: TMenuItem;
    N23: TMenuItem;
    N24: TMenuItem;
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    N11: TMenuItem;
    PopupPrint: TPopupMenu;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    MenuItem10: TMenuItem;
    MenuItem11: TMenuItem;
    MenuItem12: TMenuItem;
    MenuItem13: TMenuItem;
    actSort: TAction;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    actChangeState1: TAction;
    actChangeState2: TAction;
    actChangeState21: TMenuItem;
    actChangeStateAll1: TAction;
    actChangeStateAll2: TAction;
    actChangeStateAll21: TMenuItem;
    actChangeStateAll3: TAction;
    PopupChSt: TPopupMenu;
    mnuMovagat: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem14: TMenuItem;
    MenuItem15: TMenuItem;
    MenuItem16: TMenuItem;
    MenuItem17: TMenuItem;
    qry_DocGroupsDocTopic_L2: TStringField;
    qry_DocGroupsDocTypeName_L2: TStringField;
    qry_DocGroupsCompanyName_L2: TStringField;
    BitBtn6: TBitBtn;
    BitBtn8: TBitBtn;
    qryDocNote: TADOQuery;
    srcDocNote: TDataSource;
    qryDocNoteSerial: TIntegerField;
    qryDocNoteSecondaryDocNo: TIntegerField;
    qryDocNotePrimaryDocNo: TIntegerField;
    actSearch2: TAction;
    SpeedButton7: TSpeedButton;
    qry_DocGroupsFirstUser: TStringField;
    qry_DocGroupsSecondUser: TStringField;
    actSpecial: TAction;
    N4: TMenuItem;
    qry_DocGroupsrow: TIntegerField;
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
    Panel1: TPanel;
    Label1: TLabel;
    pnlSearch: TPanel;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    edtSearch: TEdit;
    CmbFastSearch: TComboBox;
    actOrderBySec: TAction;
    qry_Documents: TADOQuery;
    qry_DocumentsID: TIntegerField;
    qry_DocumentsSerial: TIntegerField;
    qry_DocumentscodeKol: TStringField;
    qry_DocumentsTopicCode: TLargeintField;
    qry_DocumentsDetailCode: TIntegerField;
    qry_DocumentsCTopicCode: TIntegerField;
    qry_DocumentsCTopicCode2: TIntegerField;
    qry_DocumentsCTopicCode3: TIntegerField;
    qry_DocumentsComment: TStringField;
    qry_DocumentsComment_L2: TStringField;
    qry_DocumentsRow: TIntegerField;
    qry_DocumentsDebt: TFMTBCDField;
    qry_DocumentsCredit: TFMTBCDField;
    qry_DocumentsAidDocdate: TStringField;
    qry_DocumentsAidAmount: TFloatField;
    qry_DocumentsBudgetTopicID: TIntegerField;
    qry_DocumentsBudgetID: TIntegerField;
    qry_DocumentsReferenceNo: TIntegerField;
    qry_DocumentsReferenceTxt: TStringField;
    qry_DocumentsReferenceDate: TStringField;
    qry_DocumentsProjectID: TIntegerField;
    qry_DocumentsReferenceCheck: TWordField;
    qry_Documents_MoeenName: TStringField;
    qry_Documents_DetailName: TStringField;
    qry_Documents_CtopicName: TStringField;
    qry_Documents_CTopicName2: TStringField;
    qry_Documents_Radif: TIntegerField;
    qry_Documents_HasAid: TIntegerField;
    qry_DocumentsBedBes: TIntegerField;
    qry_Documents_KolName: TStringField;
    qry_Documents_HasBudget: TIntegerField;
    qry_Documents_BudgetTopicID: TIntegerField;
    qry_Documents_ProjectID: TIntegerField;
    qry_Documents_Essence: TIntegerField;
    qry_Documents_RepEssence: TIntegerField;
    qry_Documents_LevelID: TIntegerField;
    qry_Documents_LenghtTopic: TIntegerField;
    qry_DocumentsCompanyCode: TIntegerField;
    qry_DocumentsAuditDoPrint: TWordField;
    qry_DocumentsCTopicName3_l1: TStringField;
    src_Documents: TDataSource;
    actChangeState3: TAction;
    N28: TMenuItem;
    N29: TMenuItem;
    qry_DocGroupsyearId: TIntegerField;
    btnOther: TBitBtn;
    actOther: TAction;
    popOther: TPopupMenu;
    N30: TMenuItem;
    N31: TMenuItem;
    btnFilter: TBitBtn;
    N12: TMenuItem;
    N13: TMenuItem;
    N1: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    N2: TMenuItem;
    Excel1: TMenuItem;
    qry_DocGroupsSourceDataBase: TStringField;
    qry_DocumentsAidDocNo: TFMTBCDField;
    actSelectAll: TAction;
    N3: TMenuItem;
    qry_DocGroupsCompanyName: TStringField;
    qryDocNoteDocNote_L1: TStringField;
    qryDocNoteDocNote_L2: TStringField;
    pmnChangeStatusSelectRow: TPopupMenu;
    mniAllClick: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem5: TMenuItem;
    actChangeStatusSelectRow: TAction;
    n5: TMenuItem;
    N6: TMenuItem;
    actAppendix: TAction;
    qry_DocGroupsAppendix: TIntegerField;
    DBGrid1: TCedarDbgrid;
    chkFooter4Sum: TCheckBox;
    N7: TMenuItem;
    N21: TMenuItem;
    N25: TMenuItem;
    actChangeState0: TAction;
    actChangeStateAll0: TAction;
    qry_DocGroupsDebt: TFMTBCDField;
    qry_DocGroupssumBed: TFMTBCDField;
    qry_DocGroupsMandeh: TFMTBCDField;
    qry_UnConst: TADOQuery;
    qry_DocGroupsDocNote_L1: TStringField;
    edtDocNote_L1: TDBEdit;
    N26: TMenuItem;
    N27: TMenuItem;
    procedure actFilterExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure N19Click(Sender: TObject);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure actDeleteDocExecute(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure ppLabel28GetText(Sender: TObject; var Text: String);
    procedure ppLabel1GetText(Sender: TObject; var Text: String);
    procedure ppLabel13GetText(Sender: TObject; var Text: String);
    procedure ppLabel27GetText(Sender: TObject; var Text: String);
    procedure ppLabel12GetText(Sender: TObject; var Text: String);
    procedure ppLabel24GetText(Sender: TObject; var Text: String);
    procedure ppLabel10GetText(Sender: TObject; var Text: String);
    procedure ppLabel26GetText(Sender: TObject; var Text: String);
    procedure qry_DocGroupsStatusGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure ppDBText6GetText(Sender: TObject; var Text: String);
    procedure actShowDocExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure SysVarPageNoGetText(Sender: TObject; var Text: String);
    procedure SysVarPage2GetText(Sender: TObject; var Text: String);
    procedure actChangeState1Execute(Sender: TObject);
    procedure actChangeState2Execute(Sender: TObject);
    procedure actChangeStateAll1Execute(Sender: TObject);
    procedure actChangeStateAll2Execute(Sender: TObject);
    procedure actChangeStateAll3Execute(Sender: TObject);
    procedure actChangeStateDocExecute(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure qry_DocGroupsAfterScroll(DataSet: TDataSet);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtSearchChange(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure actSearch2Execute(Sender: TObject);
    procedure MenuItem11Click(Sender: TObject);
    procedure actOrderBySecExecute(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure _actSearchExecute(Sender: TObject);
    procedure actChangeState3Execute(Sender: TObject);
    procedure N30Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure N15Click(Sender: TObject);
    procedure N16Click(Sender: TObject);
    procedure actOtherExecute(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure actSelectAllExecute(Sender: TObject);
    procedure mniAllClickClick(Sender: TObject);
    procedure actChangeStatusSelectRowExecute(Sender: TObject);
    procedure actAppendixExecute(Sender: TObject);
    procedure chkFooter4SumClick(Sender: TObject);
    procedure actChangeState0Execute(Sender: TObject);
    procedure actChangeStateAll0Execute(Sender: TObject);
    procedure N26Click(Sender: TObject);
  private
    Limit: string;
    FormType: Integer;
    FSqlTxt: string;
    procedure FastSearch;
    procedure UpdateList;
    procedure doprint;
    function KillDoc(Sn, CM: Integer): Boolean;
    // procedure ChangeStatusAll(st:integer);
    procedure ChangeStatus(StateT: Integer; MaxPrimary: Integer;
      AllChange: Boolean = False; IsPerpetuate: Boolean = False;
      Sn: Integer = 0 { ; CompanyCode: Integer = 1 } );
    procedure StautePerpetuate(AllState: Boolean = True);
    // Function CheckAccurateUser:Boolean;

    function GetUnConstBefore(d: string): Largeint;
    function CanMovagat(aDate: String): Boolean;
    procedure DocsStatus(Caption: string; Status: Integer);
    procedure ProcCheckExistsFile;
    function GetMaxPrimary(RowsCount: Integer): Largeint;
    procedure ApplyPrimaryNumbers;
    procedure CreateTempTable;
    procedure InsertSelectedSerialsBatch(const ASerials: TList<Integer>);
    procedure UpdatePrimaryNumbers;
  public
    { Public declarations }
  end;

var
  DocGroupsF: TDocGroupsF;

const
  msg = 'بعد ازاين تاريخ سند دائم در سيستم موجود است';
  PartSise = 100;

implementation

uses Dm, GlobalPro, filter_ADO, FilterClass_ADO, mmessage,
  Document, search2, sort2, ChangeNum, CreateDoc,
  DBGrid2Print, Note_docGroup,
  Resource, Math, FaraConsts, ViewFileOnServer, ViewFileOnServerDB;
{$R *.dfm}
{ TDocGroupsF }

procedure TDocGroupsF.UpdateList;
var
  // ts: TStringList;
  // i: Integer;
  s, docType, Txt: string;
  // param1, param2: Integer;
  LimitCompony: string;
begin
  s := GetcFrom(myParams.ParamValues['checked'], ftString);
  docType := GetcFrom(myParams.ParamValues['type'], ftString);

  LimitCompony := '';
  with qry_DocGroups do
  begin
    Active := False;
    SQL.Text := StringReplace(FSqlTxt, '@@T', s, [rfReplaceAll]);
    SQL.Text := StringReplace(SQL.Text, '@@P', docType, [rfReplaceAll]);

    if Parameters.FindParam('UserID') = nil then
      Warn('FindParamUserID');

    if ((opta.ChkSelfDocShow) and
      ((CurAccess and Integer(TMyAccessKind.akSelfDocShow)) = 0)) then
      // if (CurAccess and Integer(TMyAccessKind.akSelfDocShow)) = 0 then
      Txt := 'AND(Acc.DocGroups.UserID = ' + user.id.ToString + ')'
    else
      Txt := EmptyStr;

    // if CompanyFilterinLogin then
    // Txt := Txt + ' AND(Acc.DocGroups.companyCode = ' +FcompanyCodeLogin.ToString + ')';

    SQL.Text := StringReplace(SQL.Text, ':UserID', Txt, [rfReplaceAll]);

    // setInOrNotIn4QRy(qry_DocGroups, myParams, 'number', 'R1.ReciptNumber');

    if gv_MultiCompany then
    begin
      Parameters.ParamByName('CompanyCodeFrom').Value :=
        GetcFrom(myParams.ParamValues['CompanyCode'], ftInteger);

      Parameters.ParamByName('CompanyCodeTO').Value :=
        GetcTo(myParams.ParamValues['CompanyCode'], ftInteger);
      Parameters.ParamByName('CompanyCodeFrom2').Value :=
        GetcFrom(myParams.ParamValues['CompanyCode'], ftInteger);
      Parameters.ParamByName('CompanyCodeTO2').Value :=
        GetcTo(myParams.ParamValues['CompanyCode'], ftInteger);
    end
    else
    begin
      Parameters.ParamByName('CompanyCodeFrom').Value := 0;
      Parameters.ParamByName('CompanyCodeTo').Value := 2147483647;
      Parameters.ParamByName('CompanyCodeFrom2').Value := 0;
      Parameters.ParamByName('CompanyCodeTO2').Value := 2147483647;
    end;

    SetCompanyFilterinLogin(Parameters);

    Parameters.ParamByName('SecondaryDocNoFrom').Value :=
      GetcFrom(myParams.ParamValues['SecondaryDocNo'], ftInteger);
    Parameters.ParamByName('SecondaryDocNoTo').Value :=
      GetcTo(myParams.ParamValues['SecondaryDocNo'], ftInteger);
    Parameters.ParamByName('PrimaryDocNoFrom').Value :=
      GetcFrom(myParams.ParamValues['PrimaryDocNo'], ftInteger);
    Parameters.ParamByName('PrimaryDocNoTo').Value :=
      GetcTo(myParams.ParamValues['PrimaryDocNo'], ftInteger);
    Parameters.ParamByName('DocDateFrom').Value :=
      GetcFrom(myParams.ParamValues['DocDate'], ftDate);
    Parameters.ParamByName('DocDateTo').Value :=
      GetcTo(myParams.ParamValues['DocDate'], ftDate);
    // Parameters.ParamByName('Status1').Value := GetcFrom(myParams.ParamValues['checked'], ftString);;
    // Parameters.ParamByName('Status2').Value := param2;
    Parameters.ParamByName('YearId').Value := APPBank.Year;
    Parameters.ParamByName('YearId2').Value := APPBank.Year;
    if gv_MultiCompany then
      LimitCompony := ' از كد شركت ' +
        GetcFrom(myParams.ParamValues['CompanyCode'], ftString) + ' تا كد شركت '
        + GetcTo(myParams.ParamValues['CompanyCode'], ftString);
    Limit := LimitCompony + ' از تاريخ' +
      GetcFrom(myParams.ParamValues['DocDate'], ftDate) + 'تا تاريخ' +
      GetcTo(myParams.ParamValues['DocDate'], ftDate);
    Active := True;
  end; // with
end;

procedure TDocGroupsF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(self, myParams) do
    try
      AddItem(DMF.adcAccounting, 'checked', 'وضعيت اسناد', '', ftUnknown,
        dvDefaults, 'true', '', ciCheck,
        'SELECT State, CASE State WHEN 0 THEN ''پيش نوس'' WHEN 1 THEN ''موقت'' WHEN 2 THEN ''قطعي'' WHEN 3 THEN ''دائم'' END'
        + ' AS StateName FROM ( SELECT 0 AS State UNION SELECT 1 UNION SELECT 2 UNION SELECT 3) AS Temp'
        + ' ORDER BY State');

      AddItem(DMF.adcAccounting, 'type', 'انواع سند', '', ftUnknown, dvDefaults,
        'true', '', ciCheck, strLookUpDocType, '');
      AddItem(DMF.adcAccounting, 'DocDate', 'تاريخ ', 'تاريخ', ftDate, dvMinMax,
        '', '', ciSimple, '', Format(strMaxMinDocDate, [APPBank.Year]));

      AddItem(DMF.adcAccounting, 'PrimaryDocNo', 'شماره اصلي ', 'شماره اصلي',
        ftInteger, dvMinMax, '', '', ciSimple, '', Format(strMaxMinPrimaryDocNo,
        [APPBank.Year]));

      AddItem(DMF.adcAccounting, 'SecondaryDocNo', 'شماره فرعي ', 'شماره فرعي',
        ftInteger, dvMinMax, '', '', ciSimple, '',
        Format(strMaxMinSecondaryDocNo, [APPBank.Year]));
      if gv_MultiCompany then
        AddItem(DMF.adcAccounting, 'CompanyCode', 'كد شركت ', 'كد شركت',
          ftInteger, dvMinMax, '', '', ciLookup,
          'SELECT  CompanyCode, CompanyName_L1 FROM  acc.Companies  ',
          ' Select 0,2147483647 ');

      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateList;
      end
      else if (myParams.FindParam('DocDate') <> nil) then
        abort;
    finally
      Free
    end; // try

end;

procedure TDocGroupsF.actPrintExecute(Sender: TObject);
var
  p: TPoint;
begin
  inherited;
  p := ClientToScreen(Point(BitBtn5.Left, BitBtn5.Top + PnlUnderButton.Top));
  PopupPrint.Popup(p.X, p.Y);
end;

procedure TDocGroupsF.N19Click(Sender: TObject);
begin
  inherited;
  try
    qry_DocGroups.DisableControls;
    InitReportFile(ppReport1, 'DocGroups_compony', DBGrid1, ppDBPipeline1);
  finally
    qry_DocGroups.EnableControls;
  end;
end;

procedure TDocGroupsF.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TDocGroupsF.actDeleteDocExecute(Sender: TObject); { edit by mehdi }
var
  i: Integer;
  m: Integer;
begin
  inherited;
  if not DMF.CheckLevel(DelLevel, FormType) then
    abort;

  if qry_DocGroups.FieldByName('Status').AsInteger > 1 then
  begin
    Warn('سند قابل حذف كردن نيست.');
    abort;
  end; // if
  m := 0;
  if DBGrid1.SelectedRows.Count > 1 then
  begin
    if get_response('آيا براي حذف اسناد انتخاب شده مطمئن هستيد؟') = mrYes then
      for i := 0 to DBGrid1.SelectedRows.Count - 1 do
      begin
        qry_DocGroups.GotoBookmark((DBGrid1.SelectedRows[i]));
        if qry_DocGroups.FieldByName('Status').AsInteger = 1 then
        begin
          if CheckRelatedIDExists(qry_DocGroups.FieldByName('Serial').AsInteger,
            True) then
            if get_response('سند شماره ' + inttostr(qry_DocGroups.fieldvalues
              ['SecondaryDocNo']) +
              ' در آنالیز حساب استفاده شده آیا مایل به حذف می باشید؟ ') <> mrYes
            then
              continue
            else
              DeleteRelatedID(qry_DocGroups.FieldByName('serial').AsInteger);
          KillDoc(qry_DocGroups.FieldByName('Serial').AsInteger,
            qry_DocGroupsCompanyCode.AsInteger);
          m := m + 1;
        end;
      end;
    BigMessage(inttostr(m) + 'سند انتخاب شده حذف شد.‏ ', 1);
  end
  else
  begin
    if get_response(Format('آيا از حذف سند شماره %D مطمئن هستيد؟',
      [qry_DocGroups.FieldByName('SecondaryDocNo').AsInteger])) <> mrYes then
      abort;
    if CheckRelatedIDExists(qry_DocGroups.FieldByName('Serial').AsInteger, True)
    then
      if get_response
        ('این سند در آنالیز حساب استفاده شده آیا مایل به حذف می باشید؟') <> mrYes
      then
        abort;
    DeleteRelatedID(qry_DocGroups.FieldByName('serial').AsInteger);
    KillDoc(qry_DocGroups.FieldByName('Serial').AsInteger,
      qry_DocGroupsCompanyCode.AsInteger);
    BigMessage('سند حذف شد.‏', 1);
  end;
  qry_DocGroups.Requery();

end;

procedure TDocGroupsF.N11Click(Sender: TObject);
begin
  inherited;
  try
    qry_DocGroups.DisableControls;
    InitReportFile(ppReport1, 'DocGroups', DBGrid1, ppDBPipeline1);
  finally
    qry_DocGroups.EnableControls;
  end;

end;

procedure TDocGroupsF.ppLabel28GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TDocGroupsF.ppLabel1GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TDocGroupsF.ppLabel13GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TDocGroupsF.ppLabel27GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TDocGroupsF.ppLabel12GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := Limit;
end;

procedure TDocGroupsF.ppLabel24GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TDocGroupsF.ppLabel10GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TDocGroupsF.ppLabel26GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := Limit;
end;

procedure TDocGroupsF.qry_DocGroupsStatusGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    0:
      Text := ' پيش نويس ';
    1:
      Text := ' موقت ';
    2:
      Text := ' قطعي ';
    3:
      Text := ' دائم ';
  end; // case
end;

procedure TDocGroupsF.ppDBText6GetText(Sender: TObject; var Text: String);
begin
  inherited;
  case StrToInt(Text) of
    0:
      Text := ' پيش نويس ';
    1:
      Text := ' موقت ';
    2:
      Text := ' قطعي ';
    3:
      Text := ' دائم ';
  end; // case

end;

procedure TDocGroupsF.FormCreate(Sender: TObject);
begin
  inherited;

  if APPBank.StatusYear = 2 then
    BitBtn4.Enabled := False;

  FSqlTxt := qry_DocGroups.SQL.Text;
  actOrderBySec.Visible := IsPublisher(DMF.adcAccounting);
end;

procedure TDocGroupsF.actShowDocExecute(Sender: TObject);
begin
  inherited;
  GetUserAccess('mnuDocument');
  DocumentF.FindDoc(qry_DocGroupsSerial.AsInteger,
    qry_DocGroups.FieldByName('YearId').AsInteger,
    qry_DocGroupsCompanyCode.AsInteger, SHAllDoc);
end;

procedure TDocGroupsF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qry_DocGroups);
end;

procedure TDocGroupsF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  actShowDoc.Execute;
end;

procedure TDocGroupsF.SysVarPageNoGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TDocGroupsF.SysVarPage2GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TDocGroupsF.actChangeState0Execute(Sender: TObject);
begin
  inherited;
  if CanMovagat(qry_DocGroupsDocDate.AsString) then
  begin
    Warn(msg);
    Exit;
  end;

  ChangeStatus(0, 0);
end;

procedure TDocGroupsF.actChangeState1Execute(Sender: TObject);
begin
  inherited;
  if CanMovagat(qry_DocGroupsDocDate.AsString) then
  begin
    Warn(msg);
    Exit;
  end;
  ChangeStatus(1, 0);
end;

procedure TDocGroupsF.actChangeState2Execute(Sender: TObject);
begin
  inherited;
  if CanMovagat(qry_DocGroupsDocDate.AsString) then
  begin
    Warn(msg);
    Exit;
  end;
  if DMF.CheckLevel(edtState2, FormType) then
    ChangeStatus(2, 0);
end;

function TDocGroupsF.GetUnConstBefore(d: string): Largeint;
begin
  with DMF.qry_Temp do
  begin
    Close;
    SQL.Text := 'SELECT Count(Serial) FROM Acc.DocGroups';
    SQL.Add('WHERE (PrimaryDocNo = 0) AND (DocDate<:DocDate) and (YearId = :Year)');
    if CompanyFilterinLogin then
      SQL.Text := SQL.Text + ' AND(Acc.DocGroups.companyCode = ' +
        FcompanyCodeLogin.ToString + ')';

    Parameters.ParamByName('DocDate').Value := d;
    Parameters.ParamByName('Year').Value := APPBank.Year;
    Open;
    Result := Fields[0].AsInteger;
    Close;
  end; // with
end;

procedure TDocGroupsF.ChangeStatus(StateT: Integer; MaxPrimary: Integer;
  AllChange: Boolean = False; IsPerpetuate: Boolean = False;
  Sn: Integer = 0 { ; CompanyCode: Integer = 1 } );
var
  uSQL, aWhere: string;
  CanMsg: Boolean;
  CompanyCode: Integer; { New }
begin
  inherited;

  if AllChange and (get_response('آیا از تغییر وضیت سند مطمئن هستید؟') <> mrYes)
  then
    abort;

  aWhere := ' Where (Acc.DocGroups.CompanyCode BETWEEN :CompanyCodeFrom AND :CompanyCodeTO)AND'
    + ' (Acc.DocGroups.SecondaryDocNo BETWEEN :SecondaryDocNoFrom AND :SecondaryDocNoTo) AND'
    + ' (Acc.DocGroups.PrimaryDocNo BETWEEN :PrimaryDocNoFrom AND :PrimaryDocNoTo) AND'
    + ' (Acc.DocGroups.DocDate BETWEEN :DocDateFrom AND :DocDateTo) and' +
    ' (Acc.DocGroups.Status in (' + GetcFrom(myParams.ParamValues['checked'],
    ftString) + ')) AND ' + ' (Acc.DocGroups.YearId = :YearID)';

  if AllChange then
    with qry_DocGroups do
      try
        Filter := 'Mandeh <> 0';
        Filtered := True;
        if not IsEmpty then
        begin
          Warn('اسناد غیرموازنه در لیست وجود دارند');
          Exit;
        end;
      finally
        Filtered := False;
      end;
  CompanyCode := qry_DocGroupsCompanyCode.AsInteger;
  // if opta.RestDocCode then
  // MaxPrimary := GetANewCode('',
  // Format('select max(PrimaryDocNo) from acc.docGroups where  YearID=%d And CompanyCode =%d',
  // [APPBank.Year, CompanyCode]), 'PrimaryDocNo', DMF.adcAccounting)
  // else
  // MaxPrimary := GetANewCode('',
  // Format('select max(PrimaryDocNo) from acc.docGroups where  YearID=%d',
  // [APPBank.Year]), 'PrimaryDocNo', DMF.adcAccounting);

  if IsPerpetuate then
  begin
    uSQL := Format
      ('UPDATE Acc.DocGroups SET Status = %D, PrimaryDocNo = %D  where  PrimaryDocNo = 0 And Serial =%D  and YearID = %D And CompanyCode =%d',
      [StateT, MaxPrimary, Sn, APPBank.Year, CompanyCode]);
    DMF.adcAccounting.Execute(uSQL);

    Exit;
  end;
  // if
  uSQL := Format('UPDATE Acc.DocGroups SET Status = %D, PrimaryDocNo = 0  ',
    [StateT]);
  if AllChange then
    uSQL := uSQL + aWhere
  else
  begin
    if qry_DocGroupsMandeh.AsCurrency <> 0 then
    begin
      Warn('سند موازنه نمی باشد');
      Exit;
    end;

    if not((qry_DocGroups.FieldByName('Status').AsInteger <= 1) or
      (user.level >= 15)) then
    begin
      Warn('مجاز به تغيير وضعيت نمي باشيد');
      Exit;
    end;
    uSQL := uSQL + Format('WHERE (Serial = %D) and (YearID = %d)',
      [qry_DocGroups.FieldByName('Serial').AsInteger, APPBank.Year]);
    try
      DMF.adcAccounting.Execute(uSQL);
      BigMessage('يك سند با موفقيت تغيير وضعيت شد', 1);
      qry_DocGroups.Requery();
      Exit;

    except
      on e: Exception do
        add2log(e.Message);
    end;

  END;

  with TADOQuery.Create(self) do
    try
      Connection := DMF.adcAccounting;
      If (user.level >= 15) and (AllChange) then
      begin
        Close;
        SQL.Text := uSQL;
        // Parameters := qry_DocGroups.Parameters;
        Parameters.ParamByName('CompanyCodeFrom').Value :=
          qry_DocGroups.Parameters.ParamByName('CompanyCodeFrom').Value;
        Parameters.ParamByName('CompanyCodeTO').Value :=
          qry_DocGroups.Parameters.ParamByName('CompanyCodeTO').Value;

        SetCompanyFilterinLogin(Parameters);

        Parameters.ParamByName('SecondaryDocNoFrom').Value :=
          qry_DocGroups.Parameters.ParamByName('SecondaryDocNoFrom').Value;
        Parameters.ParamByName('SecondaryDocNoTo').Value :=
          qry_DocGroups.Parameters.ParamByName('SecondaryDocNoTo').Value;
        Parameters.ParamByName('DocDateFrom').Value :=
          qry_DocGroups.Parameters.ParamByName('DocDateFrom').Value;
        Parameters.ParamByName('DocDateTo').Value :=
          qry_DocGroups.Parameters.ParamByName('DocDateTo').Value;
        Parameters.ParamByName('yearid').Value := APPBank.Year;
        Parameters.ParamByName('PrimaryDocNoFrom').Value :=
          qry_DocGroups.Parameters.ParamByName('PrimaryDocNoFrom').Value;
        Parameters.ParamByName('PrimaryDocNoTo').Value :=
          qry_DocGroups.Parameters.ParamByName('PrimaryDocNoTo').Value;
        CanMsg := ExecSQL > 0;
      end
      else
      begin
        Close;
        SQL.Text := 'SELECT COUNT(Status)  FROM Acc.DocGroups ';
        SQL.Add(aWhere);
        SQL.Add('and Acc.DocGroups.Status >  ' + inttostr(StateT));
        Parameters.ParamByName('CompanyCodeFrom').Value :=
          qry_DocGroups.Parameters.ParamByName('CompanyCodeFrom').Value;
        Parameters.ParamByName('CompanyCodeTO').Value :=
          qry_DocGroups.Parameters.ParamByName('CompanyCodeTO').Value;

        SetCompanyFilterinLogin(Parameters);

        Parameters.ParamByName('SecondaryDocNoFrom').Value :=
          qry_DocGroups.Parameters.ParamByName('SecondaryDocNoFrom').Value;
        Parameters.ParamByName('SecondaryDocNoTo').Value :=
          qry_DocGroups.Parameters.ParamByName('SecondaryDocNoTo').Value;
        Parameters.ParamByName('DocDateFrom').Value :=
          qry_DocGroups.Parameters.ParamByName('DocDateFrom').Value;
        Parameters.ParamByName('DocDateTo').Value :=
          qry_DocGroups.Parameters.ParamByName('DocDateTo').Value;
        Parameters.ParamByName('yearid').Value := APPBank.Year;
        Parameters.ParamByName('PrimaryDocNoFrom').Value :=
          qry_DocGroups.Parameters.ParamByName('PrimaryDocNoFrom').Value;
        Parameters.ParamByName('PrimaryDocNoTo').Value :=
          qry_DocGroups.Parameters.ParamByName('PrimaryDocNoTo').Value;;
        Open;
        if Fields[0].AsInteger > 0 then
          Warn('  تعداد  ' + Fields[0].AsString +
            '   در وضعيت سطوح بالاتر مي باشند .مجاز به تغيير آنها نميباشيد .‏‏');
        Close;
        SQL.Text := uSQL;
        SQL.Add(' and Acc.DocGroups.Status <  ' + inttostr(StateT));
        CanMsg := ExecSQL > 0;
      end;
      if CanMsg then
        BigMessage(' تغيير وضعيت مورد نظر با موفقيت انجام شد .‏', 1);
    finally
      Free;
      qry_DocGroups.Requery();
    End;
end;

procedure TDocGroupsF.chkFooter4SumClick(Sender: TObject);
begin
  inherited;
  DBGrid1.SelectedSum := chkFooter4Sum.Checked;
  if chkFooter4Sum.Checked then
  begin
    DBGrid1.SetFooter4Sum([])
  end;
end;

procedure TDocGroupsF.actChangeStateAll0Execute(Sender: TObject);
var
  MaxPrimary: Integer;
begin
  inherited;
  if CanMovagat(qry_DocGroups.Parameters.ParamByName('DocDateTo').Value) then
  begin
    Warn(msg);
    Exit;
  end;

  ChangeStatus(0, GetMaxPrimary(DBGrid1.SelectedRows.Count), True);
end;

Function TDocGroupsF.GetMaxPrimary(RowsCount: Integer): Largeint;
begin
  if opta.RestDocCode then
    Result := GetANewCodeBulkRange('',
      Format('select max(PrimaryDocNo) from acc.docGroups where  YearID=%d And CompanyCode =%d',
      [APPBank.Year, qry_DocGroupsCompanyCode.AsInteger]), 'PrimaryDocNo',
      RowsCount, DMF.adcAccounting)
  else
    Result := GetANewCodeBulkRange('',
      Format('select max(PrimaryDocNo) from acc.docGroups where  YearID=%d',
      [APPBank.Year]), 'PrimaryDocNo', RowsCount, DMF.adcAccounting);

end;

procedure TDocGroupsF.actChangeStateAll1Execute(Sender: TObject);
begin
  inherited;
  if CanMovagat(qry_DocGroups.Parameters.ParamByName('DocDateTo').Value) then
  begin
    Warn(msg);
    Exit;
  end;
  ChangeStatus(1, GetMaxPrimary(DBGrid1.SelectedRows.Count), True);
end;

procedure TDocGroupsF.actChangeStateAll2Execute(Sender: TObject);
begin
  inherited;
  if CanMovagat(qry_DocGroups.Parameters.ParamByName('DocDateTo').Value) then
  begin
    Warn(msg);
    Exit;
  end;

  if DMF.CheckLevel(edtState2, FormType) then
    ChangeStatus(2, GetMaxPrimary(DBGrid1.SelectedRows.Count), True);
end;

procedure TDocGroupsF.actChangeStateAll3Execute(Sender: TObject);
begin
  inherited;
  if get_response('آيا از تغيير وضعيت به دائم مطمئن هستيد؟‏') <> mrYes then
    Exit;
  if DMF.CheckLevel(edtState3, FormType) then
  begin
    FreeReserveCodeAll('دائمی کردن اسناد');
    StautePerpetuate;
  end;

end;

procedure TDocGroupsF.actChangeStateDocExecute(Sender: TObject);
var
  p: TPoint;
begin
  inherited;
  // ---------------edit Mostafa //------------------------------------------------
  // if not DMF.CheckLevel(ChgLevel, FormType, False) then
  // If (User.password <> CheckPassF.CheckAccurateUser('چك كردن كلمه عبور',
  // 'كلمه عبور خود را وارد كنيد:‏', '*')) then
  // begin
  // Warn('كلمه عبور صحيح نمي باشد.‏');
  // Exit;
  // end;
  if DMF.CheckLevel(ChgLevel, FormType, True) THEN
  begin
    FreeReservedCodes(DMF.adcAccounting, 'acc.docGroups');
    p := ClientToScreen(Point(BitBtn4.Left, BitBtn4.Top + PnlUnderButton.Top));
    PopupChSt.Popup(p.X + 90, p.Y - 55);
  end;
end;

procedure TDocGroupsF.actChangeStatusSelectRowExecute(Sender: TObject);
begin
  inherited;
  if DMF.CheckLevel(ChgLevel, FormType, True) THEN
    pmnChangeStatusSelectRow.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TDocGroupsF.StautePerpetuate;
var
  i, MaxPrimary: Integer;
  cFrom, cTo: Integer;
  secFrom, secTo: Integer;
  priFrom, priTo: Integer;
  dateFrom, dateTo: string;
  qry: TADOQuery;
begin
  try
    qry := TADOQuery.Create(self);
    qry.Connection := qry_DocGroups.Connection;
    qry.SQL := qry_DocGroups.SQL;
    qry.Parameters := qry_DocGroups.Parameters;
    qry.Open;
    with qry do
      try
        Filter := 'Debt = 0';
        Filtered := True;
        if RecordCount > 0 then
        begin
          Warn('سند خالي در سيستم موجود است.‏');
          Exit;
        end;
      finally
        Filtered := False;
      end;
    with qry do
      try
        Filter := 'Mandeh <> 0';
        Filtered := True;
        if RecordCount > 0 then
        begin
          Warn('سند موازنه نمي باشد');
          Exit;
        end;
      finally
        Filtered := False;
      end;

    if AllState then
      if GetUnConstBefore(GetcFrom(myParams.ParamValues['DocDate'], ftDate)) > 0
      then
      begin
        Warn('اسنادي قبل از اين محدوده وجود دارند كه دائمي نشده اند.‏');
        Exit;
      end
      else if get_response('آيا از تغيير وضعيت مطمئن هستيد؟‏') <> mrYes then
        Exit;

    if not AllState then
    begin
      MaxPrimary := GetMaxPrimary(DBGrid1.SelectedRows.Count);

      DMF.adcAccounting.BeginTrans;
      try
        for i := 0 to DBGrid1.SelectedRows.Count - 1 do
        begin
          qry_DocGroups.GotoBookmark((DBGrid1.SelectedRows.items[i]));
          if not(GetUnConstBefore(qry_DocGroups.FieldByName('DocDate')
            .AsString) > 0) then
            ChangeStatus(3, MaxPrimary, False, True,
              qry_DocGroups.FieldByName('Serial').AsInteger);
          inc(MaxPrimary);
        End;
        DMF.adcAccounting.CommitTrans;
      except
        DMF.adcAccounting.RollbackTrans;
        raise;
      end;

      qry_DocGroups.Parameters.ParamByName('PrimaryDocNoFrom').Value := 0;
      qry_DocGroups.Parameters.ParamByName('PrimaryDocNoTo').Value :=
        2147483647;
      qry_DocGroups.Requery();
    end
    else
    begin
      with DMF.qry_Temp do
      begin
        Close;
        if gv_MultiCompany then
        begin
          cFrom := GetcFrom(myParams.ParamValues['CompanyCode'], ftInteger);
          cTo := GetcTo(myParams.ParamValues['CompanyCode'], ftInteger);
        end
        else
        begin
          cFrom := 0;
          cTo := 2147483647;
        end;

        if CompanyFilterinLogin then
        begin
          cFrom := FcompanyCodeLogin;
          cTo := FcompanyCodeLogin;
        end;

        secFrom := GetcFrom(myParams.ParamValues['SecondaryDocNo'], ftInteger);
        secTo := GetcTo(myParams.ParamValues['SecondaryDocNo'], ftInteger);

        priFrom := GetcFrom(myParams.ParamValues['PrimaryDocNo'], ftInteger);
        priTo := GetcTo(myParams.ParamValues['PrimaryDocNo'], ftInteger);

        dateFrom := GetcFrom(myParams.ParamValues['DocDate'], ftDate);
        dateTo := GetcTo(myParams.ParamValues['DocDate'], ftDate);

        SQL.Text :=
          Format('SELECT CompanyCode, Serial, SecondaryDocNo, PrimaryDocNo, DocDate, Status, '
          + 'Acc.DocTypes.DocTypeCode, SortId FROM acc.DocGroups ' +
          'INNER JOIN Acc.DocTypes ON Acc.DocGroups.DocTypeCode = Acc.DocTypes.DocTypeCode '
          + 'Where (Acc.DocGroups.YearId = %d) ' +
          'GROUP BY DocDate, PrimaryDocNo, SecondaryDocNo, CompanyCode, Serial, '
          + 'Acc.DocTypes.DocTypeCode, SortId, Status ' +
          'Having (Acc.DocGroups.CompanyCode BETWEEN %d AND %d )AND ' +
          '(Acc.DocGroups.SecondaryDocNo BETWEEN %d AND %d ) AND ' +
          '(Acc.DocGroups.PrimaryDocNo BETWEEN %d AND %d) AND ' +
          '(Acc.DocGroups.DocDate BETWEEN %s AND %s) and ' +
          '(Acc.DocGroups.Status<>3) ' +
          ' ORDER BY DocDate, SortId, SecondaryDocNo ',
          [APPBank.Year, cFrom, cTo, secFrom, secTo, priFrom, priTo,
          QuotedStr(dateFrom), QuotedStr(dateTo)]);

        Open;
        First;
        MaxPrimary := GetMaxPrimary(RecordCount);

        DMF.adcAccounting.BeginTrans;
        try
          while not Eof do
          begin
            ChangeStatus(3, MaxPrimary, False, True,
              FieldByName('Serial').AsInteger { ,
                FieldByName('CompanyCode').AsInteger } );
            inc(MaxPrimary);
            Next;
          end;
          DMF.adcAccounting.CommitTrans;
        except
          DMF.adcAccounting.RollbackTrans;
          raise;
        end;

        Close;
      end;
      FreeReservedCodes(DMF.adcAccounting, 'acc.docGroups');
      BigMessage('اسناد مورد نظر دائمي شدند.‏', 1);
      qry_DocGroups.Parameters.ParamByName('PrimaryDocNoFrom').Value := 0;
      qry_DocGroups.Parameters.ParamByName('PrimaryDocNoTo').Value :=
        2147483647;
      qry_DocGroups.Requery();
    end;
  finally
    qry.Free;
  end;
end;

procedure TDocGroupsF.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Key = VK_RETURN) then
    actShowDoc.Execute;
end;

procedure TDocGroupsF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qry_DocGroups.FieldByName('SecondaryDocNo'));
end;

procedure TDocGroupsF.qry_DocGroupsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  // WITH qryDocNote do
  // begin
  // Close;
  // Parameters.ParamByName('Serial').Value :=
  // qry_DocGroups.FieldByName('Serial').AsInteger;
  // Parameters.ParamByName('YearID').Value :=
  // qry_DocGroups.FieldByName('YearID').AsInteger;
  // Parameters.ParamByName('CompanyCode').Value :=
  // qry_DocGroups.FieldByName('CompanyCode').AsInteger;
  //
  // Open;
  // if (opt.LanguageDisplay1 and opt.LanguageDisplay2) then
  // edtNote.Text := '  ' + FieldByName('DocNote_L1').AsString + '        ' +
  // FieldByName('DocNote_L2').AsString
  // else if opt.LanguageDisplay1 then
  // edtNote.Text := '  ' + FieldByName('DocNote_L1').AsString
  // else
  // begin
  // edtNote.Text := '   ' + FieldByName('DocNote_L2').AsString;
  // Label1.Caption := 'Document Note';
  // end;
  // end;

end;

procedure TDocGroupsF.N26Click(Sender: TObject);
begin
  inherited;
  if get_response('آيا از تغيير وضعيت به دائم مطمئن هستيد؟‏') <> mrYes then
    Exit;
  ApplyPrimaryNumbers
end;

procedure TDocGroupsF.N2Click(Sender: TObject);
var
  s: String;
begin
  inherited;
  with qryDocNote do
  begin
    Close;
    Parameters.ParamByName('Serial').Value :=
      qry_DocGroups.FieldByName('Serial').AsInteger;
    Parameters.ParamByName('YearID').Value :=
      qry_DocGroups.FieldByName('YearID').AsInteger;
    Parameters.ParamByName('CompanyCode').Value :=
      qry_DocGroups.FieldByName('CompanyCode').AsInteger;

    Open;

    s := ChangeNumF.enter(' تغيير شماره فرعي  ' + qryDocNote.FieldByName
      ('SecondaryDocNo').AsString + ' به ');
    if s <> '' then
    begin
      edit;
      FieldByName('SecondaryDocNo').Value := s;
      Post;
    end; // if
    qry_DocGroups.Requery();
  end; // with

end;

procedure TDocGroupsF.N3Click(Sender: TObject);
var
  s: String;
begin
  inherited;
  with qryDocNote do
  begin
    Close;
    Parameters.ParamByName('Serial').Value :=
      qry_DocGroups.FieldByName('Serial').AsInteger;
    Parameters.ParamByName('YearID').Value :=
      qry_DocGroups.FieldByName('YearID').AsInteger;
    Parameters.ParamByName('CompanyCode').Value :=
      qry_DocGroups.FieldByName('CompanyCode').AsInteger;

    Open;
    s := ChangeNumF.enter(' تغيير شماره اصلي  ' + qryDocNote.FieldByName
      ('PrimaryDocNo').AsString + ' به ');
    if s <> '' then
    begin
      edit;
      FieldByName('PrimaryDocNo').Value := s;
      Post;
    end; // if
    qry_DocGroups.Requery();
  end; // with
end;

procedure TDocGroupsF.FormShow(Sender: TObject);
begin
  inherited;
  FormType := var_glb_gParam;
  myParams.Clear;

  if actFilter.Execute then
    if myParams.FindParam('DocDate') = nil then
    begin
      Close;
      Exit;
    end;
  setColumns2(DBGrid1, gv_MultiCompany, 'CompanyName');
  setColumns2(DBGrid1, gv_MultiCompany, 'CompanyCode');
  if not(user.OperatorKind >= 2) and (user.level < 20) then
  begin
    N8.Visible := False;
    mnuMovagat.Visible := N8.Visible;
    actOrderBySec.Tag := -2;
  end;
  actDeleteDoc.Enabled := APPBank.StatusYear = 0;
  if opta.LastDoc then
    qry_DocGroups.Last;
end;

procedure TDocGroupsF.FastSearch;
var
  i: Integer;
  s: String;
begin
  i := Integer(CmbFastSearch.items.Objects[CmbFastSearch.ItemIndex]);
  s := trim(edtSearch.Text);
  if s = '' then
    Exit;
  with qry_DocGroups do
  begin
    if Fields[i].DataType in [ftString, ftWideString] then
      Filter := Fields[i].FieldName + ' like ' + QuotedStr('%' + s + '%')
    else
      Filter := Fields[i].FieldName + ' = ' + s;
    if not FindFirst then
    begin
      SpeedButton5.Enabled := False;
      SpeedButton6.Enabled := False;
    end
    else
    begin
      SpeedButton5.Enabled := True;
      SpeedButton6.Enabled := True;
    end;
  end; // with
end;

procedure TDocGroupsF.edtSearchChange(Sender: TObject);
begin
  inherited;
  FastSearch;
end;

procedure TDocGroupsF.SpeedButton6Click(Sender: TObject);
begin
  inherited;
  if not qry_DocGroups.FindNext then
    Warn('انتهاي جستجو');
end;

procedure TDocGroupsF.SpeedButton5Click(Sender: TObject);
begin
  inherited;
  if not qry_DocGroups.FindPrior then
    Warn('ابتداي جستجو');
end;

procedure TDocGroupsF.actSearch2Execute(Sender: TObject);
var
  i: Byte;
begin
  inherited;
  pnlSearch.Visible := not(pnlSearch.Visible);
  if not pnlSearch.Visible then
    Exit;
  if pnlSearch.Visible then
    edtSearch.SetFocus;
  with qry_DocGroups do
    try
      CmbFastSearch.Clear;
      for i := 0 to FieldCount - 1 do
        if not(Fields[i].FieldKind in [fkLookup]) and (Fields[i].Tag <> -1) then
          CmbFastSearch.items.AddObject(Fields[i].DisplayLabel, TObject(i));
    finally
      if CmbFastSearch.items.Count > 0 then
        CmbFastSearch.ItemIndex := 0;
    end; // try
end;

procedure TDocGroupsF.actSelectAllExecute(Sender: TObject);
begin
  inherited;
  DBGridSelectAll(DBGrid1);
end;

procedure TDocGroupsF.doprint;
var
  FS: WideString;
begin
  with qry_DocGroups do
    try
      First;
      DisableControls;
      while not Eof do
      begin
        FS := FS + FieldByName('Serial').AsString + ',';
        Next;
      end;
      SetLength(FS, length(FS) - 1);
    finally
      EnableControls;
      First;
    end;

  with TDocumentF.Create(Application) do
    try
      with qry_DocGroups do
      begin
        Close;
        SQL.Text := 'Select * from Acc.DocGroups';
        SQL.Add('where (Serial in (' + FS + '))');
        SQL.Add('order by PrimaryDocNo, SecondaryDocNo');
        Open;
        ppMaster.RangeBegin := rbFirstRecord;
        ppMaster.RangeEnd := reLastRecord;
        pop1.Click;
      end;
    finally
      // Free;
    end;
end;

procedure TDocGroupsF.MenuItem11Click(Sender: TObject);
begin
  inherited;
  doprint;
end;

procedure TDocGroupsF.mniAllClickClick(Sender: TObject);
begin
  inherited;
  if CanMovagat(qry_DocGroupsDocDate.AsString) then
  begin
    Warn(msg);
    Exit;
  end;
  DocsStatus((Sender as TMenuItem).Caption, (Sender as TMenuItem).Tag)
end;

procedure TDocGroupsF.DocsStatus(Caption: string; Status: Integer);
var
  i, c, Serial, CompanyCode, YearID: Integer;
  s: string;
  procedure sUPDATE;
  begin
    If s <> EmptyStr then
      with DMF.qryTmpTmp do
      begin
        Active := False;
        SQL.Text := 'UPDATE Acc.DocGroups SET Status = :Status WHERE ' +
          '(Serial IN (' + s + '))';
        SQL.Add(' AND  CompanyCode=' + qry_DocGroups.FieldByName('CompanyCode')
          .AsString);
        SQL.Add(' AND  YearID  =' + qry_DocGroups.FieldByName('YearID')
          .AsString);
        Parameters.ParamByName('Status').Value := Status;
        c := c + ExecSQL;
        SQL.Text := EmptyStr;
        BigMessage(inttostr(c) + ' سند از ' +
          inttostr(DBGrid1.SelectedRows.Count) + ' ‌ ' + Caption + ' شد.', 1);
        Active := False;
        s := EmptyStr;
      end; // with
  end;

begin
  case Status of
    2:
      if not DMF.CheckLevel(edtState2, FormType) then
        Exit;
    3:
      if not DMF.CheckLevel(edtState3, FormType) then
        Exit;
  end;

  c := 0;

  if DBGrid1.SelectedRows.Count > 0 then
    if get_response('آيا براي ' + Caption +
      ' نمودن سند‌هاي انتخاب شده مطمئن هستيد؟') <> mrYes then
      Exit;

  try
    qry_DocGroups.DisableControls;
    with DBGrid1.DataSource.DataSet do
      for i := 0 to DBGrid1.SelectedRows.Count - 1 do
      begin
        GotoBookmark((DBGrid1.SelectedRows.items[i]));
        if s <> '' then
          s := s + ',';

        s := s + FieldByName('Serial').AsString;

        if (i + 1) mod PartSise = 0 then
          sUPDATE;

      end;
    sUPDATE;
  finally
    With qry_DocGroups do
    begin
      AfterScroll := qry_DocGroupsAfterScroll;
      EnableControls;
      Serial := FieldByName('Serial').AsInteger;
      CompanyCode := FieldByName('CompanyCode').AsInteger;
      YearID := FieldByName('YearID').AsInteger;
      Requery([]);
      Locate('Serial;CompanyCode;YearID',
        VarArrayOf([Serial, CompanyCode, YearID]), [])
    end;;
  end;

end;

procedure TDocGroupsF.actOrderBySecExecute(Sender: TObject);
var
  p: String;
  qry, qryUpdate: TADOQuery;
  qry2: TADOQuery;
  oldSecNo: Integer;
begin
  inherited;
  p := opta.DriveBackup;
  BackupDatabaseLocalAndNet(p);
  // qry_DocGroups.Active := False;
  if not DMF.adcAccounting.InTransaction then
    DMF.adcAccounting.BeginTrans;
  qry := TADOQuery.Create(nil);
  qry2 := TADOQuery.Create(nil);
  qryUpdate := TADOQuery.Create(nil);
  qryUpdate.Connection := DMF.adcAccounting;
  qry2.Connection := DMF.adcAccounting;

  try
    try
      qry.Connection := DMF.adcAccounting;
      qry.CommandTimeout := 0;
      // qry.CursorLocation := clUseServer;   ?comment this because cannot create new connection because in manual or distributed transaction mode
      qry.SQL.Text :=
        'SELECT CompanyCode FROM Acc.DocGroups GROUP BY CompanyCode ORDER BY CompanyCode ';
      qry.Open;
      while not qry.Eof do
      begin
        BigMessageProgBar('در حال تغيير...', 0);
        With qry2 do
        begin
          SQL.Text :=
            'SELECT DocDate, SecondaryDocNo FROM Acc.DocGroups where YearID = :YearId  ';
          CommandTimeout := 0;

          If (gv_MultiCompany) And (opta.RestDocCode) then
          begin
            SQL.Add('AND CompanyCode= :CompanyCode');
            Parameters.ParamByName('CompanyCode').Value :=
              qry.FieldByName('CompanyCode').AsInteger;
          end;
          SQL.Add('ORDER BY DocDate, SecondaryDocNo');
          Parameters.ParamByName('YearID').Value := APPBank.Year;
          Open;

          while not Eof do
          begin
            edit;
            oldSecNo := FieldByName('SecondaryDocNo').AsInteger;
            FieldByName('SecondaryDocNo').AsInteger := 1000000 + RecNo;
            Post;
            qryUpdate.Close;
            qryUpdate.CommandTimeout := 0;

            qryUpdate.SQL.Text :=
              Format('update acc.DocsTransaction set SecondaryDocNo=%d where (SecondaryDocNo=%d)'
              + ' and (DocDate=%s) and (CompanyCode=%d)',
              [FieldByName('SecondaryDocNo').AsInteger - 1000000, oldSecNo,
              QuotedStr(FieldByName('DocDate').AsString),
              qry.FieldByName('CompanyCode').AsInteger]);
            qryUpdate.ExecSQL;
            Next
          end; // while
          Close;

          qry.Next
        end;
      end;

      With TADOQuery.Create(nil) do
        try
          Connection := DMF.adcAccounting;
          CommandTimeout := 0;
          SQL.Text :=
            'UPDATE Acc.DocGroups SET SecondaryDocNo = SecondaryDocNo - 1000000 where YearId = :YearID';
          Parameters.ParamByName('YearID').Value := APPBank.Year;
          ExecSQL;
          BigMessage('با موفقت تغيير كرد', 1);
        finally
          Free;

        end;
      if DMF.adcAccounting.InTransaction then
        DMF.adcAccounting.CommitTrans;
      qry.Free;

    except
      on e: Exception do
      begin
        if DMF.adcAccounting.InTransaction then

          DMF.adcAccounting.RollbackTrans;
        Warn('اشکال در شماره گذاری مجدد' + #10#13 + ' Check SourceDataBase ' +
          e.Message);
      end;
    end;
  finally
    qryUpdate.Free;
    qry2.Free;
    CloseMessage;
  end;

  qry_DocGroups.Requery;

end;

procedure TDocGroupsF.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
  inherited;
  if (gdSelected in State) Then
  begin
    DBGrid1.Canvas.Font.Color := clBlack;
    DBGrid1.Canvas.Brush.Color := $00A6D2FF;
  end;
  DBGrid1.DefaultDrawColumnCell(Rect, 0, Column, State);
end;

procedure TDocGroupsF._actSearchExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qry_DocGroups);
end;

// function TDocGroupsF.CheckAccurateUser: Boolean;
// var
// Frm : TForm;
// begin
// Frm := TForm.Create(Application);
// with  Frm do
// try
// with TEdit.Create(Frm) do
// try
// Align:= alClient;
//
// finally
// Free;
// end;
//
// finally
// FreeAndNil(Frm);
// end;
// end;

procedure TDocGroupsF.actChangeState3Execute(Sender: TObject);
begin
  inherited;
  if get_response('آيا از تغيير وضعيت به دائم مطمئن هستيد؟‏') <> mrYes then
    Exit;
  StautePerpetuate(False);
end;

procedure TDocGroupsF.N30Click(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, 0);
end;

procedure TDocGroupsF.N14Click(Sender: TObject);

var
  s: String;
begin
  inherited;
  with qryDocNote do
  begin
    Close;
    Parameters.ParamByName('Serial').Value :=
      qry_DocGroups.FieldByName('Serial').AsInteger;
    Parameters.ParamByName('YearID').Value :=
      qry_DocGroups.FieldByName('YearID').AsInteger;
    Parameters.ParamByName('CompanyCode').Value :=
      qry_DocGroups.FieldByName('CompanyCode').AsInteger;

    Open;
    s := ChangeNumF.enter(' تغيير شماره فرعي  ' + qryDocNote.FieldByName
      ('SecondaryDocNo').AsString + ' به ');
    if s <> '' then
    begin
      edit;
      FieldByName('SecondaryDocNo').Value := s;
      Post;
    end; // if
    qry_DocGroups.Requery();
  end; // with
end;

procedure TDocGroupsF.N13Click(Sender: TObject);
begin
  inherited;
  CreateDocF.enter;
end;

procedure TDocGroupsF.N15Click(Sender: TObject);

var
  s: String;
begin
  inherited;
  with qryDocNote do
  begin
    Close;
    Parameters.ParamByName('Serial').Value :=
      qry_DocGroups.FieldByName('Serial').AsInteger;
    Parameters.ParamByName('YearID').Value :=
      qry_DocGroups.FieldByName('YearID').AsInteger;
    Parameters.ParamByName('CompanyCode').Value :=
      qry_DocGroups.FieldByName('CompanyCode').AsInteger;

    Open;
    s := ChangeNumF.enter(' تغيير شماره اصلي  ' + qryDocNote.FieldByName
      ('PrimaryDocNo').AsString + ' به ');
    if s <> '' then
    begin
      edit;
      FieldByName('PrimaryDocNo').Value := s;
      Post;
    end; // if
    qry_DocGroups.Requery();
  end; // with
end;

procedure TDocGroupsF.N16Click(Sender: TObject);
begin
  inherited;
  Note_docGroupF.enter(qry_DocGroups.FieldByName('Serial').AsString);
  // CreateChildForm(TNote_docGroupF, Note_docGroupF, self,
  // qry_DocGroups.FieldByName('Serial').AsInteger, alNone);
end;

procedure TDocGroupsF.actOtherExecute(Sender: TObject);
begin
  inherited;
  popOther.items[7].Visible := DMF.CheckLevel(ShowLevelNote, FormType, False);
  popOther.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);

end;

function TDocGroupsF.KillDoc(Sn, CM: Integer): Boolean;
var
  s: String;
begin
  try
    s := Format
      ('Delete FROM acc.DocGroups WHERE (Serial =%D ) and (YearID = %D) and (CompanyCode = %d)',
      [Sn, APPBank.Year, CM]);
    DMF.adcAccounting.Execute(s);
    Result := True;
  except
    on e: Exception do
    begin
      add2log(e.Message);
      Result := False;
    end;
  end;
end;

function TDocGroupsF.CanMovagat(aDate: String): Boolean;
begin
  Result := GetLastConstDocDate > aDate;
end;

procedure TDocGroupsF.actAppendixExecute(Sender: TObject);
var
  T: TThread;
begin
  inherited;
  T := TThread.CreateAnonymousThread(
    procedure()
    begin
      TThread.Synchronize(nil, ProcCheckExistsFile)
    end);
  T.FreeOnTerminate := True;
  T.Start;
end;

procedure TDocGroupsF.ProcCheckExistsFile;
var
  DoWhile: Boolean;
begin
  With qry_DocGroups do
    try
      DoWhile := True;
      BtnReject.Cancel := False;
      Warn2('در حال بررسی پیوست ها', 0);
      First;
      AfterScroll := nil;
      DBGrid1.OnDrawColumnCell := nil;
      DisableControls;
      while (not Eof and DoWhile) do
      begin
        edit;
        qry_DocGroups.FieldByName('Appendix').AsInteger :=
          IfThen(ViewFileOnServerDBF.CheckExistsFile
          (qry_DocGroupsSerial.AsString + '_' +
          qry_DocGroupsCompanyCode.AsString + '_' +
          qry_DocGroupsyearId.AsString, 'DocumentF' { 101 } ,
          False { MultiMaliYear } ), 1, 0);
        Post;
        Next;
        Application.ProcessMessages;
        If LastKeyPressed = VK_ESCAPE then
          if get_response('عمليات متوقف شود؟') = mrYes then
          begin
            DoWhile := False;
            LastKeyPressed := 0;
          end;
        LastKeyPressed := 0;

      end;
    finally
      First;
      AfterScroll := qry_DocGroupsAfterScroll;
      DBGrid1.OnDrawColumnCell := DBGrid1DrawColumnCell;
      EnableControls;
      BtnReject.Cancel := True;
      Warn2('انجام شد.', 0);
    end;
end;

procedure TDocGroupsF.ApplyPrimaryNumbers;
var
  SelectedSerials: TList<Integer>;
  i: Integer;
begin
  if DBGrid1.SelectedRows.Count = 0 then
    Exit;

  SelectedSerials := TList<Integer>.Create;
  try

    qry_DocGroups.DisableControls;
    try
      for i := 0 to DBGrid1.SelectedRows.Count - 1 do
      begin
        qry_DocGroups.GotoBookmark(DBGrid1.SelectedRows.items[i]);

        if qry_DocGroups.FieldByName('PrimaryDocNo').AsInteger = 0 then
          SelectedSerials.Add(qry_DocGroups.FieldByName('Serial').AsInteger);
      end;
    finally
      qry_DocGroups.EnableControls;
    end;

    if SelectedSerials.Count = 0 then
      Exit;

    CreateTempTable;
    InsertSelectedSerialsBatch(SelectedSerials);

    try
      UpdatePrimaryNumbers;
      Warn('اسناد مورد نظر دائمي شدند.‏', mtInformation);
    except
      on e: Exception do
        Warn('خطا در عملیات: ' + e.Message);
    end;

    qry_DocGroups.Refresh;

  finally
    FreeReservedCodes(DMF.adcAccounting, 'acc.docGroups');
    SelectedSerials.Free;
  end;
end;

procedure TDocGroupsF.CreateTempTable;
begin
  with DMF.qry_Temp do
  begin
    Close;
    SQL.Text := ' IF OBJECT_ID(''tempdb..#SelectedDocs'') IS NOT NULL ';
    SQL.Add('DROP TABLE #SelectedDocs');

    SQL.Add('CREATE TABLE #SelectedDocs (');
    SQL.Add('Serial INT NOT NULL PRIMARY KEY' + ')');

    ExecSQL;
  end;
end;

procedure TDocGroupsF.InsertSelectedSerialsBatch(const ASerials
  : TList<Integer>);
const
  BatchSize = 500;
var
  i, Count: Integer;
  SQLText: string;
begin
  i := 0;

  while i < ASerials.Count do
  begin
    SQLText := 'INSERT INTO #SelectedDocs (Serial) VALUES ';
    Count := 0;

    while (i < ASerials.Count) and (Count < BatchSize) do
    begin
      if Count > 0 then
        SQLText := SQLText + ',';

      SQLText := SQLText + '(' + ASerials[i].ToString + ')';

      inc(i);
      inc(Count);
    end;

    with DMF.qry_Temp do
    begin
      Close;
      SQL.Text := SQLText;
      ExecSQL;
    end;
  end;
end;

procedure TDocGroupsF.UpdatePrimaryNumbers;
var
  MaxPrimary: Integer;
begin
  MaxPrimary := GetMaxPrimary(DBGrid1.SelectedRows.Count);

  with DMF.qry_Temp do
  begin
    Close;
    SQL.Clear;

    SQL.Add('EXEC Acc.SpFinalizeDocs ');
    SQL.Add('@MaxPrimary = :MaxPrimary, ');
    SQL.Add('@YearID = :YearID, ');
    SQL.Add('@CompanyCode = :CompanyCode ');

    Parameters.ParamByName('MaxPrimary').Value := MaxPrimary;
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Parameters.ParamByName('CompanyCode').Value := FcompanyCodeLogin;

    ExecSQL;
  end;
end;

// procedure TDocGroupsF.UpdatePrimaryNumbers;
// var
// MaxPrimary: Integer;
// begin
// MaxPrimary := GetMaxPrimary(DBGrid1.SelectedRows.Count);
//
// with DMF.qry_Temp do
// begin
// Close;
// SQL.Clear;
//
// SQL.Add('DECLARE @MaxPrimary INT = :MaxPrimary; ');
// SQL.Add('DECLARE @YearID INT = :YearID; ');
// SQL.Add('DECLARE @CompanyCode INT = :CompanyCode; ');
// SQL.Add('DECLARE @MinSelectedDate CHAR(10); ');
//
// // ------------------------------------------------
// SQL.Add('-- کمترین تاریخ انتخاب شده ');
// // ------------------------------------------------
// SQL.Add('SELECT @MinSelectedDate = MIN(dg.DocDate) ');
// SQL.Add('FROM Acc.DocGroups dg ');
// SQL.Add('INNER JOIN #SelectedDocs sd ON sd.Serial = dg.Serial ');
// SQL.Add('WHERE dg.YearID = @YearID ');
// SQL.Add('AND dg.DocDate IS NOT NULL ');
// if CompanyFilterinLogin then
// SQL.Add('AND dg.CompanyCode = @CompanyCode ');
//
// // ------------------------------------------------
// SQL.Add('-- بررسی اسناد دائمی نشده قبل از این محدوده');
// // ------------------------------------------------
// SQL.Add('IF EXISTS ( ');
// SQL.Add('SELECT 1 ');
// SQL.Add('FROM Acc.DocGroups dg ');
// SQL.Add('WHERE dg.YearID = @YearID ');
// if CompanyFilterinLogin then
// SQL.Add('AND dg.CompanyCode = @CompanyCode ');
// SQL.Add('AND ISNULL(dg.PrimaryDocNo,0) = 0 ');
// SQL.Add('AND dg.DocDate < @MinSelectedDate ');
// SQL.Add(') ');
// SQL.Add('BEGIN ');
// SQL.Add('THROW 50000, N''اسنادي قبل از اين محدوده وجود دارند كه دائمي نشده اند.'', 1; ');
// SQL.Add('END; ');
//
// // ------------------------------------------------
// SQL.Add('-- بررسی سند خالی');
// // ------------------------------------------------
// SQL.Add('IF EXISTS ( ');
// SQL.Add('SELECT sd.Serial ');
// SQL.Add('FROM #SelectedDocs sd ');
// SQL.Add('LEFT JOIN Acc.Documents d ');
// SQL.Add('ON d.Serial = sd.Serial ');
// SQL.Add('AND d.YearID = @YearID ');
// if CompanyFilterinLogin then
// SQL.Add('AND d.CompanyCode = @CompanyCode ');
// SQL.Add('GROUP BY sd.Serial ');
// SQL.Add('HAVING COUNT(d.Serial) = 0 ');
// SQL.Add(') ');
// SQL.Add('BEGIN ');
// SQL.Add('THROW 50000, N''سند خالي وجود دارد و قابل دائمي شدن نيست.'', 1; ');
// SQL.Add('END; ');
//
// // ------------------------------------------------
// SQL.Add('-- بررسی موازنه بودن سند');
// // ------------------------------------------------
// SQL.Add('IF EXISTS ( ');
// SQL.Add('SELECT 1 ');
// SQL.Add('FROM Acc.Documents d ');
// SQL.Add('INNER JOIN #SelectedDocs sd ON sd.Serial = d.Serial ');
// SQL.Add('WHERE d.YearID = @YearID ');
// if CompanyFilterinLogin then
// SQL.Add('AND d.CompanyCode = @CompanyCode ');
// SQL.Add('GROUP BY d.Serial ');
// SQL.Add('HAVING SUM(ISNULL(d.Debt,0)) <> SUM(ISNULL(d.Credit,0)) ');
// SQL.Add(') ');
// SQL.Add('BEGIN ');
// SQL.Add('THROW 50000, N''سند غيرموازنه يافت شد. عمليات لغو شد.'', 1; ');
// SQL.Add('END; ');
//
// // ------------------------------------------------
// SQL.Add('-- شماره گذاری');
// // ------------------------------------------------
// SQL.Add(';WITH Numbered AS ( ');
// SQL.Add('SELECT dg.Serial, dg.YearID, dg.CompanyCode, ');
// SQL.Add('ROW_NUMBER() OVER (ORDER BY dg.DocDate, Dt.SortId, dg.SecondaryDocNo) AS RowNo ');
// SQL.Add('FROM Acc.DocGroups dg ');
// SQL.Add('INNER JOIN Acc.DocTypes Dt ON dg.DocTypeCode = Dt.DocTypeCode ');
// SQL.Add('INNER JOIN #SelectedDocs sd ON sd.Serial = dg.Serial ');
// SQL.Add('WHERE dg.YearID = @YearID ');
// if CompanyFilterinLogin then
// SQL.Add('AND dg.CompanyCode = @CompanyCode ');
// SQL.Add('AND ISNULL(dg.PrimaryDocNo,0) = 0 ');
// SQL.Add('AND dg.Status <= 1 ');
// SQL.Add(') ');
//
// SQL.Add('UPDATE dg SET ');
// SQL.Add('dg.PrimaryDocNo = @MaxPrimary + (n.RowNo - 1), ');
// SQL.Add('dg.Status = 3 ');
// SQL.Add('FROM Acc.DocGroups dg ');
// SQL.Add('INNER JOIN Numbered n ');
// SQL.Add('ON n.Serial = dg.Serial ');
// SQL.Add('AND n.YearID = dg.YearID ');
// SQL.Add('AND n.CompanyCode = dg.CompanyCode; ');
//
// SQL.Add('DROP TABLE #SelectedDocs; ');
//
// Parameters.ParamByName('MaxPrimary').Value := MaxPrimary;
// Parameters.ParamByName('YearID').Value := APPBank.Year;
// Parameters.ParamByName('CompanyCode').Value := FcompanyCodeLogin;
//
// ExecSQL;
// end;
// end;
//
end.
