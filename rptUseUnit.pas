unit rptUseUnit;

interface

uses
  SysUtils, Variants, Classes, Controls, Forms, template2MDI, DBCtrls, Buttons,
  StdCtrls, ComCtrls, ActnList, DB, ADODB, ppBands, ppCtrls, ppVar, ppDBPipe,
  ppReport, ppParameter, ppDB, ppPrnabl, ppClass, ppCache, ppComm, ppRelatv,
  ppProd, Mask, ImgList, DBActns, ExtCtrls, FarsiReportBuilde, ppDesignLayer,
  System.ImageList, System.Actions, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  CedarDbGrid;

type
  TrptUseUnitF = class(Ttemplate2MDIF)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    SpeedButton1: TSpeedButton;
    DBEdit2: TDBEdit;
    DBNavigator1: TDBNavigator;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn4: TBitBtn;
    qrystuff: TADOQuery;
    srcUseUnit: TDataSource;
    srcstuff: TDataSource;
    qrystuffc_StuffName: TStringField;
    qrystuffUnitName: TStringField;
    qrystuffControlCode: TLargeintField;
    qrystuffReciptNumber: TIntegerField;
    qrystuffReciptDate: TStringField;
    qrystuffStoreID: TSmallintField;
    qrystuffReciptType: TWordField;
    qryUseUnits: TADOQuery;
    actFilter: TAction;
    actShow: TAction;
    actPrint: TAction;
    actSort: TAction;
    actexcel: TAction;
    qrystuffReciptID: TIntegerField;
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    qrystuffInputEntity: TFloatField;
    qrystuffOutputEntity: TFloatField;
    qrystuffInputWeight: TFloatField;
    qrystuffOutputWeight: TFloatField;
    qrystuffTotalInputPrice: TBCDField;
    qrystuffTotalOutputPrice: TBCDField;
    ppHeaderBand1: TppHeaderBand;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLine3: TppLine;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel52: TppLabel;
    ppLabel13: TppLabel;
    ppLabel1: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLblReciptNumber: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppLine1: TppLine;
    ppLblReciptDate: TppLabel;
    ppLine5: TppLine;
    ppDetailBand4: TppDetailBand;
    ppDBText33: TppDBText;
    ppDBText36: TppDBText;
    ppDBText34: TppDBText;
    ppDBTextIOWeight: TppDBText;
    ppDBTextTotalIOPrice: TppDBText;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppCalcIOEntity: TppDBCalc;
    ppCalcTotalIoPrice: TppDBCalc;
    ppLabel2: TppLabel;
    ppLine4: TppLine;
    ppLine6: TppLine;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppCalcIOWeight: TppDBCalc;
    ppSummaryBand1: TppSummaryBand;
    ppLabel60: TppLabel;
    ppDBCalc3: TppDBCalc;
    ppLine2: TppLine;
    ppLine7: TppLine;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppLabel8: TppLabel;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppLabel22: TppLabel;
    qrystuffServerID: TIntegerField;
    qrystuffYearID: TIntegerField;
    qrystuffStuffCode: TLargeintField;
    qrystuffReciptCaption: TStringField;
    qrystuffItemNote: TStringField;
    DBGrid1: TCedarDbgrid;
    qrystuffDocNo: TIntegerField;
    qrystuffPersonID1: TIntegerField;
    qrystuffCustName1: TStringField;
    qrystuffPersonID2: TIntegerField;
    qrystuffCustName2: TStringField;
    qryItemsacc_TopicCode: TLargeintField;
    qrystuffacc_DetailCode: TStringField;
    procedure actFilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qryUseUnitsAfterScroll(DataSet: TDataSet);
    procedure actexcelExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actShowExecute(Sender: TObject);
    procedure ppLabel21GetText(Sender: TObject; var Text: String);
    procedure actPrintExecute(Sender: TObject);
    procedure ppLblReciptDateGetText(Sender: TObject; var Text: String);
    procedure ppLblReciptNumberGetText(Sender: TObject; var Text: String);
    procedure SpeedButton1Click(Sender: TObject);
    procedure ppSystemVariable3GetText(Sender: TObject; var Text: String);
    procedure ppLabel22GetText(Sender: TObject; var Text: String);
    procedure ppLabel42GetText(Sender: TObject; var Text: String);
    procedure FormCreate(Sender: TObject);
  private
    ShowFilter: boolean;
    UseOtherSelect: SmallInt;
    procedure UpdateFilter;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rptUseUnitF: TrptUseUnitF;

