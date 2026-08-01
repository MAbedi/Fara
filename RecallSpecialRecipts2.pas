{ -----------------------------------------------------------------------------
  Unit Name: RecallSpecialRecipts2
  Author:    Mahmood
  ----------------------------------------------------------------------------- }
unit RecallSpecialRecipts2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template5, StdCtrls, CheckLst, DBActns, ActnList, Buttons,
  ExtCtrls, DB, ADODB, ComCtrls, DBClient, Provider,
  ppBands, ppCtrls, ppPrnabl, ppClass, ppDB, ppCache, ppDBPipe, ppComm,
  ppRelatv, ppProd, ppReport, DBCtrls, Menus, dm, ppParameter, ppVar,
  Filter_ADO_Const, ppDesignLayer, System.Actions, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, CedarDbGrid;

type
  THackCedarDbgrid = class(TCedarDbgrid);

  TRecallSpecialRecipts2F = class(TTemplate5F)
    qrySpecialRecall: TADOQuery;
    srcSpecialRecall: TDataSource;
    BitBtn1: TBitBtn;
    StatusBar1: TStatusBar;
    actSearch: TAction;
    actSort: TAction;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    StatusBar2: TStatusBar;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    actPrint: TAction;
    actExcel: TAction;
    actSelectAll: TAction;
    Panel2: TPanel;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    lblSumChecks: TLabel;
    actSlelectInverse: TAction;
    Panel3: TPanel;
    LblStore: TLabel;
    DBTextStoreID: TDBText;
    DBText2: TDBText;
    Label2: TLabel;
    chkPrice: TCheckBox;
    actRptCardex: TAction;
    BitBtn8: TBitBtn;
    actFilter: TAction;
    actShowpreRecipt: TAction;
    BitBtn9: TBitBtn;
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
    BitBtn10: TBitBtn;
    DBGrid1: TCedarDbgrid;
    qryInsertMasterInfo: TADOQuery;
    qrySpecialRecallStuffCode: TLargeintField;
    qrySpecialRecallControlCode: TLargeintField;
    qrySpecialRecallc_StuffName: TStringField;
    qrySpecialRecallStuffAlloy: TStringField;
    qrySpecialRecallStuffDiameter: TFloatField;
    qrySpecialRecallStuffSize: TStringField;
    qrySpecialRecallEntity: TFloatField;
    qrySpecialRecallWeight: TFloatField;
    qrySpecialRecallOutputEntity: TFloatField;
    qrySpecialRecallInvEntity: TFloatField;
    qrySpecialRecallCustName: TStringField;
    qrySpecialRecallReciptCaption: TStringField;
    qrySpecialRecallStuffGrade: TSmallintField;
    qrySpecialRecallUnitName: TStringField;
    qrySpecialRecallPrice: TBCDField;
    qrySpecialRecallReciptNumber: TIntegerField;
    qrySpecialRecallReciptDate: TStringField;
    qrySpecialRecallPersonID1: TIntegerField;
    qrySpecialRecallPersonID1M: TIntegerField;
    qrySpecialRecallCustName1M: TStringField;
    qrySpecialRecallPersonID2M: TIntegerField;
    qrySpecialRecallCustName2M: TStringField;
    qrySpecialRecallPersonID3M: TIntegerField;
    qrySpecialRecallCustName3M: TStringField;
    qrySpecialRecallAidDateM: TStringField;
    qrySpecialRecallStoreID: TSmallintField;
    qrySpecialRecallReciptItemID: TIntegerField;
    qrySpecialRecallc_StoreName: TStringField;
    qrySpecialRecallItemNote: TStringField;
    qrySpecialRecallArzAmount: TFloatField;
    qrySpecialRecallArzRate: TBCDField;
    qrySpecialRecallWaterCo: TFloatField;
    qrySpecialRecallDeficitValue: TBCDField;
    qrySpecialRecallTaxCo: TFloatField;
    qrySpecialRecallTaxValue: TBCDField;
    qrySpecialRecallUnitSellPrice: TFMTBCDField;
    qrySpecialRecallReciptID: TIntegerField;
    qrySpecialRecallServerID: TIntegerField;
    qrySpecialRecallYearID: TIntegerField;
    qrySpecialRecall_Checked: TFMTBCDField;
    qrySpecialRecallAidNumberM: TStringField;
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
    procedure qrySpecialRecallStoreIDChange(Sender: TField);
    procedure FormShow(Sender: TObject);
    procedure actRptCardexExecute(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure ppLblCaptionGetText(Sender: TObject; var Text: String);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
    procedure actPrintExecute(Sender: TObject);
    procedure qrySpecialRecall_checkedChange(Sender: TField);
  private
    cliSum: TADOQuery;
    sumChecked, sumUnchecked: Currency;
    countChecked, countUnchecked, aStoreID: Integer;
    UseStoreIDOnRecall: String;
    RecallTypeOption: Largeint;
    procedure ToggleCheck(CalculateSummary: Boolean = True);
    procedure CalculateSumChecks;
    procedure UpdateList;
    { Private declarations }
  public
    function SelectRecall(formType, ReciptID: Integer; FormOutput: Boolean;
      Store_ID: Integer; qryI, qryRect, qryini: TADOQuery; flag: Byte): Boolean;
    { Public declarations }
  end;

var
  RecallSpecialRecipts2F: TRecallSpecialRecipts2F;

implementation

uses StrUtils, GlobalPro, search1, sort, search2, sort2, RptCardex, filter_ADO,
  FilterClass_ADO, ShowpreReciptItemIDs, Math, MaskUtils, FaraConsts,
  ReciptsFunctions;

{$R *.dfm}

function TRecallSpecialRecipts2F.SelectRecall(formType, ReciptID: Integer;
  FormOutput: Boolean; Store_ID: Integer; qryI, qryRect, qryini: TADOQuery;
  flag: Byte): Boolean;
var
  In_Out, Field_Name: String;
  UnitPriceReadOnly: Boolean;
  i: Integer;
begin
  RecallSpecialRecipts2F := TRecallSpecialRecipts2F.Create(Application);
  try
    with RecallSpecialRecipts2F do
    begin
      with qrySpecialRecall Do
      begin
        Active := False;
        case flag of
          1:
            begin
              SQL.Text := 'SELECT *, Fitful.FitfulID AS _Checked  ';
              SQL.Add('FROM Recal_Entity');
              SQL.Add('CROSS JOIN Fitful ');
              SQL.Add('WHERE (ReciptType in( ' +
                qryini.FieldByName('RecallReciptTypes').AsString + ' ) )');
              SQL.Add('AND (StuffCode BETWEEN :StuffCodeFrom AND :StuffCodeTo)');
              SQL.Add('AND (StoreID BETWEEN :StoreIDFrom AND :StoreIDTo)');
              SQL.Add('AND (ReciptNumber BETWEEN :ReciptNumberFrom AND :ReciptNumberTo)');
              SQL.Add('AND (PersonID1 BETWEEN :PersonIDFrom AND :PersonIDTo)');
              SQL.Add('AND ((st13 BETWEEN :st13From AND :st13To)OR(st13 IS NULL))');
              SQL.Add(IfThen(qryini.FieldByName('UseStoreIDOnRecall')
                .AsInteger = 1, ' and  (StoreID = ' + IntToStr(Store_ID) +
                ') ', ''));

              SQL.Add('AND(YearID BETWEEN :YearIDFrom AND :YearIDTo)');
              Caption := Caption + ' مقدار نهائی';
            end;
          2:
            begin
              SQL.Text := 'SELECT *, Fitful.FitfulID AS _Checked  ';
              SQL.Add('FROM Recal_Request ');
              SQL.Add('CROSS JOIN Fitful ');
              SQL.Add('WHERE (ReciptType in( ' +
                qryini.FieldByName('RecallReciptTypes').AsString + ' ) )');
              SQL.Add('AND (StuffCode BETWEEN :StuffCodeFrom AND :StuffCodeTo)');
              SQL.Add('AND (StoreID BETWEEN :StoreIDFrom AND :StoreIDTo)');
              SQL.Add('AND (ReciptNumber BETWEEN :ReciptNumberFrom AND :ReciptNumberTo)');
              SQL.Add('AND (PersonID1 BETWEEN :PersonIDFrom AND :PersonIDTo)');
              SQL.Add('AND ((st13 BETWEEN :st13From AND :st13To)OR(st13 IS NULL))');
              SQL.Add(IfThen(qryini.FieldByName('UseStoreIDOnRecall')
                .AsInteger = 1, ' and  (StoreID = ' + IntToStr(Store_ID) +
                ') ', ''));
              SQL.Add('AND(YearID BETWEEN :YearIDFrom AND :YearIDTo)');
              Caption := Caption + ' مقدار درخواست';
            end;
        end;

        SetPersonCaption(qryini.FieldByName('RecallReciptTypes').AsString,
          qrySpecialRecall);

        myParams.Clear;
        aStoreID := Store_ID;
        actFilter.Execute;
        if myParams.FindParam('Stuffcode') = nil then
          Close;
        Entity_Weight(DBGrid1);
        // Active:=True;
      end; // with
      if ShowModal = mrOk then
      begin
        with qrySpecialRecall do
        begin
          Filter := '_checked=1';
          Filtered := True;
          DisableControls;
          qryI.DisableControls;
          First;
          In_Out := IfThen(FormOutput, 'Output', 'Input');
          // ReciptsF.qryItemsUnitSellPrice.OnChange:=nil;
          // ReciptsF.qryItemsTotalInputPrice.OnChange:=nil;
          // ReciptsF.qryItemsTotalOutputPrice.OnChange:=nil;
          UnitPriceReadOnly := qryini.FieldByName('UnitPriceReadOnly')
            .AsInteger = 0;
          RecallTypeOption := qryini.FieldByName('RecallTypeOption').AsLargeInt;

          if ((RecallTypeOption and Integer(CHkInsertMasterInfo)) <> 0) then
            with qryInsertMasterInfo do
            begin
              Active := False;
              Parameters.ParamByName('ReciptID').Value :=
                qrySpecialRecallReciptID.AsInteger;
              Parameters.ParamByName('YearID').Value :=
                qrySpecialRecallYearID.AsInteger;
              Parameters.ParamByName('ServerID').Value :=
                qrySpecialRecallServerID.AsInteger;
              Active := True;
              for i := 0 to FieldCount - 1 do
              begin
                Field_Name := Fields[i].FieldName;
                if (qryRect.FindField(Field_Name) <> nil) then
                  qryRect.FieldByName(Field_Name).AsString :=
                    FieldByName(Field_Name).AsString;
              end;
            end;
          while not eof do
          begin
            qryI.Insert;
            qryI.FieldByName('StuffCode').AsLargeInt := FieldByName('StuffCode')
              .AsLargeInt;
            if opt.EntityDisplay then
              qryI.FieldByName(In_Out + 'Entity').AsFloat :=
                FieldByName('Entity').AsFloat;

            if not((RecallTypeOption and Integer(CHKNoWeight)) <> 0) then
            begin
              if opt.WeightDisplay then
                qryI.FieldByName(In_Out + 'Weight').AsFloat :=
                  FieldByName('Weight').AsFloat;

            end;

            qryI.FieldByName('StuffAlloy').AsString :=
              FieldByName('StuffAlloy').AsString;
            qryI.FieldByName('StuffGrade').AsString :=
              FieldByName('StuffGrade').AsString;
            qryI.FieldByName('StuffSize').AsString :=
              FieldByName('StuffSize').AsString;
            qryI.FieldByName('StuffDiameter').AsFloat :=
              FieldByName('StuffDiameter').AsFloat;
            qryI.FieldByName('ControlCode').AsLargeInt :=
              FieldByName('ControlCode').AsLargeInt;

            qryI.FieldByName('UnitSellPrice').AsCurrency :=
              FieldByName('UnitSellPrice').AsCurrency;
            if not UnitPriceReadOnly then
            begin
              If not chkPrice.Checked Then
                qryI.FieldByName('Total' + In_Out + 'Price').AsCurrency := 0
              else
                qryI.FieldByName('Total' + In_Out + 'Price').AsCurrency :=
                  IfThen(FieldByName('Price').AsCurrency < 0, 0,
                  FieldByName('Price').AsCurrency);
            end;

            // qryI.FieldByName('UnitSellPrice').Value:=1;
            qryI.FieldByName('PersonID1').AsInteger := FieldByName('PersonID1')
              .AsInteger;
            qryI.FieldByName('preReciptItemID').AsInteger :=
              FieldByName('ReciptItemID').AsInteger;
            qryI.FieldByName('ItemNote').AsString :=
              FieldByName('ItemNote').AsString;
            if qryI.FindField('ArzRate') <> nil then
            begin

              qryI.FieldByName('ArzRate').AsCurrency := FieldByName('ArzRate')
                .AsCurrency;
              qryI.FieldByName('ArzAmount').AsCurrency :=
                FieldByName('ArzAmount').AsCurrency;
            end;

            if qryI.FindField('WaterCo') <> nil then
            begin
              qryI.FieldByName('WaterCo').AsCurrency := FieldByName('WaterCo')
                .AsCurrency;
              qryI.FieldByName('DeficitValue').AsCurrency :=
                FieldByName('DeficitValue').AsCurrency;
            end;

            if qryI.FindField('TaxCo') <> nil then
            begin
              qryI.FieldByName('TaxCo').AsCurrency := FieldByName('TaxCo')
                .AsCurrency;
              qryI.FieldByName('TaxValue').AsCurrency := FieldByName('TaxValue')
                .AsCurrency;
            end;

            if (qryini.FieldByName('AidInfoActive').AsInteger in [2, 3]) then
            begin
              case qryini.FieldByName('InsertAidOnRecall').AsInteger of
                1:
                  begin
                    qryI.FieldByName('AidDate').AsString :=
                      FieldByName('ReciptDate').AsString;
                    qryI.FieldByName('AidNumber').AsString :=
                      FieldByName('ReciptNumber').AsString;
                  end;
                2:
                  begin
                    qryI.FieldByName('AidDate').AsString :=
                      FieldByName('AidDate').AsString;
                    qryI.FieldByName('AidNumber').AsString :=
                      FieldByName('AidNumber').AsString;
                  end;
                3:
                  begin
                    qryI.FieldByName('AidDate').AsString :=
                      FieldByName('AidDateM').AsString;
                    qryI.FieldByName('AidNumber').AsString :=
                      FieldByName('AidNumberM').AsString;
                  end;
              end;
            end;
                qryI.FieldByName('FirstUser').AsString := User.Name;

            qryI.post;
            Next;
            Application.ProcessMessages;
          end; // while
          // qryITotalInputPrice.OnChange:=qryIT1otalInputPriceChange;
          // qryITotalOutputPrice.OnChange:=qryITotalOutputPriceChange;
          // qryIUnitSellPrice.OnChange:=qryIUnitSellPriceChange;
        end; // cliSpecialRecall
      end; // if
    end; // with
    Result := True;
  finally
    qryI.EnableControls;
    RecallSpecialRecipts2F.Free;
  end; // try
end;

procedure TRecallSpecialRecipts2F.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_SPACE then
  begin
    Key := 0;
    ToggleCheck;
  end; // if
end;

procedure TRecallSpecialRecipts2F.ToggleCheck(CalculateSummary: Boolean = True);
begin
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

procedure TRecallSpecialRecipts2F.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  ToggleCheck;
end;

procedure TRecallSpecialRecipts2F.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  QuickSearch(Key, qrySpecialRecall.FieldByName(opt.SearchCode));
end;

procedure TRecallSpecialRecipts2F.actSearchExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qrySpecialRecall);
end;

