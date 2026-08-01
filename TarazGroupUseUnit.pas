unit TarazGroupUseUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, DBCtrls, Buttons, StdCtrls, ComCtrls, System.StrUtils,
  ImgList, DBActns, ActnList, ExtCtrls, DB, ADODB, ppModule,
  ppBands, ppCtrls, ppVar, ppPrnabl, ppClass, ppCache, ppDB,
  ppDBPipe, ppComm, ppRelatv, ppProd, ppReport, Menus,
  ppParameter, FormFunctions, ppDesignLayer, System.ImageList, System.Actions,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid;

type
  TTarazGroupUseUnitF = class(Ttemplate2MDIF)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn4: TBitBtn;
    qryUseUnit: TADOQuery;
    srcUseUnit: TDataSource;
    actFilter: TAction;
    actPrint: TAction;
    actSort: TAction;
    actexcel: TAction;
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    BitBtn3: TBitBtn;
    actShow: TAction;
    PopMnu_Form: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    PopupPrint: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    ppHeaderBand1: TppHeaderBand;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLine3: TppLine;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel7: TppLabel;
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
    ppLabel43: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppLabel42: TppLabel;
    ppLabel6: TppLabel;
    ppDetailBand4: TppDetailBand;
    ppDBText33: TppDBText;
    ppDBText36: TppDBText;
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
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppDBCalc13: TppDBCalc;
    ppSummaryBand1: TppSummaryBand;
    ppLine2: TppLine;
    ppLine7: TppLine;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppLabel8: TppLabel;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    ppDBCalc15: TppDBCalc;
    ppDBCalc16: TppDBCalc;
    DBGrid1: TCedarDbgrid;
    pnlLblLimitPlace: TPanel;
    LblShowLimitPlace1: TLabel;
    ppLblShowLimitPlace1: TppLabel;
    procedure actFilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actexcelExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure ppLabel3GetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable3GetText(Sender: TObject; var Text: String);
    procedure ppLabel42GetText(Sender: TObject; var Text: String);
    procedure actShowExecute(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure ppLabel6GetText(Sender: TObject; var Text: String);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qryUseUnitAfterOpen(DataSet: TDataSet);
    procedure ppLblShowLimitPlace1GetText(Sender: TObject; var Text: string);
  private
    UseOtherSelect: SmallInt;
    procedure InitPrint(FileName: String);
    procedure UpdateFilter;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TarazGroupUseUnitF: TTarazGroupUseUnitF;

implementation

uses DM, filter_ADO, FilterClass_ADO, GlobalPro, search2, sort2,
  rptGroupUseUnit, rptUseUnit, Filter_ADO_Const;

{$R *.dfm}

procedure TTarazGroupUseUnitF.actFilterExecute(Sender: TObject);
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
      // // WHERE ReciptType = '+IntToStr(formType));

      AddItemFilter(GetFilter, TFilterUseUnitID);

      AddItemFilter(GetFilter, TFilterUseOtherID_Item);

      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateFilter;
        LblShowLimitPlace1.Caption :=GetFilterStringCaption;
      end; // if
    finally
      Free;
    end; // try
  end; // with

end;

procedure TTarazGroupUseUnitF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('UseUnitID') = nil then
    close;
end;

procedure TTarazGroupUseUnitF.UpdateFilter;
begin
  UseOtherSelect := GetcFrom(myParams.ParamValues['UseOtherSelect'], ftInteger);
  with qryUseUnit do
  begin
    Active := False;
    SQL.Text :=
      'SELECT cast(ISNULL(U.UseUnitID, 0) AS int) AS UseUnitID, U.UseUnitName,';
    SQL.Add('SUM(Ri.InputEntity) AS InputEntity, SUM(Ri.OutputEntity) AS OutputEntity,');
    SQL.Add('SUM(Ri.InputWeight) AS InputWeight, SUM(Ri.OutputWeight) AS OutputWeight,');
    SQL.Add('SUM(Ri.TotalInputPrice) AS TotalInputPrice,');
    SQL.Add('SUM(Ri.TotalOutputPrice) AS TotalOutputPrice,');
    SQL.Add('SUM(Ri.OutputEntity)-SUM(Ri.InputEntity) as entity,');
    SQL.Add('SUM(Ri.OutputWeight)-SUM(Ri.InputWeight) as weight,');
    SQL.Add('SUM(Ri.TotalOutputPrice)-SUM(Ri.TotalInputPrice) as price');
    SQL.Add('FROM ReciptItems AS Ri INNER JOIN');
    SQL.Add('Recipts AS  R ON R.ReciptID = Ri.ReciptID AND');
    SQL.Add('R.ServerID = Ri.ServerID AND R.YearID = Ri.YearID INNER JOIN');

    // Recipts.UseUnitID ReciptUseUnitID, Recipts.UseOtherID, ReciptItems.UseUnitID UseUnitIDD, ReciptItems.UseOtherID_Item
    case UseOtherSelect of
      0:
        SQL.Add('UseUnits U ON R.UseUnitID = U.UseUnitID');
      1:
        SQL.Add('Vu_UseOthersName U ON R.UseOtherID = U.UseUnitID');
      2:
        SQL.Add('UseUnits U ON Ri.UseUnitID = U.UseUnitID');
      3:
        SQL.Add('Vu_UseOthersName U ON Ri.UseOtherID_Item = U.UseUnitID');
    end;

    SQL.Add('WHERE (R.ReciptDate between :ReciptDateFrom and :ReciptDateTo)');
    SQL.Add('AND(R.YearID BETWEEN :YearIDFrom AND :YearIDTo)');

    SQL.Add('AND(ISNULL(Ri.UseUnitID, 0) between :UseUnitIDFrom and :UseUnitIDTo)');
    SQL.Add('AND(ISNULL(Ri.UseOtherID_Item, 0) between :UseUnitID_ItemFrom and :UseUnitID_ItemTo)');

    SQL.Add('GROUP BY ISNULL(U.UseUnitID, 0),  U.UseUnitName');
    SQL.Add('ORDER BY cast(ISNULL(U.UseUnitID, 0) AS int)');

    Parameters.ParamByName('UseUnitIDFrom').Value :=
      GetcFrom(myParams.ParamValues['UseUnitID'], ftString);
    Parameters.ParamByName('UseUnitIDTo').Value :=
      GetcTo(myParams.ParamValues['UseUnitID'], ftString);

    Parameters.ParamByName('UseUnitID_ItemFrom').Value :=
      GetcFrom(myParams.ParamValues['UseOtherID_Item'], ftInteger);
    Parameters.ParamByName('UseUnitID_ItemTo').Value :=
      GetcTo(myParams.ParamValues['UseOtherID_Item'], ftInteger);

    Parameters.ParamByName('ReciptDateFrom').Value :=
      GetcFrom(myParams.ParamValues['ReciptDate'], ftDate);
    Parameters.ParamByName('ReciptDateTo').Value :=
      GetcTo(myParams.ParamValues['ReciptDate'], ftDate);
    Parameters.ParamByName('YearIDFrom').Value := opt.DefaultYear;
    Parameters.ParamByName('YearIDTo').Value := APPBank.Year;
    Active := True;
  end; // with
end;

procedure TTarazGroupUseUnitF.actexcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TTarazGroupUseUnitF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryUseUnit)
end;

