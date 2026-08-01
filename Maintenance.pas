unit Maintenance;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, Grids, Vcl.DBGrids, Mask, DBCtrls, DB, ADODB, ComCtrls, ppBands,
  ppClass, ppDB, ppCtrls, ppReport, ppStrtch, ppSubRpt, ppPrnabl, ppCache,
  ppProd, ppComm, ppRelatv, ppDBPipe, ppVar, Menus, ppModule, ppTypes,
  sndkey32, SumDBGrid, MyDBGrids, ppParameter, shamsiDate, DateUtils, Math,
  frPelak, ppRegion, ppDesignLayer, System.ImageList, System.Actions;

type
  TMaintenanceF = class(Ttemplate2MDIF)
    srcMaintenance: TDataSource;
    qryMaintenance: TADOQuery;
    srcFunctions: TDataSource;
    BitBtn1: TBitBtn;
    BitBtn12: TBitBtn;
    BitBtn9: TBitBtn;
    newPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    DataSetDelete1: TDataSetDelete;
    DataSetInsert2: TDataSetInsert;
    DataSetPost2: TDataSetPost;
    DataSetCancel2: TDataSetCancel;
    actPrint: TAction;
    actSort: TAction;
    actSendToExcel: TAction;
    DBGrid1: TDBGrid;
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    ppDBPipeline2: TppDBPipeline;
    qryFunctions: TADOQuery;
    BitBtn10: TBitBtn;
    popPrint: TPopupMenu;
    N11: TMenuItem;
    N21: TMenuItem;
    pnlDelete: TPanel;
    spdSelectCheck: TSpeedButton;
    SpeedButton16: TSpeedButton;
    AllC_L_i_c_k_: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    NReportFileName1: TMenuItem;
    NReportFileName2: TMenuItem;
    ppParameterList1: TppParameterList;
    Label1: TLabel;
    edtMaintenanceNo: TDBEdit;
    SpeedButton5: TSpeedButton;
    edtMaintenanceDate: TDBEdit;
    Label2: TLabel;
    actGetExcel: TAction;
    BitBtn6: TBitBtn;
    qryMaintenanceMaintenanceID: TIntegerField;
    qryMaintenanceYearID: TIntegerField;
    qryMaintenanceMaintenanceKind: TWordField;
    qryMaintenanceMaintenanceNo: TWordField;
    qryMaintenanceMaintenanceDate: TStringField;
    qryMaintenanceCustID1: TIntegerField;
    qryMaintenanceCustID2: TIntegerField;
    qryMaintenanceCustID3: TIntegerField;
    qryMaintenanceStuffCode: TLargeintField;
    qryMaintenanceDescRequest: TStringField;
    qryMaintenanceNumberCar: TStringField;
    qryMaintenancedriverName: TStringField;
    pnlCustomer1: TPanel;
    Label5: TLabel;
    edtStuffCode: TDBEdit;
    btnStuffCode: TSpeedButton;
    edt_StuffCode: TDBEdit;
    qryMaintenanceKind: TADOQuery;
    qryMaintenance_MaintenanceKind: TStringField;
    Label7: TLabel;
    dbmmoDescRequest: TDBMemo;
    Label8: TLabel;
    edtNumberCar: TDBEdit;
    Label9: TLabel;
    edtdriverName: TDBEdit;
    Label10: TLabel;
    edtDateAndTime: TDBEdit;
    Label11: TLabel;
    qryStuffCode: TADOQuery;
    qryMaintenance_StuffCode: TStringField;
    qryMaintenanceDateAndTime: TDateTimeField;
    qryMaintenanceLoginNow: TDateTimeField;
    qryPerson: TADOQuery;
    qryStuffCode2: TADOQuery;
    qryFunctionsFunctionId: TIntegerField;
    qryFunctionsFunctionInfoType: TWordField;
    qryFunctionsWorkShopId: TIntegerField;
    qryFunctionsMachineId: TLargeintField;
    qryFunctionsPersonId: TIntegerField;
    qryFunctions_PersonId: TStringField;
    qryFunctionsStuffId: TLargeintField;
    qryFunctionsProductionprocess: TIntegerField;
    qryFunctionsEarthField: TStringField;
    qryFunctionsGate: TIntegerField;
    qryFunctionsRatio: TIntegerField;
    qryFunctionsFunctionDate: TStringField;
    qryFunctionsStartHour: TDateTimeField;
    qryFunctionsEndHour: TDateTimeField;
    qryFunctionsFunctionNote: TWideStringField;
    qryFunctionsCaseId: TIntegerField;
    qryFunctionsFunctionType: TWordField;
    qryFunctionsFunctionStatus: TWordField;
    qryFunctionsAmount1: TFloatField;
    qryFunctionsAmount2: TFloatField;
    qryFunctionsAmount3: TFloatField;
    qryFunctionsStuffCode2: TLargeintField;
    qryFunctions_StuffCode2: TStringField;
    qryFunctionsStuffCode3: TLargeintField;
    qryFunctionsMaintenanceID: TIntegerField;
    qryinit: TADOQuery;
    pnlPerson3: TPanel;
    LblPerson3: TLabel;
    btnCustID3: TSpeedButton;
    dbtxtPersonID3: TDBText;
    edtCustID3: TDBEdit;
    PnlPerson1: TPanel;
    LblPerson1: TLabel;
    btnCustID1: TSpeedButton;
    dbtxtPersonID1: TDBText;
    edtCustID1: TDBEdit;
    PnlPerson2: TPanel;
    LblPerson2: TLabel;
    btnCustID2: TSpeedButton;
    dbtxtPersonID2: TDBText;
    edtCustID2: TDBEdit;
    Panel1: TPanel;
    Label6: TLabel;
    dblkcbb_MaintenanceKind: TDBLookupComboBox;
    SumGrid1: TSumGrid;
    qryMaintenance_sd2: TStringField;
    DBEdit1: TDBEdit;
    qryFunctionsFunctionHour: TDateTimeField;
    DBNavigator1: TDBNavigator;
    ppDetailBand1: TppDetailBand;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppPageStyle1: TppPageStyle;
    ppShape2: TppShape;
    ppShape1: TppShape;
    ppLabel2: TppLabel;
    ppLabel11: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel1: TppLabel;
    ppLabel3: TppLabel;
    ppDBText1: TppDBText;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppDBText3: TppDBText;
    ppDBText2: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppLabel10: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppShape3: TppShape;
    ppRegion1: TppRegion;
    ppLine12: TppLine;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    medtLoginNow: TMaskEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    qryMaintenance_sd1: TStringField;
    qryMaintenanceMaintenanceStatus: TWordField;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    actMachineStopF1: TAction;
    BitBtn2: TBitBtn;
    popOther: TPopupMenu;
    N1: TMenuItem;
    qryFunctionsFunctionAmount: TFloatField;
    procedure qryFunctionsAfterDelete(DataSet: TDataSet);
    procedure qryFunctionsAfterInsert(DataSet: TDataSet);
    procedure qryFunctionsBeforeDelete(DataSet: TDataSet);
    procedure btnCustID1Click(Sender: TObject);
    procedure srcMaintenanceStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qryMaintenanceAfterInsert(DataSet: TDataSet);
    procedure qryMaintenanceAfterPost(DataSet: TDataSet);
    procedure qryMaintenanceAfterScroll(DataSet: TDataSet);
    procedure qryMaintenanceAfterDelete(DataSet: TDataSet);
    procedure qryMaintenanceBeforeDelete(DataSet: TDataSet);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure qryFunctionsBeforePost(DataSet: TDataSet);
    procedure qryMaintenanceBeforePost(DataSet: TDataSet);
    procedure qryFunctionsAfterPost(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure AllC_L_i_c_k_Click(Sender: TObject);
    procedure qryFunctionsBeforeEdit(DataSet: TDataSet);
    procedure ALLDBEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryFunctionsBeforeInsert(DataSet: TDataSet);
    procedure qryMaintenanceBeforeCancel(DataSet: TDataSet);
    procedure actGetExcelExecute(Sender: TObject);
    procedure btnStuffCodeClick(Sender: TObject);
    procedure qryFunctionsStartHourGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure qryMaintenanceDateAndTimeGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure ppLblCaptionGetText(Sender: TObject; var Text: String);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
    procedure qryMaintenanceMaintenanceStatusGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure qryMaintenanceBeforeEdit(DataSet: TDataSet);
    procedure SpeedButton5Click(Sender: TObject);
    procedure actMachineStopF1Execute(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    FormType: Integer;
    UnsavedFileName: String;
    DbgrdOption: set of TDBGridOption;
    procedure SaveArticlesToFile;
    procedure CheckUnsaved;
    procedure gridkeyenter(Sender: TObject; var Key: Char);
    procedure initAddField;
    // function FunctionsChkHour: Boolean;
    procedure InitF;
    function ChkStatus: Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MaintenanceF: TMaintenanceF;

implementation

uses DM, CofferFormTypes, searchCode_ADO, mmessage, GlobalPro,
  FormFunctions, search2, sort2, SelectCustomer, StrUtils,
  ChooseChecks, ChooseDisk, searchReports, Severable, GetExcel, FaraConsts,
  MachineStop;

{$R *.dfm}

procedure TMaintenanceF.gridkeyenter(Sender: TObject; var Key: Char);
var
  nextIndex: Integer;
  curIndex: Integer;
  aDataSet: TDataSet;
begin
  curIndex := (Sender as TDBGrid).SelectedIndex;
  nextIndex := curIndex;
  case Key of
    #13:
      begin
        if shiftDown then
          exit;
        aDataSet := (Sender as TDBGrid).DataSource.DataSet;
        Key := #0;
        case curIndex of
          8:
            nextIndex := -1;
        else
          nextIndex := curIndex + 1;
        end; // case
        if (curIndex > 1) and (aDataSet.FieldByName('PersonId').IsNull) then
        begin
          nextIndex := -2;
        end;
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

      #32, #157: if DBGrid1.Columns[curIndex].ButtonStyle = cbsEllipsis
      // if curIndex in [3,7,8,9,10,11,12]
      then
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

procedure TMaintenanceF.qryFunctionsBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if not chkFunctionStatus(DataSet, aDeleteOrNotMainFun) then
    Abort;
  if get_response('آيا از حذف رديف مطمئن هستيد.') <> mryes then
    Abort;
end;

procedure TMaintenanceF.btnCustID1Click(Sender: TObject);
var
  txt: String;
  b: Boolean;
  results: array [0 .. 1] of String;
  Ttag: Integer;
begin
  inherited;
  Ttag := (Sender as TSpeedButton).Tag;
  txt := TADOQuery(FindComponent('qryCustomers' + IntToStr(Ttag))).SQL.Text;
  b := searchCode_ADOF.SearchCode2(DMf.adcBSell,
    qryinit.FieldByName('Person' + IntToStr(Ttag) + 'Caption').AsString +
    ' ها ', txt, ['کد', 'نام ' + qryinit.FieldByName('Person' + IntToStr(Ttag) +
    'Caption').AsString], results, [50, 150], alLeft);
  if b then
    qryMaintenance['CustID' + IntToStr(Ttag)] := results[0];
end;

procedure TMaintenanceF.btnStuffCodeClick(Sender: TObject);
var
  b: Boolean;
  results: array [0 .. 2] of String;
begin
  inherited;
  b := searchCode_ADOF.SearchCode2(DMf.adcBSell, 'ماشين آلات',
    qryStuffCode.SQL.Text, ['کد', 'عنوان ', 'واحد'], results,
    [50, 150, 50], alLeft);
  if b then
  begin
    qryMaintenance['StuffCode'] := results[0];
  end; // ifend;

end;

procedure TMaintenanceF.FormCreate(Sender: TObject);
begin
  inherited;
  InitF;
end;

procedure TMaintenanceF.InitF;
var
  b: Boolean;
begin
  // SetLookUpCash(qryMaintenance);
  // SetLookUpCash(qryFunctions);
  DbgrdOption := [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines,
    dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit];

  FormType := var_glb_gParam;

  with qryinit do
  begin
    Active := false;
    Parameters.ParamByName('ReciptType').Value := FormType;
    Active := True;
    Caption := FieldByName('ReciptCaption').AsString;
    lblCaption.Caption := Caption;
    b := FieldByName('StartEndHourActive').AsInteger = 1;
    setColumns2(DBGrid1, b, 'StartHour');
    setColumns2(DBGrid1, b, 'EndHour');
  end;

  lblCaption.Hint := IntToStr(FormType);
  initAddField;
  qryMaintenanceKind.Active := True;
  with qryMaintenance do
  begin
    Active := false;
    Active := True;
    Last;
  end; // wih
  UnsavedFileName := 'UnsavedItem_' + Self.Name + IntToStr(FormType) + '.DAT';
end;

procedure TMaintenanceF.CheckUnsaved;
var
  i: Smallint;
  aQry: TADOQuery;
begin

  if not FileExists(__AppData + UnsavedFileName) then
  begin
    exit;
  end;
  if get_response('آيا مي خواهيد آخرين اطلاعات ثبت نشده بازخواني شود') <> mryes
  then
  begin
    DeleteFile(__AppData + UnsavedFileName);
    exit;
  end; // if
  aQry := TADOQuery.Create(Self);
  try
    aQry.LoadFromFile(__AppData + UnsavedFileName);
    with qryFunctions do
    begin
      AfterInsert := nil;
      BeforePost := nil;
      AfterScroll := nil;
      AfterPost := nil;
    end; // with
    with aQry do
    begin
      First;
      while not Eof do
      begin
        qryFunctions.Append;
        for i := 0 to Fields.Count - 1 do
          if qryFunctions.FindField(Fields[i].FieldName) <> nil then
            if qryFunctions.FieldByName(Fields[i].FieldName).CanModify then
            begin
              qryFunctions.FieldByName(Fields[i].FieldName).AsVariant :=
                Fields[i].AsVariant;
            end;
        qryFunctions.FieldByName('FunctionID').AsInteger :=
          qryFunctions.FieldByName('FunctionID').AsInteger;
        qryFunctions.Post;
        Next;
      end; // while
    end; // with
  finally
    aQry.Free;
    qryFunctions.AfterInsert := qryFunctionsAfterInsert;
    qryFunctions.BeforePost := qryFunctionsBeforePost;
    qryFunctions.AfterPost := qryFunctionsAfterPost;

  end; // try
  // ----------- save to bank---------------------------------------mary
  if ((qryMaintenance.State in dseditmodes) or
    (qryFunctions.State in dseditmodes)) then
  begin
    qryMaintenance.Post;
  end; // if
end;

procedure TMaintenanceF.qryMaintenanceAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('حذف شد.', 1);
end;

procedure TMaintenanceF.qryMaintenanceBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if not ChkStatus then
    Abort;
  if get_response('آيا براي حذف اين فرم و كليه سطرهاي آن مطمئن هستيد؟') <> mryes
  then
    Abort;
end;

procedure TMaintenanceF.qryMaintenanceBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if not ChkStatus then
    Abort;
end;

procedure TMaintenanceF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  gridkeyenter(Sender, Key);
end;

procedure TMaintenanceF.DBGrid1EditButtonClick(Sender: TObject);
var
  results: array [0 .. 5] of String;
  id: Smallint;
  b: Boolean;
begin
  inherited;
  if not(qryMaintenance.State in dseditmodes) then
    exit;
  if not(qryFunctions.State in dseditmodes) then
    qryFunctions.Edit;
  id := (Sender as TDBGrid).SelectedIndex;
  if DBGrid1.Columns[id].FieldName = 'PersonId' then
  begin
    b := searchCode_ADOF.SearchCode2(DMf.adcBSell, 'تعمير كار',
     'SELECT DISTINCT CustID,CustName FROM Vu_CustomersGroups where (PersonID1  = ' +
      IntToStr(qryMaintenanceCustID2.AsInteger) + ')', ['کد', 'تعمير كار'],
      results, [50, 150], alLeft);
    if b then
      qryFunctions.FieldByName('PersonId').AsString := results[0];
  end;

  if DBGrid1.Columns[id].FieldName = 'StuffCode2' then
  begin
    b := searchCode_ADOF.SearchCode2(DMf.adcBSell, 'کد و عنوان عملیات',
      qryStuffCode2.SQL.Text, ['کد', ' عنوان عملیات'], results,
      [50, 150], alLeft);
    if b then
      qryFunctions.FieldByName('StuffCode2').AsString := results[0];
  end;

end;

procedure TMaintenanceF.initAddField;
var
  qry: TADOQuery;
  b: Boolean;
  procedure initAddFieldPerson(pnlPerson: TPanel; LblPerson: TLabel;
    dbtxtPersonID: TDBText; id: Byte);
  begin
    With qryinit do
    begin
      b := FieldByName('Person' + IntToStr(id) + 'Active').AsInteger = 1;
      pnlPerson.Visible := b;
      if b then
      begin
        LblPerson.Caption := 'كد ' + FieldByName('Person' + IntToStr(id) +
          'Caption').AsString;
        qryMaintenance.FieldByName('CustID' + IntToStr(id)).Required :=
          pnlPerson.Visible;
        qryMaintenance.FieldByName('CustID' + IntToStr(id)).DisplayLabel :=
          'كد ' + LblPerson.Caption;
        With qry do
        begin
          qry := TADOQuery.Create(Self);
          Name := 'qryCustomers' + IntToStr(id);
          Connection := DMf.adcBSell;
          SQL.Text :=
            'SELECT DISTINCT CustID, CustName FROM Vu_CustomersGroups ';
          if not NotNull(qryinit.FieldByName('CustomerKind' + IntToStr(id))
            .AsString, 'هيچ گروهي براي گروه مشتري ' + IntToStr(id) +
            '  مشخص نشده است') then
            SQL.Add(GetCustomersGroupTypeSQL('CustomerKind' + IntToStr(id),
              qryinit, false));
          LockType := ltReadOnly;
          // Active := True;
        end;
        with TStringField.Create(qryMaintenance) do
        begin
          FieldName := '_PersonName' + IntToStr(id);
          FieldKind := fkLookup;
          DataSet := qryMaintenance;
          Name := 'qryMaintenance' + FieldName;
          KeyFields := 'CustID' + IntToStr(id);
          LookUpDataset := qry;
          LookUpKeyFields := 'CustID';
          LookupResultField := 'CustName';
          Required := pnlPerson.Visible;
          DisplayLabel := 'نام ' + FieldByName('Person' + IntToStr(id) +
            'Caption').AsString;
          Size := 100;
          qryMaintenance.FieldDefs.Add(Name, ftString, 100, True);
          dbtxtPersonID.DataField := FieldName;
        end;
        // qryCustCreate(qryCust3, 3, ReciptsGridF);
      end;
    end;
  end;

begin
  initAddFieldPerson(PnlPerson1, LblPerson1, dbtxtPersonID1, 1);
  initAddFieldPerson(PnlPerson2, LblPerson2, dbtxtPersonID2, 2);
  initAddFieldPerson(pnlPerson3, LblPerson3, dbtxtPersonID3, 3);
end;

procedure TMaintenanceF.actMachineStopF1Execute(Sender: TObject);
begin
  inherited;
  MachineStopF.Enter(qryFunctions, qryMaintenance, 1)
end;

procedure TMaintenanceF.actPrintExecute(Sender: TObject);
begin
  inherited;
  popPrint.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);

end;

procedure TMaintenanceF.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TMaintenanceF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryFunctions);
end;

