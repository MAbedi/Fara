unit FunctionDay;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, DBCtrls, StdCtrls, Mask, Buttons, Grids, Vcl.DBGrids,
  ImgList, DBActns, ActnList, ExtCtrls, ComCtrls, ToolWin, DB, ADODB,
  ppDB, ppBands, ppCtrls, ppVar, ppPrnabl, ppClass, Vcl.Menus, ppParameter,
  ppDesignLayer, ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDBPipe,
  MyComboBoxUnit, System.ImageList, System.Actions;

type
  TFunctionDayF = class(Ttemplate2MDIF)
    qryPersonel: TADOQuery;
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
    qryFunctionDay: TADOQuery;
    SrcFunctionDay: TDataSource;
    srcFunctionDayItems: TDataSource;
    qryFunctionDayItems: TADOQuery;
    actSort: TAction;
    actSendToExcel: TAction;
    qryFunctionDayOfficeCode: TIntegerField;
    qryFunctionDay_OfficeName_L1: TStringField;
    qryOfficeCode: TADOQuery;
    DataSetInsert2: TDataSetInsert;
    DataSetDelete2: TDataSetDelete;
    DataSetEdit2: TDataSetEdit;
    DataSetPost2: TDataSetPost;
    DataSetCancel2: TDataSetCancel;
    qryFunctionDayFunID: TIntegerField;
    qryFunctionDayFunNo: TIntegerField;
    qryFunctionDayFunDate: TStringField;
    qryFunctionDayFirstUser: TStringField;
    qryFunctionDayLastUser: TStringField;
    qryFunctionDaystate: TWordField;
    qryFunctionDaynote: TMemoField;
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
    PnlRecall: TPanel;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    sbtnFunNo: TSpeedButton;
    Label7: TLabel;
    Label6: TLabel;
    Label41: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    edtFunNo: TDBEdit;
    edtFunDate: TDBEdit;
    Cmbstate: TDBComboBox;
    DBGrid1: TDBGrid;
    Panel4: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Lbl_ProcCode: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    edt_ProcCode: TDBEdit;
    grpNote: TGroupBox;
    DBMemo1: TDBMemo;
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
    BtnRecall: TBitBtn;
    DBNavigator1: TDBNavigator;
    PopList4Print: TPopupMenu;
    AllClikPop: TMenuItem;
    qryEarthCode: TADOQuery;
    qryFunctionDayItems_EarthCode: TStringField;
    Lbl_EarthCode: TLabel;
    Edt_EarthCode: TDBEdit;
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
    qryFunctionDay_OfficeID: TIntegerField;
    pnlDelete: TPanel;
    actCopyPaste: TAction;
    qryFunctionDayItems_row: TIntegerField;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    qryFunctionDayYearID: TIntegerField;
    yrcmbx1: TYearComboBox;
    qryInitQry: TADOQuery;
    qryFunctionDayItemsAccCTopicCode3: TIntegerField;
    qryFunctionDayItems_AccCTopicName3: TStringField;
    qryFormType39: TADOQuery;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qryFunctionDayAfterScroll(DataSet: TDataSet);
    procedure qryFunctionDayAfterInsert(DataSet: TDataSet);
    procedure qryFunctionDayAfterPost(DataSet: TDataSet);
    procedure qryFunctionDayAfterEdit(DataSet: TDataSet);
    procedure SrcFunctionDayStateChange(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure qryFunctionDayAfterDelete(DataSet: TDataSet);
    procedure qryFunctionDayBeforeDelete(DataSet: TDataSet);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure qryFunctionDayBeforePost(DataSet: TDataSet);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure qryFunctionDayItemsAfterEdit(DataSet: TDataSet);
    procedure qryFunctionDayItemsAfterInsert(DataSet: TDataSet);
    procedure qryFunctionDaystateGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qryFunctionDaystateSetText(Sender: TField; const Text: String);
    procedure qryFunctionDayBeforeCancel(DataSet: TDataSet);
    procedure qryFunctionDayBeforeEdit(DataSet: TDataSet);
    procedure qryFunctionDayItemsBeforeEdit(DataSet: TDataSet);
    procedure qryFunctionDayItemsBeforeInsert(DataSet: TDataSet);
    procedure qryFunctionDayItemsBeforePost(DataSet: TDataSet);
    procedure DBEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
    procedure sbtnFunNoClick(Sender: TObject);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable1GetText(Sender: TObject; var Text: String);
    procedure BitBtn10Click(Sender: TObject);
    procedure BtnRecallClick(Sender: TObject);
    procedure qryFunctionDayItemsPersonelNoChange(Sender: TField);
    procedure AllClikPopClick(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure qryFunctionDayAfterOpen(DataSet: TDataSet);
    procedure qryFunctionDayItemsBeforeDelete(DataSet: TDataSet);
    procedure actCopyPasteExecute(Sender: TObject);
    procedure qryFunctionDayItemsCalcFields(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure qryFunctionDayBeforeInsert(DataSet: TDataSet);
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
  FunctionDayF: TFunctionDayF;

implementation

uses searchCode_ADO, GlobalPro, DM, search2, sort2,
  sndkey32, mmessage, SalaryFunctions,
  DBGrid2Print, Main, FaraConsts;
{$R *.dfm}

procedure TFunctionDayF.gridkeyenter(Sender: TObject; var Key: Char);
var
  nextIndex: Integer;
  curIndex: Integer;
  // aDataSet: TDataSet;
  // c:  String;
begin
  curIndex := (Sender as TDBGrid).SelectedIndex;
  nextIndex := curIndex;
  case Key of
    #13:
      begin
        if shiftDown then
          exit;
        // aDataSet:=(Sender as TDBGrid).DataSource.DataSet;
        Key := #0;
        case curIndex of
          0:
            nextIndex := 1;
          1:
            nextIndex := 3;
          2:
            nextIndex := 3;
          3:
            nextIndex := 4;
          4:
            nextIndex := 5;
          5:
            nextIndex := 6;
          6:
            nextIndex := 7;
          7:
            nextIndex := 8;
          8:
            nextIndex := 9;
          9:
            nextIndex := 10;
          10:
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
      if (Sender as TDBGrid).DataSource.DataSet.State in dseditmodes then
        (Sender as TDBGrid).DataSource.DataSet.Cancel;

      #32, #157: if curIndex in [1, 3, 6, 7, 8, 9] then
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
  if nextIndex >= (Sender as TDBGrid).Columns.Count then
    nextIndex := -1;
  if (curIndex <> nextIndex) then
    case nextIndex of
      - 1:
        begin
          sendkey(vk_down, [], false);
          (Sender as TDBGrid).SelectedIndex := 1;
        end; // 0
      -2:
        begin
          if (Sender as TDBGrid).DataSource.State in dseditmodes then
            (Sender as TDBGrid).DataSource.DataSet.Cancel;
          Perform(WM_NEXTDLGCTL, 0, 0);
        end; // -2
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

procedure TFunctionDayF.SpeedButton1Click(Sender: TObject);
var
  s: Boolean;
  Results: array [0 .. 2] of String;
begin
  inherited;
  s := searchCode_ADOF.SearchCode2(DMF.adcSalary, 'واحد سازماني',
    'SELECT FormInfoID, InfoID, InfoName_L1, InfoName_L2 ' +
    'FROM Pay.FormsInfo WHERE (FormType = 12) ' +
    ' and ( (RecallFormInfoID1 LIKE ''%,' + IntToStr(User.id) +
    ',%'') OR (RecallFormInfoID1 IS NULL))', ['', 'كد ', 'نام واحد سازماني',
    'نام واحد سازماني'], Results, [0, 20, 100, 100], alLeft);
  if s then
  begin
    if not(qryFunctionDay.State in dseditmodes) then
      qryFunctionDay.edit;
    qryFunctionDay.fieldbyname('OfficeCode').AsString := Results[0];
  end;
end;

procedure TFunctionDayF.InitForm;
var
  b: Boolean;
begin
  qryInitQry.Open;
  yrcmbx1.YearsParam := APPBank.Year;
  yrcmbx1.YearID :=  APPBank.Year;
  SetLookUpCash(qryFunctionDay);
  SetLookUpCash(qryFunctionDayItems);
  FormType := var_glb_gParam;
  MonthNo := var_glb_CurrentMonth;
  if MonthNo < 1 then
    MonthNo := 1;
  ToolBar1.Buttons[MonthNo - 1].Down := true;
  with qryInitForm do
  begin
    Active := false;
    Parameters.ParamByName('FormType').Value := FormType;
    Active := true;
    // __________________               EarthCode          __________________________
    b := fieldbyname('EarthProceedsActivate').AsInteger in [1, 3];
    setColumns2(DBGrid1, b, 'EarthCode');
    qryFunctionDayItems.fieldbyname('EarthCode').Required := b;
    qryFunctionDayItems.fieldbyname('_EarthCode').Required := b;
    Edt_EarthCode.Visible := b;
    Lbl_EarthCode.Visible := b;
    // __________________                ProcCode          __________________________
    b := fieldbyname('EarthProceedsActivate').AsInteger in [2, 3];
    setColumns2(DBGrid1, b, 'ProcCode');
    qryFunctionDayItems.fieldbyname('ProcCode').Required := b;
    qryFunctionDayItems.fieldbyname('_ProcCode').Required := b;
    edt_ProcCode.Visible := b;
    Lbl_ProcCode.Visible := b;

    qryWorkID.Parameters.ParamByName('FormType').Value :=
      qryInitForm.fieldbyname('FormInfo4Function').AsInteger;

  end; // with
  qryPersonel.Active := true;
  qryPeresentID.Active := true;
  qryShiftNo.Active := true;
  qryWorkID.Active := true;
  qryProcCode.Active := true;
  qryEarthCode.Active := true;
  qryOfficeCode.Active := true;
  UpdateList;
end;

procedure TFunctionDayF.FormCreate(Sender: TObject);
begin
  inherited;
  InitForm;
end;

procedure TFunctionDayF.qryFunctionDayAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryFunctionDayItems do
  begin
    Active := false;
    Parameters.ParamByName('FunID').Value := qryFunctionDay.fieldbyname('FunID')
      .AsInteger;
    Active := true;
  end; // with
end;

procedure TFunctionDayF.qryFunctionDayAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.fieldbyname('YearID').AsInteger := APPBank.Year;
  DataSet.fieldbyname('FunID').AsInteger := GetANewCode('','Pay.FunctionDay', 'FunID');
  DataSet.fieldbyname('FirstUser').AsString := User.name;
  DataSet.fieldbyname('FunNo').AsInteger := GetANewCode('','Pay.FunctionDay', 'FunNo');
  DataSet.fieldbyname('FunDate').AsString := var_glb_CurrentDate;
  DataSet.fieldbyname('state').AsInteger := 0;
  DBEdit1.SetFocus;
end;

procedure TFunctionDayF.qryFunctionDayAfterPost(DataSet: TDataSet);
var
  rid, rid2: Integer;
begin
  inherited;
  rid2 := qryFunctionDayItemsFunItemID.AsInteger;
  if qryFunctionDayItems.State in dseditmodes then
    qryFunctionDayItems.Post;
  try
    qryFunctionDayItems.UpdateBatch;
    BigMessage('ثبت شد.', 1);
  except
    warn('اشكال در ثبت فرم');
  end; // try
  rid := qryFunctionDayFunID.AsInteger;
  qryFunctionDay.Requery;
  qryFunctionDay.Locate('FunID', rid, []);
  qryFunctionDayItems.Requery;
  qryFunctionDayItems.Locate('FunItemID', rid2, []);
end;

procedure TFunctionDayF.qryFunctionDayAfterEdit(DataSet: TDataSet);
begin
  inherited;
  DataSet.fieldbyname('LastUser').AsString := User.name;
end;

procedure TFunctionDayF.SrcFunctionDayStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qryFunctionDay.State in dseditmodes;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
  sbtnFunNo.Visible := newPanel.Visible;
  BtnRecall.Visible := okPanel.Visible;
  pnlDelete.Visible := okPanel.Visible;
  FreeReservedCodes(DMF.adcSalary);
end;

procedure TFunctionDayF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryFunctionDayItems);
end;

procedure TFunctionDayF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryFunctionDayItems);
end;

procedure TFunctionDayF.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TFunctionDayF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  gridkeyenter(Sender, Key);
end;

procedure TFunctionDayF.qryFunctionDayAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('حـذف شــد', 1);
end;

procedure TFunctionDayF.qryFunctionDayBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if not CheckUserlevel(qryInitQry.fieldbyname('DeleteLevelID').AsInteger) then
    Abort;
  if qryFunctionDay.fieldbyname('State').AsInteger > 0 then
  begin
    warn('فقط فرمي كه وضعيت آن موقت است قابل حذف است‏', mtInformation);
    Abort;
  end;
  if get_response('آيا براي حذف اين فرم و كليهء كاركردهاي آن مطمئن هستيد؟') <> mrYes
  then
    Abort;
end;

procedure TFunctionDayF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 2, true, IntToStr(FormType));
end;

