unit MissionInfo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, DBCtrls, StdCtrls, Mask, Buttons, Grids, Vcl.DBGrids,
  ImgList, DBActns, ActnList, ExtCtrls, ComCtrls, DB, ADODB,
  Menus, SumDBGrid, ppBands, ppCache, ppClass, ppProd,
  ppReport, ppDB, ppComm, ppRelatv, ppDBPipe, ppCtrls, ppPrnabl, ppStrtch,
  ppSubRpt, ppParameter, ppDesignLayer, System.ImageList, System.Actions;

type
  TMissionInfoF = class(Ttemplate2MDIF)
    qryMaster: TADOQuery;
    SrcMaster: TDataSource;
    qryMission: TADOQuery;
    SrcMission: TDataSource;
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
    qryMissionInfo: TADOQuery;
    SrcMissionInfo: TDataSource;
    qryFormsInfo: TADOQuery;
    actSort: TAction;
    actSendToExcel: TAction;
    actMissionShow: TAction;
    actFilter: TAction;
    actAcc: TAction;
    ActShowInterdict: TAction;
    ActPersonelInfoF: TAction;
    BitBtn17: TBitBtn;
    PopMnuOthers: TPopupMenu;
    ActShowInterdict1: TMenuItem;
    N1: TMenuItem;
    grpMaster: TGroupBox;
    sbtnMaster: TSpeedButton;
    EdtCode: TDBEdit;
    DBEdit1: TDBEdit;
    DBNavigator1: TDBNavigator;
    qryMissionMissionID: TIntegerField;
    qryMissionMissionNo: TIntegerField;
    qryMissionMissionDate: TStringField;
    qryMissionState: TWordField;
    qryMissionPersonelNo: TIntegerField;
    qryMissionMissionPlace: TStringField;
    qryMissionCompanyCode: TIntegerField;
    qryMissionMissionStartDate: TStringField;
    qryMissionMissionEndDate: TStringField;
    qryMissionMissionFunction: TFloatField;
    qryMissionMissionTopic: TStringField;
    qryMissionTransPort: TStringField;
    qryMissionOtherTopic: TStringField;
    qryMissionMissionKind: TIntegerField;
    qryMissionAccDetailCode: TIntegerField;
    qryMissionAccCTopicCode: TIntegerField;
    qryMissionAccCTopicCode2: TIntegerField;
    qryMissionInfoMissionInfoID: TAutoIncField;
    qryMissionInfoMissionID: TIntegerField;
    qryMissionInfoInfoType: TWordField;
    qryMissionInfoAccDetailCode: TIntegerField;
    qryMissionInfoAccCTopicCode2: TIntegerField;
    qryMissionInfoAccCTopicCode3: TIntegerField;
    qryMissionInfoExpID: TIntegerField;
    qryMissionInfoStartDate: TStringField;
    qryMissionInfoEndDate: TStringField;
    qryMissionInfoFunMission: TFloatField;
    qryMissionInfoRateMission: TFloatField;
    qryMissionInfoCofficentManage: TFloatField;
    qryMissionInfoPrice: TBCDField;
    qryMissionInfo_AccDetailCode: TStringField;
    qryMissionInfo_AccCTopicCode: TStringField;
    qryMissionInfo_AccCTopicCode2: TStringField;
    qryMissionInfo_AccCTopicCode3: TStringField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DBGrid1: TDBGrid;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Panel5: TPanel;
    BitBtn12: TBitBtn;
    qryMissionPersonelInfoName: TStringField;
    qryMasterMasterCode: TIntegerField;
    qryMasterName: TStringField;
    Panel1: TPanel;
    DBGrid: TDBGrid;
    GroupBox1: TGroupBox;
    DBMemo1: TDBMemo;
    Label1: TLabel;
    qryMissionAccCTopicCode3: TIntegerField;
    qryMissionInfoAccCTopicCode: TIntegerField;
    qryMasterMissionKind: TIntegerField;
    qryMissionCompanyCodeName: TStringField;
    Panel4: TPanel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    qryMasterAmount: TBCDField;
    BitBtn1: TBitBtn;
    DBGrid2: TDBGrid;
    qryMissionInfo_ExpName: TStringField;
    qryMissionInfo_ExpID: TIntegerField;
    DBGrid3: TDBGrid;
    Panel6: TPanel;
    DBText1: TDBText;
    Label7: TLabel;
    DBText4: TDBText;
    Label9: TLabel;
    Label16: TLabel;
    DBText10: TDBText;
    SumGrid1: TSumGrid;
    SumGrid2: TSumGrid;
    SumGrid3: TSumGrid;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    qryMasterStandardDays: TFloatField;
    qryMasterCalCulateType: TWordField;
    actPrint: TAction;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppDBPipeline2: TppDBPipeline;
    N2: TMenuItem;
    ppDetailBand1: TppDetailBand;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDetailBand2: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText6: TppDBText;
    ppDBTxtCompanyCodeName: TppDBText;
    ppDBText2: TppDBText;
    ppDBText5: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText14: TppDBText;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppShape3: TppShape;
    ppDBCalc1: TppDBCalc;
    ppLine13: TppLine;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppShape1: TppShape;
    ppDBTxtInfoType: TppDBText;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppPageStyle1: TppPageStyle;
    ppLine1: TppLine;
    ppShape2: TppShape;
    ppLblCompanyName: TppLabel;
    ppLabel2: TppLabel;
    ppLabel14: TppLabel;
    ppLabel18: TppLabel;
    ppLine19: TppLine;
    ppLabel15: TppLabel;
    ppDBText3: TppDBText;
    ppLabel4: TppLabel;
    ppDBText4: TppDBText;
    ppDBText7: TppDBText;
    ppLine4: TppLine;
    ppLabel21: TppLabel;
    ppLabel5: TppLabel;
    ppDBText12: TppDBText;
    ppLabel9: TppLabel;
    ppDBText13: TppDBText;
    ppLblDate: TppLabel;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine14: TppLine;
    qryMissionAccTopicCode: TLargeintField;
    procedure FormCreate(Sender: TObject);
    procedure qryMissionAfterScroll(DataSet: TDataSet);
    procedure qryMissionInfoAfterInsert(DataSet: TDataSet);
    procedure qryMissionInfoAfterPost(DataSet: TDataSet);
    procedure SrcMissionInfoStateChange(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure qryMissionInfoAfterDelete(DataSet: TDataSet);
    procedure qryMissionInfoBeforeDelete(DataSet: TDataSet);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DBGridKeyPress(Sender: TObject; var Key: Char);
    procedure actAccExecute(Sender: TObject);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure BitBtn17Click(Sender: TObject);
    procedure ActShowInterdictExecute(Sender: TObject);
    procedure ActPersonelInfoFExecute(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure sbtnMasterClick(Sender: TObject);
    procedure actMissionShowExecute(Sender: TObject);
    procedure AllChangeCalcPrice(Sender: TField);
    procedure qryMasterAfterScroll(DataSet: TDataSet);
    procedure qryMissionInfoStartDateChange(Sender: TField);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid2EditButtonClick(Sender: TObject);
    procedure qryMissionBeforeOpen(DataSet: TDataSet);
    procedure PageControl1Change(Sender: TObject);
    procedure DBGrid3EditButtonClick(Sender: TObject);
    procedure DBGrid3KeyPress(Sender: TObject; var Key: Char);
    procedure qryMissionInfoBeforePost(DataSet: TDataSet);
    procedure ppDBTxtInfoTypeGetText(Sender: TObject; var Text: String);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLblDateGetText(Sender: TObject; var Text: String);
    procedure actPrintExecute(Sender: TObject);
    procedure ppDBTxtCompanyCodeNameGetText(Sender: TObject; var Text: String);
  private
    { Private declarations }
    FormType: Byte;
    procedure InitForm;
    procedure gridkeyenter(Sender: TObject; var Key: Char);
    procedure gridkeyenter2(Sender: TObject; var Key: Char);
    procedure gridkeyenter3(Sender: TObject; var Key: Char);
  public
    { Public declarations }
  end;

var
  MissionInfoF: TMissionInfoF;

implementation

uses searchCode_ADO, GlobalPro, DM, Math, DateUtils, search2, sort2,
  sndkey32, mmessage,  mdimain,
  Interdicts, PersonelInfo, Mission, shamsiDate, SalaryFunctions, AccountP;
{$R *.dfm}

procedure TMissionInfoF.gridkeyenter(Sender: TObject; var Key: Char);
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
      #32, #157: if DBGrid1.Columns[curIndex].ButtonStyle = cbsEllipsis then
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
          (Sender as TDBGrid).SelectedIndex := 0;
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

procedure TMissionInfoF.InitForm;
begin
  SetLookUpCash(qryMission);
  SetLookUpCash(qryMissionInfo);
  with qryInitForm do
  begin
    Active := false;
    Parameters.ParamByName('FormType').Value := FormType;
    Active := true;
  end; // with
  with qryMaster do
  begin
    Active := false;
    Active := true;
  end; // with  }
end;

procedure TMissionInfoF.FormCreate(Sender: TObject);
begin
  inherited;
  FormType := var_glb_gParam;
  InitForm;
end;

procedure TMissionInfoF.qryMissionAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if (qryMissionInfo.State in dseditmodes) then
    qryMissionInfo.Post;
  with qryMissionInfo do
  begin
    Active := false;
    Parameters.ParamByName('MissionID').Value :=
      qryMission.Fieldbyname('MissionID').AsInteger;
    Active := true;
  end; // with
end;

procedure TMissionInfoF.qryMissionInfoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.Fieldbyname('MissionID').AsInteger :=
    qryMission.Fieldbyname('MissionID').AsInteger;
  DataSet.Fieldbyname('AccDetailCode').AsInteger :=
    qryMission.Fieldbyname('AccDetailCode').AsInteger;
  DataSet.Fieldbyname('AccCTopicCode').AsInteger :=
    qryMission.Fieldbyname('AccCTopicCode').AsInteger;
  DataSet.Fieldbyname('AccCTopicCode2').AsInteger :=
    qryMission.Fieldbyname('AccCTopicCode2').AsInteger;
  DataSet.Fieldbyname('AccCTopicCode3').AsInteger :=
    qryMission.Fieldbyname('AccCTopicCode3').AsInteger;
  DataSet.Fieldbyname('CofficentManage').AsFloat := 0;
  DataSet.Fieldbyname('InfoType').AsInteger := PageControl1.TabIndex;

  DataSet.Fieldbyname('StartDate').AsString :=
    qryMission.Fieldbyname('MissionStartDate').AsString;
  DataSet.Fieldbyname('EndDate').AsString :=
    qryMission.Fieldbyname('MissionEndDate').AsString;

  DataSet.Fieldbyname('FunMission').AsFloat :=
    DaysBetween(Shamsi2Miladi(qryMission.Fieldbyname('MissionStartDate')
    .AsString), Shamsi2Miladi(qryMission.Fieldbyname('MissionEndDate')
    .AsString)) + 1;

  if PageControl1.TabIndex = 0 then
  begin
    if qryMaster.Fieldbyname('Amount').AsFloat <> 0 then
      DataSet.Fieldbyname('RateMission').AsFloat :=
        qryMaster.Fieldbyname('Amount').AsFloat
    else
      With DMF.qryTmpTmpp do
      begin
        Active := false;
        SQL.Text :=
          'SELECT  ROUND(SUM(InterdictItems.Amount) / 30, 0) AS Amount FROM Pay.InterdictItems INNER JOIN';
        SQL.Add('Pay.Interdicts ON InterdictItems.InterdictID = Interdicts.InterdictID INNER JOIN');
        SQL.Add('Pay.SalaryRange ON InterdictItems.SalaryID = SalaryRange.SalaryID');
        SQL.Add('WHERE (Interdicts.PersonelNo = ' + qryMission.Fieldbyname
          ('PersonelNo').AsString + ')');
        SQL.Add('AND  (SalaryRange.FormInfoID = ' + qryMission.Fieldbyname
          ('MissionKind').AsString +
          ') AND (InterdicType = 0 ) AND  (Interdicts.State < 50)');
        SQL.Add('GROUP BY SalaryRange.SalaryID, SalaryRange.FormInfoID, Interdicts.State');
        Active := true;
        TADOQuery(DataSet).Fieldbyname('RateMission').AsFloat :=
          Fieldbyname('Amount').AsFloat;
        Active := false;
      end;
    DataSet.Fieldbyname('RateMission').AsFloat :=
      DataSet.Fieldbyname('RateMission').AsFloat * qryMaster.Fieldbyname
      ('StandardDays').AsFloat;
    DataSet.Fieldbyname('RateMission').AsFloat :=
      RoundTo(DataSet.Fieldbyname('RateMission').AsFloat, 0)
  end;

end;

procedure TMissionInfoF.qryMissionInfoAfterPost(DataSet: TDataSet);
begin
  inherited;
  BigMessage('À»‹‹  ‘œ', 1);
end;

procedure TMissionInfoF.SrcMissionInfoStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qryMissionInfo.State in dseditmodes;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
  FreeReservedCodes(DMf.adcSalary);
end;

procedure TMissionInfoF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryMissionInfo);
end;

procedure TMissionInfoF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryMissionInfo);
end;

