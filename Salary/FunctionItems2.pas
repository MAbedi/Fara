unit FunctionItems2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, DBCtrls, StdCtrls, Mask, Buttons,
  ImgList, DBActns, ActnList, ExtCtrls, ComCtrls, ToolWin, DB, ADODB, StrUtils,
  Menus, SumDBGrid, MyComboBoxUnit, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd,
  ppClass, ppReport, ppBands, ppCache, ppParameter, ppDesignLayer,
  System.ImageList, System.Actions, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  CedarDbGrid, Filter_ADO_Const;

type
  TFunctionItems2F = class(Ttemplate2MDIF)
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
    newPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn9: TBitBtn;
    Panel9: TPanel;
    Panel10: TPanel;
    lblColor1: TLabel;
    Label17: TLabel;
    lblColor2: TLabel;
    Label16: TLabel;
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
    qryFunctions_projectname_L1: TStringField;
    qryFunctions_projectname_L2: TStringField;
    qryPersonelInfoID: TIntegerField;
    qryPersonelInfoName_L1: TStringField;
    qryPersonelInfoName_L2: TStringField;
    qryFormsInfo: TADOQuery;
    qryFormsInfoFormInfoID: TIntegerField;
    qryFormsInfoInfoID: TIntegerField;
    qryFormsInfoInfoName_L1: TStringField;
    qryFormsInfoInfoName_L2: TStringField;
    qryFormsInfoFday: TFloatField;
    qryFormsInfoFTime: TFloatField;
    qryFormsInfo_Day: TFloatField;
    qryFormsInfo_Time: TFloatField;
    actSort: TAction;
    actSendToExcel: TAction;
    qryPersonelHasFunction: TIntegerField;
    qryPersonelOfficeCode: TIntegerField;
    actCalcAll: TAction;
    actFilter: TAction;
    qryPersonelEmployTypeID: TIntegerField;
    qryFunctionsOfficeCode: TIntegerField;
    qryFunctions_OfficeName_L1: TStringField;
    qryFunctions_OfficeName_L2: TStringField;
    qryPersonelStandardEmployAmount: TBCDField;
    actAcc: TAction;
    BitBtn12: TBitBtn;
    qryFormsInfoAccTopicCode: TIntegerField;
    qryFormsInfoAccDetailCode: TIntegerField;
    qryFormsInfoAccCTopicCode: TIntegerField;
    qryFormsInfoAccCTopicCode2: TIntegerField;
    qryFormsInfo_AccTopicCode: TIntegerField;
    qryFormsInfoMaxDay: TFloatField;
    qryFormsInfoMaxTime: TFloatField;
    qryOfficeCode: TADOQuery;
    qryFormsInfo_AccDetailCode: TIntegerField;
    qryFormsInfo_AccCTopicCode: TIntegerField;
    qryFormsInfo_AccCTopicCode2: TIntegerField;
    qryPersonelFunCount: TIntegerField;
    Label7: TLabel;
    LblEndDate: TLabel;
    DataSetInsert2: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetEdit2: TDataSetEdit;
    DataSetPost2: TDataSetPost;
    DataSetCancel2: TDataSetCancel;
    newPanel2: TPanel;
    BitBtn11: TBitBtn;
    BitBtn14: TBitBtn;
    BitBtn13: TBitBtn;
    okPanel2: TPanel;
    BitBtn15: TBitBtn;
    BitBtn16: TBitBtn;
    qryProject: TADOQuery;
    qryProjectFormInfoID: TIntegerField;
    qryProjectInfoID: TIntegerField;
    qryProjectInfoName_L1: TStringField;
    qryProjectInfoName_L2: TStringField;
    qryFunctionsProjectRow: TIntegerField;
    qryFunctions_StandardEmployAmount: TCurrencyField;
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
    qryFunctionsProcCode: TIntegerField;
    qryFunctionsCTopic3: TIntegerField;
    qryProcCode: TADOQuery;
    qryCTopic3: TADOQuery;
    qryFunctions_ProcCode: TStringField;
    qryFunctions_CTopic3: TStringField;
    qryFunctionsSickDay: TIntegerField;
    ActShowInterdict: TAction;
    ActPersonelInfoF: TAction;
    BitBtn17: TBitBtn;
    PopMnuOthers: TPopupMenu;
    ActShowInterdict1: TMenuItem;
    N1: TMenuItem;
    qryFunctionsFunctionDay: TFloatField;
    qryPersonelCalCulateType: TWordField;
    actcalc: TAction;
    N2: TMenuItem;
    N3: TMenuItem;
    qryPersonelCoefficientActive: TWordField;
    qryFormsInfoRecalKindClock: TWordField;
    actGetExcel: TAction;
    btnGetExcel: TBitBtn;
    btncalc: TBitBtn;
    DataSource1: TDataSource;
    actCalcAllDay: TAction;
    MnuCalcAllDay: TMenuItem;
    yrcmbx1: TYearComboBox;
    qryFunctionsYearID: TIntegerField;
    qryFunctionsYears: TIntegerField;
    qryFunctionsSituation: TWordField;
    actSetSelectedSituation0: TAction;
    actSetSelectedSituation1: TAction;
    actSetSelectedSituationAll0: TAction;
    actSetSelectedSituationAll1: TAction;
    mnuN4: TMenuItem;
    mnuSetSelectedSituation0: TMenuItem;
    mnuSetSelectedSituationAll0: TMenuItem;
    mnuSetSelectedSituation1: TMenuItem;
    mnuSetSelectedSituationAll1: TMenuItem;
    ChkEndDate: TCheckBox;
    qryInitQry: TADOQuery;
    qryPersonelInterdicEndDate: TStringField;
    qryPersonelInterdicStartDate: TStringField;
    actPrint: TAction;
    N4: TMenuItem;
    N5: TMenuItem;
    ppReport1: TppReport;
    pplnPersonel: TppDBPipeline;
    pplnFunction: TppDBPipeline;
    ppParameterList1: TppParameterList;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    qryFormsInfoFTimeH: TFloatField;
    qryFormsInfoFTimeM: TFloatField;
    DBGrid1: TCedarDbgrid;
    DBGrid3: TCedarDbgrid;
    DBGrid2: TCedarDbgrid;
    procedure qryFormsInfoFTimeHChange(Sender: TField);
    procedure SpeedButton1Click(Sender: TObject);
    procedure ToolBar1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure qryMasterAfterScroll(DataSet: TDataSet);
    procedure qryPersonelAfterScroll(DataSet: TDataSet);
    procedure qryFunctionsAfterInsert(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure qryFormsInfoAfterInsert(DataSet: TDataSet);
    procedure qryFunctionsAfterPost(DataSet: TDataSet);
    procedure qryFunctionsAfterCancel(DataSet: TDataSet);
    procedure SrcFunctionsStateChange(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure qryFunctionsAfterDelete(DataSet: TDataSet);
    procedure qryFunctionsBeforeDelete(DataSet: TDataSet);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure actCalcAllExecute(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure actAccExecute(Sender: TObject);
    procedure qryFunctionsBeforePost(DataSet: TDataSet);
    procedure qryFormsInfoBeforePost(DataSet: TDataSet);
    procedure qryFunctionsFunctionTimeChange(Sender: TField);
    procedure DBGrid3EditButtonClick(Sender: TObject);
    procedure DBGrid3KeyPress(Sender: TObject; var Key: Char);
    procedure qryFunctionsCalcFields(DataSet: TDataSet);
    procedure qryFunctionsProcCodeGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure BitBtn17Click(Sender: TObject);
    procedure ActShowInterdictExecute(Sender: TObject);
    procedure ActPersonelInfoFExecute(Sender: TObject);
    procedure actcalcExecute(Sender: TObject);
    procedure qryFunctionsBeforeInsert(DataSet: TDataSet);
    procedure Panel1Exit(Sender: TObject);
    procedure actGetExcelExecute(Sender: TObject);
    procedure qryPersonelBeforeScroll(DataSet: TDataSet);
    procedure qryFunctionsAfterOpen(DataSet: TDataSet);
    procedure qryFormsInfoAfterOpen(DataSet: TDataSet);
    procedure DBGrid1Enter(Sender: TObject);
    procedure actCalcAllDayExecute(Sender: TObject);
    procedure qryFunctionsBeforeEdit(DataSet: TDataSet);
    procedure actSetSelectedSituation0Execute(Sender: TObject);
    procedure actSetSelectedSituation1Execute(Sender: TObject);
    procedure actSetSelectedSituationAll0Execute(Sender: TObject);
    procedure actSetSelectedSituationAll1Execute(Sender: TObject);
    procedure ChkEndDateClick(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure ppLblCaptionGetText(Sender: TObject; var Text: String);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure qryFunctionsAfterScroll(DataSet: TDataSet);
    procedure DBGrid1SearchPanelSearchEditKeyPress(Grid: TCustomDBGridEh;
      SearchEdit: TDBGridSearchPanelTextEditEh; var Key: Char);
    procedure DBGrid1CellClick(Column: TColumnEh);
    procedure DBGrid3Exit(Sender: TObject);
  private
    { Private declarations }
    MonthNo: Byte;
    FormType: Byte;
    CurrentDate: String;
    DayStandard: Integer;
    TimeStandard: Integer;
    SumFunctionTime: Real;
    showMessage: Boolean;
    Fday_Id, FTime_Id, Day_Id, Time_Id, FTimeH_Id, FTimeM_Id: Integer;
    procedure InitForm;
    procedure StandardDays;
    procedure UpdateList;
    function SumFunctionDayChk(var FunctionDay: Integer): Boolean;
    procedure gridkeyenter(Sender: TObject; var Key: Char);
    procedure gridkeyenter2(Sender: TObject; var Key: Char);
    procedure FillqryFormsInfo;
    function GetFunctionID: Integer;
    procedure SaveItems;
    procedure RequeryqryPersonel;
    procedure qryFunctions_AfterScroll;

  public
    { Public declarations }
  end;

var
  FunctionItems2F: TFunctionItems2F;

implementation

uses searchCode_ADO, GlobalPro, DM, Math, search2, sort2,
  sndkey32, mmessage, filter_ADO, FilterClass_ADO, main,
  Interdicts, PersonelInfo, SalaryFunctions, GetExcel, FaraConsts, mdiMain,
  AccountP;
{$R *.dfm}

procedure TFunctionItems2F.gridkeyenter(Sender: TObject; var Key: Char);
var
  nextIndex: Integer;
  curIndex: Integer;
  // aDataSet: TDataSet;
  // c:  String;
begin
  curIndex := (Sender as TCedarDbgrid).SelectedIndex;
  nextIndex := curIndex;
  case Key of
    #13:
      begin
        if shiftDown then
          exit;
        // aDataSet := (Sender as TCedarDbgrid).DataSource.DataSet;
        Key := #0;
        case curIndex of
          0:
            if qryFormsInfo.FieldByName('MaxDay').AsFloat <> 0 then
              nextIndex := 2
            else
              nextIndex := 3;
          1:
            if qryFormsInfo.FieldByName('MaxDay').AsFloat <> 0 then
              nextIndex := 2
            else
              nextIndex := 3;
          2:
            if // (qryFormsInfo.FieldByName('MaxDay').AsFloat=0)and
              (qryFormsInfo.FieldByName('MaxTime').AsFloat <> 0) then
              nextIndex := 3
            else
              nextIndex := -1;

          3:
            nextIndex := 4;
          4:
            nextIndex := 5;
          5:
            nextIndex := 6;
          6:
            nextIndex := 7;
          7:
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
        SendKeys('000', false);
      end; // *
    #27:
      if (Sender as TCedarDbgrid).DataSource.DataSet.State in dseditmodes then
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
            sendkey(vk_down, [], false);
            (Sender as TCedarDbgrid).SelectedIndex := 2;
          end; // 0
        -2:
          begin
            if (Sender as TCedarDbgrid).DataSource.State in dseditmodes then
              (Sender as TCedarDbgrid).DataSource.DataSet.Cancel;
            Perform(WM_NEXTDLGCTL, 0, 0);
          end; // -2
        -3:
          begin
            if (Sender as TCedarDbgrid).DataSource.State in dseditmodes then
              (Sender as TCedarDbgrid).DataSource.DataSet.Cancel;
            Perform(WM_NEXTDLGCTL, 1, 0);
          end; // -3
      else
        (Sender as TCedarDbgrid).SelectedIndex := nextIndex;
  end; // case

end;

procedure TFunctionItems2F.SpeedButton1Click(Sender: TObject);
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

procedure TFunctionItems2F.InitForm;
var
  b: Boolean;
begin
  with qryInitForm do
  begin
    Active := false;
    Parameters.ParamByName('FormType').Value := FormType;
    Active := true;
    // __________________                ProcCode          __________________________
    b := FieldByName('EarthProceedsActivate').AsInteger in [2, 3];
    setColumns2(DBGrid3, b, 'ProcCode');
    setColumns2(DBGrid3, b, '_ProcCode');
    qryFunctions.FieldByName('ProcCode').DisplayLabel := 'كد ' +
      FieldByName('ProcName').AsString;
    qryFunctions.FieldByName('_ProcCode').DisplayLabel :=
      FieldByName('ProcName').AsString;

    // __________________                CTopic3           __________________________
    b := FieldByName('EarthProceedsActivate').AsInteger in [1, 3];
    setColumns2(DBGrid3, b, 'CTopic3');
    setColumns2(DBGrid3, b, '_CTopic3');
    qryFunctions.FieldByName('CTopic3').DisplayLabel := 'كد ' +
      FieldByName('EarthName').AsString;
    qryFunctions.FieldByName('_CTopic3').DisplayLabel :=
      FieldByName('EarthName').AsString;

  end; // with

  PnlRecall.Visible := qryInitForm.FieldByName('RecallFormTypes')
    .AsInteger <> 0;
  with qryProject do
  begin
    Active := false;
    Parameters.ParamByName('FormType').Value :=
      qryInitForm.FieldByName('FormInfo4Function').AsInteger;
    if PnlRecall.Visible then
    begin
      SQL.Add('AND (PrvInfoID = :PrvInfoID)');
      /// Parameters.ParamByName('PrvInfoID').Value:=qryMaster.Fieldbyname('FormInfoID').AsInteger;
    end;
    // Active:=true;
  end; // with

  with qryMaster do
  begin
    Active := false;
    Parameters.ParamByName('RecallFormTypes').Value :=
      qryInitForm.FieldByName('RecallFormTypes').AsInteger;
    Active := true;
  end; // with  }

  qryFunctions.Active := true;
  // qryPersonel.Active:=true;
  // qryPersonel.First;

end;

procedure TFunctionItems2F.ToolBar1Click(Sender: TObject);
begin
  inherited;
  MonthNo := (Sender as TToolButton).tag;
  UpdateList;
end;

procedure TFunctionItems2F.actFilterExecute(Sender: TObject);
begin
  inherited;
  With TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItem(DMF.adcSalary, 'EmployTypeID', 'نوع حكم ', 'نوع', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT InfoID,InfoName_L1 FROM Pay.FormsInfo WHERE  (FormType = 14)',
        'SELECT MIN(InfoID), MAX(InfoID) FROM Pay.FormsInfo WHERE  (FormType = 14)');

      AddItemFilter(GetFilter, TPersonelNo);

      AddItem(DMF.adcSalary, 'OfficeCode', 'واحد سازماني', 'كد', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT Pay.FormsInfo.InfoID, Pay.FormsInfo.InfoName_L1' +
        ' FROM  Pay.FormsInfo  WHERE (Pay.FormsInfo.FormType = 12) ',
        'SELECT 0, MAX(Pay.FormsInfo.InfoID) ' +
        ' FROM Pay.FormsInfo where  (Pay.FormsInfo.FormType = 12) ');

      AddItem(DMF.adcSalary, 'ProjectID', ' عنوان پروژه', 'كد', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT FormInfoID, InfoName_L1 FROM Pay.FormsInfo ' +
        ' WHERE FormType = 40 ',
        'SELECT  0 , MAX(FormInfoID) FROM Pay.FormsInfo ' +
        ' WHERE FormType = 40');
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

          Parameters.ParamByName('ProjectIDFrom').Value :=
            GetcFrom(myParams.ParamValues['ProjectID'], ftInteger);
          Parameters.ParamByName('ProjectIDTo').Value :=
            GetcTo(myParams.ParamValues['ProjectID'], ftInteger);

          Parameters.ParamByName('EmployTypeIDFrom').Value :=
            GetcFrom(myParams.ParamValues['EmployTypeID'], ftInteger);
          Parameters.ParamByName('EmployTypeIDTo').Value :=
            GetcTo(myParams.ParamValues['EmployTypeID'], ftInteger);

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

procedure TFunctionItems2F.UpdateList;
var
  CurentPid: Integer;
begin
  GetYearMounth(MonthNo);
  StandardDays;
  CurentPid := 0;
  if qryPersonel.Active then
    CurentPid := qryPersonel.FieldByName('PersonelNo').AsInteger;
  with qryPersonel do
  begin
    Active := false;
    Parameters.ParamByName('Mounth').Value := MonthNo;
    GetYearMounth(MonthNo);
    Parameters.ParamByName('Date').Value := optP.YearMounth;
    Parameters.ParamByName('Years').Value := yrcmbx1.YearID;
      Parameters.ParamByName('YearID').Value := APPBank.Year;
    // Parameters.ParamByName('Date').Value := IntToStr(yrcmbx1.YearID) + '/' +
    // RightStr('00' +  IntToStr(MonthNo), 2);
    // Parameters.ParamByName('YearMounth1').Value:=opt.YearMounth;
    // Parameters.ParamByName('YearMounth2').Value:=opt.YearMounth;
    // AND (LEFT(Interdicts.InterdicStartDate, 7) <=  :YearMounth1 )  AND  (LEFT(Interdicts.InterdicEndDate, 7) >= :YearMounth2 )
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
  end; // with
  with qryFunctions do
  begin
    try
      Active := false;
      Parameters.ParamByName('Mo').Value := MonthNo;
      Parameters.ParamByName('EmployeeNo').Value :=
        qryPersonel.FieldByName('PersonelNo').AsInteger;
      Parameters.ParamByName('Years').Value := yrcmbx1.YearID;
      Parameters.ParamByName('YearID').Value := APPBank.Year;

      checkArchiveID(MonthNo, qryFunctions);
      Active := true;
    finally
      qryPersonel.Requery;
    end; // try
  end; // with
  if CurentPid <> 0 then
    qryPersonel.Locate('PersonelNo', CurentPid, []);
end;

procedure TFunctionItems2F.FormCreate(Sender: TObject);
begin
  inherited;
  qryInitQry.Open;
  yrcmbx1.YearsParam := APPBank.Year;
  yrcmbx1.YearID := APPBank.Year;
  FormType := var_glb_gParam;
  lblCaption.Hint := IntToStr(FormType);
  MonthNo := var_glb_CurrentMonth;
  if MonthNo < 1 then
    MonthNo := 1;
  ToolBar1.Buttons[MonthNo - 1].Down := true;
  InitForm;
  qryCTopic3.Active := true;
  qryProcCode.Active := true;
  showMessage := true;
  Fday_Id := ColumnIndexByFieldName(DBGrid2, 'Fday');
  FTime_Id := ColumnIndexByFieldName(DBGrid2, 'FTime');
  FTimeH_Id := ColumnIndexByFieldName(DBGrid2, 'FTimeH');
  FTimeM_Id := ColumnIndexByFieldName(DBGrid2, 'FTimeM');
  Day_Id := ColumnIndexByFieldName(DBGrid2, '_Day');
  Time_Id := ColumnIndexByFieldName(DBGrid2, '_Time');
  // qryFunctions.Properties['Update Criteria'].Value := adCriteriaKey;
  DBGrid3.SetFooter4Sum([]);
end;

procedure TFunctionItems2F.ToolButton1Click(Sender: TObject);
begin
  inherited;
  MonthNo := (Sender as TToolButton).tag;
  UpdateList;
end;

procedure TFunctionItems2F.qryMasterAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if PnlRecall.Visible then
    with qryProject do
    begin
      Active := false;
      Parameters.ParamByName('PrvInfoID').Value :=
        qryMaster.FieldByName('FormInfoID').AsInteger;
      Active := true;
    end; // with
  with qryFunctions do
  begin
    Active := false;
    Parameters.ParamByName('FormId').Value :=
      IfThen(qryMaster.FieldByName('FormInfoID').IsNull, 0,
      qryMaster.FieldByName('FormInfoID').AsInteger);
    Parameters.ParamByName('Years').Value := yrcmbx1.YearID;
    Active := true;
  end; // with
end;

procedure TFunctionItems2F.qryPersonelAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if (qryFunctions.State in dseditmodes) then
    qryFunctions.Post;
  actcalc.Visible := qryPersonel.FieldByName('CalCulateType').AsInteger > 0;
  // setColumns2(DBGrid3,qryPersonel.FieldByName('CoefficientActive').AsInteger = 1,'FunctionDay','ReadOnly');

  with qryFunctions do
  begin
    Active := false;
    Parameters.ParamByName('Mo').Value := MonthNo;
    Parameters.ParamByName('EmployeeNo').Value :=
      qryPersonel.FieldByName('PersonelNo').AsInteger;
    Parameters.ParamByName('Years').Value := yrcmbx1.YearID;
    Active := true;

    /// ////////////////
    ///
    qryFunctions_AfterScroll;

    /// //////////////

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
end;

procedure TFunctionItems2F.qryFunctionsAfterInsert(DataSet: TDataSet);
begin
  inherited;
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
  DataSet.FieldByName('YearID').AsInteger := APPBank.Year;
  DataSet.FieldByName('Mounth').AsInteger := MonthNo;
  GetAProject_OfficeID('ProjectID', qryFunctions, yrcmbx1.YearID, MonthNo);
  GetAProject_OfficeID('OfficeCode', qryFunctions, yrcmbx1.YearID, MonthNo);
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
  DBGrid3.SetFocus;
  DBGrid3.SelectedIndex := 0;
end;

procedure TFunctionItems2F.FormShow(Sender: TObject);
begin
  inherited;
  if mainF.CheckActiveFunctions(mainF.MnuPay_Functions2F) then
    Close;
  // DBGrid2.Columns[2].Visible := false;
  // DBGrid2.Columns[3].Visible := false;
  DBGrid2.Columns[Fday_Id].Visible := false;
  DBGrid2.Columns[FTime_Id].Visible := false;
  DBGrid2.Columns[FTimeH_Id].Visible := false;
  DBGrid2.Columns[FTimeM_Id].Visible := false;
  UpdateList;
  qryPersonel.First;
end;

procedure TFunctionItems2F.qryFormsInfoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  Abort;
end;

procedure TFunctionItems2F.qryFunctionsAfterPost(DataSet: TDataSet);
begin
  inherited;
  SaveItems;
  with qryFunctionItems do
  begin
    Active := false;
    Parameters.ParamByName('FunID').Value := GetFunctionID;
    Active := true;
  end; // with
  FillqryFormsInfo;
end;

procedure TFunctionItems2F.qryFunctions_AfterScroll;
begin

  // if DataSet.RecNo=1 then
  if optP.FunctionItemSeparation then
  begin
    qryFunctionItems.Active := false;
    qryFunctionItems.Parameters.ParamByName('FunID').Value := GetFunctionID;
    qryFunctionItems.Active := true;
  end;

  begin
    qryFormsInfo.Active := false;
    qryFormsInfo.Parameters.ParamByName('FormInfoID').Value :=
      qryPersonel.FieldByName('EmployTypeID').AsInteger;
    qryFormsInfo.Active := true;
  end; // with
end;

procedure TFunctionItems2F.qryFunctionsAfterScroll(DataSet: TDataSet);
begin
  inherited;

  /// ////////////////
  // if DataSet.RecNo=1 then
  if optP.FunctionItemSeparation then
  begin
    with qryFunctionItems do
    begin
      Active := false;
      Parameters.ParamByName('FunID').Value := GetFunctionID;
      Active := true;
    end;

    with qryFormsInfo do
    begin
      Active := false;
      Parameters.ParamByName('FormInfoID').Value :=
        qryPersonel.FieldByName('EmployTypeID').AsInteger;
      Active := true;
    end; // with

  end;

  /// //////////////
end;

procedure TFunctionItems2F.SaveItems;
begin
  With qryFormsInfo do
    try
      DisableControls;
      qryFunctionItems.First;
      while not qryFunctionItems.Eof do
        qryFunctionItems.Delete;
      First;
      while not Eof do
      begin
        if (FieldByName('Fday').AsFloat > 0.001) or
          (FieldByName('FTime').AsFloat > 0.001) then
        begin
          qryFunctionItems.Insert;
          qryFunctionItems.FieldByName('FunctionsItemsID').AsInteger :=
            GetANewCode('', 'Pay.FunctionsItems', 'FunctionsItemsID');
          qryFunctionItems.FieldByName('FunctionID').AsInteger := GetFunctionID;
          qryFunctionItems.FieldByName('SalaryID').AsInteger :=
            FieldByName('FormInfoID').AsInteger;
          qryFunctionItems.FieldByName('Fdaily').AsFloat :=
            RoundTo(FieldByName('Fday').AsFloat, -2);
          qryFunctionItems.FieldByName('FHours').AsFloat :=
            RoundTo(FieldByName('FTime').AsFloat, -2);
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

end;

procedure TFunctionItems2F.FillqryFormsInfo;
begin
  DBGrid2.Columns[Fday_Id].Visible := true;
  DBGrid2.Columns[FTime_Id].Visible := true and not optP.FunctionActiveMinutes;
  DBGrid2.Columns[FTimeH_Id].Visible := optP.FunctionActiveMinutes;
  DBGrid2.Columns[FTimeM_Id].Visible := optP.FunctionActiveMinutes;
  DBGrid2.Columns[Day_Id].Visible := false;
  DBGrid2.Columns[Time_Id].Visible := false;
  With qryFormsInfo do
    try
      DisableControls;
      First;
      while not Eof do
      begin
        Edit;
        FieldByName('Fday').AsFloat := RoundTo(FieldByName('_day').AsFloat, -2);
        FieldByName('Ftime').AsFloat :=
          RoundTo(FieldByName('_Time').AsFloat, -2);

        FieldByName('FTimeH').AsFloat :=
          RoundTo(Trunc(FieldByName('_Time').AsFloat), -2);
        FieldByName('FTimeM').AsFloat :=
          RoundTo(DesimalToTime(FieldByName('_Time').AsFloat -
          Trunc(FieldByName('_Time').AsFloat)), -2);
        FieldByName('AccTopicCode').AsInteger := FieldByName('_AccTopicCode')
          .AsInteger;
        FieldByName('AccDetailCode').AsInteger := FieldByName('_AccDetailCode')
          .AsInteger;
        FieldByName('AccCTopicCode').AsInteger := FieldByName('_AccCTopicCode')
          .AsInteger;
        FieldByName('AccCTopicCode2').AsInteger :=
          FieldByName('_AccCTopicCode2').AsInteger;
        Post;
        next;
      end; // while
      First;
    finally
      EnableControls;
    end;

end;

procedure TFunctionItems2F.qryFunctionsAfterCancel(DataSet: TDataSet);
begin
  inherited;
  actcalc.Execute;
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

procedure TFunctionItems2F.SrcFunctionsStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qryFunctions.State in dseditmodes;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
  actCalcAll.Visible := newPanel.Visible;
  DBGrid1.Enabled := newPanel.Visible;

  okPanel2.Visible := qryFunctions.State in dseditmodes;
  newPanel2.Visible := not okPanel2.Visible;
  BtnReject.Cancel := newPanel2.Visible;

  FreeReservedCodes(DMF.adcSalary);

  // if newPanel.Visible then
  // DBGrid3.Options:=DBGrid3.Options+[dgRowSelect,dgMultiSelect]
  // else
  // DBGrid3.Options:=DBGrid3Options

  // or((qryFunctions.State in dsInsert)
  // if (qryFunctions.State in dsEditModes) then
  // c_a_l_c:=True;
end;

procedure TFunctionItems2F.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qryPersonel.DisableControls;
    qryFunctions.DisableControls;
    InitReportFile(ppReport1, 'Function2');
  finally
    qryPersonel.EnableControls;
    qryFunctions.DisableControls;
  end;
end;

procedure TFunctionItems2F.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryPersonel);
end;

procedure TFunctionItems2F.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryPersonel);
end;

procedure TFunctionItems2F.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid3);
end;

procedure TFunctionItems2F.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  gridkeyenter(Sender, Key);
end;

procedure TFunctionItems2F.qryFunctionsAfterDelete(DataSet: TDataSet);
begin
  inherited;
  actcalc.Execute;
  BigMessage('حـذف شــد', 1);
end;

procedure TFunctionItems2F.qryFunctionsBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if not CheckUserlevel(qryInitQry.FieldByName('DeleteLevelID').AsInteger) then
    Abort;
  if not EditSituation(DataSet) then
    Abort;
  if not FunctionDelete(qryPersonelPersonelNo.AsInteger, MonthNo) then
    Abort;
  if get_response('آيا از حذف مطمئن هستيد.') <> mrYes then
    Abort;
end;

procedure TFunctionItems2F.qryFunctionsBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if not EditSituation(DataSet) then
    Abort;
  if not CheckUserlevel(qryInitQry.FieldByName('EditLevelID').AsInteger) then
    Abort
end;

procedure TFunctionItems2F.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryPersonelPersonelNo);
end;

