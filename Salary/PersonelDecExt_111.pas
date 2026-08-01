unit PersonelDecExt_111;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DBCtrls, DB, ADODB, ComCtrls, ppBands, MaskUtils,
  ppClass, ppDB, ppCtrls, ppReport, ppStrtch, ppSubRpt, ppPrnabl, ppCache,
  ppProd, ppComm, ppRelatv, ppDBPipe, ppVar, Menus, ppModule,
  SumDBGrid, ppParameter, MyComboBoxUnit, ToolWin, Mask, ppDesignLayer,
  System.ImageList, System.Actions, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  CedarDbGrid;

type
  TPersonelDecExt_111F = class(Ttemplate2MDIF)
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
    BitBtn10: TBitBtn;
    qryPersonelDecExt: TADOQuery;
    qryPersonelDecExt_projectname_L1: TStringField;
    qryPersonelDecExt_projectname_L2: TStringField;
    qryPersonelDecExt_OfficeName_L1: TStringField;
    qryPersonelDecExt_OfficeName_L2: TStringField;
    srcPersonelDecExt: TDataSource;
    qryFormsInfoOffice: TADOQuery;
    qryPersonel: TADOQuery;
    qryPersonelDecExt_PersonelName_L1: TStringField;
    qryPersonelDecExtDecExtID: TIntegerField;
    qryPersonelDecExtPersonelNo: TIntegerField;
    qryPersonelDecExtFirstMounth: TWordField;
    qryPersonelDecExtEndMounth: TWordField;
    qryPersonelDecExtFormInfoID2: TIntegerField;
    qryPersonelDecExtOfficeCode: TIntegerField;
    qryFormsInfoproject: TADOQuery;
    actCalc: TAction;
    actArchive: TAction;
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
    plblCaption: TppLabel;
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
    qryPersonelDecExtFormInfoID: TIntegerField;
    qryFormsInfo: TADOQuery;
    qryPersonelDecExtEmployeeAmount: TBCDField;
    qryPersonelDecExtEmployerAmount: TBCDField;
    actFilter: TAction;
    PopMnuDelete: TPopupMenu;
    N1: TMenuItem;
    DeleteGroup: TMenuItem;
    qryPersonelDecExtProjectInfoID: TIntegerField;
    qryPersonelDecExtOfficeInfoID: TIntegerField;
    qrySumFunctionProjectInfoID: TIntegerField;
    qrySumFunctionOfficeInfoID: TIntegerField;
    qryPersonelDecExtProcCode: TIntegerField;
    qryProcCode: TADOQuery;
    qryPersonelDecExt_ProcName: TStringField;
    qrySumFunctionProcCode: TIntegerField;
    qryPersonelDecExt_ProcID: TIntegerField;
    okPanel: TPanel;
    BitBtn8: TBitBtn;
    BitBtn18: TBitBtn;
    PopMnuOther: TPopupMenu;
    N2: TMenuItem;
    actGetExcel: TAction;
    Excel1: TMenuItem;
    qrySumFunctionSumFunDay: TFloatField;
    qryPersonelDecExtName: TStringField;
    qryPersonelDecExtEndDate: TStringField;
    qryPersonelDecExtYearID: TIntegerField;
    qryPersonelDecExtStartYear: TIntegerField;
    qryPersonelDecExtEndYear: TIntegerField;
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
    qryPersonelDecExtPaymentLoan: TBCDField;
    qryIndependent: TADOQuery;
    GroupBox3: TGroupBox;
    SpeedButton3: TSpeedButton;
    MskDate: TMaskEdit;
    yrcmbx1: TYearComboBox;
    qryPersonelDecExtDayQuntity: TFloatField;
    N3: TMenuItem;
    PnlRecall: TPanel;
    DBText1: TDBText;
    SpeedButton1: TSpeedButton;
    LblPerson1: TLabel;
    DBNavigator1: TDBNavigator;
    DBEdit1: TDBEdit;
    srcFormsInfo: TDataSource;
    Memo1: TMemo;
    qryPersonelDecExtEmployeeAmount_PaymentLoan: TBCDField;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    plblMonthNo: TppLabel;
    qryPersonelDecExtNote_L2: TWideStringField;
    qryPersonelDecExtNote_L1: TWideStringField;
    DBGrid1: TCedarDbgrid;
    procedure qryPersonelDecExtAfterInsert(DataSet: TDataSet);
    procedure qryPersonelDecExtAfterPost(DataSet: TDataSet);
    procedure qryPersonelDecExtAfterDelete(DataSet: TDataSet);
    procedure qryPersonelDecExtBeforeDelete(DataSet: TDataSet);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure qryPersonelDecExtBeforeCancel(DataSet: TDataSet);
    procedure srcPersonelDecExtStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actCalcExecute(Sender: TObject);
    procedure actArchiveExecute(Sender: TObject);
    procedure qryPersonelDecExtAfterEdit(DataSet: TDataSet);
    procedure actPrintExecute(Sender: TObject);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
    procedure AllClikPopClick(Sender: TObject);
    procedure qryPersonelDecExtBeforePost(DataSet: TDataSet);
    procedure BtnDeleteClick(Sender: TObject);
    procedure DeleteGroupClick(Sender: TObject);
    procedure qryPersonelDecExtProjectInfoIDChange(Sender: TField);
    procedure qryPersonelDecExtOfficeInfoIDChange(Sender: TField);
    procedure actGetExcelExecute(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure yrcmbx1YearChangeID(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure qryPersonelDecExtBeforeEdit(DataSet: TDataSet);
    procedure N3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure qryFormsInfoAfterScroll(DataSet: TDataSet);
    procedure qryPersonelDecExtPersonelNoChange(Sender: TField);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure plblCaptionGetText(Sender: TObject; var Text: string);
    procedure plblMonthNoGetText(Sender: TObject; var Text: string);
  private
    MonthNo: Byte;
//    FormType: Byte;
    DbgrdOption: set of TDBGridOption;
    FormInfo4Function: Integer;
    procedure gridkeyenter(Sender: TObject; var Key: Char);
    procedure UpdateList;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PersonelDecExt_111F: TPersonelDecExt_111F;

implementation

uses DM, searchCode_ADO, mmessage, GlobalPro, sndkey32, SalaryFunctions, search2,
  sort2, filter_ADO, FilterClass_ADO, GetExcel;

{$R *.dfm}

procedure TPersonelDecExt_111F.gridkeyenter(Sender: TObject; var Key: Char);
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
          9:
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

procedure TPersonelDecExt_111F.N3Click(Sender: TObject);
begin
  inherited;
  AllUpdatePersonelDecExt('Å«ﬂ”«“Ì', 'EndDate = NULL ', '', DBGrid1,
    qryPersonelDecExt);
end;

procedure TPersonelDecExt_111F.N4Click(Sender: TObject);
begin
  inherited;
  DBGridSelectAll(DBGrid1);
end;

procedure TPersonelDecExt_111F.N5Click(Sender: TObject);
begin
  inherited;
  DBGridSelectAll(DBGrid1, True);
end;

procedure TPersonelDecExt_111F.N7Click(Sender: TObject);
begin
  inherited;
  if get_response
    ('»—«Ì ÊÌ—«Ì‘ Ê«Õœ ”«—„«‰Ì Ê Å—ÊéÂ  ﬂ·ÌÂ ”ÿ—Â« «“ «Õﬂ«„ „ÿ„∆‰ Â” Ìœ') <> mrYes
  then
    Abort;
  With DMF.qryTmpTmpp do
  begin
    Active := false;
    SQL.Text := 'UPDATE Pay.PersonelDecExt';
    SQL.Add('SET OfficeCode = FormsInfo_o.FormInfoID, OfficeInfoID = FormsInfo_o.InfoID,');
    SQL.Add('FormInfoID2 = FormsInfo_p.FormInfoID, ProjectInfoID = FormsInfo_p.InfoID');
    SQL.Add('FROM Pay.Interdicts INNER JOIN');
    SQL.Add('PersonelDecExt ON Pay.Interdicts.PersonelNo = PersonelDecExt.PersonelNo INNER JOIN');
    SQL.Add('Pay.FormsInfo AS FormsInfo_o ON Pay.Interdicts.OfficeCode = FormsInfo_o.FormInfoID INNER JOIN');
    SQL.Add('Pay.FormsInfo AS FormsInfo_p ON Pay.Interdicts.ProjectID = FormsInfo_p.FormInfoID');
    SQL.Add('WHERE (Interdicts.State < 49)');
    SQL.Add('AND (PersonelDecExt.FirstMounth = :FirstMounth ) ');
    SQL.Add('AND (PersonelDecExt.EndMounth = :EndMounth ) ');
    SQL.Add('AND (PersonelDecExt.FormInfoID = :FormInfoID )');
    SQL.Add('AND (PersonelDecExt.YearID Between :YearIDFrom AND  :YearIDTo)');
    SQL.Add('AND (PersonelDecExt.StartYear = :StartYear  )');
    Parameters := qryPersonelDecExt.Parameters;
    BigMessage(IntToStr(ExecSQL) + ' „Ê—œ À»  ‘œ.', 1);
    UpdateList;
  end;
end;

procedure TPersonelDecExt_111F.qryFormsInfoAfterScroll(DataSet: TDataSet);
begin
  inherited;
  UpdateList;
end;

procedure TPersonelDecExt_111F.qryPersonelDecExtAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('Õ–› ‘œ.', 1);
end;

procedure TPersonelDecExt_111F.qryPersonelDecExtBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if Trim(qryPersonelDecExtEndDate.AsString) <> EmptyStr then
  begin
    Warn(' «ÿ·«⁄«  »«Ìê«‰Ì „Ì »«‘œ' + #13#10 + '„Ã«“ »Â Õ–› ‰„Ì »«‘Ìœ.');
    Abort;
  end;

  if get_response('¬Ì« »—«Ì Õ–› «Ì‰ ›—„ „ÿ„∆‰ Â” Ìœø') <> mrYes then
    Abort;

end;

procedure TPersonelDecExt_111F.qryPersonelDecExtBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if qryPersonelDecExtEndDate.AsString > '0' then
  begin
    Warn('«ÿ·«⁄«  »«Ìê«‰Ì ‘œÂ Ê ﬁ«»· Ê»—«Ì‘ ‰Ì” ', mtInformation);
    Abort;
  end;

end;

procedure TPersonelDecExt_111F.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  gridkeyenter(Sender, Key);
end;

procedure TPersonelDecExt_111F.DBGrid1EditButtonClick(Sender: TObject);
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
  if (Sender as TCedarDbgrid).ReadOnly then
    exit;
  i := (Sender as TCedarDbgrid).SelectedIndex;
  aDataSet := (Sender as TCedarDbgrid).DataSource.DataSet;
  DBGrid1.SelectedIndex := i;
  if not(aDataSet.State in dseditmodes) then
    aDataSet.Edit;
  case i of
    0:
      begin
        sqlText :=
          'SELECT  PersonelNo, name_L1+'' ''+lastName_L1 as name_L1, name_L2+'' ''+ lastName_L2 as name_L2 FROM  Pay.PersonelInfo ';
        s := searchCode_ADOF.SearchCode2(DMf.adcSalary, '„‘Œ’«  Å—”‰·', sqlText,
          ['‘„«—Â Å—”‰·', '„‘Œ’«  Å—”‰· ', 'name'], Results,
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
        s := searchCode_ADOF.SearchCode2(DMf.adcSalary, 'Ê«Õœ ”«“„«‰Ì',
          'SELECT      InfoID, InfoName_L1, InfoName_L2 ' +
          'FROM Pay.FormsInfo WHERE     (FormType = 12) ',
          ['ﬂœ ', '‰«„ Ê«Õœ ”«“„«‰Ì', '‰«„ Ê«Õœ ”«“„«‰Ì'], Results,
          [20, 100, 100], alLeft);
        if s then
        begin
          if not(qryPersonelDecExt.State in dseditmodes) then
            qryPersonelDecExt.Edit;
          qryPersonelDecExt.FieldByName('OfficeInfoID').AsString := Results[0];
        end; // if
      end; // 2

    4:
      begin
        sqlText := 'SELECT  InfoID, InfoName_L1, InfoName_L2 FROM Pay.FormsInfo ' +
          ' WHERE  FormType = ' + IntToStr(FormInfo4Function); // 40
        s := searchCode_ADOF.SearchCode2(DMf.adcSalary, ' ﬂœ Ê ”ÿÕ ⁄‰Ê«‰ ﬁ»·Ì ',
          sqlText, ['ﬂœ', '⁄‰Ê«‰ 1', 'InfoName'], Results,
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
        s := searchCode_ADOF.SearchCode2(DMf.adcSalary, 'ﬂœ „Õ’Ê·',
          'SELECT     FormInfoID, InfoID, InfoName_L1, InfoName_L2 ' +
          'FROM Pay.FormsInfo WHERE     (FormType = 67) ',
          ['', 'ﬂœ ', 'ﬂœ „Õ’Ê·', 'ﬂœ „Õ’Ê·'], Results,
          [0, 20, 100, 100], alLeft);
        if s then
        begin
          if not(qryPersonelDecExt.State in dseditmodes) then
            qryPersonelDecExt.Edit;
          qryPersonelDecExt.FieldByName('ProcCode').AsString := Results[0];
        end;
      end; // 8

  end; // case

end;

procedure TPersonelDecExt_111F.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TPersonelDecExt_111F.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryPersonelDecExt);
end;

procedure TPersonelDecExt_111F.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryPersonelDecExt);
end;

procedure TPersonelDecExt_111F.qryPersonelDecExtAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('DecExtID').AsInteger := GetANewCode('','Pay.PersonelDecExt',
    'DecExtID', DMf.adcSalary);
  DataSet.FieldByName('FirstMounth').AsInteger := MonthNo;
  DataSet.FieldByName('EndMounth').AsInteger := MonthNo;
  DataSet.FieldByName('FormInfoID').AsInteger :=
    qryFormsInfo.FieldByName('forminfoid').AsInteger;
  DataSet.FieldByName('YearID').AsInteger := APPBank.Year;
  DBGrid1.SetFocus;
end;

procedure TPersonelDecExt_111F.qryPersonelDecExtAfterPost(DataSet: TDataSet);
begin
  inherited;
  BigMessage('À»  ‘œ.', 1)
end;

procedure TPersonelDecExt_111F.qryPersonelDecExtBeforeCancel(DataSet: TDataSet);
begin
  inherited;
  if get_response(' €ÌÌ—«  ·€Ê ‘Ê‰œø') <> mrYes then
    Abort
end;

procedure TPersonelDecExt_111F.SpeedButton1Click(Sender: TObject);
var
  Txt: String;
  s: Boolean;
  Results: array [0 .. 3] of String;
begin
  inherited;
  Txt := 'SELECT FormInfoID,InfoID, InfoName_L1, InfoName_L2 FROM Pay.FormsInfo '
    + 'WHERE (FormType = 111) ';
  s := searchCode_ADOF.SearchCode2(DMf.adcSalary, ' ”ÿÕ˛Â«Ì ﬁ»·Ì  ', Txt,
    ['', 'ﬂœ', '‰«„ 1', '‰«„ 2'], Results, [0, 50, 100, 100], alLeft);
  if s then
    qryFormsInfo.Locate('FormInfoID', Results[0], []);
end;

procedure TPersonelDecExt_111F.SpeedButton3Click(Sender: TObject);
var
  date: String;
begin
  inherited;
  date := StringReplace(var_glb_CurrentDate, '/', '', [rfReplaceAll]);
  MskDate.Text := MaskDoFormatText('9999/99/99', date, '_')
end;

procedure TPersonelDecExt_111F.srcPersonelDecExtStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qryPersonelDecExt.State in dseditmodes;
  newPanel.Visible := not okPanel.Visible;
  btnReject.Cancel := newPanel.Visible;
  DBGrid1.ReadOnly := newPanel.Visible;
  FreeReservedCodes(DMf.adcSalary);
  if not okPanel.Visible then
    DBGrid1.Options := DbgrdOption + [dgMultiSelect]
  else
    DBGrid1.Options := DbgrdOption - [dgMultiSelect];
end;

procedure TPersonelDecExt_111F.yrcmbx1YearChangeID(Sender: TObject);
begin
  inherited;
  UpdateList;
end;

procedure TPersonelDecExt_111F.UpdateList;
begin
  with qryPersonelDecExt do
  begin
    Active := false;
    Parameters.ParamByName('forminfoid').Value :=
      qryFormsInfo.FieldByName('forminfoid').AsInteger;
    Parameters.ParamByName('YearIDFrom').Value := APPBank.Year;
    Parameters.ParamByName('YearIDTo').Value := APPBank.Year;
    Parameters.ParamByName('StartYear').Value := yrcmbx1.YearID;
    Parameters.ParamByName('FirstMounth').Value := MonthNo;
    Parameters.ParamByName('EndMounth').Value := MonthNo;
    Active := True;
  end; // with
end;

procedure TPersonelDecExt_111F.FormCreate(Sender: TObject);
begin
  inherited;
  DBGrid1.SetFooter4Sum([]);
  MonthNo := var_glb_CurrentMonth;
  if MonthNo < 1 then
    MonthNo := 1;
  ToolBar1.Buttons[MonthNo - 1].Down := True;
  SetLookUpCash(qryPersonelDecExt);
  qryFormsInfoOffice.Active := false;
  qryFormsInfoOffice.Active := True;
  qryProcCode.Active := True;
  FormInfo4Function := GETProject4Function;
  with qryFormsInfoproject do
  begin
    Active := false;
    // Parameters.ParamByName('FormInfo4Function').Value := FormInfo4Function;
    // WHERE  FormType = :FormInfo4Function
    Active := True;
  end;

  with qryFormsInfo do
  begin
    Active := false;
    Active := True;
    if FieldByName('forminfoid').IsNull then
      Warn(Caption + ' œ—  ‰ŸÌ„«  ›⁄«· ‰‘œÂ.˛', mtInformation);
  end; // with
  yrcmbx1.YearsParam := APPBank.Year;
  yrcmbx1.YearID := APPBank.Year;

  DbgrdOption := [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines,
    dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit];

  DBGrid1.Options := DbgrdOption + [dgMultiSelect]
end;

procedure TPersonelDecExt_111F.actCalcExecute(Sender: TObject);
var
  qry: TADOQuery;
begin
  inherited;
  if qryFormsInfo.FieldByName('InfoID').AsInteger > 10 then
  begin
    Warn('»—«Ì ﬂœ Ê ⁄‰Ê«‰ ”ÿÕ ﬁ»·Ì »“—ê — «“ 10 „«·Ì«  Õ”«» ‰„Ì ‘Êœ',
      mtInformation);
    exit;
  end;
  if qryPersonelDecExt.RecordCount > 0 then
    if get_response('¬Ì« »—«Ì «‰Ã«„ „Õ«”»«  „ÿ„∆‰ Â” Ìœ.˛') <> mrYes then
      exit;

  qry := TADOQuery.Create(nil);
  With qry do
  begin
    Connection := DMf.adcSalary;
    CommandTimeout := 0;
    GetYearMounth(MonthNo);
    SQL.Text := 'UPDATE Pay.PersonelDecExt';
    SQL.Add('SET PersonelDecExt.PaymentLoan =ISNULL((Calc_1.TaxValue/ Calc_1.EmployeeAmount) * PersonelDecExt.EmployeeAmount ,0) ');
    SQL.Add('FROM Pay.PersonelDecExt INNER JOIN');
    SQL.Add('Pay.CalculateBonusSalaryIndependent(%s,%D,%D,%D,%D,%D,%D)');
    // :YearMounth, :salarykindFrom, :salarykindTo, :PersonelNoFrom,');
    // SQL.Add(':PersonelNoTo, :Mounth, :FormInfoID
    SQL.Add('AS Calc_1 ON PersonelDecExt.PersonelNo =');
    SQL.Add('Calc_1.PersonelNo AND');
    SQL.Add('PersonelDecExt.FormInfoID = Calc_1.FormInfoID');
    SQL.Add('WHERE (PersonelDecExt.FirstMounth = %D )');
    SQL.Text := Format(SQL.Text, [QuotedStr(optP.YearMounth), 1, 1, 0, 2147483647,
      MonthNo, qryFormsInfo.FieldByName('FormInfoID').AsInteger, MonthNo]);
    // Parameters.ParamByName('YearMounth').Value := opt.YearMounth;
    // Parameters.ParamByName('salarykindFrom').Value := 1;
    // Parameters.ParamByName('salarykindTo').Value := 1;
    // Parameters.ParamByName('PersonelNoFROM').Value := 0;
    // Parameters.ParamByName('PersonelNoTo').Value := 2147483647;
    // Parameters.ParamByName('Mounth').Value := MonthNo;
    // Parameters.ParamByName('FormInfoID').Value :=
    // qry_init.FieldByName('FormInfoID').AsInteger;
    BigMessage(IntToStr(ExecSQL) + ' „Ê—œ À»  ‘œ.', 1);
  end;
  qry.Free;
  qryPersonelDecExt.Requery();

end;

procedure TPersonelDecExt_111F.actArchiveExecute(Sender: TObject);
begin
  inherited;
  if Length(Trim(MskDate.Text)) < 8 then
  begin
    Warn('   «—ÌŒ  À»  »«Ìê«‰Ì Ê«—œ ‰‘œÂ');
    MskDate.SetFocus;
    exit;
  end;

  if qryPersonelDecExt.RecordCount > 0 then
    if get_response('¬Ì« »—«Ì «‰Ã«„ »«Ìê«‰Ì „ÿ„∆‰ Â” Ìœ.˛') <> mrYes then
      exit;
  With DMF.qryTmpTmpp do
  begin
    DisableControls;
    Active := false;
    SQL.Text := 'UPDATE Pay.PersonelDecExt';
    SQL.Add('SET EndDate = ''' + MskDate.Text + '''');
    SQL.Add('WHERE (EndDate IS NULL or EndDate = ''        '' )');
    SQL.Add('And (FormInfoID = :FormInfoID )');
    SQL.Add('And (FirstMounth = :FirstMounth)');
    SQL.Add('And (EndMounth = :EndMounth )');
    SQL.Add('And (YearID = :YearID )');
    SQL.Add('And (PersonelNo between :PersonelNoFrom and :PersonelNoTo)');
    SQL.Add('AND (OfficeInfoID between :OfficeInfoIDFrom and :OfficeInfoIDTo)');
    SQL.Add('And PersonelNo in (SELECT Interdicts.PersonelNo FROM Pay.Interdicts LEFT OUTER JOIN');
    SQL.Add(' Pay.FormsInfo ON Pay.Interdicts.EmployTypeID = FormsInfo.FormInfoID');
    SQL.Add('WHERE (Interdicts.State < 50 ) AND (Interdicts.InterdicType = 0)');
    if myParams.FindParam('InterType') <> nil then
      SQL.Add('AND (FormsInfo.InfoID BETWEEN :InterTypeFrom AND :InterTypeTo )');
    SQL.Add(')');

    Parameters.ParamByName('FormInfoID').Value :=
      qryFormsInfo.FieldByName('FormInfoID').AsInteger;

    Parameters.ParamByName('FirstMounth').Value := MonthNo;
    Parameters.ParamByName('EndMounth').Value := MonthNo;

    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Parameters.ParamByName('PersonelNoFrom').Value := 0;
    Parameters.ParamByName('PersonelNoTo').Value := 2147483647;
    Parameters.ParamByName('OfficeInfoIDFrom').Value := 0;
    Parameters.ParamByName('OfficeInfoIDTo').Value := 2147483647;
    if myParams.FindParam('InterType') <> nil then
    begin
      Parameters.ParamByName('InterTypeFrom').Value := 0;
      Parameters.ParamByName('InterTypeTo').Value := 2147483647;
    end;
    BigMessage(IntToStr(ExecSQL) + ' „Ê—œ »«Ìê«‰Ì ‘œ.', 1);
    EnableControls;
    Active := false;
  end; // With
  qryPersonelDecExt.Requery();
end;

procedure TPersonelDecExt_111F.qryPersonelDecExtAfterEdit(DataSet: TDataSet);
begin
  inherited;
  DBGrid1.SetFocus;
end;

procedure TPersonelDecExt_111F.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    MakeMenuItem(111, AllClikPopClick, PopList4Print);
    PopList4Print.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
  finally
  end;
end;

procedure TPersonelDecExt_111F.AllClikPopClick(Sender: TObject);
var
  ReportName: String;
begin
  inherited;
  ReportName := (Sender as TMenuItem).Hint;
  if pos('Office', ReportName) <> 0 then
    qryPersonelDecExt.Sort := 'OfficeCode';
  if pos('Project', ReportName) <> 0 then
    qryPersonelDecExt.Sort := 'FormInfoID2';
  InitReportFile(ppReport1, ReportName);

end;

procedure TPersonelDecExt_111F.plblCaptionGetText(Sender: TObject;
  var Text: string);
begin
  inherited;
  Text := Caption
end;

procedure TPersonelDecExt_111F.plblMonthNoGetText(Sender: TObject;
  var Text: string);
begin
  inherited;
  Text := Text + ' ' + ToolBar1.Buttons[MonthNo - 1].Caption;
end;

procedure TPersonelDecExt_111F.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TPersonelDecExt_111F.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TPersonelDecExt_111F.ppSysVarPageNoGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TPersonelDecExt_111F.qryPersonelDecExtBeforePost(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('StartYear').AsInteger := yrcmbx1.YearID;
  DataSet.FieldByName('EndYear').AsInteger := yrcmbx1.YearID;
  if not CheckRequiredFields(DataSet) then
    Abort;
end;

procedure TPersonelDecExt_111F.BtnDeleteClick(Sender: TObject);
begin
  inherited;
  PopMnuDelete.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TPersonelDecExt_111F.DeleteGroupClick(Sender: TObject);
begin
  inherited;
  // actFilter.Execute;
  if get_response('¬Ì« »—«Ì Õ–› „Õ«”»«  œ— „ÕœÊœÂ «‰ Œ«» ‘œÂ „ÿ„∆‰ Â” Ìœ.˛') <> mrYes
  then
    exit;
  With DMF.qryTmpTmpp do
  begin
    DisableControls;
    Active := false;
    SQL.Text := 'DELETE FROM Pay.PersonelDecExt';
    SQL.Add('FROM Pay.PersonelDecExt INNER JOIN');
    SQL.Add('Pay.FormsInfo AS FormsInfo_Office ON PersonelDecExt.OfficeCode = FormsInfo_Office.FormInfoID INNER JOIN');
    SQL.Add('Pay.PersonelInfo ON PersonelDecExt.PersonelNo = PersonelInfo.PersonelNo INNER JOIN');
    SQL.Add('Pay.FormsInfo AS FormsInfo_State ON PersonelInfo.PersonelState = FormsInfo_State.FormInfoID');
    SQL.Add('WHERE (PersonelDecExt.FirstMounth = ' + IntToStr(MonthNo) + ')');
    SQL.Add('AND (PersonelDecExt.EndMounth = ' + IntToStr(MonthNo) + ')');
    // SQL.Add('AND (FormsInfo_Office.InfoID BETWEEN :OfficeCodeFrom AND :OfficeCodeTo)');
    // SQL.Add('AND (FormsInfo_State.InfoID BETWEEN :PersonelStateFrom AND :PersonelStateTo)');
    // SQL.Add('AND (PersonelDecExt.PersonelNo BETWEEN :PersonelNoFrom AND :PersonelNoTo)');
    // SQL.Add('AND (ISNULL(EmployeeAmount,0) + ISNULL(EmployerAmount,0) = 0  )');
    SQL.Add('AND (PersonelDecExt.FormInfoID = ' + qryFormsInfo.FieldByName
      ('FormInfoID').AsString + ')');
    SQL.Add('AND (EndDate IS NULL or ltrim(rtrim(EndDate)) = '''' )');

    // Parameters.ParamByName('PersonelNoFrom').Value :=
    // GetcFrom(myParams.ParamValues['PersonelNo'], ftInteger);
    // Parameters.ParamByName('PersonelNoTo').Value :=
    // GetcTo(myParams.ParamValues['PersonelNo'], ftInteger);
    //
    // Parameters.ParamByName('OfficeCodeFrom').Value :=
    // GetcFrom(myParams.ParamValues['OfficeCode'], ftInteger);
    // Parameters.ParamByName('OfficeCodeTo').Value :=
    // GetcTo(myParams.ParamValues['OfficeCode'], ftInteger);
    //
    // Parameters.ParamByName('PersonelStateFrom').Value :=
    // GetcFrom(myParams.ParamValues['PersonelState'], ftInteger);
    // Parameters.ParamByName('PersonelStateTo').Value :=
    // GetcTo(myParams.ParamValues['PersonelState'], ftInteger);

    BigMessage(IntToStr(ExecSQL) + ' „Ê—œ Õ–› ‘œ.', 1);
    Active := false;
    qryPersonelDecExt.Requery();
  end; // With

end;

procedure TPersonelDecExt_111F.qryPersonelDecExtPersonelNoChange
  (Sender: TField);
begin
  inherited;
  GetAProject_OfficeID('OfficeCode', qryPersonelDecExt, yrcmbx1.YearID,
    MonthNo);
  GetAProject_OfficeID('ProjectInfoID', qryPersonelDecExt,
    yrcmbx1.YearID, MonthNo);
end;

procedure TPersonelDecExt_111F.qryPersonelDecExtProjectInfoIDChange
  (Sender: TField);
begin
  inherited;
  qryPersonelDecExt.FieldByName('FormInfoID2').Value :=
    qryFormsInfoproject.Lookup('InfoID',
    qryPersonelDecExt.FieldByName('ProjectInfoID').Value, 'FormInfoID');
end;

procedure TPersonelDecExt_111F.qryPersonelDecExtOfficeInfoIDChange
  (Sender: TField);
begin
  inherited;
  qryPersonelDecExt.FieldByName('OfficeCode').Value :=
    qryFormsInfoOffice.Lookup('InfoID',
    qryPersonelDecExt.FieldByName('OfficeInfoID').Value, 'FormInfoID');
end;

procedure TPersonelDecExt_111F.actGetExcelExecute(Sender: TObject);
begin
  inherited;
  try
    qryPersonelDecExt.AfterPost := nil;
    GetExcelF.ShowImPortExcel(qryPersonelDecExt);
  finally
    qryPersonelDecExt.AfterPost := qryPersonelDecExtAfterPost;
  end;
end;

procedure TPersonelDecExt_111F.BitBtn6Click(Sender: TObject);
begin
  inherited;
  PopMnuOther.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TPersonelDecExt_111F.ToolButton1Click(Sender: TObject);
begin
  inherited;
  MonthNo := (Sender as TToolButton).tag;    GetYearMounth(MonthNo);
  UpdateList;
end;

end.
