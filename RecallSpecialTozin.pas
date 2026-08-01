{ -----------------------------------------------------------------------------
  Unit Name: RecallSpecialTozin
  Author:    Mahmood
  ----------------------------------------------------------------------------- }
unit RecallSpecialTozin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template5, StdCtrls, CheckLst, DBActns, ActnList, Buttons,
  ExtCtrls, DB, ADODB, Grids, Vcl.DBGrids, ComCtrls, DBClient, Provider,
  ppBands, ppCtrls, ppPrnabl, ppClass, ppDB, ppCache, ppDBPipe, ppComm,
  ppRelatv, ppProd, ppReport, DBCtrls, Menus, DM, ppParameter, ppVar,
  ManagGridColumns, ppDesignLayer, System.Actions, System.DateUtils,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid, InitPop;

type
  TRecallSpecialTozinF = class(TTemplate5F)
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
    actRptCardex: TAction;
    BitBtn8: TBitBtn;
    actFilter: TAction;
    BitBtn9: TBitBtn;
    qrySpecialRecallStuffCode: TLargeintField;
    qrySpecialRecallStoreID: TSmallintField;
    qrySpecialRecallc_StoreName: TStringField;
    qrySpecialRecallc_StuffName: TStringField;
    qrySpecialRecallUnitName: TStringField;
    qrySpecialRecallPersonID1: TIntegerField;
    qrySpecialRecallCustName: TStringField;
    qrySpecialRecallReciptCaption: TStringField;
    qrySpecialRecallAidNumber: TStringField;
    qrySpecialRecallAidDate: TStringField;
    qrySpecialRecallSecondType: TIntegerField;
    qrySpecialRecallYearID: TIntegerField;
    qrySpecialRecallEntity: TFloatField;
    qrySpecialRecallSecondTypeName: TStringField;
    spl1: TSplitter;
    qrySpecialRecallMachineNo: TStringField;
    qrySpecialRecallMachineName: TStringField;
    qrySpecialRecallc_StuffTecInfo: TStringField;
    DBGrid1: TCedarDbgrid;
    qrySpecialRecallTozinID: TIntegerField;
    qrySpecialRecallTozinNumber: TIntegerField;
    qrySpecialRecallTozinDate: TStringField;
    qrySpecialRecallTozinNote: TStringField;
    qrySpecialRecall_Checked: TFMTBCDField;
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
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
    procedure qrySpecialRecallStoreIDChange(Sender: TField);
    procedure ppLblCaptionGetText(Sender: TObject; var Text: String);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
    procedure qryMasterAfterScroll(DataSet: TDataSet);
    procedure dbgrdMasterKeyPress(Sender: TObject; var Key: Char);
    procedure qrySpecialRecallAfterOpen(DataSet: TDataSet);
    procedure DBGrid1CellClick(Column: TColumnEh);
  private
    qrySum: TADOQuery;
    countChecked, countUnchecked, StoreID: Integer;
    MultiChecked, NoteActive: Boolean;
    UseStoreID_MinMaxSQL, qrySpecialRecallSQL, In_Out: String;
    qryinit, qryIt, qryRect: TADOQuery;
    RecallTypeOption: Largeint;
    procedure ToggleCheck(CalculateSummary: Boolean = True);
    procedure CalculateSumChecks;
    procedure UpdateList(qry: TADOQuery);
    procedure FormSQL(qry: TADOQuery);
    procedure MakeSQLqry;
    procedure intiForm;
  protected

    { Private declarations }
  public
    function SelectRecall(qryI, qryini, qryRec: TADOQuery; myStore_: TStore;
      Multi_Checked: Boolean = True; CustID: Integer = 0): Boolean;
    { Public declarations }
  end;

var
  RecallSpecialTozinF: TRecallSpecialTozinF;

implementation

