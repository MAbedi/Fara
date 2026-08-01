// mahmood
unit MakeDocumentPay;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ComCtrls, ImgList, DBActns, ActnList, StdCtrls,
  ExtCtrls, Buttons, Mask, DB, ADODB, DBCtrls, zAPIBalloon,
  Menus, ToolWin, CheckDoc, CheckDocument, SalaryFunctions,
  System.ImageList, System.Actions, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  CedarDbGrid;

type
  TMakeDocumentPayF = class(Ttemplate2MDIF)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    MskDocNo: TMaskEdit;
    mskDocDate: TMaskEdit;
    PnlWarnings: TPanel;
    Panel5: TPanel;
    qryDocuments: TADOQuery;
    BitBtn1: TBitBtn;
    actMakeDoc: TAction;
    qryItems: TADOQuery;
    actShowDoc: TAction;
    BitBtn2: TBitBtn;
    Label4: TLabel;
    MskDocTopic: TMaskEdit;
    CmbDocType: TComboBox;
    Label5: TLabel;
    actFilter: TAction;
    srcItems: TDataSource;
    BitBtn3: TBitBtn;
    Panel8: TPanel;
    qryDocGroups: TADOQuery;
    BitBtn4: TBitBtn;
    actErrorList: TAction;
    lslWarnings: TListBox;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    actSendToExcel: TAction;
    actSort: TAction;
    actPrint: TAction;
    zbal: TzAPIBalloon;
    BitBtn8: TBitBtn;
    PopMnuForm: TPopupMenu;
    MenuItem1: TMenuItem;
    N5: TMenuItem;
    MenuItem4: TMenuItem;
    N9: TMenuItem;
    MenuItem2: TMenuItem;
    Exel1: TMenuItem;
    N3: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N4: TMenuItem;
    N6: TMenuItem;
    Label8: TLabel;
    cmbCompany: TComboBox;
    qryItemsAccTopicCode: TLargeintField;
    qryItemsAccDetailCode: TIntegerField;
    qryItemsAccCTopicCode: TIntegerField;
    qryItemsAccCTopicCode2: TIntegerField;
    qryItemsDebt: TFMTBCDField;
    qryItemsCredit: TFMTBCDField;
    qryItemsInfoName_L1: TStringField;
    qryItemsPersonelNO: TIntegerField;
    qryItemsPeronName: TStringField;
    qryItems_TopicName: TStringField;
    qryItems_DetailName: TStringField;
    qryItems_CTopicName_L2: TStringField;
    qryItems_CTopicName3: TStringField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    PnlDetail: TPanel;
    DBText5: TDBText;
    txt_TopiceName: TDBText;
    DBText7: TDBText;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    DBText8: TDBText;
    Label13: TLabel;
    SrcDetail: TDataSource;
    qryDetail: TADOQuery;
    PnlItems: TPanel;
    PnlSum: TPanel;
    StatusBar0: TStatusBar;
    StatusBar1: TStatusBar;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    Label3: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBText4: TDBText;
    Label9: TLabel;
    qryItemsAccCTopicCode3: TIntegerField;
    qryItems_CTopicName2: TStringField;
    DBText9: TDBText;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    Panel11: TPanel;
    LblNum: TLabel;
    LblStore: TLabel;
    PnlAccNew: TPanel;
    SBtnReciptNumber: TSpeedButton;
    MskSerial: TMaskEdit;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    DBText10: TDBText;
    actCheckDocument: TAction;
    Panel4: TPanel;
    StatusBar2: TStatusBar;
    StatusBar3: TStatusBar;
    actChangeDec: TAction;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    Panel6: TPanel;
    Label23: TLabel;
    MskAccTopicCodeBed: TMaskEdit;
    btnAccTopicCodeBed: TSpeedButton;
    Label17: TLabel;
    MskAccTopicCodeBes: TMaskEdit;
    btnAccTopicCodeBes: TSpeedButton;
    actSendWarnToExcel: TAction;
    btnSendWarnToExcel: TBitBtn;
    TabSheet6: TTabSheet;
    Panel7: TPanel;
    Label18: TLabel;
    SpeedButton1: TSpeedButton;
    Label19: TLabel;
    SpeedButton2: TSpeedButton;
    MskAccTopicCode2Bes: TMaskEdit;
    MskDetailCode: TMaskEdit;
    MaskEdit1: TMaskEdit;
    Label20: TLabel;
    actDetail: TAction;
    pm1: TPopupMenu;
    Excel1: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    qryItems_CompanyCode: TIntegerField;
    qryItems_Dec: TStringField;
    cmbYearID: TComboBox;
    CheckDoc1: TCheckDoc;
    qryItemsDec: TStringField;
    actTxt: TAction;
    BitBtn9: TBitBtn;
    cmbArchiveID: TComboBox;
    actArchiveID: TAction;
    mnuArchiveID: TMenuItem;
    tsRetard: TTabSheet;
    pnl1: TPanel;
    lbl1: TLabel;
    lbl2: TLabel;
    cmbCurentArchiveID: TComboBox;
    cmbOlderArchiveID: TComboBox;
    qryRetard: TADOQuery;
    qryRetardInfoName_L1: TStringField;
    qryRetardPersonelNO: TIntegerField;
    qryRetardPeronName: TStringField;
    qryRetardAccTopicCode: TLargeintField;
    qryRetardAccDetailCode: TIntegerField;
    qryRetardAccCTopicCode: TIntegerField;
    qryRetardAccCTopicCode2: TIntegerField;
    qryRetardAccCTopicCode3: TIntegerField;
    qryRetardDebt: TFMTBCDField;
    qryRetardCredit: TFMTBCDField;
    qryRetard_TopicName: TStringField;
    qryRetard_DetailName: TStringField;
    qryRetard_CTopicName: TStringField;
    qryRetard_CTopicName2: TStringField;
    qryRetard_CTopicName3: TStringField;
    qryRetard_CompanyCode: TIntegerField;
    qryRetard_Dec: TStringField;
    qryRetardDec: TStringField;
    srcRetard: TDataSource;
    qryItems_TopicName2: TStringField;
    qryItems_DetailName2: TStringField;
    popSend: TPopupMenu;
    XT1: TMenuItem;
    actXml: TAction;
    XML1: TMenuItem;
    Excel2: TMenuItem;
    qryUpDateDoc: TADOQuery;
    qryItems_CTopicName: TStringField;
    TabSheet7: TTabSheet;
    RadioGroup1: TRadioGroup;
    qryDetailFormType: TIntegerField;
    qryDetailFormCaption_L1: TStringField;
    qryDetailSalaryID: TIntegerField;
    qryDetailInfoName_L1: TStringField;
    qryDetailPersonelNO: TIntegerField;
    qryDetailPeronName: TStringField;
    qryDetailAccTopicCode: TLargeintField;
    qryDetailAccDetailCode: TIntegerField;
    qryDetailAccCTopicCode: TIntegerField;
    qryDetailAccCTopicCode2: TIntegerField;
    qryDetailAccCTopicCode3: TIntegerField;
    qryDetailDebt: TFMTBCDField;
    qryDetailCredit: TFMTBCDField;
    qryDetail_TopicName: TStringField;
    qryDetail_DetailName: TStringField;
    qryDetail_CTopicName: TStringField;
    qryDetail_CTopicName2: TStringField;
    qryDetail_CTopicName3: TStringField;
    qryDetailDec: TStringField;
    qryDetail_Dec: TStringField;
    qryDetail_CompanyCode: TIntegerField;
    qryDetail_TopicName2: TStringField;
    qryDetail_DetailName2: TStringField;
    actAccountf: TAction;
    qryLabel: TADOQuery;
    srcLabel: TDataSource;
    tsLabel: TTabSheet;
    Panel9: TPanel;
    Label21: TLabel;
    Label22: TLabel;
    cmbCurentLabel: TComboBox;
    cmbOlderLabel: TComboBox;
    qryLabelInfoName_L1: TStringField;
    qryLabelPersonelNO: TIntegerField;
    qryLabelPeronName: TStringField;
    qryLabelAccTopicCode: TLargeintField;
    qryLabelAccDetailCode: TIntegerField;
    qryLabelAccCTopicCode: TIntegerField;
    qryLabelAccCTopicCode2: TIntegerField;
    qryLabelAccCTopicCode3: TIntegerField;
    qryLabelDebt: TFMTBCDField;
    qryLabelCredit: TFMTBCDField;
    qryLabel_TopiceName: TStringField;
    qryLabel_DetailName: TStringField;
    qryLabel_CTopicName: TStringField;
    qryLabel_CTopicName2: TStringField;
    qryLabel_CTopicName3: TStringField;
    qryLabel_CompanyCode: TIntegerField;
    qryLabel_Dec: TStringField;
    qryLabelDec: TStringField;
    DBGrid1: TCedarDbgrid;
    DBGrid2: TCedarDbgrid;
    procedure FormCreate(Sender: TObject);
    procedure actMakeDocExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure actShowDocExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure qryItemsAfterOpen(DataSet: TDataSet);
    procedure cmbGroupsChange(Sender: TObject);
    procedure RdGKindDocClick(Sender: TObject);
    procedure actErrorListExecute(Sender: TObject);
    procedure lslWarningsClick(Sender: TObject);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure SBtnReciptNumberClick(Sender: TObject);
    procedure MskSerialExit(Sender: TObject);
    procedure actCheckDocumentExecute(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure qryDetailAfterOpen(DataSet: TDataSet);
    procedure actChangeDecExecute(Sender: TObject);
    procedure btnAccTopicCodeBedClick(Sender: TObject);
    procedure btnAccTopicCodeBesClick(Sender: TObject);
    procedure actSendWarnToExcelExecute(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure actDetailExecute(Sender: TObject);
    procedure btnSendWarnToExcelClick(Sender: TObject);
    procedure cmbYearIDChange(Sender: TObject);
    procedure actTxtExecute(Sender: TObject);
    procedure actArchiveIDExecute(Sender: TObject);
    procedure cmbArchiveIDChange(Sender: TObject);
    function Getqry: TADOQuery;
    procedure cmbCurentArchiveIDChange(Sender: TObject);
    procedure actXmlExecute(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure actAccountfExecute(Sender: TObject);
    procedure cmbCurentLabelChange(Sender: TObject);
  private
    MonthNo: Byte;
    NewDoc: Boolean;
    Rec_No: Integer;
    YearID_: Integer;
    CurrentDate,SourceDataBaseformName: string;
    function AddMaster: Integer;
    procedure AddDetail(DocID: Integer; qry: TADOQuery);
    procedure UpdateFilter;
    // function ErrorNullName: Integer;
    procedure UpDateDocNo;
  public
    { Public declarations }
  end;

var
  MakeDocumentPayF: TMakeDocumentPayF;

implementation

uses DM, shamsiDate, GlobalPro, filter_ADO, FilterClass_ADO, search2,
  sort2, Math, StrUtils, mmessage, searchCode_ADO, FaraConsts,
  DataSet2Text, AccFunctions, XmlMapper, Filter_ADO_Const, AccountP;

{$R *.dfm}

procedure TMakeDocumentPayF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItemFilter(GetFilter, TLabelID);
      AddItem(DMf.adcSalary, 'ProjectID', 'پروژه', 'كد', ftInteger, dvMinMax,
        '', '', ciLookup,
        'SELECT InfoID, InfoName_L1 FROM Pay.FormsInfo WHERE (FormType  in (39,40,41)) ',
        'SELECT  0,2147483647 ');

      AddItem(DMf.adcSalary, 'EmployTypeID', 'نوع حكم ', 'نوع', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT InfoID,InfoName_L1 FROM Pay.FormsInfo WHERE  (FormType = 14)',
        'SELECT MIN(InfoID), MAX(InfoID) FROM Pay.FormsInfo WHERE  (FormType = 14)');
      AddItem(DMf.adcSalary, 'PersonelState', 'وضعيت پرسنل ', 'كد', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT InfoID, InfoName_L1 FROM Pay.FormsInfo WHERE     (FormType = 3)',
        'SELECT Min(InfoID),Max(InfoID) FROM Pay.FormsInfo WHERE     (FormType = 3)');

      // AddItem(DMf.adcSalary, 'Office', ' واحد سازماني ', 'كد', ftInteger,
      // dvMinMax, '', '', ciLookup,
      // 'SELECT InfoID, InfoName_L1  FROM Pay.FormsInfo  WHERE (FormType = 12)',
      // 'SELECT   MIN(InfoID), MAX(InfoID) FROM Pay.FormsInfo GROUP BY FormType HAVING (FormType = 12)');
      AddItem(DMf.adcSalary, 'BimehType', 'نوع بيمه', 'كد', ftInteger,
        dvDefaults, 'true', '', ciCheck,
        'SELECT     InsuranceCONSTinfo.insuranceNo, InsuranceCONSTinfo.insurancename FROM Pay.InsuranceCONSTinfo INNER JOIN Pay.FormsInfo ON InsuranceCONSTinfo.FormInfoID = FormsInfo.FormInfoID WHERE     (InsuranceCONSTinfo.FormInfoID > 0)',
        // 'SELECT     Min(InsuranceCONSTinfo.insuranceNo),max(InsuranceCONSTinfo.insuranceNo) FROM Pay.InsuranceCONSTinfo INNER JOIN Pay.FormsInfo ON InsuranceCONSTinfo.FormInfoID = FormsInfo.FormInfoID WHERE     (InsuranceCONSTinfo.FormInfoID > 0)');
        '');

      AddItem(DMf.adcSalary, 'Office', ' واحد سازماني ', 'كد', ftInteger,
        dvDefaults, 'true', '', ciCheck,
        'SELECT FormInfoID,InfoName_L1 FROM Pay.FormsInfo WHERE(FormType = 12)',
        '');

      AddItem(DMf.adcSalary, 'Personal', ' پرسنل ', 'پرسنل', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT   PersonelNo, name_L1 + ''  '' + lastName_L1 AS PersonelName  FROM Pay.PersonelInfo',
        'SELECT  MIN(PersonelNo), MAX(PersonelNo)  FROM Pay.PersonelInfo ');
      if ShowModal = mrOk then
      begin
        GetFilterString;
        PageControl1Change(PageControl1);
        // UpdateFilter;
      end; // if
    finally
      Free;
    end; // try
  end; // with
end;

procedure TMakeDocumentPayF.actAccountfExecute(Sender: TObject);
begin
  inherited;
  AccountpF.Enter(Getqry);
end;

procedure TMakeDocumentPayF.FormCreate(Sender: TObject);

begin
  inherited;
  SourceDataBaseformName := 'FixedCalculated';
  if not optA.AccOldAvailable then
  begin
    InitComboYearID(cmbYearID);
    if cmbYearID.ItemIndex > -1 then
      YearID_ := Integer(cmbYearID.Items.Objects[cmbYearID.ItemIndex]);
    CheckDoc1.YearID := YearID_;
  end;
  PageControl1.Pages[1].TabVisible := False;
  SetLookUpCash(qryDetail);
  SetLookUpCash(qryItems);
  PageControl1.TabIndex := 0;
  PnlAccNew.Visible := not optA.AccOldAvailable;
  if optA.AccOldAvailable then
  begin
    Caption := Caption + ' (سامان) ';
    // qryDocuments.SQL.Text:='';
    qryDocuments.Connection := DMf.adcOldAccounting;
    qryDocGroups.Connection := DMf.adcOldAccounting;
    qryDocGroups.SQL.Text := 'SELECT * FROM DocGroups';
    qryDocuments.SQL.Text := 'SELECT * FROM Documents';
    qryItems.FieldByName('_CTopicName2').LookupDataSet :=
      DMf.qryAccCenterTopics;
    qryItems.FieldByName('_CTopicName2').KeyFields := 'AccCTopicCode';
    qryItems.FieldByName('_CTopicName2').LookupResultField := 'CTopicName_L1';
    qryItems.FieldByName('_CTopicName2').LookupKeyFields := 'CTopicCode';
    qryItems.FieldByName('_CTopicName3').LookupDataSet :=
      DMf.qryAccCenterTopics;
    qryItems.FieldByName('_CTopicName3').KeyFields := 'AccCTopicCode';
    qryItems.FieldByName('_CTopicName3').LookupResultField := 'CTopicName_L1';
    qryItems.FieldByName('_CTopicName3').LookupKeyFields := 'CTopicCode';
    qryDetail.FieldByName('_CTopicName2').LookupDataSet :=
      DMf.qryAccCenterTopics;
    qryDetail.FieldByName('_CTopicName2').KeyFields := 'AccCTopicCode';
    qryDetail.FieldByName('_CTopicName2').LookupResultField := 'CTopicName_L1';
    qryDetail.FieldByName('_CTopicName2').LookupKeyFields := 'CTopicCode';
    qryDetail.FieldByName('_CTopicName3').LookupDataSet :=
      DMf.qryAccCenterTopics;
    qryDetail.FieldByName('_CTopicName3').KeyFields := 'AccCTopicCode';
    qryDetail.FieldByName('_CTopicName3').LookupResultField := 'CTopicName_L1';
    qryDetail.FieldByName('_CTopicName3').LookupKeyFields := 'CTopicCode';

    setColumns2(DBGrid1, False, 'AccCTopicCode2');
    setColumns2(DBGrid1, False, 'AccCTopicCode3');
    setColumns2(DBGrid2, False, 'AccCTopicCode2');
    setColumns2(DBGrid2, False, 'AccCTopicCode3');
  end;
  MonthNo := var_glb_CurrentMonth;
  if MonthNo < 1 then
    MonthNo := 1;
  cmbOlderArchiveID.Clear;
  InitCmbArchiveID(cmbCurentArchiveID, MonthNo);
  InitCmbLabel(cmbCurentLabel, MonthNo);
  InitCmbLabel(cmbOlderLabel, MonthNo);
  initAccCombos(CmbDocType, cmbCompany);
  // cmbCompany.ItemIndex := 0;
  mskDocDate.Text := var_glb_CurrentDate;
  MskDocTopic.Text := ' سند هزينه حقوق ' + GetMounthName(MonthNo, '');
  StandardDays(MonthNo, CurrentDate);
  mskDocDate.Text := CurrentDate;
  NewDoc := True;
end;

procedure TMakeDocumentPayF.actMakeDocExecute(Sender: TObject);
var
  MakeDate: String;
  DocDate: string;
begin
  inherited;
  if CmbDocType.ItemIndex = -1 then
  begin
    Warn('نوع سند انتخاب نشده است');
    Exit;
  end;

  if not optA.AccOldAvailable then
  begin

    DocDate := mskDocDate.Text;
    if not CheckDoc1.ValidDate(DocDate) then
    Begin
      Warn('تاريخ سند صحيح نمي باشد.!‏', mtError);
      Exit;
    end;
    mskDocDate.Text := DocDate;

    if not CheckDoc1.GetUnConstBefore(mskDocDate.Text) then
    Begin
      Warn('اسناد در اين تاريخ دائم شده‏اند.!‏', mtError);
      Exit;
    end;
  end;

  if not checkSecondaryDocNo(StrToInt(trim(MskDocNo.Text)),
    Integer(cmbCompany.Items.Objects[cmbCompany.ItemIndex]), YearID_, NewDoc)
  then
    Exit;
  if qryDetail.Filtered or qryItems.Filtered then
    if get_response('اطلاعات فيلتر شده است آيا براي صدور سند مطمئن هستيد!!؟؟')
      <> mrYes then
      Exit;
  MakeDate := mskDocDate.Text;
  if not validate_date(False, '', '', 'تاريخ سند', MakeDate) then
    Exit;

  case PageControl1.Tag of
    1:
      AddDetail(AddMaster, qryDetail);
    6:
      AddDetail(AddMaster, qryRetard);
    8:
      AddDetail(AddMaster, qryLabel);
  else
    AddDetail(AddMaster, qryItems);
  end;
        DocTransationInsert(qryDocGroups);
  if optP.SituationTime = 3 then
    SetSituationAll(1, MonthNo, GetcFrom(myParams.ParamValues['Personal'],
      ftInteger), GetcTo(myParams.ParamValues['Personal'], ftInteger), nil);
  UpDateDocNo;
  FreeReservedCodesAcc(DMf.qryTopicCode.Connection, ExtIPSalary, '');
end;

function TMakeDocumentPayF.AddMaster;
begin
  MskSerialExit(MskSerial);
  with qryDocGroups do
  begin
    Active := True;
    if NewDoc then
    begin
      Insert;
      FieldByName('SecondaryDocNo').AsInteger := StrToInt(trim(MskDocNo.Text));
      if optA.AccOldAvailable then
      begin
        FieldByName('DocTopic').AsString := MskDocTopic.Text;
        Result := FieldByName('SecondaryDocNo').AsInteger;
      end
      else
      begin
        FieldByName('Serial').AsInteger := StrToInt(trim(MskSerial.Text));
        FieldByName('YearID').AsInteger := YearID_;
        FieldByName('DocTopic_L1').AsString := MskDocTopic.Text;
        FieldByName('MakeDate').AsDateTime := now;
        FieldByName('UserID').AsInteger := User.id;
        FieldByName('DocNote_L1').AsString := 'ثبت سند توسط سيستم  ' +
          Application.MainForm.Caption;
        if FindField('SourceDataBase') <> nil then
          FieldByName('SourceDataBase').AsString :=
            IfThen(optSub.Subsys[18] = '1', 'pay.', APPBank.Name + '.pay.') +
            SourceDataBaseformName;

        Result := FieldByName('Serial').AsInteger;
      end;
      FieldByName('PrimaryDocNo').AsInteger := 0;
      FieldByName('DocDate').AsString := mskDocDate.Text;
      FieldByName('DocTypeCode').AsInteger :=
        Integer(CmbDocType.Items.Objects[CmbDocType.ItemIndex]);
      if optA.AccOldAvailable then
        FieldByName('Status').AsInteger := 0
      else
        FieldByName('Status').AsInteger := 1;
      FieldByName('FirstUser').AsString := User.Name;
      FieldByName('CompanyCode').AsInteger :=
        Integer(cmbCompany.Items.Objects[cmbCompany.ItemIndex]);

      if FindField('SourceKey') <> nil then
        FieldByName('SourceKey').AsString := 'Serial = ' + FieldByName('Serial')
          .AsString.trim + ' and CompanyCode = ' + FieldByName('CompanyCode')
          .AsString.trim + ' and YearID = ' + YearID_.ToString.trim;

    end
    else
    begin
      Active := False;
      SQL.Text := 'SELECT * FROM Acc.DocGroups ';
      SQL.Add('WHERE (Serial = :Serial) AND (CompanyCode = :CompanyCode)');
      SQL.Add(' AND (YearID = :YearID)');
      Parameters.ParamByName('Serial').Value := StrToInt(trim(MskSerial.Text));
      Parameters.ParamByName('CompanyCode').Value :=
        Integer(cmbCompany.Items.Objects[cmbCompany.ItemIndex]);
      Parameters.ParamByName('YearID').Value := YearID_;
      Active := True;
      Result := StrToInt(trim(MskSerial.Text));
      // Locate('Serial', Result, []);
      edit;
      FieldByName('DocNote_L1').AsString := FieldByName('DocNote_L1').AsString +
        ' ثبت سند توسط سيستم حقوق دستمزد ';
    end; // if
    Post;
  end; // with  }
end;

procedure TMakeDocumentPayF.UpDateDocNo();
var
  i: Integer;
  sName, OfficeFrom, InsuranceIDs: string;
begin
  OfficeFrom := GetcFrom(myParams.ParamValues['Office'], ftString);
  InsuranceIDs := GetcFrom(myParams.ParamValues['BimehType'], ftString);

  case PageControl1.Tag of
    0, 1:
      with qryUpDateDoc do
      begin
        SQL.Text := 'UPDATE Pay.FixedCalculated';
        SQL.Add('SET DocNo = :DocNo ,DocDate = :DocDate');
        SQL.Add('FROM Pay.FixedCalculated INNER JOIN');
        SQL.Add('Pay.FormsInfo ON FixedCalculated.SalaryID = FormsInfo.FormInfoID INNER JOIN');
        SQL.Add('Pay.PersonelInfo ON FixedCalculated.PersonelNO = PersonelInfo.PersonelNo INNER JOIN');
        SQL.Add('Pay.FormsInfo AS FormsInfoPersonelState ON PersonelInfo.PersonelState = FormsInfoPersonelState.FormInfoID');
        SQL.Add('INNER JOIN');
        SQL.Add('Pay.Interdicts ON PersonelInfo.PersonelNo = Interdicts.PersonelNo LEFT OUTER JOIN');
        SQL.Add('Pay.FormsInfo AS FormsInfoEmployTypeID ON Pay.Interdicts.EmployTypeID = FormsInfoEmployTypeID.FormInfoID LEFT');
        SQL.Add('OUTER JOIN');
        SQL.Add('Pay.FormsInfo AS FormsInfo_Project ON Pay.Interdicts.ProjectID = FormsInfo_Project.FormInfoID');
        SQL.Add('WHERE (ISNULL(FixedCalculated.DocNo, 0) = 0)');
        SQL.Add('AND (FixedCalculated.ArchiveID in ( :LastArchiveID , :FirstArchiveID ) )');
        SQL.Add('AND (FixedCalculated.LabelID between :LabelIDFrom  and :LabelIDTo )');
        SQL.Add('AND (FixedCalculated.Mounth = :Month_)');
        SQL.Add('AND (FixedCalculated.PersonelNO BETWEEN :PersonalFrom AND :PersonalTo)');
        SQL.Add('AND ((Pay.ChkTick( ''' + OfficeFrom +
          ''' , FixedCalculated.OfficeCode) = 1)or(isnull(FixedCalculated.OfficeCode,0)=0))');

        SQL.Add('AND ((Pay.ChkTick( ''' + InsuranceIDs +
          ''' ,Interdicts.insuranceID)=1)or(isnull(Interdicts.insuranceID,0)=0))	');

        SQL.Add('AND (FormsInfoPersonelState.InfoID BETWEEN :PersonelStateFROM AND :PersonelStateTo )');
        SQL.Add('AND (FormsInfoEmployTypeID.InfoID BETWEEN :EmployTypeIDFROM AND :EmployTypeIDTo )');
        SQL.Add('AND ((Interdicts.subcompanyCode = :subcompanyCode)OR(Interdicts.subcompanyCode =0))');
        SQL.Add('AND (:YearMounth BETWEEN LEFT(Interdicts.InterdicStartDate,7) AND LEFT(Interdicts.InterdicEndDate,7))');
        SQL.Add('AND ( ( FormsInfo_Project.InfoID BETWEEN :ProjectIDFrom AND :ProjectIDTo) OR (Interdicts.ProjectID = 0) )');
        SQL.Add('');
    SQL.Add('AND  (Years = :Years ) AND  (YearID = :YearID )');
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Parameters.ParamByName('Years').Value := optP.Year;

        for i := 0 to qryDetail.Parameters.Count - 1 do
        begin
          sName := qryDetail.Parameters[i].Name;
          if Parameters.FindParam(sName) <> nil then
            Parameters.ParamByName(sName).Value := qryDetail.Parameters[i].Value
          else
          begin
            if (sName <> 'InsuranceIDs') and (sName <> 'OfficeFrom') then

              warn2(sName)
          end;
        end;
        Parameters.ParamByName('DocNo').Value := StrToInt(trim(MskDocNo.Text));
        Parameters.ParamByName('DocDate').Value := trim(mskDocDate.Text);
        BigMessage(IntToStr(ExecSQL) + ' شماره سند ثبت شد.‏', 1);
        Getqry.Requery();
      end;
    2, 3:
      with qryUpDateDoc do
      begin
        SQL.Text := 'UPDATE Pay.PersonelDecExt';
        if PageControl1.Tag = 2 then
          SQL.Add('SET DocNoBonus = :DocNo ,DocDateBonus = :DocDate')
        else
          SQL.Add('SET DocNoAnnuity = :DocNo ,DocDateAnnuity = :DocDate');
        SQL.Add('FROM Pay.PersonelDecExt INNER JOIN');
        SQL.Add('Pay.FormsInfo ON PersonelDecExt.FormInfoID = FormsInfo.FormInfoID INNER JOIN');
        SQL.Add('Pay.PersonelInfo ON PersonelDecExt.PersonelNO = PersonelInfo.PersonelNo INNER JOIN');
        SQL.Add('Pay.FormsInfo AS FormsInfoPersonelState ON PersonelInfo.PersonelState = FormsInfoPersonelState.FormInfoID');
        SQL.Add('INNER JOIN');
        SQL.Add('Pay.Interdicts ON PersonelInfo.PersonelNo = Interdicts.PersonelNo LEFT OUTER JOIN');
        SQL.Add('Pay.FormsInfo AS FormsInfoEmployTypeID ON Pay.Interdicts.EmployTypeID = FormsInfoEmployTypeID.FormInfoID LEFT');
        SQL.Add('OUTER JOIN');
        SQL.Add('Pay.FormsInfo AS FormsInfo_Project ON Pay.Interdicts.ProjectID = FormsInfo_Project.FormInfoID');
        SQL.Add('WHERE (FormsInfo.FormType = 59)');
        SQL.Add('AND (CAST(SUBSTRING(PersonelDecExt.EndDate, 6, 2) AS int) = :Month_)');

        if PageControl1.Tag = 2 then
          SQL.Add('AND (ISNULL(PersonelDecExt.DocNoBonus, 0) = 0)')
        else
          SQL.Add('AND (ISNULL(PersonelDecExt.DocNoAnnuity, 0) = 0)');

        SQL.Add('AND (PersonelDecExt.FirstMounth = 13) AND (PersonelDecExt.EndMounth = 13)');
        SQL.Add('AND (PersonelDecExt.PersonelNO BETWEEN :PersonalFrom AND :PersonalTo)');
        SQL.Add('AND ((Pay.ChkTick( ''' + OfficeFrom +
          ''' , PersonelDecExt.OfficeCode) = 1)or(isnull(PersonelDecExt.OfficeCode,0)=0))');

        SQL.Add('AND ((Pay.ChkTick( ''' + InsuranceIDs +
          ''' ,Interdicts.insuranceID)=1)or(isnull(Interdicts.insuranceID,0)=0))	');

        SQL.Add('AND (FormsInfoPersonelState.InfoID BETWEEN :PersonelStateFROM AND :PersonelStateTo )');
        SQL.Add('AND (FormsInfoEmployTypeID.InfoID BETWEEN :EmployTypeIDFROM AND :EmployTypeIDTo )');
        SQL.Add('AND ((Interdicts.subcompanyCode = :subcompanyCode)OR(Interdicts.subcompanyCode =0))');
        // SQL.Add('AND (:YearMounth BETWEEN LEFT(Interdicts.InterdicStartDate,7) AND LEFT(Interdicts.InterdicEndDate,7))');
        SQL.Add('AND ( ( FormsInfo_Project.InfoID BETWEEN :ProjectIDFrom AND :ProjectIDTo) OR (Interdicts.ProjectID = 0) )');
        SQL.Add('');

        for i := 0 to qryDetail.Parameters.Count - 1 do
        begin
          sName := qryDetail.Parameters[i].Name;
          if Parameters.FindParam(sName) <> nil then
            Parameters.ParamByName(sName).Value := qryDetail.Parameters
              [i].Value;
        end;
        Parameters.ParamByName('DocNo').Value := StrToInt(trim(MskDocNo.Text));
        Parameters.ParamByName('DocDate').Value := trim(mskDocDate.Text);
        BigMessage(IntToStr(ExecSQL) + ' شماره سند ثبت شد.‏', 1);
        Getqry.Requery();
      end;
    // سنوات چی پس
    6:
      with qryUpDateDoc do
      begin
        // qryRetard);
      end
  else
    with qryUpDateDoc do
    begin
      // qryItems);
    end;
  end;

end;

procedure TMakeDocumentPayF.BitBtn8Click(Sender: TObject);
begin
  inherited;
  popSend.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y)
end;

procedure TMakeDocumentPayF.AddDetail(DocID: Integer; qry: TADOQuery);
begin
  with qry do
  begin
    DisableControls;
    First;
    qryDocuments.Active := True;
    while not eof do
    begin
      qryDocuments.Insert;
      if optA.AccOldAvailable then
      begin
        qryDocuments.FieldByName('SecondaryDocNo').AsInteger := DocID;
        // qryDocuments.FieldByName('YearID').AsInteger := YearID;
        qryDocuments.FieldByName('desc').AsString :=
          FieldByName('_Dec').AsString;
        qryDocuments.FieldByName('bed').AsCurrency := FieldByName('Debt')
          .AsCurrency;
        qryDocuments.FieldByName('bes').AsCurrency := FieldByName('Credit')
          .AsCurrency;
        qryDocuments.FieldByName('DoPrint').AsBoolean := True;
      end
      else
      begin
        qryDocuments.FieldByName('Serial').AsInteger := DocID;
        qryDocuments.FieldByName('YearID').AsInteger := YearID_;
        qryDocuments.FieldByName('CTopicCode2').AsInteger :=
          FieldByName('AccCTopicCode2').AsInteger;
        qryDocuments.FieldByName('CTopicCode3').AsInteger :=
          FieldByName('AccCTopicCode3').AsInteger;
        qryDocuments.FieldByName('Comment_L1').AsString :=
          FieldByName('_Dec').AsString;
        qryDocuments.FieldByName('Debt').AsCurrency := FieldByName('Debt')
          .AsCurrency;
        qryDocuments.FieldByName('Credit').AsCurrency := FieldByName('Credit')
          .AsCurrency;
        qryDocuments.FieldByName('CompanyCode').AsInteger :=
          Integer(cmbCompany.Items.Objects[cmbCompany.ItemIndex]);

        // qryDocuments.FieldByName('AidDocNo').AsInteger:=fieldbyname('ReciptID').AsInteger;
      end;
      qryDocuments.FieldByName('TopicCode').AsInteger :=
        FieldByName('AccTopicCode').AsInteger;
      qryDocuments.FieldByName('DetailCode').AsInteger :=
        FieldByName('AccDetailCode').AsInteger;
      qryDocuments.FieldByName('CTopicCode').AsInteger :=
        FieldByName('AccCTopicCode').AsInteger;
      qryDocuments.FieldByName('Row').AsInteger := RecNo + Rec_No;
      qryDocuments.Post;
      Next;
    end; // while
    qryDocuments.Active := False;
    EnableControls;
  end; // with  }
  BigMessage('سند با شماره ' + MskDocNo.Text + ' ثبت شد.‏', 2);
end;

procedure TMakeDocumentPayF.FormShow(Sender: TObject);
begin
  inherited;
  MskAccTopicCode2Bes.Text := ReadConfig(APPID,
    Self.Name + MskAccTopicCode2Bes.Name, MskAccTopicCode2Bes.Text);

  MskDetailCode.Text := ReadConfig(APPID, Self.Name + MskDetailCode.Name,
    MskDetailCode.Text);

  ToolBar1.Buttons[MonthNo - 1].Down := True;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('Office') = nil then
    Close;
  cmbCompany.Visible := (gv_MultiCompany);
  Label8.Visible := cmbCompany.Visible;
  // CmbDocType.ItemIndex := 7;
  // if opt.AccOldAvailable then
  // CmbDocType.ItemIndex := 3;
  // cmbCompany.ItemIndex:=0;
end;

function TMakeDocumentPayF.Getqry: TADOQuery;
begin
  case PageControl1.Tag of
    1:
      Result := qryDetail;
    6:
      Result := qryRetard;
    8:
      Result := qryLabel;
  else
    Result := qryItems;
  end;

end;

procedure TMakeDocumentPayF.actShowDocExecute(Sender: TObject);
var
  ErrorCount: Integer;
begin
  inherited;
  PnlWarnings.Visible := False;
  ErrorCount := 0; // ErrorNullName;
  if ErrorCount > 0 then
  begin
    zbal.Title := IntToStr(ErrorCount) + 'خطا وجود دارد';
    zbal.Prompt.Text := 'جهت رويت از ليست خطاها استفاده كنيد.';
    zbal.Show(BitBtn4);
    FlashAControl(BitBtn4);
  end;
end;

procedure TMakeDocumentPayF.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeReservedCodesAcc(DMf.qryTopicCode.Connection, ExtIPSalary, '');
  SaveConfig(APPID, Self.Name + MskAccTopicCode2Bes.Name,
    MskAccTopicCode2Bes.Text);
  SaveConfig(APPID, Self.Name + MskDetailCode.Name, MskDetailCode.Text);
end;

procedure TMakeDocumentPayF.qryItemsAfterOpen(DataSet: TDataSet);
var
  credit, debt, c: Currency;
  qry: TADOQuery;
begin
  inherited;
  qry := Getqry;
  credit := CalcSumFileds(qry.FieldByName('credit'));
  StatusBar0.Panels[0].Text := CurrToStrF(credit, ffCurrency, 0);
  debt := CalcSumFileds(qry.FieldByName('debt'));
  StatusBar0.Panels[1].Text := CurrToStrF(debt, ffCurrency, 0);
  c := debt - credit;
  StatusBar1.Panels[0].Text := CurrToStrF(c, ffCurrency, 0);
  actMakeDoc.Visible := (debt <> 0) and (credit <> 0) and (debt - credit = 0);
  DecSet(qry);
end;

procedure TMakeDocumentPayF.qryDetailAfterOpen(DataSet: TDataSet);
var
  credit, debt, c: Currency;
  qry: TADOQuery;
begin
  inherited;
  qry := Getqry;
  credit := CalcSumFileds(qry.FieldByName('credit'));
  StatusBar2.Panels[0].Text := CurrToStrF(credit, ffCurrency, 0);
  debt := CalcSumFileds(qry.FieldByName('debt'));
  StatusBar2.Panels[1].Text := CurrToStrF(debt, ffCurrency, 0);
  c := debt - credit;
  StatusBar3.Panels[0].Text := CurrToStrF(c, ffCurrency, 0);
  actMakeDoc.Visible := (debt <> 0) and (credit <> 0) and (debt - credit = 0);
  DecSet(qry);
end;

procedure TMakeDocumentPayF.cmbArchiveIDChange(Sender: TObject);
begin
  inherited;
  UpdateFilter
end;

procedure TMakeDocumentPayF.cmbCurentArchiveIDChange(Sender: TObject);
var
  i, ArchiveID, id: Integer;
begin
  inherited;
  cmbOlderArchiveID.Items.Clear;
  ArchiveID := Integer(cmbCurentArchiveID.Items.Objects
    [cmbCurentArchiveID.ItemIndex]);
  if ArchiveID <> 0 then
  begin
    for i := 0 to cmbCurentArchiveID.Items.Count - 1 do
    begin
      id := Integer(cmbCurentArchiveID.Items.Objects[i]);
      if (id < ArchiveID) and (id > 0) then
        cmbOlderArchiveID.Items.AddObject(cmbCurentArchiveID.Items[i],
          TObject(cmbCurentArchiveID.Items.Objects[i]));
    end;
  end
  else
  begin
    cmbOlderArchiveID.Items := cmbCurentArchiveID.Items;
    cmbOlderArchiveID.Items.Delete(0);
  end;
  if cmbOlderArchiveID.Items.Count > 0 then
  begin
    cmbOlderArchiveID.ItemIndex := 0;
    UpdateFilter
  end;

end;

procedure TMakeDocumentPayF.cmbCurentLabelChange(Sender: TObject);
// var
// i, LabelID, id: Integer;
begin
  inherited;
  // cmbOlderLabel.Items.Clear;
  // LabelID := Integer(cmbCurentLabel.Items.Objects
  // [cmbCurentLabel.ItemIndex]);
  // if LabelID <> 0 then
  // begin
  // for i := 0 to cmbCurentLabel.Items.Count - 1 do
  // begin
  // id := Integer(cmbCurentLabel.Items.Objects[i]);
  // if (id < LabelID) and (id > 0) then
  // cmbOlderLabel.Items.AddObject(cmbCurentLabel.Items[i],
  // TObject(cmbCurentLabel.Items.Objects[i]));
  // end;
  // end
  // else
  // begin
  // cmbOlderLabel.Items := cmbCurentLabel.Items;
  // cmbOlderLabel.Items.Delete(0);
  // end;
  // if cmbOlderLabel.Items.Count > 0 then
  // begin
  // cmbOlderLabel.ItemIndex := 0;
  UpdateFilter
  // end;

end;

procedure TMakeDocumentPayF.cmbGroupsChange(Sender: TObject);
begin
  inherited;
  UpdateFilter;
  actShowDoc.Execute;

end;

procedure TMakeDocumentPayF.cmbYearIDChange(Sender: TObject);
begin
  inherited;
  UpdateFilter;
end;

procedure TMakeDocumentPayF.RadioGroup1Click(Sender: TObject);
begin
  inherited;
  UpdateFilter;
end;

procedure TMakeDocumentPayF.RdGKindDocClick(Sender: TObject);
begin
  inherited;
  actShowDoc.Execute
end;

// function TMakeDocumentPayF.ErrorNullName: Integer;
// begin
// Result := 0;
// if not qryItems.Active then
// Exit;
// with qryItems do
// begin
// DisableControls;
// First;
// while not eof do
// begin
// if (FieldByName('AccTopicCode').Value <> 0) and
// (FieldByName('_TopicName').IsNull) then
// begin
// Result := Result + 1;
// Next;
// end;
// if (FieldByName('AccDetailCode').Value <> 0) and
// (FieldByName('_DetailName').IsNull) then
// begin
// Result := Result + 1;
// Next;
// end;
// if (FieldByName('AccCTopicCode').Value <> 0) and
// (FieldByName('_CTopicName').IsNull) then
// begin
// Result := Result + 1;
// Next;
// end;
// if (FieldByName('AccCTopicCode2').Value <> 0) and
// (FieldByName('_CTopicName2').IsNull) then
// begin
// Result := Result + 1;
// Next;
// end;
// if (FieldByName('AccCTopicCode3').Value <> 0) and
// (FieldByName('_CTopicName3').IsNull) then
// begin
// Result := Result + 1;
// Next;
// end;
// Next;
// end; // while
// EnableControls;
// end; // with
//
// end;

procedure TMakeDocumentPayF.actErrorListExecute(Sender: TObject);
var
  s: String;
  qry: TADOQuery;
begin
  inherited;
  qry := Getqry;
  if PnlWarnings.Visible = True then
    PnlWarnings.Visible := False
  else
  begin
    PnlWarnings.Visible := True;
    lslWarnings.Clear;
    with qry do
    begin
      DisableControls;
      First;
      try
        while not eof do
        begin
          s := IfThen((FieldByName('_TopicName').AsString = '') and
            (FieldByName('AccTopicCode').AsString <> '0'),
            FieldByName('AccTopicCode').AsString);
          s := s + IfThen((FieldByName('_DetailName').AsString = '') and
            (FieldByName('AccDetailCode').AsString <> '0'),
            '-' + FieldByName('AccDetailCode').AsString);
          s := s + IfThen((FieldByName('_CTopicName').AsString = '') and
            (FieldByName('AccCTopicCode').AsString <> '0'),
            '-' + FieldByName('AccCTopicCode').AsString);
          s := s + IfThen((FieldByName('_CTopicName2').AsString = '') and
            (FieldByName('AccCTopicCode2').AsString <> '0'),
            '-' + FieldByName('AccCTopicCode2').AsString);
          s := s + IfThen((FieldByName('_CTopicName3').AsString = '') and
            (FieldByName('AccCTopicCode3').AsString <> '0'),
            '-' + FieldByName('AccCTopicCode3').AsString);
          if s <> '' then
            lslWarnings.Items.AddObject(Format('[رديف %d]: [خطا كد %s]',
              [RecNo, s]), TObject(qryItems.RecNo));
          Next;
        end; // while
      finally
        First;
        EnableControls;
      end; // try
    end // with
  END; // ELSE
end;

procedure TMakeDocumentPayF.lslWarningsClick(Sender: TObject);
var
  i: Integer;
  qry: TADOQuery;
begin
  inherited;
  i := (Sender as TListBox).ItemIndex;
  if i = -1 then
    Exit;
  qry := Getqry;
  qry.First;
  qry.MoveBy(Integer((Sender as TListBox).Items.Objects[i]) - 1);
  lslWarnings.Hint := lslWarnings.Items[i];
end;

procedure TMakeDocumentPayF.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  dataToExcel(Getqry);
end;

procedure TMakeDocumentPayF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(Getqry);
end;

procedure TMakeDocumentPayF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(Getqry);
end;

procedure TMakeDocumentPayF.actTxtExecute(Sender: TObject);
begin
  inherited;
  DataSet2TextF.show4Text(Getqry, 0);
end;

procedure TMakeDocumentPayF.actXmlExecute(Sender: TObject);
begin
  inherited;
  XmlMapperF.ShowForm(Getqry, MskDocNo.Text, mskDocDate.Text, MskSerial.Text,
    MskDocTopic.Text)
end;

procedure TMakeDocumentPayF.ToolButton1Click(Sender: TObject);
begin
  inherited;
  MonthNo := (Sender as TToolButton).tag;    GetYearMounth(MonthNo);
  StandardDays(MonthNo, CurrentDate);
  mskDocDate.Text := CurrentDate;
  MskDocTopic.Text := ' سند هزينه حقوق ' + GetMounthName(MonthNo, '');
  cmbOlderArchiveID.Clear;
  InitCmbArchiveID(cmbCurentArchiveID, MonthNo);
  if cmbArchiveID.Visible then
    InitCmbArchiveID(cmbArchiveID, MonthNo);

  InitCmbLabel(cmbCurentLabel, MonthNo);
  InitCmbLabel(cmbOlderLabel, MonthNo);
  PageControl1Change(PageControl1)
  // Updatefilter;
end;

procedure TMakeDocumentPayF.SBtnReciptNumberClick(Sender: TObject);
var
  Txt: String;
  b: Boolean;
  Results: array [0 .. 3] of String;
begin
  inherited;
  Txt := 'SELECT Acc.DocGroups.Serial, Acc.DocGroups.SecondaryDocNo, Acc.DocGroups.DocDate,'
    + ' COUNT(Acc.Documents.Serial) AS RecNo' +
    ' FROM Acc.DocGroups LEFT OUTER JOIN' + ' Acc.Documents ON  ' +
    ' Acc.DocGroups.Serial = Acc.Documents.Serial ' +
    ' AND Acc.DocGroups.CompanyCode = Acc.Documents.CompanyCode ' +
    ' AND  Acc.DocGroups.YearID = Acc.Documents.YearID ' +
    ' WHERE (Acc.DocGroups.Status IN (0, 1)) AND (Acc.DocGroups.PrimaryDocNo = 0)'
    + ' AND (Acc.DocGroups.YearID = %d ) ' +

    IfThen(optA.SendDoc2OtherSystems, '',
    'AND (Acc.DocGroups.SourceDataBase = %s )') +
    ' GROUP BY Acc.DocGroups.Serial, Acc.DocGroups.SecondaryDocNo, Acc.DocGroups.DocDate';

  If optA.SendDoc2OtherSystems Then
    Txt := Format(Txt, [APPBank.Year])
  else
    Txt := Format(Txt, [APPBank.Year, QuotedStr(APPBank.Name + '.pay.' +
      SourceDataBaseformName)]);

  b := searchCode_ADOF.SearchCode2(DMf.adcAccounting, ' ليست اسناد موجود  ',
    Txt, ['سريال سند', 'شماره سند', 'تاريخ سند', 'رديف'], Results,
    [80, 80, 80, 80], alLeft);
  if b then
  begin
    MskSerial.Text := Results[0];
    MskDocNo.Text := Results[1];
    mskDocDate.Text := Results[2];
    Rec_No := StrToInt(Results[3]);
    NewDoc := False;
  end;
end;

procedure TMakeDocumentPayF.MskSerialExit(Sender: TObject);
begin
  inherited;
  if optA.AccOldAvailable then
    Exit;
  with DMf.qryAccOldAndNew do
  begin
    Active := False;
    SQL.Text :=
      'select count(serial) as countserial from Acc.docgroups where serial= ' +
      trim(MskSerial.Text);
    SQL.Add('AND CompanyCode = ' +
      IntToStr(Integer(cmbCompany.Items.Objects[cmbCompany.ItemIndex])) +
      ' AND  YearID = ' + IntToStr(YearID_));
    Active := True;
    NewDoc := FieldByName('countserial').AsInteger = 0;
    MskSerial.ReadOnly := not NewDoc;
    MskDocNo.ReadOnly := MskSerial.ReadOnly;
    mskDocDate.ReadOnly := MskSerial.ReadOnly;
    Active := False;
    if not MskSerial.ReadOnly then
      Exit;
    SQL.Text :=
      'select Serial,SecondaryDocNo,DocDate from Acc.docgroups where serial= ' +
      trim(MskSerial.Text);
    SQL.Add('AND CompanyCode=' +
      IntToStr(Integer(cmbCompany.Items.Objects[cmbCompany.ItemIndex])) +
      ' AND  YearID = ' + IntToStr(YearID_));
    Active := True;
    MskSerial.Text := FieldByName('Serial').AsString;
    MskDocNo.Text := FieldByName('SecondaryDocNo').AsString;
    mskDocDate.Text := FieldByName('DocDate').AsString;
    Active := False;
  end; // with
end;

procedure TMakeDocumentPayF.actCheckDocumentExecute(Sender: TObject);
begin
  inherited;
  CheckDoc1.QuerySource := Getqry;
  PnlUnderButton.Enabled := False;
  if optA.AccOldAvailable then
    if ValidateOldDocument(Getqry, lslWarnings) then
    begin
      warn2('سند مورد تأييد است.');
      actMakeDoc.Enabled := True;
    end
    else
    begin
      Warn('سند نامعتبر است.');
      actMakeDoc.Enabled := True;
    end
  else if CheckDocument.ValidateDocument(mskDocDate.Text, YearID_, Getqry, nil,
    DMf.adcAccounting, lslWarnings, False) then
  begin
    warn2('سند مورد تأييد است.');
    actMakeDoc.Enabled := True;
  end
  else
  begin
    Warn('سند نامعتبر است.');
    actMakeDoc.Enabled := False;
  end; // else
  lslWarnings.Visible := not actMakeDoc.Enabled;

  PnlWarnings.Visible := (lslWarnings.Visible); // (RdGKindDoc.Visible) or
  PnlUnderButton.Enabled := True;

end;

procedure TMakeDocumentPayF.PageControl1Change(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  PageControl1.Tag := PageControl1.TabIndex;
  if (PageControl1.Tag <> 0) and (not PageControl1.Pages[1].TabVisible) then
    PageControl1.Tag := PageControl1.Tag + 1;
  DBGrid1.DataSource := srcItems;

  // Getqry.Parameters.Refresh;
 SourceDataBaseformName:='FixedCalculated';

  case PageControl1.Tag of
    0:
      begin
        DBGrid1.Parent := TabSheet1;
        PnlItems.Parent := TabSheet1;
        // qryItems.SQL.Text := EmptyStr;
        SourceDataBaseformName:='FixedCalculated';
        With qryItems do
        begin
          SQL.Text := EmptyStr;
          SQL.Add('SELECT Docs.AccTopicCode, Docs.AccDetailCode,');
          SQL.Add('Docs.AccCTopicCode, Docs.AccCTopicCode2,');
          SQL.Add('Docs.AccCTopicCode3, SUM(Docs.debt) AS debt, ');
          SQL.Add('SUM(Docs.credit) AS credit,');
          SQL.Add('CAST( ''0'' AS varchar(200)) AS InfoName_L1, 0 AS PersonelNO,');
          SQL.Add('CAST( ''0'' AS varchar(200)) AS PeronName,');

          SQL.Add('CAST( (CASE WHEN MIN(InfoName_L1) <> MAX(InfoName_L1) ');
          SQL.Add('THEN ''سند حقوق _ '' + MIN(InfoName_L1) + '' ...');
          SQL.Add(''' + MAX(InfoName_L1) ELSE ''سند حقوق _ '' + MIN(InfoName_L1) END)');

          SQL.Add('+case when EmployerShare=0 then ''_سهم کارفرما'' else '''' end');
          SQL.Add('AS varchar(1500)) AS Dec');

          SQL.Add(', Fitful.FitfulNote AS _Dec');

          SQL.Add('FROM Pay.MakeDocuments(:PersonalFrom,:PersonalTo, :OfficeFrom ');
          SQL.Add(', :FirstArchiveID , :LastArchiveID , :Month_');
          SQL.Add(',:YearMounth,:PersonelStateFrom , :PersonelStateTo , ');
          SQL.Add(':EmployTypeIDFrom , :EmployTypeIDTo , :subcompanyCode , :ProjectIDFrom ,');
          SQL.Add(':ProjectIDTo , :InsuranceIDs  ,:LabelIDFrom  , :LabelIDTo )');
          SQL.Add('AS Docs CROSS JOIN');
          SQL.Add('dbo.Fitful');
          SQL.Add('GROUP BY Docs.AccTopicCode, Docs.AccDetailCode, Docs.AccCTopicCode,');
          SQL.Add('Docs.AccCTopicCode2,');
          SQL.Add('Docs.AccCTopicCode3, Docs.bedbes, Fitful.FitfulNote,EmployerShare');

          SQL.Add('HAVING (SUM(Docs.debt) > 0) OR');
          SQL.Add('(SUM(Docs.credit) > 0)');
          SQL.Add('ORDER BY CASE WHEN SUM(debt) > 0 THEN 0 ELSE 1 END');

          for i := 0 to Parameters.Count - 1 do
          begin
            Parameters[i].DataType := ftInteger;
          end;
          Parameters.ParamByName('OfficeFrom').DataType := ftString;
          Parameters.ParamByName('YearMounth').DataType := ftString;
          Parameters.ParamByName('InsuranceIDs').DataType := ftString;
        end;

      end;
    2:
      begin
        SourceDataBaseformName:='PersonelDecExt.DocNoBonus';
        // PnlSum:=PnlDetail;
        DBGrid1.Parent := TabSheet3;
        PnlItems.Parent := TabSheet3;
        With qryItems do
        begin
          SQL.Text := EmptyStr;
          SQL.Text := 'SELECT  * ';
          SQL.Add(', CAST(''عيدي وپاداش'' AS varchar(1500)) AS Dec  ');
          SQL.Add(', CAST('''' AS varchar(200)) AS InfoName_L1 ');
          SQL.Add(', CAST('''' AS varchar(200)) AS PeronName , 0 as PersonelNO  ');
          SQL.Add(', Fitful.FitfulNote AS _Dec');
          SQL.Add('FROM Pay.MakeDocBonusFull(:OfficeFrom , :EmployTypeIDFrom , :EmployTypeIDTo,');
          SQL.Add(':PersonelStateFrom , :PersonelStateTo , :PersonalFrom,:PersonalTo , :Mounth ,');
          SQL.Add(' :Year , :ProjectIDFrom , :ProjectIDTo , :InsuranceIDs ) AS MakeDocBonusFull_1');
          SQL.Add('CROSS JOIN dbo.Fitful');
          SQL.Add('ORDER BY credit');
          Parameters.ParamByName('Year').Value := APPBank.Year;

        end;
      end;
    3:
      begin
        SourceDataBaseformName:='PersonelDecExt.DocNoAnnuity';
        DBGrid1.Parent := TabSheet4;
        PnlItems.Parent := TabSheet4;
        With qryItems do
        begin
          SQL.Text := EmptyStr;
          SQL.Text :=
            'SELECT  AccTopicCode, AccDetailCode, AccCTopicCode, AccCTopicCode2, AccCTopicCode3, debt, credit ';
          SQL.Add(', CAST(''سنوات خدمت'' AS varchar(1500)) AS  Dec  ');
          SQL.Add(', CAST('''' AS varchar(200)) AS InfoName_L1 ');
          SQL.Add(', CAST('''' AS varchar(200)) AS PeronName , 0 as PersonelNO  ');
          SQL.Add(', Fitful.FitfulNote AS _Dec');
          SQL.Add('FROM Pay.MakeDocAnnuityFull( :OfficeFrom , :EmployTypeIDFrom , :EmployTypeIDTo,');
          SQL.Add(':PersonelStateFrom , :PersonelStateTo , :PersonalFrom,:PersonalTo , :Mounth , :Year , ');
          SQL.Add(' :ProjectIDFrom , :ProjectIDTo , :InsuranceIDs ) AS MakeDocAnnuityFull_1');
          SQL.Add('CROSS JOIN dbo.Fitful');
          SQL.Add('ORDER BY credit');
          Parameters.ParamByName('Year').Value := APPBank.Year;
        end;
      end;

    4:
      begin
        SourceDataBaseformName:='Functions';
        DBGrid1.Parent := TabSheet5;
        PnlItems.Parent := TabSheet5;
        With qryItems do
        begin
          SQL.Text := EmptyStr;
          SQL.Add('SELECT  AccTopicCode, AccDetailCode, AccCTopicCode, AccCTopicCode2, AccCTopicCode3,');
          SQL.Add(' SUM(Debt) AS Debt, SUM(Credit) AS Credit');
          SQL.Add(', CAST(MAX(_Dec) AS varchar(1500)) AS  Dec, ');
          SQL.Add(' MAX(InfoName_L1) AS InfoName_L1, MAX(PeronName) AS PeronName, MAX(PersonelNO) AS PersonelNO');
          SQL.Add(', Fitful.FitfulNote AS _Dec');
          SQL.Add('FROM Pay.MakeDocDuringWork(' + MskAccTopicCodeBed.Text +
            ' , ' + MskAccTopicCodeBes.Text +
            ' , :OfficeFrom,   :EmployTypeIDFrom , :EmployTypeIDTo,');
          SQL.Add(':PersonelStateFrom , :PersonelStateTo , :PersonalFrom ,:PersonalTo , :Month_ , :Year , ');
          SQL.Add(' :ProjectIDFrom , :ProjectIDTo , :InsuranceIDs ) AS MakeDocDuringWork_1 ');
          SQL.Add('CROSS JOIN dbo.Fitful');
          SQL.Add('GROUP BY AccTopicCode, AccDetailCode, AccCTopicCode, AccCTopicCode2, AccCTopicCode3');
          SQL.Add(', Fitful.FitfulNote');
          Parameters.ParamByName('Year').Value := APPBank.Year;
        end;
      end;

    5:
      begin
        DBGrid1.Parent := TabSheet6;
        PnlItems.Parent := TabSheet6;
        With qryItems do
        begin
          SQL.Text := EmptyStr;
          SQL.Text := 'SELECT  * ';

          SQL.Add(', Fitful.FitfulNote AS _Dec');

          SQL.Add('FROM(');
          SQL.Add('SELECT CAST( AccTopicCode as bigint)as AccTopicCode, AccDetailCode, AccCTopicCode, ');
          SQL.Add('AccCTopicCode2, AccCTopicCode3, SUM(Debt) AS Debt, SUM(Credit) AS Credit,  ');
          SQL.Add(' MAX(InfoName_L1) AS InfoName_L1,  MAX(PersonelNO) AS PersonelNO');
          SQL.Add(Format
            (',CAST(''پرداخت حقوق ماه %s'' AS varchar(1500)) AS  Dec, CAST('''' AS varchar(200)) as PeronName',
            [ToolBar1.Buttons[MonthNo - 1].Caption]));
          SQL.Add('FROM Pay.MakeDocuments_PayMent(:PersonalFrom ,:PersonalTo , :OfficeFrom   ,-1 ');
          SQL.Add(Format(',:LastArchiveID ,:Month_ , ''%s''',
            [optP.YearMounth]));
          SQL.Add(',:PersonelStateFrom ,:PersonelStateTo ,:EmployTypeIDFrom  ,:EmployTypeIDTo , ');
          SQL.Add(' :ProjectIDFrom , :ProjectIDTo , :InsuranceIDs  ,:LabelIDFrom  , :LabelIDTo ) AS MakeDocumentPays_PayMent_1 ');
          SQL.Add('GROUP BY AccTopicCode, AccDetailCode, AccCTopicCode, AccCTopicCode2, AccCTopicCode3');
          SQL.Add('union all');
          SQL.Add(Format('SELECT %d as AccTopicCode ,%d as AccDetailCode ',
            [StrToInt64(trim(MskAccTopicCode2Bes.Text)),
            StrToInt64(trim(MskDetailCode.Text))]));
          SQL.Add(', 0 as AccCTopicCode, 0 as AccCTopicCode2, 0 as AccCTopicCode3,');
          SQL.Add('0 AS Debt, SUM(Debt) AS Credit,');
          SQL.Add('CAST('''' AS varchar(200)) AS InfoName_L1, 0 AS PersonelNO');
          SQL.Add(Format(',CAST( ''%s'' AS varchar(1500)) AS  Dec',
            [MaskEdit1.Text]));
          SQL.Add(', CAST('''' AS varchar(200)) AS PeronName');
          SQL.Add('FROM Pay.MakeDocuments_PayMent(:PersonalFrom2 ,:PersonalTo2 , :OfficeFrom2    ,-1 ');
          SQL.Add(Format(',:LastArchiveID2 ,:Month2 , ''%s''',
            [optP.YearMounth]));
          SQL.Add(',:PersonelStateFrom2 ,:PersonelStateTo2 ,:EmployTypeIDFrom2  ,:EmployTypeIDTo2 ');
          SQL.Add(',  :ProjectIDFrom2 , :ProjectIDTo2 , :InsuranceIDs2  ,:LabelID2From  , :LabelID2To ) AS MakeDocumentPays_PayMent_2 ');
          SQL.Add(')abced');
          SQL.Add('CROSS JOIN dbo.Fitful');
        end;
      end;
    6:
      begin
        DBGrid1.DataSource := srcRetard;
        DBGrid1.Parent := tsRetard;
        PnlItems.Parent := tsRetard;
      end;

    7:
      begin
        DBGrid1.Parent := TabSheet7;
        PnlItems.Parent := TabSheet7;
        With qryItems do
        begin
          Active := False;
          SQL.Text := EmptyStr;
          SQL.Text := 'SELECT  AccTopicCode, AccDetailCode, AccCTopicCode, ';
          SQL.Add('AccCTopicCode2, AccCTopicCode3, debt, credit');
          SQL.Add(', CAST(''باز خرید مرخصی'' AS varchar(1500)) AS Dec');
          SQL.Add(' , CAST('''' AS varchar(200)) AS InfoName_L1 ,');
          SQL.Add(' CAST('''' AS varchar(200)) AS PeronName , 0 as PersonelNO, Fitful.FitfulNote AS _Dec');
          SQL.Add('FROM Pay.MakeDocDecExtOnMounth( :OfficeFrom, :EmployTypeIDFrom ,:EmployTypeIDTo , :Mounth ,');
          SQL.Add(':MounthFrom , :MounthTo , :PersonalFrom , :PersonalTo, :InfoIDFrom , :InfoIDTo');
          SQL.Add(', :PersonelStateFrom , :PersonelStateTo , :ProjectIDFrom , :ProjectIDTo ');
          SQL.Add(',:FormType ,:YearMounth , :InsuranceIDs  ) AS');
          SQL.Add('MakeDocDecExtOnMounth_1');
          SQL.Add('CROSS JOIN dbo.Fitful');
          SQL.Add('ORDER BY credit');
        end;
      end;

    8:
      begin
        DBGrid1.DataSource := srcLabel;
        DBGrid1.Parent := tsLabel;
        PnlItems.Parent := tsLabel;
      end;

  end;
  UpdateFilter;
end;

procedure TMakeDocumentPayF.UpdateFilter;
var
  s: string;
begin
  if not optA.AccOldAvailable then
  begin
    YearID_ := APPBank.Year;
    if cmbYearID.ItemIndex > -1 then
      YearID_ := Integer(cmbYearID.Items.Objects[cmbYearID.ItemIndex]);
    CheckDoc1.YearID := YearID_;
  end;
  actMakeDoc.Enabled := False;
  PnlWarnings.Visible := False;
  FreeReservedCodesAcc(DMf.qryTopicCode.Connection, ExtIPSalary,
    'Acc.DocGroups', 0);

  GetSecondaryDocNo(ExtIPSalary, cmbCompany, MskDocNo, YearID_);

  GetSerial(ExtIPSalary, cmbCompany, MskSerial, YearID_);

  // if PageControl1.Tag <> 1 then

  with Getqry do
  begin
    Active := False;
    s := cmbOlderLabel.Text + ' - ' + cmbCurentLabel.Text + ' : ';
    if Parameters.FindParam('Note1') <> nil then
      Parameters.ParamByName('Note1').Value := s;

    if Parameters.FindParam('Note2') <> nil then
      Parameters.ParamByName('Note2').Value := s;
    // s := qry.SQL.Text;
    // qry.SQL.Text := EmptyStr;
    // qry.SQL.Text := s;
    if Parameters.FindParam('LabelIDFrom') <> nil then
    begin
      Parameters.ParamByName('LabelIDFrom').Value :=
        GetcFrom(myParams.ParamValues['LabelID'], ftInteger);
      Parameters.ParamByName('LabelIDTo').Value :=
        GetcTo(myParams.ParamValues['LabelID'], ftInteger);
    end;

    if Parameters.FindParam('LabelID2From') <> nil then
    begin
      Parameters.ParamByName('LabelID2From').Value :=
        GetcFrom(myParams.ParamValues['LabelID'], ftInteger);
      Parameters.ParamByName('LabelID2To').Value :=
        GetcTo(myParams.ParamValues['LabelID'], ftInteger);
    end;

    if Parameters.FindParam('Mounth') <> nil then
      Parameters.ParamByName('Mounth').Value := MonthNo;

    Parameters.ParamByName('PersonalFrom').Value :=
      GetcFrom(myParams.ParamValues['Personal'], ftInteger);
    Parameters.ParamByName('PersonalTo').Value :=
      GetcTo(myParams.ParamValues['Personal'], ftInteger);

    Parameters.ParamByName('OfficeFrom').Value :=
      GetcFrom(myParams.ParamValues['Office'], ftString);

    Parameters.ParamByName('InsuranceIDs').Value :=
      GetcFrom(myParams.ParamValues['BimehType'], ftString);

    GetYearMounth(MonthNo);

    // if PageControl1.Tag in [0, 4, 5, 6] then
    if Parameters.FindParam('Month_') <> nil then
    begin
      Parameters.ParamByName('Month_').Value := MonthNo;
    end;

    // if PageControl1.Tag in [0, 6, 7] then
    if Parameters.FindParam('YearMounth') <> nil then
      Parameters.ParamByName('YearMounth').Value := optP.YearMounth;

    if PageControl1.Tag in [7] then
    begin
      Parameters.ParamByName('FormType').Value := 2;
      Parameters.ParamByName('MounthFrom').Value := RadioGroup1.ItemIndex;
      Parameters.ParamByName('MounthTo').Value := 12;
      Parameters.ParamByName('InfoIDFrom').Value := 0;
      Parameters.ParamByName('InfoIDTo').Value := 999;
    end;

    if PageControl1.Tag in [0, 6, 8] then
    begin
      Parameters.ParamByName('subcompanyCode').Value :=

        Integer(cmbCompany.Items.Objects[cmbCompany.ItemIndex]);
      if not(gv_MultiCompany) then
        Parameters.ParamByName('subcompanyCode').Value := var_glb_CompanyCode;

      if PageControl1.Tag in [0, 8] then
      begin
        if cmbArchiveID.Visible then
        begin
          Parameters.ParamByName('FirstArchiveID').Value := -1;
          Parameters.ParamByName('LastArchiveID').Value :=
            Integer(cmbArchiveID.Items.Objects[cmbArchiveID.ItemIndex]);
        end
        else
        begin
          Parameters.ParamByName('FirstArchiveID').Value := -1;
          Parameters.ParamByName('LastArchiveID').Value := 1;
        end;
      end
      else if (cmbCurentArchiveID.Items.Count > 0) and
        (cmbOlderArchiveID.Items.Count > 0) then
      begin
        Parameters.ParamByName('FirstArchiveID').Value := -1;

        Parameters.ParamByName('CurentArchiveID').Value :=
          Integer(cmbCurentArchiveID.Items.Objects
          [cmbCurentArchiveID.ItemIndex]);
        Parameters.ParamByName('OlderArchiveID').Value :=
          Integer(cmbOlderArchiveID.Items.Objects[cmbOlderArchiveID.ItemIndex]);
      end;

      if (cmbCurentLabel.Items.Count > 0) and (cmbOlderLabel.Items.Count > 0)
      then
      begin

        if Parameters.FindParam('FirstLabelID') <> nil then
          Parameters.ParamByName('FirstLabelID').Value := -1;

        if cmbCurentLabel.ItemIndex > -1 then
          if Parameters.FindParam('CurentLabelID') <> nil then
            Parameters.ParamByName('CurentLabelID').Value :=
              Integer(cmbCurentLabel.Items.Objects[cmbCurentLabel.ItemIndex]);

        if cmbOlderLabel.ItemIndex > -1 then
          if Parameters.FindParam('OlderLabelID') <> nil then
            Parameters.ParamByName('OlderLabelID').Value :=
              Integer(cmbOlderLabel.Items.Objects[cmbOlderLabel.ItemIndex]);
      end;

    end;

    if PageControl1.Tag in [5] then
    begin
      Parameters.ParamByName('PersonalFrom2').Value :=
        GetcFrom(myParams.ParamValues['Personal'], ftInteger);
      Parameters.ParamByName('PersonalTo2').Value :=
        GetcTo(myParams.ParamValues['Personal'], ftInteger);

      Parameters.ParamByName('OfficeFrom2').Value :=
        GetcFrom(myParams.ParamValues['Office'], ftString);

      Parameters.ParamByName('InsuranceIDs2').Value :=
        GetcFrom(myParams.ParamValues['BimehType'], ftString);

      Parameters.ParamByName('PersonelStateFrom2').Value :=
        GetcFrom(myParams.ParamValues['PersonelState'], ftInteger);
      Parameters.ParamByName('PersonelStateTo2').Value :=
        GetcTo(myParams.ParamValues['PersonelState'], ftInteger);
      Parameters.ParamByName('EmployTypeIDFrom2').Value :=
        GetcFrom(myParams.ParamValues['EmployTypeID'], ftInteger);
      Parameters.ParamByName('EmployTypeIDTo2').Value :=
        GetcTo(myParams.ParamValues['EmployTypeID'], ftInteger);
      Parameters.ParamByName('Month2').Value := MonthNo;
      // Parameters.ParamByName('Year2').Value:=opt.YearMounth;
      // Parameters.ParamByName('FirstArchiveID2').Value:=-1;

      if cmbArchiveID.Visible then
      begin
        Parameters.ParamByName('LastArchiveID').Value :=
          Integer(cmbArchiveID.Items.Objects[cmbArchiveID.ItemIndex]);
        Parameters.ParamByName('LastArchiveID2').Value :=
          Integer(cmbArchiveID.Items.Objects[cmbArchiveID.ItemIndex]);
      end
      else
      begin
        Parameters.ParamByName('LastArchiveID').Value := 1;
        Parameters.ParamByName('LastArchiveID2').Value := 1;
      end;

      Parameters.ParamByName('ProjectIDFrom2').Value :=
        GetcFrom(myParams.ParamValues['ProjectID'], ftInteger);
      Parameters.ParamByName('ProjectIDTo2').Value :=
        GetcTo(myParams.ParamValues['ProjectID'], ftInteger);

    end;

    Parameters.ParamByName('ProjectIDFrom').Value :=
      GetcFrom(myParams.ParamValues['ProjectID'], ftInteger);
    Parameters.ParamByName('ProjectIDTo').Value :=
      GetcTo(myParams.ParamValues['ProjectID'], ftInteger);

    Parameters.ParamByName('PersonelStateFrom').Value :=
      GetcFrom(myParams.ParamValues['PersonelState'], ftInteger);
    Parameters.ParamByName('PersonelStateTo').Value :=
      GetcTo(myParams.ParamValues['PersonelState'], ftInteger);
    Parameters.ParamByName('EmployTypeIDFrom').Value :=
      GetcFrom(myParams.ParamValues['EmployTypeID'], ftInteger);
    Parameters.ParamByName('EmployTypeIDTo').Value :=
      GetcTo(myParams.ParamValues['EmployTypeID'], ftInteger);

    if PageControl1.Tag in [0, 2, 3, 4, 5, 6, 7, 8] then
      try
        Active := True;
      finally
      end;

  end; // with
  with qryDetail do
  begin
    Active := False;
    Parameters.ParamByName('LabelIDFrom').Value :=
      GetcFrom(myParams.ParamValues['LabelID'], ftInteger);
    Parameters.ParamByName('LabelIDTo').Value :=
      GetcTo(myParams.ParamValues['LabelID'], ftInteger);

    if cmbArchiveID.Visible then
    begin
      Parameters.ParamByName('FirstArchiveID').Value := -1;
      // Integer(cmbArchiveID.Items.Objects[cmbArchiveID.ItemIndex]);
      Parameters.ParamByName('LastArchiveID').Value :=
        Integer(cmbArchiveID.Items.Objects[cmbArchiveID.ItemIndex]);
    end
    else
    begin
      Parameters.ParamByName('FirstArchiveID').Value := -1;
      Parameters.ParamByName('LastArchiveID').Value := 1;
    end;

    Parameters.ParamByName('PersonalFrom').Value :=
      GetcFrom(myParams.ParamValues['Personal'], ftInteger);
    Parameters.ParamByName('PersonalTo').Value :=
      GetcTo(myParams.ParamValues['Personal'], ftInteger);

    // Parameters.ParamByName('OfficeFrom').Value :=
    // GetcFrom(myParams.ParamValues['Office'], ftInteger);
    // Parameters.ParamByName('OfficeTo').Value :=
    // GetcTo(myParams.ParamValues['Office'], ftInteger);

    Parameters.ParamByName('OfficeFrom').Value :=
      GetcFrom(myParams.ParamValues['Office'], ftString);

    if Parameters.FindParam('InsuranceIDs') <> NIL then
      Parameters.ParamByName('InsuranceIDs').Value :=
        GetcFrom(myParams.ParamValues['BimehType'], ftString);

    Parameters.ParamByName('Month_').Value := MonthNo;
    Parameters.ParamByName('YearMounth').Value := optP.YearMounth;
    Parameters.ParamByName('PersonelStateFrom').Value :=
      GetcFrom(myParams.ParamValues['PersonelState'], ftInteger);
    Parameters.ParamByName('PersonelStateTo').Value :=
      GetcTo(myParams.ParamValues['PersonelState'], ftInteger);
    Parameters.ParamByName('EmployTypeIDFrom').Value :=
      GetcFrom(myParams.ParamValues['EmployTypeID'], ftInteger);
    Parameters.ParamByName('EmployTypeIDTo').Value :=
      GetcTo(myParams.ParamValues['EmployTypeID'], ftInteger);

    Parameters.ParamByName('subcompanyCode').Value :=
      Integer(cmbCompany.Items.Objects[cmbCompany.ItemIndex]);
    if not(gv_MultiCompany) then
      Parameters.ParamByName('subcompanyCode').Value := var_glb_CompanyCode;

    Parameters.ParamByName('ProjectIDFrom').Value :=
      GetcFrom(myParams.ParamValues['ProjectID'], ftInteger);
    Parameters.ParamByName('ProjectIDTo').Value :=
      GetcTo(myParams.ParamValues['ProjectID'], ftInteger);

    if PageControl1.Tag = 1 then
      Active := True;
  end; // with
  LblNum.Caption := 'از كد پرسنلي ' +
    IntToStr(GetcFrom(myParams.ParamValues['Personal'], ftInteger)) + ' تا ' +
    IntToStr(GetcTo(myParams.ParamValues['Personal'], ftInteger));
  // LblStore.Caption := 'از واحد سازماني ' +
  // VarToStr(GetcFrom(myParams.ParamValues['Office'], ftInteger)) + ' تا ' +
  // VarToStr(GetcTo(myParams.ParamValues['PersonelState'], ftInteger));
  actShowDoc.Execute
end;

procedure TMakeDocumentPayF.actArchiveIDExecute(Sender: TObject);
begin
  inherited;
  cmbArchiveID.Visible := True;
  InitCmbArchiveID(cmbArchiveID, MonthNo);
  cmbArchiveID.DroppedDown := True;
end;

procedure TMakeDocumentPayF.actChangeDecExecute(Sender: TObject);
var
  qry: TADOQuery;
begin
  inherited;
  qry := Getqry;
  qry.DisableControls;
  With qry do
  begin
    First;
    while not eof do
    begin
      edit;
      FieldByName('_Dec').AsString := 'سندحقوق ' + ToolBar1.Buttons[MonthNo - 1]
        .Caption + ' ماه:' + FieldByName('_TopicName').AsString + ' ' +
        FieldByName('_DetailName').AsString + ' ' + FieldByName('_CTopicName')
        .AsString + ' ' + FieldByName('_CTopicName2').AsString + ' ' +
        FieldByName('_CTopicName3').AsString;
      Next;
    end;
  end;
  qry.EnableControls;
  BigMessage('انجام شد.‏', 1);
end;

procedure TMakeDocumentPayF.btnAccTopicCodeBedClick(Sender: TObject);
begin
  inherited;
  MskAccTopicCodeBed.Text := SpeedButtonTopicCode
    (trim(MskAccTopicCodeBed.Text));
  PageControl1Change(PageControl1);
end;

procedure TMakeDocumentPayF.btnAccTopicCodeBesClick(Sender: TObject);
begin
  inherited;
  MskAccTopicCodeBes.Text := SpeedButtonTopicCode
    (trim(MskAccTopicCodeBes.Text));
  PageControl1Change(PageControl1);
end;

procedure TMakeDocumentPayF.actSendWarnToExcelExecute(Sender: TObject);
begin
  inherited;
  case PageControl1.Tag of
    0:
      SendWarnDBGridToExcelc(DBGrid1, lslWarnings);
    1:
      SendWarnDBGridToExcelc(DBGrid2, lslWarnings);
  else
    SendWarnDBGridToExcelc(DBGrid1, lslWarnings);
  end;

end;

procedure TMakeDocumentPayF.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  MskAccTopicCode2Bes.Text := SpeedButtonTopicCode
    (trim(MskAccTopicCode2Bes.Text));
  PageControl1Change(PageControl1);
end;

procedure TMakeDocumentPayF.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  MskDetailCode.Text := SpeedButtonDetailCode(trim(MskDetailCode.Text),
    StrToInt(trim(MskAccTopicCode2Bes.Text)));
  PageControl1Change(PageControl1);
end;

procedure TMakeDocumentPayF.actDetailExecute(Sender: TObject);
begin
  inherited;
  PageControl1.Pages[1].TabVisible := not PageControl1.Pages[1].TabVisible;
end;

procedure TMakeDocumentPayF.btnSendWarnToExcelClick(Sender: TObject);
begin
  inherited;
  pm1.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

end.
