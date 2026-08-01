unit rptGroupUseUnit;

interface

uses
  SysUtils, Variants, Classes, Controls, Forms, template2MDI, DBCtrls, Buttons,
  StdCtrls, ComCtrls, ActnList, DB, ADODB, ppBands, ppCtrls, ppVar, ppDBPipe,
  ppReport, ppParameter, ppDB, ppPrnabl, ppClass, ppCache, ppComm, ppRelatv,
  ppProd, Mask, ImgList, DBActns, ExtCtrls, FarsiReportBuilde,
  ppDesignLayer, System.ImageList, System.Actions, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, CedarDbGrid;

type
  TrptGroupUseUnitF = class(Ttemplate2MDIF)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    SpeedButton1: TSpeedButton;
    DBEdit2: TDBEdit;
    DBNavigator1: TDBNavigator;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn4: TBitBtn;
    qrystuff: TADOQuery;
    srcUseUnit: TDataSource;
    srcstuff: TDataSource;
    qryUseUnits: TADOQuery;
    actFilter: TAction;
    actShow: TAction;
    actPrint: TAction;
    actSort: TAction;
    actexcel: TAction;
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLine3: TppLine;
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
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppLine1: TppLine;
    ppLine5: TppLine;
    ppLabel3: TppLabel;
    ppDetailBand4: TppDetailBand;
    ppDBText33: TppDBText;
    ppDBText36: TppDBText;
    ppDBText34: TppDBText;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
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
    DBGrid1: TCedarDbgrid;
    procedure actFilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qryUseUnitsAfterScroll(DataSet: TDataSet);
    procedure actexcelExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure ppLabel21GetText(Sender: TObject; var Text: String);
    procedure actPrintExecute(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure ppLabel3GetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable3GetText(Sender: TObject; var Text: String);
    procedure ppLabel42GetText(Sender: TObject; var Text: String);
    procedure FormCreate(Sender: TObject);
    procedure qrystuffAfterOpen(DataSet: TDataSet);
  private
    ShowFilter: boolean;
    UseOtherSelect: SmallInt;
    // cloned:TADOQuery;
    procedure UpdateFilter;
    // function  CalcSumFileds(FiledName: String): Currency;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rptGroupUseUnitF: TrptGroupUseUnitF;

implementation

uses DM, filter_ADO, FilterClass_ADO, GlobalPro, search2, sort2,
  searchCode_ADO, Filter_ADO_Const;

{$R *.dfm}

procedure TrptGroupUseUnitF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItemFilter(GetFilter, TFilterUseOtherSelect);

      AddItemFilter(GetFilter, TFilterReciptDate);
      // AddItem(DMF.adcBSell, 'ReciptDate', '  «—ÌŒ ', ' «—ÌŒ', ftDate, dvMinMax,
      // '', '', ciSimple, '', 'Select  ''' + APPBank.StartYear +
      // ''',Max(ReciptDate) from Recipts ');
      // WHERE ReciptType = '+IntToStr(formType));

      AddItemFilter(GetFilter, TFilterReciptNumber);

      // AddItem(DMF.adcBSell, 'ReciptNumber', ' ›—„ ', '‘„«—Â', ftInteger,
      // dvMinMax, '', '', ciSimple, '',
      // 'select Min(ReciptNumber),Max(ReciptNumber) From Recipts');
      // WHERE ReciptType = '+IntToStr(formType));
      AddItem(DMF.adcBSell, 'ReciptType', '«‰Ê«⁄ ﬂ«·« ', 'ﬂœ', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT ReciptType, ReciptCaption FROM ReciptTypes ',
        'select Min(ReciptType),Max(ReciptType) From ReciptTypes');

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

procedure TrptGroupUseUnitF.FormCreate(Sender: TObject);
begin
  inherited;
  DBGrid1.SetFooter4Sum(['StuffCode']);
end;

procedure TrptGroupUseUnitF.FormShow(Sender: TObject);
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

// function TrptGroupUseUnitF.CalcSumFileds(FiledName: String): Currency;
// begin
// Result:=0;
// try
// cloned:=TADOQuery.Create(Self);
// with cloned do begin
// Clone(qrystuff,ltReadOnly);
// First;
// while not eof do begin
// Result:=Result +fieldbyname(FiledName).AsCurrency;
// Next;
// end;//while
// end;//with
// finally
// cloned.Free;
// end;//try
// end;
procedure TrptGroupUseUnitF.UpdateFilter;
begin
  UseOtherSelect := GetcFrom(myParams.ParamValues['UseOtherSelect'], ftInteger);
  with qrystuff do
  begin
    Active := false;
    SQL.Text := 'SELECT R.StoreID, Stores.c_StoreName';
    SQL.Add(', Ri.StuffCode, S.c_StuffName, Units.UnitName,');
    SQL.Add(' SUM(Ri.InputEntity) AS InputEntity, ');
    SQL.Add('SUM(Ri.OutputEntity) AS OutputEntity,');
    SQL.Add('SUM(Ri.InputWeight) AS InputWeight, SUM(Ri.OutputWeight) AS OutputWeight');
    SQL.Add(',SUM(Ri.TotalInputPrice) AS TotalInputPrice, SUM(Ri.TotalOutputPrice) AS TotalOutputPrice,');

    case UseOtherSelect of
      0:
        SQL.Add('ISNULL(R.UseUnitID, 0) AS UseUnitID');
      1:
        SQL.Add('ISNULL(R.UseOtherID, 0) AS UseUnitID');
      2:
        SQL.Add('ISNULL(Ri.UseUnitID, 0) AS UseUnitID');
      3:
        SQL.Add('ISNULL(Ri.UseOtherID_Item, 0) AS UseUnitID');

    end;


    SQL.Add('FROM ReciptItems AS Ri INNER JOIN');
    SQL.Add('Recipts AS R ON R.ReciptID = Ri.ReciptID AND R.ServerID = Ri.ServerID AND');
    SQL.Add('R.YearID = Ri.YearID INNER JOIN');
    SQL.Add('StuffCoding AS S ON Ri.StuffCode = S.c_StuffCode INNER JOIN');
    SQL.Add('Units ON S.n_UnitCode = Units.UnitCode INNER JOIN');
    SQL.Add('Stores ON R.StoreID = Stores.n_StoreID');
    SQL.Add('WHERE (R.ReciptType BETWEEN :ReciptTypefrom AND :ReciptTypeto) ');



    case UseOtherSelect of
      0:
        SQL.Add('AND (R.UseUnitID = :UseUnitID)');
      1:
        SQL.Add('AND (R.UseOtherID = :UseUnitID)');
      2:
        SQL.Add('AND (Ri.UseUnitID = :UseUnitID)');
      3:
        SQL.Add('AND (Ri.UseOtherID_Item = :UseUnitID)');

    end;


    SQL.Add('AND (R.ReciptNumber BETWEEN :ReciptNumberFrom AND :ReciptNumberTo) AND');
    SQL.Add('(R.ReciptDate BETWEEN :ReciptDateFrom AND :ReciptDateTo) ');
    SQL.Add('AND (R.YearID BETWEEN :YearIDFrom AND :YearIDTo)');
    SQL.Add('AND (R.StoreID BETWEEN :StoreIDFrom AND :StoreIDTo)');
    SQL.Add('GROUP BY Ri.StuffCode, S.c_StuffName, Units.UnitName,');
    SQL.Add('R.StoreID, Stores.c_StoreName');


    case UseOtherSelect of
      0:
        SQL.Add(',ISNULL(R.UseUnitID, 0) ');
      1:
        SQL.Add(',ISNULL(R.UseOtherID, 0) ');
      2:
        SQL.Add(',ISNULL(Ri.UseUnitID, 0)');
      3:
        SQL.Add(',ISNULL(Ri.UseOtherID_Item, 0)');

    end;




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
    // Active := true;
  end; // with
  with qryUseUnits do
  begin
    Active := false;
    SQL.Text := 'SELECT * FROM ';
    if UseOtherSelect in [ 0,2] then
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
    Active := true;
  end;

end;

procedure TrptGroupUseUnitF.qrystuffAfterOpen(DataSet: TDataSet);
var
  i: Integer;
begin
  inherited;
  with qrystuff do
  begin
    FieldByName('StoreID').DisplayLabel := 'òœ «‰»«—';
    FieldByName('c_StoreName').DisplayLabel := '‰«„ «‰»«—';
    FieldByName('StuffCode').DisplayLabel := 'ﬂœ ﬂ«·«';
    FieldByName('c_StuffName').DisplayLabel := '‘—Õ ﬂ«·«';
    FieldByName('UnitName').DisplayLabel := 'Ê«Õœ ‘„«—‘';
    FieldByName('InputEntity').DisplayLabel := ' ⁄œ«œ Ê«—œÂ';
    FieldByName('InputWeight').DisplayLabel := ' ⁄œ«œ Ê«—œÂ';
    FieldByName('TotalInputPrice').DisplayLabel := '»Â«Ì Ê«—œÂ';
    FieldByName('OutputEntity').DisplayLabel := ' ⁄œ«œ ’«œ—Â ';
    FieldByName('OutputWeight').DisplayLabel := ' ⁄œ«œ ’«œ—Â ';
    FieldByName('TotalOutputPrice').DisplayLabel := '»Â«Ì ’«œ—Â ';
    for i := 0 to Fields.Count - 1 do
    begin
      Fields[i].Tag := 3;
      if Fields[i] is TBCDField then
        TBCDField(Fields[i]).currency := true;

    end;
  end;
end;

procedure TrptGroupUseUnitF.qryUseUnitsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qrystuff do
  begin
    Active := false;
    Parameters.ParamByName('UseUnitID').Value :=
      qryUseUnits.FieldByName('UseUnitID').AsString;
    Active := true;
  end; // with
end;

procedure TrptGroupUseUnitF.actexcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TrptGroupUseUnitF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qrystuff)
end;

