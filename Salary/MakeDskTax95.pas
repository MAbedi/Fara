unit MakeDskTax95;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, ComCtrls, Grids, Vcl.DBGrids, DB, Mask, ppPrnabl, ppClass, FileCtrl,
  ppCtrls, ppBands, ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB,
  ppDBPipe, ADODB, ToolWin, DBCtrls, Menus, Dbf, ppVar,
  ppParameter, ppBarCod, jpeg, Math, myChkBox, FrmTaxCheck, ppDesignLayer,
  System.ImageList, System.Actions, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  CedarDbGrid, Vcl.CheckLst, FormFunctions;

type
  TMakeDskTax95F = class(Ttemplate2MDIF)
    StatusBar1: TStatusBar;
    srcList: TDataSource;
    ppDBPipeline1: TppDBPipeline;
    ppReport4File: TppReport;
    btnBurnCD: TBitBtn;
    actPrint: TAction;
    BitBtn1: TBitBtn;
    actMake: TAction;
    qryList: TADOQuery;
    BitBtn2: TBitBtn;
    actLimit: TAction;
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
    PopList4Print: TPopupMenu;
    AllClikPop: TMenuItem;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    actSort: TAction;
    actSendExcel: TAction;
    BitBtn6: TBitBtn;
    actPrintVijeh: TAction;
    BitBtn7: TBitBtn;
    CmbArchiveID: TComboBox;
    qry_init: TADOQuery;
    Image3: TImage;
    Image2: TImage;
    qryConfig: TADOQuery;
    qryList_radif: TIntegerField;
    qryListNationalID: TStringField;
    qryListname_L1: TStringField;
    qryListlastName_L1: TStringField;
    qryListfatherName_L1: TStringField;
    qryListPostalCode: TStringField;
    qryListjobName: TStringField;
    qryListTotalYearsWork: TWordField;
    qryListLicenceTax: TWordField;
    qryListOfficeTax: TWordField;
    qryListTaxCalculationTypeTax: TWordField;
    qryListNationalityTax: TWordField;
    qryListNationalityName: TStringField;
    qryListInsuranceTax: TWordField;
    qryListInsuranceNumber: TStringField;
    qryListPersonelNO: TIntegerField;
    qryListInsuranceKind: TIntegerField;
    qryListCheckColumn20: TBCDField;
    qryListInsuranceInfoName: TStringField;
    qryListPrice: TBCDField;
    qryListTaxValue: TFloatField;
    qryListBonus: TBCDField;
    qryListBonusRate: TBCDField;
    qryListBonusTax: TBCDField;
    qryListContainTaxValue: TBCDField;
    qryListBeforeTaxValue: TBCDField;
    qryListColumn32Chk: TBCDField;
    qryListCotrolCheck: TBCDField;
    qryListTaxZoneTaxCode: TWordField;
    qryListTaxName: TStringField;
    qryListLicenceName: TStringField;
    qryListOfficeName: TStringField;
    qryListEmployName: TStringField;
    qryListStateName: TStringField;
    qryListinsurancename: TStringField;
    actBurnCD: TAction;
    actMakeFiles: TAction;
    btnPrint: TBitBtn;
    ppParameterList1: TppParameterList;
    pdbplnConfig: TppDBPipeline;
    SrcConfig: TDataSource;
    qrySum: TADOQuery;
    srcSum: TDataSource;
    qryListMobile: TStringField;
    actSMS: TAction;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    plblAllReadBankConfig7: TppLabel;
    plblAllReadBankConfig6: TppLabel;
    plblAllReadBankConfig5: TppLabel;
    plblAllReadBankConfig19: TppLabel;
    plblAllReadBankConfig18: TppLabel;
    plblAllReadBankConfig17: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppDBBarCode1: TppDBBarCode;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppPageStyle1: TppPageStyle;
    ppShape6: TppShape;
    ppShape1: TppShape;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppShape2: TppShape;
    ppShape3: TppShape;
    ppShape4: TppShape;
    ppShape17: TppShape;
    ppShape23: TppShape;
    ppShape24: TppShape;
    ppShape5: TppShape;
    ppShape27: TppShape;
    ppShape28: TppShape;
    ppShape29: TppShape;
    ppShape30: TppShape;
    ppShape31: TppShape;
    ppShape32: TppShape;
    ppShape33: TppShape;
    ppShape34: TppShape;
    ppShape35: TppShape;
    ppShape36: TppShape;
    ppShape18: TppShape;
    ppShape19: TppShape;
    ppShape20: TppShape;
    ppShape21: TppShape;
    ppShape22: TppShape;
    ppLine1: TppLine;
    ppLine3: TppLine;
    ppLine7: TppLine;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel15: TppLabel;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel16: TppLabel;
    ppShape7: TppShape;
    ppShape9: TppShape;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel27: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppImage1: TppImage;
    ppLabel38: TppLabel;
    ppLabel44: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel45: TppLabel;
    plblAllReadBankConfig3: TppLabel;
    plblAllReadBankConfig16: TppLabel;
    plblAllReadBankConfig10: TppLabel;
    plblAllReadBankConfig4: TppLabel;
    plblAllReadBankConfig11: TppLabel;
    plblAllReadBankConfig9: TppLabel;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLabel46: TppLabel;
    frTaxCheck1: TfrTaxCheck;
    ToolButton13: TToolButton;
    qryListColumn12: TBCDField;
    qryListColumn14: TBCDField;
    qryListColumn16: TBCDField;
    qryListColumn17: TBCDField;
    qryListColumn18: TBCDField;
    qryListColumn19: TBCDField;
    qryListColumn20: TBCDField;
    qryListColumn21: TBCDField;
    qryListColumn22: TBCDField;
    qryListColumn23: TBCDField;
    qryListColumn24: TBCDField;
    qryListColumn25: TBCDField;
    qryListColumn26: TBCDField;
    qryListColumn27: TBCDField;
    qryListColumn28: TBCDField;
    qryListColumn29: TFloatField;
    qryListColumn30: TBCDField;
    qryListColumn31: TBCDField;
    qryListColumn32: TBCDField;
    qryListColumn33: TBCDField;
    qryListColumn34: TBCDField;
    qryListSpecialStateTaxCode: TWordField;
    qryListTypeOfContractTaxCode: TWordField;
    qryListSpecialStateName: TStringField;
    qryListTypeOfContractName: TStringField;
    qryListNationalityInfoID: TIntegerField;
    qryListemployDate: TStringField;
    qryListInsertOrEdit: TLargeintField;
    qryListKindEmployTypeTax: TWordField;
    qryListaddress_L1: TStringField;
    qryListjobCityTax: TWordField;
    qryListfinishEmployDate: TStringField;
    qryListEmail: TWideStringField;
    qryListFunctionMountCount: TIntegerField;
    qryListjobCityName: TStringField;
    qryListContainTax: TBCDField;
    qryListSumWage: TBCDField;
    plnSum: TppDBPipeline;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    qryListSumWage_28_29: TBCDField;
    grdSum: TCedarDbgrid;
    qryListBirthDate: TStringField;
    qryListIDNumber: TStringField;
    qryList_BirthProvince: TStringField;
    qryListRetirementDate: TStringField;
    qryListColumn07: TBCDField;
    qryListColumn08: TBCDField;
    qryListColumn10: TBCDField;
    qryListColumn35: TBCDField;
    DBGrid1: TCedarDbgrid;
    qryListFurnitureTaxCode09: TWordField;
    qryListVehicleTaxCode11: TWordField;
    qryListColumn13: TBCDField;
    qryListColumn15: TBCDField;
    qryListLocationTax: TWordField;
    qryListLocationName: TStringField;
    qryListLocationInfoID: TIntegerField;
    chklstActiveFiltersItem: TCheckListBox;
    qryListCitizenCode: TStringField;
    qryListSumWage2: TBCDField;
    qryListColumn36: TBCDField;
    qryListColumn37: TBCDField;
    qryListColumn38: TBCDField;
    qryListColumn39: TBCDField;
    qryListColumn40: TBCDField;
    ppDBText1: TppDBText;
    procedure FormCreate(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure actMakeExecute(Sender: TObject);
    procedure actLimitExecute(Sender: TObject);
    procedure ToolButton12Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qryListCalcFields(DataSet: TDataSet);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure AllClikPopClick(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSendExcelExecute(Sender: TObject);
    procedure actPrintVijehExecute(Sender: TObject);
    procedure CmbArchiveIDChange(Sender: TObject);
    procedure qryListAfterOpen(DataSet: TDataSet);
    procedure plblAllReadBankConfigLblPrintDateGetText(Sender: TObject;
      var Text: String);
    procedure plblAllReadBankConfigLblCompanyNameGetText(Sender: TObject;
      var Text: String);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
    procedure plblAllReadBankConfigLblCaptionGetText(Sender: TObject;
      var Text: String);
    procedure grpCasesClick(Sender: TObject);
    procedure plblAllReadBankConfigAllMSK_CMBGetText(Sender: TObject;
      var Text: String);
    procedure actBurnCDExecute(Sender: TObject);
    procedure actMakeFilesExecute(Sender: TObject);
    procedure plblAllReadBankConfigMonthGetText(Sender: TObject;
      var Text: String);
    procedure plblYareGetText(Sender: TObject; var Text: String);
    procedure plbl1GetText(Sender: TObject; var Text: String);
    procedure DBGrid1ColEnter(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure plblSumGetText(Sender: TObject; var Text: string);
    procedure ppLabel1GetText(Sender: TObject; var Text: string);
    procedure actSMSExecute(Sender: TObject);
    procedure frTaxCheck1DBGrid2DblClick(Sender: TObject);
    procedure ALLGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure AllSetText(Sender: TField; const Text: String);
    procedure qryTaxInfoPayKindChange(Sender: TField);
    procedure qrySumAfterOpen(DataSet: TDataSet);
    procedure grdSumColEnter(Sender: TObject);
    // procedure SBnPersonelNoClick(Sender: TObject);
  private
    MonthNo: Byte;
    Paragraph: Integer;
    F_i_l_e: String;
    n_Count, c: Integer;
    pDir: String;
    CdBurn: Boolean;
    // c20c21c26c27c28, c32, c34, c33, c_DebtLastMonth_c34: Currency;
    // Nationality: Integer;
    MemWP, MemWH, MemWK: TMemo;
    procedure UpdateList;
    procedure Save_Dsk;
    procedure InitForm;
    // procedure CalcSum;
    procedure makeFile;
  public
  end;

var
  MakeDskTax95F: TMakeDskTax95F;

implementation

uses DM, mmessage, GlobalPro, filter_ADO, FilterClass_ADO, StrUtils, search2,
  sort2, DBGrid2Print, SalaryFunctions, CdBurnTax, FaraConsts, infoSMS,
  Filter_ADO_Const;

{$R *.dfm}

procedure TMakeDskTax95F.FormCreate(Sender: TObject);
begin
  inherited;
  chklstActiveFiltersItem.Checked[0] :=
    StrToBool(ReadConfig(APPID, 'chklstActiveFiltersItem0', '1'));
  chklstActiveFiltersItem.Checked[1] :=
    StrToBool(ReadConfig(APPID, 'chklstActiveFiltersItem1', '1'));
  Paragraph := var_glb_gParam;
  Caption := Caption + ' ماده ' + Paragraph.ToString;
  MonthNo := var_glb_CurrentMonth;
  InitForm
end;

procedure TMakeDskTax95F.ALLGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  inherited;
  Text := TDBComboBox(FindComponent('cmb' + Sender.FieldName)).Items.strings
    [Sender.AsInteger];
end;

procedure TMakeDskTax95F.AllSetText(Sender: TField; const Text: String);
begin
  inherited;
  Sender.AsInteger := TDBComboBox(FindComponent('cmb' + Sender.FieldName))
    .ItemIndex;
end;

procedure TMakeDskTax95F.InitForm;
begin
  grdSum.SearchPanel.Enabled := False;
  MemWP := TMemo.Create(Self);
  MemWP.Visible := False;
  MemWP.Parent := Self;
  MemWH := TMemo.Create(Self);
  MemWH.Visible := False;
  MemWH.Parent := Self;
  MemWK := TMemo.Create(Self);
  MemWK.Visible := False;
  MemWK.Parent := Self;

  ToolBar1.Buttons[12].Visible := optP.EidiDisplayedSeparatelyOnTaxList;
  ToolBar1.Buttons[MonthNo - 1].Down := True;

  InitCmbArchiveID(CmbArchiveID, MonthNo);
  with qry_init do
  begin
    Active := False;
    Active := True;
  end; // with
  with DMF.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text := 'SELECT InfoID, LTRIM(STR(InfoID)) + InfoName_L1 AS Name';
    SQL.Add('FROM Pay.FormsInfo');
    SQL.Add('WHERE (FormType = 94)');
    Active := True;
    // while not eof do
    // begin
    // if qryList.FindField('Column' + IntToStr(FieldByName('InfoID').AsInteger))
    // <> nil then
    // qryList.FieldByName('Column' + IntToStr(FieldByName('InfoID').AsInteger)
    // ).DisplayLabel := FieldByName('Name').AsString;
    // Next;
    //
    // end;
    Active := False;
  end; // with

  // i := ColumnIndexByFieldName(DBGrid1, 'InsertOrEdit');
  // DBGrid1.Columns[i].PickList.AddObject('حقوق بگیر جدید', TObject(1));
  // DBGrid1.Columns[i].PickList.AddObject('حقوق بگیر قبلی', TObject(2));

end;

procedure TMakeDskTax95F.actPrintExecute(Sender: TObject);
begin
  inherited;
  DBGrid1.SetFooter4Sum([]);
  // CalcSum;
  MakeMenuItem(94, AllClikPopClick, PopList4Print);
  try
    qryList.DisableControls;
    PopList4Print.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
  finally
    qryList.EnableControls;
  end;
end;

procedure TMakeDskTax95F.AllClikPopClick(Sender: TObject);
begin
  inherited;
  InitReportFile(ppReport4File, (Sender as TMenuItem).Hint);
end;

procedure TMakeDskTax95F.actMakeFilesExecute(Sender: TObject);
begin
  inherited;
  if qrySum.FieldByName('CotrolCheck').AsInteger <> 0 then
  begin
    Warn('ستون اختلاف را بررسي كنيد.‏');
    // Exit;
  end;

  // PopupMenu1.Popup(Mouse.CursorPos.X,Mouse.CursorPos.Y);
  pDir := __TheTempDIR;
  SetCurrentDir(pDir);
  if System.SysUtils.DirectoryExists('CdBurn') then
    DelDir('CdBurn');
  MkDir('CdBurn');

  if not CdBurn then
    pDir := EmptyStr;

  makeFile;
  if CdBurn then
    CdBurnTaxF.BackUpBurnCD(Caption);
end;

procedure TMakeDskTax95F.actMakeExecute(Sender: TObject);
begin
  inherited;
  CdBurn := False;
  pDir := EmptyStr;
  actMakeFiles.Execute;
end;

procedure TMakeDskTax95F.actBurnCDExecute(Sender: TObject);
begin
  inherited;
  CdBurn := True;
  actMakeFiles.Execute;
end;

procedure TMakeDskTax95F.actLimitExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItemFilter(GetFilter, TLabelID);

      AddItem(DMF.adcSalary, 'ProjectID', 'كد پروژه/ م.هزينه', 'كد', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT FormInfoID,InfoName_L1 FROM Pay.FormsInfo WHERE FormType =  ' +
        optP.FormInfo4Function.ToString,
        'SELECT 0,MAX(ProjectID) FROM Pay.Interdicts ');

      if chklstActiveFiltersItem.Checked[0] then
        AddItemFilter(GetFilter, TFilterOfficeCodeChk);

      if chklstActiveFiltersItem.Checked[1] then
        AddItem(DMF.adcSalary, 'TaxCalculationTypes', 'ماليات', '', ftInteger,
          dvDefaults, 'true', '', ciCheck,
          'SELECT DISTINCT FormInfoID, LTRIM(RTRIM(STR(InfoID))) + InfoName_L1 FROM Pay.FormsInfo WHERE (FormType = 21)',
          '');

      AddItem(DMF.adcSalary, 'ArchiveID', ' شماره بايگاني', 'شماره', ftInteger,
        dvDefaults, '0', '', ciSingle, '', '');

      AddItem(DMF.adcSalary, 'EmployTypeID', 'نوع حكم ', 'نوع', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT InfoID,InfoName_L1 FROM Pay.FormsInfo WHERE  (FormType = 14)',
        'SELECT MIN(InfoID), MAX(InfoID) FROM Pay.FormsInfo WHERE  (FormType = 14)');

      AddItem(DMF.adcSalary, 'PersonelState', 'وضعيت پرسنل ', 'كد', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT InfoID, InfoName_L1 FROM Pay.FormsInfo WHERE (FormType = 3)',
        'SELECT Min(InfoID),Max(InfoID) FROM Pay.FormsInfo WHERE (FormType = 3)');

      AddItemFilter(GetFilter, TPersonelNo);

      if ShowModal = mrOk then
      begin
        GetFilterString;
        CmbArchiveID.ItemIndex := GetcFrom(myParams.ParamValues['ArchiveID'],
          ftInteger);
        UpdateList;
      end; // if
    finally
      Free;
    end; // try
  end; // with
end;

procedure TMakeDskTax95F.UpdateList;
begin

  if MonthNo > 12 then
  begin
    qryList.Parameters.ParamByName('EydiCo').Value := 0;
    with TADOQuery.Create(DMF) do
    begin
      Connection := DMF.adcSalary;
      SQL.Text := 'SELECT max(Mounth)from Pay.FinalArchive where YearID = ' +
        APPBank.Year.ToString;
      Active := True;
      MonthNo := Fields[0].AsInteger;
      Free;
    end; // with
    GetYearMounth(MonthNo);

  end
  else
  begin
    qryList.Parameters.ParamByName('EydiCo').Value := 1;
    GetYearMounth(MonthNo);
  end;

  // frTaxCheck1.Check(MonthNo);
  with qryList do
  begin
    DisableControls;
    Active := False;
    Parameters.ParamByName('ActiveFiltersItem').Value :=
      GetCheckList2(chklstActiveFiltersItem, 1);

    Parameters.ParamByName('LabelIDFrom').Value :=
      GetcFrom(myParams.ParamValues['LabelID'], ftInteger);
    Parameters.ParamByName('LabelIDTo').Value :=
      GetcTo(myParams.ParamValues['LabelID'], ftInteger);

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

    Parameters.ParamByName('YearMounth').Value := optP.YearMounth;
    Parameters.ParamByName('Mounth').Value := MonthNo;
    Parameters.ParamByName('ShowListKind').Value := 12;
    Parameters.ParamByName('YearID').Value := optP.Year;
    // MidStr(opt.YearMounth, 1, 2);
    Parameters.ParamByName('InterdictType').Value := 0;
    Parameters.ParamByName('bedbes').Value := 2;
    Parameters.ParamByName('ArchiveID').Value :=
      Integer(CmbArchiveID.Items.Objects[CmbArchiveID.ItemIndex]);
    Parameters.ParamByName('PersonelNoFrom').Value :=
      GetcFrom(myParams.ParamValues['PersonelNo'], ftString);
    Parameters.ParamByName('PersonelNoTo').Value :=
      GetcTo(myParams.ParamValues['PersonelNo'], ftString);
    Parameters.ParamByName('PersonelStateFrom').Value :=
      GetcFrom(myParams.ParamValues['PersonelState'], ftString);
    Parameters.ParamByName('PersonelStateTo').Value :=
      GetcTo(myParams.ParamValues['PersonelState'], ftString);
    Parameters.ParamByName('EmployTypeIDFrom').Value :=
      GetcFrom(myParams.ParamValues['EmployTypeID'], ftString);
    Parameters.ParamByName('EmployTypeIDTo').Value :=
      GetcTo(myParams.ParamValues['EmployTypeID'], ftString);
    // Parameters.ParamByName('StateFrom').Value:=GetcFrom(myParams.ParamValues['PersonelState'],ftString);
    // Parameters.ParamByName('StateTo').Value:=GetcTo(myParams.ParamValues['PersonelState'],ftString);
    if ((chklstActiveFiltersItem.Checked[0]) and
      (myParams.FindParam('OfficeCode') <> nil)) then
      Parameters.ParamByName('OfficeCode').Value :=
        GetcFrom(myParams.ParamValues['OfficeCode'], ftString);

    if ((chklstActiveFiltersItem.Checked[1]) and
      (myParams.FindParam('TaxCalculationTypes') <> nil)) then
      Parameters.ParamByName('TaxCalculationTypes').Value :=
        GetcFrom(myParams.ParamValues['TaxCalculationTypes'], ftString);

    Parameters.ParamByName('ProjectIDFrom').Value :=
      GetcFrom(myParams.ParamValues['ProjectID']);
    Parameters.ParamByName('ProjectIDTo').Value :=
      GetcTo(myParams.ParamValues['ProjectID']);

    Parameters.ParamByName('PayKind').Value := 0;
    // ifthen(cmbPayKind.ItemIndex = 3, 0, 1);

    Active := True;
    EnableControls;

    // if frTaxCheck1.qryCheckTax.Active then
    // actMake.Enabled := (not IsEmpty) and
    // (frTaxCheck1.qryCheckTax.RecordCount = 0);
    actPrint.Enabled := actMake.Enabled;
    actMakeFiles.Enabled := actMake.Enabled;
    actBurnCD.Enabled := actMake.Enabled;
    frTaxCheck1.Visible := False;
    // frTaxCheck1.grpTaxCheck.Height := 200;
  end; // with

end;

procedure TMakeDskTax95F.ToolButton12Click(Sender: TObject);
begin
  inherited;
  MonthNo := (Sender as TToolButton).tag;
  InitCmbArchiveID(CmbArchiveID, MonthNo);
  UpdateList;
end;

procedure TMakeDskTax95F.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actLimit.Execute;
  if myParams.FindParam('ArchiveID') = nil then
    close
  else

end;

procedure TMakeDskTax95F.frTaxCheck1DBGrid2DblClick(Sender: TObject);
begin
  inherited;
  // if frTaxCheck1.qryCheckTax.Active then
  // actMake.Enabled := CalcSumFileds(frTaxCheck1.qryCheckTax.FieldByName
  // ('ErrorNoumber')) = 0;
  actPrint.Enabled := actMake.Enabled;
  actMakeFiles.Enabled := actMake.Enabled;
  actBurnCD.Enabled := actMake.Enabled;
end;

procedure TMakeDskTax95F.qryListCalcFields(DataSet: TDataSet);
begin
  inherited;
  DataSet['_radif'] := abs(DataSet.RecNo);
end;

procedure TMakeDskTax95F.qrySumAfterOpen(DataSet: TDataSet);
var
  i: Integer;
begin
  inherited;
  With qrySum do
  begin
    for i := 0 to FieldCount - 1 do
    begin
      if Fields[i] is TBCDField then
        TBCDField(Fields[i]).Currency := True;
    end;
  end;
end;

procedure TMakeDskTax95F.qryTaxInfoPayKindChange(Sender: TField);
begin
  inherited;
  // if qryTaxInfo.Active then
  // begin
  // pnlPayKind.Visible := qryTaxInfoPayKind.AsInteger <> 6;
  // if qryTaxInfoPayKind.AsInteger > -1 then
  // UpdateList
  // end;        g
end;

procedure TMakeDskTax95F.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  // QuickSearch(Key, qryListPersonelNO);
end;

procedure TMakeDskTax95F.FormDestroy(Sender: TObject);
begin
  inherited;
  MemWP.Free;
  MemWH.Free;
  MemWK.Free;

  SaveConfig(APPID, 'chklstActiveFiltersItem0',
    BoolToStr(chklstActiveFiltersItem.Checked[0]));

  SaveConfig(APPID, 'chklstActiveFiltersItem1',
    BoolToStr(chklstActiveFiltersItem.Checked[1]));

end;

procedure TMakeDskTax95F.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryList);
end;

procedure TMakeDskTax95F.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryList);
end;

procedure TMakeDskTax95F.actSendExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TMakeDskTax95F.actSMSExecute(Sender: TObject);
begin
  inherited;
  InfoSMSF.ShowSMS(qryList, 'Mobile');
end;

procedure TMakeDskTax95F.actPrintVijehExecute(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, 0);
end;

procedure TMakeDskTax95F.CmbArchiveIDChange(Sender: TObject);
begin
  inherited;
  UpdateList;
end;

procedure TMakeDskTax95F.qryListAfterOpen(DataSet: TDataSet);
begin
  inherited;
  // With qryList do
  // begin
  // DisableControls;
  // while not eof do
  // begin
  // Edit;
  // FieldByName('InsertOrEdit').AsInteger :=
  // ifthen(copy(optP.YearMounth, 1, 7)
  // = copy(qryList.FieldByName('employDate').AsString, 1, 7), 1, 2);
  // Post;
  // Next;
  // end;
  // First;
  // EnableControls;
  // end;

  qrySum.Active := False;
  qrySum.Active := True;

  StatusBar1.Panels[3].Text := 'تعداد پرسنل = ' + IntToStr(qryList.RecordCount);

  // StatusBar1.Panels[0].Text := 'ماليات قابل پرداخت = ' +
  // CurrToStrF(qrySum.FieldByName('Column34').AsCurrency, ffCurrency, 0);

end;

procedure TMakeDskTax95F.makeFile;
var
  sWP, sWH: String;
  // PayKind: Integer;
begin
  inherited;
  F_i_l_e := optP.Year + RightStr(('0' + IntToStr(MonthNo)), 2) + '.Txt';
  qryList.DisableControls;
  qryList.First;
  n_Count := 0;
  c := 0;
  MemWP.Clear;
  MemWH.Clear;
  MemWK.Clear;
  With qryList do
    /// / MemWP  MemWP  MemWP
    while not eof do
    begin
      if FieldByName('NationalityInfoID').AsInteger = 1 then
        sWP := '1,' + FieldByName('NationalID').AsString + ',' // 2 /
      else
        sWP := '2,' + FieldByName('CitizenCode').AsString + ','; // 2 /;
      // s := s + FieldByName('InsertOrEdit').AsString + ',';
      sWP := sWP + FieldByName('name_L1').AsString + ',' + // 3 /
        FieldByName('lastName_L1').AsString + ',' + // 4 /
        FieldByName('fatherName_L1').AsString + ','; // 5 /
      sWP := sWP +
        trim(RightStr(StringReplace(FieldByName('BirthDate').AsString, '/', '',
        [rfReplaceAll]), 10)) + ',' + // 6 /
        FieldByName('IDNumber').AsString + ',' + // 7 /
        FieldByName('_BirthProvince').AsString + ','; // /
      sWP := sWP + FieldByName('LicenceTax').AsString + ','; // 9 /
      sWP := sWP + FieldByName('InsuranceTax').AsString + ','; // 10 /
      sWP := sWP + FieldByName('InsuranceNumber').AsString + ','; // 11 /
      sWP := sWP + RightStr(FieldByName('InsuranceInfoName').AsString,
        15) + ',';
      // 12 /
      sWP := sWP + FieldByName('SpecialStateTaxCode').AsString + ','; // 13 /

      sWP := sWP + FieldByName('NationalityTax').AsString + ','; // 14 /
      sWP := sWP + FieldByName('LocationTax').AsString + ','; // 15 /

      sWP := sWP + FieldByName('PostalCode').AsString + ','; // 16 /
      sWP := sWP + FieldByName('address_L1').AsString + ','; // 17 /
      sWP := sWP + FieldByName('OfficeTax').AsString + ','; // 18 /
      sWP := sWP + FieldByName('jobName').AsString + ','; // 19 /
      sWP := sWP + FieldByName('KindEmployTypeTax').AsString + ','; // 20 /
      sWP := sWP + trim(RightStr(StringReplace(FieldByName('employDate')
        .AsString, '/', '', [rfReplaceAll]), 10)) + ','; // 20 /

      if trim(qryListfinishEmployDate.AsString) <> EmptyStr then
        sWP := sWP + trim(RightStr(StringReplace(FieldByName('finishEmployDate')
          .AsString, '/', '', [rfReplaceAll]), 10)) + ',' // 21 /
      else
        sWP := sWP + ',';

      if trim(qryListRetirementDate.AsString) <> EmptyStr then
        sWP := sWP +
          trim(RightStr(StringReplace(FieldByName('RetirementDate').AsString,
          '/', '', [rfReplaceAll]), 10)) // 22 /
      else
        sWP := sWP;

      {
        s := s + FieldByName('NationalityTax').AsString + ','; // 6 /
        s := s + FieldByName('PersonelNO').AsString + ','; // 7 /

        // s := s + FieldByName('jobCityTax').AsString + ','; // 17 /
        s := s + FieldByName('jobCityName').AsString + ','; // 17 /

        s := s + FieldByName('  TaxZoneTaxCode   ').AsString + ','; // 18 /

        s := s + FieldByName('TypeOfContractTaxCode').AsString + ','; // 19 /


        s := s + FieldByName('SpecialStateTaxCode').AsString + ','; // 21 /
        s := s + FieldByName('Mobile').AsString + ','; // 22 /
        s := s + FieldByName('Email').AsString; // + ','; // 23 /

        // FieldByName('TotalYearsWork').AsString + ',' + // ؟؟ ///
        // FieldByName('OfficeTax').AsString + ',' + // ؟؟ /
        // FieldByName('NationalityTax').AsString + ','; // ؟؟  /
      }
      MemWP.Lines.Add(sWP);
      Next;

    end; // while
  With qryList do
  begin
    First;
    while not eof do
    begin
      if FieldByName('NationalityInfoID').AsInteger = 1 then
        sWH := FieldByName('NationalID').AsString + ',' // 1 /
      else
        sWH := FieldByName('CitizenCode').AsString + ','; // 1 /;

      // sWH := FieldByName('NationalID').AsString + ','; // 1 /
      sWH := sWH + '1,'; // 2 /  Paid Type
      sWH := sWH + FieldByName('TaxZoneTaxCode').AsString + ',';
      // 3 /  وضعیتمحل خدمت
      sWH := sWH + { FieldByName('').AsString + } '1,';
      // 4      استثنائات قانون بودجه

      sWH := sWH + '84,1,'; // 5,6 /

      // sWH := sWH + FieldByName('SpecialStateTaxCode').AsString + ','; // 9 /

      sWH := sWH + FieldByName('Column07').AsString + ',' +
        FieldByName('Column08').AsString + ',' +
        FieldByName('FurnitureTaxCode09').AsString + ',' +
        FieldByName('Column10').AsString + ',';
      sWH := sWH + FieldByName('VehicleTaxCode11').AsString + ',' +
        FieldByName('Column12').AsString + ',';
      sWH := sWH + FieldByName('Column13').AsString + ',' +
        FieldByName('Column14').AsString + ',';
      sWH := sWH + FieldByName('Column15').AsString + ',' +
        FieldByName('Column16').AsString + ',' + FieldByName('Column17')
        .AsString + ',' + FieldByName('Column18').AsString + ',' +
        FieldByName('Column19').AsString + ',' + FieldByName('Column20')
        .AsString + ',' + FieldByName('Column21').AsString + ',' +
        FieldByName('Column22').AsString + ',' + FieldByName('Column23')
        .AsString + ',' + FieldByName('Column24').AsString + ',' +
        FieldByName('Column25').AsString + ',' + FieldByName('Column26')
        .AsString + ',' + FieldByName('Column27').AsString + ',' +
        FieldByName('Column28').AsString + ',' + FieldByName('Column29')
        .AsString + ',' + FieldByName('Column30').AsString + ',' +
        FieldByName('Column31').AsString + ',' + FieldByName('Column32')
        .AsString + ',' + FieldByName('Column33').AsString + ',' +
        FieldByName('Column34').AsString + ',' + FieldByName('Column35')
        .AsString + ',' + FieldByName('Column36').AsString + ',' +
        FieldByName('Column37').AsString + ',' + FieldByName('Column38')
        .AsString + ',' + FieldByName('Column39').AsString + ',' +
        FieldByName('Column40').AsString;
      MemWH.Lines.Add(sWH);
      c := c + FieldByName('Column07').AsInteger;

      Next;
      inc(n_Count);
    end; // while

  end;
  sWH := MemWH.Lines.Text;
  SetLength(sWH, length(sWH));
  MemWH.Lines.Text := sWH;

  // WK WK WK WK WK WK WK WK WK WK WK WK WK WK WK WK WK WK
  // CalcSum;

  // PayKind := cmbPayKind.ItemIndex;
  // sWK := RightStr(optP.Year, 4) + ',' +
  // IntToStr(MonthNo) + ',';
  // { 3 } sWK := sWK + CurrToStr(ifthen(PayKind in [6, 8], 0, c34)) + ','; // c34
  // { 4 } sWK := sWK + RemoveComma(trim(qryTaxInfoTaxDebtLastMonth.Text)) + ',';
  // { 5 } sWK := sWK + trim(StringReplace(qryTaxInfoPostDate.AsString, '/', '',
  // [rfReplaceAll])) + ',';
  // { 6 } sWK := sWK + IntToStr(PayKind) + ',';
  //
  // { 7 }{ 11 }
  // if (PayKind = 1) then
  // begin
  // sWK := sWK + trim(mskTaxCheckSerial.Text) + ',';
  // sWK := sWK + trim(StringReplace(qryTaxInfoTaxCheakDate.Text, '/', '',
  // [rfReplaceAll])) + ',';
  // sWK := sWK + IntToStr
  // (Integer(cmbBank.Items.Objects[cmbBank.ItemIndex])) + ',';
  // sWK := sWK + trim(qryTaxInfoTaxBranch.Text) + ',';
  // sWK := sWK + trim(qryTaxInfoTaxAccountNum.Text) + ',';
  // end
  // else
  // sWK := sWK + ',,,,,';
  //
  // sWK := sWK + CurrToStr(c_DebtLastMonth_c34) + ',';
  // { 13 } sWK := sWK + RemoveComma(trim(qryTaxInfoPaymentsCasesDate.Text)) + ',';
  // { 14 } sWK := sWK + RemoveComma(trim(qryTaxInfoPaymentsCases.Text));
  //
  // SetLength(sWK, length(sWK));
  // MemWK.Lines.Text := sWK;

  Save_Dsk;

end;

procedure TMakeDskTax95F.Save_Dsk;
var
  b1: Boolean;
begin
  try
    b1 := True;
    SetKeyboardLatin;
    while b1 do
    begin
      if CdBurn then
        pDir := __TheTempDIR
      else if pDir = EmptyStr then
        b1 := SelectDirectory('لطفاً مسير ذخيره فايل را وارد كنيد:',
          'ذخيره فايل', pDir);
      if pDir = EmptyStr then
        Exit;
      pDir := IncludeTrailingPathDelimiter(pDir);

      if not System.SysUtils.DirectoryExists(pDir) then
      begin
        b1 := get_response('مسير وارد شده معتبر نيست.' +
          ' دوباره سعي مي‌كنيد؟') = mrYes;
      end
      else
      begin
        b1 := False;
        try
          SaveUniCodeFile(MemWP.Lines.Text, pDir + 'WP' + F_i_l_e);
          SaveUniCodeFile(MemWH.Lines.Text, pDir + 'WH' + F_i_l_e);
          // SaveUniCodeFile(MemWK.Lines.Text, pDir + 'WK' + F_i_l_e);

          if CdBurn then
          begin
            CopyFile(pchar(F_i_l_e),
              pchar(pDir + 'CdBurn\' + 'WP' + F_i_l_e), False);
            CopyFile(pchar(F_i_l_e),
              pchar(pDir + 'CdBurn\' + 'WH' + F_i_l_e), False);
            // CopyFile(pchar(F_i_l_e),              pchar(pDir + 'CdBurn\' + 'WK' + F_i_l_e), False);
          end;

          BigMessage('فايلهای ' + #13#10 + 'WP' + F_i_l_e + #13#10 + 'WH' +
            F_i_l_e + #13#10 + ' با موفقيت تهيه شد.', 2);
          RunDoc(pDir);
        except
          Warn('اشكال در ذخيره فايل', mtError);
        end;
      end;
    end;
  finally
    qryList.EnableControls;
    SetKeyboardFarsi;
  end;
end;

// procedure TMakeDskTax95F.SBnPersonelNoClick(Sender: TObject);
// var
/// /  TaxLastMonth, SalarieLastMonth, SalarieBonusesLastMonth  : Currency;
// Tax, SumWage, Contain_Tax: Currency;
// qry: TADOQuery;
// i: Integer;
// begin
// inherited;
// if MonthNo = 1 then
// Exit;
//
// if get_response('محاسبات جديد جايگزين شود؟') <> mrYes then
// Exit;
//
// BigMessage('لطفا صبر کنید....', 0);
// Tax := 0;
// SumWage := 0;
// Contain_Tax := 0;
//
// qry := TADOQuery.Create(Self);
// with qry do
// begin
// Connection := DMF.adcSalary;
// SQL.Text := 'DECLARE @ArchiveIDFrom int';
// SQL.Add('DECLARE @ArchiveIDTo int');
// SQL.Add('DECLARE @EmployTypeIDs varchar(1000)');
// SQL.Add('DECLARE @LabelIDFrom int');
// SQL.Add('DECLARE @LabelIDTo int');
// SQL.Add('DECLARE @PersonelNoFrom int');
// SQL.Add('DECLARE @PersonelNoTo int');
// SQL.Add('SET @ArchiveIDFrom=-9999');
// SQL.Add('SET @ArchiveIDTo=9999');
// SQL.Add('SET @EmployTypeIDs=''''');
// SQL.Add('SELECT @EmployTypeIDs=@EmployTypeIDs+'',''+ltrim(FormInfoID) FROM Pay.FormsInfo WHERE (FormType = 14)');
// SQL.Add('SELECT @LabelIDFrom=min(LabelID),@LabelIDTo=max(LabelID) FROM Pay.FixedLabels');
// SQL.Add('SET @PersonelNoFrom= :PersonelNoFrom ');
// SQL.Add('SET @PersonelNoTo= :PersonelNoTo ');
// Parameters.ParamByName('PersonelNoFrom').Value :=
// GetcFrom(myParams.ParamValues['PersonelNo'], ftString);
// Parameters.ParamByName('PersonelNoTo').Value :=
// GetcTo(myParams.ParamValues['PersonelNo'], ftString);
//
// SQL.Add('SELECT ShowColumn, InfoName_L1, SUM(Month1) AS Month1, SUM(Month2) AS Month2, SUM(Month3) AS Month3,');
// SQL.Add('SUM(Month4) AS Month4, SUM(Month5) AS Month5, SUM(Month6) AS Month6, SUM(Month7) AS Month7, SUM');
// SQL.Add('(Month8) AS Month8, SUM(Month9)');
// SQL.Add('AS Month9, SUM(Month10) AS Month10, SUM(Month11) AS Month11, SUM(Month12) AS Month12, SUM');
// SQL.Add('(SumPrice) AS SumPrice');
//
// SQL.Add('FROM Pay.RptComprasion( @ArchiveIDFrom , @ArchiveIDTo , @EmployTypeIDs ,@LabelIDFrom , @LabelIDTo ,:YearIDFrom ,:YearIDTo, :YearsFrom ,:YearsTo ) AS');
// SQL.Add('RptComprasion');
// SQL.Add('WHERE (RptComprasion.PersonelNO BETWEEN @PersonelNoFrom AND @PersonelNoTo)');
// SQL.Add('and ShowColumn in (2,4,5)');
// SQL.Add('GROUP BY ShowColumn, InfoName_L1');
// SQL.Add('ORDER BY ShowColumn');
// Parameters.ParamByName('YearIDFrom').Value := APPBank.Year;
// Parameters.ParamByName('YearIDTo').Value := APPBank.Year;
// Parameters.ParamByName('YearsFrom').Value := optP.Year;
// Parameters.ParamByName('YearsTo').Value := optP.Year;
// Active := True;
// i := MonthNo - 1;
// begin
// SumWage := SumWage + FieldByName('Month' + i.ToString).AsCurrency;
// qry.Next;
// Contain_Tax := Contain_Tax + FieldByName('Month' + i.ToString).AsCurrency;
// qry.Next;
// Tax := Tax + FieldByName('Month' + i.ToString).AsCurrency;
// qry.First;
// end;
// end;
// // جمع حقوق و مزايا
// // مشمول ماليات
// // ماليات
//
// qry.Free;
// BigMessage('انجام شد.', 1);
//
// end;

// procedure TMakeDskTax95F.CalcSum;
// begin
// With qryList do
// begin
// DisableControls;
// First;
// n_Count := 0;
// Nationality := 0;
// c := 0;
// c20c21c26c27c28 := 0;
// c32 := 0;
// c34 := 0;
// c33 := 0;
// MemWK.Clear;
// while not eof do
// begin
// if FieldByName('NationalityTax').AsInteger > 1 then
// inc(Nationality);
// c20c21c26c27c28 := c20c21c26c27c28 + FieldByName('Column20').AsCurrency +
// FieldByName('Column21').AsCurrency + FieldByName('Column26').AsCurrency
// + FieldByName('Column27').AsCurrency + FieldByName('Column28')
// .AsCurrency;
// c32 := c32 + FieldByName('Column32').AsCurrency;
// c34 := c34 + FieldByName('Column34').AsCurrency;
// c33 := c33 + FieldByName('Column34').AsCurrency;
// /// Column33
// Next;
// inc(n_Count);
// end; // while
// EnableControls;
// end; // qryList
// if trim(qryTaxInfoTaxDebtLastMonth.Text) = EmptyStr then
// qryTaxInfoTaxDebtLastMonth.Text := '0';
// c_DebtLastMonth_c34 :=
// StrToInt(RemoveComma(trim(qryTaxInfoTaxDebtLastMonth.Text))) + c34;
//
// end;

procedure TMakeDskTax95F.plblAllReadBankConfigLblPrintDateGetText
  (Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPrintDate
end;

procedure TMakeDskTax95F.plblAllReadBankConfigLblCompanyNameGetText
  (Sender: TObject; var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TMakeDskTax95F.ppLabel1GetText(Sender: TObject; var Text: string);
begin
  inherited;
  // Text := CurrToStrF(qrySumColumn20.AsCurrency + qrySumColumn28.AsCurrency,
  // ffCurrency, 0)
end;

procedure TMakeDskTax95F.ppSysVarPageNoGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TMakeDskTax95F.plblAllReadBankConfigLblCaptionGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := Caption
end;

procedure TMakeDskTax95F.grdSumColEnter(Sender: TObject);
// var
// i, j, w: Integer;
begin
  inherited;
  grdSum.Hint := grdSum.Columns[grdSum.SelectedIndex].FieldName;

  // w := 0;
  // for i := 0 to DBGrid1.Columns.Count - 1 do
  // begin
  // j := ColumnIndexByFieldName(grdSum, DBGrid1.Columns[i].FieldName);
  // if j = -1 then
  // w := w + DBGrid1.Columns[i].Width
  // else
  // grdSum.Columns[j].Width := DBGrid1.Columns[i].Width;
  // end;
  // grdSum.Columns[0].Width := w;

end;

procedure TMakeDskTax95F.grpCasesClick(Sender: TObject);
var
  grp: TGroupBox;
begin
  inherited;
  grp := (Sender as TGroupBox);
  if grp.Height = grp.tag then
    grp.Height := 18
  else
    grp.Height := grp.tag;
end;

procedure TMakeDskTax95F.plblAllReadBankConfigAllMSK_CMBGetText(Sender: TObject;
  var Text: String);
// var
// msk: TMaskEdit;
// cmb: TComboBox;
// c: Currency;
begin
  inherited;
  // msk := TMaskEdit(FindComponent(Text));
  // cmb := TComboBox(FindComponent(Text));
  // if msk <> nil then
  // Text := trim(msk.Text);
  // if cmb <> nil then
  // Text := trim(cmb.Text);
  // Text := StringReplace(Text, '_', '', [rfReplaceAll]);
  // if (msk <> nil) and ((msk.Name = 'mskTaxAccountNum') or
  // (msk.Name = 'mskTaxCheckSerial')) then
  // Text := VarToStr(Text)
  // else if TryStrToCurr(Text, c) = True then
  // Text := CurrToStrF(c, ffCurrency, 0);
end;

procedure TMakeDskTax95F.plblAllReadBankConfigMonthGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := ToolBar1.Buttons[MonthNo - 1].Caption
end;

procedure TMakeDskTax95F.plblSumGetText(Sender: TObject; var Text: string);
begin
  inherited;
  Text := 'غیر فعال' // CurrToStrF(c20c21c26c27c28, ffCurrency, 0);
end;

procedure TMakeDskTax95F.plblYareGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := optP.Year
end;

procedure TMakeDskTax95F.plbl1GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := IntToStr(qryList.RecordCount)
end;

procedure TMakeDskTax95F.DBGrid1ColEnter(Sender: TObject);
var
  FName, FirstColumnName: String;
  i, j, myWidth, myIndex: Integer;
begin
  inherited;
  grdSum.SelectedIndex := -2;
  FName := DBGrid1.Columns[DBGrid1.SelectedIndex].FieldName;
  for i := 0 to grdSum.Columns.Count - 1 do
    if grdSum.Columns[i].FieldName = FName then
    begin
      grdSum.SelectedIndex := i;
      Break;
    end;

  if grdSum.Columns.Count > 1 then
    FirstColumnName := grdSum.Columns[1].FieldName;
  myWidth := 0;

  myIndex := ColumnIndexByFieldName(DBGrid1, FirstColumnName);

  for i := 0 to DBGrid1.Columns.Count - 1 do
  begin
    if i < myIndex then
      myWidth := myWidth + DBGrid1.Columns[i].Width
  end;

  if grdSum.Columns.Count > 1 then
    grdSum.Columns[0].Width := myWidth;

  for i := 0 to DBGrid1.Columns.Count - 1 do
  begin
    j := ColumnIndexByFieldName(grdSum, DBGrid1.Columns[i].FieldName);
    if j <> -1 then
      grdSum.Columns[j].Width := DBGrid1.Columns[i].Width;
  end;

end;

procedure TMakeDskTax95F.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  i: Integer;
begin
  inherited;
  for i := 1 to grdSum.Columns.Count - 1 do
  begin
    if grdSum.Columns[i].FieldName = Column.FieldName then
      grdSum.Columns[i].Width := Column.Width;
  end;
end;

end.
