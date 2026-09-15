{ -----------------------------------------------------------------------------
  Unit Name: RecallSpecialRecipts
  Author:    Mahmood
  ----------------------------------------------------------------------------- }
unit RecallSpecialReciptsEh;

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
  TRecallSpecialReciptsEhF = class(TTemplate5F)
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
    qrySpecialRecallStoreID: TSmallintField;
    qrySpecialRecallReciptItemID: TIntegerField;
    qrySpecialRecallc_StoreName: TStringField;
    qrySpecialRecallc_StuffName: TStringField;
    qrySpecialRecallUnitName: TStringField;
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
    dbgrdMaster: TDBGrid;
    qrySpecialRecallMachineNo: TStringField;
    qrySpecialRecallMachineName: TStringField;
    qryMasterPersonID2: TIntegerField;
    qryMasterMasirID: TIntegerField;
    qryMasterPersonID3: TIntegerField;
    qryMasterReciptNote: TStringField;
    qrySpecialRecallItemDate: TStringField;
    rgPrice: TRadioGroup;
    qrySpecialRecallc_StuffTecInfo: TStringField;
    qrySpecialRecallProductModel: TIntegerField;
    qrySpecialRecallProductCode: TLargeintField;
    qryMasterCustName3: TStringField;
    qryMasterCustName: TStringField;
    qrySpecialRecallDeficitValue2: TBCDField;
    qrySpecialRecallDeficitValue3: TBCDField;
    qrySpecialRecallArzAmount: TFloatField;
    qrySpecialRecallArzRate: TBCDField;
    DBGrid1: TCedarDbgrid;
    qrySpecialRecallRegisterNumber: TStringField;
    qrySpecialRecallDeficitValue4: TBCDField;
    qrySpecialRecallReagentName: TWideStringField;
    procedure FormResize(Sender: TObject);
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
    procedure DBGrid1CellClick(Column: TColumnEh);
  private
    qrySum: TADOQuery;
    sumChecked, sumUnchecked: Currency;
    countChecked, countUnchecked, StoreID: Integer;
    MultiChecked, MasterActive, TotalIn_OutPriceActive, NoteActive: Boolean;
    UseStoreID_MinMaxSQL, qrySpecialRecallSQL, qryMasterSQL, In_Out: String;
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
  RecallSpecialReciptsEhF: TRecallSpecialReciptsEhF;

implementation

uses StrUtils, GlobalPro, search1, sort, search2, sort2, RptCardex, filter_ADO,
  FilterClass_ADO, ShowpreReciptItemIDs, Math, RptReports, ReciptsFunctions,
  FaraConsts, MMESSAGE, FaraDesktopAlert, shamsiDate, FormFunctions,
  Filter_ADO_Const;

{$R *.dfm}

procedure TRecallSpecialReciptsEhF.MakeSQLqry;
begin
  pnlMaster.Visible := MasterActive;
  qrySpecialRecall.SQL.Text := qrySpecialRecallSQL;
  qryMaster.SQL.Text := qryMasterSQL;
  FormSQL(qrySpecialRecall);
  FormSQL(qryMaster);
  myParams.Clear;
  actFilter.Execute;
end;

function TRecallSpecialReciptsEhF.SelectRecall(qryI, qryini, qryRec: TADOQuery;
  myStore_: TStore; Multi_Checked: Boolean = True; CustID: Integer = 0)
  : Boolean;
var
  Field_Name, S_Q_L: String;
  b: Boolean;
  i: Integer;
  In_OutEntity: Real48;
