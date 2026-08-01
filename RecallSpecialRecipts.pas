{ --------------------------------------------------------------------------
  Unit Name: RecallSpecialRecipts
  Author:    Mahmood
  ----------------------------------------------------------------------------- }
unit RecallSpecialRecipts;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template5, StdCtrls, CheckLst, DBActns, ActnList, Buttons,
  ExtCtrls, DB, ADODB, ComCtrls, DBClient, Provider,
  ppBands, ppCtrls, ppPrnabl, ppClass, ppDB, ppCache, ppDBPipe, ppComm,
  ppRelatv, ppProd, ppReport, DBCtrls, Menus, DM, ppParameter, ppVar,
  ppDesignLayer, System.Actions, System.DateUtils,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid, InitPop;

type
  TRecallSpecialReciptsF = class(TTemplate5F)
    qrySpecialRecall: TADOQuery;
    srcSpecialRecall: TDataSource;
    btnOk: TBitBtn;
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
    actRptCardex: TAction;
    BitBtn8: TBitBtn;
    actFilter: TAction;
    actShowpreRecipt: TAction;
    BitBtn9: TBitBtn;
    ActPerFactor: TAction;
    BitBtn10: TBitBtn;
    qrySpecialRecallStuffCode: TLargeintField;
    qrySpecialRecallControlCode: TLargeintField;
    qrySpecialRecallStuffDiameter: TFloatField;
    qrySpecialRecallStuffSize: TStringField;
    qrySpecialRecallStoreID: TSmallintField;
    qrySpecialRecallReciptItemID: TIntegerField;
    qrySpecialRecallc_StoreName: TStringField;
    qrySpecialRecallc_StuffName: TStringField;
    qrySpecialRecallUnitName: TStringField;
    qrySpecialRecallStuffAlloy: TStringField;
    qrySpecialRecallStuffGrade: TSmallintField;
    qrySpecialRecallWeight: TFloatField;
    qrySpecialRecallUnitSellPrice: TFMTBCDField;
    qrySpecialRecallPrice: TBCDField;
    qrySpecialRecallPersonID1: TIntegerField;
    qrySpecialRecallCustName: TStringField;
    qrySpecialRecallReciptNumber: TIntegerField;
    qrySpecialRecallReciptDate: TStringField;
    qrySpecialRecallReciptCaption: TStringField;
    qrySpecialRecallItemNote: TStringField;
    qrySpecialRecallAuxiliary: TFloatField;
    qrySpecialRecallCountNo: TIntegerField;
    qrySpecialRecallWeightOnEntity: TFloatField;
    qrySpecialRecallPortage: TBCDField;
    qrySpecialRecallArticle: TBCDField;
    qrySpecialRecallWage: TBCDField;
    qrySpecialRecallScoria: TBCDField;
    qrySpecialRecallUseUnitID: TIntegerField;
    qrySpecialRecallUseUnitName: TStringField;
    qrySpecialRecallAidNumber: TStringField;
    qrySpecialRecallAidDate: TStringField;
    qrySpecialRecallSecondTypeItem: TIntegerField;
    qrySpecialRecallYearID: TIntegerField;
    qrySpecialRecall_Checked: TFMTBCDField;
    qrySpecialRecall__EntityEdit: TFMTBCDField;
    qrySpecialRecallEntity: TFloatField;
    qry4type11: TADOQuery;
    qrySpecialRecallWaterCo: TFloatField;
    qrySpecialRecallDeficitValue: TBCDField;
    qrySpecialRecallTaxCo: TFloatField;
    qrySpecialRecallTaxValue: TBCDField;
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
    BitBtn11: TBitBtn;
    qrySpecialRecallSecondTypeName: TStringField;
    qrySpecialRecallUnitSellPricePost: TFloatField;
    qrySpecialRecallUnitSellPriceCHK: TIntegerField;
    qryMaster: TADOQuery;
    srcMaster: TDataSource;
    qryMasterStoreID: TSmallintField;
    qryMasterYearID: TIntegerField;
    qryMasterServerID: TIntegerField;
    qryMasterReciptID: TIntegerField;
    qryMasterReciptNumber: TIntegerField;
    qryMasterReciptDate: TStringField;
    qryMasterReciptCaption: TStringField;
    qryMasterPersonID1: TIntegerField;
    qryMasterCustName2: TStringField;
    qryMasterc_StoreName: TStringField;
    spl1: TSplitter;
    pnlMaster: TPanel;
    pnlMaster1: TPanel;
    btnSort: TBitBtn;
    btnSearch: TBitBtn;
    qrySpecialRecallMachineNo: TStringField;
    qrySpecialRecallMachineName: TStringField;
    qryMasterPersonID2: TIntegerField;
    qryMasterMasirID: TIntegerField;
    qryMasterPersonID3: TIntegerField;
    qryMasterReciptNote: TStringField;
    qrySpecialRecallItemDate: TStringField;
    rgPrice: TRadioGroup;
    qrySpecialRecallpadidAvarandehName: TStringField;
    qrySpecialRecallc_StuffTecInfo: TStringField;
    qrySpecialRecallProductModel: TIntegerField;
    qrySpecialRecallProductCode: TLargeintField;
    qryMasterCustName3: TStringField;
    qryMasterCustName: TStringField;
    qrySpecialRecallDeficitValue2: TBCDField;
    qrySpecialRecallDeficitValue3: TBCDField;
    qrySpecialRecallArzAmount: TFloatField;
    qrySpecialRecallArzRate: TBCDField;
    qrySpecialRecallMAidNumber: TStringField;
    qrySpecialRecallMAidDate: TStringField;
    qryInsertMasterInfo: TADOQuery;
    qrySpecialRecallServerID: TIntegerField;
    qrySpecialRecallReciptID: TIntegerField;
    qrySpecialRecallPersonID2: TIntegerField;
    qrySpecialRecallCustName2: TStringField;
    qrySpecialRecallPersonID3: TIntegerField;
    qrySpecialRecallCustName3: TStringField;
    qrySpecialRecallPersonID1M: TIntegerField;
    qrySpecialRecallCustName1M: TStringField;
    dbgrdMaster: TCedarDbgrid;
    DBGrid1: TCedarDbgrid;
    qrySpecialRecallgateketab: TStringField;
    qrySpecialRecallmoalef: TStringField;
    qrySpecialRecallmotarjem: TStringField;
    qrySpecialRecallnevisandeh: TStringField;
    qrySpecialRecallnoejeld: TStringField;
    qrySpecialRecallPakhshCompany: TStringField;
    qrySpecialRecallTabaghe: TStringField;
    qrySpecialRecallMozo: TStringField;
    qrySpecialRecallSpecialCode: TStringField;
    actExcelComparisonRecallF: TAction;
    btnExcelComparisonRecallF: TBitBtn;
    qryMasterPersonID4: TIntegerField;
    qryMasterCustName4: TStringField;
    qrySpecialRecallPersonID4M: TIntegerField;
    qrySpecialRecallCustName4: TStringField;
    qrySpecialRecallUseOtherID_Item: TIntegerField;
    qrySpecialRecallUseUnitIDM: TIntegerField;
    qrySpecialRecallUseUnitNameM: TStringField;
    qrySpecialRecallDeficitValue4: TBCDField;
    qrySpecialRecallPO: TStringField;
    qrySpecialRecallDeficitValueCo2: TFMTBCDField;
    qrySpecialRecallDeficitValueCo4: TFMTBCDField;
    qrySpecialRecallDeficitValueCo3: TFMTBCDField;
    qrySpecialRecallProductModelName: TStringField;
    qrySpecialRecallacc_CTopicCode3: TStringField;
    qryMasterDefaultDate: TStringField;
    qryMasterDefaultDuration: TSmallintField;
    lblCountNo: TLabel;
    lblUnitSellPriceCHK: TLabel;
    qrySpecialRecallCommissionCurrency: TFMTBCDField;
    qrySpecialRecallCommissionPrice: TFMTBCDField;
    qrySpecialRecallCommission: TFMTBCDField;
    qrySpecialRecallStandardConsumptionCo: TFMTBCDField;
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure actSearchExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actExcelExecute(Sender: TObject);
    procedure actSelectAllExecute(Sender: TObject);
    procedure actSlelectInverseExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actRptCardexExecute(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure actShowpreReciptExecute(Sender: TObject);
    procedure ActPerFactorExecute(Sender: TObject);
    procedure qrySpecialRecallStuffSizeGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure qrySpecialRecallStoreIDChange(Sender: TField);
    procedure qrySpecialRecall__EntityEditChange(Sender: TField);
    procedure qrySpecialRecallBeforePost(DataSet: TDataSet);
    procedure ppLblCaptionGetText(Sender: TObject; var Text: String);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
    procedure actPrintExecute(Sender: TObject);
    procedure qrySpecialRecallAfterScroll(DataSet: TDataSet);
    procedure qryMasterAfterScroll(DataSet: TDataSet);
    procedure dbgrdMasterKeyPress(Sender: TObject; var Key: Char);
    procedure btnSortClick(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure qrySpecialRecallAfterOpen(DataSet: TDataSet);
    procedure actManagGridColumnsExecute(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure actExcelComparisonRecallFExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    qrySum: TADOQuery;
    sumChecked, sumUnchecked: Currency;
    countChecked, countUnchecked, StoreID: Integer;
    MultiChecked, MasterActive, TotalIn_OutPriceActive, NoteActive,
      NegativeInventory, AidInfoActive: Boolean;
    UseStoreID_MinMaxSQL, qrySpecialRecallSQL, qryMasterSQL, In_Out: String;
    RecallTypeOption, UsePerson1OnRecall: Largeint;
    procedure ToggleCheck(CalculateSummary: Boolean = True);
    procedure CalculateSumChecks;
    procedure UpdateList(qry: TADOQuery);
    procedure FormSQL(qry: TADOQuery);
    procedure MakeSQLqry;
    procedure intiForm;
    procedure MakeSQL;
    procedure InitForm;
  protected

    { Private declarations }
  public
    qryinit, qryIt, qryReci: TDataSet;
    function SelectRecall(qryI, qryini: TADOQuery; qryRec: TDataSet;
      myStore_: TStore; Multi_Checked: Boolean = True; CustID: Integer = 0;
      RecallOneRow: Boolean = False): Boolean;
    { Public declarations }
  end;

var
  RecallSpecialReciptsF: TRecallSpecialReciptsF;

implementation

uses StrUtils, GlobalPro, search1, sort, search2, sort2, RptCardex, filter_ADO,
  FilterClass_ADO, ShowpreReciptItemIDs, Math, RptReports, ReciptsFunctions,
  FaraConsts, MMESSAGE, FaraDesktopAlert, shamsiDate, FormFunctions,
  Filter_ADO_Const, ExcelComparisonRecall;

{$R *.dfm}

procedure TRecallSpecialReciptsF.MakeSQLqry;
begin
  pnlMaster.Visible := MasterActive;
  qrySpecialRecall.SQL.Text := qrySpecialRecallSQL;
  qryMaster.SQL.Text := qryMasterSQL;
  FormSQL(qrySpecialRecall);
  FormSQL(qryMaster);
  myParams.Clear;
  actFilter.Execute;
end;

function TRecallSpecialReciptsF.SelectRecall(qryI, qryini: TADOQuery;
  qryRec: TDataSet; myStore_: TStore; Multi_Checked: Boolean = True;
  CustID: Integer = 0; RecallOneRow: Boolean = False): Boolean;
var
  Field_Name, S_Q_L: String;
  b: Boolean;
  i: Integer;
  In_OutEntity, UnitSellPrice: Real48;
begin
  RecallSpecialReciptsF := TRecallSpecialReciptsF.Create(Application);
  try
    with RecallSpecialReciptsF do
    begin
      qryinit := qryini;
      RecallTypeOption := qryinit.FieldByName('RecallTypeOption').AsLargeInt;
      UsePerson1OnRecall := qryinit.FieldByName('UsePerson1OnRecall')
        .AsLargeInt;

      InitForm;

      actExcelComparisonRecallF.Visible :=
        ((RecallTypeOption and Integer(chkExcelComparisonRecall)) <> 0);

      AidInfoActive := qryini.FieldByName('AidInfoActive').AsInteger > 0;

      qrySpecialRecallMAidNumber.DisplayLabel := 'ش.' +
        qryini.FieldByName('AidInfoCaptionNo').AsString;
      qrySpecialRecallMAidDate.DisplayLabel := 'ت.' +
        qryini.FieldByName('AidInfoCaption').AsString;
      qrySpecialRecallAidNumber.DisplayLabel := 'ش.' +
        qryini.FieldByName('AidInfoCaptionNo').AsString;
      qrySpecialRecallAidDate.DisplayLabel := 'ت.' +
        qryini.FieldByName('AidInfoCaption').AsString;;

      MasterActive := (RecallTypeOption and Integer(CHk00Master)) <> 0;
      TotalIn_OutPriceActive :=
        (RecallTypeOption and Integer(chkTotalIn_OutPrice)) <> 0;
      NoteActive := (RecallTypeOption and Integer(chkNote)) <> 0;

      NegativeInventory :=
        (RecallTypeOption and Integer(CHKNegativeInventory)) <> 0;

      if qryinit.FieldByName('RecallType').AsInteger in [21, 22, 23] then
      begin
        with qrySpecialRecall do
        begin
          SQL.Text := EmptyStr;
          SQL.Add('FROM dbo.RecallSpecial_2(:ReciptType , :AidDate, :StuffCodeFrom,');
          SQL.Add(' :StuffCodeTo, :StoreIDFrom, :StoreIDTo,');
          SQL.Add(':ControlcodeFrom, :ControlcodeTo, :DiameterFrom, :DiameterTo, :RcpNumberFrom,');
          SQL.Add(':RcpNumberTo, :ItemPersonIDFrom, :ItemPersonIDTo, :DateFrom, :DateTo,');
          SQL.Add(' :YearIDFrom, :YearIDTo,');
          SQL.Add(':SecondTypeItemFrom, :SecondTypeItemTo , :SellsEmporiumFrom ,  :SellsEmporiumTo) AS Recipts');
          S_Q_L := SQL.Text;
          SQL.Text := 'SELECT * ';
          SQL.Add(S_Q_L);

        end;
        with qryMaster do
        begin
          SQL.Text := 'SELECT distinct Recipts.YearID,Recipts.ServerID';
          SQL.Add(',Recipts.ReciptID,Recipts.ReciptNumber, Recipts.ReciptDate,');
          SQL.Add('Recipts.ReciptCaption, Recipts.PersonID1, Customers.CustName, Recipts.StoreID, Recipts.c_StoreName');
          SQL.Add(', Recipts.PersonID2, Recipts.MasirID,Recipts.ReciptNote, Customers2.CustName AS CustName2');
          SQL.Add(',Recipts.PersonID3 ,Customers3.CustName AS CustName3');
          SQL.Add(',Recipts.PersonID4 ,Customers4.CustName AS CustName4');
          SQL.Add(',Recipts.DefaultDate ,Recipts.DefaultDuration');

          SQL.Add(S_Q_L);
          SQL.Add('LEFT OUTER JOIN');
          SQL.Add('Customers ON Recipts.PersonID1 = Customers.CustID LEFT OUTER JOIN');
          SQL.Add('Customers AS Customers2 ON Recipts.PersonID2 = Customers2.CustID LEFT OUTER JOIN');
          SQL.Add('Customers AS Customers3 ON Recipts.PersonID3 = Customers3.CustID LEFT OUTER JOIN');
          SQL.Add('Customers AS Customers4 ON Recipts.PersonID4 = Customers4.CustID');

        end;

      end;

      qrySpecialRecallSQL := qrySpecialRecall.SQL.Text;
      qryMasterSQL := qryMaster.SQL.Text;
      StoreID := myStore_.code;
      In_Out := IfThen(qryinit.FieldByName('EffectType').AsInteger
        in [3, 4, 5, 7, 8], 'Output', 'Input');

      intiForm;
      qryIt := qryI;
      qryReci := qryRec;

      SetPersonCaption(qryinit.FieldByName('RecallReciptTypes').AsString,
        qryMaster);

      SetPersonCaption(qryinit.FieldByName('RecallReciptTypes').AsString,
        qrySpecialRecall);

      qrySpecialRecallPersonID1.DisplayLabel := 'كد ' +
        qryinit.FieldByName('Person2DetailCaption').AsString;;
      qrySpecialRecallCustName.DisplayLabel := 'نام ' +
        qryinit.FieldByName('Person2DetailCaption').AsString;

      MultiChecked := Multi_Checked;
      Entity_Weight(DBGrid1);

      UseStoreID_MinMaxSQL := 'Select ' + IntToStr(StoreID) + ',' +
        IntToStr(StoreID); // + ' From Recipts';

      MakeSQLqry;

      if myParams.FindParam('Stuffcode') = nil then
        Close;
      if ShowModal = mrOk then
        try
          if qryI.FindField('_PersonName1') <> nil then
            qryI.FieldByName('_PersonName1').Required := False;
          if qryI.LockType <> ltReadOnly then
            with qrySpecialRecall do
            begin
              DBGrid1.SearchPanel.SearchingText := EmptyStr;
              Filter := '_checked = 1';
              Filtered := True;
              DisableControls;
              First;

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
                    if (qryReci.FindField(Field_Name) <> nil) and
                      not IgonreReciptsFileds(Field_Name) then
                      qryReci.FieldByName(Field_Name).AsString :=
                        FieldByName(Field_Name).AsString;
                  end;
                  // qryRect.FieldByName('_PersonName1').RefreshLookupList;

                  if ((RecallTypeOption and Integer(chkDefaultDateFillIn)) <> 0)
                  then
                  begin
                    qryReci.FieldByName('DefaultDuration').AsString :=
                      FieldByName('DefaultDuration').AsString;
                    qryReci.FieldByName('DefaultDate').AsString :=
                      FieldByName('DefaultDate').AsString;
                  end;

                end;

              if MasterActive and (qryMaster.Active) then
              begin
                for i := 0 to qryMaster.FieldCount - 1 do
                begin
                  Field_Name := qryMaster.Fields[i].FieldName;
                  if (qryReci.FindField(Field_Name) <> nil) and
                    not IgonreReciptsFileds(Field_Name) and
                    ((qryReci.FieldByName(Field_Name).AsString = EmptyStr) or
                    (qryReci.FieldByName(Field_Name).AsString = '0')) then
                    qryReci.FieldByName(Field_Name).AsString :=
                      qryMaster.FieldByName(Field_Name).AsString;
                end;
                qryReci.FieldByName('_PersonName1').RefreshLookupList;
              end;

              ReciptsRecallEditKind(qryI, qryRec, qryini, RE_Recall);

              // ----------------- ADD New -------------------
              if not actExcelComparisonRecallF.Visible then
                if (qryini.FieldByName('AidInfoActive').AsInteger in [1, 3, 4])
                then
                begin
                  case qryini.FieldByName('InsertAidOnRecall').AsInteger of
                    1:
                      begin
                        qryReci.FieldByName('AidDate').AsString :=
                          FieldByName('ReciptDate').AsString;
                        qryReci.FieldByName('AidNumber').AsString :=
                          FieldByName('ReciptNumber').AsString;
                      end;
                    2:
                      begin
                        qryReci.FieldByName('AidDate').AsString :=
                          FieldByName('AidDate').AsString;
                        qryReci.FieldByName('AidNumber').AsString :=
                          FieldByName('AidNumber').AsString;
                      end;
                  end;
                end;
              // ----------------- ADD New -------------------
              if ((RecallTypeOption and Integer(CHkInsertPersonID_D_ToPersonID1)
                ) <> 0) then
                qryReci.FieldByName('PersonID2').AsInteger :=
                  FieldByName('PersonID1').AsInteger;
              // ----------------- ADD New -------------------
              qryReci.FieldByName('FirstUser').AsString := User.Name;

              while not eof do
              begin
                if RecallOneRow then
                  qryI.Edit
                else
                  qryI.Insert;
                // qryI.FieldByName('StuffCode').AsLargeInt:=FieldByName('StuffCode').AsVariant;

                qryI.FieldByName('preReciptItemID').AsInteger :=
                  FieldByName('ReciptItemID').AsInteger;

                qryI.FieldByName('PrvYearID').AsInteger :=
                  qrySpecialRecallYearID.AsInteger;

                qryI.FieldByName('StuffCode').AsLargeInt :=
                  qrySpecialRecallStuffCode.AsLargeInt;

                if (qryI.FindField('CommissionCurrency') <> nil) then
                  qryI.FieldByName('CommissionCurrency').AsFloat :=
                    FieldByName('CommissionCurrency').AsFloat;

                if (qryI.FindField('StandardConsumptionCo') <> nil) then
                  qryI.FieldByName('StandardConsumptionCo').AsFloat :=
                    FieldByName('StandardConsumptionCo').AsFloat;

                if (qryI.FindField('CommissionPrice') <> nil) then
                  qryI.FieldByName('CommissionPrice').AsFloat :=
                    FieldByName('CommissionPrice').AsFloat;

                if (qryI.FindField('Commission') <> nil) then
                  qryI.FieldByName('Commission').AsFloat :=
                    FieldByName('Commission').AsFloat;

                // جابجایی Insert کد کالا و درصد مالیات
                // ارجاع به : بسپارتحریر-فراخوانی مالیات-فروش

                // در سیستم فروش شرکت مذکور فرم درخواست مشتری در فاکتور فروش به صورت ویژه عمومی  فراخوانی میشود و فیلد  درصد مالیات موجود در فاکتور فروش از بخش ویژه این فرم مقدار میگیرد
                // در صورت امکان زمانی که درصد مالیات فرم فاکتور فروش  0 تنظیم شده
                // درصد مالیات  و مبلغ ان  از فرم فراخوانی شده (درخواست مشتری)  خوانده شود

                if (qryI.FindField('TaxCo') <> nil) and
                  (qryI.FieldByName('TaxCo').AsCurrency = 0) then
                begin
                  qryI.FieldByName('TaxCo').AsCurrency := FieldByName('TaxCo')
                    .AsCurrency;
                  // qryI.FieldByName('TaxValue').AsCurrency :=
                  // FieldByName('TaxValue').AsCurrency;
                end;

                if qryI.FieldByName('_StuffName').AsString = EmptyStr then
                  initDesktopAlert(0, qryI.FieldByName('StuffCode').DisplayName
                    + 'ي   ' + qryI.FieldByName('StuffCode').AsString +
                    '   باانبار ارتباط ندارد', nil);

                if FieldByName('__EntityEdit').AsFloat > 0 then
                  In_OutEntity := qrySpecialRecall__EntityEdit.AsFloat
                  // else if qryini.FieldByName('RecallType').AsInteger = 11 then // qryI.FieldByName(In_Out + 'Entity').AsFloat := // FieldByName('Entity2').AsFloat
                else
                  In_OutEntity := qrySpecialRecallEntity.AsFloat;

                if qryini.FieldByName('RecallType').AsInteger = 18 then
                begin
                  if FieldByName('CurentEntity').AsFloat <= 0 then
                  begin
                    qryI.Cancel;
                    qrySpecialRecall.Next;
                    Continue;
                  end;
                  if In_OutEntity >= FieldByName('CurentEntity').AsFloat then
                    In_OutEntity := FieldByName('CurentEntity').AsFloat;
                end;

                if (qryini.FieldByName('CorrelateKind').AsInteger in [7]) then
                begin
                  qryI.FieldByName('RequestedEntity').AsFloat :=
                    qrySpecialRecallEntity.AsFloat;
                  qryI.FieldByName('RequestedWeight').AsFloat :=
                    qrySpecialRecallWeight.AsFloat;
                end;

                if ((RecallTypeOption and Integer(chkEWEnteredUserHimself)) = 0)
                then
                begin
                  if not((qryinit.FieldByName('RecallTypeOption').AsLargeInt and
                    Integer(CHkLastRciptDate11)) <> 0) then
                    if opt.EntityDisplay then
                      qryI.FieldByName(In_Out + 'Entity').AsFloat :=
                        RoundTo(In_OutEntity, qryini.FieldByName('RoundCount')
                        .AsInteger);

                  if not((RecallTypeOption and Integer(CHKNoWeight)) <> 0) then
                  begin

                    // مقدار منفی ريخته نشود   opt.WeightDisplay
                    if opt.WeightDisplay and
                      (qrySpecialRecallWeight.AsFloat <> 0) then
                      if not((qryinit.FieldByName('RecallTypeOption')
                        .AsLargeInt and Integer(CHkLastRciptDate11)) <> 0) then

                        qryI.FieldByName(In_Out + 'Weight').AsFloat :=
                          qrySpecialRecallWeight.AsFloat;
                  end;
                end;

                qryI.FieldByName('StuffAlloy').AsString :=
                  FieldByName('StuffAlloy').AsString;
                qryI.FieldByName('StuffGrade').AsString :=
                  FieldByName('StuffGrade').AsString;
                qryI.FieldByName('StuffSize').AsString :=
                  FieldByName('StuffSize').AsString;
                qryI.FieldByName('StuffDiameter').AsFloat :=
                  FieldByName('StuffDiameter').AsFloat;

                if (qryinit.FieldByName('MaxControlCode').AsInteger = 2) then
                begin
                end
                else
                  qryI.FieldByName('ControlCode').AsLargeInt :=
                    FieldByName('ControlCode').AsLargeInt;

                if ((opt.ConfigSettings and Integer(CHkCsSpecialCode)) <> 0)
                then
                  if qryI.FindField('SpecialCode') <> nil then
                    qryI.FieldByName('SpecialCode').AsString :=
                      FieldByName('SpecialCode').AsString;

                if qryini.FieldByName('UseOtherActive').AsInteger in [2, 3] then
                  qryI.FieldByName('UseOtherID_Item').AsInteger :=
                    FieldByName('UseOtherID_Item').AsInteger;

                if not((RecallTypeOption and Integer(chkRecalPortage)) <> 0)
                then
                  if qryini.FieldByName('PawsFieldsActive').AsInteger in [1, 3]
                  then
                    qryI.FieldByName('Portage').AsInteger :=
                      FieldByName('Portage').AsInteger;

                if qryini.FieldByName('PawsFieldsActive').AsInteger in [2, 3]
                then
                begin
                  qryI.FieldByName('Article').AsInteger :=
                    FieldByName('Article').AsInteger;
                  qryI.FieldByName('Wage').AsInteger := FieldByName('Wage')
                    .AsInteger;
                  qryI.FieldByName('Scoria').AsInteger := FieldByName('Scoria')
                    .AsInteger;
                end;

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
                        qryI.FieldByName('Total' + In_Out + 'Price').AsCurrency
                          := DMf.qryTmpTmp.FieldByName('SellPrice1').AsCurrency
                          * qrySpecialRecall.FieldByName('Entity').AsFloat;
                      1:
                        qryI.FieldByName('Total' + In_Out + 'Price').AsCurrency
                          := DMf.qryTmpTmp.FieldByName('SellPrice1').AsCurrency
                          * qrySpecialRecall.FieldByName('Weight').AsFloat;
                    end;
                  end;

                end;
                // If chkPrice.Checked Then
                // qryI.FieldByName('UnitSellPrice').Value :=
                // IfThen(FieldByName('UnitSellPricePost').AsCurrency = 0,
                // FieldByName('UnitSellPrice').AsCurrency,
                // FieldByName('UnitSellPricePost').AsCurrency);

                case rgPrice.ItemIndex of
                  1:
                    // qryI.FieldByName('UnitSellPrice').Value :=
                    // qrySpecialRecallUnitSellPrice.AsCurrency;
                    SetFieldValue(qryI.FieldByName('UnitSellPrice'),
                      qrySpecialRecallUnitSellPrice);

                  2:
                    qryI.FieldByName('UnitSellPrice').Value :=
                      FieldByName('UnitSellPricePost').AsCurrency;
                end;

                If TotalIn_OutPriceActive Then
                begin
                  if FieldByName('Price').AsCurrency < 0 then
                    qryI.FieldByName('Total' + In_Out + 'Price').AsCurrency := 0
                  else
                    SetFieldValue(qryI.FieldByName('Total' + In_Out + 'Price'),
                      FieldByName('Price'));
                  // qryI.FieldByName('Total' + In_Out + 'Price').AsCurrency :=
                  // FieldByName('Price').AsCurrency;
                end;

                case qryini.FieldByName('FillPersonID1From').AsInteger of
                  0:
                    qryI.FieldByName('PersonID1').AsInteger :=
                      FieldByName('PersonID1').AsInteger;
                  1:
                    qryI.FieldByName('PersonID1').AsInteger :=
                      FieldByName('PersonID1M').AsInteger;
                  2:
                    qryI.FieldByName('PersonID1').AsInteger :=
                      FieldByName('PersonID2M').AsInteger;
                  3:
                    qryI.FieldByName('PersonID1').AsInteger :=
                      FieldByName('PersonID3M').AsInteger;
                  4:
                    qryI.FieldByName('PersonID1').AsInteger :=
                      FieldByName('PersonID4M').AsInteger;
                end;



                // move up           qryI.FieldByName('preReciptItemID').AsInteger :=
                // FieldByName('ReciptItemID').AsInteger;

                // if qryinit.FieldByName('RecallType').AsInteger in [21, 22, 23]
                // then
                // qryI.FieldByName('ItemNote').AsString :=
                // qrySpecialRecallReciptCaption.AsString + ':' +
                // qrySpecialRecallReciptNumber.AsString;

                If NoteActive Then
                  qryI.FieldByName('ItemNote').AsString :=
                    FieldByName('ItemNote').AsString + ' ' +
                    qryI.FieldByName('ItemNote').AsString;

                qryI.FieldByName('Auxiliary').AsFloat :=
                  FieldByName('Auxiliary').AsFloat;

                qryI.FieldByName('UseUnitID').AsFloat := 0;

                if (qryini.FieldByName('AidInfoActive').AsInteger in [2, 3])
                then
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
                          FieldByName('MAidDate').AsString;
                        qryI.FieldByName('AidNumber').AsString :=
                          FieldByName('MAidNumber').AsString;
                      end;
                  end;
                end;

                if (qryini.FieldByName('UseUnitCase').AsInteger in [2, 3]) then
                begin
                  qryI.FieldByName('UseUnitID').AsInteger :=
                    FieldByName('UseUnitID').AsInteger;
                end;

                if (qryini.FieldByName('ProcedureActive').AsInteger in [1, 2, 4])
                then
                begin
                  qryI.FieldByName('ProductCode').AsInteger :=
                    FieldByName('ProductCode').AsInteger;
                end;

                if (qryini.FieldByName('ProcedureActive').AsInteger in [1, 2, 3])
                then
                begin
                  qryI.FieldByName('ProductModel').AsInteger :=
                    FieldByName('ProductModel').AsInteger;
                end;

                if qryI.FindField('SecondTypeItem') <> NIL then
                BEGIN
                  b := qryI.FieldByName('SecondTypeItem').ReadOnly;
                  qryI.FieldByName('SecondTypeItem').ReadOnly := False;
                  qryI.FieldByName('SecondTypeItem').AsInteger :=
                    FieldByName('SecondTypeItem').AsInteger;
                  qryI.FieldByName('SecondTypeItem').ReadOnly := b;
                END;

                if qryini.FieldByName('RecallType').AsInteger = 10 then
                begin
                  qryI.FieldByName('RequestedEntity').ReadOnly := False;
                  qryI.FieldByName('RequestedWeight').ReadOnly := False;
                  qryI.FieldByName('RequestedEntity').AsFloat :=
                    FieldByName('Entity').AsFloat;
                  qryI.FieldByName('RequestedWeight').AsFloat :=
                    FieldByName('Weight').AsFloat;
                end;

                if qryini.FieldByName('MachineActive').AsInteger = 4 then
                begin
                  qryI.FieldByName('MachineName').AsString :=
                    FieldByName('MachineName').AsString;
                  qryI.FieldByName('MachineNo').AsString :=
                    FieldByName('MachineNo').AsString;
                end;

                if qryI.FindField('WaterCo') <> nil then
                begin

                  if qryI.FindField('DeficitValueCo4') <> nil then
                    SetFieldValue(qryI.FieldByName('DeficitValueCo4'),
                      FieldByName('DeficitValueCo4'));

                  if qryI.FindField('DeficitValue4') <> nil then
                    SetFieldValue(qryI.FieldByName('DeficitValue4'),
                      FieldByName('DeficitValue4'));

                  if qryI.FindField('DeficitValueCO3') <> nil then
                    SetFieldValue(qryI.FieldByName('DeficitValueCo3'),
                      FieldByName('DeficitValueCo3'));

                  if qryI.FindField('DeficitValue3') <> nil then
                    SetFieldValue(qryI.FieldByName('DeficitValue3'),
                      FieldByName('DeficitValue3'));

                  qryI.FieldByName('DeficitValue').AsCurrency :=
                    FieldByName('DeficitValue').AsCurrency;
                  qryI.FieldByName('WaterCo').AsCurrency :=
                    FieldByName('WaterCo').AsCurrency;

                  if qryI.FindField('DeficitValueCO2') <> nil then
                    SetFieldValue(qryI.FieldByName('DeficitValueCo2'),
                      FieldByName('DeficitValueCo2'));

                  if qryI.FindField('DeficitValue2') <> nil then
                    SetFieldValue(qryI.FieldByName('DeficitValue2'),
                      FieldByName('DeficitValue2'));

                  if (qryI.FindField('TaxCo') <> nil) and
                    ((qryI.FieldByName('DeficitValue2').AsCurrency <> 0) or
                    (qryI.FieldByName('DeficitValue3').AsCurrency <> 0)) then
                  begin
                    qryI.FieldByName('TaxCo').AsCurrency := FieldByName('TaxCo')
                      .AsCurrency;
                    // qryI.FieldByName('TaxValue').AsCurrency :=
                    // FieldByName('TaxValue').AsCurrency;
                  end;

                end;

                if qryI.FindField('acc_CTopicCode3') <> nil then
                  SetFieldValue(qryI.FieldByName('acc_CTopicCode3'),
                    FieldByName('acc_CTopicCode3'));

                qryI.FieldByName('ItemDate').AsString :=
                  FieldByName('ItemDate').AsString;

                UnitSellPrice := qryI.FieldByName('UnitSellPrice').AsFloat;
                if qryini.FieldByName('RecallType').AsInteger in [5, 16] then
                begin
                  if (qryI.FindField('ArzAmount') <> nil) then
                  begin
                    qryI.FieldByName('ArzAmount').ReadOnly := False;
                    qryI.FieldByName('ArzAmount').AsFloat :=
                      FieldByName('ArzAmount').AsFloat;
                  end;

                  if (qryini.FieldByName('RecallType').AsInteger in [5]) and
                    (qryI.FindField('ArzRate') <> nil) then
                  begin
                    qryI.FieldByName('ArzRate').ReadOnly := False;
                    qryI.FieldByName('ArzRate').AsFloat :=
                      FieldByName('ArzRate').AsFloat;
                  end;

                end;

                if ((RecallTypeOption and Integer(CHkLastRciptDate11)) <> 0)
                then
                  qryI.FieldByName('UnitSellPrice').AsFloat := UnitSellPrice;

                qryI.FieldByName('FirstUser').AsString := User.Name;

                RefreshLookupList(qryI);
                qryI.post;
                Next;
              end; // while
              // qryITotalInputPrice.OnChange:=qryITotalInputPriceChange;
              // qryITotalOutputPrice.OnChange:=qryITotalOutputPriceChange;
              // qryIUnitSellPrice.OnChange:=qryIUnitSellPriceChange;
            end; // cliSpecialRecall
          // end; // if
        finally
          if qryI.FindField('_PersonName1') <> nil then
            qryI.FieldByName('_PersonName1').Required :=
              qryini.FieldByName('PersonID1OnDetailActive').AsInteger
              in [1, 2, 3];;

        end
    end; // with
    Result := True;

  finally
    RecallSpecialReciptsF.Free;
  end; // try
end;

procedure TRecallSpecialReciptsF.FormSQL(qry: TADOQuery);
var
  UseStoreIDOnRecall, SqlFilter, JoinSQl, RecallReciptTypes: String;
  i: Integer;
begin
  UseStoreIDOnRecall := IfThen(qryinit.FieldByName('UseStoreIDOnRecall')
    .AsInteger = 1, ' ) DERIVEDTBL WHERE (StoreID = ' + IntToStr(StoreID) +
    ') ', '');

  if ((UseStoreIDOnRecall <> EmptyStr) and (qry.Name = qrySpecialRecall.Name))
  then
  begin
    UseStoreIDOnRecall := UseStoreIDOnRecall +
      IfThen(actExcelComparisonRecallF.Visible,
      ' ORDER BY PersonID1M,PersonID2M,StoreID ',
      ' ORDER BY StuffSize,StuffCode,ItemDate ');
  end;
  RecallReciptTypes := qryinit.FieldByName('RecallReciptTypes').AsString;

  if ((RecallTypeOption and Integer(ChkSeparateTyping)) <> 0) then
    // keep  :ReciptTypeCur
  else
    qryMaster.SQL.Text := ReplaceStr(qryMaster.SQL.Text,
      ' AND AidRecallSpecial.ReciptType = :ReciptTypeCur', '');

  SqlFilter := SqlFilter + ' AND (Recipts.ReciptType IN (' +
    RecallReciptTypes + '))';

  if actExcelComparisonRecallF.Visible then
    SqlFilter := SqlFilter + #13#10 +
      ' AND ControlCode in( :ControlCode )' + #13#10;

  if ((UsePerson1OnRecall and Integer(CHkPersonID1Filter)) <> 0) then
    SqlFilter := SqlFilter + ' AND (Recipts.PersonID1 IN (' +
      qryReci.FieldByName('PersonID1').AsString + '))';

  if ((UsePerson1OnRecall and Integer(CHkPersonID2Filter)) <> 0) then
    SqlFilter := SqlFilter + ' AND (Recipts.PersonID2 IN (' +
      qryReci.FieldByName('PersonID2').AsString + '))';

  if ((UsePerson1OnRecall and Integer(CHkPersonID3Filter)) <> 0) then
    SqlFilter := SqlFilter + ' AND (Recipts.PersonID3 IN (' +
      qryReci.FieldByName('PersonID3').AsString + '))';

  if ((UsePerson1OnRecall and Integer(CHkPersonID4Filter)) <> 0) then
    SqlFilter := SqlFilter + ' AND (Recipts.PersonID4 IN (' +
      qryReci.FieldByName('PersonID4').AsString + '))';

  //
  // case qryinit.FieldByName('UsePerson1OnRecall').AsInteger of
  // 1:
  // SqlFilter := SqlFilter + ' AND (Recipts.PersonID1 IN (' +
  // qryReci.FieldByName('PersonID1').AsString + '))';
  // 2:
  // SqlFilter := SqlFilter + ' AND (Recipts.PersonID2 IN (' +
  // qryReci.FieldByName('PersonID2').AsString + '))';
  // 3:
  // SqlFilter := SqlFilter + ' AND (Recipts.PersonID3 IN (' +
  // qryReci.FieldByName('PersonID3').AsString + '))';
  //
  // 4:
  // SqlFilter := SqlFilter + ' AND (Recipts.PersonID1 IN (' +
  // qryReci.FieldByName('PersonID1').AsString + '))' +
  // ' AND (Recipts.PersonID2 IN (' + qryReci.FieldByName('PersonID2')
  // .AsString + '))';
  //
  // end;
  { همه وضعیت ها
    فقط اطلاعات قطعي فراخواني شود.‏
    فقط اطلاعات دائمی فراخواني شود.‏ }
  // SqlFilter := SqlFilter + ' AND(Recipts.ReciptState < 3 )';
  if qryinit.FieldByName('RecallReciptState1').AsInteger = 1 then
    SqlFilter := SqlFilter + ' AND(Recipts.ReciptState = 1 )';

  if qryinit.FieldByName('RecallReciptState1').AsInteger = 2 then
    SqlFilter := SqlFilter + ' AND(Recipts.ReciptState = 2 )';

  if qryinit.FieldByName('RecallReciptState1').AsInteger = 3 then
    SqlFilter := SqlFilter + ' AND(Recipts.ReciptState <> 3 )';

  if (MasterActive) and (qry.Name = qrySpecialRecall.Name) then
    SqlFilter := SqlFilter +
      'AND (Recipts.ServerID = :ServerID) AND (Recipts.ReciptID = :ReciptID)';

  if ((RecallTypeOption and Integer(CHkLastRciptDate11)) <> 0) then
    // SqlFilter := SqlFilter + ' and ri.preReciptItemID is null';
    SqlFilter := SqlFilter + ' AND NOT EXISTS (SELECT 1 AS Expr1' +
      ' FROM ReciptItems AS ri INNER JOIN' +
      ' Recipts AS R ON ri.ReciptID = R.ReciptID AND ri.ServerID = R.ServerID AND ri.YearID = R.YearID'
      + ' WHERE (ri.preReciptItemID = ri.ReciptItemID) AND (ri.YearID = ri.YearID) '
      + 'AND (R.ReciptType IN (' + RecallReciptTypes + ')))';

  with qry Do
  begin
    Active := False;
    Parameters.ParamByName('ReciptType').Value :=
      qryinit.FieldByName('ReciptType').AsInteger;

    if ((RecallTypeOption and Integer(ChkSeparateTyping)) <> 0) then
      Parameters.ParamByName('ReciptTypeCur').Value :=
        qryinit.FieldByName('ReciptType').AsInteger;

    if not(qryinit.FieldByName('RecallType').AsInteger in [21, 22, 23]) then
      SQL.Add(SqlFilter);

    if UseStoreIDOnRecall <> '' then
      SQL.Text := 'SELECT * FROM (' + SQL.Text + UseStoreIDOnRecall
    else
      UseStoreID_MinMaxSQL := 'Select min(StoreID),max(StoreID) From Recipts ';

    if NegativeInventory then
      SQL.Text := StringReplace(SQL.Text, ':NegativeInventory', '<>',
        [rfReplaceAll])
    else
      SQL.Text := StringReplace(SQL.Text, ':NegativeInventory', '>',
        [rfReplaceAll]);

    if ((RecallTypeOption and Integer(CHkLastRciptDate11)) <> 0) then
    begin
      if Parameters.FindParam('JoinReplace') = nil then
        Warn2('اشکال در ساخت گزارش');
      // JoinSQl :=
      // 'LEFT JOIN (select recipts.ServerID,recipts.YearID,recipts.ReciptID ,ReciptType,ReciptItems.StuffCode'
      // + ' from recipts inner join ReciptItems on recipts.ReciptID=ReciptItems.ReciptID and recipts.ServerID=ReciptItems.ServerID and'
      // + ' Recipts.YearID=ReciptItems.YearID inner join (' +
      // ' SELECT distinct ReciptItems.StuffCode, ReciptItems.ServerID, ReciptItems.YearID,'
      // + '  FIRST_VALUE(Recipts.ReciptID)  OVER (PARTITION BY ReciptItems.StuffCode  '
      // + ' ORDER BY reciptdate desc ,recipts.ReciptID desc ) as  ReciptID FROM'
      // + ' ReciptItems' +
      // ' inner join Recipts on recipts.ReciptID=ReciptItems.ReciptID and recipts.ServerID=ReciptItems.ServerID and'
      // + ' Recipts.YearID=ReciptItems.YearID' +
      // ' left outer join ReciptItems RI on ReciptItems.ReciptItemID=ri.preReciptItemID'
      // + ' where ReciptType in (' + RecallReciptTypes + ') ' + '  )aaaa' +
      // ' on Recipts.ReciptID=aaaa.ReciptID and Recipts.ServerID=aaaa.ServerID and recipts.YearID=aaaa.YearID and'
      // + ' aaaa.StuffCode=ReciptItems.StuffCode' + ' ' +
      // ' where ReciptType in (' + RecallReciptTypes + ')' +
      // ' group by recipts.ServerID,recipts.YearID,recipts.ReciptID ,ReciptType,ReciptItems.StuffCode )'
      // + ' lasts on lasts.ReciptType =Recipts.ReciptType and lasts.ServerID =ReciptItems.ServerID and lasts.YearID ='
      // + ' ReciptItems.YearID' + ' and lasts.StuffCode = ReciptItems.StuffCode'
      // + ' left join ReciptItems ri on ReciptItems.StuffCode = ri.StuffCode AND'
      // + #13#10 + ' ---------------------' + #13#10 +
      // ' ReciptItems.ReciptItemID = ri.preReciptItemID' +
      // ' AND ReciptItems.YearID = ri.YearID';

      SQL.Text := StringReplace(SQL.Text, ':JoinReplace', JoinSQl,
        [rfReplaceAll])
    end
    else
      SQL.Text := StringReplace(SQL.Text, ':JoinReplace', '', [rfReplaceAll]);

    case qryinit.FieldByName('RecallType').AsInteger of
      2:
        begin
          SQL.Text := StringReplace(SQL.Text, ':RecallKind1Str',
            '-0, -1, -2, -3,  4, -5,-6,7,8,-9,-10', [rfReplaceAll]);
          SQL.Text := StringReplace(SQL.Text, ':RecallKind2Str',
            '-0, -1,  2, -3, -4, -5,6,-7,8,-9,-10', [rfReplaceAll]);
        end;
      5, 10, 15, 16, 18:
        begin
          SQL.Text := StringReplace(SQL.Text, ':RecallKind1Str',
            '0, 1, 2, 3, 4, 5,6,7,8,9,10', [rfReplaceAll]);
          SQL.Text := StringReplace(SQL.Text, ':RecallKind2Str',
            '0, 1, 2, 3, 4, 5,6,7,8,9,10', [rfReplaceAll]);

          // if qryinit.FieldByName('RecallType').AsInteger in [16] then
          // /// add  [5]  BPMS_Karoun
          // SQL.Text := StringReplace(SQL.Text,
          // 'AND ReciptItems.YearID = AidRecallSpecial.YearID', ' ',          [rfReplaceAll]            );
          // morteza sherkat bargh

          /// BPMS_Karoun
          if qryinit.FieldByName('FilterYearIDActive').AsInteger = 1 then
            SQL.Text := StringReplace(SQL.Text,
              'AND ReciptItems.YearID = AidRecallSpecial.YearID', ' ',
              [rfReplaceAll]);
          /// BPMS_Karoun

          if qryinit.FieldByName('RecallType').AsInteger in [15, 18] then
          begin
            DBGrid1.Options := DBGrid1.Options + [dgEditing];
            DBGrid1.Tag := 111;
            DBGrid1.SelectedIndex := ColumnIndexByFieldName(DBGrid1,
              '__EntityEdit');
          end;

          if ((qryinit.FieldByName('RecallType').AsInteger = 18) and
            (qry.Name = qrySpecialRecall.Name)) then
          begin
            SQL.Text := StringReplace(SQL.Text, 'CROSS JOIN Fitful',
              ' CROSS JOIN Fitful LEFT OUTER JOIN ' +
              ' dbo.StoreEntity(:StuffFrom, :StuffTo, :StoreFrom, :StoreTo, :YearFrom, :YearTo) AS Mojudi '
              + ' ON Mojudi.StuffCode = ReciptItems.StuffCode AND Mojudi.YearID = ReciptItems.YearID '
              + ' AND Mojudi.StoreID = Recipts.StoreID ', [rfReplaceAll]);

            SQL.Text := StringReplace(SQL.Text, ', ReciptItems.ItemDate',
              ' , ReciptItems.ItemDate ,Mojudi.Entity as CurentEntity ',
              [rfReplaceAll]);

            if qrySpecialRecall.FindField('CurentEntity') = nil then
              with TFloatField.Create(qrySpecialRecall) do
              begin
                FieldName := 'CurentEntity';
                FieldKind := fkData;
                DataSet := qrySpecialRecall;
                Name := 'qrySpecialRecall' + FieldName;
                DisplayLabel := 'مقدار0 موجودی';
                Tag := 3;
                qrySpecialRecall.FieldDefs.Add(Name, ftFloat, 0, True);
                i := ColumnIndexByFieldName(DBGrid1, 'Weight');
                With DBGrid1.Columns.Add do
                begin
                  FieldName := 'CurentEntity';
                  Index := i;
                end;
                DBGrid1.SelectedIndex := i;

              end;

          end;

        end;
      11:
        begin
          SQL.Text := qry4type11.SQL.Text; // .:abedi:.
          SQL.Text := StringReplace(SQL.Text, ':RecallKind1Str',
            '0, 1, 2, 3, 4, 5,6,7,8,9,10', [rfReplaceAll]);
          SQL.Text := StringReplace(SQL.Text, ':RecallKind2Str',
            '0, 1, 2, 3, 4, 5,6,7,8,9,10', [rfReplaceAll]);
          // DBGrid1.Columns[7].FieldName := 'entity2';
        end;
    end;

  end;

end;

procedure TRecallSpecialReciptsF.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_SPACE then
  begin
    Key := 0;
    ToggleCheck;
  end; // if
end;

procedure TRecallSpecialReciptsF.qryMasterAfterScroll(DataSet: TDataSet);
begin
  inherited;
  With qrySpecialRecall do
  begin
    Active := False;
    Parameters.ParamByName('ReciptID').Value :=
      qryMaster.FieldByName('ReciptID').AsInteger;
    Parameters.ParamByName('ServerID').Value :=
      qryMaster.FieldByName('ServerID').AsInteger;
    Parameters.ParamByName('YearIDFrom').Value :=
      qryMaster.FieldByName('YearID').AsInteger;
    Parameters.ParamByName('YearIDTo').Value := qryMaster.FieldByName('YearID')
      .AsInteger;
    Active := True;
  end;
end;

procedure TRecallSpecialReciptsF.qrySpecialRecallAfterOpen(DataSet: TDataSet);
begin
  inherited;
  if (qryinit.FieldByName('DetailDateActive').AsInteger = 0) then
    qrySpecialRecall.sort := 'StuffCode,ItemDate'
end;

procedure TRecallSpecialReciptsF.qrySpecialRecallAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if qrySpecialRecallUnitSellPriceCHK.AsInteger > 0 then
    DBGrid1.Hint := 'فی نسبت به فی اولیه تغییر کرده'
  else
    DBGrid1.Hint := EmptyStr
end;

procedure TRecallSpecialReciptsF.qrySpecialRecallBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (qrySpecialRecall__EntityEdit.AsFloat <> 0) and
    (qrySpecialRecall__EntityEdit.AsFloat > qrySpecialRecallEntity.AsFloat) then
  begin
    BigMessage(qrySpecialRecall__EntityEdit.DisplayLabel + ' نمي تواند از ' +
      qrySpecialRecallEntity.DisplayLabel + ' بزرگتر باشد.', 1);
    if not(qrySpecialRecall.State in dsEditModes) then
      qrySpecialRecall.Edit;
    qrySpecialRecall__EntityEdit.AsFloat := qrySpecialRecallEntity.AsFloat;
    // DBGrid1.SelectedIndex := DBGrid1.SelectedIndex - 1;
  end;
end;

procedure TRecallSpecialReciptsF.qrySpecialRecallStoreIDChange(Sender: TField);
begin
  inherited;
  PriceOnStoreType(qrySpecialRecall.FieldByName('StoreID').AsInteger, DBGrid1,
    qrySpecialRecall)
end;

procedure TRecallSpecialReciptsF.qrySpecialRecallStuffSizeGetText
  (Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text := '‏' + Sender.AsString + '‏'
end;

procedure TRecallSpecialReciptsF.qrySpecialRecall__EntityEditChange
  (Sender: TField);
begin
  inherited;
  qrySpecialRecall.FieldByName('_Checked').AsInteger :=
    IfThen(qrySpecialRecall__EntityEdit.AsFloat > 0, 1, 0)
end;

procedure TRecallSpecialReciptsF.ToggleCheck(CalculateSummary: Boolean = True);
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
  end;
  // with
  if CalculateSummary then
    CalculateSumChecks;
end;

procedure TRecallSpecialReciptsF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  ToggleCheck;
end;

procedure TRecallSpecialReciptsF.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  inherited;
  if not(gdSelected in State) then
  begin
    if ((Sender as TCedarDbgrid).DataSource.DataSet.FieldByName('CountNo')
      .AsInteger > 0) then
      DBGrid1.Canvas.Brush.Color := lblCountNo.Color; // $00AAD5FF;
    if qrySpecialRecallUnitSellPriceCHK.AsInteger > 0 then
      DBGrid1.Canvas.Brush.Color := lblUnitSellPriceCHK.Color; // $00AADDFF;

    if ((qryinit.FieldByName('RecallType').AsInteger = 18) and
      (qrySpecialRecall.FieldByName('CurentEntity').AsFloat <= 0)) then
      DBGrid1.Canvas.Font.Color := clRed
    else
      DBGrid1.Canvas.Font.Color := clWindowText;

  end;
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  // if DataCol = 0 then
  // begin
  // DBGrid1.Canvas.Rectangle(Rect);
  // if qrySpecialRecall_Checked.AsInteger = 1 then
  // DBGrid1.Canvas.Draw(Rect.Left, Rect.Top, Image3.Picture.Graphic)
  // else
  // DBGrid1.Canvas.Draw(Rect.Left, Rect.Top, Image2.Picture.Graphic)
  // end;

end;

procedure TRecallSpecialReciptsF.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if qryinit.FieldByName('RecallType').AsInteger in [5, 10, 16, 18] then
    Exit;
  if qryinit.FieldByName('RecallType').AsInteger in [15] then
  begin
    DBGrid1.SelectedIndex := ColumnIndexByFieldName(DBGrid1, '__EntityEdit');
    if Key = #13 then
      if DBGrid1.DataSource.DataSet.RecNo = DBGrid1.DataSource.DataSet.RecordCount
      then
        DBGrid1.DataSource.DataSet.First
      else
        DBGrid1.DataSource.DataSet.Next;
    Exit;
  end;

  QuickSearch(Key, qrySpecialRecall.FieldByName(opt.SearchCode));

end;

procedure TRecallSpecialReciptsF.actSearchExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qrySpecialRecall);
end;

procedure TRecallSpecialReciptsF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qrySpecialRecall);
end;

procedure TRecallSpecialReciptsF.btnSearchClick(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryMaster);
end;

procedure TRecallSpecialReciptsF.btnSortClick(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryMaster);
end;

procedure TRecallSpecialReciptsF.intiForm;
var
  b: Boolean;
  i, k: Integer;
begin

  // ManagGridColumnsF.SetColumns(DMf.adcBSell, DBGrid1,
  // qryinit.FieldByName('ReciptType').AsInteger);
  b := qryinit.FieldByName('UseOtherActive').AsInteger in [2, 3];
  setColumns2(DBGrid1, b, 'UseOtherID_Item');

  b := (qryinit.FieldByName('ProcedureActive').AsInteger in [1, 2, 4]);
  setColumns2(DBGrid1, b, 'ProductCode');

  b := (qryinit.FieldByName('ProcedureActive').AsInteger in [1, 2, 3]);
  setColumns2(DBGrid1, b, 'ProductModel');

  b := opt.ExtraCoding.Captions[1] <> '';
  if b then
  begin
    i := ColumnIndexByFieldName(DBGrid1, 'c_StuffName');
    for k := 1 to 9 do
      if opt.ExtraCoding.Captions[k] <> '' then
      begin
        with TStringField.Create(qrySpecialRecall) do
        begin
          FieldName := 'SD' + IntToStr(k);
          FieldKind := fkData;
          DataSet := qrySpecialRecall;
          Name := 'qrySpecialRecall' + FieldName;
          DisplayLabel := opt.ExtraCoding.Captions[k];
          Size := 64;
          ReadOnly := True;
          qrySpecialRecall.FieldDefs.Add(Name, ftString, 64, True);
          Tag := 3;
          With DBGrid1.Columns.Add do
          begin
            FieldName := 'SD' + IntToStr(k);
            Index := i + k;
            Width := 64;
          end;
        end;
      end;
  end;
end;

procedure TRecallSpecialReciptsF.FormActivate(Sender: TObject);
begin
  inherited;
  if actExcelComparisonRecallF.Visible then
  begin
    actExcelComparisonRecallF.Execute;
    Self.btnOk.Click;
  end;

end;

procedure TRecallSpecialReciptsF.MakeSQL();
var
  b: Boolean;
begin
  b := opt.StuffCodingKind >= 1;
  with qrySpecialRecall do
  begin
    SQL.Text := 'SELECT ReciptItems.ReciptID ,ReciptItems.ServerID ';
    SQL.Add(',ReciptItems.YearID, ReciptItems.ReciptItemID, ReciptItems.StuffCode, StuffCoding.c_StuffName, ReciptItems.ControlCode, ReciptItems.StuffSize , ReciptItems.StuffDiameter,');
    SQL.Add('ReciptItems.StuffAlloy, ReciptItems.PersonID1, Customers.CustName,');
    SQL.Add('ROUND(ReciptItems.InputEntity + ReciptItems.OutputEntity - ISNULL(AidRecallSpecial.Entity, 0), 9) AS Entity,');
    SQL.Add('ROUND(ReciptItems.InputWeight + ReciptItems.OutputWeight - ISNULL(AidRecallSpecial.Weight, 0), 9) AS Weight,');
    SQL.Add('case when ROUND(ReciptItems.InputEntity + ReciptItems.OutputEntity - ISNULL(AidRecallSpecial.Entity, 0), 9)<>0');
    SQL.Add('then ROUND ( (ReciptItems.InputWeight + ReciptItems.OutputWeight - ISNULL(AidRecallSpecial.Weight, 0))/');
    SQL.Add('(ReciptItems.InputEntity + ReciptItems.OutputEntity - ISNULL(AidRecallSpecial.Entity, 0))');
    SQL.Add(',9) else 0 end as WeightOnEntity ,');
    SQL.Add('cast( ReciptItems.TotalInputPrice as decimal(38,0)) + cast( ReciptItems.TotalOutputPrice as decimal(38,0)) - cast( ISNULL( AidRecallSpecial.Price, 0) as decimal(38,0)) AS Price');
    SQL.Add(', cast(ReciptItems.TotallSellPrice as decimal(38,0)) - cast(AidRecallSpecial.TotallSellPrice as decimal(38,0)) AS TotallSellPrice');
    SQL.Add('');
    SQL.Add(', ReciptItems.StuffGrade,');
    SQL.Add('--------------- Recipts.StoreID,');
    SQL.Add('CASE dbo.ReciptTypes.IncreasingInventoryStore WHEN 2 THEN dbo.Recipts.StoreID2 ELSE dbo.Recipts.StoreID END AS StoreID,');
    SQL.Add('Stores.c_StoreName,');
    SQL.Add('Units.UnitName, Recipts.ReciptNumber, Recipts.ReciptDate, ReciptTypes.ReciptCaption, ReciptItems.ItemNote, ReciptItems.Auxiliary,');
    SQL.Add('ReciptItems.UnitSellPrice,StuffCoding.sd1 AS Tabaghe,');
    if b then
    begin
      SQL.Add('gateketab.Name AS gateketab, moalef.Name AS moalef, motarjem.Name AS motarjem, nevisandeh.Name AS nevisandeh,');
      SQL.Add('noejeld.Name AS noejeld, PakhshCompany.Name AS PakhshCompany, ');
      SQL.Add('Mozo.Name AS Mozo,padidAvarandeh.Name AS padidAvarandehName,');
    end
    else
    begin
      SQL.Add(''''' AS gateketab, '''' AS moalef, '''' AS motarjem, '''' AS nevisandeh,');
      SQL.Add(''''' AS noejeld, '''' AS PakhshCompany, ');
      SQL.Add(''''' AS Mozo,'''' AS padidAvarandehName,');
    end;

    SQL.Add('derivedtbl_1.CountNo');
    SQL.Add(', ReciptItems.Portage, ReciptItems.Article, ReciptItems.Wage, ReciptItems.Scoria');
    SQL.Add(',ReciptItems.AidNumber, ReciptItems.AidDate,Recipts.AidNumber AS MAidNumber, Recipts.AidDate AS MAidDate');
    SQL.Add(', Recipts.UseUnitID AS UseUnitIDM ,UseUnitsM.UseUnitName AS UseUnitNameM , ProductModelS.Name AS ProductModelName,ReciptItems.acc_CTopicCode3');
    SQL.Add(', ReciptItems.UseUnitID, UseUnits.UseUnitName ,ReciptItems.SecondTypeItem');
    SQL.Add(', Fitful.FitfulID AS _Checked , Fitful.FitfulID AS __EntityEdit,isnull(ReciptItems.RequestedEntity,0) as RequestedEntity');
    SQL.Add(',ROUND(ReciptItems.InputEntity + ReciptItems.OutputEntity - ISNULL(AidRecallSpecial.Entity, 0), 9)-isnull(ReciptItems.RequestedEntity,0) as Entity2');
    SQL.Add(', ReciptItems.WaterCo, ReciptItems.DeficitValue, ReciptItems.TaxCo,');
    SQL.Add('ReciptItems.TaxValue,LookUps.Name AS SecondTypeName');
    SQL.Add(', ReciptItems.DeficitValue2,  ReciptItems.DeficitValue4,ReciptItems.DeficitValue3');
    SQL.Add(', ReciptItems.DeficitValueCo2,  ReciptItems.DeficitValueCo4,ReciptItems.DeficitValueCo3');
    SQL.Add(',CASE WHEN ISNULL(AidRecallSpecial.Entity,0)<>0 THEN ROUND(ISNULL(AidRecallSpecial.Price,0)/AidRecallSpecial.Entity,2) ELSE 0 END UnitSellPricePost');
    SQL.Add(',CASE WHEN (ROUND(CASE WHEN ISNULL(AidRecallSpecial.Entity,0)<>0 THEN ROUND(ISNULL(AidRecallSpecial.Price,0)/AidRecallSpecial.Entity,2) ELSE 0 END,2)=ROUND(ReciptItems.UnitSellPrice,2))');
    SQL.Add('OR(ROUND(CASE WHEN ISNULL(AidRecallSpecial.Entity,0)<>0 THEN ROUND(ISNULL(AidRecallSpecial.Price,0)/AidRecallSpecial.Entity,2) ELSE 0 END,2)=0) THEN 0 ELSE 1 END AS UnitSellPriceCHK,');
    SQL.Add('ReciptItems.MachineNo , ReciptItems.MachineName, ReciptItems.ItemDate');
    SQL.Add(' , StuffCoding.c_StuffTecInfo');
    SQL.Add(', ReciptItems.ProductCode , ReciptItems.ProductModel , StuffCoding.sd1, StuffCoding.sd2, StuffCoding.sd3, StuffCoding.sd4, StuffCoding.sd5');
    SQL.Add(', StuffCoding.sd6, StuffCoding.sd7, StuffCoding.sd8,StuffCoding.sd9 ,ReciptItems.ArzAmount,ReciptItems.ArzRate ,ReciptItems.SpecialCode');
    SQL.Add(',ReciptItems.UseOtherID_Item,Recipts.PO');
    SQL.Add('');
    SQL.Add(',Recipts.PersonID1 AS PersonID1M,Recipts.PersonID2 AS PersonID2M,Recipts.PersonID3 AS PersonID3M,Recipts.PersonID4 AS PersonID4M');
    SQL.Add(',Customers1.CustName AS CustName1M,Customers2.CustName AS CustName2M,Customers3.CustName AS CustName3M,Customers4.CustName AS CustName4M');
    SQL.Add(',Recipts.DefaultDate ,Recipts.DefaultDuration,ReciptItems.CommissionPrice');

    SQL.Add(', ReciptItems.Commission, ReciptItems.CommissionCurrency, ReciptItems.StandardConsumptionCo');
    SQL.Add('FROM UseUnits RIGHT OUTER JOIN');
    SQL.Add('ReciptItems INNER JOIN');
    SQL.Add('Recipts ON');
    SQL.Add('ReciptItems.ReciptID = Recipts.ReciptID AND ReciptItems.ServerID = Recipts.ServerID AND ReciptItems.YearID = Recipts.YearID');
    SQL.Add('INNER JOIN');
    SQL.Add('ReciptTypes ON Recipts.ReciptType = ReciptTypes.ReciptType INNER JOIN');
    SQL.Add('Stores ON Recipts.StoreID = Stores.n_StoreID INNER JOIN');
    SQL.Add('Units INNER JOIN');
    SQL.Add('StuffCoding ON Units.UnitCode = StuffCoding.n_UnitCode ON ReciptItems.StuffCode = StuffCoding.c_StuffCode ON');
    SQL.Add('UseUnits.UseUnitID = ReciptItems.UseUnitID LEFT OUTER JOIN');
    SQL.Add('Customers ON ReciptItems.PersonID1 = Customers.CustID LEFT OUTER JOIN');
    SQL.Add('(SELECT ReciptItems_1.StuffCode, ReciptItems_1.StuffSize, ReciptItems_1.StuffDiameter, ReciptItems_1.StuffAlloy, COUNT(*) AS CountNo');
    SQL.Add('FROM Recipts AS Recipts_1 INNER JOIN');
    SQL.Add('ReciptItems AS ReciptItems_1 ON');
    SQL.Add('Recipts_1.ReciptID = ReciptItems_1.ReciptID AND Recipts_1.ServerID = ReciptItems_1.ServerID AND Recipts_1.YearID = ReciptItems_1.YearID');
    SQL.Add('WHERE (Recipts_1.ReciptType = :ReciptType ) AND (Recipts_1.AidDate >= :AidDate ) AND (Recipts_1.ReciptState < 3)');
    SQL.Add('GROUP BY ReciptItems_1.StuffCode, ReciptItems_1.StuffSize, ReciptItems_1.StuffDiameter, ReciptItems_1.StuffAlloy) AS derivedtbl_1 ON');
    SQL.Add('ReciptItems.StuffCode = derivedtbl_1.StuffCode AND ReciptItems.StuffSize = derivedtbl_1.StuffSize AND ReciptItems.StuffDiameter = derivedtbl_1.StuffDiameter AND');
    SQL.Add('ReciptItems.StuffAlloy = derivedtbl_1.StuffAlloy LEFT OUTER JOIN');
    SQL.Add('dbo.AidRecallSpecial( :RecallKind1Str ) AS AidRecallSpecial ON');
    SQL.Add('--------------------');
    SQL.Add('ReciptItems.StuffCode = AidRecallSpecial.StuffCode AND');
    SQL.Add('---------------------');
    SQL.Add('ReciptItems.ReciptItemID = AidRecallSpecial.preReciptItemID');
    SQL.Add('AND ReciptItems.YearID = AidRecallSpecial.YearID');
    if ((RecallTypeOption and Integer(ChkSeparateTyping)) <> 0) then
      SQL.Add('AND AidRecallSpecial.ReciptType = :ReciptTypeCur ');

    if b then
    begin

      SQL.Add('LEFT OUTER JOIN');
      SQL.Add('dbo.LookUps4Type(313) AS PakhshCompany ON StuffCoding.st13 = PakhshCompany.Code LEFT OUTER JOIN');
      SQL.Add('dbo.LookUps4Type(312) AS noejeld ON StuffCoding.st12 = noejeld.Code LEFT OUTER JOIN');
      SQL.Add('dbo.LookUps4Type(311) AS gateketab ON StuffCoding.st11 = gateketab.Code LEFT OUTER JOIN');
      SQL.Add('dbo.LookUps4Type(305) AS motarjem ON StuffCoding.st5 = motarjem.Code LEFT OUTER JOIN');
      SQL.Add('dbo.LookUps4Type(304) AS moalef ON StuffCoding.st4 = moalef.Code LEFT OUTER JOIN');
      SQL.Add('dbo.LookUps4Type(303) AS nevisandeh ON StuffCoding.st3 = nevisandeh.Code LEFT OUTER JOIN');
      SQL.Add('dbo.LookUps4Type(308) AS Mozo ON StuffCoding.st8 = Mozo.Code LEFT OUTER JOIN');
      SQL.Add('dbo.LookUps4Type(302) AS padidAvarandeh ON StuffCoding.st2 = padidAvarandeh.Code');
    end;

    SQL.Add('CROSS JOIN Fitful');
    SQL.Add('LEFT OUTER JOIN LookUps ON ReciptItems.SecondTypeItem = LookUps.LookUpID');
    SQL.Add('INNER JOIN Customers AS Customers1 ON ISNULL(Recipts.PersonID1, 0) = Customers1.CustID');
    SQL.Add('INNER JOIN Customers AS Customers2 ON ISNULL(Recipts.PersonID2, 0) = Customers2.CustID');
    SQL.Add('INNER JOIN Customers AS Customers3 ON ISNULL(Recipts.PersonID3, 0) = Customers3.CustID');
    SQL.Add('INNER JOIN Customers AS Customers4 ON ISNULL(Recipts.PersonID4, 0) = Customers4.CustID');
    SQL.Add('');
    SQL.Add('LEFT OUTER JOIN UseUnits AS UseUnitsM ON UseUnitsM.UseUnitID = Recipts.UseUnitID');
    SQL.Add('LEFT JOIN LookUps AS ProductModelS ON ReciptItems.ProductModel = ProductModelS.LookUpID');
    SQL.Add('LEFT OUTER JOIN LookUps LookUps_M ON Recipts.SecondType = LookUps_M.LookUpID');
    SQL.Add(':JoinReplace');
    SQL.Add('');
    SQL.Add('');
    SQL.Add('WHERE ( case when (ReciptTypes.EffectType = 4 and ReciptTypes.IncreasingInventory = 1) then 8');
    SQL.Add('else ReciptTypes.EffectType end IN ( :RecallKind2Str ))');
    SQL.Add('');
    SQL.Add('AND ( 1 = :ShowNegativeOrZero or (');
    SQL.Add('(ReciptItems.InputEntity + ReciptItems.OutputEntity - ISNULL(AidRecallSpecial.Entity, 0)');
    SQL.Add('NOT BETWEEN - 0.0001 AND 0.0001 OR');
    SQL.Add('ReciptItems.InputWeight + ReciptItems.OutputWeight - ISNULL(AidRecallSpecial.Weight, 0)');
    SQL.Add('NOT BETWEEN - 0.0001 AND 0.0001)');
    SQL.Add('');
    SQL.Add('----------------------');
    SQL.Add('AND (ReciptItems.InputEntity + ReciptItems.OutputEntity - ISNULL(AidRecallSpecial.Entity, 0) :NegativeInventory 0 OR');
    SQL.Add('ReciptItems.InputWeight + ReciptItems.OutputWeight - ISNULL(AidRecallSpecial.Weight, 0) :NegativeInventory 0)');
    SQL.Add('----------------------');
    SQL.Add('))');
    SQL.Add('AND (ReciptItems.StuffCode BETWEEN :StuffCodeFrom AND :StuffCodeTo)');
    SQL.Add('AND (CASE dbo.ReciptTypes.IncreasingInventoryStore WHEN 2 THEN dbo.Recipts.StoreID2 ELSE dbo.Recipts.StoreID END BETWEEN :StoreIDFrom AND :StoreIDTo)');
    SQL.Add('AND (ReciptItems.ControlCode BETWEEN :ControlcodeFrom AND :ControlcodeTo)');
    SQL.Add('AND (ReciptItems.StuffDiameter BETWEEN :DiameterFrom AND :DiameterTo)');
    SQL.Add('AND (Recipts.ReciptNumber BETWEEN :RcpNumberFrom AND :RcpNumberTo)');
    SQL.Add('AND (ReciptItems.PersonID1 BETWEEN :ItemPersonIDFrom AND :ItemPersonIDTo OR ReciptItems.PersonID1 IS NULL )');
    SQL.Add('');
    SQL.Add('AND (Recipts.ReciptDate BETWEEN :DateFrom AND :DateTo )');

    SQL.Add('AND (Recipts.SellsEmporium BETWEEN :SellsEmporiumFrom AND :SellsEmporiumTo)');

    SQL.Add('AND(Recipts.YearID BETWEEN :YearIDFrom AND :YearIDTo)');
    SQL.Add('');
    SQL.Add('AND(LookUps.Code BETWEEN :SecondTypeItemFrom AND :SecondTypeItemTo OR ReciptItems.SecondTypeItem IS NULL )');
    SQL.Add('AND(LookUps_M.Code BETWEEN :SecondTypeFrom AND :SecondTypeTo OR Recipts.SecondType IS NULL )');
    SQL.Add('AND(ReciptItems.UseUnitID BETWEEN :UseUnitIDFrom AND :UseUnitIDTo OR ISNULL(ReciptItems.UseUnitID,0)=0 )');
    SQL.Add('AND(Recipts.UseUnitID BETWEEN :UseUnitIDReciptFrom AND :UseUnitIDReciptTo OR ISNULL(Recipts.UseUnitID,0)=0 )');
    SQL.Add('');
    SQL.Add('AND(Recipts.PersonID2 BETWEEN :PersonID2From AND :PersonID2To )');
    SQL.Add('AND(Recipts.PersonID3 BETWEEN :PersonID3From AND :PersonID3To )');
    SQL.Add('AND(Recipts.PersonID4 BETWEEN :PersonID4From AND :PersonID4To )');
    SQL.Add('');
//    SQL.Add('AND(ISNULL(Recipts.AidNumber,0) BETWEEN :AidNumberFrom AND :AidNumberTo)');


    SQL.Add('AND ((Recipts.AidNumber='''')or(Recipts.AidNumber=''0'')or(ISNULL(Recipts.AidNumber,''0'') BETWEEN :AidNumberFrom AND :AidNumberTo))');
    SQL.Add('');
  end;

end;

procedure TRecallSpecialReciptsF.InitForm;
var
  b: Boolean;
  s: String;
begin
  MakeSQL;
  rgPrice.ItemIndex :=
    StrToInt(ReadConfig(APPID, 'RecallSpecialReciptsFrgPrice', '1'));

  qrySpecialRecallPO.DisplayLabel := opt.POCaption;
  setColumns2(DBGrid1, opt.POActive, 'PO');

  qrySum := TADOQuery.Create(Self);
  s := DMf.ReadBankConfig('AuxiliaryCaption');
  qrySpecialRecall.FieldByName('Auxiliary').DisplayLabel := s;
  setColumns2(DBGrid1, s <> EmptyStr, 'Auxiliary');
  b := opt.StuffCodingKind >= 1;

  setColumns2(DBGrid1, b, 'gateketab');
  setColumns2(DBGrid1, b, 'noejeld');
  setColumns2(DBGrid1, b, 'PakhshCompany');
  setColumns2(DBGrid1, b, 'moalef');
  setColumns2(DBGrid1, b, 'Tabaghe');
  setColumns2(DBGrid1, b, 'motarjem');
  setColumns2(DBGrid1, b, 'Mozo');
  setColumns2(DBGrid1, b, 'nevisandeh');
  setColumns2(DBGrid1, b, 'padidAvarandehName');

  if b then
  begin
    qrySpecialRecallgateketab.Tag := 3;
    qrySpecialRecallnoejeld.Tag := 3;
    qrySpecialRecallPakhshCompany.Tag := 3;
    qrySpecialRecallmoalef.Tag := 3;
    qrySpecialRecallTabaghe.Tag := 3;
    qrySpecialRecallmotarjem.Tag := 3;
    qrySpecialRecallMozo.Tag := 3;
    qrySpecialRecallnevisandeh.Tag := 3;
    qrySpecialRecallpadidAvarandehName.Tag := 3;
  end;

  b := not opt.AidInfoAvailable;
  setColumns2(DBGrid1, b, 'UseUnitID');
  setColumns2(DBGrid1, b, 'UseUnitName');
  // setColumns2(DBGrid1, b, '__EntityEdit');
  SetUserQualitativeOnForms(Self);

  // b := ((opt.ConfigSettings and Integer(CHkCsSpecialCode)) <> 0);
  // setColumns2(DBGrid1, b, 'SpecialCode');

end;

procedure TRecallSpecialReciptsF.FormDestroy(Sender: TObject);
begin
  inherited;
  qrySum.Free;
  // SaveColWidth(DBGrid1);
  // SaveColWidth(dbgrdMaster);

  SaveConfig(APPID, 'RecallSpecialReciptsFrgPrice',
    IntToStr(rgPrice.ItemIndex));

end;

procedure TRecallSpecialReciptsF.CalculateSumChecks;
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
        sumChecked := sumChecked + FieldByName('Price').AsCurrency;
      end
      else
      begin
        Inc(countUnchecked);
        sumUnchecked := sumUnchecked + FieldByName('Price').AsCurrency;
      end;
      Next;
    end;
    Close;
  end;
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

procedure TRecallSpecialReciptsF.dbgrdMasterKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryMasterReciptNumber);
end;

procedure TRecallSpecialReciptsF.actExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TRecallSpecialReciptsF.actSelectAllExecute(Sender: TObject);
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
    end;
    // while
    First;
    EnableControls;
  end; // with
  CalculateSumChecks;
end;

procedure TRecallSpecialReciptsF.actSlelectInverseExecute(Sender: TObject);
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
    end;
    // while
    First;
    EnableControls;
  end; // with
  CalculateSumChecks;
end;

procedure TRecallSpecialReciptsF.FormShow(Sender: TObject);
begin
  inherited;
  Entity_Weight(DBGrid1);
end;

procedure TRecallSpecialReciptsF.actPrintExecute(Sender: TObject);
begin
  inherited;
  InitReportFile(ppReport1, Self.Name);
end;

procedure TRecallSpecialReciptsF.actRptCardexExecute(Sender: TObject);
begin
  inherited;
  RptCardexF.Enter(qrySpecialRecall.FieldByName('StoreID').AsInteger,
    qrySpecialRecall.FieldByName('StuffCode').AsVariant, 1);
end;

procedure TRecallSpecialReciptsF.actFilterExecute(Sender: TObject);
var
  SQLTxt, s: string;
  dateM: TDateTime;
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try

      if AidInfoActive then
      begin
        AddItem(DMf.adcBSell, 'AidNumber', 'اطلاعات كمكي', 'شماره', ftFloat,
          dvMinMax, '', '', ciSimple, '', 'Select 0,99999999999999 ');
      end;

      AddItemFilter(GetFilter, TFilterUseUnitID);
      AddItemFilter(GetFilter, TFilterUseUnitIDRecipts);

      AddItemFilter(GetFilter, TFilterPersonID2, False,
        qrySpecialRecallCustName2.DisplayLabel);

      AddItemFilter(GetFilter, TFilterPersonID3, False,
        qrySpecialRecallCustName3.DisplayLabel);

      AddItemFilter(GetFilter, TFilterPersonID4, False,
        qrySpecialRecallCustName4.DisplayLabel);

      if qryinit.FieldByName('FilterYearIDActive').AsInteger = 0 then
        SQLTxt := Format('WHERE (YearID BETWEEN %d AND %d)',
          [opt.DefaultYear, APPBank.Year]);

      if qryinit.FieldByName('RecallType').AsInteger in [5, 16] then
      begin
        AddItem(DMf.adcBSell, 'PersonID1D',
          qrySpecialRecallCustName.DisplayLabel,
          qrySpecialRecallPersonID1.DisplayLabel, ftInteger, dvMinMax, '', '',
          ciLookup, 'SELECT DISTINCT ReciptItems.PersonID1, Customers.CustName '
          + 'FROM ReciptItems INNER JOIN Customers ON ReciptItems.PersonID1 = Customers.CustID',
          // 'SELECT MIN(PersonID1) AS Expr1, MAX(PersonID1) AS Expr2 FROM ReciptItems'
          'SELECT 0,2147483647');
      end;

      AddItem(DMf.adcBSell, 'SecondType', 'نوع اطلاعات', 'كد اطلاعات',
        ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT distinct LookUps.Code as Code, LookUps.Name as Name FROM Recipts '
        + 'INNER JOIN LookUps ON Recipts.SecondType = LookUps.LookUpID ',
        // 'SELECT MIN(LookUps.Code),999999999 FROM Recipts LEFT OUTER JOIN ' +
        // 'LookUps ON Recipts.SecondType = LookUps.LookUpID'
        'SELECT 0,2147483647');

      AddItemFilter(GetFilter, TFilterSecondTypeItem);

      AddItemFilter(GetFilter, TFilterSellsEmporium);

      // AddItem(DMf.adcBSell, 'ReciptDate', 'تاريخ ', 'تاريخ', ftDate, dvMinMax,
      // '', '', ciSimple, '', 'Select  ''' + APPBank.StartYear +
      // ''',max(ReciptDate) from Recipts ' );

      if qryinit.FieldByName('RecallType').AsInteger in [21, 22, 23] then
      begin
        dateM := Now;
        dateM := IncWeek(dateM, -1);
        s := miladi2Shamsi(dateM);
        s := 'SELECT ''' + s + ''',''' + var_glb_CurrentDate +
          ''' FROM Recipts ';
        if qryinit.FieldByName('RecallType').AsInteger in [22] then
          s := 'SELECT ''1000/11/11'' ,''9999/12/29''';
      end
      else
        s := 'Select min(ReciptDate),max(ReciptDate) from Recipts ' + SQLTxt;

      if ((qryinit.FieldByName('Settings').AsLargeInt and Integer(ChkConfigDate)
        ) <> 0) then
        AddItemFilter(GetFilter, TFilterConfigDate)
      else
        AddItem(DMf.adcBSell, 'ReciptDate', 'تاريخ ', 'تاريخ', ftDate, dvMinMax,
          '', '', ciSimple, '', s);

      if opt.AidInfoAvailable then
      begin
        AddItem(DMf.adcBSell, 'ItemPersonID', ' نام پكينگ ', 'كد پكينگ',
          ftInteger, dvMinMax, '', '', ciLookup,
          'SELECT CustID,CustName FROM Customers ' +
          'WHERE (CustomerGrpID IN (SELECT CustomerGrpID FROM dbo.CustomersGroup WHERE(GroupType = 4))) ',
          'select 0,999999999');
      end;
      AddItem(DMf.adcBSell, 'Number', 'شماره فرم', 'شماره ', ftInteger,
        dvMinMax, '', '', ciSimple, '',
        // 'select Min(ReciptNumber),Max(ReciptNumber) From Recipts ' + SQLTxt
        'SELECT 0,2147483647');

      AddItemFilter(GetFilter, TFilterControlCode);

      if opt.AidInfoAvailable then
      begin
        AddItem(DMf.adcBSell, 'StuffDiameter', 'ضخامت', 'ضخامت', ftFloat,
          dvMinMax, '', '', ciSimple, '',
          'Select Min(StuffDiameter),max(StuffDiameter) from ReciptItems');
      end;

      if ((RecallTypeOption and Integer(CHKShowEntityInFilter)) <> 0) then
      begin
        s := 'SELECT Sc.c_StuffCode AS [کد کالا], ' +
          'Sc.c_StuffName AS [شرح کالا], Ss.n_StoreID AS [کد انبار], abcd.SUMEntity AS [موجودي مقدار]'
          + ' , abcd.SUMWeight AS [موجودي وزن], Sc.c_StuffName_L2 AS StuffName, Sc.c_StuffTecInfo AS [مشخصات فني],'
          + ' Sc.Cabinet AS طبقه, Sc.Tierced AS رديف, Sc.c_KeepPlace AS [محل نگهداري], Sc.StuffNote AS [توضيحات ضروري], Sc.SellPrice1 AS [بهاي فروش]'
          + ' , Sc.BuyPrice AS [في خريد], ScS.orderPoint AS [نقطه سفارش], Sc.acc_DetaiCode AS کدتفصيلي, abcd.MaxUnitSellPrice AS [بالاترين في]'
          + ' FROM StuffCoding AS Sc INNER JOIN' +
          ' StoreStuffs AS Ss ON Sc.c_StuffCode = Ss.c_StuffCode INNER JOIN' +
          ' Stores AS S ON Ss.n_StoreID = S.n_StoreID LEFT OUTER JOIN' +
          ' (SELECT StuffCode, MAX((CASE EffectType WHEN 2 THEN UnitSellPrice ELSE 0 END)) AS MaxUnitSellPrice'
          + ' , ROUND(SUM(InputEntity - OutputEntity), 9) AS SUMEntity, ROUND(SUM(InputWeight - OutputWeight), 9) AS SUMWeight'
          + ' FROM ReciptItems_Stock' + ' WHERE (YearID = ' +
          APPBank.Year.ToString + ') AND (ReciptState < 3)' + ' AND (StoreID = '
          + StoreID.ToString + ')' +
          ' GROUP BY StuffCode) AS abcd ON Sc.c_StuffCode = abcd.StuffCode' +
          ' LEFT OUTER JOIN StuffCodingStock AS ScS ON SC.c_StuffCode = ScS.StuffCode and  S.n_StoreID = ScS.StoreID '
          +

          ' WHERE (Sc.BlockOutput = 0) AND (Sc.State = 0)' +
          ' AND (Ss.n_StoreID = ' + StoreID.ToString + ')';

        AddItem(DMf.adcBSell, 'StuffCode', 'نام كالا', 'كد كالا', ftLargeint,
          dvMinMax, '', '', ciLookup, s,
          // 'Select Min(StuffCode),max(StuffCode) from ReciptItems'
          'select 0,cast (999999999999999999 as bigint)')
      end
      else
        AddItem(DMf.adcBSell, 'StuffCode', 'نام كالا', 'كد كالا', ftLargeint,
          dvMinMax, '', '', ciLookup, SQL_StuffCoding,
          // 'Select Min(StuffCode),max(StuffCode) from ReciptItems'
          'select 0,cast (999999999999999999 as bigint)');

      AddItemFilter(GetFilter, TFilterSellsEmporium);

      AddItem(DMf.adcBSell, 'Storid', 'نام انبار ', 'كد انبار', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT n_StoreID, c_StoreName FROM Stores ', UseStoreID_MinMaxSQL);

      if qryinit.FieldByName('RecallType').AsInteger = 22 then
        Var_glb_NoFilter := True;

      if ((Var_glb_NoFilter) Or (ShowModal = mrOk)) then
      begin
        GetFilterString;
        UpdateList(qrySpecialRecall);
        UpdateList(qryMaster);
      end; // if
    finally
      Free;
      Var_glb_NoFilter := False;

    end; // try
  end; // with

end;

procedure TRecallSpecialReciptsF.actExcelComparisonRecallFExecute
  (Sender: TObject);
var
  i: Integer;
begin
  inherited;
  try
    ExcelComparisonRecallF.ShowImPortExcel(qryIt, qryinit, qryReci, In_Out);
    for i := 0 to qrySpecialRecall.SQL.Count - 1 do
      if Pos('ControlCode in(', qrySpecialRecall.SQL[i]) > 0 then
        qrySpecialRecall.SQL[i] := EmptyStr;
    qrySpecialRecall.Close;
    qrySpecialRecall.Open;

  finally
  end;
end;

procedure TRecallSpecialReciptsF.actManagGridColumnsExecute(Sender: TObject);
begin
  inherited;
  // ManagGridColumnsF.ShowColumns(DMf.adcBSell, DBGrid1,
  // qryinit.FieldByName('ReciptType').AsInteger);
end;

procedure TRecallSpecialReciptsF.UpdateList(qry: TADOQuery);
begin
  with qry do
  begin
    Active := False;

    if ((AidInfoActive) and (Parameters.FindParam('AidNumberFrom') <> nil)) then
    begin
      Parameters.ParamByName('AidNumberFrom').Value :=
        GetcFrom(myParams.ParamValues['AidNumber'], ftString );
      Parameters.ParamByName('AidNumberTo').Value :=
        GetcTo(myParams.ParamValues['AidNumber'], ftString );

    end
    else
    begin
      SQL.Text := StringReplace(SQL.Text, ':AidNumberFrom', '''''',
        [rfReplaceAll]);
      SQL.Text := StringReplace(SQL.Text, ':AidNumberTo',
        '''999999999999999999999999999999999999''', [rfReplaceAll]);

    end;

    Parameters.ParamByName('AidDate').Value := var_glb_CurrentDate;
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

    if opt.AidInfoAvailable then
    begin
      Parameters.ParamByName('DiameterFrom').Value :=
        GetcFrom(myParams.ParamValues['StuffDiameter'], ftFloat);
      Parameters.ParamByName('Diameterto').Value :=
        GetcTo(myParams.ParamValues['StuffDiameter'], ftFloat);
      Parameters.ParamByName('ItemPersonIDFrom').Value :=
        GetcFrom(myParams.ParamValues['ItemPersonID'], ftInteger);
      Parameters.ParamByName('ItemPersonIDTo').Value :=
        GetcTo(myParams.ParamValues['ItemPersonID'], ftInteger);
    end
    else
    begin
      SQL.Text := SQL.Text.Replace(':DiameterFrom', '-999999999');
      SQL.Text := SQL.Text.Replace(':DiameterTo', '999999999');

      // Parameters.ParamByName('DiameterFrom').Value := 0;
      // Parameters.ParamByName('Diameterto').Value := 999.9;

      if myParams.FindParam('PersonID1D') <> nil then
      begin
        Parameters.ParamByName('ItemPersonIDFrom').Value :=
          GetcFrom(myParams.ParamValues['PersonID1D'], ftInteger);
        Parameters.ParamByName('ItemPersonIDTo').Value :=
          GetcTo(myParams.ParamValues['PersonID1D'], ftInteger);
      end
      else
      begin
        SQL.Text := SQL.Text.Replace(':ItemPersonIDFrom', '-999999999');
        SQL.Text := SQL.Text.Replace(':ItemPersonIDTo', '999999999');
        // Parameters.ParamByName('ItemPersonIDFrom').Value := 0;
        // Parameters.ParamByName('ItemPersonIDTo').Value := 999999;

      end;
      //
    end;
    // for i := 0 to Parameters.Count - 1 do
    // Parameters[i].Value := 0  ;

    if Parameters.FindParam('PersonID2From') <> nil then
    begin
      Parameters.ParamByName('PersonID2From').Value :=
        GetcFrom(myParams.ParamValues['PersonID2'], ftInteger);
      Parameters.ParamByName('PersonID2To').Value :=
        GetcTo(myParams.ParamValues['PersonID2'], ftInteger);
    end;

    if Parameters.FindParam('PersonID3From') <> nil then
    begin
      Parameters.ParamByName('PersonID3From').Value :=
        GetcFrom(myParams.ParamValues['PersonID3'], ftInteger);
      Parameters.ParamByName('PersonID3To').Value :=
        GetcTo(myParams.ParamValues['PersonID3'], ftInteger);
    end;

    if Parameters.FindParam('PersonID4From') <> nil then
    begin
      Parameters.ParamByName('PersonID4From').Value :=
        GetcFrom(myParams.ParamValues['PersonID4'], ftInteger);
      Parameters.ParamByName('PersonID4To').Value :=
        GetcTo(myParams.ParamValues['PersonID4'], ftInteger);
    end;

    if Parameters.FindParam('ShowNegativeOrZero') <> nil then
    begin

      if ((RecallTypeOption and Integer(ShowNegativeOrZero17)) <> 0) then
        Parameters.ParamByName('ShowNegativeOrZero').Value := 1
      else
        Parameters.ParamByName('ShowNegativeOrZero').Value := 0;
    end;

    Parameters.ParamByName('ControlCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['ControlCode'], ftLargeint);
    Parameters.ParamByName('ControlCodeTo').Value :=
      GetcTo(myParams.ParamValues['ControlCode'], ftLargeint);

    Parameters.ParamByName('DateFrom').Value :=
      GetcFrom(myParams.ParamValues['ReciptDate'], ftDate);
    Parameters.ParamByName('DateTo').Value :=
      GetcTo(myParams.ParamValues['ReciptDate'], ftDate);

    if qryinit.FieldByName('RecallType').AsInteger = 11 then
    begin
      // Parameters.ParamByName('StoreID20').DataType := ftWideString;
      Parameters.ParamByName('StoreID20').Value := StoreID;

      SQL.Text := StringReplace(SQL.Text, ':ReciptType21',
        qryinit.FieldByName('RecallReciptTypes').AsString, [rfReplaceAll]);
    end;

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

    if (Parameters.FindParam('SellsEmporiumFrom') <> nil) then
    begin
      Parameters.ParamByName('SellsEmporiumFrom').Value :=
        GetcFrom(myParams.ParamValues['SellsEmporium'], ftInteger);
      Parameters.ParamByName('SellsEmporiumTo').Value :=
        GetcTo(myParams.ParamValues['SellsEmporium'], ftInteger);
    end;

    Parameters.ParamByName('SecondTypeItemFrom').Value :=
      GetcFrom(myParams.ParamValues['SecondTypeItem'], ftInteger);
    Parameters.ParamByName('SecondTypeItemTo').Value :=
      GetcTo(myParams.ParamValues['SecondTypeItem'], ftInteger);

    if Parameters.FindParam('SecondTypeFrom') <> nil then
    begin
      Parameters.ParamByName('SecondTypeFrom').Value :=
        GetcFrom(myParams.ParamValues['SecondType'], ftInteger);
      Parameters.ParamByName('SecondTypeTo').Value :=
        GetcTo(myParams.ParamValues['SecondType'], ftInteger);
    end;

    if ((qryinit.FieldByName('RecallType').AsInteger = 18) and
      (qry.Name = qrySpecialRecall.Name)) then
    begin
      Parameters.ParamByName('StuffFrom').Value :=
        GetcFrom(myParams.ParamValues['StuffCode'], ftLargeint);
      Parameters.ParamByName('StuffTo').Value :=
        GetcTo(myParams.ParamValues['StuffCode'], ftLargeint);

      Parameters.ParamByName('StoreFrom').Value :=
        GetcFrom(myParams.ParamValues['Storid'], ftSmallint);
      Parameters.ParamByName('StoreTo').Value :=
        GetcTo(myParams.ParamValues['Storid'], ftSmallint);

      if qryinit.FieldByName('FilterYearIDActive').AsInteger = 0 then
      begin
        Parameters.ParamByName('YearFrom').Value := opt.DefaultYear;
        Parameters.ParamByName('YearTo').Value := APPBank.Year;
      end
      else
      begin
        Parameters.ParamByName('YearFrom').Value := 0;
        Parameters.ParamByName('YearTo').Value := APPBank.Year;
      end;

    end;

    if Parameters.FindParam('UseUnitIDFrom') <> nil then
    begin
      Parameters.ParamByName('UseUnitIDFrom').Value :=
        GetcFrom(myParams.ParamValues['UseUnitID'], ftInteger);
      Parameters.ParamByName('UseUnitIDTo').Value :=
        GetcTo(myParams.ParamValues['UseUnitID'], ftInteger);
    end;
    if Parameters.FindParam('UseUnitIDReciptFrom') <> nil then
    begin
      Parameters.ParamByName('UseUnitIDReciptFrom').Value :=
        GetcFrom(myParams.ParamValues['UseUnitIDRecipt'], ftInteger);
      Parameters.ParamByName('UseUnitIDReciptTo').Value :=
        GetcTo(myParams.ParamValues['UseUnitIDRecipt'], ftInteger);
    end;


    // if chkActiveMaster.Checked then
    // if qry.Name = qryMaster.Name then
    // qryMaster.Active := True
    // else if qry.Name = qrySpecialRecall.Name then
    // qrySpecialRecall.Active := True;

    if not btnExcelComparisonRecallF.Visible then
    begin
      if MasterActive then
        qryMaster.Active := True
      else
        qrySpecialRecall.Active := True;
    end;

  end;
end;

procedure TRecallSpecialReciptsF.actShowpreReciptExecute(Sender: TObject);
begin
  inherited;
  ShowpreReciptItemIDsF.Enter(qrySpecialRecall.FieldByName('ReciptItemID')
    .AsInteger)
end;

procedure TRecallSpecialReciptsF.ActPerFactorExecute(Sender: TObject);
begin
  inherited;
  if get_response('در صورت نمايش فرم پيش‏فاكتور فرم كنوني بسته ميشود.' + #13 +
    'آيا ادامه مي دهيد؟') <> mryes then
    Exit;
  CreateMDIForm2(TRptReportsF, RptReportsF, Self, 42);
  With RptReportsF do
  begin
    qryDetails.Filter := ' (stuffcode = ' + qrySpecialRecall.FieldByName
      ('StuffCode').AsString + ') ' + 'AND (stuffsize = ''' +
      qrySpecialRecall.FieldByName('stuffsize').AsString + ''') ' +
      'AND (stuffdiameter = ' + qrySpecialRecall.FieldByName('stuffdiameter')
      .AsString + ') ' + 'AND (stuffalloy = ''' + qrySpecialRecall.FieldByName
      ('stuffalloy').AsString + ''')';
    qryDetails.Filtered := True;
  end;
  Close
end;

procedure TRecallSpecialReciptsF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  Text := GetPrintDate;
end;

procedure TRecallSpecialReciptsF.ppSysVarPageNoGetText(Sender: TObject;
  var Text: String);
begin
  Text := GetPageNumberString(Text)
end;

procedure TRecallSpecialReciptsF.ppLblCaptionGetText(Sender: TObject;
  var Text: String);
begin
  Text := Caption;
end;

procedure TRecallSpecialReciptsF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  Text := APPBank.CompanyName;
end;

end.
