{ -----------------------------------------------------------------------------
  Unit Name: RecallSpecialReciptsSum
  Author:    Mahmood       89/12/14
  ----------------------------------------------------------------------------- }
unit RecallSpecialReciptsSum;

interface

uses
  Messages, SysUtils, Variants, Classes, Controls, Forms,
  Dialogs, template5, StdCtrls, CheckLst, DBActns, ActnList, Buttons,
  ExtCtrls, DB, ADODB, Grids, Vcl.DBGrids, ComCtrls, System.Types,
  DBCtrls, SumDBGrid, Math, Mask, DM, Winapi.Windows, System.Actions,
  Vcl.Graphics, System.StrUtils;

type
  TRecallSpecialReciptsSumF = class(TTemplate5F)
    qrySpecialRecall: TADOQuery;
    srcSpecialRecall: TDataSource;
    BitBtn1: TBitBtn;
    actSearch: TAction;
    actSort: TAction;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn5: TBitBtn;
    actExcel: TAction;
    DBGrid1: TDBGrid;
    qryInsert: TADOQuery;
    Panel3: TPanel;
    LblStore: TLabel;
    chkPrice: TCheckBox;
    actFilter: TAction;
    BitBtn9: TBitBtn;
    qrySpecialRecallStuffCode: TLargeintField;
    qrySpecialRecallc_StuffName: TStringField;
    qrySpecialRecallUnitName: TStringField;
    qrySpecialRecallEntity: TFloatField;
    qrySpecialRecallWeight: TFloatField;
    qrySpecialRecallPrice: TBCDField;
    SumGrid1: TSumGrid;
    medtPersonID1: TMaskEdit;
    lbl14: TLabel;
    btn3: TSpeedButton;
    lbl1: TLabel;
    qrySpecialRecallSecondTypeItem: TIntegerField;
    qrySpecialRecallUnitSellPrice: TFMTBCDField;
    qrySpecialRecallUseUnitID: TIntegerField;
    qrySpecialRecallSecondType: TIntegerField;
    qrySpecialRecallPersonID1: TIntegerField;
    qrySpecialRecallSelected: TIntegerField;
    actSelectAll: TAction;
    actDeSelectd: TAction;
    BitBtn4: TBitBtn;
    BitBtn6: TBitBtn;
    qrySpecialRecallDeficitValue: TBCDField;
    qrySpecialRecallDeficitValue2: TBCDField;
    qrySpecialRecallDeficitValue4: TBCDField;
    qrySpecialRecallDeficitValue3: TBCDField;
    procedure FormResize(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure actSearchExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actExcelExecute(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure actSelectAllExecute(Sender: TObject);
    procedure actDeSelectdExecute(Sender: TObject);
  private
    BtmTiket, BtmTiketNot: TBitmap;
    StoreID: Integer;
    UseStoreID_MinMaxSQL: String;
    qryinit, qry_4Update: TADOQuery;
    procedure UpdateList;
    procedure ToggleCheck(B: Boolean = true);
    procedure InitBMP;
  protected

    { Private declarations }
  public
    function SelectRecall(qryI, qryini, qryRec: TADOQuery;
      var qry4Update: TADOQuery; myStore: TStore): Boolean;
    { Public declarations }
  end;

var
  RecallSpecialReciptsSumF: TRecallSpecialReciptsSumF;

implementation

uses GlobalPro, search2, sort2, filter_ADO, FilterClass_ADO,
  searchCode_ADO, FaraConsts, FormFunctions;

{$R *.dfm}

function TRecallSpecialReciptsSumF.SelectRecall(qryI, qryini, qryRec: TADOQuery;
  var qry4Update: TADOQuery; myStore: TStore): Boolean;
var
  In_Out: String;
  UsePerson1OnRecall: Integer;
  bRequired: Boolean;
begin
  RecallSpecialReciptsSumF := TRecallSpecialReciptsSumF.Create(Application);
  try
    with RecallSpecialReciptsSumF do
    begin
      qryinit := qryini;
      medtPersonID1.Text := qryRec.FieldByName('PersonID1').AsString;
      qry_4Update := qry4Update;
      myStore.code := qryRec.FieldByName('StoreID').AsInteger;
      Entity_Weight(DBGrid1);
      UseStoreID_MinMaxSQL := 'Select ' + IntToStr(myStore.code) + ',' +
        IntToStr(myStore.code) + ' From Recipts';
      with qrySpecialRecall Do
      begin
        Active := False;
        SQL.Text := 'SELECT Ri.StuffCode, S.c_StuffName';
        SQL.Add(', Units.UnitName, ');
        SQL.Add('ROUND(SUM(Ri.InputEntity + Ri.OutputEntity), 3) AS Entity,');
        SQL.Add('SUM(Ri.InputWeight + Ri.OutputWeight) AS Weight,');
        if qryinit.FieldByName('RecallType').AsInteger = 24 then
        begin
          SQL.Add(' SUM(Ri.TotalInputPrice + Ri.TotalOutputPrice) AS Price');
          SQL.Add(',Ri.SecondTypeItem,Max(R.SecondType) AS SecondType,Max(R.PersonID1) AS PersonID1');
          SQL.Add(' ,0.0 as UnitSellPrice,0 as UseUnitID');
        end
        else
        begin
          SQL.Add(' SUM(Ri.TotalInputPrice + Ri.TotalOutputPrice) AS Price');
          SQL.Add(',0 as SecondTypeItem,0 as SecondType,0 as PersonID1');
          SQL.Add(' ,SUM(Ri.UnitSellPrice) AS UnitSellPrice,0 as UseUnitID');
        end;
        SQL.Add(',SUM(Ri.DeficitValue) AS DeficitValue,SUM(Ri.DeficitValue2) AS DeficitValue2');
        SQL.Add(',SUM(Ri.DeficitValue3) AS DeficitValue3,SUM(Ri.DeficitValue4) AS DeficitValue4');

        SQL.Add(',Fitful.DetailCode AS Selected');
        SQL.Add('FROM ReciptItems Ri INNER JOIN');
        SQL.Add('Recipts R ON');
        SQL.Add('R.ReciptID = Ri.ReciptID AND R.ServerID = Ri.ServerID AND R.YearID =');
        SQL.Add('Ri.YearID');
        SQL.Add('INNER JOIN');
        SQL.Add('Units INNER JOIN');
        SQL.Add('StuffCoding S ON Units.UnitCode = S.n_UnitCode ON Ri.StuffCode = S.c_StuffCode');
        SQL.Add('LEFT OUTER JOIN LookUps LookUps_M ON R.SecondType = LookUps_M.LookUpID');
        SQL.Add('CROSS JOIN Fitful');

        qry4Update.SQL.Text :=
          'WHERE (R.StoreID BETWEEN :StoreIDFrom AND :StoreIDTo)';
        qry4Update.SQL.Add
          ('AND (R.ReciptNumber BETWEEN :NumberFrom AND :NumberTo)');
        qry4Update.SQL.Add('AND (R.ReciptDate BETWEEN :DateFrom AND :DateTo)');
        qry4Update.SQL.Add
          ('AND (R.PersonID1 BETWEEN :PersonID1From AND :PersonID1To)');
        // if qryinit.FieldByName('RecallType').AsInteger <> 24 then

        qry4Update.SQL.Add('AND (R.ParentReciptID IS NULL)');
        /// Warn('IS NULL');

        qry4Update.SQL.Add('AND (R.ReciptType IN (' +
          qryini.FieldByName('RecallReciptTypes').AsString + '))');
        qry4Update.SQL.Add('AND(R.YearID BETWEEN :YearIDFrom AND :YearIDTo)');

        qry4Update.SQL.Add
          ('AND(LookUps_M.Code BETWEEN :SecondTypeFrom AND :SecondTypeTo  OR R.SecondType  IS NULL  )');

        UsePerson1OnRecall := qryini.FieldByName('UsePerson1OnRecall')
          .AsInteger;

        if ((UsePerson1OnRecall and Integer(CHkPersonID1Filter)) <> 0) then
          qry4Update.SQL.Add(Format('AND (R.PersonID1  = %d )',
            [qryRec.FieldByName('PersonID1').AsInteger]));

        if ((UsePerson1OnRecall and Integer(CHkPersonID2Filter)) <> 0) then
          qry4Update.SQL.Add(Format('AND (R.PersonID2  = %d )',
            [qryRec.FieldByName('PersonID2').AsInteger]));

        if ((UsePerson1OnRecall and Integer(CHkPersonID3Filter)) <> 0) then
          qry4Update.SQL.Add(Format('AND (R.PersonID3  = %d )',
            [qryRec.FieldByName('PersonID3').AsInteger]));

        if ((UsePerson1OnRecall and Integer(CHkPersonID4Filter)) <> 0) then
          qry4Update.SQL.Add(Format('AND (R.PersonID4  = %d )',
            [qryRec.FieldByName('PersonID4').AsInteger]));

        // if UsePerson1OnRecall > 0 then
        // qry4Update.SQL.Add(Format('AND (R.PersonID%d  = %d )',
        // [UsePerson1OnRecall, qryRec.FieldByName(Format('PersonID%D',
        // [UsePerson1OnRecall])).AsInteger]));

        SQL.Add(qry4Update.SQL.Text);
        SQL.Add('GROUP BY Fitful.DetailCode,Ri.StuffCode, S.c_StuffName, Units.UnitName');
        if qryinit.FieldByName('RecallType').AsInteger = 24 then
          SQL.Add(' ,Ri.SecondTypeItem');

        myParams.Clear;
        StoreID := myStore.code;
        actFilter.Execute;
        if myParams.FindParam('Storid') = nil then
          Close;
      end; // with
      if ShowModal = mrOk then
      begin
        if Trim(medtPersonID1.Text) = EmptyStr then
        begin
          Warn('ﬂœ „‘ —Ì «Ì „ Ê«—œ ‰‘œÂ');
          Abort;
        end;
        with qrySpecialRecall do
        begin
          DisableControls;
          First;
          In_Out := IfThen(qryini.FieldByName('EffectType').AsInteger
            in [3, 4, 5, 7, 8], 'Output', 'Input');
          if qryinit.FieldByName('RecallType').AsInteger = 24 then
          begin
            qryRec.FieldByName('SecondType').AsInteger :=
              FieldByName('SecondType').AsInteger;
            qryRec.FieldByName('PersonID1').AsInteger :=
              FieldByName('PersonID1').AsInteger;
          end;
          while not eof do
          begin
            if qrySpecialRecallSelected.AsInteger = 1 then
            begin
              qryI.Insert;
              qryI.FieldByName('UseUnitID').AsFloat :=
                qrySpecialRecallUseUnitID.AsInteger;
              qryI.FieldByName('StuffCode').AsString :=
                qrySpecialRecallStuffCode.AsString;
              qryI.FieldByName(In_Out + 'Entity').AsFloat :=
                FieldByName('Entity').AsFloat;
              qryI.FieldByName(In_Out + 'Weight').AsFloat :=
                FieldByName('Weight').AsFloat;

              If not chkPrice.Checked Then
              begin
                qryI.FieldByName('Total' + In_Out + 'Price').AsCurrency := 0
              end
              else
              begin
                qryI.FieldByName('Total' + In_Out + 'Price').AsCurrency :=
                  IfThen(FieldByName('Price').AsCurrency < 0, 0,
                  FieldByName('Price').AsCurrency);

                qryI.FieldByName('DeficitValue').AsCurrency :=
                  FieldByName('DeficitValue').AsCurrency;
                qryI.FieldByName('DeficitValue2').AsCurrency :=
                  FieldByName('DeficitValue2').AsCurrency;
                qryI.FieldByName('DeficitValue3').AsCurrency :=
                  FieldByName('DeficitValue3').AsCurrency;
                qryI.FieldByName('DeficitValue4').AsCurrency :=
                  FieldByName('DeficitValue4').AsCurrency;

                qryI.FieldByName('TotallSellPrice').AsCurrency :=
                  IfThen(FieldByName('Price').AsCurrency < 0, 0,
                  FieldByName('Price').AsCurrency) -
                  (FieldByName('DeficitValue').AsCurrency +
                  FieldByName('DeficitValue2').AsCurrency +
                  FieldByName('DeficitValue3').AsCurrency +
                  FieldByName('DeficitValue4').AsCurrency);

              end;

              if qryinit.FieldByName('RecallType').AsInteger = 24 then
              begin
                qryI.FieldByName('UnitSellPrice').AsFloat :=
                  qryI.FieldByName('Total' + In_Out + 'Price').AsCurrency /
                  qryI.FieldByName(In_Out + 'Entity').AsFloat;

                qryI.FieldByName('SecondTypeItem').AsInteger :=
                  FieldByName('SecondTypeItem').AsInteger;

              end;

              qryI.FieldByName('PersonID1').AsInteger :=
                StrToInt(Trim(medtPersonID1.Text));

              if qryI.FindField('_PersonName1') <> nil then
              begin
                bRequired := qryI.FieldByName('_PersonName1').Required;
                qryI.FieldByName('_PersonName1').Required := False;
              end;
                qryI.FieldByName('FirstUser').AsString := User.Name;

              qryI.post;
            end;
            Next;
            Application.ProcessMessages;
          end; // while
        end; // qrySpecialRecall
        Result := true;
      end; // if
    end; // with
  finally
    if qryI.FindField('_PersonName1') <> nil then
      qryI.FieldByName('_PersonName1').Required := bRequired;
    RecallSpecialReciptsSumF.Free;
  end; // try
end;

procedure TRecallSpecialReciptsSumF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1);
end;

procedure TRecallSpecialReciptsSumF.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if qrySpecialRecall.FindField(opt.SearchCode) = nil then
    QuickSearch(Key, qrySpecialRecallStuffCode)
  else
    QuickSearch(Key, qrySpecialRecall.FieldByName(opt.SearchCode));
end;

procedure TRecallSpecialReciptsSumF.actSearchExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qrySpecialRecall);
end;