procedure TMaintenanceF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryFunctions);
end;

procedure TMaintenanceF.qryFunctionsAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('حذف شد.', 1);
end;

procedure TMaintenanceF.qryMaintenanceAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('MaintenanceID').AsInteger :=
    GetANewCode(Self.Name, 'Machin.Maintenance', 'MaintenanceID', nil);

  DataSet.FieldByName('MaintenanceNo').AsInteger :=
    GetANewCode(Self.Name, 'Machin.Maintenance', 'MaintenanceNo', nil);

  DataSet.FieldByName('MaintenanceDate').AsString := var_glb_CurrentDate;
  DataSet.FieldByName('DateAndTime').AsDateTime := Now;
  DataSet.FieldByName('YearID').AsInteger := APPBank.Year;
  qryMaintenanceCustID3.AsInteger := 0;
  qryMaintenanceCustID2.AsInteger := 0;
  edtMaintenanceNo.SetFocus;
end;

procedure TMaintenanceF.srcMaintenanceStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qryMaintenance.State in dseditmodes;
  if not okPanel.Visible then
    DBGrid1.Options := DbgrdOption - [dgEditing] + [dgMultiSelect]
  else
    DBGrid1.Options := DbgrdOption + [dgEditing];

  newPanel.Visible := not okPanel.Visible;
  btnReject.Cancel := newPanel.Visible;
  DBGrid1.ReadOnly := newPanel.Visible;
  pnlDelete.Visible := okPanel.Visible;
  FreeReservedCodes(DMf.adcBSell, 'Tsh.Functions', '', Self.Name);
  FreeReservedCodes(DMf.adcBSell, 'Machin.Maintenance', '', Self.Name);