procedure TFunctionItems2F.DBGrid1SearchPanelSearchEditKeyPress
  (Grid: TCustomDBGridEh; SearchEdit: TDBGridSearchPanelTextEditEh;
  var Key: Char);
begin
  inherited;
  qryPersonel.AfterScroll := Nil;
  qryPersonel.BeforeScroll := Nil;
end;

procedure TFunctionItems2F.actCalcAllExecute(Sender: TObject);
var
  ProjectID, FunctionDay, OfficeCode: Integer;
  FunctionTime: Real;
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
  OfficeCode := qryFunctions.FieldByName('OfficeCode').AsInteger;
  ProjectID := qryFunctions.FieldByName('ProjectID').AsInteger;
  FunctionDay := qryFunctions.FieldByName('FunctionDay').AsInteger;
  FunctionTime := qryFunctions.FieldByName('FunctionTime').AsFloat;
  DBGrid1.Enabled := false;
  With qryPersonel do
  begin
    next;
    BigMessageProgBar('در حال ثبت...', RecordCount);
    while not Eof do
    begin
      GoProgressBar(qryPersonel.FieldByName('PersonelNo').AsString + ' <-> ' +
        qryPersonel.FieldByName('PersonName_L1').AsString);
      // BigMessage(qryPersonel.FieldByname('PersonelNo').AsString+' <-> '+qryPersonel.FieldByname('PersonName_L1').AsString ,0);
      qryFunctions.Edit;
      qryFunctions.FieldByName('OfficeCode').AsInteger := OfficeCode;
      qryFunctions.FieldByName('ProjectID').AsInteger := ProjectID;
      qryFunctions.FieldByName('FunctionDay').AsInteger := FunctionDay;
      qryFunctions.FieldByName('FunctionTime').AsFloat := FunctionTime;
      qryFunctions.Post;
      qryFunctions.next;
    end;
  end;
  DBGrid1.Enabled := true;
  BigMessage('ثبــت شد', 1);
