{ -----------------------------------------------------------------------------
  Unit Name: ReciptsDeficitsPostAll
  Author:    M_A_H_M_O_O_D
  Purpose:
  History:
  ----------------------------------------------------------------------------- }
unit SomeChangeOrders;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DBCtrls, Grids, Vcl.DBGrids, StrUtils, Math, ppDB, ppDBPipe, ppComm,
  ppRelatv, ppProd, ppClass, ppReport, ppPrnabl, ppCtrls, ppCache, ppBands,
  ppVar, ppStrtch, ppMemo, ppModule, ppTypes, ppSubRpt, Menus, DB, ADODB, Mask,
  ComCtrls, Provider, DBClient, SumDBGrid, ppParameter, ppDesignLayer,
  System.ImageList, System.Actions, Filter_ADO_Const;

type
  TSomeChangeOrdersF = class(Ttemplate2MDIF)
    qryRecipts: TADOQuery;
    srcRecipts: TDataSource;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn4: TBitBtn;
    btnSlelectInverse: TBitBtn;
    btnSELECTAll: TBitBtn;
    actSendExel: TAction;
    actSort: TAction;
    DBGrid1: TDBGrid;
    img_Unchecked: TImage;
    img_checked: TImage;
    actSELECTAll: TAction;
    actSlelectInverse: TAction;
    actPost: TAction;
    btnSelectd: TBitBtn;
    actFilter: TAction;
    qryinit: TADOQuery;
    btnSELECTAll1: TBitBtn;
    qryRecipts_checked: TIntegerField;
    qryReciptsReciptNumber: TIntegerField;
    qryReciptsReciptDate: TStringField;
    qryReciptsStuffCode: TLargeintField;
    qryReciptsc_StuffName: TStringField;
    qryReciptssd1: TStringField;
    qryReciptssd2: TStringField;
    qryReciptssd3: TStringField;
    qryReciptssd4: TStringField;
    qryReciptssd5: TStringField;
    qryReciptssd6: TStringField;
    qryReciptssd7: TStringField;
    qryReciptssd8: TStringField;
    qryReciptssd9: TStringField;
    qryReciptsPersonID1: TIntegerField;
    qryReciptsCustName: TStringField;
    qryReciptsName: TStringField;
    qryReciptsSecondTypeItem: TIntegerField;
    qryReciptsReciptItemID: TIntegerField;
    qryReciptsReciptID: TIntegerField;
    qryReciptsServerID: TIntegerField;
    qryReciptsYearID: TIntegerField;
    qryFitful: TADOQuery;
    srcFitful: TDataSource;
    qryFitfulPersonID: TLargeintField;
    qryFitfulSecondTypeItem: TIntegerField;
    qryCustomers: TADOQuery;
    qryLookUps: TADOQuery;
    qryFitful_CustName: TStringField;
    qryFitful_SecondTypeItemName: TStringField;
    PnlPerson1: TPanel;
    LblPerson1: TLabel;
    btnPersonID1: TSpeedButton;
    dbtxt_CustName: TDBText;
    edtPersonID: TDBEdit;
    Panel1: TPanel;
    Label1: TLabel;
    edtControlCode: TDBEdit;
    Panel4: TPanel;
    Label2: TLabel;
    dblkcbb_SecondTypeItemName: TDBLookupComboBox;
    BitBtn2: TBitBtn;
    actSelectd: TAction;
    GroupBox1: TGroupBox;
    qryReciptsControlCode: TLargeintField;
    qryFitfulControlCode: TFMTBCDField;
    chkPersonID: TCheckBox;
    chk_SecondTypeItemName: TCheckBox;
    chkControlCode: TCheckBox;
    actPrint: TAction;
    ppDBPipeline1: TppDBPipeline;
    ppDBPipeline1ppField1: TppField;
    ppDBPipeline1ppField2: TppField;
    ppDBPipeline1ppField3: TppField;
    ppDBPipeline1ppField4: TppField;
    ppDBPipeline1ppField5: TppField;
    ppDBPipeline1ppField6: TppField;
    ppDBPipeline1ppField7: TppField;
    ppDBPipeline1ppField8: TppField;
    ppDBPipeline1ppField9: TppField;
    ppDBPipeline1ppField10: TppField;
    ppDBPipeline1ppField11: TppField;
    ppDBPipeline1ppField12: TppField;
    ppDBPipeline1ppField13: TppField;
    ppDBPipeline1ppField14: TppField;
    ppDBPipeline1ppField15: TppField;
    ppDBPipeline1ppField16: TppField;
    ppDBPipeline1ppField17: TppField;
    ppDBPipeline1ppField18: TppField;
    ppDBPipeline1ppField19: TppField;
    ppDBPipeline1ppField20: TppField;
    ppDBPipeline1ppField21: TppField;
    ppDBPipeline1ppField22: TppField;
    ppDBPipeline1ppField23: TppField;
    ppDBPipeline1ppField24: TppField;
    ppDBPipeline1ppField25: TppField;
    ppDBPipeline1ppField26: TppField;
    ppDBPipeline1ppField27: TppField;
    ppDBPipeline1ppField28: TppField;
    ppDBPipeline1ppField29: TppField;
    ppDBPipeline1ppField30: TppField;
    ppDBPipeline1ppField31: TppField;
    ppDBPipeline1ppField32: TppField;
    ppDBPipeline1ppField33: TppField;
    ppDBPipeline1ppField34: TppField;
    ppDBPipeline1ppField35: TppField;
    ppDBPipeline1ppField36: TppField;
    ppDBPipeline1ppField37: TppField;
    ppDBPipeline1ppField38: TppField;
    ppDBPipeline1ppField39: TppField;
    ppDBPipeline1ppField40: TppField;
    ppDBPipeline1ppField41: TppField;
    ppDBPipeline1ppField42: TppField;
    ppDBPipeline1ppField43: TppField;
    ppDBPipeline1ppField44: TppField;
    ppDBPipeline1ppField45: TppField;
    ppDBPipeline1ppField46: TppField;
    ppDBPipeline1ppField47: TppField;
    ppDBPipeline1ppField48: TppField;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppLblCompanyName: TppLabel;
    ppLblCaption: TppLabel;
    ppSysVarPageNo: TppSystemVariable;
    ppLblPrintDate: TppLabel;
    ppDBCalcdcCount_TextAlign: TppDBCalc;
    ppDetailBand1: TppDetailBand;
    ppLineDetail: TppLine;
    ppLin4Position: TppLine;
    ppFooterBand1: TppFooterBand;
    ppShape2: TppShape;
    ppLabel4: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppShape3: TppShape;
    ppLabel2: TppLabel;
    ppParameterList1: TppParameterList;
    BitBtn1: TBitBtn;
    qryReciptsItemNote: TStringField;
    pnl1: TPanel;
    lbl1: TLabel;
    edtAidDate: TDBEdit;
    chkAidDate: TCheckBox;
    qryFitfulAidDate: TStringField;
    qryReciptsAidDate: TStringField;
    qryReciptsReciptCaption: TStringField;
    qryReciptsParentForm: TStringField;
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actSendExelExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure actSELECTAllExecute(Sender: TObject);
    procedure actSlelectInverseExecute(Sender: TObject);
    procedure actPostExecute(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnPersonID1Click(Sender: TObject);
    procedure actSelectdExecute(Sender: TObject);
    procedure edtPersonIDChange(Sender: TObject);
    procedure dblkcbb_SecondTypeItemNameCloseUp(Sender: TObject);
    procedure edtControlCodeChange(Sender: TObject);
    procedure qryFitfulAfterOpen(DataSet: TDataSet);
    procedure actPrintExecute(Sender: TObject);
    procedure ppLblCaptionGetText(Sender: TObject; var Text: String);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
    procedure edtAidDateChange(Sender: TObject);
  private
    { Private declarations }
    SQLRecipt: string;
    procedure UpdateFilter;
    procedure ToggleCheck;
    procedure UpDateRecipts;
    procedure InitForm;

  public
    { Public declarations }
  end;

var
  SomeChangeOrdersF: TSomeChangeOrdersF;

implementation

uses filter_ADO, FilterClass_ADO, GlobalPro, DM, searchCode_ADO, TreeChart,
  DBGrid2Print, search1, sort, mmessage, FormFunctions, FaraConsts, search2,
  sort2;

{$R *.dfm}

procedure TSomeChangeOrdersF.UpDateRecipts;
begin
  with dmf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'update ReciptItems';
    if chkPersonID.Checked then
    begin
      SQL.Add('SET PersonID1 = :PersonID1 ');
      Parameters.ParamByName('PersonID1').Value := qryFitfulPersonID.AsInteger;
    end
    else
      SQL.Add('SET PersonID1 = PersonID1 ');

    if chk_SecondTypeItemName.Checked then
    begin
      SQL.Add(' ,  SecondTypeItem = :SecondTypeItem ');
      Parameters.ParamByName('SecondTypeItem').Value :=
        qryFitfulSecondTypeItem.AsInteger;
    end;

    if chkControlCode.Checked then
    begin
      SQL.Add(' ,  ControlCode = :ControlCode ');
      Parameters.ParamByName('ControlCode').Value :=
        qryFitfulControlCode.AsFloat;
    end;

    if chkAidDate.Checked then
    begin
      SQL.Add(' ,  AidDate = :AidDate ');
      Parameters.ParamByName('AidDate').Value := qryFitfulAidDate.AsString;
    end;

    SQL.Add('where ReciptItemID = :ReciptItemID');
    SQL.Add('And ServerID = :ServerID');
    SQL.Add('And YearID = :YearID');

    Parameters.ParamByName('ReciptItemID').Value :=
      qryReciptsReciptItemID.AsInteger;
    Parameters.ParamByName('ServerID').Value := qryReciptsServerID.AsInteger;
    Parameters.ParamByName('YearID').Value := qryReciptsYearID.AsInteger;
    ExecSQL;
    Active := False;
  end; // with

end;

procedure TSomeChangeOrdersF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 3);
end;

