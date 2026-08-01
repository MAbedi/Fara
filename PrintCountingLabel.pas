unit PrintCountingLabel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, DBActns, ActnList, StdCtrls, Buttons, ExtCtrls, DB,
  ADODB, ppCtrls, ppPrnabl, ppClass, ppBands, ppCache, ppProd, ppReport,
  ppComm, ppRelatv, ppDB, ppDBPipe, DM, ppVar, Menus, ppParameter,
  ppDesignLayer, System.Actions, FarsiReportBuilde;

type
  TPrintCountingLabelF = class(TTemplate4F)
    actFilter: TAction;
    qryStuffs: TADOQuery;
    actPrint: TAction;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    srcStuffs: TDataSource;
    rdgLimit: TRadioGroup;
    chkPrintSerial: TCheckBox;
    qryStuffsc_StuffName: TStringField;
    qryStuffsc_StuffTecInfo: TStringField;
    qryStuffsn_StoreID: TSmallintField;
    qryStuffsc_StoreName: TWideStringField;
    qryStuffs_Serial: TIntegerField;
    qryStuffsUnitName: TStringField;
    qryStuffsEntity: TFloatField;
    qryStuffsWeight: TFloatField;
    qryStuffsc_KeepPlace: TStringField;
    PopPrint: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    A51: TMenuItem;
    qryStuffsStuffCode: TLargeintField;
    ppDetailBand1: TppDetailBand;
    ppShape1: TppShape;
    ppShape5: TppShape;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppLabel2: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppShape2: TppShape;
    ppShape3: TppShape;
    ppShape4: TppShape;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel3: TppLabel;
    ppLabel8: TppLabel;
    ppShape6: TppShape;
    ppShape7: TppShape;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppLabel11: TppLabel;
    ppShape8: TppShape;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppDBText6: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppShape9: TppShape;
    ppShape10: TppShape;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppShape11: TppShape;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppShape12: TppShape;
    ppShape13: TppShape;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppLabel64: TppLabel;
    ppDBText62: TppDBText;
    ppLabel32: TppLabel;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppDBText22: TppDBText;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    rgSort: TRadioGroup;
    BitBtn2: TBitBtn;
    act_Excel: TAction;
    Letter1: TMenuItem;
    BitBtn3: TBitBtn;
    BitBtn1: TBitBtn;
    actSave: TAction;
    BitBtn4: TBitBtn;
    chkCountingItems: TCheckBox;
    mmoCountingItems: TMemo;
    qryStuffsAlphabet: TWideStringField;
    qryStuffssd1: TStringField;
    qryStuffsst1: TIntegerField;
    qryStuffsserial: TIntegerField;
    qryinit: TADOQuery;
    qryStuffsTierced: TWideStringField;
    qryStuffsCabinet: TWideStringField;
    qryStuffsKeepPlace: TStringField;
    qryStuffsCabinets: TStringField;
    qryStuffsTierceds: TStringField;
    qryStuffsRptID: TLargeintField;
    procedure actFilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure ppLabel1GetText(Sender: TObject; var Text: String);
    procedure ppDBText3GetText(Sender: TObject; var Text: String);
    procedure FormCreate(Sender: TObject);
    procedure ppLabel7GetText(Sender: TObject; var Text: String);
    procedure rdgLimitClick(Sender: TObject);
    procedure qryStuffsCalcFields(DataSet: TDataSet);
    procedure ppDBText19Print(Sender: TObject);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure N1Click(Sender: TObject);
    procedure act_ExcelExecute(Sender: TObject);
    procedure actSaveExecute(Sender: TObject);
    procedure chkCountingItemsClick(Sender: TObject);
  private
    myStore: TStore;
    // StoreType:  Byte;
    // StoreName:  String;
    SQLStuffs: String;
    procedure UpdateList;
    procedure Rename_rdgLimit_Items;
  public
    procedure Enter;
    { Public declarations }
  end;

var
  PrintCountingLabelF: TPrintCountingLabelF;

implementation

uses filter_ADO, FilterClass_ADO, SelectStore, GlobalPro, ReciptsFunctions,
  searchCode_ADO;

{$R *.dfm}

procedure TPrintCountingLabelF.Enter;
begin
  PrintCountingLabelF := TPrintCountingLabelF.Create(PrintCountingLabelF);
  try
    with PrintCountingLabelF do
    begin
      ShowModal;
    end; // with
  finally
    FreeAndNil(PrintCountingLabelF);
  end; // try
end;

procedure TPrintCountingLabelF.act_ExcelExecute(Sender: TObject);
begin
  inherited;
  DataToExcel(qryStuffs);
end;