begin
  RecallSpecialReciptsEhF := TRecallSpecialReciptsEhF.Create(Application);
  try
    with RecallSpecialReciptsEhF do
    begin
      qryinit := qryini;
      RecallTypeOption := qryinit.FieldByName('RecallTypeOption').AsLargeInt;
      MasterActive := (RecallTypeOption and Integer(CHk00Master)) <> 0;
      TotalIn_OutPriceActive :=
        (RecallTypeOption and Integer(chkTotalIn_OutPrice)) <> 0;
      NoteActive := (RecallTypeOption and Integer(chkNote)) <> 0;

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
          SQL.Text :=
            'SELECT distinct Recipts.YearID,Recipts.ServerID,Recipts.ReciptID,Recipts.ReciptNumber, Recipts.ReciptDate,';
          SQL.Add('Recipts.ReciptCaption, Recipts.PersonID1, Customers.CustName, Recipts.StoreID, Recipts.c_StoreName');
          SQL.Add(', Recipts.PersonID2, Recipts.PersonID3 ,Recipts.MasirID,Recipts.ReciptNote, Customers2.CustName AS CustName2,');
          SQL.Add('Customers3.CustName AS CustName3');

          SQL.Add(S_Q_L);
          SQL.Add('LEFT OUTER JOIN');
          SQL.Add('Customers ON Recipts.PersonID1 = Customers.CustID LEFT OUTER JOIN');
          SQL.Add('Customers AS Customers2 ON Recipts.PersonID2 = Customers2.CustID LEFT OUTER JOIN');
          SQL.Add('Customers AS Customers3 ON Recipts.PersonID3 = Customers3.CustID');

        end;

      end;

      qrySpecialRecallSQL := qrySpecialRecall.SQL.Text;
      qryMasterSQL := qryMaster.SQL.Text;
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

      qryMasterPersonID1.DisplayLabel := 'كد ' + qryinit.FieldByName
        ('Person1Caption').AsString;;
      qryMasterCustName.DisplayLabel := 'نام ' + qryinit.FieldByName
        ('Person1Caption').AsString;

      qryMasterPersonID2.DisplayLabel := 'كد ' + qryinit.FieldByName
        ('Person2Caption').AsString;;
      qryMasterCustName2.DisplayLabel := 'نام ' + qryinit.FieldByName
        ('Person2Caption').AsString;

      qryMasterPersonID3.DisplayLabel := 'كد ' + qryinit.FieldByName
        ('Person3Caption').AsString;;
      qryMasterCustName3.DisplayLabel := 'نام ' + qryinit.FieldByName
        ('Person3Caption').AsString;

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
            if MasterActive and (qryMaster.Active) then
            begin
              for i := 0 to qryMaster.FieldCount - 1 do
              begin
                Field_Name := qryMaster.Fields[i].FieldName;
                if (qryRect.FindField(Field_Name) <> nil) and
                  ((qryRect.FieldByName(Field_Name).AsString = EmptyStr) or
                  (qryRect.FieldByName(Field_Name).AsString = '0')) then
                  qryRect.FieldByName(Field_Name).AsString :=
                    qryMaster.FieldByName(Field_Name).AsString;
              end;
              qryRect.FieldByName('_PersonName1').RefreshLookupList;
            end;

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
                      FieldByName('ReciptDate').AsString;
                    qryRect.FieldByName('AidNumber').AsString :=
                      FieldByName('ReciptNumber').AsString;
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

              if (qryI.FindField('TaxCo') <> nil) and
                (qryI.FieldByName('TaxCo').AsCurrency = 0) then
              begin
                qryI.FieldByName('TaxCo').AsCurrency := FieldByName('TaxCo')
                  .AsCurrency;
                qryI.FieldByName('TaxValue').AsCurrency :=
                  FieldByName('TaxValue').AsCurrency;
              end;

              if qryI.FieldByName('_StuffName').AsString = EmptyStr then
                initDesktopAlert(0, qryI.FieldByName('StuffCode').DisplayName +
                  'ي   ' + qryI.FieldByName('StuffCode').AsString +
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

              qryI.FieldByName(In_Out + 'Entity').AsFloat :=
                RoundTo(In_OutEntity, qryini.FieldByName('RoundCount')
                .AsInteger);

              // مقدار منفی ريخته نشود   opt.WeightDisplay
              if opt.WeightDisplay and (qrySpecialRecallWeight.AsFloat <> 0)
              then
                qryI.FieldByName(In_Out + 'Weight').AsFloat :=
                  qrySpecialRecallWeight.AsFloat;

              if qryini.FieldByName('PawsFieldsActive').AsInteger in [1, 3] then
                qryI.FieldByName('Portage').AsInteger := FieldByName('Portage')
                  .AsInteger;

              if qryini.FieldByName('PawsFieldsActive').AsInteger in [2, 3] then
              begin
                qryI.FieldByName('Article').AsInteger := FieldByName('Article')
                  .AsInteger;
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
              // If chkPrice.Checked Then
              // qryI.FieldByName('UnitSellPrice').Value :=
              // IfThen(FieldByName('UnitSellPricePost').AsCurrency = 0,
              // FieldByName('UnitSellPrice').AsCurrency,
              // FieldByName('UnitSellPricePost').AsCurrency);

              case rgPrice.ItemIndex of
                1:
                  qryI.FieldByName('UnitSellPrice').Value :=
                    FieldByName('UnitSellPrice').AsCurrency;

                2:
                  qryI.FieldByName('UnitSellPrice').Value :=
                    FieldByName('UnitSellPricePost').AsCurrency;
              end;

              If TotalIn_OutPriceActive Then
                qryI.FieldByName('Total' + In_Out + 'Price').AsCurrency :=
                  IfThen(FieldByName('Price').AsCurrency < 0, 0,
                  FieldByName('Price').AsCurrency);

              qryI.FieldByName('PersonID1').AsInteger :=
                FieldByName('PersonID1').AsInteger;
              qryI.FieldByName('preReciptItemID').AsInteger :=
                FieldByName('ReciptItemID').AsInteger;

              // if qryinit.FieldByName('RecallType').AsInteger in [21, 22, 23]
              // then
              // qryI.FieldByName('ItemNote').AsString :=
              // qrySpecialRecallReciptCaption.AsString + ':' +
              // qrySpecialRecallReciptNumber.AsString;

              If NoteActive Then
                qryI.FieldByName('ItemNote').AsString := FieldByName('ItemNote')
                  .AsString + ' ' + qryI.FieldByName('ItemNote').AsString;
              qryI.FieldByName('Auxiliary').AsFloat :=
                FieldByName('Auxiliary').AsFloat;
              qryI.FieldByName('UseUnitID').AsFloat := 0;

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
                end;
              end;

              if (qryini.FieldByName('UseUnitCase').AsInteger in [2, 3]) then
              begin
                qryI.FieldByName('UseUnitID').AsString :=
                  FieldByName('UseUnitID').AsString;
              end;

              if (qryini.FieldByName('ProcedureActive').AsInteger in [1, 2, 4])
              then
              begin
                qryI.FieldByName('ProductCode').AsLargeInt :=
                  FieldByName('ProductCode').AsLargeInt;
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
                qryI.FieldByName('WaterCo').AsCurrency := FieldByName('WaterCo')
                  .AsCurrency;
                qryI.FieldByName('DeficitValue').AsCurrency :=
                  FieldByName('DeficitValue').AsCurrency;

                if qryI.FindField('DeficitValue2') <> nil then
                  SetFieldValue(qryI.FieldByName('DeficitValue2'),
                    FieldByName('DeficitValue2'));

                if qryI.FindField('DeficitValue3') <> nil then
                  SetFieldValue(qryI.FieldByName('DeficitValue3'),
                    FieldByName('DeficitValue3'));

                if qryI.FindField('DeficitValue4') <> nil then
                  SetFieldValue(qryI.FieldByName('DeficitValue4'),
                    FieldByName('DeficitValue4'));


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

              qryI.FieldByName('ItemDate').AsString :=
                FieldByName('ItemDate').AsString;

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
    RecallSpecialReciptsEhF.Free;
  end; // try
end;

procedure TRecallSpecialReciptsEhF.FormSQL(qry: TADOQuery);
var
  UseStoreIDOnRecall, SqlFilter, s: String;
  i: Integer;
  UsePerson1OnRecall: Largeint;
begin
  UseStoreIDOnRecall := IfThen(qryinit.FieldByName('UseStoreIDOnRecall')
    .AsInteger = 1, ' ) DERIVEDTBL WHERE (StoreID = ' + IntToStr(StoreID) +
    ') ', '');

  if ((UseStoreIDOnRecall <> EmptyStr) and (qry.Name = qrySpecialRecall.Name))
  then
  begin
    UseStoreIDOnRecall := UseStoreIDOnRecall +
      ' ORDER BY StuffSize,StuffCode,ItemDate ';
  end;

  SqlFilter := SqlFilter + ' AND (Recipts.ReciptType IN (' +
    qryinit.FieldByName('RecallReciptTypes').AsString + '))';

  UsePerson1OnRecall := qryinit.FieldByName('UsePerson1OnRecall').AsLargeInt;
  if ((UsePerson1OnRecall and Integer(CHkPersonID1Filter)) <> 0) then
    SqlFilter := SqlFilter + ' AND (Recipts.PersonID1 IN (' +
      qryRect.FieldByName('PersonID1').AsString + '))';

  if ((UsePerson1OnRecall and Integer(CHkPersonID2Filter)) <> 0) then
    SqlFilter := SqlFilter + ' AND (Recipts.PersonID2 IN (' +
      qryRect.FieldByName('PersonID2').AsString + '))';

  if ((UsePerson1OnRecall and Integer(CHkPersonID3Filter)) <> 0) then
    SqlFilter := SqlFilter + ' AND (Recipts.PersonID3 IN (' +
      qryRect.FieldByName('PersonID3').AsString + '))';

  if ((UsePerson1OnRecall and Integer(CHkPersonID4Filter)) <> 0) then
    SqlFilter := SqlFilter + ' AND (Recipts.PersonID4 IN (' +
      qryRect.FieldByName('PersonID4').AsString + '))';

  // case qryinit.FieldByName('UsePerson1OnRecall').AsInteger of
  // 1:
  // SqlFilter := SqlFilter + ' AND (Recipts.PersonID1 IN (' +
  // qryRect.FieldByName('PersonID1').AsString + '))';
  // 2:
  // SqlFilter := SqlFilter + ' AND (Recipts.PersonID2 IN (' +
  // qryRect.FieldByName('PersonID2').AsString + '))';
  // 3:
  // SqlFilter := SqlFilter + ' AND (Recipts.PersonID3 IN (' +
  // qryRect.FieldByName('PersonID3').AsString + '))';
  // 4:
  // SqlFilter := SqlFilter + ' AND (Recipts.PersonID1 IN (' +
  // qryRect.FieldByName('PersonID1').AsString + '))' +
  // ' AND (Recipts.PersonID2 IN (' + qryRect.FieldByName('PersonID2')
  // .AsString + '))';
  //
  // end;

  if (MasterActive) and (qry.Name = qrySpecialRecall.Name) then
    SqlFilter := SqlFilter +
      'AND (Recipts.ServerID = :ServerID) AND (Recipts.ReciptID = :ReciptID)';

  with qry Do
  begin
    Active := False;
    Parameters.ParamByName('ReciptType').Value :=
      qryinit.FieldByName('ReciptType').AsInteger;
    if not(qryinit.FieldByName('RecallType').AsInteger in [21, 22, 23]) then
      SQL.Add(SqlFilter);

    { همه وضعیت ها
      فقط اطلاعات قطعي فراخواني شود.‏
      فقط اطلاعات دائمی فراخواني شود.‏ }
    s := qry.SQL.Text;
//    SqlFilter := SqlFilter + ' AND(ReciptState < 3 )';
    if qryinit.FieldByName('RecallReciptState1').AsInteger = 1 then
      s := qry.SQL.Text + Add2Filter(s, '(ReciptState = 1 )');
    if qryinit.FieldByName('RecallReciptState1').AsInteger = 2 then
      s := qry.SQL.Text + Add2Filter(s, '(ReciptState = 2 )');

  if qryinit.FieldByName('RecallReciptState1').AsInteger = 3 then
    SqlFilter := SqlFilter + ' AND(ReciptState <> 3 )';

    qry.SQL.Text := s;

    if UseStoreIDOnRecall <> '' then
      SQL.Text := 'SELECT * FROM (' + SQL.Text + UseStoreIDOnRecall
    else
      UseStoreID_MinMaxSQL := 'Select min(StoreID),max(StoreID) From Recipts ';
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
              + ' AND Mojudi.StoreID = CASE ReciptTypes.IncreasingInventoryStore WHEN 2 THEN Recipts.StoreID2 ELSE Recipts.StoreID END ', [rfReplaceAll]);

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

