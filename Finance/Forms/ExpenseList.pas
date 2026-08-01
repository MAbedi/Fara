unit ExpenseList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, Grids, Vcl.DBGrids, DB, ADODB, Menus, ppPrnabl, ppClass, ppCtrls,
  ppBands, ppDB, ppCache, ppDBPipe, ppComm, ppRelatv, ppProd, ppReport,
  ppVar, ComCtrls, SumDBGrid, ppParameter, StrUtils, ppDesignLayer,
  System.ImageList, System.Actions;

type
  TExpenseListF = class(Ttemplate2MDIF)
    BitBtn9: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn8: TBitBtn;
    actSort: TAction;
    actSendToExcel: TAction;
    srcExpenseList: TDataSource;
    actCretain: TAction;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    actShowdoc: TAction;
    actPrint: TAction;
    BitBtn10: TBitBtn;
    actFilter: TAction;
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    pplbcompany: TppLabel;
    ppLabel1: TppLabel;
    ppLine1: TppLine;
    pplbdate: TppLabel;
    pplbpagecount: TppSystemVariable;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLine2: TppLine;
    ppLabel4: TppLabel;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLabel5: TppLabel;
    ppLine5: TppLine;
    ppLabel6: TppLabel;
    ppLine6: TppLine;
    ppLabel7: TppLabel;
    ppLine7: TppLine;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLine8: TppLine;
    ppLabel10: TppLabel;
    ppLine9: TppLine;
    ppLabel11: TppLabel;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLabel12: TppLabel;
    ppShape1: TppShape;
    ppLine12: TppLine;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLine13: TppLine;
    ppDBText1: TppDBText;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppDBText2: TppDBText;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppLine19: TppLine;
    ppDBText6: TppDBText;
    ppLine20: TppLine;
    ppDBText7: TppDBText;
    ppLine21: TppLine;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppLine22: TppLine;
    ppDBText10: TppDBText;
    ppLine23: TppLine;
    ppDBText11: TppDBText;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppDBText12: TppDBText;
    ppLine26: TppLine;
    ppDBText13: TppDBText;
    ppLine27: TppLine;
    SumGrid1: TSumGrid;
    ppShape2: TppShape;
    ppShape3: TppShape;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    BitBtn11: TBitBtn;
    PopupChSt: TPopupMenu;
    mnuMovagat: TMenuItem;
    MenuItem14: TMenuItem;
    MenuItem17: TMenuItem;
    BitBtn4: TBitBtn;
    BitBtn7: TBitBtn;
    qryExpenseList: TADOQuery;
    qryExpenseListExpID: TIntegerField;
    qryExpenseListYearId: TIntegerField;
    qryExpenseListFormNo: TIntegerField;
    qryExpenseListFormDate: TWideStringField;
    qryExpenseListTopicCode: TIntegerField;
    qryExpenseListDetailCode: TIntegerField;
    qryExpenseListCTopicCode: TIntegerField;
    qryExpenseListPayerTopicCode: TIntegerField;
    qryExpenseListPayerDetailCode: TIntegerField;
    qryExpenseListPayerCTopicCode: TIntegerField;
    qryExpenseListCacther: TWideStringField;
    qryExpenseListState: TSmallintField;
    qryExpenseListKind: TSmallintField;
    qryExpenseListPreference: TIntegerField;
    qryExpenseListComments: TWideStringField;
    qryExpenseListCustDetailId: TIntegerField;
    qryExpenseListfirstUser: TWideStringField;
    qryExpenseListlastUser: TWideStringField;
    qryExpenseListCatcherItem: TWideStringField;
    qryExpenseListBed: TBCDField;
    qryExpenseListBes: TBCDField;
    qryExpenseListDetailName_L1: TStringField;
    qryExpenseListAmount: TBCDField;
    qryExpenseListStateChangeDate: TStringField;
    qryExpenseListAidNumber: TStringField;
    qryExpenseListAidDate: TStringField;
    procedure actSendToExcelExecute(Sender: TObject);
    procedure actCretainExecute(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actShowdocExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure _actSearchExecute(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure pplbcompanyGetText(Sender: TObject; var Text: String);
    procedure pplbdateGetText(Sender: TObject; var Text: String);
    procedure pplbpagecountGetText(Sender: TObject; var Text: String);
    procedure actPrintExecute(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure ppDBText5GetText(Sender: TObject; var Text: String);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure BitBtn11Click(Sender: TObject);
    procedure MenuItemClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qryExpenseListBeforeDelete(DataSet: TDataSet);
    procedure qryExpenseListStateGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
  private
    temp: Integer;
    OrgSql: string;
    function changeStateDoc(Doc: Cardinal): Boolean;
    procedure UpdateList;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ExpenseListF: TExpenseListF;

implementation

uses GlobalPro, mmessage, search2, sort2, dm, Expense,
  Math, FaraConsts, EmissionDoc, filter_ADO, FilterClass_ADO, Resource;

{$R *.dfm}

procedure TExpenseListF.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TExpenseListF.actCretainExecute(Sender: TObject);
var
  ctn: Byte;
  dn: Largeint;
  cn, i: Integer;
  btm: TBookmark;
begin
  inherited;
  if user.level < 7 then
  begin
    warn('خارج از محدوده دسترسي ');
    abort;
  end;
  temp := 1;
  with DBGrid1.SelectedRows do
  begin
    ctn := qryExpenseList.fieldbyname('state').AsInteger;
    if count < 2 then
    begin
      if ctn = 1 then
      begin
        warn('قبلاٌ قطعي شده است ');
        Exit;
      end; // if
      if get_response('آيا از قطعي كردن سند انتخاب شده مطمئن هستيد؟‍') <> mrYes
      then
        Exit;
      dn := qryExpenseList.fieldbyname('ExpID').AsInteger;
      if changeStateDoc(dn) then
      begin
        warn('سند شماره ' + qryExpenseList.fieldbyname('Formno').AsString +
          'قطعي شد.‍');
        // qryExpenseList.Requery;
      end; // if
    end
    else
    begin
      if get_response('آيا از قطعي كردن سندهاي انتخاب شده مطمئن هستيد؟‍') <> mrYes
      then
        Exit;
      cn := 0;
      for i := 0 to count - 1 do
      begin
        qryExpenseList.GotoBookmark((items[i]));
        dn := qryExpenseList.fieldbyname('ExpID').AsInteger;
        ctn := qryExpenseList.fieldbyname('state').AsInteger;
        if ctn <> 1 then
          if changeStateDoc(dn) then
            inc(cn);
      end; // for
      if cn = 0 then
        warn('هيچ سندي قطعي نشد.‍')
      else
        warn(inttostr(cn) + ' سند قطعي شد.‍');
    end; // else
  end; // with
  btm := qryExpenseList.GetBookmark;
  qryExpenseList.Active := False;
  qryExpenseList.Active := True;
  qryExpenseList.GotoBookmark(btm);
end;

function TExpenseListF.changeStateDoc(Doc: Cardinal): Boolean;
begin
  Result := True;
  with Dmf.qry_Temp do
  begin
    Active := False;
    SQL.Text :=
      Format('SELECT ExpID, State, Preference, StateChangeDate FROM Acc.Expense WHERE ExpID = %d ',
      [Doc]);
    Active := True;
    Edit;
    if temp = 1 then
      fieldbyname('StateChangeDate').AsString := var_glb_CurrentDate
    else if temp = 0 then
      fieldbyname('StateChangeDate').AsString := '/  /';

    fieldbyname('Preference').AsInteger := GetANewCode('','Expense', 'Preference',dmf.adcAccounting);
    fieldbyname('state').AsInteger := temp;
    try
      post
    except
      warn('اشكال در تغيير وضعيت سند');
      Result := False;
    end; // try
  end; // with
end;

procedure TExpenseListF.N1Click(Sender: TObject);
begin
  inherited;
  DBGrid1.SelectedRows.Clear;
  with qryExpenseList do
  begin
    DisableControls;
    First;
    while not eof do
    begin
      DBGrid1.SelectedRows.CurrentRowSelected := True;
      Next;
    end; // while
    EnableControls;
    First;
  end; // with

end;

procedure TExpenseListF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 2, True);
end;

procedure TExpenseListF.FormCreate(Sender: TObject);
begin
  inherited;
  OrgSql := qryExpenseList.SQL.Text;
end;

procedure TExpenseListF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TExpenseListF.qryExpenseListBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if DataSet.fieldbyname('State').AsInteger > 0 then
  begin
    warn('سند قابل حذف كردن نيست.');
    abort;
  end; // if
  if get_response('آيا براي حذف مطمئن هستيد؟') <> mrYes then
    abort;
end;

procedure TExpenseListF.qryExpenseListStateGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    0:
      Text := 'موقت';
    1:
      Text := 'قطعي';
    2:
      Text := 'ثبت حسابداري شد';
  end; // case
end;

procedure TExpenseListF.actShowdocExecute(Sender: TObject);
var
  docN: Largeint;
begin
  inherited;
  docN := qryExpenseList.fieldbyname('ExpID').AsInteger;
  try
    CreateMDIForm2(TExpenseF, ExpenseF, Self);
    ExpenseF.qryExpense.Locate('ExpID; YearId',
      VarArrayOf([docN, APPBank.Year]), []);
  finally
    qryExpenseList.Requery;
    qryExpenseList.Locate('ExpID', docN, []);
  end; // try
end;

procedure TExpenseListF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryExpenseList);
end;

procedure TExpenseListF._actSearchExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryExpenseList);
end;

