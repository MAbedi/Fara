{ -----------------------------------------------------------------------------
  Unit Name: rptStuffGroups
  Author:    Mahmood
  Purpose:
  History:
  ----------------------------------------------------------------------------- }
unit rptStuffGroups;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, DBCtrls, ppDB, ppDBPipe, ppModule,
  ppStrtch, ppRegion, ppVar, ppCtrls, ppBands, ppPrnabl, ppClass,
  ppCache, ppComm, ppRelatv, ppProd, ppReport, Menus, ComCtrls, SumDBGrid,
  ppParameter, ppDesignLayer, System.ImageList, System.Actions,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid;

type
  THackGrid = class(TCedarDbgrid);

  TrptStuffGroupsF = class(Ttemplate2MDIF)
    SrcStuffGroups: TDataSource;
    qryStuffGroups: TADOQuery;
    BitBtn2: TBitBtn;
    BitBtn7: TBitBtn;
    DBNavigator1: TDBNavigator;
    BitBtn4: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn5: TBitBtn;
    actFilter: TAction;
    actSendExel: TAction;
    qryInitQry: TADOQuery;
    actShowForm: TAction;
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    actPrint: TAction;
    BitBtn3: TBitBtn;
    actSort: TAction;
    ppHeaderBand1: TppHeaderBand;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLine3: TppLine;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel7: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppLine1: TppLine;
    ppLine5: TppLine;
    ppLblStoreID: TppLabel;
    ppLblReciptDate: TppLabel;
    ppLblStuffCode: TppLabel;
    ppLblReciptNumber: TppLabel;
    ppLabel1: TppLabel;
    ppDetailBand4: TppDetailBand;
    ppDBText33: TppDBText;
    ppDBText36: TppDBText;
    ppDBTextIOEntity: TppDBText;
    ppDBTextIOWeight: TppDBText;
    ppDBTextTotalIOPrice: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppCalcIOEntity: TppDBCalc;
    ppCalcIOWeight: TppDBCalc;
    ppCalcTotalIoPrice: TppDBCalc;
    ppLabel2: TppLabel;
    ppLine4: TppLine;
    ppLine6: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppLabel60: TppLabel;
    ppDBCalc3: TppDBCalc;
    ppLine2: TppLine;
    ppLine7: TppLine;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppLabel8: TppLabel;
    BitBtn1: TBitBtn;
    PopMnuOther: TPopupMenu;
    Action1: TAction;
    N1: TMenuItem;
    DBGrid1: TCedarDbgrid;
    procedure actFilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actSendExelExecute(Sender: TObject);
    procedure actShowFormExecute(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure ppLblReciptNumberGetText(Sender: TObject; var Text: String);
    procedure ppLblReciptDateGetText(Sender: TObject; var Text: String);
    procedure ppLblStoreIDGetText(Sender: TObject; var Text: String);
    procedure ppLblStuffCodeGetText(Sender: TObject; var Text: String);
    procedure ppLabel42GetText(Sender: TObject; var Text: String);
    procedure ppLabel1GetText(Sender: TObject; var Text: String);
    procedure ppLabel43GetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable3GetText(Sender: TObject; var Text: String);
    procedure actSortExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure actshowChartExecute(Sender: TObject);
    procedure qryStuffGroupsAfterOpen(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    formType: Byte;
    OrginalSQL: String;
    procedure UpdateFilter;
  public
    { Public declarations }
  end;

var
  rptStuffGroupsF: TrptStuffGroupsF;

implementation

uses filter_ADO, FilterClass_ADO, GlobalPro, DM, rptStuffCoding, search2,
  sort2, FormFunctions, TreeChart, Filter_ADO_Const;

{$R *.dfm}

procedure TrptStuffGroupsF.UpdateFilter;
var
  s: String;
begin

  with qryStuffGroups do
  begin
    Active := False;
    SQL.Text := 'SELECT StuffGroups.GroupID, StuffGroups.GroupName';

    // SQL.Add(',StuffGroups_1.GroupID AS GroupID1, StuffGroups_1.GroupName AS GroupName1');
    // SQL.Add(',StuffGroups_2.GroupID AS GroupID2,StuffGroups_2.GroupName AS GroupName2 ');

    SQL.Add(',StuffGroups.GroupID1, StuffGroups.GroupName1 ');
    SQL.Add(',StuffGroups.GroupID2,StuffGroups.GroupName2 ');

    SQL.Add(', Recipts.ReciptType, ReciptTypes.ReciptCaption,');
    SQL.Add('round( SUM(ReciptItems.InputEntity + ReciptItems.OutputEntity),2) AS entity,');
    SQL.Add('round( SUM(ReciptItems.InputWeight + ReciptItems.OutputWeight),2) AS weight,');
    SQL.Add('SUM(ReciptItems.TotalInputPrice + ReciptItems.TotalOutputPrice) AS price,');
    SQL.Add('SUM(ReciptItems.DeficitValue+ ReciptItems.DeficitValue2 + ReciptItems.DeficitValue4+ ReciptItems.DeficitValue3) AS DeficitValue, SUM');
    SQL.Add('(ReciptItems.TaxValue) AS TaxValue, SUM(ReciptItems.Portage) AS Portage ,');
    SQL.Add('SUM(ReciptItems.TotallSellPrice ) AS TotallSellPrice');
    SQL.Add(', round((SUM(ReciptItems.TotalStandardRate)*3/100),0)as PriceAdd');
    SQL.Add(', SUM(ReciptItems.TotalStandardRate) as SumPrice');
    SQL.Add(', round((SUM(ReciptItems.TotalStandardRate)*3/100),0)+SUM(ReciptItems.TotalStandardRate) AS StandardSumPrice');
    SQL.Add('FROM StuffCoding INNER JOIN');
    // SQL.Add('StuffGroups ON StuffCoding.GroupID = StuffGroups.GroupID INNER JOIN');
    SQL.Add('dbo.StuffGroupLevel() AS StuffGroups ON StuffCoding.GroupID = StuffGroups.GroupID2');
    SQL.Add('INNER JOIN');

    SQL.Add('ReciptItems INNER JOIN');
    SQL.Add('Recipts ON dbo.Recipts.ReciptID = dbo.ReciptItems.ReciptID AND');
    SQL.Add('dbo.Recipts.ServerID = dbo.ReciptItems.ServerID AND dbo.Recipts.YearID = dbo.ReciptItems.YearID INNER');
    SQL.Add('JOIN');
    SQL.Add('ReciptTypes ON Recipts.ReciptType = ReciptTypes.ReciptType ON StuffCoding.c_StuffCode = ReciptItems.StuffCode');
    SQL.Add('');
    SQL.Add('INNER JOIN');
    SQL.Add('LookUps ON Recipts.SecondType = LookUps.LookUpID');

    // SQL.Add('LEFT OUTER JOIN StuffGroups AS StuffGroups_1 ON StuffGroups.UperGroupId = StuffGroups_1.GroupID');
    // SQL.Add('LEFT OUTER JOIN StuffGroups AS StuffGroups_2 ON StuffGroups_1.UperGroupId = StuffGroups_2.GroupID');

    SQL.Add('WHERE (LookUps.Code BETWEEN :SecondTypeCodeFrom AND :SecondTypeCodeTo ) ');
    SQL.Add('AND(Recipts.StoreID BETWEEN :StoreIDFrom AND :StoreIDTo)');
    SQL.Add('AND (Recipts.ReciptNumber BETWEEN :ReciptNumberFrom AND :ReciptNumberTo)');
    SQL.Add('AND (Recipts.ReciptDate BETWEEN :ReciptDateFrom AND :ReciptDateTo)');
    SQL.Add('AND (Recipts.ReciptState < 3)');

    if opt.StuffKindActive then
      s := GetcFrom(myParams.ParamValues['StuffKindActive'], ftString);
    if s = '' then
      s := '0,1';
    SQL.Add('AND (StuffCoding.OwnerShipKind in ( ' + s + ' ))');

    SQL.Add('AND (Recipts.ReciptType = :ReciptType ) ');

    // SQL.Add('AND (');
    // SQL.Add('(StuffCoding.GroupID BETWEEN :GroupIdFrom AND :GroupIdTo)');
    // SQL.Add('AND( StuffGroups_1.GroupID BETWEEN :GroupId1From AND :GroupId1To)');
    // SQL.Add('AND( StuffGroups_2.GroupID BETWEEN :GroupId2From AND :GroupId2To)');
    // SQL.Add(')');
    SQL.Add('AND(StuffGroups.GroupID  BETWEEN :GroupIdFrom  AND :GroupIdTo)');

    if opt.LevelIdStuffGroup = 2 then
    begin
      SQL.Add('AND(StuffGroups.GroupID1 BETWEEN :GroupId1From AND :GroupId1To)');
      SQL.Add('AND(StuffGroups.GroupID2 BETWEEN :GroupId2From AND :GroupId2To)');
    end;

    SQL.Add('AND (Recipts.YearID BETWEEN :YearIDFrom AND :YearIDTo)');
    SQL.Add('AND (Recipts.SellsEmporium BETWEEN :SellsEmporiumFrom AND :SellsEmporiumTo)');
    SQL.Add('AND (ReciptItems.StuffCode BETWEEN :StuffCodeFrom AND :StuffCodeTo)');
    SQL.Add('AND (Recipts.SellsMethod BETWEEN :SellsMethodFrom AND :SellsMethodTo)');
    SQL.Add('And (:NotStoreID1 = ''-1'' OR Recipts.StoreID not in (Select part From dbo.SplitString(:NotStoreID2,'','')))');
    SQL.Add('');
    SQL.Add('GROUP BY Recipts.ReciptType, ReciptTypes.ReciptCaption, StuffGroups.GroupID, StuffGroups.GroupName');

    // SQL.Add(',StuffGroups_1.GroupID, StuffGroups_1.GroupName');
    // SQL.Add(',StuffGroups_2.GroupID, StuffGroups_2.GroupName');

    SQL.Add(',StuffGroups.GroupID1, StuffGroups.GroupName1');
    SQL.Add(',StuffGroups.GroupID2, StuffGroups.GroupName2');

    Parameters.ParamByName('ReciptType').Value := formType;

    Parameters.ParamByName('GROUPIDFrom').Value :=
      GetcFrom(myParams.ParamValues['GROUPID0'], ftInteger);
    Parameters.ParamByName('GROUPIDTo').Value :=
      GetcTo(myParams.ParamValues['GROUPID0'], ftInteger);

    if opt.LevelIdStuffGroup = 2 then
    begin
      Parameters.ParamByName('GROUPID1From').Value :=
        GetcFrom(myParams.ParamValues['GROUPID1'], ftInteger);
      Parameters.ParamByName('GROUPID1To').Value :=
        GetcTo(myParams.ParamValues['GROUPID1'], ftInteger);

      Parameters.ParamByName('GROUPID2From').Value :=
        GetcFrom(myParams.ParamValues['GROUPID2'], ftInteger);
      Parameters.ParamByName('GROUPID2To').Value :=
        GetcTo(myParams.ParamValues['GROUPID2'], ftInteger);
    end;

    Parameters.ParamByName('YearIDFrom').Value := opt.DefaultYear;
    Parameters.ParamByName('YearIDTo').Value := APPBank.Year;
    UpdateFilterAllReciptTypes(qryInitQry, qryStuffGroups, myParams);
    Active := True;
  end; // with
  PriceOnStoreType(GetcFrom(myParams.ParamValues['StoreID'], ftInteger),
    DBGrid1, qryStuffGroups);
  PriceOnStoreType(GetcFrom(myParams.ParamValues['StoreID'], ftInteger),
    DBGrid1, qryStuffGroups);

end;

procedure TrptStuffGroupsF.actFilterExecute(Sender: TObject);
var
  fi: TfilterF;
begin
  inherited;
  fi := TfilterF.Create2(Self, myParams);
  with fi do
  begin
    try
      if opt.StuffKindActive then
        AddItem(DMF.adcBSell, 'StuffKindActive', '‰Ê⁄ ﬂ«·«', '', ftUnknown,
          dvDefaults, 'True', '', ciCheck,
          'SELECT  0 as OwnerShipKind,''ﬁÿ⁄Ì''  as OwnerShipKindName FROM  Config union all '
          + 'SELECT  1 as OwnerShipKind,''«„«‰Ì'' as OwnerShipKindName FROM  Config ',
          '');

      if opt.LevelIdStuffGroup = 2 then
      begin
        AddItemFilter(GetFilter, TFilterGroupID2);
        AddItemFilter(GetFilter, TFilterGroupID1);
      end;
      AddItemFilter(GetFilter, TFilterGroupID0);

      FilterAllReciptTypes(qryInitQry, fi);
      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateFilter;
      end; // if
    finally
      Free;
    end; // try
  end; // with
end;

procedure TrptStuffGroupsF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('ReciptDate') = nil then
    close;
end;

procedure TrptStuffGroupsF.FormCreate(Sender: TObject);
var
  b: Boolean;
begin
  inherited;
  OrginalSQL := qryStuffGroups.SQL.Text;
  formType := var_glb_gParam;
  with qryInitQry do
  begin
    Active := False;
    Parameters.ParamByName('Type').Value := formType;
    Active := True;
    Caption := ' ê“«—‘ ' + FieldByName('ReciptCaption').AsString +
      '  » ›ﬂÌﬂ ê—ÊÂ ﬂ«·«';
  end;
end;

procedure TrptStuffGroupsF.FormDestroy(Sender: TObject);
begin
  inherited;
  THackGrid(DBGrid1).DoSave;
end;

procedure TrptStuffGroupsF.actSendExelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1)
end;

procedure TrptStuffGroupsF.actShowFormExecute(Sender: TObject);
begin
  inherited;
  // if  Pos('rptstuffcodingf'+IntToStr(formType)+'@' ,opt.MenuNames)<>0 then begin
  CreateMDIForm2(TrptStuffCodingF, rptStuffCodingF, Self, formType);
  rptStuffCodingF.ShowForm(qryStuffGroups.FieldByName('GroupID').AsInteger);
  // end//
  // else Warn('ÊÌ—«Ì‘ Ê ‰„«Ì‘ «Ì‰ ›—„ œ— ”ÿÕ œ” —”Ì ‘„« ‰„Ìù»«‘œ.');
end;

procedure TrptStuffGroupsF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  actShowForm.Execute;
end;

procedure TrptStuffGroupsF.actPrintExecute(Sender: TObject);
begin
  inherited;
  if qryInitQry.FieldByName('DiscountActive').AsInteger = 1 then
    try
      qryStuffGroups.DisableControls;
      InitReportFile(ppReport1, 'rptStuffGroupsDiscountActive', True);
      Exit;
    finally
      qryStuffGroups.EnableControls;
    end; // try

  try
    qryStuffGroups.DisableControls;
    InitReportFile(ppReport1, 'rptStuffGroups');
  finally
    qryStuffGroups.EnableControls;
  end; // try
end;

procedure TrptStuffGroupsF.ppLblReciptNumberGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := '«“ ‘„«—Â ' + IntToStr(qryStuffGroups.Parameters.ParamByName
    ('ReciptNumberFrom').Value) + '  « ' +
    IntToStr(qryStuffGroups.Parameters.ParamByName('ReciptNumberTo').Value)
end;

procedure TrptStuffGroupsF.ppLblReciptDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := '«“  «—ÌŒ ' + qryStuffGroups.Parameters.ParamByName('ReciptDateFrom')
    .Value + '  « ' + qryStuffGroups.Parameters.ParamByName
    ('ReciptDateTo').Value
end;

procedure TrptStuffGroupsF.ppLblStoreIDGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := '«“ ﬂœ «‰»«— ' + IntToStr(qryStuffGroups.Parameters.ParamByName
    ('StoreIDFrom').Value) + '  « ' +
    IntToStr(qryStuffGroups.Parameters.ParamByName('StoreIDTo').Value)
end;

procedure TrptStuffGroupsF.ppLblStuffCodeGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := '«“ ê—ÊÂ ﬂ«·«Ì ' +
    IntToStr(qryStuffGroups.Parameters.ParamByName('GroupIDFrom').Value) +
    '  « ' + IntToStr(qryStuffGroups.Parameters.ParamByName('GroupIDTo').Value)
end;

procedure TrptStuffGroupsF.ppLabel42GetText(Sender: TObject; var Text: String);
begin
  inherited;
  // Text:=ReadBankConfig('CompanyName','‘—ﬂ  ÿ—Õ Ê Å—œ«“‘ ›—«—«Ì«‰Â')
  // Text:=var_glb_CompanyName;
  Text := APPBank.CompanyName
end;

procedure TrptStuffGroupsF.ppLabel1GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPrintDate
end;

procedure TrptStuffGroupsF.ppLabel43GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := rptStuffGroupsF.Caption
end;

procedure TrptStuffGroupsF.ppSystemVariable3GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TrptStuffGroupsF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryStuffGroups);
end;