procedure TPrintCountingLabelF.chkCountingItemsClick(Sender: TObject);
begin
  inherited;
  rdgLimit.ItemIndex := -1;
  rdgLimit.Enabled := not chkCountingItems.Checked;
  mmoCountingItems.Visible := chkCountingItems.Checked;
  UpdateList
end;

procedure TPrintCountingLabelF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItem(DMF.adcBSell, 'YearID', 'سال مالی', 'سال', ftInteger, dvMinMax,
        '', '', ciSimple, '',
        'SELECT Min(YearId),max(YearId) FROM Util.MaliYear');

      AddItem(DMF.adcBSell, 'c_StuffCode', 'نام كالا', 'كد', ftLargeint,
        dvMinMax, '0', '0', ciLookup,
        'SELECT StuffCoding.c_StuffCode, StuffCoding.c_StuffName FROM StuffCoding INNER JOIN '
        + 'StoreStuffs ON StuffCoding.c_StuffCode = StoreStuffs.c_StuffCode ' +
        'WHERE (StoreStuffs.n_StoreID = ' + IntToStr(myStore.code) + ') ',

        'SELECT MIN(StuffCoding.c_StuffCode) AS Expr1, MAX(StuffCoding.c_StuffCode) AS Expr2 '
        + 'FROM StuffCoding INNER JOIN StoreStuffs ON StuffCoding.c_StuffCode = StoreStuffs.c_StuffCode '
        + 'WHERE (StoreStuffs.n_StoreID = ' + IntToStr(myStore.code) + ')');

      AddItem(DMF.adcBSell, 'GROUPID', 'گروه كالا', 'گروه كالا', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT GroupID,GroupName FROM Stuffgroups ',
        'SELECT Min(GroupID),max(GroupID) FROM Stuffgroups');

      if ShowModal = mrOk then
      begin
        GetFilterString;
        Rename_rdgLimit_Items;
        UpdateList;
      end; // if
    finally
      Free;
    end; // try
  end; // with
end;

procedure TPrintCountingLabelF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('storeid') = nil then
    close;
end;

procedure TPrintCountingLabelF.actPrintExecute(Sender: TObject);
begin
  inherited;
  PopPrint.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y)
end;

procedure TPrintCountingLabelF.actSaveExecute(Sender: TObject);
var
  Txt: String;
  b: Boolean;
  Results: array [0 .. 2] of String;
  CountID: Integer;
  qry: TADOQuery;
begin
  inherited;
  if rdgLimit.ItemIndex in [0, 1, 2, 3, 5] then
  begin
    Txt := 'SELECT CountID,CountNumber,CountDate FROM Counting ';
    b := searchCode_ADOF.SearchCode2(DMF.adcBSell, 'معرفي مقاطع انبار گرداني',
      Txt, ['', 'شماره', 'تاريخ'], Results, [0, 50, 50], alLeft);
    if b then
    begin
      CountID := StrToInt(Results[0]);
      Txt := 'DELETE FROM CountingItems WHERE (CountID = %d)' +
        ' AND (StoreID = %d) AND (ISNULL(SheetID, 0) = 0) ';
      if (rdgLimit.ItemIndex <> 3) then
        Txt := Txt + ' AND (ISNULL(Count1Entity, 0) = 0)' +
          ' AND (ISNULL(Count2Entity, 0) = 0) AND (ISNULL(Count3Entity, 0) = 0)';

      Txt := Txt + ' AND (YearID = %d )' ;

        Txt := Format(Txt, [CountID, myStore.code, APPBank.Year]);
      DMF.adcBSell.Execute(Txt);
      qry := TADOQuery.Create(nil);
      With qry do
        try
          Connection := DMF.adcBSell;
          SQL.Text := 'SELECT * FROM CountingItems WHERE (ID = 0)';
          Active := True;
          qryStuffs.DisableControls;
          qryStuffs.First;
          while not qryStuffs.Eof do
          begin
            Insert;
            FieldByName('ID').AsInteger :=
              GetANewCode(Self.name, 'CountingItems', 'ID');
            FieldByName('CountID').AsInteger := CountID;
            FieldByName('StoreID').AsInteger := myStore.code;
            FieldByName('StuffCode').AsLargeInt :=
              qryStuffs.FieldByName('StuffCode').AsLargeInt;

            FieldByName('YearID').AsInteger := APPBank.Year;

            FieldByName('SheetID').AsLargeInt := abs(qryStuffs.RecNo);
            if (rdgLimit.ItemIndex = 3) then
            begin
              FieldByName('Count1Entity').AsFloat :=
                qryStuffs.FieldByName('Entity').AsFloat;
              FieldByName('Count2Entity').AsFloat :=
                qryStuffs.FieldByName('Entity').AsFloat;
              FieldByName('Count3Entity').AsFloat :=
                qryStuffs.FieldByName('Entity').AsFloat;
            end;
            Post;
            qryStuffs.Next;
          end;
        finally
          qryStuffs.EnableControls;
          FreeReservedCodes(DMF.adcBSell, '', '', Self.name);
          Free;
        end;
    end;
  end;