end;

procedure TFunctionItems2F.actAccExecute(Sender: TObject);
begin
  inherited;
  if not(qryFunctions.State in dseditmodes) then
    qryFunctions.Edit;
  AccountpF.Enter(qryFormsInfo);
end;

procedure TFunctionItems2F.qryFunctionsBeforePost(DataSet: TDataSet);
var
  FunctionDay: Integer;
begin
  inherited;
  // if not FunctionDelete(qryPersonelPersonelNo.AsInteger, MonthNo) then
  // Abort;

  DataSet.FieldByName('Years').AsInteger := yrcmbx1.YearID;
  if not CheckRequiredFields(DataSet) then
    Abort;
  if not SumFunctionDayChk(FunctionDay) then
  begin
    // if qryFunctions.RecNo = qryFunctions.RecordCount - 1 then
    // qryFunctionsFunctionDay.AsInteger :=
    // qryFunctionsFunctionDay.AsInteger - 1;
    Abort;
  end;
  qryFunctions.tag := DataSet.FieldByName('FunctionID').AsInteger;

  if not FunctionDateChech(FunctionDay, CurrentDate, qryPersonel, qryFunctions)
  then
    Abort;
  // if qryPersonel.FieldByName('InterdicEndDate').AsString < CurrentDate then
  // begin
  // Warn('لطفأ تاريخ پايان قرارداد كنترل شود.‏');
  // Abort;
  // end;
  // if qryFunctions.FieldByName('FunctionDay').AsFloat + qryFunctions.FieldByName
  // ('FunctionTime').AsFloat = 0 then
  // begin
  // Warn('ساعت يا روز را وارد كنيد.‏');
  // Abort;
  // end;

