unit FunctionDayChek;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, DBCtrls, StdCtrls, Mask, Buttons,
  ImgList, DBActns, ActnList, ExtCtrls, ComCtrls, ToolWin, DB, ADODB,
  ppDB, ppBands, ppCtrls, ppVar, ppPrnabl, ppClass,
  ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDBPipe, Menus,
  ppParameter, ppDesignLayer, System.ImageList, System.Actions,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid;

type
  TFunctionDayChekF = class(Ttemplate2MDIF)
    qryPersonel: TADOQuery;
    qryInitForm: TADOQuery;
    BitBtn2: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn9: TBitBtn;
    qryFunctionDay: TADOQuery;
    SrcFunctionDay: TDataSource;
    srcFunctionDayItems: TDataSource;
    qryFunctionDayItems: TADOQuery;
    actSort: TAction;
    actSendToExcel: TAction;
    qryOfficeCode: TADOQuery;
    qryFunctionDayItemsFunItemID: TIntegerField;
    qryFunctionDayItemsFunID: TIntegerField;
    qryFunctionDayItemsPersonelNo: TIntegerField;
    qryFunctionDayItemsPeresentID: TIntegerField;
    qryFunctionDayItemsFunTime: TFloatField;
    qryFunctionDayItemsExtTime: TFloatField;
    qryFunctionDayItemsShiftNo: TIntegerField;
    qryFunctionDayItemsWorkID: TIntegerField;
    qryFunctionDayItemsEarthCode: TIntegerField;
    qryFunctionDayItemsProcCode: TIntegerField;
    qryFunctionDayItemsFirstUser: TStringField;
    qryFunctionDayItemsLastUser: TVarBytesField;
    qryFunctionDayItemsStandardRate: TBCDField;
    qryFunctionDayItems_PersonelName: TStringField;
    qryPeresentID: TADOQuery;
    qryFunctionDayItems_PeresentID: TStringField;
    qryShiftNo: TADOQuery;
    qryFunctionDayItems_ShiftNo: TStringField;
    qryFunctionDayItems_WorkID: TStringField;
    qryWorkID: TADOQuery;
    qryProcCode: TADOQuery;
    qryFunctionDayItems_ProcCode: TStringField;
    BitBtn1: TBitBtn;
    ppDBPipeline1: TppDBPipeline;
    ppDBPipeline2: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppLblCompanyName: TppLabel;
    ppLblCaption: TppLabel;
    ppLblPrintDate: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppLineDetail: TppLine;
    ppLin4Position: TppLine;
    ppFooterBand1: TppFooterBand;
    ppShape2: TppShape;
    ppLabel4: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppShape3: TppShape;
    ppLabel2: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    BitBtn10: TBitBtn;
    PopList4Print: TPopupMenu;
    AllClikPop: TMenuItem;
    qryEarthCode: TADOQuery;
    qryFunctionDayItems_EarthCode: TStringField;
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
    qryFunctionDayItemsFunNo: TIntegerField;
    qryFunctionDayItemsFunDate: TStringField;
    qryFunctionDayMasterCode: TIntegerField;
    qryFunctionDayName: TStringField;
    grpMaster: TGroupBox;
    sbtnMaster: TSpeedButton;
    EdtCode: TDBEdit;
    DBEdit1: TDBEdit;
    DBNavigator2: TDBNavigator;
    actFilter: TAction;
    qryFunctionDayItemsState: TWordField;
    BtnDelete: TBitBtn;
    actDelete: TAction;
    BitBtn3: TBitBtn;
    srcSumDayItems: TDataSource;
    qrySumDayItems: TADOQuery;
    qrySumDayItemsPeresentID: TIntegerField;
    qrySumDayItemsInfoName_L1: TStringField;
    qrySumDayItemsPeresentIDCount: TIntegerField;
    qrySumDayItemsFunTime: TFloatField;
    qrySumDayItemsExtTime: TFloatField;
    qrySumDayItemsShiftNo: TIntegerField;
    actTotalChange: TAction;
    BitBtn4: TBitBtn;
    GrdSumDayItems: TCedarDbgrid;
    DBGrid1: TCedarDbgrid;
    qryFunctionDaySituation: TWordField;
    procedure FormCreate(Sender: TObject);
    procedure qryFunctionDayAfterScroll(DataSet: TDataSet);
    procedure SrcFunctionDayStateChange(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure qryFunctionDayItemsAfterEdit(DataSet: TDataSet);
    procedure qryFunctionDayItemsAfterInsert(DataSet: TDataSet);
    procedure qryFunctionDaystateGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qryFunctionDaystateSetText(Sender: TField; const Text: String);
    procedure qryFunctionDayItemsBeforeEdit(DataSet: TDataSet);
    procedure qryFunctionDayItemsBeforeInsert(DataSet: TDataSet);
    procedure qryFunctionDayItemsBeforePost(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable1GetText(Sender: TObject; var Text: String);
    procedure BitBtn10Click(Sender: TObject);
    procedure AllClikPopClick(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qryFunctionDayItemsAfterDelete(DataSet: TDataSet);
    procedure qryFunctionDayItemsBeforeDelete(DataSet: TDataSet);
    procedure sbtnMasterClick(Sender: TObject);
    procedure qryFunctionDayItemsAfterScroll(DataSet: TDataSet);
    procedure actDeleteExecute(Sender: TObject);
    procedure qryFunctionDayItemsAfterOpen(DataSet: TDataSet);
    procedure actTotalChangeExecute(Sender: TObject);
    procedure actSetSelectedSituation0Execute(Sender: TObject);
    procedure actSetSelectedSituationAll0Execute(Sender: TObject);
    procedure actSetSelectedSituation1Execute(Sender: TObject);
    procedure actSetSelectedSituationAll1Execute(Sender: TObject);
  private
    { Private declarations }
    FormType: Byte;
    MonthNo: Byte;
    CurrentDate: String;
    procedure InitForm;
    procedure gridkeyenter(Sender: TObject; var Key: Char);
    procedure UpdateList;
  public
    { Public declarations }
  end;

var
  FunctionDayChekF: TFunctionDayChekF;

implementation

uses searchCode_ADO, GlobalPro, DM, search2, sort2, sndkey32, mmessage,
  filter_ADO, FilterClass_ADO, SalaryFunctions, DBGrid2Print, TotalChange,
  FaraConsts;
{$R *.dfm}

procedure TFunctionDayChekF.gridkeyenter(Sender: TObject; var Key: Char);
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
        // aDataSet:=(Sender as TcedarDBGrid).DataSource.DataSet;
        Key := #0;
        case curIndex of
          0:
            nextIndex := 1;
          1:
            nextIndex := 2;
          2:
            nextIndex := 4;
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
            nextIndex := 10;
          9:
            nextIndex := 10;
          10:
            nextIndex := 12;
          11:
            nextIndex := 12;
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
        while (nextIndex >= 0) and (not(DBGrid1.Columns[nextIndex].Visible) OR
          (DBGrid1.Columns[nextIndex].ReadOnly)) do
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

      #32, #157: if curIndex in [2, 6, 8, 10, 12] then
    begin
      Key := #0;
      DBGrid1EditButtonClick(Sender);
    end; // if
  end; // case

  if nextIndex >= 0 then
    while (nextIndex < DBGrid1.Columns.Count) and
      (not(DBGrid1.Columns[nextIndex].Visible) OR
      (DBGrid1.Columns[nextIndex].ReadOnly)) do
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

procedure TFunctionDayChekF.InitForm;
var
  b: Boolean;
begin
  with qryInitForm do
  begin
    Active := false;
    Parameters.ParamByName('FormType').Value := FormType;
    Active := true;
    // __________________               EarthCode          __________________________
    b := FieldByName('EarthProceedsActivate').AsInteger in [1, 3];
    setColumns2(DBGrid1, b, 'EarthCode');
    setColumns2(DBGrid1, b, '_EarthCode');
    qryFunctionDayItems.FieldByName('EarthCode').Required := b;
    qryFunctionDayItems.FieldByName('_EarthCode').Required := b;
    // __________________                ProcCode          __________________________
    b := FieldByName('EarthProceedsActivate').AsInteger in [2, 3];
    setColumns2(DBGrid1, b, 'ProcCode');
    setColumns2(DBGrid1, b, '_ProcCode');
    qryFunctionDayItems.FieldByName('ProcCode').Required := b;
    qryFunctionDayItems.FieldByName('_ProcCode').Required := b;

  end; // with
  qryPersonel.Active := true;
  qryPeresentID.Active := true;
  qryShiftNo.Active := true;
  qryWorkID.Active := true;
  qryProcCode.Active := true;
  qryEarthCode.Active := true;
  qryOfficeCode.Active := true;
  // UpdateList;
end;

procedure TFunctionDayChekF.FormCreate(Sender: TObject);
begin
  inherited;
  SetLookUpCash(qryFunctionDay);
  SetLookUpCash(qryFunctionDayItems);
  FormType := var_glb_gParam;
  MonthNo := var_glb_CurrentMonth;
  if MonthNo < 1 then
    MonthNo := 1;
  ToolBar1.Buttons[MonthNo - 1].Down := true;
  InitForm;
end;

procedure TFunctionDayChekF.qryFunctionDayAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryFunctionDayItems do
  begin
    Active := false;
    Parameters.ParamByName('PersonelNo').Value :=
      qryFunctionDay.FieldByName('MasterCode').AsInteger;
    Parameters.ParamByName('Mounth').Value := MonthNo;
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Active := true;
  end; // with
end;

procedure TFunctionDayChekF.SrcFunctionDayStateChange(Sender: TObject);
begin
  inherited;
  BtnReject.Cancel := qryFunctionDayItems.State in dseditmodes;
end;

procedure TFunctionDayChekF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryFunctionDayItems);
end;

procedure TFunctionDayChekF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryFunctionDayItems);
end;

procedure TFunctionDayChekF.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TFunctionDayChekF.actSetSelectedSituation0Execute(Sender: TObject);
begin
  inherited;
  SetSelectedSituation(DBGrid1, qryFunctionDay, 0, 'FunctionDay', 'FunID',
    qryInitForm)

end;

procedure TFunctionDayChekF.actSetSelectedSituation1Execute(Sender: TObject);
begin
  inherited;
  SetSelectedSituation(DBGrid1, qryFunctionDay, 1, 'FunctionDay', 'FunID',
    qryInitForm)

end;

procedure TFunctionDayChekF.actSetSelectedSituationAll0Execute(Sender: TObject);
begin
  inherited;
  SetSituation('Pay.FunctionDay', 0, MonthNo,
    qryPersonel.Parameters.ParamByName('PersonelNoFrom').Value,
    qryPersonel.Parameters.ParamByName('PersonelNoTo').Value, qryInitForm)

end;

procedure TFunctionDayChekF.actSetSelectedSituationAll1Execute(Sender: TObject);
begin
  inherited;
  SetSituation('Pay.FunctionDay', 1, MonthNo,
    qryPersonel.Parameters.ParamByName('PersonelNoFrom').Value,
    qryPersonel.Parameters.ParamByName('PersonelNoTo').Value, qryInitForm)

end;

procedure TFunctionDayChekF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  gridkeyenter(Sender, Key);
end;

procedure TFunctionDayChekF.FormResize(Sender: TObject);
begin
  inherited;
  // SetColSize(DBGrid1,9,True,IntToStr(FormType));
  // SetColSize(GrdSumDayItems,1,True,IntToStr(FormType));
end;

procedure TFunctionDayChekF.FormDestroy(Sender: TObject);
begin
  inherited;
  // SaveColWidth(DBGrid1,IntToStr(FormType));
end;

procedure TFunctionDayChekF.DBGrid1EditButtonClick(Sender: TObject);
var
  s: Boolean;
  Results: array [0 .. 8] of String;
  aDataSet: TDataSet;
  i: Smallint;
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
    2:
      begin
        s := searchCode_ADOF.SearchCode2(DMF.adcSalary, 'ﬂœ Õ÷Ê—',
          'SELECT     FormInfoID, InfoID, InfoName_L1, InfoName_L2 ' +
          'FROM Pay.FormsInfo WHERE     (FormType = 64) ',
          ['', 'ﬂœ ', 'ﬂœ Õ÷Ê—', 'ﬂœ Õ÷Ê—'], Results,
          [0, 20, 100, 100], alLeft);
        if s then
        begin
          if not(qryFunctionDayItems.State in dseditmodes) then
            qryFunctionDayItems.Edit;
          qryFunctionDayItems.FieldByName('PeresentID').AsString := Results[1];
        end;
      end; // 2

    6:
      begin
        s := searchCode_ADOF.SearchCode2(DMF.adcSalary, 'ﬂœ ‘Ì› ',
          'SELECT     FormInfoID, InfoID, InfoName_L1, InfoName_L2 ' +
          'FROM Pay.FormsInfo WHERE     (FormType = 65) ',
          ['', 'ﬂœ ', 'ﬂœ ‘Ì› ', 'ﬂœ ‘Ì› '], Results,
          [0, 20, 100, 100], alLeft);
        if s then
        begin
          if not(qryFunctionDayItems.State in dseditmodes) then
            qryFunctionDayItems.Edit;
          qryFunctionDayItems.FieldByName('ShiftNo').AsString := Results[1];
        end;
      end; // 5

    8:
      begin
        s := searchCode_ADOF.SearchCode2(DMF.adcSalary, '‰Ê⁄ ﬂ«—',
          'SELECT     FormInfoID, InfoID, InfoName_L1, InfoName_L2 ' +
          'FROM Pay.FormsInfo WHERE     (FormType = 40) ',
          ['', 'ﬂœ ', '‰Ê⁄ ﬂ«—', '‰Ê⁄ ﬂ«—'], Results,
          [0, 20, 100, 100], alLeft);
        if s then
        begin
          if not(qryFunctionDayItems.State in dseditmodes) then
            qryFunctionDayItems.Edit;
          qryFunctionDayItems.FieldByName('WorkID').AsString := Results[1];
        end;
      end; // 6

    10:
      begin
        s := searchCode_ADOF.SearchCode2(DMF.adcSalary, 'ﬂœ “„Ì‰',
          'SELECT     FormInfoID, InfoID, InfoName_L1, InfoName_L2 ' +
          'FROM Pay.FormsInfo WHERE     (FormType = 69) ',
          ['', 'ﬂœ ', 'ﬂœ “„Ì‰', 'ﬂœ “„Ì‰'], Results,
          [0, 20, 100, 100], alLeft);
        if s then
        begin
          if not(qryFunctionDayItems.State in dseditmodes) then
            qryFunctionDayItems.Edit;
          qryFunctionDayItems.FieldByName('EarthCode').AsString := Results[1];
        end;
      end; // 7

    12:
      begin
        s := searchCode_ADOF.SearchCode2(DMF.adcSalary, 'ﬂœ „Õ’Ê·',
          'SELECT     FormInfoID, InfoID, InfoName_L1, InfoName_L2 ' +
          'FROM Pay.FormsInfo WHERE     (FormType = 67) ',
          ['', 'ﬂœ ', 'ﬂœ „Õ’Ê·', 'ﬂœ „Õ’Ê·'], Results,
          [0, 20, 100, 100], alLeft);
        if s then
        begin
          if not(qryFunctionDayItems.State in dseditmodes) then
            qryFunctionDayItems.Edit;
          qryFunctionDayItems.FieldByName('ProcCode').AsString := Results[1];
        end;
      end; // 8

  end; // case
end;

procedure TFunctionDayChekF.qryFunctionDayItemsAfterEdit(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('LastUser').AsString := user.name;
end;

procedure TFunctionDayChekF.qryFunctionDayItemsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if not CheckRequiredFields(qryFunctionDay) then
  begin
    DataSet.Cancel;
    exit;
  end;
  if not(qryFunctionDay.State in dseditmodes) then
    qryFunctionDay.Edit;
  DataSet.FieldByName('FunItemID').AsInteger :=
    GetANewCode('', 'Pay.FunctionDayItems', 'FunItemID');
  DataSet.FieldByName('FunID').AsInteger := qryFunctionDay.FieldByName
    ('FunID').Value;
  DataSet.FieldByName('FirstUser').AsString := user.name;
  // DataSet.FieldByName('YearID').AsInteger:=APPBank.Year;
  DBGrid1.SetFocus;
end;

procedure TFunctionDayChekF.qryFunctionDaystateGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text := TDBComboBox(FindComponent('Cmb' + Sender.FieldName)).Items.strings
    [Sender.AsInteger];
end;

procedure TFunctionDayChekF.qryFunctionDaystateSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsInteger := TDBComboBox(FindComponent('Cmb' + Sender.FieldName))
    .ItemIndex;
end;

procedure TFunctionDayChekF.qryFunctionDayItemsBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if not EditSituation(qryFunctionDay) then
    Abort;
  if (DataSet.FieldByName('State').AsInteger > 0) then
  begin
    Warn('›ﬁÿ ›—„Ì ﬂÂ Ê÷⁄Ì  ¬‰ „Êﬁ  «”  ﬁ«»· ÊÌ—«Ì‘ «” ˛', mtInformation);
    Abort;
  end;
end;

procedure TFunctionDayChekF.qryFunctionDayItemsBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if not EditSituation(qryFunctionDay) then
    Abort;
  if not(qryFunctionDay.State in dseditmodes) then
    Abort;

end;

procedure TFunctionDayChekF.qryFunctionDayItemsBeforePost(DataSet: TDataSet);
begin
  inherited;
  if not CheckRequiredFieldsFill(DataSet) then
  begin
    DataSet.Delete;
    Abort;
    exit;
  end;
  TrimStringFields(qryFunctionDayItems);
  if not CheckRequiredFields(qryFunctionDayItems) then
  begin
    DBGrid1.SetFocus;
    Abort;
  end;
  if qryPersonel.FieldByName('InterdicEndDate').AsString < CurrentDate then
  begin
    Warn('·ÿ›√  «—ÌŒ Å«Ì«‰ ﬁ—«—œ«œ ﬂ‰ —· ‘Êœ.˛');
    Abort;
  end;
  TrimStringFields(DataSet);
  if not CheckRequiredFields(DataSet) then
    Abort;
  if not ValidateDatasetDates(DataSet,APPBank.StartYear ,APPBank.endYear) then
    Abort;
end;

procedure TFunctionDayChekF.BitBtn1Click(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, FormType);
end;

procedure TFunctionDayChekF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TFunctionDayChekF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TFunctionDayChekF.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TFunctionDayChekF.BitBtn10Click(Sender: TObject);
begin
  inherited;
  MakeMenuItem(28, AllClikPopClick, PopList4Print);
  try
    qryFunctionDay.DisableControls;
    qryFunctionDayItems.DisableControls;
    PopList4Print.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
  finally
    qryFunctionDay.EnableControls;
    qryFunctionDayItems.EnableControls;
  end;
end;

procedure TFunctionDayChekF.AllClikPopClick(Sender: TObject);
begin
  inherited;
  InitReportFile(ppReport1, (Sender as TMenuItem).Hint);
end;

procedure TFunctionDayChekF.ToolButton1Click(Sender: TObject);
begin
  inherited;
  MonthNo := (Sender as TToolButton).tag;    GetYearMounth(MonthNo);
  UpdateList;
end;

procedure TFunctionDayChekF.UpdateList;
begin
  qryFunctionDayItems.Active := false;
  with qryFunctionDay do
  begin
    Active := false;
    Parameters.ParamByName('Mounth').Value := MonthNo;
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Parameters.ParamByName('PersonelNOFrom').Value :=
      GetcFrom(myParams.ParamValues['PersonelNo'], ftInteger);
    Parameters.ParamByName('PersonelNOTo').Value :=
      GetcTo(myParams.ParamValues['PersonelNo'], ftInteger);
    Parameters.ParamByName('VahedCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['OfficeID'], ftInteger);
    Parameters.ParamByName('VahedCodeTo').Value :=
      GetcTo(myParams.ParamValues['OfficeID'], ftInteger);
    Parameters.ParamByName('StateFrom').Value :=
      GetcFrom(myParams.ParamValues['PersonelState'], ftInteger);
    Parameters.ParamByName('StateTo').Value :=
      GetcTo(myParams.ParamValues['PersonelState'], ftInteger);
    Active := true;
  end; // with
end;

procedure TFunctionDayChekF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItem(DMF.adcSalary, 'PersonelState', 'Ê÷⁄Ì  Å—”‰· ', 'ﬂœ', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT InfoID, InfoName_L1 FROM Pay.FormsInfo WHERE (FormType = 3)  ',
        'select Min(InfoID),Max(InfoID) FROM Pay.FormsInfo WHERE     (FormType = 3)');
      AddItem(DMF.adcSalary, 'PersonelNo', '„‘Œ’«  Å—”‰·Ì', '‘„«—Â Å—”‰·Ì',
        ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT PersonelNo , Name_L1+'' ''+lastName_L1 as lastName_L1 FROM Pay.PersonelInfo ',
        'select Min(PersonelNo),Max(PersonelNo) FROM Pay.PersonelInfo');
      AddItem(DMF.adcSalary, 'OfficeID', 'Ê«Õœ ”«“„«‰Ì ', 'ﬂœ', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT InfoID,InfoName_L1 FROM Pay.FormsInfo WHERE  (FormType = 12) ',
        'SELECT MIN(InfoID), MAX(InfoID)  FROM Pay.FormsInfo WHERE  (FormType = 12)');
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

procedure TFunctionDayChekF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('OfficeID') = nil then
    close;
end;

procedure TFunctionDayChekF.qryFunctionDayItemsAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('Õ‹–› ‘‹‹œ', 1);
end;

procedure TFunctionDayChekF.qryFunctionDayItemsBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  Abort;
end;

procedure TFunctionDayChekF.sbtnMasterClick(Sender: TObject);
var
  Txt: String;
  s: Boolean;
  Results: array [0 .. 1] of String;
begin
  inherited;
  Txt := 'SELECT FunctionDayItems.PersonelNo as MasterCode  , PersonelInfo.lastName_L1 + '' '' + PersonelInfo.name_L1 AS Name '
    + 'FROM Pay.FunctionDayItems INNER JOIN Pay.FunctionDay ON FunctionDayItems.FunID = FunctionDay.FunID INNER JOIN '
    + 'Pay.PersonelInfo ON FunctionDayItems.PersonelNo = PersonelInfo.PersonelNo INNER JOIN '
    + 'Pay.FormsInfo ON FunctionDay.OfficeCode = FormsInfo.FormInfoID LEFT OUTER JOIN Pay.FormsInfo AS FormsInfo_State ON PersonelInfo.PersonelState = FormsInfo_State.FormInfoID Where  (FormsInfo.InfoID BETWEEN '
    + VarToStr(GetcFrom(myParams.ParamValues['OfficeID'], ftInteger)) + ' and '
    + VarToStr(GetcTo(myParams.ParamValues['OfficeID'], ftInteger)) + ')' +
    'and ((CAST(SUBSTRING(FunctionDay.FunDate, 6, 2) AS int) = ' +
    IntToStr(MonthNo) + ')) ' + ' AND (FormsInfo_State.InfoID BETWEEN  ' +
    VarToStr(GetcFrom(myParams.ParamValues['PersonelState'], ftInteger)) +
    ' AND ' + VarToStr(GetcTo(myParams.ParamValues['PersonelState'], ftInteger))
    + ') ' + 'GROUP BY FunctionDayItems.PersonelNo, PersonelInfo.lastName_L1 + '' '' + PersonelInfo.name_L1 '
    + 'Having      (FunctionDayItems.PersonelNo BETWEEN   ' +
    VarToStr(GetcFrom(myParams.ParamValues['PersonelNo'], ftInteger)) + '  and '
    + VarToStr(GetcTo(myParams.ParamValues['PersonelNo'], ftInteger)) + ')';
  s := searchCode_ADOF.SearchCode2(DMF.adcSalary, '„‘Œ’«  Å—”‰·', Txt,
    ['‘„«—Â Å—”‰·', ' ‰«„ Œ«‰Ê«œêÌ '], Results, [50, 100], alLeft);

  if s then
    qryFunctionDay.Locate('MasterCode', Results[0], []);
end;

procedure TFunctionDayChekF.qryFunctionDayItemsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  // SumGrid1.Active:=False;
  // SumGrid1.Active:=True;
end;

procedure TFunctionDayChekF.actDeleteExecute(Sender: TObject);
var
  rid: Integer;
  FunItemID: String;
begin
  inherited;
  if qryFunctionDayItems.FieldByName('State').AsInteger > 0 then
  begin
    Warn('›ﬁÿ ›—„Ì ﬂÂ Ê÷⁄Ì  ¬‰ „Êﬁ  «”  ﬁ«»· Õ–› «” ˛', mtInformation);
    exit;
  end;
  if get_response('¬Ì« »—«Ì Õ–› «Ì‰ ﬂ«—ﬂ—œ „ÿ„∆‰ Â” Ìœø') <> mrYes then
    exit;
  FunItemID := qryFunctionDayItems.FieldByName('FunItemID').AsString;
  With DMF.qryTmpTmpp do
  begin
    Active := false;
    SQL.Text := 'Delete Pay.FunctionDayItems where FunItemID=' + FunItemID;
    BigMessage(IntToStr(ExecSQL) + ' —ﬂÊ—œ Õ–› ‘œ.˛', 1);
    Active := false;
  end;
  with qryFunctionDayItems do
  begin
    DisableControls;
    qryFunctionDayItems.Next;
    rid := qryFunctionDayItems.FieldByName('FunItemID').AsInteger;
    Active := false;
    Active := true;
    Locate('FunItemID', rid, []);
    EnableControls;
  end;
end;

procedure TFunctionDayChekF.qryFunctionDayItemsAfterOpen(DataSet: TDataSet);
begin
  inherited;
  With qrySumDayItems do
  begin
    Active := false;
    Parameters := qryFunctionDayItems.Parameters;
    Active := true;
  end
end;

procedure TFunctionDayChekF.actTotalChangeExecute(Sender: TObject);
begin
  inherited;
  TotalChangeF.ShowChange(qryFunctionDayItems)
end;

end.
