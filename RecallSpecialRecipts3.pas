{ -----------------------------------------------------------------------------
  Unit Name: RecallSpecialRecipts
  Author:    Mahmood
  ----------------------------------------------------------------------------- }
unit RecallSpecialRecipts3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template5, StdCtrls, CheckLst, DBActns, ActnList, Buttons,
  ExtCtrls, DB, ADODB, Grids, Vcl.DBGrids, ComCtrls, DBClient, Provider,
  ppBands, ppCtrls, ppPrnabl, ppClass, ppDB, ppCache, ppDBPipe, ppComm,
  ppRelatv, ppProd, ppReport, DBCtrls, Menus, DM, Filter_ADO_Const,
  System.Actions;

type
  TRecallSpecialRecipts3F = class(TTemplate5F)
    qrySpecialRecall: TADOQuery;
    srcSpecialRecall: TDataSource;
    BitBtn1: TBitBtn;
    Image2: TImage;
    Image3: TImage;
    StatusBar1: TStatusBar;
    actSearch: TAction;
    actSort: TAction;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    StatusBar2: TStatusBar;
    BitBtn5: TBitBtn;
    actPrint: TAction;
    actExcel: TAction;
    actSelectAll: TAction;
    Panel2: TPanel;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    lblSumChecks: TLabel;
    actSlelectInverse: TAction;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    LblStore: TLabel;
    DBTextStoreID: TDBText;
    DBText2: TDBText;
    Label2: TLabel;
    actRptCardex: TAction;
    BitBtn8: TBitBtn;
    actFilter: TAction;
    actShowpreRecipt: TAction;
    BitBtn9: TBitBtn;
    ActPerFactor: TAction;
    qrySpecialRecallStuffCode: TLargeintField;
    qrySpecialRecallStoreID: TSmallintField;
    qrySpecialRecallc_StoreName: TStringField;
    qrySpecialRecallc_StuffName: TStringField;
    qrySpecialRecallUnitName: TStringField;
    qrySpecialRecallWeight: TFloatField;
    qrySpecialRecallYearID: TIntegerField;
    qrySpecialRecall_Checked: TFMTBCDField;
    qrySpecialRecallEntity: TFloatField;
    qrySpecialRecallUnitSellPrice: TFMTBCDField;
    procedure FormResize(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure actSearchExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actExcelExecute(Sender: TObject);
    procedure actSelectAllExecute(Sender: TObject);
    procedure actSlelectInverseExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actRptCardexExecute(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    qrySum: TADOQuery;
    sumChecked, sumUnchecked: Currency;
    countChecked, countUnchecked, StoreID: Integer;
    MultiChecked: Boolean;
    UseStoreID_MinMaxSQL: String;
    qryinit: TADOQuery;
    UsePerson1OnRecall: Largeint;
    procedure ToggleCheck(CalculateSummary: Boolean = True);
    procedure CalculateSumChecks;
    procedure UpdateList;
  protected

    { Private declarations }
  public
    function SelectRecall(qryI, qryini, qryRec: TADOQuery; myStore: TStore;
      Multi_Checked: Boolean = True; CustID: Integer = 0): Boolean;
    { Public declarations }
  end;

var
  RecallSpecialRecipts3F: TRecallSpecialRecipts3F;

implementation

uses StrUtils, GlobalPro, search1, sort, search2, sort2,
  RptCardex, filter_ADO, FilterClass_ADO, ShowpreReciptItemIDs, Math,
  RptReports, ReciptsFunctions, FaraConsts;

{$R *.dfm}

function TRecallSpecialRecipts3F.SelectRecall(qryI, qryini, qryRec: TADOQuery;
  myStore: TStore; Multi_Checked: Boolean = True; CustID: Integer = 0): Boolean;
var
  In_Out, SqlFilter, UseStoreIDOnRecall: String;
begin
  RecallSpecialRecipts3F := TRecallSpecialRecipts3F.Create(Application);
  try
    with RecallSpecialRecipts3F do
    begin
      qryinit := qryini;
      MultiChecked := Multi_Checked;
      Entity_Weight(DBGrid1);
      UseStoreIDOnRecall := IfThen(qryini.FieldByName('UseStoreIDOnRecall')
        .AsInteger = 1, ' ) DERIVEDTBL WHERE (StoreID = ' +
        IntToStr(myStore.code) + ') ORDER BY StuffSize,StuffCode ', '');

      SqlFilter := SqlFilter + ' AND (Recipts.ReciptType IN (' +
        qryini.FieldByName('RecallReciptTypes').AsString + '))';

      UsePerson1OnRecall := qryini.FieldByName('UsePerson1OnRecall').AsLargeInt;
      if ((UsePerson1OnRecall and Integer(CHkPersonID1Filter)) <> 0) then
        SqlFilter := SqlFilter + ' AND (Recipts.PersonID1 IN (' +
          qryRec.FieldByName('PersonID1').AsString + '))';

      if ((UsePerson1OnRecall and Integer(CHkPersonID2Filter)) <> 0) then
        SqlFilter := SqlFilter + ' AND (Recipts.PersonID2 IN (' +
          qryRec.FieldByName('PersonID2').AsString + '))';

      if ((UsePerson1OnRecall and Integer(CHkPersonID3Filter)) <> 0) then
        SqlFilter := SqlFilter + ' AND (Recipts.PersonID3 IN (' +
          qryRec.FieldByName('PersonID3').AsString + '))';

      if ((UsePerson1OnRecall and Integer(CHkPersonID4Filter)) <> 0) then
        SqlFilter := SqlFilter + ' AND (Recipts.PersonID4 IN (' +
          qryRec.FieldByName('PersonID4').AsString + '))';

      // case qryini.FieldByName('UsePerson1OnRecall').AsInteger of
      // 1:
      // SqlFilter := SqlFilter + ' AND (Recipts.PersonID1 IN (' +
      // qryRec.FieldByName('PersonID1').AsString + '))';
      // 2:
      // SqlFilter := SqlFilter + ' AND (Recipts.PersonID2 IN (' +
      // qryRec.FieldByName('PersonID2').AsString + '))';
      // 3:
      // SqlFilter := SqlFilter + ' AND (Recipts.PersonID3 IN (' +
      // qryRec.FieldByName('PersonID3').AsString + '))';
      //
      // 4:
      // SqlFilter := SqlFilter + ' AND (Recipts.PersonID1 IN (' +
      // qryRec.FieldByName('PersonID1').AsString + '))' +
      // ' AND (Recipts.PersonID2 IN (' + qryRec.FieldByName('PersonID2')
      // .AsString + '))';
      //
      // end;
      // SqlFilter := SqlFilter + ' AND(Recipts.ReciptState < 3 )';
      if qryini.FieldByName('RecallReciptState1').AsInteger = 1 then
        SqlFilter := SqlFilter + ' AND(Recipts.ReciptState = 1 )';
      if qryini.FieldByName('RecallReciptState1').AsInteger = 2 then
        SqlFilter := SqlFilter + ' AND(Recipts.ReciptState = 2 )';

      if qryinit.FieldByName('RecallReciptState1').AsInteger = 3 then
        SqlFilter := SqlFilter + ' AND(Recipts.ReciptState <> 3 )';

      UseStoreID_MinMaxSQL := 'Select ' + IntToStr(myStore.code) + ',' +
        IntToStr(myStore.code) + ' From Recipts';
      with qrySpecialRecall Do
      begin
        Active := False;
        Parameters.ParamByName('ReciptType').Value :=
          qryini.FieldByName('ReciptType').AsString;
        SQL.Add(SqlFilter);
        SQL.Add('GROUP BY ReciptItems.YearID, ReciptItems.StuffCode, StuffCoding.c_StuffName');
        SQL.Add(', Recipts.StoreID, Stores.c_StoreName, Units.UnitName, Fitful.FitfulID');
        SQL.Add(',derivedtbl_1.Entity,derivedtbl_1.Weight,ReciptItems.StuffSize');
        if UseStoreIDOnRecall <> '' then
          SQL.Text := 'SELECT * FROM (' + SQL.Text + UseStoreIDOnRecall
        else
          UseStoreID_MinMaxSQL :=
            'Select min(StoreID),max(StoreID) From Recipts ';
        myParams.Clear;

        StoreID := myStore.code;

        actFilter.Execute;
        if myParams.FindParam('Stuffcode') = nil then
          Close;
      end; // with
      if ShowModal = mrOk then
      begin

        with qrySpecialRecall do
        begin
          Filter := '_checked = 1';
          Filtered := True;
          DisableControls;
          First;
          In_Out := IfThen(qryini.FieldByName('EffectType').AsInteger
            in [3, 4, 5, 7, 8], 'Output', 'Input');
          ReciptsRecallEditKind(qryI, qryRec, qryini, RE_Recall);

          while not eof do
          begin
            qryI.Insert;
            qryI.FieldByName('PrvYearID').AsInteger :=
              qrySpecialRecallYearID.AsInteger;

            qryI.FieldByName('StuffCode').AsLargeInt :=
              qrySpecialRecallStuffCode.AsLargeInt;

            if opt.EntityDisplay then
              qryI.FieldByName(In_Out + 'Entity').AsFloat :=
                FieldByName('Entity').AsFloat;
            if opt.WeightDisplay then
              qryI.FieldByName(In_Out + 'Weight').AsFloat :=
                FieldByName('Weight').AsFloat;

            qryI.FieldByName('UseUnitID').AsFloat := 0;

            if not((qryini.FieldByName('RecallTypeOption').AsLargeInt and
              Integer(chkTotalIn_OutPrice)) = 0) then
            begin
              qryI.FieldByName('UnitSellPrice').AsFloat :=
                qrySpecialRecallUnitSellPrice.AsFloat;
            end;
                qryI.FieldByName('FirstUser').AsString := User.Name;

            qryI.post;
            Next;
          end; // while
        end; // cliSpecialRecall
      end; // if
    end; // with
    Result := True;

  finally
    RecallSpecialRecipts3F.Free;
  end; // try
end;

procedure TRecallSpecialRecipts3F.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 2);
end;

procedure TRecallSpecialRecipts3F.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_SPACE then
  begin
    Key := 0;
    ToggleCheck;
  end; // if
end;

procedure TRecallSpecialRecipts3F.ToggleCheck(CalculateSummary: Boolean = True);
begin
  if not MultiChecked and (countChecked = 1) then
    Exit;
  with qrySpecialRecall do
  begin
    Edit;
    if FieldByName('_Checked').AsInteger = 1 then
      FieldByName('_Checked').AsInteger := 0
    else
      FieldByName('_Checked').AsInteger := 1;
    post;
  end; // with
  if CalculateSummary then
    CalculateSumChecks;
end;

procedure TRecallSpecialRecipts3F.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  ToggleCheck;
end;

procedure TRecallSpecialRecipts3F.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  if DataCol = 0 then
  begin
    DBGrid1.Canvas.Rectangle(Rect);
    if qrySpecialRecall_Checked.AsInteger = 1 then
      DBGrid1.Canvas.Draw(Rect.Left, Rect.Top, Image3.Picture.Graphic)
    else
      DBGrid1.Canvas.Draw(Rect.Left, Rect.Top, Image2.Picture.Graphic)
  end; // if
end;

procedure TRecallSpecialRecipts3F.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  QuickSearch(Key, qrySpecialRecall.FieldByName(opt.SearchCode));
end;

procedure TRecallSpecialRecipts3F.actSearchExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qrySpecialRecall);
end;

