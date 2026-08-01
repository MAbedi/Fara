unit RptEntityStuffGrp;
// <><>

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, DB, ADODB, ImgList, DBActns, Math,
  ActnList, StdCtrls, ExtCtrls, Buttons, DBCtrls, Mask, ComCtrls, ppCtrls,
  ppPrnabl, ppClass, ppBands, ppDB, ppCache, ppProd, ppReport, ppComm,
  ppRelatv, ppDBPipe, ppVar, ppParameter, ppDesignLayer, System.ImageList,
  System.Actions,Filter_ADO_Const,ReciptsFunctions, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, CedarDbGrid;

type
  TRptEntityStuffGrpF = class(Ttemplate2MDIF)
    Label1: TLabel;
    qryStore: TADOQuery;
    qryEntity: TADOQuery;
    srcStore: TDataSource;
    srcEntity: TDataSource;
    LblStore: TLabel;
    EdtStoreID: TDBEdit;
    SBtnStoreID: TSpeedButton;
    DBTextStoreID: TDBText;
    qryStoren_StoreID: TSmallintField;
    qryStorec_StoreName: TStringField;
    qryEntityStoreID: TSmallintField;
    qryEntityGroupName: TStringField;
    qryEntityEntity: TFloatField;
    qryEntityWeight: TFloatField;
    qryEntityPrice: TBCDField;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    StatusBar1: TStatusBar;
    Button1: TButton;
    actfilter: TAction;
    Button2: TButton;
    DBNavigator1: TDBNavigator;
    actsendtoExel: TAction;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppLblCompanyName: TppLabel;
    ppLabel2: TppLabel;
    ppLine1: TppLine;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLine4: TppLine;
    ppLabel6: TppLabel;
    ppLine5: TppLine;
    ppLabel7: TppLabel;
    ppLine6: TppLine;
    ppLabel8: TppLabel;
    ppLine7: TppLine;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppDBText1: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBText2: TppDBText;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppShape1: TppShape;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppShape2: TppShape;
    ppLblPrintDate: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    BitBtn3: TBitBtn;
    ppShape3: TppShape;
    ppLabel11: TppLabel;
    ppLabel15: TppLabel;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBPipeline2: TppDBPipeline;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    actPrint: TAction;
    actSort: TAction;
    qryEntityTotallSellPrice: TBCDField;
    qryEntityGroupID: TIntegerField;
    DBGrid1: TCedarDbgrid;
    procedure actfilterExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qryStoreAfterScroll(DataSet: TDataSet);
    procedure SBtnStoreIDClick(Sender: TObject);
    procedure actsendtoExelExecute(Sender: TObject);
    procedure ppLabel3GetText(Sender: TObject; var Text: String);
    procedure ppLabel10GetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable1GetText(Sender: TObject; var Text: String);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure actPrintExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
  private
    OrginalSQL: String;
    procedure updatelist;
    // function CalculateChecksTotal(fldName:string): Currency;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptEntityStuffGrpF: TRptEntityStuffGrpF;

implementation

uses DM, filter_ADO, FilterClass_ADO, GlobalPro, searchCode_ADO, search2,
  sort2, FaraConsts;

{$R *.dfm}
// function TRptEntityStuffGrpF.CalculateChecksTotal(fldName:string): Currency;
// var
// qry:  TADOQuery;
// begin
// qry:=TADOQuery.Create(Self);
// try
// with qry do begin
// Clone(qryEntity,ltReadOnly);
// Result:=0;
// First;
// while not eof do begin
// Result:=Result + fieldbyname(fldName).AsCurrency;
// Next;
// end;//while
// end;//with
// finally
// qry.Free;
// end;//try
// end;

procedure TRptEntityStuffGrpF.updatelist;
var
  s: String;
begin
  if opt.StuffKindActive then
    s := GetcFrom(myParams.ParamValues['StuffKindActive'], ftString);
  if s = '' then
    s := '0,1';
  qryEntity.SQL.Text := StringReplace(OrginalSQL, ':StuffKindActive', s,
    [rfReplaceAll]);
  with qryEntity do
  begin
    Active := False;
    Parameters.ParamByName('DateFrom').Value :=
      GetcFrom(myParams.ParamValues['ReciptDate'], ftDate);
    Parameters.ParamByName('DateTo').Value :=
      GetcTo(myParams.ParamValues['ReciptDate'], ftDate);
    Parameters.ParamByName('STOREIDFrom').Value :=
      GetcFrom(myParams.ParamValues['STOREID'], ftInteger);
    Parameters.ParamByName('STOREIDTo').Value :=
      GetcTo(myParams.ParamValues['STOREID'], ftInteger);

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

        Parameters.ParamByName('PersonID1DFrom').Value :=
      GetcFrom(myParams.ParamValues['PersonID1D'], ftInteger);
    Parameters.ParamByName('PersonID1DTo').Value :=
      GetcTo(myParams.ParamValues['PersonID1D'], ftInteger);


    // Active:=True;
    Label1.Caption := '  «“  «—ÌŒ  ' + Parameters.ParamByName('datefrom').Value
      + '   «  «—ÌŒ  ' + Parameters.ParamByName('dateto').Value;
    with qryStore do
    begin
      Active := False;
      Parameters.ParamByName('STOREIDFrom').Value :=
        GetcFrom(myParams.ParamValues['STOREID'], ftInteger);
      Parameters.ParamByName('STOREIDTo').Value :=
        GetcTo(myParams.ParamValues['STOREID'], ftInteger);
      Parameters.ParamByName('UserID').Value := User.id;
      Parameters.ParamByName('UserIDAdmin').Value :=
        IfThen(User.PowerUser, 127, User.id);
      Active := True;
    end; // with
  end; // with

