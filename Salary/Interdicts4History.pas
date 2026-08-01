unit Interdicts4History;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, Grids, Vcl.DBGrids, DBCtrls, ppBands, ppCtrls, FaraConsts,
  ppVar, ppPrnabl, ppClass, ppCache, ppDB, ppDBPipe, ppComm, ppRelatv,
  ppProd, ppReport, Menus, ppStrtch, ppSubRpt, ppModule, ppParameter,
  ppDesignLayer, System.ImageList, System.Actions, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, CedarDbGrid, filter_ADO, FilterClass_ADO, Filter_ADO_Const;

type
  TInterdicts4HistoryF = class(Ttemplate2MDIF)
    srcInterdictList: TDataSource;
    BitBtn3: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    actShowForm: TAction;
    actPrint: TAction;
    actSort: TAction;
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    qryInterdictList: TADOQuery;
    qryInterdictListInterdictID: TIntegerField;
    qryInterdictListInterdictNo: TStringField;
    qryInterdictListInterdictDate: TStringField;
    qryInterdictListJobName_L1: TStringField;
    qryInterdictListJobName_L2: TStringField;
    qryInterdictListgrade_L1: TStringField;
    qryInterdictListgrade_L2: TStringField;
    qryInterdictListjobCity_L1: TStringField;
    qryInterdictListjobCity_L2: TStringField;
    qryInterdictListInterdicType_L1: TStringField;
    qryInterdictListInterdicType_L2: TStringField;
    qryInterdictListInterdicStartDate: TStringField;
    qryInterdictListemployDaytime: TWordField;
    qryInterdictListState: TWordField;
    qryInterdictListInterdicTypeID: TIntegerField;
    qryInterdictListOfficeID: TIntegerField;
    qryInterdictListOfficeName_L1: TStringField;
    qryInterdictListOfficeName_L2: TStringField;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppLabel3: TppLabel;
    ppShape1: TppShape;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine7: TppLine;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel12: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel7: TppLabel;
    ppLabel2: TppLabel;
    ppLabel4: TppLabel;
    ppLabel6: TppLabel;
    ppLabel15: TppLabel;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine15: TppLine;
    ppLabel11: TppLabel;
    ppDetailBand1: TppDetailBand;
    qryInterdictListInterdicEndDate: TStringField;
    qryEmployeeInfolist: TADOQuery;
    qryEmployeeInfolistPersonelNo: TIntegerField;
    qryEmployeeInfolistPersonelName_L1: TStringField;
    qryEmployeeInfolistPersonelName_L2: TStringField;
    SrcEmployeeInfolist: TDataSource;
    Panel1: TPanel;
    qryInterdictListPersonelNo: TIntegerField;
    ppLabel18: TppLabel;
    ppLine11: TppLine;
    ppDBText10: TppDBText;
    ppDBPipeline2: TppDBPipeline;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDetailBand2: TppDetailBand;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine21: TppLine;
    ppDBText2: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText8: TppDBText;
    ppDBText7: TppDBText;
    ppDBText9: TppDBText;
    ppDBText11: TppDBText;
    ppLine19: TppLine;
    ppLine23: TppLine;
    ppDBText1: TppDBText;
    ppLine6: TppLine;
    BitBtn1: TBitBtn;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppLine5: TppLine;
    ppFooterBand2: TppFooterBand;
    ppLine1: TppLine;
    actState: TAction;
    BitBtn4: TBitBtn;
    qryPersonelInfo: TADOQuery;
    srcPersonelInfo: TDataSource;
    qryPersonelInfoPersonelNo: TIntegerField;
    qryPersonelInfoname_L1: TStringField;
    qryPersonelInfoname_L2: TStringField;
    qryPersonelInfolastName_L1: TStringField;
    qryPersonelInfolastName_L2: TStringField;
    qryPersonelInfofatherName_L1: TStringField;
    qryPersonelInfofatherName_L2: TStringField;
    qryPersonelInfoNationalityCode: TIntegerField;
    qryPersonelInfoNationalID: TStringField;
    qryPersonelInfoemployDate: TStringField;
    qryPersonelInfoState: TStringField;
    qryPersonelInfofinishEmployDate: TStringField;
    qryItems: TADOQuery;
    srcItems: TDataSource;
    qryItemsSalaryID: TIntegerField;
    qryItemsInfoName_L1: TStringField;
    qryItemsInfoName_L2: TStringField;
    qryItemsAmount: TBCDField;
    qryItemsItemNote_L1: TStringField;
    qryItemsItemNote_L2: TStringField;
    GroupBox1: TGroupBox;
    DBGrid4: TDBGrid;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    DBGrid3: TDBGrid;
    qryInterdictListInterdictItemsAmount: TBCDField;
    actDelete: TAction;
    BitBtn8: TBitBtn;
    PopOther: TPopupMenu;
    N6: TMenuItem;
    N8: TMenuItem;
    AllState: TMenuItem;
    N2: TMenuItem;
    tag1: TMenuItem;
    N1: TMenuItem;
    qryInitQry: TADOQuery;
    qryInterdictListinsurancename: TStringField;
    qryInterdictListTax: TStringField;
    Splitter2: TSplitter;
    Splitter1: TSplitter;
    qryItemsFirstdate: TStringField;
    qryItemsEnddate: TStringField;
    qryInterdictListInsuranceStartDate: TStringField;
    qryInterdictListInsuranceEndDate: TStringField;
    DBGrid2: TCedarDbgrid;
    DBGrid1: TCedarDbgrid;
    qryInterdictListRetardActive: TWordField;
    actFilter: TAction;
    qryInterdictListInterdicType: TIntegerField;
    procedure actShowFormExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ppLabel7GetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable2GetText(Sender: TObject; var Text: String);
    procedure actPrintExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure qryInterdictListStateGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qryEmployeeInfolistAfterScroll(DataSet: TDataSet);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure ppDBText10GetText(Sender: TObject; var Text: String);
    procedure ppDBText1GetText(Sender: TObject; var Text: String);
    procedure BitBtn1Click(Sender: TObject);
    procedure actStateExecute(Sender: TObject);
    procedure qryInterdictListAfterScroll(DataSet: TDataSet);
    procedure actDeleteExecute(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure AllStateClick(Sender: TObject);
    procedure ppLabel1GetText(Sender: TObject; var Text: String);
    procedure qryInterdictListAfterOpen(DataSet: TDataSet);
  private
    function Statecount: Integer;
  public
    procedure Enter(PersonelNo, InterdictID: Integer);
    { Public declarations }
  end;

var
  Interdicts4HistoryF: TInterdicts4HistoryF;

implementation

uses DM, sort2, search2, GlobalPro, Interdicts, mmessage, PersonelInfo,
  DBGrid2Print, main, SalaryFunctions, mdiMain;

{$R *.dfm}

procedure TInterdicts4HistoryF.Enter(PersonelNo, InterdictID: Integer);
begin
  if not(mainF.MnuPay_Interdicts4HistoryF.Visible or
    mainF.MnuPay_Interdicts4HistoryF1.Visible) then
    Abort;
  // add2log('Interdicts4History1');
  CreateMDIForm2(TInterdicts4HistoryF, Interdicts4HistoryF, mainF);
  // add2log('Interdicts4History2');

  if PersonelNo <> 0 then
  begin
    Interdicts4HistoryF.qryEmployeeInfolist.Locate('PersonelNo',
      PersonelNo, []);
    Interdicts4HistoryF.qryInterdictList.Locate('InterdictID', InterdictID, [])
  end;
end;

procedure TInterdicts4HistoryF.actShowFormExecute(Sender: TObject);
begin
  inherited;
  // if qryInterdictList.FieldByName('State').AsInteger > 49 then
  // Exit;
  InterdictsF.Enter(45, qryInterdictListState.AsInteger,
    qryInterdictListState.AsInteger, qryInterdictListInterdicType.AsInteger,
    qryInterdictListInterdictID.AsInteger)
end;

procedure TInterdicts4HistoryF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryEmployeeInfolist);
end;

