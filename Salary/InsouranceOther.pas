// Mostafa
unit InsouranceOther;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, Grids, Vcl.DBGrids, Mask, DBCtrls, ComCtrls, ToolWin, DB, ADODB,
  Menus, ppBands, ppClass, ppCtrls, ppVar, ppPrnabl, ppCache, ppProd,
  ppReport, ppDB, ppComm, ppRelatv, ppDBPipe, MyComboBoxUnit, ppParameter,
  ppDesignLayer, System.ImageList, System.Actions;

type
  TInsouranceOtherF = class(Ttemplate2MDIF)
    Panel1: TPanel;
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
    qryDecExtItems: TADOQuery;
    srcDecExtItems: TDataSource;
    qryDecExtItemsDecExtID: TIntegerField;
    qryDecExtItemsSalaryID: TIntegerField;
    qryDecExtItemsAmount: TBCDField;
    qryLookUp: TADOQuery;
    qryDecExtItems_Object: TStringField;
    qryDecExtItems_Object2: TStringField;
    qryLookUpFormInfoID: TIntegerField;
    qryLookUpInfoID: TIntegerField;
    qryLookUpFormType: TSmallintField;
    qryLookUpInfoName_L1: TStringField;
    qryLookUpInfoName_L2: TStringField;
    newPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    qryLookUpAmount: TBCDField;
    qryDecExtItems_Amount2: TCurrencyField;
    DBGrid1: TDBGrid;
    qryDecExtItemsDecExtItemID: TIntegerField;
    PersonelInfo: TADOQuery;
    qrydecExt_PersonName1: TStringField;
    qrydecExt_PersonName_L22: TStringField;
    DBGrid2: TDBGrid;
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
    qrydecExtAccCTopicCode3: TIntegerField;
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
    qryMasterStandardDays: TFloatField;
    qrydecExt_StateName_L1: TStringField;
    PnlProject: TPanel;
    Label7: TLabel;
    btnFormInfoID2: TSpeedButton;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    Panel5: TPanel;
    Label2: TLabel;
    lblEmployeeName_L1: TLabel;
    lblEmployeeName_L2: TLabel;
    SpeedButton2: TSpeedButton;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit9: TDBEdit;
    Label12: TLabel;
    DBEdtState: TDBEdit;
    Panel6: TPanel;
    Label6: TLabel;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    lblAidDate1: TLabel;
    Panel7: TPanel;
    DBEdit6: TDBEdit;
    Label4: TLabel;
    Panel8: TPanel;
    lblEmployeeAmount: TLabel;
    SpeedButton16: TSpeedButton;
    dbedtEmployeeAmount: TDBEdit;
    DBNavigator2: TDBNavigator;
    BitBtn10: TBitBtn;
    qrydecExtYearID: TIntegerField;
    qrydecExtStartYear: TIntegerField;
    qrydecExtEndYear: TIntegerField;
    GrpBoxLimit: TGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    Label8: TLabel;
    Label18: TLabel;
    DBEdit11: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit23: TDBEdit;
    yrcmbx1: TYearComboBox;
    qryDecExtItemsDayQuntity: TFloatField;
    qrydecExtNote_L1: TWideStringField;
    qrydecExtNote_L2: TWideStringField;
    procedure qryMasterAfterScroll(DataSet: TDataSet);
    procedure ToolButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid2EditButtonClick(Sender: TObject);
    procedure qrydecExtAfterScroll(DataSet: TDataSet);
    procedure qrydecExtAfterInsert(DataSet: TDataSet);
    procedure srcdecExtStateChange(Sender: TObject);
    procedure qrydecExtAfterPost(DataSet: TDataSet);
    procedure qrydecExtAfterEdit(DataSet: TDataSet);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure qrydecExtBeforePost(DataSet: TDataSet);
    procedure qryDecExtItemsDayQuntityChange(Sender: TField);
    procedure qrydecExtAfterCancel(DataSet: TDataSet);
    procedure FormResize(Sender: TObject);
    procedure DBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qrydecExtBeforeDelete(DataSet: TDataSet);
    procedure DBEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryDecExtItemsAfterEdit(DataSet: TDataSet);
    procedure DBGrid2Enter(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
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
    procedure btnFormInfoID2Click(Sender: TObject);
    procedure yrcmbx1YearChangeID(Sender: TObject);
  private
    MonthNo: Byte;
    FormType: Byte;
    TopicKind, DetailKind, CTopicKind, CTopicKind2, CTopicKind3: Byte;
    InsouranceOtherKind: Boolean;
    procedure initForm;
    procedure updateList;
    procedure DefaultData;
    procedure editData;
    procedure DeleteDefault;
    function CalcSumFileds(FiledName: String): Currency;
    procedure GetAProjectID;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  InsouranceOtherF: TInsouranceOtherF;

implementation

uses DM, GlobalPro, searchCode_ADO, search2,
  mmessage, SalaryFunctions, sort2,  AccountP;

{$R *.dfm}
{ Ttemplate2MDIF1 }

procedure TInsouranceOtherF.initForm;
begin
  with qryInitForm do
  begin
    Active := False;
    Parameters.ParamByName('FormType').Value := FormType;
    Active := True;
    TopicKind := FieldByName('TopicCodeKind').AsInteger;
    DetailKind := FieldByName('DetailCodeKind').AsInteger;
    CTopicKind := FieldByName('CTopicCodeKind').AsInteger;
    CTopicKind2 := FieldByName('CTopicCode2Kind').AsInteger;

    yrcmbx1.YearsParam := APPBank.Year;
    yrcmbx1.YearID := APPBank.Year;

    with qryMaster do
    begin
      Active := False;
      Parameters.ParamByName('type').Value :=
        qryInitForm.FieldByName('FormType').AsInteger;
      Active := True;
    end; // with qryMaster
    Caption := FieldByName('FormCaption_L1').AsString;
    // -----------------------------Set Label-------------------------------------
    // lblAidNo1.Caption:=' ‘„«—Â '+fieldbyname('AidInfo1Caption').AsString;
    lblAidDate1.Caption := '  «—ÌŒ ' + FieldByName('AidInfo1Caption').AsString;
    // lblAidNo2.Caption:=' ‘„«—Â '+fieldbyname('AidInfo2Caption').AsString;
    // lblAidDate2.Caption:='  «—ÌŒ  '+fieldbyname('AidInfo2Caption').AsString;

    // qrydecExt.FieldByName('AidNo1').DisplayLabel:=lblAidNo1.Caption;
    qrydecExt.FieldByName('AidDate1').DisplayLabel := lblAidDate1.Caption;

    // qrydecExt.FieldByName('AidNo2').DisplayLabel:=lblAidNo2.Caption;
    // qrydecExt.FieldByName('AidDate2').DisplayLabel:=lblAidDate2.Caption;
    // ------------------------------set Panel-------------------------------------
    // pnlAidNo1.Visible:=FieldByName('AidInfoNo1Active').Value=1;
    // pnlAidDate1.Visible:=FieldByName('AidInfoDate1Active').Value=1;
    // pnlAidNo2.Visible:=FieldByName('AidInfoNo2Active').Value=1;
    // pnlAidDate2.Visible:=FieldByName('AidInfoDate2Active').Value=1;

  end; // with initForm
  qryDecExtItems.Active := True;
  if optP.primaryLanguage = 1 then
    edtCaption.DataField := 'InfoName_L1';
  if optP.primaryLanguage = 2 then
    edtCaption.DataField := 'InfoName_L2';

end;

procedure TInsouranceOtherF.qryMasterAfterScroll(DataSet: TDataSet);
begin
  inherited;
  InsouranceOtherKind := DataSet.FieldByName('StandardDays').AsInteger = 1;
  lblEmployeeAmount.Visible := not InsouranceOtherKind;
  dbedtEmployeeAmount.Visible := not InsouranceOtherKind;
  setColumns2(DBGrid2, not InsouranceOtherKind, 'Amount');
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

procedure TInsouranceOtherF.updateList;
begin
  qryDecExtItems.Active := False;
  with qrydecExt do
  begin
    Active := False;
    Parameters.ParamByName('FInfoId').Value :=
      qryMaster.FieldByName('FormInfoID').AsInteger;
    Parameters.ParamByName('Mounth').Value := MonthNo;
    Parameters.ParamByName('Years').Value := yrcmbx1.YearID;
    Active := True;
  end; // with
end;

procedure TInsouranceOtherF.yrcmbx1YearChangeID(Sender: TObject);
begin
  inherited;
  with qrydecExt Do
  begin
    Active := False;
    Parameters.ParamByName('Years').Value := yrcmbx1.YearID;
    if qryMaster.Active then
      Active := True;
  end; // if

end;

procedure TInsouranceOtherF.ToolButton1Click(Sender: TObject);
begin
  inherited;
  MonthNo := (Sender as TToolButton).tag;    GetYearMounth(MonthNo);
  updateList;
end;

procedure TInsouranceOtherF.FormCreate(Sender: TObject);
begin
  inherited;
  FormType := var_glb_gParam;
  MonthNo := var_glb_CurrentMonth;
  if MonthNo < 1 then
    MonthNo := 1;
  ToolBar1.Buttons[MonthNo - 1].Down := True;
  initForm;
end;

procedure TInsouranceOtherF.DBGrid2EditButtonClick(Sender: TObject);
var
  c: String;
begin
  inherited;
  case (Sender as TDBGrid).SelectedIndex of
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

procedure TInsouranceOtherF.qrydecExtAfterScroll(DataSet: TDataSet);
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

procedure TInsouranceOtherF.DefaultData;
begin
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
    end; // try
  end; // with

end;

procedure TInsouranceOtherF.qrydecExtAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('DecExtID').AsInteger := GetANewCode('','Pay.PersonelDecExt',
    'DecExtID');
  DataSet.FieldByName('FirstMounth').AsInteger := MonthNo;
  DataSet.FieldByName('EndMounth').AsInteger := 12;
  DataSet.FieldByName('FormInfoID').AsInteger :=
    qryMaster.FieldByName('FormInfoID').AsInteger;

  DataSet.FieldByName('YearID').AsInteger := APPBank.Year;
  DataSet.FieldByName('StartYear').AsInteger := yrcmbx1.YearID;
  DataSet.FieldByName('EndYear').AsInteger := yrcmbx1.YearID;

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

  if (CTopicKind3 = 2) or (CTopicKind3 = 5) then
    DataSet.FieldByName('AccCTopicCode3').AsInteger :=
      Calculate_AccCode(5, CTopicKind3, qryMaster.FieldByName('FormInfoID')
      .AsInteger);

  DBEdit3.SetFocus;
end;

procedure TInsouranceOtherF.GetAProjectID;
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

procedure TInsouranceOtherF.srcdecExtStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qrydecExt.State in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  DataSetDelete1.Visible := okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
  FreeReservedCodes(DMf.adcSalary);
end;

procedure TInsouranceOtherF.qrydecExtAfterPost(DataSet: TDataSet);
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

procedure TInsouranceOtherF.DeleteDefault;
begin
  with DMF.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text := 'DELETE FROM Pay.DecExtItems';
    SQL.Add('WHERE (DayQuntity IS NULL)'); // OR (DayQuntity = 0)
    ExecSQL;
  end; // with
end;

procedure TInsouranceOtherF.editData;
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

procedure TInsouranceOtherF.qrydecExtAfterEdit(DataSet: TDataSet);
begin
  inherited;
  editData;
end;

procedure TInsouranceOtherF.SpeedButton2Click(Sender: TObject);
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

function TInsouranceOtherF.CalcSumFileds(FiledName: String): Currency;
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

procedure TInsouranceOtherF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1, IntToStr(FormType));
  SaveColWidth(DBGrid2, IntToStr(FormType));