procedure TRecallSpecialReciptsEhF.FormResize(Sender: TObject);
begin
  inherited;
  // SetColSize(DBGrid1, 1);
  SetColSize(dbgrdMaster, 3);
end;

procedure TRecallSpecialReciptsEhF.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if not(gdSelected in State) then
  begin
    if ((Sender as TDBGrid).DataSource.DataSet.FieldByName('CountNo')
      .AsInteger > 0) then
      DBGrid1.Canvas.Brush.Color := $00AAD5FF;
    if qrySpecialRecallUnitSellPriceCHK.AsInteger > 0 then
      DBGrid1.Canvas.Brush.Color := $00AADDFF;

    if ((qryinit.FieldByName('RecallType').AsInteger = 18) and
      (qrySpecialRecall.FieldByName('CurentEntity').AsFloat <= 0)) then
      DBGrid1.Canvas.Font.Color := clRed
    else
      DBGrid1.Canvas.Font.Color := clWindowText;

  end;
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

procedure TRecallSpecialReciptsEhF.DBGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_SPACE then
  begin
    Key := 0;
    ToggleCheck;
  end; // if
end;

procedure TRecallSpecialReciptsEhF.qryMasterAfterScroll(DataSet: TDataSet);
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

procedure TRecallSpecialReciptsEhF.qrySpecialRecallAfterOpen(DataSet: TDataSet);
begin
  inherited;
  if (qryinit.FieldByName('DetailDateActive').AsInteger = 0) then
    qrySpecialRecall.sort := 'StuffCode,ItemDate'
