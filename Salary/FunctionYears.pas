unit FunctionYears;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, Grids, Vcl.DBGrids, DBCtrls, DB, ADODB, ComCtrls, ppBands,
  ppClass, ppDB, ppCtrls, ppReport, ppStrtch, ppSubRpt, ppPrnabl, ppCache,
  ppProd, ppComm, ppRelatv, ppDBPipe, ppVar, Menus, ppModule,
  SumDBGrid, ppParameter, MyComboBoxUnit, Math, ppDesignLayer, System.ImageList,
  System.Actions, Filter_ADO_Const;

type
  TFunctionYearsF = class(Ttemplate2MDIF)
    BitBtn1: TBitBtn;
    BitBtn12: TBitBtn;
    BitBtn9: TBitBtn;
    newPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BtnDelete: TBitBtn;
    DataSetDelete1: TDataSetDelete;
    DataSetInsert2: TDataSetInsert;
    DataSetPost2: TDataSetPost;
    DataSetCancel2: TDataSetCancel;
    actPrint: TAction;
    actSort: TAction;
    actSendToExcel: TAction;
    DBGrid1: TDBGrid;
    BitBtn10: TBitBtn;
    qryFunctions: TADOQuery;
    qryFunctions_projectname_L1: TStringField;
    qryFunctions_projectname_L2: TStringField;
    qryFunctions_OfficeName_L1: TStringField;
    qryFunctions_OfficeName_L2: TStringField;
    SrcFunctions: TDataSource;
    qryFormsInfoOffice: TADOQuery;
    qryPersonel: TADOQuery;
    qryFunctions_PersonelName_L1: TStringField;
    qryFunctionsDecExtID: TIntegerField;
    qryFunctionsPersonelNo: TIntegerField;
    qryFunctionsFirstMounth: TWordField;
    qryFunctionsEndMounth: TWordField;
    qryFunctionsDayQuntity: TFloatField;
    qryFunctionsFormInfoID2: TIntegerField;
    qryFunctionsOfficeCode: TIntegerField;
    qryFormsInfoproject: TADOQuery;
    actCalc: TAction;
    actAllAdd: TAction;
    qrySumFunction: TADOQuery;
    qrySumFunctionPersonelNo: TIntegerField;
    qrySumFunctionProjectID: TIntegerField;
    qrySumFunctionOfficeCode: TIntegerField;
    BitBtn2: TBitBtn;
    BitBtn6: TBitBtn;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    PopList4Print: TPopupMenu;
    AllClikPop: TMenuItem;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppLblCompanyName: TppLabel;
    ppLabel3: TppLabel;
    ppSysVarPageNo: TppSystemVariable;
    ppLblPrintDate: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppLine11: TppLine;
    ppLin4Position: TppLine;
    ppFooterBand1: TppFooterBand;
    ppShape2: TppShape;
    ppLabel4: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppShape3: TppShape;
    ppLabel2: TppLabel;
    qryFunctionsFormInfoID: TIntegerField;
    qry_init: TADOQuery;
    actFilter: TAction;
    PopMnuDelete: TPopupMenu;
    N1: TMenuItem;
    DeleteGroup: TMenuItem;
    qryFunctionsProjectInfoID: TIntegerField;
    qryFunctionsOfficeInfoID: TIntegerField;
    qrySumFunctionProjectInfoID: TIntegerField;
    qrySumFunctionOfficeInfoID: TIntegerField;
    qryFunctionsProcCode: TIntegerField;
    qryProcCode: TADOQuery;
    qryFunctions_ProcName: TStringField;
    qrySumFunctionProcCode: TIntegerField;
    qryFunctions_ProcID: TIntegerField;
    okPanel: TPanel;
    BitBtn8: TBitBtn;
    BitBtn18: TBitBtn;
    PopMnuOther: TPopupMenu;
    N2: TMenuItem;
    actGetExcel: TAction;
    Excel1: TMenuItem;
    qrySumFunctionSumFunDay: TFloatField;
    SumGrid1: TSumGrid;
    qryFunctionsName: TStringField;
    qryFunctionsEndDate: TStringField;
    qryFunctionsYearID: TIntegerField;
    qryFunctionsStartYear: TIntegerField;
    qryFunctionsEndYear: TIntegerField;
    yrcmbx1: TYearComboBox;
    ALLClick: TMenuItem;
    N3: TMenuItem;
    Panel1: TPanel;
    LblEndDate2: TLabel;
    LblEndDate: TLabel;
    qryFunctionsNumberOfMonth: TIntegerField;
    qryFunctionsEmployeeAmount: TBCDField;
    qryFunctionsEmployerAmount: TBCDField;
    qryFunctionsPaymentLoan: TBCDField;
    PopCalc: TPopupMenu;
    MenuItem1: TMenuItem;
    N4: TMenuItem;
    mnuOffice: TMenuItem;
    mnuProject: TMenuItem;
    qryFunctionsleaveCount: TFloatField;
    qryFunctionsleavePrice: TBCDField;
    procedure qryFunctionsAfterInsert(DataSet: TDataSet);
    procedure qryFunctionsAfterPost(DataSet: TDataSet);
    procedure qryFunctionsAfterDelete(DataSet: TDataSet);
    procedure qryFunctionsBeforeDelete(DataSet: TDataSet);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure qryFunctionsBeforeCancel(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure SrcFunctionsStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actCalcExecute(Sender: TObject);
    procedure actAllAddExecute(Sender: TObject);
    procedure qryFunctionsAfterEdit(DataSet: TDataSet);
    procedure actPrintExecute(Sender: TObject);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
    procedure AllClikPopClick(Sender: TObject);
    procedure qryFunctionsBeforePost(DataSet: TDataSet);
    procedure actFilterExecute(Sender: TObject);
    procedure BtnDeleteClick(Sender: TObject);
    procedure DeleteGroupClick(Sender: TObject);
    procedure qryFunctionsProjectInfoIDChange(Sender: TField);
    procedure qryFunctionsOfficeInfoIDChange(Sender: TField);
    procedure actGetExcelExecute(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure yrcmbx1YearChangeID(Sender: TObject);
    procedure ALLClickClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BitBtn2Click(Sender: TObject);
  private
    FormType: Byte;
    DbgrdOption: set of TDBGridOption;
    FormInfo4Function: Integer;
    Alternative: Boolean;
    procedure gridkeyenter(Sender: TObject; var Key: Char);
    procedure UpdateqrySumFunction;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FunctionYearsF: TFunctionYearsF;

implementation

uses DM, searchCode_ADO, mmessage, GlobalPro,
  sndkey32, SalaryFunctions, search2, sort2,
  filter_ADO, FilterClass_ADO, GetExcel;
{$R *.dfm}

procedure TFunctionYearsF.gridkeyenter(Sender: TObject; var Key: Char);
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
            nextIndex := 4;
          3:
            nextIndex := 4;
          4:
            nextIndex := 6;
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

      #32, #157: if curIndex in [0, 2, 4, 6] then
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

procedure TFunctionYearsF.qryFunctionsAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('حذف شد.', 1);
end;

procedure TFunctionYearsF.qryFunctionsBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if Trim(qryFunctionsEndDate.AsString) <> EmptyStr then
  begin
    Warn('از اطلاعات كاركرد در محاسبه عيدي و سنوات استفاده شده و بايگاني مي باشد'
      + #13#10 + 'مجاز به حذف نمي باشيد.');
    Abort;
  end;

  if DataSet.FieldByName('EmployeeAmount').AsFloat +
    DataSet.FieldByName('EmployerAmount').AsFloat <> 0 then
  begin
    Warn('از اطلاعات كاركرد در محاسبه عيدي و سنوات استفاده شده،جهت حذف بايد در فرم'
      + #13#10 + '"محاسبه عيدي و سنوات" حذف محاسبه را بزنيد.');
    Abort;
  end;
  if get_response('آيا براي حذف اين فرم مطمئن هستيد؟') <> mrYes then
    Abort;

end;

procedure TFunctionYearsF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  // -------- move to newpanel
  // if newPanel.Visible then
  // BitBtn3.SetFocus
  // else
  gridkeyenter(Sender, Key);
end;

procedure TFunctionYearsF.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if ((Sender as TDBGrid).DataSource.DataSet.State in dseditmodes) then
    exit;
  if ((Sender as TDBGrid).DataSource.DataSet.FieldByName('EndDate').AsString >
    '0000/00/00') then
    DBGrid1.Canvas.Font.Color := LblEndDate.Color
  else
    DBGrid1.Canvas.Font.Color := lblCaption.Font.Color;
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFunctionYearsF.DBGrid1EditButtonClick(Sender: TObject);
var
  // c: String;
  aDataSet: TDataSet;
  TmpChar: Char;
  i: Smallint;
  s: Boolean;
  sqlText: String;
  Results: array [0 .. 10] of String;
  // theFields: Variant;
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
        sqlText :=
          'SELECT  PersonelNo, name_L1+'' ''+lastName_L1 as name_L1, name_L2+'' ''+ lastName_L2 as name_L2 FROM  Pay.PersonelInfo ';
        s := searchCode_ADOF.SearchCode2(DMF.adcSalary, 'مشخصات پرسنل', sqlText,
          ['شماره پرسنل', 'مشخصات پرسنل ', 'name'], Results,
          [100, 100, 100], alLeft);

        if s then
        begin
          if not(aDataSet.State in dseditmodes) then
            aDataSet.Edit;
          aDataSet.FieldByName('PersonelNo').AsString := Results[0];
          TmpChar := #13;
          gridkeyenter(Sender, TmpChar);
        end; // if
      end; // 0
    2:
      begin
        s := searchCode_ADOF.SearchCode2(DMF.adcSalary, 'واحد سازماني',
          'SELECT      InfoID, InfoName_L1, InfoName_L2 ' +
          'FROM Pay.FormsInfo WHERE     (FormType = 12) ',
          ['كد ', 'نام واحد سازماني', 'نام واحد سازماني'], Results,
          [20, 100, 100], alLeft);
        if s then
        begin
          if not(qryFunctions.State in dseditmodes) then
            qryFunctions.Edit;
          qryFunctions.FieldByName('OfficeInfoID').AsString := Results[0];
        end; // if
      end; // 2

    4:
      begin
        sqlText :=
          'SELECT  InfoID, InfoName_L1, InfoName_L2 FROM Pay.FormsInfo ' +
          ' WHERE  FormType = ' + IntToStr(FormInfo4Function); // 40
        s := searchCode_ADOF.SearchCode2(DMF.adcSalary, ' كد و سطح عنوان قبلي ',
          sqlText, ['كد', 'عنوان 1', 'InfoName'], Results,
          [50, 100, 100], alLeft);
        if s then
        begin
          if not(aDataSet.State in dseditmodes) then
            aDataSet.Edit;
          aDataSet.FieldByName('ProjectInfoID').AsString := Results[0];
        end; // if
      end; // 4

    6:
      begin
        s := searchCode_ADOF.SearchCode2(DMF.adcSalary, 'كد محصول',
          'SELECT     FormInfoID, InfoID, InfoName_L1, InfoName_L2 ' +
          'FROM Pay.FormsInfo WHERE     (FormType = 67) ',
          ['', 'كد ', 'كد محصول', 'كد محصول'], Results,
          [0, 20, 100, 100], alLeft);
        if s then
        begin
          if not(qryFunctions.State in dseditmodes) then
            qryFunctions.Edit;
          qryFunctions.FieldByName('ProcCode').AsString := Results[0];
        end;
      end; // 8

  end; // case

end;

procedure TFunctionYearsF.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TFunctionYearsF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryFunctions);
end;

procedure TFunctionYearsF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryFunctions);
end;

procedure TFunctionYearsF.qryFunctionsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('DecExtID').AsInteger :=
    GetANewCode('', 'Pay.PersonelDecExt', 'DecExtID', DMF.adcSalary);
  DataSet.FieldByName('FirstMounth').AsInteger := 13;
  DataSet.FieldByName('EndMounth').AsInteger := 13;
  DataSet.FieldByName('FormInfoID').AsInteger :=
    qry_init.FieldByName('forminfoid').AsInteger;
  DataSet.FieldByName('YearID').AsInteger := APPBank.Year;
  DataSet.FieldByName('ProjectInfoID').AsInteger := 0;
  DataSet.FieldByName('FormInfoID2').AsInteger := 0;
  DBGrid1.SetFocus;
end;

procedure TFunctionYearsF.qryFunctionsAfterPost(DataSet: TDataSet);
begin
  inherited;
  BigMessage('ثبت شد.', 1)
end;

procedure TFunctionYearsF.qryFunctionsBeforeCancel(DataSet: TDataSet);
begin
  inherited;
  if get_response('تغييرات لغو شوند؟') <> mrYes then
    Abort
end;

procedure TFunctionYearsF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1, IntToStr(FormType));
end;

procedure TFunctionYearsF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 4, True, IntToStr(FormType));
end;

