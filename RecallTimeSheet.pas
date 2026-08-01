{ -----------------------------------------------------------------------------
  Unit Name: RecallIndent
  Author:    Mahmood
  ----------------------------------------------------------------------------- }
unit RecallTimeSheet;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template5, StdCtrls, CheckLst, DBActns, ActnList, Buttons,
  ExtCtrls, DB, ADODB, Grids, Vcl.DBGrids, ComCtrls, DBClient, Provider,
  ppBands, ppCtrls, ppPrnabl, ppClass, ppDB, ppCache, ppDBPipe, ppComm,
  ppRelatv, ppProd, ppReport, DBCtrls, Menus, sndkey32, Math, Mask,
  System.Actions;

type
  TSearchItem = class
    fieldName: String;
    caption: String;
    IsString: Boolean;
  end;

  TRecallTimeSheetF = class(TTemplate5F)
    qryIndent: TADOQuery;
    dsIndent: TDataSource;
    BitBtn1: TBitBtn;
    actSearch: TAction;
    actSort: TAction;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn5: TBitBtn;
    actPrint: TAction;
    actExcel: TAction;
    actSelectAll: TAction;
    actSlelectInverse: TAction;
    DBGrid1: TDBGrid;
    qryInsert: TADOQuery;
    actRptCardex: TAction;
    actFilter: TAction;
    actShowpreRecipt: TAction;
    Imgchecked: TImage;
    ImgUnchecked: TImage;
    PopMnuRecall: TPopupMenu;
    MenuItem1: TMenuItem;
    N1: TMenuItem;
    BitBtn4: TBitBtn;
    BitBtn6: TBitBtn;
    lblWorkShopId: TLabel;
    medtWorkShopId: TMaskEdit;
    medtWorkShopName: TMaskEdit;
    BitBtn7: TBitBtn;
    qryIndentFunctionId: TIntegerField;
    qryIndentFunctionInfoType: TWordField;
    qryIndentWorkShopId: TIntegerField;
    qryIndentMachineId: TLargeintField;
    qryIndentPersonId: TIntegerField;
    qryIndentStuffId: TLargeintField;
    qryIndentProductionprocess: TIntegerField;
    qryIndentEarthField: TStringField;
    qryIndentGate: TIntegerField;
    qryIndentRatio: TIntegerField;
    qryIndentFunctionDate: TStringField;
    qryIndentStartHour: TDateTimeField;
    qryIndentEndHour: TDateTimeField;
    qryIndentFunctionHour: TDateTimeField;
    qryIndentFunctionNote: TWideStringField;
    qryIndentCaseId: TIntegerField;
    qryIndentFunctionType: TWordField;
    qryIndentFunctionStatus: TWordField;
    qryIndentAmount1: TFloatField;
    qryIndentAmount2: TFloatField;
    qryIndentAmount3: TFloatField;
    qryIndentMaintenanceID: TIntegerField;
    qryIndentStuffCode2: TLargeintField;
    qryIndentStuffCode3: TLargeintField;
    qryIndentShiftWork: TWordField;
    qryIndentShift: TWordField;
    qryIndentShiftWorkTime: TDateTimeField;
    qryIndentOverTime: TDateTimeField;
    Image2: TImage;
    qryIndent_PersonName: TStringField;
    qryIndent_WorkShopId: TStringField;
    qryIndentFunctionAmount: TFloatField;
    qryIndentChecked: TFMTBCDField;
    CheckListBox1: TCheckListBox;
    N2: TMenuItem;
    procedure FormResize(Sender: TObject);
    procedure actSearchExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actExcelExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure N1Click(Sender: TObject);
    procedure qryIndentStartHourGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure qryIndentEndHourGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure qryIndentFunctionHourGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure qryIndentFunctionTypeGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure qryIndentFunctionTypeSetText(Sender: TField; const Text: string);
    procedure N2Click(Sender: TObject);
  private
    sitem: TSearchItem;
    _FunctionInfoType, _StuffID: Integer;
    _qryitems: TADOQuery;
    procedure ToggleCheck(CalculateSummary: Boolean = True);
    procedure UpdateFilter;
    procedure InitForm(grd: TDBGrid);

    { Private declarations }
  public
    procedure SelectRecall(FunctionID, StuffID: Integer; qryitems: TADOQuery;
      grd: TDBGrid);
    { Public declarations }
  end;

