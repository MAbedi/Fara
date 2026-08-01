unit StuffTransaction;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, Grids, Vcl.DBGrids, DBCtrls, Mask, ppBands, ppCtrls, Math,
  ppVar, ppPrnabl, ppClass, ppCache, ppProd, ppReport, ppDB, ppComm,
  ppRelatv, ppDBPipe, ComCtrls, Menus, SumDBGrid, ppParameter, FormFunctions,
  Filter_ADO_Const, ppDesignLayer, System.ImageList, System.Actions,
  FarsiReportBuilde, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, ReciptsFunctions,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  THackGrid = class(TCedarDbgrid);

  TStuffTransactionF = class(Ttemplate2MDIF)
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
    qryStore: TADOQuery;
    srcStore: TDataSource;
    qryStoren_StoreID: TSmallintField;
    qryStorec_StoreName: TStringField;
    lblLimit: TLabel;
    ppDBPipeline1: TppDBPipeline;
    ppRptAllprint1: TppReport;
    PopMnuPrint: TPopupMenu;
    rptStuffTransactionprice1: TMenuItem;
    rptStuffTransactionprice2: TMenuItem;
    actPrintVijeh: TAction;
    BitBtn6: TBitBtn;
    rptStuffTransactionprice4: TMenuItem;
    BitBtn7: TBitBtn;
    actShow: TAction;
    StuffTransactionFBahayeTamamshode: TMenuItem;
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
    rptStuffTransactionprice3: TMenuItem;
    pnlLblLimitPlace: TPanel;
    pnlStore: TPanel;
    SpeedButton1: TSpeedButton;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    DBNavigator1: TDBNavigator;
    rgpStore: TRadioGroup;
    DBGrid1: TCedarDbgrid;
    qryTransAction: TFDQuery;
    Panel1: TPanel;
    chkPersonID1D: TCheckBox;
    procedure actFilterExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure qryStoreAfterScroll(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLabel2GetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable2GetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable1GetText(Sender: TObject; var Text: String);
    procedure actPrintExecute(Sender: TObject);
    procedure ppLabel10GetText(Sender: TObject; var Text: String);
    procedure FormCreate(Sender: TObject);
    procedure AllMenuItemClick(Sender: TObject);
    procedure actPrintVijehExecute(Sender: TObject);
    procedure actShowExecute(Sender: TObject);
    procedure qryTransActionAfterOpen(DataSet: TDataSet);
    procedure rgpStoreClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Panel2Enter(Sender: TObject);
    procedure qryStoreBeforeScroll(DataSet: TDataSet);
    procedure chkPersonID1DClick(Sender: TObject);
  private
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
  StuffTransactionF: TStuffTransactionF;

implementation

uses DM, filter_ADO, FilterClass_ADO, GlobalPro, search2, sort2, DBGrid2Print,
  searchCode_ADO, main, RptCardex, FaraConsts;

{$R *.dfm}

procedure TStuffTransactionF.Enter(StoreID: Integer; StuffCode: Largeint);
begin
  try
    Var_glb_NoFilter := True;
    CreateMDIForm2(TStuffTransactionF, StuffTransactionF, mainF);
    StuffTransactionF.qryStore.Locate('n_StoreID', StoreID, []);
    if (StuffTransactionF.qryTransAction.Active) then
      if (not LocateNewconst(StuffCode)) then
        Warn('كالاي مورد نظر يافت نشد');
  finally
    Var_glb_NoFilter := False;
  end;
end;

function TStuffTransactionF.LocateNewconst;
begin
  Result := False;
  With StuffTransactionF.qryTransAction do
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

procedure TStuffTransactionF.Panel2Enter(Sender: TObject);
begin
  inherited;
  THackGrid(DBGrid1).DoSave(rgpStore.ItemIndex.ToString);
end;

procedure TStuffTransactionF.actFilterExecute(Sender: TObject);
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
      AddItem(DMf.adcBSell, 'SecondType', 'نوع اطلاعات ', 'كد اطلاعات ',
        ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT LookUps.Code as Code, LookUps.Name as Name FROM Recipts ' +
        'INNER JOIN LookUps ON Recipts.SecondType = LookUps.LookUpID ' +
        'GROUP BY Recipts.SecondType, LookUps.Code, LookUps.Name',
        'SELECT 0,999999999');

      AddItemFilter(GetFilter, TFilterPersonID1D);

      if P3ActAdd.Person3Active then
        AddItem(DMf.adcBSell, 'PersonID3', P3ActAdd.Person3Caption, 'كد',
          ftInteger, dvMinMax, '', '', ciLookup,
          ' SELECT Customers.CustID, Customers.CustName FROM Customers INNER JOIN CustomersGroup ON '
          + ' Customers.CustomerGrpID = CustomersGroup.CustomerGrpID WHERE (CustomersGroup.GroupType IN('
          + P3ActAdd.CustomerKind3 + '))',

          'SELECT 0,2147483647');

      if opt.StuffKindActive then
        AddItem(DMf.adcBSell, 'StuffKindActive', 'نوع كالا', '', ftUnknown,
          dvDefaults, 'True', '', ciCheck,
          'SELECT  0 as OwnerShipKind,''قطعي''  as OwnerShipKindName FROM  Config union all '
          + 'SELECT  1 as OwnerShipKind,''اماني'' as OwnerShipKindName FROM  Config ',
          '');
      AddItem(DMf.adcBSell, 'Date', 'تاريخ ', 'بتاريخ', ftDate, dvDefaults,
        ReciptDate, '', ciSingle, '', '');
      AddItem(DMf.adcBSell, 'Store', 'انبار', 'انبار', ftInteger, dvMinMax, '',
        '', ciLookup, LookupSQL4Store, MinMaxSQL4Store, True);
      // ' SELECT Recipts.StoreID as StoreID,Stores.c_StoreName as c_StoreName FROM Recipts INNER JOIN '+
      // 'dbo.Stores ON dbo.Recipts.StoreID = dbo.Stores.n_StoreID '+
      // 'GROUP BY dbo.Stores.c_StoreName, dbo.Recipts.StoreID ',
      // 'SELECT Min(StoreID) , Max(StoreID) FROM Recipts');

      AddItemFilter(GetFilter, TFilterStuffCode);
      // AddItem(DMf.adcBSell, 'StuffCode', 'كالا ', 'كالا', ftLargeint, dvMinMax,
      // '', '', ciLookup,
      // 'SELECT ReciptItems.StuffCode, StuffCoding.c_StuffName FROM StuffCoding INNER JOIN '
      // + 'ReciptItems ON dbo.StuffCoding.c_StuffCode = dbo.ReciptItems.StuffCode '
      // + 'GROUP BY dbo.ReciptItems.StuffCode, dbo.StuffCoding.c_StuffName ',
      // 'SELECT Min(StuffCode), Max(StuffCode) FROM ReciptItems');

      AddItem(DMf.adcBSell, 'GroupID', ' گروه كالا ', 'كد', ftInteger, dvMinMax,
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

procedure TStuffTransactionF.UpdateFilter;
var
  s1, E_W: String;
begin
  case opt.EntityDisplayType of
    0, 2:
      E_W := 'Entity';
    1, 3:
      E_W := 'Weight'
  end;
  with qryTransAction do
  begin
    Active := False;

    case rgpStore.ItemIndex of
      1:
        begin
          SQL.Text := 'SELECT R.StoreID, ';
          SQL.Add('R.c_StoreName,min(R.StuffCode) AS StuffCode');
        end;
    else
      begin
        SQL.Text := 'SELECT R.StoreID, ';
        SQL.Add('R.c_StoreName,R.StuffCode, ');
        SQL.Add('StuffCoding.c_StuffName,StuffCoding.c_StuffTecInfo,Units.UnitName');
        SQL.Add(',max( R.n_ValuationType) n_ValuationType ');
        SQL.Add(', StuffCoding.sd1, StuffCoding.sd2, StuffCoding.sd3, StuffCoding.sd4,');
        SQL.Add('StuffCoding.sd5, StuffCoding.sd6, StuffCoding.sd7, StuffCoding.sd8, StuffCoding.sd9,');
        SQL.Add('StuffCoding.c_KeepPlace, StuffCoding.Cabinet,');
        SQL.Add('padidAvarandeh.Name AS padidAvarandehName');
        SQL.Add(', Sf.KeepPlace, Sf.Cabinet Cabinets');

      end;
    end;
    if chkPersonID1D.Checked then
    begin
      SQL.Add(', R.PersonID1D, C1D.CustName AS CustName1D');
    end;

    SQL.Add(':Person3ActiveF');

    SQL.Add(',FirstEntity = sum( case when R.ReciptType between 1 and 3 then round(R.InputEntity');
    SQL.Add('-R.OutputEntity , 3 ) else 0 end) ,');
    SQL.Add('FirstWeight = sum( case when R.ReciptType between 1 and 3 then round');
    SQL.Add('(R.InputWeight - R.OutputWeight ,3) else 0 end) ,');
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

    SQL.Add('FirstPrice = sum( case when R.ReciptType between 1 and 3 then round');
    SQL.Add('(R.TotalInputPrice - R.TotalOutputPrice ,3 ) else 0 end) ,');
    SQL.Add('FirstSellPrice = sum( case when (R.ReciptType between 1 and 3 ) then round');
    SQL.Add('(R.TotallsellPrice ,3 )*');
    SQL.Add('(case when R.EffectType =2 then 1 else -1 end ) else 0 end) ,');
    SQL.Add('AddEntity = sum( case when R.ReciptType between 1 and 3 then 0 else round');
    SQL.Add('(R.InputEntity , 3 ) end) ,');
    SQL.Add('AddWeight = sum( case when R.ReciptType between 1 and 3 then 0 else round');
    SQL.Add('(R.InputWeight , 3 ) end) ,');

    SQL.Add('AddUnitSellPrice= case when');
    SQL.Add('sum( case when R.ReciptType between 1 and 3 then 0 else round(R.Input'
      + E_W + ' , 3 )');
    SQL.Add('end) <>0');
    SQL.Add('then round(');
    SQL.Add('sum( case when R.ReciptType between 1 and 3 then 0 else round(R.TotalInputPrice ,');
    SQL.Add('3 ) end)');
    SQL.Add('/');
    SQL.Add('sum( case when R.ReciptType between 1 and 3 then 0 else round(R.Input'
      + E_W + ' , 3 )');
    SQL.Add('end)');
    SQL.Add(', 3 ) else 0 end ,');

    SQL.Add('AddPrice = sum( case when R.ReciptType between 1 and 3 then 0 else round');
    SQL.Add('(R.TotalInputPrice , 3 ) end) ,');
    SQL.Add('AddSellPrice = sum( case when ((R.ReciptType >3 ) and (R.EffectType = 2)) then');
    SQL.Add('round(R.TotallsellPrice , 3 ) else 0 end) ,');

    SQL.Add('DecEntity = sum( case when R.ReciptType between 1 and 3 then 0 else round');
    SQL.Add('(R.OutputEntity , 3 ) end) ,');
    SQL.Add('DecWeight = sum( case when R.ReciptType between 1 and 3 then 0 else round');
    SQL.Add('(R.OutputWeight , 3 ) end) ,');

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

    SQL.Add('DecPrice = sum( case when R.ReciptType between 1 and 3 then 0 else round');
    SQL.Add('(R.TotalOutputPrice , 3 ) end) ,');
    SQL.Add('DecSellPrice = sum( case when (R.EffectType = 4)and (R.ReciptType>3) then round');
    SQL.Add('(R.TotallsellPrice , 3 ) else 0 end) ,');

    SQL.Add('InvEntity = round(sum (R.InputEntity - R.OutputEntity ), 3 ),');
    SQL.Add('InvWeight = round(sum( round(R.InputWeight - R.OutputWeight , 3 )),3),');

    SQL.Add('InvUnitSellPrice= case when');
    SQL.Add('round(sum (R.Input' + E_W + ' - R.Output' + E_W + ' ), 3 ) <>0');
    SQL.Add('then round(');
    SQL.Add('round(sum( round(R.TotalInputPrice - R.TotalOutputPrice , 3 )),3)');
    SQL.Add('/');
    SQL.Add('round(sum (R.Input' + E_W + ' - R.Output' + E_W + ' ), 3 )');
    SQL.Add(', 3 ) else 0 end ,');

    SQL.Add('InvPrice = round(sum( round(R.TotalInputPrice - R.TotalOutputPrice , 3 )),3) ,');
    SQL.Add('InvSellPrice = round(sum( round((case when R.EffectType = 2 then 1 else -1 end ) *');
    SQL.Add('R.TotallsellPrice , 3 )),3),');

    SQL.Add('PureSell = SUM(CASE ReciptTypes.BedType WHEN 1 THEN R.TotalInputPrice');
    SQL.Add('+ R.TotalOutputPrice ELSE 0 END) -');
    SQL.Add('SUM(CASE ReciptTypes.BesType WHEN 1 THEN R.TotalInputPrice');
    SQL.Add('+ R.TotalOutputPrice ELSE 0 END)');

    SQL.Add('FROM ReciptItems_Stock AS R INNER JOIN');
    SQL.Add('StuffCoding ON R.StuffCode = StuffCoding.c_StuffCode INNER JOIN');
    SQL.Add('Units ON StuffCoding.n_UnitCode = Units.UnitCode');
    SQL.Add('INNER JOIN Customers AS Customers3 ON R.PersonID3 = Customers3.CustID');

    SQL.Add('INNER JOIN LookUps ON R.SecondType = LookUps.LookUpID INNER JOIN');
    SQL.Add('ReciptTypes ON R.ReciptType = ReciptTypes.ReciptType LEFT OUTER JOIN');
    SQL.Add('dbo.LookUps4Type(302) AS padidAvarandeh ON StuffCoding.st2 = padidAvarandeh.Code');

    if chkPersonID1D.Checked then
    begin
      SQL.Add('INNER JOIN Customers AS C1D ON R.PersonID1D = C1D.CustID');
    end;
    SQL.Add('LEFT OUTER JOIN StuffCodingFacilities Sf ON Sf.StuffCode = R.StuffCode AND R.StoreID = Sf.StoreID');

    SQL.Add('WHERE (R.EffectType in ( 2,4,6,7,8))');
    SQL.Add('AND (R.ReciptDate <= :ReciptDate)');

    if opt.StuffKindActive then
      s1 := GetcFrom(myParams.ParamValues['StuffKindActive'], ftString);
    if s1 = '' then
      s1 := '0,1';

    SQL.Add('AND (StuffCoding.OwnerShipKind in (' + s1 + '))');
    SQL.Add('AND (R.ReciptState < 3)');
    SQL.Add('AND (StuffCoding.GroupID BETWEEN :GroupIDFrom AND :GroupIDTo)');
    SQL.Add('AND (R.yearID between :YearIDFrom And :YearIDTO )');

    SQL.Add('AND (R.StoreID BETWEEN :StoreIDFrom AND :StoreIDTo )');

    s1 := GetcNot(myParams.ParamValues['Store']);
    if ((s1 <> '-1') and (s1 <> '')) then
      SQL.Add('AND not exists( Select cast(part as int) From dbo.SplitString('''
        + s1 + ''','','') where cast(part as int) = R.StoreID)');

    s1 := GetcSelected(myParams.ParamValues['Store']);
    if ((s1 <> '-1') and (s1 <> '')) then
      SQL.Add('AND exists( Select cast(part as int) From dbo.SplitString(''' +
        s1 + ''','','') where cast(part as int) = R.StoreID)');

    SQL.Add('AND (R.SellsEmporium BETWEEN :SellsEmporiumFrom AND :SellsEmporiumTo)');

    SQL.Add('AND (R.StuffCode BETWEEN :StuffCodeFrom AND :StuffCodeTo)');
    SQL.Add('AND (R.PersonID3 BETWEEN :PersonID3From AND :PersonID3To)');
    SQL.Add('AND (LookUps.Code BETWEEN :SecondTypeFrom AND :SecondTypeTo )');

    SQL.Add('AND (R.PersonID1D BETWEEN :PersonID1DFrom AND :PersonID1DTo)');
    ParamByName('PersonID1DFrom').Value :=
      GetcFrom(myParams.ParamValues['PersonID1D'], ftInteger);
    ParamByName('PersonID1DTo').Value :=
      GetcTo(myParams.ParamValues['PersonID1D'], ftInteger);

    case rgpStore.ItemIndex of
      1:
        begin
          SQL.Add('GROUP BY R.StoreID, ');
          SQL.Add('R.c_StoreName');
        end;
    else
      begin
        SQL.Add('GROUP BY R.StoreID, ');
        SQL.Add('R.c_StoreName,R.StuffCode, ');
        SQL.Add('StuffCoding.c_StuffName,StuffCoding.c_StuffTecInfo,Units.UnitName');
        SQL.Add(',StuffCoding.sd1, StuffCoding.sd2, StuffCoding.sd3, StuffCoding.sd4,');
        SQL.Add('StuffCoding.sd5, StuffCoding.sd6, StuffCoding.sd7, StuffCoding.sd8, StuffCoding.sd9,');
        SQL.Add('StuffCoding.c_KeepPlace, StuffCoding.Cabinet,padidAvarandeh.Name');
        SQL.Add(', Sf.KeepPlace, Sf.Cabinet');
      end;
    end;
    SQL.Add(':Person3ActiveG');

    if chkPersonID1D.Checked then
    begin
      SQL.Add(', R.PersonID1D, C1D.CustName');
    end;

    case rgpStore.ItemIndex of
      1:
        begin
          SQL.Add('ORDER BY R.StoreID');
        end;
    else
      begin
        SQL.Add('ORDER BY R.StuffCode');
      end;
    end;

    SQL.Text := P3ActAdd.load(qryTransAction, nil);

    ParamByName('SellsEmporiumFrom').Value :=
      GetcFrom(myParams.ParamValues['SellsEmporium'], ftInteger);
    ParamByName('SellsEmporiumTo').Value :=
      GetcTo(myParams.ParamValues['SellsEmporium'], ftInteger);

    ParamByName('GroupIDFrom').Value :=
      GetcFrom(myParams.ParamValues['GroupID'], ftInteger);
    ParamByName('GroupIDTo').Value := GetcTo(myParams.ParamValues['GroupID'],
      ftInteger);

    ParamByName('StuffCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['StuffCode'], ftLargeint);
    ParamByName('StuffCodeTo').Value :=
      GetcTo(myParams.ParamValues['StuffCode'], ftLargeint);

    ParamByName('ReciptDate').Value :=
      GetcFrom(myParams.ParamValues['date'], ftDate);
    ParamByName('YearIDFrom').Value := opt.DefaultYear;
    ParamByName('YearIDTo').Value := APPBank.Year;

    if (P3ActAdd.Person3Active) then
    begin
      ParamByName('PersonID3From').Value :=
        GetcFrom(myParams.ParamValues['PersonID3'], ftInteger);
      ParamByName('PersonID3To').Value :=
        GetcTo(myParams.ParamValues['PersonID3'], ftInteger);
    end
    else
    begin
      ParamByName('PersonID3From').Value := -999999999;
      ParamByName('PersonID3To').Value := 2147483647;
    end;

    ParamByName('SecondTypeFrom').Value :=
      GetcFrom(myParams.ParamValues['SecondType'], ftInteger);
    ParamByName('SecondTypeto').Value :=
      GetcTo(myParams.ParamValues['SecondType'], ftInteger);

    // Active:=True;
    lblLimit.Caption := 'از كد كالاي ' +
      GetcFrom(myParams.ParamValues['StuffCode'], ftLargeint) + ' تا ' +
      GetcTo(myParams.ParamValues['StuffCode'], ftLargeint) + #10 +
      'گردش كالا بتاريخ : ' + ParamByName('ReciptDate').Value;
  end; // with
  with qryStore do
  begin
    Active := False;
    Parameters.ParamByName('StoreIDFrom').Value :=
      GetcFrom(myParams.ParamValues['Store'], ftInteger);
    Parameters.ParamByName('StoreIDTo').Value :=
      GetcTo(myParams.ParamValues['Store'], ftInteger);
    Parameters.ParamByName('UserID').Value := User.id;
    Parameters.ParamByName('UserIDAdmin').Value :=
      ifthen(User.PowerUser, 127, User.id);
    Active := True;
  end; // with
end;

procedure TStuffTransactionF.FormDestroy(Sender: TObject);
begin
  inherited;
  THackGrid(DBGrid1).DoSave((rgpStore.ItemIndex.ToString));
  P3ActAdd.Free;
end;

procedure TStuffTransactionF.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TStuffTransactionF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryTransAction);
end;

procedure TStuffTransactionF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryTransAction);
end;

procedure TStuffTransactionF.SpeedButton1Click(Sender: TObject);

var
  b: Boolean;
  Results: array [0 .. 1] of String;
  // Txt:String;
begin
  inherited;
  b := searchCode_ADOF.SearchCode2(DMf.adcBSell, 'انبار ها',
    'SELECT n_StoreID, c_StoreName FROM Stores ' + 'WHERE(n_StoreID BETWEEN ' +
    IntToStr(qryStore.Parameters.ParamValues['StoreIDFrom']) + '  AND ' +
    IntToStr(qryStore.Parameters.ParamValues['StoreIDTo']) + ')',
    ['کد', 'نام '], Results, [50, 150], alLeft);
  if b then
  begin
    qryStore.Locate('n_StoreID', Results[0], []);
  end; // if

end;

procedure TStuffTransactionF.qryStoreAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryTransAction do
  begin
    Active := False;
    if rgpStore.ItemIndex = 0 then
    begin
      ParamByName('StoreIDFrom').Value := qryStore.FieldByName('n_StoreID')
        .AsInteger;
      ParamByName('StoreIDTo').Value := qryStore.FieldByName('n_StoreID')
        .AsInteger;

    end
    else
    begin
      ParamByName('StoreIDFrom').Value :=
        GetcFrom(myParams.ParamValues['Store'], ftInteger);
      ParamByName('StoreIDTo').Value := GetcTo(myParams.ParamValues['Store'],
        ftInteger);

    end;

    Active := True;
  end;
  // with
end;

procedure TStuffTransactionF.qryStoreBeforeScroll(DataSet: TDataSet);
begin
  inherited;
  THackGrid(DBGrid1).DoSave(rgpStore.ItemIndex.ToString);
end;

procedure TStuffTransactionF.qryTransActionAfterOpen(DataSet: TDataSet);
var
  i: Integer;
begin
  inherited;

  P3ActAdd.load(qryTransAction, nil);

  Entity_Weight(DBGrid1);
  if rgpStore.ItemIndex <> 1 then
    SetExtraCoding(qryTransAction, DBGrid1);


  setColumns2(DBGrid1, opt.StuffTecInfoActive, 'c_StuffTecInfo');

  setColumns2(DBGrid1, opt.StuffCodingKind = 1, 'padidAvarandehName');

  setColumns2(DBGrid1, opt.PureSellActive, 'PureSell');
  setColumns2(DBGrid1, False, 'n_ValuationType');

  setColumns2(DBGrid1, rgpStore.ItemIndex in [1, 2], 'StoreID');
  setColumns2(DBGrid1, rgpStore.ItemIndex in [1, 2], 'c_StoreName');

  setColumns2(DBGrid1, rgpStore.ItemIndex in [0, 2], 'StuffCode');

  PriceVisible := PriceOnStoreType(qryStore.FieldByName('n_StoreID').AsInteger,
    DBGrid1, qryTransAction);
  with qryTransAction do
  begin
    if rgpStore.ItemIndex in [1, 2] then
    begin
      FieldByName('StoreID').DisplayLabel := 'كد انبار';
      FieldByName('c_StoreName').DisplayLabel := 'انبار';
    end;
    if rgpStore.ItemIndex in [0, 2] then
    begin
      FieldByName('StuffCode').DisplayLabel := 'كد كالا';
      FieldByName('c_StuffName').DisplayLabel := 'نام كالا';
      FieldByName('c_StuffTecInfo').DisplayLabel := 'مشخصات فني';
      FieldByName('c_KeepPlace').DisplayLabel := 'محل نگهداری';
      FieldByName('Cabinet').DisplayLabel := 'طبقه';
      FieldByName('UnitName').DisplayLabel := 'واحد';
      FieldByName('padidAvarandehName').DisplayLabel := 'پدیدآورنده';
      FieldByName('Cabinets').DisplayLabel := 'طبقه جدید';
      FieldByName('KeepPlace').DisplayLabel := 'محل نگهداری جدید';
    end;

    if chkPersonID1D.Checked then
    begin
      FieldByName('PersonID1D').DisplayLabel := 'کد مالک';
      FieldByName('CustName1D').DisplayLabel := 'مالک';
    end;

    FieldByName('FirstEntity').DisplayLabel := 'مقدار اول دوره';
    FieldByName('FirstWeight').DisplayLabel := 'وزن اول دوره';

    FieldByName('FirstPrice').DisplayLabel := 'مبلغ اول دوره';
    FieldByName('FirstPrice').Visible := PriceVisible;
    TBCDField(FieldByName('FirstPrice')).currency := True;

    FieldByName('FirstUnitSellPrice').DisplayLabel := 'في اول دوره';
    FieldByName('FirstUnitSellPrice').Visible := PriceVisible;

    FieldByName('FirstSellPrice').DisplayLabel := 'بهاي تمام شده اول دوره';
    TBCDField(FieldByName('FirstSellPrice')).currency := True;
    FieldByName('FirstSellPrice').Visible := PriceVisible;

    FieldByName('AddEntity').DisplayLabel := 'مقداره وارده';
    FieldByName('AddWeight').DisplayLabel := 'وزن وارده';
    FieldByName('AddUnitSellPrice').DisplayLabel := 'في وارده';
    FieldByName('AddUnitSellPrice').Visible := PriceVisible;

    FieldByName('AddPrice').DisplayLabel := 'مبلغ وارده';
    TBCDField(FieldByName('AddPrice')).currency := True;
    FieldByName('AddPrice').Visible := PriceVisible;

    FieldByName('AddSellPrice').DisplayLabel := 'بهاي تمام شده وارده';
    TBCDField(FieldByName('AddSellPrice')).currency := True;
    FieldByName('AddSellPrice').Visible := PriceVisible;

    FieldByName('DecEntity').DisplayLabel := 'مقدار صادره';
    FieldByName('DecWeight').DisplayLabel := 'وزن صادره';
    FieldByName('DecUnitSellPrice').DisplayLabel := 'في صادره';
    FieldByName('DecUnitSellPrice').Visible := PriceVisible;

    FieldByName('DecPrice').DisplayLabel := 'مبلغ صادره';
    TBCDField(FieldByName('DecPrice')).currency := True;
    FieldByName('DecPrice').Visible := PriceVisible;

    FieldByName('DecSellPrice').DisplayLabel := 'بهاي تمام شده صادره';
    TBCDField(FieldByName('DecSellPrice')).currency := True;
    FieldByName('DecSellPrice').Visible := PriceVisible;

    FieldByName('InvEntity').DisplayLabel := 'مقدار موجودي';
    FieldByName('InvWeight').DisplayLabel := 'وزن موجودي';
    FieldByName('InvUnitSellPrice').DisplayLabel := 'في موجودي';
    FieldByName('InvUnitSellPrice').Visible := PriceVisible;

    FieldByName('InvPrice').DisplayLabel := 'مبلغ موجودي';
    TBCDField(FieldByName('InvPrice')).currency := True;
    FieldByName('InvPrice').Visible := PriceVisible;

    FieldByName('InvSellPrice').DisplayLabel := 'بهاي تمام شده موجودي';
    TBCDField(FieldByName('InvSellPrice')).currency := True;
    FieldByName('InvSellPrice').Visible := PriceVisible;

    FieldByName('PureSell').DisplayLabel := 'خالص فروش رفته';
    TBCDField(FieldByName('PureSell')).currency := True;
    FieldByName('PureSell').Visible := PriceVisible;

    for i := 0 to FieldCount - 1 do
      if Fields[i].DisplayLabel <> Fields[i].FieldName then
        Fields[i].Tag := 3;
  end;
  // setColumns2(DBGrid1, opt.ActiveSellPrice2, 'FirstSellPrice');
  // setColumns2(DBGrid1, opt.ActiveSellPrice2, 'AddSellPrice');
  // setColumns2(DBGrid1, opt.ActiveSellPrice2, 'DecSellPrice');
  // setColumns2(DBGrid1, opt.ActiveSellPrice2, 'InvSellPrice');
//  qryTransAction.FieldByName('FirstSellPrice').Visible := opt.ActiveSellPrice2;
//  qryTransAction.FieldByName('AddSellPrice').Visible := opt.ActiveSellPrice2;
//  qryTransAction.FieldByName('DecSellPrice').Visible := opt.ActiveSellPrice2;
//  qryTransAction.FieldByName('InvSellPrice').Visible := opt.ActiveSellPrice2;
    HideOrShowSellPriceFields(qryTransAction,DBGrid1);

  // DBGrid1.setSizeColDBGrid;
  /// /  DBGrid1.SetFooter4Sum([]);
  THackGrid(DBGrid1).DoLoad(rgpStore.ItemIndex.ToString);
  DBGrid1.ColorDBGrid;

end;

procedure TStuffTransactionF.rgpStoreClick(Sender: TObject);
begin
  inherited;
  pnlStore.Visible := rgpStore.ItemIndex = 0;
  UpdateFilter
end;

procedure TStuffTransactionF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('date') = nil then
    close;
end;

procedure TStuffTransactionF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TStuffTransactionF.ppLabel2GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := 'گردش كالاي انبار ' + DBEdit2.Text;
end;

procedure TStuffTransactionF.ppSystemVariable2GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TStuffTransactionF.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TStuffTransactionF.actPrintExecute(Sender: TObject);
begin
  inherited;
  PopMnuPrint.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TStuffTransactionF.ppLabel10GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := lblLimit.Caption;
end;

procedure TStuffTransactionF.FormCreate(Sender: TObject);
begin
  inherited;
  P3ActAdd := TPerson3ActiveAdd.Create;
  P3ActAdd.load(nil, nil);
end;

procedure TStuffTransactionF.AllMenuItemClick(Sender: TObject);
begin
  inherited;
  try
    qryTransAction.DisableControls;
    SeletedPrint(ppDBPipeline1, DBGrid1);
    InitReportFile(ppRptAllprint1, (Sender as TMenuItem).Name, True);
  finally
    qryTransAction.EnableControls;
  end; // try
end;

procedure TStuffTransactionF.chkPersonID1DClick(Sender: TObject);
begin
  inherited;
  UpdateFilter
end;

procedure TStuffTransactionF.DBGrid1DblClick(Sender: TObject);
var
  StoreID: Integer;
begin
  inherited;
  if rgpStore.ItemIndex = 1 then
  begin
    StoreID := qryTransAction.FieldByName('StoreID').AsInteger;
    rgpStore.ItemIndex := 0;
    qryStore.Locate('n_StoreID', StoreID, [])
  end
end;

procedure TStuffTransactionF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryTransAction.FieldByName('StuffCode'));
end;

procedure TStuffTransactionF.actPrintVijehExecute(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, 0);
end;

procedure TStuffTransactionF.actShowExecute(Sender: TObject);
begin
  inherited;
  RptCardexF.Enter(qryTransAction.FieldByName('StoreID').AsInteger,
    qryTransAction.FieldByName('StuffCode').AsLargeInt, 1)
end;

end.
