unit rptPayableSalary;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, DBCtrls, ComCtrls, ToolWin,  ppBands, FaraConsts ,
  ppCache, ppClass, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe,
  ppCtrls, ppVar, ppPrnabl, Mask,  Math, ppParameter, MyComboBoxUnit,
  ppDesignLayer, System.ImageList, System.Actions, Filter_ADO_Const,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid;

type
  TrptPayableSalaryF = class(Ttemplate2MDIF)
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
    BitBtn7: TBitBtn;
    BitBtn2: TBitBtn;
    DBNavigator2: TDBNavigator;
    BitBtn5: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn6: TBitBtn;
    actFilter: TAction;
    actPrint: TAction;
    actSendtoExcel: TAction;
    actSort: TAction;
    qryPayableSalary: TADOQuery;
    srcPayableSalary: TDataSource;
    qryPayableSalaryPersonelNO: TIntegerField;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    qryPayableSalaryPersonelName_L1: TStringField;
    qryPayableSalaryPersonelName_L2: TStringField;
    qryPayableSalaryArchiveDate: TStringField;
    qryPayableSalaryArchiveID: TIntegerField;
    ppHeaderBand1: TppHeaderBand;
    ppLblCompanyName: TppLabel;
    ppLblMonthCaption: TppLabel;
    ppShape1: TppShape;
    ppSystemVariable2: TppSystemVariable;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLine2: TppLine;
    ppLabel9: TppLabel;
    ppLine3: TppLine;
    ppLabel12: TppLabel;
    ppLine4: TppLine;
    ppLabel10: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppLine21: TppLine;
    ppDBText2: TppDBText;
    ppLine12: TppLine;
    ppLine11: TppLine;
    ppDBText1: TppDBText;
    ppDBText4: TppDBText;
    ppLine14: TppLine;
    ppLine18: TppLine;
    ppFooterBand1: TppFooterBand;
    ppDBCalc1: TppDBCalc;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc2: TppDBCalc;
    ppLblArchiveID: TppLabel;
    ppShape2: TppShape;
    ppShape3: TppShape;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLine1: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    actFunction: TAction;
    actFish: TAction;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    CmbArchiveID: TComboBox;
    qryPersonelDec: TADOQuery;
    GroupBox3: TGroupBox;
    GroupBox2: TGroupBox;
    mskRound: TMaskEdit;
    GroupBox1: TGroupBox;
    CmbDecExt: TComboBox;
    GrpDecExt: TGroupBox;
    CmbWage: TComboBox;
    BtnWage: TBitBtn;
    Panel1: TPanel;
    mskCoefficient: TMaskEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    qryPayableSalaryselected: TIntegerField;
    Image2: TImage;
    Image3: TImage;
    actSelectInverse: TAction;
    actSelectAll: TAction;
    RadioGroup1: TRadioGroup;
    BitBtn8: TBitBtn;
    yrcmbx1: TYearComboBox;
    qryPayableSalaryMobile: TStringField;
    actSMS: TAction;
    rgMinusPrice: TRadioGroup;
    Label1: TLabel;
    cmbDecMounth: TComboBox;
    cmbWageMounth: TComboBox;
    Label5: TLabel;
    ppImage1: TppImage;
    qryPayableSalaryPrice: TFMTBCDField;
    qryPayableSalaryCalcPrice: TFMTBCDField;
    qryPayableSalaryRoundPrice: TFMTBCDField;
    DBGrid1: TCedarDbgrid;
    procedure actSearch_Execute(Sender: TObject);
    procedure actSendtoExcelExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure ppSystemVariable2GetText(Sender: TObject; var Text: String);
    procedure ppLabel7GetText(Sender: TObject; var Text: String);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLblArchiveIDGetText(Sender: TObject; var Text: String);
    procedure ppLblMonthCaptionGetText(Sender: TObject; var Text: String);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure actFunctionExecute(Sender: TObject);
    procedure actFishExecute(Sender: TObject);
    procedure CmbArchiveIDChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure mskRoundChange(Sender: TObject);
    procedure BtnWageClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure qryPayableSalaryAfterOpen(DataSet: TDataSet);
    procedure actSelectInverseExecute(Sender: TObject);
    procedure actSelectAllExecute(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure actSMSExecute(Sender: TObject);
    procedure rgMinusPriceClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
  private
    MonthNo: Byte;
    companyCode:Integer;
    procedure UpdateList;
    procedure initRadioGroup;
    procedure save(FormInfoID: Integer; MonthNumbers: Byte);
    procedure DeleteDecExt(FormInfoID: Integer; MonthNumbers: Byte);
    procedure Selected;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rptPayableSalaryF: TrptPayableSalaryF;

implementation

uses DM, search2, sort2, GlobalPro, Mymostafa, FilterClass_ADO, filter_ADO,
  main, FunctionItems, ListSalary, SalaryFunctions, mmessage, ArchiveInfo2,
  infoSMS, mdiMain;

{$R *.dfm}

procedure TrptPayableSalaryF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryPayableSalary);
end;

