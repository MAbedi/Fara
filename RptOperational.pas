{ -----------------------------------------------------------------------------
  Unit Name: Rpt001
  Author:    Abedi
  ----------------------------------------------------------------------------- }
unit RptOperational;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList,
  StdCtrls, ExtCtrls, Buttons, DB, ADODB, Mask, DBCtrls, StrUtils, ppDB,
  ppDBPipe, ppDBBDE, ppComm, ppRelatv, ppProd, ppClass, ppReport, ppCtrls,
  ppPrnabl, ppBands, ppCache, ppDsgnDB, ppDBJIT, ppVar, Menus, ComCtrls,
  myChkBox, ppStrtch, ppRegion, ppModule, ppSubRpt, ppTypes,
  daDataModule, ppParameter, Filter_ADO_Const, ppDesignLayer, System.ImageList,
  System.Actions, DBGridEhGrouping, ToolCtrlsEh, ReciptsFunctions,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  CedarDbGrid;

type
  TRptOperationalF = class(Ttemplate2MDIF)
    qryRecipts: TADOQuery;
    srcRecipts: TDataSource;
    qryReciptsReciptID: TIntegerField;
    qryReciptsReciptNumber: TIntegerField;
    qryReciptsReciptDate: TStringField;
    qryReciptsPersonID1: TIntegerField;
    qryReciptsStoreID2: TSmallintField;
    qryReciptsPersonID2: TIntegerField;
    qryReciptsCustName2: TStringField;
    qryReciptsReciptNote: TStringField;
    qryInitQry: TADOQuery;
    BitBtn1: TBitBtn;
    actFilter: TAction;
    BitBtn2: TBitBtn;
    actSendToExcel: TAction;
    actPrint: TAction;
    actShowForm: TAction;
    BitBtn4: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    actSort: TAction;
    pdbplnItem: TppDBPipeline;
    ppReport1: TppReport;
    qryReciptsInputEntity: TFloatField;
    qryReciptsInPutWeight: TFloatField;
    qryReciptsDocNo: TIntegerField;
    qryReciptsDocDate: TStringField;
    qryReciptsc_StoreName2: TStringField;
    qryReciptsDeficitValue: TBCDField;
    actPrintVijeh: TAction;
    qryReciptsPersonID3: TIntegerField;
    qryReciptsServerID: TIntegerField;
    qryReciptsYearID: TIntegerField;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    plblSellsEmporiumName: TppLabel;
    pnlLblLimitPlace: TPanel;
    LblShowLimitPlace2: TLabel;
    LblShowLimitPlace1: TLabel;
    ppLblShowLimitPlace1: TppLabel;
    ppLblShowLimitPlace2: TppLabel;
    ppDBText1: TppDBText;
    qryReciptsProductModel: TLargeintField;
    qryReciptsProductModelName: TStringField;
    qryReciptsCustName1: TStringField;
    qryReciptsCustName3: TStringField;
    qryReciptsUnitSellPrice: TFMTBCDField;
    qryReciptsTaxCo: TFloatField;
    qryReciptsTaxValue: TBCDField;
    qryReciptsPortage: TBCDField;
    qryReciptsTotalInputPrice: TBCDField;
    qryReciptsAidDateD: TStringField;
    qryReciptsPersonID1D: TIntegerField;
    qryReciptsCustNameD: TStringField;
    qryMaster: TADOQuery;
    SrcMaster: TDataSource;
    grpMaster: TGroupBox;
    sbtnMaster: TSpeedButton;
    EdtCode: TDBEdit;
    DBEdit1: TDBEdit;
    DBNavigator1: TDBNavigator;
    pdbplnMaster: TppDBPipeline;
    qryReciptsTotallSellPrice: TBCDField;
    BitBtn3: TBitBtn;
    qryReciptsReciptState: TWordField;
    qryReciptsc_StuffTecInfo: TStringField;
    qryReciptsMachineInfo: TStringField;
    qryReciptsTruckNumber: TStringField;
    qryReciptsProductCode: TLargeintField;
    qryReciptsProductName: TStringField;
    qryReciptsReciptCaption: TStringField;
    qryReciptsTransFormID: TIntegerField;
    qryReciptsCity: TStringField;
    qryReciptsOstan: TWideStringField;
    qryReciptsShahr: TWideStringField;
    qryReciptsUnitName: TStringField;
    qryReciptsParentForm: TStringField;
    qryReciptsOutPutEntity: TFloatField;
    qryReciptsOutPutWeight: TFloatField;
    qryReciptsCustomerGrpID: TIntegerField;
    qryReciptsCustomerGrpName: TStringField;
    qryReciptsWaterCo: TFloatField;
    PopMenu: TPopupMenu;
    AllC_l_i_c_k_: TMenuItem;
    DetailNote: TMenuItem;
    qryReciptsStuffCode: TLargeintField;
    qryReciptsc_StuffName: TStringField;
    qryReciptsStoreID: TSmallintField;
    qryReciptsc_StoreName: TStringField;
    qryReciptsSecondTypeName: TStringField;
    qryReciptsSellsEmporium: TIntegerField;
    qryReciptsSellsEmporiumName: TWideStringField;
    qryReciptsSellsMethod: TIntegerField;
    qryReciptsSellsMethodName: TWideStringField;
    qryReciptsItemNote: TStringField;
    chkFastSQL: TCheckBox;
    qryReciptsTotalOutputPrice: TBCDField;
    qryReciptsTotalInputPrice1: TBCDField;
    qryReciptsTotalOutputPrice1: TBCDField;
    qryReciptssd7: TStringField;
    qryReciptsDeficitAdd_Dec: TBCDField;
    DBGrid1: TCedarDbgrid;
    qryReciptsArzTypeID: TIntegerField;
    qryReciptsCurrenciesName: TStringField;
    qryReciptsArzRate: TBCDField;
    qryReciptsArzAmount: TFloatField;
    qryReciptsRialsEqual: TBCDField;
    qryReciptsCommission: TFMTBCDField;
    qryReciptsSecondTypeNameItem: TStringField;
    qryReciptsCommissionCo: TFMTBCDField;
    qryReciptsacc_CTopicCode: TStringField;
    qryReciptsCurrencyDiscounts: TFMTBCDField;
    qryReciptsArzPortage: TFloatField;
    qryReciptsPersonID4: TIntegerField;
    qryReciptsCustName4: TStringField;
    chkSum: TCheckBox;
    qryReciptsControlCode: TLargeintField;
    qryReciptsacc_CTopicCode2: TStringField;
    qryReciptsacc_CTopicCode3: TStringField;
    qryReciptsMobile: TStringField;
    qryReciptsRIDateMS: TDateTimeField;
    qryReciptsRIDateME: TDateTimeField;
    qryReciptsDeficitValue1: TBCDField;
    qryReciptsDeficitValue2: TBCDField;
    qryReciptsDeficitValue3: TBCDField;
    qryReciptsUnitCommission: TFMTBCDField;
    qryReciptsTotallCommission: TFloatField;
    chkFactorNumber: TCheckBox;
    qryReciptsFactorNumber: TIntegerField;
    qryReciptsStuffSize: TStringField;
    qryReciptsStuffAlloy: TStringField;
    qryReciptsStuffDiameter: TFloatField;
    qryReciptsDeficitValue4: TBCDField;
    qryReciptsPersonID5: TIntegerField;
    qryReciptsCustName5: TStringField;
    qryReciptssd1: TStringField;
    qryReciptsTierced: TWideStringField;
    qryReciptsModifyDate: TDateTimeField;
    qryReciptsFirstUser: TStringField;
    qryReciptsLastUser: TStringField;
    qryReciptsInsertDate: TDateTimeField;
    qryReciptsExpireDate: TStringField;
    qryReciptsItemDate: TStringField;
    qryReciptsInvoiceTemplateName: TStringField;
    qryReciptsUseUnitName: TStringField;
    qryReciptsUseUnitID: TIntegerField;
    qryReciptsUseOtherName: TWideStringField;
    qryReciptsUseOtherID_Item: TIntegerField;
    qryReciptsMachineNoD: TStringField;
    qryReciptsacc_DetailCodeD: TStringField;
    qryReciptsacc_CTopicCodeD: TStringField;
    qryReciptsacc_TopicCodeD: TLargeintField;
    qryReciptsGroupName: TStringField;
    qryReciptsTAXID: TStringField;
    qryReciptsIRTAXID: TStringField;
    PPLblDate: TppLabel;
    qryReciptsNationalStuffCode: TStringField;
    qryReciptsVendorBarcode: TWideStringField;
    qryReciptsRequestedWeight: TFloatField;
    qryReciptsMachineNameD: TStringField;
    qryReciptsAidNumberM: TStringField;
    qryReciptsAidDateM: TStringField;
    qryReciptsAidNumberD: TStringField;
    qryReciptsMachineNameM: TStringField;
    qryReciptsMachineNoM: TStringField;
    procedure actFilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure actShowFormExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNumberGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppLblFormNameGetText(Sender: TObject; var Text: String);
    procedure actPrintExecute(Sender: TObject);
    procedure ppSysVarPageNumGetText(Sender: TObject; var Text: String);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure actPrintVijehExecute(Sender: TObject);
    procedure ppLblShowLimitPlace1GetText(Sender: TObject; var Text: String);
    procedure ppLblShowLimitPlace2GetText(Sender: TObject; var Text: String);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryMasterAfterScroll(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure sbtnMasterClick(Sender: TObject);
    procedure qryReciptsReciptStateGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure ppLblCaptionGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
    procedure AllC_l_i_c_k_Click(Sender: TObject);
    procedure chkSumClick(Sender: TObject);
    procedure PPLblDateGetText(Sender: TObject; var Text: string);
  private
    FormType, ReciptType: string;
    MasterSelect: Integer;
    Procedure InitForm;
    procedure UpdateList;
    procedure AddFromSQL(qry: TADOQuery);
    procedure AddWhereSQL(qry: TADOQuery);
    { Private declarations }
  public
    Procedure Enter(qry: TADOQuery);
    { Public declarations }
  end;

var
  RptOperationalF: TRptOperationalF;

implementation

uses DM, GlobalPro, filter_ADO, FilterClass_ADO, Math, FormFunctions, search2,
  sort2, mmessage, main, DBGrid2Print, mdiMain, FaraConsts, searchCode_ADO;

{$R *.dfm}
{ TRpt001F }

procedure TRptOperationalF.Enter;
begin
  CreateMDIForm2(TRptOperationalF, RptOperationalF, mainF);
  if qry <> nil then
    With qry do
    begin
      if RptOperationalF.qryRecipts.Active then
        RptOperationalF.qryRecipts.Locate('ReciptID;ServerID;YearID',
          VarArrayOf([FieldByName('ReciptID').AsInteger, FieldByName('ServerID')
          .AsInteger, FieldByName('YearID').AsInteger]), []);
    end;
end;

procedure TRptOperationalF.InitForm;
var
  b: Boolean;
  i: Integer;
  ts: TStringList;
begin
  MasterSelect := GetcFrom(myParams.ParamValues['MasterSelect'], ftInteger);
  FormType := GetcFrom(myParams.ParamValues['TypeSelect'], ftString);
  if FormType = EmptyStr then
    FormType := '-10000';

  Entity_Weight(DBGrid1);
  lblCaption.Hint := FormType;
  with qryInitQry do
  begin
    Active := False;
    SQL.Text := 'SELECT * from ReciptTypes';
    SQL.Add('WHERE ReciptType IN(%s)');
    SQL.Text := Format(SQL.Text, [(FormType)]);
    Active := True;
    Caption := FieldByName('ReciptCaption').AsString;
    Next;
    while not Eof do
    begin
      Caption := Caption + '-' + FieldByName('ReciptCaption').AsString;
      Next;
    end;
    First;
    LblShowLimitPlace1.Caption := Caption;
    lblCaption.Caption := Caption;

    ts := TStringList.Create;
    ts.Text := qryInitQry.FieldByName('LabelCaptions').AsString;
    for i := 0 to ts.Count - 1 do
    begin
      if qryRecipts.FindField(ts.KeyNames[i]) <> nil then
        qryRecipts.FieldByName(ts.KeyNames[i]).DisplayLabel :=
          ts.ValueFromIndex[i];
    end;
    ts.Free;

    b := FieldByName('Person1Active').Value = 1;
    setColumns2(DBGrid1, b, 'PersonID1');
    setColumns2(DBGrid1, b, 'CustName1');

    b := FieldByName('Person2Active').Value = 1;
    setColumns2(DBGrid1, b, 'PersonID2');
    setColumns2(DBGrid1, b, 'CustName2');

    b := FieldByName('Person3Active').Value = 1;
    setColumns2(DBGrid1, b, 'PersonID3');
    setColumns2(DBGrid1, b, 'CustName3');

    b := FieldByName('Person4Active').Value = 1;
    setColumns2(DBGrid1, b, 'PersonID4');
    setColumns2(DBGrid1, b, 'CustName4');

    b := FieldByName('Person5Active').Value = 1;
    setColumns2(DBGrid1, b, 'PersonID5');
    setColumns2(DBGrid1, b, 'CustName5');

    b := FieldByName('PersonID1OnDetailActive').Value < 4;
    setColumns2(DBGrid1, b, 'PersonID1D');
    setColumns2(DBGrid1, b, 'CustNameD');

    qryRecipts.FieldByName('PersonID1').DisplayLabel := ' كد ' +
      FieldByName('Person1Caption').AsString;
    qryRecipts.FieldByName('CustName1').DisplayLabel := 'نام ' +
      FieldByName('Person1Caption').AsString;
    qryRecipts.FieldByName('PersonID2').DisplayLabel := ' كد ' +
      FieldByName('Person2Caption').AsString;
    qryRecipts.FieldByName('CustName2').DisplayLabel := 'نام ' +
      FieldByName('Person2Caption').AsString;

    qryRecipts.FieldByName('PersonID3').DisplayLabel := ' كد ' +
      FieldByName('Person3Caption').AsString;
    qryRecipts.FieldByName('CustName3').DisplayLabel := 'نام ' +
      FieldByName('Person3Caption').AsString;

    qryRecipts.FieldByName('PersonID4').DisplayLabel := ' كد ' +
      FieldByName('Person4Caption').AsString;
    qryRecipts.FieldByName('CustName4').DisplayLabel := 'نام ' +
      FieldByName('Person4Caption').AsString;

    qryRecipts.FieldByName('PersonID5').DisplayLabel := ' كد ' +
      FieldByName('Person5Caption').AsString;
    qryRecipts.FieldByName('CustName5').DisplayLabel := 'نام ' +
      FieldByName('Person5Caption').AsString;

    b := FieldByName('PersonID1OnDetailActive').AsInteger in [1, 2, 3];
    setColumns2(DBGrid1, b, 'PersonID1D');
    setColumns2(DBGrid1, b, 'CustNameD');
    qryRecipts.FieldByName('PersonID1D').DisplayLabel :=
      FieldByName('Person2DetailCaption').AsString;
    qryRecipts.FieldByName('CustNameD').DisplayLabel := 'نام ' +
      FieldByName('Person2DetailCaption').AsString;

    qryRecipts.FieldByName('StoreID').DisplayLabel := 'كد ' +
      FieldByName('StoreCaption').AsString;
    qryRecipts.FieldByName('c_StoreName').DisplayLabel := 'نام ' +
      FieldByName('StoreCaption').AsString;

    b := FieldByName('NoteShow').AsInteger in [1, 3];
    setColumns2(DBGrid1, b, 'ReciptNote');


//    if qryInitQry.FieldByName('OtherFieldCaptions').AsString = EmptyStr then
    begin

      b := FieldByName('AidInfoActive').AsInteger in [1, 3, 4];
      setColumns2(DBGrid1, b, 'AidNumberM');
      setColumns2(DBGrid1, b, 'AidDateM');
      qryRecipts.FieldByName('AidNumberM').DisplayLabel := 'شماره ' +
        FieldByName('AidInfoCaptionNo').AsString;
      qryRecipts.FieldByName('AidDateM').DisplayLabel := 'تاريخ ' +
        FieldByName('AidInfoCaption').AsString;

      b := FieldByName('AidInfoActive').AsInteger in [2, 3, 4];
      setColumns2(DBGrid1, b, 'AidNumberD');
      setColumns2(DBGrid1, b, 'AidDateD');
      qryRecipts.FieldByName('AidNumberD').DisplayLabel :=
        FieldByName('AidInfoCaptionNo').AsString + 'D';
      qryRecipts.FieldByName('AidDateD').DisplayLabel :=
        FieldByName('AidInfoCaption').AsString + 'D';
    end;

    b := FieldByName('ShowEntityWeightOnList').AsInteger = 1;
    setColumns2(DBGrid1, b and opt.EntityDisplay, 'Entity');
    setColumns2(DBGrid1, b and opt.WeightDisplay, 'Weight');
    initOtherFieldCaptions(qryInitQry, qryRecipts, qryRecipts);

  end;
end;

procedure TRptOperationalF.actFilterExecute(Sender: TObject);
var
  fi: TfilterF;
begin
  inherited;
  fi := TfilterF.Create2(Self, myParams);
  with fi do
  begin
    try
      if ((opt.ConfigSettings and Integer(chkTruckNumberFilterInrRptOper)) <> 0)
      then
        AddItemFilter(GetFilter, TFilterTruckNumber);

      AddItemFilter(GetFilter, TFilterProduct);

      AddItemFilter(GetFilter, TFilterAidDate);


      // AddItem(dmf.adcBSell, 'Product', 'نام محصول', 'كد محصول', ftLargeint,
      // dvMinMax, '', '', ciLookup,
      // 'SELECT c_StuffCode, c_StuffName FROM  StuffCoding ',
      // 'Select Min(0),max(StuffCode) from ReciptItems');

      AddItem(dmf.adcBSell, 'State', 'وضعيت', 'كدوضعيت', ftInteger, dvMinMax,
        '', '', ciLookup,
        'SELECT ReciptState, ReciptStateName FROM Vu_ReciptStates ',
        'SELECT Min(ReciptState),2 from Vu_ReciptStates ');

      AddItem(dmf.adcBSell, 'MasterSelect', 'طبقه بندي اطلاعات', '', ftUnknown,
        dvDefaults, '0', '', ciRadioGroup,
        'SELECT 0 As MasterType,''ندارد'' as MasterName ' + ' Union All ' +
        'SELECT 1 ,''كالا''  ' + ' Union All ' + 'SELECT 2 ,''محصول / انبار''' +
        ' Union All ' +
        'SELECT ID+3,Person1Caption FROM dbo.GetPersonCaption(''' +
        ReciptType + ''')');

      AddItemFilter(GetFilter, TFilterTypeSelect);

      AddItemFilter(GetFilter, TFilterPersonID4);

      AddItemFilter(GetFilter, TFilterPersonID5);

      AddItem(dmf.adcBSell, 'PersonID3',
        qryInitQry.FieldByName('Person3Caption').AsString, 'كد', ftInteger,
        dvMinMax, '', '', ciLookup,
        ' SELECT DISTINCT CustID, CustName FROM Vu_CustomersGroups ',
        ' SELECT 0,2147483647 ');

      AddItem(dmf.adcBSell, 'PersonID2',
        qryInitQry.FieldByName('Person2Caption').AsString, 'كد', ftInteger,
        dvMinMax, '', '', ciLookup,
        ' SELECT DISTINCT CustID, CustName FROM Vu_CustomersGroups ',
        ' SELECT 0,2147483647');

      AddItem(dmf.adcBSell, 'PersonID1',
        qryInitQry.FieldByName('Person1Caption').AsString, 'كد', ftInteger,
        dvMinMax, '', '', ciLookup,
        ' SELECT DISTINCT CustID, CustName FROM Vu_CustomersGroups ',
        ' SELECT 0,2147483647');

      AddItem(dmf.adcBSell, 'PersonID1D',
        qryInitQry.FieldByName('Person2DetailCaption').AsString, 'كد',
        ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT DISTINCT ReciptItems.PersonID1, Customers.CustName ' +
        'FROM ReciptItems INNER JOIN Vu_CustomersGroups as Customers ON ReciptItems.PersonID1 = Customers.CustID',
        'SELECT 0,2147483647');

      AddItemFilter(GetFilter, TFilterStuffCode);
      AddItemFilter(GetFilter, TFilterStuffGroupID);

      // AddItem(dmf.adcBSell, 'StuffCode', 'نام كالا', 'كد كالا', ftLargeint,
      // dvMinMax, '', '', ciLookup,
      // 'SELECT c_StuffCode, c_StuffName from StuffCoding  where c_StuffCode<>0 ',
      // 'SELECT Min(c_StuffCode),max(c_StuffCode) from StuffCoding where c_StuffCode<>0');

      AddItem(dmf.adcBSell, 'ReciptDate', 'تاريخ ', 'تاريخ', ftDate, dvMinMax,
        // '', '', ciSimple, '', 'Select  ''' + APPBank.StartYear +
        '', '', ciSimple, '',
        'Select  min(ReciptDate) ,max(ReciptDate) from Recipts');

      AddItemFilter(GetFilter, TFilterYearID);

      AddItem(dmf.adcBSell, 'number', 'فرم', 'شماره', ftInteger, dvMinMax, '',
        '', ciSimple, '',
        'Select Min(ReciptNumber),Max(ReciptNumber) from Recipts');

      AddItemFilter(GetFilter, TFilterStoreID);

      AddItemFilter(GetFilter, TFilterSellsEmporium);


      // AddItem(dmf.adcBSell, 'StoreId', 'انبار', 'كدانبار', ftInteger, dvMinMax,
      // '', '', ciLookup, 'SELECT  n_StoreID,c_StoreName FROM dbo.Stores ',
      // 'Select Min(n_StoreID),max(n_StoreID) from Stores');

      AddItem(dmf.adcBSell, 'SecondType', 'نوع اطلاعات ', 'كد اطلاعات ',
        ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT LookUps.Code as Code, LookUps.Name as Name FROM Recipts ' +
        'INNER JOIN LookUps ON Recipts.SecondType = LookUps.LookUpID ' +
        'GROUP BY Recipts.SecondType, LookUps.Code, LookUps.Name',
        'SELECT 0,2147483647');

      if ShowModal = mrOk then
      begin
        GetFilterString;
        pnlLblLimitPlace.Hint := GetFilterStringCaption;
        LblShowLimitPlace2.Caption := pnlLblLimitPlace.Hint;
        UpdateList;
      end; // if
    finally
      fi.Free;
    end; // t
  end;
end;

procedure TRptOperationalF.ppLblShowLimitPlace1GetText(Sender: TObject;
  var Text: String);
begin
  Text := LblShowLimitPlace1.Caption;
end;

procedure TRptOperationalF.ppLblShowLimitPlace2GetText(Sender: TObject;
  var Text: String);
begin
  Text := LblShowLimitPlace2.Caption;
end;

procedure TRptOperationalF.AddFromSQL(qry: TADOQuery);
begin
  with qry do
  begin
    SQL.Add('FROM ReciptItems_Stock_Oper AS R_S_P INNER JOIN');
    SQL.Add('StuffCoding ON R_S_P.StuffCode=StuffCoding.c_StuffCode INNER JOIN');
    SQL.Add('Units ON StuffCoding.n_UnitCode = Units.UnitCode INNER JOIN');
    SQL.Add('Vu_CustomersGroups_F AS Customers_1 ON R_S_P.PersonID1=Customers_1.CustID INNER JOIN');
    SQL.Add('Vu_CustomersGroups_F AS Customers_2 ON R_S_P.PersonID2=Customers_2.CustID INNER JOIN');
    SQL.Add('Vu_CustomersGroups_F AS Customers_3 ON R_S_P.PersonID3=Customers_3.CustID INNER JOIN');
    SQL.Add('Vu_CustomersGroups_F AS Customers_4 ON R_S_P.PersonID4=Customers_4.CustID INNER JOIN');
    SQL.Add('Vu_CustomersGroups_F AS Customers_5 ON R_S_P.PersonID5=Customers_5.CustID INNER JOIN');
    SQL.Add('Vu_CustomersGroups_F AS Customers_D ON R_S_P.PersonID1D=Customers_D.CustID INNER JOIN');
    SQL.Add('Stores ON R_S_P.StoreID = Stores.n_StoreID');
    SQL.Add('INNER JOIN StuffCoding AS StuffCoding_1 ON R_S_P.ProductCode = StuffCoding_1.c_StuffCode');
    SQL.Add('INNER JOIN CustomersGroup AS CustomersGroup_1 ON Customers_1.CustomerGrpID = CustomersGroup_1.CustomerGrpID');
    SQL.Add(' LEFT OUTER JOIN Zone ON Customers_1.CityCode = Zone.ShahrCode');

    SQL.Add('LEFT JOIN LookUps AS ProductModelS ON R_S_P.ProductModel = ProductModelS.LookUpID');
    SQL.Add('LEFT OUTER JOIN Stores AS Stores_2 ON R_S_P.StoreID2 = Stores_2.n_StoreID');

    SQL.Add('LEFT OUTER JOIN AllDeficits_ForRecipts ON R_S_P.ReciptID = AllDeficits_ForRecipts.ReciptID');
    SQL.Add('AND AllDeficits_ForRecipts.ServerID = R_S_P.ServerID AND AllDeficits_ForRecipts.YearID = R_S_P.YearID');
    SQL.Add('INNER JOIN StuffGroups ON StuffCoding.GroupID = StuffGroups.GroupID');

    if chkFactorNumber.Checked then
    begin
      SQL.Add('LEFT OUTER JOIN');
      SQL.Add('(SELECT Recipts.ParentReciptID, Recipts.ReciptID, Recipts.ReciptNumber, Recipts.ServerID, Recipts.YearID');
      SQL.Add('FROM ReciptTypes1 INNER JOIN');
      SQL.Add('Recipts ON ReciptTypes1.ReciptType = Recipts.ReciptType');
      SQL.Add('WHERE (len(ReciptTypes1.RecallReciptTypes)>0 )) R2 ON R_S_P.ReciptID = R2.ParentReciptID');
      SQL.Add('AND R2.ServerID = R_S_P.ServerID AND R2.YearID = R_S_P.YearID');
    end;

  end;
end;

procedure TRptOperationalF.AddWhereSQL(qry: TADOQuery);
var
  s: string;
begin
  with qry do
  begin
    SQL.Add('WHERE ');
    // SQL.Add(Format('(R_S_P.ReciptType IN ( %s ) )', [(FormType)]));
    s := 'R_S_P.ReciptType = ' + ReplaceStr(FormType, ',',
      ' or R_S_P.ReciptType =');
    SQL.Add('(' + s + ')');

    SQL.Add('AND(R_S_P.StoreID BETWEEN :StoreFrom AND :StoreTo )');
    SQL.Add('AND(R_S_P.ReciptNumber BETWEEN :NumberFrom AND :NumberTo )');
    SQL.Add('AND(R_S_P.ReciptDate BETWEEN :DateFrom AND :DateTo )');
    SQL.Add('AND(R_S_P.StuffCode BETWEEN :StuffCodeFrom AND :StuffCodeTo )');
    SQL.Add('AND(R_S_P.YearID BETWEEN :YearIDFrom AND :YearIDTo )');
    SQL.Add('AND(R_S_P.ReciptState BETWEEN :ReciptStateFrom AND :ReciptStateTo )');
    SQL.Add('AND(R_S_P.Code BETWEEN :SecondTypeFrom AND :SecondTypeTo )');
    SQL.Add('AND(R_S_P.ProductCode BETWEEN :ProductCodeFrom AND :ProductCodeTo )');
    SQL.Add('AND(R_S_P.SellsEmporium BETWEEN :SellsEmporiumFrom AND :SellsEmporiumTo )');

    if ((opt.ConfigSettings and Integer(chkTruckNumberFilterInrRptOper)) <> 0)
    then
      SQL.Add('And(R_S_P.TruckNumber BetWeen :TruckNumberFrom and :TruckNumberTo)');
    SQL.Add('AND(StuffGroups.GroupID BETWEEN :StuffGroupIDFrom AND :StuffGroupIDTo)');

    if opt.ChkUsersCustomersGroupsActive then
    begin
      SQL.Add('AND(dbo.ChkUsersCustomersGroups( :UserAdmin , :UserID , R_S_P.PersonID1 ) = 1)');
      Parameters.ParamByName('UserAdmin').Value := ifthen(User.PowerUser, 1, 0);
      Parameters.ParamByName('UserID').Value := User.id;
    end;

  end;
end;

procedure TRptOperationalF.AllC_l_i_c_k_Click(Sender: TObject);
begin
  inherited;
  case (Sender as TMenuItem).Tag of
    0:
      begin
        pdbplnMaster.RangeBegin := rbCurrentRecord;
        pdbplnMaster.RangeEnd := reCurrentRecord;
      end;
    1:
      begin
        pdbplnMaster.RangeBegin := rbFirstRecord;
        pdbplnMaster.RangeEnd := reLastRecord;
      end;
  end;

  try
    qryMaster.DisableControls;
    qryRecipts.DisableControls;
    SeletedPrint(pdbplnItem, DBGrid1);
    InitReportFile(ppReport1, 'RptOperational' + IntToStr(MasterSelect), True);
  finally
    qryRecipts.EnableControls;
    qryMaster.EnableControls;
  end;
end;

procedure TRptOperationalF.chkSumClick(Sender: TObject);
begin
  inherited;
  if chkSum.Checked then
    DBGrid1.SetFooter4Sum([])
  else
    DBGrid1.SumList.Active := False
end;

procedure TRptOperationalF.UpdateList;
var
  MasterSelect: Integer;
  b: Boolean;
begin
  InitForm;
  PriceOnStoreType(GetcFrom(myParams.ParamValues['StoreID'], ftInteger),
    DBGrid1, qryRecipts);

  with qryRecipts Do
  begin
    Active := False;
    SQL.Text := 'SELECT R_S_P.ReciptCaption, R_S_P.ReciptNumber, ';
    SQL.Add('R_S_P.TAXID,R_S_P.IRTAXID,');
    SQL.Add('R_S_P.ReciptDate, R_S_P.StuffCode,StuffCoding.VendorBarcode, StuffCoding.c_StuffName,StuffCoding.c_StuffTecInfo,StuffCoding.sd7,');
    SQL.Add('R_S_P.PersonID1, R_S_P.ProductCode, StuffCoding_1.c_StuffName AS ProductName ,Customers_1.CustName AS CustName1, Customers_1.Mobile,');
    SQL.Add('R_S_P.PersonID2,R_S_P.GroupName,');
    SQL.Add('Customers_2.CustName AS CustName2, R_S_P.PersonID3, Customers_3.CustName AS CustName3,');
    SQL.Add('R_S_P.PersonID4, Customers_4.CustName AS CustName4,');
    SQL.Add('R_S_P.PersonID5, Customers_5.CustName AS CustName5,');
    SQL.Add('R_S_P.InputEntity , R_S_P.OutputEntity ,');
    SQL.Add('R_S_P.InputWeight , R_S_P.OutputWeight , R_S_P.UnitSellPrice,');
    SQL.Add('R_S_P.WaterCo , R_S_P.DeficitValue1, R_S_P.DeficitValue2, R_S_P.DeficitValue3, R_S_P.DeficitValue4, R_S_P.DeficitValue');
    SQL.Add(', R_S_P.TaxCo, R_S_P.TaxValue, R_S_P.Portage,R_S_P.ArzPortage');
    SQL.Add(',CurrencyDiscounts,R_S_P.sd1,R_S_P.Tierced');

    // SQL.Add('R_S_P.TotalInputPrice + R_S_P.TotalOutputPrice AS TotalPrice,');
    SQL.Add(',R_S_P.TotalInputPrice , R_S_P.TotalOutputPrice ,');
    SQL.Add('R_S_P.TotalInputPrice1 , R_S_P.TotalOutputPrice1 ,');
    SQL.Add('AllDeficits_ForRecipts.DeficitAdd_Dec , ');

    SQL.Add('R_S_P.StoreID, Stores.c_StoreName, R_S_P.StoreID2,Stores_2.c_StoreName AS c_StoreName2,');
    SQL.Add('R_S_P.AidNumber, R_S_P.AidDate,R_S_P.AidNumber AS AidNumberM, R_S_P.AidDate AS AidDateM, R_S_P.AidNumberD, R_S_P.AidDateD,');
    SQL.Add('R_S_P.PersonID1D, Customers_D.CustName AS CustNameD, R_S_P.DocNo, R_S_P.DocDate,');
    SQL.Add('R_S_P.ReciptNote, R_S_P.ReciptID, R_S_P.YearID, R_S_P.ServerID,');
    SQL.Add('R_S_P.TotallSellPriceBase AS TotallSellPrice, R_S_P.ReciptState, R_S_P.MachineName AS MachineNameM, R_S_P.MachineNo AS MachineNoM,');
    SQL.Add('R_S_P.MachineInfo, R_S_P.TruckNumber, R_S_P.Code, R_S_P.TransFormID');
    SQL.Add(',Customers_1.City, Zone.Shahr, Zone.Ostan, UnitName');
    SQL.Add(',R_S_P.MachineNoD,R_S_P.MachineNameD ,R_S_P.acc_TopicCodeD ,R_S_P.acc_DetailCodeD,R_S_P.acc_CTopicCodeD');

    if chkFastSQL.Checked then
      SQL.Add(',dbo.GetParentForm(R_S_P.StuffCode,R_S_P.preReciptItemID,R_S_P.ReciptItemID,R_S_P.YearID) AS ParentForm')
    else
      SQL.Add(','''' AS ParentForm');

    if chkFactorNumber.Checked then
      SQL.Add(', R2.ReciptNumber FactorNumber')
    else
      SQL.Add(', NULL FactorNumber');

    setColumns2(DBGrid1, chkFactorNumber.Checked, 'FactorNumber');

    SQL.Add(',Customers_1.CustomerGrpID, CustomersGroup_1.CustomerGrpName');
    SQL.Add(',cast( R_S_P.ProductModel as bigint) AS ProductModel, ProductModelS.Name AS ProductModelName , R_S_P.SecondTypeName');
    SQL.Add(', R_S_P.SellsMethod,R_S_P.SellsMethodName, R_S_P.SellsEmporium, R_S_P.SellsEmporiumName,R_S_P.ItemNote');
    SQL.Add(',R_S_P.ArzTypeID ,R_S_P.CurrenciesName ,R_S_P.ArzRate,R_S_P.ArzAmount');
    SQL.Add(',R_S_P.RialsEqual,R_S_P.Commission , SecondTypeNameItem');
    SQL.Add(',case when R_S_P.DiagnosisCalcTotalPrice = 0 then (R_S_P.InputEntity+R_S_P.OutputEntity)*R_S_P.Commission ');
    SQL.Add('else (R_S_P.InputWeight+R_S_P.OutputWeight)*R_S_P.Commission end as CommissionCo,R_S_P.ControlCode');
    SQL.Add(',R_S_P.acc_CTopicCode,R_S_P.acc_CTopicCode2,R_S_P.acc_CTopicCode3');
    SQL.Add(',R_S_P.RIDateMS,R_S_P.RIDateME');
    SQL.Add(', R_S_P.UnitCommission, R_S_P.TotallCommission');
    SQL.Add(',R_S_P.StuffSize,R_S_P.StuffDiameter,R_S_P.StuffAlloy ,R_S_P.UseUnitID,R_S_P.UseUnitName');
    SQL.Add(' ,R_S_P.UseOtherID_Item,R_S_P.UseOtherName');
    SQL.Add(', R_S_P.FirstUser, R_S_P.LastUser, R_S_P.InsertDate, R_S_P.ModifyDate, R_S_P.ExpireDate,R_S_P.ItemDate,R_S_P.InvoiceTemplateName');
    SQL.Add(', R_S_P.NationalStuffCode , R_S_P.RequestedWeight');

    // SQL.Add(',R_S_P.acc_TopicCodeD, R_S_P.acc_DetailCodeD, R_S_P.acc_CTopicCodeD');

    AddFromSQL(qryRecipts);
    AddWhereSQL(qryRecipts);

  end;
  MasterSelect := GetcFrom(myParams.ParamValues['MasterSelect'], ftInteger);
  grpMaster.Visible := MasterSelect > 0;

  if grpMaster.Visible then
    with qryMaster do
    begin
      Active := False;
      SQL.Text := 'SELECT DISTINCT';
      case MasterSelect of
        1:
          begin
            SQL.Add('R_S_P.StuffCode AS MasterCode,StuffCoding.c_StuffName AS Name');
            qryRecipts.SQL.Add('AND(R_S_P.StuffCode = :MasterCode)');
            grpMaster.Caption := qryReciptsStuffCode.DisplayLabel;
          end;
        2:
          begin
            SQL.Add('isnull(R_S_P.ProductCode,0) AS MasterCode,StuffCoding_1.c_StuffName AS Name');
            qryRecipts.SQL.Add
              ('AND(isnull(R_S_P.ProductCode,0) = :MasterCode)');
            grpMaster.Caption := qryReciptsProductCode.DisplayLabel;
          end;

        3:
          begin
            SQL.Add('R_S_P.PersonID1 AS MasterCode,Customers_1.CustName AS Name');
            qryRecipts.SQL.Add('AND(R_S_P.PersonID1 = :MasterCode)');
            grpMaster.Caption := qryReciptsPersonID1.DisplayLabel;
          end;
        4:
          begin
            SQL.Add('R_S_P.PersonID2 AS MasterCode,Customers_2.CustName AS Name');
            qryRecipts.SQL.Add('AND(R_S_P.PersonID2 = :MasterCode)');
            grpMaster.Caption := qryReciptsPersonID2.DisplayLabel;
          end;

        5:
          begin
            SQL.Add('R_S_P.PersonID3 AS MasterCode,Customers_3.CustName AS Name');
            qryRecipts.SQL.Add('AND(R_S_P.PersonID3 = :MasterCode)');
            grpMaster.Caption := qryReciptsPersonID3.DisplayLabel;
          end;

        6:
          begin
            SQL.Add('R_S_P.PersonID4 AS MasterCode,Customers_4.CustName AS Name');
            qryRecipts.SQL.Add('AND(R_S_P.PersonID4 = :MasterCode)');
            grpMaster.Caption := qryReciptsPersonID4.DisplayLabel;
          end;

        7:
          begin
            SQL.Add('R_S_P.PersonID1D AS MasterCode,Customers_D.CustName AS Name');
            qryRecipts.SQL.Add('AND(R_S_P.PersonID1D = :MasterCode)');
            grpMaster.Caption := qryReciptsPersonID1D.DisplayLabel;
          end;

        8:
          begin
            SQL.Add('R_S_P.PersonID5 AS MasterCode,Customers_5.CustName AS Name');
            qryRecipts.SQL.Add('AND(R_S_P.PersonID5 = :MasterCode)');
            grpMaster.Caption := qryReciptsPersonID5.DisplayLabel;
          end;

      end;

      b := MasterSelect <> 1;
      setColumns2(DBGrid1, b, 'StuffCode');
      setColumns2(DBGrid1, b, 'c_StuffName');

      b := (MasterSelect <> 2);

      setColumns2(DBGrid1, b, 'ProductCode');
      setColumns2(DBGrid1, b, 'ProductName');

      b := (MasterSelect <> 3) and
        (qryInitQry.FieldByName('Person1Active').AsInteger = 1);
      setColumns2(DBGrid1, b, 'PersonID1');
      setColumns2(DBGrid1, b, 'CustName1');

      b := (MasterSelect <> 4) and
        (qryInitQry.FieldByName('Person2Active').AsInteger = 1);
      setColumns2(DBGrid1, b, 'PersonID2');
      setColumns2(DBGrid1, b, 'CustName2');

      b := (MasterSelect <> 5) and
        (qryInitQry.FieldByName('Person3Active').AsInteger = 1);
      setColumns2(DBGrid1, b, 'PersonID3');
      setColumns2(DBGrid1, b, 'CustName3');

      b := (MasterSelect <> 6) and
        (qryInitQry.FieldByName('Person4Active').AsInteger = 1);
      setColumns2(DBGrid1, b, 'PersonID4');
      setColumns2(DBGrid1, b, 'CustName4');

      b := (MasterSelect <> 7) and
        (qryInitQry.FieldByName('PersonID1OnDetailActive').AsInteger < 1);
      setColumns2(DBGrid1, b, 'PersonID1D');
      setColumns2(DBGrid1, b, 'CustNameD');

      b := (MasterSelect <> 8) and
        (qryInitQry.FieldByName('Person5Active').AsInteger = 1);
      setColumns2(DBGrid1, b, 'PersonID5');
      setColumns2(DBGrid1, b, 'CustName5');

      setColumns2(DBGrid1, opt.StuffTecInfoActive, 'c_StuffTecInfo');

      AddFromSQL(qryMaster);
      AddWhereSQL(qryMaster);

      pdbplnItem.MasterDataPipeline := pdbplnMaster;
      ppReport1.DataPipeline := pdbplnMaster;
    end
  else
  begin
    pdbplnItem.MasterDataPipeline := nil;
    ppReport1.DataPipeline := pdbplnItem;
  end;

  b := qryInitQry.FieldByName('MachineActive').AsInteger in [1, 3];
  setColumns2(DBGrid1, b, 'MachineNameM');
  setColumns2(DBGrid1, b, 'MachineNoM');
  setColumns2(DBGrid1, b, 'MachineInfo');
  setColumns2(DBGrid1, b, 'TruckNumber');

  with qryRecipts Do
  begin

    if ((opt.ConfigSettings and Integer(chkTruckNumberFilterInrRptOper)) <> 0)
    then
    begin
      Parameters.ParamByName('TruckNumberFrom').Value :=
        GetcFrom(myParams.ParamValues['TruckNumber'], ftString);

      Parameters.ParamByName('TruckNumberTo').Value :=
        GetcTo(myParams.ParamValues['TruckNumber'], ftString);
    end;

    Parameters.ParamByName('StuffCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['StuffCode'], ftLargeint);
    Parameters.ParamByName('StuffCodeTo').Value :=
      GetcTo(myParams.ParamValues['StuffCode'], ftLargeint);
    Parameters.ParamByName('ProductCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['Product'], ftLargeint);
    Parameters.ParamByName('ProductCodeTo').Value :=
      GetcTo(myParams.ParamValues['Product'], ftLargeint);

    Parameters.ParamByName('StoreFrom').Value :=
      GetcFrom(myParams.ParamValues['storeId'], ftInteger);
    Parameters.ParamByName('StoreTo').Value :=
      GetcTo(myParams.ParamValues['storeId'], ftInteger);
    Parameters.ParamByName('numberFrom').Value :=
      GetcFrom(myParams.ParamValues['number'], ftInteger);
    Parameters.ParamByName('numberto').Value :=
      GetcTo(myParams.ParamValues['number'], ftInteger);
    Parameters.ParamByName('SecondTypeFrom').Value :=
      GetcFrom(myParams.ParamValues['SecondType'], ftInteger);
    Parameters.ParamByName('SecondTypeto').Value :=
      GetcTo(myParams.ParamValues['SecondType'], ftInteger);

    if qryInitQry.FieldByName('Person1Active').AsInteger = 1 then
    begin
      SQL.Add('AND(R_S_P.PersonID1 BETWEEN :PersonID1From AND :PersonID1To )');
      Parameters.ParamByName('PersonID1From').Value :=
        GetcFrom(myParams.ParamValues['PersonID1'], ftInteger);
      Parameters.ParamByName('PersonID1To').Value :=
        GetcTo(myParams.ParamValues['PersonID1'], ftInteger);
    end;

    if qryInitQry.FieldByName('Person2Active').AsInteger = 1 then
    begin
      SQL.Add('AND(R_S_P.PersonID2 BETWEEN :PersonID2From AND :PersonID2To)');
      Parameters.ParamByName('PersonID2From').Value :=
        GetcFrom(myParams.ParamValues['PersonID2'], ftInteger);
      Parameters.ParamByName('PersonID2To').Value :=
        GetcTo(myParams.ParamValues['PersonID2'], ftInteger);
    end;

    if qryInitQry.FieldByName('Person3Active').AsInteger = 1 then
    begin
      SQL.Add('AND(R_S_P.PersonID3 BETWEEN :PersonID3From AND :PersonID3To)');
      Parameters.ParamByName('PersonID3From').Value :=
        GetcFrom(myParams.ParamValues['PersonID3'], ftInteger);
      Parameters.ParamByName('PersonID3To').Value :=
        GetcTo(myParams.ParamValues['PersonID3'], ftInteger);
    end;

    if qryInitQry.FieldByName('Person4Active').AsInteger = 1 then
    begin
      SQL.Add('AND(R_S_P.PersonID4 BETWEEN :PersonID4From AND :PersonID4To)');
      Parameters.ParamByName('PersonID4From').Value :=
        GetcFrom(myParams.ParamValues['PersonID4'], ftInteger);
      Parameters.ParamByName('PersonID4To').Value :=
        GetcTo(myParams.ParamValues['PersonID4'], ftInteger);
    end;

    if qryInitQry.FieldByName('Person5Active').AsInteger = 1 then
    begin
      SQL.Add('AND(R_S_P.PersonID5 BETWEEN :PersonID5From AND :PersonID5To)');
      Parameters.ParamByName('PersonID5From').Value :=
        GetcFrom(myParams.ParamValues['PersonID5'], ftInteger);
      Parameters.ParamByName('PersonID5To').Value :=
        GetcTo(myParams.ParamValues['PersonID5'], ftInteger);
    end;

    if qryInitQry.FieldByName('PersonID1OnDetailActive').AsInteger < 4 then
    begin
      SQL.Add('AND(R_S_P.PersonID1D BETWEEN :PersonID1DFrom AND :PersonID1DTo)');
      Parameters.ParamByName('PersonID1DFrom').Value :=
        GetcFrom(myParams.ParamValues['PersonID1D'], ftInteger);
      Parameters.ParamByName('PersonID1DTo').Value :=
        GetcTo(myParams.ParamValues['PersonID1D'], ftInteger);
    end;

    SQL.Add('AND ((ISNULL(R_S_P.AidDate, '''') = '''') OR (R_S_P.AidDate = ''/  /'') OR (R_S_P.AidDate BETWEEN :AidDateFrom AND :AidDateTo))');
    Parameters.ParamByName('AidDateFrom').Value :=
      GetcFrom(myParams.ParamValues['AidDate'], ftDate);
    Parameters.ParamByName('AidDateTo').Value :=
      GetcTo(myParams.ParamValues['AidDate'], ftDate);

    Parameters.ParamByName('DateFrom').Value :=
      GetcFrom(myParams.ParamValues['ReciptDate'], ftDate);
    Parameters.ParamByName('DateTo').Value :=
      GetcTo(myParams.ParamValues['ReciptDate'], ftDate);

    Parameters.ParamByName('YearIDFrom').Value :=
      GetcFrom(myParams.ParamValues['YearID'], ftInteger);
    Parameters.ParamByName('YearIDTo').Value :=
      GetcTo(myParams.ParamValues['YearID'], ftInteger);

    Parameters.ParamByName('ReciptStateFrom').Value :=
      GetcFrom(myParams.ParamValues['State'], ftInteger);
    Parameters.ParamByName('ReciptStateTo').Value :=
      GetcTo(myParams.ParamValues['State'], ftInteger);

    Parameters.ParamByName('SellsEmporiumFrom').Value :=
      GetcFrom(myParams.ParamValues['SellsEmporium'], ftInteger);
    Parameters.ParamByName('SellsEmporiumTo').Value :=
      GetcTo(myParams.ParamValues['SellsEmporium'], ftInteger);

    Parameters.ParamByName('StuffGroupIDFrom').Value :=
      GetcFrom(myParams.ParamValues['StuffGroupID'], ftInteger);
    Parameters.ParamByName('StuffGroupIDTo').Value :=
      GetcTo(myParams.ParamValues['StuffGroupID'], ftInteger);

    // ShowQryParam(qryRecipts);
    Active := not grpMaster.Visible;
  end;

  if grpMaster.Visible then
    with qryMaster do
    begin
      Active := False;
      Parameters.AssignValues(qryRecipts.Parameters);
      Active := True;
    end;
  myMdiChildrenTabs.Tabs[myMdiChildrenTabs.TabIndex] :=
    RightStr(Caption, 25) + '...';

end;

procedure TRptOperationalF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('number') = nil then
    Close;
end;

procedure TRptOperationalF.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TRptOperationalF.actShowFormExecute(Sender: TObject);
begin
  inherited;
  ShowReciptTypes(qryRecipts, Self);
end;

procedure TRptOperationalF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryRecipts);
end;

procedure TRptOperationalF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryRecipts);
end;

procedure TRptOperationalF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  actShowForm.Execute
end;

procedure TRptOperationalF.FormCreate(Sender: TObject);
var
  i: Integer;
  ts: TStringList;
begin
  inherited;
  case mdiMainF.MainFrame.GetActiveIndex of
    1:
      begin
        Caption := Caption + ' فروش';
        ReciptType := '12'
      end;
  else
    begin
      Caption := Caption + ' انبار';
      ReciptType := '9,11'
    end;
  end;
  with qryInitQry do
  begin
    Active := False;
    SQL.Text := 'SELECT * from ReciptTypes';
    SQL.Add('WHERE ReciptType IN(%s)');
    SQL.Text := Format(SQL.Text, [(ReciptType)]);
    Active := True;

    ts := TStringList.Create;
    ts.Text := qryInitQry.FieldByName('LabelCaptions').AsString;
    for i := 0 to ts.Count - 1 do
    begin
      if qryRecipts.FindField(ts.KeyNames[i]) <> nil then
        qryRecipts.FieldByName(ts.KeyNames[i]).DisplayLabel :=
          ts.ValueFromIndex[i];
    end;
    ts.Free;

    initOtherFieldCaptions(qryInitQry, qryRecipts, qryRecipts);

    Caption := FieldByName('ReciptCaption').AsString;
    // LblShowLimitPlace1.Caption := Caption;
    // LblCaption.Caption := Caption;

    qryRecipts.FieldByName('PersonID1').DisplayLabel := ' كد ' +
      FieldByName('Person1Caption').AsString;
    qryRecipts.FieldByName('CustName1').DisplayLabel := 'نام ' +
      FieldByName('Person1Caption').AsString;
    qryRecipts.FieldByName('PersonID2').DisplayLabel := ' كد ' +
      FieldByName('Person2Caption').AsString;
    qryRecipts.FieldByName('CustName2').DisplayLabel := 'نام ' +
      FieldByName('Person2Caption').AsString;

    qryRecipts.FieldByName('PersonID3').DisplayLabel := ' كد ' +
      FieldByName('Person3Caption').AsString;
    qryRecipts.FieldByName('CustName3').DisplayLabel := 'نام ' +
      FieldByName('Person3Caption').AsString;

    qryRecipts.FieldByName('PersonID4').DisplayLabel := ' كد ' +
      FieldByName('Person4Caption').AsString;
    qryRecipts.FieldByName('CustName4').DisplayLabel := 'نام ' +
      FieldByName('Person4Caption').AsString;

    qryRecipts.FieldByName('PersonID5').DisplayLabel := ' كد ' +
      FieldByName('Person5Caption').AsString;
    qryRecipts.FieldByName('CustName5').DisplayLabel := 'نام ' +
      FieldByName('Person5Caption').AsString;

    qryRecipts.FieldByName('PersonID1D').DisplayLabel := ' كد ' +
      FieldByName('Person2DetailCaption').AsString;
    qryRecipts.FieldByName('CustNameD').DisplayLabel := 'نام ' +
      FieldByName('Person2DetailCaption').AsString;

    if FieldByName('Section2CaptionWeight').AsString <> EmptyStr then
      qryRecipts.FieldByName('RequestedWeight').DisplayLabel :=
        FieldByName('Section2CaptionWeight').AsString;

  end;
  qryReciptssd1.DisplayLabel := opt.ExtraCoding.Captions[1];
end;

procedure TRptOperationalF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TRptOperationalF.PPLblDateGetText(Sender: TObject; var Text: string);
begin
  inherited;
  Text := 'از تاریخ ' + GetcFrom(myParams.ParamValues['ReciptDate'], ftDate) +
    ' تا ' + GetcTo(myParams.ParamValues['ReciptDate'], ftDate)

end;

procedure TRptOperationalF.ppSysVarPageNumberGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TRptOperationalF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate
end;

procedure TRptOperationalF.ppLblFormNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := Text + Caption
end;

procedure TRptOperationalF.actPrintExecute(Sender: TObject);
begin
  inherited;
  if MasterSelect > 0 then
    PopMenu.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y)
  else
    AllC_l_i_c_k_.Click
end;

procedure TRptOperationalF.ppSysVarPageNumGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TRptOperationalF.qryMasterAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryRecipts do
  begin
    Active := False;
    Parameters.ParamByName('MasterCode').Value :=
      qryMaster.FieldByName('MasterCode').AsLargeInt;
    Active := True;
  end;
end;

procedure TRptOperationalF.sbtnMasterClick(Sender: TObject);
var
  b: Boolean;
  Results: array [0 .. 1] of String;
begin
  inherited;
  b := searchCode_ADOF.SearchCode2(qryMaster.Connection, grpMaster.Caption,
    ShowQryParam(qryMaster, True), ['کد', 'مشخصات '], Results,
    [50, 150], alLeft);
  if b then
  begin
    qryMaster.Locate('MasterCode', Results[0], [loPartialKey]);
  end;
end;

procedure TRptOperationalF.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (HiWord(GetKeyState(VK_RIGHT)) <> 0) or (HiWord(GetKeyState(VK_LEFT)) <> 0)
  then
    DBGrid1.Options := DBGrid1.Options - [dgRowSelect, dgMultiSelect]
  else
    DBGrid1.Options := DBGrid1.Options + [dgRowSelect, dgMultiSelect];
end;

procedure TRptOperationalF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryReciptsReciptNumber);
end;

procedure TRptOperationalF.actPrintVijehExecute(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, 0);
end;

procedure TRptOperationalF.qryReciptsReciptStateGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text := GetReciptState(qryRecipts.FieldByName('ReciptState').AsInteger)
end;

procedure TRptOperationalF.ppSysVarPageNoGetText(Sender: TObject;
  var Text: String);
begin
  Text := GetPageNumberString(Text)
end;

procedure TRptOperationalF.ppLblCaptionGetText(Sender: TObject;
  var Text: String);
begin
  Text := LblShowLimitPlace1.Caption;
end;

end.