procedure TMissionInfoF.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid);
end;

procedure TMissionInfoF.qryMissionInfoAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('Õ‹–› ‘‹‹œ', 1);
end;

procedure TMissionInfoF.qryMissionInfoBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  // if not FunctionDelete(qrydecExtPersonelNo.AsInteger, MonthNo) then
  // Abort;
  if get_response('¬Ì« «“ Õ–› „ÿ„∆‰ Â” Ìœ.') <> mrYes then
    Abort;
end;

procedure TMissionInfoF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid, 3, true, IntToStr(FormType));
  SetColSize(DBGrid1, 1, true, IntToStr(FormType));
  SetColSize(DBGrid2, 1, true, IntToStr(FormType));
  SetColSize(DBGrid3, 1, true, IntToStr(FormType));
end;

procedure TMissionInfoF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid, IntToStr(FormType));
  SaveColWidth(DBGrid1, IntToStr(FormType));
  SaveColWidth(DBGrid2, IntToStr(FormType));
  SaveColWidth(DBGrid3, IntToStr(FormType));
end;

procedure TMissionInfoF.DBGridKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryMissionPersonelNo)
end;

procedure TMissionInfoF.actAccExecute(Sender: TObject);
begin
  inherited;
  if not(qryMissionInfo.State in dseditmodes) then
    qryMissionInfo.Edit;
  AccountpF.Enter(qryMissionInfo);