procedure TInterdicts4HistoryF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryEmployeeInfolist);
end;

procedure TInterdicts4HistoryF.FormCreate(Sender: TObject);
begin
  inherited;
  qryInitQry.Active := True;
  qryEmployeeInfolist.Active := True;
  qryPersonelInfo.Active := True;
  actDelete.Visible := CheckUserlevel(qryInitQry.FieldByName('DeleteLevelID')
    .AsInteger, False);
  // CheckUserlevel  (Pos('„œÌ— ”Ì” „',User.menus)<>0)or(User.a dmin);
end;

procedure TInterdicts4HistoryF.ppLabel7GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TInterdicts4HistoryF.ppSystemVariable2GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TInterdicts4HistoryF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qryEmployeeInfolist.DisableControls;
    qryInterdictList.DisableControls;
    InitReportFile(ppReport1, Self.Name);
  finally
    qryEmployeeInfolist.EnableControls;
    qryInterdictList.EnableControls;
  end // try
end;

procedure TInterdicts4HistoryF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid3, 3, True);
  SetColSize(DBGrid4, 1, True);
end;

procedure TInterdicts4HistoryF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid4);
end;

procedure TInterdicts4HistoryF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  actShowForm.Execute
end;

procedure TInterdicts4HistoryF.qryInterdictListStateGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  case qryInterdictList.FieldByName('State').AsInteger of
    0:
      Text := 'ÅÌ‘ ‰ÊÌ”';
    1:
      Text := '‰Â«∆Ì';
    50:
      Text := '»«Ìê«‰Ì';
  end; // case