procedure TFunctionYearsF.SrcFunctionsStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qryFunctions.State in dseditmodes;
  newPanel.Visible := not okPanel.Visible;
  btnReject.Cancel := newPanel.Visible;
  DBGrid1.ReadOnly := newPanel.Visible;
  FreeReservedCodes(DMF.adcSalary);
  if not okPanel.Visible then
    DBGrid1.Options := DbgrdOption + [dgMultiSelect]
  else
    DBGrid1.Options := DbgrdOption - [dgMultiSelect];
end;

procedure TFunctionYearsF.yrcmbx1YearChangeID(Sender: TObject);
begin
  inherited;
  with qryFunctions Do
  begin
    Active := false;
    // Parameters.ParamByName('YearID').Value:=APPBank.Year;
    Parameters.ParamByName('StartYear').Value := yrcmbx1.YearID;
    Active := True;
  end; // if
end;

procedure TFunctionYearsF.FormCreate(Sender: TObject);
begin
  inherited;
  SetLookUpCash(qryFunctions);
  yrcmbx1.YearsParam := APPBank.Year;
  yrcmbx1.YearID := APPBank.Year; // opt.Year.ToInteger;
  qryFormsInfoOffice.Active := false;
  qryFormsInfoOffice.Active := True;
  qryProcCode.Active := True;
  FormInfo4Function := GETProject4Function;
  with qryFormsInfoproject do
  begin
    Active := false;
    Parameters.ParamByName('FormInfo4Function').Value := FormInfo4Function;
    Active := True;
  end;

  with qry_init do
  begin
    Active := false;
    Active := True;
    if FieldByName('forminfoid').IsNull then
      Warn('كاركرد سال جاري در تنظيمات فعال نشده.‏', mtInformation);
  end; // with
  with qryFunctions do
  begin
    Active := false;
    Parameters.ParamByName('forminfoid').Value :=
      qry_init.FieldByName('forminfoid').AsInteger;
    Parameters.ParamByName('YearIDFrom').Value := APPBank.Year;
    Parameters.ParamByName('YearIDTo').Value := APPBank.Year;
    Parameters.ParamByName('StartYear').Value := yrcmbx1.YearID;
    Active := True;
  end; // with
  DbgrdOption := [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines,
    dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit];

  DBGrid1.Options := DbgrdOption + [dgMultiSelect]