procedure TrptPayableSalaryF.actSendtoExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TrptPayableSalaryF.actSMSExecute(Sender: TObject);
begin
  inherited;
  InfoSMSF.ShowSMS(qryPayableSalary, 'Mobile');
end;

procedure TrptPayableSalaryF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryPayableSalary);
end;

procedure TrptPayableSalaryF.ToolButton1Click(Sender: TObject);
begin
  inherited;
  MonthNo := (Sender as TToolButton).tag;    GetYearMounth(MonthNo);
  InitCmbArchiveID(CmbArchiveID, MonthNo);
  UpdateList;
end;

procedure TrptPayableSalaryF.UpdateList;
begin
  if Trim(mskRound.Text) = '' then
    Exit;
  if Trim(mskCoefficient.Text) = '' then
    Exit;
  with qryPayableSalary do
  begin
    Active := false;
    Parameters.ParamByName('Mounth').Value := MonthNo;
    Parameters.ParamByName('PersonelFrom').Value :=
      GetcFrom(myParams.ParamValues['PersonelNo'], ftInteger);
    Parameters.ParamByName('PersonelTo').Value :=
      GetcTo(myParams.ParamValues['PersonelNo'], ftInteger);
    Parameters.ParamByName('ArchiveID').Value :=
      Integer(CmbArchiveID.Items.Objects[CmbArchiveID.ItemIndex]);
    Parameters.ParamByName('BankCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['BankCode'], ftInteger);
    Parameters.ParamByName('BankCodeTo').Value :=
      GetcTo(myParams.ParamValues['BankCode'], ftInteger);
    Parameters.ParamByName('NumRound').Value := StrToInt(Trim(mskRound.Text));
    Parameters.ParamByName('NumRound2').Value := StrToInt(Trim(mskRound.Text));
    Parameters.ParamByName('Coefficient1').Value :=
      StrToFloat(Trim(mskCoefficient.Text));
    Parameters.ParamByName('Coefficient2').Value :=
      StrToFloat(Trim(mskCoefficient.Text));
    Parameters.ParamByName('Coefficient3').Value :=
      StrToFloat(Trim(mskCoefficient.Text));

    case rgMinusPrice.ItemIndex of
      1:
        begin
          Parameters.ParamByName('MinusPriceFrom').Value := -999999999;
          Parameters.ParamByName('MinusPriceTo').Value := 0;
        end;
      2:
        begin
          Parameters.ParamByName('MinusPriceFrom').Value := -999999999;
          Parameters.ParamByName('MinusPriceTo').Value := 9999999999;
        end;
    else
      begin
        Parameters.ParamByName('MinusPriceFrom').Value := 0;
        Parameters.ParamByName('MinusPriceTo').Value := 9999999999;
      end;
    end;

    Parameters.ParamByName('ProjectIDFrom').Value :=
      GetcFrom(myParams.ParamValues['ProjectID']);
    Parameters.ParamByName('ProjectIDTo').Value :=
      GetcTo(myParams.ParamValues['ProjectID']);

    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Parameters.ParamByName('Years').Value := optP.Year;
    if (CompanyFilterinLogin) and (not User.PowerAdmin) then
    begin
      Parameters.ParamByName('companyCodeFrom').Value := companyCode;
      Parameters.ParamByName('companyCodeTo').Value := companyCode;
    end
    else
    begin
      Parameters.ParamByName('companyCodeFrom').Value := 0;
      Parameters.ParamByName('companyCodeTo').DataType := ftLargeint;
      Parameters.ParamByName('companyCodeTo').Value := 2147483647;
    end;
    Active := true;
  end; // with
  DisbelLabel(Self);
end;

procedure TrptPayableSalaryF.FormShow(Sender: TObject);
begin
  inherited;
  ToolBar1.Buttons[MonthNo - 1].Down := true;
  myParams.Clear;
  if actFilter.Execute then
    if myParams.FindParam('PersonelNo') = nil then
      Close
    else
    begin
      DisbelLabel(Self);
      CmbArchiveID.ItemIndex := GetcFrom(myParams.ParamValues['ArchiveID'],
        ftInteger);
    end;

end;

procedure TrptPayableSalaryF.actFilterExecute(Sender: TObject);
begin
  inherited;
  With TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItem(DMF.adcSalary, 'ProjectID', 'كد پروژه/ م.هزينه', 'كد', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT FormInfoID,InfoName_L1 FROM Pay.FormsInfo WHERE FormType =   ' +
        optP.FormInfo4Function.ToString,
        'SELECT 0,MAX(ProjectID) FROM Pay.FixedCalculated ');

      AddItem(DMF.adcSalary, 'ArchiveID', ' شماره بايگاني', 'شماره', ftInteger,
        dvDefaults, '0', '', ciSingle, '', '');
      AddItemFilter(GetFilter, TPersonelNo);
      AddItem(DMF.adcSalary, 'BankCode', ' كد بانك', 'كد', ftInteger, dvMinMax,
        '', '', ciLookup,
        'SELECT Pay.FormsInfo.InfoID, Pay.FormsInfo.InfoName_L1 FROM Pay.FormsInfo INNER JOIN  Pay.PersonelInfo ON Pay.FormsInfo.FormInfoID = Pay.PersonelInfo.BankCode '
        + 'GROUP BY Pay.FormsInfo.InfoName_L1, Pay.FormsInfo.InfoID',
        'SELECT MIN(Pay.FormsInfo.InfoID),MAX(Pay.FormsInfo.InfoID) FROM Pay.FormsInfo INNER JOIN Pay.PersonelInfo ON Pay.FormsInfo.FormInfoID = Pay.PersonelInfo.BankCode ');

      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateList;
      end; // if
    finally
      Free;
    end; // try
  end; // end
end;

procedure TrptPayableSalaryF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qryPayableSalary.DisableControls;
    SetSendToBackShapeOnPrint(Self);
    ppReport1.Print;
  finally
    qryPayableSalary.EnableControls;
  end; // try
end;

procedure TrptPayableSalaryF.ppSystemVariable2GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TrptPayableSalaryF.ppLabel7GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TrptPayableSalaryF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TrptPayableSalaryF.ppLblArchiveIDGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := CmbArchiveID.Text;
end;

procedure TrptPayableSalaryF.ppLblMonthCaptionGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := Text + ToolBar1.Buttons[MonthNo - 1].Caption + ' ماه '
end;

procedure TrptPayableSalaryF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryPayableSalaryPersonelNO);
end;