end;

procedure TInterdicts4HistoryF.qryEmployeeInfolistAfterScroll
  (DataSet: TDataSet);
begin
  inherited;
  with qryItems do
  begin
    Active := False;
  end; // with
  with qryInterdictList do
  begin
    Active := False;
    Parameters.ParamByName('PersonID').Value :=
      DataSet.FieldByName('PersonelNo').AsInteger;

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

    Parameters.ParamByName('InterdictDate').Value := APPBank.endYear;

    Active := True;
  end; // with
end;

procedure TInterdicts4HistoryF.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryEmployeeInfolist.FieldByName('PersonelNo'));
end;

procedure TInterdicts4HistoryF.ppDBText10GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  if Text <> '' then
    Text := Text + ' - ' + GetPersonelName(Text);
end;

procedure TInterdicts4HistoryF.ppDBText1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  case qryInterdictList.FieldByName('State').AsInteger of
    0:
      Text := 'ÅÌ‘ ‰ÊÌ”';
    1:
      Text := '‰Â«∆Ì';
    50:
      Text := '»«Ìê«‰Ì';
  end; // case
end;

procedure TInterdicts4HistoryF.BitBtn1Click(Sender: TObject);
begin
  inherited;
  if mdiMainF.ActPersonelInfoF.Execute then
    PersonelInfoF.qryPeronalInfo.Locate('PersonelNo',
      qryInterdictList.FieldByName('PersonelNo').AsVariant, [])
end;

function TInterdicts4HistoryF.Statecount: Integer;
begin
  Result := 0;
  With qryInterdictList do
  begin
    DisableControls;
    First;
    while Not Eof do
    begin
      if FieldByName('State').AsInteger < 50 then
        inc(Result);
      Next;
    end;
    EnableControls;
  end;
  if Result > 0 then
    Warn('Õﬂ„ ÅÌ‘ ‰ÊÌ” Ì« ‰Â«∆Ì ÊÃÊœ œ«—œ');
end;

procedure TInterdicts4HistoryF.actStateExecute(Sender: TObject);
var
  InterdictID: string;