end;

procedure TMissionInfoF.DBGrid1EditButtonClick(Sender: TObject);
var
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
    aDataSet.Edit;
  case i of
    0:
      begin
        aDataSet.Fieldbyname('AccDetailCode').AsString :=
          SpeedButtonDetailCode(aDataSet.Fieldbyname('AccDetailCode')
          .AsString, 0, false)
      end; // 0
    2:
      begin
        aDataSet.Fieldbyname('AccCTopiccode').AsString :=
          SpeedButtonCTopicCode(aDataSet.Fieldbyname('AccCTopiccode')
          .AsString, 0, false)
      end; // 2
    3:
      begin
        aDataSet.Fieldbyname('AccCTopiccode2').AsString :=
          SpeedButtonCTopicCode2(aDataSet.Fieldbyname('AccCTopiccode2')
          .AsString, qryMissionInfo.Fieldbyname('AccCTopiccode').AsInteger)
      end; // 3
    4:
      begin
        aDataSet.Fieldbyname('AccCTopiccode3').AsString :=
          SpeedButtonCTopicCode3(aDataSet.Fieldbyname('AccCTopiccode3')
          .AsString, qryMissionInfo.Fieldbyname('AccCTopiccode2').AsInteger)
      end; // 4
  end; // case
end;

procedure TMissionInfoF.gridkeyenter2(Sender: TObject; var Key: Char);
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
            nextIndex := 7;
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
      if (Sender as TDBGrid).DataSource.DataSet.State in dseditmodes then
        (Sender as TDBGrid).DataSource.DataSet.Cancel;
      #32, #157: if DBGrid2.Columns[curIndex].ButtonStyle = cbsEllipsis then

    begin
      Key := #0;
      DBGrid2EditButtonClick(Sender);
    end; // if
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
          (Sender as TDBGrid).SelectedIndex := 0;
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

