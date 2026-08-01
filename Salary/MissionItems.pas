// Mostafa
unit MissionItems;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, Mask, DBCtrls, ComCtrls, ToolWin, DB, ADODB,
  Menus, ppBands, ppClass, ppCtrls, ppVar, ppPrnabl, ppCache, ppProd,
  ppReport, ppDB, ppComm, ppRelatv, ppDBPipe, SumDBGrid, Math, ppParameter,
  MyComboBoxUnit, ppDesignLayer, System.ImageList, System.Actions,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid;

type
  TMissionItemsF = class(Ttemplate2MDIF)
    Panel1: TPanel;
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
    Panel4: TPanel;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    DBEdit1: TDBEdit;
    edtCaption: TDBEdit;
    DBNavigator1: TDBNavigator;
    qryMaster: TADOQuery;
    qryMasterFormInfoID: TIntegerField;
    qryMasterFormType: TIntegerField;
    qryMasterInfoID: TIntegerField;
    qryMasterInfoName_L1: TStringField;
    qryMasterInfoName_L2: TStringField;
    srcMaster: TDataSource;
    qryInitForm: TADOQuery;
    qrydecExt: TADOQuery;
    srcdecExt: TDataSource;
    qrydecExtDecExtID: TIntegerField;
    qrydecExtFormInfoID: TIntegerField;
    qrydecExtPersonelNo: TIntegerField;
    qrydecExtEmployeeAmount: TBCDField;
    qrydecExtFirstMounth: TWordField;
    qrydecExtEndMounth: TWordField;
    qrydecExtAidNo1: TStringField;
    qrydecExtAidDate1_L1: TStringField;
    qrydecExtAidNo2: TStringField;
    qrydecExtAidDate2_L1: TStringField;
    qrydecExtDayQuntity: TFloatField;
    qrydecExtDayTime: TFloatField;
    qrydecExtEmployerAmount: TBCDField;
    qrydecExtFormInfoID2: TIntegerField;
    qrydecExtAccTopicCode: TIntegerField;
    qrydecExtAccDetailCode: TIntegerField;
    qrydecExtAccCTopicCode: TIntegerField;
    qrydecExtAccCTopicCode2: TIntegerField;
    pnlAidNo1: TPanel;
    lblAidNo1: TLabel;
    DBEdit7: TDBEdit;
    pnlAidDate1: TPanel;
    lblAidDate1: TLabel;
    DBEdit8: TDBEdit;
    pnlAidDate2: TPanel;
    lblAidDate2: TLabel;
    DBEdit10: TDBEdit;
    pnlAidNo2: TPanel;
    lblAidNo2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    dbedtEmployeeAmount: TDBEdit;
    Label4: TLabel;
    dbedtDayQuntity: TDBEdit;
    qryDecExtItems: TADOQuery;
    srcDecExtItems: TDataSource;
    qryDecExtItemsDecExtID: TIntegerField;
    qryDecExtItemsSalaryID: TIntegerField;
    qryDecExtItemsAmount: TBCDField;
    qryLookUp: TADOQuery;
    qryDecExtItems_Object: TStringField;
    qryDecExtItems_Object2: TStringField;
    newPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    qryDecExtItems_Amount2: TCurrencyField;
    qryDecExtItemsDecExtItemID: TIntegerField;
    PersonelInfo: TADOQuery;
    qrydecExt_PersonName1: TStringField;
    qrydecExt_PersonName_L22: TStringField;
    DataSetDelete1: TDataSetDelete;
    qryLookupPrj: TADOQuery;
    qrydecExt_projectname_L1: TStringField;
    qrydecExt_projectname_L2: TStringField;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    PopList4Print: TPopupMenu;
    AllClikPop: TMenuItem;
    actPrint: TAction;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn9: TBitBtn;
    actSort: TAction;
    actSend2Excel: TAction;
    StatusBar1: TStatusBar;
    ppTitleBand1: TppTitleBand;
    ppLblCompany: TppLabel;
    ppLblReportName: TppLabel;
    ppLblPrintDate: TppLabel;
    ppHeaderBand1: TppHeaderBand;
    ppLine3: TppLine;
    ppSysVarPageNo: TppSystemVariable;
    ppLine1: TppLine;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel8: TppLabel;
    ppLabel6: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppLabel3: TppLabel;
    ppFooterBand1: TppFooterBand;
    ppLine4: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc2: TppDBCalc;
    ppLine5: TppLine;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    qryDecExtItems_Coefficient: TFloatField;
    GrpNote: TGroupBox;
    DBMmoNote: TDBMemo;
    Panel5: TPanel;
    BitBtn10: TBitBtn;
    SpeedButton16: TSpeedButton;
    DBNavigator2: TDBNavigator;
    qryEarthCode: TADOQuery;
    qryProcCode: TADOQuery;
    qrydecExtProcCode: TIntegerField;
    qrydecExtEarthCode: TIntegerField;
    qrydecExt_ProcCode: TStringField;
    qrydecExt_EarthCode: TStringField;
    pnlProcCode: TPanel;
    lblProcCode: TLabel;
    btnProcCode: TSpeedButton;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    pnlEarthCode: TPanel;
    lblEarthCode: TLabel;
    btnEarthCode: TSpeedButton;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    Panel6: TPanel;
    Label2: TLabel;
    DBEdit3: TDBEdit;
    btnPersonelNo: TSpeedButton;
    DBEdit4: TDBEdit;
    DBEdit9: TDBEdit;
    lblEmployeeName_L2: TLabel;
    Panel7: TPanel;
    Label5: TLabel;
    DBEdit11: TDBEdit;
    btnFormInfoID2: TSpeedButton;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    lblProject_L2: TLabel;
    Panel8: TPanel;
    qryDecExtItems_CalCulateType: TIntegerField;
    qryDecExtItems_StandardDays: TFloatField;
    Label6: TLabel;
    dbedtRate: TDBEdit;
    qryDecExtItemsRate: TBCDField;
    qrydecExtYearID: TIntegerField;
    qrydecExtStartYear: TIntegerField;
    qrydecExtEndYear: TIntegerField;
    yrcmbx1: TYearComboBox;
    qryDecExtItemsDayQuntity: TFloatField;
    qrydecExtNote_L1: TWideStringField;
    qrydecExtNote_L2: TWideStringField;
    DBGrid1: TCedarDbgrid;
    DBGrid2: TCedarDbgrid;
    actGetExcel: TAction;
    BitBtn11: TBitBtn;
    plnItems: TppDBPipeline;
    procedure qryMasterAfterScroll(DataSet: TDataSet);
    procedure ToolButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid2EditButtonClick(Sender: TObject);
    procedure qrydecExtAfterScroll(DataSet: TDataSet);
    procedure qrydecExtAfterInsert(DataSet: TDataSet);
    procedure srcdecExtStateChange(Sender: TObject);
    procedure qrydecExtAfterPost(DataSet: TDataSet);
    procedure qrydecExtAfterEdit(DataSet: TDataSet);
    procedure btnPersonelNoClick(Sender: TObject);
    procedure qrydecExtBeforePost(DataSet: TDataSet);
    procedure qrydecExtAfterCancel(DataSet: TDataSet);
    procedure DBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qrydecExtBeforeDelete(DataSet: TDataSet);
    procedure qryDecExtItemsAfterEdit(DataSet: TDataSet);
    procedure DBGrid2Enter(Sender: TObject);
    procedure btnFormInfoID2Click(Sender: TObject);
    procedure ppLabel1GetText(Sender: TObject; var Text: String);
    procedure ppLabel3GetText(Sender: TObject; var Text: String);
    procedure ppLblCompanyGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppLblReportNameGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
    procedure actPrintExecute(Sender: TObject);
    procedure AllClikPopClick(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSend2ExcelExecute(Sender: TObject);
    procedure qrydecExtAfterOpen(DataSet: TDataSet);
    procedure qrydecExtPersonelNoChange(Sender: TField);
    procedure qrydecExtDayQuntityChange(Sender: TField);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3Exit(Sender: TObject);
    procedure DBEdit11Exit(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure qryDecExtItemsBeforePost(DataSet: TDataSet);
    procedure DBEdit_All_KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnEarthCodeClick(Sender: TObject);
    procedure btnProcCodeClick(Sender: TObject);
    procedure qryDecExtItemsAfterInsert(DataSet: TDataSet);
    procedure qrydecExtAfterClose(DataSet: TDataSet);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure yrcmbx1YearChangeID(Sender: TObject);
    procedure qryDecExtItemsBeforeEdit(DataSet: TDataSet);
    procedure qryDecExtItemsBeforeInsert(DataSet: TDataSet);
    procedure actGetExcelExecute(Sender: TObject);
  private
    MonthNo: Byte;
    Form_Type: Byte;
    TopicKind, DetailKind, CTopicKind, CTopicKind2: Byte;
    GetExcel: Boolean;
    procedure initForm;
    procedure updateList;
    procedure DefaultData;
    procedure editData;
    procedure DeleteDefault;
    function Calc_SumFileds(FiledName: String): Currency;
    procedure GetAProjectID;
    function ValidateFormInfoID2: Boolean;
    procedure gridkeyenter(Sender: TObject; var Key: Char);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MissionItemsF: TMissionItemsF;

implementation

uses DM, GlobalPro, searchCode_ADO, search2, mmessage, SalaryFunctions, sndkey32,
  sort2,  GetExcelMasterDetails, AccountP;

{$R *.dfm}
{ Ttemplate2MDIF1 }

procedure TMissionItemsF.initForm;
begin
  with qryInitForm do
  begin
    Active := False;
    Parameters.ParamByName('FormType').Value := Form_Type;
    Active := True;
    TopicKind := FieldByName('TopicCodeKind').AsInteger;
    DetailKind := FieldByName('DetailCodeKind').AsInteger;
    CTopicKind := FieldByName('CTopicCodeKind').AsInteger;
    CTopicKind2 := FieldByName('CTopicCode2Kind').AsInteger;
    qryLookupPrj.Parameters.ParamByName('FormInfo4Function').Value :=
      FieldByName('FormInfo4Function').AsInteger;

    yrcmbx1.YearsParam := APPBank.Year;
    yrcmbx1.YearID := APPBank.Year;

    with qryMaster do
    begin
      Active := False;
      Parameters.ParamByName('type').Value :=
        qryInitForm.FieldByName('FormType').AsInteger;
      Active := True;
    end;
    Caption := FieldByName('FormCaption_L1').AsString;
    // -----------------------------Set Label-------------------------------------
    lblAidNo1.Caption := ' ‘„«—Â ' + FieldByName('AidInfo1Caption').AsString;
    lblAidDate1.Caption := '  «—ÌŒ ' + FieldByName('AidInfo1Caption').AsString;
    lblAidNo2.Caption := ' ‘„«—Â ' + FieldByName('AidInfo2Caption').AsString;
    lblAidDate2.Caption := '  «—ÌŒ  ' + FieldByName('AidInfo2Caption').AsString;

    qrydecExt.FieldByName('AidNo1').DisplayLabel := lblAidNo1.Caption;
    qrydecExt.FieldByName('AidDate1').DisplayLabel := lblAidDate1.Caption;

    qrydecExt.FieldByName('AidNo2').DisplayLabel := lblAidNo2.Caption;
    qrydecExt.FieldByName('AidDate2').DisplayLabel := lblAidDate2.Caption;
    // ------------------------------set Panel-------------------------------------
    pnlAidNo1.Visible := FieldByName('AidInfoNo1Active').Value = 1;
    pnlAidDate1.Visible := FieldByName('AidInfoDate1Active').Value = 1;
    pnlAidNo2.Visible := FieldByName('AidInfoNo2Active').Value = 1;
    pnlAidDate2.Visible := FieldByName('AidInfoDate2Active').Value = 1;
    GrpNote.Visible := FieldByName('NoteActive').Value = 1;

    pnlProcCode.Visible := FieldByName('EarthProceedsActivate').AsInteger
      in [2, 3];
    pnlEarthCode.Visible := FieldByName('EarthProceedsActivate').AsInteger
      in [1, 3];

    // qrydecExt.FieldByName('ProcCode').DisplayLabel:='ﬂœ '+FieldByName('ProcName').AsString;
    // qrydecExt.FieldByName('_ProcCode').DisplayLabel:=FieldByName('ProcName').AsString;
    // qrydecExt.FieldByName('EarthCode').DisplayLabel:='ﬂœ '+FieldByName('EarthName').AsString;
    // qrydecExt.FieldByName('_EarthCode').DisplayLabel:=FieldByName('EarthName').AsString;

    lblProcCode.Caption := 'ﬂœ ' + FieldByName('ProcName').AsString;
    lblEarthCode.Caption := 'ﬂœ ' + FieldByName('EarthName').AsString;

  end; // with initForm
  qryDecExtItems.Active := True;
  if optP.primaryLanguage = 1 then
    edtCaption.DataField := 'InfoName_L1';
  if optP.primaryLanguage = 2 then
    edtCaption.DataField := 'InfoName_L2';

end;

procedure TMissionItemsF.qryMasterAfterScroll(DataSet: TDataSet);
begin
  inherited;
  // with qryPersonel do begin
  // Active:=false;
  // Parameters.ParamByName('FormInfo').Value:=dataset.fieldbyname('FormInfoID').AsInteger;
  // Active:=True;
  // end;;//with
  with qryLookUp do
  begin
    Active := False;
    Parameters.ParamByName('PInfoID').Value := DataSet.FieldByName('FormInfoID')
      .AsInteger;
    Active := True;
  end;; // with
  updateList;
end;

procedure TMissionItemsF.updateList;
begin
  with qrydecExt do
  begin
    Active := False;
    Parameters.ParamByName('FInfoId').Value :=
      qryMaster.FieldByName('FormInfoID').AsInteger;
    Parameters.ParamByName('Mounth').Value := MonthNo;
    Parameters.ParamByName('YearID').Value := yrcmbx1.YearID;
    Active := True;
  end; // with
end;

procedure TMissionItemsF.ToolButton1Click(Sender: TObject);
begin
  inherited;
  MonthNo := (Sender as TToolButton).tag;    GetYearMounth(MonthNo);
  updateList;

end;

procedure TMissionItemsF.FormCreate(Sender: TObject);
begin
  inherited;
  GetExcel := False;
  SetLookUpCash(qrydecExt);
  SetLookUpCash(qryDecExtItems);
  Form_Type := var_glb_gParam;
  lblCaption.Hint := IntToStr(Form_Type);
  MonthNo := var_glb_CurrentMonth;
  if MonthNo < 1 then
    MonthNo := 1;
  ToolBar1.Buttons[MonthNo - 1].Down := True;
  initForm;
  ToolBar1.Buttons[MonthNo - 1].Click;
  DBGrid1.SetFooter4Sum([]);
  DBGrid2.SetFooter4Sum([]);
end;

procedure TMissionItemsF.DBGrid2EditButtonClick(Sender: TObject);
var
  c: String;
begin
  inherited;
  case (Sender as TCedarDbgrid).SelectedIndex of
    0:
      begin
        if searchCode_ADOF.SearchCode(DMf.adcSalary, c, '·Ì”  ⁄‰«ÊÌ‰ „«„Ê—Ì ',
          'SELECT  FormInfoID,InfoName_L1,InfoName_L2 FROM Pay.FormsInfo WHERE PrvInfoID ='
          + qryMasterFormInfoID.AsString, ['ﬂœ', '‘—Õ', '2‘—Õ'], alLeft) <> ''
        then
        begin
          if not(qryDecExtItems.State in dsEditModes) then
            qryDecExtItems.Edit;
          qryDecExtItems['SalaryID'] := c;
        end; // if
      end; // 0
  end; // case

end;

procedure TMissionItemsF.qrydecExtAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryDecExtItems do
  begin
    Active := False;
    Parameters.ParamByName('ExtID').Value := DataSet.FieldByName('DecExtID')
      .AsInteger;
    Active := True;
  end; // with
  if DataSet.State in dsEditModes then
    DefaultData;
end;

procedure TMissionItemsF.DefaultData;
begin
  if not GetExcel then
    with qryLookUp do
    begin
      try
        First;
        DisableControls;
        while not eof do
        begin
          qryDecExtItems.Append;
          qryDecExtItems.FieldByName('DecExtID').AsInteger :=
            qrydecExt.FieldByName('DecExtID').AsInteger;
          qryDecExtItems.FieldByName('DecExtItemID').AsInteger :=
            GetANewCode('','Pay.DecExtItems', 'DecExtItemID');
          qryDecExtItems.FieldByName('SalaryID').AsString :=
            qryLookUp.FieldByName('FormInfoID').AsString;;
          qryDecExtItems.Post;
          next;
        end; // while
      finally
        EnableControls;
        qryDecExtItems.First;
      end; // try
    end; // with
end;

procedure TMissionItemsF.qrydecExtAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('DecExtID').AsInteger := GetANewCode('','Pay.PersonelDecExt',
    'DecExtID');
  DataSet.FieldByName('FirstMounth').AsInteger := MonthNo;
  DataSet.FieldByName('EndMounth').AsInteger := MonthNo;
  DataSet.FieldByName('FormInfoID').AsInteger :=
    qryMaster.FieldByName('FormInfoID').AsInteger;
  DataSet.FieldByName('YearID').AsInteger := APPBank.Year;

  if (TopicKind = 2) or (TopicKind = 5) then
    DataSet.FieldByName('AccTopicCode').AsInteger :=
      Calculate_AccCode(1, TopicKind, qryMaster.FieldByName('FormInfoID')
      .AsInteger);
  if (DetailKind = 2) or (DetailKind = 5) then
    DataSet.FieldByName('AccDetailCode').AsInteger :=
      Calculate_AccCode(2, DetailKind, qryMaster.FieldByName('FormInfoID')
      .AsInteger);
  if (CTopicKind = 2) or (CTopicKind = 5) then
    DataSet.FieldByName('AccCTopicCode').AsInteger :=
      Calculate_AccCode(3, CTopicKind, qryMaster.FieldByName('FormInfoID')
      .AsInteger);
  if (CTopicKind2 = 2) or (CTopicKind2 = 5) then
    DataSet.FieldByName('AccCTopicCode2').AsInteger :=
      Calculate_AccCode(4, CTopicKind2, qryMaster.FieldByName('FormInfoID')
      .AsInteger);

  DBEdit3.SetFocus;
end;

procedure TMissionItemsF.GetAProjectID;
begin
  with DMF.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text := 'SELECT ProjectID  FROM Pay.Interdicts';
    SQL.Add('WHERE (PersonelNo = ' + qrydecExt.FieldByName('PersonelNo')
      .AsString + ') AND (State < 50)');
    SQL.Add('ORDER BY InterdictID DESC');
    Active := True;
    qrydecExt.FieldByName('FormInfoID2').AsInteger := Fields[0].AsInteger;
    Active := False;
  end; // with
end;

procedure TMissionItemsF.srcdecExtStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qrydecExt.State in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  DataSetDelete1.Visible := okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
  FreeReservedCodes(DMf.adcSalary);

end;

procedure TMissionItemsF.qrydecExtAfterPost(DataSet: TDataSet);
begin
  inherited;
  if qryDecExtItems.State in dsEditModes then
    qryDecExtItems.Post;
  try
    qryDecExtItems.UpdateBatch(arAll);
    BigMessage('À»  ‘œ.', 1);
    DeleteDefault;
    qryDecExtItems.Requery;
  except
    warn('«‘ò«· œ— À» ');
  end; // try

end;

procedure TMissionItemsF.DeleteDefault;
begin
  with DMF.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text := 'DELETE FROM Pay.DecExtItems';
    SQL.Add('WHERE (DayQuntity IS NULL) OR (DayQuntity = 0)');
    ExecSQL;
  end; // with

end;

procedure TMissionItemsF.editData;
begin
  with qryLookUp do
    try
      First;
      DisableControls;
      while not eof do
      begin
        if not qryDecExtItems.Locate('SalaryID', FieldByName('FormInfoID')
          .AsInteger, []) then
        begin
          qryDecExtItems.Insert;
          qryDecExtItems.FieldByName('DecExtID').AsInteger :=
            qrydecExt.FieldByName('DecExtID').AsInteger;
          qryDecExtItems.FieldByName('DecExtItemID').AsInteger :=
            GetANewCode('','Pay.DecExtItems', 'DecExtItemID');
          qryDecExtItems.FieldByName('SalaryID').AsString :=
            qryLookUp.FieldByName('FormInfoID').AsString;;
        end; // if
        next;
      end; // while
    finally
      EnableControls;
    end; // try
end;

procedure TMissionItemsF.qrydecExtAfterEdit(DataSet: TDataSet);
begin
  inherited;
  editData;
end;

procedure TMissionItemsF.btnPersonelNoClick(Sender: TObject);
var
  Txt, TxtL1_L2: String;
  s: Boolean;
  Results: array [0 .. 8] of String;
begin
  inherited;
  TxtL1_L2 := ' name_L1, lastName_L1,  fatherName_L1';
  if optP.primaryLanguage <> 0 then
    TxtL1_L2 :=
      ' name_L1, name_L2, lastName_L1, lastName_L2, fatherName_L1, fatherName_L2';
  Txt := 'SELECT  PersonelNo,' + TxtL1_L2 + ', NationalID, IDNumber ' +
    'FROM         Pay.PersonelInfo ';
  // Txt:=Txt+IfThen(FilterStore,'AND (Recipts.StoreID BETWEEN '+IntToStr(myStore.code)+' AND '+IntToStr(myStore.code)+')','');
  if optP.primaryLanguage <> 0 then
    s := searchCode_ADOF.SearchCode2(DMf.adcSalary, '„‘Œ’«  Å—”‰·', Txt,
      ['‘„«—Â Å—”‰·', '‰«„ 1', '‰«„ 2', ' ‰«„ Œ«‰Ê«œêÌ 1', '‰«„ Œ«‰Ê«œêÌ 2',
      '‰«„ Åœ— 1', '‰«„ Åœ— 2', '‘„«—Â ‘‰«”‰«„Â', 'ﬂœ „·Ì'], Results,
      [10, 100, 100, 100, 100, 100, 100, 100, 50], alLeft)
  else
    s := searchCode_ADOF.SearchCode2(DMf.adcSalary, '„‘Œ’«  Å—”‰·', Txt,
      ['‘„«—Â Å—”‰·', '‰«„ ', ' ‰«„ Œ«‰Ê«œêÌ', '‰«„ Åœ—', '‘„«—Â ‘‰«”‰«„Â',
      'ﬂœ „·Ì'], Results, [10, 100, 100, 100, 100, 100], alLeft);
  if s then
  begin
    if not(qrydecExt.State in dsEditModes) then
      qrydecExt.Edit;
    qrydecExt['PersonelNo'] := Results[0];
  end; // if
end;

function TMissionItemsF.Calc_SumFileds(FiledName: String): Currency;
begin
  Result := 0;
  try
    with qryDecExtItems do
    begin
      First;
      while not eof do
      begin
        Result := Result + FieldByName(FiledName).AsCurrency;
        next;
      end; // while
    end; // with
  except
  end; // try
end;

procedure TMissionItemsF.qrydecExtBeforePost(DataSet: TDataSet);
begin
  inherited;
  if not FunctionDelete(qrydecExtPersonelNo.AsInteger, MonthNo) then
    Abort;

  DataSet.FieldByName('EmployeeAmount').AsCurrency := Calc_SumFileds('Amount');
  DataSet.FieldByName('StartYear').AsInteger := yrcmbx1.YearID;
  DataSet.FieldByName('EndYear').AsInteger := yrcmbx1.YearID;
  if not ValidateDatasetDates(qrydecExt) then
    Abort;
  ValidateFormInfoID2;
  TrimStringFields(qrydecExt);
end;

function TMissionItemsF.ValidateFormInfoID2;
begin
  Result := True;
  With DMF.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text := 'SELECT COUNT(PersonelNO) ';
    SQL.Add('FROM Pay.PersonelDecExt');
    SQL.Add('WHERE (PersonelNo  = ' + qrydecExt.FieldByName('PersonelNo')
      .AsInteger.ToString + ') AND (FormInfoID2 = ' + qrydecExt.FieldByName
      ('FormInfoID2').AsInteger.ToString + ') AND (FormInfoID  = ' +
      qrydecExt.FieldByName('FormInfoID').AsInteger.ToString +
      ') AND (FirstMounth = ' + IntToStr(MonthNo) + ') AND (EndMounth   = ' +
      IntToStr(MonthNo) + ') AND (DecExtID   <> ' + qrydecExt.FieldByName
      ('DecExtID').AsInteger.ToString + ')');
    Active := True;
    if Fields[0].AsInteger = 0 then
      Exit;
    Result := False;
    warn2(' ⁄œ«œ „Ê—œ˛Â«Ì À»  ‘œÂ »—«Ì «Ì‰ Å—”‰·' + qrydecExt.FieldByName
      ('PersonelNo').AsString + qrydecExt.FieldByName('_PersonName_l1').AsString
      + ' »« «Ì‰ „Ê—œ  ' + IntToStr(Fields[0].AsInteger + 1) + ' ⁄œœ „Ì ‘Êœ ');
    Active := False;
  end;
end;

procedure TMissionItemsF.yrcmbx1YearChangeID(Sender: TObject);
begin
  inherited;
  with qrydecExt Do
  begin
    Active := False;
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Parameters.ParamByName('StartYear').Value := yrcmbx1.YearID;
    Active := True;
  end; // if

end;

procedure TMissionItemsF.qrydecExtAfterCancel(DataSet: TDataSet);
begin
  inherited;
  qryDecExtItems.Cancel;
  qryDecExtItems.Requery;
end;

procedure TMissionItemsF.DBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  // DisableKeyDown(Sender,key);
  // if (Key=13)and(DBGrid2.SelectedIndex=4)  then qryDecExtItems.Next
  // else DBGrid2.SelectedIndex:=4;
  // if (Key=107)and(qryDecExtItems.RecNo>1) then qryDecExtItems.Prior;
  // Key:=0;
end;

procedure TMissionItemsF.qrydecExtBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if not FunctionDelete(qrydecExtPersonelNo.AsInteger, MonthNo) then
    Abort;

  if get_response('¬Ì« »—«Ì Õ–› «Ì‰  „ÿ„∆‰ Â” Ìœø') <> mrYes then
    Abort;

end;

procedure TMissionItemsF.qryDecExtItemsAfterEdit(DataSet: TDataSet);
begin
  inherited;
  qrydecExt.AfterEdit := nil;
  qrydecExt.Edit;
  qrydecExt.AfterEdit := qrydecExtAfterEdit;
  if not(qrydecExt.State in dsEditModes) then
    qrydecExt.Edit;
  if qryDecExtItems.FieldByName('Rate').AsInteger = 0 then
    qryDecExtItems.FieldByName('Rate').AsInteger :=
      qryDecExtItems.FieldByName('_Amount').AsInteger;

end;

procedure TMissionItemsF.DBGrid2Enter(Sender: TObject);
begin
  inherited;
  DBGrid2.SelectedIndex := 3;
end;

procedure TMissionItemsF.btnFormInfoID2Click(Sender: TObject);
var
  Txt: String;
  s: Boolean;
  Results: array [0 .. 3] of String;
begin
  inherited;
  Txt := 'SELECT FormInfoID, InfoID, InfoName_L1, InfoName_L2 FROM Pay.FormsInfo ' +
    ' WHERE  FormType = ' + qryInitForm.FieldByName
    ('FormInfo4Function').AsString;
  s := searchCode_ADOF.SearchCode2(DMf.adcSalary, ' ﬂœ Ê ”ÿÕ ⁄‰Ê«‰ ﬁ»·Ì ', Txt,
    ['', 'ﬂœ', '⁄‰Ê«‰ 1', '⁄‰Ê«‰ 2'], Results, [0, 100, 200, 200], alLeft);
  if s then
  begin
    if not(qrydecExt.State in dsEditModes) then
      qrydecExt.Edit;
    qrydecExt.FieldByName('FormInfoID2').AsInteger := StrToInt(Results[0]);
  end; // if

end;

procedure TMissionItemsF.ppLblCompanyGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TMissionItemsF.ppLblReportNameGetText(Sender: TObject;
  var Text: String);
begin
  Inherited;
  Text := Caption;
end;

procedure TMissionItemsF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TMissionItemsF.ppSysVarPageNoGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TMissionItemsF.ppLabel1GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := Text + ' ' + qrydecExt.FieldByName('FormInfoID2').AsString + ' ' +
    qrydecExt.FieldByName('_projectname_L1').AsString;
end;

procedure TMissionItemsF.ppLabel3GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := qrydecExt.FieldByName('_projectname_L1').AsString + ' ' +
    qrydecExt.FieldByName('FormInfoID2').AsString;
end;

procedure TMissionItemsF.actGetExcelExecute(Sender: TObject);
begin
  inherited;
  try
    qrydecExt.AfterPost := nil;
    GetExcel := True;
    GetExcelMasterDetailsF.ShowImPortExcel(qrydecExt, qryDecExtItems);
  finally
    GetExcel := False;
    qrydecExt.AfterPost := qrydecExtAfterPost;
  end;
end;

procedure TMissionItemsF.actPrintExecute(Sender: TObject);
begin
  inherited;
  MakeMenuItem(Form_Type, AllClikPopClick, PopList4Print);
  try
    qrydecExt.DisableControls;
    PopList4Print.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
  finally
    qrydecExt.EnableControls;
  end;
end;

procedure TMissionItemsF.AllClikPopClick(Sender: TObject);
begin
  inherited;
  InitReportFile(ppReport1, (Sender as TMenuItem).Hint);
end;

procedure TMissionItemsF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qrydecExt);
end;

procedure TMissionItemsF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qrydecExt);