procedure TRecallSpecialRecipts2F.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qrySpecialRecall);
end;

procedure TRecallSpecialRecipts2F.FormCreate(Sender: TObject);
begin
  inherited;
  chkPrice.Checked :=
    StrToBool(ReadConfig(APPID, 'RecallSpecialReciptsFchkPrice', 'True'));
  cliSum := TADOQuery.Create(Self);
end;

procedure TRecallSpecialRecipts2F.FormDestroy(Sender: TObject);
begin
  inherited;
  cliSum.Free;
  SaveConfig(APPID, 'RecallSpecialReciptsFchkPrice',
    BoolToStr(chkPrice.Checked));
end;

procedure TRecallSpecialRecipts2F.CalculateSumChecks;
begin
  with cliSum do
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
        sumChecked := sumChecked + FieldByName('Price').AsCurrency;
      end
      else
      begin
        Inc(countUnchecked);
        sumUnchecked := sumUnchecked + FieldByName('Price').AsCurrency;
      end; // else
      Next;
    end; // while
    Close;
  end; // with
  StatusBar1.Panels[1].Text := 'تعداد فرم‌هاي انتخاب شده = ' +
    IntToStr(countChecked);
  StatusBar1.Panels[0].Text := 'جمع مبلغ فرم‌هاي انتخاب شده = ' +
    CurrToStrF(sumChecked, ffCurrency, 0);
  StatusBar2.Panels[1].Text := 'تعداد فرم‌هاي باقيمانده     = ' +
    IntToStr(countUnchecked);
  StatusBar2.Panels[0].Text := 'جمع مبلغ فرم‌هاي باقيمانده     = ' +
    CurrToStrF(sumUnchecked, ffCurrency, 0);
  lblSumChecks.Caption := num2alphabet(round(sumChecked));