implementation

uses DM, filter_ADO, FilterClass_ADO, GlobalPro, search2, sort2,
  searchCode_ADO, FormFunctions, Filter_ADO_Const;

{$R *.dfm}

procedure TrptUseUnitF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try

      AddItemFilter(GetFilter, TFilterPersonID2);
      AddItemFilter(GetFilter, TFilterPersonID1);
      AddItemFilter(GetFilter, TFilterUseOtherSelect);

      AddItemFilter(GetFilter, TFilterReciptDate);
      // AddItem(DMf.adcBSell, 'ReciptDate', '  «—ÌŒ ', ' «—ÌŒ', ftDate, dvMinMax,
      // '', '', ciSimple, '', 'SELECT  ''' + APPBank.StartYear +
      // ''',Max(ReciptDate) from Recipts ');
      // // WHERE ReciptType = '+IntToStr(formType));

      AddItemFilter(GetFilter, TFilterReciptNumber);

      // AddItem(DMf.adcBSell, 'ReciptNumber', ' ›—„ ', '‘„«—Â', ftInteger,
      // dvMinMax, '', '', ciSimple, '',
      // 'SELECT Min(ReciptNumber),Max(ReciptNumber) From Recipts');
      // // WHERE ReciptType = '+IntToStr(formType));

      AddItem(DMf.adcBSell, 'ReciptType', '«‰Ê«⁄ ﬂ«·« ', 'ﬂœ', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT ReciptType, ReciptCaption FROM ReciptTypes ',
        'SELECT Min(ReciptType),Max(ReciptType) From ReciptTypes', True);

      AddItemFilter(GetFilter, TFilterUseUnitID);
      AddItemFilter(GetFilter, TFilterUseOtherID_Item);

      AddItemFilter(GetFilter, TFilterStoreID);

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

procedure TrptUseUnitF.FormCreate(Sender: TObject);
begin
  inherited;
  DBGrid1.SetFooter4Sum(['StuffCode', 'ControlCode']);
end;

procedure TrptUseUnitF.FormShow(Sender: TObject);
begin
  inherited;
  ShowFilter := var_glb_Boolean;
  if ShowFilter then
  begin
    myParams.Clear;
    actFilter.Execute;
    if myParams.FindParam('ReciptDate') = nil then
      close;
  end;
end;