procedure TrptPayableSalaryF.actFunctionExecute(Sender: TObject);
begin
  inherited;
  if (mdiMainF.ActFunctionsF.Enabled) and (mdiMainF.ActFunctionsF.Visible) then
  begin
    CreateMDIForm2(TFunctionItemsF, FunctionItemsF, Self, 28);
    FunctionItemsF.ToolBar1.Buttons[MonthNo - 1].Down := true;
    FunctionItemsF.ToolBar1.Buttons[MonthNo - 1].Click;
    FunctionItemsF.qryPersonel.Locate('PersonelNo',
      qryPayableSalary.FieldByName('PersonelNo').AsVariant, [])
  end; // Execute

end;

procedure TrptPayableSalaryF.actFishExecute(Sender: TObject);
var
  Month_No: Byte;
begin
  inherited;
  Month_No := MonthNo - 1;
  if (mdiMainF.actListSalary.Enabled) and (mdiMainF.actListSalary.Visible) then
  begin
    CreateMDIForm2(TListSalaryF, ListSalaryF, Self);
    ListSalaryF.ToolBar1.Buttons[Month_No].Down := true;
    ListSalaryF.ToolBar1.Buttons[Month_No].Click;
    ListSalaryF.qryPersonels.Locate('PersonelNo',
      qryPayableSalary.FieldByName('PersonelNo').AsVariant, [])
  end; // Execute