procedure TFunctionDayF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1, IntToStr(FormType));
end;

procedure TFunctionDayF.qryFunctionDayBeforePost(DataSet: TDataSet);
begin
  inherited;
//  if not FunctionDelete(qryFunctionDayItemsPersonelNo.AsInteger, MonthNo) then
 //   Abort;

  if qryPersonel.fieldbyname('InterdicEndDate').AsString < CurrentDate then
  begin
    warn('لطفأ تاريخ پايان قرارداد كنترل شود.‏');
    Abort;
  end;
  TrimStringFields(DataSet);
  if not CheckRequiredFields(DataSet) then
    Abort;
  if not ValidateDatasetDates(DataSet,APPBank.StartYear ,APPBank.endYear) then
    Abort;
end;

procedure TFunctionDayF.DBGrid1EditButtonClick(Sender: TObject);
var
  Txt, TxtL1_L2: String;
  s: Boolean;
  Results: array [0 .. 8] of String;
  aDataSet: TDataSet;
  i: Smallint;
begin
  inherited;
  if (Sender as TDBGrid).ReadOnly then
    exit;
  i := (Sender as TDBGrid).SelectedIndex;
  aDataSet := (Sender as TDBGrid).DataSource.DataSet;
  (Sender as TDBGrid).SelectedIndex := i;
  if not(aDataSet.State in dseditmodes) then
    aDataSet.edit;
  case i of
    1:
      begin
        TxtL1_L2 :=
          ' PersonelInfo.name_L1, PersonelInfo.lastName_L1,  PersonelInfo.fatherName_L1';
        if optP.primaryLanguage <> 0 then
          TxtL1_L2 :=
            ' PersonelInfo.name_L1, PersonelInfo.name_L2, PersonelInfo.lastName_L1, PersonelInfo.lastName_L2, PersonelInfo.fatherName_L1, PersonelInfo.fatherName_L2';
        Txt := 'SELECT  PersonelInfo.PersonelNo,' + TxtL1_L2 +
          ', PersonelInfo.NationalID, PersonelInfo.IDNumber ' +
          'FROM Pay.PersonelInfo INNER JOIN ' +
          'Pay.FormsInfo ON PersonelInfo.PersonelState = FormsInfo.FormInfoID INNER JOIN '
          + 'Pay.Interdicts ON PersonelInfo.PersonelNo = Interdicts.PersonelNo LEFT OUTER JOIN '
          + 'Pay.FormsInfo FormsInfo_1 ON Pay.Interdicts.OfficeCode = FormsInfo_1.FormInfoID '
          + 'WHERE    (InterdicType = 0 ) AND   (FormsInfo.InfoID < 50) AND (Interdicts.State < 11) AND (Interdicts.OfficeCode ='
          + qryFunctionDay.fieldbyname('OfficeCode').AsString + ')';
        if optP.primaryLanguage <> 0 then
          s := searchCode_ADOF.SearchCode2(DMF.adcSalary, 'مشخصات پرسنل', Txt,
            ['شماره پرسنل', 'نام', 'Name', ' نام خانوادگي', 'lastName',
            'نام پدر ', 'fatherName', 'شماره شناسنامه', 'كد ملي'], Results,
            [10, 100, 100, 100, 100, 100, 100, 100, 50], alLeft)
        else
          s := searchCode_ADOF.SearchCode2(DMF.adcSalary, 'مشخصات پرسنل', Txt,
            ['شماره پرسنل', 'نام ', ' نام خانوادگي', 'نام پدر',
            'شماره شناسنامه', 'كد ملي'], Results,
            [10, 100, 100, 100, 100, 100], alLeft);

        if s then
        begin
          if not(aDataSet.State in dseditmodes) then
            aDataSet.edit;
          qryFunctionDayItems.fieldbyname('PersonelNo').AsString := Results[0];
        end; // if
      end; // 1
    3:
      begin
        s := searchCode_ADOF.SearchCode2(DMF.adcSalary, 'كد حضور',
          'SELECT     FormInfoID, InfoID, InfoName_L1, InfoName_L2 ' +
          'FROM Pay.FormsInfo WHERE     (FormType = 64) ',
          ['', 'كد ', 'كد حضور', 'كد حضور'], Results,
          [0, 20, 100, 100], alLeft);
        if s then
        begin
          if not(qryFunctionDayItems.State in dseditmodes) then
            qryFunctionDayItems.edit;
          qryFunctionDayItems.fieldbyname('PeresentID').AsString := Results[1];
        end;
      end; // 2

    6:
      begin
        s := searchCode_ADOF.SearchCode2(DMF.adcSalary, 'كد شيفت',
          'SELECT     FormInfoID, InfoID, InfoName_L1, InfoName_L2 ' +
          'FROM Pay.FormsInfo WHERE     (FormType = 65) ',
          ['', 'كد ', 'كد شيفت', 'كد شيفت'], Results,
          [0, 20, 100, 100], alLeft);
        if s then
        begin
          if not(qryFunctionDayItems.State in dseditmodes) then
            qryFunctionDayItems.edit;
          qryFunctionDayItems.fieldbyname('ShiftNo').AsString := Results[1];
        end;
      end; // 5

    7:
      begin
        s := searchCode_ADOF.SearchCode2(DMF.adcSalary, 'نوع كار',
          'SELECT     FormInfoID, InfoID, InfoName_L1, InfoName_L2 ' +
          'FROM Pay.FormsInfo  WHERE  FormType =  ' +
          qryInitForm.fieldbyname('FormInfo4Function').AsString,
          ['', 'كد ', 'نوع كار', 'نوع كار'], Results,
          [0, 20, 100, 100], alLeft);
        if s then
        begin
          if not(qryFunctionDayItems.State in dseditmodes) then
            qryFunctionDayItems.edit;
          qryFunctionDayItems.fieldbyname('WorkID').AsString := Results[1];
        end;
      end; // 6

    8:
      begin
        s := searchCode_ADOF.SearchCode2(DMF.adcSalary, 'كد زمين',
          'SELECT     FormInfoID, InfoID, InfoName_L1, InfoName_L2 ' +
          'FROM Pay.FormsInfo WHERE     (FormType = 69) ',
          ['', 'كد ', 'كد زمين', 'كد زمين'], Results,
          [0, 20, 100, 100], alLeft);
        if s then
        begin
          if not(qryFunctionDayItems.State in dseditmodes) then
            qryFunctionDayItems.edit;
          qryFunctionDayItems.fieldbyname('EarthCode').AsString := Results[1];
        end;
      end; // 7

    9:
      begin
        s := searchCode_ADOF.SearchCode2(DMF.adcSalary, 'كد محصول',
          'SELECT     FormInfoID, InfoID, InfoName_L1, InfoName_L2 ' +
          'FROM Pay.FormsInfo WHERE     (FormType = 67) ',
          ['', 'كد ', 'كد محصول', 'كد محصول'], Results,
          [0, 20, 100, 100], alLeft);
        if s then
        begin
          if not(qryFunctionDayItems.State in dseditmodes) then
            qryFunctionDayItems.edit;
          qryFunctionDayItems.fieldbyname('ProcCode').AsString := Results[1];
        end;
      end; // 8

    11:
      begin
        s := searchCode_ADOF.SearchCode2(DMF.adcSalary, 'كد گروه پروژه',
          'SELECT FormInfoID, InfoID, InfoName_L1, InfoName_L2 ' +
          'FROM Pay.FormsInfo WHERE (FormType = 39) ',
          ['', 'كد ', 'كد پروژه', 'كد پروژه'], Results,
          [0, 20, 100, 100], alLeft);
        if s then
        begin
          if not(qryFunctionDayItems.State in dseditmodes) then
            qryFunctionDayItems.edit;
          qryFunctionDayItems.fieldbyname('AccCTopiccode3').AsString :=
            Results[0];
        end;
      end;

  end; // case