end;

procedure TMaintenanceF.qryFunctionsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FunctionId').AsInteger :=
    GetANewCode(Self.Name, 'Tsh.Functions', 'FunctionId', nil);
  DataSet.FieldByName('MaintenanceID').AsInteger :=
    qryMaintenance.FieldByName('MaintenanceID').AsInteger;

  DataSet.FieldByName('FunctionDate').AsString := var_glb_CurrentDate;

  DataSet.FieldByName('FunctionInfoType').AsInteger := 7;

  DataSet.FieldByName('WorkShopId').AsInteger :=
    qryMaintenance.FieldByName('CustID2').AsInteger;

  DataSet.FieldByName('MachineId').AsLargeInt :=
    qryMaintenance.FieldByName('StuffCode').AsLargeInt;

  DataSet.FieldByName('Productionprocess').AsInteger := 0;
  DataSet.FieldByName('EarthField').AsInteger := 0;
  DataSet.FieldByName('Gate').AsInteger := 0;
  DataSet.FieldByName('CaseId').AsLargeInt := 0;

  DataSet.FieldByName('FunctionType').AsInteger := 0;
  DataSet.FieldByName('FunctionStatus').AsInteger := 0;

end;

procedure TMaintenanceF.qryMaintenanceAfterScroll(DataSet: TDataSet);
begin
  inherited;
  medtLoginNow.Text := FormatDateTime('HH:mm',
    qryMaintenanceLoginNow.AsDateTime);
  with qryFunctions do
  begin
    Active := false;
    Parameters.ParamByName('MaintenanceID').Value :=
      qryMaintenance.FieldByName('MaintenanceID').AsInteger;
    Active := True;
  end; // with
  if DataSet.State = dsInsert then
    CheckUnsaved;