procedure TRecallSpecialReciptsSumF.actSelectAllExecute(Sender: TObject);
begin
  inherited;
  with qrySpecialRecall do
    try
      DisableControls;
      First;
      while not eof do
      begin
        ToggleCheck();
        Next;
      end;
      First;
    finally
      EnableControls;
    end;
end;

procedure TRecallSpecialReciptsSumF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qrySpecialRecall);
end;

procedure TRecallSpecialReciptsSumF.btn3Click(Sender: TObject);
var
  txt: String;
  B: Boolean;
  Results: array [0 .. 1] of string;
begin
  inherited;
  txt := 'SELECT Customers.CustID,Customers.CustName FROM Customers ' +
    ' INNER JOIN CustomersGroup ON Customers.CustomerGrpID = CustomersGroup.CustomerGrpID '
    + ' WHERE (CustomersGroup.GroupType IN(' + qryinit.FieldByName
    ('Customer2DetailKind').AsString + '))';
  B := searchCode_ADOF.SearchCode2(DMF.adcBSell,
    qryinit.FieldByName('Person2DetailCaption').AsString + 'Â« ', txt,
    ['òœ', qryinit.FieldByName('Person2DetailCaption').AsString], Results,
    [50, 150], alLeft);
  if B then
  begin
    medtPersonID1.Text := Results[0];
    lbl1.Caption := Results[1];
  end;