end;

procedure TRecallSpecialRecipts2F.actExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TRecallSpecialRecipts2F.actSelectAllExecute(Sender: TObject);
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

procedure TRecallSpecialRecipts2F.actSlelectInverseExecute(Sender: TObject);
begin
  inherited;
  with qrySpecialRecall do
  begin
    DisableControls;
    First;
    while not eof do
    begin
      Edit;
      FieldByName('_checked').AsInteger :=
        IfThen(FieldByName('_checked').AsInteger = 1, 0, 1);
      post;
      Next;
    end; // while
    First;
    EnableControls;
  end; // with
  CalculateSumChecks;
end;

procedure TRecallSpecialRecipts2F.qrySpecialRecallStoreIDChange(Sender: TField);
begin
  inherited;
  PriceOnStoreType(qrySpecialRecall.FieldByName('StoreID').AsInteger, DBGrid1,
    qrySpecialRecall)
end;

procedure TRecallSpecialRecipts2F.qrySpecialRecall_checkedChange
  (Sender: TField);
begin
  inherited;
  CalculateSumChecks
end;

procedure TRecallSpecialRecipts2F.FormShow(Sender: TObject);
begin
  inherited;
  Entity_Weight(DBGrid1);
  THackCedarDbgrid(DBGrid1).DoLoad;