end;

procedure TFunctionDayF.qryFunctionDayItemsAfterEdit(DataSet: TDataSet);
begin
  inherited;
  DataSet.fieldbyname('LastUser').AsString := User.name;
end;

procedure TFunctionDayF.qryFunctionDayItemsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if not CheckRequiredFields(qryFunctionDay) then
  begin
    DataSet.Cancel;
    exit;
  end;
  if not(qryFunctionDay.State in dseditmodes) then
    qryFunctionDay.edit;
  DataSet.fieldbyname('FunItemID').AsInteger := GetANewCode('','Pay.FunctionDayItems',
    'FunItemID');
  DataSet.fieldbyname('FunID').AsInteger := qryFunctionDay.fieldbyname
    ('FunID').Value;
  DataSet.fieldbyname('FirstUser').AsString := User.name;
  // DataSet.FieldByName('YearID').AsInteger:=APPBank.Year;
  DBGrid1.SetFocus;
end;

procedure TFunctionDayF.qryFunctionDaystateGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text := TDBComboBox(FindComponent('Cmb' + Sender.FieldName)).Items.strings
    [Sender.AsInteger];
end;

procedure TFunctionDayF.qryFunctionDaystateSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsInteger := TDBComboBox(FindComponent('Cmb' + Sender.FieldName))
    .ItemIndex;