uses StrUtils, GlobalPro, search1, sort, search2, sort2, RptCardex, filter_ADO,
  FilterClass_ADO, ShowpreReciptItemIDs, Math, RptReports, ReciptsFunctions,
  FaraConsts, MMESSAGE, FaraDesktopAlert, shamsiDate, FormFunctions,
  Filter_ADO_Const;

{$R *.dfm}

procedure TRecallSpecialTozinF.MakeSQLqry;
begin
  qrySpecialRecall.SQL.Text := qrySpecialRecallSQL;
  FormSQL(qrySpecialRecall);
  myParams.Clear;
  actFilter.Execute;
end;

function TRecallSpecialTozinF.SelectRecall(qryI, qryini, qryRec: TADOQuery;
  myStore_: TStore; Multi_Checked: Boolean = True; CustID: Integer = 0)
  : Boolean;
var
  b: Boolean;
  In_OutEntity: Real48;
begin
  RecallSpecialTozinF := TRecallSpecialTozinF.Create(Application);
  try
    with RecallSpecialTozinF do
    begin
      qryinit := qryini;
      RecallTypeOption := qryinit.FieldByName('RecallTypeOption').AsLargeInt;
      NoteActive := (RecallTypeOption and Integer(chkNote)) <> 0;

      qrySpecialRecallSQL := qrySpecialRecall.SQL.Text;
      StoreID := myStore_.code;
      In_Out := IfThen(qryinit.FieldByName('EffectType').AsInteger
        in [3, 4, 5, 7, 8], 'Output', 'Input');

      intiForm;
      qryIt := qryI;
      qryRect := qryRec;

      qrySpecialRecallPersonID1.DisplayLabel := 'كد ' +
        qryinit.FieldByName('Person2DetailCaption').AsString;;
      qrySpecialRecallCustName.DisplayLabel := 'نام ' +
        qryinit.FieldByName('Person2DetailCaption').AsString;

      MultiChecked := Multi_Checked;
      // Entity_Weight(DBGrid1);

      UseStoreID_MinMaxSQL := 'Select ' + IntToStr(StoreID) + ',' +
        IntToStr(StoreID); // + ' From Recipts';;

      MakeSQLqry;

      if myParams.FindParam('Stuffcode') = nil then
        Close;
      if ShowModal = mrOk then
      begin
        if qryI.LockType <> ltReadOnly then
          with qrySpecialRecall do
          begin
            DBGrid1.SearchPanel.SearchingText := EmptyStr;
            Filter := '_checked = 1';
            Filtered := True;
            DisableControls;
            First;

            // ReciptsF.qryItemsUnitSellPrice.OnChange:=nil;
            // ReciptsF.qryItemsTotalInputPrice.OnChange:=nil;
            // ReciptsF.qryItemsTotalOutputPrice.OnChange:=nil;
            ReciptsRecallEditKind(qryI, qryRec, qryini, RE_Recall);

            // ----------------- ADD New -------------------
            if (qryini.FieldByName('AidInfoActive').AsInteger in [1, 3, 4]) then
            begin
              case qryini.FieldByName('InsertAidOnRecall').AsInteger of
                1:
                  begin
                    qryRect.FieldByName('AidDate').AsString :=
                      FieldByName('TozinDate').AsString;
                    qryRect.FieldByName('AidNumber').AsString :=
                      FieldByName('TozinNumber').AsString;
                  end;
                2:
                  begin
                    qryRect.FieldByName('AidDate').AsString :=
                      FieldByName('AidDate').AsString;
                    qryRect.FieldByName('AidNumber').AsString :=
                      FieldByName('AidNumber').AsString;
                  end;
              end;
            end;
            // ----------------- ADD New -------------------

            while not eof do
            begin
              qryI.Insert;
              // qryI.FieldByName('StuffCode').AsLargeInt:=FieldByName('StuffCode').AsVariant;
              qryI.FieldByName('PrvYearID').AsInteger :=
                qrySpecialRecallYearID.AsInteger;

              qryI.FieldByName('StuffCode').AsLargeInt :=
                qrySpecialRecallStuffCode.AsLargeInt;

              // جابجایی Insert کد کالا و درصد مالیات
              // ارجاع به : بسپارتحریر-فراخوانی مالیات-فروش

              // در سیستم فروش شرکت مذکور فرم درخواست مشتری در فاکتور فروش به صورت ویژه عمومی  فراخوانی میشود و فیلد  درصد مالیات موجود در فاکتور فروش از بخش ویژه این فرم مقدار میگیرد
              // در صورت امکان زمانی که درصد مالیات فرم فاکتور فروش  0 تنظیم شده
              // درصد مالیات  و مبلغ ان  از فرم فراخوانی شده (درخواست مشتری)  خوانده شود

              if qryI.FieldByName('_StuffName').AsString = EmptyStr then
                initDesktopAlert(0, qryI.FieldByName('StuffCode').DisplayName +
                  'ي   ' + qryI.FieldByName('StuffCode').AsString +
                  '   باانبار ارتباط ندارد', nil);

              In_OutEntity := qrySpecialRecallEntity.AsFloat;

              qryI.FieldByName(In_Out + 'Entity').AsFloat :=
                RoundTo(In_OutEntity, qryini.FieldByName('RoundCount')
                .AsInteger);

              if qryini.FieldByName('ChangePriceManifesto').AsInteger = 1 then
              begin
                with DMf.qryTmpTmp do
                begin
                  Active := False;
                  SQL.Text := 'SELECT TOP 1 ManifestoItems.StuffCode, ';
                  SQL.Add('ManifestoItems.SellPrice1, ManifestoItems.SellPrice2, ManifestoItems.SellPrice3,');
                  SQL.Add('ManifestoItems.SellPrice4, StuffCoding.BuyPrice,');
                  SQL.Add('StuffCoding.StandardRate, StuffCoding.State');
                  SQL.Add('FROM Manifesto INNER JOIN');
                  SQL.Add('ManifestoItems ON Manifesto.ManifestoID = ManifestoItems.ManifestoID INNER JOIN');
                  SQL.Add('StuffCoding ON ManifestoItems.StuffCode = StuffCoding.c_StuffCode INNER JOIN');
                  SQL.Add('Customers ON Manifesto.CustomerGrpIDFrom <= Customers.CustomerGrpID AND Manifesto.CustomerGrpIDTo >=');
                  SQL.Add('Customers.CustomerGrpID AND');
                  SQL.Add('Manifesto.CustIDFrom <= Customers.CustID AND Manifesto.CustIDTo >= Customers.CustID');
                  SQL.Add('WHERE (Manifesto.ManifestoRunDate <= ''' +
                    var_glb_CurrentDate + ''')AND (SellOrBuy = 0) ');
                  SQL.Add('AND (ManifestoItems.StuffCode = ' +
                    qrySpecialRecallStuffCode.AsString + ') AND');
                  SQL.Add('(Customers.CustID = ' + IntToStr(CustID) + ')');
                  SQL.Add('ORDER BY Manifesto.ManifestoRunDate DESC,Manifesto.ManifestoNo DESC');

                  Active := True;
                end;
                if DMf.qryTmpTmp.RecordCount > 0 then
                begin
                  qryI.FieldByName('UnitSellPrice').Value :=
                    DMf.qryTmpTmp.FieldByName('SellPrice1').AsCurrency;

                  case opt.EntityDisplayType of
                    0:
                      qryI.FieldByName('Total' + In_Out + 'Price').AsCurrency :=
                        DMf.qryTmpTmp.FieldByName('SellPrice1').AsCurrency *
                        qrySpecialRecall.FieldByName('Entity').AsFloat;
                    1:
                      qryI.FieldByName('Total' + In_Out + 'Price').AsCurrency :=
                        DMf.qryTmpTmp.FieldByName('SellPrice1').AsCurrency *
                        qrySpecialRecall.FieldByName('Weight').AsFloat;
                  end;
                end;

              end;

              qryI.FieldByName('PersonID1').AsInteger :=
                FieldByName('PersonID1').AsInteger;

              qryI.FieldByName('TozinID').AsInteger := FieldByName('TozinID')
                .AsInteger;

              If NoteActive Then
                qryI.FieldByName('ItemNote').AsString :=
                  FieldByName('TozinNote').AsString + ' ' +
                  qryI.FieldByName('ItemNote').AsString;
              qryI.FieldByName('UseUnitID').AsFloat := 0;

              if (qryini.FieldByName('AidInfoActive').AsInteger in [2, 3]) then
              begin
                case qryini.FieldByName('InsertAidOnRecall').AsInteger of
                  1:
                    begin
                      qryI.FieldByName('AidDate').AsString :=
                        FieldByName('TozinDate').AsString;
                      qryI.FieldByName('AidNumber').AsString :=
                        FieldByName('TozinNumber').AsString;
                    end;
                  2:
                    begin
                      qryI.FieldByName('AidDate').AsString :=
                        FieldByName('AidDate').AsString;
                      qryI.FieldByName('AidNumber').AsString :=
                        FieldByName('AidNumber').AsString;
                    end;
                end;
              end;

              if qryI.FindField('SecondTypeItem') <> NIL then
              BEGIN
                b := qryI.FieldByName('SecondTypeItem').ReadOnly;
                qryI.FieldByName('SecondTypeItem').ReadOnly := False;
                qryI.FieldByName('SecondTypeItem').AsInteger :=
                  FieldByName('SecondType').AsInteger;
                qryI.FieldByName('SecondTypeItem').ReadOnly := b;
              END;

              if qryini.FieldByName('MachineActive').AsInteger = 4 then
              begin
                qryI.FieldByName('MachineName').AsString :=
                  FieldByName('MachineName').AsString;
                qryI.FieldByName('MachineNo').AsString :=
                  FieldByName('MachineNo').AsString;
              end;

              qryI.FieldByName('FirstUser').AsString := User.Name;

              RefreshLookupList(qryI);
              qryI.post;
              Next;
            end; // while
            // qryITotalInputPrice.OnChange:=qryITotalInputPriceChange;
            // qryITotalOutputPrice.OnChange:=qryITotalOutputPriceChange;
            // qryIUnitSellPrice.OnChange:=qryIUnitSellPriceChange;
          end; // cliSpecialRecall
      end; // if
    end; // with
    Result := True;

  finally
    RecallSpecialTozinF.Free;
  end; // try
end;

procedure TRecallSpecialTozinF.FormSQL(qry: TADOQuery);
var
  UseStoreIDOnRecall, SqlFilter, s: String;
  UsePerson1OnRecall: Largeint;
begin
  UseStoreIDOnRecall := IfThen(qryinit.FieldByName('UseStoreIDOnRecall')
    .AsInteger = 1, ' ) DERIVEDTBL WHERE (StoreID = ' + IntToStr(StoreID) +
    ') ', '');

  if ((UseStoreIDOnRecall <> EmptyStr) and (qry.Name = qrySpecialRecall.Name))
  then
  begin
    UseStoreIDOnRecall := UseStoreIDOnRecall + ' ORDER BY StuffCode ';
  end;

  SqlFilter := SqlFilter + ' AND (T.ReciptType IN (' +
    qryinit.FieldByName('RecallReciptTypes').AsString + '))';

  UsePerson1OnRecall := qryinit.FieldByName('UsePerson1OnRecall').AsLargeInt;
  if ((UsePerson1OnRecall and Integer(CHkPersonID1Filter)) <> 0) then
    SqlFilter := SqlFilter + ' AND (T.PersonID1 IN (' +
      qryRect.FieldByName('PersonID1').AsString + '))';

  if ((UsePerson1OnRecall and Integer(CHkPersonID2Filter)) <> 0) then
    SqlFilter := SqlFilter + ' AND (T.PersonID2 IN (' +
      qryRect.FieldByName('PersonID2').AsString + '))';

  if ((UsePerson1OnRecall and Integer(CHkPersonID3Filter)) <> 0) then
    SqlFilter := SqlFilter + ' AND (T.PersonID3 IN (' +
      qryRect.FieldByName('PersonID3').AsString + '))';

  with qry Do
  begin
    Active := False;
    SQL.Add(SqlFilter);

    { همه وضعیت ها
      فقط اطلاعات قطعي فراخواني شود.‏
      فقط اطلاعات دائمی فراخواني شود.‏ }
    s := qry.SQL.Text;
    // SqlFilter := SqlFilter + ' AND(TozinState < 3 )';
    if qryinit.FieldByName('RecallReciptState1').AsInteger = 1 then
      s := qry.SQL.Text + Add2Filter(s, '(TozinState = 1 )');
    if qryinit.FieldByName('RecallReciptState1').AsInteger = 2 then
      s := qry.SQL.Text + Add2Filter(s, '(TozinState = 2 )');

    if qryinit.FieldByName('RecallReciptState1').AsInteger = 3 then
      SqlFilter := SqlFilter + ' AND(TozinState <> 3 )';

    qry.SQL.Text := s;

    if UseStoreIDOnRecall <> '' then
      SQL.Text := 'SELECT * FROM (' + SQL.Text + UseStoreIDOnRecall
    else
      UseStoreID_MinMaxSQL := 'Select min(StoreID),max(StoreID) From Tozin ';

  end;

end;

procedure TRecallSpecialTozinF.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  // DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  if DataCol = 0 then
  begin
    DBGrid1.Canvas.Rectangle(Rect);
    if qrySpecialRecall_Checked.AsInteger = 1 then
      DBGrid1.Canvas.Draw(Rect.Left, Rect.Top, Image3.Picture.Graphic)
    else
      DBGrid1.Canvas.Draw(Rect.Left, Rect.Top, Image2.Picture.Graphic)
  end;
  // if

end;

procedure TRecallSpecialTozinF.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_SPACE then
  begin
    Key := 0;
    ToggleCheck;
  end; // if
end;

procedure TRecallSpecialTozinF.qryMasterAfterScroll(DataSet: TDataSet);
begin
  inherited;
  With qrySpecialRecall do
  begin
    Active := False;
    Parameters.ParamByName('ReciptID').Value := TADOQuery(DataSet)
      .FieldByName('ReciptID').AsInteger;
    Parameters.ParamByName('ServerID').Value := TADOQuery(DataSet)
      .FieldByName('ServerID').AsInteger;
    Parameters.ParamByName('YearIDFrom').Value := TADOQuery(DataSet)
      .FieldByName('YearID').AsInteger;
    Parameters.ParamByName('YearIDTo').Value := TADOQuery(DataSet)
      .FieldByName('YearID').AsInteger;
    Active := True;
  end;
end;

procedure TRecallSpecialTozinF.qrySpecialRecallAfterOpen(DataSet: TDataSet);
begin
  inherited;
  if (qryinit.FieldByName('DetailDateActive').AsInteger = 0) then
    qrySpecialRecall.sort := 'StuffCode,ItemDate'
end;

procedure TRecallSpecialTozinF.qrySpecialRecallStoreIDChange(Sender: TField);
begin
  inherited;
  PriceOnStoreType(qrySpecialRecall.FieldByName('StoreID').AsInteger, DBGrid1,
    qrySpecialRecall)
end;

procedure TRecallSpecialTozinF.ToggleCheck(CalculateSummary: Boolean = True);
begin
  if not MultiChecked and (countChecked = 1) then
    Exit;
  with qrySpecialRecall do
  begin
    edit;
    if FieldByName('_Checked').AsInteger = 1 then
      FieldByName('_Checked').AsInteger := 0
    else
      FieldByName('_Checked').AsInteger := 1;
    post;
  end;
  // with
  if CalculateSummary then
    CalculateSumChecks;

end;

procedure TRecallSpecialTozinF.DBGrid1CellClick(Column: TColumnEh);
begin
  inherited;
  DBGrid1.SearchPanel.Active := True;

end;

procedure TRecallSpecialTozinF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  ToggleCheck;
end;

procedure TRecallSpecialTozinF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qrySpecialRecall.FieldByName(opt.SearchCode));
end;

procedure TRecallSpecialTozinF.actSearchExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qrySpecialRecall);
end;

procedure TRecallSpecialTozinF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qrySpecialRecall);
end;

procedure TRecallSpecialTozinF.intiForm;

begin

end;

procedure TRecallSpecialTozinF.FormCreate(Sender: TObject);
begin
  inherited;

  qrySum := TADOQuery.Create(Self);

  // setColumns2(DBGrid1, b, '__EntityEdit');
  SetUserQualitativeOnForms(Self);

end;

procedure TRecallSpecialTozinF.FormDestroy(Sender: TObject);
begin
  inherited;
  qrySum.Free;
  // SaveColWidth(DBGrid1);
end;

procedure TRecallSpecialTozinF.CalculateSumChecks;
begin
  with qrySum do
  begin
    Clone(qrySpecialRecall);
    First;
    countChecked := 0;
    countUnchecked := 0;
    while not eof do
    begin
      if FieldByName('_checked').AsInteger = 1 then
      begin
        Inc(countChecked);
      end
      else
      begin
        Inc(countUnchecked);
      end;
      Next;
    end;
    Close;
  end;
  StatusBar1.Panels[1].Text := 'تعداد فرم‌هاي انتخاب شده = ' +
    IntToStr(countChecked);
  StatusBar2.Panels[1].Text := 'تعداد فرم‌هاي باقيمانده     = ' +
    IntToStr(countUnchecked);
end;

procedure TRecallSpecialTozinF.dbgrdMasterKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  QuickSearch(Key, qrySpecialRecallTozinNumber);
end;

procedure TRecallSpecialTozinF.actExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TRecallSpecialTozinF.actSelectAllExecute(Sender: TObject);
begin
  inherited;
  with qrySpecialRecall do
  begin
    DisableControls;
    First;
    while not eof do
    begin
      edit;
      FieldByName('_checked').AsInteger := 1;
      post;
      Next;
    end; // while
    First;
    EnableControls;
  end; // with
  CalculateSumChecks;
end;

procedure TRecallSpecialTozinF.actSlelectInverseExecute(Sender: TObject);
begin
  inherited;
  with qrySpecialRecall do
  begin
    DisableControls;
    First;
    while not eof do
    begin
      edit;
      if FieldByName('_Checked').AsInteger = 1 then
        FieldByName('_Checked').AsInteger := 0
      else
        FieldByName('_Checked').AsInteger := 1;
      post;
      Next;
    end;
    // while
    First;
    EnableControls;
  end; // with
  CalculateSumChecks;
end;

procedure TRecallSpecialTozinF.FormShow(Sender: TObject);
begin
  inherited;
  // Entity_Weight(DBGrid1);
  DBGrid1.SetFocus;
  DBGrid1.SearchPanel.Active := True;
end;

procedure TRecallSpecialTozinF.actRptCardexExecute(Sender: TObject);
begin
  inherited;
  RptCardexF.Enter(qrySpecialRecall.FieldByName('StoreID').AsInteger,
    qrySpecialRecall.FieldByName('StuffCode').AsVariant, 1);
end;

procedure TRecallSpecialTozinF.actFilterExecute(Sender: TObject);
var
  SQLTxt, s: string;
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      if qryinit.FieldByName('FilterYearIDActive').AsInteger = 0 then
        SQLTxt := Format('WHERE (YearID BETWEEN %d AND %d)',
          [opt.DefaultYear, APPBank.Year]);

      AddItemFilter(GetFilter, TFilterSecondTypeItem);

      s := 'Select min(TozinDate),max(TozinDate) from Tozin ' + SQLTxt;

      AddItem(DMf.adcBSell, 'TozinDate', 'تاريخ ', 'تاريخ', ftDate, dvMinMax,
        '', '', ciSimple, '', s);

      AddItem(DMf.adcBSell, 'Number', 'شماره توزین', 'شماره ', ftInteger,
        dvMinMax, '', '', ciSimple, '',
        'select Min(TozinNumber),Max(TozinNumber) From Tozin ' + SQLTxt);

      AddItem(DMf.adcBSell, 'StuffCode', 'نام كالا', 'كد كالا', ftLargeint,
        dvMinMax, '', '', ciLookup, SQL_StuffCoding,
        'Select Min(StuffCode),max(StuffCode) from ReciptItems');

      AddItem(DMf.adcBSell, 'Storid', 'نام انبار ', 'كد انبار', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT n_StoreID, c_StoreName FROM Stores ', UseStoreID_MinMaxSQL);

      if ((Var_glb_NoFilter) Or (ShowModal = mrOk)) then
      begin
        GetFilterString;
        UpdateList(qrySpecialRecall);
      end; // if
    finally
      Free;
      Var_glb_NoFilter := False;

    end; // try
  end; // with

end;

procedure TRecallSpecialTozinF.UpdateList(qry: TADOQuery);
begin
  with qry do
  begin
    // // ShowQryParam(qry);
    //
    Active := False;
    Parameters.ParamByName('StoreIDFrom').Value :=
      GetcFrom(myParams.ParamValues['Storid'], ftSmallint);
    Parameters.ParamByName('StoreIDTo').Value :=
      GetcTo(myParams.ParamValues['Storid'], ftSmallint);

    Parameters.ParamByName('StuffCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['StuffCode'], ftLargeint);
    Parameters.ParamByName('StuffCodeTo').Value :=
      GetcTo(myParams.ParamValues['StuffCode'], ftLargeint);

    Parameters.ParamByName('RcpNumberFrom').Value :=
      GetcFrom(myParams.ParamValues['Number'], ftInteger);
    Parameters.ParamByName('RcpNumberTo').Value :=
      GetcTo(myParams.ParamValues['Number'], ftInteger);

    Parameters.ParamByName('DateFrom').Value :=
      GetcFrom(myParams.ParamValues['TozinDate'], ftDate);
    Parameters.ParamByName('DateTo').Value :=
      GetcTo(myParams.ParamValues['TozinDate'], ftDate);

    if qryinit.FieldByName('FilterYearIDActive').AsInteger = 0 then
    begin
      Parameters.ParamByName('YearIDFrom').Value := opt.DefaultYear;
      Parameters.ParamByName('YearIDTo').Value := APPBank.Year;
    end
    else
    begin
      Parameters.ParamByName('YearIDFrom').Value := 1300;
      Parameters.ParamByName('YearIDTo').Value := APPBank.Year;
    end;

    qrySpecialRecall.Active := True;

  end;
end;

procedure TRecallSpecialTozinF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  Text := GetPrintDate;
end;

procedure TRecallSpecialTozinF.ppSysVarPageNoGetText(Sender: TObject;
  var Text: String);
begin
  Text := GetPageNumberString(Text)
end;

procedure TRecallSpecialTozinF.ppLblCaptionGetText(Sender: TObject;
  var Text: String);
begin
  Text := Caption;
end;

procedure TRecallSpecialTozinF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  Text := APPBank.CompanyName;
end;

end.