end;

procedure TInsouranceOtherF.qrydecExtBeforePost(DataSet: TDataSet);
begin
  inherited;
  if not InsouranceOtherKind then
    DataSet.FieldByName('EmployeeAmount').AsCurrency := CalcSumFileds('Amount');
  if not ValidateDatasetDates(qrydecExt) then
    Abort;
  TrimStringFields(qrydecExt);
end;

procedure TInsouranceOtherF.qryDecExtItemsDayQuntityChange(Sender: TField);
begin
  inherited;
  if not InsouranceOtherKind then
    qryDecExtItems.FieldByName('Amount').AsCurrency :=
      qryDecExtItems.FieldByName('_Amount').AsCurrency * Sender.AsInteger;
end;

procedure TInsouranceOtherF.qrydecExtAfterCancel(DataSet: TDataSet);
begin
  inherited;
  qryDecExtItems.Cancel;
  qryDecExtItems.Requery;

end;

procedure TInsouranceOtherF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1, True, IntToStr(FormType));
  SetColSize(DBGrid2, 1, True, IntToStr(FormType));

end;

procedure TInsouranceOtherF.DBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  DisableKeyDown(Sender, Key);

end;

procedure TInsouranceOtherF.qrydecExtBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('¬Ì« »—«Ì Õ–› «Ì‰  „ÿ„∆‰ Â” Ìœø') <> mrYes then
    Abort;