end;

procedure TMissionItemsF.actSend2ExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TMissionItemsF.qrydecExtAfterOpen(DataSet: TDataSet);
begin
  inherited;
  StatusBar1.Panels[3].Text := ' ⁄œ«œ=' + IntToStr(DataSet.RecordCount) + '  ';
end;

procedure TMissionItemsF.qrydecExtPersonelNoChange(Sender: TField);
begin
  inherited;
  GetAProjectID;
end;

procedure TMissionItemsF.qrydecExtDayQuntityChange(Sender: TField);
begin
  inherited;
  if not(qryDecExtItems.State in dsEditModes) then
    qryDecExtItems.Edit;
  qryDecExtItems.FieldByName('DayQuntity').AsFloat :=
    qrydecExt.FieldByName('DayQuntity').AsFloat;

end;

procedure TMissionItemsF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qrydecExt.FieldByName('PersonelNo'));
end;

procedure TMissionItemsF.DBEdit3Exit(Sender: TObject);
begin
  inherited;
  with qrydecExt do
  begin
    if (TopicKind = 1) or (TopicKind = 4) or (TopicKind = 6) then
      FieldByName('AccTopicCode').AsInteger := Calculate_AccCode(1, TopicKind,
        FieldByName('PersonelNo').AsInteger);
    if (DetailKind = 1) or (DetailKind = 4) or (DetailKind = 6) then
      FieldByName('AccDetailCode').AsInteger := Calculate_AccCode(2, DetailKind,
        FieldByName('PersonelNo').AsInteger);
    if (CTopicKind = 1) or (CTopicKind = 4) or (CTopicKind = 6) then
      FieldByName('AccCTopicCode').AsInteger := Calculate_AccCode(3, CTopicKind,
        FieldByName('PersonelNo').AsInteger);
    if (CTopicKind2 = 1) or (CTopicKind2 = 4) or (CTopicKind2 = 6) then
      FieldByName('AccCTopicCode2').AsInteger :=
        Calculate_AccCode(4, CTopicKind2, FieldByName('PersonelNo').AsInteger);
  end; // with