procedure TrptGroupUseUnitF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qrystuff);
end;

procedure TrptGroupUseUnitF.ppLabel21GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := Text + '  :' + qryUseUnits.FieldByName('UseUnitID').AsString + '  ' +
    qryUseUnits.FieldByName('UseUnitName').AsString;
end;

procedure TrptGroupUseUnitF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qrystuff.DisableControls;
    InitReportFile(ppReport1, Self.Name, true);
  finally
    qrystuff.EnableControls;
  end;
end;

procedure TrptGroupUseUnitF.SpeedButton1Click(Sender: TObject);
var
  b: boolean;
  Results: array [0 .. 1] of String;
  Txt: String;
begin
  inherited;
  case UseOtherSelect of
    0,2:
      Txt := 'SELECT UseUnitID,UseUnitName FROM  UseUnits where UseUnitID between '
        + GetcFrom(myParams.ParamValues['UseUnitID'], ftString) + ' and ' +
        GetcTo(myParams.ParamValues['UseUnitID'], ftString);
    1,3:
      Txt := 'SELECT UseUnitID,UseUnitName FROM  Vu_UseOthersName where UseUnitID between '
        + GetcFrom(myParams.ParamValues['UseOtherID_Item'], ftString) + ' and '
        + GetcTo(myParams.ParamValues['UseOtherID_Item'], ftString);

  end;
  b := searchCode_ADOF.SearchCode2(DMF.adcBSell, '„Õ· „’—› Â«', Txt,
    ['òœ', '‰«„ '], Results, [50, 150], alLeft);
  if b then
    qryUseUnits.Locate('UseUnitID', Results[0], []);
end;

procedure TrptGroupUseUnitF.ppLabel3GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TrptGroupUseUnitF.ppSystemVariable3GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TrptGroupUseUnitF.ppLabel42GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

end.