var
  RecallTimeSheetF: TRecallTimeSheetF;

implementation

uses StrUtils, DM, GlobalPro, search2, sort2, filter_ADO, FilterClass_ADO,
  TshFunctions, RecallIndent;

{$R *.dfm}

procedure TRecallTimeSheetF.SelectRecall(FunctionID, StuffID: Integer;
  qryitems: TADOQuery; grd: TDBGrid);
begin
  RecallTimeSheetF := TRecallTimeSheetF.Create(Application);
  try
    with RecallTimeSheetF do
    begin
      _FunctionInfoType := FunctionID;
      _StuffID := StuffID;
      _qryitems := qryitems;
      InitForm(grd);
      if ShowModal = mrOk then
      begin

      end; // if
    end; // with
  finally
    RecallTimeSheetF.Free;
  end; // try

  // RecallTimeSheetF := TRecallTimeSheetF.Create(Application);
  // RecallTimeSheetF.ShowModal;
  // _FunctionInfoType := FunctionID;
  // _StuffID := StuffID;
  // _qryitems := qryitems;

end;

procedure TRecallTimeSheetF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 3);
end;

procedure TRecallTimeSheetF.UpdateFilter;
begin
  with qryIndent Do
  begin
    Active := False;
    Parameters.ParamByName('FunctionInfoType').Value := _FunctionInfoType;
    Parameters.ParamByName('FunctionDateFrom').Value :=
      GetcFrom(myParams.ParamValues['Date'], ftDate);
    Parameters.ParamByName('PersonIdFrom').Value :=
      GetcFrom(myParams.ParamValues['Personel'], ftInteger);
    Parameters.ParamByName('PersonIdTo').Value :=
      GetcTo(myParams.ParamValues['Personel'], ftInteger);
    Parameters.ParamByName('StuffId').Value :=
      GetcTo(myParams.ParamValues['StuffId'], ftInteger);
    Parameters.ParamByName('FunctionTypeFrom').Value :=
      GetcFrom(myParams.ParamValues['FunctionType'], ftInteger);
    Parameters.ParamByName('FunctionTypeTo').Value :=
      GetcTo(myParams.ParamValues['FunctionType'], ftInteger);
    // ShowQryParam(qryIndent);
    Active := True;
  end;
end;

procedure TRecallTimeSheetF.qryIndentEndHourGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text := FormatDateTime('HH:mm', Sender.AsDateTime);
end;

procedure TRecallTimeSheetF.qryIndentFunctionHourGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text := FormatDateTime('HH:mm', Sender.AsDateTime);
end;

procedure TRecallTimeSheetF.qryIndentFunctionTypeGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
var
  col: TColumn;
begin
  inherited;
  col := DBGrid1.Columns[ColumnIndexByFieldName(DBGrid1,
    (Sender as TField).fieldName)];
  // if col.PickList.IndexOfObject(TObject(Sender.AsInteger)) <> -1 then
  Text := col.PickList[Sender.AsInteger];
  // Text := col.PickList[col.PickList.IndexOfObject(TObject(Sender.AsInteger))];

end;

procedure TRecallTimeSheetF.qryIndentFunctionTypeSetText(Sender: TField;
  const Text: string);
var
  col: TColumn;
  i: Integer;
begin
  inherited;
  col := DBGrid1.Columns[ColumnIndexByFieldName(DBGrid1,
    (Sender as TField).fieldName)];
  i := col.PickList.IndexOf(Text);
  if i <> -1 then
    Sender.AsInteger := i;
  // Integer(col.PickList.Objects[i])

end;

procedure TRecallTimeSheetF.qryIndentStartHourGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text := FormatDateTime('HH:mm', Sender.AsDateTime);

end;

