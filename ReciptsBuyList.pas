{ -----------------------------------------------------------------------------
  Unit Name: ReciptsBuyList
  Author:    mahmood
  ----------------------------------------------------------------------------- }
unit ReciptsBuyList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, Grids, Vcl.DBGrids, ImgList, DBActns, ActnList,
  StdCtrls, ExtCtrls, Buttons, DB, ADODB, DBCtrls, ppDB,
  ppDBPipe, ppDBBDE, ppComm, ppRelatv, ppProd, ppClass, ppReport, ppCtrls,
  ppPrnabl, ppBands, ppCache, ppDsgnDB, ppDBJIT, ppVar, Menus, ComCtrls,
  myChkBox, ppStrtch, ppRegion, ppModule, ppSubRpt, SumDBGrid, ppParameter,
  ppDesignLayer, System.ImageList, System.Actions, FarsiReportBuilde,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid;

type
  TReciptsBuyListF = class(Ttemplate2MDIF)
    qryRecipts: TADOQuery;
    srcRecipts: TDataSource;
    qryReciptsReciptID: TIntegerField;
    qryReciptsReciptNumber: TIntegerField;
    qryReciptsReciptDate: TStringField;
    qryReciptsPersonID1: TIntegerField;
    qryReciptsprice: TBCDField;
    qryReciptsStoreID: TSmallintField;
    qryReciptsReciptType: TWordField;
    qryReciptsPersonID2: TIntegerField;
    qryReciptsCustName2: TStringField;
    qryInitQry: TADOQuery;
    BitBtn1: TBitBtn;
    actFilter: TAction;
    BitBtn2: TBitBtn;
    actSendToExcel: TAction;
    lblStoreName: TLabel;
    actPrint: TAction;
    actShowForm: TAction;
    BitBtn4: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    actSort: TAction;
    actReciptState1: TAction;
    BtnReciptState: TBitBtn;
    actReciptState2: TAction;
    qryReciptsReciptState: TWordField;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    btnPrint: TBitBtn;
    qryReciptsEntity: TFloatField;
    qryReciptsWeight: TFloatField;
    srcItems: TDataSource;
    ppDBPipeline2: TppDBPipeline;
    qryItems: TADOQuery;
    qryItemsReciptItemID: TIntegerField;
    qryItemsReciptID: TIntegerField;
    qryItemsStuffSize: TStringField;
    qryItemsStuffAlloy: TStringField;
    qryItemsInputEntity: TFloatField;
    qryItemsOutputEntity: TFloatField;
    qryItemsInputWeight: TFloatField;
    qryItemsOutputWeight: TFloatField;
    qryItemsRequestedEntity: TFloatField;
    qryItemsRequestedWeight: TFloatField;
    qryItemsStuffGrade: TWordField;
    qryItemsTotalInputPrice: TBCDField;
    qryItemsTotalOutputPrice: TBCDField;
    qryItemsTotallSellPrice: TBCDField;
    qryItemsUnitSellPrice: TFMTBCDField;
    qryItemsItemNote: TStringField;
    qryItemsacc_DetailCode: TStringField;
    qryItemsacc_CTopicCode: TStringField;
    qryItemsUseUnitID: TIntegerField;
    qryItemspreReciptItemID: TIntegerField;
    qryItemsStuffDiameter: TFloatField;
    qryItemsControlCode: TLargeintField;
    qryItemsacc_CTopicCode2: TStringField;
    qryItemsPersonID1: TIntegerField;
    qryItems_radif: TIntegerField;
    qryItemsAidDate: TStringField;
    qryItemsDiscount: TIntegerField;
    PopupMenu1: TPopupMenu;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    qryRecipts_PersonName1: TStringField;
    N7: TMenuItem;
    qryReciptsDocNo: TIntegerField;
    qryReciptsDocDate: TStringField;
    actDocNo: TAction;
    btnDocNo: TBitBtn;
    PopMnuReciptState: TPopupMenu;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    actReciptState3: TAction;
    PerformFileName: TMenuItem;
    actReciptState0: TAction;
    actReciptState01: TMenuItem;
    qryReciptsFirstUser: TStringField;
    qryReciptsLastUser: TStringField;
    ReportFileName: TMenuItem;
    qryReciptsc_StoreName: TStringField;
    stpNewReciptsCorrelate: TADOStoredProc;
    actNewReciptsCorrelate: TAction;
    qryItems_StuffName: TStringField;
    qryItems_UnitName: TStringField;
    qryItems_StuffTecInfo: TStringField;
    qryItems_Carton: TFloatField;
    qryReciptsDeficitValue: TBCDField;
    actSortRun: TAction;
    ppHeaderBand1: TppHeaderBand;
    ppShape2: TppShape;
    ppLblCompanyName: TppLabel;
    ppLblFormName: TppLabel;
    ppLine1: TppLine;
    ppLblPrintDate: TppLabel;
    ppSysVarPageNumber: TppSystemVariable;
    ppLine7: TppLine;
    ppLine11: TppLine;
    ppLine50: TppLine;
    ppLine51: TppLine;
    ppLine17: TppLine;
    ppLine13: TppLine;
    ppLblCustomerID2: TppLabel;
    ppLabel8: TppLabel;
    ppLblCustomerID1: TppLabel;
    ppLabel32: TppLabel;
    ppLabel9: TppLabel;
    ppLabel17: TppLabel;
    ppLabel5: TppLabel;
    ppLblAidInfoNo: TppLabel;
    ppLine14: TppLine;
    ppLine2: TppLine;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText9: TppDBText;
    ppDBText2: TppDBText;
    ppDBText8: TppDBText;
    ppDBText19: TppDBText;
    ppLine22: TppLine;
    ppLine33: TppLine;
    ppLine10: TppLine;
    ppLine46: TppLine;
    ppLine16: TppLine;
    ppDBText3: TppDBText;
    ppDBText6: TppDBText;
    ppLine3: TppLine;
    ppDBTxtState: TppDBText;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppFooterBand1: TppFooterBand;
    ppShape1: TppShape;
    ppDBCalc17: TppDBCalc;
    ppLabel18: TppLabel;
    ppLine38: TppLine;
    ppDBCalc19: TppDBCalc;
    ppLine36: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppShape3: TppShape;
    ppLabel1: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppLabel2: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppLine8: TppLine;
    qryReciptsUnitSellPrice2: TBCDField;
    qryReciptsMachineNo: TStringField;
    qryReciptsMachineName: TStringField;
    N1: TMenuItem;
    BitBtn3: TBitBtn;
    pmOther: TPopupMenu;
    actUpDate: TAction;
    N2: TMenuItem;
    qryItemsStuffCode: TLargeintField;
    qryReciptsParentReciptID: TIntegerField;
    qryReciptsServerID: TIntegerField;
    qryReciptsYearID: TIntegerField;
    qryItemsAidNumber: TStringField;
    qryItemsacc_TopicCode: TLargeintField;
    DBGrid1: TCedarDbgrid;
    qryReciptsTozinMachineName: TStringField;
    qryReciptsTozinMachineNo: TStringField;
    qryReciptsMachineWeight: TFloatField;
    qryReciptsMachineFullWeight: TFloatField;
    qryReciptsTozinFirstUser: TStringField;
    qryReciptsTozinLastUser: TStringField;
    qryReciptsMandeh: TFloatField;
    qryReciptsUnitSellPrice: TFMTBCDField;
    qryReciptsEnterDate: TStringField;
    qryReciptsExitDate: TStringField;
    popSortRun: TPopupMenu;
    N12: TMenuItem;
    N13: TMenuItem;
    allSort1: TMenuItem;
    qryReciptsID: TLargeintField;
    qryReciptsReciptNumberFormer: TIntegerField;
    procedure actFilterExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure actShowFormExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure actReciptState1Execute(Sender: TObject);
    procedure qryReciptsAfterScroll(DataSet: TDataSet);
    procedure actReciptState2Execute(Sender: TObject);
    procedure qryReciptsReciptStateGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNumberGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppLblFormNameGetText(Sender: TObject; var Text: String);
    procedure ppDBTxtStateGetText(Sender: TObject; var Text: String);
    procedure actPrintExecute(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure ppImage1DrawCommandCreate(Sender, aDrawCommand: TObject);
    procedure ppLblCaptionGetText(Sender: TObject; var Text: String);
    procedure ppLblEconomicNumberGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNumGetText(Sender: TObject; var Text: String);
    procedure ppDBTextStuffSizeGetText(Sender: TObject; var Text: String);
    procedure ppLabelnum2alphabetGetText(Sender: TObject; var Text: String);
    procedure qryItemsCalcFields(DataSet: TDataSet);
    procedure N7Click(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure actReciptState3Execute(Sender: TObject);
    procedure BtnReciptStateClick(Sender: TObject);
    procedure PerformFileNameClick(Sender: TObject);
    procedure actReciptState0Execute(Sender: TObject);
    procedure ppLabelnum2alphabetPayebelGetText(Sender: TObject;
      var Text: String);
    procedure ppLblSecondTypeGetText(Sender: TObject; var Text: String);
    procedure logoPrint(Sender: TObject);
    procedure ppLabelTotalOutputPriceGetText(Sender: TObject; var Text: String);
    procedure ppDBTxtPayablePriceGetText(Sender: TObject; var Text: String);
    procedure ppLabelOutputWeightGetText(Sender: TObject; var Text: String);
    procedure ppLabelOutputEntityGetText(Sender: TObject; var Text: String);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure actNewReciptsCorrelateExecute(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure actUpDateExecute(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure allSort1Click(Sender: TObject);
    procedure actSortRunExecute(Sender: TObject);
  private
    formType: Byte;
    canfilter: Boolean;
    doPrint: Boolean;
    Procedure InitForm;
    procedure UpdateList;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ReciptsBuyListF: TReciptsBuyListF;

implementation

uses DM, GlobalPro, filter_ADO, FilterClass_ADO,
  Math, FormFunctions, search2, sort2, mmessage,
  ReciptsBuy, FaraConsts, ReciptsFunctions;

{$R *.dfm}
{ TReciptsBuyListF }

procedure TReciptsBuyListF.InitForm;
var
  A: Boolean;

begin
  formType := var_glb_gParam;
  with qryInitQry do
  begin
    Active := False;
    Parameters.ParamByName('Type').Value := formType;
    Active := True;
    Caption := FieldByName('ReciptCaption').AsString;
    PerformFileName.Caption := 'چاپ 1 ' + Caption;
    ReportFileName.Caption := 'چاپ 2 ' + Caption;
    PerformFileName.Visible := FieldByName('PerformFileName').AsString <> '';
    ReportFileName.Visible := FieldByName('ReportFileName').AsString <> '';
    canfilter := False;
    lblStoreName.Visible := canfilter;

    // ------------------------set Columns---------------------//

    setColumns2(DBGrid1, FieldByName('Person1Active').Value = 1, 'PersonID1');
    setColumns2(DBGrid1, FieldByName('Person1Active').Value = 1,
      '_PersonName1');

    setColumns2(DBGrid1, FieldByName('Person2Active').Value = 1, 'PersonID2');
    setColumns2(DBGrid1, FieldByName('Person2Active').Value = 1, 'CustName2');

    setColumns2(DBGrid1, (not canfilter), 'StoreID');
    setColumns2(DBGrid1, (not canfilter), 'c_StoreName');

  end; // with for InitQry

  actDocNo.Enabled := (CheckUserlevel(qryInitQry.FieldByName('AccCodeLevelID'),
    qryRecipts, False)) OR (User.PowerUser);
  // (Pos('مدير', User.Menus.Text) <> 0) or
  actDocNo.Visible := not opt.CheckMakeDoc4DelEdit;
  if not actDocNo.Visible then
    btnPrint.Left := btnDocNo.Left;

  with qryRecipts Do
  begin
    Active := False;
    Parameters.ParamByName('ReciptType').Value := formType;
    FieldByName('PersonID1').DisplayLabel := ' كد ' + qryInitQry.FieldByName
      ('Person1Caption').AsString;
    FieldByName('_PersonName1').DisplayLabel := 'نام ' + qryInitQry.FieldByName
      ('Person1Caption').AsString;
    FieldByName('PersonID2').DisplayLabel := ' كد ' + qryInitQry.FieldByName
      ('Person2Caption').AsString;
    FieldByName('CustName2').DisplayLabel := 'نام ' + qryInitQry.FieldByName
      ('Person2Caption').AsString;
  end; // with for qryformlist

  // actReciptState1.Enabled := (User.PowerUser); //(Pos('مدير', User.Menus.Text) <> 0) or
  // actReciptState2.Enabled := actReciptState1.Enabled;
  // actReciptState3.Enabled := actReciptState1.Enabled;
  // actReciptState0.Visible := User.PowerUser;
  with qryInitQry do
  begin
    // دسترسی منو های تغییر وضعیت ================
    A := (CurAccess and Integer(akChangeState) <> 0);

    actReciptState0.Visible :=
      CheckUserlevel(FieldByName('State0ChangeLevelID'), qryRecipts,
      False) and A;

    actReciptState1.Visible :=
      CheckUserlevel(FieldByName('State1ChangeLevelID'), qryRecipts,
      False) and A;

    actReciptState2.Visible :=
      CheckUserlevel(FieldByName('State2ChangeLevelID'), qryRecipts,
      False) and A;

    actReciptState3.Visible :=
      CheckUserlevel(FieldByName('State3ChangeLevelID'), qryRecipts,
      False) and A;
  end;

  actSortRun.Visible := User.PowerUser;
  DBGrid1.SetFooter4Sum([]);
end;

procedure TReciptsBuyListF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItem(DMf.adcBSell, 'Date', 'تاريخ ', 'تاريخ', ftDate, dvMinMax, '', '',
        ciSimple, '', 'Select  ''' + APPBank.StartYear +
        ''',max(ReciptDate) from Recipts');

      AddItem(DMf.adcBSell, 'number', '', 'شماره', ftInteger, dvMinMax, '', '',
        ciSimple, '',
        'Select Min(ReciptNumber),max(ReciptNumber) from Recipts');
      if canfilter then
        AddItem(DMf.adcBSell, 'storeId', 'انبار', 'نام انبار', ftInteger,
          dvDefaults, '', '', ciCombo,
          'SELECT  n_StoreID, c_StoreName FROM Stores', '')
      else
        AddItem(DMf.adcBSell, 'storeId', 'انبار', ' انبار', ftInteger, dvMinMax,
          '', '', ciLookup, 'SELECT  n_StoreID,c_StoreName FROM dbo.Stores ',
          'Select Min(n_StoreID),max(n_StoreID) from Stores');
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

procedure TReciptsBuyListF.UpdateList;
begin
  PriceOnStoreType(GetcFrom(myParams.ParamValues['StoreID'], ftInteger),
    DBGrid1, qryRecipts);
  with qryRecipts Do
  begin
    Active := False;
    if canfilter then
    begin
      Parameters.ParamByName('StoreFrom').Value :=
        GetcTo(myParams.ParamValues['storeId'], ftInteger);
      Parameters.ParamByName('StoreTo').Value :=
        GetcTo(myParams.ParamValues['storeId'], ftInteger);
      lblStoreName.Caption :=
        GetcFrom(myParams.ParamValues['storeId'], ftString)
    end
    else
    Begin
      Parameters.ParamByName('StoreFrom').Value :=
        GetcFrom(myParams.ParamValues['storeId'], ftInteger);
      Parameters.ParamByName('StoreTo').Value :=
        GetcTo(myParams.ParamValues['storeId'], ftInteger);
    end; // else
    Parameters.ParamByName('DateFrom').Value :=
      GetcFrom(myParams.ParamValues['Date'], ftDate);
    Parameters.ParamByName('DateTo').Value :=
      GetcTo(myParams.ParamValues['Date'], ftDate);
    Parameters.ParamByName('numberFrom').Value :=
      GetcFrom(myParams.ParamValues['number'], ftInteger);
    Parameters.ParamByName('numberto').Value :=
      GetcTo(myParams.ParamValues['number'], ftInteger);
    Parameters.ParamByName('YearIDFrom').Value := opt.DefaultYear;
    Parameters.ParamByName('YearIDTo').Value := APPBank.Year;
    Active := True;
  end; // with

end;

procedure TReciptsBuyListF.FormCreate(Sender: TObject);
begin
  inherited;
  InitForm;
  doPrint := False;
end;

procedure TReciptsBuyListF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('number') = nil then
    Close;
end;

procedure TReciptsBuyListF.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TReciptsBuyListF.actShowFormExecute(Sender: TObject);
begin
  inherited;
  // if  Pos('reciptsf'+IntToStr(formType)+'@' ,opt.MenuNames)<>0 then
  ReciptsBuyF.Enter(formType, False, qryRecipts.FieldByName('StoreID')
    .AsInteger, qryRecipts.FieldByName('ReciptID').AsInteger)
  // else Warn('ويرايش و نمايش اين فرم در سطح دسترسي شما نمي‌باشد.');
end;

procedure TReciptsBuyListF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryRecipts);
end;

procedure TReciptsBuyListF.actSortRunExecute(Sender: TObject);
begin
  inherited;
  popSortRun.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TReciptsBuyListF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryRecipts);
end;

procedure TReciptsBuyListF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  actShowForm.Execute
end;

procedure TReciptsBuyListF.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  inherited;
  if not(gdSelected in State) then
  begin
    if odd(DBGrid1.DataSource.DataSet.RecNo) then
      DBGrid1.Canvas.Brush.Color := const_fixed_columns_color;
  end
  else
  begin
    DBGrid1.Canvas.Brush.Color := $00B0CAFF;
    DBGrid1.Canvas.Font.Color := clWindowText;
  end;

  if (qryInitQry.FieldByName('CorrelateReciptType').AsInteger <> 0) then
    if ((Sender as TDBGrid).DataSource.DataSet.FieldByName('FactorNumber')
      .AsInteger = 0) then
      DBGrid1.Canvas.Font.Color := clRed
    else
      DBGrid1.Canvas.Font.Color := clWindowText;
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TReciptsBuyListF.actReciptState1Execute(Sender: TObject);
var
  i: Integer;
  s: string;
begin
  inherited;
  if DBGrid1.SelectedRows.Count > 0 then
    if get_response('آيا براي قطعي نمودن فرم‌هاي انتخاب شده مطمئن هستيد؟') <> mrYes
    then
      Exit;
  with DBGrid1.DataSource.DataSet do
    for i := 0 to DBGrid1.SelectedRows.Count - 1 do
    begin
      GotoBookmark((DBGrid1.SelectedRows.Items[i]));
      if s <> '' then
        s := s + ',';
      s := s + FieldByName('ReciptID').AsString;
      if qryInitQry.FieldByName('CorrelateStateChange').AsInteger = 1 then
        if not FieldByName('ParentReciptID').IsNull then
          s := s + ',' + FieldByName('ParentReciptID').AsString
    end;
  If s = '' then
    Exit;
  with DMf.qryTMPTMP do
  begin
    Active := False;
    SQL.Text :=
      'UPDATE Recipts SET ReciptState = 1 WHERE (ReciptState = 0) AND ' +
      '(ReciptID IN (' + s + '))';
    SQL.Add(' AND  ServerID=' + qryRecipts.FieldByName('ServerID').AsString);
    SQL.Add(' AND  YearID  =' + qryRecipts.FieldByName('YearID').AsString);
    try
      BigMessage(IntToStr(ExecSQL) + ' فرم‌ قطعي شد.', 2);
      Active := False;
      i := qryRecipts.FieldByName('ReciptID').AsInteger;
      qryRecipts.Active := False;
      qryRecipts.Open;
      qryRecipts.Locate('ReciptID', i, [])
    except
      Warn('اشكال در قطعي كردن فرم‌');
    end; // try
  end; // with
end;

procedure TReciptsBuyListF.qryReciptsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if not doPrint then
    Exit;
  with qryItems do
  begin
    Active := False;
    Parameters.ParamByName('ReciptID').Value := DataSet.FieldByName('ReciptID')
      .AsInteger;
    Parameters.ParamByName('ServerID').Value := DataSet.FieldByName('ServerID')
      .AsInteger;
    Active := True;
  end; // with
end;

procedure TReciptsBuyListF.actReciptState2Execute(Sender: TObject);
var
  i: Integer;
  s: string;
begin
  inherited;
  if DBGrid1.SelectedRows.Count > 0 then
    if get_response('آيا براي دائمي نمودن فرم‌هاي انتخاب شده مطمئن هستيد؟') <> mrYes
    then
      Exit;
  with DBGrid1.DataSource.DataSet do
    for i := 0 to DBGrid1.SelectedRows.Count - 1 do
    begin
      GotoBookmark((DBGrid1.SelectedRows.Items[i]));
      if s <> '' then
        s := s + ',';
      s := s + FieldByName('ReciptID').AsString;
      if qryInitQry.FieldByName('CorrelateStateChange').AsInteger = 1 then
        if not FieldByName('ParentReciptID').IsNull then
          s := s + ',' + FieldByName('ParentReciptID').AsString
    end;
  If s = '' then
    Exit;
  with DMf.qryTMPTMP do
  begin
    Active := False;
    SQL.Text :=
      'UPDATE Recipts SET ReciptState = 2 WHERE (ReciptState in(0,1)) AND ' +
      '(ReciptID IN (' + s + '))';
    SQL.Add(' AND  ServerID=' + qryRecipts.FieldByName('ServerID').AsString);
    SQL.Add(' AND  YearID  =' + qryRecipts.FieldByName('YearID').AsString);
    try
      BigMessage(IntToStr(ExecSQL) + ' فرم‌ دائمي شد.', 2);
      Active := False;
      i := qryRecipts.FieldByName('ReciptID').AsInteger;
      qryRecipts.Active := False;
      qryRecipts.Open;
      qryRecipts.Locate('ReciptID', i, [])
    except
      Warn('اشكال در دائمي كردن فرم‌');
    end; // try
  end; // with
end;

procedure TReciptsBuyListF.qryReciptsReciptStateGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text := GetReciptState(Sender.AsInteger)
end;

procedure TReciptsBuyListF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TReciptsBuyListF.ppSysVarPageNumberGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TReciptsBuyListF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate
end;

procedure TReciptsBuyListF.ppLblFormNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := Text + Caption
end;

procedure TReciptsBuyListF.ppDBTxtStateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetReciptState(qryRecipts.FieldByName('ReciptState').AsInteger)
end;

procedure TReciptsBuyListF.actPrintExecute(Sender: TObject);
begin
  inherited;
  PopupMenu1.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TReciptsBuyListF.MenuItem3Click(Sender: TObject);
begin
  inherited;
  try
    doPrint := True;
    qryRecipts.DisableControls;
    InitReportFile(ppReport1, 'Rpt001', True);
  finally
    qryRecipts.EnableControls;
    doPrint := False;
  end;
end;

procedure TReciptsBuyListF.MenuItem4Click(Sender: TObject);
begin
  inherited;
  try
    doPrint := True;
    qryRecipts.DisableControls;
    qryItems.DisableControls;
    InitReportFile(ppReport1, 'Rpt001All', True);
  finally
    qryRecipts.EnableControls;
    qryItems.EnableControls;
    doPrint := False;
  end;
end;

procedure TReciptsBuyListF.ppImage1DrawCommandCreate(Sender,
  aDrawCommand: TObject);
var
  s: String;
begin
  inherited;
  s := GetReportFileWithPath('logo.bmp');
  if (FileExists(s)) then
    TppImage(FindComponent('ppImage1')).Picture.LoadFromFile(s);
end;

procedure TReciptsBuyListF.ppLblCaptionGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := qryInitQry.FieldByName('ReciptCaption').AsString
end;

procedure TReciptsBuyListF.ppLblEconomicNumberGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := DMf.ReadBankConfig('EconomicNumber', '')
end;

procedure TReciptsBuyListF.ppSysVarPageNumGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TReciptsBuyListF.qryItemsCalcFields(DataSet: TDataSet);
begin
  inherited;
  qryItems.FieldByName('_radif').AsInteger := abs(DataSet.RecNo);
end;

procedure TReciptsBuyListF.N7Click(Sender: TObject);
begin
  inherited;
  try
    doPrint := True;
    qryRecipts.DisableControls;
    InitReportFile(ppReport1, 'Rpt001Entity', True);
  finally
    qryRecipts.EnableControls;
    doPrint := False;
  end;
end;

procedure TReciptsBuyListF.Action1Execute(Sender: TObject);
begin
  inherited;
  ClearDoc(DBGrid1, qryRecipts);
end;

procedure TReciptsBuyListF.actReciptState3Execute(Sender: TObject);
var
  i: Integer;
  s: string;
begin
  inherited;
  if DBGrid1.SelectedRows.Count > 0 then
    if get_response('آيا براي باطل نمودن فرم‌هاي انتخاب شده مطمئن هستيد؟') <> mrYes
    then
      Exit;
  with DBGrid1.DataSource.DataSet do
    for i := 0 to DBGrid1.SelectedRows.Count - 1 do
    begin
      GotoBookmark((DBGrid1.SelectedRows.Items[i]));
      if s <> '' then
        s := s + ',';
      s := s + FieldByName('ReciptID').AsString;
      if qryInitQry.FieldByName('CorrelateStateChange').AsInteger = 1 then
        if not FieldByName('ParentReciptID').IsNull then
          s := s + ',' + FieldByName('ParentReciptID').AsString
    end;
  If s = '' then
    Exit;
  with DMf.qryTMPTMP do
  begin
    Active := False;
    SQL.Text := 'UPDATE Recipts SET ReciptState = 3 WHERE (ReciptState<=1) AND '
      + '(ReciptID IN (' + s + '))';
    SQL.Add(' AND  ServerID=' + qryRecipts.FieldByName('ServerID').AsString);
    SQL.Add(' AND  YearID  =' + qryRecipts.FieldByName('YearID').AsString);
    try
      BigMessage(IntToStr(ExecSQL) + ' فرم‌ باطل شد.', 2);
      Active := False;
      i := qryRecipts.FieldByName('ReciptID').AsInteger;
      qryRecipts.Active := False;
      qryRecipts.Open;
      qryRecipts.Locate('ReciptID', i, [])
    except
      Warn('اشكال در باطل كردن فرم‌');
    end; // try
  end; // with
end;

procedure TReciptsBuyListF.BtnReciptStateClick(Sender: TObject);
begin
  inherited;
  PopMnuReciptState.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TReciptsBuyListF.PerformFileNameClick(Sender: TObject);
begin
  inherited;
  try
    doPrint := True;
    qryRecipts.DisableControls;
    InitReportFile(ppReport1, qryInitQry.FieldByName((Sender as TMenuItem).Name)
      .AsString, True);
  finally
    qryRecipts.EnableControls;
    doPrint := False;
  end;

end;

procedure TReciptsBuyListF.actReciptState0Execute(Sender: TObject);
var
  i: Integer;
  s: string;
begin
  inherited;
  if DBGrid1.SelectedRows.Count > 0 then
    if get_response('آيا براي به موقت درآوردن فرم‌هاي انتخاب شده مطمئن هستيد؟')
      <> mrYes then
      Exit;
  with DBGrid1.DataSource.DataSet do
    for i := 0 to DBGrid1.SelectedRows.Count - 1 do
    begin
      GotoBookmark((DBGrid1.SelectedRows.Items[i]));
      if s <> '' then
        s := s + ',';
      s := s + FieldByName('ReciptID').AsString;
      if qryInitQry.FieldByName('CorrelateStateChange').AsInteger = 1 then
        if not FieldByName('ParentReciptID').IsNull then
          s := s + ',' + FieldByName('ParentReciptID').AsString
    end;
  If s = '' then
    Exit;
  with DMf.qryTMPTMP do
  begin
    Active := False;
    SQL.Text := 'UPDATE Recipts SET ReciptState =0  WHERE (ReciptState>=0) AND '
      + '(ReciptID IN (' + s + '))';
    SQL.Add(' AND  ServerID=' + qryRecipts.FieldByName('ServerID').AsString);
    SQL.Add(' AND  YearID  =' + qryRecipts.FieldByName('YearID').AsString);
    try
      BigMessage(IntToStr(ExecSQL) + ' فرم‌ موقت شد.', 2);
      Active := False;
      i := qryRecipts.FieldByName('ReciptID').AsInteger;
      qryRecipts.Active := False;
      qryRecipts.Open;
      qryRecipts.Locate('ReciptID', i, [])
    except
      Warn('اشكال در به موقت درآوردن  فرم‌');
    end; // try
  end; // with
end;

procedure TReciptsBuyListF.ppDBTextStuffSizeGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := Text + '';
end;

procedure TReciptsBuyListF.ppLabelnum2alphabetGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := 'جمع كل به حروف : ' + num2alphabet
    (StrToInt64(qryRecipts.FieldByName('priceWithDef').AsString)) + ' ريال ';
end;

procedure TReciptsBuyListF.ppLabelnum2alphabetPayebelGetText(Sender: TObject;
  var Text: String);
var
  PayablePrice: Currency;
begin
  inherited;
  PayablePrice := qryRecipts.FieldByName('priceWithDef').AsCurrency;
  PayablePrice := RoundTo(PayablePrice, 0);
  Text := num2alphabet(StrToInt64(CurrToStr(PayablePrice))) + ' ريال ';
end;

procedure TReciptsBuyListF.ppLblSecondTypeGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := ''; // ComboType.Text;

end;

procedure TReciptsBuyListF.logoPrint(Sender: TObject);
var
  s: String;
begin
  inherited;
  s := GetReportFileWithPath((Sender as TppImage).Name + '.bmp');
  if (FileExists(s)) then
  begin
    (Sender as TppImage).Picture.LoadFromFile(s);
  end;
end;

procedure TReciptsBuyListF.ppLabelTotalOutputPriceGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := CurrToStrF(qryRecipts.FieldByName('price').AsCurrency, ffCurrency, 0);
end;

procedure TReciptsBuyListF.ppDBTxtPayablePriceGetText(Sender: TObject;
  var Text: String);
var
  PayablePrice: Currency;
begin
  inherited;
  PayablePrice := qryRecipts.FieldByName('priceWithDef').AsCurrency;
  Text := CurrToStrF(PayablePrice, ffCurrency, 0)
end;

procedure TReciptsBuyListF.ppLabelOutputWeightGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := qryReciptsWeight.AsString;
end;

procedure TReciptsBuyListF.ppLabelOutputEntityGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := qryReciptsEntity.AsString;
end;

procedure TReciptsBuyListF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryReciptsReciptNumber);
end;

procedure TReciptsBuyListF.actNewReciptsCorrelateExecute(Sender: TObject);
var
  i, id: Largeint;
begin
  inherited;
  if DBGrid1.SelectedRows.Count > 0 then
    if get_response('آيا براي ثبت فرم مرتبط فرم‌هاي انتخاب شده مطمئن هستيد؟') <> mrYes
    then
      Exit;
  qryRecipts.DisableControls;
  id := qryRecipts.FieldByName('ID').AsLargeInt;
  BigMessageProgBar('در حال ثبت فرم مرتبط', DBGrid1.SelectedRows.Count);
  with DBGrid1.DataSource.DataSet do
    for i := 0 to DBGrid1.SelectedRows.Count - 1 do
    begin
      GotoBookmark((DBGrid1.SelectedRows.Items[i]));
      With stpNewReciptsCorrelate do
      begin
        Active := False;
        Parameters.ParamByName('@OldID').Value := qryRecipts.FieldByName('ID')
          .AsInteger;
        Parameters.ParamByName('@FirstUser').Value := User.Name;
        // Parameters.ParamByName('@ServerID').Value :=
        // qryRecipts.FieldByName('ServerID').AsInteger;
        // Parameters.ParamByName('@YearID').Value :=
        // qryRecipts.FieldByName('YearID').AsInteger;

        // Parameters.ParamByName('@NewStoreID').Value:=0;//qryRecipts.Fieldbyname('CustomerID1').AsString;
        ExecProc;
        GoProgressBar(qryRecipts.FieldByName('ReciptNumber').AsString);
        Active := False;
      end; // With
    end; // for
  try
    qryRecipts.Active := False;
    qryRecipts.Open;
    qryRecipts.Locate('ID', id, []);
    CloseMessage;
  except
    Warn('اشكال در ثبت كردن فرم‌');
  end; // try
  qryRecipts.EnableControls;
end;

procedure TReciptsBuyListF.N1Click(Sender: TObject);
begin
  inherited;
  // DBGridSelectAll(DBGrid1)
end;

procedure TReciptsBuyListF.actUpDateExecute(Sender: TObject);
var
  rid: Integer;
begin
  inherited;
  rid := qryReciptsReciptID.AsInteger;
  qryRecipts.Requery();
  qryRecipts.Locate('ReciptID', rid, []);
end;

procedure TReciptsBuyListF.BitBtn3Click(Sender: TObject);
begin
  inherited;
  pmOther.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TReciptsBuyListF.allSort1Click(Sender: TObject);
begin
  inherited;
  allSortRecipts(qryRecipts, qryInitQry, (Sender as TMenuItem).Tag)
end;

end.