end;

procedure TMissionItemsF.DBEdit11Exit(Sender: TObject);
begin
  inherited;
  with qrydecExt do
  begin
    if (TopicKind = 3) then
      FieldByName('AccTopicCode').AsInteger := Calculate_AccCode(1, TopicKind,
        FieldByName('FormInfoID2').AsInteger);
    if (DetailKind = 3) then
      FieldByName('AccDetailCode').AsInteger := Calculate_AccCode(2, DetailKind,
        FieldByName('FormInfoID2').AsInteger);
    if (CTopicKind = 3) then
      FieldByName('AccCTopicCode').AsInteger := Calculate_AccCode(3, CTopicKind,
        FieldByName('FormInfoID2').AsInteger);
    if (CTopicKind2 = 3) then
      FieldByName('AccCTopicCode2').AsInteger :=
        Calculate_AccCode(4, CTopicKind2, FieldByName('FormInfoID2').AsInteger);
  end; // with
end;

procedure TMissionItemsF.BitBtn10Click(Sender: TObject);
begin
  inherited;
  AccountpF.Enter(qrydecExt);
end;

procedure TMissionItemsF.qryDecExtItemsBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if not(qrydecExt.State in dsEditModes) then
    qrydecExt.Edit;

end;

procedure TMissionItemsF.qryDecExtItemsBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if not(qrydecExt.State in dsEditModes) then
    qrydecExt.Edit;
