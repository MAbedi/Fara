// mahmood 87/10/24
unit ListUses;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList,
  StdCtrls, ExtCtrls, Buttons, DB, ADODB, Mask, ppProd, ppClass, ppReport,
  ppComm, ppRelatv, ppDB, ppDBPipe, ppCtrls, ppPrnabl, ppBands, ppCache,
  ppVar, Math, DBCtrls,  StrUtils, Menus, ppParameter, ppDesignLayer,
  System.ImageList, System.Actions, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  CedarDbGrid;

type
  TListUsesF = class(Ttemplate2MDIF)
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    qryUses: TADOQuery;
    qryUses_radif: TIntegerField;
    srcUses: TDataSource;
    actSearchUnit: TAction;
    actExcel: TAction;
    actPrint: TAction;
    actSort: TAction;
    BitBtn6: TBitBtn;
    actShowRelease: TAction;
    Panel1: TPanel;
    lblList: TLabel;
    SpeedButton1: TSpeedButton;
    cmbUseOthers: TComboBox;
    Label1: TLabel;
    cmbStuffs: TComboBox;
    SpeedButton2: TSpeedButton;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    BitBtn1: TBitBtn;
    actLimit: TAction;
    BitBtn5: TBitBtn;
    BitBtn4: TBitBtn;
    qryUsesReciptID: TIntegerField;
    qryUsesDSDesigner2: TWideStringField;
    qryUsesDSDesigner3: TStringField;
    qryUsesDSDesigner4: TFloatField;
    qryUsesDSDesigner5: TStringField;
    qryUsesDSDesigner6: TStringField;
    qryUsesDSDesigner7: TFloatField;
    qryUsesDSDesigner8: TStringField;
    qryUsesDSDesigner9: TIntegerField;
    qryUsesDSDesigner11: TStringField;
    qryUsesDSDesigner12: TStringField;
    qryUsesDSDesigner13: TFloatField;
    qryUsesDSDesigner14: TSmallintField;
    qryUsesDSDesigner15: TStringField;
    qryUsesDSDesigner: TWideStringField;
    qryUsesDSDesigner16: TStringField;
    qryUsesDSDesigner17: TFloatField;
    qryUsesDSDesigner18: TFloatField;
    qryUsesDSDesigner19: TIntegerField;
    actPrint2: TAction;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N21: TMenuItem;
    actPrintV: TAction;
    N2: TMenuItem;
    N3: TMenuItem;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLine1: TppLine;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLine2: TppLine;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLine3: TppLine;
    ppLabel25: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    SpeedButton3: TSpeedButton;
    Label2: TLabel;
    qryUsesServerID: TIntegerField;
    qryUsesYearID: TIntegerField;
    qryUsesStuffCode: TLargeintField;
    qryUsesDSDesigner10: TLargeintField;
    qryUsesPersonID2: TIntegerField;
    qryUsesCustName: TStringField;
    DBGrid2: TCedarDbgrid;
    procedure FormCreate(Sender: TObject);
    procedure qryUsesCalcFields(DataSet: TDataSet);
    procedure SpeedButton2Click(Sender: TObject);
    procedure cmbUseOthersChange(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure actExcelExecute(Sender: TObject);
    procedure actLimitExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure actShowReleaseExecute(Sender: TObject);
    procedure actPrint2Execute(Sender: TObject);
    procedure actPrintVExecute(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLblCaptionGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
    procedure SpeedButton3Click(Sender: TObject);
  private
    FilterString: String;
    ticketStuff: String;
    ticketUseOthers: String;
    ticketReciptID: String;
    orginSQL: String;
    procedure InitCombos;
    procedure UpdateList;
  public
    { Public declarations }
  end;

var
  ListUsesF: TListUsesF;

implementation

uses DM, GlobalPro, searchCode, SelectStore, filter_ADO,
  FilterClass_ADO, sort2, search2, ChooseItem, FormFunctions,
  DBGrid2Print, selected;

{$R *.dfm}

procedure TListUsesF.FormCreate(Sender: TObject);
begin
  inherited;
  DBGrid2.SetFooter4Sum([]);
  orginSQL := qryUses.SQL.Text;
  InitCombos;
  cmbUseOthers.ItemIndex := 0;
  cmbStuffs.ItemIndex := 0;
end;

procedure TListUsesF.qryUsesCalcFields(DataSet: TDataSet);
begin
  inherited;
  DataSet['_radif'] := abs(DataSet.RecNo);
end;


procedure TListUsesF.InitCombos;
begin
  cmbUseOthers.Clear;
  cmbStuffs.Clear;
  cmbUseOthers.items.Add('Â„Â Ã«‰»«“Â«  ***********');
  cmbStuffs.items.Add('Â„‹‹‹Â ﬂ«·«Â«   ***********');
  with DMF.qryTMPTMP do
  begin
    Active := False;
    SQL.Text := 'SELECT LTRIM(RTRIM( UseOtherID)), UseOtherName FROM UseOthers';
    SQL.Add('WHERE (UseOtherID <> N''0'')');
    SQL.Add('and UseOtherID not like ''%/%''');
    SQL.Add('and UseOtherID not like ''%-%''');
    SQL.Add('order by UseOtherName');
    Active := True;
    while not eof do
    begin
      cmbUseOthers.AddItem(Fields[1].AsString,
        TObject(StrToInt64(Fields[0].AsString)));
      Next;
    end; // while
    Active := False;
    SQL.Text :=
      'SELECT c_StuffCode, c_StuffName FROM StuffCoding order by c_StuffName ';
    Active := True;
    while not eof do
    begin
      cmbStuffs.AddItem(Fields[1].AsString, TObject(Fields[0].AsInteger));
      Next;
    end; // while
    Active := False;
  end; // with
end;

procedure TListUsesF.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  if ChooseItemF.SelectChecks(ticketStuff, 'c_StuffCode ', 'c_StuffName',
    ' StuffCoding ', '') then
  begin
    ticketStuff := LeftStr(ticketStuff, length(ticketStuff) - 1);
    UpdateList;
  end; // if
end;

procedure TListUsesF.UpdateList;
begin
  cmbUseOthers.Enabled := ticketUseOthers = EmptyStr;
  cmbStuffs.Enabled := ticketStuff = EmptyStr;
  FilterString := '';
  if cmbUseOthers.ItemIndex > 0 then
  begin
    Add2Filter(FilterString, 'Recipts.UseOtherID = ''' +
      IntToStr(int64(cmbUseOthers.items.Objects[cmbUseOthers.ItemIndex]
      )) + '''');
  end; // if
  if cmbStuffs.ItemIndex > 0 then
  begin
    Add2Filter(FilterString, 'ReciptItems.StuffCode = ' +
      IntToStr(Integer(cmbStuffs.items.Objects[cmbStuffs.ItemIndex])));
  end; // if
  Add2Filter(FilterString, '( Recipts.ReciptType IN (11, 17) )');
  Add2Filter(FilterString, 'Recipts.ReciptDate Between ' +
    QuotedStr(GetcFrom(myParams.ParamValues['FormDate'], ftString)) + ' and ' +
    QuotedStr(GetcTo(myParams.ParamValues['FormDate'], ftString)));
  Add2Filter(FilterString, 'Recipts.StoreID Between ' +
    GetcFrom(myParams.ParamValues['StoreID'], ftString) + ' and ' +
    GetcTo(myParams.ParamValues['StoreID'], ftString));
  // -----------------------------------------------------------------
  with qryUses do
  begin
    Close;
    SQL.Text := orginSQL;
    SQL.Add(FilterString);
    // SQL.Add  ('AND (Recipts.UseUnitID BETWEEN :UseUnitFrom AND :UseUnitTo)');
    SQL.Add('AND (UseOthers.LookUpID IN (' +
      GetcFrom(myParams.ParamValues['ProvinceCode'], ftString) + ') )');
    if length(ticketStuff) > 1 then
      SQL.Add('AND (ReciptItems.StuffCode IN (' + ticketStuff + ') )');
    if length(ticketUseOthers) > 1 then
      SQL.Add('AND (UseOthers.UseOtherID IN (' + ticketUseOthers + ') )');

    if length(ticketReciptID) > 0 then
      SQL.Add('AND (Recipts.ReciptID IN (' + ticketReciptID + ') )');

    SQL.Add('ORDER BY Recipts.StoreID, Recipts.ReciptDate');
    // Parameters.ParamByName('UseUnitFrom').Value:=GetcTo(myParams.ParamValues['UseType'],ftLargeint);
    // Parameters.ParamByName('UseUnitTo').Value:=GetcTo(myParams.ParamValues['UseType'],ftLargeint);
    Open;
  end; // with
end;

procedure TListUsesF.cmbUseOthersChange(Sender: TObject);
begin
  inherited;
  UpdateList;
end;

procedure TListUsesF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qryUses.DisableControls;
    InitReportFile(ppReport1, 'ListUses', True);
  finally
    qryUses.EnableControls;
  end; // try
end;

procedure TListUsesF.actExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid2);
end;

procedure TListUsesF.actLimitExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItem(DMF.adcBsell, 'ProvinceCode', '‰«„ «” «‰', 'ﬂœ', ftInteger,
        dvDefaults, 'true', '', ciCheck,
        'SELECT LookUpID,SUBSTRING(Name, LEN(Name) - 20, 21) AS Name FROM LookUps WHERE(Kind=350) and (LookUpID>0) order by Code',
        '');
      AddItem(DMF.adcBsell, 'FormDate', ' «—ÌŒ ›—„', ' «—ÌŒ', ftDate, dvMinMax,
        '', '', ciSimple, '', 'SELECT  ''' + APPBank.StartYear +
        ''', MAX(ReciptDate) FROM  Recipts');
      // AddItem(DMF.adcBsell,'UseType','‰Ê⁄ „’—›','ﬂœ „’—›',ftInteger,dvDefaults,'','',ciCombo,
      // 'SELECT  UseUnitID, UseUnitName FROM  UseUnits','');
      AddItem(DMF.adcBsell, 'StoreID', '«‰»«—', '‰«„ «‰»«—', ftString, dvMinMax,
        '', '', ciLookup, LookupSQL4Store, MinMaxSQL4Store);
      AddItem(DMF.adcBsell, 'UseOtherID', 'Ã«‰»«“', '‰«„ Ã«‰»«“', ftLargeint,
        dvMinMax, '', '', ciLookup,
        'SELECT UseOtherID, UseOtherName FROM UseOthers  ',
        'select min(UseOtherID), max(UseOtherID) from UseOthers ');

      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateList;
      end; // if
    finally
      Free;
    end; // try
  end; // with
end;

procedure TListUsesF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actLimit.Execute;
  if myParams.FindParam('FormDate') = nil then
    Close;
end;

procedure TListUsesF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryUses);
end;

procedure TListUsesF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryUses);
end;

procedure TListUsesF.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  if ChooseItemF.SelectChecks(ticketUseOthers, 'UseOtherID  ', 'UseOtherName ',
    ' UseOthers ', '', DMF.adcBsell, True) then
  begin
    ticketUseOthers := LeftStr(ticketUseOthers, length(ticketUseOthers) - 1);
    UpdateList;
  end; // if
end;

procedure TListUsesF.actShowReleaseExecute(Sender: TObject);
begin
  inherited;
  ShowReciptTypes(qryUses, Self, qryUses.FieldByName('StuffCode').AsLargeInt)
end;

procedure TListUsesF.actPrint2Execute(Sender: TObject);
begin
  inherited;
  try
    qryUses.DisableControls;
    InitReportFile(ppReport1, 'ListUses2', True);
  finally
    qryUses.EnableControls;
  end; // try

end;

procedure TListUsesF.actPrintVExecute(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid2, 0);
end;

procedure TListUsesF.BitBtn2Click(Sender: TObject);
begin
  inherited;
  PopupMenu1.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TListUsesF.ppLblCompanyNameGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TListUsesF.ppLblCaptionGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := Caption
end;

procedure TListUsesF.ppLblPrintDateGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPrintDate
end;

procedure TListUsesF.ppSysVarPageNoGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TListUsesF.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  ticketReciptID := selectedF.ShowSelect(DMF.adcBsell, '',
    'SELECT ReciptID,ReciptNumber,ReciptDate + '' «‰»«— '' + STR(StoreID) FROM Recipts '
    + FilterString, ['', '‘„«—Â', ' «—ÌŒ Ê ﬂœ «‰»«—'], alLeft, [0, 80, 250],
    ticketReciptID);

  if ticketReciptID <> EmptyStr then
    UpdateList;

  // if ChooseItemF.SelectChecks(ticketReciptNumber,'ReciptNumber  ','ReciptDate+'' «‰»«— ''+STR(StoreID) ', ' Recipts ',
  // FilterString  ,DMf.adcBSell,true) then
  // begin
  // ticketReciptID:= LeftStr(ticketReciptID,length(ticketReciptID)-1);
  // UpdateList;
  // end;//if

end;

end.
