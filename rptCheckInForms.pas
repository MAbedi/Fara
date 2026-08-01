// mahmood
unit rptCheckInForms;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ppDB, ppDBPipe, ppBands, ppClass, ppCtrls,
  ppPrnabl, ppCache, ppComm, ppRelatv, ppProd, ppReport, ImgList, DBActns,
  ActnList, StdCtrls, ExtCtrls, Buttons, DB, ADODB,
  ComCtrls, Menus, DBCtrls, ppStrtch, ppSubRpt, ppVar, ppParameter,
  ppDesignLayer, System.ImageList, System.Actions, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, CedarDbGrid;

type
  TrptCheckInFormsF = class(Ttemplate2MDIF)
    ppDBPipeline1: TppDBPipeline;
    qryCheck: TADOQuery;
    srcCheck: TDataSource;
    qryCheckCustomerID1: TIntegerField;
    qryCheckFormItemID: TIntegerField;
    qryCheckFormID: TIntegerField;
    qryCheckFormType: TWordField;
    qryCheckFormCaption: TStringField;
    qryCheckFormNumber: TIntegerField;
    qryCheckFormDate: TStringField;
    qryCheckCheckNumber: TStringField;
    qryCheckCheckDate: TStringField;
    qryCheckBankName: TStringField;
    qryCheckAccountNumber: TStringField;
    qryCheckCustomerID2: TIntegerField;
    qryCheckBudgetCode: TIntegerField;
    qryCheckItemAmount: TBCDField;
    actFilter: TAction;
    StatusBar1: TStatusBar;
    BitBtn3: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn5: TBitBtn;
    DBNavigator2: TDBNavigator;
    actPrint: TAction;
    actShowForm: TAction;
    actSendExel: TAction;
    PopMenu: TPopupMenu;
    rptCheckInFormsCustomerID1: TMenuItem;
    rptCheckInFormsBudgetCode: TMenuItem;
    rptCheckInFormsCustomerID2: TMenuItem;
    ppReport1: TppReport;
    actSort: TAction;
    rptCheckInFormsAll: TMenuItem;
    AllClick: TMenuItem;
    ppHeaderBand1: TppHeaderBand;
    ppLblCompanyName: TppLabel;
    ppLblCaption: TppLabel;
    ppLine1: TppLine;
    ppLabel3: TppLabel;
    ppLblDateLimit: TppLabel;
    ppLblCustLimit: TppLabel;
    ppLblBudgetCode: TppLabel;
    ppShape1: TppShape;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLabel6: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    ppSysVarPageNo: TppSystemVariable;
    ppLblDate: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppShape7: TppShape;
    ppLabel7: TppLabel;
    ppDBCalc3: TppDBCalc;
    ppLabel63: TppLabel;
    ppLine90: TppLine;
    ppDBCalc4: TppDBCalc;
    qryCheckCustName1: TStringField;
    qryCheckCustName2: TStringField;
    qryCheckCity: TStringField;
    qryCheckServerID: TIntegerField;
    qryCheckYearID: TIntegerField;
    pnl1: TPanel;
    lbl1: TLabel;
    lbl2: TLabel;
    rptCheckInForms: TMenuItem;
    qryCheckAccountNumberNew: TStringField;
    qryCheckMobile: TStringField;
    qryCheckChecktype: TWordField;
    qryCheckChecktypeName: TStringField;
    qryCheckchk_ExistAttachments: TStringField;
    qryCheckCheckCounter: TIntegerField;
    DBGrid1: TCedarDbgrid;
    qryCheckCTopicCode: TStringField;
    qryCheckCTopicCode2: TStringField;
    qryCheckItemNote: TStringField;
    qryCheckCheckFor: TStringField;
    qryCheckCustomerID2M: TIntegerField;
    qryCheckCustName2M: TStringField;
    qryCheckOtherNationalCode: TStringField;
    actCallOtherNationalCode: TAction;
    qryCheckSyadSystem: TBooleanField;
    qryCheckCustomerID3: TIntegerField;
    qryCheckCustName3: TStringField;
    qryCheckCustomerGrpID: TIntegerField;
    qryCheckLatestInfo: TStringField;
    qryInitQry: TADOQuery;
    procedure actFilterExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qryCheckAfterOpen(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure ppLblDateLimitGetText(Sender: TObject; var Text: String);
    procedure ppLblCustLimitGetText(Sender: TObject; var Text: String);
    procedure ppLblBudgetCodeGetText(Sender: TObject; var Text: String);
    procedure ppLblCaptionGetText(Sender: TObject; var Text: String);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLblDateGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
    procedure actSendExelExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actShowFormExecute(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure AllClickClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumnEh);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure actCallOtherNationalCodeExecute(Sender: TObject);
  private
    { Private declarations }
    formType: Integer;
    procedure UpdateFilter;
    procedure initFormQry;
    procedure UpdateSQL;
  public
    { Public declarations }
  end;

var
  rptCheckInFormsF: TrptCheckInFormsF;

implementation

uses filter_ADO, FilterClass_ADO, GlobalPro, DM, search2, sort2,
  FormFunctions, main, Filter_ADO_Const, mdiMain, FaraConsts;

{$R *.dfm}

procedure TrptCheckInFormsF.UpdateSQL;
begin
  with qryInitQry do
  begin
    Active := False;
    SQL.Text := 'SELECT FormTypes.*';
    SQL.Add(', FormTypes_PostOverallType.FormType AS PostOverallTypeCall');
    SQL.Add(', FormTypes_PostOverallType.FormCaption AS PostOverallTypeCaption');
    SQL.Add('FROM FormTypes LEFT OUTER JOIN');
    SQL.Add('FormTypes AS FormTypes_PostOverallType ON FormTypes.FormType = FormTypes_PostOverallType.PostOverallType');
    SQL.Add('WHERE (FormTypes.FormType  in( :Type ) )');
    Parameters.ParamByName('Type').Value := IntToStr(formType);
    Active := True;

  end;

  with qryCheck do
  begin
    Active := False;
    SQL.Text := 'SELECT F.CustomerID1,F.CustomerID2 AS CustomerID2M';
    SQL.Add(', FI.FormItemID, FI.FormID, F.FormType, FT.FormCaption,');
    SQL.Add('F.FormNumber, F.FormDate, FI.CheckNumber, FI.CheckDate, FI.BankName,');
    SQL.Add('FI.AccountNumber, FI.CustomerID2, FI.BudgetCode, FI.ItemAmount,');
    SQL.Add('case when len(isnull(C1.custfirstname,'''')) = 0 then C1.custname else');
    SQL.Add('C1.custfirstname+'' '' +C1.custname END AS CustName1,');
    SQL.Add('case when len(isnull(C2.custfirstname,'''')) = 0 then C2.custname else');
    SQL.Add('C2.custfirstname+'' '' +C2.custname END AS CustName2,');
    SQL.Add('case when len(isnull(C2M.custfirstname,'''')) = 0 then C2M.custname else');
    SQL.Add('C2M.custfirstname+'' '' +C2M.custname END AS CustName2M,FI.City');
    SQL.Add(', F.ServerID, F.YearID, FI.AccountNumberNew, C2.Mobile ,FI.Checktype');
    SQL.Add(', case FI.Checktype when 0 then ''çﬂ „œ  œ«—'' when 1 then ''çﬂ —Ê“'' else ''”«Ì—'' end as ChecktypeName');
    SQL.Add(', dbo.Fn_chk_ExistAttachments(FI.CheckNumber, FI.FormItemID, FI.YearID, FI.ServerID) AS chk_ExistAttachments');
    SQL.Add(', FI.CheckCounter, F.CTopicCode, F.CTopicCode2');
    SQL.Add(', FI.CheckFor , FI.ItemNote ,FI.OtherNationalCode, FI.SyadSystem');
    SQL.Add(',F.CustomerID3 ,C3.CustName AS CustName3,C1.CustomerGrpID,');
    SQL.Add('(');
    SQL.Add('SELECT TOP (1)');
    SQL.Add('LTRIM(Forms.FormNumber) +'' ''+ FormTypes.FormCaption +'' ''+ Forms.FormDate AS Info');
    SQL.Add('FROM');
    SQL.Add('FormItems');
    SQL.Add('INNER JOIN');
    SQL.Add('Forms ON FormItems.FormID = Forms.FormID');
    SQL.Add('AND FormItems.ServerID = Forms.ServerID');
    SQL.Add('AND FormItems.YearID = Forms.YearID');
    SQL.Add('INNER JOIN');
    SQL.Add('FormTypes ON Forms.FormType = FormTypes.FormType');
    SQL.Add('WHERE');
    SQL.Add('FormItems.CheckNumber = FI.CheckNumber');
    SQL.Add('ORDER BY');
    SQL.Add('FormItems.ID DESC');
    SQL.Add(') AS LatestInfo');
    SQL.Add('');
    SQL.Add('FROM FormItems FI INNER JOIN');
    SQL.Add('Forms F ON FI.YearID = F.YearID AND FI.ServerID = F.ServerID AND FI.FormID = F.FormID INNER JOIN');
    SQL.Add('FormTypes FT ON F.FormType = FT.FormType LEFT OUTER JOIN');
    SQL.Add('Customers C1 ON F.CustomerID1 = C1.CustID LEFT OUTER JOIN');
    SQL.Add('Customers C2 ON FI.CustomerID2 = C2.CustID LEFT OUTER JOIN');
    SQL.Add('Customers C2M ON F.CustomerID2 = C2M.CustID LEFT OUTER JOIN');
    SQL.Add('Customers C3 ON F.CustomerID3 = C3.CustID');
    SQL.Add('WHERE (F.FormDate BETWEEN :DateFrom AND :DateTo)');
    SQL.Add('AND ( isnull( FI.BudgetCode,0) BETWEEN :BudgetCodeFrom AND :BudgetCodeTo)');
    SQL.Add('AND (FI.CustomerID2 BETWEEN :CustID2From AND :CustID2To)');
    SQL.Add('AND (F.CustomerID1 BETWEEN :CustID1Form AND :CustID1To)');
    SQL.Add('AND (F.FormType in( '+lblCaption.Hint+' ))');
    SQL.Add('AND ((FI.CheckDate BETWEEN :DateCheckFrom AND :DateCheckTo) or FI.CheckDate <= ''0'' )');
    SQL.Add('AND (F.FormNumber BETWEEN :NumberForm AND :NumberTo)');
    SQL.Add('AND (F.YearID between :YearIDFrom and :YearIDTo)');
    SQL.Add('AND (FI.Checktype BETWEEN :ChecktypeFrom AND :ChecktypeTo)');
    SQL.Add('AND ((ISNULL(F.CTopicCode,0) between :CTopicCodeFrom and :CTopicCodeTo ) OR(F.CTopicCode = ''''))');
    SQL.Add('AND ((ISNULL(F.CTopicCode2,0) between :CTopicCode2From and :CTopicCode2To )OR(F.CTopicCode2= ''''))');
    SQL.Add('AND (F.CustomerID3 BETWEEN :CustID3Form AND :CustID3To)');
    SQL.Add('AND (C1.CustomerGrpID BETWEEN :CustomerGrpIDFrom AND :CustomerGrpIDTo )');

    If (qryInitQry.FieldByName('UserSecurityCheckActive').AsInteger in[2,3]) Then
    begin
      SQL.Add(' AND dbo.ChkUser(C1.OperatorID,' + IntToStr(user.ID) + ')=1');
      SQL.Add(' AND dbo.ChkUser(C2.OperatorID,' + IntToStr(user.ID) + ')=1');
    end;

  end;
end;

procedure TrptCheckInFormsF.UpdateFilter;
begin
  with qryCheck do
  begin
    UpdateSQL;
    Active := False;

    if Parameters.FindParam('Type') <> nil then
      Parameters.ParamByName('Type').Value := IntToStr(formType);

    if formType = 50 then
    begin
      Parameters.ParamByName('ChecktypeFrom').Value :=
        GetcFrom(myParams.ParamValues['Checktype'], ftInteger);
      Parameters.ParamByName('ChecktypeTo').Value :=
        GetcTo(myParams.ParamValues['Checktype'], ftInteger);
    end
    else
    begin
      Parameters.ParamByName('ChecktypeFrom').Value := 0;
      Parameters.ParamByName('ChecktypeTo').Value := 999;
    end;

    Parameters.ParamByName('CTopicCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['CTopicCode'], ftInteger);
    Parameters.ParamByName('CTopicCodeTo').Value :=
      GetcTo(myParams.ParamValues['CTopicCode'], ftInteger);
    Parameters.ParamByName('CTopicCode2From').Value :=
      GetcFrom(myParams.ParamValues['CTopicCode2'], ftInteger);
    Parameters.ParamByName('CTopicCode2To').Value :=
      GetcTo(myParams.ParamValues['CTopicCode2'], ftInteger);

    Parameters.ParamByName('CustomerGrpIDFrom').Value :=
      GetcFrom(myParams.ParamValues['CustomerGrpID'], ftInteger);
    Parameters.ParamByName('CustomerGrpIDTo').Value :=
      GetcTo(myParams.ParamValues['CustomerGrpID'], ftInteger);

    Parameters.ParamByName('CustID1Form').Value :=
      GetcFrom(myParams.ParamValues['CustID1'], ftInteger);
    Parameters.ParamByName('CustID1To').Value :=
      GetcTo(myParams.ParamValues['CustID1'], ftInteger);

    Parameters.ParamByName('CustID2From').Value :=
      GetcFrom(myParams.ParamValues['CustID2'], ftInteger);
    Parameters.ParamByName('CustID2To').Value :=
      GetcTo(myParams.ParamValues['CustID2'], ftInteger);

    Parameters.ParamByName('CustID3Form').Value :=
      GetcFrom(myParams.ParamValues['CustID3'], ftInteger);
    Parameters.ParamByName('CustID3To').Value :=
      GetcTo(myParams.ParamValues['CustID3'], ftInteger);

    Parameters.ParamByName('DateFrom').Value :=
      GetcFrom(myParams.ParamValues['Date'], ftDate);
    Parameters.ParamByName('DateTo').Value :=
      GetcTo(myParams.ParamValues['Date'], ftDate);
    Parameters.ParamByName('BudgetCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['BudgetCode'], ftInteger);
    Parameters.ParamByName('BudgetCodeTo').Value :=
      GetcTo(myParams.ParamValues['BudgetCode'], ftInteger);
    Parameters.ParamByName('DateCheckFrom').Value :=
      GetcFrom(myParams.ParamValues['CheckDate'], ftDate);
    Parameters.ParamByName('DateCheckTo').Value :=
      GetcTo(myParams.ParamValues['CheckDate'], ftDate);
    Parameters.ParamByName('NumberForm').Value :=
      GetcFrom(myParams.ParamValues['Number'], ftInteger);
    Parameters.ParamByName('NumberTo').Value :=
      GetcTo(myParams.ParamValues['Number'], ftInteger);
    Parameters.ParamByName('YearIDFrom').Value := opt.DefaultYear;
    Parameters.ParamByName('YearIDTo').Value := APPBank.Year;
    Active := True;

    case formType of
      109:
        Caption := 'ê“«—‘ «ﬁ”«ÿ Ê«„Â«Ì Å—œ«Œ  ‰‘œÂ';

      110:
        Caption := 'ê“«—‘ «ﬁ”«ÿ Ê«„Â«Ì œ—Ì«›  ‰‘œÂ';
    else
      Caption := 'ê“«—‘ ⁄„·ﬂ—œ  ' + FieldByName('FormCaption').AsString;
    end;

    mainF.mdiChildrenTabs.Tabs[mainF.mdiChildrenTabs.TabIndex] := Caption;
    lblCaption.Caption := Caption;
  end; // with
  with qryCheck.Parameters do
  begin
    lbl1.Caption := '«“  «—ÌŒ ' + ParamByName('DateFrom').Value + '  « ' +
      ParamByName('DateTo').Value;
    lbl1.Caption := lbl1.Caption + ' «“ ﬂœ „‘ —Ì ' +
      IntToStr(ParamByName('CustID2From').Value) + '  « ' +
      IntToStr(ParamByName('CustID2TO').Value);
    lbl2.Caption := '«“ ﬂœ œ—Ì«›  ﬂ‰‰œÂ ' +
      IntToStr(ParamByName('CustID1Form').Value) + '  « ' +
      IntToStr(ParamByName('CustID1To').Value);
    lbl2.Caption := lbl2.Caption + ' «“ ﬂœ »ÊœÃÂ ' +
      IntToStr(ParamByName('BudgetCodeFrom').Value) + '  « ' +
      IntToStr(ParamByName('BudgetCodeTo').Value);
  end; // with

end;

procedure TrptCheckInFormsF.actCallOtherNationalCodeExecute(Sender: TObject);
begin
  inherited;
  mdiMainf.actCallOtherNationalCode.Execute
end;

procedure TrptCheckInFormsF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItemFilter(GetFilter, TFilterCTopicCode2);
      AddItemFilter(GetFilter, TFilterCTopicCode);

      if formType = 50 then
        AddItem(DMf.adcBSell, 'Checktype', ' ‰Ê⁄ çﬂ ', 'ﬂœ', ftInteger,
          dvMinMax, '', '', ciLookup,
          ' SELECT DISTINCT CheckType, CASE FormItems.Checktype ' +
          'WHEN 0 THEN ''çﬂ „œ  œ«—'' WHEN 1 THEN ''çﬂ —Ê“'' ELSE ''”«Ì—''' +
          ' END AS ChecktypeName FROM FormItems',
          'SELECT min(Checktype),Max(Checktype) FROM FormItems');

      AddItem(DMf.adcBSell, 'CustID3', '3 „‘ —Ì ', 'ﬂœ', ftInteger, dvMinMax,
        '', '', ciLookup,
        ' SELECT DISTINCT CustID,CustName FROM Vu_CustomersGroups ',
        'SELECT 0,2147483647');

      AddItem(DMf.adcBSell, 'CustID2', ' „‘ —Ì ', 'ﬂœ', ftInteger, dvMinMax, '',
        '', ciLookup,
        ' SELECT DISTINCT CustID,CustName FROM Vu_CustomersGroups ',
        'SELECT 0,2147483647');

      AddItem(DMf.adcBSell, 'CustID1', ' œ—Ì«›  ﬂ‰‰œÂ ', 'ﬂœ', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT DISTINCT CustID,CustName FROM Vu_CustomersGroups ',
        'SELECT 0,2147483647');

      AddItemFilter(GetFilter, TFilterCustomerGrpID);

      AddItem(DMf.adcBSell, 'BudgetCode', ' »ÊœÃÂ ', 'ﬂœ', ftInteger, dvMinMax,
        '', '', ciSimple, '',
        'SELECT MIN(FormItems.BudgetCode), MAX(FormItems.BudgetCode) FROM FormItems INNER JOIN '
        + 'Forms ON FormItems.FormID=Forms.FormID WHERE Forms.FormType=' +
        IntToStr(formType));
      AddItem(DMf.adcBSell, 'CheckDate', '  «—ÌŒ ”——”Ìœ çﬂ ', ' «—ÌŒ', ftDate,
        dvMinMax, '', '', ciSimple, '',
        'SELECT MIN(FormItems.CheckDate),MAX(FormItems.CheckDate) ' +
        'FROM FormItems INNER JOIN Forms ON FormItems.FormID = Forms.FormID AND FormItems.ServerID = Forms.ServerID AND FormItems.YearID = Forms.YearID '
        + 'WHERE  Forms.FormType IN(' + IntToStr(formType) + ')', False, '',
        '', True);
      AddItem(DMf.adcBSell, 'Date', '  «—ÌŒ ', ' «—ÌŒ', ftDate, dvMinMax, '',
        '', ciSimple, '', 'Select  ''' + APPBank.StartYear +
        ''',Max(FormDate) from Forms WHERE FormType = ' + IntToStr(formType));
      AddItem(DMf.adcBSell, 'Number', ' ›—„ ', '‘„«—Â', ftInteger, dvMinMax, '',
        '', ciSimple, '', 'SELECT 0,2147483647');

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

procedure TrptCheckInFormsF.initFormQry;
var
  FormCaption: String;
  alabel: TLabel;
  aStringField: TStringField;
  aIntegerField: TIntegerField;
  appLabel: TppLabel;
  i: Integer;
  b: Boolean;
begin
  formType := var_glb_gParam;
  lblCaption.Hint := IntToStr(formType);
  FormCaption := '›—„';
  if formType = 13 then
  begin
    FormCaption := 'Ê’Ê·';
    lblCaption.Hint := '13,23';
    qryCheck.SQL.Text := StringReplace(qryCheck.SQL.Text, ':Type',
      lblCaption.Hint, []);
  end;
  if formType = 12 then
  begin
    // FormCaption := 'Ê«ê–«— çﬂ »Â „‘ —Ì';
    lblCaption.Hint := '12,28';
    qryCheck.SQL.Text := StringReplace(qryCheck.SQL.Text, ':Type',
      lblCaption.Hint, []);
  end;

  if formType = 10 then
    FormCaption := 'œ—Ì«› ';
  b := formType = 50;
  setColumns2(DBGrid1, b, 'ChecktypeName');
  if b then
  begin
    setColumns2(DBGrid1, False, 'BankName');
    setColumns2(DBGrid1, False, 'AccountNumber');
    qryCheck.FieldByName('CustomerID1').DisplayLabel := 'ﬂœ';
    qryCheck.FieldByName('CustName1').DisplayLabel := '‰«„ »«‰ﬂ';
  end;

  // qryCheck.FieldByName('FormDate').DisplayLabel:=
  // StringReplace(qryCheck.FieldByName('FormDate').DisplayLabel,'›—„',FormCaption,[]);
  for i := 0 to ComponentCount - 1 do
  begin
    if Components[i] is TLabel then
    begin
      alabel := TLabel(Components[i]);
      if Pos('›—„', LowerCase(alabel.Caption)) <> 0 then
        alabel.Caption := StringReplace(alabel.Caption, '›—„', FormCaption, []);
    end; // if
    if Components[i] is TStringField then
    begin
      aStringField := TStringField(Components[i]);
      if Pos('›—„', LowerCase(aStringField.DisplayLabel)) <> 0 then
        aStringField.DisplayLabel := StringReplace(aStringField.DisplayLabel,
          '›—„', FormCaption, []);
    end; // if
    if Components[i] is TIntegerField then
    begin
      aIntegerField := TIntegerField(Components[i]);
      if Pos('›—„', LowerCase(aIntegerField.DisplayLabel)) <> 0 then
        aIntegerField.DisplayLabel := StringReplace(aIntegerField.DisplayLabel,
          '›—„', FormCaption, []);
    end; // if
    if Components[i] is TppLabel then
    begin
      appLabel := TppLabel(Components[i]);
      if Pos('›—„', LowerCase(appLabel.Caption)) <> 0 then
        appLabel.Caption := StringReplace(appLabel.Caption, '›—„',
          FormCaption, []);
    end; // if
  end; // for
end;

procedure TrptCheckInFormsF.FormCreate(Sender: TObject);
begin
  inherited;
  initFormQry
end;

procedure TrptCheckInFormsF.qryCheckAfterOpen(DataSet: TDataSet);
begin
  inherited;
  StatusBar1.Panels[3].Text := ' ⁄œ«œ ›—„ =  ' + IntToStr(qryCheck.RecordCount);
  StatusBar1.Panels[0].Text := 'Ã„⁄= ' +
    CurrToStrF(CalcSumFileds(qryCheck, 'ItemAmount'), ffCurrency, 0) + ' —Ì«· ';
end;

procedure TrptCheckInFormsF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('Date') = nil then
    close;
end;

procedure TrptCheckInFormsF.actPrintExecute(Sender: TObject);
begin
  inherited;
  SeletedPrint(ppDBPipeline1, DBGrid1);
  PopMenu.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TrptCheckInFormsF.ppLblDateLimitGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := lbl1.Caption
end;

procedure TrptCheckInFormsF.ppLblCustLimitGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := lbl1.Caption
end;

procedure TrptCheckInFormsF.ppLblBudgetCodeGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := lbl2.Caption
end;

procedure TrptCheckInFormsF.ppLblCaptionGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := Caption
end;

procedure TrptCheckInFormsF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TrptCheckInFormsF.ppLblDateGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPrintDate
end;

procedure TrptCheckInFormsF.ppSysVarPageNoGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TrptCheckInFormsF.actSendExelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TrptCheckInFormsF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryCheck);
end;

procedure TrptCheckInFormsF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryCheck);
end;

procedure TrptCheckInFormsF.actShowFormExecute(Sender: TObject);
begin
  inherited;
  ShowFormTypesForms(qryCheck, Self);
end;

procedure TrptCheckInFormsF.DBGrid1CellClick(Column: TColumnEh);
begin
  inherited;
  if ((opt.ConfigSettings and Integer(CHkAddpopViewFile2Grid)) <> 0) then
    Exit;
  if Column.Title.Caption = '...' then
    AddpopViewFile(qryCheckchk_ExistAttachments.AsString,
      GetDetailKeyID(qryCheck, qryCheckFormItemID.AsString), Caption);
end;

procedure TrptCheckInFormsF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  actShowForm.Execute
end;

procedure TrptCheckInFormsF.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  inherited;
  if ((opt.ConfigSettings and Integer(CHkAddpopViewFile2Grid)) <> 0) then
    Exit;

  if Column.Title.Caption = '...' then
    AddpopViewFile2Grid(Rect, DBGrid1, qryCheckchk_ExistAttachments.AsString);
end;

procedure TrptCheckInFormsF.AllClickClick(Sender: TObject);
begin
  inherited;
  With qryCheck do
  begin
    if (Sender as TMenuItem).Hint <> EmptyStr then
      Sort := (Sender as TMenuItem).Hint;
    try
      DisableControls;
      InitReportFile(ppReport1, (Sender as TMenuItem).Name, True);
    finally
      EnableControls;
    end; // try
  end; // With
end;

end.