procedure TMissionInfoF.BitBtn17Click(Sender: TObject);
begin
  inherited;
  PopMnuOthers.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y)
end;

procedure TMissionInfoF.ActShowInterdictExecute(Sender: TObject);
begin
  inherited;
  if mdimainF.ActInterdictsF.Execute then
    InterdictsF.qryInterdicts.Locate('PersonelNo',
      qryMission.Fieldbyname('PersonelNo').AsVariant, [])

end;

procedure TMissionInfoF.ActPersonelInfoFExecute(Sender: TObject);
begin
  inherited;
  if mdimainF.ActPersonelInfoF.Execute then
    PersonelInfoF.qryPeronalInfo.Locate('PersonelNo',
      qryMission.Fieldbyname('PersonelNo').AsInteger, [])

end;

procedure TMissionInfoF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  gridkeyenter(Sender, Key);
end;

procedure TMissionInfoF.sbtnMasterClick(Sender: TObject);
var
  Txt: String;
  s: Boolean;
  Results: array [0 .. 2] of String;
begin
  inherited;
  Txt := 'SELECT Mission.MissionKind , FormsInfo.InfoID, FormsInfo.InfoName_L1 '
    + 'FROM Pay.Mission LEFT OUTER JOIN Pay.FormsInfo ON Mission.MissionKind = FormsInfo.FormInfoID '
    + 'WHERE     (FormsInfo.FormType = 24) ' +
    'GROUP BY Mission.MissionKind, FormsInfo.InfoName_L1, FormsInfo.InfoID ';
  s := searchCode_ADOF.SearchCode2(DMf.adcSalary, '‰Ê⁄ „«„Ê—Ì  ', Txt,
    ['', 'ﬂœ', '‰«„'], Results, [0, 50, 100], alLeft);
  if s then
    qryMaster.Locate('MissionKind', Results[0], []);