end;

procedure TRecallSpecialReciptsSumF.FormCreate(Sender: TObject);
begin
  inherited;
  InitBMP;
  chkPrice.Checked :=
    StrToBool(ReadConfig(APPID, 'RecallSpecialReciptsSumFchkPrice', 'True'));
end;

procedure TRecallSpecialReciptsSumF.InitBMP;
begin
  BtmTiket := TBitmap.Create;
  with BtmTiket do
    try
      Transparent := true;
      LoadFromResourceName(HInstance, 'Tiket');
    finally
      // Free
    end;
  BtmTiketNot := TBitmap.Create;
  with BtmTiketNot do
    try
      Transparent := true;
      LoadFromResourceName(HInstance, 'TiketNot');
    finally
      // Free
    end;
end;

procedure TRecallSpecialReciptsSumF.FormDestroy(Sender: TObject);
begin
  inherited;
  BtmTiket.Free;
  BtmTiketNot.Free;
  SaveColWidth(DBGrid1);
  SaveConfig(APPID, 'RecallSpecialReciptsSumFchkPrice',
    BoolToStr(chkPrice.Checked));
end;

procedure TRecallSpecialReciptsSumF.actDeSelectdExecute(Sender: TObject);
begin
  inherited;
  with qrySpecialRecall do
    try
      DisableControls;
      First;
      while not eof do
      begin
        ToggleCheck((qrySpecialRecallSelected.AsInteger <> 1));
        Next;
      end;
      First;
    finally
      EnableControls;
    end;