end;

procedure TRecallSpecialReciptsEhF.qrySpecialRecallAfterScroll
  (DataSet: TDataSet);
begin
  inherited;
  if qrySpecialRecallUnitSellPriceCHK.AsInteger > 0 then
    DBGrid1.Hint := 'فی نسبت به فی اولیه تغییر کرده'
  else
    DBGrid1.Hint := EmptyStr
end;

procedure TRecallSpecialReciptsEhF.qrySpecialRecallBeforePost
  (DataSet: TDataSet);
begin
  inherited;
  if qrySpecialRecall__EntityEdit.AsFloat > qrySpecialRecallEntity.AsFloat then
  begin
    BigMessage(qrySpecialRecall__EntityEdit.DisplayLabel + ' نمي تواند از ' +
      qrySpecialRecallEntity.DisplayLabel + ' بزرگتر باشد.', 1);
    if not(qrySpecialRecall.State in dsEditModes) then
      qrySpecialRecall.edit;
    qrySpecialRecall__EntityEdit.AsFloat := qrySpecialRecallEntity.AsFloat;
    // DBGrid1.SelectedIndex := DBGrid1.SelectedIndex - 1;
  end;
end;

procedure TRecallSpecialReciptsEhF.qrySpecialRecallStoreIDChange
  (Sender: TField);
