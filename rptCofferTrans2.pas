{ -----------------------------------------------------------------------------
  Unit Name: rptCofferTrans
  Author:    Mahmood
  ----------------------------------------------------------------------------- }
unit rptCofferTrans2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, ppDB, ppDBPipe, ppBands, ppClass, ppCtrls, ppReport, ppStrtch,
  ppSubRpt, ppVar, ppPrnabl, ppCache, ppComm, ppRelatv, ppProd, Mask,
  shamsiDate, DBCtrls, DB, ADODB, ComCtrls, Menus, ppTypes,
  ppParameter, StrUtils, ppDesignLayer, System.ImageList,
  System.Actions, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid;

type
  TrptCofferTrans2F = class(Ttemplate2MDIF)
    qryCustomer: TADOQuery;
    SrcCustomer: TDataSource;
    qryTrans: TADOQuery;
    SrcTrans: TDataSource;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn4: TBitBtn;
    DBNavigator2: TDBNavigator;
    BitBtn2: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn3: TBitBtn;
    DBTextCustID: TDBText;
    DBNavigator1: TDBNavigator;
    SpeedButton1: TSpeedButton;
    EdtCustID: TDBEdit;
    LblPerson1: TLabel;
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    ppDBPipeline2: TppDBPipeline;
    Label1: TLabel;
    qryCustomerCustID: TIntegerField;
    qryCustomerCustName: TStringField;
    qryTransFormID: TIntegerField;
    qryTransFormNumber: TIntegerField;
    qryTransFormDate: TStringField;
    qryTransFormtype: TIntegerField;
    qryTransFormCaption: TStringField;
    qryTransFomNote: TStringField;
    qryTransCheckDate: TStringField;
    qryTransbed: TBCDField;
    qryTransbes: TBCDField;
    qryTranskind: TIntegerField;
    qryTransBudgetCode: TIntegerField;
    qryTransbalance: TBCDField;
    qryTranscalcuBalance: TBCDField;
    actFilter: TAction;
    qryInitQry: TADOQuery;
    StatusBar1: TStatusBar;
    actShowForm: TAction;
    actSendExel: TAction;
    actPrint: TAction;
    actSort: TAction;
    qryTransCustomerID2: TIntegerField;
    qryTransCustName2: TStringField;
    qryTransCustomerName2: TStringField;
    PopMnuPrint: TPopupMenu;
    AllClick: TMenuItem;
    N2: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N1: TMenuItem;
    N3: TMenuItem;
    N6: TMenuItem;
    qryTransAidInfoNo: TStringField;
    qryTransAidInfoDate: TStringField;
    qryTransBankName: TStringField;
    qryTransAccountNumber: TStringField;
    qryTransServerID: TIntegerField;
    qryTransYearID: TIntegerField;
    qryTranscheckNumber: TStringField;
    AllClickClick1: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    ppParameterList1: TppParameterList;
    ppHeaderBand1: TppHeaderBand;
    ppShape2: TppShape;
    ppLblCompanyName: TppLabel;
    ppLblFormName: TppLabel;
    ppLine1: TppLine;
    ppLblPrintDate: TppLabel;
    ppSysVarPageNumber: TppSystemVariable;
    ppLine9: TppLine;
    ppLblDate: TppLabel;
    ppLine12: TppLine;
    ppLine51: TppLine;
    ppLabel1: TppLabel;
    ppDBText5: TppDBText;
    ppDBText10: TppDBText;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine13: TppLine;
    ppLabel6: TppLabel;
    ppLabel3: TppLabel;
    ppLblCustname2: TppLabel;
    ppLblCustomerID2: TppLabel;
    ppLabel8: TppLabel;
    ppLblCustomerID1: TppLabel;
    ppLabel17: TppLabel;
    ppLabel5: TppLabel;
    ppLine5: TppLine;
    ppDetailBand1: TppDetailBand;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDetailBand2: TppDetailBand;
    ppDBText19: TppDBText;
    ppDBText1: TppDBText;
    ppDBText9: TppDBText;
    ppDBText2: TppDBText;
    ppDBText8: TppDBText;
    ppDBText4: TppDBText;
    ppDBText11: TppDBText;
    ppLine22: TppLine;
    ppLine33: TppLine;
    ppLine2: TppLine;
    ppLine10: TppLine;
    ppLine43: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine30: TppLine;
    ppDBText6: TppDBText;
    ppLine3: TppLine;
    ppSummaryBand2: TppSummaryBand;
    ppShape5: TppShape;
    ppLine36: TppLine;
    ppLabel16: TppLabel;
    ppDBCalc17: TppDBCalc;
    ppDBCalc18: TppDBCalc;
    ppLine37: TppLine;
    ppDBCalc19: TppDBCalc;
    ppLine38: TppLine;
    ppLabel18: TppLabel;
    ppDBText7: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLine4: TppLine;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppDBText3: TppDBText;
    ppDBText12: TppDBText;
    qryTransArzbed: TFloatField;
    qryTransArzbes: TFloatField;
    qryTransArzbalance: TFloatField;
    qryTranscalcuArzBalance: TFMTBCDField;
    qryCustomerAccountKind: TIntegerField;
    qryCustomerCurrenciesName: TStringField;
    DBText1: TDBText;
    plblDate: TppLabel;
    qryTransDocNo: TIntegerField;
    qryTransDocDate: TStringField;
    qryTransFormStates: TStringField;
    qryTransCurrenciesName: TStringField;
    DBGrid1: TCedarDbgrid;
    qryTransDefaultDate: TStringField;
    procedure actFilterExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qryCustomerAfterScroll(DataSet: TDataSet);
    procedure qryTransAfterOpen(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
    procedure actShowFormExecute(Sender: TObject);
    procedure actSendExelExecute(Sender: TObject);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNumberGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppLblDateGetText(Sender: TObject; var Text: String);
    procedure actPrintExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure AllClickClick(Sender: TObject);
    procedure ppDBText3GetText(Sender: TObject; var Text: String);
    procedure ppDBText12GetText(Sender: TObject; var Text: String);
    procedure plblDateGetText(Sender: TObject; var Text: string);
  private
    { Private declarations }
    formType: Integer;
    Type4In: String;
    ShowFilter: Boolean;
    procedure UpdateFilter;
    procedure initFormQry;
    procedure Updateremain;
    procedure UpdateremainArz;
  public
    { Public declarations }
  end;

var
  rptCofferTrans2F: TrptCofferTrans2F;

implementation

uses filter_ADO, FilterClass_ADO, GlobalPro, DM, searchCode_ADO,
  search2, sort2, FormFunctions, DateUtils, FaraConsts, Filter_ADO_Const;

{$R *.dfm}
{ TrptCofferTransF }

procedure TrptCofferTrans2F.UpdateFilter;
var
  DateFrom1: String;
begin
  with qryTrans do
  begin
    Active := False;
    Parameters.ParamByName('YearIDFrom').Value := opt.DefaultYear;
    Parameters.ParamByName('YearIDTo').Value := APPBank.Year;

    Parameters.ParamByName('TypeDoc1').Value := IntToStr(formType);
    Parameters.ParamByName('TypeDoc2').Value := -1;
    Parameters.ParamByName('TypeDoc3').Value := -1;
    Parameters.ParamByName('TypeDoc4').Value := -1;

    if formType in [1, 2, 10, 17] then
    begin
      Parameters.ParamByName('TypeDoc2').Value := 1;
      Parameters.ParamByName('TypeDoc3').Value := 2;
      Parameters.ParamByName('TypeDoc4').Value := 10;
    end; // if

    if formType = 109 then
    begin
      Parameters.ParamByName('TypeDoc2').Value := 1;
      Parameters.ParamByName('TypeDoc3').Value := 1;
      Parameters.ParamByName('TypeDoc4').Value := 16;
    end;

    if formType = 110 then
    begin
      Parameters.ParamByName('TypeDoc2').Value := 1;
      Parameters.ParamByName('TypeDoc3').Value := 1;
      Parameters.ParamByName('TypeDoc4').Value := 17;
    end;

    Parameters.ParamByName('CustIDFrom').Value :=
      GetcFrom(myParams.ParamValues['CustID'], ftInteger);
    Parameters.ParamByName('CustIDTo').Value :=
      GetcTo(myParams.ParamValues['CustID'], ftInteger);
    Parameters.ParamByName('DateFrom').Value :=
      GetcFrom(myParams.ParamValues['Date'], ftDate);
    Parameters.ParamByName('DateTo').Value :=
      GetcTo(myParams.ParamValues['Date'], ftDate);

    DateFrom1 := GetcFrom(myParams.ParamValues['Date'], ftDate);
    DateFrom1 := miladi2Shamsi(IncDay(Shamsi2Miladi(DateFrom1), -1));
    Parameters.ParamByName('DateFrom1').Value := DateFrom1;

    Parameters.ParamByName('SellsEmporiumFrom').Value :=
      GetcFrom(myParams.ParamValues['SellsEmporium'], ftInteger);
    Parameters.ParamByName('SellsEmporiumTo').Value :=
      GetcTo(myParams.ParamValues['SellsEmporium'], ftInteger);
    Parameters.ParamByName('SellsMethodFrom').Value :=
      GetcFrom(myParams.ParamValues['SellsMethod'], ftInteger);
    Parameters.ParamByName('SellsMethodTo').Value :=
      GetcTo(myParams.ParamValues['SellsMethod'], ftInteger);

    Parameters.ParamByName('AidDateFrom').Value :=
      GetcFrom(myParams.ParamValues['AidDate'], ftDate);
    Parameters.ParamByName('AidDateTo').Value :=
      GetcTo(myParams.ParamValues['AidDate'], ftDate);

    if opt.DefaultDateActive then
    begin
      Parameters.ParamByName('DefaultDateFrom').Value :=
        GetcFrom(myParams.ParamValues['DefaultDate'], ftDate);
      Parameters.ParamByName('DefaultDateTo').Value :=
        GetcTo(myParams.ParamValues['DefaultDate'], ftDate);
    end
    else
    begin
      Parameters.ParamByName('DefaultDateFrom').Value := '0000/00/00';
      Parameters.ParamByName('DefaultDateTo').Value := '9999/99/99';
    end;


  end; // with
  with qryCustomer do
  begin
    Active := False;
    Parameters.ParamByName('CustIDFrom').Value :=
      GetcFrom(myParams.ParamValues['CustID'], ftInteger);
    Parameters.ParamByName('CustIDTo').Value :=
      GetcTo(myParams.ParamValues['CustID'], ftInteger);
    Active := True;
  end; // with
  with qryTrans.Parameters do
  begin
    Label1.Caption := '«“  «—ÌŒ ' + ParamByName('DateFrom').Value + '  « ' +
      ParamByName('DateTo').Value;
    Label1.Hint := 'DateFrom ' +
      DateToStr(Shamsi2Miladi(ParamByName('DateFrom').Value)) + ' DateTo ' +
      DateToStr(Shamsi2Miladi(ParamByName('DateTo').Value));

  end; // with
end;

procedure TrptCofferTrans2F.actFilterExecute(Sender: TObject);
begin
  inherited;
  if not ShowFilter then
    myParams.Clear;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      if opt.DefaultDateActive then
        AddItemFilter(GetFilter, TFilterDefaultDate);
      AddItemFilter(GetFilter, TFilterAidDate);
      AddItemFilter(GetFilter, TFilterSellsMethod);

      AddItemFilter(GetFilter, TFilterSellsEmporium);

      AddItem(dmF.adcBSell, 'CustID', ' œ—Ì«›  ﬂ‰‰œÂ ', 'ﬂœ', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT DISTINCT CustID,CustName FROM Vu_CustomersGroups ' +
        'WHERE GroupType in(' + Type4In + ')',
        'SELECT Min(CustID),Max(CustID) FROM Vu_CustomersGroups ' +
        ' WHERE  GroupType in(' + Type4In + ') ');
      AddItem(dmF.adcBSell, 'Date', '  «—ÌŒ ›—„ ', ' «—ÌŒ', ftDate, dvDefaults,
        APPBank.StartYear, APPBank.endYear, ciSimple, '', '');
      if ((Var_glb_NoFilter) Or (ShowModal = mrOk)) then
      begin
        GetFilterString;
        UpdateFilter;
      end; // if
    finally
      Free;
    end; // try
  end; // with
end;

procedure TrptCofferTrans2F.initFormQry;
begin
  formType := var_glb_gParam;
  lblCaption.Hint := IntToStr(formType);
  case formType of
    1, 4, 11:
      begin
        Caption := 'œ› — Õ”«» ’‰œÊﬁ/ ‰ŒÊ«Â ê—œ«‰';
        if formType = 4 then
          Caption := 'œ› — Õ”«» «”‰«œ œ—Ì«› ‰Ì ';

        if formType = 11 then
          Caption := 'œ› — Õ”«» «”‰«œ »—ê‘ Ì';
        qryCustomer.SQL.Add('AND (Customers.GroupType IN (2))');
        Type4In := '2';
        LblPerson1.Caption := 'ﬂœ Ê ‰«„ ’‰œÊﬁ';
      end;
    2, 3:
      begin
        Caption := 'œ› — Õ”«» »«‰ﬂ';
        if formType = 3 then
          Caption := 'œ› — Õ”«» «”‰«œ œ—Ã—Ì«‰ Ê’Ê· ';
        qryCustomer.SQL.Add('AND (Customers.GroupType IN (1))');
        Type4In := '1';
        LblPerson1.Caption := 'ﬂœ Ê ‰«„ »«‰ﬂ';
      end;
    17:
      begin
        Caption := 'œ› — Õ”«» ' + CustGroupsNames[formType];
        qryCustomer.SQL.Add('AND (Customers.GroupType IN (17))');
        Type4In := '17';
        LblPerson1.Caption := 'ﬂœ Ê ‰«„ ' + CustGroupsNames[formType];
      end;
    109:
      begin
        Caption := 'œ› — Õ”«»  ”ÂÌ·«  œ—Ì«› Ì';
        qryCustomer.SQL.Add('AND (Customers.GroupType IN (1,2))');
        Type4In := '1,2';
        // LblPerson1.Caption := 'ﬂœ Ê ‰«„ ' + CustGroupsNames[formType];
      end;
    110:
      begin
        Caption := 'œ› — Õ”«»  ”ÂÌ·«  Å—œ«Œ Ì';
        qryCustomer.SQL.Add('AND (Customers.GroupType IN (1,2))');
        Type4In := '1,2';
        // LblPerson1.Caption := 'ﬂœ Ê ‰«„ ' + CustGroupsNames[formType];
      end;

  else
    begin
      if formType = 5 then
        Caption := 'œ› — Õ”«» «”‰«œ  ÷Ì„Ì‰Ì';
      qryCustomer.SQL.Add('AND (Customers.GroupType IN (1,2))');
      Type4In := '1,2';
    end;
  end;
  with qryInitQry do
  begin
    Active := False;
    Parameters.ParamByName('Type').Value := formType;
    Active := True;
  end; // with

  qryCustomer.SQL.Add(IfThen(not User.PowerUser and
    (qryInitQry.FieldByName('UserSecurityCheckActive').AsInteger in [2, 3]),
    ' AND dbo.ChkUser(Customers.OperatorID,' + IntToStr(User.id) + ')=1', ''));

end;

procedure TrptCofferTrans2F.FormCreate(Sender: TObject);
begin
  inherited;
  ShowFilter := var_glb_Boolean;
  initFormQry
end;

procedure TrptCofferTrans2F.FormShow(Sender: TObject);
begin
  inherited;
  if not ShowFilter then
  begin
    UpdateFilter;
    Exit;
  end;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('Date') = nil then
    close;
end;

procedure TrptCofferTrans2F.qryCustomerAfterScroll(DataSet: TDataSet);
var
  b: Boolean;
begin
  inherited;
  b := qryCustomerAccountKind.AsInteger > 0;
  setColumns2(DBGrid1, b, 'Arzbed');
  setColumns2(DBGrid1, b, 'Arzbes');
  setColumns2(DBGrid1, b, 'calcuArzBalance');
  if b then
  begin
    qryTrans.FieldByName('Arzbed').Tag := 3;
    qryTrans.FieldByName('Arzbes').Tag := 3;
    qryTrans.FieldByName('calcuArzBalance').Tag := 3;
    // SumGrid1.FieldsName := 'Arzbed;Arzbes;bed;bes;';
  end;
  with qryTrans do
  begin
    Active := False;
    Parameters.ParamByName('CustIDFrom').Value :=
      qryCustomer.FieldByName('CustID').Value;
    Parameters.ParamByName('CustIDTo').Value :=
      qryCustomer.FieldByName('CustID').Value;
    Active := True;
  end; // with
  // DBGrid1.SetFooter4Sum(['AidInfoNo']);
end;

procedure TrptCofferTrans2F.qryTransAfterOpen(DataSet: TDataSet);
begin
  inherited;
  Updateremain;
  if qryCustomerAccountKind.AsInteger > 0 then
    UpdateremainArz;
  StatusBar1.Panels[3].Text := ' ⁄œ«œ›—„=' + IntToStr(qryTrans.RecordCount);
  StatusBar1.Panels[2].Text := '»œÂﬂ«—=' +
    FloatToStrF(CalcSumFileds(qryTrans, 'bed'), ffCurrency, 20, 0);
  StatusBar1.Panels[1].Text := '»” «‰ﬂ«—=' +
    FloatToStrF(CalcSumFileds(qryTrans, 'bes'), ffCurrency, 20, 0);
  StatusBar1.Panels[0].Text := '„«‰œÂ=' +
    FloatToStrF(CalcSumFileds(qryTrans, 'bed') - CalcSumFileds(qryTrans, 'bes'),
    ffCurrency, 20, 0);
end;

procedure TrptCofferTrans2F.Updateremain;
var
  c: Real;
begin
  with qryTrans do
  begin
    DisableControls;
    c := 0;
    while not eof do
    begin
      c := c + FieldByName('Balance').AsCurrency;
      edit;
      FieldByName('calcuBalance').AsCurrency := c;
      post;
      Next;
    end; // while
    First;
    EnableControls;
  end; // with
end;

procedure TrptCofferTrans2F.UpdateremainArz;
var
  cArz: Currency;
begin
  with qryTrans do
  begin
    DisableControls;
    cArz := 0;
    while not eof do
    begin
      cArz := cArz + FieldByName('ArzBalance').AsCurrency;
      edit;
      FieldByName('calcuArzBalance').AsCurrency := cArz;
      post;
      Next;
    end; // while
    First;
    EnableControls;
  end; // with
end;

procedure TrptCofferTrans2F.SpeedButton1Click(Sender: TObject);
var
  b: Boolean;
  Results: array [0 .. 3] of String;
  Txt: String;
begin
  inherited;
  Txt := qryCustomer.SQL.Text;
  Txt := StringReplace(Txt, ':CustIDFrom',
    qryCustomer.Parameters.ParamByName('CustIDFrom').Value, []);
  Txt := StringReplace(Txt, ':CustIDTo',
    qryCustomer.Parameters.ParamByName('CustIDTo').Value, []);
  b := searchCode_ADOF.SearchCode2(dmF.adcBSell, '„‘ —Ì«‰', Txt,
    ['òœ', '‰«„ ', '', ''], Results, [50, 150, 0, 0], alLeft);
  if b then
  begin
    qryCustomer.Locate('CustID', Results[0], []);
  end; // if
end;

procedure TrptCofferTrans2F.actShowFormExecute(Sender: TObject);
begin
  inherited;
  case qryTrans.FieldByName('Kind').AsInteger of
    0:
      Warn('»—«Ì ‰Ê⁄ «ÿ·«⁄«  " ‰ﬁ· «“ ﬁ»· " ›—„Ì ÊÃÊœ ‰œ«—œ.!');
    1, 2:
      ShowFormTypesForms(qryTrans, Self);
    3:
      ShowReciptTypes(qryTrans, Self);
  end; // case
end;

procedure TrptCofferTrans2F.actSendExelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TrptCofferTrans2F.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TrptCofferTrans2F.ppSysVarPageNumberGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TrptCofferTrans2F.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate
end;

procedure TrptCofferTrans2F.ppLblDateGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := Label1.Caption;
end;

procedure TrptCofferTrans2F.actPrintExecute(Sender: TObject);
begin
  inherited;
  SeletedPrint(ppDBPipeline2, DBGrid1);
  PopMnuPrint.Popup(Mouse.CursorPos.x, Mouse.CursorPos.Y);
end;

procedure TrptCofferTrans2F.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryTrans);
end;