end;

procedure TFunctionDayF.qryFunctionDayBeforeCancel(DataSet: TDataSet);
begin
  inherited;
  if get_response('تغييرات لغو شوند؟') <> mrYes then
    Abort;
  qryFunctionDayItems.Cancel;
  qryFunctionDayItems.Requery();
end;

procedure TFunctionDayF.qryFunctionDayBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if (qryFunctionDay.fieldbyname('State').AsInteger > 0) then
  begin
    warn('فقط فرمي كه وضعيت آن موقت است قابل ويرايش است‏', mtInformation);
    Abort;
  end;
  if not CheckUserlevel(qryInitQry.fieldbyname('EditLevelID').AsInteger) then
    Abort
end;

procedure TFunctionDayF.qryFunctionDayBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if not CheckUserlevel(qryInitQry.fieldbyname('ADDLevelID').AsInteger) then
    Abort;
end;

procedure TFunctionDayF.qryFunctionDayItemsBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if not(qryFunctionDay.State in dseditmodes) then
    Abort;
end;

procedure TFunctionDayF.qryFunctionDayItemsBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if not(qryFunctionDay.State in dseditmodes) then
    Abort
end;

procedure TFunctionDayF.qryFunctionDayItemsBeforePost(DataSet: TDataSet);
begin
  inherited;
  if not CheckRequiredFieldsFill(DataSet) then
  begin
    DataSet.Delete;
    grpNote.SetFocus;
    Abort;
    exit;
  end;
  TrimStringFields(qryFunctionDayItems);
  if not CheckRequiredFields(qryFunctionDayItems) then
  begin
    DBGrid1.SetFocus;
    Abort;
  end;

  with DMF.qryTmpTmp do
  begin
    Active := false;
    SQL.Text := 'SELECT COUNT(Pay.FunctionDayItems.FunItemID) AS PostCount';
    SQL.Add('FROM Pay.FunctionDayItems INNER JOIN');
    SQL.Add('Pay.FunctionDay ON Pay.FunctionDayItems.FunID = Pay.FunctionDay.FunID');
    SQL.Add('WHERE (Pay.FunctionDay.FunDate = :FunDate )');
    SQL.Add('AND (Pay.FunctionDayItems.PersonelNo = :PersonelNo )');
    SQL.Add('AND (Pay.FunctionDayItems.FunItemID <> :FunItemID )');
    SQL.Add('AND (Pay.FunctionDayItems.FunID <> :FunID )');
    Parameters.ParamByName('FunDate').Value := qryFunctionDayFunDate.AsString;
    Parameters.ParamByName('PersonelNo').Value :=
      qryFunctionDayItemsPersonelNo.AsLargeInt;
    Parameters.ParamByName('FunItemID').Value :=
      qryFunctionDayItemsFunItemID.AsLargeInt;
    Parameters.ParamByName('FunID').Value := qryFunctionDayFunID.AsLargeInt;
    Active := true;
    if fieldbyname('PostCount').AsInteger > 0 then
    begin
      warn('تعداد ثبت هاي کارکرد در اين تاريخ براي اين پرسنل بيشتر از يک مورد مي شود ');
      Abort;
    end;
    Active := false;
    SQL.Text := 'SELECT PersonelNo, InterdicEndDate';
    SQL.Add('FROM Pay.Interdicts');
    SQL.Add('WHERE (PersonelNo = :PersonelNo ) AND (InterdicEndDate >= :InterdicEndDate )');
    Parameters.ParamByName('InterdicEndDate').Value :=
      qryFunctionDayFunDate.AsString;
    Parameters.ParamByName('PersonelNo').Value :=
      qryFunctionDayItemsPersonelNo.AsLargeInt;
    Active := true;
    if fieldbyname('PersonelNo').AsInteger = 0 then
    begin
      warn('در اين تاريخ قرارداد براي پرسنل وجود ندارد');
      Abort;
    end;
    Active := false;
  end;