procedure TSomeChangeOrdersF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1)
end;

procedure TSomeChangeOrdersF.actSelectdExecute(Sender: TObject);
begin
  inherited;
  With qryRecipts do
  begin
    Filter := '_checked = 1';
    Filtered := not Filtered;
    if Filtered then
      btnSelectd.Font.Style := btnSelectd.Font.Style + [fsBold]
    else
      btnSelectd.Font.Style := btnSelectd.Font.Style - [fsBold]
  end;
end;

procedure TSomeChangeOrdersF.actSendExelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TSomeChangeOrdersF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryRecipts);
end;

procedure TSomeChangeOrdersF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryRecipts);
end;

procedure TSomeChangeOrdersF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  ToggleCheck;
end;

procedure TSomeChangeOrdersF.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  if DataCol = 0 then
  begin
    DBGrid1.Canvas.Rectangle(Rect);
    if qryRecipts_checked.AsInteger = 1 then
      DBGrid1.Canvas.Draw(Rect.Left, Rect.Top, img_checked.Picture.Graphic)
    else
      DBGrid1.Canvas.Draw(Rect.Left, Rect.Top, img_Unchecked.Picture.Graphic)
  end;
end;

procedure TSomeChangeOrdersF.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_SPACE then
  begin
    Key := 0;
    ToggleCheck;
  end;