end;

function TFunctionItems2F.SumFunctionDayChk(var FunctionDay: Integer): Boolean;
begin
  Result := true;
  With TADOQuery.Create(Self) do
  begin
    Clone(qryFunctions, ltReadOnly);
    Filter := 'FunctionID <> ' + qryFunctions.FieldByName('FunctionID')
      .AsString;
    Filtered := true;
    First;
    FunctionDay := 0;
    while not Eof do
    begin
      FunctionDay := FunctionDay + FieldByName('FunctionDay').AsInteger +
        FieldByName('SickDay').AsInteger;
      next;
    end;
    Free;
  end; // with

  FunctionDay := FunctionDay + qryFunctions.FieldByName('FunctionDay').AsInteger
    + qryFunctions.FieldByName('SickDay').AsInteger;
  if FunctionDay <= DayStandard then
    exit;
  Result := false;
  Warn2('تعداد روزهاي ثبت شده ' + IntToStr(FunctionDay) +
    ' روز مي شود كه بيشتر از ' + IntToStr(DayStandard) +
    ' روز استاندارد تعريف شده در سيستم است.‏');

end;

procedure TFunctionItems2F.qryFormsInfoBeforePost(DataSet: TDataSet);
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

procedure TFunctionItems2F.qryFormsInfoFTimeHChange(Sender: TField);
begin
  inherited;
  qryFormsInfo.FieldByName('FTime').AsFloat :=
    RoundTo(qryFormsInfo.FieldByName('FTimeH').AsInteger +
    TimeToDesimal(qryFormsInfo.FieldByName('FTimeM').AsInteger), -2)
