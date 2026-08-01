unit Interdicts4Copy;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, Grids, Vcl.DBGrids, DBCtrls, ppBands, ppCtrls,
  ppVar, ppPrnabl, ppClass, ppCache, ppDB, ppDBPipe, ppComm, ppRelatv,
  ppProd, ppReport, Menus, ppStrtch, ppSubRpt, ppModule, ppParameter, Mask,
  SumDBGrid, System.ImageList, System.Actions,
  filter_ADO, FilterClass_ADO, Filter_ADO_Const;

type
  TInterdicts4CopyF = class(Ttemplate2MDIF)
    srcList: TDataSource;
    BitBtn3: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    actShowForm: TAction;
    actSort: TAction;
    qryList: TADOQuery;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    qryItems: TADOQuery;
    srcItems: TDataSource;
    qryItemsSalaryID: TIntegerField;
    qryItemsInfoName_L1: TStringField;
    qryItemsInfoName_L2: TStringField;
    qryItemsAmount: TBCDField;
    qryItemsItemNote_L1: TStringField;
    qryItemsItemNote_L2: TStringField;
    GroupBox1: TGroupBox;
    DBGrid2: TDBGrid;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    actFilter: TAction;
    BitBtn2: TBitBtn;
    qryListsubcompanyCode: TIntegerField;
    qryListInterdictID: TIntegerField;
    qryListInterdictNo: TStringField;
    qryListPersonelNo: TIntegerField;
    qryListPersonelName: TStringField;
    qryListfatherName_L1: TStringField;
    qryListInterdictDate: TStringField;
    qryListInterdicStartDate: TStringField;
    qryListInterdicEndDate: TStringField;
    qryListemployDaytime: TWordField;
    qryListState: TWordField;
    qryListGradName: TStringField;
    qryListStateName: TStringField;
    qryListChildNumber: TStringField;
    qryListSexName: TStringField;
    qryListEmployName: TStringField;
    GroupBox3: TGroupBox;
    qryAmount: TADOQuery;
    srcAmount: TDataSource;
    qryAmountFormInfoID: TIntegerField;
    qryAmountInfoName_L1: TStringField;
    qryAmountFitfulID: TFMTBCDField;
    qryAmountInfoID: TIntegerField;
    DBGrid3: TDBGrid;
    actCopy: TAction;
    SumGrid1: TSumGrid;
    qryListrowcounts: TIntegerField;
    qryInterdicts: TADOQuery;
    qryInterdictItems: TADOQuery;
    qryInsInterdictItems: TADOQuery;
    qryInsInterdicts: TADOQuery;
    Timer1: TTimer;
    Panel5: TPanel;
    lblInterdicStartDate: TLabel;
    lblInterdicEndDate: TLabel;
    Label1: TLabel;
    mskInterdicNewStartDate: TMaskEdit;
    mskInterdicEndDate: TMaskEdit;
    Label2: TLabel;
    Panel4: TPanel;
    BitBtn4: TBitBtn;
    Panel6: TPanel;
    Label3: TLabel;
    qryTempInterdicts: TADOQuery;
    srcTempInterdicts: TDataSource;
    qryTempInterdictsInterdictID: TFMTBCDField;
    qryTempInterdictsInterdictNo: TFMTBCDField;
    qryTempInterdictsPersonelNo: TFMTBCDField;
    DBGrid4: TDBGrid;
    qryInitQry: TADOQuery;
    qryListAidNo1: TStringField;
    qryListAidDate1: TStringField;
    qryTempInterdictsAidNo1: TFMTBCDField;
    qryTempInterdictsAidDate1: TStringField;
    RadioGroup1: TRadioGroup;
    mskInterdicNewEndDate: TMaskEdit;
    Label4: TLabel;
    procedure actShowFormExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure qryListStateGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure qryListAfterScroll(DataSet: TDataSet);
    procedure actFilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actCopyExecute(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Label1MouseEnter(Sender: TObject);
    procedure mskInterdicNewStartDateChange(Sender: TObject);

  private
    procedure UpdateList;
    function InterdictsIns(OldInterdictID: Integer): Integer;
    procedure InterdictItemsIns(OldInterdictID, NewInterdictID: Integer);
  public
    { Public declarations }
  end;

var
  Interdicts4CopyF: TInterdicts4CopyF;

implementation

uses DM, sort2, search2, GlobalPro,
  Interdicts, mmessage, PersonelInfo, DBGrid2Print, main, SalaryFunctions,
  shamsiDate, FaraConsts, mdiMain;

{$R *.dfm}

procedure TInterdicts4CopyF.actShowFormExecute(Sender: TObject);
begin
  inherited;
  if qryList.FieldByName('State').AsInteger > 49 then
    Exit;
  InterdictsF.Enter(45, 0, 49, 0, qryList.FieldByName('InterdictID').AsInteger)
end;

procedure TInterdicts4CopyF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryList);
end;