end;

procedure TrptPayableSalaryF.CmbArchiveIDChange(Sender: TObject);
begin
  inherited;
  UpdateList;
end;

procedure TrptPayableSalaryF.FormCreate(Sender: TObject);
begin
  inherited;
  if (CompanyFilterinLogin) and (not User.PowerAdmin) then
    companyCode := FcompanyCodeLogin
  else
    companyCode := 0;
  yrcmbx1.YearsParam := APPBank.Year;
  yrcmbx1.YearID := APPBank.Year;
  MonthNo := var_glb_CurrentMonth;
  if MonthNo < 1 then
    MonthNo := 1;
  InitCmbArchiveID(CmbArchiveID, MonthNo);
  initRadioGroup;
end;

procedure TrptPayableSalaryF.initRadioGroup;
var
  FiledId: Integer;
begin
  FiledId := 1;
  if optP.primaryLanguage <> 0 then
    FiledId := 2;
  with DMF.qryTmpTmpp do
  begin
    Active := false;
    SQL.Text := 'SELECT Pay.FormsInfo.FormInfoID';
    SQL.Add(',case FormTypes.FormType when 23 then ''کسورات-'' else ''مزایا-''end+FormsInfo.InfoName_L1  AS InfoName_L1');
    SQL.Add(',Pay.FormsInfo.InfoName_L2  AS InfoName_L2, FormTypes.FormType');
    SQL.Add('FROM Pay.FormTypes INNER JOIN');
    SQL.Add('Pay.FormsInfo ON Pay.FormTypes.FormType = Pay.FormsInfo.FormType');
    SQL.Add('WHERE (FormTypes.FormType IN (23,43))');
    // (Pay.FormTypes.SalaryKind in(12,13)) and
    SQL.Add(' ORDER BY  Pay.FormTypes.SalaryKind ,Pay.FormTypes.FormType');
    // Parameters.ParamByName('FormType').Value := 23;
    Active := true;
    while not eof do
    begin
      CmbDecExt.AddItem(Fields[FiledId].AsString, TObject(Fields[0].AsInteger));
      Next;
    end; // while      DecExt
    Sort := 'FormType DESC';
    First;
    while not eof do
    begin
      CmbWage.AddItem(Fields[FiledId].AsString, TObject(Fields[0].AsInteger));
      Next;
    end;
    // Active := false;
    // Parameters.ParamByName('FormType').Value := 43;
    // Active := true;
    // while not eof do
    // begin
    // CmbWage.AddItem(Fields[FiledId].AsString, TObject(Fields[0].AsInteger));
    // Next;
    // end; // while      CmbWage
    // Active := false;
  end; // with
  CmbWage.ItemIndex := -1;
  CmbDecExt.ItemIndex := -1;
end;

procedure TrptPayableSalaryF.mskRoundChange(Sender: TObject);
begin
  inherited;
  UpdateList;
end;

procedure TrptPayableSalaryF.BtnWageClick(Sender: TObject);
var
  msg: string;