end;

procedure TRecallSpecialReciptsSumF.actExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TRecallSpecialReciptsSumF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try

      AddItem(DMF.adcBSell, 'SecondType', '‰Ê⁄ «ÿ·«⁄«   ', 'ﬂœ «ÿ·«⁄«  ',
        ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT distinct LookUps.Code as Code, LookUps.Name as Name FROM Recipts R '
        + 'INNER JOIN LookUps ON R.SecondType = LookUps.LookUpID ',
        'SELECT MIN(LookUps.Code),999999999 FROM Recipts R LEFT OUTER JOIN ' +
        'LookUps ON R.SecondType = LookUps.LookUpID');

      AddItem(DMF.adcBSell, 'ReciptDate', ' «—ÌŒ ', ' «—ÌŒ', ftDate, dvMinMax,
        '', '', ciSimple, '', 'SELECT  ''' + APPBank.StartYear +
        ''',max(ReciptDate) from Recipts' + ' WHERE (ReciptType IN (' +
        qryinit.FieldByName('RecallReciptTypes').AsString + '))');

      AddItem(DMF.adcBSell, 'Number', '‘„«—Â ›—„', '‘„«—Â ', ftInteger,
        dvMinMax, '', '', ciSimple, '',
        'SELECT Min(ReciptNumber),Max(ReciptNumber) From Recipts' +
        ' WHERE (ReciptType IN (' + qryinit.FieldByName('RecallReciptTypes')
        .AsString + '))');

      // AddItem(DMF.adcBSell,'StuffCode','‰«„ ﬂ«·«','ﬂœ ﬂ«·«',ftLargeint,dvMinMax,'','',ciLookup,
      // 'SELECT c_StuffCode, c_StuffName FROM  StuffCoding ',
      // 'Select Min(StuffCode),max(StuffCode) from ReciptItems');

      AddItem(DMF.adcBSell, 'PersonID1', ' ‰«„ „‘ —Ì ', 'ﬂœ „‘ —Ì', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT CustID,CustName FROM Customers WHERE (CustomerGrpID IN (SELECT CustomerGrpID FROM dbo.CustomersGroup WHERE     (GroupType = 4))) ',
        'SELECT 0,999999999');

      AddItem(DMF.adcBSell, 'Storid', '‰«„ «‰»«— ', 'ﬂœ «‰»«—', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT n_StoreID, c_StoreName FROM Stores ', UseStoreID_MinMaxSQL);

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

procedure TRecallSpecialReciptsSumF.UpdateList;
begin
  with qrySpecialRecall do
  begin
    Active := False;
    Parameters.ParamByName('StoreIDFrom').Value :=
      GetcFrom(myParams.ParamValues['Storid'], ftInteger);
    Parameters.ParamByName('StoreIDTo').Value :=
      GetcTo(myParams.ParamValues['Storid'], ftInteger);

    Parameters.ParamByName('PersonID1From').Value :=
      GetcFrom(myParams.ParamValues['PersonID1'], ftInteger);
    Parameters.ParamByName('PersonID1To').Value :=
      GetcTo(myParams.ParamValues['PersonID1'], ftInteger);

    Parameters.ParamByName('NumberFrom').Value :=
      GetcFrom(myParams.ParamValues['Number'], ftInteger);
    Parameters.ParamByName('NumberTo').Value :=
      GetcTo(myParams.ParamValues['Number'], ftInteger);

    Parameters.ParamByName('DateFrom').Value :=
      GetcFrom(myParams.ParamValues['ReciptDate'], ftDate);
    Parameters.ParamByName('DateTo').Value :=
      GetcTo(myParams.ParamValues['ReciptDate'], ftDate);

    Parameters.ParamByName('YearIDFrom').Value := opt.DefaultYear;
    Parameters.ParamByName('YearIDTo').Value := APPBank.Year;
    // Parameters.ParamByName('StuffCodeFrom').Value:=GetcFrom(myParams.ParamValues['StuffCode'],ftLargeint);
    // Parameters.ParamByName('StuffCodeTo').Value:=GetcTo(myParams.ParamValues['StuffCode'],ftLargeint);

    Parameters.ParamByName('SecondTypeFrom').Value :=
      GetcFrom(myParams.ParamValues['SecondType'], ftInteger);
    Parameters.ParamByName('SecondTypeTo').Value :=
      GetcTo(myParams.ParamValues['SecondType'], ftInteger);

    qry_4Update.Parameters := Parameters;
    Active := true;
  end; // with
  actSelectAll.Execute;

end;

procedure TRecallSpecialReciptsSumF.ToggleCheck(B: Boolean = true);
begin
  with qrySpecialRecall do
  begin
    Edit;
    qrySpecialRecallSelected.AsInteger := IfThen(B, 1, 0);
    post;
  end;
end;

procedure TRecallSpecialReciptsSumF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  ToggleCheck((qrySpecialRecallSelected.AsInteger <> 1))
end;

procedure TRecallSpecialReciptsSumF.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  if DataCol = 0 then
  begin
    DBGrid1.Canvas.Rectangle(Rect);
    if qrySpecialRecallSelected.AsInteger = 1 then
      DBGrid1.Canvas.Draw(Rect.Left, Rect.Top, BtmTiket)
    else
      DBGrid1.Canvas.Draw(Rect.Left, Rect.Top, BtmTiketNot)
  end;

end;

procedure TRecallSpecialReciptsSumF.DBGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (Key = VK_SPACE) then
    ToggleCheck((qrySpecialRecallSelected.AsInteger <> 1))
end;

end.