end;

procedure TSomeChangeOrdersF.dblkcbb_SecondTypeItemNameCloseUp(Sender: TObject);
begin
  inherited;
  if qryFitfulSecondTypeItem.AsInteger > 0 then
    chk_SecondTypeItemName.Checked := True
end;

procedure TSomeChangeOrdersF.edtAidDateChange(Sender: TObject);
begin
  inherited;
  chkAidDate.Checked := True
end;

procedure TSomeChangeOrdersF.edtControlCodeChange(Sender: TObject);
begin
  inherited;
  chkControlCode.Checked := True
end;

procedure TSomeChangeOrdersF.edtPersonIDChange(Sender: TObject);
begin
  inherited;
  chkPersonID.Checked := True
end;

procedure TSomeChangeOrdersF.ToggleCheck;
begin
  with qryRecipts do
  begin
    Edit;
    FieldByName('_Checked').AsInteger :=
      ifthen(FieldByName('_Checked').AsInteger = 1, 0, 1);
    Post;
  end;
end;

procedure TSomeChangeOrdersF.actSELECTAllExecute(Sender: TObject);
begin
  inherited;
  with qryRecipts do
  begin
    DisableControls;
    First;
    while not eof do
    begin
      Edit;
      FieldByName('_Checked').AsInteger := 1;
      Post;
      Next;
    end;
    First;
    EnableControls;
  end;