end;

procedure TMissionInfoF.actMissionShowExecute(Sender: TObject);
begin
  inherited;
  MissionF.enter(24);
  MissionF.qryMission.Locate('MissionID', qryMission.Fieldbyname('MissionID')
    .AsVariant, [])
end;

procedure TMissionInfoF.AllChangeCalcPrice(Sender: TField);
var
  r: Real;
begin
  inherited;
  r := qryMissionInfo.Fieldbyname('RateMission').AsFloat *
    qryMissionInfo.Fieldbyname('FunMission').AsFloat;
  r := r * ((qryMissionInfo.Fieldbyname('CofficentManage').AsFloat +
    100) / 100);
  r := RoundTo(r, 0);
  qryMissionInfo.Fieldbyname('Price').Value := r;
end;

procedure TMissionInfoF.qryMasterAfterScroll(DataSet: TDataSet);
begin
  inherited;
  With qryMission do
  begin
    Active := false;
    Parameters.ParamByName('MasterCode').Value := TADOQuery(DataSet)
      .Fieldbyname('MissionKind').AsInteger;
    Active := true;
  end;
end;

procedure TMissionInfoF.qryMissionInfoStartDateChange(Sender: TField);
begin
  inherited;
  qryMissionInfo.Fieldbyname('FunMission').AsFloat :=
    DaysBetween(Shamsi2Miladi(qryMissionInfo.Fieldbyname('StartDate').AsString),
    Shamsi2Miladi(qryMissionInfo.Fieldbyname('EndDate').AsString)) + 1;
end;

procedure TMissionInfoF.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  gridkeyenter2(Sender, Key);
end;

procedure TMissionInfoF.DBGrid2EditButtonClick(Sender: TObject);
var
  aDataSet: TDataSet;
  i: Smallint;
  s: Boolean;
  Results: array [0 .. 3] of String;
begin
  inherited;
  if (Sender as TDBGrid).ReadOnly then
    exit;
  i := (Sender as TDBGrid).SelectedIndex;
  aDataSet := (Sender as TDBGrid).DataSource.DataSet;
  (Sender as TDBGrid).SelectedIndex := i;
  if not(aDataSet.State in dseditmodes) then
    aDataSet.Edit;
  case i of
    0:
      begin
        aDataSet.Fieldbyname('AccDetailCode').AsString :=
          SpeedButtonDetailCode(aDataSet.Fieldbyname('AccDetailCode')
          .AsString, 0, false)
      end; // 0
    2:
      begin
        aDataSet.Fieldbyname('AccCTopiccode').AsString :=
          SpeedButtonCTopicCode(aDataSet.Fieldbyname('AccCTopiccode')
          .AsString, 0, false)
      end; // 2
    3:
      begin
        aDataSet.Fieldbyname('AccCTopiccode2').AsString :=
          SpeedButtonCTopicCode2(aDataSet.Fieldbyname('AccCTopiccode2')
          .AsString, qryMissionInfo.Fieldbyname('AccCTopiccode').AsInteger)
      end; // 3
    4:
      begin
        aDataSet.Fieldbyname('AccCTopiccode3').AsString :=
          SpeedButtonCTopicCode3(aDataSet.Fieldbyname('AccCTopiccode3')
          .AsString, qryMissionInfo.Fieldbyname('AccCTopiccode2').AsInteger)
      end; // 4
    5:
      begin
        s := searchCode_ADOF.SearchCode2(DMf.adcSalary, 'Â“Ì‰Â',
          'SELECT     FormInfoID, InfoID, InfoName_L1, InfoName_L2 ' +
          'FROM Pay.FormsInfo WHERE     (FormType = 38) AND PrvInfoID=' +
          qryMission.Fieldbyname('MissionKind').AsString,
          ['', 'ﬂœ ', 'Â“Ì‰Â', 'Â“Ì‰Â'], Results, [0, 20, 100, 100], alLeft);
        if s then
        begin
          if not(aDataSet.State in dseditmodes) then
            aDataSet.Edit;
          aDataSet.Fieldbyname('ExpID').AsString := Results[0];
        end;
      end; // 5
  end; // case