end;

procedure TInsouranceOtherF.DBEdit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    SpeedButton2.Click;

end;

procedure TInsouranceOtherF.qryDecExtItemsAfterEdit(DataSet: TDataSet);
begin
  inherited;
  qrydecExt.AfterEdit := nil;
  qrydecExt.Edit;
  qrydecExt.AfterEdit := qrydecExtAfterEdit;
end;

procedure TInsouranceOtherF.DBGrid2Enter(Sender: TObject);
begin
  inherited;
  DBGrid2.SelectedIndex := 3;
end;

procedure TInsouranceOtherF.SpeedButton3Click(Sender: TObject);

var
  Txt: String;
  s: Boolean;
  Results: array [0 .. 3] of String;
begin
  inherited;
  Txt := 'SELECT FormInfoID, InfoID, InfoName_L1, InfoName_L2 FROM Pay.FormsInfo '
    + ' WHERE  FormType = ' + qryInitForm.FieldByName
    ('FormInfo4Function').AsString;
  s := searchCode_ADOF.SearchCode2(DMf.adcSalary, ' ﬂœ Ê ”ÿÕ ⁄‰Ê«‰ ﬁ»·Ì ', Txt,
    ['”—Ì«·', 'ﬂœ', '⁄‰Ê«‰ 1', '⁄‰Ê«‰ 2'], Results, [50, 50, 100, 100], alLeft);
  if s then
  begin
    if not(qrydecExt.State in dsEditModes) then
      qrydecExt.Edit;
    qrydecExt.FieldByName('FormInfoID2').AsInteger := StrToInt(Results[0]);
  end; // if