procedure TTarazGroupUseUnitF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryUseUnit);
end;

procedure TTarazGroupUseUnitF.FormCreate(Sender: TObject);
begin
  inherited;
  DBGrid1.SetFooter4Sum([]);
end;

procedure TTarazGroupUseUnitF.InitPrint(FileName: String);
begin
  with ppReport1 do
  begin
    Template.FileName := GetReportFileWithPath(FileName);
    try
      if FileExists(Template.FileName) then
        Template.LoadFromFile;
      InitReportISDEMO(ppReport1);
      SetSendToBackShapeOnPrint(Self);
      Print;
    finally
    end; // try
  end; // with
end;

procedure TTarazGroupUseUnitF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qryUseUnit.DisableControls;
    PopupPrint.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
  finally
    qryUseUnit.EnableControls;
  end;
end;

procedure TTarazGroupUseUnitF.ppLabel3GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TTarazGroupUseUnitF.ppSystemVariable3GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TTarazGroupUseUnitF.qryUseUnitAfterOpen(DataSet: TDataSet);
var
  i: Integer;
begin
  inherited;
  with qryUseUnit do
  begin
    FieldByName('UseUnitID').DisplayLabel := 'ﬂœ „Õ· „’—›';
    FieldByName('UseUnitName').DisplayLabel := '⁄‰Ê«‰ „Õ· „’—›';
    FieldByName('InputEntity').DisplayLabel := ' ⁄œ«œ Ê«—œÂ';
    FieldByName('OutputEntity').DisplayLabel := ' ⁄œ«œ ’«œ—Â ';
    FieldByName('entity').DisplayLabel := ' ⁄œ«œ „’—›';
    FieldByName('InputWeight').DisplayLabel := ' ⁄œ«œ Ê«—œÂ';
    FieldByName('OutputWeight').DisplayLabel := ' ⁄œ«œ ’«œ—Â ';
    FieldByName('weight').DisplayLabel := ' ⁄œ«œ „’—›';
    FieldByName('TotalInputPrice').DisplayLabel := '»Â«Ì Ê«—œÂ';
    FieldByName('TotalOutputPrice').DisplayLabel := '»Â«Ì ’«œ—Â ';
    FieldByName('price').DisplayLabel := '»Â«Ì „’—›';
    for i := 0 to Fields.Count - 1 do
    begin
      Fields[i].Tag := 3;
      if Fields[i] is TBCDField then
        TBCDField(Fields[i]).currency := True;

    end;
  end;