end;

procedure TSomeChangeOrdersF.actSlelectInverseExecute(Sender: TObject);
begin
  inherited;
  with qryRecipts do
  begin
    DisableControls;
    First;
    while not eof do
    begin
      ToggleCheck;
      Next;
    end;
    First;
    EnableControls;
  end;
end;

procedure TSomeChangeOrdersF.actPostExecute(Sender: TObject);
var
  Record_Count: Integer;
begin
  inherited;
  Record_Count := qryRecipts.RecordCount;
  BigMessageProgBar('در حال ثبت.... ', Record_Count);
  if not(chkPersonID.Checked or chk_SecondTypeItemName.Checked or
    chkControlCode.Checked or chkAidDate.Checked) then
  begin
    Warn('موردي براي تغيير ثبت نشده است', mtInformation);
    CloseMessage;
    Exit;
  end;
  if chkAidDate.Checked then
  begin
    if not ValidateDatasetDates(qryFitful, '0000/00/00', '9999/99/99') then
    begin
      CloseMessage;
      Exit;
    end;
  end;

  With qryRecipts do
    try
      DisableControls;
      Filter := '_checked = 1';
      Filtered := True;
      if qryRecipts.RecordCount = 0 then
      begin
        Filtered := False;
        CloseMessage;
        EnableControls;
        Exit;
      end;
      First;
      Record_Count := qryRecipts.RecordCount;
      Filter := Format('PersonID1 = %d  AND _checked = 1 ',
        [qryReciptsPersonID1.AsInteger]);
      Filtered := True;
      EnableControls;
      if Record_Count <> qryRecipts.RecordCount then
      begin
        Filtered := False;
        if get_response
          ('كد مشتري متفاوت در ليست  وجود دارد آيا براي تغيير  همه مطمئن هستيد')
          <> mrYes then
        begin
          EnableControls;
          CloseMessage;
          Exit;
        end;
      end;
    finally
    end;

  With qryRecipts do
    try
      DisableControls;
//              DBGrid1.SearchPanel.SearchingText := EmptyStr;
      Filter := '_checked = 1';
      Filtered := True;
      First;
      while not eof do
      begin
        if FieldByName('_checked').AsInteger = 1 then
          UpDateRecipts;
        Next;
      end;
      EnableControls;
    finally
      Filtered := False;
      UpdateFilter;
      CloseMessage;
    end;
end;

procedure TSomeChangeOrdersF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qryRecipts.DisableControls;
    InitReportFile(ppReport1, 'SomeChangeOrders');
  finally
    qryRecipts.EnableControls;
  end;
end;

procedure TSomeChangeOrdersF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  Text := GetPrintDate;
end;

procedure TSomeChangeOrdersF.ppSysVarPageNoGetText(Sender: TObject;
  var Text: String);
begin
  Text := GetPageNumberString(Text)
end;