procedure TrptUseUnitF.UpdateFilter;
begin
  UseOtherSelect := GetcFrom(myParams.ParamValues['UseOtherSelect'], ftInteger);
  with qrystuff do
  begin
    Active := false;
    SQL.Text := 'SELECT r.PersonID1 , CU1.custname custname1,r.PersonID2';
    SQL.Add(',CU2.custname custname2, R.StuffCode, StuffCoding.c_StuffName');
    SQL.Add(', Units.UnitName, R.InputEntity , R.OutputEntity ,R.ReciptID,');
    SQL.Add('R.InputWeight , R.OutputWeight , R.TotalInputPrice , R.TotalOutputPrice ,');
    SQL.Add('R.ControlCode, R.ReciptNumber, R.ReciptDate,');
    SQL.Add('R.StoreID, R.ReciptType ,R.ServerID, R.YearID, R.ReciptCaption');
    SQL.Add(', R.ItemNote,R.DocNo,R.acc_TopicCode,R.acc_DetailCode');

    case UseOtherSelect of
      0:
        SQL.Add(', ISNULL(R.ReciptUseUnitID, 0) AS UseUnitID');
      1:
        SQL.Add(', ISNULL(R.UseOtherID, 0) AS UseUnitID');
      2:
        SQL.Add(', ISNULL(R.UseUnitID, 0) AS UseUnitID');
      3:
        SQL.Add(', ISNULL(R.UseOtherID_Item, 0) AS UseUnitID');

    end;

    SQL.Add('FROM ReciptItems_Stock R INNER JOIN');
    SQL.Add('StuffCoding ON R.StuffCode = StuffCoding.c_StuffCode INNER JOIN');
    SQL.Add('Units ON StuffCoding.n_UnitCode = Units.UnitCode');
    SQL.Add('inner join  Customers cu1 on cu1.CustID= r.PersonID1');
    SQL.Add('inner join  Customers cu2 on cu2.CustID= r.PersonID2');

    SQL.Add('WHERE (R.ReciptType between :ReciptTypefrom and :ReciptTypeto)');

    case UseOtherSelect of
      0:
        SQL.Add('AND( R.ReciptUseUnitID = :UseUnitID)');
      1:
        SQL.Add('AND( R.UseOtherID = :UseUnitID)');
      2:
        SQL.Add('AND( R.UseUnitID = :UseUnitID)');
      3:
        SQL.Add('AND( R.UseOtherID_Item = :UseUnitID)');

    end;

    SQL.Add('AND (R.ReciptNumber between :ReciptNumberFrom and :ReciptNumberTo)');
    SQL.Add('AND (R.ReciptDate between :ReciptDateFrom and :ReciptDateTo)');
    SQL.Add('AND(R.YearID BETWEEN :YearIDFrom AND :YearIDTo)');
    SQL.Add('AND(R.StoreID BETWEEN :StoreIDFrom AND :StoreIDTo)');
    SQL.Add('AND(R.PersonID1 BETWEEN :PersonID1From AND :PersonID1To)');
    SQL.Add('AND(R.PersonID2 BETWEEN :PersonID2From AND :PersonID2To)');

    if GetcNot(myParams.ParamValues['ReciptType']) <> '' then
    BEGIN
      SQL.Add('And R.ReciptNumber not in (Select part From dbo.SplitString(:NotReciptType,'',''))');
      Parameters.ParamByName('NotReciptType').Value :=
        GetcNot(myParams.ParamValues['ReciptType']);
    END;

    Parameters.ParamByName('ReciptTypefrom').Value :=
      GetcFrom(myParams.ParamValues['ReciptType'], ftString);
    Parameters.ParamByName('ReciptTypeto').Value :=
      GetcTo(myParams.ParamValues['ReciptType'], ftString);

    // Parameters.ParamByName('UseUnitID').Value :=
    // qryUseUnits.Fieldbyname('UseUnitID').AsInteger;

    Parameters.ParamByName('ReciptNumberFrom').Value :=
      GetcFrom(myParams.ParamValues['ReciptNumber'], ftInteger);
    Parameters.ParamByName('ReciptNumberTo').Value :=
      GetcTo(myParams.ParamValues['ReciptNumber'], ftInteger);
    Parameters.ParamByName('ReciptDateFrom').Value :=
      GetcFrom(myParams.ParamValues['ReciptDate'], ftDate);
    Parameters.ParamByName('ReciptDateTo').Value :=
      GetcTo(myParams.ParamValues['ReciptDate'], ftDate);
    Parameters.ParamByName('YearIDFrom').Value := opt.DefaultYear;
    Parameters.ParamByName('YearIDTo').Value := APPBank.Year;

    Parameters.ParamByName('StoreIDFrom').Value :=
      GetcFrom(myParams.ParamValues['StoreID'], ftInteger);
    Parameters.ParamByName('StoreIDTo').Value :=
      GetcTo(myParams.ParamValues['StoreID'], ftInteger);

    Parameters.ParamByName('PersonID1From').Value :=
      GetcFrom(myParams.ParamValues['PersonID1'], ftInteger);
    Parameters.ParamByName('PersonID1To').Value :=
      GetcTo(myParams.ParamValues['PersonID1'], ftInteger);

    Parameters.ParamByName('PersonID2From').Value :=
      GetcFrom(myParams.ParamValues['PersonID2'], ftInteger);
    Parameters.ParamByName('PersonID2To').Value :=
      GetcTo(myParams.ParamValues['PersonID2'], ftInteger);

    // Active := true;
  end; // with
  with qryUseUnits do
  begin
    Active := false;
    SQL.Text := 'SELECT * FROM ';
    if UseOtherSelect in [0, 2] then
    begin
      SQL.Add('Vu_UseUnitName');
      SQL.Add('where (UseUnitID between :UseUnitIDfrom and :UseUnitIDto)');
      Parameters.ParamByName('UseUnitIDFrom').Value :=
        GetcFrom(myParams.ParamValues['UseUnitID'], ftString);
      Parameters.ParamByName('UseUnitIDTo').Value :=
        GetcTo(myParams.ParamValues['UseUnitID'], ftString);
    end
    else
    begin
      SQL.Add('Vu_UseOthersName');
      SQL.Add('where(UseUnitID between :UseUnitID_ItemFrom and :UseUnitID_ItemTo)');
      Parameters.ParamByName('UseUnitID_ItemFrom').Value :=
        GetcFrom(myParams.ParamValues['UseOtherID_Item'], ftInteger);
      Parameters.ParamByName('UseUnitID_ItemTo').Value :=
        GetcTo(myParams.ParamValues['UseOtherID_Item'], ftInteger);
    end;

    Active := True;
  end;