end;

procedure TFunctionYearsF.UpdateqrySumFunction;
begin
  With qrySumFunction do
  begin
    Active := false;
    SQL.Text :=
      'SELECT Functions.PersonelNo, SUM(Functions.FunctionDay)+isnull(SUM(Functions.SickDay),0)';
    SQL.Add('-ISNULL( PersonelDecExt.DayQuntity,0) AS SumFunDay');

    if mnuOffice.Checked then
      SQL.Add(',Functions.OfficeCode,FormsInfo_Office.InfoID AS OfficeInfoID')
    else
      SQL.Add(',0 AS OfficeCode,0 AS OfficeInfoID');

    if mnuProject.Checked then
      SQL.Add(', Functions.ProjectID, FormsInfo.InfoID AS ProjectInfoID, Functions.ProcCode')
    else
      SQL.Add(', 0 AS ProjectID, 0 AS ProjectInfoID, 0 AS ProcCode');

    SQL.Add('FROM Pay.Functions INNER JOIN');
    SQL.Add('Pay.PersonelInfo ON Functions.PersonelNo = PersonelInfo.PersonelNo LEFT OUTER JOIN');
    SQL.Add('Pay.FormsInfo ON Functions.ProjectID = FormsInfo.FormInfoID LEFT OUTER JOIN');
    SQL.Add('Pay.FormsInfo AS FormsInfo_Office ON Functions.OfficeCode = FormsInfo_Office.FormInfoID LEFT OUTER JOIN');
    SQL.Add('Pay.FormsInfo AS FormsInfo_State ON PersonelInfo.PersonelState = FormsInfo_State.FormInfoID');
    SQL.Add('LEFT OUTER JOIN');
    SQL.Add('(SELECT OfficeCode,PersonelNo,SUM(DayQuntity) AS DayQuntity FROM Pay.PersonelDecExt');
    SQL.Add('WHERE (FirstMounth = 13) AND (EndMounth = 13)');
    SQL.Add('AND (CAST( LEFT( RIGHT(EndDate,5),2) AS INT) BETWEEN :Mounth2From AND :Mounth2To)');
    SQL.Add('AND (YearID = :YearID2 )');
    SQL.Add('GROUP BY OfficeCode,PersonelNo) PersonelDecExt ON');
    SQL.Add('PersonelInfo.PersonelNo = PersonelDecExt.PersonelNo');
    SQL.Add('AND Functions.OfficeCode = PersonelDecExt.OfficeCode');
    SQL.Add('INNER JOIN (SELECT Interdicts.PersonelNo, FormsInfo.InfoID AS');
    SQL.Add('EmployTypeInfoID');
    SQL.Add('FROM Pay.Interdicts INNER JOIN');
    SQL.Add('Pay.FormsInfo ON Pay.Interdicts.EmployTypeID =');
    SQL.Add('FormsInfo.FormInfoID');
    SQL.Add('WHERE (Interdicts.State < 2)AND (FormsInfo.InfoID');
    SQL.Add('BETWEEN :EmployTypeIDFrom AND :EmployTypeIDTo)');
    SQL.Add(')AS Interdicts ON');
    SQL.Add('Functions.PersonelNo = Interdicts.PersonelNo');
    SQL.Add('');
    SQL.Add('');
    SQL.Add('WHERE (Functions.YearID = :YearID )');
    SQL.Add('');
    SQL.Add('AND ( Functions.PersonelNo BETWEEN :PersonelNoFrom AND :PersonelNoTo)');
    SQL.Add('/*AND Functions.PersonelNo not in');
    SQL.Add('(SELECT PersonelNo');
    SQL.Add('FROM Pay.PersonelDecExt');
    SQL.Add('WHERE (FirstMounth = 13) AND (EndMounth = 13) AND (LTRIM(EndDate) <> '''')');
    SQL.Add(')*/');
    SQL.Add('AND (FormsInfo_State.InfoID BETWEEN :PersonelStateFrom AND :PersonelStateTo)');
    SQL.Add('AND (FormsInfo_Office.InfoID BETWEEN :OfficeCodeFrom AND :OfficeCodeTo)');
    SQL.Add('AND (Mounth BETWEEN :MounthFrom AND :MounthTo)');
    SQL.Add('');
    SQL.Add('');
    SQL.Add('');
    SQL.Add('GROUP BY Functions.PersonelNo');
    if mnuOffice.Checked then
      SQL.Add(', Functions.OfficeCode, FormsInfo_Office.InfoID ');
    if mnuProject.Checked then
      SQL.Add(', Functions.ProjectID, FormsInfo.InfoID,Functions.ProcCode');
    SQL.Add(',DayQuntity');
    SQL.Add('');
    SQL.Add('HAVING ( SUM(Functions.FunctionDay)+isnull(SUM(Functions.SickDay),0)- isnull( PersonelDecExt.DayQuntity,0) > 0)');
    SQL.Add('');
    SQL.Add('');

    Parameters.ParamByName('EmployTypeIDFrom').Value :=
      GetcFrom(myParams.ParamValues['EmployTypeID'], ftInteger);
    Parameters.ParamByName('EmployTypeIDTo').Value :=
      GetcTo(myParams.ParamValues['EmployTypeID'], ftInteger);

    Parameters.ParamByName('PersonelNoFrom').Value :=
      GetcFrom(myParams.ParamValues['PersonelNo'], ftInteger);
    Parameters.ParamByName('PersonelNoTo').Value :=
      GetcTo(myParams.ParamValues['PersonelNo'], ftInteger);
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Parameters.ParamByName('YearID2').Value := APPBank.Year;

    Parameters.ParamByName('OfficeCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['OfficeCode'], ftInteger);
    Parameters.ParamByName('OfficeCodeTo').Value :=
      GetcTo(myParams.ParamValues['OfficeCode'], ftInteger);

    Parameters.ParamByName('PersonelStateFrom').Value :=
      GetcFrom(myParams.ParamValues['PersonelState'], ftInteger);
    Parameters.ParamByName('PersonelStateTo').Value :=
      GetcTo(myParams.ParamValues['PersonelState'], ftInteger);

    Parameters.ParamByName('MounthFrom').Value :=
      GetcFrom(myParams.ParamValues['Mounth'], ftInteger);
    Parameters.ParamByName('MounthTo').Value :=
      GetcTo(myParams.ParamValues['Mounth'], ftInteger);

    Parameters.ParamByName('Mounth2From').Value :=
      GetcFrom(myParams.ParamValues['Mounth'], ftInteger);
    Parameters.ParamByName('Mounth2To').Value :=
      GetcTo(myParams.ParamValues['Mounth'], ftInteger);

    Active := True;
    DisableControls;
  end; // With
end;

procedure TFunctionYearsF.actCalcExecute(Sender: TObject);
var
  DecExtID: Integer;
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if (myParams.FindParam('PersonelNo') = nil) then
    exit;
  if qryFunctions.RecordCount > 0 then
    if get_response
      ('آيا براي حذف محاسبات و محاسبه دوباره از كاركرد ماهيانه در محدوده انتخاب شده مطمئن هستيد.‏')
      <> mrYes then
      exit;

  With DMF.qryTmpTmpp do
  begin
    DisableControls;
    Active := false;
    // SQL.Text :=
    // ' delete   PersonelDecExt WHERE(FirstMounth=13)AND(EndMounth=13)';

    SQL.Text := 'DELETE FROM Pay.PersonelDecExt';
    SQL.Add('FROM Pay.PersonelDecExt INNER JOIN');
    SQL.Add('Pay.FormsInfo AS FormsInfo_Office ON PersonelDecExt.OfficeCode = FormsInfo_Office.FormInfoID INNER JOIN');
    SQL.Add('Pay.PersonelInfo ON PersonelDecExt.PersonelNo = PersonelInfo.PersonelNo INNER JOIN');
    SQL.Add('Pay.FormsInfo AS FormsInfo_State ON PersonelInfo.PersonelState = FormsInfo_State.FormInfoID');
    SQL.Add('WHERE (PersonelDecExt.FirstMounth = 13)');
    SQL.Add('AND (PersonelDecExt.EndMounth = 13)');
    SQL.Add('AND (FormsInfo_Office.InfoID BETWEEN :OfficeCodeFrom AND :OfficeCodeTo)');
    SQL.Add('AND (FormsInfo_State.InfoID BETWEEN :PersonelStateFrom AND :PersonelStateTo)');

    SQL.Add('AND (PersonelDecExt.PersonelNo BETWEEN :PersonelNoFrom AND :PersonelNoTo)');
    SQL.Add('AND (PersonelDecExt.FormInfoID = ' + qry_init.FieldByName
      ('FormInfoID').AsString + ')');

    SQL.Add('AND (PersonelDecExt.EndDate IS NULL or ltrim(rtrim(EndDate)) = '''' )');
    SQL.Add('AND ISNULL(EmployeeAmount,0)+ISNULL(EmployerAmount,0)=0 ');


    SQL.Add('AND  (PersonelDecExt.YearID = :YearID )');
    Parameters.ParamByName('YearID').Value := APPBank.Year;


    Parameters.ParamByName('PersonelNoFrom').Value :=
      GetcFrom(myParams.ParamValues['PersonelNo'], ftInteger);
    Parameters.ParamByName('PersonelNoTo').Value :=
      GetcTo(myParams.ParamValues['PersonelNo'], ftInteger);

    Parameters.ParamByName('OfficeCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['OfficeCode'], ftInteger);
    Parameters.ParamByName('OfficeCodeTo').Value :=
      GetcTo(myParams.ParamValues['OfficeCode'], ftInteger);

    Parameters.ParamByName('PersonelStateFrom').Value :=
      GetcFrom(myParams.ParamValues['PersonelState'], ftInteger);
    Parameters.ParamByName('PersonelStateTo').Value :=
      GetcTo(myParams.ParamValues['PersonelState'], ftInteger);

    ExecSQL;

    UpdateqrySumFunction;
    SQL.Text :=
      'SELECT * FROM Pay.PersonelDecExt WHERE(FirstMounth=13)AND(EndMounth=13)';
    // SQL.Text := 'SELECT PersonelDecExt.* ';
    // SQL.Add('FROM Pay.PersonelDecExt INNER JOIN');
    // SQL.Add('Pay.FormsInfo AS FormsInfo_Office ON PersonelDecExt.OfficeCode = FormsInfo_Office.FormInfoID INNER JOIN');
    // SQL.Add('Pay.PersonelInfo ON PersonelDecExt.PersonelNo = PersonelInfo.PersonelNo INNER JOIN');
    // SQL.Add('Pay.FormsInfo AS FormsInfo_State ON PersonelInfo.PersonelState = FormsInfo_State.FormInfoID');
    // SQL.Add('WHERE (PersonelDecExt.FirstMounth = 13)');
    // SQL.Add('AND (PersonelDecExt.EndMounth = 13)');
    // SQL.Add('AND (FormsInfo_Office.InfoID BETWEEN :OfficeCodeFrom AND :OfficeCodeTo)');
    // SQL.Add('AND (FormsInfo_State.InfoID BETWEEN :PersonelStateFrom AND :PersonelStateTo)');

    SQL.Add('AND (PersonelDecExt.PersonelNo BETWEEN :PersonelNoFrom AND :PersonelNoTo)');

    Parameters.ParamByName('PersonelNoFrom').Value :=
      GetcFrom(myParams.ParamValues['PersonelNo'], ftInteger);
    Parameters.ParamByName('PersonelNoTo').Value :=
      GetcTo(myParams.ParamValues['PersonelNo'], ftInteger);

    // Parameters.ParamByName('OfficeCodeFrom').Value :=
    // GetcFrom(myParams.ParamValues['OfficeCode'], ftInteger);
    // Parameters.ParamByName('OfficeCodeTo').Value :=
    // GetcTo(myParams.ParamValues['OfficeCode'], ftInteger);
    //
    // Parameters.ParamByName('PersonelStateFrom').Value :=
    // GetcFrom(myParams.ParamValues['PersonelState'], ftInteger);
    // Parameters.ParamByName('PersonelStateTo').Value :=
    // GetcTo(myParams.ParamValues['PersonelState'], ftInteger);

    Active := True;
    DecExtID := GetANewCode('', 'Pay.PersonelDecExt', 'DecExtID',
      DMF.adcSalary);
    while not qrySumFunction.Eof do
    begin
      Insert;
      FieldByName('DecExtID').AsInteger := DecExtID;
      FieldByName('FirstMounth').AsInteger := 13;
      FieldByName('EndMounth').AsInteger := 13;
      FieldByName('YearID').AsInteger := APPBank.Year;
      FieldByName('StartYear').AsInteger := yrcmbx1.YearID;
      FieldByName('EndYear').AsInteger := yrcmbx1.YearID;

      FieldByName('FormInfoID').AsInteger := qry_init.FieldByName('forminfoid')
        .AsInteger;
      FieldByName('DayQuntity').Value := qrySumFunction.FieldByName
        ('SumFunDay').AsFloat;
      FieldByName('PersonelNo').Value := qrySumFunction.FieldByName
        ('PersonelNo').AsInteger;
      FieldByName('FormInfoID2').AsInteger := qrySumFunction.FieldByName
        ('ProjectID').AsInteger;
      FieldByName('OfficeCode').Value := qrySumFunction.FieldByName
        ('OfficeCode').AsInteger;
      FieldByName('ProjectInfoID').Value := qrySumFunction.FieldByName
        ('ProjectInfoID').AsInteger;
      FieldByName('OfficeInfoID').Value := qrySumFunction.FieldByName
        ('OfficeInfoID').AsInteger;
      FieldByName('ProcCode').Value := qrySumFunction.FieldByName('ProcCode')
        .AsInteger;
      Inc(DecExtID);
      qrySumFunction.Next;
    end; // while
    if DMF.qryTmpTmpp.State in dseditmodes then
      Post;
    EnableControls;
    Active := false;
  end; // With
  qrySumFunction.EnableControls;
  BigMessage(IntToStr(qrySumFunction.RecordCount) + ' مورد ثبت شد.', 1);
  qrySumFunction.Active := false;
  qryFunctions.Active := false;
  qryFunctions.Active := True;
  FreeReservedCodes(DMF.adcSalary);
end;

procedure TFunctionYearsF.actAllAddExecute(Sender: TObject);
var
  PersonelNo: Integer;
  addFun: Double;
  s: string;
begin
  inherited;
  if Alternative then
    s := get_box('جایگزین کلی', 'کل کارکرد به عدد وارد شده تغییر یابد؟‏', '365')
  else
    s := get_box('تغيير كلي',
      'به اولين ركورد هر پرسنل چه تعداد روز اضافه شود؟‏', '29');

  if s = EmptyStr then
    exit;

  addFun := StrToFloat(s);
  With qryFunctions do
  begin
    DisableControls;
    AfterPost := nil;
    First;
    PersonelNo := 0;
    while not Eof do
    begin
      if (PersonelNo <> FieldByName('PersonelNo').AsInteger) then
        PersonelNo := 0;
      if PersonelNo = 0 then
        if Trim(qryFunctionsEndDate.AsString) = EmptyStr then
        begin
          Edit;
          FieldByName('DayQuntity').Value :=
            ifthen(Alternative, 0, FieldByName('DayQuntity').AsFloat) + addFun;
          PersonelNo := FieldByName('PersonelNo').AsInteger;
        end;
      Next;
    end; // while
    EnableControls;
    AfterPost := qryFunctionsAfterPost;
    BigMessage(IntToStr(RecordCount) + ' مورد ثبت شد.', 1);
  end; // With
end;

procedure TFunctionYearsF.qryFunctionsAfterEdit(DataSet: TDataSet);
begin
  inherited;
  DBGrid1.SetFocus;
end;

procedure TFunctionYearsF.actPrintExecute(Sender: TObject);
begin
  inherited;
  // FunctionYearsFPersonelNo,FunctionYearsF,FunctionYearsFProject,FunctionYearsFOffice
  try
    MakeMenuItem(59, AllClikPopClick, PopList4Print);
    PopList4Print.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
  finally
  end;
end;

procedure TFunctionYearsF.ALLClickClick(Sender: TObject);
begin
  inherited;
  Alternative := (Sender as TMenuItem).Tag = 1;
  actAllAdd.Execute
end;

procedure TFunctionYearsF.AllClikPopClick(Sender: TObject);
var
  ReportName: String;
begin
  inherited;
  ReportName := (Sender as TMenuItem).Hint;
  if pos('Office', ReportName) <> 0 then
    qryFunctions.Sort := 'OfficeCode';
  if pos('Project', ReportName) <> 0 then
    qryFunctions.Sort := 'FormInfoID2';
  InitReportFile(ppReport1, ReportName);

end;

procedure TFunctionYearsF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TFunctionYearsF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TFunctionYearsF.ppSysVarPageNoGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TFunctionYearsF.qryFunctionsBeforePost(DataSet: TDataSet);
begin
  inherited;
  if DataSet.FieldByName('DayQuntity').AsFloat = 0 then
  begin
    Warn('روزهاي كاركرد نمي تواند صفر باشد.!‏');
    Abort;
  end;
  DataSet.FieldByName('StartYear').AsInteger := yrcmbx1.YearID;
  DataSet.FieldByName('EndYear').AsInteger := yrcmbx1.YearID;
  if not CheckRequiredFields(DataSet) then
    Abort;

end;

procedure TFunctionYearsF.actFilterExecute(Sender: TObject);
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

      AddItem(DMF.adcSalary, 'PersonelState', 'وضعيت پرسنل ', 'كد', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT InfoID, InfoName_L1 FROM Pay.FormsInfo WHERE (FormType = 3)',
        'SELECT Min(InfoID),Max(InfoID) FROM Pay.FormsInfo WHERE (FormType = 3)');

      AddItem(DMF.adcSalary, 'Mounth', 'ماه', 'ماه', ftInteger, dvMinMax, '',
        '', ciLookup,
        'SELECT InfoID, InfoName_L1 FROM Pay.FormsInfo WHERE (FormType = 17)',
        'SELECT MIN(InfoID),MAX(InfoID) FROM Pay.FormsInfo WHERE (FormType = 17)');

      if ShowModal = mrOk then
      begin
        GetFilterString;
      end; // if
    finally
      Free;
    end; // try
  end; // end
end;

procedure TFunctionYearsF.BtnDeleteClick(Sender: TObject);
begin
  inherited;
  PopMnuDelete.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TFunctionYearsF.DeleteGroupClick(Sender: TObject);
begin
  inherited;
  actFilter.Execute;
  if get_response('آيا براي حذف محاسبات در محدوده انتخاب شده مطمئن هستيد.‏') <> mrYes
  then
    exit;
  With DMF.qryTmpTmpp do
  begin
    DisableControls;
    Active := false;
    // SQL.Text :=
    // ' delete   PersonelDecExt WHERE(FirstMounth=13)AND(EndMounth=13)';

    SQL.Text := 'DELETE FROM Pay.PersonelDecExt';
    SQL.Add('FROM Pay.PersonelDecExt INNER JOIN');
    SQL.Add('Pay.FormsInfo AS FormsInfo_Office ON PersonelDecExt.OfficeCode = FormsInfo_Office.FormInfoID INNER JOIN');
    SQL.Add('Pay.PersonelInfo ON PersonelDecExt.PersonelNo = PersonelInfo.PersonelNo INNER JOIN');
    SQL.Add('Pay.FormsInfo AS FormsInfo_State ON PersonelInfo.PersonelState = FormsInfo_State.FormInfoID');
    SQL.Add('WHERE (PersonelDecExt.FirstMounth = 13)');
    SQL.Add('AND (PersonelDecExt.EndMounth = 13)');
    SQL.Add('AND (FormsInfo_Office.InfoID BETWEEN :OfficeCodeFrom AND :OfficeCodeTo)');
    SQL.Add('AND (FormsInfo_State.InfoID BETWEEN :PersonelStateFrom AND :PersonelStateTo)');

    SQL.Add('AND (PersonelDecExt.PersonelNo BETWEEN :PersonelNoFrom AND :PersonelNoTo)');
    SQL.Add('AND (ISNULL(EmployeeAmount,0) + ISNULL(EmployerAmount,0) = 0  )');
    SQL.Add('AND (PersonelDecExt.FormInfoID = ' + qry_init.FieldByName
      ('FormInfoID').AsString + ')');

    SQL.Add('AND (EndDate IS NULL or ltrim(rtrim(EndDate)) = '''' )');
    SQL.Add('AND  (PersonelDecExt.YearID = :YearID )');
    Parameters.ParamByName('YearID').Value := APPBank.Year;

    Parameters.ParamByName('PersonelNoFrom').Value :=
      GetcFrom(myParams.ParamValues['PersonelNo'], ftInteger);
    Parameters.ParamByName('PersonelNoTo').Value :=
      GetcTo(myParams.ParamValues['PersonelNo'], ftInteger);

    Parameters.ParamByName('OfficeCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['OfficeCode'], ftInteger);
    Parameters.ParamByName('OfficeCodeTo').Value :=
      GetcTo(myParams.ParamValues['OfficeCode'], ftInteger);

    Parameters.ParamByName('PersonelStateFrom').Value :=
      GetcFrom(myParams.ParamValues['PersonelState'], ftInteger);
    Parameters.ParamByName('PersonelStateTo').Value :=
      GetcTo(myParams.ParamValues['PersonelState'], ftInteger);

    BigMessage(IntToStr(ExecSQL) + ' مورد حذف شد.', 1);
    Active := false;
    qryFunctions.Requery();
  end; // With

end;

procedure TFunctionYearsF.qryFunctionsProjectInfoIDChange(Sender: TField);
begin
  inherited;
  qryFunctions.FieldByName('FormInfoID2').Value :=
    qryFormsInfoproject.Lookup('InfoID',
    qryFunctions.FieldByName('ProjectInfoID').Value, 'FormInfoID');
  if qryFunctions.FieldByName('FormInfoID2').IsNull then
    qryFunctions.FieldByName('FormInfoID2').Value := 0;

end;

procedure TFunctionYearsF.qryFunctionsOfficeInfoIDChange(Sender: TField);
begin
  inherited;
  qryFunctions.FieldByName('OfficeCode').Value :=
    qryFormsInfoOffice.Lookup('InfoID', qryFunctions.FieldByName('OfficeInfoID')
    .Value, 'FormInfoID');
  if qryFunctions.FieldByName('OfficeCode').IsNull then
    qryFunctions.FieldByName('OfficeCode').Value := 0;

end;

procedure TFunctionYearsF.actGetExcelExecute(Sender: TObject);
begin
  inherited;
  try
    qryFunctions.AfterPost := nil;
    GetExcelF.ShowImPortExcel(qryFunctions);
  finally
    qryFunctions.AfterPost := qryFunctionsAfterPost;
  end;
end;

procedure TFunctionYearsF.BitBtn2Click(Sender: TObject);
begin
  inherited;
  PopCalc.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TFunctionYearsF.BitBtn6Click(Sender: TObject);
begin
  inherited;
  PopMnuOther.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

end.