end;

procedure TMaintenanceF.qryMaintenanceAfterPost(DataSet: TDataSet);
var
  s: string;
begin
  inherited;
  if qryFunctions.State in dseditmodes then
    qryFunctions.Post;

  try
    qryFunctions.UpdateBatch;
    DeleteFile(__AppData + UnsavedFileName);
    BigMessage('ثبت شد.', 1);
  except
    on E: Exception do
    begin
      add2log(E.Message);
      Warn('اشكال در ثبت' + #13#10 + E.Message);
      DataToExcel(qryFunctions);
    end;
  end; // try

  try
    s := 'UPDATE Tsh.Functions SET WorkShopId = %d , MachineId = %d ' +
      'WHERE (FunctionInfoType = 7) AND (MaintenanceID = %d) ';
    s := Format(s, [qryMaintenance.FieldByName('CustID2').AsInteger,
      qryMaintenance.FieldByName('StuffCode').AsLargeInt,
      qryMaintenance.FieldByName('MaintenanceID').AsInteger]);
    DMf.adcBSell.Execute(s);
  except
    on E: Exception do
    begin
      add2log(E.Message);
      Warn('اشكال در ثبت ' + LblPerson2.Caption + #13#10 + E.Message);
    end;
  end;
end;

procedure TMaintenanceF.qryFunctionsBeforePost(DataSet: TDataSet);
begin
  inherited;
  IF qryFunctionsStartHour.AsDateTime > qryFunctionsEndHour.AsDateTime then
    qryFunctionsEndHour.AsDateTime := IncDay(qryFunctionsEndHour.AsDateTime, 1);
  if not CheckRequiredFields(qryFunctions) then
  begin
    if not(qryMaintenance.State in dseditmodes) then
      qryMaintenance.Edit;
    Abort;
  end;
  if not ValidateDatasetDates(DataSet, APPBank.StartYear, APPBank.endYear) then
    Abort;
  // if not FunctionsChkHour then
  // Abort;
end;

// function TMaintenanceF.FunctionsChkHour: Boolean;
// var
// i: Int64;
// m: Real48;
// begin
// Result := True;
// i := MinutesBetween(qryFunctionsStartHour.AsDateTime,
// qryFunctionsEndHour.AsDateTime);
// m := i / 60;
// m := RoundTo(m, -2);
// if qryFunctionsFunctionHour.AsFloat > m then
// begin
// Warn('اختلاف ساعت شروع و پايان كار ' + FloatToStr(m) + ' مي شود');
// Result := false;
// end;
// end;

procedure TMaintenanceF.qryFunctionsStartHourGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text := FormatDateTime('HH:mm', Sender.AsDateTime)
end;

procedure TMaintenanceF.qryMaintenanceBeforePost(DataSet: TDataSet);
begin
  inherited;
  qryMaintenanceLoginNow.AsString := medtLoginNow.Text;
  if qryFunctions.State in dseditmodes then
    qryFunctions.Post;
  TrimStringFields(qryMaintenance);
end;

procedure TMaintenanceF.qryMaintenanceDateAndTimeGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text := Format('%s %s‏', [FormatDateTime('t', Sender.AsDateTime),
    miladi2Shamsi(Sender.AsDateTime)]);
end;

procedure TMaintenanceF.qryMaintenanceMaintenanceStatusGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    0:
      Text := 'موقت';
    1:
      Text := 'قطعي';
    2:
      Text := 'نهائي';
  end;
end;

function TMaintenanceF.ChkStatus: Boolean;
begin
  Result := qryMaintenanceMaintenanceStatus.AsInteger = 0;
  if not Result then
    Warn('فقط  دستور كارهاي موقت قابل حذف و ويرايش هستند');
end;

procedure TMaintenanceF.SaveArticlesToFile;
begin
  qryFunctions.SaveToFile(__AppData + UnsavedFileName);
end;

procedure TMaintenanceF.SpeedButton5Click(Sender: TObject);
var
  b: Boolean;
  txt: string;
  results: array [0 .. 16] of String;
begin
  inherited;
  txt := 'SELECT Machin.Maintenance.MaintenanceID, Machin.Maintenance.MaintenanceNo,'
    + '  Machin.MaintenanceKinds.KindName ,' +
    ' Machin.Maintenance.MaintenanceDate, Machin.Maintenance.CustID1, Customers1.CustName AS CustName1,'
    + ' Machin.Maintenance.CustID2, Customers3.CustName AS CustName3,' +
    ' Machin.Maintenance.StuffCode, StuffCoding.c_StuffName, StuffCoding.sd1, StuffCoding.sd2, CONVERT(CHAR(5),'
    + ' Machin.Maintenance.LoginNow, 108) AS LoginNow,' +
    ' CASE Machin.Maintenance.MaintenanceStatus WHEN 0 THEN ''موقت'' WHEN 1 THEN ''قطعي'' ELSE ''نهائي'' END'
    + ' AS MaintenanceStatus,' + ' Machin.Maintenance.DescRequest' +
    ' FROM Machin.Maintenance INNER JOIN' +
    ' Customers AS Customers1 ON Machin.Maintenance.CustID1 = Customers1.CustID INNER JOIN'
    + ' Customers AS Customers2 ON Machin.Maintenance.CustID2 = Customers2.CustID INNER JOIN'
    + ' Customers AS Customers3 ON Machin.Maintenance.CustID3 = Customers3.CustID INNER JOIN'
    + ' StuffCoding ON Machin.Maintenance.StuffCode = StuffCoding.c_StuffCode INNER JOIN '
    + ' Machin.MaintenanceKinds ON Machin.Maintenance.MaintenanceKind = Machin.MaintenanceKinds.KindID'
    + ' WHERE (Machin.Maintenance.MaintenanceID <> 0)';
  b := searchCode_ADOF.SearchCode2(DMf.adcBSell, 'ليست دستور كار تعميرات', txt,
    ['', 'شماره', 'نوع‏دستور', 'تاريخ', 'كدپيمانكار', 'پيمانكار',
    'كدواحدسازماني', 'واحدسازماني', 'كدخودرو', 'خودرو', 'شماره‏شهرباني',
    'پلاك‏اموال', 'ساعت‏ثبت', 'وضعيت', 'شرح‏درخواست'], results,
    [0, 60, 60, 60, 60, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80], alLeft);
  if b then
    qryMaintenance.Locate('MaintenanceID', results[0], []);

end;

procedure TMaintenanceF.qryFunctionsAfterPost(DataSet: TDataSet);
begin
  inherited;
  if qryMaintenance.State = dsInsert then
    SaveArticlesToFile;
end;

procedure TMaintenanceF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1, IntToStr(FormType));
end;

procedure TMaintenanceF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 4, True, IntToStr(FormType));
end;