begin
  inherited;
  // if not User.a dmin then begin
  // Warn('«Ì‰ «„ﬂ«‰ »—«Ì „œÌ— ”Ì” „ „Ì˛»«‘œ.˛');
  // Exit;
  // end;
  if get_response('¬Ì« »—«Ì ÅÌ‘ ‰ÊÌ” ﬂ—œ‰ Õﬂ„ù «‰ Œ«» ‘œÂ „ÿ„∆‰ Â” Ìœø') <> mrYes
  then
    Exit;
  InterdictID := qryInterdictList.FieldByName('InterdictID').AsString;
  if Statecount > 0 then
    Exit;
  with DMF.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text := 'UPDATE Pay.Interdicts SET State = 0 WHERE ' +
    // (State <50) AND '+
      '(InterdictID IN (' + InterdictID + '))';
    try
      BigMessage(IntToStr(ExecSQL) + ' Õﬂ„ù ÅÌ‘ ‰ÊÌ” ‘œ.', 2);
      Active := False;
      qryInterdictList.Active := False;
      qryInterdictList.Open;
      qryInterdictList.Locate('InterdictID', InterdictID, []);
    except
      on E: Exception do
      begin
        Warn('«‘ﬂ«· œ— ÅÌ‘ ‰ÊÌ” ﬂ—œ‰ Õﬂ„ù' + #13#10 + E.Message);
      end;
    end; // try
  end; // with
end;

procedure TInterdicts4HistoryF.qryInterdictListAfterOpen(DataSet: TDataSet);
begin
  inherited;
  DataSet.Last
end;

procedure TInterdicts4HistoryF.qryInterdictListAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryItems do
  begin
    Active := False;
    Parameters.ParamByName('InterdictID').Value :=
      qryInterdictList.FieldByName('InterdictID').AsInteger;
    Active := True;
  end; // with
end;

procedure TInterdicts4HistoryF.actDeleteExecute(Sender: TObject);
var
  InterdictID: string;
begin
  inherited;
  if not CheckUserlevel(qryInitQry.FieldByName('DeleteLevelID').AsInteger) then
    Abort;
  if get_response('¬Ì« «“ Õ–› Õﬂ„ ‘„«—Â ' + qryInterdictList.FieldByName
    ('InterdictNo').AsString + ' Å—”‰· ' +

    qryEmployeeInfolist.FieldByName('PersonelNo').AsString + ' „ÿ„∆‰ Â” Ìœ.') <> mrYes
  then
    Abort;
  InterdictID := qryInterdictList.FieldByName('InterdictID').AsString;

  with DMF.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text := 'Delete Pay.Interdicts WHERE(InterdictID IN(' +
      InterdictID + '))';
    try
      BigMessage(IntToStr(ExecSQL) + ' Õﬂ„ù Õ–›  ‘œ.', 2);
      Active := False;
      qryInterdictList.Active := False;
      qryInterdictList.Open;
      qryInterdictList.Locate('InterdictID', InterdictID, []);
    except
      on E: Exception do
      begin
        Warn('«‘ﬂ«· œ— Õ–›  ﬂ—œ‰ Õﬂ„ù' + #13#10 + E.Message);
      end;
    end; // try
  end; // with
end;

procedure TInterdicts4HistoryF.BitBtn8Click(Sender: TObject);
begin
  inherited;
  PopOther.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TInterdicts4HistoryF.N6Click(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, 0, '');
end;

procedure TInterdicts4HistoryF.N8Click(Sender: TObject);
begin
  inherited;
  qryEmployeeInfolist.Requery();
end;

procedure TInterdicts4HistoryF.AllStateClick(Sender: TObject);
var
  IntState: Integer;
  InterdictID: string;
begin
  inherited;
  InterdictID := qryInterdictList.FieldByName('InterdictID').AsString;
  IntState := (Sender as TMenuItem).Tag;
  if (IntState < 50) and (Statecount > 0) then
    Exit;
  with DMF.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text := 'UPDATE Pay.Interdicts SET State =' + IntToStr(IntState) +
      ' WHERE (InterdictID IN (' + InterdictID + '))';
    try
      BigMessage(IntToStr(ExecSQL) + ' Ê÷⁄Ì  Õﬂ„  €ÌÌ— ﬂ—œ.', 2);
      qryInterdictList.Requery();
      qryInterdictList.Locate('InterdictID', InterdictID, []);
    except
      on E: Exception do
      begin
        Warn('«‘ﬂ«· œ—  €ÌÌ— Ê÷⁄Ì  Õﬂ„ù' + #13#10 + E.Message);
      end;
    end; // try
  end; // with
end;

procedure TInterdicts4HistoryF.ppLabel1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

end.