end;

procedure TRecallSpecialRecipts2F.actPrintExecute(Sender: TObject);
begin
  inherited;
  InitReportFile(ppReport1, Self.Name);
end;

procedure TRecallSpecialRecipts2F.actRptCardexExecute(Sender: TObject);
begin
  inherited;
  RptCardexF.Enter(qrySpecialRecall.FieldByName('StoreID').AsInteger,
    qrySpecialRecall.FieldByName('StuffCode').AsLargeInt, 1);
  // MyParams.CreateParam(ftInteger,'store',ptInput).AsString:=cliSpecialRecall.Fieldbyname('StoreID').AsString;
  // MyParams.CreateParam(ftDate,'Date',ptInput).AsString:=cliSpecialRecall.Fieldbyname('ReciptDate').AsString;
  // MyParams.CreateParam(ftInteger,'StuffCode',ptInput).AsString:=
  // cliSpecialRecall.FieldByName('StuffCode').AsLargeInt+';'+
  // cliSpecialRecall.FieldByName('StuffCode').AsLargeInt;
  // CreateMDIForm2(TRptCardexF,RptCardexF,Self,100);
  // RptCardexF.qryStuffs.Locate('StuffCode',cliSpecialRecall.FieldByName('StuffCode').Value,[])

end;

procedure TRecallSpecialRecipts2F.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItemFilter(GetFilter, TFilterStuffCode);
      // AddItem(DMf.adcBSell, 'StuffCode', 'نام كالا', 'كد كالا', ftLargeint,
      // dvMinMax, '', '', ciLookup,
      // 'SELECT c_StuffCode, c_StuffName FROM  StuffCoding ',
      // 'Select Min(StuffCode),max(StuffCode) from ReciptItems');

      if UseStoreIDOnRecall = EmptyStr then
        AddItem(DMf.adcBSell, 'Storid', 'نام انبار ', 'كد انبار', ftInteger,
          dvMinMax, '', '', ciLookup,
          'SELECT n_StoreID, c_StoreName FROM Stores ',
          'SELECT ' + IntToStr(aStoreID) + ',' + IntToStr(IfThen(aStoreID = 0,
          999, aStoreID)) + ' from Recipts');
      AddItem(DMf.adcBSell, 'ReciptNumber', '', 'شماره', ftInteger, dvMinMax,
        '', '', ciSimple, '',
        'Select Min(ReciptNumber),max(ReciptNumber) from Recipts');
      AddItem(DMf.adcBSell, 'PersonID', ' نام مشتري ', 'كد مشتري', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT CustID,CustName FROM Customers WHERE (CustomerGrpID IN (SELECT CustomerGrpID FROM dbo.CustomersGroup WHERE (GroupType = 0))) ',
        'SELECT 0,Max(CustID) From Customers WHERE (CustomerGrpID IN (SELECT CustomerGrpID  FROM   dbo.CustomersGroup WHERE (GroupType = 0)))');
      AddItem(DMf.adcBSell, 'st13', ' نام شركت پخش ', 'كد شركت پخش', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT Code, Name FROM LookUps WHERE Kind = 313',
        'Select Min(st13),max(st13) from StuffCoding');