end;

procedure TInsouranceOtherF.ppLblCompanyGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TInsouranceOtherF.ppLblReportNameGetText(Sender: TObject;
  var Text: String);
begin
  Inherited;
  Text := Caption;
end;

procedure TInsouranceOtherF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TInsouranceOtherF.ppSysVarPageNoGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TInsouranceOtherF.ppLabel1GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := Text + ' ' + qrydecExt.FieldByName('FormInfoID2').AsString + ' ' +
    qrydecExt.FieldByName('_projectname_L1').AsString;
end;

procedure TInsouranceOtherF.ppLabel3GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := qrydecExt.FieldByName('_projectname_L1').AsString + ' ' +
    qrydecExt.FieldByName('FormInfoID2').AsString;
end;

procedure TInsouranceOtherF.actPrintExecute(Sender: TObject);
begin
  inherited;
  // MissionItemsFold.rtm
  // MissionItemsF.rtm
  // MissionItemsF 2.rtm
  // MissionItemsF 1.rtm
  MakeMenuItem(FormType, AllClikPopClick, PopList4Print);
  try
    qrydecExt.DisableControls;
    PopList4Print.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
  finally
    qrydecExt.EnableControls;
  end;
end;

procedure TInsouranceOtherF.AllClikPopClick(Sender: TObject);
begin
  inherited;
  InitReportFile(ppReport1, (Sender as TMenuItem).Hint);