end;

procedure TFunctionItems2F.qryFunctionsFunctionTimeChange(Sender: TField);
begin
  inherited;
  if qryPersonel.FieldByName('CalCulateType').AsInteger <> 0 then
    qryFunctions.FieldByName('FunctionDay').AsInteger := 0;

  // If qryFormsInfo.RecordCount<>1 then Exit;
  // if not(qryFormsInfo.State in dseditmodes) then qryFormsInfo.Edit;
  // qryFormsInfo.FieldByName('Fday').Value:=qryFunctions.FieldByName('FunctionTime').Value;
  // qryFormsInfo.FieldByName('_day').Value:=qryFunctions.FieldByName('FunctionTime').Value;
end;

procedure TFunctionItems2F.StandardDays;
begin
  GetYearMounth(MonthNo);
  With DMF.qryTmpTmpp do
  begin
    Active := false;
    SQL.Text := 'SELECT StandardDays, StandardTimes FROM Pay.FormsInfo ';
    SQL.Add('WHERE (FormType=17)AND(InfoID= :MonthNo)');
    // SQL.Add('AND(Years= :Years)');
    Parameters.ParamByName('MonthNo').Value := MonthNo;
    // Parameters.ParamByName('Years').Value := yrcmbx1.YearID;
    Active := true;
    // if Fields[0].IsNull then DayStandard:=0  else
    DayStandard := Fields[0].AsInteger;
    TimeStandard := Fields[1].AsInteger;
  end; // with
  CurrentDate := '00';
  CurrentDate := CurrentDate + IntToStr(MonthNo);
  CurrentDate := '/' + RightStr(CurrentDate, 2) + '/';
  CurrentDate := optP.Year + CurrentDate + IntToStr(DayStandard)
end;

procedure TFunctionItems2F.DBGrid3EditButtonClick(Sender: TObject);
var
  // c: String;
  aDataSet: TDataSet;
  i: Smallint;
  s: Boolean;
  sqlText: String;
  Results: array [0 .. 10] of String;
  // theFields: Variant;