end;

procedure TMissionItemsF.qryDecExtItemsBeforePost(DataSet: TDataSet);
var
  Mission4Manage: Real48;
begin
  inherited;
  if qryDecExtItems.FieldByName('SalaryID').IsNull then
  begin
    qryDecExtItems.Cancel;
    Abort;
  end;
  case qryDecExtItems.FieldByName('_CalCulateType').AsInteger of
    0:
      begin
        if qryDecExtItems.FieldByName('_Coefficient').AsFloat > 0 then
          with qryDecExtItems do
          begin
            Mission4Manage :=
              StrToInt(CurrToStr(CalcSumFileds(FieldByName('Amount'))));
            Mission4Manage := Mission4Manage - qryDecExtItems.FieldByName
              ('Amount').AsInteger;
            Mission4Manage :=
              (Mission4Manage * qryDecExtItems.FieldByName('_Coefficient')
              .AsInteger * qryDecExtItems.FieldByName('DayQuntity').AsFloat *
              qryDecExtItems.FieldByName('Rate').AsInteger);
            Mission4Manage := RoundTo(Mission4Manage / 100, 0);
          end // with
        else
          Mission4Manage := qryDecExtItems.FieldByName('Rate').AsInteger *
            qryDecExtItems.FieldByName('DayQuntity').AsFloat;
        qryDecExtItems.FieldByName('Amount').AsCurrency := Mission4Manage;

      end;

    1, 6:
      begin
        With DMF.qryTmpTmpp do
        begin
          Active := False;
          SQL.Text := 'SELECT SUM(InterdictItems.Amount)  AS Amount';
          SQL.Add('FROM Pay.Interdicts INNER JOIN');
          SQL.Add('Pay.InterdictItems ON Pay.Interdicts.InterdictID = InterdictItems.InterdictID INNER JOIN  FormsInfo INNER JOIN');
          SQL.Add(' Pay.SalaryRange ON FormsInfo.FormInfoID = SalaryRange.FormInfoID ON InterdictItems.SalaryID = SalaryRange.SalaryID');
          SQL.Add('WHERE (Interdicts.PersonelNo  = ' +
            IntToStr(qrydecExt.FieldByName('PersonelNo').AsInteger) + ')');
          SQL.Add('and (FormsInfo.FormType = 38) AND (InterdicType = 0 ) AND  (Interdicts.State < 50)');
          SQL.Add('AND (FormsInfo.FormInfoID = ' +
            IntToStr(qryDecExtItems.FieldByName('SalaryID').AsInteger) + ')');
          Active := True;
          Mission4Manage := FieldByName('Amount').AsInteger;
          Active := False;
        end; // With
        With qryDecExtItems do
        begin
          FieldByName('Amount').AsFloat := Mission4Manage *
            FieldByName('_StandardDays').AsFloat;
          if qryDecExtItems.FieldByName('Rate').AsInteger <> 0 then
            FieldByName('Amount').AsFloat := FieldByName('Amount').AsFloat /
              qryDecExtItems.FieldByName('Rate').AsInteger;
          FieldByName('Amount').AsFloat :=
            RoundTo(FieldByName('Amount').AsFloat * FieldByName('DayQuntity')
            .AsFloat, 0)
        end; // With
      end;
    4:
      begin
        With qryDecExtItems do
        begin
          FieldByName('Amount').AsFloat :=
            RoundTo(qryDecExtItems.FieldByName('Rate').AsInteger *
            FieldByName('DayQuntity').AsFloat, 0)
        end; // With
      end;
  end;