end;

procedure TFunctionDayF.DBEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_SPACE then
    SpeedButton1.Click;
end;

procedure TFunctionDayF.BitBtn1Click(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, FormType);
end;

procedure TFunctionDayF.sbtnFunNoClick(Sender: TObject);
var
  Txt: String;
  s: Boolean;
  Results: array [0 .. 5] of String;
begin
  inherited;
  Txt := 'SELECT FunctionDay.FunID,  FormsInfo.InfoID, FormsInfo.InfoName_L1, FunctionDay.FunNo, FunctionDay.FunDate, FunctionDay.note '
    + ' FROM Pay.FunctionDay INNER JOIN  Pay.FormsInfo ON FunctionDay.OfficeCode = FormsInfo.FormInfoID'
    + ' WHERE     CAST(SUBSTRING(FunctionDay.FunDate, 6, 2) AS int)=' +
    IntToStr(MonthNo);
  s := searchCode_ADOF.SearchCode2(DMF.adcSalary, 'حكم‏هاي پرسنلي', Txt,
    ['', 'كد قسمت', 'نام قسمت', 'شماره ', 'تاريخ ', ' توضيحات  '], Results,
    [0, 100, 100, 100, 100, 100], alLeft);
  if s then
    qryFunctionDay.Locate('FunID', Results[0], []);