procedure TrptStuffGroupsF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryStuffGroups);
end;

procedure TrptStuffGroupsF.BitBtn1Click(Sender: TObject);
begin
  inherited;
  PopMnuOther.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TrptStuffGroupsF.actshowChartExecute(Sender: TObject);
begin
  inherited;
  TreeChartF.showChart(qryStuffGroups, Self)
end;

procedure TrptStuffGroupsF.qryStuffGroupsAfterOpen(DataSet: TDataSet);
var
  b: Boolean;
begin
  inherited;
  with qryInitQry do
  begin
    b := (FieldByName('DiscountActive').AsInteger = 1) or
      (FieldByName('VATActive').AsInteger = 1) or
      (FieldByName('PawsFieldsActive').AsInteger > 0) OR
      (FieldByName('CommissionActive').AsInteger > 0);
    setColumns2(DBGrid1, b, 'TotallSellPrice');
    if b then
      qryStuffGroups.FieldByName('TotallSellPrice').Tag := 3;

    b := FieldByName('StandardRateActive').AsInteger >= 1;
    setColumns2(DBGrid1, b, 'StandardSumPrice');
    setColumns2(DBGrid1, b, 'SumPrice');
    setColumns2(DBGrid1, b, 'PriceAdd');

    b := FieldByName('PawsFieldsActive').AsInteger in [1, 3];
    setColumns2(DBGrid1, b, 'Portage');

    b := FieldByName('VATActive').AsInteger = 1;
    setColumns2(DBGrid1, b, 'TaxValue');

    b := FieldByName('DiscountActive').AsInteger >= 1;
    setColumns2(DBGrid1, b, 'DeficitValue');

    setColumns2(DBGrid1, opt.LevelIdStuffGroup in [0, 1, 2], 'GroupID');
    setColumns2(DBGrid1, opt.LevelIdStuffGroup in [0, 1, 2], 'GroupName');

    setColumns2(DBGrid1, opt.LevelIdStuffGroup in [1, 2], 'GroupID1');
    setColumns2(DBGrid1, opt.LevelIdStuffGroup in [1, 2], 'GroupName1');

    setColumns2(DBGrid1, opt.LevelIdStuffGroup in [2], 'GroupID2');
    setColumns2(DBGrid1, opt.LevelIdStuffGroup in [2], 'GroupName2');

  end; // whit
  With qryStuffGroups do
  begin
    FieldByName('GroupID').DisplayLabel := 'ê—ÊÂ ﬂ«·«';
    FieldByName('GroupName').DisplayLabel := '⁄‰Ê«‰ ê—ÊÂ';
    FieldByName('GroupID1').DisplayLabel := 'ê—ÊÂ ﬂ«·«1';
    FieldByName('GroupName1').DisplayLabel := '⁄‰Ê«‰ ê—ÊÂ1';
    FieldByName('GroupID2').DisplayLabel := 'ê—ÊÂ ﬂ«·«2';
    FieldByName('GroupName2').DisplayLabel := '⁄‰Ê«‰ ê—ÊÂ2';
    FieldByName('entity').DisplayLabel := ' ⁄œ«œ';
    FieldByName('weight').DisplayLabel := '0 ';
    FieldByName('price').DisplayLabel := '„»·€ ò·';
    FieldByName('PriceAdd').DisplayLabel := '«—“‘˛«›“ÊœÂ';
    FieldByName('SumPrice').DisplayLabel := '„»·€';
    FieldByName('StandardSumPrice').DisplayLabel := '»Â«Ì ﬂ· «” «‰œ«—œ';
    FieldByName('Portage').DisplayLabel := 'ﬂ—«ÌÂ Õ„·';
    FieldByName('DeficitValue').DisplayLabel := ' Œ›Ì›';
    FieldByName('TaxValue').DisplayLabel := '„«·Ì« ';
    FieldByName('TotallSellPrice').DisplayLabel := 'Œ«·’';
    FieldByName('ReciptType').DisplayLabel := '‰Ê⁄ ê“«—‘';
    FieldByName('ReciptCaption').DisplayLabel := '‰«„ ê“«—‘';

    setColumns2(DBGrid1, False, 'ReciptType');
    setColumns2(DBGrid1, False, 'ReciptCaption');

  end;
  Entity_Weight(DBGrid1);
  DBGrid1.SetFooter4Sum([]);
  DBGrid1.ColorDBGrid;
  THackGrid(DBGrid1).DoLoad;
end;

end.