begin
  inherited;
  PriceOnStoreType(qrySpecialRecall.FieldByName('StoreID').AsInteger, DBGrid1,
    qrySpecialRecall)
end;

procedure TRecallSpecialReciptsEhF.qrySpecialRecallStuffSizeGetText
  (Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text := '‏' + Sender.AsString + '‏'
end;

procedure TRecallSpecialReciptsEhF.qrySpecialRecall__EntityEditChange
  (Sender: TField);
begin
  inherited;
  qrySpecialRecall.FieldByName('_Checked').AsInteger :=
    IfThen(qrySpecialRecall__EntityEdit.AsFloat > 0, 1, 0)
end;

procedure TRecallSpecialReciptsEhF.ToggleCheck(CalculateSummary
  : Boolean = True);
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

procedure TRecallSpecialReciptsEhF.DBGrid1CellClick(Column: TColumnEh);
begin
  inherited;
  DBGrid1.SearchPanel.Active := True;

end;

procedure TRecallSpecialReciptsEhF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  ToggleCheck;
end;

procedure TRecallSpecialReciptsEhF.DBGrid1KeyPress(Sender: TObject;
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

procedure TRecallSpecialReciptsEhF.actSearchExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qrySpecialRecall);
end;

procedure TRecallSpecialReciptsEhF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qrySpecialRecall);
end;