procedure TrptCofferTrans2F.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryTrans);
end;

procedure TrptCofferTrans2F.AllClickClick(Sender: TObject);
begin
  inherited;
  case (Sender as TMenuItem).Tag of
    0:
      begin
        ppDBPipeline1.RangeBegin := rbCurrentRecord;
        ppDBPipeline1.RangeEnd := reCurrentRecord;
      end;
    1:
      begin
        ppDBPipeline1.RangeBegin := rbFirstRecord;
        ppDBPipeline1.RangeEnd := reLastRecord;
      end;
  end;
  try
    qryCustomer.DisableControls;
    qryTrans.DisableControls;
    InitReportFile(ppReport1, (Sender as TMenuItem).Hint, True);
  finally
    qryCustomer.EnableControls;
    qryTrans.EnableControls;
  end; // try

end;

procedure TrptCofferTrans2F.ppDBText3GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := Trim(Text);
  if (Text = EmptyStr) or (Text = '0') then
    Text := qryTrans.FieldByName('AidInfoNo').AsString
end;

procedure TrptCofferTrans2F.plblDateGetText(Sender: TObject; var Text: string);
begin
  inherited;
  Text := Label1.Hint;
end;

procedure TrptCofferTrans2F.ppDBText12GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := Trim(Text);
  if (Text = EmptyStr) or (Text = '0') then
    Text := qryTrans.FieldByName('AidInfoDate').AsString

end;

end.