end;

procedure TMissionItemsF.DBEdit_All_KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_SPACE then
    TSpeedButton(FindComponent('btn' + (Sender as TDBEdit).DataField)).Click
end;

procedure TMissionItemsF.btnEarthCodeClick(Sender: TObject);
var
  b: Boolean;
  Results: array [0 .. 2] of String;
begin
  inherited;
  b := searchCode_ADOF.SearchCode2(DMf.adcSalary, lblEarthCode.Caption,
    'SELECT      InfoID, InfoName_L1, InfoName_L2 ' +
    'FROM Pay.FormsInfo WHERE     (FormType = 69) ',
    ['ﬂœ', '⁄‰Ê«‰', 'EarthCode'], Results, [20, 100, 100], alLeft);
  if b then
  begin
    if not(qrydecExt.State in dsEditModes) then
      qrydecExt.Edit;
    qrydecExt.FieldByName('EarthCode').AsString := Results[0];
  end;
end;

procedure TMissionItemsF.btnProcCodeClick(Sender: TObject);
var
  b: Boolean;
  Results: array [0 .. 2] of String;
begin
  inherited;
  b := searchCode_ADOF.SearchCode2(DMf.adcSalary, lblProcCode.Caption,
    'SELECT     InfoID, InfoName_L1, InfoName_L2 ' +
    'FROM Pay.FormsInfo WHERE     (FormType = 67) ',
    ['ﬂœ', '⁄‰Ê«‰', 'ProcCode'], Results, [20, 100, 100], alLeft);
  if b then
  begin
    if not(qrydecExt.State in dsEditModes) then
      qrydecExt.Edit;
    qrydecExt.FieldByName('ProcCode').AsString := Results[0];
  end;