procedure TRecallSpecialRecipts3F.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qrySpecialRecall);
end;

procedure TRecallSpecialRecipts3F.FormCreate(Sender: TObject);
begin
  inherited;
  qrySum := TADOQuery.Create(Self);
end;

procedure TRecallSpecialRecipts3F.FormDestroy(Sender: TObject);
begin
  inherited;
  qrySum.Free;
  SaveColWidth(DBGrid1);
end;

procedure TRecallSpecialRecipts3F.CalculateSumChecks;
begin
  with qrySum do
  begin
    Clone(qrySpecialRecall);
    First;
    sumChecked := 0;
    sumUnchecked := 0;
    countChecked := 0;
    countUnchecked := 0;
    while not eof do
    begin
      if FieldByName('_checked').AsInteger = 1 then
      begin
        Inc(countChecked);
        sumChecked := sumChecked + FieldByName('Entity').AsCurrency;
      end
      else
      begin
        Inc(countUnchecked);
        sumUnchecked := sumUnchecked + FieldByName('Entity').AsCurrency;
      end;
      Next;
    end;
    Close;
  end;
  StatusBar1.Panels[1].Text := ' ⁄œ«œ ›—„ùÂ«Ì «‰ Œ«» ‘œÂ = ' +
    IntToStr(countChecked);
  StatusBar1.Panels[0].Text := 'Ã„⁄ „ﬁœ«— ›—„ùÂ«Ì «‰ Œ«» ‘œÂ = ' +
    CurrToStrF(sumChecked, ffCurrency, 0);
  StatusBar2.Panels[1].Text := ' ⁄œ«œ ›—„ùÂ«Ì »«ﬁÌ„«‰œÂ     = ' +
    IntToStr(countUnchecked);
  StatusBar2.Panels[0].Text := 'Ã„⁄ „ﬁœ«— ›—„ùÂ«Ì »«ﬁÌ„«‰œÂ     = ' +
    CurrToStrF(sumUnchecked, ffCurrency, 0);
  lblSumChecks.Caption := num2alphabet(round(sumChecked));
