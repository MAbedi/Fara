unit RptEntityStuff;
// <><>

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, ComCtrls, DBCtrls, Mask, DB, ADODB, ppCtrls, Math, ReciptsFunctions,
  ppPrnabl, ppClass, Menus, ppDB, ppDBPipe, ppBands, ppVar, ppCache,
  ppComm, ppRelatv, ppProd, ppReport, ppParameter, FormFunctions,
  Filter_ADO_Const, ppDesignLayer, System.ImageList, System.Actions,
  FarsiReportBuilde, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid,
  Vcl.CheckLst;

type
  THackGrid = class(TCedarDbgrid);

  TRptEntityStuffF = class(Ttemplate2MDIF)
    Label1: TLabel;
    SrcEntity: TDataSource;
    qryStore: TADOQuery;
    qryEntity: TADOQuery;
    lblDate: TLabel;
    SrcStore: TDataSource;
    actFilter: TAction;
    BitBtn2: TBitBtn;
    BitBtn7: TBitBtn;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLblCompanyName: TppLabel;
    ppLabel2: TppLabel;
    ppLine1: TppLine;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLblPrintDate: TppLabel;
    actPrint: TAction;
    ppLabel12: TppLabel;
    ppDBPipeline1: TppDBPipeline;
    ppDBPipeline2: TppDBPipeline;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppLabel15: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    BitBtn6: TBitBtn;
    BitBtn1: TBitBtn;
    actsendtoexel: TAction;
    BitBtn3: TBitBtn;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLine29: TppLine;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppLine33: TppLine;
    ppLine34: TppLine;
    ppLine21: TppLine;
    ppShape2: TppShape;
    ppShape1: TppShape;
    ppShape3: TppShape;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    qryStoren_StoreID: TSmallintField;
    qryStorec_StoreName: TStringField;
    ppLabel16: TppLabel;
    actSort: TAction;
    actCardex: TAction;
    BitBtn4: TBitBtn;
    PopupMenu1: TPopupMenu;
    F71: TMenuItem;
    actPrint2: TAction;
    actPrint21: TMenuItem;
    BitBtn5: TBitBtn;
    actshowGrid2Print: TAction;
    pnlStore: TPanel;
    DBNavigator1: TDBNavigator;
    DBTextStoreID: TDBText;
    SBtnStoreID: TSpeedButton;
    EdtStoreID: TDBEdit;
    LblStore: TLabel;
    DBGrid1: TCedarDbgrid;
    Panel1: TPanel;
    BitBtn8: TBitBtn;
    chklst1: TCheckListBox;
    procedure qryStoreAfterScroll(DataSet: TDataSet);
    procedure actFilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SBtnStoreIDClick(Sender: TObject);
    procedure ppLabel11GetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable1GetText(Sender: TObject; var Text: String);
    procedure FormDestroy(Sender: TObject);
    procedure actsendtoexelExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure ppLabel16GetText(Sender: TObject; var Text: String);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure qryEntityAfterOpen(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure actCardexExecute(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure actPrint2Execute(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure actshowGrid2PrintExecute(Sender: TObject);
    procedure chklst1ClickCheck(Sender: TObject);

  private
    { Private declarations }
    P3ActAdd: TPerson3ActiveAdd;
    procedure UpdateFilter;
    procedure MakeSQL;
    procedure UpdateqryEntity;
  public
    { Public declarations }
  end;

var
  RptEntityStuffF: TRptEntityStuffF;

implementation

uses DM, filter_ADO, FilterClass_ADO, GlobalPro, searchCode_ADO, search2, sort2,
  RptCardex, DBGrid2Print, FaraConsts, main, mdiMain, MMESSAGE;

{$R *.dfm}

procedure TRptEntityStuffF.MakeSQL;
var
  s, HavingOrAnd: String;
begin
  with qryEntity do
  begin
    Active := False;
    SQL.Text := 'SELECT ';
    if chklst1.Checked[2] then
    begin
      SQL.Add('R.StoreID, Stores.c_StoreName,min(R.StuffCode) AS StuffCode, ');
    end
    else
    begin
      SQL.Add('MIN(R.StoreID) AS StoreID, Min(Stores.c_StoreName) AS c_StoreName, ');
      SQL.Add('R.StuffCode');
      SQL.Add(',S.c_StuffName,s.c_StuffName_L2 AS ''كالا|StuffName''  , Units.UnitName,');
      SQL.Add('S.sd1, S.sd2, S.sd3,');
      SQL.Add('S.sd4, S.sd5, S.sd6, S.sd7, S.sd8, S.sd9,');
      SQL.Add('S.c_KeepPlace, S.Cabinet,');
      SQL.Add('ScF.KeepPlace, ScF.Cabinet Cabinets,');

      SQL.Add('ScS.minOrder ,ScS.MaxOrder , ScS.orderPoint ,');
      SQL.Add('S.c_StuffTecInfo ,');

      if chklst1.Checked[0] then
        SQL.Add('R.SellsEmporium,SellsEmporiums.SellsEmporiumName,');

      if chklst1.Checked[3] then
        SQL.Add('R.PersonID1D AS PersonID1, C1.CustName AS CustName1,');

      SQL.Add('LookUps.Name AS St1Name, Units2.UnitName AS UnitName2,');

      SQL.Add('StuffGroups.GroupID, StuffGroups.GroupName,');
      SQL.Add('StuffGroups_1.GroupID AS GroupID1, StuffGroups_1.GroupName AS GroupName1,');
      SQL.Add('StuffGroups_2.GroupID AS GroupID2,StuffGroups_2.GroupName AS GroupName2 ,');

    end;
    SQL.Add('Round(SUM(R.InputEntity - R.OutputEntity),3)AS Entity,');
    SQL.Add('Round(SUM(R.InputWeight - R.OutputWeight),3)AS Weight,');
    SQL.Add('');

    case opt.EntityDisplayType of
      0, 2:
        begin
          SQL.Add('Round( case when Round( SUM(R.InputEntity - R.OutputEntity),3)<>0 then');
          SQL.Add('round( SUM(R.TotalInputPrice - R.TotalOutputPrice)/');
          SQL.Add('SUM(R.InputEntity - R.OutputEntity),0) else 0 end ,3) as unitSellPrice,');
          // SQL.Add('case when Round( SUM(R.InputEntity - R.OutputEntity),3)<>0 then 0 ELSE ');
          // SQL.Add('Round( SUM(R.TotalInputPrice - R.TotalOutputPrice),3) end AS Price,');
        end;
      1, 3:
        begin
          SQL.Add('Round( case when Round( SUM(R.InputWeight - R.OutputWeight),3)<>0 then');
          SQL.Add('round( SUM(R.TotalInputPrice - R.TotalOutputPrice)/');
          SQL.Add('SUM(R.InputWeight - R.OutputWeight),0) else 0 end ,3) as unitSellPrice,');
          // SQL.Add('case when Round( SUM(R.InputWeight - R.OutputWeight),3)<>0 then 0 ELSE');
          // SQL.Add('Round( SUM(R.TotalInputPrice - R.TotalOutputPrice),3) end AS Price,');
        end;
    end;

    // SQL.Add('case when Round( SUM(R.InputWeight - R.OutputWeight),3)=0 AND Round( SUM(R.InputEntity - R.OutputEntity),3)=0  then 0 ELSE');
    // SQL.Add('Round( SUM(R.TotalInputPrice - R.TotalOutputPrice),3) end AS Price,');
    SQL.Add('Round( SUM(R.TotalInputPrice - R.TotalOutputPrice),3) AS Price,');

    SQL.Add('InvSellPrice = round(sum( round((case when R.EffectType = 2 then 1 else -1 end ) *');
    SQL.Add('R.TotallsellPrice , 3 )),3)');
    SQL.Add('');
    SQL.Add(':Person3ActiveF');
    SQL.Add('');
    SQL.Add('FROM ReciptItems_Stock AS R INNER JOIN');
    SQL.Add('StuffCoding AS S ON R.StuffCode = S.c_StuffCode INNER JOIN');
    SQL.Add('Units ON S.n_UnitCode = Units.UnitCode');
    SQL.Add('INNER JOIN Customers AS Customers3 ON R.PersonID3 = Customers3.CustID');
    SQL.Add('');
    SQL.Add('');
    SQL.Add('INNER JOIN StuffGroups ON S.GroupID = StuffGroups.GroupID');
    SQL.Add('LEFT OUTER JOIN StuffGroups AS StuffGroups_1 ON StuffGroups.UperGroupId = StuffGroups_1.GroupID');
    SQL.Add('LEFT OUTER JOIN StuffGroups AS StuffGroups_2 ON StuffGroups_1.UperGroupId = StuffGroups_2.GroupID');
    SQL.Add('LEFT OUTER JOIN LookUps ON S.st1 = LookUps.Code AND LookUps.kind=301');
    SQL.Add('LEFT OUTER JOIN Units AS Units2 ON S.UnitCode2 = Units2.UnitCode');
    SQL.Add('LEFT OUTER JOIN SellsEmporiums ON R.SellsEmporium = SellsEmporiums.SellsEmporium');

    // if CheckBox1.Checked then
    SQL.Add('INNER JOIN Stores ON R.StoreID = Stores.n_StoreID');

    if chklst1.Checked[3] then
      SQL.Add('INNER JOIN Customers AS C1 ON R.PersonID1D = C1.CustID');

    SQL.Add(' LEFT OUTER JOIN StuffCodingFacilities ScF ON ScF.StuffCode = S.c_StuffCode AND ScF.StoreID = R.StoreID');
    SQL.Add(' LEFT OUTER JOIN StuffCodingStock ScS ON ScS.StuffCode = S.c_StuffCode AND ScS.StoreID = R.StoreID');

    SQL.Add('');
    SQL.Add('WHERE /*(isnull(LookUps.Kind,301) = 301) AND*/');
    SQL.Add(' (R.ReciptDate BETWEEN :DateFrom AND :DateTo)');
    SQL.Add('AND (R.StoreID BETWEEN :StoreIDFrom AND :StoreIDTo )');
    SQL.Add('');
    SQL.Add('AND (');
    SQL.Add('(S.GroupID BETWEEN :GroupId1From AND :GroupId1To)');
    SQL.Add('or( StuffGroups_1.GroupID BETWEEN :GroupId2From AND :GroupId2To)');
    SQL.Add('or( StuffGroups_2.GroupID BETWEEN :GroupId3From AND :GroupId3To)');
    SQL.Add(')');
    SQL.Add('');
    SQL.Add('AND (R.StuffCode BETWEEN :StuffCodeFrom AND :StuffCodeTo)');

    if opt.StuffKindActive then
      s := GetcFrom(myParams.ParamValues['StuffKindActive'], ftString);
    if s = '' then
      s := '0,1';

    SQL.Add('AND (S.OwnerShipKind in (' + s + '))');
    SQL.Add('AND (R.yearID between :YearIDFrom And :YearIDTo )');
    SQL.Add('AND (R.PersonID3 BETWEEN :PersonID3From AND :PersonID3To)');
    SQL.Add('AND (R.SellsEmporium between :SellsEmporiumFrom and :SellsEmporiumTo)');

    SQL.Add('AND (R.PersonID1D BETWEEN :PersonID1DFrom AND :PersonID1DTo)');
    Parameters.ParamByName('PersonID1DFrom').Value :=
      GetcFrom(myParams.ParamValues['PersonID1D'], ftInteger);
    Parameters.ParamByName('PersonID1DTo').Value :=
      GetcTo(myParams.ParamValues['PersonID1D'], ftInteger);

    SQL.Add('GROUP BY ');

    if chklst1.Checked[2] then
    begin
      SQL.Add('R.StoreID, Stores.c_StoreName');
    end
    else
    begin
      SQL.Add('R.StuffCode');
      SQL.Add(', S.c_StuffName,s.c_StuffName_L2 , Units.UnitName,');
      SQL.Add('S.sd1, S.sd2, S.sd3,');
      SQL.Add('S.sd4, S.sd5, S.sd6, S.sd7, S.sd8, S.sd9,');
      SQL.Add('S.c_KeepPlace, S.Cabinet,');
      SQL.Add('ScF.KeepPlace, ScF.Cabinet ,');

      SQL.Add('ScS.minOrder ,ScS.MaxOrder , ScS.OrderPoint,');
      SQL.Add('S.c_StuffTecInfo ,');

      if chklst1.Checked[0] then
        SQL.Add('R.SellsEmporium,SellsEmporiums.SellsEmporiumName,');
      if chklst1.Checked[3] then
        SQL.Add('R.PersonID1D, C1.CustName,');

      SQL.Add('LookUps.Name , Units2.UnitName');

      SQL.Add(',StuffGroups.GroupID, StuffGroups.GroupName');
      SQL.Add(',StuffGroups_1.GroupID, StuffGroups_1.GroupName');
      SQL.Add(',StuffGroups_2.GroupID, StuffGroups_2.GroupName');

    end;

    SQL.Add(':Person3ActiveG');
    if not chklst1.Checked[1] then
    begin
      SQL.Add('HAVING ((SUM(R.InputEntity - R.OutputEntity) >= 0.0001 OR');
      SQL.Add('SUM(R.InputEntity - R.OutputEntity) <= - 0.0001) OR');
      SQL.Add('(SUM(R.InputWeight - R.OutputWeight) >= 0.0001) OR');
      SQL.Add('(SUM(R.InputWeight - R.OutputWeight) <= - 0.0001)OR');
      SQL.Add('(ROUND(SUM(R.TotalInputPrice - R.TotalOutputPrice), 0 ) >= 0.1) OR');
      SQL.Add('(ROUND(SUM(R.TotalInputPrice - R.TotalOutputPrice), 0 ) <= - 0.1))');
      SQL.Add('');
      SQL.Add('/* OR SUM(R.InputEntity - R.OutputEntity)=0 */');
      SQL.Add('');
      HavingOrAnd := 'AND '
    end
    else
      HavingOrAnd := 'HAVING ';

    if chklst1.Checked[4] then
    begin
      SQL.Add(HavingOrAnd + 'SUM(R.InputEntity - R.OutputEntity)<>0 ');
      HavingOrAnd := 'AND '
    end;

    if chklst1.Checked[5] then
      SQL.Add(HavingOrAnd + 'SUM(R.InputWeight - R.OutputWeight)<>0 ');

    // else
    // SQL.Add('HAVING 1=1 ');

    // if chklst1.Checked[1] then
    // begin
    // case opt.EntityDisplayType of
    // 0:
    // SQL.Add('AND ((round(sum (R.InputEntity - R.OutputEntity ), 3 ) <>0)'
    // + 'OR(ROUND(sum (R.TotalInputPrice - R.TotalOutputPrice ), 0 )) <>0)');
    // 1:
    // SQL.Add('AND ((round(sum (R.InputWeight - R.OutputWeight ), 3 ) <>0)'
    // + 'OR(ROUND(sum (R.TotalInputPrice - R.TotalOutputPrice ), 0 )) <>0)');
    // else
    // begin
    // SQL.Add('and ( (round(sum (R.InputEntity - R.OutputEntity ), 3 ) <>0)');
    // SQL.Add('or(ROUND(sum (R.InputWeight - R.OutputWeight ), 3 ) <>0)');
    // SQL.Add('or(ROUND(sum (R.TotalInputPrice - R.TotalOutputPrice ), 0 ) <>0))');
    //
    // end;
    //
    // end;
    // end;

    if chklst1.Checked[2] then
    begin
      SQL.Add('ORDER BY R.StoreID');
    end
    else
    begin
      SQL.Add('ORDER BY StuffGroups.GroupID, R.StuffCode');

    end;
    SQL.Text := P3ActAdd.load(qryEntity, nil);
  end;

end;

procedure TRptEntityStuffF.UpdateqryEntity;
begin
  with qryEntity do
  begin
    Active := False;
    Parameters.ParamByName('DateFrom').Value :=
      GetcFrom(myParams.ParamValues['ReciptDate'], ftDate);
    Parameters.ParamByName('DateTo').Value :=
      GetcTo(myParams.ParamValues['ReciptDate'], ftDate);
    Parameters.ParamByName('StuffCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['StuffCode'], ftLargeint);
    Parameters.ParamByName('StuffCodeTo').Value :=
      GetcTo(myParams.ParamValues['StuffCode'], ftLargeint);

    Parameters.ParamByName('GROUPID1From').Value :=
      GetcFrom(myParams.ParamValues['GROUPID'], ftInteger);
    Parameters.ParamByName('GROUPID1To').Value :=
      GetcTo(myParams.ParamValues['GROUPID'], ftInteger);
    Parameters.ParamByName('GROUPID2From').Value :=
      GetcFrom(myParams.ParamValues['GROUPID'], ftInteger);
    Parameters.ParamByName('GROUPID2To').Value :=
      GetcTo(myParams.ParamValues['GROUPID'], ftInteger);
    Parameters.ParamByName('GROUPID3From').Value :=
      GetcFrom(myParams.ParamValues['GROUPID'], ftInteger);
    Parameters.ParamByName('GROUPID3To').Value :=
      GetcTo(myParams.ParamValues['GROUPID'], ftInteger);

    Parameters.ParamByName('YearIDFrom').Value := opt.DefaultYear;
    Parameters.ParamByName('YearIDTo').Value := APPBank.Year;

    if P3ActAdd.Person3Active then
    begin
      Parameters.ParamByName('PersonID3From').Value :=
        GetcFrom(myParams.ParamValues['PersonID3'], ftInteger);
      Parameters.ParamByName('PersonID3To').Value :=
        GetcTo(myParams.ParamValues['PersonID3'], ftInteger);
    end
    else
    begin
      Parameters.ParamByName('PersonID3From').Value := -999999999;
      Parameters.ParamByName('PersonID3To').Value := 2147483647;
    end;

    Parameters.ParamByName('SellsEmporiumFrom').Value :=
      GetcFrom(myParams.ParamValues['SellsEmporium'], ftInteger);
    Parameters.ParamByName('SellsEmporiumTo').Value :=
      GetcTo(myParams.ParamValues['SellsEmporium'], ftInteger);

    lblDate.Caption := 'ازتاريخ' + qryEntity.Parameters.ParamByName('DateFrom')
      .Value + ' تا ' + qryEntity.Parameters.ParamByName('DateTo').Value;
    // Active:=True;
  end; // with

end;

procedure TRptEntityStuffF.UpdateFilter;
begin
  MakeSQL;
  UpdateqryEntity;
  with qryStore do
  begin
    Active := False;
    Parameters.ParamByName('n_StoreIDForm').Value :=
      GetcFrom(myParams.ParamValues['StoreID'], ftInteger);
    Parameters.ParamByName('n_StoreIDTo').Value :=
      GetcTo(myParams.ParamValues['StoreID'], ftInteger);
    Parameters.ParamByName('UserID').Value := User.id;
    Parameters.ParamByName('UserIDAdmin').Value :=
      ifthen(User.PowerUser, 127, User.id);
    Active := True;
  end; // with

end;

procedure TRptEntityStuffF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItemFilter(GetFilter, TFilterPersonID1D);
      if P3ActAdd.Person3Active then
        AddItem(DMf.adcBsell, 'PersonID3', P3ActAdd.Person3Caption, 'كد',
          ftInteger, dvMinMax, '', '', ciLookup,
          ' SELECT Customers.CustID, Customers.CustName FROM Customers INNER JOIN CustomersGroup ON '
          + ' Customers.CustomerGrpID = CustomersGroup.CustomerGrpID WHERE (CustomersGroup.GroupType IN('
          + P3ActAdd.CustomerKind3 + '))',

          'SELECT 0,2147483647');

      if opt.StuffKindActive then
        AddItem(DMf.adcBsell, 'StuffKindActive', 'نوع كالا', '', ftUnknown,
          dvDefaults, 'True', '', ciCheck,
          'SELECT 0 as OwnerShipKind,''قطعي''  as OwnerShipKindName FROM  Config union all '
          + 'SELECT 1 as OwnerShipKind,''اماني'' as OwnerShipKindName FROM  Config ',
          '');
      AddItem(DMf.adcBsell, 'ReciptDate', ' تاريخ ', 'تاريخ', ftDate, dvMinMax,
        '', '', ciSimple, '', 'Select  ''' + APPBank.StartYear +
        ''',Max(ReciptDate) FROM Recipts ');

      AddItemFilter(GetFilter, TFilterStuffCode);
      AddItemFilter(GetFilter, TFilterSellsEmporium);

      AddItem(DMf.adcBsell, 'StoreID', ' انبار ', 'كد', ftInteger, dvMinMax, '',
        '', ciLookup, LookupSQL4Store, MinMaxSQL4Store);
      AddItem(DMf.adcBsell, 'GROUPID', 'گروه كالا', 'كد', ftInteger, dvMinMax,
        '', '', ciLookup, 'select groupid,groupname FROM stuffgroups ',
        'Select Min(GroupID),max(GroupID) FROM stuffgroups');
      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateFilter;
      end;
      // if
    finally
      Free;
    end; // try
  end; // with
end;

procedure TRptEntityStuffF.qryStoreAfterScroll(DataSet: TDataSet);
begin
  inherited;
  With qryEntity do
  begin
    Active := False;
    if chklst1.Checked[2] then
    begin
      Parameters.ParamByName('StoreIDFrom').Value :=
        GetcFrom(myParams.ParamValues['StoreID'], ftInteger);
      Parameters.ParamByName('StoreIDTo').Value :=
        GetcTo(myParams.ParamValues['StoreID'], ftInteger);

    end
    else
    begin
      Parameters.ParamByName('StoreIDFrom').Value :=
        qryStore.fieldbyname('n_StoreID').AsInteger;
      Parameters.ParamByName('StoreIDTo').Value :=
        qryStore.fieldbyname('n_StoreID').AsInteger;

    end;

    Active := True;
  end;

  PriceOnStoreType(qryStore.fieldbyname('n_StoreID').AsInteger, DBGrid1,
    qryEntity);
  PriceOnStoreType(qryStore.fieldbyname('n_StoreID').AsInteger, DBGrid1,
    qryEntity);
  Entity_Weight(DBGrid1);
  DBGrid1.SetFooter4Sum([]);
  DBGrid1.ColorDBGrid;
  THackGrid(DBGrid1).DoLoad;

  // With
end;

procedure TRptEntityStuffF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('ReciptDate') = nil then
    close;

end;

procedure TRptEntityStuffF.SBtnStoreIDClick(Sender: TObject);
var
  c: String;
begin
  inherited;

  if searchCode_ADOF.SearchCode(DMf.adcBsell, c, LblStore.Caption + 'ها',
    'SELECT n_StoreID, c_StoreName FROM Stores ',
    ['کد', 'نام ' + LblStore.Caption], alLeft) <> '' then
    qryStore.Locate('n_StoreID', c, []);
end;

procedure TRptEntityStuffF.ppLabel11GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := 'از كد كالاي ' + GetcFrom(myParams.ParamValues['StuffCode'],
    ftLargeint) + ' تا ' + GetcTo(myParams.ParamValues['StuffCode'],
    ftLargeint);
end;

procedure TRptEntityStuffF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TRptEntityStuffF.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TRptEntityStuffF.FormDestroy(Sender: TObject);
begin
  inherited;
  P3ActAdd.Free;
end;

procedure TRptEntityStuffF.actsendtoexelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TRptEntityStuffF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qryStore.DisableControls;
    qryEntity.DisableControls;
    InitReportFile(ppReport1, 'RptEntityStuff');
  finally
    qryStore.EnableControls;
    qryEntity.EnableControls;
  end; // try
end;

procedure TRptEntityStuffF.ppLabel16GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := 'از تاريخ' + qryEntity.Parameters.ParamByName('DateFrom').Value +
    ' تا ' + qryEntity.Parameters.ParamByName('DateTo').Value;
end;

procedure TRptEntityStuffF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryEntity);
end;

procedure TRptEntityStuffF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryEntity);
end;

procedure TRptEntityStuffF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TRptEntityStuffF.qryEntityAfterOpen(DataSet: TDataSet);
var
  i: Integer;
  // s: string;
begin
  inherited;

  P3ActAdd.load(qryEntity, nil);
  if not chklst1.Checked[2] then
    SetExtraCoding(qryEntity, DBGrid1);

  setColumns2(DBGrid1, chklst1.Checked[2], 'StoreID');
  setColumns2(DBGrid1, chklst1.Checked[2], 'c_StoreName');

  setColumns2(DBGrid1, chklst1.Checked[3], 'PersonID1');
  setColumns2(DBGrid1, chklst1.Checked[3], 'CustName1');

  setColumns2(DBGrid1, not chklst1.Checked[2], 'StuffCode');
  setColumns2(DBGrid1, not chklst1.Checked[2], 'c_StuffName');
  setColumns2(DBGrid1, not chklst1.Checked[2], 'كالا|StuffName');

  // setColumns2(DBGrid1, opt.ActiveSellPrice2, 'InvSellPrice');
  setColumns2(DBGrid1, opt.StuffTecInfoActive, 'c_StuffTecInfo');
  // setColumns2(DBGrid1, opt.ActiveSellPrice2, 'TotallSellPrice');
  // qryEntity.FieldByName('InvSellPrice').Visible :=
  // opt.ActiveSellPrice2;
  // qryEntity.FieldByName('TotallSellPrice').Visible :=
  // opt.ActiveSellPrice2;
  // qryEntity.FieldByName('c_StuffTecInfo').Visible :=
  // opt.StuffTecInfoActive;
  HideOrShowSellPriceFields(qryEntity, DBGrid1);

  setColumns2(DBGrid1, opt.LevelIdStuffGroup in [0, 1, 2], 'GroupID');
  setColumns2(DBGrid1, opt.LevelIdStuffGroup in [0, 1, 2], 'GroupName');

  setColumns2(DBGrid1, opt.LevelIdStuffGroup in [1, 2], 'GroupID1');
  setColumns2(DBGrid1, opt.LevelIdStuffGroup in [1, 2], 'GroupName1');

  setColumns2(DBGrid1, opt.LevelIdStuffGroup in [2], 'GroupID2');
  setColumns2(DBGrid1, opt.LevelIdStuffGroup in [2], 'GroupName2');

  with qryEntity do
  begin
    for i := 0 to Fields.Count - 1 do
    begin
      // if Fields[i].DisplayLabel <> Fields[i].FieldName then
      Fields[i].Tag := 3;
      if Fields[i] is TBCDField then
        TBCDField(Fields[i]).currency := True;

    end;

    if FindField('StoreID') <> nil then
      fieldbyname('StoreID').DisplayLabel := 'كد انبار';
    if FindField('c_StoreName') <> nil then
      fieldbyname('c_StoreName').DisplayLabel := 'انبار';

    if FindField('SellsEmporium') <> nil then
      fieldbyname('SellsEmporium').DisplayLabel := 'مرکزفروش|کد';

    if FindField('SellsEmporiumName') <> nil then
      fieldbyname('SellsEmporiumName').DisplayLabel := 'مرکزفروش|نام';

    if FindField('PersonID1') <> nil then
      fieldbyname('PersonID1').DisplayLabel := 'تحویل گیرنده|کد';

    if FindField('CustName1') <> nil then
      fieldbyname('CustName1').DisplayLabel := 'تحویل گیرنده|نام';

    fieldbyname('StuffCode').DisplayLabel := 'كالا|كد';

    if FindField('c_StuffName') <> nil then
      fieldbyname('c_StuffName').DisplayLabel := 'كالا|نام';

    if FindField('c_StuffTecInfo') <> nil then
      fieldbyname('c_StuffTecInfo').DisplayLabel := 'مشخصات فني';

    if FindField('UnitName') <> nil then
      fieldbyname('UnitName').DisplayLabel := 'واحد|شمارش';

    if FindField('UnitName2') <> nil then
      fieldbyname('UnitName2').DisplayLabel := 'واحد|شمارش2';

    if FindField('c_KeepPlace') <> nil then
      fieldbyname('c_KeepPlace').DisplayLabel := 'محل نگهداری';

    if FindField('Cabinet') <> nil then
      fieldbyname('Cabinet').DisplayLabel := 'طبقه';

    if FindField('KeepPlace') <> nil then
      fieldbyname('KeepPlace').DisplayLabel := 'محل نگهداری جدید';

    if FindField('Cabinets') <> nil then
      fieldbyname('Cabinets').DisplayLabel := 'طبقه جدید';

    if FindField('minOrder') <> nil then
      fieldbyname('minOrder').DisplayLabel := 'حداقل موجودي';

    if FindField('MaxOrder') <> nil then
      fieldbyname('MaxOrder').DisplayLabel := 'حداکثر موجودي';

    if FindField('OrderPoint') <> nil then
      fieldbyname('orderPoint').DisplayLabel := 'نقطه سفارش';

    if FindField('GroupID') <> nil then
      fieldbyname('GroupID').DisplayLabel := 'گروه|كد کالا0';

    if FindField('GroupID1') <> nil then
      fieldbyname('GroupID1').DisplayLabel := ' گروه|كد کالا1';

    if FindField('GroupID2') <> nil then
      fieldbyname('GroupID2').DisplayLabel := ' گروه|كد کالا2';

    if FindField('GroupName') <> nil then
      fieldbyname('GroupName').DisplayLabel := 'گروه| كالا0';

    if FindField('GroupName1') <> nil then
      fieldbyname('GroupName1').DisplayLabel := 'گروه| كالا1';

    if FindField('GroupName2') <> nil then
      fieldbyname('GroupName2').DisplayLabel := 'گروه| كالا2';

    fieldbyname('Entity').DisplayLabel := 'مقدار';
    fieldbyname('Weight').DisplayLabel := 'وزن';
    fieldbyname('Price').DisplayLabel := 'مبلغ';
    TBCDField(fieldbyname('Price')).currency := True;
    TBCDField(fieldbyname('InvSellPrice')).currency := True;
    fieldbyname('InvSellPrice').DisplayLabel := 'بهاي تمام شده موجودي';
    fieldbyname('unitSellPrice').DisplayLabel := 'في';
  end;

  DBGrid1.setSizeColDBGrid;

end;

procedure TRptEntityStuffF.FormCreate(Sender: TObject);
begin
  inherited;
  chklst1.Items.Clear;
  chklst1.Items.Add('مرکز فروش');
  chklst1.Items.Add('موجودی صفر نمایش شود');
  chklst1.Items.Add('همه ی انبارها');
  chklst1.Items.Add('کد تحویل دهنده');
  chklst1.Items.Add('فقط مقدار غیر صفر نمایش شود');
  chklst1.Items.Add('فقط   وزن  غیر صفر نمایش شود');
  P3ActAdd := TPerson3ActiveAdd.Create;
  P3ActAdd.load(nil, nil);
end;

procedure TRptEntityStuffF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryEntity.fieldbyname('StuffCode'));
end;

procedure TRptEntityStuffF.actCardexExecute(Sender: TObject);
begin
  inherited;
  RptCardexF.Enter(qryEntity.fieldbyname('StoreID').AsInteger,
    qryEntity.fieldbyname('StuffCode').AsLargeInt, 1);
  // MyParams.CreateParam(ftInteger,'ControlCode',ptInput).AsString:='0;999999999';
  // MyParams.CreateParam(ftInteger,'store',ptInput).AsString:=myParams.ParamValues['StoreID'];
  // MyParams.CreateParam(ftDate,'Date',ptInput).AsString:=myParams.ParamValues['ReciptDate'];
  // MyParams.CreateParam(ftInteger,'StuffCode',ptInput).AsString:=
  // qryEntity.FieldByName('StuffCode').AsLargeInt+';'+qryEntity.FieldByName('StuffCode').AsLargeInt;
  // CreateMDIForm2(TRptCardexF,RptCardexF,Self,100);
  // RptCardexF.cmbStore.ItemIndex:=RptCardexF.cmbStore.Items.IndexOfObject(TObject(qryStore.Fieldbyname('n_StoreID').AsInteger));
  // if not RptCardexF.qryStuffs.Locate('StuffCode',qryEntity.FieldByName('StuffCode').Value,[])
  // then Warn('كالاي مورد نظر يافت نشد');
end;

procedure TRptEntityStuffF.DBGrid1DblClick(Sender: TObject);
var
  StoreID: Integer;
begin
  inherited;
  if chklst1.Checked[2] then
  begin
    StoreID := qryEntity.fieldbyname('StoreID').AsInteger;
    chklst1.Checked[2] := False;
    qryStore.Locate('n_StoreID', StoreID, []);
  end
  else
    actCardex.Execute
end;

procedure TRptEntityStuffF.actPrint2Execute(Sender: TObject);
begin
  inherited;
  try
    qryStore.DisableControls;
    qryEntity.DisableControls;
    InitReportFile(ppReport1, 'RptEntityStuff_2');
  finally
    qryStore.EnableControls;
    qryEntity.EnableControls;
  end; // try
end;

procedure TRptEntityStuffF.BitBtn7Click(Sender: TObject);
begin
  inherited;
  PopupMenu1.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TRptEntityStuffF.chklst1ClickCheck(Sender: TObject);
begin
  inherited;
  BigMessage('لطفاصبر کنید....', 0);
  DBGrid1.InitDelete;

  pnlStore.Visible := not chklst1.Checked[2];
  MakeSQL;
  UpdateFilter;
  if qryStore.Active then
    qryStoreAfterScroll(qryStore);

  DBGrid1.setSizeColDBGrid;
  BigMessage('انجام شد', 1);

end;

procedure TRptEntityStuffF.actshowGrid2PrintExecute(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, 0);
end;

end.