end;

procedure TrptUseUnitF.qryUseUnitsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qrystuff do
  begin
    Active := false;
    Parameters.ParamByName('UseUnitID').Value :=
      qryUseUnits.Fieldbyname('UseUnitID').AsInteger;
    Active := True;
  end; // with
end;

procedure TrptUseUnitF.actexcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TrptUseUnitF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qrystuff)
end;

procedure TrptUseUnitF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qrystuff);
end;

procedure TrptUseUnitF.actShowExecute(Sender: TObject);
begin
  inherited;
  ShowReciptTypes(qrystuff, Self, qrystuff.Fieldbyname('StuffCode').AsLargeInt)
end;

procedure TrptUseUnitF.ppLabel21GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := Text + '  :' + qryUseUnits.Fieldbyname('UseUnitID').AsString + '  ' +
    qryUseUnits.Fieldbyname('UseUnitName').AsString;
end;

procedure TrptUseUnitF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qrystuff.DisableControls;
    InitReportFile(ppReport1, Self.Name, True);
  finally
    qrystuff.EnableControls;
  end;
end;

procedure TrptUseUnitF.ppLblReciptDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := '«“  «—ÌŒ ' + qrystuff.Parameters.ParamByName('ReciptDatefrom').Value
    + '  « ' + qrystuff.Parameters.ParamByName('ReciptDateTo').Value
end;

procedure TrptUseUnitF.ppLblReciptNumberGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := '«“ ‘„«—Â ' +
    IntToStr(qrystuff.Parameters.ParamByName('ReciptNumberFrom').Value) + '  « '
    + IntToStr(qrystuff.Parameters.ParamByName('ReciptNumberto').Value)
end;

procedure TrptUseUnitF.SpeedButton1Click(Sender: TObject);
var
  b: boolean;
  Results: array [0 .. 1] of String;
  Txt: String;
begin
  inherited;
  case UseOtherSelect of
    0, 2:
      Txt := 'SELECT UseUnitID,UseUnitName FROM  UseUnits where UseUnitID between '
        + GetcFrom(myParams.ParamValues['UseUnitID'], ftString) + ' and ' +
        GetcTo(myParams.ParamValues['UseUnitID'], ftString);
    1, 3:
      Txt := 'SELECT UseUnitID,UseUnitName FROM  Vu_UseOthersName where UseUnitID between '
        + GetcFrom(myParams.ParamValues['UseOtherID_Item'], ftString) + ' and '
        + GetcTo(myParams.ParamValues['UseOtherID_Item'], ftString);

  end;
  b := searchCode_ADOF.SearchCode2(DMf.adcBSell, '„Õ· „’—› Â«', Txt,
    ['òœ', '‰«„ '], Results, [50, 150], alLeft);
  if b then
    qryUseUnits.Locate('UseUnitID', Results[0], []);

end;

procedure TrptUseUnitF.ppSystemVariable3GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TrptUseUnitF.ppLabel22GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TrptUseUnitF.ppLabel42GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

end.