end;

procedure TRecallSpecialRecipts3F.actExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TRecallSpecialRecipts3F.actSelectAllExecute(Sender: TObject);
begin
  inherited;
  with qrySpecialRecall do
  begin
    DisableControls;
    First;
    while not eof do
    begin
      Edit;
      FieldByName('_checked').AsInteger := 1;
      post;
      Next;
    end; // while
    First;
    EnableControls;
  end; // with
  CalculateSumChecks;
end;

procedure TRecallSpecialRecipts3F.actSlelectInverseExecute(Sender: TObject);
begin
  inherited;
  with qrySpecialRecall do
  begin
    DisableControls;
    First;
    while not eof do
    begin
      Edit;
      if FieldByName('_Checked').AsInteger = 1 then
        FieldByName('_Checked').AsInteger := 0
      else
        FieldByName('_Checked').AsInteger := 1;
      post;
      Next;
    end; // while
    First;
    EnableControls;
  end; // with
  CalculateSumChecks;
end;

procedure TRecallSpecialRecipts3F.FormShow(Sender: TObject);
begin
  inherited;
  Entity_Weight(DBGrid1);
end;

procedure TRecallSpecialRecipts3F.actRptCardexExecute(Sender: TObject);
begin
  inherited;
  RptCardexF.Enter(qrySpecialRecall.FieldByName('StoreID').AsInteger,
    qrySpecialRecall.FieldByName('StuffCode').AsVariant, 1);