begin
  inherited;
  // Commented By Sheikh 2015/06/02
  // if CmbDecExt.ItemIndex = -1 then
  // Exit;
  // if CmbWage.ItemIndex = -1 then
  // Exit;
  // if cmbDecMounth.ItemIndex = -1 then
  // Exit;
  // if cmbWageMounth.ItemIndex = -1 then
  // Exit;

  // if get_response('آيا براي ثبت مقدار رند در" ' + CmbWage.Text +
  // ' "ماه بـعد مطمئن هستيد؟') <> mrYes then
  // Exit;
  var_glb_CurrentMonth := MonthNo;
  try
    // if rgMinusPrice.ItemIndex=0 then
    // if Statements Added By Sheikh 2015/06/02
    if (CmbDecExt.ItemIndex <> -1) and (cmbDecMounth.ItemIndex <> -1) then
    begin
      msg := 'آیا برای ثبت مقدار رند در " ' + CmbDecExt.Text + '" ماه " ' +
        cmbDecMounth.Text + '" مطمئن هستید؟ ';
      if get_response(msg) <> mrYes then
        Exit;
      save(Integer(CmbDecExt.Items.Objects[CmbDecExt.ItemIndex]),
        cmbDecMounth.ItemIndex + 1);
    end;
    if (CmbWage.ItemIndex <> -1) and (cmbWageMounth.ItemIndex <> -1) then
    begin
      msg := 'آیا برای ثبت مقدار رند در " ' + CmbWage.Text + '" ماه " ' +
        cmbWageMounth.Text + '" مطمئن هستید؟';
      if get_response(msg) <> mrYes then
        Exit;
      save(Integer(CmbWage.Items.Objects[CmbWage.ItemIndex]),
        cmbWageMounth.ItemIndex + 1);
    end;
    qryPayableSalary.Active := false;
    CreateChildForm(TArchiveInfo2F, ArchiveInfo2F, mainF, 23);
  except
    Warn('اشكال در ثبت');
  end;
end;

procedure TrptPayableSalaryF.save;
var
  s: String;
begin
  s := 'RoundPrice';
  if RadioGroup1.ItemIndex = 1 then
    s := 'CalcPrice';
  BigMessageProgBar('در حال ثبت ...', qryPayableSalary.RecordCount);
  with qryPersonelDec do
  begin
    try
      Active := false;
      Active := true;
      qryPayableSalary.First;
      qryPayableSalary.DisableControls;
      while not qryPayableSalary.eof do
      begin
        if qryPayableSalary.FieldByName('selected').AsInteger <> 1 then
        begin
          qryPayableSalary.Next;
          Continue;
        end; // if
        if (qryPayableSalary.FieldByName('RoundPrice').AsInteger > 0) or
          (rgMinusPrice.ItemIndex > 0) then
        begin
          Insert;
          FieldByName('DecExtID').AsInteger :=
            GetANewCode('', 'Pay.PersonelDecExt', 'DecExtID');
          FieldByName('FormInfoID').AsInteger := FormInfoID;
          FieldByName('PersonelNo').AsInteger := qryPayableSalary.FieldByName
            ('PersonelNo').AsInteger;
          FieldByName('EmployeeAmount').AsCurrency :=
            Abs(qryPayableSalary.FieldByName(s).AsCurrency);
          FieldByName('FirstMounth').AsInteger := MonthNumbers;
          // + MonthNumbers;
          FieldByName('EndMounth').AsInteger := MonthNumbers; // + MonthNumbers;

          FieldByName('YearID').AsInteger := APPBank.Year;
          FieldByName('StartYear').AsInteger := yrcmbx1.YearID;
          FieldByName('EndYear').AsInteger := yrcmbx1.YearID;

          post;
        end; // if
        GoProgressBar(IntToStr(RecNo));
        qryPayableSalary.Next;
      end; // while
      try
        UpdateBatch;
        BigMessage('ثبت شد', 1);
      except
        Warn('اشكال در ثبت');
      end; // try
    finally
      qryPayableSalary.First;
      qryPayableSalary.EnableControls;
      Active := false;
      FreeReservedCodes(DMF.adcSalary);
      CloseMessage;
    end; // try
  end; // with
end;

