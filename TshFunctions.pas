unit tshFunctions;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, sndkey32, DateUtils, Math, Mask, DBCtrls, DB, Grids, Vcl.DBGrids, ADODB,
  ppBands, ppCache, ppClass, ppParameter, ppProd, ppReport, ppComm, ppRelatv,
  ppDB, ppDBPipe, ComCtrls, FormFunctions, Menus, ppVar, ppCtrls, ppPrnabl,
  SumDBGrid, shamsiDate, ppDesignLayer, System.ImageList, System.Actions;

type
  TtshFunctionsF = class(Ttemplate2MDIF)
    qryFunctions: TADOQuery;
    srcFunctions: TDataSource;
    okPanel: TPanel;
    btn4: TBitBtn;
    btn5: TBitBtn;
    newPanel: TPanel;
    btn1: TBitBtn;
    btn2: TBitBtn;
    btn3: TBitBtn;
    btnExcel: TBitBtn;
    qryFunctionsFunctionId: TIntegerField;
    qryFunctionsFunctionInfoType: TWordField;
    qryFunctionsWorkShopId: TIntegerField;
    qryFunctionsMachineId: TLargeintField;
    qryFunctionsPersonId: TIntegerField;
    qryFunctionsStuffId: TLargeintField;
    qryFunctionsProductionprocess: TIntegerField;
    qryFunctionsGate: TIntegerField;
    qryFunctionsRatio: TIntegerField;
    qryFunctionsFunctionDate: TStringField;
    qryFunctionsStartHour: TDateTimeField;
    qryFunctionsEndHour: TDateTimeField;
    qryFunctionsFunctionNote: TWideStringField;
    qryFunctionsCaseId: TIntegerField;
    qryFunctionsFunctionType: TWordField;
    qryFunctionsFunctionStatus: TWordField;
    qryWorkShopId: TADOQuery;
    qryPerson: TADOQuery;
    qryMahsool: TADOQuery;
    qryMachineId: TADOQuery;
    qryProductionprocess: TADOQuery;
    qryEarthField: TADOQuery;
    qryCaseId: TADOQuery;
    qryFunctions_WorkShopId: TStringField;
    qryFunctions_PersonId: TStringField;
    qryFunctions_StuffId: TStringField;
    qryFunctions_Productionprocess: TStringField;
    qryFunctions_EarthField: TStringField;
    qryFunctions_CaseId: TStringField;
    actExcel: TAction;
    btnExcel1: TBitBtn;
    actFilter: TAction;
    actCopyPaste: TAction;
    actPrint: TAction;
    actSort: TAction;
    btnSort: TBitBtn;
    btnSort1: TBitBtn;
    btnSearch_: TBitBtn;
    actGetExcel: TAction;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppParameterList1: TppParameterList;
    btnPrint: TBitBtn;
    qryFunctionsEarthField: TStringField;
    grd1: TDBGrid;
    tbc1: TTabControl;
    qryFunctions_MachineName: TStringField;
    qryFunctionsAmount1: TFloatField;
    qryFunctionsAmount2: TFloatField;
    qryFunctionsAmount3: TFloatField;
    pnlMaster: TPanel;
    pnlDate: TPanel;
    lbl2: TLabel;
    medtDate: TMaskEdit;
    pnlWorkShopId: TPanel;
    lblWorkShopId: TLabel;
    btnWorkShop: TSpeedButton;
    medtWorkShopId: TMaskEdit;
    medtWorkShopName: TMaskEdit;
    pnlStuffId: TPanel;
    lblStuffId: TLabel;
    btnStuffId: TSpeedButton;
    medtStuffId: TMaskEdit;
    medtStuffName: TMaskEdit;
    pnlPersonId: TPanel;
    lblPersonId: TLabel;
    btnPersonId: TSpeedButton;
    medtPersonId: TMaskEdit;
    medtPersonName: TMaskEdit;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    qryStuffCode2: TADOQuery;
    qryStuffCode3: TADOQuery;
    qryFunctionsStuffCode2: TLargeintField;
    qryFunctionsStuffCode3: TLargeintField;
    qryFunctions_StuffCode2: TStringField;
    qryFunctions_StuffCode3: TStringField;
    qryFunctionsMaintenanceID: TIntegerField;
    PopupMenu1: TPopupMenu;
    N11: TMenuItem;
    N21: TMenuItem;
    N31: TMenuItem;
    qryFunctionsShiftWork: TWordField;
    qryFunctionsShift: TWordField;
    qryFunctionsShiftWorkTime: TDateTimeField;
    qryFunctionsOverTime: TDateTimeField;
    qryFunctionsFunctionHour: TDateTimeField;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppPageStyle1: TppPageStyle;
    ppShape1: TppShape;
    ppShape2: TppShape;
    ppShape3: TppShape;
    ppShape4: TppShape;
    ppShape5: TppShape;
    ppShape6: TppShape;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel13: TppLabel;
    ppLabel10: TppLabel;
    ppLine3: TppLine;
    ppLabel7: TppLabel;
    ppLabel11: TppLabel;
    ppDBText4: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppLabel12: TppLabel;
    ppLabel15: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    actStatus: TAction;
    popStatus: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    AllStatus1: TMenuItem;
    BitBtn2: TBitBtn;
    actFunctionCopy: TAction;
    PopupMenu2: TPopupMenu;
    N4: TMenuItem;
    grpFunctionCopy: TGroupBox;
    medtFunctionCopy: TMaskEdit;
    Label1: TLabel;
    btnFunctionCopy: TBitBtn;
    ProgressBar1: TProgressBar;
    Label2: TLabel;
    SumGrid1: TSumGrid;
    actMachineStopF2: TAction;
    actMachineStopF3: TAction;
    popOther: TPopupMenu;
    MenuItem1: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    qryFunctionsFunctionAmount: TFloatField;
    btnRecall: TBitBtn;
    actRecall: TAction;
    qryFunctions_Row: TIntegerField;
    popDel: TPopupMenu;
    MenuItem2: TMenuItem;
    N7: TMenuItem;
    pnlBottomCheck: TPanel;
    SpeedButton21: TSpeedButton;
    newPanel2: TPanel;
    lblPersonIdChange: TLabel;
    qryFunctionsFirstUser: TStringField;
    qryFunctionsLastUser: TStringField;
    qryFunctions_SupervisorAllocation: TSmallintField;
    qryFunctionsSupervisor: TWordField;
    Image2: TImage;
    Image1: TImage;
    actCopyAll: TAction;
    N8: TMenuItem;
    pnlType10: TPanel;
    Label3: TLabel;
    medtStartHour: TMaskEdit;
    qryEarthFieldEarthField: TStringField;
    qryEarthFieldGate: TIntegerField;
    qryEarthFieldEarthDesc: TWideStringField;
    procedure srcFunctionsStateChange(Sender: TObject);
    procedure qryFunctionsAfterInsert(DataSet: TDataSet);
    procedure btnWorkShopClick(Sender: TObject);
    procedure medtWorkShopIdKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure medtPersonIdKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure medtStuffIdKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnPersonIdClick(Sender: TObject);
    procedure btnStuffIdClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure grd1EditButtonClick(Sender: TObject);
    procedure grd1KeyPress(Sender: TObject; var Key: Char);
    procedure qryFunctionsStartHourGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure actExcelExecute(Sender: TObject);
    procedure qryFunctionsAfterPost(DataSet: TDataSet);
    procedure qryFunctionsALLPikGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qryFunctionsALLPikSetText(Sender: TField; const Text: String);
    procedure actFilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actCopyPasteExecute(Sender: TObject);
    procedure qryFunctionsBeforePost(DataSet: TDataSet);
    procedure actGetExcelExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure actManagGridColumnsExecute(Sender: TObject);
    procedure qryFunctionsBeforeDelete(DataSet: TDataSet);
    procedure qryFunctionsAfterDelete(DataSet: TDataSet);
    procedure tbc1Change(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure ppLblCaptionGetText(Sender: TObject; var Text: String);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
    procedure tbc1Changing(Sender: TObject; var AllowChange: Boolean);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure qryFunctionsStartHourChange(Sender: TField);
    procedure AllStatus1Click(Sender: TObject);
    procedure actStatusExecute(Sender: TObject);
    procedure actFunctionCopyExecute(Sender: TObject);
    procedure btnFunctionCopyClick(Sender: TObject);
    procedure qryFunctionsBeforeEdit(DataSet: TDataSet);
    procedure actMachineStopF2Execute(Sender: TObject);
    procedure actMachineStopF3Execute(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure qryFunctionsPersonIdChange(Sender: TField);
    procedure actRecallExecute(Sender: TObject);
    procedure qryFunctionsCalcFields(DataSet: TDataSet);
    procedure N7Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure medtWorkShopIdChange(Sender: TObject);
    procedure qryFunctionsAfterScroll(DataSet: TDataSet);
    procedure qryFunctionsFunctionTypeChange(Sender: TField);
    procedure qryFunctionsAfterEdit(DataSet: TDataSet);
    procedure grd1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure grd1DblClick(Sender: TObject);
    procedure actCopyAllExecute(Sender: TObject);
  private
    FormType: Integer;
    FunctionId: Integer;
    qryPersonSQLText: string;
    Tab_Index: SmallInt;
    procedure UpdateFilter;
    procedure gridkeyenter(Sender: TObject; var Key: Char);
    function SumFunctionsInDay(DataSet: TDataSet): Boolean;
    procedure ShowCLOCKTIME;
    procedure SetRequiredFields;
    procedure ToggleCheck;
    { Private declarations }
  public
    procedure Enter(Form_Type, Function_Id: Integer);
    { Public declarations }
  end;

var
  tshFunctionsF: TtshFunctionsF;

implementation

uses DM, GlobalPro, searchCode_ADO, GetExcel, MMESSAGE, filter_ADO,
  FilterClass_ADO, sort2, search2, ManagGridColumns, FaraConsts, MachineStop,
  RecallTimeSheet, mdiMain, TshFunctionsCopy, FaraDesktopAlert,
  Filter_ADO_Const;

{$R *.dfm}

procedure TtshFunctionsF.actMachineStopF2Execute(Sender: TObject);
begin
  inherited;
  MachineStopF.Enter(qryFunctions, nil, 2)
end;

procedure TtshFunctionsF.actMachineStopF3Execute(Sender: TObject);
begin
  inherited;
  MachineStopF.Enter(qryFunctions, nil, 3)
end;

procedure TtshFunctionsF.actManagGridColumnsExecute(Sender: TObject);
begin
  inherited;
  ManagGridColumnsF.ShowColumns(DMf.adcBSell, grd1, FormType)
end;

procedure TtshFunctionsF.actCopyAllExecute(Sender: TObject);
begin
  inherited;
  try
    qryFunctions.AfterPost := nil;
    TshFunctionsCopyF.SelectRecall(qryFunctions, grd1);
  finally
    qryFunctions.AfterPost := qryFunctionsAfterPost;
  end;
end;

procedure TtshFunctionsF.actCopyPasteExecute(Sender: TObject);
var
  qry: TADOQuery;
  i: Byte;
begin
  inherited;
  BigMessageProgBar('در حال كپي سطر  ...‏', grd1.Columns.Count - 1);
  if (qryFunctions.State in dsEditModes) then
    qryFunctions.Post;
  qry := TADOQuery.Create(DMf);
  try
    with qry do
    begin
      Clone(qryFunctions, ltReadOnly);
      Filter := 'FunctionId =' + qryFunctions.FieldByName('FunctionId')
        .AsString;
      Filtered := True;
      qryFunctions.Append;
      for i := 1 to grd1.Columns.Count - 1 do
      begin
        if (not grd1.Columns[i].ReadOnly) and (grd1.Columns[i].Visible) then
          qryFunctions.FieldByName(grd1.Columns[i].FieldName).AsString :=
            FieldByName(grd1.Columns[i].FieldName).AsString;
        GoProgressBar(IntToStr(i));
      end;
      qryFunctionsStartHour.AsString := EmptyStr;
      qryFunctionsEndHour.AsString := EmptyStr;
      qryFunctionsFunctionAmount.AsFloat := 0;
      grd1.SetFocus;
    end; // with
  finally
    qry.Free;
    BigMessage('سطر كپي شد.‏', 1);
  end; // try

end;

procedure TtshFunctionsF.actExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(grd1)
end;

procedure TtshFunctionsF.btnStuffIdClick(Sender: TObject);
var
  b: Boolean;
  Results: array [0 .. 1] of String;
begin
  inherited;
  b := searchCode_ADOF.SearchCode2(DMf.adcBSell, lblStuffId.Caption,
    qryMahsool.SQL.Text, ['کد', lblStuffId.Caption], Results,
    [50, 150], alLeft);
  if b then
  begin
    medtStuffId.Text := Results[0];
    medtStuffName.Text := Results[1];
  end; // if
end;

procedure TtshFunctionsF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItem(DMf.adcBSell, 'PersonId', ' نام پرسنل ', 'كد پرسنل', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT Customers.CustID, Customers.CustName FROM Customers INNER JOIN '
        + 'CustomersGroup ON Customers.CustomerGrpID = CustomersGroup.CustomerGrpID '
        + 'WHERE (CustomersGroup.GroupType IN (11, 13, 14, 19))',
        'SELECT Min(PersonId),Max(PersonId) From Tsh.Functions');

      AddItemFilter(GetFilter, TFilterMonth);

      AddItem(DMf.adcBSell, 'FunctionDate', 'تاريخ ', 'تاريخ', ftDate, dvMinMax,
        '', '', ciSimple, '',
        'Select  min(FunctionDate),max(FunctionDate) from Tsh.Functions');
      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateFilter;
      end; // if
    finally
      Free;
    end; // try
  end; // with
end;

procedure TtshFunctionsF.actFunctionCopyExecute(Sender: TObject);
begin
  inherited;
  grpFunctionCopy.Visible := True;
end;

procedure TtshFunctionsF.actGetExcelExecute(Sender: TObject);
begin
  inherited;
  try
    qryFunctions.AfterPost := nil;
    GetExcelF.ShowImPortExcel(qryFunctions);
  finally
    qryFunctions.AfterPost := qryFunctionsAfterPost;
  end;
end;

procedure TtshFunctionsF.actPrintExecute(Sender: TObject);
begin
  inherited;
  PopupMenu1.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TtshFunctionsF.actRecallExecute(Sender: TObject);
begin
  inherited;
  try
    qryFunctions.AfterPost := nil;
    qryFunctions.DisableControls;
    RecallTimeSheetF.SelectRecall(tbc1.TabIndex,
      StrToInt(Trim(medtWorkShopId.Text)), qryFunctions, grd1);
  finally
    qryFunctions.EnableControls;
    qryFunctions.AfterPost := qryFunctionsAfterPost;
    qryFunctions.Edit;
    qryFunctions.Post;
  end;

end;

procedure TtshFunctionsF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryFunctions);
end;

procedure TtshFunctionsF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2f.ShowSort(qryFunctions);
end;

procedure TtshFunctionsF.actStatusExecute(Sender: TObject);
begin
  inherited;
  popStatus.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TtshFunctionsF.AllStatus1Click(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItem(DMf.adcBSell, 'WorkShopId', ' واحد سازماني ', 'كد', ftInteger,
        dvMinMax, '', '', ciLookup, SQLWorkShopVahede,
        'SELECT Min(WorkShopId),Max(WorkShopId) From Tsh.Functions');

      AddItemFilter(GetFilter, TFilterMonth);

      AddItem(DMf.adcBSell, 'FunctionDate', 'تاريخ ', 'تاريخ', ftDate, dvMinMax,
        '', '', ciSimple, '',
        'Select  Min(FunctionDate),Max(FunctionDate) from Tsh.Functions');
      if ShowModal = mrOk then
      begin
        GetFilterString;
        with DMf.qryTmpTmp do
        begin
          Active := False;
          SQL.Text := 'UPDATE Tsh.Functions SET FunctionStatus = %d ';
          SQL.Add(Format(' , UserChangeFunctionStatus = %s',
            [QuotedStr(User.name + '>' + (Sender as TMenuItem).Caption)]));
          SQL.Add('WHERE (FunctionDate BETWEEN :FDFrom AND :FDTo )');
          SQL.Add('AND (WorkShopId BETWEEN :WSidFrom AND :WSidTo )');
          SQL.Add('AND (CAST(SUBSTRING(FunctionDate, 6, 2) AS int) = :Month )');

          Parameters.ParamByName('Month').Value :=
            GetcTo(myParams.ParamValues['Month'], ftInteger);

          Parameters.ParamByName('FDFrom').Value :=
            GetcFrom(myParams.ParamValues['FunctionDate'], ftDate);
          Parameters.ParamByName('FDTo').Value :=
            GetcTo(myParams.ParamValues['FunctionDate'], ftDate);

          Parameters.ParamByName('WSidFrom').Value :=
            GetcFrom(myParams.ParamValues['WorkShopId'], ftInteger);
          Parameters.ParamByName('WSidTo').Value :=
            GetcTo(myParams.ParamValues['WorkShopId'], ftInteger);
          SQL.Text := Format(SQL.Text, [(Sender as TMenuItem).Tag]);
          BigMessage(IntToStr(ExecSQL) + 'مورد ' + (Sender as TMenuItem).Caption
            + ' انجام شد.', 1);
        end;
      end;
    finally
      Free;
      qryFunctions.Requery();
    end;
  end;
end;

procedure TtshFunctionsF.BitBtn1Click(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  UpdateFilter
end;

procedure TtshFunctionsF.BitBtn2Click(Sender: TObject);
begin
  inherited;
  popOther.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TtshFunctionsF.btn3Click(Sender: TObject);
begin
  inherited;
  popDel.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TtshFunctionsF.btnFunctionCopyClick(Sender: TObject);
var
  i: Integer;
  qry: TADOQuery;
begin
  inherited;
  qry := TADOQuery.Create(nil);
  with qry do
    try
      Connection := DMf.adcBSell;
      qryFunctions.AfterPost := nil;
      qryFunctions.DisableControls;
      Active := False;
      SQL.Text := 'SELECT *';
      SQL.Add('FROM Tsh.Functions');
      SQL.Add('WHERE (FunctionDate = :FunctionDate )');
      SQL.Add('AND (WorkShopId = :WorkShopId )');
      Parameters.ParamByName('FunctionDate').Value := medtFunctionCopy.Text;
      Parameters.ParamByName('WorkShopId').Value := medtWorkShopId.Text;
      Active := True;
      ProgressBar1.Position := 0;
      ProgressBar1.Max := RecordCount;
      while not Eof do
      begin
        qryFunctions.Insert;
        for i := 0 to grd1.Columns.Count - 1 do
          if (grd1.Columns[i].Visible) and (not grd1.Columns[i].ReadOnly) then
            qryFunctions.FieldByName(grd1.Columns[i].FieldName).Value :=
              FieldByName(grd1.Columns[i].FieldName).Value;
        qryFunctions.Post;
        ProgressBar1.StepIt;
        Label2.Caption := IntToStr(RecNo) + '/' + IntToStr(RecordCount);
        Application.ProcessMessages;
        Next;
      end;
    finally
      qryFunctions.AfterPost := qryFunctionsAfterPost;
      qryFunctions.EnableControls;
      srcFunctionsStateChange(nil);
      Active := False;
      qry.Free;
      BigMessage('انجام شد', 1);
    end;
end;

procedure TtshFunctionsF.btnPersonIdClick(Sender: TObject);
var
  b: Boolean;
  Results: array [0 .. 2] of String;
  txt: string;
begin
  inherited;
  txt := qryPerson.SQL.Text + 'AND (Customers.PersonID1  = ' +
    Trim(medtWorkShopId.Text) + ')AND (Customers.CustomerActive = 0)';
  b := searchCode_ADOF.SearchCode2(DMf.adcBSell, lblPersonId.Caption, txt,
    ['کد', lblPersonId.Caption, ''], Results, [50, 150, 0], alLeft);
  if b then
  begin
    medtPersonId.Text := Results[0];
    medtPersonName.Text := Results[1];
  end; // if

end;

procedure TtshFunctionsF.btnWorkShopClick(Sender: TObject);
var
  b: Boolean;
  Results: array [0 .. 1] of String;
begin
  inherited;
  b := searchCode_ADOF.SearchCode2(DMf.adcBSell, lblWorkShopId.Caption,
    qryWorkShopId.SQL.Text, ['کد', lblWorkShopId.Caption], Results,
    [50, 150], alLeft);
  if b then
  begin
    medtWorkShopId.Text := Results[0];
    medtWorkShopName.Text := Results[1];
  end; // if
end;

procedure TtshFunctionsF.grd1DblClick(Sender: TObject);
begin
  inherited;
  ToggleCheck;
end;

procedure TtshFunctionsF.ToggleCheck;
begin
  if (qryFunctions_SupervisorAllocation.AsInteger = 1) and (User.PowerUser) then
    with qryFunctions do
    begin
      FieldByName('Supervisor').AsInteger :=
        ifthen(FieldByName('Supervisor').AsInteger <> 0, 0, 1);
    end
  else
    initDesktopAlert(0, 'اين امكان براي شما وجود ندارد', nil);

end;

procedure TtshFunctionsF.grd1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  grd1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  if Column.FieldName = 'Supervisor' then
  begin
    grd1.Canvas.Rectangle(Rect);
    if qryFunctions.FieldByName('Supervisor').AsInteger <> 0 then
      grd1.Canvas.Draw(Rect.Left + Column.Width div 2, Rect.Top,
        Image1.Picture.Graphic)
    else
      grd1.Canvas.Draw(Rect.Left + Column.Width div 2, Rect.Top,
        Image2.Picture.Graphic)
  end;
end;

procedure TtshFunctionsF.grd1EditButtonClick(Sender: TObject);
var
  id: SmallInt;
  b: Boolean;
  Results: array [0 .. 2] of String;
begin
  inherited;
  if not(qryFunctions.State in dsEditModes) then
    Exit;
  id := (Sender as TDBGrid).SelectedIndex;

  // if grd1.Columns[id].FieldName = 'WorkGroupId' then
  // begin
  // b := searchCode_ADOF.SearchCode2(DMf.adcBSell, lblWorkShopId.Caption,
  // qryWorkGroupId.SQL.Text, ['کد', lblWorkShopId.Caption], Results,
  // [50, 150], alLeft);
  // if b then
  // qryFunctions.FieldByName('WorkGroupId').AsString := Results[0];
  // end;

  if grd1.Columns[id].FieldName = 'WorkShopId' then
  begin
    b := searchCode_ADOF.SearchCode2(DMf.adcBSell, lblWorkShopId.Caption,
      qryWorkShopId.SQL.Text, ['کد', lblWorkShopId.Caption], Results,
      [50, 150], alLeft);
    if b then
      qryFunctions.FieldByName('WorkShopId').AsString := Results[0];
  end;

  if grd1.Columns[id].FieldName = 'PersonId' then
  begin
    b := searchCode_ADOF.SearchCode2(DMf.adcBSell, lblPersonId.Caption,
      qryPerson.SQL.Text + 'AND (Customers.PersonID1  = ' +
      Trim(medtWorkShopId.Text) + ')AND (Customers.CustomerActive = 0)',
      ['کد', lblPersonId.Caption], Results, [50, 150], alLeft);
    if b then
      qryFunctions.FieldByName('PersonId').AsString := Results[0];
  end;

  if grd1.Columns[id].FieldName = 'StuffId' then
  begin
    b := searchCode_ADOF.SearchCode2(DMf.adcBSell, lblStuffId.Caption,
      qryMahsool.SQL.Text, ['کد', lblStuffId.Caption], Results,
      [50, 150], alLeft);
    if b then
      qryFunctions.FieldByName('StuffId').AsString := Results[0];
  end;

  if grd1.Columns[id].FieldName = 'StuffCode2' then
  begin
    b := searchCode_ADOF.SearchCode2(DMf.adcBSell, 'کد و عنوان عملیات',
      qryStuffCode2.SQL.Text, ['کد', ' عنوان عملیات'], Results,
      [50, 150], alLeft);
    if b then
      qryFunctions.FieldByName('StuffCode2').AsString := Results[0];
  end;

  if grd1.Columns[id].FieldName = 'StuffCode3' then
  begin
    b := searchCode_ADOF.SearchCode2(DMf.adcBSell, 'کد و عنوان ادوات ',
      qryStuffCode3.SQL.Text, ['کد', ' عنوان ادوات ', 'مشخصات فنی'], Results,
      [50, 150, 50], alLeft);
    if b then
      qryFunctions.FieldByName('StuffCode3').AsString := Results[0];
  end;

  if grd1.Columns[id].FieldName = 'MachineId' then
  begin
    b := searchCode_ADOF.SearchCode2(DMf.adcBSell, 'خودرو',
      qryMachineId.SQL.Text, ['کد', 'خودرو'], Results, [50, 150], alLeft);
    if b then
      qryFunctions.FieldByName('MachineId').AsLargeInt :=
        StrToInt64(Results[0]);
  end;

  if grd1.Columns[id].FieldName = 'Productionprocess' then
  begin
    b := searchCode_ADOF.SearchCode2(DMf.adcBSell, 'فرآيند',
      qryProductionprocess.SQL.Text, ['کد', 'فرآيند'], Results,
      [50, 150], alLeft);
    if b then
      qryFunctions.FieldByName('Productionprocess').AsString := Results[0];
  end;

  if (grd1.Columns[id].FieldName = 'EarthField') or
    (grd1.Columns[id].FieldName = 'Gate') then
  begin
    b := searchCode_ADOF.SearchCode2(DMf.adcBSell, 'زمين پارت',
      qryEarthField.SQL.Text, ['کد', 'کدپارت', 'زمين پارت'], Results,
      [50, 80, 200], alLeft);
    if b then
    begin
      qryFunctions.FieldByName('EarthField').AsString := Results[0];
      qryFunctions.FieldByName('Gate').AsString := Results[1];

    end;
  end;

  if grd1.Columns[id].FieldName = 'CaseId' then
  begin
    b := searchCode_ADOF.SearchCode2(DMf.adcBSell, 'پرونده', qryCaseId.SQL.Text,
      ['کد', 'پرونده'], Results, [50, 150], alLeft);
    if b then
      qryFunctions.FieldByName('CaseId').AsString := Results[0];
  end;

end;

procedure TtshFunctionsF.grd1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  gridkeyenter(Sender, Key)
end;

procedure TtshFunctionsF.gridkeyenter(Sender: TObject; var Key: Char);
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
          Exit;
        aDataSet := (Sender as TDBGrid).DataSource.DataSet;
        nextIndex := curIndex + 1;

        if (curIndex > 0) and (aDataSet.FieldByName('WorkShopId').ISNULL) then
        begin
          aDataSet.Cancel;
          okPanel.SetFocus;
          Exit;
        end;
      end; // #13
    '+':
      begin
        Key := #0;
        nextIndex := curIndex - 1;
        while (nextIndex >= 0) and (not(grd1.Columns[nextIndex].Visible) OR
          (grd1.Columns[nextIndex].ReadOnly)) do
          Dec(nextIndex);
        if nextIndex < 0 then
          nextIndex := -3;
      end; // +
    '*':
      begin
        Key := #0;
        SendKeys('000', False);
      end; // *
    #27:
      if (Sender as TDBGrid).DataSource.DataSet.State in dsEditModes then
        (Sender as TDBGrid).DataSource.DataSet.Cancel;

      #32, #157:
    begin
      if grd1.Columns[curIndex].ButtonStyle = cbsEllipsis then
      begin
        Key := #0;
        grd1EditButtonClick(Sender);
      end;
      if grd1.Columns[curIndex].FieldName = 'Supervisor' then
      begin
        Key := #0;
        ToggleCheck
      end;

    end;
  end; // case
  if grd1.Columns[curIndex].FieldName = 'Supervisor' then
    Key := #0;

  if nextIndex >= 0 then
    while (nextIndex < grd1.Columns.Count) and
      (not(grd1.Columns[nextIndex].Visible) OR
      (grd1.Columns[nextIndex].ReadOnly)) do
      Inc(nextIndex);
  if nextIndex >= (Sender as TDBGrid).Columns.Count then
    nextIndex := -1;
  if (curIndex <> nextIndex) then
    case nextIndex of
      - 1:
        begin
          sendkey(vk_down, [], False);
          grd1.SelectedIndex := 0;
        end;
      // 0
      -2:
        begin
          if (Sender as TDBGrid).DataSource.State in dsEditModes then
            (Sender as TDBGrid).DataSource.DataSet.Cancel;
          Perform(WM_NEXTDLGCTL, 0, 0);
        end; // -2
      -3:
        begin
          if (Sender as TDBGrid).DataSource.State in dsEditModes then
            (Sender as TDBGrid).DataSource.DataSet.Cancel;
          Perform(WM_NEXTDLGCTL, 1, 0);
        end; // -3
    else
      (Sender as TDBGrid).SelectedIndex := nextIndex;
end;

end;

procedure TtshFunctionsF.Enter(Form_Type, Function_Id: Integer);
begin
  CreateMDIForm2(TtshFunctionsF, tshFunctionsF, mdiMainF, Form_Type);
  tshFunctionsF.FunctionId := Function_Id;
end;

procedure TtshFunctionsF.FormCreate(Sender: TObject);
var
  i: SmallInt;
begin
  inherited;
  // SetLookUpCash(qryFunctions);
  medtDate.Text := var_glb_CurrentDate;
  for i := 0 to High(FunctionInfoType) do
    tbc1.Tabs.Add(FunctionInfoType[i]);
  FormType := var_glb_gParam;
  actStatus.Visible := (FormType = 0) and (User.level >= 16);

  With qryMahsool do
  begin
    SQL.Text := 'SELECT StuffCoding.c_StuffCode, StuffCoding.c_StuffName';
    SQL.Add('FROM StuffCoding INNER JOIN StuffGroups ON StuffCoding.GroupID = StuffGroups.GroupID');
    if FormType = 10 then
      SQL.Add('WHERE (StuffGroups.GroupType IN (9))')
    else
      SQL.Add('WHERE (StuffGroups.GroupType IN (3))');
  end;

  tbc1Change(tbc1);
  // actRecall.Visible := User.poweruser;
end;

procedure TtshFunctionsF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
end;

procedure TtshFunctionsF.medtStuffIdKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    btnStuffId.Click;
end;

procedure TtshFunctionsF.medtPersonIdKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    btnPersonId.Click;
end;

procedure TtshFunctionsF.medtWorkShopIdChange(Sender: TObject);
begin
  inherited;
  With qryPerson do
  begin
    Active := False;
    SQL.Text := qryPersonSQLText;
    SQL.Add('AND (Customers.PersonID1  = ' + Trim(medtWorkShopId.Text) + ')');
    SQL.Add('AND (Customers.CustomerActive = 0)');
    Active := True;
  end;
end;

procedure TtshFunctionsF.medtWorkShopIdKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    btnWorkShop.Click;
end;

procedure TtshFunctionsF.N11Click(Sender: TObject);
begin
  inherited;
  try
    qryFunctions.DisableControls;
    InitReportFile(ppReport1, Self.name + IntToStr(FormType + tbc1.TabIndex) +
      '_' + IntToStr((Sender as TMenuItem).Tag), True);
  finally
    qryFunctions.EnableControls;
  end; // try
end;

procedure TtshFunctionsF.N7Click(Sender: TObject);
begin
  inherited;
  if not chkFunctionStatus(qryFunctions, aDeleteOrNotMainFun) then
    Abort;
  if get_response(Format(' آيا براي حذف %d  كاركرد نمايش داده مطمئن هستيد؟',
    [qryFunctions.RecordCount])) <> mrYes then
    Abort;
  With qryFunctions do
    try
      BeforeDelete := nil;
      AfterDelete := nil;
      DisableControls;
      while not Eof do
        Delete;
    finally
      BeforeDelete := qryFunctionsBeforeDelete;
      AfterDelete := qryFunctionsAfterDelete;
      EnableControls;
      qryFunctionsAfterDelete(qryFunctions);
    end;

end;

procedure TtshFunctionsF.qryFunctionsAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('كاركرد حذف شد.', 1);
end;

procedure TtshFunctionsF.qryFunctionsAfterEdit(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('LastUser').AsString := User.name;
end;

procedure TtshFunctionsF.qryFunctionsAfterInsert(DataSet: TDataSet);
var
  col: TColumn;
  i: Integer;
begin
  inherited;
  DataSet.FieldByName('FunctionId').AsInteger :=
    GetANewCode(Self.name, 'Tsh.Functions', 'FunctionId', DMf.adcBSell);
  DataSet.FieldByName('FunctionInfoType').AsInteger := Tab_Index;

  DataSet.FieldByName('StuffId').AsInteger := StrToInt(Trim(medtStuffId.Text));
  DataSet.FieldByName('WorkShopId').AsInteger :=
    StrToInt(Trim(medtWorkShopId.Text));
  DataSet.FieldByName('PersonId').AsInteger :=
    StrToInt(Trim(medtPersonId.Text));
  DataSet.FieldByName('FunctionDate').AsString := (Trim(medtDate.Text));
  if FormType = 10 then
    DataSet.FieldByName('StartHour').AsString := (Trim(medtStartHour.Text));

  DataSet.FieldByName('FunctionType').AsInteger := 0;
  DataSet.FieldByName('FunctionStatus').AsInteger := 0;
  DataSet.FieldByName('MachineId').AsInteger := 0;
  DataSet.FieldByName('CaseId').AsInteger := 0;
  DataSet.FieldByName('FunctionAmount').AsFloat := 0;
  DataSet.FieldByName('FirstUser').AsString := User.name;
  DataSet.FieldByName('Supervisor').AsInteger := 0;

  for i := 0 to grd1.Columns.Count - 1 do
    if grd1.Columns[i].Visible then
    begin
      col := grd1.Columns[i];
      if col.PickList.Text <> EmptyStr then
        DataSet.FieldByName(col.FieldName).AsInteger :=
          Integer(col.PickList.Objects[0]);
    end;
end;

procedure TtshFunctionsF.qryFunctionsALLPikGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
var
  col: TColumn;
begin
  inherited;
  col := grd1.Columns[ColumnIndexByFieldName(grd1,
    (Sender as TField).FieldName)];
  // if col.PickList.IndexOfObject(TObject(Sender.AsInteger)) <> -1 then
  Text := col.PickList[Sender.AsInteger];
  // Text := col.PickList[col.PickList.IndexOfObject(TObject(Sender.AsInteger))];
end;

procedure TtshFunctionsF.qryFunctionsALLPikSetText(Sender: TField;
  const Text: String);
var
  col: TColumn;
  i: Integer;
begin
  inherited;
  col := grd1.Columns[ColumnIndexByFieldName(grd1,
    (Sender as TField).FieldName)];
  i := col.PickList.IndexOf(Text);
  if i <> -1 then
    Sender.AsInteger := i;
  // Integer(col.PickList.Objects[i])
end;

procedure TtshFunctionsF.qryFunctionsBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if not chkFunctionStatus(DataSet, aDeleteOrNotMainFun) then
    Abort;
  if get_response(' آيا براي حذف كاركرد مطمئن هستيد؟') <> mrYes then
    Abort;
end;

procedure TtshFunctionsF.qryFunctionsBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if FormType = 0 then
  begin
    if not chkFunctionStatus(DataSet, aEdit) then
      Abort
  end
  else if not chkFunctionStatus(DataSet, aDeleteOrNotMainFun) then
    Abort
end;

procedure TtshFunctionsF.SetRequiredFields;
var
  b: Boolean;
begin
  qryFunctionsFunctionNote.Required := False;
  b := not qryFunctionsFunctionType.AsInteger in [5, 6, 8];
  // اماده بكار   غیبت  ماموريت
  // مزرعه،خودرو، فرآیند یا عملیات
  qryFunctionsStartHour.Required := b;
  qryFunctionsEndHour.Required := b;
  qryFunctionsOverTime.Required := b;
  qryFunctionsProductionprocess.Required := b;
  qryFunctions_Productionprocess.Required := b;
  qryFunctionsStuffId.Required := b;
  qryFunctions_StuffId.Required := b;
  qryFunctionsMachineId.Required := b;
  qryFunctions_MachineName.Required := b;
  qryFunctionsStuffCode2.Required := b;
  qryFunctions_StuffCode2.Required := b;
  qryFunctionsRatio.Required := b;
  qryFunctionsEarthField.Required := b;
  qryFunctionsCaseId.Required := b;
end;

procedure TtshFunctionsF.qryFunctionsBeforePost(DataSet: TDataSet);
begin
  inherited;
  if not((qryFunctionsFunctionDate.AsString >= opt.FunctionDate4EditFrom) and
    (qryFunctionsFunctionDate.AsString <= opt.FunctionDate4EditTo)) then
  begin
    Warn('كاركرد در اين تاريخ قابل ثبت و ويرايش نيست', mtInformation);
    Abort;
  end;

  SetRequiredFields;
  IF qryFunctionsStartHour.AsDateTime > qryFunctionsEndHour.AsDateTime then
    qryFunctionsEndHour.AsDateTime := IncDay(qryFunctionsEndHour.AsDateTime, 1);
  if not CheckRequiredFields(DataSet) then
    Abort;
  if not ValidateDatasetDates(DataSet, APPBank.StartYear, APPBank.endYear) then
    Abort;
  if not SumFunctionsInDay(DataSet) then
    Abort;
  if FormType in [7, 8, 9] then
    if DataSet.FieldByName('PersonId').AsInteger = 0 then
    begin
      Warn('کد پرسنل وارد نشده است');
      Abort;
    end;

  if qryFunctionsFunctionType.AsInteger = 7 then
    With DMf.qryTmpTmp do
    begin
      Active := False;
      SQL.Text := 'SELECT CalendarKind';
      SQL.Add('FROM Tsh.Calendar');
      SQL.Add('WHERE (CalendarDate = :Date)');
      Parameters.ParamByName('Date').Value := qryFunctionsFunctionDate.AsString;
      Active := True;
      if Fields[0].AsInteger = 0 then
      begin
        Warn('براي روز عادي امكان ثبت اين نوع كاركرد وجود ندارد',
          mtInformation);
        Abort;
      end;
      Active := False;
    end;
end;

Function TtshFunctionsF.SumFunctionsInDay(DataSet: TDataSet): Boolean;
var
  TotalMinutes: Integer;
  TotalMinutesInDay: Integer;
  StartHour, EndHour: string;
begin
  With DMf.qryTmpTmp do
  begin
    StartHour := FormatDateTime('yyyy-mm-dd HH:mm:00.000',
      DataSet.FieldByName('StartHour').AsDateTime);
    EndHour := FormatDateTime('yyyy-mm-dd HH:mm:00.000',
      DataSet.FieldByName('EndHour').AsDateTime);
    Active := False;
    SQL.Text := 'DECLARE @StartHour DateTime DECLARE @EndHour DateTime';
    SQL.Add(Format('SET @StartHour= %s SET @EndHour= %s', [QuotedStr(StartHour),
      QuotedStr(EndHour)]));
    SQL.Add('DECLARE @FirstUser varchar(500)');
    SQL.Add('SET @FirstUser =''''');
    SQL.Add('SELECT @FirstUser=@FirstUser+'' ''+ISNULL( FirstUser,'''')');
    SQL.Add('FROM Tsh.Functions');
    SQL.Add('WHERE (PersonId = :PersonId )');
    SQL.Add('AND (FunctionDate = :FunctionDate )');
    SQL.Add('AND (FunctionId <> :FunctionId )');
    SQL.Add('AND (@StartHour <> EndHour ) AND ( @EndHour <> StartHour ) AND ( @StartHour <> @EndHour )');
    SQL.Add('AND((@StartHour BETWEEN StartHour AND EndHour )');
    SQL.Add('OR ( @EndHour BETWEEN StartHour AND EndHour )');
    SQL.Add('OR ( StartHour BETWEEN @StartHour AND @EndHour )');
    SQL.Add('OR ( EndHour BETWEEN @StartHour AND @EndHour )');
    SQL.Add(')');
    SQL.Add('SELECT @FirstUser');
    Parameters.ParamByName('PersonId').Value := DataSet.FieldByName('PersonId')
      .AsInteger;
    Parameters.ParamByName('FunctionDate').Value :=
      DataSet.FieldByName('FunctionDate').AsString;
    Parameters.ParamByName('FunctionId').Value :=
      DataSet.FieldByName('FunctionId').AsInteger;
    // ShowQryParam(DMf.qryTmpTmp);
    Active := True;
    Result := Trim(Fields[0].AsString) = EmptyStr;
    if not Result then
    begin
      Warn('همپوشاني ساعت وجود دارد و قابل ثبت نيست' + #13#10 +
        Fields[0].AsString);
      Exit;
    end;
    TotalMinutesInDay := 16 * 60;
    TotalMinutes := MinutesBetween(DataSet.FieldByName('StartHour').AsDateTime,
      DataSet.FieldByName('EndHour').AsDateTime) +
    // HourOf(DataSet.FieldByName('FunctionHour').AsDateTime) +
      HourOf(DataSet.FieldByName('ShiftWorkTime').AsDateTime) +
      HourOf(DataSet.FieldByName('OverTime').AsDateTime);
    Active := False;
    SQL.Text := 'SELECT StartHour,EndHour,FunctionHour,ShiftWorkTime,OverTime';
    SQL.Add('FROM Tsh.Functions');
    SQL.Add('WHERE (PersonId = :PersonId )');
    SQL.Add('AND (FunctionDate = :FunctionDate )');
    SQL.Add('AND (FunctionId <> :FunctionId )');
    Parameters.ParamByName('PersonId').Value := DataSet.FieldByName('PersonId')
      .AsInteger;
    Parameters.ParamByName('FunctionDate').Value :=
      DataSet.FieldByName('FunctionDate').AsString;
    Parameters.ParamByName('FunctionId').Value :=
      DataSet.FieldByName('FunctionId').AsInteger;
    Active := True;
    while not Eof do
    begin
      TotalMinutes := TotalMinutes + MinutesBetween(FieldByName('StartHour')
        .AsDateTime, FieldByName('EndHour').AsDateTime) +
        HourOf(FieldByName('ShiftWorkTime').AsDateTime) +
        HourOf(FieldByName('OverTime').AsDateTime);
      Next;
    end;
    Active := False;
    Result := TotalMinutes <= TotalMinutesInDay;
    if not Result then
      Warn(Format
        ('مجموع ساعت هاي وارد شده %f ساعت است كه از حداكثر ساعت مجاز بالاتر است.',
        [TotalMinutes / 60]));
  end;

end;

procedure TtshFunctionsF.qryFunctionsCalcFields(DataSet: TDataSet);
begin
  inherited;
  qryFunctions_Row.AsInteger := Abs(DataSet.RecNo)
end;

procedure TtshFunctionsF.qryFunctionsFunctionTypeChange(Sender: TField);
var
  i: Integer;
begin
  inherited;
  case qryFunctionsFunctionType.AsInteger of
    2: // مرخصي استحقاقي
      begin
        qryFunctionsStartHour.ReadOnly := False;
        qryFunctionsEndHour.ReadOnly := False;
        qryFunctionsStartHour.AsString := '07:00';
        i := DateUtils.DayOfTheWeek
          (Shamsi2Miladi(qryFunctionsFunctionDate.AsString));
        if i = DateUtils.DayThursday then
        begin
          qryFunctionsEndHour.AsString := '11:00';
        end
        else
        begin
          qryFunctionsEndHour.AsString := '15:00';
        end;
        qryFunctionsStartHour.ReadOnly := True;
        qryFunctionsEndHour.ReadOnly := True;
      end;
    // 3: // مرخصي ساعتي
    // begin
    //
    // end;
  else
    begin
      qryFunctionsStartHour.ReadOnly := False;
      qryFunctionsEndHour.ReadOnly := False;
    end;
  end;

end;

procedure TtshFunctionsF.qryFunctionsPersonIdChange(Sender: TField);
begin
  inherited;
  if qryFunctions.State in [dsInsert] then
    with DMf.qryTmpTmp do
      try
        Active := False;
        SQL.Text := 'SELECT Top 1 StuffCode';
        SQL.Add('FROM Machin.Delivery');
        SQL.Add('WHERE (CustID1 = :CustID1)');
        SQL.Add('ORDER BY DeliveryDate DESC, DeliveryID DESC');
        Parameters.ParamByName('CustID1').Value := Sender.AsInteger;
        Active := True;
        qryFunctions.FieldByName('MachineId').Value := FieldByName('StuffCode')
          .AsLargeInt;
      finally
        Active := False;
      end;
  ShowCLOCKTIME;

end;

procedure TtshFunctionsF.ShowCLOCKTIME;
begin
  with DMf.qryTmpTmp do
    try
      Active := False;
      SQL.Text := 'SELECT MIN(CLOCKTIME) + '' -> '' + MAX(CLOCKTIME) AS Expr2';
      SQL.Add('FROM Tsh.ClockDmp');
      SQL.Add(Format('WHERE (CLOCKDATE = %s )',
        [QuotedStr(Trim(medtDate.Text))]));
      SQL.Add(Format('AND (KARTNO =  %s )',
        [QuotedStr(qryFunctionsPersonId.AsString)]));
      Active := True;
      lblPersonIdChange.Caption := 'ثبت كارت ساعت : ' + Fields[0].AsString;
    finally
      Active := False;
    end;
end;

procedure TtshFunctionsF.qryFunctionsAfterPost(DataSet: TDataSet);
begin
  inherited;
  lblPersonIdChange.Caption := EmptyStr;
  BigMessage('ثبت شد.', 1);
end;

procedure TtshFunctionsF.qryFunctionsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  ShowCLOCKTIME
end;

procedure TtshFunctionsF.qryFunctionsStartHourChange(Sender: TField);
var
  EndHour: TDateTime;
begin
  inherited;
  EndHour := qryFunctionsEndHour.AsDateTime;
  if qryFunctionsStartHour.AsDateTime > EndHour then
    EndHour := IncDay(EndHour, 1);
  qryFunctionsFunctionHour.AsDateTime := EndHour -
    qryFunctionsStartHour.AsDateTime;

  SetShiftFunctions(qryFunctions);
  // // ساعت کارکرد 07:00 تا 15:00 صبح کار
  // // ساعت کارکرد15:00 تا 23:00 عصر کار
  // // ساعت کارکرد 23:00 تا 07:00 شب کار
  //
  // s := FormatDateTime('HH:mm', qryFunctionsStartHour.AsDateTime);
  // if (s > '03:00') and (s < '11:00') then
  // qryFunctionsShift.AsInteger := 0;
  // if (s > '11:00') and (s < '19:00') then
  // qryFunctionsShift.AsInteger := 1;
  // if (s > '19:00') or (s < '03:00') then
  // qryFunctionsShift.AsInteger := 2;

end;

procedure TtshFunctionsF.qryFunctionsStartHourGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text := FormatDateTime('HH:mm', Sender.AsDateTime);
end;

procedure TtshFunctionsF.tbc1Change(Sender: TObject);
begin
  inherited;
  UpdateFilter;
  SetColSize(grd1, 1, True, IntToStr(FormType) + '_' + IntToStr(tbc1.TabIndex));
end;

procedure TtshFunctionsF.tbc1Changing(Sender: TObject;
  var AllowChange: Boolean);
begin
  inherited;
  SaveColWidth(grd1, IntToStr(FormType) + '_' + IntToStr(tbc1.TabIndex));
end;

procedure TtshFunctionsF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(grd1, IntToStr(FormType) + '_' + IntToStr(tbc1.TabIndex));
end;

procedure TtshFunctionsF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(grd1, 1, True, IntToStr(FormType) + '_' + IntToStr(tbc1.TabIndex));

end;

procedure TtshFunctionsF.UpdateFilter;
var
  i: Integer;
begin
  FunctionsAmountCaptions(qryFunctions, tbc1.TabIndex);
  ManagGridColumnsF.SetColumns(DMf.adcBSell, grd1, FormType);
  for i := 0 to grd1.Columns.Count - 1 do
  begin
    if grd1.Columns[i].Visible then
      qryFunctions.FieldByName(grd1.Columns[i].FieldName).Required := True;
    if grd1.Columns[i].FieldName = qryFunctionsEarthField.FieldName then
      if not grd1.Columns[i].Visible then
        qryFunctions_EarthField.Free

  end;
  Tab_Index := tbc1.TabIndex;
  With qryPerson do
  begin
    SQL.Text :=
      'SELECT Customers.CustID,Customers.CustName,Customers.SupervisorAllocation FROM Customers';
    SQL.Add('INNER JOIN CustomersGroup ON ');
    SQL.Add('Customers.CustomerGrpID = CustomersGroup.CustomerGrpID');
  end;

  if FormType <> 0 then
  begin
    Tab_Index := FormType;
    tbc1.Tabs.Text := EmptyStr;
  end;
  actFunctionCopy.Visible := FormType = 2;
  case FormType of
    10:
      begin
        tbc1.Tabs.Text := 'خط تولید';
      end;
    9:
      begin
        tbc1.Tabs.Text := 'واحدهای ستادی';
        pnlWorkShopId.Visible := True;
        qryWorkShopId.SQL.Add(' AND dbo.ChkUser(Customers.OperatorID,' +
          IntToStr(User.id) + ')=1');

        qryPerson.SQL.Add('WHERE (CustomersGroup.GroupType IN(11,13,14,19))');
        btnRecall.Visible := True;
      end;
    8:
      begin
        tbc1.Tabs.Text := 'واحد های فنی';
        pnlWorkShopId.Visible := True;
        qryWorkShopId.SQL.Add(' AND dbo.ChkUser(Customers.OperatorID,' +
          IntToStr(User.id) + ')=1');

        qryPerson.SQL.Add('WHERE (CustomersGroup.GroupType IN(11,13,14,19))');
        btnRecall.Visible := True;
      end;

    7:
      begin
        tbc1.Tabs.Text := 'واحدهای اجرائی';
        pnlWorkShopId.Visible := True;
        qryWorkShopId.SQL.Add(' AND dbo.ChkUser(Customers.OperatorID,' +
          IntToStr(User.id) + ')=1');

        qryPerson.SQL.Add('WHERE (CustomersGroup.GroupType IN(11,13,14,19))');
        btnRecall.Visible := True;
      end;

    4:
      begin
        tbc1.Tabs.Text := 'پيمانكاران';
        pnlWorkShopId.Visible := True;
        qryWorkShopId.SQL.Add(' AND dbo.ChkUser(Customers.OperatorID,' +
          IntToStr(User.id) + ')=1');
        lblPersonId.Caption := 'كد و نام پيمانكار';
        qryFunctionsPersonId.DisplayLabel := 'كد پيمانكار';
        qryFunctions_PersonId.DisplayLabel := 'نام پيمانكار';

        qryPerson.SQL.Add('WHERE (CustomersGroup.GroupType IN(13))');

      end;
    5:
      begin
        tbc1.Tabs.Text := 'پرسنل';
        pnlPersonId.Visible := True;
        qryPerson.SQL.Add('WHERE (CustomersGroup.GroupType IN(11,13,14,19))');
        qryPerson.SQL.Add(' AND dbo.ChkUser(Customers.OperatorID,' +
          IntToStr(User.id) + ')=1');

      end;
  else
    begin
      qryPerson.SQL.Add('WHERE (CustomersGroup.GroupType IN(11,13,14,19))');
    end;
  end;
  qryPerson.SQL.Add('AND (Customers.CustomerActive = 0)');
  qryWorkShopId.SQL.Add('AND (Customers.CustomerActive = 0)');
  qryPersonSQLText := qryPerson.SQL.Text;

  pnlType10.Visible := Tab_Index in [10];;
  setColumns2(grd1, not pnlType10.Visible, 'StartHour');

  pnlDate.Visible := Tab_Index in [1, 7, 8, 9, 3, 4, 10];
  if Tab_Index in [1, 7, 8, 9, 3, 4, 10] then
  begin
    setColumns2(grd1, not pnlDate.Visible, 'FunctionDate');
  end;
  pnlWorkShopId.Visible := Tab_Index in [7, 8, 9, 4, 5];
  if Tab_Index in [7, 8, 9, 4, 5] then
  begin
    setColumns2(grd1, not pnlWorkShopId.Visible, 'WorkShopId');
    setColumns2(grd1, not pnlWorkShopId.Visible, '_WorkShopId');
  end;
  pnlPersonId.Visible := Tab_Index in [5];
  if Tab_Index in [5] then
  begin
    setColumns2(grd1, not pnlPersonId.Visible, 'PersonId');
    setColumns2(grd1, not pnlPersonId.Visible, '_PersonId');
  end;
  pnlStuffId.Visible := Tab_Index in [6, 10];
  if Tab_Index = 6 then
  begin
    setColumns2(grd1, not pnlStuffId.Visible, 'StuffId');
    setColumns2(grd1, not pnlStuffId.Visible, '_StuffId');
  end;
  setColumns2(grd1, True, 'FunctionHour');

  Caption := 'ثبت كاركرد ' + FunctionInfoType[Tab_Index]; // tbc1.TabIndex
  lblCaption.Caption := Caption;

  pnlDate.Top := 0;
  With qryFunctions do
  begin
    Active := False;
    SQL.Text := 'SELECT * FROM Tsh.Functions ';
    // SQL.Add('WHERE (FunctionInfoType >= 0 ) ');
    if myParams.FindParam('FunctionDate') = nil then
      SQL.Add(' WHERE FunctionId = 0')
    else
    begin
      SQL.Add('WHERE (FunctionDate BETWEEN :FunctionDateFrom AND :FunctionDateTo )');
      SQL.Add('AND (CAST(SUBSTRING(FunctionDate, 6, 2) AS int) = :Month )');

      SQL.Add('AND (PersonId BETWEEN :PersonIdFrom AND :PersonIdTo )');

      Parameters.ParamByName('PersonIDFrom').Value :=
        GetcFrom(myParams.ParamValues['PersonID'], ftInteger);
      Parameters.ParamByName('PersonIDTo').Value :=
        GetcTo(myParams.ParamValues['PersonID'], ftInteger);

      Parameters.ParamByName('FunctionDateFrom').Value :=
        GetcFrom(myParams.ParamValues['FunctionDate'], ftDate);
      Parameters.ParamByName('FunctionDateTo').Value :=
        GetcTo(myParams.ParamValues['FunctionDate'], ftDate);

      Parameters.ParamByName('Month').Value :=
        GetcTo(myParams.ParamValues['Month'], ftInteger);

    end;

    if pnlDate.Visible then
      SQL.Add('AND (FunctionDate = ''' + Trim(medtDate.Text) + ''' )');

    if pnlWorkShopId.Visible then
      SQL.Add('AND (WorkShopId = ' + Trim(medtWorkShopId.Text) + ' )');

    if pnlStuffId.Visible then
      SQL.Add('AND (StuffId = ' + Trim(medtStuffId.Text) + ' )');

    if pnlPersonId.Visible then
      SQL.Add('AND (PersonId = ' + Trim(medtPersonId.Text) + ' )');

    Active := True;

    if FunctionId <> 0 then
      if not Locate('FunctionId', FunctionId, []) then
        Warn(Format('كاركرد پرسنل مورد نظر يافت نشد', [FunctionId]));
  end;

  // setColumns2(grd1, SubsysMenu[07].Active, 'Gate');
  // setColumns2(grd1, SubsysMenu[07].Active, 'EarthField');
  // setColumns2(grd1, SubsysMenu[07].Active, '_EarthField');
end;

procedure TtshFunctionsF.srcFunctionsStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qryFunctions.State in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
  pnlMaster.Enabled := qryFunctions.Active and (qryFunctions.RecordCount = 0);
  FreeReservedCodes(DMf.adcBSell, 'Tsh.Functions', '', Self.name);
end;

procedure TtshFunctionsF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  Text := GetPrintDate;
end;

procedure TtshFunctionsF.ppSysVarPageNoGetText(Sender: TObject;
  var Text: String);
begin
  Text := GetPageNumberString(Text)
end;

procedure TtshFunctionsF.ppLblCaptionGetText(Sender: TObject; var Text: String);
begin
  Text := Caption;
end;

procedure TtshFunctionsF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  Text := APPBank.CompanyName;
end;

end.