procedure TRecallTimeSheetF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItem(DMf.adcBSell, 'Date', ' تاریخ ', 'تاریخ', ftDate, dvDefaults,
        '91/11/29', '91/11/29', ciSingle, '', '');
      AddItem(DMf.adcBSell, 'FunctionType', 'شیفت', 'كد', ftLargeint, dvMinMax,
        '', '', ciLookup,
        ' SELECT ISNULL(FunctionType, 0) AS Expr1, CASE (isnull(Tsh.Functions.FunctionType, 0))'
        + ' WHEN 0 THEN ''حضور''' + ' WHEN 1 THEN ''مرخصی تشویقی''' +
        ' WHEN 2 THEN ''مرخصي استحقاقي''' + ' WHEN 3 THEN ''مرخصي ساعتي''' +
        ' WHEN 4 THEN ''استعلاجي''' + ' WHEN 5 THEN ''ماموريت''' +
        ' WHEN 6 THEN ''آماده بكار''' + ' WHEN 7 THEN ''عدم حضور تعطیلات''' +
        ' WHEN 8 THEN ''غيبت''' + ' WHEN 9 THEN ''ساير''' +
        ' WHEN 10 THEN ''بارندگي''' + ' WHEN 11 THEN ''استراحت''' +
        ' END AS FunctionTyp FROM Tsh.Functions GROUP BY ISNULL(FunctionType, 0)'

        , 'select Min(isnull(FunctionType,0)),Max(isnull(FunctionType,0)) From Tsh.Functions');
      AddItem(DMf.adcBSell, 'Personel', ' پرسنل ', 'كد', ftInteger, dvMinMax,
        '', '', ciLookup,
        'SELECT Customers.CustID,Customers.CustName FROM Customers ' +
        ' INNER JOIN CustomersGroup ON Customers.CustomerGrpID = CustomersGroup.CustomerGrpID '
        + ' WHERE (CustomersGroup.GroupType IN(11,13,14,19))AND (Customers.CustomerActive = 0) ',
        'select Min(PersonId),Max(PersonId) From Tsh.Functions');
      AddItem(DMf.adcBSell, 'StuffId', ' واحد سازمانی ', 'کد', ftInteger,
        dvDefaults, IntToStr(_StuffID), '', ciCombo,
        'SELECT Customers.CustID,Customers.CustName FROM Customers ' +
        ' INNER JOIN CustomersGroup ON Customers.CustomerGrpID = CustomersGroup.CustomerGrpID '
        + ' WHERE (CustomersGroup.GroupType IN(5,16))',
        Trim(medtWorkShopId.Text));
      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateFilter;
      end; // if
    finally
      Free;
    end; // try
  end;
end;

procedure TRecallTimeSheetF.actSearchExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryIndent);
end;

procedure TRecallTimeSheetF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryIndent);
end;

procedure TRecallTimeSheetF.InitForm;
var
  i, k: Integer;
  sitem: TSearchItem;
begin
  With _qryitems do
    for i := 0 to Fields.Count - 1 do
      if qryIndent.FindField(Fields[i].fieldName) <> nil then
        qryIndent.FieldByName(Fields[i].fieldName).DisplayLabel :=
          Fields[i].DisplayLabel;

  for i := 1 to DBGrid1.Columns.Count - 1 do
  begin
    k := ColumnIndexByFieldName(grd, DBGrid1.Columns[i].fieldName);
    if (k > 0) and (k < grd.Columns.Count - 1) then
      DBGrid1.Columns[i].Visible := grd.Columns[k].Visible;
  end;

  CheckListBox1.Clear;
  for i := 1 to DBGrid1.Columns.Count - 1 do
    if (DBGrid1.Columns[i].Visible) and
      (_qryitems.FindField(DBGrid1.Columns[i].fieldName) <> nil) then
    begin
      sitem := TSearchItem.Create;
      sitem.caption := DBGrid1.Columns[i].Title.caption;
      sitem.fieldName := DBGrid1.Columns[i].fieldName;
      CheckListBox1.Items.AddObject(sitem.caption, sitem);
    end;

  CheckListBox1.CheckAll(cbChecked);
  CheckListBox1.Columns := 9;