end;

procedure TFunctionDayF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TFunctionDayF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TFunctionDayF.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TFunctionDayF.BitBtn10Click(Sender: TObject);
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

procedure TFunctionDayF.BtnRecallClick(Sender: TObject);
var
  Txt: String;
  s: Boolean;
  Results: array [0 .. 5] of String;
  FunID: Integer;
  qry: TADOQuery;
begin
  inherited;
  Txt := 'SELECT FunctionDay.FunID,  FormsInfo.InfoID, FormsInfo.InfoName_L1, FunctionDay.FunNo, FunctionDay.FunDate, FunctionDay.note '
    + ' FROM Pay.FunctionDay INNER JOIN  Pay.FormsInfo ON FunctionDay.OfficeCode = FormsInfo.FormInfoID';
  s := searchCode_ADOF.SearchCode2(DMF.adcSalary, 'حكم‏هاي پرسنلي', Txt,
    ['', 'كد قسمت', 'نام قسمت', 'شماره ', 'تاريخ ', ' توضيحات  '], Results,
    [0, 100, 100, 100, 100, 100], alLeft);
  if not s then
    exit;
  FunID := StrToInt(Results[0]);
  qry := TADOQuery.Create(Self);
  with qry do
  begin
    Connection := DMF.adcSalary;
    Active := false;
    SQL.Text := 'SELECT * FROM Pay.FunctionDayItems WHERE   FunID =' +
      IntToStr(FunID);
    SQL.Add('ORDER BY FunItemID');
    Active := true;
    while not eof do
    begin
      qryFunctionDayItems.Insert;
      qryFunctionDayItems.fieldbyname('PersonelNo').Value :=
        fieldbyname('PersonelNo').Value;
      qryFunctionDayItems.fieldbyname('PeresentID').Value :=
        fieldbyname('PeresentID').Value;
      qryFunctionDayItems.fieldbyname('FunTime').Value :=
        fieldbyname('FunTime').Value;
      qryFunctionDayItems.fieldbyname('ExtTime').Value :=
        fieldbyname('ExtTime').Value;
      qryFunctionDayItems.fieldbyname('ShiftNo').Value :=
        fieldbyname('ShiftNo').Value;
      qryFunctionDayItems.fieldbyname('WorkID').Value :=
        fieldbyname('WorkID').Value;
      qryFunctionDayItems.fieldbyname('EarthCode').Value :=
        fieldbyname('EarthCode').Value;
      qryFunctionDayItems.fieldbyname('ProcCode').Value :=
        fieldbyname('ProcCode').Value;
      qryFunctionDayItems.fieldbyname('StandardRate').Value :=
        fieldbyname('StandardRate').Value;
      qryFunctionDayItems.Post;
      Next;
    end; // while
    Active := false;
    Free;
  end; // with