begin
  inherited;
  if (Sender as TCedarDbgrid).ReadOnly then
    exit;
  i := (Sender as TCedarDbgrid).SelectedIndex;
  aDataSet := (Sender as TCedarDbgrid).DataSource.DataSet;
  (Sender as TCedarDbgrid).SelectedIndex := i;
  if not(aDataSet.State in dseditmodes) then
    aDataSet.Edit;
  case i of
    0, 1, 2:
      begin
        sqlText :=
          'SELECT FormsInfo.InfoID, FormsInfo.FormInfoID, ISNULL(FormsInfo_1.InfoName_L1 + '' - '', '''') + FormsInfo.InfoName_L1 AS InfoName_L1, '
          + ' FormsInfo.InfoName_L2 FROM Pay.FormsInfo LEFT OUTER JOIN Pay.FormsInfo AS FormsInfo_1 ON FormsInfo.PrvInfoID = FormsInfo_1.FormInfoID '
          + ' WHERE  FormsInfo.FormType = ' + qryInitForm.FieldByName
          ('FormInfo4Function').AsString;
        if PnlRecall.Visible then
          sqlText := sqlText + 'AND (PrvInfoID = ' + qryMaster.FieldByName
            ('FormInfoID').AsString + ')';

        s := searchCode_ADOF.SearchCode2(DMF.adcSalary, ' كد و سطح عنوان قبلي ',
          sqlText, ['كد', '', 'عنوان 1', 'InfoName'], Results,
          [70, 0, 180, 180], alLeft);
        if s then
        begin
          if not(aDataSet.State in dseditmodes) then
            aDataSet.Edit;
          aDataSet.FieldByName('ProjectRow').AsString := Results[0];
          aDataSet.FieldByName('ProjectID').AsString := Results[1];
        end; // if
      end; // 4
    6:
      begin
        s := searchCode_ADOF.SearchCode2(DMF.adcSalary, 'واحد سازماني',
          'SELECT FormInfoID, InfoID, InfoName_L1, InfoName_L2 FROM Pay.FormsInfo WHERE FormType = 12',
          ['', 'كد ', 'نام واحد سازماني', 'نام واحد سازماني'], Results,
          [0, 20, 100, 100], alLeft);
        if s then
        begin
          if not(qryFunctions.State in dseditmodes) then
            qryFunctions.Edit;
          qryFunctions.FieldByName('OfficeCode').AsString := Results[0];
        end; // if
      end; // 2
    9:
      begin
        s := searchCode_ADOF.SearchCode2(DMF.adcSalary,
          'كد ' + qryInitForm.FieldByName('ProcName').AsString,
          'SELECT FormInfoID, InfoID, InfoName_L1, InfoName_L2 FROM Pay.FormsInfo WHERE FormType = 67',
          ['', 'كد ', 'عنوان', 'InfoName'], Results, [0, 20, 100, 100], alLeft);
        if s then
        begin
          if not(qryFunctions.State in dseditmodes) then
            qryFunctions.Edit;
          qryFunctions.FieldByName('ProcCode').ReadOnly := false;
          qryFunctions.FieldByName('ProcCode').AsString := Results[0];
          qryFunctions.FieldByName('ProcCode').ReadOnly := true;
        end;
      end; // 8
    11:
      begin
        s := searchCode_ADOF.SearchCode2(DMF.adcSalary,
          'كد ' + qryInitForm.FieldByName('EarthName').AsString,
          'SELECT FormInfoID, InfoID, InfoName_L1, InfoName_L2 FROM Pay.FormsInfo WHERE FormType = 69',
          ['', 'كد ', 'عنوان', 'InfoName'], Results, [0, 20, 100, 100], alLeft);
        if s then
        begin
          if not(qryFunctions.State in dseditmodes) then
            qryFunctions.Edit;
          qryFunctions.FieldByName('CTopic3').ReadOnly := false;
          qryFunctions.FieldByName('CTopic3').AsString := Results[0];
          qryFunctions.FieldByName('CTopic3').ReadOnly := true;
        end;
      end; // 8

  end; // case
end;

procedure TFunctionItems2F.DBGrid3Exit(Sender: TObject);
begin
  inherited;
  if not(qryFunctions.State in dseditmodes) then
    actcalc.Execute
end;

procedure TFunctionItems2F.DBGrid3KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  gridkeyenter2(Sender, Key);
end;

procedure TFunctionItems2F.gridkeyenter2(Sender: TObject; var Key: Char);
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
          exit;
        aDataSet := (Sender as TCedarDbgrid).DataSource.DataSet;
        Key := #0;
        case curIndex of
          0:
            nextIndex :=
              IfThen((aDataSet.FieldByName('_projectname_L1')
              .AsString = ''), 0, 3);
          1:
            nextIndex :=
              IfThen((aDataSet.FieldByName('_projectname_L1')
              .AsString = ''), 0, 3);
          2:
            nextIndex :=
              IfThen((aDataSet.FieldByName('_projectname_L1')
              .AsString = ''), 0, 3);
          3:
            nextIndex := 4;
          4:
            nextIndex := 5;
          5:
            nextIndex := 6;
          6:
            nextIndex := 9;
          7:
            nextIndex := 9;
          8:
            nextIndex := 9;
          9:
            nextIndex := 11;
          10:
            nextIndex := 11;
          11:
            nextIndex := -1;
          12:
            nextIndex := -1;
          13:
            nextIndex := -1;
        end; // case
      end; // #13
    '+':
      begin
        Key := #0;
        nextIndex := curIndex - 1;
        while (nextIndex >= 0) and (not(DBGrid3.Columns[nextIndex].Visible) OR
          (DBGrid3.Columns[nextIndex].ReadOnly)) do
          Dec(nextIndex);
        if nextIndex < 0 then
          nextIndex := -3;
      end; // +
    '*':
      begin
        Key := #0;
        SendKeys('000', false);
      end; // *
    #27:
      if (Sender as TCedarDbgrid).DataSource.DataSet.State in dseditmodes then
        (Sender as TCedarDbgrid).DataSource.DataSet.Cancel;

      #32, #157: if curIndex in [0, 1, 2, 6, 9, 11] then
    begin
      Key := #0;
      DBGrid3EditButtonClick(Sender);
    end; // if
  end; // case

  if nextIndex >= 0 then
    while (nextIndex < DBGrid3.Columns.Count) and
      (not(DBGrid3.Columns[nextIndex].Visible) OR
      (DBGrid3.Columns[nextIndex].ReadOnly)) do
      Inc(nextIndex);
  if nextIndex >= (Sender as TCedarDbgrid).Columns.Count then
    nextIndex := -1;
  if (curIndex <> nextIndex) then
    case nextIndex of
      - 1:
        begin
          sendkey(vk_down, [], false);
          (Sender as TCedarDbgrid).SelectedIndex := 0;
        end; // 0
      -2:
        begin
          if (Sender as TCedarDbgrid).DataSource.State in dseditmodes then
            (Sender as TCedarDbgrid).DataSource.DataSet.Cancel;
          Perform(WM_NEXTDLGCTL, 0, 0);
        end; // -2
      -3:
        begin
          if (Sender as TCedarDbgrid).DataSource.State in dseditmodes then
            (Sender as TCedarDbgrid).DataSource.DataSet.Cancel;
          Perform(WM_NEXTDLGCTL, 1, 0);
        end; // -3
    else
      (Sender as TCedarDbgrid).SelectedIndex := nextIndex;
end; // case

end;

procedure TFunctionItems2F.qryFunctionsCalcFields(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('_StandardEmployAmount').AsCurrency :=
    qryPersonel.FieldByName('StandardEmployAmount').AsCurrency *
    qryFunctions.FieldByName('FunctionTime').AsCurrency;

end;

procedure TFunctionItems2F.qryFunctionsProcCodeGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  if (Sender as TField).IsNull then
    exit;
  TADOQuery(FindComponent('qry' + (Sender as TField).FieldName)).Requery();
  if TADOQuery(FindComponent('qry' + (Sender as TField).FieldName))
    .Locate('FormInfoID', (Sender as TField).Value, []) then
    Text := TADOQuery(FindComponent('qry' + (Sender as TField).FieldName))
      .FieldByName('InfoID').AsString
  else
    Text := (Sender as TField).Value
end;

procedure TFunctionItems2F.BitBtn17Click(Sender: TObject);
begin
  inherited;
  PopMnuOthers.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y)
end;

procedure TFunctionItems2F.ChkEndDateClick(Sender: TObject);
begin
  inherited;
  With qryPersonel do
  begin
    Filter := 'InterdicEndDate>=' + CurrentDate;
    Filtered := ChkEndDate.Checked;
  end;

end;

procedure TFunctionItems2F.ActShowInterdictExecute(Sender: TObject);
begin
  inherited;
  if mdiMainF.ActInterdictsF.Execute then
    InterdictsF.qryInterdicts.Locate('PersonelNo',
      qryPersonel.FieldByName('PersonelNo').AsVariant, [])

end;

procedure TFunctionItems2F.ActPersonelInfoFExecute(Sender: TObject);
begin
  inherited;
  if mdiMainF.ActPersonelInfoF.Execute then
    PersonelInfoF.qryPeronalInfo.Locate('PersonelNo',
      qryPersonel.FieldByName('PersonelNo').AsInteger, [])

end;

procedure TFunctionItems2F.actcalcExecute(Sender: TObject);
var
  MyDayStandard, MaxTime, c1, cSum: Real;
begin
  inherited;
  MaxTime := 0;
  SumFunctionTime := 0;
  if qryPersonel.FieldByName('CalCulateType').AsInteger = 0 then
    exit;
  if qryFunctions.IsEmpty then
    exit;
  qryFunctions.DisableControls;
  qryFunctionItems.DisableControls;
  qryFormsInfo.DisableControls;
  try
    // SumFunctionTime := qryFunctions.FieldByName('FunctionTime').AsFloat;

    SumFunctionTime := SumFunctionTime +
      CalcSumFiledsF(qryFunctions.FieldByName('FunctionTime'),
      'FunctionID <> ' + qryFunctions.FieldByName('FunctionID').AsString);

    MyDayStandard := DayStandard;
    case qryPersonel.FieldByName('CalCulateType').AsInteger of
      2:
        if SumFunctionTime < TimeStandard then
          MyDayStandard := RoundTo((DayStandard * SumFunctionTime) /
            TimeStandard, 0);
      12:
        if SumFunctionTime / 8 < DayStandard then
          MyDayStandard := RoundTo(SumFunctionTime / 8, 0);
    end;
    With qryFunctions do
    begin
      DisableControls;
      Requery();
      cSum := 0;
      qryFunctions.tag := qryFunctions.FieldByName('FunctionID').AsInteger;

      if qryPersonel.FieldByName('CoefficientActive').AsInteger = 1 then
      begin

        try
          BeforePost := nil;
          while not Eof do
          begin
            Edit;
            FieldByName('FunctionDay').AsFloat := 0;
            next;
          end;
        finally
          BeforePost := qryFunctionsBeforePost;
          /// ///////////////////
          First;
        end;
        // if sumFunctionTime<TimeStandard  then
        // CurentDayStandard:=sumFunctionTime / 8
        // else
        // CurentDayStandard:=MyDayStandard;

        Sort := 'FunctionTime DESC';
        while not Eof do
        begin
          c1 := RoundTo(FieldByName('FunctionTime').AsFloat * MyDayStandard /
            SumFunctionTime, 0);
          Edit;
          FieldByName('FunctionDay').AsFloat := c1;
          cSum := cSum + c1;

          case qryPersonel.FieldByName('CalCulateType').AsInteger of
            2:
              begin

                if cSum > MyDayStandard then
                begin
                  c1 := cSum - MyDayStandard;
                  FieldByName('FunctionDay').AsFloat :=
                    FieldByName('FunctionDay').AsFloat - c1;
                  if FieldByName('FunctionDay').AsFloat < 0 then
                    FieldByName('FunctionDay').AsFloat := 0;
                end;
                // // if (cSum>MyDayStandard)or
                // // ((qryFunctions.RecNo=qryFunctions.RecordCount)and(sumFunctionTime>=TimeStandard))
                // if ((cSum > MyDayStandard) or (SumFunctionTime >= TimeStandard))
                // and (qryFunctions.RecNo = qryFunctions.RecordCount) then
                // begin
                // cSum := cSum - c1;
                // /// //////////////////////////////////////////
                // if cSum <= DayStandard then
                // FunctionDay := DayStandard - cSum;
                // // FunctionDay := MyDayStandard - cSum;       بهرامی
                // /// ///////////////////////////////////////////
                //
                // // c1:=cSum-MyDayStandard-c1;
                // // FunctionDay:=FieldByName('FunctionDay').AsFloat-c1;
                // // FunctionDay:=FunctionDay+c1;
                // // if FunctionDay+cSum>DayStandard then
                // // FunctionDay:=FunctionDay+cSum-DayStandard;
                // FieldByName('FunctionDay').AsFloat := FunctionDay;
                // end;
              end;
          else
            begin
              if cSum > MyDayStandard then
              begin
                c1 := cSum - MyDayStandard;
                FieldByName('FunctionDay').AsFloat := FieldByName('FunctionDay')
                  .AsFloat - c1;
              end;
            end;
          end;

          if (RecordCount = RecNo) and (cSum < MyDayStandard) and
            (SumFunctionTime >= TimeStandard) then
            FieldByName('FunctionDay').AsFloat := FieldByName('FunctionDay')
              .AsFloat + MyDayStandard - cSum;

          next;
        end;
        Sort := '';

      end
      else if (qryPersonel.FieldByName('CalCulateType').AsInteger in [2, 12])
        and (FieldByName('FunctionDay').AsFloat <> MyDayStandard) then
      begin
        Edit;
        FieldByName('FunctionDay').AsFloat := MyDayStandard;
      end; // if

      BeforePost := qryFunctionsBeforePost;
      if State in dseditmodes then
        Post;

      // 0-ندارد
      // 1-ضريب از 30 روز
      // 2-ضريب از روزهاي استاندارد   ************************
      // 3-ضريب از ساعات استاندارد
      // 4-مبلغ ثابت
      // 5-ضريب از ماه
      // 6-حقوق روزانه    *****************************
      // 7-تقسيم بر 30 ضربدر روزهاي استاندارد
      // 8- كاركرد بعلاوه ايام بيماري تقسيم بر 30
      // 9-روزهاي كاركرد ، كاركرد اصلي جهت ساير مزايا
      // 10-ساعات كاركرد ، كاركرد اصلي ، جهت ساير مزايا
      // 11-مبلغ ثابت بدون در نظر گرفتن پروژه
      // 12-حقوق ساعتي

      // 0-ندارد
      // 1-اضافه كاري  ******************************
      // 2-شب كاري
      // 3-نوبت كاري
      // 4-تعطيل كاري(روز)
      // 5-تعطيل كاري(ساعت)
      // 6-مرخصي استحقاقي(روز)
      // 7-مرخصي استحقاقي(ساعت)
      // 8-مرخصي استعلاجي
      // 9-ماموريت(روز)
      // 10-ماموريت(ساعت)
      // 11-غيبت
      // 12-مرخصي ساعتي
      // 13-مرخصي بدون حقوق
      // 14-كارانه           *************************

      if qryPersonel.FieldByName('CalCulateType').AsInteger in [2, 6] then
      begin
        SumFunctionTime := SumFunctionTime - TimeStandard;
        If qryFormsInfo.Locate('RecalKindClock', 1, []) then
        begin
          // if not(qryFormsInfo.State in dseditmodes) then
          qryFormsInfo.Edit;
          MaxTime := qryFormsInfo.FieldByName('MaxTime').AsFloat;
          if SumFunctionTime < qryFormsInfo.FieldByName('MaxTime').AsFloat then
            MaxTime := SumFunctionTime;
          qryFormsInfo.FieldByName('FTime').Value := MaxTime;
          qryFormsInfo.FieldByName('_Time').Value := MaxTime;
        end;

        If qryFormsInfo.Locate('RecalKindClock', 14, []) then
        begin
          // if not(qryFormsInfo.State in dseditmodes) then
          qryFormsInfo.Edit;
          MaxTime := SumFunctionTime - MaxTime;
          if MaxTime > 0 then
            qryFormsInfo.FieldByName('FTime').Value := MaxTime;
          qryFormsInfo.FieldByName('_Time').Value := MaxTime;
          qryFormsInfo.Post;
        end;

      end;
    end;
  finally
    SaveItems;
    qryFunctions.First;
    qryFunctions.EnableControls;
    qryFunctionItems.EnableControls;
    qryFormsInfo.EnableControls;
    if showMessage then
      BigMessage('محاسبه شد', 1);
    qryFunctions_AfterScroll

  end
end;

procedure TFunctionItems2F.qryFunctionsBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if not CheckUserlevel(qryInitQry.FieldByName('ADDLevelID').AsInteger) then
    Abort;
  if qryPersonel.FieldByName('InterdicEndDate').AsString < CurrentDate then
  begin
    qryPersonel.next;
    Abort;
  end;
end;

procedure TFunctionItems2F.Panel1Exit(Sender: TObject);
begin
  inherited;
  actcalc.Execute;
end;

procedure TFunctionItems2F.actGetExcelExecute(Sender: TObject);
begin
  inherited;
  GetExcelF.ShowImPortExcel(qryFunctions);
end;

procedure TFunctionItems2F.qryPersonelBeforeScroll(DataSet: TDataSet);
begin
  inherited;
  qryFunctionItems.Close;
  qryFunctions.Close;
  qryFormsInfo.Close;
end;

procedure TFunctionItems2F.qryFunctionsAfterOpen(DataSet: TDataSet);
begin
  inherited;
  with qryFunctionItems do
  begin
    Active := false;
    Parameters.ParamByName('FunID').Value := GetFunctionID;
    Active := true;
  end; // with
end;

function TFunctionItems2F.GetFunctionID;
begin
  if optP.FunctionItemSeparation then
  begin
    Result := qryFunctions.FieldByName('FunctionID').AsInteger;
  end
  else
  begin
    With TADOQuery.Create(Self) do
      try
        Clone(qryFunctions, ltReadOnly);
        First;
        Result := FieldByName('FunctionID').AsInteger;
        if (Result = 0) then
          Result := qryFunctions.tag;
      finally
        Free;
      end;

  end;

end;

procedure TFunctionItems2F.qryFormsInfoAfterOpen(DataSet: TDataSet);
begin
  inherited;
  FillqryFormsInfo;
end;

procedure TFunctionItems2F.DBGrid1CellClick(Column: TColumnEh);
begin
  inherited;
  qryPersonel.AfterScroll := qryPersonelAfterScroll;
  qryPersonel.BeforeScroll := qryPersonel.BeforeScroll;
  qryPersonelAfterScroll(qryPersonel);
end;

procedure TFunctionItems2F.DBGrid1DrawColumnCell(Sender: TObject;
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

procedure TFunctionItems2F.DBGrid1Enter(Sender: TObject);
begin
  inherited;
  RequeryqryPersonel;
end;

procedure TFunctionItems2F.RequeryqryPersonel;
var
  rid: Integer;
begin
  if not(qryFunctions.State in dseditmodes) then
  begin
    rid := qryPersonel.FieldByName('PersonelNo').AsInteger;
    qryPersonel.Requery();
    qryPersonel.Locate('PersonelNo', rid, []);
  end;
end;

procedure TFunctionItems2F.actCalcAllDayExecute(Sender: TObject);
begin
  inherited;
  if get_response
    ('آيا براي محاسبه روزهاي كاركرد با توجه به ساعات وارد شده از پرسنل جاري تا آخر ليست مطمئن هستيد.')
    <> mrYes then
    exit;
  With qryPersonel do
    try
      showMessage := false;
      qryFormsInfo.DisableControls;
      qryFunctions.DisableControls;
      while not Eof do
      begin
        actcalc.Execute;
        next;
      end;
    finally
      qryFormsInfo.EnableControls;
      qryFunctions.EnableControls;
      showMessage := true;
    end;
  BigMessage('محاسبه شد', 1);
end;

procedure TFunctionItems2F.actSetSelectedSituation0Execute(Sender: TObject);
begin
  inherited;
  SetSelectedSituation(DBGrid3, nil, 0, 'pay.Functions', 'FunctionID',
    qryInitForm)
end;

procedure TFunctionItems2F.actSetSelectedSituation1Execute(Sender: TObject);
begin
  inherited;
  SetSelectedSituation(DBGrid3, nil, 1, 'pay.Functions', 'FunctionID',
    qryInitForm)
end;

procedure TFunctionItems2F.actSetSelectedSituationAll0Execute(Sender: TObject);
begin
  inherited;
  if not User.PowerUser then
  begin
    Warn('اين امكان براي شما وجود ندارد');
    exit;
  end;
  SetSituation('Pay.Functions', 0, MonthNo,
    qryPersonel.Parameters.ParamByName('PersonelNoFrom').Value,
    qryPersonel.Parameters.ParamByName('PersonelNoTo').Value, qryInitForm)
end;

procedure TFunctionItems2F.actSetSelectedSituationAll1Execute(Sender: TObject);
begin
  inherited;
  SetSituation('Pay.Functions', 1, MonthNo,
    qryPersonel.Parameters.ParamByName('PersonelNoFrom').Value,
    qryPersonel.Parameters.ParamByName('PersonelNoTo').Value, qryInitForm)
end;

procedure TFunctionItems2F.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  Text := GetPrintDate;
end;

procedure TFunctionItems2F.ppSysVarPageNoGetText(Sender: TObject;
  var Text: String);
begin
  Text := GetPageNumberString(Text)
end;

procedure TFunctionItems2F.ppLblCaptionGetText(Sender: TObject;
  var Text: String);
begin
  Text := Caption;
end;

procedure TFunctionItems2F.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  Text := APPBank.CompanyName;
end;

end.