end;

procedure TRecallTimeSheetF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TRecallTimeSheetF.actExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TRecallTimeSheetF.FormShow(Sender: TObject);
begin
  inherited;
  actFilter.Execute;
  medtWorkShopId.Text := IntToStr(qryIndentWorkShopId.AsInteger);
  medtWorkShopName.Text := qryIndentWorkShopId.AsString;
  // Entity_Weight(DBGrid1);
end;

procedure TRecallTimeSheetF.MenuItem1Click(Sender: TObject);
begin
  inherited;
  try
    with qryIndent do
    begin
      Filter := 'checked=1';
      Filtered := True;
      DisableControls;
      // _qryitems.DisableControls;
      First;
      while not eof do
      begin
        _qryitems.Insert;
        // _qryitems.FieldByName('FunctionId').AsLargeInt :=
        // GetANewCode(Self.Name, 'Tsh.Functions', 'FunctionId', DMf.adcBSell);
        _qryitems.FieldByName('FunctionInfoType').AsInteger :=
          qryIndent.FieldByName('FunctionInfoType').AsInteger;
        _qryitems.FieldByName('WorkShopId').AsInteger :=
          StrToInt(Trim(medtWorkShopId.Text));

        /// /////////////////////  add by   for
        _qryitems.FieldByName('PersonId').AsInteger :=
          qryIndent.FieldByName('PersonId').AsInteger;
        if not qryIndent.FieldByName('StartHour').IsNull then
          _qryitems.FieldByName('StartHour').AsDateTime :=
            qryIndent.FieldByName('StartHour').AsDateTime;
        if not qryIndent.FieldByName('EndHour').IsNull then
          _qryitems.FieldByName('EndHour').AsDateTime :=
            qryIndent.FieldByName('EndHour').AsDateTime;
        if not qryIndent.FieldByName('FunctionHour').IsNull then
          _qryitems.FieldByName('FunctionHour').AsDateTime :=
            qryIndent.FieldByName('FunctionHour').AsDateTime;
        _qryitems.FieldByName('FunctionType').AsInteger :=
          qryIndent.FieldByName('FunctionType').AsInteger;
        _qryitems.FieldByName('FunctionNote').AsString :=
          qryIndent.FieldByName('FunctionNote').AsString;
        /// /////////////////////  add by for
        /// /////////////////////  add by for

        _qryitems.FieldByName('FunctionDate').AsString :=
          (Trim(tshFunctionsF.medtDate.Text));

        _qryitems.FieldByName('StuffId').AsInteger :=
          qryIndent.FieldByName('StuffId').AsInteger;

        _qryitems.FieldByName('Productionprocess').AsInteger :=
          qryIndent.FieldByName('Productionprocess').AsInteger;
        _qryitems.FieldByName('EarthField').AsInteger :=
          qryIndent.FieldByName('EarthField').AsInteger;
        _qryitems.FieldByName('Gate').AsInteger := qryIndent.FieldByName('Gate')
          .AsInteger;
        _qryitems.FieldByName('Ratio').AsInteger :=
          qryIndent.FieldByName('Ratio').AsInteger;
        _qryitems.FieldByName('FunctionAmount').AsInteger :=
          qryIndent.FieldByName('FunctionAmount').AsInteger;
        _qryitems.FieldByName('CaseId').AsInteger :=
          qryIndent.FieldByName('CaseId').AsInteger;

        _qryitems.FieldByName('FunctionStatus').AsInteger :=
          qryIndent.FieldByName('FunctionStatus').AsInteger;
        _qryitems.post;
        Next;
        Application.ProcessMessages;
      end; // while
    end; // with
  finally
    _qryitems.EnableControls;
    RecallTimeSheetF.ModalResult := mrOk;
  end;

end;

