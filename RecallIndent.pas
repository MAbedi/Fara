{ -----------------------------------------------------------------------------
  Unit Name: RecallIndent
  Author:    Mahmood
  ----------------------------------------------------------------------------- }
unit RecallIndent;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template5, StdCtrls, CheckLst, DBActns, ActnList, Buttons, Math,
  ExtCtrls, DB, ADODB, Grids, ComCtrls, DBClient, Provider,
  ppBands, ppCtrls, ppPrnabl, ppClass, ppDB, ppCache, ppDBPipe, ppComm,
  ppRelatv, ppProd, ppReport, DBCtrls, Menus, sndkey32, MMESSAGE, FaraConsts,
  ppParameter, ppVar, Filter_ADO_Const, ppDesignLayer, System.Actions,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid;

type
  TRecallIndentF = class(TTemplate5F)
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
    actRptCardex: TAction;
    btnFilter: TBitBtn;
    actFilter: TAction;
    actShowpreRecipt: TAction;
    qryIndentReciptNumber: TIntegerField;
    qryIndentReciptDate: TStringField;
    qryIndentPersonID1: TIntegerField;
    qryIndentCustName: TStringField;
    qryIndentStuffCode: TLargeintField;
    qryIndentc_StuffName: TStringField;
    qryIndentc_StuffTecInfo: TStringField;
    qryIndentUnitName: TStringField;
    qryIndentEntity: TFloatField;
    qryIndentWeight: TFloatField;
    qryIndentPrice: TBCDField;
    qryIndentRemainEntity: TFloatField;
    qryIndentRemainWeight: TFloatField;
    qryIndentRemainPrice: TBCDField;
    qryIndentEnterEntity: TFloatField;
    qryIndentEnterWeight: TFloatField;
    qryIndentEnterPrice: TBCDField;
    qryIndentStoreID: TSmallintField;
    qryIndentReciptID: TIntegerField;
    qryIndentReciptItemID: TIntegerField;
    qryIndentReciptCaption: TStringField;
    qryIndentPersonID2: TIntegerField;
    qryIndentCustName2: TStringField;
    qryIndentWaterCo: TFloatField;
    qryIndentDeficitValue: TBCDField;
    qryIndentTaxCo: TFloatField;
    qryIndentTaxValue: TBCDField;
    ppDBPipeline1: TppDBPipeline;
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
    BitBtn4: TBitBtn;
    qryIndentItemNote: TStringField;
    DBGrid1: TCedarDbgrid;
    actDBGridSelectAll: TAction;
    BitBtn6: TBitBtn;
    qryIndentSecondType: TIntegerField;
    procedure qryIndentAfterOpen(DataSet: TDataSet);
    procedure actSearchExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actExcelExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1Enter(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure qryIndentBeforePost(DataSet: TDataSet);
    procedure ppLblCaptionGetText(Sender: TObject; var Text: String);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
    procedure actPrintExecute(Sender: TObject);
    procedure actDBGridSelectAllExecute(Sender: TObject);
  private
    UsePerson1OnRecall, RecallTypeOption: Largeint;
    CheckDuplicateStuffCode: Boolean;
    procedure gridkeyenter(Sender: TObject; var Key: Char);
    procedure UpdateList;
    procedure ApplyRemainToEnter;
    { Private declarations }
  public
    procedure SelectRecall(FormOutput: Boolean;
      qryini, qryRecipts, qryItems: TADOQuery);
    { Public declarations }
  end;

var
  RecallIndentF: TRecallIndentF;

implementation

uses StrUtils, DM, GlobalPro, filter_ADO, FilterClass_ADO, search2, sort2;

{$R *.dfm}

procedure TRecallIndentF.SelectRecall;
var
  In_Out: String;
  UnitPriceReadOnly: Boolean;
  b: Boolean;
begin
  if not CheckRequiredFields(qryRecipts) then
    Exit;
  RecallIndentF := TRecallIndentF.Create(Application);
  with RecallIndentF do
    try
      with qryIndent Do
      begin
        Active := False;
        SQL.Text := StringReplace(SQL.Text, ':RecallReciptType',
          qryini.FieldByName('RecallReciptTypes').AsString, [rfReplaceAll]);
        Parameters.ParamByName('ReciptType').Value :=
          qryRecipts.FieldByName('ReciptType').AsInteger;

        b := qryini.FieldByName('RecallType').AsInteger = 7;
        setColumns2(DBGrid1, b, 'PersonID1');
        setColumns2(DBGrid1, b, 'CustName');
        setColumns2(DBGrid1, b, 'PersonID2');
        setColumns2(DBGrid1, b, 'CustName2');
        if b then
        begin
          SQL.Add('And  (Sefaresh.PersonID1= :PersonID1)');
          Parameters.ParamByName('PersonID1').Value :=
            qryRecipts.FieldByName('PersonID1').AsInteger;
        end;

        RecallTypeOption := qryini.FieldByName('RecallTypeOption').AsLargeInt;

        UsePerson1OnRecall := qryini.FieldByName('UsePerson1OnRecall')
          .AsLargeInt;
        if ((UsePerson1OnRecall and Integer(CHkPersonID1Filter)) <> 0) then
          SQL.Add(' AND (Sefaresh.PersonID1 =' + qryRecipts.FieldByName
            ('PersonID1').AsString + ')');

        if ((UsePerson1OnRecall and Integer(CHkPersonID2Filter)) <> 0) then
          SQL.Add(' AND (Sefaresh.PersonID2 =' + qryRecipts.FieldByName
            ('PersonID2').AsString + ')');

        if ((UsePerson1OnRecall and Integer(CHkPersonID3Filter)) <> 0) then
          SQL.Add(' AND (Sefaresh.PersonID3 =' + qryRecipts.FieldByName
            ('PersonID3').AsString + ')');

        if ((UsePerson1OnRecall and Integer(CHkPersonID4Filter)) <> 0) then
          SQL.Add(' AND (Sefaresh.PersonID4 =' + qryRecipts.FieldByName
            ('PersonID4').AsString + ')');

        // case qryini.FieldByName('UsePerson1OnRecall').AsInteger of
        // 1:
        // SQL.Add(' AND (Sefaresh.PersonID1 =' + qryRecipts.FieldByName
        // ('PersonID1').AsString + ')');
        // 2:
        // SQL.Add(' AND (Sefaresh.PersonID2 =' + qryRecipts.FieldByName
        // ('PersonID2').AsString + ')');
        // 3:
        // SQL.Add(' AND (Sefaresh.PersonID3 =' + qryRecipts.FieldByName
        // ('PersonID3').AsString + ')');
        //
        // 4:
        // begin
        // SQL.Add(' AND (Sefaresh.PersonID1 =' + qryRecipts.FieldByName
        // ('PersonID1').AsString + ')');
        // SQL.Add(' AND (Sefaresh.PersonID2 =' + qryRecipts.FieldByName
        // ('PersonID2').AsString + ')');
        //
        // end;
        //
        // end;

        if qryini.FieldByName('UseStoreIDOnRecall').AsInteger = 1 then
        begin
          SQL.Add('And  (Sefaresh.StoreID= :StoreID)');
          Parameters.ParamByName('StoreID').Value :=
            qryRecipts.FieldByName('StoreID').AsInteger;
        end;

        SQL.Add('order by Sefaresh.ReciptNumber ,Sefaresh.ReciptItemID');
        actFilter.Execute;
      end;
      Entity_Weight(DBGrid1);
      if ShowModal = mrOk then
      begin
        with qryIndent do
        begin
          if qryIndent.State in dsEditModes then
            qryIndent.Post;
          ApplyRemainToEnter;
          Filter := 'EnterEntity > 0';
          Filtered := True;
          DisableControls;
          qryItems.DisableControls;
          First;
          In_Out := IfThen(FormOutput, 'Output', 'Input');
          UnitPriceReadOnly := qryini.FieldByName('UnitPriceReadOnly')
            .AsInteger = 0;
          qryRecipts.FieldByName('AidNumber').AsString :=
            FieldByName('ReciptNumber').AsString;
          qryRecipts.FieldByName('AidDate').AsString :=
            FieldByName('ReciptDate').AsString;

          if ((RecallTypeOption and Integer(CHkInsertMasterInfo)) <> 0) then
            qryRecipts.FieldByName('SecondType').AsString :=
              FieldByName('SecondType').AsString;

          CheckDuplicateStuffCode :=
            ((RecallTypeOption and Integer(chkCheckDuplicateStuffCode)) <> 0);
          while not eof do
          begin
            if CheckDuplicateStuffCode or
              (not qryItems.Locate('StuffCode', FieldByName('StuffCode')
              .AsLargeInt, [])) then
            begin
              qryItems.Insert;
              qryItems.FieldByName('StuffCode').AsLargeInt :=
                FieldByName('StuffCode').AsLargeInt;

              if opt.EntityDisplay then
                qryItems.FieldByName(In_Out + 'Entity').AsFloat :=
                  FieldByName('EnterEntity').AsFloat;

              if opt.WeightDisplay then
                qryItems.FieldByName(In_Out + 'Weight').AsFloat :=
                  FieldByName('EnterWeight').AsFloat;

              if not UnitPriceReadOnly then
                qryItems.FieldByName('Total' + In_Out + 'Price').AsCurrency :=
                  FieldByName('EnterPrice').AsCurrency;

              if FieldByName('EnterPrice').AsCurrency = 0 then
              begin
                if FieldByName('EnterEntity').AsFloat <> 0 then
                  qryItems.FieldByName('UnitSellPrice').AsCurrency :=
                    RoundTo(FieldByName('Price').AsCurrency /
                    FieldByName('Entity').AsFloat, -2);

                qryItems.FieldByName('Total' + In_Out + 'Price').AsCurrency :=
                  qryItems.FieldByName('UnitSellPrice').AsCurrency *
                  FieldByName('EnterEntity').AsFloat;
              end;

              qryItems.FieldByName('PersonID1').AsInteger :=
                FieldByName('PersonID1').AsInteger;
              qryItems.FieldByName('preReciptItemID').AsInteger :=
                FieldByName('ReciptItemID').AsInteger;
              qryItems.FieldByName('InvEntity').AsInteger :=
                FieldByName('RemainEntity').AsInteger -
                FieldByName('EnterEntity').AsInteger;

              qryItems.FieldByName('UseUnitID').AsInteger := 0;
              qryItems.FieldByName('AidNumber').AsString :=
                FieldByName('ReciptNumber').AsString;
              qryItems.FieldByName('AidDate').AsString :=
                FieldByName('ReciptDate').AsString;

              { WaterCoOrDeficitValueEdit
                درصد تخفيف
                مبلغ تخفيف
                هردو
                هیچکدام
              }

              if qryItems.FindField('WaterCo') <> nil then
              begin

                qryItems.FieldByName('WaterCo').AsFloat :=
                  FieldByName('WaterCo').AsFloat;
                // زمانی که مقدار کمتر می شود تخیف نسبی کم می شود
                if qryini.FieldByName('WaterCoOrDeficitValueEdit').AsInteger
                  in [1, 2] then
                  qryItems.FieldByName('DeficitValue').AsFloat :=
                    FieldByName('DeficitValue').AsFloat;
              end;

              if qryItems.FindField('TaxCo') <> nil then
              begin
                qryItems.FieldByName('TaxCo').AsCurrency := FieldByName('TaxCo')
                  .AsCurrency;
                qryItems.FieldByName('TaxValue').AsCurrency :=
                  FieldByName('TaxValue').AsCurrency;
              end;

              qryItems.FieldByName('ItemNote').AsString :=
                FieldByName('ItemNote').AsString;

              qryItems.Post;
            end;
            Next;
            Application.ProcessMessages;
          end;
          // while
        end; // cliIndent
      end; // with
    finally
      qryItems.EnableControls;
      RecallIndentF.Free;
    end; // try
end;

procedure TRecallIndentF.UpdateList;
begin
  with qryIndent do
  begin
    Active := False;
    Parameters.ParamByName('StoreIDFrom').Value :=
      GetcFrom(myParams.ParamValues['Storid'], ftInteger);
    Parameters.ParamByName('StoreIDTo').Value :=
      GetcTo(myParams.ParamValues['Storid'], ftInteger);

    Parameters.ParamByName('StuffCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['StuffCode'], ftLargeint);
    Parameters.ParamByName('StuffCodeTo').Value :=
      GetcTo(myParams.ParamValues['StuffCode'], ftLargeint);

    Parameters.ParamByName('RcpNumberFrom').Value :=
      GetcFrom(myParams.ParamValues['Number'], ftInteger);
    Parameters.ParamByName('RcpNumberTo').Value :=
      GetcTo(myParams.ParamValues['Number'], ftInteger);

    Parameters.ParamByName('DateFrom').Value :=
      GetcFrom(myParams.ParamValues['ReciptDate'], ftDate);
    Parameters.ParamByName('DateTo').Value :=
      GetcTo(myParams.ParamValues['ReciptDate'], ftDate);

    // if qryini.FieldByName('FilterYearIDActive').AsInteger = 0 then
    // begin
    Parameters.ParamByName('YearIDFrom').Value := opt.DefaultYear;
    Parameters.ParamByName('YearIDTo').Value := APPBank.Year;
    // end
    // else
    // begin
    // Parameters.ParamByName('YearIDFrom').Value := 1300;
    // Parameters.ParamByName('YearIDTo').Value := APPBank.Year;
    // end;

    Active := True;
  end; // with
end;

procedure TRecallIndentF.qryIndentAfterOpen(DataSet: TDataSet);
begin
  inherited;
  if DataSet.RecordCount > 0 then
    With qryIndent do
    begin
      FieldByName('Entity').DisplayLabel := 'مقدار ' +
        FieldByName('ReciptCaption').AsString;
      FieldByName('Weight').DisplayLabel := 'وزن ' +
        FieldByName('ReciptCaption').AsString;
      FieldByName('Price').DisplayLabel := 'مبلغ ' +
        FieldByName('ReciptCaption').AsString;
    end;
end;

procedure TRecallIndentF.qryIndentBeforePost(DataSet: TDataSet);
var
  s: String;
begin
  inherited;
  s := 'EnterEntity';
  s := StringReplace(s, 'Enter', 'Remain', [rfReplaceAll]);
  if qryIndent.FieldByName('EnterEntity').AsFloat > qryIndent.FieldByName(s).AsFloat
  then
  begin
    BigMessage(qryIndent.FieldByName('EnterEntity').DisplayLabel +
      ' نمي تواند از ' + qryIndent.FieldByName(s).DisplayLabel +
      ' بزرگتر باشد.', 1);
    if not(qryIndent.State in dsEditModes) then
      qryIndent.edit;
    // cliIndent.FieldByName((Sender as TField).FieldName).OnChange := nil;
    qryIndent.FieldByName('EnterEntity').AsFloat :=
      qryIndent.FieldByName(s).AsFloat;
    DBGrid1.SelectedIndex := DBGrid1.SelectedIndex - 1;

    if ((RecallTypeOption and Integer(CHKEdit2LessAmount)) <> 0) then
      Abort;
  end;

end;

procedure TRecallIndentF.actFilterExecute(Sender: TObject);
var
  DateFrom, DateTo: String;
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      DateFrom := ReadConfig(APPID, Self.Name + 'ReciptDateFrom', EmptyStr);
      DateTo := ReadConfig(APPID, Self.Name + 'ReciptDateTo', EmptyStr);

      if DateFrom = EmptyStr then
        AddItem(DMf.adcBSell, 'ReciptDate', 'تاريخ ', 'تاريخ', ftDate, dvMinMax,
          '', '', ciSimple, '', 'Select  ''' + APPBank.StartYear +
          ''',max(ReciptDate) from Recipts')
      else
        AddItem(DMf.adcBSell, 'ReciptDate', 'تاريخ ', 'تاريخ', ftDate, dvMinMax,
          '', '', ciSimple, '', 'Select  ''' + DateFrom + ''',''' +
          DateTo + '''');

      AddItem(DMf.adcBSell, 'Number', 'شماره فرم', 'شماره ', ftInteger,
        dvMinMax, '', '', ciSimple, '',
        'select Min(ReciptNumber),Max(ReciptNumber) From Recipts');

      AddItemFilter(GetFilter, TFilterStuffCode);
      // AddItem(DMf.adcBSell, 'StuffCode', 'نام كالا', 'كد كالا', ftLargeint,
      // dvMinMax, '', '', ciLookup,
      // 'SELECT c_StuffCode, c_StuffName FROM  StuffCoding ',
      // 'Select Min(StuffCode),max(StuffCode) from ReciptItems');

      AddItem(DMf.adcBSell, 'Storid', 'نام انبار ', 'كد انبار', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT n_StoreID, c_StoreName FROM Stores ',
        'Select min(StoreID),max(StoreID) From Recipts');

      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateList;
      end;
      // if
    finally
      Free;
    end; // try
  end; // with

end;

procedure TRecallIndentF.actPrintExecute(Sender: TObject);
begin
  inherited;
  InitReportFile(ppReport1, Self.Name);
end;

procedure TRecallIndentF.actSearchExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryIndent);
end;

procedure TRecallIndentF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryIndent);
end;

procedure TRecallIndentF.FormDestroy(Sender: TObject);
var
  ReciptDateFrom, ReciptDateTo: string;
begin
  inherited;
  ReciptDateFrom := GetcFrom(myParams.ParamValues['ReciptDate'], ftDate);
  ReciptDateTo := GetcTo(myParams.ParamValues['ReciptDate'], ftDate);
  SaveConfig(APPID, Self.Name + 'ReciptDateFrom', ReciptDateFrom);
  SaveConfig(APPID, Self.Name + 'ReciptDateTo', ReciptDateTo);

end;

procedure TRecallIndentF.actDBGridSelectAllExecute(Sender: TObject);
begin
  inherited;
  try
    DBGridSelectAll(DBGrid1);
  finally
  end;
end;

procedure TRecallIndentF.actExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TRecallIndentF.FormShow(Sender: TObject);
begin
  inherited;
  Entity_Weight(DBGrid1);
end;

procedure TRecallIndentF.DBGrid1Enter(Sender: TObject);
begin
  inherited;
  setColumns2(DBGrid1, False, 'EnterEntity', aReadOnly);
  setColumns2(DBGrid1, False, 'EnterWeight', aReadOnly);
  DBGrid1.SelectedIndex := 16
end;

procedure TRecallIndentF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  gridkeyenter(Sender, Key);
end;

procedure TRecallIndentF.gridkeyenter(Sender: TObject; var Key: Char);
var
  nextIndex: Integer;
  curIndex: Integer;
begin
  curIndex := (Sender as TCedarDbgrid).SelectedIndex;
  nextIndex := curIndex;
  case Key of
    #13:
      begin
        if shiftDown then
          Exit;
        Key := #0;
        case curIndex of
          16:
            nextIndex := 17;
          17:
            nextIndex := 18;
          18:
            nextIndex := -1;
        else
          nextIndex := 16;

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
        SendKeys('000', False);
      end; // *
    #27:
      if (Sender as TCedarDbgrid).DataSource.DataSet.State in dsEditModes then
        (Sender as TCedarDbgrid).DataSource.DataSet.Cancel;

      #32, #157: if DBGrid1.Columns[curIndex].ButtonStyle = cbsEllipsis then

    begin
      // in [1,17,19,23,24,25,26] then begin
      Key := #0;
      // DBGrid1EditButtonClick(sender);
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
          sendkey(vk_down, [], False);
          (Sender as TCedarDbgrid).SelectedIndex := 16;
        end; // 0
      -2:
        begin
          if (Sender as TCedarDbgrid).DataSource.State in dsEditModes then
            (Sender as TCedarDbgrid).DataSource.DataSet.Cancel;
          Perform(WM_NEXTDLGCTL, 0, 0);
        end; // -2
      -3:
        begin
          if (Sender as TCedarDbgrid).DataSource.State in dsEditModes then
            (Sender as TCedarDbgrid).DataSource.DataSet.Cancel;
          Perform(WM_NEXTDLGCTL, 1, 0);
        end; // -3
    else
      (Sender as TCedarDbgrid).SelectedIndex := nextIndex;
end;
// case

end;

procedure TRecallIndentF.FormCreate(Sender: TObject);
begin
  inherited;
  setColumns2(DBGrid1, opt.StuffTecInfoActive, 'c_StuffTecInfo');

end;

procedure TRecallIndentF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  Text := GetPrintDate;
end;

procedure TRecallIndentF.ppSysVarPageNoGetText(Sender: TObject;
  var Text: String);
begin
  Text := GetPageNumberString(Text)
end;

procedure TRecallIndentF.ppLblCaptionGetText(Sender: TObject; var Text: String);
begin
  Text := Caption;
end;

procedure TRecallIndentF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  Text := APPBank.CompanyName;
end;

procedure TRecallIndentF.ApplyRemainToEnter;
var
  i: Integer;
  Bookmark: TBookmark;
  ds: TDataSet;
begin
  ds := DBGrid1.DataSource.DataSet;
  if not Assigned(ds) or ds.IsEmpty then
    Exit;

  // SelectedRows خودش یک TBookmarkList است
  if DBGrid1.SelectedRows.Count = 0 then
    Exit;

  ds.DisableControls;
  try
    for i := 0 to DBGrid1.SelectedRows.Count - 1 do
    begin
      Bookmark := DBGrid1.SelectedRows.Items[i];
      ds.Bookmark := Bookmark;

      ds.edit;
      ds.FieldByName('EnterEntity').Value :=
        ds.FieldByName('RemainEntity').Value;
      ds.Post;
    end;
  finally
    ds.EnableControls;
  end;
end;

end.