procedure TMaintenanceF.AllC_L_i_c_k_Click(Sender: TObject);
begin
  inherited;
  case (Sender as TMenuItem).Tag of
    0:
      begin
        ppDBPipeline1.RangeBegin := rbCurrentRecord;
        ppDBPipeline1.RangeEnd := reCurrentRecord;
      end;
    1:
      begin
        ppDBPipeline1.RangeBegin := rbFirstRecord;
        ppDBPipeline1.RangeEnd := reLastRecord;
      end;
  end;
  try
    qryMaintenance.DisableControls;
    qryFunctions.DisableControls;
    InitReportFile(ppReport1, (Sender as TMenuItem).Hint, True);
  finally
    qryFunctions.EnableControls;
    qryMaintenance.EnableControls;
  end;

end;

procedure TMaintenanceF.qryFunctionsBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if not chkFunctionStatus(DataSet, aDeleteOrNotMainFun) then
    Abort;
  if not(qryMaintenance.State in dseditmodes) then
    Abort;
end;

procedure TMaintenanceF.ALLDBEditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    TSpeedButton(FindComponent('Btn' + (Sender as TDBEdit).DataField)).Click;
end;

procedure TMaintenanceF.BitBtn2Click(Sender: TObject);
begin
  inherited;
  popOther.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TMaintenanceF.qryFunctionsBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if not CheckRequiredFields(qryMaintenance) then
    Abort;
end;

procedure TMaintenanceF.qryMaintenanceBeforeCancel(DataSet: TDataSet);
begin
  inherited;
  if qryFunctions.Active then
  BEGIN
    if get_response('تغييرات لغو شوند؟') <> mryes then
      Abort;
    qryFunctions.Cancel;
    qryFunctions.Requery();
  END;
end;

procedure TMaintenanceF.actGetExcelExecute(Sender: TObject);
begin
  inherited;
  qryMaintenance.Edit;
  GetExcelF.ShowImPortExcel(qryFunctions);
end;

procedure TMaintenanceF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  Text := GetPrintDate;
end;

procedure TMaintenanceF.ppSysVarPageNoGetText(Sender: TObject;
  var Text: String);
begin
  Text := GetPageNumberString(Text)
end;

procedure TMaintenanceF.ppLblCaptionGetText(Sender: TObject; var Text: String);
begin
  Text := Caption;
end;

procedure TMaintenanceF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  Text := APPBank.CompanyName;
end;

end.