end;

procedure TPrintCountingLabelF.ppLabel1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TPrintCountingLabelF.ppDBText3GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := Text + #254;
end;

procedure TPrintCountingLabelF.FormCreate(Sender: TObject);
begin
  inherited;
  qryinit.Open;
  stCountFields(qryStuffs, qryinit, nil, 0, 'StuffCode');
  SQLStuffs := qryStuffs.SQL.Text;
  SelectStoreF.GetStore(myStore, 'انبار', '', MyEntityDisplayType);

  rdgLimit.Enabled := not chkCountingItems.Checked;
  mmoCountingItems.Visible := chkCountingItems.Checked;

end;

procedure TPrintCountingLabelF.ppLabel7GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := 'برگــه شمــارش موجـــودي (' + qryStuffs.FieldByName('c_StoreName')
    .AsString + ')' + #254;
end;

procedure TPrintCountingLabelF.rdgLimitClick(Sender: TObject);
begin
  inherited;
  UpdateList;
end;

procedure TPrintCountingLabelF.Rename_rdgLimit_Items;
var
  YearIdFrom, YearIdTo: Integer;
  YearDiff: string;
begin
  YearIdFrom := GetcFrom(myParams.ParamValues['YearID'], ftInteger);
  YearIdTo := GetcTo(myParams.ParamValues['YearID'], ftInteger);
  YearDiff := IntToStr(YearIdTo - YearIdFrom);
  rdgLimit.Items[3] := 'کالاهای دارای موجودی که طی ' + YearDiff +
    ' سال راکد هستند.';
  rdgLimit.Items[4] := 'کالاهای دارای گردش طی ' + YearDiff + ' سال.';
  rdgLimit.Items[5] := 'کالاهای دارای گردش طی ' + YearDiff +
    ' سال که موجودی دارند.';
  { 3-کالاهای دارای موجودی که طی 5 سال راکد هستند . '
    {4-کالاهای دارای گردش طی 5 سال.
    5-کالاهای دارای گردش طی 5 سال که موجودی دارند }
end;

procedure TPrintCountingLabelF.qryStuffsCalcFields(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('_Serial').AsInteger := abs(DataSet.RecNo);
end;

procedure TPrintCountingLabelF.ppDBText19Print(Sender: TObject);
begin
  inherited;
  (Sender as TppDBText).Visible := chkPrintSerial.Checked;
end;

procedure TPrintCountingLabelF.UpdateList;
begin
  with qryStuffs do
  begin
    Active := False;
    Parameters.ParamByName('GroupIdFrom').Value :=
      GetcFrom(myParams.ParamValues['GROUPID'], ftInteger);
    Parameters.ParamByName('GroupIdTo').Value :=
      GetcTo(myParams.ParamValues['GROUPID'], ftInteger);

    case rdgLimit.ItemIndex of
      0, 1, 2:
        begin
          Parameters.ParamByName('YearIDFrom').Value := opt.DefaultYear;
          Parameters.ParamByName('YearIDTo').Value := APPBank.Year;

        end;
    else
      begin
        Parameters.ParamByName('YearIDFrom').Value :=
          GetcFrom(myParams.ParamValues['YearID'], ftInteger);
        Parameters.ParamByName('YearIDTo').Value :=
          GetcTo(myParams.ParamValues['YearID'], ftInteger);

      end;
    end;

    Parameters.ParamByName('storeid').Value := myStore.code;
    Parameters.ParamByName('codefrom').Value :=
      GetcFrom(myParams.ParamValues['c_StuffCode'], ftLargeint);
    Parameters.ParamByName('codeto').Value :=
      GetcTo(myParams.ParamValues['c_StuffCode'], ftLargeint);

    Parameters.ParamByName('LimitKind').Value := rdgLimit.ItemIndex;
    Parameters.ParamByName('SortKind').Value := rgSort.ItemIndex;

    Active := True;
    lblTopic1.Caption := 'تعداد برگه‌‌ها = ' + IntToStr(RecordCount) + #10 +
      'تعداد صفحات = ' + IntToStr(round((RecordCount / 2)));

    actSave.Enabled := rdgLimit.ItemIndex <> 4;
    actPrint.Enabled := rdgLimit.ItemIndex <> 4;

  end; // with
end;

procedure TPrintCountingLabelF.ppSysVarPageNoGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TPrintCountingLabelF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TPrintCountingLabelF.N1Click(Sender: TObject);
begin
  inherited;
  InitReportFile(ppReport1, (Sender as TMenuItem).Hint, True, False,
    'فرم', False);
end;

end.
