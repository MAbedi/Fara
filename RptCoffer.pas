// Mostafa
unit RptCoffer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, Grids, Vcl.DBGrids, ImgList, DBActns, ActnList,
  StdCtrls, ExtCtrls, Buttons, DB, ADODB, Mask, DBCtrls, StrUtils, ppDB,
  ppDBPipe, ppDBBDE, ppComm, ppRelatv, ppProd, ppClass, ppReport, ppCtrls,
  ppPrnabl, ppBands, ppCache, ppDsgnDB, ppDBJIT, ppVar, Menus, ComCtrls,
  SumDBGrid, ppParameter, ppParametersEd, Math, ppDesignLayer, System.ImageList,
  System.Actions, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid, ppEndUsr, GeneralDM;

type
  TRptCofferF = class(Ttemplate2MDIF)
    pnlNote: TPanel;
    qryFormList: TADOQuery;
    srcFormList: TDataSource;
    BitBtn1: TBitBtn;
    actFilter: TAction;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    BitBtn2: TBitBtn;
    actSendToExcel: TAction;
    BitBtn3: TBitBtn;
    actShowForm: TAction;
    BitBtn4: TBitBtn;
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
    RptCofferWithBudget: TMenuItem;
    RptCofferWithchasher: TMenuItem;
    qryFormListDocNo: TIntegerField;
    qryFormListDocDate: TStringField;
    actDocNo: TAction;
    btnDocNo: TBitBtn;
    PopMnuState: TPopupMenu;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    actState0: TAction;
    actState1: TAction;
    actState10: TAction;
    btnState: TBitBtn;
    actState: TAction;
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
    actSelectAll: TAction;
    qryFormListFirstUser: TStringField;
    qryFormListLastUser: TStringField;
    qryFormList_BudgetCaption: TStringField;
    qryFormList_ProjectCaption: TStringField;
    N1: TMenuItem;
    qryFormListCashWage: TBCDField;
    pnlLblLimitPlace: TPanel;
    lblLimit1: TLabel;
    lblLimit2: TLabel;
    mnuRptCoffer: TMenuItem;
    qryFormListPayTypesName: TStringField;
    qryFormListTopicTypesName: TStringField;
    qryFormListServerID: TIntegerField;
    qryFormListYearID: TIntegerField;
    actMakeDocumentCheckF: TAction;
    qryFormListDisplayFormType: TWordField;
    actRunSort: TAction;
    actTransmittal: TAction;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    qryFormListDetailCode: TStringField;
    qryFormListCTopicCode: TStringField;
    qryFormListCTopicCode2: TStringField;
    actCancellationFixes: TAction;
    mnuCancellationFixes: TMenuItem;
    DBnum2alphabet: TppDBText;
    ppDBCalcnum2alphabet: TppDBCalc;
    qryFormListTopicCode: TLargeintField;
    actDeleteAll: TAction;
    actDocumentUpDate: TAction;
    PopMnuOther: TPopupMenu;
    MenuItem1: TMenuItem;
    N11: TMenuItem;
    qryFormListUserRegistrationDoc: TStringField;
    qryFormListDefaultDate: TStringField;
    qryFormListDefaultDuration: TSmallintField;
    qry1: TADOQuery;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    StringField1: TStringField;
    WordField1: TWordField;
    IntegerField3: TIntegerField;
    StringField2: TStringField;
    IntegerField4: TIntegerField;
    StringField3: TStringField;
    BCDField1: TBCDField;
    BCDField2: TBCDField;
    StringField4: TStringField;
    StringField5: TStringField;
    IntegerField5: TIntegerField;
    IntegerField6: TIntegerField;
    FloatField1: TFloatField;
    StringField6: TStringField;
    IntegerField7: TIntegerField;
    StringField7: TStringField;
    WordField2: TWordField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    IntegerField8: TIntegerField;
    WideStringField1: TWideStringField;
    IntegerField9: TIntegerField;
    WideStringField2: TWideStringField;
    IntegerField10: TIntegerField;
    IntegerField11: TIntegerField;
    WordField3: TWordField;
    LargeintField1: TLargeintField;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    StringField17: TStringField;
    StringField18: TStringField;
    SmallintField1: TSmallintField;
    qryFormListItemNote: TStringField;
    qryFormListcustomerid3: TIntegerField;
    qryFormListcustname3: TStringField;
    qryFormListCustomerGrpID1: TIntegerField;
    qryFormListCustomerGrpName1: TStringField;
    qryFormListSellsEmporium: TIntegerField;
    qryFormListSellsEmporiumName: TWideStringField;
    qryFormListSellsMethod: TIntegerField;
    qryFormListSellsMethodName: TWideStringField;
    ppDesigner1: TppDesigner;
    qryFormListID: TLargeintField;
    qryFormListMachineNo: TStringField;
    qryFormListAidInfoNo2: TFloatField;
    chkFooter4Sum: TCheckBox;
    DBGrid1: TCedarDbgrid;
    qryFormListTruckNumber: TStringField;
    qryFormListAppendix: TIntegerField;
    actAppendix: TAction;
    qryFormListRelatedRecipts: TStringField;
    qryFormListModifyDate: TDateTimeField;
    qryFormListInsertDate: TDateTimeField;
    qryFormListFormFlag: TWideStringField;
    Panel6: TPanel;
    Label2: TLabel;
    pb1: TProgressBar;
    qryFormListCustomerID4: TIntegerField;
    qryFormListcustname4: TStringField;
    procedure actFilterExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure actShowFormExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure ppSysVarPageNumberGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppLblFormNameGetText(Sender: TObject; var Text: String);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure actAllPrintExecute(Sender: TObject);
    procedure ppLabel3GetText(Sender: TObject; var Text: String);
    procedure ppLblAidInfoNoGetText(Sender: TObject; var Text: String);
    procedure actDocNoExecute(Sender: TObject);
    procedure actState1Execute(Sender: TObject);
    procedure actStateExecute(Sender: TObject);
    procedure qryFormListFormStateGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure actState10Execute(Sender: TObject);
    procedure actState0Execute(Sender: TObject);
    procedure AllClickClick(Sender: TObject);
    procedure ppLblLimit2GetText(Sender: TObject; var Text: String);
    procedure actvijehPrintExecute(Sender: TObject);
    procedure ppLblCustomerID1GetText(Sender: TObject; var Text: String);
    procedure ppLblCustName1GetText(Sender: TObject; var Text: String);
    procedure ppLblCustomerID2GetText(Sender: TObject; var Text: String);
    procedure ppLblCustName2GetText(Sender: TObject; var Text: String);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure qryFormListAfterScroll(DataSet: TDataSet);
    procedure mnuRptCofferClick(Sender: TObject);
    procedure actSelectAllExecute(Sender: TObject);
    procedure actMakeDocumentCheckFExecute(Sender: TObject);
    procedure actRunSortExecute(Sender: TObject);
    procedure actTransmittalExecute(Sender: TObject);
    procedure actCancellationFixesExecute(Sender: TObject);
    procedure ppDBCalcnum2alphabetGetText(Sender: TObject; var Text: String);
    procedure actDeleteAllExecute(Sender: TObject);
    procedure actDocumentUpDateExecute(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure chkFooter4SumClick(Sender: TObject);
    procedure qryFormListAfterOpen(DataSet: TDataSet);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure actAppendixExecute(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumnEh);
  private
    FormType: Byte;
    Cust1Filter: Boolean;
    Cust2Filter: Boolean;
    Cust3Filter: Boolean;
    Cust4Filter: Boolean;
    PayTypes, TopicTypeb, SellsEmporiumActive, SellsMethodActive: Boolean;
    cust1Label: String;
    cust2Label: String;
    cust3Label: String;
    cust4Label: String;
    AidInfo, BudgetCodePosition: Boolean;
    // OrginalSQL: string;
    Procedure InitForm;
    procedure UpdateList;
    procedure ProcCheckExistsFile;
    { Private declarations }
  public
    Procedure Enter(qry: TADOQuery);
    { Public declarations }
  end;

var
  RptCofferF: TRptCofferF;

implementation

uses DM, GlobalPro, filter_ADO, FilterClass_ADO,
  FormFunctions, search2,
  sort2, mmessage, DBGrid2Print, main, MakeDocumentCheck,
  MakeDocumentCoffer, FaraConsts, mdiMain, DocumentUpDate, Filter_ADO_Const,
  ViewFileOnServer, shamsiDate, ViewFileOnServerDB;

{$R *.dfm}
{ TrptCofferF }

procedure TRptCofferF.Enter;
begin
  With qry do
  begin
    CreateMDIForm2(TRptCofferF, RptCofferF, mainF, Fieldbyname('FormType')
      .AsInteger);
    RptCofferF.qryFormList.Locate('FormID;ServerID;YearID',
      VarArrayOf([Fieldbyname('FormID').AsInteger, Fieldbyname('ServerID')
      .AsInteger, Fieldbyname('YearID').AsInteger]), []);

  end;
end;

procedure TRptCofferF.InitForm;
var
  i: Integer;
begin
  FormType := var_glb_gParam;
  lblCaption.Hint := IntToStr(FormType);
  with qryInitQry do
  begin
    Active := False;
    Parameters.ParamByName('Type').Value := FormType;
    Active := True;
    Caption := 'ليست ' + Fieldbyname('FormCaption').AsString;
    mnuRptCoffer.Caption := 'چاپ ' + Caption;
    Cust1Filter := Fieldbyname('Customer1Active').Value = 1;
    setColumns2(DBGrid1, Cust1Filter, 'CustomerID1');
    setColumns2(DBGrid1, Cust1Filter, 'CustName1');

    Cust2Filter := Fieldbyname('Customer2Active').Value = 1;
    setColumns2(DBGrid1, Cust2Filter, 'CustomerID2');
    setColumns2(DBGrid1, Cust2Filter, 'CustName2');

    Cust3Filter := Fieldbyname('Customer3Active').Value = 1;
    setColumns2(DBGrid1, Cust3Filter, 'customerid3');
    setColumns2(DBGrid1, Cust3Filter, 'custname3');

    Cust4Filter := Fieldbyname('Customer4Active').Value = 1;
    setColumns2(DBGrid1, Cust4Filter, 'customerid4');
    setColumns2(DBGrid1, Cust4Filter, 'custname4');

    cust1Label := Fieldbyname('Customer1Label').AsString;
    cust2Label := Fieldbyname('Customer2Lable').AsString;
    cust3Label := Fieldbyname('Customer3Lable').AsString;
    cust4Label := Fieldbyname('Customer4Lable').AsString;

    PayTypes := Fieldbyname('Pay_Topic_Active').AsInteger in [1, 3];
    TopicTypeb := Fieldbyname('Pay_Topic_Active').AsInteger in [2, 3];
    setColumns2(DBGrid1, PayTypes, 'PayTypesName');
    setColumns2(DBGrid1, TopicTypeb, 'TopicTypesName');

    actState.Visible := CheckUserlevel(Fieldbyname('ChangeStateLevelID'),
      qryFormList, False);
    actState0.Visible := CheckUserlevel(Fieldbyname('State0ChangeLevelID'),
      qryFormList, False);
    actState1.Visible := CheckUserlevel(Fieldbyname('State1ChangeLevelID'),
      qryFormList, False);
    actState10.Visible := CheckUserlevel(Fieldbyname('State10ChangeLevelID'),
      qryFormList, False);
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

    setColumns2(DBGrid1, FormType = 0, 'FormCaption');
    Fieldbyname('CustomerID1').DisplayLabel := ' كد ' + cust1Label;
    Fieldbyname('CustName1').DisplayLabel := ' نام ' + cust1Label;

    Fieldbyname('CustomerID2').DisplayLabel := ' كد ' + cust2Label;
    Fieldbyname('CustName2').DisplayLabel := ' نام ' + cust2Label;

    Fieldbyname('CustomerID3').DisplayLabel := ' كد ' + cust3Label;
    Fieldbyname('CustName3').DisplayLabel := ' نام ' + cust3Label;

    Fieldbyname('CustomerID4').DisplayLabel := ' كد ' + cust4Label;
    Fieldbyname('CustName4').DisplayLabel := ' نام ' + cust4Label;

    Fieldbyname('AidInfoNo').DisplayLabel := ' شماره ' + qryInitQry.Fieldbyname
      ('AidInfoCaption').AsString;
    Fieldbyname('AidInfoDate').DisplayLabel := ' تاريخ ' +
      qryInitQry.Fieldbyname('AidInfoCaption').AsString;

    Fieldbyname('AidInfoNo2').DisplayLabel := ' شماره ' + qryInitQry.Fieldbyname
      ('AidInfo2NoCaption').AsString;

  end; // with for qryformlist
  pnlNote.Visible := (Cust2Filter and Cust1Filter);
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
  actRunSort.Visible := CheckUserlevel
    (qryInitQry.Fieldbyname('State10ChangeLevelID'), qryFormList, False);
  actCancellationFixes.Enabled :=
    CheckUserlevel(qryInitQry.Fieldbyname('State10ChangeLevelID'),
    qryFormList, False);

end;

procedure TRptCofferF.actFilterExecute(Sender: TObject);
var
  i: Integer;
  MnuPlaceIDs, CustomerKind3, CustomerKind4: string;
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
        AddItemFilter(GetFilter, TFilterPayTypes, False, '',
          'WHERE (Kind = ' + IntToStr(qryInitQry.Fieldbyname('FormPaySerial')
          .AsInteger) + ')and (Kind <>0) ');

      if TopicTypeb then
        AddItem(DMF.adcBSell, 'TopicTypes', 'موضوع دريافت/پرداخت', 'كد',
          ftInteger, dvMinMax, '', '', ciLookup,
          'SELECT   Code  ,  Name    FROM LookUps WHERE (Kind = ' +
          IntToStr(qryInitQry.Fieldbyname('FormTopicSerial').AsInteger) +
          ')and (Kind <>0) ', 'SELECT 0,2147483647');

      // AddItem(DMF.adcBSell, 'State', '', 'وضعيت', ftInteger, dvMinMax, '', '',
      // ciSimple, '', 'Select Min(FormState),max(FormState) from Forms');
      AddItemFilter(GetFilter, TFilterFormState);

      AddItem(DMF.adcBSell, 'Date', 'تاريخ ', 'تاريخ', ftDate, dvMinMax, '', '',
        ciSimple, '', 'Select  ''' + APPBank.StartYear +
        ''',max(FormDate) from Forms');

      AddItem(DMF.adcBSell, 'number', 'شماره', 'شماره', ftInteger, dvMinMax, '',
        '', ciSimple, '', 'Select 0,2147483647');
      if Cust1Filter then
      begin
        AddItem(DMF.adcBSell, 'CustomerID1', cust1Label, 'كد' + cust1Label,
          ftInteger, dvMinMax, '', '', ciLookup,
          'SELECT DISTINCT CustID,CustName FROM Vu_CustomersGroups ' +
          ' WHERE (GroupType IN (' + qryInitQry.Fieldbyname('CustomerKind1')
          .AsString + '))', 'SELECT 0,max(CustID) FROM Vu_CustomersGroups ' +
          ' WHERE (GroupType IN (' + qryInitQry.Fieldbyname('CustomerKind1')
          .AsString + '))');

        AddItemFilter(GetFilter, TFilterCustomerGrpID);

      end;

      if Cust2Filter then
        AddItem(DMF.adcBSell, 'CustomerID2', cust2Label, 'كد' + cust2Label,
          ftInteger, dvMinMax, '', '', ciLookup,
          'SELECT DISTINCT CustID,CustName FROM Vu_CustomersGroups ' +
          ' WHERE (GroupType IN (' + qryInitQry.Fieldbyname('CustomerKind2')
          .AsString + '))', 'SELECT 0,max(CustID) FROM Vu_CustomersGroups ' +
          ' WHERE (GroupType IN (' + qryInitQry.Fieldbyname('CustomerKind2')
          .AsString + '))');

      CustomerKind3 := qryInitQry.Fieldbyname('CustomerKind3').AsString;
      if CustomerKind3.IsEmpty then
        CustomerKind3 := '0';

      if Cust3Filter then
        AddItem(DMF.adcBSell, 'CustomerID3', cust3Label, 'كد' + cust3Label,
          ftInteger, dvMinMax, '', '', ciLookup,
          'SELECT DISTINCT CustID,CustName FROM Vu_CustomersGroups ' +
          ' WHERE (GroupType IN (' + CustomerKind3 + '))',
          'SELECT 0,max(CustID) FROM Vu_CustomersGroups ' +
          ' WHERE (GroupType IN (' + CustomerKind3 + '))');

      CustomerKind4 := qryInitQry.Fieldbyname('CustomerKind4').AsString;
      if CustomerKind4.IsEmpty then
        CustomerKind4 := '0';
      if Cust4Filter then
        AddItem(DMF.adcBSell, 'CustomerID4', cust4Label, 'كد' + cust4Label,
          ftInteger, dvMinMax, '', '', ciLookup,
          'SELECT DISTINCT CustID,CustName FROM Vu_CustomersGroups ' +
          ' WHERE (GroupType IN (' + CustomerKind4 + '))',
          'SELECT 0,max(CustID) FROM Vu_CustomersGroups ' +
          ' WHERE (GroupType IN (' + CustomerKind4 + '))');

      if FormType = 0 then
      begin
        i := mdiMainF.MainFrame.GetActiveIndex;

        case i of
          24:
            MnuPlaceIDs := EmptyStr;
        else
          MnuPlaceIDs := 'WHERE (SUBSTRING(MnuPlaceIDs, ' + IntToStr(i + 1) +
            ', 1) = 1)';
        end;

        AddItem(DMF.adcBSell, 'TypeChecked', 'انتخاب فرمها ', '', ftUnknown,
          dvDefaults, 'True', '', ciCheck,
          'SELECT Forms.FormType, FormTypes.FormCaption  ' +
          'FROM FormTypes INNER JOIN Forms ON FormTypes.FormType = Forms.FormType '
          + MnuPlaceIDs + 'GROUP BY Forms.FormType, FormTypes.FormCaption ' +
          'ORDER BY Forms.FormType');
      end;

      if ((Var_glb_NoFilter) Or (ShowModal = mrOk)) then
      begin
        GetFilterString;
        UpdateList;
      end; // if
    finally
      Free;
    end; // try
  end; // with
end;

procedure TRptCofferF.UpdateList;
var
  s: string;
begin
  lblLimit1.Caption := '';
  with qryFormList Do
  begin
    Active := False;
    // SQL.Text := OrginalSQL;
//    SQL.Text := UpperCase(SQL.Text);
//    SQL.Text := StringReplace(SQL.Text, 'ACCOUNTING',
//      DMF.ReadBankConfig('AccountDBName'), [rfReplaceAll]);

    SQL.Text :=
      ';WITH CustomerGroup AS ( SELECT CUSTOMERGRPID, CUSTOMERGRPNAME FROM CUSTOMERSGROUP)';
    SQL.Add('SELECT F.ID, CASE WHEN Eff.Amount > 0 THEN N''$'' ELSE '''' END + CASE WHEN F.DOCNO <> 0 THEN N''®'' ELSE '''' END + CASE WHEN F.FORMSTATE = 1 THEN N''?'' ELSE '''' END + CASE WHEN FP.FORMNUMBER IS NOT NULL THEN N''©'' ELSE '''' END AS FORMFLAG, F.FORMID, F.FORMNUMBER,');
    SQL.Add('F.FORMDATE, F.FORMTYPE, F.CUSTOMERID1, CASE WHEN C1.CUSTNAME LIKE N''%'' + ISNULL(C1.CUSTFIRSTNAME, '''') + ''%'' THEN C1.CUSTNAME ELSE ISNULL(C1.CUSTFIRSTNAME, '''') + '' '' + C1.CUSTNAME END AS CUSTNAME1, F.CUSTOMERID2,');
    SQL.Add('CASE F.CUSTOMERID2 WHEN 0 THEN F.CUSTOMERNAME2 ELSE CASE WHEN C2.CUSTNAME LIKE N''%'' + ISNULL(C2.CUSTFIRSTNAME, '''') + ''%'' THEN C2.CUSTNAME ELSE ISNULL(C2.CUSTFIRSTNAME, '''') + '' '' + C2.CUSTNAME END END AS CUSTNAME2,');
    SQL.Add('Eff.Amount AS AMOUNT, FSUM.CASHWAGE, FSUM.ITEMNOTE, F.FOMNOTE, F.FORMSTATE, FORMTYPES.FORMCAPTION, F.BUDGETCODE, F.PROJECTID, F.DOCNO, F.DOCDATE, F.FIRSTUSER, F.LASTUSER, F.AIDINFONO, F.AIDINFODATE,');
    SQL.Add('LOOKUPSPAYTYPES.NAME AS PAYTYPESNAME, LOOKUPSTOPICTYPES.NAME AS TOPICTYPESNAME, F.SELLSMETHOD, SELLSMETHODS.SELLSMETHODNAME, F.SELLSEMPORIUM, SELLSEMPORIUMS.SELLSEMPORIUMNAME, F.SERVERID, F.YEARID,');
    SQL.Add('FORMTYPES.DISPLAYFORMTYPE, F.TOPICCODE, F.DETAILCODE, F.CTOPICCODE, F.CTOPICCODE2, F.USERREGISTRATIONDOC, F.DEFAULTDATE, F.DEFAULTDURATION, F.CUSTOMERID3,');
    SQL.Add('CASE WHEN C3.CUSTNAME LIKE N''%'' + ISNULL(C3.CUSTFIRSTNAME, '''') + ''%'' THEN C3.CUSTNAME ELSE ISNULL(C3.CUSTFIRSTNAME, '''') + '' '' + C3.CUSTNAME END AS CUSTNAME3, F.CUSTOMERID4,');
    SQL.Add('CASE WHEN C4.CUSTNAME LIKE N''%'' + ISNULL(C4.CUSTFIRSTNAME, '''') + ''%'' THEN C4.CUSTNAME ELSE ISNULL(C4.CUSTFIRSTNAME, '''') + '' '' + C4.CUSTNAME END AS CUSTNAME4,');
    SQL.Add('CG1.CUSTOMERGRPID AS CUSTOMERGRPID1, CG1.CUSTOMERGRPNAME AS CUSTOMERGRPNAME1, F.MACHINENO, F.AIDINFONO2, CAST(Eff.Amount AS BIGINT) AS FAMOUNT, F.TRUCKNUMBER, FITFUL.DETAILCODE AS APPENDIX,');
    SQL.Add('F.RELATEDRECIPTS, F.MODIFYDATE, F.INSERTDATE');
    SQL.Add('FROM FORMS AS F');
    SQL.Add('INNER JOIN FORMTYPES ON FORMTYPES.FORMTYPE = F.FORMTYPE');
    SQL.Add('JOIN CUSTOMERS AS C1 ON C1.CUSTID = F.CUSTOMERID1');
    SQL.Add('JOIN CUSTOMERS AS C2 ON C2.CUSTID = F.CUSTOMERID2');
    SQL.Add('JOIN CUSTOMERS AS C3 ON C3.CUSTID = F.CUSTOMERID3');
    SQL.Add('JOIN CUSTOMERS AS C4 ON C4.CUSTID = F.CUSTOMERID4');
    SQL.Add('LEFT JOIN SELLSEMPORIUMS ON F.SELLSEMPORIUM = SELLSEMPORIUMS.SELLSEMPORIUM');
    SQL.Add('LEFT JOIN SELLSMETHODS ON F.SELLSMETHOD = SELLSMETHODS.SELLSMETHOD');
    SQL.Add('LEFT JOIN LOOKUPS AS LOOKUPSTOPICTYPES ON F.TOPICTYPES = LOOKUPSTOPICTYPES.LOOKUPID');
    SQL.Add('LEFT JOIN LOOKUPS AS LOOKUPSPAYTYPES ON F.PAYTYPES = LOOKUPSPAYTYPES.LOOKUPID');
    SQL.Add('LEFT OUTER JOIN FORMITEMSSUM AS FSUM ON F.SERVERID = FSUM.SERVERID AND F.YEARID = FSUM.YEARID AND F.FORMID = FSUM.FORMID');
    SQL.Add('CROSS APPLY (VALUES (ISNULL(FSUM.ITEMAMOUNT, F.AMOUNT))) AS Eff(Amount)');
    SQL.Add('JOIN CustomerGroup AS CG1 ON CG1.CUSTOMERGRPID = C1.CUSTOMERGRPID');
    SQL.Add('CROSS JOIN FITFUL');
    SQL.Add('LEFT JOIN FORMS AS FP ON F.SERVERID = FP.SERVERID AND F.YEARID = FP.YEARID AND F.FORMID = FP.PARENTFORMID');
    SQL.Add('WHERE F.FORMNUMBER BETWEEN :NumberFrom AND :NumberTo');
    SQL.Add('AND F.FORMDATE BETWEEN :DateFrom AND :DateTo');
    SQL.Add('AND F.FORMSTATE BETWEEN :StateFrom AND :StateTo');
    if SellsMethodActive then
    SQL.Add('AND F.SELLSMETHOD BETWEEN :SellsMethodFrom AND :SellsMethodTo');
    if SellsEmporiumActive then
    SQL.Add('AND F.SELLSEMPORIUM BETWEEN :SellsEmporiumFrom AND :SellsEmporiumTo');
    SQL.Add('AND F.YEARID BETWEEN :YearIDFrom AND :YearIDTo');
    SQL.Add('AND ISNULL(C2.CUSTOMERGRPID, 0) BETWEEN :CustomerGrpIDFrom AND :CustomerGrpIDTo');

    if FormType = 0 then
    begin
      s := GetcFrom(myParams.ParamValues['TypeChecked'], ftString);
      if s = EmptyStr then
        s := '0';
      s := ' AND F.FormType IN (' + s + ')';
      qryFormList.SQL.Add(s);
    end
    else
    begin
      qryFormList.SQL.Add('AND(F.FormType = :FormType)');
      Parameters.ParamByName('FormType').Value := FormType;
    end;

    if Cust1Filter then
      SQL.Add('And (F.CustomerID1 BETWEEN :CustId1From AND :CustId1To) ');
    if Cust2Filter then
      SQL.Add('AND((F.CustomerID2 BETWEEN :CustId2From AND :CustId2To)OR(F.CustomerID2 is null))');
    if Cust3Filter then
      SQL.Add('AND((F.CustomerID3 BETWEEN :CustId3From AND :CustId3To)OR(F.CustomerID3 is null))');

    if Cust4Filter then
      SQL.Add('AND((F.CustomerID4 BETWEEN :CustId4From AND :CustId4To)OR(F.CustomerID4 is null))');

    if PayTypes then
      SQL.Add('AND (LookUpsPayTypes.Code BETWEEN :PayTypesCodeFrom AND :PayTypesCodeTo )');
    if TopicTypeb then
      SQL.Add('AND (LookUpsTopicTypes.Code BETWEEN :TopicTypesCodeFrom AND :TopicTypesCodeTo )');

    SetChkUsersCustomersGroupsActive(qryFormList, 'F');

    If (qryInitQry.Fieldbyname('UserSecurityCheckActive').AsInteger
      in [2, 3]) Then
    begin
      SQL.Add(' AND dbo.ChkUser(C1.OperatorID,' + IntToStr(user.ID) + ')=1');
      SQL.Add(' AND dbo.ChkUser(C2.OperatorID,' + IntToStr(user.ID) + ')=1');
    end;
    /// SQL.Add('ORDER BY F.FORMNUMBER, F.FORMDATE');

    // OrginalSQL := qryFormList.SQL.Text;

    qryFormList.SQL.Add('ORDER BY FormNumber, FormDate');

    if Cust1Filter then
    begin
      Parameters.ParamByName('custid1from').Value :=
        GetcFrom(myParams.ParamValues['CustomerID1'], ftDate);
      Parameters.ParamByName('CustId1To').Value :=
        GetcTo(myParams.ParamValues['CustomerID1'], ftDate);
      lblLimit1.Caption := 'محدوده كــد ' + cust1Label + ' : ' + ' از ' +
        IntToStr(Parameters.ParamValues['custid1from']) + ' تا ' +
        IntToStr(Parameters.ParamValues['CustId1To']) + #10;

      Parameters.ParamByName('CustomerGrpIDFrom').Value :=
        GetcFrom(myParams.ParamValues['CustomerGrpID'], ftInteger);
      Parameters.ParamByName('CustomerGrpIDTo').Value :=
        GetcTo(myParams.ParamValues['CustomerGrpID'], ftInteger);

    end
    else
    begin
      SQL.Text := StringReplace(SQL.Text, UpperCase(':CustomerGrpIDFrom'), '0',
        [rfReplaceAll]);
      SQL.Text := StringReplace(SQL.Text, UpperCase(':CustomerGrpIDTo'),
        '999999999', [rfReplaceAll]);
    end;
    if Cust2Filter then
    begin
      Parameters.ParamByName('CustId2From').Value :=
        GetcFrom(myParams.ParamValues['CustomerID2'], ftDate);
      Parameters.ParamByName('CustId2To').Value :=
        GetcTo(myParams.ParamValues['CustomerID2'], ftDate);
      lblLimit1.Caption := lblLimit1.Caption + 'محدوده كــد ' + cust2Label +
        ' : ' + ' از ' + IntToStr(Parameters.ParamValues['CustId2From']) +
        ' تا ' + IntToStr(Parameters.ParamValues['CustId2To']);
    end; // if

    if Cust3Filter then
    begin
      Parameters.ParamByName('CustId3From').Value :=
        GetcFrom(myParams.ParamValues['CustomerID3'], ftDate);
      Parameters.ParamByName('CustId3To').Value :=
        GetcTo(myParams.ParamValues['CustomerID3'], ftDate);
      lblLimit1.Caption := lblLimit1.Caption + 'محدوده كــد ' + cust3Label +
        ' : ' + ' از ' + IntToStr(Parameters.ParamValues['CustId3From']) +
        ' تا ' + IntToStr(Parameters.ParamValues['CustId3To']);
    end; // if

    if Cust4Filter then
    begin
      Parameters.ParamByName('CustId4From').Value :=
        GetcFrom(myParams.ParamValues['CustomerID4'], ftDate);
      Parameters.ParamByName('CustId4To').Value :=
        GetcTo(myParams.ParamValues['CustomerID4'], ftDate);
      lblLimit1.Caption := lblLimit1.Caption + 'محدوده كــد ' + cust4Label +
        ' : ' + ' از ' + IntToStr(Parameters.ParamValues['CustId4From']) +
        ' تا ' + IntToStr(Parameters.ParamValues['CustId4To']);
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

    lblLimit2.Caption := 'محدوده شماره فرم : ' + ' از ' +
      IntToStr(Parameters.ParamValues['NumberFrom']) + ' تا ' +
      IntToStr(Parameters.ParamValues['NumberTo']) + #10 + 'محدوده تاريخ فرم : '
      + ' از ' + Parameters.ParamValues['DateFrom'] + ' تا ' +
      Parameters.ParamValues['DateTo'];
    Active := True;
  end; // with
end;

procedure TRptCofferF.FormCreate(Sender: TObject);
begin
  inherited;
  DBGrid1.FooterRowCount := 0;
  DBGrid1.SelectFooterIndex := 0;
  DBGrid1.SelectedSum := False;
  DBGrid1.SumList.Active := False;
  actDocNo.Visible := not opt.CheckMakeDoc4DelEdit;
  if (not actDocNo.Visible) then
    btnState.Left := btnDocNo.Left;
  InitForm;
end;

procedure TRptCofferF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('number') = nil then
    Close;
end;

procedure TRptCofferF.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TRptCofferF.actShowFormExecute(Sender: TObject);
begin
  inherited;
  ShowFormTypesForms(qryFormList, Self);
end;

procedure TRptCofferF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryFormList);
end;

procedure TRptCofferF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryFormList);
end;

procedure TRptCofferF.ppSysVarPageNumberGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TRptCofferF.ppLblPrintDateGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPrintDate
end;

procedure TRptCofferF.ppLblFormNameGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := Caption
end;

procedure TRptCofferF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TRptCofferF.actAllPrintExecute(Sender: TObject);
begin
  inherited;
  SeletedPrint(ppDBPipeline1, DBGrid1);
  PopPrint.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TRptCofferF.AllClickClick(Sender: TObject);
var
  ReportFileName: String;
begin
  inherited;
  ReportFileName := (Sender as TMenuItem).Name;
  if (ReportFileName = 'RptCoffer') then
  begin
    if (AidInfo) then
      ReportFileName := ReportFileName + 'AidInfo';
    if (BudgetCodePosition) then
      ReportFileName := ReportFileName + 'Budget';
  end
  else
    qryFormList.Sort := (Sender as TMenuItem).Hint;
  try
    qryFormList.DisableControls;
    InitReportFile(ppReport1, ReportFileName, True, False,
      qryInitQry.Fieldbyname('FormCaption').AsString);
  finally
    qryFormList.EnableControls;
  end; // try
end;

procedure TRptCofferF.BitBtn9Click(Sender: TObject);
begin
  inherited;
  PopMnuOther.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TRptCofferF.chkFooter4SumClick(Sender: TObject);
begin
  inherited;
  DBGrid1.SelectedSum := chkFooter4Sum.Checked;
  DBGrid1.SumList.Active := chkFooter4Sum.Checked;
  // DBGrid1.FieldColumns['FAmount'].Visible := chkFooter4Sum.Checked;
  if chkFooter4Sum.Checked then
  begin
    // DBGrid1.SetFooter4SumAdd(['Amount', 'FAmount']);
    DBGrid1.SetFooter4Sum([]);

    DBGrid1.FooterRowCount := 2;
    DBGrid1.SelectFooterIndex := 2;

    DBGrid1.SumList.Active := True;
    DBGrid1.SetFooter4Sum(['AidInfoNo', 'AidInfoNo2']);
  end
  else
  begin
    DBGrid1.FooterRowCount := 0;
    DBGrid1.SelectFooterIndex := 0;

  end;
  DBGrid1.SelectedSum := chkFooter4Sum.Checked;
  DBGrid1.SumList.Active := chkFooter4Sum.Checked;

end;

procedure TRptCofferF.ppLabel3GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := lblLimit1.Caption;
end;

procedure TRptCofferF.ppLblAidInfoNoGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := Text + '‏' + qryInitQry.Fieldbyname('AidInfoCaption').AsString;
end;

procedure TRptCofferF.actAppendixExecute(Sender: TObject);
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

procedure TRptCofferF.ProcCheckExistsFile;
var
  DoWhile: Boolean;
begin
  With qryFormList do
    try
      DoWhile := True;
      BtnReject.Cancel := False;
      Warn2('در حال بررسی پیوست ها', 0);
      First;
      AfterScroll := nil;
      DisableControls;
      while (not Eof and DoWhile) do
      begin
        Edit;
        qryFormList.Fieldbyname('Appendix').AsInteger :=
          IfThen(ViewFileOnServerDBF.CheckExistsFile(ADDKeyID(qryFormList) +
          qryFormListFormID.AsString,
          GetFormNameOf(qryFormListDisplayFormType.AsInteger,
          qryFormListFormType.AsInteger), True), 1, 0);
        post;
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
      AfterScroll := qryFormListAfterScroll;
      EnableControls;
      BtnReject.Cancel := True;
      First;
      Warn2('انجام شد.', 0);
    end;
end;

procedure TRptCofferF.actCancellationFixesExecute(Sender: TObject);
var
  s: string;
begin
  inherited;
  if (VarToStr(qryFormList.Parameters.ParamByName('StateFrom').Value) <> '10')
    or (VarToStr(qryFormList.Parameters.ParamByName('StateTo').Value) <> '10')
  then
  begin
    Warn('محدوده فرم را فقط براي وضعيت باطله تنظيم كنيد.');
    Exit;
  end;
  if DBGrid1.SelectedRows.Count > 0 then
    if get_response('آيا براي موقت نمودن فرم‌هاي انتخاب شده مطمئن هستيد؟') <> mrYes
    then
      Exit;
  s := GetSelectedRowsDBGrid(DBGrid1, 'FormID');
  If s = '' then
    Exit;
  with DMF.qryTMPTMP do
  begin
    Active := False;
    SQL.Text := 'UPDATE Forms SET FormState = 0 WHERE FormState in(10) AND ' +
      '(FormID IN (' + s + '))';
    SQL.Add(' AND  ServerID=' + qryFormList.Fieldbyname('ServerID').AsString);
    SQL.Add(' AND  YearID  =' + qryFormList.Fieldbyname('YearID').AsString);
    SQL.Add('AND ( DocNo < 1)');
    try
      BigMessage(IntToStr(ExecSQL) + ' فرم‌ موقت شد.', 2);
      Active := False;
      qryFormList.Requery;
    except
      Warn('اشكال در موقت كردن فرم‌');
    end; // try
  end; // with
end;

procedure TRptCofferF.actDeleteAllExecute(Sender: TObject);
var
  i: Integer;
  s: string;
begin
  inherited;
  WorkFlowBeforDelete(qryFormList);
  if not CheckUserlevel(qryInitQry.Fieldbyname('DeleteLevelID'), qryFormList)
  then
    Abort;
  if DBGrid1.SelectedRows.Count > 0 then
    if get_response('آيا براي به حذف كردن فرم‌هاي انتخاب شده مطمئن هستيد؟') <> mrYes
    then
      Exit;

  try
    qryFormList.AfterScroll := nil;
    s := GetSelectedRowsDBGrid(DBGrid1, 'FormID');
  finally
    qryFormList.EnableControls;
  end;
  If s = '' then
    Exit;
  with DMF.qryTMPTMP do
  begin
    Active := False;
    SQL.Text := 'DELETE FROM Forms';
    SQL.Add('WHERE (FormState = 0) AND (DocNo = 0)');
    SQL.Add('AND (FormID NOT IN (SELECT DISTINCT FormID FROM FormItems AS FormItems_1 WHERE (ServerID = Forms.ServerID)AND (YearID  = Forms.YearID) ))');
    SQL.Add(Format('AND (ServerID = %d)', [qryFormListServerID.AsInteger]));
    SQL.Add(Format('AND (YearID  = %d)', [qryFormListYearID.AsInteger]));
    SQL.Add('AND(FormID IN (' + s + '))');
    try
      BigMessage(IntToStr(ExecSQL) + ' فرم‌ حذف شد.', 2);
      Active := False;
      i := qryFormListFormID.AsInteger;
      qryFormList.Active := False;
      qryFormList.Open;
      qryFormList.Locate('FormID', i, [])
    except
      Warn('اشكال در  حذف كردن  فرم‌');
    end;
  end;
end;

procedure TRptCofferF.actDocNoExecute(Sender: TObject);
var
  s: string;
begin
  inherited;
  if DBGrid1.SelectedRows.Count > 0 then
    if get_response
      ('آيا براي پاكسازي سند حسابداري فرم‌هاي انتخاب شده مطمئن هستيد؟') <> mrYes
    then
      Exit;
  s := GetSelectedRowsDBGrid(DBGrid1, 'FormID');
  If s = '' then
    Exit;
  with DMF.qryTMPTMP do
  begin
    Active := False;
    SQL.Text := 'UPDATE Forms SET DocNo = 0,DocDate = '''' WHERE FormID IN ('
      + s + ')';
    SQL.Add(' AND  ServerID=' + qryFormList.Fieldbyname('ServerID').AsString);
    SQL.Add(' AND  YearID  =' + qryFormList.Fieldbyname('YearID').AsString);
    try
      BigMessage(IntToStr(ExecSQL) + ' فرم‌ پاكسازي شد.', 2);
      Active := False;
      qryFormList.Active := False;
      qryFormList.Open;
    except
      Warn('اشكال در پاكسازي كردن فرم‌');
    end; // try
  end; // with
end;

procedure TRptCofferF.actDocumentUpDateExecute(Sender: TObject);
begin
  inherited;
  DocumentUpDateF.Enter(qryFormList, fkForm);
end;

procedure TRptCofferF.actState1Execute(Sender: TObject);
var
  s: string;
begin
  inherited;
  if not CheckUserlevel(qryInitQry.Fieldbyname('ChangeStateLevelID'),
    qryFormList) then
    Abort;
  if DBGrid1.SelectedRows.Count > 0 then
    if get_response('آيا براي قطعي نمودن فرم‌هاي انتخاب شده مطمئن هستيد؟') <> mrYes
    then
      Exit;
  s := GetSelectedRowsDBGrid(DBGrid1, 'FormID');
  If s = '' then
    Exit;
  with DMF.qryTMPTMP do
  begin
    Active := False;
    SQL.Text := 'UPDATE Forms SET FormState = 1 WHERE (FormState = 0) AND ' +
      '(FormID IN (' + s + '))';
    SQL.Add(' AND  ServerID=' + qryFormList.Fieldbyname('ServerID').AsString);
    SQL.Add(' AND  YearID  =' + qryFormList.Fieldbyname('YearID').AsString);
    SQL.Add('AND ( DocNo < 1)');
    try
      BigMessage(IntToStr(ExecSQL) + ' فرم‌ قطعي شد.', 2);
      Active := False;
      qryFormList.Requery;
    except
      Warn('اشكال در قطعي كردن فرم‌');
    end; // try
  end; // with
end;

procedure TRptCofferF.actStateExecute(Sender: TObject);
begin
  inherited;
  PopMnuState.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TRptCofferF.qryFormListFormStateGetText(Sender: TField;
var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text := GetFormState(Sender.AsInteger)
end;

procedure TRptCofferF.actState10Execute(Sender: TObject);
var
  s: string;
begin
  inherited;
  if not CheckUserlevel(qryInitQry.Fieldbyname('ChangeStateLevelID'),
    qryFormList) then
    Abort;
  if DBGrid1.SelectedRows.Count > 0 then
    if get_response('آيا براي باطل نمودن فرم‌هاي انتخاب شده مطمئن هستيد؟') <> mrYes
    then
      Exit;
  s := GetSelectedRowsDBGrid(DBGrid1, 'FormID');
  If s = '' then
    Exit;
  with DMF.qryTMPTMP do
  begin
    Active := False;
    SQL.Text :=
      'UPDATE Forms SET FormState = 10  WHERE (FormState in (0,1)) AND ' +
      '(FormID IN (' + s + '))';
    SQL.Add(' AND  ServerID=' + qryFormList.Fieldbyname('ServerID').AsString);
    SQL.Add(' AND  YearID  =' + qryFormList.Fieldbyname('YearID').AsString);
    SQL.Add('AND ( DocNo < 1)');

    try
      BigMessage(IntToStr(ExecSQL) + ' فرم‌ باطل شد.', 2);
      Active := False;
      qryFormList.Requery;
    except
      Warn('اشكال در باطل كردن فرم‌');
    end; // try
  end; // with
end;

procedure TRptCofferF.actState0Execute(Sender: TObject);
var
  s: string;
begin
  inherited;
  if not CheckUserlevel(qryInitQry.Fieldbyname('ChangeStateLevelID'),
    qryFormList) then
    Abort;
  if DBGrid1.SelectedRows.Count > 0 then
    if get_response('آيا براي موقت نمودن فرم‌هاي انتخاب شده مطمئن هستيد؟') <> mrYes
    then
      Exit;
  s := GetSelectedRowsDBGrid(DBGrid1, 'FormID');
  If s = '' then
    Exit;
  with DMF.qryTMPTMP do
  begin
    Active := False;
    SQL.Text := 'UPDATE Forms SET FormState = 0  WHERE FormState in(1) AND ' +
      '(FormID IN (' + s + '))';
    SQL.Add(' AND  ServerID=' + qryFormList.Fieldbyname('ServerID').AsString);
    SQL.Add(' AND  YearID  =' + qryFormList.Fieldbyname('YearID').AsString);
    SQL.Add('AND ( DocNo < 1)');

    try
      BigMessage(IntToStr(ExecSQL) + ' فرم‌ موقت شد.', 2);
      Active := False;
      qryFormList.Requery;
    except
      Warn('اشكال در موقت كردن فرم‌');
    end; // try
  end; // with
end;

procedure TRptCofferF.ppLblLimit2GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := lblLimit2.Caption;
end;

procedure TRptCofferF.actvijehPrintExecute(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, FormType);
end;

procedure TRptCofferF.ppLblCustomerID1GetText(Sender: TObject;
var Text: String);
begin
  inherited;
  Text := ' كد ' + cust1Label;
end;

procedure TRptCofferF.ppLblCustName1GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := ' نام ' + cust1Label;
end;

procedure TRptCofferF.ppLblCustomerID2GetText(Sender: TObject;
var Text: String);
begin
  inherited;
  Text := ' كد ' + cust2Label;
end;

procedure TRptCofferF.ppLblCustName2GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := ' نام ' + cust2Label;
end;

procedure TRptCofferF.DBGrid1CellClick(Column: TColumnEh);
begin
  inherited;
  if (Column.FieldName = 'ModifyDate') or (Column.FieldName = 'InsertDate') then
  begin
    DBGrid1.Hint := miladi2Shamsi(Column.Field.AsDateTime);
    DMF.BalloonHint1.ShowHint
  end;

end;

procedure TRptCofferF.DBGrid1KeyDown(Sender: TObject; var Key: Word;
Shift: TShiftState);
begin
  inherited;
  if (HiWord(GetKeyState(VK_RIGHT)) <> 0) or (HiWord(GetKeyState(VK_LEFT)) <> 0)
  then
    DBGrid1.Options := DBGrid1.Options - [dgMultiSelect]
  else
    DBGrid1.Options := DBGrid1.Options + [dgMultiSelect];

end;

procedure TRptCofferF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryFormListFormNumber);
end;

procedure TRptCofferF.qryFormListAfterOpen(DataSet: TDataSet);
begin
  inherited;
  // DBGrid1.FieldColumns['FAmount'].Visible := chkFooter4Sum.Checked;
end;

procedure TRptCofferF.qryFormListAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if qryFormList.Fieldbyname('FormState').AsInteger = 10 then
    WriteText('باطله', 2, 60, False);
end;

procedure TRptCofferF.mnuRptCofferClick(Sender: TObject);
begin
  inherited;
  try
    qryFormList.DisableControls;
    InitReportFile(ppReport1, 'RptCoffer' + IntToStr(FormType), True);
  finally
    qryFormList.EnableControls;
  end; // try
end;

procedure TRptCofferF.actSelectAllExecute(Sender: TObject);
begin
  inherited;
  DBGridSelectAll(DBGrid1)
end;

procedure TRptCofferF.actMakeDocumentCheckFExecute(Sender: TObject);
begin
  inherited;
  var_tmp_str := GetSelectedRowsDBGrid(DBGrid1, 'ID');
  Var_glb_NoFilter := True;
  if qryFormList.Fieldbyname('DisplayFormType').AsInteger in [0, 7] then
  begin
    CreateMDIForm2(TMakeDocumentCofferF, MakeDocumentCofferF, Self);
    MakeDocumentCofferF.cmbGroups.ItemIndex :=
      MakeDocumentCofferF.cmbGroups.Items.IndexOfObject(TObject(FormType));
    MakeDocumentCofferF.cmbGroupsChange(nil);
    MakeDocumentCofferF.actFilter.Enabled := False;

  end
  else
  begin
    CreateMDIForm2(TMakeDocumentCheckF, MakeDocumentCheckF, Self);
    MakeDocumentCheckF.cmbGroups.ItemIndex :=
      MakeDocumentCheckF.cmbGroups.Items.IndexOfObject(TObject(FormType));
    MakeDocumentCheckF.cmbGroupsChange(nil);
    MakeDocumentCheckF.actFilter.Enabled := False;
  end;
end;

procedure TRptCofferF.actRunSortExecute(Sender: TObject);
var
  Jump: Integer;
  StrSort: String;
begin
  inherited;
  Jump := 1;
  StrSort := qryFormList.Sort;
  StrSort := StringReplace(StrSort, 'FormDate ASC', '', []);
  StrSort := StringReplace(StrSort, 'FormDate DESC', '', []);
  StrSort := 'FormDate ASC,' + StrSort;
  StrSort := StringReplace(StrSort, ', ,', ',', []);
  StrSort := StringReplace(StrSort, ',,', ',', []);
  StrSort := Trim(StrSort);
  if MidStr(StrSort, Length(StrSort), 1) = ',' then
    StrSort := LeftStr(StrSort, Length(StrSort) - 1);
  qryFormList.Sort := StrSort; // 'ReciptDate,ReciptNumber';
  // if get_response('آيا شماره فرم‏ها به ترتيب كنوني فرم مرتب شوند؟‏')<>mrYes then Exit;
  Jump := StrToInt(Trim(get_box('مرتب كردن شماره فرمها',
    'شروع مرتب سازي از عدد:', IntToStr(Jump))));
  if get_response('آيا براي تغيير شماره فرم ها از شماره  ' + IntToStr(Jump) +
    ' مطمئن هستيد؟') <> mrYes then
    Exit;
  Dec(Jump);
  With qryFormList do
  begin
    DisableControls;
    First;
    BigMessageProgBar('در حال مرتب كردن فرمها....‏', RecordCount);
    while not Eof do
    begin
      DMF.qryTMPTMP.Active := False;
      DMF.qryTMPTMP.SQL.Text := 'UPDATE Forms SET FormNumber=' +
        IntToStr(RecNo + Jump) + 'WHERE FormID in ( ' + Fieldbyname('FormID')
        .AsString + ')';
      DMF.qryTMPTMP.SQL.Add(' AND  ServerID=' + Fieldbyname('ServerID')
        .AsString);
      DMF.qryTMPTMP.SQL.Add(' AND  YearID  =' + Fieldbyname('YearID').AsString);
      DMF.qryTMPTMP.ExecSQL;
      GoProgressBar(Fieldbyname('FormNumber').AsString);
      Next;
    end; // while
    EnableControls;
    Active := False;
    Open;
    CloseMessage;
  end;
end;

procedure TRptCofferF.actTransmittalExecute(Sender: TObject);
var
  i: Integer;
  s: string;
begin
  inherited;
  if not CheckUserlevel(qryInitQry.Fieldbyname('TransmittalLevelID'),
    qryFormList) then
    Abort;
  if DBGrid1.SelectedRows.Count > 0 then
    if get_response
      ('آيا براي "تغيير وضعيت ارسال به وضعيت ويرايش" فرم‌هاي انتخاب شده مطمئن هستيد؟')
      <> mrYes then
      Exit;
  with DBGrid1.DataSource.DataSet do
    for i := 0 to DBGrid1.SelectedRows.Count - 1 do
    begin
      GotoBookmark((DBGrid1.SelectedRows.Items[i]));
      if s <> '' then
        s := s + ',';
      s := s + Fieldbyname('FormID').AsString;
    end;
  If s = '' then
    Exit;
  with DMF.qryTMPTMP do
  begin
    Active := False;
    SQL.Text := 'UPDATE Forms SET Transmittal = 1  WHERE (Transmittal = 3) AND '
      + '(FormID IN (' + s + '))';
    SQL.Add(' AND  ServerID=' + qryFormList.Fieldbyname('ServerID').AsString);
    SQL.Add(' AND  YearID  =' + qryFormList.Fieldbyname('YearID').AsString);
    try
      BigMessage(IntToStr(ExecSQL) + ' فرم‌ تغيير وضعيت ارسال شد.', 2);
      Active := False;
      i := qryFormList.Fieldbyname('FormID').AsInteger;
      qryFormList.Active := False;
      qryFormList.Open;
      qryFormList.Locate('FormID', i, [])
    except
      Warn('اشكال در تغيير وضعيت ارسال  فرم‌');
    end; // try
  end; // with
end;

procedure TRptCofferF.ppDBCalcnum2alphabetGetText(Sender: TObject;
var Text: String);
var
  c: currency;
begin
  inherited;
  if TryStrToCurr(Text, c) then
  begin
    c := RoundTo(c, 0);
    Text := num2alphabet(StrToInt64(CurrToStr(c)));
  end;
end;

end.