procedure TRecallTimeSheetF.N1Click(Sender: TObject);
begin
  inherited;
  try
    with qryIndent do
    begin
      Filter := 'checked=1';
      Filtered := True;
      DisableControls;
      // _qryitems.DisableControls;
      First;
      while not eof do
      begin
        _qryitems.Insert;
        _qryitems.FieldByName('FunctionId').AsInteger :=
          GetANewCode(Self.Name, 'Tsh.Functions', 'FunctionId', DMf.adcBSell);
        _qryitems.FieldByName('FunctionInfoType').AsInteger :=
          qryIndent.FieldByName('FunctionInfoType').AsInteger;
        _qryitems.FieldByName('WorkShopId').AsInteger :=
          StrToInt(Trim(medtWorkShopId.Text));
        _qryitems.FieldByName('PersonId').AsInteger :=
          qryIndent.FieldByName('PersonId').AsInteger;
        _qryitems.FieldByName('StuffId').AsInteger :=
          qryIndent.FieldByName('StuffId').AsInteger;
        _qryitems.FieldByName('Amount1').AsFloat :=
          qryIndent.FieldByName('Amount1').AsFloat;
        _qryitems.FieldByName('Amount2').AsFloat :=
          qryIndent.FieldByName('Amount2').AsFloat;
        _qryitems.FieldByName('Amount3').AsFloat :=
          qryIndent.FieldByName('Amount3').AsFloat;
        _qryitems.FieldByName('MaintenanceID').AsInteger :=
          qryIndent.FieldByName('MaintenanceID').AsInteger;
        _qryitems.FieldByName('StuffCode2').AsLargeInt :=
          qryIndent.FieldByName('StuffCode2').AsLargeInt;
        _qryitems.FieldByName('StuffCode3').AsLargeInt :=
          qryIndent.FieldByName('StuffCode3').AsLargeInt;
        _qryitems.FieldByName('ShiftWork').AsInteger :=
          qryIndent.FieldByName('ShiftWork').AsInteger;
        _qryitems.FieldByName('Shift').AsInteger :=
          qryIndent.FieldByName('Shift').AsInteger;

        _qryitems.FieldByName('StuffId').AsInteger :=
          qryIndent.FieldByName('StuffId').AsInteger;

        if not qryIndent.FieldByName('ShiftWorkTime').IsNull then
          _qryitems.FieldByName('ShiftWorkTime').AsDateTime :=
            qryIndent.FieldByName('ShiftWorkTime').AsDateTime;
        if not qryIndent.FieldByName('OverTime').IsNull then
          _qryitems.FieldByName('OverTime').AsDateTime :=
            qryIndent.FieldByName('OverTime').AsDateTime;
        _qryitems.FieldByName('MachineId').AsInteger :=
          qryIndent.FieldByName('MachineId').AsInteger;
        _qryitems.FieldByName('FunctionDate').AsString :=
          (Trim(tshFunctionsF.medtDate.Text));
        _qryitems.FieldByName('Productionprocess').AsInteger :=
          qryIndent.FieldByName('Productionprocess').AsInteger;
        _qryitems.FieldByName('EarthField').AsInteger :=
          qryIndent.FieldByName('EarthField').AsInteger;
        _qryitems.FieldByName('Gate').AsInteger := qryIndent.FieldByName('Gate')
          .AsInteger;
        _qryitems.FieldByName('Ratio').AsInteger :=
          qryIndent.FieldByName('Ratio').AsInteger;
        _qryitems.FieldByName('FunctionAmount').AsFloat :=
          qryIndent.FieldByName('FunctionAmount').AsFloat;
        _qryitems.FieldByName('CaseId').AsInteger :=
          qryIndent.FieldByName('CaseId').AsInteger;
        _qryitems.FieldByName('FunctionType').AsInteger :=
          qryIndent.FieldByName('FunctionType').AsInteger;
        _qryitems.FieldByName('FunctionStatus').AsInteger :=
          qryIndent.FieldByName('FunctionStatus').AsInteger;

        _qryitems.FieldByName('StartHour').Required := False;
        _qryitems.FieldByName('EndHour').Required := False;
        _qryitems.FieldByName('FunctionHour').Required := False;

        // if not qryIndent.FieldByName('StartHour').IsNull then
        // _qryitems.FieldByName('StartHour').AsDateTime :=
        // qryIndent.FieldByName('StartHour').AsDateTime;
        // if not qryIndent.FieldByName('EndHour').IsNull then
        // _qryitems.FieldByName('EndHour').AsDateTime :=
        // qryIndent.FieldByName('EndHour').AsDateTime;
        // if not qryIndent.FieldByName('FunctionHour').IsNull then
        // _qryitems.FieldByName('FunctionHour').AsDateTime :=
        // qryIndent.FieldByName('FunctionHour').AsDateTime;
        _qryitems.FieldByName('FunctionNote').AsString :=
          qryIndent.FieldByName('FunctionNote').AsString;
        _qryitems.post;
        Next;
        Application.ProcessMessages;
      end; // while
    end; // with
  finally
    _qryitems.EnableControls;
    _qryitems.FieldByName('StartHour').Required := True;
    _qryitems.FieldByName('EndHour').Required := True;
    _qryitems.FieldByName('FunctionHour').Required := True;
    RecallTimeSheetF.ModalResult := mrOk;
  end;
