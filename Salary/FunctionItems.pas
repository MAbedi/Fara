unit FunctionItems;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, DBCtrls, StdCtrls, Mask, Buttons, Grids, Vcl.DBGrids,
  ImgList, DBActns, ActnList, ExtCtrls, ComCtrls, ToolWin, DB, ADODB, StrUtils,
  Menus, MyComboBoxUnit, System.ImageList, System.Actions, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, CedarDbGrid, Filter_ADO_Const;

type
  TFunctionItemsF = class(Ttemplate2MDIF)
    PnlRecall: TPanel;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBNavigator1: TDBNavigator;
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
    Panel1: TPanel;
    Panel5: TPanel;
    qryMaster: TADOQuery;
    qryMasterFormInfoID: TIntegerField;
    qryMasterFormType: TIntegerField;
    qryMasterInfoID: TIntegerField;
    qryMasterInfoName_L1: TStringField;
    qryMasterInfoName_L2: TStringField;
    SrcMaster: TDataSource;
    qryPersonel: TADOQuery;
    qryPersonelPersonelNo: TIntegerField;
    qryPersonelPersonName_L1: TStringField;
    qryPersonelPersonName_L2: TStringField;
    SrcPersonel: TDataSource;
    qryPersoneljobCode: TIntegerField;
    qryInitForm: TADOQuery;
    Label3: TLabel;
    DBEdit6: TDBEdit;
    SpeedButton2: TSpeedButton;
    Label4: TLabel;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    newPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn9: TBitBtn;
    Panel9: TPanel;
    Panel10: TPanel;
    lblColor1: TLabel;
    lbl1: TLabel;
    lblColor2: TLabel;
    lbl2: TLabel;
    qryFunctions: TADOQuery;
    SrcFunctions: TDataSource;
    qryFunctionsFunctionID: TIntegerField;
    qryFunctionsFormInfoID: TIntegerField;
    qryFunctionsMounth: TWordField;
    qryFunctionsPersonelNo: TIntegerField;
    qryFunctionsProjectID: TIntegerField;
    qryFunctionsJobCode: TIntegerField;
    srcFormsInfo: TDataSource;
    qryFunctionItems: TADOQuery;
    lblProject_L1: TLabel;
    Label5: TLabel;
    qryFunctions_projectname_L1: TStringField;
    qryFunctions_projectname_L2: TStringField;
    qryPersonelInfoID: TIntegerField;
    qryPersonelInfoName_L1: TStringField;
    qryPersonelInfoName_L2: TStringField;
    DBGrid2: TDBGrid;
    qryFormsInfo: TADOQuery;
    qryFormsInfoFormInfoID: TIntegerField;
    qryFormsInfoInfoID: TIntegerField;
    qryFormsInfoInfoName_L1: TStringField;
    qryFormsInfoInfoName_L2: TStringField;
    qryFormsInfoFday: TFloatField;
    qryFormsInfoFTime: TFloatField;
    DBEdit10: TDBEdit;
    lblProject_L2: TLabel;
    qryFormsInfo_Day: TFloatField;
    qryFormsInfo_Time: TFloatField;
    actSort: TAction;
    actSendToExcel: TAction;
    DBEdit5: TDBEdit;
    qryPersonelHasFunction: TIntegerField;
    qryPersonelOfficeCode: TIntegerField;
    qryPersonelInfoName_L1_1: TStringField;
    qryPersonelInfoName_L2_1: TStringField;
    actCalcAll: TAction;
    actFilter: TAction;
    BitBtn10: TBitBtn;
    qryPersonelEmployTypeID: TIntegerField;
    qryFunctionsOfficeCode: TIntegerField;
    qryFunctions_OfficeName_L1: TStringField;
    qryFunctions_OfficeName_L2: TStringField;
    Label6: TLabel;
    SpeedButton4: TSpeedButton;
    LblOfficeName_L1: TLabel;
    LblOfficeName_L2: TLabel;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    GroupBox1: TGroupBox;
    EdtStandardEmployAmount: TEdit;
    qryPersonelStandardEmployAmount: TBCDField;
    actAcc: TAction;
    qryFormsInfoAccTopicCode: TIntegerField;
    qryFormsInfoAccDetailCode: TIntegerField;
    qryFormsInfoAccCTopicCode: TIntegerField;
    qryFormsInfoAccCTopicCode2: TIntegerField;
    qryFormsInfo_AccTopicCode: TIntegerField;
    qryFormsInfoMaxDay: TFloatField;
    qryFormsInfoMaxTime: TFloatField;
    qryOfficeCode: TADOQuery;
    qryProjectID: TADOQuery;
    qryFunctions_ProjectID: TIntegerField;
    qryFunctions_OfficeCode: TIntegerField;
    qryFormsInfo_AccDetailCode: TIntegerField;
    qryFormsInfo_AccCTopicCode: TIntegerField;
    qryFormsInfo_AccCTopicCode2: TIntegerField;
    ChkAutoTime2Day: TCheckBox;
    qryPersonelFunCount: TIntegerField;
    qryPersonelInterdicEndDate: TStringField;
    lbl3EndDate: TLabel;
    LblEndDate: TLabel;
    qry4SendExcel: TADOQuery;
    WordField1: TWordField;
    IntegerField3: TIntegerField;
    IntegerField5: TIntegerField;
    IntegerField6: TIntegerField;
    StringField1: TStringField;
    IntegerField7: TIntegerField;
    StringField3: TStringField;
    qryFunctionsFunctionTime: TFloatField;
    qryFunctionItemsFunctionsItemsID: TIntegerField;
    qryFunctionItemsFunctionID: TIntegerField;
    qryFunctionItemsSalaryID: TIntegerField;
    qryFunctionItemsFDaily: TFloatField;
    qryFunctionItemsFHours: TFloatField;
    qryFunctionItemsAmount: TBCDField;
    qryFunctionItemsAccTopicCode: TIntegerField;
    qryFunctionItemsAccDetailCode: TIntegerField;
    qryFunctionItemsAccCTopicCode: TIntegerField;
    qryFunctionItemsAccCTopicCode2: TIntegerField;
    qry4SendExcelFunctionTime: TFloatField;
    qryFunctionsSickDay: TIntegerField;
    DBEdit15: TDBEdit;
    Label8: TLabel;
    ChkEndDate: TCheckBox;
    okPanel: TPanel;
    BitBtn8: TBitBtn;
    BitBtn18: TBitBtn;
    BitBtn11: TBitBtn;
    ActShowInterdict: TAction;
    ActPersonelInfoF: TAction;
    PopMnuOthers: TPopupMenu;
    ActShowInterdict1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    qryFunctionsFunctionDay: TFloatField;
    qryFunctionsYearID: TIntegerField;
    qryFunctionsYears: TIntegerField;
    yrcmbx1: TYearComboBox;
    qryFunctionsSituation: TWordField;
    actSetSelectedSituation0: TAction;
    actSetSelectedSituation1: TAction;
    actSetSelectedSituationAll0: TAction;
    actSetSelectedSituationAll1: TAction;
    mnuSetSelectedSituation0: TMenuItem;
    mnuSetSelectedSituation1: TMenuItem;
    mnuSetSelectedSituationAll0: TMenuItem;
    mnuSetSelectedSituationAll1: TMenuItem;
    mnuN4: TMenuItem;
    BitBtn7: TBitBtn;
    qry4SendExcelFunctionDay: TFloatField;
    qryPersonelInterdicStartDate: TStringField;
    qryFormsInfoFTimeH: TFloatField;
    qryFormsInfoFTimeM: TFloatField;
    qryPersonelfatherName_L1: TStringField;
    actDeleteAll: TAction;
    N4: TMenuItem;
    N5: TMenuItem;
    actTransferOfMonth: TAction;
    qryPersonellastName_L1: TStringField;
    qryPersonelFirstName_L1: TStringField;
    qryPersonelSituation: TWordField;
    Panel6: TPanel;
    DBEdit11: TDBEdit;
    SpeedButton3: TSpeedButton;
    DBEdit3: TDBEdit;
    Label2: TLabel;
    DBEdit4: TDBEdit;
    lblEmployeeName_L1: TLabel;
    DBEdit9: TDBEdit;
    lblEmployeeName_L2: TLabel;
    grpOffTime: TGroupBox;
    Panel7: TPanel;
    BitBtn12: TBitBtn;
    BitBtn1: TBitBtn;
    btnDeleteAll: TBitBtn;
    DBNavigator2: TDBNavigator;
    cmbOffTime: TComboBox;
    rgpOffTime: TRadioGroup;
    Label7: TLabel;
    BitBtn13: TBitBtn;
    qryOffTime: TADOQuery;
    qryOffTimePersonelNo: TIntegerField;
    qryOffTimeRemainDay: TFloatField;
    actOffTime: TAction;
    DBGrid1: TCedarDbgrid;
    procedure SpeedButton1Click(Sender: TObject);
    procedure ToolBar1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure qryMasterAfterScroll(DataSet: TDataSet);
    procedure qryPersonelAfterScroll(DataSet: TDataSet);
    procedure qryFunctionsAfterScroll(DataSet: TDataSet);
    procedure SpeedButton2Click(Sender: TObject);
    procedure qryFunctionsAfterInsert(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure qryFormsInfoAfterInsert(DataSet: TDataSet);
    procedure qryFunctionsAfterPost(DataSet: TDataSet);
    procedure qryFunctionsAfterEdit(DataSet: TDataSet);
    procedure qryFunctionsAfterCancel(DataSet: TDataSet);
    procedure SrcFunctionsStateChange(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure gridkeyenter(Sender: TObject; var key: char);
    procedure DBGrid2KeyPress(Sender: TObject; var key: char);
    procedure qryFunctionsAfterDelete(DataSet: TDataSet);
    procedure qryFunctionsBeforeDelete(DataSet: TDataSet);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DBEdit5KeyDown(Sender: TObject; var key: Word;
      Shift: TShiftState);
    procedure SpeedButton3Click(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var key: char);
    procedure actCalcAllExecute(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure actAccExecute(Sender: TObject);
    procedure qryFunctionsBeforePost(DataSet: TDataSet);
    procedure qryFormsInfoBeforePost(DataSet: TDataSet);
    procedure qryFunctionsFunctionTimeChange(Sender: TField);
    procedure ChkEndDateClick(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure ActShowInterdictExecute(Sender: TObject);
    procedure ActPersonelInfoFExecute(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure qryFunctionsBeforeEdit(DataSet: TDataSet);
    procedure actSetSelectedSituation0Execute(Sender: TObject);
    procedure actSetSelectedSituation1Execute(Sender: TObject);
    procedure actSetSelectedSituationAll0Execute(Sender: TObject);
    procedure actSetSelectedSituationAll1Execute(Sender: TObject);
    procedure qryFunctionsBeforeInsert(DataSet: TDataSet);
    procedure qryFormsInfoFTimeHChange(Sender: TField);
    procedure qryFormsInfoAfterScroll(DataSet: TDataSet);
    procedure actDeleteAllExecute(Sender: TObject);
    procedure actTransferOfMonthExecute(Sender: TObject);
    procedure LblEndDateClick(Sender: TObject);
    procedure lblColor2Click(Sender: TObject);
    procedure lblColor1Click(Sender: TObject);
    procedure qryPersonelSituationGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure BitBtn13Click(Sender: TObject);
    procedure actOffTimeExecute(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
  private
    { Private declarations }
    MonthNo: Byte;
    FormType: Byte;
    CalcAll4Message, AutoNext: Boolean;
    CurrentDate: String;
    DayStandard: Byte;
    Fday_Id, FTime_Id, Day_Id, Time_Id, FTimeH_Id, FTimeM_Id: Integer;
    procedure InitForm;
    procedure UpdateList;
    procedure GetAProject_OfficeID(Field_Name: String);
    procedure initcmbOffTime;

  public
    { Public declarations }
  end;

var
  FunctionItemsF: TFunctionItemsF;

implementation

uses searchCode_ADO, GlobalPro, DM, Math, search2, sort2,
  sndkey32, mmessage, filter_ADO, FilterClass_ADO, GetExcel,
  SalaryFunctions, main, Interdicts, PersonelInfo, FaraConsts, shamsiDate,
  mdiMain, AccountP;
{$R *.dfm}

procedure TFunctionItemsF.gridkeyenter(Sender: TObject; var key: char);
var
  nextIndex: Integer;
  curIndex: Integer;
  // aDataSet: TDataSet;
  // c:  String;
begin
  curIndex := (Sender as TDBGrid).SelectedIndex;
  nextIndex := curIndex;
  case key of
    #13:
      begin
        if shiftDown then
          exit;
        // aDataSet:=(Sender as TDBGrid).DataSource.DataSet;
        key := #0;
        case curIndex of
          0:
            nextIndex := 2;
          1:
            nextIndex := 2;
          2:
            nextIndex := 3;
          3:
            nextIndex := 4;
          4:
            nextIndex := 5;
          5:
            nextIndex := 6;
          6:
            nextIndex := 8;
          7:
            nextIndex := 8;
          8:
            nextIndex := -1;
        end; // case
      end; // #13
    '+':
      begin
        key := #0;
        nextIndex := curIndex - 1;
        while (nextIndex >= 0) and (not(DBGrid2.Columns[nextIndex].Visible) OR
          (DBGrid2.Columns[nextIndex].ReadOnly)) do
          Dec(nextIndex);
        if nextIndex < 0 then
          nextIndex := -3;
      end; // +
    '*':
      begin
        key := #0;
        SendKeys('000', false);
      end; // *
    #27:
      if (Sender as TDBGrid).DataSource.DataSet.State in dseditmodes then
        (Sender as TDBGrid).DataSource.DataSet.Cancel;
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
    if nextIndex >= (Sender as TDBGrid).Columns.Count then
      nextIndex := -1;
    if (curIndex <> nextIndex) then
      case nextIndex of
        - 1:
          begin
            sendkey(vk_down, [], false);
            (Sender as TDBGrid).SelectedIndex := 2;
          end; // 0
        -2:
          begin
            if (Sender as TDBGrid).DataSource.State in dseditmodes then
              (Sender as TDBGrid).DataSource.DataSet.Cancel;
            Perform(WM_NEXTDLGCTL, 0, 0);
          end; //
        -3:
          begin
            if (Sender as TDBGrid).DataSource.State in dseditmodes then
              (Sender as TDBGrid).DataSource.DataSet.Cancel;
            Perform(WM_NEXTDLGCTL, 1, 0);
          end; // -3
      else
        (Sender as TDBGrid).SelectedIndex := nextIndex;
  end; // case

end;

procedure TFunctionItemsF.SpeedButton1Click(Sender: TObject);
var
  Txt: String;
  s: Boolean;
  Results: array [0 .. 2] of String;
begin
  inherited;
  Txt := 'SELECT     FormInfoID,InfoID, InfoName_L1, InfoName_L2 ' +
    'FROM Pay.FormsInfo ' + 'WHERE (FormType = ' + qryInitForm.FieldByName
    ('RecallFormTypes').AsString + ') ';
  s := searchCode_ADOF.SearchCode2(DMF.adcSalary, ' سطح‏هاي قبلي  ', Txt,
    ['', 'كد', 'نام 1', 'نام 2'], Results, [0, 50, 100, 100], alLeft);
  if s then
    qryMaster.Locate('FormInfoID', Results[0], []);
end;

procedure TFunctionItemsF.InitForm;
begin
  cmbOffTime.Clear;
  yrcmbx1.YearsParam := APPBank.Year;
  yrcmbx1.YearID := APPBank.Year;

  with qryInitForm do
  begin
    Active := false;
    Parameters.ParamByName('FormType').Value := FormType;
    Active := true;
    lblCaption.Hint := FieldByName('FormType').AsString;
  end; // with

  with qryProjectID do
  begin
    Active := false;
    Parameters.ParamByName('FormType').Value :=
      qryInitForm.FieldByName('FormInfo4Function').AsInteger;
    // Active:=true;
  end; // with

  PnlRecall.Visible := qryInitForm.FieldByName('RecallFormTypes')
    .AsInteger <> 0;
  with qryMaster do
  begin
    Active := false;
    Parameters.ParamByName('RecallFormTypes').Value :=
      qryInitForm.FieldByName('RecallFormTypes').AsInteger;
    Active := true;
  end; // with  }
  // qryFunctions.Active:=true;
  // qryPersonel.Active:=true;
  // qryPersonel.First;
  if optP.primaryLanguage <> 0 then
  begin
    lblEmployeeName_L1.Visible := false;
    DBEdit4.Visible := false;
    lblProject_L1.Visible := false;
    DBEdit6.Visible := false;
  end
  else
  begin
    lblEmployeeName_L2.Visible := false;
    DBEdit9.Visible := false;
    lblProject_L2.Visible := false;
    DBEdit10.Visible := false;
  end; // if

end;

procedure TFunctionItemsF.lblColor1Click(Sender: TObject);
begin
  inherited;
  qryPersonel.Filter := ' HasFunction > 0';
  qryPersonel.Filtered := not qryPersonel.Filtered;

  lbl1.Caption := IfThen(qryPersonel.Filtered,
    lbl1.Hint + '=' + qryPersonel.RecordCount.ToString, lbl1.Hint);
end;

procedure TFunctionItemsF.lblColor2Click(Sender: TObject);
begin
  inherited;
  qryPersonel.Filter := ' HasFunction = 0';
  qryPersonel.Filtered := not qryPersonel.Filtered;
  lbl2.Caption := IfThen(qryPersonel.Filtered,
    lbl2.Hint + '=' + qryPersonel.RecordCount.ToString, lbl2.Hint);
end;

procedure TFunctionItemsF.LblEndDateClick(Sender: TObject);
begin
  inherited;
  qryPersonel.Filter := 'InterdicEndDate < ' + CurrentDate;
  qryPersonel.Filtered := not qryPersonel.Filtered;
  lbl3EndDate.Caption := IfThen(qryPersonel.Filtered, lbl3EndDate.Hint + '=' +
    qryPersonel.RecordCount.ToString, lbl3EndDate.Hint);
end;

procedure TFunctionItemsF.ToolBar1Click(Sender: TObject);
begin
  inherited;
  MonthNo := (Sender as TToolButton).tag;
  UpdateList;
end;

procedure TFunctionItemsF.actFilterExecute(Sender: TObject);
begin
  inherited;
  With TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItem(DMF.adcSalary, 'SubFunctionID', 'نوع كاركرد', 'نوع', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT InfoID,InfoName_L1 FROM Pay.FormsInfo WHERE (FormType = 70)',
        'SELECT MIN(InfoID), MAX(InfoID) FROM Pay.FormsInfo WHERE (FormType = 70)');

      AddItem(DMF.adcSalary, 'EmployTypeID', 'نوع حكم ', 'نوع', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT InfoID,InfoName_L1 FROM Pay.FormsInfo WHERE  (FormType = 14)',
        'SELECT MIN(InfoID), MAX(InfoID) FROM Pay.FormsInfo WHERE  (FormType = 14)');

      AddItemFilter(GetFilter, TPersonelNo);

      AddItem(DMF.adcSalary, 'OfficeCode', 'واحد سازماني', 'كد', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT Pay.FormsInfo.InfoID, Pay.FormsInfo.InfoName_L1' +
        ' FROM  Pay.FormsInfo  ' + ' WHERE (Pay.FormsInfo.FormType = 12) ',
        'SELECT  0, MAX(Pay.FormsInfo.InfoID) ' +
        ' FROM Pay.FormsInfo where  (Pay.FormsInfo.FormType = 12) ');
      AddItem(DMF.adcSalary, 'ProjectID', ' عنوان پروژه', 'كد', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT InfoID, InfoName_L1 FROM Pay.FormsInfo ' + ' WHERE FormType = '
        + qryInitForm.FieldByName('FormInfo4Function').AsString,
        'SELECT  0 , MAX(InfoID) FROM Pay.FormsInfo ' + ' WHERE FormType = ' +
        qryInitForm.FieldByName('FormInfo4Function').AsString);
      if ShowModal = mrOk then
      begin
        GetFilterString;
        with qryPersonel do
        begin
          Active := false;
          Parameters.ParamByName('OfficeCodeFrom').Value :=
            GetcFrom(myParams.ParamValues['OfficeCode'], ftInteger);
          Parameters.ParamByName('OfficeCodeTo').Value :=
            GetcTo(myParams.ParamValues['OfficeCode'], ftInteger);
          Parameters.ParamByName('PersonelNoFrom').Value :=
            GetcFrom(myParams.ParamValues['PersonelNo'], ftInteger);
          Parameters.ParamByName('PersonelNoTo').Value :=
            GetcTo(myParams.ParamValues['PersonelNo'], ftInteger);

          Parameters.ParamByName('EmployTypeIDFrom').Value :=
            GetcFrom(myParams.ParamValues['EmployTypeID'], ftInteger);
          Parameters.ParamByName('EmployTypeIDTo').Value :=
            GetcTo(myParams.ParamValues['EmployTypeID'], ftInteger);

          Parameters.ParamByName('ProjectIDFrom').Value :=
            GetcFrom(myParams.ParamValues['ProjectID'], ftInteger);
          Parameters.ParamByName('ProjectIDTo').Value :=
            GetcTo(myParams.ParamValues['ProjectID'], ftInteger);

          Parameters.ParamByName('SubFunctionIDFrom').Value :=
            GetcFrom(myParams.ParamValues['SubFunctionID'], ftInteger);
          Parameters.ParamByName('SubFunctionIDTo').Value :=
            GetcTo(myParams.ParamValues['SubFunctionID'], ftInteger);

          Parameters.ParamByName('CompanyCodeFrom').DataType := ftInteger;
          Parameters.ParamByName('CompanyCodeTo').DataType := ftInteger;
          if (CompanyFilterinLogin) and (not User.PowerAdmin) then
          begin
            Parameters.ParamByName('companyCodeFrom').Value :=
              FcompanyCodeLogin;
            Parameters.ParamByName('companyCodeTo').Value := FcompanyCodeLogin;

          end
          else
          begin
            Parameters.ParamByName('companyCodeFrom').Value := 0;
            Parameters.ParamByName('companyCodeTo').Value := 2147483647;
          end;

          Active := true;
        end; // with
      end; // if
    finally
      Free;
    end; // try
  end; // end
end;

procedure TFunctionItemsF.actOffTimeExecute(Sender: TObject);
begin
  inherited;
  grpOffTime.Visible := not grpOffTime.Visible
end;

procedure TFunctionItemsF.UpdateList;
var
  CurentPid: Integer;
  s: WideString;
begin
  GetYearMounth(MonthNo);
  DayStandard := StandardDays(MonthNo, CurrentDate);
  CurentPid := 0;
  if qryPersonel.Active then
    CurentPid := qryPersonel.FieldByName('PersonelNo').AsInteger;
  with qryPersonel do
  begin
    s := qryPersonel.Sort;
    Active := false;
    Parameters.ParamByName('Mounth').Value := MonthNo;
    Parameters.ParamByName('Date').Value := optP.YearMounth;
    // Parameters.ParamByName('Date').Value := IntToStr(yrcmbx1.YearID) + '/' +
    // RightStr ('00' + IntToStr(MonthNo), 2);
    Parameters.ParamByName('Years').Value := yrcmbx1.YearID;
    Parameters.ParamByName('CompanyCodeFrom').DataType := ftInteger;
    Parameters.ParamByName('CompanyCodeTo').DataType := ftInteger;
    if (CompanyFilterinLogin) and (not User.PowerAdmin) then
    begin
      Parameters.ParamByName('companyCodeFrom').Value := FcompanyCodeLogin;
      Parameters.ParamByName('companyCodeTo').Value := FcompanyCodeLogin;

    end
    else
    begin
      Parameters.ParamByName('companyCodeFrom').Value := 0;
      Parameters.ParamByName('companyCodeTo').Value := 2147483647;
    end;
    Active := true;
    qryPersonel.Sort := s;
  end; // with
  with qryFunctions do
  begin
    try
      DisableControls;
      Active := false;
      Parameters.ParamByName('Mo').Value := MonthNo;
      Parameters.ParamByName('EmployeeNo').Value :=
        qryPersonel.FieldByName('PersonelNo').AsInteger;
      checkArchiveID(MonthNo, qryFunctions);
      Parameters.ParamByName('Years').Value := yrcmbx1.YearID;
      Parameters.ParamByName('YearID').Value := APPBank.Year;
      Active := true;
    finally
      qryPersonel.Requery;
      EnableControls;
    end; // try
  end; // with
  if CurentPid <> 0 then
    qryPersonel.Locate('PersonelNo', CurentPid, []);
end;

procedure TFunctionItemsF.FormCreate(Sender: TObject);
begin
  inherited;
  AutoNext := true;
  yrcmbx1.YearsParam := APPBank.Year;
  yrcmbx1.YearID := APPBank.Year;
  CalcAll4Message := true;
  FormType := var_glb_gParam;
  MonthNo := var_glb_CurrentMonth;
  if MonthNo < 1 then
    MonthNo := 1;
  ToolBar1.Buttons[MonthNo - 1].Down := true;
  InitForm;
  ChkAutoTime2Day.Checked := StrToBool(ReadConfig(APPID, 'AutoTime2Day', '0'));

  Fday_Id := ColumnIndexByFieldName(DBGrid2, 'Fday');
  FTime_Id := ColumnIndexByFieldName(DBGrid2, 'FTime');
  FTimeH_Id := ColumnIndexByFieldName(DBGrid2, 'FTimeH');
  FTimeM_Id := ColumnIndexByFieldName(DBGrid2, 'FTimeM');
  Day_Id := ColumnIndexByFieldName(DBGrid2, '_Day');
  Time_Id := ColumnIndexByFieldName(DBGrid2, '_Time');

end;

procedure TFunctionItemsF.ToolButton1Click(Sender: TObject);
begin
  inherited;
  MonthNo := (Sender as TToolButton).tag;
  GetYearMounth(MonthNo);
  UpdateList;
end;

procedure TFunctionItemsF.qryMasterAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryFunctions do
  begin
    Active := false;
    Parameters.ParamByName('FormId').Value :=
      IfThen(qryMaster.FieldByName('FormInfoID').IsNull, 0,
      qryMaster.FieldByName('FormInfoID').AsInteger);
    Active := true;
  end; // with
end;

procedure TFunctionItemsF.qryPersonelAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if (qryFunctions.State in dseditmodes) then
    qryFunctions.Post;
  with qryFunctions do
  begin
    Active := false;
    Parameters.ParamByName('Mo').Value := MonthNo;
    Parameters.ParamByName('EmployeeNo').Value :=
      qryPersonel.FieldByName('PersonelNo').AsInteger;
    Parameters.ParamByName('Years').Value := yrcmbx1.YearID;
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Active := true;
    if IsEmpty then
    begin
      qryFunctionItems.Active := false;
      qryFunctionItems.Parameters.ParamByName('FunID').Value := 0;
      with qryFormsInfo do
      begin
        Active := false;
        Parameters.ParamByName('FormInfoID').Value :=
          qryPersonel.FieldByName('EmployTypeID').AsInteger;
        Active := true;
      end; // with
    end; // if
  end; // with
  EdtStandardEmployAmount.Text :=
    CurrToStrf(qryPersonel.FieldByName('StandardEmployAmount').AsCurrency *
    qryFunctions.FieldByName('FunctionTime').AsCurrency, ffCurrency, 0);

end;

procedure TFunctionItemsF.qryPersonelSituationGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text := GetSituation(Sender.AsInteger)
end;

procedure TFunctionItemsF.qryFunctionsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryFunctionItems do
  begin
    Active := false;
    Parameters.ParamByName('FunID').Value :=
      qryFunctions.FieldByName('FunctionID').AsInteger;
    Active := true;
  end; // with
  with qryFormsInfo do
  begin
    Active := false;
    Parameters.ParamByName('FormInfoID').Value :=
      qryPersonel.FieldByName('EmployTypeID').AsInteger;
    Active := true;
  end; // with
end;

procedure TFunctionItemsF.SpeedButton2Click(Sender: TObject);
var
  Txt: String;
  s: Boolean;
  Results: array [0 .. 3] of String;
begin
  inherited;
  Txt := 'SELECT FormInfoID,InfoID, InfoName_L1, InfoName_L2 FROM Pay.FormsInfo '
    + ' WHERE  FormType = ' + qryInitForm.FieldByName
    ('FormInfo4Function').AsString;
  s := searchCode_ADOF.SearchCode2(DMF.adcSalary, ' كد و سطح عنوان قبلي ', Txt,
    ['', 'كد', 'عنوان 1', 'عنوان 2'], Results, [0, 50, 100, 100], alLeft);
  if s then
  begin
    if not(qryFunctions.State in dseditmodes) then
      qryFunctions.edit;
    qryFunctions.FieldByName('ProjectID').AsInteger := StrToInt(Results[0]);
  end; // if
end;

procedure TFunctionItemsF.qryFunctionsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('YearID').AsInteger := APPBank.Year;

  DataSet.FieldByName('JobCode').AsInteger := qryPersonel.FieldByName('JobCode')
    .AsInteger;
  DataSet.FieldByName('PersonelNo').AsInteger :=
    qryPersonel.FieldByName('PersonelNo').AsInteger;
  DataSet.FieldByName('FormInfoID').AsInteger :=
    IfThen(qryMaster.FieldByName('FormInfoID').IsNull, 0,
    qryMaster.FieldByName('FormInfoID').AsInteger);
  // qryMaster.Fieldbyname('FormInfoID').AsInteger;
  DataSet.FieldByName('FunctionID').AsInteger :=
    GetANewCode('', 'Pay.Functions', 'FunctionID');
  DataSet.FieldByName('Mounth').AsInteger := MonthNo;
  GetAProject_OfficeID('ProjectID');
  GetAProject_OfficeID('OfficeCode');
  DBEdit7.SetFocus;
  // DBGrid2.Columns[2].Visible := true;
  // DBGrid2.Columns[3].Visible := true;
  // DBGrid2.Columns[4].Visible := false;
  // DBGrid2.Columns[5].Visible := false;
  DBGrid2.Columns[Fday_Id].Visible := true;
  DBGrid2.Columns[FTime_Id].Visible := true and not optP.FunctionActiveMinutes;
  DBGrid2.Columns[FTimeH_Id].Visible := optP.FunctionActiveMinutes;
  DBGrid2.Columns[FTimeM_Id].Visible := optP.FunctionActiveMinutes;
  DBGrid2.Columns[Day_Id].Visible := false;
  DBGrid2.Columns[Time_Id].Visible := false;

end;

procedure TFunctionItemsF.GetAProject_OfficeID(Field_Name: String);
begin
  GetYearMounth(MonthNo);
  with DMF.qryTmpTmpp do
  begin
    Active := false;
    SQL.Text := 'SELECT ' + Field_Name + '  FROM Pay.Interdicts';
    SQL.Add('WHERE (PersonelNo = :PersonelNo)');
    SQL.Add('AND (( :Date BETWEEN SUBSTRING(Interdicts.InterdicStartDate, 1, 7)');
    SQL.Add('AND  SUBSTRING(Interdicts.InterdicEndDate, 1, 7)))');
    SQL.Add('ORDER BY InterdictID DESC');
    Parameters.ParamByName('PersonelNo').Value :=
      qryPersonel.FieldByName('PersonelNo').AsString;

    Parameters.ParamByName('Date').Value := optP.YearMounth;

    // Parameters.ParamByName('Date').Value := IntToStr(yrcmbx1.YearID) + '/' +
    // RightStr('00' +  IntToStr(MonthNo), 2);
    Active := true;
    qryFunctions.FieldByName(Field_Name).AsInteger := Fields[0].AsInteger;
    Active := false;
  end; // with
end;

procedure TFunctionItemsF.FormShow(Sender: TObject);
begin
  inherited;
  if mainF.CheckActiveFunctions(mainF.MnuPay_FunctionsF) then
    Close;
  // DBGrid2.Columns[2].Visible := false;
  // DBGrid2.Columns[3].Visible := false;
  DBGrid2.Columns[Fday_Id].Visible := false;
  DBGrid2.Columns[FTime_Id].Visible := false;
  DBGrid2.Columns[FTimeH_Id].Visible := false;
  DBGrid2.Columns[FTimeM_Id].Visible := false;

  UpdateList;
  // L1_L2(DBGrid1);     // L1_L2(DBGrid2);
  qryPersonel.First;
  initcmbOffTime;
end;

procedure TFunctionItemsF.qryFormsInfoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  Abort;
end;

procedure TFunctionItemsF.qryFormsInfoAfterScroll(DataSet: TDataSet);
begin
  inherited;
  DBGrid2.Hint := IntToStr(Trunc(qryFormsInfo.FieldByName('_Time').AsFloat)) +
    ':' + FloatToStr(DesimalToTime(qryFormsInfo.FieldByName('_Time').AsFloat -
    Trunc(qryFormsInfo.FieldByName('_Time').AsFloat)));

end;

procedure TFunctionItemsF.qryFunctionsAfterPost(DataSet: TDataSet);
var
  rid: Integer;
begin
  inherited;
  With qryFormsInfo do
  begin
    try
      qryFunctionItems.DisableControls;
      qryFunctionItems.First;
      while not qryFunctionItems.Eof do
        qryFunctionItems.Delete;
      DisableControls;
      First;
      while not Eof do
      begin
        if (FieldByName('Fday').AsFloat > 0.0000001) or
          (FieldByName('FTime').AsFloat > 0.0000001) then
        begin
          qryFunctionItems.Insert;
          qryFunctionItems.FieldByName('FunctionsItemsID').AsInteger :=
            GetANewCode('', 'Pay.FunctionsItems', 'FunctionsItemsID');
          qryFunctionItems.FieldByName('FunctionID').AsInteger :=
            qryFunctions.FieldByName('FunctionID').AsInteger;
          qryFunctionItems.FieldByName('SalaryID').AsInteger :=
            FieldByName('FormInfoID').AsInteger;
          qryFunctionItems.FieldByName('Fdaily').AsFloat :=
            RoundTo(FieldByName('Fday').AsFloat, -7);
          qryFunctionItems.FieldByName('FHours').AsFloat :=
            RoundTo(FieldByName('FTime').AsFloat, -7);
          qryFunctionItems.FieldByName('AccTopicCode').AsInteger :=
            FieldByName('AccTopicCode').AsInteger;
          qryFunctionItems.FieldByName('AccDetailCode').AsInteger :=
            FieldByName('AccDetailCode').AsInteger;
          qryFunctionItems.FieldByName('AccCTopicCode').AsInteger :=
            FieldByName('AccCTopicCode').AsInteger;
          qryFunctionItems.FieldByName('AccCTopicCode2').AsInteger :=
            FieldByName('AccCTopicCode2').AsInteger;
          qryFunctionItems.Post;
        end; // if
        next;
      end; // while
    finally
      EnableControls;
      qryFunctionItems.EnableControls;
      First;
      Requery;
      // DBGrid2.Columns[2].Visible := false;
      // DBGrid2.Columns[3].Visible := false;
      // DBGrid2.Columns[4].Visible := true;
      // DBGrid2.Columns[5].Visible := true;
      DBGrid2.Columns[Fday_Id].Visible := false;
      DBGrid2.Columns[FTime_Id].Visible := false;
      DBGrid2.Columns[FTimeH_Id].Visible := false;
      DBGrid2.Columns[FTimeM_Id].Visible := false;
      DBGrid2.Columns[Day_Id].Visible := true;
      DBGrid2.Columns[Time_Id].Visible := true;

    end; // try
    if CalcAll4Message then
      BigMessage('ثبــت شد', 1);

    if AutoNext then
    begin
      rid := qryPersonel.FieldByName('PersonelNo').AsInteger;
      UpdateList; // ma
      qryPersonel.Locate('PersonelNo', rid, []);
      qryPersonel.next;
    end;
  end; // with

end;

procedure TFunctionItemsF.qryFunctionsAfterEdit(DataSet: TDataSet);
begin
  inherited;
  DBGrid2.Columns[Fday_Id].Visible := true;
  DBGrid2.Columns[FTime_Id].Visible := true and not optP.FunctionActiveMinutes;
  DBGrid2.Columns[FTimeH_Id].Visible := optP.FunctionActiveMinutes;
  DBGrid2.Columns[FTimeM_Id].Visible := optP.FunctionActiveMinutes;
  DBGrid2.Columns[Day_Id].Visible := false;
  DBGrid2.Columns[Time_Id].Visible := false;
  With qryFormsInfo do
  begin
    First;
    while not Eof do
    begin
      edit;
      FieldByName('Fday').AsFloat := RoundTo(FieldByName('_day').AsFloat, -7);
      FieldByName('Ftime').AsFloat := RoundTo(FieldByName('_Time').AsFloat, -7);

      qryFormsInfo.FieldByName('FTimeH').AsFloat :=
        RoundTo(Trunc(qryFormsInfo.FieldByName('_Time').AsFloat), -2);
      qryFormsInfo.FieldByName('FTimeM').AsFloat :=
        RoundTo(DesimalToTime(qryFormsInfo.FieldByName('_Time').AsFloat -
        Trunc(qryFormsInfo.FieldByName('_Time').AsFloat)), -2);

      FieldByName('AccTopicCode').AsInteger := FieldByName('_AccTopicCode')
        .AsInteger;
      FieldByName('AccDetailCode').AsInteger := FieldByName('_AccDetailCode')
        .AsInteger;
      FieldByName('AccCTopicCode').AsInteger := FieldByName('_AccCTopicCode')
        .AsInteger;
      FieldByName('AccCTopicCode2').AsInteger := FieldByName('_AccCTopicCode2')
        .AsInteger;
      Post;
      next;
    end; // while
    First;
  end; // with
end;

procedure TFunctionItemsF.qryFunctionsAfterCancel(DataSet: TDataSet);
begin
  inherited;
  // DBGrid2.Columns[2].Visible := false;
  // DBGrid2.Columns[3].Visible := false;
  // DBGrid2.Columns[4].Visible := true;
  // DBGrid2.Columns[5].Visible := true;
  DBGrid2.Columns[Fday_Id].Visible := false;
  DBGrid2.Columns[FTime_Id].Visible := false;
  DBGrid2.Columns[FTimeH_Id].Visible := false;
  DBGrid2.Columns[FTimeM_Id].Visible := false;
  DBGrid2.Columns[Day_Id].Visible := true;
  DBGrid2.Columns[Time_Id].Visible := true;

end;

procedure TFunctionItemsF.SrcFunctionsStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qryFunctions.State in dseditmodes;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
  FreeReservedCodes(DMF.adcSalary);
  actCalcAll.Visible := newPanel.Visible;
  DBGrid1.Enabled := newPanel.Visible;

  // actAcc.Visible:=okPanel.Visible;
end;

procedure TFunctionItemsF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryPersonel);
end;

procedure TFunctionItemsF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryPersonel);
end;

procedure TFunctionItemsF.actTransferOfMonthExecute(Sender: TObject);
var
  sMonth: string;
begin
  inherited;
  sMonth := get_box('شماره ماه',
    'انتقال کل کارکرد ماه مورد نظر به ماه جاری', '0');

  if get_response('آيا براي انتقال کارکرد ماه ' + sMonth +
    ' به کارکرد ماه جاری مطمئن هستيد؟') <> mrYes then
    exit;

  With TADOStoredProc.Create(nil) do
    try
      Connection := DMF.adcSalary;
      ProcedureName := 'Pay.SP_TransferFunctionsOfMonth;1';
      Parameters.Refresh;
      Parameters.ParamByName('@MounthFrom').Value := sMonth;
      Parameters.ParamByName('@MounthTo').Value := MonthNo;
      Parameters.ParamByName('@YearIDFrom').Value := APPBank.Year;
      Parameters.ParamByName('@YearIDTo').Value := APPBank.Year;

      ExecProc;
    finally
      Free;
      UpdateList;
      BigMessage(' انجام شد', 1);
    end;

end;

procedure TFunctionItemsF.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  with qry4SendExcel do
  begin
    Active := false;
    Parameters.ParamByName('Mo').Value := MonthNo;
    Active := true;
  end; // with
  SendToExcel(DBGrid1);
end;

procedure TFunctionItemsF.actSetSelectedSituation0Execute(Sender: TObject);
begin
  inherited;
  SetSelectedSituation(TDBGrid(nil), qryFunctions, 0, 'Functions', 'FunctionID',
    qryInitForm)
end;

procedure TFunctionItemsF.actSetSelectedSituation1Execute(Sender: TObject);
begin
  inherited;
  SetSelectedSituation(TDBGrid(nil), qryFunctions, 1, 'Functions', 'FunctionID',
    qryInitForm)
end;

procedure TFunctionItemsF.actSetSelectedSituationAll0Execute(Sender: TObject);
begin
  inherited;
  SetSituation('Pay.Functions', 0, MonthNo,
    qryPersonel.Parameters.ParamByName('PersonelNoFrom').Value,
    qryPersonel.Parameters.ParamByName('PersonelNoTo').Value, qryInitForm)

end;

procedure TFunctionItemsF.actSetSelectedSituationAll1Execute(Sender: TObject);
begin
  inherited;
  SetSituation('Pay.Functions', 1, MonthNo,
    qryPersonel.Parameters.ParamByName('PersonelNoFrom').Value,
    qryPersonel.Parameters.ParamByName('PersonelNoTo').Value, qryInitForm)
end;

procedure TFunctionItemsF.DBGrid2KeyPress(Sender: TObject; var key: char);
begin
  inherited;
  gridkeyenter(Sender, key);
end;

procedure TFunctionItemsF.qryFunctionsAfterDelete(DataSet: TDataSet);
var
  rid: Integer;
begin
  inherited;
  BigMessage('حـذف شــد', 1);
  rid := qryPersonel.FieldByName('PersonelNo').AsInteger;
  UpdateList; // ma
  qryPersonel.Locate('PersonelNo', rid, []);
end;

procedure TFunctionItemsF.qryFunctionsBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if not CheckUserlevel(qryInitForm.FieldByName('DeleteLevelID').AsInteger) then
    Abort;
  if not EditSituation(DataSet) then
    Abort;
  if not FunctionDelete(qryPersonelPersonelNo.AsInteger, MonthNo) then
    Abort;
  if get_response('آيا از حذف مطمئن هستيد.') <> mrYes then
    Abort;
end;

procedure TFunctionItemsF.qryFunctionsBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if not EditSituation(DataSet) then
    Abort;
  if not CheckUserlevel(qryInitForm.FieldByName('EditLevelID').AsInteger) then
    Abort
end;

procedure TFunctionItemsF.qryFunctionsBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if not CheckUserlevel(qryInitForm.FieldByName('ADDLevelID').AsInteger) then
    Abort;
end;

procedure TFunctionItemsF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid2, 0, true, IntToStr(FormType));
  // SetColSize(DBGrid1, 1, true, IntToStr(FormType));
end;

procedure TFunctionItemsF.FormDestroy(Sender: TObject);
begin
  inherited;
  // SaveColWidth(DBGrid1, IntToStr(FormType));
  SaveColWidth(DBGrid2, IntToStr(FormType));
  SaveConfig(APPID, 'AutoTime2Day', BoolToStr(ChkAutoTime2Day.Checked));
end;

procedure TFunctionItemsF.DBEdit5KeyDown(Sender: TObject; var key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 32 then
    SpeedButton2.Click;
end;

procedure TFunctionItemsF.SpeedButton3Click(Sender: TObject);
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
  Txt := 'SELECT  PersonelNo,' + TxtL1_L2 + ', NationalID, IDNumber ' +
    'FROM         Pay.PersonelInfo where  (PersonelNo IN  (' +
    'SELECT     PersonelInfo.PersonelNo  FROM Pay.Interdicts INNER JOIN ' +
    'Pay.PersonelInfo ON Pay.Interdicts.PersonelNo = PersonelInfo.PersonelNo LEFT OUTER JOIN '
    + 'Pay.FormsInfo ON PersonelInfo.PersonelState = FormsInfo.FormInfoID LEFT OUTER JOIN '
    + 'Pay.FormsInfo AS FormsInfoOffice ON Pay.Interdicts.OfficeCode = FormsInfoOffice.FormInfoID '
    + ' LEFT OUTER JOIN Pay.FormsInfo AS FormsInfoEmployTypeID ON Pay.Interdicts.EmployTypeID = FormsInfoEmployTypeID.FormInfoID '
    + 'WHERE (InterdicType = 0 ) AND  (Interdicts.State < 50) ';

          if (CompanyFilterinLogin) and (not User.PowerAdmin) then
  begin
    Txt := Txt + ' AND (Interdicts.subcompanyCode BETWEEN ' +
      FcompanyCodeLogin.ToString + ' AND ' + FcompanyCodeLogin.ToString + ') ';
  end;
  Txt := Txt + '))';
  if optP.primaryLanguage <> 0 then
    s := searchCode_ADOF.SearchCode2(DMF.adcSalary, 'مشخصات پرسنل', Txt,
      ['شماره پرسنل', 'نام 1', 'نام 2', ' نام خانوادگي 1', 'نام خانوادگي 2',
      'نام پدر 1', 'نام پدر 2', 'شماره شناسنامه', 'كد ملي'], Results,
      [10, 100, 100, 100, 100, 100, 100, 100, 50], alLeft)
  else
    s := searchCode_ADOF.SearchCode2(DMF.adcSalary, 'مشخصات پرسنل', Txt,
      ['شماره پرسنل', 'نام ', ' نام خانوادگي', 'نام پدر', 'شماره شناسنامه',
      'كد ملي'], Results, [10, 100, 100, 100, 100, 100], alLeft);

  if s then
    qryPersonel.Locate('PersonelNo', Results[0], []);
end;

procedure TFunctionItemsF.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  inherited;
  if not(gdSelected in State) then
  begin
    if (Sender as TCedarDbgrid).DataSource.DataSet.FieldByName('HasFunction')
      .AsInteger <> 0 then
      DBGrid1.Canvas.Font.Color := lblColor1.Color
    else
      DBGrid1.Canvas.Font.Color := lblColor2.Color;
    if (Sender as TCedarDbgrid).DataSource.DataSet.FieldByName
      ('InterdicEndDate').AsString < CurrentDate then
      DBGrid1.Canvas.Font.Color := LblEndDate.Color;
  end;
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFunctionItemsF.DBGrid1KeyPress(Sender: TObject; var key: char);
begin
  inherited;
  QuickSearch(key, qryPersonelPersonelNo);

end;

procedure TFunctionItemsF.actCalcAllExecute(Sender: TObject);
var
  FunctionDay: Integer; // ,ProjectID,OfficeCode
  FunctionID: Integer;
  FunctionTime: Real;
  cloned: TADOQuery;
  F: TField;
begin
  inherited;
  if qryFunctions.State in dseditmodes then
    exit;
  // if qryFunctions.FieldByName('HasFunction').AsInteger<>0 then begin
  //
  // end;
  if get_response
    ('آيا براي ثبت کلي کارکرد اين پرسنل براي بقيه پرسنل مطمئن هستيد؟') <> mrYes
  then
    exit;
  CalcAll4Message := false;
  AutoNext := false;
  // OfficeCode:=qryFunctions.Fieldbyname('OfficeCode').AsInteger;
  // ProjectID:=qryFunctions.Fieldbyname('ProjectID').AsInteger;
  FunctionDay := qryFunctions.FieldByName('FunctionDay').AsInteger;
  FunctionTime := qryFunctions.FieldByName('FunctionTime').AsFloat;
  // Sheikh 2015/05/27:For function Items
  cloned := TADOQuery.Create(Self);
  cloned.Clone(qryFunctionItems, ltOptimistic);

  DBGrid1.Enabled := false;
  qryPersonel.DisableControls;
  qryMaster.DisableControls;
  qryFunctions.DisableControls;
  qryFunctionItems.DisableControls;
  qryFormsInfo.DisableControls;
  ChkEndDate.Checked := true;
  With qryPersonel do
  begin
    DisableControls;
    next;
    BigMessageProgBar('در حال ثبت...', RecordCount);
    while not Eof do
    begin
      GoProgressBar(qryPersonel.FieldByName('PersonelNo').AsString + ' <-> ' +
        qryPersonel.FieldByName('PersonName_L1').AsString);
      // BigMessage(qryPersonel.FieldByname('PersonelNo').AsString+' <-> '+qryPersonel.FieldByname('PersonName_L1').AsString ,0);
      if qryPersonelInfoID.AsInteger < 50 then
      begin
        qryFunctions.edit;
        GetAProject_OfficeID('ProjectID');
        GetAProject_OfficeID('OfficeCode');

        // qryFunctions.Fieldbyname('OfficeCode').AsInteger:=OfficeCode;
        // qryFunctions.Fieldbyname('ProjectID').AsInteger:=ProjectID;
        qryFunctions.FieldByName('FunctionDay').AsInteger := FunctionDay;
        qryFunctions.FieldByName('FunctionTime').AsFloat := FunctionTime;
        FunctionID := qryFunctionsFunctionID.AsInteger;
        qryFunctions.Post;
        // Sheikh 2015/05/27:For Function Items
        with cloned do
        begin
          First;
          while not qryFunctionItems.Eof do
            qryFunctionItems.Delete;
          qryFunctionItems.First;
          while not Eof do
          begin
            if qryFormsInfo.Locate('FormInfoID', FieldByName('SalaryID')
              .AsInteger, []) then
            begin
              qryFunctionItems.Insert;
              for F in Fields do
                if qryFunctionItems.FindField(F.FieldName) <> nil then
                  if not(pfInKey in qryFunctionItems.FieldByName(F.FieldName)
                    .ProviderFlags) then
                    qryFunctionItems.FieldByName(F.FieldName).AsString :=
                      F.AsString;
              qryFunctionItems.FieldByName('FunctionsItemsID').AsInteger :=
                GetANewCode('', 'Pay.FunctionsItems', 'FunctionsItemsID');
              qryFunctionItems.FieldByName('FunctionID').AsInteger :=
                FunctionID;
              qryFunctionItems.Post;
            end;
            next;
          end;
        end; // With Clone
      end;
      next;
    end;
    EnableControls;
  end;
  UpdateList;
  cloned.Free;
  qryPersonel.EnableControls;
  qryMaster.EnableControls;
  qryFunctions.EnableControls;
  qryFunctionItems.EnableControls;
  qryFormsInfo.EnableControls;
  DBGrid1.Enabled := true;
  CalcAll4Message := true;
  AutoNext := true;
  BigMessage('ثبــت شد', 1);

end;

procedure TFunctionItemsF.SpeedButton4Click(Sender: TObject);
var
  s: Boolean;
  Results: array [0 .. 3] of String;
begin
  inherited;
  s := searchCode_ADOF.SearchCode2(DMF.adcSalary, 'واحد سازماني',
    'SELECT Pay.FormsInfo.FormInfoID,Pay.FormsInfo.InfoID, Pay.FormsInfo.InfoName_L1, Pay.FormsInfo.InfoName_L2 '
    + ' FROM  Pay.FormsInfo ' + ' WHERE (Pay.FormsInfo.FormType = 12) ',
    ['', 'كد ', 'نام واحد سازماني', 'نام واحد سازماني'], Results,
    [0, 20, 100, 100], alLeft);
  if s then
  begin
    if not(qryFunctions.State in dseditmodes) then
      qryFunctions.edit;
    qryFunctions.FieldByName('OfficeCode').AsInteger := StrToInt(Results[0]);
  end; // if

end;

procedure TFunctionItemsF.actAccExecute(Sender: TObject);
begin
  inherited;
  if not(qryFunctions.State in dseditmodes) then
    qryFunctions.edit;
  AccountpF.Enter(qryFormsInfo);
end;

procedure TFunctionItemsF.qryFunctionsBeforePost(DataSet: TDataSet);
var
  FunctionDay: Integer;
  Message_: string;
begin
  inherited;
  // if not FunctionDelete(qryPersonelPersonelNo.AsInteger, MonthNo) then
  // Abort;

  if optP.FunctionDayDefault <> 0 then
  begin
    qryFunctionsFunctionDay.AsInteger := optP.FunctionDayDefault;
    qryFunctionsSickDay.AsInteger := 0;
  end;

  DataSet.FieldByName('Years').AsInteger := yrcmbx1.YearID;
  if not SumFunctionDay(FunctionDay, MonthNo, DayStandard, qryFunctions,
    Message_) then
    Abort;
  if not FunctionDateChech(FunctionDay, CurrentDate, qryPersonel, qryFunctions)
  then
    Abort;
  if not chkPersonelState(qryPersonelInfoID.AsInteger) then
    Abort;
end;

procedure TFunctionItemsF.qryFormsInfoBeforePost(DataSet: TDataSet);
begin
  inherited;
  if DataSet.FieldByName('Fday').AsFloat > DataSet.FieldByName('Maxday').AsFloat
  then
  begin
    Warn('تعداد روز وارد شده بزرگتر از حداكثر مجاز است.‏');
    Abort;
  end;
  if DataSet.FieldByName('Ftime').AsFloat > DataSet.FieldByName('Maxtime').AsFloat
  then
  begin
    Warn('تعداد ساعت وارد شده بزرگتر از حداكثر مجاز است.‏');
    Abort;
  end;
  if DataSet.FieldByName('Fday').AsFloat < 0 then
    DataSet.FieldByName('Fday').AsFloat := 0;
  if DataSet.FieldByName('Ftime').AsFloat < 0 then
    DataSet.FieldByName('Ftime').AsFloat := 0;
end;

procedure TFunctionItemsF.qryFormsInfoFTimeHChange(Sender: TField);
begin
  inherited;
  qryFormsInfo.FieldByName('FTime').AsFloat :=
    RoundTo(qryFormsInfo.FieldByName('FTimeH').AsInteger +
    TimeToDesimal(qryFormsInfo.FieldByName('FTimeM').AsInteger), -7)
end;

procedure TFunctionItemsF.qryFunctionsFunctionTimeChange(Sender: TField);
begin
  inherited;
  If not(ChkAutoTime2Day.Checked) then
    exit;
  If qryFormsInfo.RecordCount <> 1 then
    exit;
  if not(qryFormsInfo.State in dseditmodes) then
    qryFormsInfo.edit;
  qryFormsInfo.FieldByName('Fday').Value :=
    qryFunctions.FieldByName('FunctionTime').Value;
  qryFormsInfo.FieldByName('_day').Value :=
    qryFunctions.FieldByName('FunctionTime').Value;
end;

procedure TFunctionItemsF.ChkEndDateClick(Sender: TObject);
begin
  inherited;
  With qryPersonel do
  begin
    Filter := 'InterdicEndDate>=' + CurrentDate;
    Filtered := ChkEndDate.Checked;
  end;
end;

procedure TFunctionItemsF.BitBtn7Click(Sender: TObject);
begin
  inherited;
  GetExcelF.ShowImPortExcel(qryFunctions);
end;

procedure TFunctionItemsF.BitBtn11Click(Sender: TObject);
begin
  inherited;
  PopMnuOthers.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y)
end;

procedure TFunctionItemsF.BitBtn13Click(Sender: TObject);
var
  FormInfoID: Integer;
begin
  inherited;
  if get_response('آيا براي ثبت کلي مرخصی در ' + cmbOffTime.Text +
    ' مطمئن هستيد؟') <> mrYes then
    exit;
  with qryOffTime do
  begin
    CalcAll4Message := false;
    FormInfoID :=
      Integer(TObject(cmbOffTime.Items.Objects[cmbOffTime.ItemIndex]));
    Active := false;
    Parameters.ParamByName('YearIDFrom').Value := APPBank.Year;
    Parameters.ParamByName('YearIDTo').Value := APPBank.Year;
    Active := true;
    while not Eof do
    begin
      if qryPersonel.Locate('PersonelNo', qryOffTimePersonelNo.AsInteger, [])
      then
      begin
        qryFunctions.edit;
        if qryFormsInfo.Locate('FormInfoID', FormInfoID, []) then
        begin
          qryFormsInfo.edit;
          if rgpOffTime.ItemIndex = 0 then
            qryFormsInfoFday.AsFloat := qryOffTimeRemainDay.AsFloat
          else
            qryFormsInfoFTime.AsFloat := qryOffTimeRemainDay.AsFloat;
        end;
        qryFunctions.Post;
      end;
      next;
    end;
    CalcAll4Message := true;
  end;
end;

procedure TFunctionItemsF.ActShowInterdictExecute(Sender: TObject);
begin
  inherited;
  if mdiMainF.ActInterdictsF.Execute then
    InterdictsF.qryInterdicts.Locate('PersonelNo',
      qryPersonel.FieldByName('PersonelNo').AsVariant, [])
end;

procedure TFunctionItemsF.actDeleteAllExecute(Sender: TObject);
begin
  inherited;
  if get_response('آيا براي حذف کلي کارکرد ماه جاری مطمئن هستيد؟') <> mrYes then
    exit;
  if not CheckUserlevel(qryInitForm.FieldByName('DeleteLevelID').AsInteger) then
    exit;
  try
    with DMF.qryTmpTmpp do
    begin
      Close;
      SQL.Text :=
        'DELETE FROM Pay.Functions  WHERE ( Situation = 0 ) AND ( YearID = :YearID ) AND ( Years = :Years ) AND ( Mounth = :Mounth ) '
        + 'AND (PersonelNo NOT IN (SELECT PersonelNo FROM Pay.FixedCalculated WHERE ( YearID = :YearID2 ) AND ( Years = :Years2 ) AND Mounth = :Mounth2 ))';

      Parameters.ParamByName('YearID').Value := yrcmbx1.YearID;
      Parameters.ParamByName('Years').Value := yrcmbx1.YearID;
      Parameters.ParamByName('Mounth').Value := MonthNo;
      Parameters.ParamByName('YearID2').Value := yrcmbx1.YearID;
      Parameters.ParamByName('Years2').Value := yrcmbx1.YearID;
      Parameters.ParamByName('Mounth2').Value := MonthNo;

      ExecSQL;
      BigMessage(IntToStr(RowsAffected) + ' مورد حذف شد!', 1);
    end;
    qryPersonel.Requery();
  except
    on E: Exception do
    begin
      add2log(E.Message);
      Warn('اشکال در عمليات حذف!');
    end;
  end;
end;

procedure TFunctionItemsF.ActPersonelInfoFExecute(Sender: TObject);
begin
  inherited;
  if mdiMainF.ActPersonelInfoF.Execute then
    PersonelInfoF.qryPeronalInfo.Locate('PersonelNo',
      qryPersonel.FieldByName('PersonelNo').AsInteger, [])
end;

procedure TFunctionItemsF.N2Click(Sender: TObject);
begin
  inherited;
  CalcAll4Message := false;
  With qryPersonel do
  begin
    ChkAutoTime2Day.Checked := true;
    while not Eof do
    begin
      qryFunctions.edit;
      qryFunctions.FieldByName('FunctionTime').AsFloat :=
        qryFunctions.FieldByName('FunctionTime').AsFloat;
      qryFunctions.Post;
    end;
  end;
  CalcAll4Message := true;
  BigMessage('ثبــت شد', 1);
end;

procedure TFunctionItemsF.initcmbOffTime;
var
  i: Integer;
begin
  if cmbOffTime.Items.Count = 0 then
    With qryFormsInfo do
    begin
      i := -1;
      while not Eof do
      begin
        cmbOffTime.AddItem(qryFormsInfoInfoName_L1.AsString,
          TObject(qryFormsInfoFormInfoID.AsInteger));
        if Pos('مرخص', qryFormsInfoInfoName_L1.AsString) > 0 then
          i := cmbOffTime.Items.Count - 1;
        next;
      end;
      cmbOffTime.ItemIndex := i;
    end;
end;

end.