end;

procedure TFunctionDayF.qryFunctionDayItemsPersonelNoChange(Sender: TField);
begin
  inherited;
  if (Sender as TField).IsNull then
    grpNote.SetFocus
end;

procedure TFunctionDayF.AllClikPopClick(Sender: TObject);
begin
  inherited;
  InitReportFile(ppReport1, (Sender as TMenuItem).Hint);
end;

procedure TFunctionDayF.ToolButton1Click(Sender: TObject);
begin
  inherited;
  MonthNo := (Sender as TToolButton).tag;    GetYearMounth(MonthNo);
  UpdateList;
end;

procedure TFunctionDayF.UpdateList;
begin
  with qryFunctionDay do
  begin
    Active := false;
    Parameters.ParamByName('Mounth').Value := MonthNo;
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Active := true;
  end; // with
end;

procedure TFunctionDayF.qryFunctionDayAfterOpen(DataSet: TDataSet);
begin
  inherited;
  qryFunctionDayItems.Active := qryFunctionDay.RecordCount > 0;
end;

procedure TFunctionDayF.qryFunctionDayItemsBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if not FunctionDelete(qryFunctionDayItemsPersonelNo.AsInteger, MonthNo) then
    Abort;
  if get_response('آيا از حذف سطر جاري مطمئن هستيد.') <> mrYes then
    Abort;