procedure TExpenseListF.UpdateList;
var
  st: string;
begin
  with qryExpenseList do
  begin
    Active := False;
    // Parameters.ParamByName('FromFormNo').Value :=
    // GetcFrom(myParams.ParamValues['FormNo'], ftInteger);
    // Parameters.ParamByName('ToFormNo').Value :=
    // GetcTo(myParams.ParamValues['FormNo'], ftInteger);
    // Parameters.ParamByName('FromFormDate').Value :=
    // GetcFrom(myParams.ParamValues['FormDate'], ftString);
    // Parameters.ParamByName('ToFormDate').Value :=
    // GetcTo(myParams.ParamValues['FormDate'], ftString);
    // Parameters.ParamByName('FromState').Value :=
    // GetcFrom(myParams.ParamValues['State'], ftInteger);
    // Parameters.ParamByName('ToState').Value :=
    // GetcTo(myParams.ParamValues['State'], ftInteger);
    // Parameters.ParamByName('YearId').Value := APPBank.Year;

    SQL.Text := OrgSql;
    st := GetcFrom(myParams.ParamValues['State'], ftString);
    SQL.Text := SQL.Text.Replace('&&', st);

    Parameters.ParamByName('FormNoFrom').Value :=
      GetcFrom(myParams.ParamValues['FormNo'], ftInteger);
    Parameters.ParamByName('FormNoTo').Value :=
      GetcTo(myParams.ParamValues['FormNo'], ftInteger);

    Parameters.ParamByName('FormDateFrom').Value :=
      GetcFrom(myParams.ParamValues['FormDate'], ftString);
    Parameters.ParamByName('FormDateTo').Value :=
      GetcTo(myParams.ParamValues['FormDate'], ftString);

    Parameters.ParamByName('YearId').Value := APPBank.Year;

    Parameters.ParamByName('CustDetailIdFrom').Value :=
      GetcFrom(myParams.ParamValues['CustDetailId'], ftInteger);
    Parameters.ParamByName('CustDetailIdTo').Value :=
      GetcTo(myParams.ParamValues['CustDetailId'], ftInteger);

    Parameters.ParamByName('CTopicCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['CTopicCode'], ftInteger);
    Parameters.ParamByName('CTopicCodeTo').Value :=
      GetcTo(myParams.ParamValues['CTopicCode'], ftInteger);

    Parameters.ParamByName('DetailCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['DetailCode'], ftInteger);
    Parameters.ParamByName('DetailCodeTo').Value :=
      GetcTo(myParams.ParamValues['DetailCode'], ftInteger);

    Parameters.ParamByName('TopicCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['TopicCode'], ftInteger);
    Parameters.ParamByName('TopicCodeTo').Value :=
      GetcTo(myParams.ParamValues['TopicCode'], ftInteger);

    Parameters.ParamByName('StateChangeDateFrom').Value :=
      GetcFrom(myParams.ParamValues['StateDate'], ftString);
    Parameters.ParamByName('StateChangeDateTo').Value :=
      GetcTo(myParams.ParamValues['StateDate'], ftString);

    Parameters.ParamByName('AidDateFrom').Value :=
      GetcFrom(myParams.ParamValues['AidDate'], ftString);
    Parameters.ParamByName('AidDateTo').Value :=
      GetcTo(myParams.ParamValues['AidDate'], ftString);

    Parameters.ParamByName('AidNumberFrom').Value :=
      GetcFrom(myParams.ParamValues['AidNumber'], ftString);
    Parameters.ParamByName('AidNumberTo').Value :=
      GetcTo(myParams.ParamValues['AidNumber'], ftString);
    Active := True;
  end; // with
end;

procedure TExpenseListF.actFilterExecute(Sender: TObject);
begin
  inherited;
  With TfilterF.Create2(Self, myParams) do
    try
      // AddItem(Dmf.adcAccounting, 'State', ' وضعيت', 'وضعيت', ftInteger,
      // dvMinMax, '', '', ciSimple, '', 'Select 0,3');
      // AddItem(Dmf.adcAccounting, 'FormDate', 'تاريخ', 'تاريخ', ftDate, dvMinMax,
      // '', '', ciSimple, '',
      // 'Select Min(FormDate),max(FormDate) from Acc.Expense');
      // AddItem(Dmf.adcAccounting, 'FormNo', 'شماره', 'شماره', ftInteger,
      // dvMinMax, '', '', ciSimple, '',
      // 'Select Min(FormNo),max(FormNo) from Acc.Expense');

      AddItem(Dmf.adcAccounting, 'State', ' وضعيت', '', ftUnknown, dvDefaults,
        'true', '', ciCheck,
        'select st, case st when 0 then ''موقت'' when 1 then ''قطعي'' when 2 then ''ثبت حسابداري شد'' end'
        + ' as stName from(select 0 as st union select 1 union select 2) temp');

      AddItem(Dmf.adcAccounting, 'AidDate', 'تاریخ کمکی', 'تاريخ', ftDate,
        dvMinMax, '', '', ciSimple, '',
        'Select Min(isnull(AidDate,''/  /'')),max(isnull(AidDate,''/  /'')) from Acc.Expense where YearId = '
        + APPBank.Year.ToString);

      AddItem(Dmf.adcAccounting, 'AidNumber', 'شماره کمکی', 'شماره', ftString,
        dvMinMax, '', '', ciSimple, '',
        'Select Min(isnull(AidNumber,'''')),max(isnull(AidNumber,'''')) from Acc.Expense where YearId = '
        + APPBank.Year.ToString);

      AddItem(Dmf.adcAccounting, 'StateDate', 'تغییر وضعیت', 'تاريخ', ftDate,
        dvMinMax, '', '', ciSimple, '',
        'Select Min(isnull(StateChangeDate,''/  /'')),max(isnull(StateChangeDate,''/  /'')) from Acc.Expense where YearId = '
        + APPBank.Year.ToString);

      AddItem(Dmf.adcAccounting, 'CTopicCode', 'پروژه', 'کد', ftInteger,
        dvMinMax, '', '', ciLookup, strLookUpCtopic1,
        'Select Min(CTopicCode),max(CTopicCode) from Acc.Expense where YearId = '
        + APPBank.Year.ToString);

      AddItem(Dmf.adcAccounting, 'DetailCode', 'تفصیلی بودجه', 'کد', ftInteger,
        dvMinMax, '', '', ciLookup, strLookUpDetail,
        'Select Min(DetailCode),max(DetailCode) from Acc.Expense where YearId = '
        + APPBank.Year.ToString);

      AddItem(Dmf.adcAccounting, 'TopicCode', 'حساب بودجه', 'کد', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT TopicCode, MoeenName_L1 FROM Acc.Categories',
        'Select Min(TopicCode),max(TopicCode) from Acc.Expense where YearId = '
        + APPBank.Year.ToString);

      AddItem(Dmf.adcAccounting, 'CustDetailId', 'تفصیلی هزینه', 'کد',
        ftInteger, dvMinMax, '', '', ciLookup, strLookUpDetail,
        'Select Min(CustDetailId),max(CustDetailId) from Acc.Expense where YearId = '
        + APPBank.Year.ToString);

      AddItem(Dmf.adcAccounting, 'FormDate', 'تاريخ', 'تاريخ', ftDate, dvMinMax,
        '', '', ciSimple, '',
        'Select Min(FormDate),max(FormDate) from Acc.Expense where YearId = ' +
        APPBank.Year.ToString);

      AddItem(Dmf.adcAccounting, 'FormNo', 'شماره', 'شماره', ftInteger,
        dvMinMax, '', '', ciSimple, '',
        'Select Min(FormNo),max(FormNo) from Acc.Expense where YearId = ' +
        APPBank.Year.ToString);

      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateList;
      end; // if
    finally
      Free;
    end; // try
end; // whith

procedure TExpenseListF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('FormNo') = nil then
    close;
end;

procedure TExpenseListF.MenuItemClick(Sender: TObject);
var
  intState: Integer;
  strState: string;
  intOldState: Byte;
  dn: Largeint;
  cn, i: Integer;
  btm: TBookmark;
begin
  inherited;
  intState := TMenuItem(Sender).Tag;
  case intState of
    0:
      strState := 'موقت';
    1:
      strState := 'قطعي';
    2:
      strState := 'ثبت حسابداري ';
  end;

  if user.level < 7 then
  begin
    warn('خارج از محدوده دسترسي ');
    abort;
  end;
  temp := intState;
  with DBGrid1.SelectedRows do
  begin
    intOldState := qryExpenseList.fieldbyname('state').AsInteger;
    if count < 2 then
    begin
      if intOldState = intState then
      begin
        warn(Format('قبلاٌ %s شده است ', [strState]));
        Exit;
      end; // if
      if get_response(Format('آيا از %s كردن سند انتخاب شده مطمئن هستيد؟‍',
        [strState])) <> mrYes then
        Exit;
      dn := qryExpenseList.fieldbyname('ExpID').AsInteger;
      if changeStateDoc(dn) then
      begin
        warn(Format('سند شماره %d ، %s شد.‍',
          [qryExpenseList.fieldbyname('Formno').AsInteger, strState]));
        // qryExpenseList.Requery;
      end; // if
    end
    else
    begin
      if get_response(Format('آيا از %s كردن سندهاي انتخاب شده مطمئن هستيد؟‍',
        [strState])) <> mrYes then
        Exit;
      cn := 0;
      for i := 0 to count - 1 do
      begin
        qryExpenseList.GotoBookmark((items[i]));
        dn := qryExpenseList.fieldbyname('ExpID').AsInteger;
        intOldState := qryExpenseList.fieldbyname('state').AsInteger;
        if intOldState <> intState then
          if changeStateDoc(dn) then
            inc(cn);
      end; // for
      if cn = 0 then
        warn(Format('هيچ سندي %s نشد.‍', [strState]))
      else
        warn(Format('%d سند %s شد.', [cn, strState]));

    end; // else
  end; // with
  btm := qryExpenseList.GetBookmark;
  qryExpenseList.Active := False;
  qryExpenseList.Active := True;
  qryExpenseList.GotoBookmark(btm);
end;

procedure TExpenseListF.BitBtn11Click(Sender: TObject);
var
  p: TPoint;
begin
  inherited;
  p := ClientToScreen(Point(BitBtn4.Left, BitBtn4.Top + PnlUnderButton.Top));
  PopupChSt.Popup(p.X + 90, p.Y - 55);
end;

procedure TExpenseListF.BitBtn7Click(Sender: TObject);
var
  ctn: Byte;
  dn: Largeint;
  cn, i: Integer;
  btm: TBookmark;
begin
  inherited;
  temp := 2;
  with DBGrid1.SelectedRows do
  begin
    ctn := qryExpenseList.fieldbyname('state').AsInteger;
    if count < 2 then
    begin
      if ctn = 2 then
      begin
        warn('قبلاً تغيير داده شده است');
        Exit;
      end; // if
      if get_response('آيا از تغيير نوع سند انتخاب شده مطمئن هستيد؟‍') <> mrYes
      then
        Exit;
      dn := qryExpenseList.fieldbyname('ExpID').AsInteger;
      if changeStateDoc(dn) then
      begin
        warn('نوع سند شماره ' + qryExpenseList.fieldbyname('Formno').AsString +
          'تغيير داده شد.‍');
        // qryExpenseList.Requery;
      end; // if
    end
    else
    begin
      if get_response('آيا از تغيير نوع سند انتخاب شده مطمئن هستيد؟‍') <> mrYes
      then
        Exit;
      cn := 0;
      for i := 0 to count - 1 do
      begin
        qryExpenseList.GotoBookmark((items[i]));
        dn := qryExpenseList.fieldbyname('ExpID').AsInteger;
        ctn := qryExpenseList.fieldbyname('state').AsInteger;
        if ctn <> 2 then
          if changeStateDoc(dn) then
            inc(cn);
      end; // for
      if cn = 0 then
        warn('هيچ سندي تغيير داده نشد.‍')
      else
        warn(inttostr(cn) + ' نوع سند تغيير داده شد‍');
    end; // else
  end; // with
  btm := qryExpenseList.GetBookmark;
  qryExpenseList.Active := False;
  qryExpenseList.Active := True;
  qryExpenseList.GotoBookmark(btm);
end;

procedure TExpenseListF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryExpenseList.fieldbyname('FormNo'));
end;

procedure TExpenseListF.DBGrid1TitleClick(Column: TColumn);
begin
  inherited;
  SortTitle(Column);
end;

procedure TExpenseListF.pplbcompanyGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TExpenseListF.pplbdateGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TExpenseListF.pplbpagecountGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TExpenseListF.actPrintExecute(Sender: TObject);
begin
  inherited;
  ppReport1.PreviewFormSettings.SinglePageOnly := True;
  ppReport1.Print;
end;

procedure TExpenseListF.BitBtn8Click(Sender: TObject);
begin
  inherited;
  if user.level < 7 then
  begin
    warn('خارج از محدوده دسترسي ');
    abort;
  end;
  EmissionDocF.Enter;
end;

procedure TExpenseListF.ppDBText5GetText(Sender: TObject; var Text: String);
begin
  inherited;
  case qryExpenseList.fieldbyname('State').AsInteger of
    0:
      Text := 'موقت';
    1:
      Text := 'قطعي';
    2:
      Text := 'ثبت حسابداري شد';
  end; // case
end;

end.