procedure TRecallSpecialReciptsEhF.btnSearchClick(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryMaster);
end;

procedure TRecallSpecialReciptsEhF.btnSortClick(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryMaster);
end;

procedure TRecallSpecialReciptsEhF.intiForm;
var
  b: Boolean;
  i, k: Integer;
begin

  // ManagGridColumnsF.SetColumns(DMf.adcBSell, DBGrid1,
  // qryinit.FieldByName('ReciptType').AsInteger);
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

procedure TRecallSpecialReciptsEhF.FormCreate(Sender: TObject);
var
  b: Boolean;
  s: String;
begin
  inherited;
  rgPrice.ItemIndex :=
    StrToInt(ReadConfig(APPID, 'RecallSpecialReciptsFrgPrice', '1'));

  qrySum := TADOQuery.Create(Self);
  s := DMf.ReadBankConfig('AuxiliaryCaption');
  qrySpecialRecall.FieldByName('Auxiliary').DisplayLabel := s;
  setColumns2(DBGrid1, s <> EmptyStr, 'Auxiliary');

  b := not opt.AidInfoAvailable;
  setColumns2(DBGrid1, b, 'UseUnitID');
  setColumns2(DBGrid1, b, 'UseUnitName');
  // setColumns2(DBGrid1, b, '__EntityEdit');
  SetUserQualitativeOnForms(Self);

end;

procedure TRecallSpecialReciptsEhF.FormDestroy(Sender: TObject);
begin
  inherited;
  qrySum.Free;
  // SaveColWidth(DBGrid1);
  SaveColWidth(dbgrdMaster);

  SaveConfig(APPID, 'RecallSpecialReciptsFrgPrice',
    IntToStr(rgPrice.ItemIndex));

end;

procedure TRecallSpecialReciptsEhF.CalculateSumChecks;
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

procedure TRecallSpecialReciptsEhF.dbgrdMasterKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryMasterReciptNumber);
end;

procedure TRecallSpecialReciptsEhF.actExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TRecallSpecialReciptsEhF.actSelectAllExecute(Sender: TObject);
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

procedure TRecallSpecialReciptsEhF.actSlelectInverseExecute(Sender: TObject);
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

procedure TRecallSpecialReciptsEhF.FormShow(Sender: TObject);
begin
  inherited;
  // Entity_Weight(DBGrid1);
  DBGrid1.SetFocus;
  DBGrid1.SearchPanel.Active := True;
end;

procedure TRecallSpecialReciptsEhF.actPrintExecute(Sender: TObject);
begin
  inherited;
  InitReportFile(ppReport1, Self.Name);
end;

procedure TRecallSpecialReciptsEhF.actRptCardexExecute(Sender: TObject);
begin
  inherited;
  RptCardexF.Enter(qrySpecialRecall.FieldByName('StoreID').AsInteger,
    qrySpecialRecall.FieldByName('StuffCode').AsVariant, 1);
end;