procedure TrptPayableSalaryF.DeleteDecExt;
begin
  BigMessageProgBar('در حال ثبت ...', qryPayableSalary.RecordCount);
  with DMF.qryTmpTmpp do
  begin
    Active := false;
    SQL.Text := 'Delete Pay.PersonelDecExt where ';
    SQL.Add(' FormInfoID =' + IntToStr(FormInfoID));
    SQL.Add('and  FirstMounth=' + IntToStr(MonthNumbers));
    SQL.Add('and  EndMounth=' + IntToStr(MonthNumbers));

    SQL.Add('and  YearID=' + IntToStr(APPBank.Year));
    SQL.Add('and  StartYear=' + IntToStr(yrcmbx1.YearID));
    SQL.Add('and  EndYear=' + IntToStr(yrcmbx1.YearID));

    try
      BigMessage('' + IntToStr(ExecSQL) + ' مورد حذف شد', 1);
    except
      Warn('اشكال در ثبت');
    end; // try
    Active := false;
  end; // with
end;

procedure TrptPayableSalaryF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  Selected;
end;

procedure TrptPayableSalaryF.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  inherited;
  if DataCol = 0 then
  begin
    DBGrid1.Canvas.Rectangle(Rect);
    if qryPayableSalary.FieldByName('selected').AsInteger = 1 then
      // Column.Field.AsInteger = 1
      DBGrid1.Canvas.Draw(Rect.Left, Rect.Top, Image3.Picture.Graphic)
    else
      DBGrid1.Canvas.Draw(Rect.Left, Rect.Top, Image2.Picture.Graphic)
  end;

end;

procedure TrptPayableSalaryF.Selected;
begin
  with qryPayableSalary do
  begin
    Edit;
    FieldByName('selected').AsInteger :=
      IfThen(FieldByName('selected').AsInteger = 0, 1, 0);
    post;
  end;
end;

procedure TrptPayableSalaryF.qryPayableSalaryAfterOpen(DataSet: TDataSet);
begin
  inherited;
  actSelectAll.Execute
end;

procedure TrptPayableSalaryF.rgMinusPriceClick(Sender: TObject);
begin
  inherited;
  UpdateList;
end;

procedure TrptPayableSalaryF.actSelectInverseExecute(Sender: TObject);
begin
  inherited;
  with qryPayableSalary do
  begin
    DisableControls;
    First;
    while not eof do
    begin
      Edit;
      FieldByName('Selected').AsInteger :=
        IfThen(FieldByName('Selected').AsInteger = 0, 1, 0);
      post;
      Next;
    end; // while
    First;
    EnableControls;
  end; // with

end;

procedure TrptPayableSalaryF.actSelectAllExecute(Sender: TObject);
begin
  inherited;
  with qryPayableSalary do
  begin
    DisableControls;
    First;
    while not eof do
    begin
      Edit;
      FieldByName('Selected').AsInteger := 1;
      post;
      Next;
    end; // while
    First;
    EnableControls;
  end; // with
end;

procedure TrptPayableSalaryF.BitBtn8Click(Sender: TObject);
begin
  inherited;
  if CmbDecExt.ItemIndex = -1 then
    Exit;
  if CmbWage.ItemIndex = -1 then
    Exit;
  if get_response('آيا براي حذف مقدار رند از" ' + CmbDecExt.Text +
    ' "ماه جاري مطمئن هستيد؟') <> mrYes then
    Exit;
  if get_response('آيا براي حذف مقدار رند از" ' + CmbWage.Text +
    ' "ماه بـعد مطمئن هستيد؟') <> mrYes then
    Exit;
  var_glb_CurrentMonth := MonthNo;
  try
    DeleteDecExt(Integer(CmbDecExt.Items.Objects[CmbDecExt.ItemIndex]), 0);
    DeleteDecExt(Integer(CmbWage.Items.Objects[CmbWage.ItemIndex]), 1);
    qryPayableSalary.Active := false;
    CreateChildForm(TArchiveInfo2F, ArchiveInfo2F, mainF, 23);
  except
    Warn('اشكال در ثبت');
  end;

end;

end.