procedure TInterdicts4CopyF.actCopyExecute(Sender: TObject);
var
  Date_s, Date_e: string;
  AidNo1: Real;
begin
  inherited;
  Date_s := Trim(mskInterdicNewStartDate.Text);
  Date_e := Trim(mskInterdicEndDate.Text);

  if Date_s <= Date_e then
  begin
    Warn(Format('%s ‰»«Ìœ »“—ê — Ì« „”«ÊÌ %s  »«‘œ',
      [lblInterdicEndDate.Caption, lblInterdicStartDate.Caption]));
    Exit;
  end;

  if not validate_date(true, '0000/00/00', '1999/12/29', ' «—ÌŒ Ê«—œ ‘œÂ',
    Date_s) then
  begin
    Exit;
  end;

  if not validate_date(true, '0000/00/00', '1999/12/29', ' «—ÌŒ Ê«—œ ‘œÂ',
    Date_e) then
  begin
    Exit;
  end;

  if not validDateInMah(Date_s, Date_e) then
  begin
    Warn(' «—ÌŒ œÊ Õﬂ„ ‰»«Ìœ œ— »«“Â Ìﬂ „«Â »«‘œ');
    Exit;
  end;

  if get_response('¬Ì« »—«Ì ﬂÅÌ «Õﬂ«„ «‰ Œ«» ‘œÂ „ÿ„∆‰ Â” Ìœø˛') <> mrYes then
    Exit;

  BigMessageProgBar('œ— Õ«· ﬂÅÌ «Õﬂ«„', qryList.RecordCount);
  mskInterdicNewStartDate.Text := Date_s;
  mskInterdicEndDate.Text := Date_e;

  // qryAmount.Filter := 'FitfulID > 0';
  // qryAmount.Filtered := true;
  DMf.adcSalary.BeginTrans; // <<T>>
  qryTempInterdicts.Active := true;
  qryTempInterdicts.Delete;

  With qryList do
    try
      DisableControls;
      First;
      while not Eof do
      begin
        // if Date_s <= qryListInterdicEndDate.AsString then
        if RadioGroup1.ItemIndex = 0 then
          InterdictItemsIns(qryListInterdictID.AsInteger,
            InterdictsIns(qryListInterdictID.AsInteger))
        else
          With qryTempInterdicts do
          begin
            Insert;
            FieldByName('InterdictID').AsInteger :=
              qryListInterdictID.AsInteger;
            FieldByName('PersonelNo').AsInteger := qryListPersonelNo.AsInteger;
            FieldByName('InterdictNo').AsFloat := qryListInterdictNo.AsFloat;
            if qryInitQry.FieldByName('AidInfoNo1Active').AsInteger = 2 then
            begin
              AidNo1 := GetANewCode('',
                'SELECT ISNULL( MAX(CONVERT(float, AidNo1)),0) AS Expr1 FROM Pay.Interdicts',
                'AidNo1');
              FieldByName('AidNo1').AsFloat := AidNo1;
            end;
            if qryInitQry.FieldByName('AidInfoDate1Active').AsInteger = 1 then
              FieldByName('AidDate1').AsString := var_glb_CurrentDate;

            Post;
          end;

        Next;
      end;
      EnableControls;
      DMf.adcSalary.CommitTrans; // <<T>>
      FreeReservedCodes(DMf.adcSalary);
      // qryAmount.Filtered := False;
      qryList.Requery();
      BigMessage('ﬂÅÌ ‘œ', 1);
    except
      on E: Exception do
      begin
        DMf.adcSalary.RollbackTrans; // <<T>>
        Warn('«‘ﬂ«· œ— ﬂÅÌ «Õﬂ«„' + #13#10 + E.Message);
      end;
    end;
end;

procedure TInterdicts4CopyF.InterdictItemsIns(OldInterdictID,
  NewInterdictID: Integer);
var
  i, InterdictItemsID: Integer;
begin
  With qryInterdictItems do
  begin
    Active := False;
    Parameters.ParamByName('InterdictID').Value := OldInterdictID;
    Active := true;
  end;

  qryInsInterdictItems.Active := true;
  InterdictItemsID := GetANewCodeBulkRange('', 'Pay.InterdictItems',
    'InterdictItemsID', qryInterdictItems.RecordCount);
  while not qryInterdictItems.Eof do
  begin
    With qryInsInterdictItems do
    begin
      Insert;
      for i := 0 to Fields.Count - 1 do
      begin
        if LowerCase(Fields[i].FieldName) = 'rowguid' then
          Continue;
        Fields[i].Value := qryInterdictItems.FieldByName
          (Fields[i].FieldName).Value;
      end;

      FieldByName('InterdictID').AsInteger := NewInterdictID;
      FieldByName('InterdictItemsID').AsInteger := InterdictItemsID;
      FieldByName('UserID').AsInteger := User.id;


      // if qryInterdictItems.Locate('SalaryID',
      // qryAmountFormInfoID.AsInteger, []) then
      // if ((qryAmount.Locate('FormInfoID',
      // qryInterdictItems.FieldByName('SalaryID').AsInteger, [])) and
      // (qryInterdictItems.FieldByName('SalaryID')
      // .AsInteger = qryInsInterdictItems.FieldByName('SalaryID')
      // .AsInteger)) then
      // FieldByName('Amount').AsCurrency := qryAmount.FieldByName('FitfulID')
      // .AsCurrency;

      Post;
    end;
    inc(InterdictItemsID);
    qryInterdictItems.Next;
  end;
  qryInsInterdictItems.Active := False;

  DMf.adcSalary.Execute
    (Format('UPDATE Pay.Interdicts SET State = 50 ,InterdicEndDate = %s WHERE(InterdictID = %d )',
    [QuotedStr(Trim(mskInterdicEndDate.Text)), OldInterdictID]));

end;

function TInterdicts4CopyF.InterdictsIns(OldInterdictID: Integer): Integer;
var
  i: Integer;
begin
  With qryInterdicts do
  begin
    Active := False;
    Parameters.ParamByName('InterdictID').Value := OldInterdictID;
    Active := true;
  end;
  Result := GetANewCode('', 'Pay.Interdicts', 'InterdictID');
  With qryInsInterdicts do
  begin
    Active := true;
    Insert;
    for i := 0 to Fields.Count - 1 do
    begin
      if LowerCase(Fields[i].FieldName) = 'rowguid' then
        Continue;
      Fields[i].Value := qryInterdicts.FieldByName(Fields[i].FieldName).Value;
    end;
    FieldByName('InterdictID').AsInteger := Result;
    FieldByName('LastInterdictID').AsInteger := OldInterdictID;
    FieldByName('InterdicStartDate').AsString :=
      Trim(mskInterdicNewStartDate.Text);
    FieldByName('InterdicEndDate').AsString := Trim(mskInterdicNewEndDate.Text);
    // DMf.ReadBankConfigPay('FinishMaliYear', '');
    FieldByName('firstuser').AsString := User.name;
    FieldByName('LastUser').AsString := EmptyStr;

    FieldByName('InterdictNo').AsFloat := FieldByName('InterdictNo')
      .AsFloat + 0.01;
    FieldByName('UserID').AsInteger := User.id;
    FieldByName('InterdictDate').AsString := var_glb_CurrentDate;

    if qryInitQry.FieldByName('AidInfoNo1Active').AsInteger = 2 then
    begin
      FieldByName('AidNo1').AsFloat :=
        GetANewCode('',
        'SELECT ISNULL( MAX(CONVERT(float, AidNo1)),0) AS Expr1 FROM Pay.Interdicts',
        'AidNo1');
    end;
    if qryInitQry.FieldByName('AidInfoDate1Active').AsInteger = 1 then
      FieldByName('AidDate1').AsString := var_glb_CurrentDate;
    Post;
    Active := False;
  end;

end;

procedure TInterdicts4CopyF.Label1MouseEnter(Sender: TObject);
begin
  inherited;
  Timer1.Enabled := False;
  Label1.Visible := true;
end;

procedure TInterdicts4CopyF.mskInterdicNewStartDateChange(Sender: TObject);
// var
// EndDate: string;
begin
  inherited;
  // AND (Interdicts.InterdicEndDate >=  :InterdicNewStartDate )
  // EndDate := Trim(mskInterdicEndDate.Text);
  // if Length(EndDate) = 8 then
  // With qryList do
  // begin
  // Active := False;
  // Parameters.ParamByName('InterdicNewStartDate').Value := EndDate;
  // Active := true;
  // end;
end;

procedure TInterdicts4CopyF.actFilterExecute(Sender: TObject);
begin
  inherited;
  With TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItemFilter(GetFilter, TInterdicEndDate);
      AddItemFilter(GetFilter, TInterdicStartDate);
      AddItem(DMf.adcSalary, 'State', 'Ê÷⁄Ì ', 'Ê÷⁄Ì ', ftInteger, dvDefaults,
        '', '', ciCombo,
        ' SELECT DISTINCT State, CASE State WHEN 0 THEN ''ÅÌ‘ ‰ÊÌ”''' +
        ' WHEN 1 THEN ''‰Â«∆Ì'' WHEN 50 THEN ''»«Ìê«‰Ì'' ELSE '''' END AS Expr1'
        + ' FROM Pay.Interdicts', '');

      AddItem(DMf.adcSalary, 'PersonelState', 'Ê÷⁄Ì  Å—”‰· ', 'ﬂœ', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT InfoID, InfoName_L1 FROM Pay.FormsInfo WHERE     (FormType = 3)',
        'SELECT Min(InfoID),Max(InfoID) FROM Pay.FormsInfo WHERE     (FormType = 3)');

      AddItem(DMf.adcSalary, 'Sex', 'Ê÷⁄Ì   «Â·', 'ﬂœ', ftInteger, dvMinMax, '',
        '', ciLookup,
        'SELECT InfoID,InfoName_L1 FROM Pay.FormsInfo WHERE  (FormType = 5)',
        'SELECT MIN(InfoID), MAX(InfoID) FROM Pay.FormsInfo WHERE  (FormType = 5)');

      AddItem(DMf.adcSalary, 'childNumber', ' ⁄œ«œ ›—“‰œ', 'ﬂœ', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT InfoID,InfoName_L1 FROM Pay.FormsInfo WHERE  (FormType = 6)',
        'SELECT MIN(InfoID), MAX(InfoID) FROM Pay.FormsInfo WHERE  (FormType = 6)');
      AddItem(DMf.adcSalary, 'Grade', '— »Â ‘€·Ì', 'ﬂœ', ftInteger, dvMinMax,
        '', '', ciLookup,
        'SELECT InfoID,InfoName_L1 FROM Pay.FormsInfo WHERE  (FormType = 27)',
        'SELECT MIN(InfoID), MAX(InfoID) FROM Pay.FormsInfo WHERE  (FormType = 27)');
      AddItem(DMf.adcSalary, 'EmployType', '‰Ê⁄ Õﬂ„ ', 'ﬂœ', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT InfoID,InfoName_L1 FROM Pay.FormsInfo WHERE  (FormType = 14)',
        'SELECT MIN(InfoID), MAX(InfoID) FROM Pay.FormsInfo WHERE  (FormType = 14)');

      AddItemFilter(GetFilter, TPersonelNo);

      AddItem(DMf.adcSalary, 'GroupID', 'ê—ÊÂÂ« ', 'ﬂœ', ftInteger, dvMinMax,
        '', '', ciLookup,
        'SELECT InfoID,InfoName_L1 FROM Pay.FormsInfo WHERE  (FormType = 68)',
        'SELECT MIN(InfoID), MAX(InfoID)  FROM Pay.FormsInfo WHERE  (FormType = 68)');
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

procedure TInterdicts4CopyF.UpdateList;
begin
  With qryList do
  begin
    Active := False;

    if (CompanyFilterinLogin) and (not User.PowerAdmin) then
    begin
      Parameters.ParamByName('companyCodeFrom').Value := FcompanyCodeLogin;
      Parameters.ParamByName('companyCodeTo').Value := FcompanyCodeLogin;
    end
    else
    begin
      Parameters.ParamByName('companyCodeFrom').Value := 0;
      Parameters.ParamByName('companyCodeTo').Value := 2147483647

    end;

    Parameters.ParamByName('PersonelNoFrom').Value :=
      GetcFrom(myParams.ParamValues['PersonelNo'], ftInteger);
    Parameters.ParamByName('PersonelNoTo').Value :=
      GetcTo(myParams.ParamValues['PersonelNo'], ftInteger);
    Parameters.ParamByName('GroupIDFrom').Value :=
      GetcFrom(myParams.ParamValues['GroupID'], ftInteger);
    Parameters.ParamByName('GroupIDTo').Value :=
      GetcTo(myParams.ParamValues['GroupID'], ftInteger);
    Parameters.ParamByName('EmployTypeFrom').Value :=
      GetcFrom(myParams.ParamValues['EmployType'], ftInteger);
    Parameters.ParamByName('EmployTypeTo').Value :=
      GetcTo(myParams.ParamValues['EmployType'], ftInteger);
    Parameters.ParamByName('GradeFrom').Value :=
      GetcFrom(myParams.ParamValues['Grade'], ftInteger);
    Parameters.ParamByName('GradeTo').Value :=
      GetcTo(myParams.ParamValues['Grade'], ftInteger);
    Parameters.ParamByName('SexFrom').Value :=
      GetcFrom(myParams.ParamValues['Sex'], ftInteger);
    Parameters.ParamByName('SexTo').Value := GetcTo(myParams.ParamValues['Sex'],
      ftInteger);
    Parameters.ParamByName('childNumberFrom').Value :=
      GetcFrom(myParams.ParamValues['childNumber'], ftInteger);
    Parameters.ParamByName('childNumberTo').Value :=
      GetcTo(myParams.ParamValues['childNumber'], ftInteger);

    Parameters.ParamByName('PersonelStateFrom').Value :=
      GetcFrom(myParams.ParamValues['PersonelState'], ftInteger);
    Parameters.ParamByName('PersonelStateTo').Value :=
      GetcTo(myParams.ParamValues['PersonelState'], ftInteger);

    Parameters.ParamByName('State').Value :=
      GetcTo(myParams.ParamValues['State'], ftInteger);

    Parameters.ParamByName('InterdicEndDateFrom').Value :=
      GetcFrom(myParams.ParamValues['InterdicEndDate'], ftDate);
    Parameters.ParamByName('InterdicEndDateTo').Value :=
      GetcTo(myParams.ParamValues['InterdicEndDate'], ftDate);

    Parameters.ParamByName('InterdicStartDateFrom').Value :=
      GetcFrom(myParams.ParamValues['InterdicStartDate'], ftDate);
    Parameters.ParamByName('InterdicStartDateTo').Value :=
      GetcTo(myParams.ParamValues['InterdicStartDate'], ftDate);

    Active := true;
  end;
end;

procedure TInterdicts4CopyF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryList);
end;

procedure TInterdicts4CopyF.FormCreate(Sender: TObject);
begin
  inherited;
  qryInitQry.Active := true;
  mskInterdicNewEndDate.Text := APPBank.endYear;
end;

procedure TInterdicts4CopyF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 4, true);
  SetColSize(DBGrid2, 1, true);
  SetColSize(DBGrid3, 1, true);
end;

procedure TInterdicts4CopyF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  if actFilter.Execute then
    if myParams.FindParam('PersonelNo') = nil then
      Close;
end;

procedure TInterdicts4CopyF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
  SaveColWidth(DBGrid2);
end;

procedure TInterdicts4CopyF.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if not(gdSelected in State) then
  begin
    if odd(DBGrid1.DataSource.DataSet.RecNo) then
      DBGrid1.Canvas.Brush.Color := const_fixed_columns_color;
  end; // if
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TInterdicts4CopyF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  actShowForm.Execute
end;

procedure TInterdicts4CopyF.qryListStateGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  case qryList.FieldByName('State').AsInteger of
    0:
      Text := 'ÅÌ‘ ‰ÊÌ”';
    1:
      Text := '‰Â«∆Ì';
    50:
      Text := '»«Ìê«‰Ì';
  end; // case
end;

procedure TInterdicts4CopyF.Timer1Timer(Sender: TObject);
begin
  inherited;
  Label1.Visible := not Label1.Visible;
  Timer1.Tag := Timer1.Tag + 1;
  if Timer1.Tag = 20 then
  begin
    Timer1.Enabled := False;
    Label1.Visible := true;
  end;
end;

procedure TInterdicts4CopyF.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryList.FieldByName('PersonelNo'));
end;

procedure TInterdicts4CopyF.BitBtn1Click(Sender: TObject);
begin
  inherited;
  if mdimainF.ActPersonelInfoF.Execute then
    PersonelInfoF.qryPeronalInfo.Locate('PersonelNo',
      qryList.FieldByName('PersonelNo').AsVariant, [])
end;

procedure TInterdicts4CopyF.qryListAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryItems do
  begin
    Active := False;
    Parameters.ParamByName('InterdictID').Value :=
      qryList.FieldByName('InterdictID').AsInteger;
    Active := true;
  end;
  // with
end;

end.
