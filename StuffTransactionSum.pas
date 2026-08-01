unit StuffTransactionSum;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, DBCtrls, Mask, ppBands, ppCtrls, Math, ReciptsFunctions,
  ppVar, ppPrnabl, ppClass, ppCache, ppProd, ppReport, ppDB, ppComm,
  ppRelatv, ppDBPipe, ComCtrls, Menus, ppParameter, FormFunctions,
  Filter_ADO_Const, ppDesignLayer, System.ImageList, System.Actions,
  FarsiReportBuilde, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid;

type
  THackGrid = class(TCedarDbgrid);

  TStuffTransactionSumF = class(Ttemplate2MDIF)
    qryTransAction: TADOQuery;
    srcTransAction: TDataSource;
    actSort: TAction;
    actPrint: TAction;
    actSendToExcel: TAction;
    actFilter: TAction;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    ppDBPipeline1: TppDBPipeline;
    ppRptAllprint1: TppReport;
    PopMnuPrint: TPopupMenu;
    rptStuffTransactionSumprice1: TMenuItem;
    rptStuffTransactionpriceSum2: TMenuItem;
    actPrintVijeh: TAction;
    BitBtn6: TBitBtn;
    rptStuffTransactionpriceSum4: TMenuItem;
    BitBtn7: TBitBtn;
    actShow: TAction;
    StuffTransactionSumFBahayeTamamshode: TMenuItem;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppDetailBand1: TppDetailBand;
    ppLineDetail: TppLine;
    ppLin4Position: TppLine;
    ppFooterBand1: TppFooterBand;
    ppShape2: TppShape;
    ppLabel4: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppShape3: TppShape;
    ppLabel2: TppLabel;
    ppLblCompanyName: TppLabel;
    ppLabel1: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable1: TppSystemVariable;
    ppLabel10: TppLabel;
    rptStuffTransactionpriceSum3: TMenuItem;
    pnlLblLimitPlace: TPanel;
    RadioGroup1: TRadioGroup;
    lblLimit: TLabel;
    DBGrid1: TCedarDbgrid;
    chkEntity: TCheckBox;
    qryTransActionStuffCode: TLargeintField;
    qryTransActionc_StuffName: TStringField;
    qryTransActionc_StuffTecInfo: TStringField;
    qryTransActionc_KeepPlace: TStringField;
    qryTransActionCabinet: TWideStringField;
    qryTransActionUnitName: TStringField;
    qryTransActionFirstEntity: TFloatField;
    qryTransActionFirstWeight: TFloatField;
    qryTransActionFirstPrice: TBCDField;
    qryTransActionFirstUnitSellPrice: TFloatField;
    qryTransActionFirstSellPrice: TFMTBCDField;
    qryTransActionAddEntity: TFloatField;
    qryTransActionAddWeight: TFloatField;
    qryTransActionAddUnitSellPrice: TFloatField;
    qryTransActionAddPrice: TBCDField;
    qryTransActionAddSellPrice: TFMTBCDField;
    qryTransActionDecEntity: TFloatField;
    qryTransActionDecWeight: TFloatField;
    qryTransActionDecUnitSellPrice: TFloatField;
    qryTransActionDecPrice: TFMTBCDField;
    qryTransActionDecSellPrice: TFMTBCDField;
    qryTransActionInvEntity: TFloatField;
    qryTransActionInvWeight: TFloatField;
    qryTransActionInvUnitSellPrice: TFloatField;
    qryTransActionInvPrice: TBCDField;
    qryTransActionInvSellPrice: TFMTBCDField;
    qryTransActionReciptType: TWordField;
    qryTransActionReciptCaption: TStringField;
    qryTransActionStoreID: TSmallintField;
    qryTransActionc_StoreName: TStringField;
    qryTransActionn_ValuationType: TSmallintField;
    qryTransActionpadidAvarandehName: TStringField;
    qryTransActionPureSell: TBCDField;
    qryTransActionsd1: TStringField;
    qryTransActionsd2: TStringField;
    qryTransActionsd3: TStringField;
    qryTransActionsd4: TStringField;
    qryTransActionsd5: TStringField;
    qryTransActionsd6: TStringField;
    qryTransActionsd7: TStringField;
    qryTransActionsd8: TStringField;
    qryTransActionsd9: TStringField;
    qryTransActionKeepPlace: TStringField;
    qryTransActionCabinets: TStringField;
    procedure actFilterExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure qryStoreAfterScroll(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable2GetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable1GetText(Sender: TObject; var Text: String);
    procedure actPrintExecute(Sender: TObject);
    procedure ppLabel10GetText(Sender: TObject; var Text: String);
    procedure FormCreate(Sender: TObject);
    procedure AllMenuItemClick(Sender: TObject);
    procedure actPrintVijehExecute(Sender: TObject);
    procedure actShowExecute(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure chkEntityClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure DBGrid1Exit(Sender: TObject);
  private
    // OrginalSQL: String;
    PriceVisible: Boolean;
    P3ActAdd: TPerson3ActiveAdd;
    { Private declarations }
    Procedure UpdateFilter;
    function LocateNewconst(StuffCode: Largeint): Boolean;
  public
    procedure Enter(StoreID: Integer; StuffCode: Largeint);
    { Public declarations }
  end;

var
  StuffTransactionSumF: TStuffTransactionSumF;

implementation

uses DM, filter_ADO, FilterClass_ADO, GlobalPro, search2, sort2, DBGrid2Print,
  searchCode_ADO, main, RptCardex, FaraConsts;

{$R *.dfm}

procedure TStuffTransactionSumF.Enter(StoreID: Integer; StuffCode: Largeint);
begin
  try
    Var_glb_NoFilter := True;
    CreateMDIForm2(TStuffTransactionSumF, StuffTransactionSumF, mainF);
    if (StuffTransactionSumF.qryTransAction.Active) then
      if (not LocateNewconst(StuffCode)) then
        Warn('ﬂ«·«Ì „Ê—œ ‰Ÿ— Ì«›  ‰‘œ');
  finally
    Var_glb_NoFilter := False;
  end;
end;

function TStuffTransactionSumF.LocateNewconst;
begin
  Result := False;
  With StuffTransactionSumF.qryTransAction do
    try
      DisableControls;
      First;
      while (not Eof) and (not Result) do
      begin
        if FieldByName('StuffCode').AsLargeInt <> StuffCode then
          Next
        else
          Result := True;
      end;
    finally
      EnableControls;
    end;
end;

procedure TStuffTransactionSumF.actFilterExecute(Sender: TObject);
var
  ReciptDate: String;
begin
  inherited;
  With DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'SELECT MAX(ReciptDate) FROM Recipts';
    Active := True;
    ReciptDate := Fields[0].AsString;
    Active := False;
  end;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItemFilter(GetFilter, TFilterSellsEmporium);
      AddItem(DMf.adcBSell, 'SecondType', '‰Ê⁄ «ÿ·«⁄«  ', 'ﬂœ «ÿ·«⁄«  ',
        ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT LookUps.Code as Code, LookUps.Name as Name FROM Recipts ' +
        'INNER JOIN LookUps ON Recipts.SecondType = LookUps.LookUpID ' +
        'GROUP BY Recipts.SecondType, LookUps.Code, LookUps.Name',
        'SELECT 0,999999999');

      // if P3ActAdd.Person3Active then
      // AddItem(DMf.adcBSell, 'PersonID3', P3ActAdd.Person3Caption, 'ﬂœ',
      // ftInteger, dvMinMax, '', '', ciLookup,
      // ' SELECT Customers.CustID, Customers.CustName FROM Customers INNER JOIN CustomersGroup ON '
      // + ' Customers.CustomerGrpID = CustomersGroup.CustomerGrpID WHERE (CustomersGroup.GroupType IN('
      // + P3ActAdd.CustomerKind3 + '))',
      //

      if opt.StuffKindActive then
        AddItem(DMf.adcBSell, 'StuffKindActive', '‰Ê⁄ ﬂ«·«', '', ftUnknown,
          dvDefaults, 'True', '', ciCheck,
          'SELECT  0 as OwnerShipKind,''ﬁÿ⁄Ì''  as OwnerShipKindName FROM  Config union all '
          + 'SELECT  1 as OwnerShipKind,''«„«‰Ì'' as OwnerShipKindName FROM  Config ',
          '');
      AddItem(DMf.adcBSell, 'Date', ' «—ÌŒ ', '» «—ÌŒ', ftDate, dvDefaults,
        ReciptDate, '', ciSingle, '', '');
      AddItem(DMf.adcBSell, 'Store', '«‰»«—', '«‰»«—', ftInteger, dvMinMax, '',
        '', ciLookup, LookupSQL4Store, MinMaxSQL4Store);
      // ' SELECT Recipts.StoreID as StoreID,Stores.c_StoreName as c_StoreName FROM Recipts INNER JOIN '+
      // 'dbo.Stores ON dbo.Recipts.StoreID = dbo.Stores.n_StoreID '+
      // 'GROUP BY dbo.Stores.c_StoreName, dbo.Recipts.StoreID ',
      // 'SELECT Min(StoreID) , Max(StoreID) FROM Recipts');

      AddItemFilter(GetFilter, TFilterStuffCode);
      // AddItem(DMf.adcBSell, 'StuffCode', 'ﬂ«·« ', 'ﬂ«·«', ftLargeint, dvMinMax,
      // '', '', ciLookup,
      // 'SELECT ReciptItems.StuffCode, StuffCoding.c_StuffName FROM StuffCoding INNER JOIN '
      // + 'ReciptItems ON dbo.StuffCoding.c_StuffCode = dbo.ReciptItems.StuffCode '
      // + 'GROUP BY dbo.ReciptItems.StuffCode, dbo.StuffCoding.c_StuffName ',
      // 'SELECT Min(StuffCode), Max(StuffCode) FROM ReciptItems');

      AddItem(DMf.adcBSell, 'GroupID', ' ê—ÊÂ ﬂ«·« ', 'ﬂœ', ftInteger, dvMinMax,
        '', '', ciLookup, 'SELECT  GroupID,GroupName FROM  StuffGroups ',
        'select Min(GroupID),Max(GroupID) From StuffGroups');

      if ((Var_glb_NoFilter) Or (ShowModal = mrOk)) then
      begin
        GetFilterString;
        pnlLblLimitPlace.Hint := GetFilterStringCaption;
        pnlLblLimitPlace.Caption := pnlLblLimitPlace.Hint;
        UpdateFilter;
      end; // if
    finally
      Free;
    end; // try
  end; // with

end;

procedure TStuffTransactionSumF.UpdateFilter;
var
  s: String;
  b: Boolean;
  i: Integer;
begin
  with qryTransAction do
  begin
    Active := False;

    case RadioGroup1.ItemIndex of
      0:
        begin
          SQL.Text :=
            'SELECT 0 as ReciptType, ''Â„Â ›—„Â«'' as ReciptCaption, 0 as StoreID, ''Â„Â «‰»«—Â«'' as c_StoreName, 0 as n_ValuationType,';
          SQL.Add('R.StuffCode, StuffCoding.c_StuffName,StuffCoding.c_StuffTecInfo,');
          SQL.Add('Units.UnitName');
          SQL.Add(', StuffCoding.sd1, StuffCoding.sd2, StuffCoding.sd3, StuffCoding.sd4,');
          SQL.Add('StuffCoding.sd5, StuffCoding.sd6, StuffCoding.sd7, StuffCoding.sd8, StuffCoding.sd9,');
          SQL.Add('StuffCoding.c_KeepPlace,ScF.KeepPlace, ScF.Cabinet Cabinets, StuffCoding.Cabinet,padidAvarandeh.Name AS padidAvarandehName');
        end;
      1:
        begin
          SQL.Text :=
            'SELECT 0 as ReciptType, ''Â„Â ›—„Â«'' as ReciptCaption,R.StoreID, R.c_StoreName, R.n_ValuationType,';
          SQL.Add('CAST( 0 AS Bigint) as StuffCode,  ''Â„Â ò«·«Â«'' as c_StuffName,'''' as c_StuffTecInfo,');
          SQL.Add(''''' as UnitName');
          SQL.Add(', '''' as sd1, '''' as sd2, '''' as sd3, '''' as sd4,');
          SQL.Add(''''' as sd5, '''' as sd6, '''' as sd7, '''' as sd8, '''' as sd9,');
          SQL.Add(''''' as c_KeepPlace, '''' as KeepPlace, '''' as Cabinets, '''' as Cabinet,'''' AS padidAvarandehName');
        end;
      2:
        begin
          SQL.Text :=
            'SELECT R.ReciptType , R.ReciptCaption ,0 as StoreID, ''Â„Â «‰»«—Â«'' as c_StoreName, NULL AS n_ValuationType,';
          SQL.Add('CAST( 0 AS Bigint) as StuffCode,  ''Â„Â ò«·«Â«'' as c_StuffName,'''' as c_StuffTecInfo,');
          SQL.Add(''''' as UnitName');
          SQL.Add(', '''' as sd1, '''' as sd2, '''' as sd3, '''' as sd4,');
          SQL.Add(''''' as sd5, '''' as sd6, '''' as sd7, '''' as sd8, '''' as sd9,');
          SQL.Add(''''' as c_KeepPlace, '''' as KeepPlace, '''' as Cabinets, '''' as Cabinet,'''' AS padidAvarandehName');
        end;
    end;

    SQL.Add(',FirstEntity = sum( case when R.ReciptType between 1 and 3 then round(R.InputEntity');
    SQL.Add('-R.OutputEntity , 3 ) else 0 end) ,');
    SQL.Add('FirstWeight = sum( case when R.ReciptType between 1 and 3 then round');
    SQL.Add('(R.InputWeight - R.OutputWeight ,3) else 0 end) ,');
    SQL.Add('');
    SQL.Add('FirstUnitSellPrice= case when');
    SQL.Add('sum( case when R.ReciptType between 1 and 3 then round(R.In_Entity -');
    SQL.Add('R.Out_Entity , 3 ) else 0 end) <>0');
    SQL.Add('then round(');
    SQL.Add('sum( case when R.ReciptType between 1 and 3 then round(R.TotalInputPrice -');
    SQL.Add('R.TotalOutputPrice ,3 ) else 0 end)');
    SQL.Add('/');
    SQL.Add('sum( case when R.ReciptType between 1 and 3 then round(R.In_Entity -');
    SQL.Add('R.Out_Entity , 3 ) else 0 end)');
    SQL.Add(', 3 ) else 0 end ,');
    SQL.Add('');
    SQL.Add('FirstPrice = sum( case when R.ReciptType between 1 and 3 then round');
    SQL.Add('(R.TotalInputPrice - R.TotalOutputPrice ,3 ) else 0 end) ,');
    SQL.Add('FirstSellPrice = sum( case when (R.ReciptType between 1 and 3 ) then round');
    SQL.Add('(R.TotallsellPrice ,3 )*');
    SQL.Add('(case when R.EffectType =2 then 1 else -1 end ) else 0 end) ,');
    SQL.Add('AddEntity = sum( case when R.ReciptType between 1 and 3 then 0 else round');
    SQL.Add('(R.InputEntity , 3 ) end) ,');
    SQL.Add('AddWeight = sum( case when R.ReciptType between 1 and 3 then 0 else round');
    SQL.Add('(R.InputWeight , 3 ) end) ,');
    SQL.Add('');
    SQL.Add('AddUnitSellPrice= case when');
    SQL.Add('sum( case when R.ReciptType between 1 and 3 then 0 else round(R.In_Entity , 3 )');
    SQL.Add('end) <>0');
    SQL.Add('then round(');
    SQL.Add('sum( case when R.ReciptType between 1 and 3 then 0 else round(R.TotalInputPrice ,');
    SQL.Add('3 ) end)');
    SQL.Add('/');
    SQL.Add('sum( case when R.ReciptType between 1 and 3 then 0 else round(R.In_Entity , 3 )');
    SQL.Add('end)');
    SQL.Add(', 3 ) else 0 end ,');
    SQL.Add('');
    SQL.Add('AddPrice = sum( case when R.ReciptType between 1 and 3 then 0 else round');
    SQL.Add('(R.TotalInputPrice , 3 ) end) ,');
    SQL.Add('AddSellPrice = sum( case when ((R.ReciptType >3 ) and (R.EffectType = 2)) then');
    SQL.Add('round(R.TotallsellPrice , 3 ) else 0 end) ,');
    SQL.Add('');
    SQL.Add('DecEntity = sum( case when R.ReciptType between 1 and 3 then 0 else round');
    SQL.Add('(R.OutputEntity , 3 ) end) ,');
    SQL.Add('DecWeight = sum( case when R.ReciptType between 1 and 3 then 0 else round');
    SQL.Add('(R.OutputWeight , 3 ) end) ,');
    SQL.Add('');
    SQL.Add('DecUnitSellPrice= case when');
    SQL.Add('sum( case when R.ReciptType between 1 and 3 then 0 else round(R.Out_Entity , 3 )');
    SQL.Add('end) <>0');
    SQL.Add('then round(');
    SQL.Add('sum( case when R.ReciptType between 1 and 3 then 0 else round(R.TotalOutputPrice');
    SQL.Add(', 3 ) end)');
    SQL.Add('/');
    SQL.Add('sum( case when R.ReciptType between 1 and 3 then 0 else round(R.Out_Entity , 3 )');
    SQL.Add('end)');
    SQL.Add(', 3 ) else 0 end ,');
    SQL.Add('');
    SQL.Add('DecPrice = sum( case when R.ReciptType between 1 and 3 then 0 else round');
    SQL.Add('(R.TotalOutputPrice , 3 ) end) ,');
    SQL.Add('DecSellPrice = sum( case when (R.EffectType = 4)and (R.ReciptType>3) then round');
    SQL.Add('(R.TotallsellPrice , 3 ) else 0 end) ,');
    SQL.Add('');
    SQL.Add('InvEntity = round(sum (R.InputEntity - R.OutputEntity ), 3 ),');
    SQL.Add('InvWeight = round(sum( round(R.InputWeight - R.OutputWeight , 3 )),3),');
    SQL.Add('');
    SQL.Add('InvUnitSellPrice= case when');
    SQL.Add('round(sum (R.In_Entity - R.Out_Entity ), 3 ) <>0');
    SQL.Add('then round(');
    SQL.Add('round(sum( round(R.TotalInputPrice - R.TotalOutputPrice , 3 )),3)');
    SQL.Add('/');
    SQL.Add('round(sum (R.In_Entity - R.Out_Entity ), 3 )');
    SQL.Add(', 3 ) else 0 end ,');
    SQL.Add('');
    SQL.Add('');
    SQL.Add('InvPrice = round(sum( round(R.TotalInputPrice - R.TotalOutputPrice , 3 )),3) ,');
    SQL.Add('InvSellPrice = round(sum( round((case when R.EffectType = 2 then 1 else -1 end ) *');
    SQL.Add('R.TotallsellPrice , 3 )),3),');
    SQL.Add('');
    SQL.Add('PureSell = SUM(CASE ReciptTypes.BedType WHEN 1 THEN R.TotalInputPrice');
    SQL.Add('+ R.TotalOutputPrice ELSE 0 END) -');
    SQL.Add('SUM(CASE ReciptTypes.BesType WHEN 1 THEN R.TotalInputPrice');
    SQL.Add('+ R.TotalOutputPrice ELSE 0 END)');

    SQL.Add('FROM ReciptItems_Stock AS R INNER JOIN');
    SQL.Add('StuffCoding ON R.StuffCode = StuffCoding.c_StuffCode INNER JOIN');
    SQL.Add('Units ON StuffCoding.n_UnitCode = Units.UnitCode');
    SQL.Add('INNER JOIN Customers AS Customers3 ON R.PersonID3 = Customers3.CustID');
    SQL.Add('');
    SQL.Add('INNER JOIN LookUps ON R.SecondType = LookUps.LookUpID INNER JOIN');
    SQL.Add('ReciptTypes ON R.ReciptType = ReciptTypes.ReciptType LEFT OUTER JOIN');
    SQL.Add('dbo.LookUps4Type(302) AS padidAvarandeh ON StuffCoding.st2 = padidAvarandeh.Code');
    // SQL.Add(' LEFT OUTER JOIN   UsersStore ON R.StoreID = UsersStore.n_StoreID');

    SQL.Add('LEFT OUTER JOIN StuffCodingFacilities ScF ON ScF.StuffCode = R.StuffCode AND ScF.StoreID = R.StoreID');

    SQL.Add('WHERE (R.EffectType in ( 2,4,6,7,8))');
    SQL.Add('AND (R.ReciptDate <= :Date)');

    if opt.StuffKindActive then
      s := GetcFrom(myParams.ParamValues['StuffKindActive'], ftString);
    if s = '' then
      s := '0,1';

    SQL.Add('AND (StuffCoding.OwnerShipKind in (' + s + '))');
    SQL.Add('AND (R.ReciptState < 3)');
    SQL.Add('AND (StuffCoding.GroupID BETWEEN :GroupIDFrom AND :GroupIDTo)');
    SQL.Add('AND (R.yearID between :YearIDFrom And :YearIDTO )');
    SQL.Add('AND (R.StuffCode BETWEEN :StuffCodeFrom AND :StuffCodeTo)');
    // SQL.Add('AND (R.PersonID3 BETWEEN :PersonID3From AND :PersonID3To)');
    SQL.Add('AND (LookUps.Code BETWEEN :SecondTypeFrom AND :SecondTypeTo )');
    // SQL.Add('AND ( (UsersStore.n_UserID = :UserID )or ( :UserIDAdmin = 127))');
    SQL.Add('AND ( R.StoreID BETWEEN :StoreIDFrom AND :StoreIDTo)');
    SQL.Add('AND (R.SellsEmporium BETWEEN :SellsEmporiumFrom AND :SellsEmporiumTo)');

    case RadioGroup1.ItemIndex of
      0:
        begin
          SQL.Add('GROUP BY R.StuffCode');
          SQL.Add(', StuffCoding.c_StuffName,StuffCoding.c_StuffTecInfo,Units.UnitName');
          SQL.Add(', StuffCoding.sd1, StuffCoding.sd2, StuffCoding.sd3, StuffCoding.sd4,');
          SQL.Add('StuffCoding.sd5, StuffCoding.sd6, StuffCoding.sd7, StuffCoding.sd8, StuffCoding.sd9,');
          SQL.Add('StuffCoding.c_KeepPlace, StuffCoding.Cabinet,padidAvarandeh.Name');
          SQL.Add(',ScF.KeepPlace, ScF.Cabinet');
        end;
      1:
        begin
          SQL.Add('GROUP BY  R.StoreID');
          SQL.Add(', R.c_StoreName, R.n_ValuationType');
        end;
      2:
        begin
          SQL.Add('GROUP BY R.ReciptType, R.ReciptCaption');
        end;
    end;

    if chkEntity.Checked then
      SQL.Add('having (round(sum (R.InputEntity - R.OutputEntity ), 3 ) )<>0');

    Parameters.ParamByName('SellsEmporiumFrom').Value :=
      GetcFrom(myParams.ParamValues['SellsEmporium'], ftInteger);
    Parameters.ParamByName('SellsEmporiumTo').Value :=
      GetcTo(myParams.ParamValues['SellsEmporium'], ftInteger);

    Parameters.ParamByName('GroupIDFrom').Value :=
      GetcFrom(myParams.ParamValues['GroupID'], ftInteger);
    Parameters.ParamByName('GroupIDTo').Value :=
      GetcTo(myParams.ParamValues['GroupID'], ftInteger);
    Parameters.ParamByName('StuffCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['StuffCode'], ftLargeint);
    Parameters.ParamByName('StuffCodeTo').Value :=
      GetcTo(myParams.ParamValues['StuffCode'], ftLargeint);
    Parameters.ParamByName('date').Value :=
      GetcFrom(myParams.ParamValues['date'], ftDate);
    Parameters.ParamByName('YearIDFrom').Value := opt.DefaultYear;
    Parameters.ParamByName('YearIDTo').Value := APPBank.Year;

    // if P3ActAdd.Person3Active then
    // begin
    // Parameters.ParamByName('PersonID3From').Value :=
    // GetcFrom(myParams.ParamValues['PersonID3'], ftInteger);
    // Parameters.ParamByName('PersonID3To').Value :=
    // GetcTo(myParams.ParamValues['PersonID3'], ftInteger);
    // end
    // else
    // begin
    // Parameters.ParamByName('PersonID3From').Value := -999999999;
    // Parameters.ParamByName('PersonID3To').Value := 2147483647;
    // end;

    Parameters.ParamByName('SecondTypeFrom').Value :=
      GetcFrom(myParams.ParamValues['SecondType'], ftInteger);
    Parameters.ParamByName('SecondTypeto').Value :=
      GetcTo(myParams.ParamValues['SecondType'], ftInteger);

    Parameters.ParamByName('StoreIDFrom').Value :=
      GetcFrom(myParams.ParamValues['Store'], ftInteger);
    Parameters.ParamByName('StoreIDTo').Value :=
      GetcTo(myParams.ParamValues['Store'], ftInteger);
    // Parameters.ParamByName('UserID').Value := User.id;
    // Parameters.ParamByName('UserIDAdmin').Value :=
    // ifthen(User.PowerUser, 127, User.id);

    Active := True;

    DBGrid1.SetFooter4Sum(['StuffCode']);
    lblLimit.Caption := '«“ ﬂœ ﬂ«·«Ì ' +
      GetcFrom(myParams.ParamValues['StuffCode'], ftLargeint) + '  « ' +
      GetcTo(myParams.ParamValues['StuffCode'], ftLargeint) + '     ' +
      'ê—œ‘ ﬂ«·« » «—ÌŒ : ' + Parameters.ParamValues['date'];

    b := RadioGroup1.ItemIndex = 0;
    setColumns2(DBGrid1, opt.StuffTecInfoActive and b, 'c_StuffTecInfo');
    setColumns2(DBGrid1, (opt.StuffCodingKind = 1) and b, 'padidAvarandehName');

    setColumns2(DBGrid1, b, 'StuffCode');
    setColumns2(DBGrid1, b, 'c_StuffName');
    setColumns2(DBGrid1, b, 'c_KeepPlace');
    setColumns2(DBGrid1, b, 'Cabinet');
    setColumns2(DBGrid1, b, 'KeepPlace');
    setColumns2(DBGrid1, b, 'Cabinets');

    setColumns2(DBGrid1, b, 'UnitName');
    setColumns2(DBGrid1, b, 'padidAvarandehName');
    setColumns2(DBGrid1, b, 'sd1');
    setColumns2(DBGrid1, b, 'sd2');
    setColumns2(DBGrid1, b, 'sd3');
    setColumns2(DBGrid1, b, 'sd4');
    setColumns2(DBGrid1, b, 'sd5');
    setColumns2(DBGrid1, b, 'sd6');
    setColumns2(DBGrid1, b, 'sd7');
    setColumns2(DBGrid1, b, 'sd8');
    setColumns2(DBGrid1, b, 'sd9');

    b := RadioGroup1.ItemIndex = 1;
    setColumns2(DBGrid1, b, 'StoreID');
    setColumns2(DBGrid1, b, 'c_StoreName');

    for i := DBGrid1.Columns.Count - 1 downto 0 do
    begin

      if (DBGrid1.Columns[i].FieldName = 'c_StoreName') then
        DBGrid1.Columns[i].Index := 1;
      if (DBGrid1.Columns[i].FieldName = 'StoreID') then
        DBGrid1.Columns[i].Index := 0;
    end;

    b := RadioGroup1.ItemIndex = 2;
    setColumns2(DBGrid1, b, 'ReciptType');
    setColumns2(DBGrid1, b, 'ReciptCaption');

    // setColumns2(DBGrid1, opt.ActiveSellPrice2, 'FirstSellPrice');
    // setColumns2(DBGrid1, opt.ActiveSellPrice2, 'AddSellPrice');
    // setColumns2(DBGrid1, opt.ActiveSellPrice2, 'DecSellPrice');
    // setColumns2(DBGrid1, opt.ActiveSellPrice2, 'InvSellPrice');
    // setColumns2(DBGrid1, opt.PureSellActive, 'PureSell');

    // qryTransAction.FieldByName('FirstSellPrice').Visible :=
    // opt.ActiveSellPrice2;
    // qryTransAction.FieldByName('AddSellPrice').Visible :=
    // opt.ActiveSellPrice2;
    // qryTransAction.FieldByName('DecSellPrice').Visible :=
    // opt.ActiveSellPrice2;
    // qryTransAction.FieldByName('InvSellPrice').Visible :=
    // opt.ActiveSellPrice2;
    // qryTransAction.FieldByName('PureSell').Visible :=
    // opt.ActiveSellPrice2;
    HideOrShowSellPriceFields(qryTransAction, DBGrid1);

    Entity_Weight(DBGrid1);
    PriceOnStoreType(qryTransActionStoreID.AsInteger, DBGrid1, qryTransAction);
    // DBGrid1.setSizeColDBGrid;
    THackGrid(DBGrid1).DoLoad;

  end;
end;

procedure TStuffTransactionSumF.FormDestroy(Sender: TObject);
begin
  inherited;
  THackGrid(DBGrid1).DoSave;
  P3ActAdd.Free;
end;

procedure TStuffTransactionSumF.FormResize(Sender: TObject);
begin
  inherited;
  // DBGrid1.setSizeColDBGrid;
end;

procedure TStuffTransactionSumF.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TStuffTransactionSumF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryTransAction);
end;

procedure TStuffTransactionSumF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryTransAction);
end;

procedure TStuffTransactionSumF.qryStoreAfterScroll(DataSet: TDataSet);
begin
  inherited;
  PriceVisible := PriceOnStoreType(DataSet.FieldByName('n_StoreID').AsInteger,
    DBGrid1, qryTransAction);
  with qryTransAction do
  begin
    Active := False;
    Parameters.ParamByName('StorIDPA').Value := DataSet.FieldByName('n_StoreID')
      .AsInteger;
    Active := True;
  end; // with
end;

procedure TStuffTransactionSumF.RadioGroup1Click(Sender: TObject);
begin
  inherited;
  THackGrid(DBGrid1).DoSave;
  UpdateFilter
end;

procedure TStuffTransactionSumF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('date') = nil then
    close;
end;

procedure TStuffTransactionSumF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TStuffTransactionSumF.ppSystemVariable2GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TStuffTransactionSumF.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TStuffTransactionSumF.actPrintExecute(Sender: TObject);
begin
  inherited;
  PopMnuPrint.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TStuffTransactionSumF.ppLabel10GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := lblLimit.Caption;
end;

procedure TStuffTransactionSumF.FormCreate(Sender: TObject);
begin
  inherited;
  SetExtraCoding(qryTransAction, DBGrid1);
end;

procedure TStuffTransactionSumF.AllMenuItemClick(Sender: TObject);
begin
  inherited;
  try
    qryTransAction.DisableControls;
    InitReportFile(ppRptAllprint1, (Sender as TMenuItem).Name, True);
  finally
    qryTransAction.EnableControls;
  end; // try
end;

procedure TStuffTransactionSumF.chkEntityClick(Sender: TObject);
begin
  inherited;
  UpdateFilter
end;

procedure TStuffTransactionSumF.DBGrid1Exit(Sender: TObject);
begin
  inherited;
  THackGrid(DBGrid1).DoSave;

end;

procedure TStuffTransactionSumF.actPrintVijehExecute(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, 0);
end;

procedure TStuffTransactionSumF.actShowExecute(Sender: TObject);
begin
  inherited;
  // if qryTransAction.FindField('StoreID') <> nil then
  RptCardexF.Enter(qryTransAction.FieldByName('StoreID').AsInteger,
    qryTransAction.FieldByName('StuffCode').AsLargeInt, 1)
end;

end.