procedure TRecallSpecialReciptsEhF.actFilterExecute(Sender: TObject);
var
  SQLTxt, s: string;
  dateM: TDateTime;
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
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
          'SELECT MIN(PersonID1) AS Expr1, MAX(PersonID1) AS Expr2 FROM ReciptItems');
      end;

      AddItemFilter(GetFilter, TFilterSecondTypeItem);

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
          s := 'SELECT ''11/11/11'' ,''9999/99/99''';
      end
      else
        s := 'Select min(ReciptDate),max(ReciptDate) from Recipts ' + SQLTxt;

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
        'select Min(ReciptNumber),Max(ReciptNumber) From Recipts ' + SQLTxt);

      AddItemFilter(GetFilter, TFilterControlCode);

      if opt.AidInfoAvailable then
      begin
        AddItem(DMf.adcBSell, 'StuffDiameter', 'ضخامت', 'ضخامت', ftFloat,
          dvMinMax, '', '', ciSimple, '',
          'Select Min(StuffDiameter),max(StuffDiameter) from ReciptItems');
      end;
      AddItem(DMf.adcBSell, 'StuffCode', 'نام كالا', 'كد كالا', ftLargeint,
        dvMinMax, '', '', ciLookup, SQL_StuffCoding,
        'Select Min(StuffCode),max(StuffCode) from ReciptItems');

      AddItem(DMf.adcBSell, 'Storid', 'نام انبار ', 'كد انبار', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT n_StoreID, c_StoreName FROM Stores ', UseStoreID_MinMaxSQL);

      AddItemFilter(GetFilter, TFilterSellsEmporium);


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

procedure TRecallSpecialReciptsEhF.actManagGridColumnsExecute(Sender: TObject);
begin
  inherited;
  // ManagGridColumnsF.ShowColumns(DMf.adcBSell, DBGrid1,
  // qryinit.FieldByName('ReciptType').AsInteger);
end;

procedure TRecallSpecialReciptsEhF.UpdateList(qry: TADOQuery);
begin
  with qry do
  begin
    // // ShowQryParam(qry);
    //
    Active := False;
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

    Parameters.ParamByName('SellsEmporiumFrom').Value :=
      GetcFrom(myParams.ParamValues['SellsEmporium'], ftInteger);
    Parameters.ParamByName('SellsEmporiumTo').Value :=
      GetcTo(myParams.ParamValues['SellsEmporium'], ftInteger);


    Parameters.ParamByName('SecondTypeItemFrom').Value :=
      GetcFrom(myParams.ParamValues['SecondTypeItem'], ftInteger);
    Parameters.ParamByName('SecondTypeItemTo').Value :=
      GetcTo(myParams.ParamValues['SecondTypeItem'], ftInteger);

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

    // if chkActiveMaster.Checked then
    // if qry.Name = qryMaster.Name then
    // qryMaster.Active := True
    // else if qry.Name = qrySpecialRecall.Name then
    // qrySpecialRecall.Active := True;

    if MasterActive then
      qryMaster.Active := True
    else
      qrySpecialRecall.Active := True;

  end;
end;

procedure TRecallSpecialReciptsEhF.actShowpreReciptExecute(Sender: TObject);
begin
  inherited;
  ShowpreReciptItemIDsF.Enter(qrySpecialRecall.FieldByName('ReciptItemID')
    .AsInteger)
end;

procedure TRecallSpecialReciptsEhF.ActPerFactorExecute(Sender: TObject);
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

procedure TRecallSpecialReciptsEhF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  Text := GetPrintDate;
end;

procedure TRecallSpecialReciptsEhF.ppSysVarPageNoGetText(Sender: TObject;
  var Text: String);
begin
  Text := GetPageNumberString(Text)
end;

procedure TRecallSpecialReciptsEhF.ppLblCaptionGetText(Sender: TObject;
  var Text: String);
begin
  Text := Caption;
end;

procedure TRecallSpecialReciptsEhF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  Text := APPBank.CompanyName;
end;

end.