procedure TSomeChangeOrdersF.ppLblCaptionGetText(Sender: TObject;
  var Text: String);
begin
  Text := Caption;
end;

procedure TSomeChangeOrdersF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  Text := APPBank.CompanyName;
end;

procedure TSomeChangeOrdersF.InitForm;
begin
  SQLRecipt := qryRecipts.SQL.Text;
  SetExtraCoding(qryRecipts, DBGrid1);
  with qryinit do
  begin
    Active := False;
    Parameters.ParamByName('ReciptType').Value := 5;
    Active := True;
  end;
  with qryLookUps do
  begin
    Active := False;
    Parameters.ParamByName('Kind').Value :=
      qryinit.FieldByName('FormItemKindSerial').AsInteger;
    Active := True;
  end;
  with qryFitful do
  begin
    Active := False;
    Active := True;
    Edit;
  end;

end;

procedure TSomeChangeOrdersF.qryFitfulAfterOpen(DataSet: TDataSet);
begin
  inherited;
  chkPersonID.Checked := False;
  chk_SecondTypeItemName.Checked := False;
  chkControlCode.Checked := False;
  chkAidDate.Checked := False;
end;

procedure TSomeChangeOrdersF.btn2Click(Sender: TObject);
begin
  inherited;
  UpdateFilter;
end;

procedure TSomeChangeOrdersF.btnPersonID1Click(Sender: TObject);
var
  Txt: String;
  b: Boolean;
  Results: array [0 .. 8] of String;
begin
  inherited;

  Txt := 'SELECT DISTINCT CustID,CustName,Address,Tel,PersonID3,' +
    'UseUnitID,Mobile,Fax,CustomerNote,' +
    ' CASE WHEN CustName LIKE N''%''+ ISNULL(CustFirstName, '''') +''%'' THEN CustName'
    + ' ELSE CustName + '' '' + ISNULL(CustFirstName, '''') END AS FullCustName '
    + 'FROM Vu_CustomersGroups ' +
    GetCustomersGroupTypeSQL('CustomerKind1', qryinit);
  Add2Filter(Txt, 'CustomerActive = 0');
  b := searchCode_ADOF.SearchCode2(dmf.adcBSell,
    qryinit.FieldByName('Person1Caption').AsString + ' ها ', Txt,
    ['کد', qryinit.FieldByName('Person1Caption').AsString, 'آدرس', 'تلفن',
    'مشتري3', 'محل مصرف', 'همراه', 'دورنما', 'توضيحات', 'مشخصات كامل'], Results,
    [50, 120, 100, 50, 50, 50, 50, 50, 100, 100], alLeft);
  if b then
  begin
    qryFitfulPersonID.AsString := Results[0];
  end;

end;