end;

procedure TInsouranceOtherF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qrydecExt);
end;

procedure TInsouranceOtherF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qrydecExt);

end;

procedure TInsouranceOtherF.actSend2ExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TInsouranceOtherF.qrydecExtAfterOpen(DataSet: TDataSet);
begin
  inherited;
  StatusBar1.Panels[3].Text := ' ⁄œ«œ=' + IntToStr(DataSet.RecordCount) + '  ';
end;

procedure TInsouranceOtherF.qrydecExtPersonelNoChange(Sender: TField);
begin
  inherited;
  GetAProjectID;

end;

procedure TInsouranceOtherF.qrydecExtDayQuntityChange(Sender: TField);
begin
  inherited;
  if not(qryDecExtItems.State in dsEditModes) then
    qryDecExtItems.Edit;
  qryDecExtItems.FieldByName('DayQuntity').AsInteger :=
    qrydecExt.FieldByName('DayQuntity').AsInteger;

end;

procedure TInsouranceOtherF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qrydecExt.FieldByName('PersonelNo'));
end;

procedure TInsouranceOtherF.DBEdit3Exit(Sender: TObject);
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

    if (CTopicKind3 = 1) or (CTopicKind3 = 4) or (CTopicKind3 = 6) then
      FieldByName('AccCTopicCode3').AsInteger :=
        Calculate_AccCode(5, CTopicKind3, FieldByName('PersonelNo').AsInteger);

  end; // with
end;

procedure TInsouranceOtherF.DBEdit11Exit(Sender: TObject);
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

    if (CTopicKind3 = 3) then
      FieldByName('AccCTopicCode3').AsInteger :=
        Calculate_AccCode(5, CTopicKind3, FieldByName('FormInfoID2').AsInteger);

  end; // with
end;

procedure TInsouranceOtherF.BitBtn10Click(Sender: TObject);
begin
  inherited;
  AccountpF.Enter(qrydecExt);
end;

procedure TInsouranceOtherF.btnFormInfoID2Click(Sender: TObject);
var
  Txt: String;
  b: Boolean;
  Results: array [0 .. 3] of String;
begin
  inherited;
  Txt := 'SELECT FormInfoID, InfoID, InfoName_L1, InfoName_L2 FROM Pay.FormsInfo '
    + ' WHERE  FormType = ' + qryInitForm.FieldByName
    ('FormInfo4Function').AsString;
  b := searchCode_ADOF.SearchCode2(DMf.adcSalary, ' ﬂœ Ê ”ÿÕ ⁄‰Ê«‰ ﬁ»·Ì ', Txt,
    ['”—Ì«·', 'ﬂœ', '⁄‰Ê«‰ 1', '⁄‰Ê«‰ 2'], Results, [50, 50, 100, 100], alLeft);
  if b then
  begin
    if not(qrydecExt.State in dsEditModes) then
      qrydecExt.Edit;
    qrydecExt.FieldByName('FormInfoID2').AsInteger := StrToInt(Results[0]);
  end; // if
end;

end.