end;

procedure TFunctionDayF.actCopyPasteExecute(Sender: TObject);
var
  qry: TADOQuery;
  i: Integer;
  // MyFieldName:String;
begin
  inherited;
  if not(qryFunctionDay.State in dseditmodes) then
    qryFunctionDay.edit;
  if (qryFunctionDayItems.State in dseditmodes) then
    qryFunctionDayItems.Post;
  qry := TADOQuery.Create(DMF);
  try
    with qry do
    begin
      Clone(qryFunctionDayItems, ltReadOnly);
      Filter := 'FunItemID=' + qryFunctionDayItems.fieldbyname
        ('FunItemID').AsString;
      Filtered := true;
      qryFunctionDayItems.Append;
      for i := 0 to DBGrid1.Columns.Count - 1 do
        if not DBGrid1.Columns[i].ReadOnly then
          qryFunctionDayItems.fieldbyname(DBGrid1.Columns[i].FieldName).Value :=
            fieldbyname(DBGrid1.Columns[i].FieldName).Value;
      qryFunctionDayItems.fieldbyname('PersonelNo').AsString := EmptyStr;
      DBGrid1.SetFocus;
    end; // with
  finally
    qry.Free;
  end; // try
end;

procedure TFunctionDayF.qryFunctionDayItemsCalcFields(DataSet: TDataSet);
begin
  inherited;
  DataSet.fieldbyname('_row').AsInteger := abs(DataSet.RecNo)
end;

procedure TFunctionDayF.FormShow(Sender: TObject);
begin
  inherited;
  if mainF.CheckActiveFunctions(mainF.MnuPay_FunctionDayF) then
    Close;
end;

end.