procedure TSomeChangeOrdersF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItem(dmf.adcBSell, 'ReciptDate', 'تاريخ فرم ', 'تاريخ', ftDate,
        dvMinMax, '', '', ciSimple, '', 'Select  ''' + APPBank.StartYear +
        ''',max(ReciptDate) FROM Recipts');

      AddItem(dmf.adcBSell, 'Number', 'شماره فرم', 'شماره', ftInteger, dvMinMax,
        '', '', ciSimple, '',
        'SELECT Min(ReciptNumber),max(ReciptNumber) FROM Recipts');

      AddItemFilter(GetFilter, TFilterControlCode);


      AddItem(dmf.adcBSell, 'SecondTypeItem', 'وضعيت', 'وضعيت', ftLargeint,
        dvMinMax, '', '', ciLookup,
        Format('SELECT LookUpID,Name FROM LookUps WHERE (Kind = %d)',
        [qryinit.FieldByName('FormItemKindSerial').AsInteger]),
        Format('SELECT 0,max(LookUpID) FROM LookUps WHERE (Kind = %d)',
        [qryinit.FieldByName('FormItemKindSerial').AsInteger]));

      AddItem(dmf.adcBSell, 'PersonID1', 'مشتري', 'كد', ftInteger, dvMinMax, '',
        '', ciLookup,
        ' SELECT DISTINCT CustID, CustName FROM Vu_CustomersGroups '
        + ' WHERE (GroupType IN('
        + Trim(qryinit.FieldByName('CustomerKind1').AsString) + '))',
        ' SELECT isnull(min(CustID),0),isnull(max(CustID),0) FROM Vu_CustomersGroups '
        + ' WHERE (GroupType IN('
        + Trim(qryinit.FieldByName('CustomerKind1').AsString) + '))');

      AddItem(dmf.adcBSell, 'StuffCode', '  نام كالا ', 'كد كالا', ftLargeint,
        dvMinMax, '', '', ciLookup,

        ' SELECT c_StuffCode, c_StuffName + ''*'' + ISNULL(sd4, '' '')+ ''*''+'
        + 'ISNULL(sd5, '' '')+ ''*''+ ISNULL(sd6, '' '')+ ''*''+ ISNULL(sd7, '' '')+ ''*''+ISNULL(sd8, '' '')+ ''*''+ ISNULL(sd9, '' '') AS Temp'
        + ' FROM StuffCoding' + ' WHERE (c_StuffCode <> 0)',
        'SELECT MIN(c_StuffCode), MAX(c_StuffCode) FROM StuffCoding WHERE (c_StuffCode <> 0)');

      AddItem(dmf.adcBSell, 'ReciptType', 'فرم', 'كد فرم', ftInteger,
        dvDefaults, 'True', '', ciCheck,
        'SELECT ReciptType, ReciptCaption FROM ReciptTypes  ' +
        'WHERE (ReciptType in (1,5,10,6) )', '');

      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateFilter;
      end;
    finally
      Free;
    end;
  end;
end;

procedure TSomeChangeOrdersF.UpdateFilter;
var
  ReciptType: string;
begin
  ReciptType := GetcFrom(myParams.ParamValues['ReciptType'], ftString);
  with qryRecipts do
  begin
    Active := False;
    SQL.Text := StringReplace(SQLRecipt, ':ReciptType', ReciptType,
      [rfReplaceAll]);

    Parameters.ParamByName('PersonID1From').Value :=
      GetcFrom(myParams.ParamValues['PersonID1'], ftInteger);
    Parameters.ParamByName('PersonID1To').Value :=
      GetcTo(myParams.ParamValues['PersonID1'], ftInteger);
    Parameters.ParamByName('ReciptDateFrom').Value :=
      GetcFrom(myParams.ParamValues['ReciptDate'], ftDate);
    Parameters.ParamByName('ReciptDateTo').Value :=
      GetcTo(myParams.ParamValues['ReciptDate'], ftDate);
    Parameters.ParamByName('ReciptNumberFrom').Value :=
      GetcFrom(myParams.ParamValues['number'], ftInteger);
    Parameters.ParamByName('ReciptNumberTo').Value :=
      GetcTo(myParams.ParamValues['number'], ftInteger);

    Parameters.ParamByName('ControlCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['ControlCode'], ftFloat);
    Parameters.ParamByName('ControlCodeTo').Value :=
      GetcTo(myParams.ParamValues['ControlCode'], ftFloat);

    Parameters.ParamByName('SecondTypeItemFrom').Value :=
      GetcFrom(myParams.ParamValues['SecondTypeItem'], ftInteger);
    Parameters.ParamByName('SecondTypeItemTo').Value :=
      GetcTo(myParams.ParamValues['SecondTypeItem'], ftInteger);
    Parameters.ParamByName('StuffCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['StuffCode'], ftLargeint);
    Parameters.ParamByName('StuffCodeTo').Value :=
      GetcTo(myParams.ParamValues['StuffCode'], ftLargeint);

    Active := True;
  end;
end;

procedure TSomeChangeOrdersF.FormShow(Sender: TObject);
begin
  inherited;
  InitForm;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('number') = nil then
    Close;
end;

end.