//Mokhtari
      AddItem(DMf.adcBSell, 'YearID', '', 'سال', ftInteger, dvMinMax,
        '', '', ciSimple, '',
         'Select  YearID, YearID from  Util.MaliYear where yearid = ' +IntToStr(APPBank.Year)  );
//Mokhtari

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

procedure TRecallSpecialRecipts2F.UpdateList;
begin
  with qrySpecialRecall do
  begin
    Active := False;
    if UseStoreIDOnRecall = EmptyStr then
    begin
      Parameters.ParamByName('StoreIDFrom').Value :=
        GetcFrom(myParams.ParamValues['Storid'], ftInteger);
      Parameters.ParamByName('StoreIDTo').Value :=
        GetcTo(myParams.ParamValues['Storid'], ftInteger);
    end
    else
      SQL.Text := StringReplace(SQL.Text,
        'AND(StoreID BETWEEN :StoreIDFrom AND :StoreIDTo)', '', [rfReplaceAll]);
    Parameters.ParamByName('StuffCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['StuffCode'], ftLargeint);
    Parameters.ParamByName('StuffCodeTo').Value :=
      GetcTo(myParams.ParamValues['StuffCode'], ftLargeint);
    Parameters.ParamByName('ReciptNumberFrom').Value :=
      GetcFrom(myParams.ParamValues['ReciptNumber'], ftInteger);
    Parameters.ParamByName('ReciptNumberto').Value :=
      GetcTo(myParams.ParamValues['ReciptNumber'], ftInteger);
    Parameters.ParamByName('PersonIDFrom').Value :=
      GetcFrom(myParams.ParamValues['PersonID'], ftInteger);
    Parameters.ParamByName('PersonIDTo').Value :=
      GetcTo(myParams.ParamValues['PersonID'], ftInteger);
    Parameters.ParamByName('st13From').Value :=
      GetcFrom(myParams.ParamValues['st13'], ftInteger);
    Parameters.ParamByName('st13To').Value :=
      GetcTo(myParams.ParamValues['st13'], ftInteger);

    Parameters.ParamByName('YearIDFrom').Value :=
    GetcFrom(myParams.ParamValues['YearID'], ftInteger);;
    Parameters.ParamByName('YearIDTo').Value := APPBank.Year;

    Active := True;
  end; // with
end;

procedure TRecallSpecialRecipts2F.Action1Execute(Sender: TObject);
begin
  inherited;
  ShowpreReciptItemIDsF.Enter(qrySpecialRecall.FieldByName('ReciptItemID')
    .AsInteger)
end;

procedure TRecallSpecialRecipts2F.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  Text := GetPrintDate;
end;

procedure TRecallSpecialRecipts2F.ppSysVarPageNoGetText(Sender: TObject;
  var Text: String);
begin
  Text := GetPageNumberString(Text)
end;

procedure TRecallSpecialRecipts2F.ppLblCaptionGetText(Sender: TObject;
  var Text: String);
begin
  Text := Caption;
end;

procedure TRecallSpecialRecipts2F.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  Text := APPBank.CompanyName;
end;

end.