end;

procedure TMissionInfoF.qryMissionBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  with qryMissionInfo do
  begin
    Active := false;
    Parameters.ParamByName('InfoTypeFrom').Value := PageControl1.TabIndex;
    Parameters.ParamByName('InfoTypeTo').Value := PageControl1.TabIndex;
  end; // with

end;

procedure TMissionInfoF.PageControl1Change(Sender: TObject);
begin
  inherited;
  with qryMissionInfo do
  begin
    Active := false;
    Parameters.ParamByName('InfoTypeFrom').Value := PageControl1.TabIndex;
    Parameters.ParamByName('InfoTypeTo').Value := PageControl1.TabIndex;
    Active := true;
    Fieldbyname('ExpID').Required := PageControl1.TabIndex in [1, 2];
    Fieldbyname('_ExpID').Required := Fieldbyname('ExpID').Required;
    Fieldbyname('_ExpName').Required := Fieldbyname('ExpID').Required;
  end; // with
end;

procedure TMissionInfoF.DBGrid3EditButtonClick(Sender: TObject);
var
  aDataSet: TDataSet;
  i: Smallint;
  s: Boolean;
  Results: array [0 .. 6] of String;
begin
  inherited;
  if (Sender as TDBGrid).ReadOnly then
    exit;
  i := (Sender as TDBGrid).SelectedIndex;
  aDataSet := (Sender as TDBGrid).DataSource.DataSet;
  (Sender as TDBGrid).SelectedIndex := i;
  if not(aDataSet.State in dseditmodes) then
    aDataSet.Edit;
  case i of
    0:
      begin
        s := searchCode_ADOF.SearchCode2(DMf.adcSalary, 'Â“Ì‰Â',
          'SELECT    CalCulateType, FormInfoID, InfoID, InfoName_L1, InfoName_L2 ,Amount,StandardDays '
          + 'FROM Pay.FormsInfo WHERE     (FormType = 38) AND PrvInfoID=' +
          qryMission.Fieldbyname('MissionKind').AsString,
          ['', '', 'ﬂœ ', 'Â“Ì‰Â', 'Â“Ì‰Â', '', ''], Results,
          [0, 0, 20, 100, 100, 0, 0], alLeft);
        if s then
        begin
          if not(aDataSet.State in dseditmodes) then
            aDataSet.Edit;
          aDataSet.Fieldbyname('ExpID').AsString := Results[1];
          if PageControl1.TabIndex = 2 then
          begin
            case StrToInt(Results[0]) of
              1:
                With DMF.qryTmpTmpp do
                begin
                  Active := false;
                  SQL.Text :=
                    'SELECT ROUND(SUM(InterdictItems.Amount) / 30, 0) AS Amount';
                  SQL.Add('FROM Pay.Interdicts INNER JOIN');
                  SQL.Add('Pay.InterdictItems ON Pay.Interdicts.InterdictID = InterdictItems.InterdictID INNER JOIN  FormsInfo INNER JOIN');
                  SQL.Add(' Pay.SalaryRange ON FormsInfo.FormInfoID = SalaryRange.FormInfoID ON InterdictItems.SalaryID = SalaryRange.SalaryID');
                  SQL.Add('WHERE (Interdicts.PersonelNo  = ' +
                    qryMission.Fieldbyname('PersonelNo').AsString + ')');
                  SQL.Add('and (FormsInfo.FormType = 38) AND (InterdicType = 0 ) AND  (Interdicts.State < 50)');
                  SQL.Add('AND (FormsInfo.FormInfoID = ' + Results[1] + ')');
                  SQL.Add('AND (FormsInfo.PrvInfoID = ' + qryMission.Fieldbyname
                    ('MissionKind').AsString + ')');
                  Active := true;
                  aDataSet.Fieldbyname('RateMission').AsFloat :=
                    Fieldbyname('Amount').AsFloat;
                  Active := false;
                  aDataSet.Fieldbyname('RateMission').AsFloat :=
                    aDataSet.Fieldbyname('RateMission').AsFloat *
                    StrToFloat(Results[6]);
                  // qryMaster.FieldByName('StandardDays').AsFloat;
                  aDataSet.Fieldbyname('RateMission').AsFloat :=
                    RoundTo(aDataSet.Fieldbyname('RateMission').AsFloat, 0)
                end; // With
              6:
                aDataSet.Fieldbyname('RateMission').AsString := Results[5];
            else
              aDataSet.Fieldbyname('RateMission').AsFloat := 0;
            end; // case
          end; // if
        end;
      end; // 0
  end; // case