end;

procedure TRptEntityStuffGrpF.actfilterExecute(Sender: TObject);
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
      AddItem(DMF.adcBSell, 'ReciptDate', ' «—ÌŒ', ' «—ÌŒ', ftDate, dvMinMax,
        '', '', ciSimple, '', 'SELECT  ''' + APPBank.StartYear +
        ''',max(ReciptDate) from Recipts');
      AddItem(DMF.adcBSell, 'GROUPID', 'ê—ÊÂ ﬂ«·«', 'ê—ÊÂ ﬂ«·«', ftInteger,
        dvMinMax, '', '', cilookup,
        'SELECT GroupID,GroupName FROM Stuffgroups ',
        'SELECT Min(GroupID),max(GroupID) FROM Stuffgroups');
      AddItem(DMF.adcBSell, 'STOREID', '«‰»«—', ' ﬂœ ', ftInteger, dvMinMax, '',
        '', cilookup, LookupSQL4Store, MinMaxSQL4Store);
      if ShowModal = mrOk then
      begin
        GetFilterString;
        updatelist;
      end; // if
    finally
      Free;
    end; // try
  end; // with
end;

procedure TRptEntityStuffGrpF.FormCreate(Sender: TObject);
begin
  inherited;
  OrginalSQL := qryEntity.SQL.Text;
  myParams.Clear;
  actfilter.Execute;
  if myParams.FindParam('ReciptDate') = nil then
    close;
  Entity_Weight(DBGrid1);
//  setColumns2(DBGrid1, opt.ActiveSellPrice2, 'TotallSellPrice');
//  qryEntity.FieldByName('TotallSellPrice').Visible :=    opt.ActiveSellPrice2;
    HideOrShowSellPriceFields(qryEntity, DBGrid1);

end;

procedure TRptEntityStuffGrpF.qryStoreAfterScroll(DataSet: TDataSet);
var
  b: Boolean;
begin
  inherited;
  b := PriceOnStoreType(qryStore.fieldbyname('n_storeid').AsInteger, DBGrid1,
    qryEntity);
  with qryEntity do
  begin
    Active := False;
    Parameters.ParamByName('storeidFrom').Value :=
      qryStore.fieldbyname('n_storeid').AsInteger;
    Parameters.ParamByName('storeidto').Value :=
      qryStore.fieldbyname('n_storeid').AsInteger;
    Active := True;
  end; // with
  if b then
    StatusBar1.Panels[0].Text := '„»·€ :' +
      CurrToStrF(CalcSumFileds(qryEntity, 'price'), ffCurrency, 0)
  else
    StatusBar1.Panels[0].Text := '';
  if opt.WeightDisplay then
    StatusBar1.Panels[1].Text := 'Ê“‰ :' +
      CurrToStr(CalcSumFileds(qryEntity, 'Weight'));
  if opt.EntityDisplay then
    StatusBar1.Panels[2].Text := '„ﬁœ«— :' +
      CurrToStr(CalcSumFileds(qryEntity, 'entity'));
  StatusBar1.Panels[3].Text := 'Ã„⁄:  ';
  StatusBar1.Panels[4].Text := ' ⁄œ«œ ê—ÊÂ ﬂ«·« :' +
    IntToStr(qryEntity.RecordCount);

end;

procedure TRptEntityStuffGrpF.SBtnStoreIDClick(Sender: TObject);
var
  // i: Integer;
  c: String;
begin
  inherited;
  if searchCode_ADOF.SearchCode(DMF.adcBSell, c, '«‰»«—Â«  ',
    'SELECT n_StoreID, c_StoreName FROM stores ', ['ﬂœ', '‰«„ «‰»«—'], alLeft)
    <> '' then
  begin
    qryStore.Locate('n_StoreID', c, []);
  end; // if
end;

procedure TRptEntityStuffGrpF.actsendtoExelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TRptEntityStuffGrpF.ppLabel3GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := Label1.Caption;
end;

procedure TRptEntityStuffGrpF.ppLabel10GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := ' «“ ﬂœ ' + IntToStr(qryEntity.Parameters.ParamByName('GROUPID1From')
    .Value) + '   « ﬂœ  ' +
    IntToStr(qryEntity.Parameters.ParamByName('GROUPID1To').Value);
end;

procedure TRptEntityStuffGrpF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TRptEntityStuffGrpF.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TRptEntityStuffGrpF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TRptEntityStuffGrpF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qryStore.DisableControls;
    qryEntity.DisableControls;
    InitReportFile(ppReport1, 'RptEntityStuffGrp');
  finally
    qryStore.EnableControls;
    qryEntity.EnableControls;
  end; // try
end;

procedure TRptEntityStuffGrpF.FormShow(Sender: TObject);
begin
  inherited;
  if myParams.FindParam('ReciptDate') = nil then
    close;
end;

procedure TRptEntityStuffGrpF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryEntity);
end;

procedure TRptEntityStuffGrpF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryEntity);
end;

procedure TRptEntityStuffGrpF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryEntity.fieldbyname('GroupID'));
end;

end.