end;

procedure TMissionItemsF.qryDecExtItemsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if GetExcel then
  begin
    qryDecExtItems.FieldByName('DecExtID').AsInteger :=
      qrydecExt.FieldByName('DecExtID').AsInteger;
    qryDecExtItems.FieldByName('DecExtItemID').AsInteger :=
      GetANewCode('','Pay.DecExtItems', 'DecExtItemID');
    qryDecExtItems.FieldByName('SalaryID').AsString :=
      qryLookUp.FieldByName('FormInfoID').AsString;;
  end;
  qryDecExtItems.FieldByName('Rate').AsInteger :=
    qryDecExtItems.FieldByName('_Amount').AsInteger;
end;

procedure TMissionItemsF.qrydecExtAfterClose(DataSet: TDataSet);
begin
  inherited;
  qryDecExtItems.Close
end;

procedure TMissionItemsF.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  gridkeyenter(Sender, Key);
end;

procedure TMissionItemsF.gridkeyenter(Sender: TObject; var Key: Char);
var
  nextIndex: Integer;
  curIndex: Integer;
  aDataSet: TDataSet;
  // c:  String;
begin
  curIndex := (Sender as TCedarDbgrid).SelectedIndex;
  nextIndex := curIndex;
  case Key of
    #13:
      begin
        if shiftDown then
          Exit;
        aDataSet := (Sender as TCedarDbgrid).DataSource.DataSet;
        Key := #0;
        case curIndex of
          0:
            nextIndex := 3;
          1:
            nextIndex := 3;
          2:
            nextIndex := 3;
          3:
            nextIndex := 4;
          4:
            nextIndex := -1;
          5:
            nextIndex := -1;
        end; // case
      end; // #13
    '+':
      begin
        Key := #0;
        nextIndex := curIndex - 1;
        while (nextIndex >= 0) and (not(DBGrid2.Columns[nextIndex].Visible) OR
          (DBGrid2.Columns[nextIndex].ReadOnly)) do
          Dec(nextIndex);
        if nextIndex < 0 then
          nextIndex := -3;
      end; // +
    '*':
      begin
        Key := #0;
        SendKeys('000', False);
      end; // *
    #27:
      if (Sender as TCedarDbgrid).DataSource.DataSet.State in dsEditModes then
        (Sender as TCedarDbgrid).DataSource.DataSet.Cancel;
      // #32,#157:  if curIndex in [1..4] then begin
      // key:=#0;
      /// /      DBGrid1EditButtonClick(sender);
      // end;//if
    end; // case
    if nextIndex >= 0 then
      while (nextIndex < DBGrid2.Columns.Count) and
        (not(DBGrid2.Columns[nextIndex].Visible) OR
        (DBGrid2.Columns[nextIndex].ReadOnly)) do
        Inc(nextIndex);
    if nextIndex >= (Sender as TCedarDbgrid).Columns.Count then
      nextIndex := -1;
    if (curIndex <> nextIndex) then
      case nextIndex of
        - 1:
          begin
            sendkey(vk_down, [], False);
            (Sender as TCedarDbgrid).SelectedIndex := 2;
          end; // 0
        -2:
          begin
            if (Sender as TCedarDbgrid).DataSource.State in dsEditModes then
              (Sender as TCedarDbgrid).DataSource.DataSet.Cancel;
            Perform(WM_NEXTDLGCTL, 0, 0);
          end; // -2
        -3:
          begin
            if (Sender as TCedarDbgrid).DataSource.State in dsEditModes then
              (Sender as TCedarDbgrid).DataSource.DataSet.Cancel;
            Perform(WM_NEXTDLGCTL, 1, 0);
          end; // -3
      else
        (Sender as TCedarDbgrid).SelectedIndex := nextIndex;
  end; // case

end;

end.