end;

procedure TRecallSpecialRecipts3F.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try

      AddItem(DMf.adcBSell, 'ReciptDate', ' «—ÌŒ ', ' «—ÌŒ', ftDate, dvMinMax,
        '', '', ciSimple, '', 'Select  ''' + APPBank.StartYear +
        ''',max(ReciptDate) from Recipts');
      AddItem(DMf.adcBSell, 'Number', '‘„«—Â ›—„', '‘„«—Â ', ftInteger,
        dvMinMax, '', '', ciSimple, '',
        'select Min(ReciptNumber),Max(ReciptNumber) From Recipts');

      AddItemFilter(GetFilter, TFilterStuffCode);
      // AddItem(DMf.adcBSell, 'StuffCode', '‰«„ ﬂ«·«', 'ﬂœ ﬂ«·«', ftLargeint,
      // dvMinMax, '', '', ciLookup,
      // 'SELECT c_StuffCode, c_StuffName FROM  StuffCoding ',
      // 'Select Min(StuffCode),max(StuffCode) from ReciptItems');

      AddItem(DMf.adcBSell, 'Storid', '‰«„ «‰»«— ', 'ﬂœ «‰»«—', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT n_StoreID, c_StoreName FROM Stores ', UseStoreID_MinMaxSQL);

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

procedure TRecallSpecialRecipts3F.UpdateList;
begin
  with qrySpecialRecall do
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

    if qryinit.FieldByName('FilterYearIDActive').AsInteger = 0 then
    begin
      Parameters.ParamByName('YearID1From').Value := opt.DefaultYear;
      Parameters.ParamByName('YearID1To').Value := APPBank.Year;
      Parameters.ParamByName('YearID2From').Value := opt.DefaultYear;
      Parameters.ParamByName('YearID2To').Value := APPBank.Year;
      Parameters.ParamByName('YearID3From').Value := opt.DefaultYear;
      Parameters.ParamByName('YearID3To').Value := APPBank.Year;
    end
    else
    begin
      Parameters.ParamByName('YearID1From').Value := 0;
      Parameters.ParamByName('YearID1To').Value := APPBank.Year;
      Parameters.ParamByName('YearID2From').Value := 0;
      Parameters.ParamByName('YearID2To').Value := APPBank.Year;
      Parameters.ParamByName('YearID3From').Value := 0;
      Parameters.ParamByName('YearID3To').Value := APPBank.Year;
    end;

    Active := True;
  end; // with
end;

end.
