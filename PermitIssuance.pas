// Mostafa
unit PermitIssuance;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, Grids, Vcl.DBGrids, ImgList, DBActns, ActnList,
  StdCtrls, ExtCtrls, Buttons, DB, ADODB, Mask, DBCtrls, StrUtils, ppDB,
  ppDBPipe, ppDBBDE, ppComm, ppRelatv, ppProd, ppClass, ppReport, ppCtrls,
  ppPrnabl, ppBands, ppCache, ppDsgnDB, ppDBJIT, ppVar, Menus, ComCtrls,
  SumDBGrid, ppParameter, ppDesignLayer, System.ImageList, System.Actions;

type
  TPermitIssuanceF = class(Ttemplate2MDIF)
    qryFormList: TADOQuery;
    srcFormList: TDataSource;
    btnPostPay: TBitBtn;
    actFilter: TAction;
    BitBtn2: TBitBtn;
    actSendToExcel: TAction;
    BitBtn3: TBitBtn;
    DBGrid1: TDBGrid;
    actShowForm: TAction;
    btnPostPay1: TBitBtn;
    qryInitQry: TADOQuery;
    qryFormListFormID: TIntegerField;
    qryFormListFormNumber: TIntegerField;
    qryFormListFormDate: TStringField;
    qryFormListFormType: TWordField;
    qryFormListCustomerID1: TIntegerField;
    qryFormListCustName1: TStringField;
    qryFormListCustomerID2: TIntegerField;
    qryFormListCustName2: TStringField;
    qryFormListAmount: TBCDField;
    qryFormListFomNote: TStringField;
    qryFormListFormCaption: TStringField;
    BitBtn6: TBitBtn;
    BitBtn5: TBitBtn;
    actSort: TAction;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    qryFormListBudgetCode: TIntegerField;
    qryFormListProjectID: TIntegerField;
    qryFormListAidInfoNo: TStringField;
    qryFormListAidInfoDate: TStringField;
    actAllPrint: TAction;
    PopPrint: TPopupMenu;
    RptCoffer: TMenuItem;
    qryFormListDocNo: TIntegerField;
    qryFormListDocDate: TStringField;
    qryFormListFormState: TWordField;
    AllClick: TMenuItem;
    actvijehPrint: TAction;
    BitBtn9: TBitBtn;
    ppHeaderBand1: TppHeaderBand;
    ppShape2: TppShape;
    ppLblCompanyName: TppLabel;
    ppLblFormName: TppLabel;
    ppLine1: TppLine;
    ppLblPrintDate: TppLabel;
    ppSysVarPageNumber: TppSystemVariable;
    ppLine9: TppLine;
    ppLine7: TppLine;
    ppLine11: TppLine;
    ppLine50: TppLine;
    ppLine51: TppLine;
    ppLine17: TppLine;
    ppLine13: TppLine;
    ppLblCustname2: TppLabel;
    ppLblCustomerID2: TppLabel;
    ppLabel8: TppLabel;
    ppLblCustomerID1: TppLabel;
    ppLabel32: TppLabel;
    ppLabel9: TppLabel;
    ppLabel17: TppLabel;
    ppLabel5: TppLabel;
    ppLabel4: TppLabel;
    ppLabel6: TppLabel;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLabel7: TppLabel;
    ppLabel12: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText9: TppDBText;
    ppDBText2: TppDBText;
    ppDBText8: TppDBText;
    ppDBText19: TppDBText;
    ppLine22: TppLine;
    ppLine33: TppLine;
    ppLine2: TppLine;
    ppLine10: TppLine;
    ppLine43: TppLine;
    ppLine46: TppLine;
    ppLine16: TppLine;
    ppLine30: TppLine;
    ppDBText3: TppDBText;
    ppDBText6: TppDBText;
    ppDBText4: TppDBText;
    ppLine3: TppLine;
    ppDBText5: TppDBText;
    ppDBText7: TppDBText;
    ppLine12: TppLine;
    ppLine14: TppLine;
    ppFooterBand1: TppFooterBand;
    ppShape1: TppShape;
    ppLabel16: TppLabel;
    ppDBCalc17: TppDBCalc;
    ppLabel18: TppLabel;
    ppLine38: TppLine;
    ppDBCalc19: TppDBCalc;
    ppLine36: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppShape3: TppShape;
    ppLabel1: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppLabel2: TppLabel;
    ppLine6: TppLine;
    ppDBCalc2: TppDBCalc;
    ppLine8: TppLine;
    qryFormListFirstUser: TStringField;
    qryFormListLastUser: TStringField;
    qryFormList_BudgetCaption: TStringField;
    qryFormList_ProjectCaption: TStringField;
    qryFormListCashWage: TBCDField;
    SumGrid1: TSumGrid;
    qryFormListPayTypesName: TStringField;
    qryFormListTopicTypesName: TStringField;
    qryFormListSellsMethod: TIntegerField;
    qryFormListSellsMethodName: TWideStringField;
    qryFormListSellsEmporium: TIntegerField;
    qryFormListSellsEmporiumName: TWideStringField;
    qryFormListServerID: TIntegerField;
    qryFormListYearID: TIntegerField;
    qryFormListDisplayFormType: TWordField;
    qryFormListDetailCode: TStringField;
    qryFormListCTopicCode: TStringField;
    qryFormListCTopicCode2: TStringField;
    btnShowForm: TBitBtn;
    actPostPay: TAction;
    qryFormListTopicCode: TLargeintField;
    procedure actFilterExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure actShowFormExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure ppSysVarPageNumberGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppLblFormNameGetText(Sender: TObject; var Text: String);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure actAllPrintExecute(Sender: TObject);
    procedure qryFormListFormStateGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure AllClickClick(Sender: TObject);
    procedure actvijehPrintExecute(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure actPostPayExecute(Sender: TObject);
  private
    formType: Byte;
    Cust1Filter: Boolean;
    Cust2Filter: Boolean;
    PayTypes, TopicTypeb, SellsEmporiumActive, SellsMethodActive: Boolean;
    cust1Label: String;
    cust2Label: String;
    AidInfo, BudgetCodePosition: Boolean;
    Procedure InitForm;
    procedure UpdateList;
    { Private declarations }
  public
    Procedure Enter(qry: TADOQuery);
    { Public declarations }
  end;

var
  PermitIssuanceF: TPermitIssuanceF;

implementation

uses DM, GlobalPro, filter_ADO, FilterClass_ADO, FormFunctions, search2,
  sort2, mmessage, DBGrid2Print, main, Filter_ADO_Const;

{$R *.dfm}
{ TPermitIssuanceF }

procedure TPermitIssuanceF.Enter;
begin
  With qry do
  begin
    CreateMDIForm2(TPermitIssuanceF, PermitIssuanceF, mainF,
      Fieldbyname('FormType').AsInteger);
    PermitIssuanceF.qryFormList.Locate('FormID;ServerID;YearID',
      VarArrayOf([Fieldbyname('FormID').AsInteger, Fieldbyname('ServerID')
      .AsInteger, Fieldbyname('YearID').AsInteger]), []);

  end;
end;

procedure TPermitIssuanceF.InitForm;
var
  i: Integer;
begin
  formType := var_glb_gParam;
  lblCaption.Hint := IntToStr(formType);
  with qryInitQry do
  begin
    Active := False;
    Parameters.ParamByName('Type').Value := formType;
    Active := True;
    Caption := 'فراخواني جهت ثبت براساس مجوز ' +
      Fieldbyname('FormCaption').AsString;
    Cust1Filter := Fieldbyname('Customer1Active').Value = 1;
    Cust2Filter := Fieldbyname('Customer2Active').Value = 1;
    cust1Label := Fieldbyname('Customer1Label').AsString;
    cust2Label := Fieldbyname('Customer2Lable').AsString;

    PayTypes := Fieldbyname('Pay_Topic_Active').AsInteger in [1, 3];
    TopicTypeb := Fieldbyname('Pay_Topic_Active').AsInteger in [2, 3];
    setColumns2(DBGrid1, PayTypes, 'PayTypesName');
    setColumns2(DBGrid1, TopicTypeb, 'TopicTypesName');

    // ------------------------set columns---------------------//

    setColumns2(DBGrid1, Fieldbyname('DisplayFormType').AsInteger = 5,
      'CashWage');

    SellsEmporiumActive := Fieldbyname('SellsEmporiumActive').AsInteger = 1;
    setColumns2(DBGrid1, SellsEmporiumActive, 'SellsEmporium');
    setColumns2(DBGrid1, SellsEmporiumActive, 'SellsEmporiumName');

    SellsMethodActive := Fieldbyname('SellsMethodActive').AsInteger = 1;
    setColumns2(DBGrid1, SellsMethodActive, 'SellsMethod');
    setColumns2(DBGrid1, SellsMethodActive, 'SellsMethodName');

  end; // with for InitQry

  with qryFormList Do
  begin
    Active := False;
    Parameters.ParamByName('FormType').Value := formType;
    // FieldByName('CustomerID1').DisplayLabel:=' كد ' +cust1Label;
    // FieldByName('CustName1').DisplayLabel:=' نام ' +cust1Label;
    // FieldByName('CustomerID2').DisplayLabel:=' كد ' +cust2Label;
    // FieldByName('CustName2').DisplayLabel:=' نام ' +cust2Label;

    Fieldbyname('AidInfoNo').DisplayLabel := ' شماره ' + qryInitQry.Fieldbyname
      ('AidInfoCaption').AsString;
    Fieldbyname('AidInfoDate').DisplayLabel := ' تاريخ ' +
      qryInitQry.Fieldbyname('AidInfoCaption').AsString;
    if Cust1Filter then
      sql.Add('And (Forms.CustomerID1 BETWEEN :CustId1From AND :CustId1To) ');
    if Cust2Filter then
      sql.Add('AND((Forms.CustomerID2 BETWEEN :CustId2From AND :CustId2To)OR(Forms.CustomerID2 is null))');
    if PayTypes then
      sql.Add('AND (LookUpsPayTypes.Code BETWEEN :PayTypesCodeFrom AND :PayTypesCodeTo )');
    if TopicTypeb then
      sql.Add('AND (LookUpsTopicTypes.Code BETWEEN :TopicTypesCodeFrom AND :TopicTypesCodeTo )');

  end; // with for qryformlist
  AidInfo := (qryInitQry.Fieldbyname('AidInfoActive').AsInteger <> 0) and
    (qryInitQry.Fieldbyname('AidInfoActive').AsInteger <> 2);
  BudgetCodePosition := (qryInitQry.Fieldbyname('BudgetCodePosition').AsInteger
    <> 0) and (qryInitQry.Fieldbyname('BudgetCodePosition').AsInteger <> 1);
  for i := 1 to DBGrid1.Columns.Count - 1 do
  begin
    if Pos('aidinfo', LowerCase(DBGrid1.Columns[i].FieldName)) <> 0 then
      DBGrid1.Columns[i].Visible := AidInfo;
    if Pos('project', LowerCase(DBGrid1.Columns[i].FieldName)) <> 0 then
      DBGrid1.Columns[i].Visible := BudgetCodePosition;
    if Pos('budget', LowerCase(DBGrid1.Columns[i].FieldName)) <> 0 then
      DBGrid1.Columns[i].Visible := BudgetCodePosition;
  end;
end;

procedure TPermitIssuanceF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try // CustomerKind1
      if SellsMethodActive then
        AddItemFilter(GetFilter, TFilterSellsMethod);

      if SellsEmporiumActive then
        AddItemFilter(GetFilter, TFilterSellsEmporium);

      if PayTypes then
        AddItem(dmF.adcBSell, 'PayTypes', 'نوع دريافت/پرداخت', 'كد', ftInteger,
          dvMinMax, '', '', ciLookup,
          'SELECT   Code  ,  Name    FROM LookUps WHERE (Kind = ' +
          IntToStr(qryInitQry.Fieldbyname('FormPaySerial').AsInteger) +
          ')and (Kind <>0) ',
          'SELECT Min(Code),max(Code)FROM LookUps WHERE (Kind = ' +
          IntToStr(qryInitQry.Fieldbyname('FormPaySerial').AsInteger) +
          ')and (Kind <>0)');

      if TopicTypeb then
        AddItem(dmF.adcBSell, 'TopicTypes', 'موضوع دريافت/پرداخت', 'كد',
          ftInteger, dvMinMax, '', '', ciLookup,
          'SELECT   Code  ,  Name    FROM LookUps WHERE (Kind = ' +
          IntToStr(qryInitQry.Fieldbyname('FormTopicSerial').AsInteger) +
          ')and (Kind <>0) ',
          'SELECT Min(Code),max(Code)FROM LookUps WHERE (Kind = ' +
          IntToStr(qryInitQry.Fieldbyname('FormTopicSerial').AsInteger) +
          ')and (Kind <>0)');

      AddItem(dmF.adcBSell, 'State', '', 'وضعيت', ftInteger, dvMinMax, '', '',
        ciSimple, '',
        'Select Min(FormState),max(FormState) from Forms WHERE FormType=' +
        IntToStr(formType));
      AddItem(dmF.adcBSell, 'Date', 'تاريخ ', 'تاريخ', ftDate, dvMinMax, '', '',
        ciSimple, '', 'Select  ''' + APPBank.StartYear +
        ''',max(FormDate) from Forms WHERE FormType=' + IntToStr(formType));
      AddItem(dmF.adcBSell, 'number', 'شماره', 'شماره', ftInteger, dvMinMax, '',
        '', ciSimple, '',
        'Select Min(FormNumber),max(FormNumber) from Forms WHERE FormType=' +
        IntToStr(formType));
      if Cust1Filter then
        AddItem(dmF.adcBSell, 'CustomerID1', cust1Label, 'كد' + cust1Label,
          ftInteger, dvMinMax, '', '', ciLookup,
          'SELECT Customers.CustID,Customers.CustName FROM Customers INNER JOIN CustomersGroup ON Customers.CustomerGrpID = CustomersGroup.CustomerGrpID '
          + ' WHERE (CustomersGroup.GroupType IN (' + qryInitQry.Fieldbyname
          ('CustomerKind1').AsString + '))',
          'SELECT Min(Customers.CustID),max(Customers.CustID) FROM Customers INNER JOIN CustomersGroup ON Customers.CustomerGrpID = CustomersGroup.CustomerGrpID '
          + ' WHERE (CustomersGroup.GroupType IN (' + qryInitQry.Fieldbyname
          ('CustomerKind1').AsString + '))');
      if Cust2Filter then
        AddItem(dmF.adcBSell, 'CustomerID2', cust2Label, 'كد' + cust2Label,
          ftInteger, dvMinMax, '', '', ciLookup,
          'SELECT Customers.CustID,Customers.CustName FROM Customers INNER JOIN CustomersGroup ON Customers.CustomerGrpID = CustomersGroup.CustomerGrpID '
          + ' WHERE (CustomersGroup.GroupType IN (' + qryInitQry.Fieldbyname
          ('CustomerKind2').AsString + '))',
          'SELECT Min(Customers.CustID),max(Customers.CustID) FROM Customers INNER JOIN CustomersGroup ON Customers.CustomerGrpID = CustomersGroup.CustomerGrpID '
          + ' WHERE (CustomersGroup.GroupType IN (' + qryInitQry.Fieldbyname
          ('CustomerKind2').AsString + '))');

      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateList;
      end; // if
    finally
      Free;
    end; // try
  end; // with
end;

procedure TPermitIssuanceF.actPostPayExecute(Sender: TObject);
var
  FormNumber, NextFormType: Integer;
  s: string;
begin
  inherited;
  if get_response('آيا براي ' + actPostPay.Caption + ' مطمئن هستيد') <> mrYes
  then
    Exit;
  NextFormType := qryInitQry.Fieldbyname('NextFormType').AsInteger;
  qryInitQry.Active := False;
  qryInitQry.Parameters.ParamByName('Type').Value := NextFormType;
  qryInitQry.Active := True;

  FormNumber := GetFormNumber(IntToStr(NextFormType), qryInitQry, qryFormList);

  s := 'UPDATE Forms ' +
    'SET AidFormType = FormType, AidInfoNo = FormNumber, AidInfoDate = FormDate'
    + ',FormType = %D, FormNumber = %D, FormDate = ''%S''' +
    'WHERE (FormID = %d) AND (ServerID = %d) AND (YearID = %d)';
  s := Format(s, [NextFormType, FormNumber, var_glb_CurrentDate,
    qryFormListFormID.AsInteger, qryFormListServerID.AsInteger,
    qryFormListYearID.AsInteger]);
  dmF.adcBSell.Execute(s);
  ShowFormTypesForms(qryFormList, Self);
  qryInitQry.Active := False;
  qryInitQry.Parameters.ParamByName('Type').Value := formType;
  qryInitQry.Active := True;
  qryFormList.Requery();
  FreeReservedCodes(dmF.adcBSell, 'Forms', 'FormNumber',
    IntToStr(NextFormType));
end;

procedure TPermitIssuanceF.UpdateList;
begin
  with qryFormList Do
  begin
    Active := False;
    if Cust1Filter then
    begin
      Parameters.ParamByName('custid1from').Value :=
        GetcFrom(myParams.ParamValues['CustomerID1'], ftDate);
      Parameters.ParamByName('CustId1To').Value :=
        GetcTo(myParams.ParamValues['CustomerID1'], ftDate);
    end; // if
    if Cust2Filter then
    begin
      Parameters.ParamByName('CustId2From').Value :=
        GetcFrom(myParams.ParamValues['CustomerID2'], ftDate);
      Parameters.ParamByName('CustId2To').Value :=
        GetcTo(myParams.ParamValues['CustomerID2'], ftDate);
    end; // if
    if PayTypes then
    begin
      Parameters.ParamByName('PayTypesCodeFrom').Value :=
        GetcFrom(myParams.ParamValues['PayTypes'], ftInteger);
      Parameters.ParamByName('PayTypesCodeTo').Value :=
        GetcTo(myParams.ParamValues['PayTypes'], ftInteger);
    end; // if
    if TopicTypeb then
    begin
      Parameters.ParamByName('TopicTypesCodeFrom').Value :=
        GetcFrom(myParams.ParamValues['TopicTypes'], ftInteger);
      Parameters.ParamByName('TopicTypesCodeTo').Value :=
        GetcTo(myParams.ParamValues['TopicTypes'], ftInteger);
    end; // if
    if SellsEmporiumActive then
    begin
      Parameters.ParamByName('SellsEmporiumFrom').Value :=
        GetcFrom(myParams.ParamValues['SellsEmporium'], ftInteger);
      Parameters.ParamByName('SellsEmporiumTo').Value :=
        GetcTo(myParams.ParamValues['SellsEmporium'], ftInteger);
    end; // if
    if SellsMethodActive then
    begin
      Parameters.ParamByName('SellsMethodFrom').Value :=
        GetcFrom(myParams.ParamValues['SellsMethod'], ftInteger);
      Parameters.ParamByName('SellsMethodTo').Value :=
        GetcTo(myParams.ParamValues['SellsMethod'], ftInteger);
    end; // if
    Parameters.ParamByName('DateFrom').Value :=
      GetcFrom(myParams.ParamValues['Date'], ftDate);
    Parameters.ParamByName('DateTo').Value :=
      GetcTo(myParams.ParamValues['Date'], ftDate);
    Parameters.ParamByName('NumberFrom').Value :=
      GetcFrom(myParams.ParamValues['number'], ftInteger);
    Parameters.ParamByName('NumberTo').Value :=
      GetcTo(myParams.ParamValues['number'], ftInteger);
    Parameters.ParamByName('StateFrom').Value :=
      GetcFrom(myParams.ParamValues['State'], ftInteger);
    Parameters.ParamByName('StateTo').Value :=
      GetcTo(myParams.ParamValues['State'], ftInteger);

    Parameters.ParamByName('YearIDFrom').Value := opt.DefaultYear;
    Parameters.ParamByName('YearIDTo').Value := APPBank.Year;

    Active := True;
  end; // with
end;

procedure TPermitIssuanceF.FormCreate(Sender: TObject);
begin
  inherited;
  InitForm;
end;

procedure TPermitIssuanceF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('number') = nil then
    Close;
end;

procedure TPermitIssuanceF.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TPermitIssuanceF.actShowFormExecute(Sender: TObject);
begin
  inherited;
  ShowFormTypesForms(qryFormList, Self);
end;

procedure TPermitIssuanceF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 8, True, IntToStr(formType));
end;

procedure TPermitIssuanceF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1, IntToStr(formType));
end;

procedure TPermitIssuanceF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryFormList);
end;

procedure TPermitIssuanceF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryFormList);
end;

procedure TPermitIssuanceF.ppSysVarPageNumberGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TPermitIssuanceF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate
end;

procedure TPermitIssuanceF.ppLblFormNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := Caption
end;

procedure TPermitIssuanceF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TPermitIssuanceF.actAllPrintExecute(Sender: TObject);
begin
  inherited;
  SeletedPrint(ppDBPipeline1, DBGrid1);
  PopPrint.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TPermitIssuanceF.AllClickClick(Sender: TObject);
var
  ReportFileName: String;
begin
  inherited;
  ReportFileName := (Sender as TMenuItem).Name;
  try
    qryFormList.DisableControls;
    InitReportFile(ppReport1, ReportFileName, True, False,
      qryInitQry.Fieldbyname('FormCaption').AsString);
  finally
    qryFormList.EnableControls;
  end; // try
end;

procedure TPermitIssuanceF.qryFormListFormStateGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text := GetFormState(Sender.AsInteger)
end;

procedure TPermitIssuanceF.actvijehPrintExecute(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, formType);
end;

procedure TPermitIssuanceF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryFormListFormNumber);
end;

end.