end;

procedure TMissionInfoF.DBGrid3KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  gridkeyenter3(Sender, Key);
end;

procedure TMissionInfoF.gridkeyenter3(Sender: TObject; var Key: Char);
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
            nextIndex := 2;
          1:
            nextIndex := 2;
          2:
            nextIndex := 3;
          3:
            nextIndex := 4;
          4:
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
      if (Sender as TDBGrid).DataSource.DataSet.State in dseditmodes then
        (Sender as TDBGrid).DataSource.DataSet.Cancel;
      #32, #157: if DBGrid3.Columns[curIndex].ButtonStyle = cbsEllipsis then

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
  if nextIndex >= (Sender as TDBGrid).Columns.Count then
    nextIndex := -1;
  if (curIndex <> nextIndex) then
    case nextIndex of
      - 1:
        begin
          sendkey(vk_down, [], false);
          (Sender as TDBGrid).SelectedIndex := 0;
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

procedure TMissionInfoF.qryMissionInfoBeforePost(DataSet: TDataSet);
begin
  inherited;
  // if not FunctionDelete(qryMissionPersonelNo.AsInteger, MonthNo) then
  // Abort;
  case PageControl1.TabIndex of
    0:
      if (DataSet.Fieldbyname('_AccCTopicCode').AsString = EmptyStr) and
        (DataSet.Fieldbyname('_AccDetailCode').AsString = '0') then
      begin
        DataSet.Cancel;
        Abort
      end;
    1:
      if (DataSet.Fieldbyname('_AccCTopicCode').AsString = EmptyStr) and
        (DataSet.Fieldbyname('_ExpName').AsString = EmptyStr) and
        (DataSet.Fieldbyname('_AccDetailCode').AsString = '0') then
      begin
        DataSet.Cancel;
        Abort
      end;
    2:
      if DataSet.Fieldbyname('_ExpName').AsString = EmptyStr then
      begin
        DataSet.Cancel;
        Abort
      end;

  end;
  if not CheckRequiredFields(DataSet) then
    Abort;
end;

procedure TMissionInfoF.ppDBTxtInfoTypeGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  case qryMissionInfo.Fieldbyname('InfoType').AsInteger of
    0:
      Text := '„«„Ê—Ì ';
    1:
      Text := 'Â“Ì‰Â Â«Ì  Œ’Ì’Ì';
    2:
      Text := 'Â“Ì‰Â Â«Ì  ”ÂÌ„Ì';
  end;
end;

procedure TMissionInfoF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TMissionInfoF.ppLblDateGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPrintDate
end;

procedure TMissionInfoF.actPrintExecute(Sender: TObject);
begin
  inherited;
  with qryMissionInfo do
  begin
    try
      Active := false;
      Parameters.ParamByName('InfoTypeFrom').Value := 0;
      Parameters.ParamByName('InfoTypeTo').Value := 99;
      Active := true;
      InitReportFile(ppReport1, 'MissionInfo');
    finally
      // Active:=False;
      // Parameters.ParamByName('InfoTypeFrom').Value:=PageControl1.TabIndex;
      // Parameters.ParamByName('InfoTypeTo').Value:=PageControl1.TabIndex;
      // Active:=True;
    end; // try
  end; // with
end;

procedure TMissionInfoF.ppDBTxtCompanyCodeNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  if qryMissionInfo.Fieldbyname('InfoType').AsInteger > 0 then
    Text := '';
end;

end.
