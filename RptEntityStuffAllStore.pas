unit RptEntityStuffAllStore;
// <><>

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, Grids, Vcl.DBGrids, ComCtrls, DBCtrls, DB, ADODB, ppCtrls, Math,
  ppPrnabl, ppClass, ppDB, ppDBPipe, ppBands, ppVar, ppCache,ReciptsFunctions ,
  ppComm, ppRelatv, ppProd, ppReport, ppParameter, SumDBGrid, Filter_ADO_Const,
  ppDesignLayer, System.ImageList, System.Actions, FarsiReportBuilde, Vcl.Menus,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid;

type
  TRptEntityStuffAllStoreF = class(Ttemplate2MDIF)
    Label1: TLabel;
    SrcEntity: TDataSource;
    qryEntity: TADOQuery;
    qryEntityc_StuffName: TStringField;
    qryEntityUnitName: TStringField;
    qryEntityEntity: TFloatField;
    qryEntityWeight: TFloatField;
    qryEntityPrice: TBCDField;
    actFilter: TAction;
    BitBtn2: TBitBtn;
    BitBtn7: TBitBtn;
    ppReport1: TppReport;
    actPrint: TAction;
    ppDBPipeline1: TppDBPipeline;
    ppDBPipeline2: TppDBPipeline;
    BitBtn6: TBitBtn;
    BitBtn1: TBitBtn;
    actsendtoexel: TAction;
    BitBtn3: TBitBtn;
    actSort: TAction;
    actCardex: TAction;
    BitBtn4: TBitBtn;
    ppHeaderBand1: TppHeaderBand;
    ppShape2: TppShape;
    ppLblCompanyName: TppLabel;
    ppLabel2: TppLabel;
    ppLine1: TppLine;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLblPrintDate: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel5: TppLabel;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLabel16: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLine33: TppLine;
    ppDBText7: TppDBText;
    ppDBText6: TppDBText;
    ppDBText5: TppDBText;
    ppDBText2: TppDBText;
    ppDBText8: TppDBText;
    ppDBText1: TppDBText;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppFooterBand1: TppFooterBand;
    ppShape3: TppShape;
    ppLine26: TppLine;
    ppLine28: TppLine;
    ppDBCalc1: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppLine34: TppLine;
    ppLabel12: TppLabel;
    ppDBCalc7: TppDBCalc;
    ppLabel14: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppShape1: TppShape;
    ppLabel15: TppLabel;
    ppLine27: TppLine;
    ppLine29: TppLine;
    ppDBCalc2: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppLine21: TppLine;
    ppDBCalc8: TppDBCalc;
    ppLabel13: TppLabel;
    ppLabel1: TppLabel;
    ppDBText9: TppDBText;
    ppLine7: TppLine;
    ppLine10: TppLine;
    qryEntitysd1: TStringField;
    qryEntitysd2: TStringField;
    qryEntitysd3: TStringField;
    qryEntitysd4: TStringField;
    qryEntitysd5: TStringField;
    qryEntitysd6: TStringField;
    qryEntitysd7: TStringField;
    qryEntitysd8: TStringField;
    qryEntitysd9: TStringField;
    qryEntityTotallSellPrice: TBCDField;
    lblDate: TLabel;
    qryEntityStuffCode: TLargeintField;
    qryEntityc_StuffTecInfo: TStringField;
    qryEntityunitSellPrice: TFloatField;
    qryEntityGroupID: TIntegerField;
    qryEntityc_KeepPlace: TStringField;
    qryEntityCabinet: TWideStringField;
    PopupMenu1: TPopupMenu;
    mnuPrint: TMenuItem;
    N21: TMenuItem;
    chkEntity: TCheckBox;
    DBGrid1: TCedarDbgrid;
    qryEntityStoreID: TSmallintField;
    qryEntityKeepPlace: TStringField;
    qryEntityCabinets: TWideStringField;
    procedure actFilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ppLabel11GetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable1GetText(Sender: TObject; var Text: String);
    procedure actsendtoexelExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure ppLabel16GetText(Sender: TObject; var Text: String);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure actCardexExecute(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure mnuPrintClick(Sender: TObject);
    procedure chkEntityClick(Sender: TObject);

  private
    { Private declarations }
    ShowFilter: Boolean;
    procedure UpdateFilter;
    procedure MakeSQL;
  public
    { Public declarations }
  end;

var
  RptEntityStuffAllStoreF: TRptEntityStuffAllStoreF;

implementation

uses DM, filter_ADO, FilterClass_ADO, GlobalPro, search2, sort2,
  RptCardex, FormFunctions, FaraConsts, RptEntityStuffGrpAllStore;

{$R *.dfm}

procedure TRptEntityStuffAllStoreF.MakeSQL;
var
  s: String;
begin
  with qryEntity do
  begin
    Active := False;
    SQL.Text := 'SELECT R_S.StuffCode, S.c_StuffName';
    SQL.Add(', Units.UnitName, S.sd1, S.sd2,S.sd3,');
    SQL.Add('S.sd4, S.sd5, S.sd6, S.sd7, S.sd8, S.sd9,');
    SQL.Add('Round(SUM(R_S.InputEntity - R_S.OutputEntity),3) AS Entity,');
    SQL.Add('Round( SUM(R_S.InputWeight - R_S.OutputWeight),3)AS Weight,');
    SQL.Add('SUM(R_S.TotalInputPrice - R_S.TotalOutputPrice) AS Price');
    SQL.Add(', S.GroupID,');
    SQL.Add('');
    SQL.Add('round(sum( round((case when R_S.EffectType = 2 then 1 else -1 end ) *');
    SQL.Add('R_S.TotallsellPrice , 3 )),3) AS TotallSellPrice,');
    SQL.Add('');
    SQL.Add('S.c_StuffTecInfo');
    SQL.Add('');
    SQL.Add('');
    SQL.Add(', Round( case when Round( SUM(R_S.InputEntity - R_S.OutputEntity),3)<>0 then');
    SQL.Add('round( SUM(R_S.TotalInputPrice - R_S.TotalOutputPrice)/');
    SQL.Add('SUM(R_S.InputEntity - R_S.OutputEntity),0) else 0 end ,3) as unitSellPrice');
    SQL.Add(', S.c_KeepPlace, S.Cabinet, Sf.KeepPlace, Sf.Cabinet Cabinets');
    SQL.Add(',Min(R_S.StoreID) StoreID');
    SQL.Add('');
    SQL.Add('FROM ReciptItems_Stock AS R_S ');
    SQL.Add('INNER JOIN');
    SQL.Add('StuffCoding AS s ON R_S.StuffCode = S.c_StuffCode INNER JOIN');
    SQL.Add('Units ON S.n_UnitCode = Units.UnitCode');
    SQL.Add('LEFT OUTER JOIN StuffCodingFacilities Sf ON s.c_StuffCode = Sf.StuffCode AND R_S.StoreID = Sf.StoreID');
    SQL.Add('WHERE R_S.StoreID in(');
    SQL.Add('SELECT DISTINCT n_StoreID');
    SQL.Add('FROM UsersStore');
    SQL.Add('WHERE (n_UserID = :UserID) OR');
    SQL.Add('(:UserIDAdmin = 127))AND');
    SQL.Add('');
    SQL.Add('(R_S.ReciptDate BETWEEN :DateFrom AND :DateTo)');
    SQL.Add('AND (R_S.StoreID BETWEEN :StoreIDFrom AND :StoreIDTo )');
    SQL.Add('AND (R_S.StuffCode BETWEEN :StuffCodeFrom AND :StuffCodeTo)');

    SQL.Add('AND (S.GroupID BETWEEN :GroupIdFrom AND :GroupIdTo)');

    setInOrNotIn4QRy(qryEntity, myParams, 'StoreID', 'R_S.StoreID');


    if opt.StuffKindActive then
      if (myParams.FindParam('StuffKindActive') <> nil) then
        s := GetcFrom(myParams.ParamValues['StuffKindActive'], ftString);
    if s = '' then
      s := '0,1';

    SQL.Add('AND (S.OwnerShipKind in (' + s + ')) and');

    SQL.Add('R_S.yearID between :YearIDFrom And :YearIDTO');
    SQL.Add('');
    if (myParams.FindParam('PersonID1D') <> nil) then
    begin
      SQL.Add('AND (R_S.PersonID1D BETWEEN :PersonID1DFrom AND :PersonID1DTo)');
      Parameters.ParamByName('PersonID1DFrom').Value :=
        GetcFrom(myParams.ParamValues['PersonID1D'], ftInteger);
      Parameters.ParamByName('PersonID1DTo').Value :=
        GetcTo(myParams.ParamValues['PersonID1D'], ftInteger);
    end;
    SQL.Add('');
    SQL.Add('GROUP BY R_S.StuffCode, S.c_StuffName, Units.UnitName, S.sd1, S.sd2,');
    SQL.Add('S.sd3,');
    SQL.Add('S.sd4, S.sd5, S.sd6, S.sd7, S.sd8,');
    SQL.Add('S.sd9,S.GroupID,S.c_StuffTecInfo');
    SQL.Add(', S.c_KeepPlace, S.Cabinet, Sf.KeepPlace, Sf.Cabinet');
    SQL.Add('HAVING ((SUM(R_S.InputEntity - R_S.OutputEntity) >= 0.0001 OR');
    SQL.Add('SUM(R_S.InputEntity - R_S.OutputEntity) <= - 0.0001) OR');
    SQL.Add('(SUM(R_S.InputWeight - R_S.OutputWeight) >= 0.0001) OR');
    SQL.Add('(SUM(R_S.InputWeight - R_S.OutputWeight) <= - 0.0001)OR');
    SQL.Add('(SUM(R_S.TotalInputPrice - R_S.TotalOutputPrice) >= 0.1) OR');
    SQL.Add('(SUM(R_S.TotalInputPrice - R_S.TotalOutputPrice) <= - 0.1))');

    if chkEntity.Checked then
    begin
      case opt.EntityDisplayType of
        0:
          SQL.Add('and (round(sum (R_S.InputEntity - R_S.OutputEntity ), 3 ) <>0)');
        1:
          SQL.Add('and (round(sum (R_S.InputWeight - R_S.OutputWeight ), 3 ) <>0)');
      else
        begin
          SQL.Add('and ( (round(sum (R_S.InputEntity - R_S.OutputEntity ), 3 ) <>0)');
          SQL.Add('or (round(sum (R_S.InputWeight - R_S.OutputWeight ), 3 ) <>0))');

        end;

      end;
    end;

    SQL.Add('ORDER BY S.GroupID, R_S.StuffCode');
    SQL.Add('');

  end;

end;

procedure TRptEntityStuffAllStoreF.UpdateFilter;
begin
  MakeSQL;
  with qryEntity do
  begin
    Active := False;
    if (myParams.FindParam('StoreID') <> nil) then
    begin
      Parameters.ParamByName('StoreIDFrom').Value :=
        GetcFrom(myParams.ParamValues['StoreID'], ftInteger);
      Parameters.ParamByName('StoreIDTo').Value :=
        GetcTo(myParams.ParamValues['StoreID'], ftInteger);
    end
    else
    begin
      Parameters.ParamByName('StoreIDFrom').Value := 0;
      Parameters.ParamByName('StoreIDTo').Value := 999;
    end;

    Parameters.ParamByName('DateFrom').Value :=
      GetcFrom(myParams.ParamValues['ReciptDate'], ftDate);
    Parameters.ParamByName('DateTo').Value :=
      GetcTo(myParams.ParamValues['ReciptDate'], ftDate);
    Parameters.ParamByName('StuffCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['StuffCode'], ftLargeint);
    Parameters.ParamByName('StuffCodeTo').Value :=
      GetcTo(myParams.ParamValues['StuffCode'], ftLargeint);


    Parameters.ParamByName('GROUPIDFrom').Value :=
      GetcFrom(myParams.ParamValues['GROUPID'], ftInteger);
    Parameters.ParamByName('GROUPIDTo').Value :=
      GetcTo(myParams.ParamValues['GROUPID'], ftInteger);


    Parameters.ParamByName('YearIDFrom').Value := opt.DefaultYear;
    Parameters.ParamByName('YearIDTo').Value := APPBank.Year;

    Parameters.ParamByName('UserID').Value := User.id;
    Parameters.ParamByName('UserIDAdmin').Value :=
      ifthen(User.PowerUser, 127, User.id);

    lblDate.Caption := '  «“  «—ÌŒ  ' + Parameters.ParamByName('datefrom').Value
      + '   «  «—ÌŒ  ' + Parameters.ParamByName('dateto').Value;
    lblDate.Caption := lblDate.Caption + '    «“ «‰»«—  ' +
      VarToStr(Parameters.ParamByName('STOREIDFrom').Value) + '   « «‰»«—  ' +
      VarToStr(Parameters.ParamByName('STOREIDTo').Value);

    PriceOnStoreType(Parameters.ParamByName('StoreIDFrom').Value, DBGrid1,
      qryEntity);

    Active := True;
  end; // with
end;

procedure TRptEntityStuffAllStoreF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItemFilter(GetFilter, TFilterPersonID1D);
      if opt.StuffKindActive then
        AddItem(DMF.adcBSell, 'StuffKindActive', '‰Ê⁄ ﬂ«·«', '', ftUnknown,
          dvDefaults, 'True', '', ciCheck,
          'SELECT  0 as OwnerShipKind,''ﬁÿ⁄Ì''  as OwnerShipKindName FROM  Config union all '
          + 'SELECT  1 as OwnerShipKind,''«„«‰Ì'' as OwnerShipKindName FROM  Config ',
          '');
      AddItem(DMF.adcBSell, 'ReciptDate', '  «—ÌŒ ', ' «—ÌŒ', ftDate, dvMinMax,
        '', '', ciSimple, '', 'Select  ''' + APPBank.StartYear +
        ''',Max(ReciptDate) from Recipts ');

      AddItemFilter(GetFilter, TFilterStuffCode);
      AddItemFilter(GetFilter, TFilterGroupID);

      AddItem(DMF.adcBSell, 'StoreID', ' «‰»«— ', 'ﬂœ', ftInteger, dvMinMax, '',
        '', ciLookup, LookupSQL4Store, MinMaxSQL4Store,True);
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

procedure TRptEntityStuffAllStoreF.FormShow(Sender: TObject);
begin
  inherited;
  if not ShowFilter then
  begin
    UpdateFilter;
    Exit;
  end;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('ReciptDate') = nil then
    close;
end;

procedure TRptEntityStuffAllStoreF.mnuPrintClick(Sender: TObject);
begin
  inherited;
  try
    qryEntity.DisableControls;
    InitReportFile(ppReport1, (Sender as TMenuItem).Hint);
  finally
    qryEntity.EnableControls;
  end; // try
end;

procedure TRptEntityStuffAllStoreF.ppLabel11GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := '«“ ﬂœ ﬂ«·«Ì ' +
    IntToStr(qryEntity.Parameters.ParamByName('StuffCodeFrom').Value) + '  « ' +
    IntToStr(qryEntity.Parameters.ParamByName('StuffCodeTo').Value);
end;

procedure TRptEntityStuffAllStoreF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TRptEntityStuffAllStoreF.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TRptEntityStuffAllStoreF.actsendtoexelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TRptEntityStuffAllStoreF.actPrintExecute(Sender: TObject);
begin
  inherited;
  PopupMenu1.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);

end;

procedure TRptEntityStuffAllStoreF.ppLabel16GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := '«“  «—ÌŒ' + qryEntity.Parameters.ParamByName('DateFrom').Value +
    '  « ' + qryEntity.Parameters.ParamByName('DateTo').Value;
end;

procedure TRptEntityStuffAllStoreF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryEntity);
end;

procedure TRptEntityStuffAllStoreF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryEntity);
end;

procedure TRptEntityStuffAllStoreF.chkEntityClick(Sender: TObject);
begin
  inherited;
  MakeSQL;
  UpdateFilter;
end;

procedure TRptEntityStuffAllStoreF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TRptEntityStuffAllStoreF.FormCreate(Sender: TObject);
begin
  inherited;
  Entity_Weight(DBGrid1);
  SetExtraCoding(qryEntity, DBGrid1);
  ShowFilter := var_glb_Boolean;
//  setColumns2(DBGrid1, opt.ActiveSellPrice2, 'TotallSellPrice');
//  qryEntity.FieldByName('TotallSellPrice').Visible := opt.ActiveSellPrice2;
    HideOrShowSellPriceFields(qryEntity,DBGrid1);

  if Not opt.ActiveSellPrice2 then
    DBGrid1.SetFooter4Sum(['TotallSellPrice'])
  ELSE
    DBGrid1.SetFooter4Sum([]);

end;

procedure TRptEntityStuffAllStoreF.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryEntity.fieldbyname('StuffCode'));
end;

procedure TRptEntityStuffAllStoreF.actCardexExecute(Sender: TObject);
begin
  inherited;
  RptCardexF.Enter(qryEntity.fieldbyname('StoreID').AsInteger,
    qryEntity.fieldbyname('StuffCode').AsLargeInt, 1);
end;

procedure TRptEntityStuffAllStoreF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  actCardex.Execute
end;

end.