end;

procedure TTarazGroupUseUnitF.ppLabel42GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TTarazGroupUseUnitF.actShowExecute(Sender: TObject);
begin
  inherited;
  PopMnu_Form.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TTarazGroupUseUnitF.N1Click(Sender: TObject);
begin
  inherited;
  CreateMDIForm2(TrptGroupUseUnitF, rptGroupUseUnitF, Self);
  with rptGroupUseUnitF do
  begin
    // with qryUseUnits do
    // begin
    // Active := False;
    // Parameters.ParamByName('UseUnitIDFrom').Value :=
    // Self.qryUseUnit.FieldByName('UseUnitID').AsString;
    // // GetcFrom(myParams.ParamValues['UseUnitID'],ftInteger);
    // Parameters.ParamByName('UseUnitIDTo').Value :=
    // Self.qryUseUnit.FieldByName('UseUnitID').AsString;
    // // GetcTo(myParams.ParamValues['UseUnitID'],ftInteger);
    // Active := True;
    // end;
    //
    // with qrystuff do
    // begin
    // Active := False;
    // Parameters.ParamByName('UseUnitID').Value :=
    // qryUseUnits.FieldByName('UseUnitID').AsString;
    //
    // Parameters.ParamByName('StoreIDFrom').Value := 0;
    // Parameters.ParamByName('StoreIDTo').Value := 99999;
    // Active := True;
    // end; // with
    qryUseUnits.Locate('UseUnitID', Self.qryUseUnit.FieldByName('UseUnitID')
      .AsString, []);
  end;

end;

procedure TTarazGroupUseUnitF.N2Click(Sender: TObject);
begin
  inherited;
  CreateMDIForm2(TrptUseUnitF, rptUseUnitF, Self);
  with rptUseUnitF do
  begin
    // with qryUseUnits do
    // begin
    // Active := False;
    // Parameters.ParamByName('UseUnitIDFrom').Value :=
    // Self.qryUseUnit.FieldByName('UseUnitID').AsString;
    // // GetcFrom(myParams.ParamValues['UseUnitID'],ftInteger);
    // Parameters.ParamByName('UseUnitIDTo').Value :=
    // Self.qryUseUnit.FieldByName('UseUnitID').AsString;
    // // GetcTo(myParams.ParamValues['UseUnitID'],ftInteger);
    // Active := True;
    // end;
    //
    // with qrystuff do
    // begin
    // Active := False;
    // Parameters.ParamByName('UseUnitID').Value :=
    // qryUseUnits.FieldByName('UseUnitID').AsString;
    //
    // Parameters.ParamByName('StoreIDFrom').Value := 0;
    // Parameters.ParamByName('StoreIDTo').Value := 99999;
    //
    // Active := True;
    // end; // with

    qryUseUnits.Locate('UseUnitID', Self.qryUseUnit.FieldByName('UseUnitID')
      .AsString, []);
  end;
end;

procedure TTarazGroupUseUnitF.ppLabel6GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TTarazGroupUseUnitF.ppLblShowLimitPlace1GetText(Sender: TObject;
  var Text: string);
begin
  inherited;
 Text := LblShowLimitPlace1.Caption;
end;

procedure TTarazGroupUseUnitF.MenuItem1Click(Sender: TObject);
begin
  inherited;
  InitPrint('TarazUnit.rtm');
end;

procedure TTarazGroupUseUnitF.MenuItem2Click(Sender: TObject);
begin
  inherited;
  InitPrint('TarazUnitWithoutWeight.rtm');
end;

procedure TTarazGroupUseUnitF.N3Click(Sender: TObject);
begin
  inherited;
  InitPrint('TarazUniTMasraf.rtm');
end;

procedure TTarazGroupUseUnitF.N4Click(Sender: TObject);
begin
  inherited;
  InitPrint('TarazUniTMasrafWithoutWeight.rtm')
end;

end.
