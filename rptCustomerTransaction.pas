// mahmood
unit rptCustomerTransaction;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, DB, ADODB, ImgList, DBActns, ActnList, StdCtrls, Math,
  ExtCtrls, Buttons, DBCtrls, Mask, Menus, ComCtrls,
  ppDB, ppDBPipe, ppComm, ppRelatv, ppProd, ppClass, ppReport, ppPrnabl,
  ppCtrls, ppCache, ppBands, ppVar, ppStrtch, ppMemo, ppModule,
  ppTypes, ppSubRpt, SumDBGrid, DateUtils, ppParameter, ppDesignLayer,
  System.ImageList, System.Actions, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  CedarDbGrid;

type
  // THackGrid = class(TCedarDbgrid);

  TrptCustomerTransactionF = class(Ttemplate2MDIF)
    qryCustTranc: TADOQuery;
    SrcCustTranc: TDataSource;
    LblPerson1: TLabel;
    EdtPersonID1: TDBEdit;
    SpeedButton1: TSpeedButton;
    DBTextPersonID1: TDBText;
    DBNavigator1: TDBNavigator;
    qryCustomers: TADOQuery;
    SrcCustomers: TDataSource;
    qryCustTrancPersonID1: TIntegerField;
    qryCustTrancReciptID: TIntegerField;
    qryCustTrancReciptNumber: TIntegerField;
    qryCustTrancReciptDate: TStringField;
    qryCustTrancReciptCaption: TStringField;
    qryCustTrancReciptNote: TStringField;
    qryCustTrancbed: TBCDField;
    qryCustTrancbes: TBCDField;
    qryCustTranckind: TIntegerField;
    actFilter: TAction;
    BitBtn2: TBitBtn;
    BitBtn7: TBitBtn;
    DBNavigator2: TDBNavigator;
    BitBtn4: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn5: TBitBtn;
    actPrint: TAction;
    actSendExel: TAction;
    qryCustTrancBalance: TBCDField;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppShape2: TppShape;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLine1: TppLine;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel3: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel5: TppLabel;
    ppLine6: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLabel16: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBPipeline2: TppDBPipeline;
    ppLabel17: TppLabel;
    qryCustTrancreciptType: TIntegerField;
    ppLine7: TppLine;
    qryCustTranccalcuBalance: TBCDField;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLine11: TppLine;
    ppLine12: TppLine;
    BitBtn3: TBitBtn;
    actFormShow: TAction;
    PopMenu: TPopupMenu;
    N1: TMenuItem;
    DetailNote: TMenuItem;
    qryCustTrancStoreCustIDForShow: TIntegerField;
    qryCustomersCustID: TIntegerField;
    qryCustomersCustName: TStringField;
    ppShape7: TppShape;
    ppLine17: TppLine;
    ppLine19: TppLine;
    ppDBCalc17: TppDBCalc;
    ppDBCalc18: TppDBCalc;
    ppDBCalc19: TppDBCalc;
    ppLine43: TppLine;
    ppLabel23: TppLabel;
    ppDBCalc20: TppDBCalc;
    ppLabel33: TppLabel;
    ppFooterBand1: TppFooterBand;
    ppLine21: TppLine;
    actSort: TAction;
    AllC_l_i_c_k_: TMenuItem;
    N7: TMenuItem;
    N6: TMenuItem;
    N8: TMenuItem;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDetailBand3: TppDetailBand;
    ppSummaryBand1: TppSummaryBand;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLine33: TppLine;
    ppDBText7: TppDBText;
    ppDBText6: TppDBText;
    ppDBText5: TppDBText;
    ppDBText2: TppDBText;
    ppDBText1: TppDBText;
    ppLine3: TppLine;
    ppDBText9: TppDBText;
    ppLine10: TppLine;
    ppDBText8: TppDBText;
    ppLine2: TppLine;
    ppShape1: TppShape;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppLine29: TppLine;
    ppLabel12: TppLabel;
    ppDBCalc4: TppDBCalc;
    ppLabel13: TppLabel;
    ppTitleBand2: TppTitleBand;
    ppLabel4: TppLabel;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppShape8: TppShape;
    qryCustTrancServerID: TIntegerField;
    qryCustTrancYearID: TIntegerField;
    pnlRelated: TPanel;
    SpeedButton2: TSpeedButton;
    BitBtn10: TBitBtn;
    btnDelRelated: TBitBtn;
    BitBtn12: TBitBtn;
    RadioGroup1: TRadioGroup;
    actReleted: TAction;
    actDoReleted: TAction;
    qryCustTrancAnalizeType: TIntegerField;
    qryCustTrancRelaID: TIntegerField;
    qryCustTrancRelatedID: TIntegerField;
    actDelRelated: TAction;
    qryCustTrancDefaultDate: TStringField;
    ppSystemVariable2: TppSystemVariable;
    qryCustTrancFormItemID: TIntegerField;
    actCustomers2F: TAction;
    pnl1: TPanel;
    chk1: TCheckBox;
    stat1: TStatusBar;
    DBGrid1: TCedarDbgrid;
    qryCustTrancRelatedKind: TIntegerField;
    ppDBPipelineSumGrid1: TppDBPipeline;
    qryCustTrancCurrenciesName: TStringField;
    qryCustTrancArzbed: TFloatField;
    qryCustTrancArzbes: TFloatField;
    qryCustTrancArzbalance: TFloatField;
    qryCustTranccalcuArzBalance: TFMTBCDField;
    qryCustTrancArzRate: TFloatField;
    qryCustTrancSecondTypeName: TStringField;
    qryCustTrancTruckNumber: TStringField;
    LblLimit: TLabel;
    qryCustTrancPersonID2: TIntegerField;
    qryCustTrancCustName2: TStringField;
    qryCustTrancSellsEmporiumName: TWideStringField;
    qryCustTrancAidInfoNo: TStringField;
    qryCustTrancAidInfoDate: TStringField;
    procedure actFilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actSendExelExecute(Sender: TObject);
    procedure qryCustomersAfterScroll(DataSet: TDataSet);
    procedure ppLabel1GetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable1GetText(Sender: TObject; var Text: String);
    procedure ppLabel3GetText(Sender: TObject; var Text: String);
    procedure actPrintExecute(Sender: TObject);
    procedure ppLabel16GetText(Sender: TObject; var Text: String);
    procedure qryCustTrancAfterOpen(DataSet: TDataSet);
    procedure actFormShowExecute(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure EdtPersonID1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure AllC_l_i_c_k_Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actReletedExecute(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure qryCustTrancBeforeOpen(DataSet: TDataSet);
    procedure SpeedButton2Click(Sender: TObject);
    procedure actDelRelatedExecute(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure qryCustTrancAnalizeTypeGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qryCustTrancAfterScroll(DataSet: TDataSet);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure actCustomers2FExecute(Sender: TObject);
    procedure chk1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
    formTypes: String;
    formType: Integer;
    SQLqryCustTranc: String;
    Bed_Bes: Currency;
    procedure UpdateFilter;
    procedure Updateremain;
    Procedure ChangeSql(qry: TADOQuery);
    procedure SetParamNoFilter;
  public
    { Public declarations }
  end;

var
  rptCustomerTransactionF: TrptCustomerTransactionF;

implementation

uses DM, GlobalPro, filter_ADO, FilterClass_ADO, Recipts,
  GetOtherMoney, GetCheck, searchCode_ADO, search2, sort2,
  FormFunctions, TypInfo, main, shamsiDate, DocRelated, FaraConsts, Customers2,
  Filter_ADO_Const;

{$R *.dfm}

procedure TrptCustomerTransactionF.UpdateFilter;
var
  DateFromRemain: String;
begin
  with qryCustTranc do
  begin
    Active := False;

    SQL.Text := SQLqryCustTranc;
    if opt.DefaultDateActive then
    begin
      if GetcTo(myParams.ParamValues['ORDERBYFormDate'], ftDate) = 2 then
        SQL.Add('ORDER BY DefaultDate')
      else
        SQL.Add('ORDER BY FormDate');
    end
    else
      SQL.Add('ORDER BY FormDate');

    Parameters.ParamByName('YearIDFrom').Value :=
      GetcFrom(myParams.ParamValues['YearID'], ftInteger);
    Parameters.ParamByName('YearIDTo').Value :=
      GetcTo(myParams.ParamValues['YearID'], ftInteger);

    Parameters.ParamByName('PersonID2From').Value :=
      GetcFrom(myParams.ParamValues['PersonID2'], ftInteger);
    Parameters.ParamByName('PersonID2To').Value :=
      GetcTo(myParams.ParamValues['PersonID2'], ftInteger);

    Parameters.ParamByName('PersonIDFrom').Value :=
      GetcFrom(myParams.ParamValues['PersonID1'], ftInteger);
    Parameters.ParamByName('PersonIDTo').Value :=
      GetcTo(myParams.ParamValues['PersonID1'], ftInteger);
    // Parameters.ParamByName('PersonIDFrom1').Value:=GetcFrom(myParams.ParamValues['PersonID1'],ftInteger);
    // Parameters.ParamByName('PersonIDTo1').Value:=GetcTo(myParams.ParamValues['PersonID1'],ftInteger);

    Parameters.ParamByName('DateFrom').Value :=
      GetcFrom(myParams.ParamValues['ReciptDate'], ftDate);
    Parameters.ParamByName('DateTo').Value :=
      GetcTo(myParams.ParamValues['ReciptDate'], ftDate);

    DateFromRemain := GetcFrom(myParams.ParamValues['ReciptDate'], ftDate);
    DateFromRemain := miladi2Shamsi(IncDay(Shamsi2Miladi(DateFromRemain), -1));
    Parameters.ParamByName('DateFromRemain').Value := DateFromRemain;

    Parameters.ParamByName('SellsEmporiumFrom').Value :=
      GetcFrom(myParams.ParamValues['SellsEmporium'], ftInteger);
    Parameters.ParamByName('SellsEmporiumTo').Value :=
      GetcTo(myParams.ParamValues['SellsEmporium'], ftInteger);
    Parameters.ParamByName('SellsMethodFrom').Value :=
      GetcFrom(myParams.ParamValues['SellsMethod'], ftInteger);
    Parameters.ParamByName('SellsMethodTo').Value :=
      GetcTo(myParams.ParamValues['SellsMethod'], ftInteger);

    if opt.ArzActiveAll then
    begin
      Parameters.ParamByName('ArzTypeIDFrom').Value :=
        GetcFrom(myParams.ParamValues['ArzTypeID'], ftInteger);
      Parameters.ParamByName('ArzTypeIDTo').Value :=
        GetcTo(myParams.ParamValues['ArzTypeID'], ftInteger);
    end
    else
    begin
      Parameters.ParamByName('ArzTypeIDFrom').Value := 0;
      Parameters.ParamByName('ArzTypeIDTo').Value := 999;
    end;
    // Active:=True;
  end; // with
  with qryCustomers do
  begin
    Active := False;
    // Parameters.ParamByName('DateFrom').Value:=GetcFrom(myParams.ParamValues['ReciptDate'],ftDate);
    // Parameters.ParamByName('DateTo').Value:=GetcTo(myParams.ParamValues['ReciptDate'],ftDate);
    Parameters.ParamByName('PersonID1From').Value :=
      GetcFrom(myParams.ParamValues['PersonID1'], ftInteger);
    Parameters.ParamByName('PersonID1To').Value :=
      GetcTo(myParams.ParamValues['PersonID1'], ftInteger);
    Active := True;
  end; // with
end;

procedure TrptCustomerTransactionF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
    try
      AddItemFilter(GetFilter, TFilterSellsMethod);

      AddItemFilter(GetFilter, TFilterSellsEmporium);

      if opt.ArzActiveAll then
        AddItemFilter(GetFilter, TFilterArz);

      AddItemFilter(GetFilter, TFilterPersonID2, False, 'بانک.صندوق');

      AddItemFilter(GetFilter, TFilterPersonID1Limit, False, LblPerson1.Caption,
        'WHERE GroupType in(' + formTypes + ') ))');

      AddItem(dmF.adcBSell, 'ReciptDate', ' تاريخ ', 'تاريخ', ftDate,
        dvDefaults, APPBank.StartYear, APPBank.endYear, ciSimple, '', '');
      // 'SELECT Min(Date_),Max(Date_) FROM  (SELECT ReciptDate as Date_ FROM Recipts union all SELECT FormDate as Date_ FROM Forms)as a ');

      if opt.DefaultDateActive then
        AddItem(dmF.adcBSell, 'ORDERBYFormDate', 'ترتيب تاريخ', 'تاريخ',
          ftInteger, dvDefaults, '1', '1', ciCombo,
          'SELECT  1, ''تاريخ فرم''     FROM Config union all ' +
          'SELECT  2, ''تاريخ جانبي'' FROM Config  ', '');

      AddItemFilter(GetFilter, TFilterYearID);

      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateFilter;
      end; // if
    finally
      Free;
    end; // try
end;

procedure TrptCustomerTransactionF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  if Var_glb_NoFilter then
    SetParamNoFilter
  else
  begin
    actFilter.Execute;
    if myParams.FindParam('ReciptDate') = nil then
      close;
  end;
end;

procedure TrptCustomerTransactionF.actSendExelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TrptCustomerTransactionF.qryCustomersAfterScroll(DataSet: TDataSet);
begin
  inherited;
  SetArzIni(DBGrid1);
  with qryCustTranc do
  begin
    Active := False;
    Parameters.ParamByName('PersonIDFrom').Value :=
      qryCustomers.FieldByName('CustID').AsInteger;
    Parameters.ParamByName('PersonIDTo').Value :=
      qryCustomers.FieldByName('CustID').AsInteger;
    // Parameters.ParamByName('PersonIDFrom1').Value:=qryCustomers.FieldByName('CustID').AsInteger;
    // Parameters.ParamByName('PersonIDTo1').Value:=qryCustomers.FieldByName('CustID').AsInteger;
    Active := True;
  end; // with
  with qryCustTranc.Parameters do

  begin
    LblLimit.Caption :=
    // 'از مشتري '+IntToStr(ParamByName('PersonIDFrom1').Value)+' تا '+IntToStr(ParamByName('PersonIDTo1').Value)+'    '+
      'از تاريخ ' + ParamByName('DateFrom').Value + ' تا ' +
      ParamByName('DateTo').Value;
  end; // with
end;

procedure TrptCustomerTransactionF.ppLabel1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TrptCustomerTransactionF.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TrptCustomerTransactionF.ppLabel3GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TrptCustomerTransactionF.actPrintExecute(Sender: TObject);
begin
  inherited;
  PopMenu.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TrptCustomerTransactionF.ppLabel16GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := 'از تاريخ ' + qryCustTranc.Parameters.ParamByName('DateFrom').Value +
    ' تا ' + qryCustTranc.Parameters.ParamByName('DateTo').Value
end;

procedure TrptCustomerTransactionF.Updateremain;
var
  c: Currency;
  arz: Real48;
begin
  with qryCustTranc do
  begin
    DisableControls;
    c := 0;
    arz := 0;
    while not eof do
    begin
      c := c + FieldByName('Balance').AsCurrency;
      arz := arz + FieldByName('Arzbalance').AsFloat;
      edit;
      FieldByName('calcuBalance').AsCurrency := c;
      FieldByName('calcuArzBalance').AsCurrency := arz;
      post;
      Next;
    end; // while
    First;
    EnableControls;
  end; // with
end;

procedure TrptCustomerTransactionF.qryCustTrancAfterOpen(DataSet: TDataSet);
var
  c, bed, bes: Currency;
  cmFooter: TColumnFooterEh;
begin
  inherited;
  Updateremain;
  stat1.Panels[3].Text := 'تعداد فرم =  ' + IntToStr(qryCustTranc.RecordCount);
  // if PriceOnStoreType(qryCustTranc.fieldbyname('StoreCustIDForShow').AsInteger,DBGrid1) then begin

  if UserQualitative then
  begin
    bed := CalcSumFileds(qryCustTranc, 'bed');
    stat1.Panels[2].Text := 'جمع بدهكار =  ' + CurrToStrF(bed, ffCurrency, 0) +
      Currency_String;
    bes := CalcSumFileds(qryCustTranc, 'bes');
    stat1.Panels[1].Text := 'جمع بستانكار =  ' + CurrToStrF(bes, ffCurrency, 0)
      + Currency_String;
    c := bed - bes;
    stat1.Panels[0].Text := 'مانده = ' + CurrToStrF(c, ffCurrency, 0) +
      Currency_String;

    cmFooter := DBGrid1.Columns[ColumnIndexByFieldName(DBGrid1,
      'calcuBalance')].Footer;
    cmFooter.ValueType := fvtStaticText;
    cmFooter.Value := CurrToStrF(c, ffCurrency, 0);

  end;
end;

procedure TrptCustomerTransactionF.actFormShowExecute(Sender: TObject);
begin
  inherited;
  case qryCustTranc.FieldByName('Kind').AsInteger of
    0:
      Warn('براي نوع اطلاعات " نقل از قبل " فرمي وجود ندارد.!');
    1, 2:
      ShowFormTypesForms(qryCustTranc, Self);
    3:
      ShowReciptTypes(qryCustTranc, Self)
  end; // case
end;

procedure TrptCustomerTransactionF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  actFormShow.Execute
end;

procedure TrptCustomerTransactionF.SpeedButton1Click(Sender: TObject);
var
  b: Boolean;
  Results: array [0 .. 1] of String;
  Txt: String;
begin
  inherited;
  Txt := 'SELECT DISTINCT CustID, CustName FROM Vu_CustomersGroups ' +
    'WHERE (GroupType IN (' + formTypes + ')) ' + ' AND (CustID <> 0) ' +
    'AND (CustID BETWEEN ' +
    IntToStr(qryCustomers.Parameters.ParamByName('PersonID1From').Value) +
    'AND ' + IntToStr(qryCustomers.Parameters.ParamByName('PersonID1To')
    .Value) + ' )';
  if opt.ChkUsersCustomersGroupsActive then
    Txt := Txt + Format
      ('AND (dbo.ChkUsersCustomersGroups( %d , %d , CustID  ) = 1)',
      [IfThen(User.PowerUser, 1, 0), User.ID]);
  b := searchCode_ADOF.SearchCode2(dmF.adcBSell, LblPerson1.Caption, Txt,
    ['کد', 'نام '], Results, [50, 150], alLeft);
  if b then
  begin
    qryCustomers.Locate('CustID', Results[0], []);
  end; // if
end;

procedure TrptCustomerTransactionF.EdtPersonID1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    SpeedButton1.Click
end;

procedure TrptCustomerTransactionF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryCustTranc);
end;

procedure TrptCustomerTransactionF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryCustTranc);
end;

procedure TrptCustomerTransactionF.AllC_l_i_c_k_Click(Sender: TObject);
var
  sName: string;
begin
  inherited;
  case (Sender as TMenuItem).Tag of
    0:
      begin
        ppDBPipeline1.RangeBegin := rbCurrentRecord;
        ppDBPipeline1.RangeEnd := reCurrentRecord;
        ppReport1.DataPipeline := ppDBPipeline2;
        sName := '_1';
      end;
    1:
      begin
        ppDBPipeline1.RangeBegin := rbFirstRecord;
        ppDBPipeline1.RangeEnd := reLastRecord;
        ppReport1.DataPipeline := ppDBPipeline1;
        sName := '';
      end;
  end;
  try
    qryCustomers.DisableControls;
    qryCustTranc.DisableControls;
    SeletedPrint(ppDBPipeline2, DBGrid1);
    InitReportFile(ppReport1, 'rptCustomerTransaction' + (Sender as TMenuItem)
      .Hint + sName, True)
  finally
    qryCustomers.EnableControls;
    qryCustTranc.EnableControls;
  end; // try

end;

procedure TrptCustomerTransactionF.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  inherited;
  if pnlRelated.Visible then
    actReleted.Execute
end;

procedure TrptCustomerTransactionF.FormCreate(Sender: TObject);
// var
// CustomerKind: string;
begin
  inherited;
  Bed_Bes := 0;
  with qryCustomers do
  begin
    SQL.Text := 'SELECT DISTINCT CustID, CustName';
    SQL.Add('FROM Vu_CustomersGroups');
    SQL.Add('WHERE (GroupType IN ( :GroupType ))');
    SQL.Add('AND (CustID BETWEEN :PersonID1From AND :PersonID1To)');
    SQL.Add('AND (CustID <> 0)');
    if opt.ChkUsersCustomersGroupsActive then
    begin
      SQL.Add('AND (dbo.ChkUsersCustomersGroups( :UserAdmin , :UserID , CustID ) = 1)');
      Parameters.ParamByName('UserID').Value := User.ID;
      Parameters.ParamByName('UserAdmin').Value := IfThen(User.PowerUser, 1, 0);
    end;
  end;

  SQLqryCustTranc := qryCustTranc.SQL.Text;
  formType := var_glb_gParam;
  case var_glb_gParam of
    0, 1, 2:
      formTypes := opt.CustomerKindsTransaction;
    4:
      formTypes := '4,10';
  else
    formTypes := IntToStr(var_glb_gParam);
  end;
  Caption := Caption + CustGroupsNames[var_glb_gParam];
  LblPerson1.Caption := CustGroupsNames[var_glb_gParam];

  qryCustomers.SQL.Text := StringReplace(qryCustomers.SQL.Text, ':GroupType',
    formTypes, [rfReplaceAll]);
  setColumns2(DBGrid1, pnlRelated.Visible, 'AnalizeType');
  setColumns2(DBGrid1, pnlRelated.Visible, 'RelatedID');
  // THackGrid(DBGrid1).DoLoad;
  DBGrid1.SetFooter4Sum(['calcuBalance']);
  ppDBPipelineSumGrid1.DataSource := DBGrid1.srcSum;

end;

procedure TrptCustomerTransactionF.actReletedExecute(Sender: TObject);
begin
  inherited;
  pnlRelated.Visible := not pnlRelated.Visible;
  setColumns2(DBGrid1, pnlRelated.Visible, 'AnalizeType');
  setColumns2(DBGrid1, pnlRelated.Visible, 'RelatedID');
  qryCustTranc.close;
  qryCustTranc.Open;
end;

procedure TrptCustomerTransactionF.BitBtn12Click(Sender: TObject);
begin
  inherited;
  try
    DocRelatedF.enter(qryCustTranc, formType, Bed_Bes);
  finally
    qryCustTranc.Requery();
  end;
end;

procedure TrptCustomerTransactionF.BitBtn10Click(Sender: TObject);
var
  i: Integer;
  MaxID: Integer;
  bed, bes: Currency;
  aID, FormItemID: Integer;
  RelaID: Integer;
  serverID: Integer;
  ayearId: Integer;
begin
  inherited;
  MaxID := GetANewCode(Self.Name, SqlMaxRelatedID, '');
  bed := 0;
  bes := 0;

  with qryCustTranc do
    try
      for i := 0 to DBGrid1.SelectedRows.Count - 1 do
      begin
        GotoBookmark((DBGrid1.SelectedRows.Items[i]));
        bed := bed + FieldByName('bed').AsCurrency;
        bes := bes + FieldByName('bes').AsCurrency;
        if FieldByName('RelatedID').AsInteger > 0 then
        begin
          Warn('قبلا ارتباط داده شده است');
          Exit;
        end;
      end;
      Bed_Bes := bed - bes;
      if Bed_Bes = 0 then
      begin
        for i := 0 to DBGrid1.SelectedRows.Count - 1 do
        begin
          GotoBookmark((DBGrid1.SelectedRows.Items[i]));
          aID := FieldByName('ReciptID').AsInteger;
          serverID := FieldByName('serverID').AsInteger;
          RelaID := FieldByName('RelaID').AsInteger;
          ayearId := FieldByName('YearID').AsInteger;
          FormItemID := FieldByName('FormItemID').AsInteger;
          case FieldByName('AnalizeType').AsInteger of
            1:
              case FieldByName('Kind').AsInteger of
                1:
                  dmF.ExecuteQry(Format('UPDATE Forms SET RelatedID = %d' +
                    ' WHERE (ServerId = %d) AND (FormID = %D) AND (YearID = %d)',
                    [MaxID, serverID, aID, ayearId]));
                2:
                  dmF.ExecuteQry(Format('UPDATE FormItems SET RelatedID = %d' +
                    ' WHERE (ServerId = %d) AND (FormItemID = %D) AND (YearID = %d)AND (FormID = %D) ',
                    [MaxID, serverID, FormItemID, ayearId, aID]));
                3:
                  dmF.ExecuteQry(Format('UPDATE Recipts SET RelatedID = %d' +
                    ' WHERE (ServerId = %d) AND (ReciptID = %D) AND (YearID = %d)',
                    [MaxID, serverID, aID, ayearId]));
              end;
            2:
              dmF.ExecuteQry
                (Format('UPDATE Related SET  RelatedID = %d FROM  Related WHERE  (ID = %d)',
                [MaxID, RelaID]));

          end;
        end;
      end
      else
      begin
        Warn('مبالغ ستون بايد تجزيه شوند تا امكان مطابقت وجود داشته باشد');
        BitBtn12.Click
      end;
      qryCustTranc.Requery;
      FreeReservedCodes(dmF.adcBSell, '', '', Self.Name);
    except
    end;

end;

procedure TrptCustomerTransactionF.ChangeSql;
var
  SqlTxt: String;
begin
  SqlTxt := 'SELECT  RelatedID,AnalizeType, RelaID  ,ServerID, YearID, CustomerID1 AS PersonID1, FormID AS ReciptID, FormType AS reciptType, FormNumber AS'
    + #13#10 + ' ReciptNumber, FormDate AS ReciptDate,' + #13#10 +
    ' FormCaption AS ReciptCaption, FomNote AS ReciptNote, bed, bes, kind, bed - bes AS balance'
    + #13#10 + ',Fitful.FitfulID AS calcuBalance,' + #13#10 +
    ' CustIDForShow AS StoreCustIDForShow,DefaultDate  ,  FormItemID,RelatedKind'
    + #13#10 +
    ',ArzRate,Arzbed , Arzbes,Arzbed- Arzbes AS Arzbalance, Fitful.FitfulID  AS calcuArzBalance,CurrenciesName'
    + #13#10 +
    ' ,Name AS SecondTypeName, TruckNumber ,SellsEmporiumName, CustomerID2 AS PersonID2,C2.CustName as CustName2  ,AidInfoNo,AidInfoDate  '
    + #13#10 +
    ' FROM %S (10 ,-1 ,-1 ,-1 , :PersonIDFrom , :PersonIDTo , :DateFrom , :DateTo ,'
    + #13#10 +
    ' :DateFromRemain , :YearIDFrom , :YearIDTo  , :SellsMethodFrom , :SellsMethodTo , :SellsEmporiumFrom ,  :SellsEmporiumTo , DEFAULT ) AS AllAcc'
    + #13#10 + ' CROSS JOIN Fitful' + #13#10 +
    '   LEFT JOIN Customers C2 ON C2.CUSTID = CustomerID2 '
  // +' LEFT OUTER JOIN Currencies  ON AllAcc.ArzTypeID = Currencies.CurrenciesID '
    + #13#10 +
    ' where ( ISNULL(AllAcc.ArzTypeID,0) BetWeen :ArzTypeIDFrom AND :ArzTypeIDTo)'
    + ' and  ( CustomerID2  BetWeen :PersonID2From AND :PersonID2To) '

    ;

  if (myParams.FindParam('ORDERBYFormDate') <> nil) and (opt.DefaultDateActive)
  then
  begin
    if GetcTo(myParams.ParamValues['ORDERBYFormDate'], ftDate) = 2 then
      SqlTxt := SqlTxt + ' ORDER BY DefaultDate'
    else
      SqlTxt := SqlTxt + ' ORDER BY FormDate';
  end
  else
    SqlTxt := SqlTxt + ' ORDER BY FormDate';
  if not qry.Active then
    if not pnlRelated.Visible then
    begin
      qry.SQL.Text := Format(SqlTxt, ['AllAccount']);
      qry.Filtered := False;
    end
    else
      qry.SQL.Text := Format(SqlTxt, ['AllAccountReleted']);

end;

procedure TrptCustomerTransactionF.chk1Click(Sender: TObject);
begin
  inherited;
  qryCustTranc.Filter := '(balance  <> 0)';
  qryCustTranc.Filtered := chk1.Checked
end;

procedure TrptCustomerTransactionF.qryCustTrancBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  ChangeSql(TADOQuery(DataSet));

end;

procedure TrptCustomerTransactionF.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  qryCustTranc.Filter := Format('RelatedID= %d',
    [qryCustTranc.FieldByName('RelatedID').AsInteger]);
  qryCustTranc.Filtered := SpeedButton2.Down;

end;

procedure TrptCustomerTransactionF.actCustomers2FExecute(Sender: TObject);
begin
  inherited;
  Customers2F.enter(qryCustomersCustID.AsInteger)
end;

procedure TrptCustomerTransactionF.actDelRelatedExecute(Sender: TObject);
begin
  inherited;
  qryCustTranc.Filter := Format('RelatedID= %d',
    [qryCustTranc.FieldByName('RelatedID').AsInteger]);
  try
    qryCustTranc.Filtered := True;
    if get_response
      ('آيا مي خواهيد  ارتباط هاي مربوط به سطر انتخاب شده حذف شوند ') <> mrYes
    then
      Exit;
    dmF.ExecuteQry
      (Format('UPDATE Related SET RelatedID = 0 WHERE (RelatedID = %d)',
      [qryCustTranc.FieldByName('RelatedID').AsInteger]));
    dmF.ExecuteQry
      (Format('UPDATE Forms SET RelatedID = 0 WHERE (RelatedID = %d)',
      [qryCustTranc.FieldByName('RelatedID').AsInteger]));
    dmF.ExecuteQry
      (Format('UPDATE FormItems SET RelatedID = 0 WHERE (RelatedID = %d)',
      [qryCustTranc.FieldByName('RelatedID').AsInteger]));
    dmF.ExecuteQry
      (Format('UPDATE Recipts SET RelatedID = 0 WHERE (RelatedID = %d)',
      [qryCustTranc.FieldByName('RelatedID').AsInteger]));

  finally
    qryCustTranc.Filtered := False;
    qryCustTranc.Requery;
  end;
end;

procedure TrptCustomerTransactionF.RadioGroup1Click(Sender: TObject);
begin
  inherited;
  case (Sender as TRadioGroup).ItemIndex of
    0:
      begin
        qryCustTranc.Filter := 'RelatedID <> 0 and RelatedID <> -1';
        qryCustTranc.Sort := 'RelatedID';
      end;
    1:
      qryCustTranc.Filter := 'RelatedID = 0';
    2:
      begin
        qryCustTranc.Filter := EmptyStr;
        qryCustTranc.Sort := EmptyStr;
      end;
  end;
  qryCustTranc.Filtered := qryCustTranc.Filter <> EmptyStr;
end;

procedure TrptCustomerTransactionF.qryCustTrancAnalizeTypeGetText
  (Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    0:
      Text := 'نقل از قبل';
    1:
      Text := 'اصلي';
    2:
      Text := 'آناليز شده';
  end;
end;

procedure TrptCustomerTransactionF.qryCustTrancAfterScroll(DataSet: TDataSet);
begin
  inherited;
  actDelRelated.Enabled := DataSet.FieldByName('RelatedID').AsInteger > 0;
end;

procedure TrptCustomerTransactionF.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryCustTrancReciptNumber)
end;

procedure TrptCustomerTransactionF.SetParamNoFilter;
var
  DateFromRemain: String;
begin
  Panel2.Enabled := False;
  with qryCustTranc, Parameters do
  begin
    Active := False;

    SQL.Text := SQLqryCustTranc;
    SQL.Add('ORDER BY FormDate');

    ParamByName('YearIDFrom').Value := opt.DefaultYear;
    ParamByName('YearIDTo').Value := APPBank.Year;
    ParamByName('PersonIDFrom').Value := 0;
    ParamByName('PersonIDTo').Value := 2147483647;

    ParamByName('DateFrom').Value := IntToStr(opt.DefaultYear2) + '/01/01';
    ParamByName('DateTo').Value := APPBank.endYear;

    DateFromRemain := IntToStr(opt.DefaultYear2) + '/01/01';
    DateFromRemain := miladi2Shamsi(IncDay(Shamsi2Miladi(DateFromRemain), -1));
    ParamByName('DateFromRemain').Value := DateFromRemain;

    ParamByName('SellsEmporiumFrom').Value := 0;
    Parameters.ParamByName('SellsEmporiumTo').Value := 999;
    Parameters.ParamByName('SellsMethodFrom').Value := 0;
    Parameters.ParamByName('SellsMethodTo').Value := 999;

    Parameters.ParamByName('ArzTypeIDFrom').Value := 0;
    Parameters.ParamByName('ArzTypeIDTo').Value := 999;

  end; // with
  with qryCustomers, Parameters do
  begin
    Active := False;
    ParamByName('PersonID1From').Value := 0;
    ParamByName('PersonID1To').Value := 2147483647;
    Active := True;
  end; // with

end;

end.