end;

procedure TRecallTimeSheetF.N2Click(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  try
    with qryIndent do
    begin
      Filter := 'checked=1';
      Filtered := True;
      DisableControls;
      // _qryitems.DisableControls;
      First;
      while not eof do
      begin
        _qryitems.Insert;
        for i := 0 to CheckListBox1.Items.Count - 1 do
          if CheckListBox1.Checked[i] then
          begin
            sitem := TSearchItem(CheckListBox1.Items.Objects[i]);
            if (not qryIndent.FieldByName(sitem.fieldName).IsNull) then
              _qryitems.FieldByName(sitem.fieldName).Value :=
                qryIndent.FieldByName(sitem.fieldName).Value;
          end;
        _qryitems.post;
        Next;
        Application.ProcessMessages;
      end; // while
    end; // with
  finally
    _qryitems.EnableControls;
    RecallTimeSheetF.ModalResult := mrOk;
  end;
end;

procedure TRecallTimeSheetF.BitBtn1Click(Sender: TObject);
begin
  inherited;
  PopMnuRecall.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y)
end;

procedure TRecallTimeSheetF.BitBtn4Click(Sender: TObject);
begin
  inherited;
  with qryIndent do
  begin
    DisableControls;
    First;
    while not eof do
    begin
      edit;
      FieldByName('checked').AsInteger := 1;
      post;
      Next;
    end; // while
    First;
    EnableControls;
  end; // with
end;

procedure TRecallTimeSheetF.BitBtn6Click(Sender: TObject);
begin
  inherited;
  with qryIndent do
  begin
    DisableControls;
    First;
    while not eof do
    begin
      edit;
      FieldByName('checked').AsInteger :=
        IfThen(FieldByName('checked').AsInteger = 1, 0, 1);
      post;
      Next;
    end; // while
    First;
    EnableControls;
  end; // with
end;

procedure TRecallTimeSheetF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  ToggleCheck;
end;

procedure TRecallTimeSheetF.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  if DataCol = 0 then
  begin
    DBGrid1.Canvas.Rectangle(Rect);
    if qryIndentChecked.AsInteger = 1 then
      DBGrid1.Canvas.Draw(Rect.Left, Rect.Top, Imgchecked.Picture.Graphic)
    else
      DBGrid1.Canvas.Draw(Rect.Left, Rect.Top, Image2.Picture.Graphic)
  end; // if

end;

procedure TRecallTimeSheetF.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_SPACE then
  begin
    Key := 0;
    ToggleCheck;
  end; // if
end;

procedure TRecallTimeSheetF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryIndentPersonId);
end;

procedure TRecallTimeSheetF.ToggleCheck(CalculateSummary: Boolean = True);
begin
  with qryIndent do
  begin
    edit;
    FieldByName('Checked').AsInteger :=
      IfThen(FieldByName('checked').AsInteger = 1, 0, 1);
    post;
  end; // with
end;

end.
