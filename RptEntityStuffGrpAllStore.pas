unit RptEntityStuffGrpAllStore;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, DB, ADODB, Grids, Vcl.DBGrids, ImgList, DBActns, Math,
  ActnList, StdCtrls, ExtCtrls, Buttons, DBCtrls, ComCtrls, ppCtrls,
  ppPrnabl, ppClass, ppBands, ppDB, ppCache, ppProd, ppReport, ppComm,
  ppRelatv, ppDBPipe, ppVar, ppParameter, ppDesignLayer, System.ImageList,
  System.Actions, Filter_ADO_Const,ReciptsFunctions, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, CedarDbGrid;

type
  TRptEntityStuffGrpAllStoreF = class(Ttemplate2MDIF)
    qryEntity: TADOQuery;
    srcEntity: TDataSource;
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
    actPrint: TAction;
    actSort: TAction;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppDBText8: TppDBText;
    Button3: TButton;
    actShow: TAction;
    qryEntityTotallSellPrice: TBCDField;
    lbl1: TLabel;
    qryEntityGroupID: TIntegerField;
    DBGrid1: TCedarDbgrid;
    procedure actfilterExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
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
    procedure qryEntityAfterOpen(DataSet: TDataSet);
    procedure actShowExecute(Sender: TObject);
  private
    OrginalSQL: String;
    procedure updatelist;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptEntityStuffGrpAllStoreF: TRptEntityStuffGrpAllStoreF;

implementation

uses DM, filter_ADO, FilterClass_ADO, GlobalPro, search2,
  sort2, RptEntityStuffAllStore, FaraConsts;

{$R *.dfm}

procedure TRptEntityStuffGrpAllStoreF.updatelist;
var
  s: String;
begin
  PriceOnStoreType(GetcFrom(myParams.ParamValues['StoreID'], ftInteger),
    DBGrid1, qryEntity);
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

    Parameters.ParamByName('GROUPIDFrom').Value :=
      GetcFrom(myParams.ParamValues['GROUPID'], ftInteger);
    Parameters.ParamByName('GROUPIDTo').Value :=
      GetcTo(myParams.ParamValues['GROUPID'], ftInteger);

    Parameters.ParamByName('YearIDFrom').Value := opt.DefaultYear;
    Parameters.ParamByName('YearIDTo').Value := APPBank.Year;
    Parameters.ParamByName('UserID').Value := User.id;
    Parameters.ParamByName('UserIDAdmin').Value :=
      ifthen(User.PowerUser, 127, User.id);

    Parameters.ParamByName('PersonID1DFrom').Value :=
      GetcFrom(myParams.ParamValues['PersonID1D'], ftInteger);
    Parameters.ParamByName('PersonID1DTo').Value :=
      GetcTo(myParams.ParamValues['PersonID1D'], ftInteger);

    Active := True;
    lbl1.Caption := '  «“  «—ÌŒ  ' + Parameters.ParamByName('datefrom').Value +
      '   «  «—ÌŒ  ' + Parameters.ParamByName('dateto').Value;
    lbl1.Caption := lbl1.Caption + '    «“ «‰»«—  ' +
      VarToStr(Parameters.ParamByName('STOREIDFrom').Value) + '   « «‰»«—  ' +
      VarToStr(Parameters.ParamByName('STOREIDTo').Value);
  end; // with

end;

procedure TRptEntityStuffGrpAllStoreF.actfilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
    try
      AddItemFilter(GetFilter, TFilterPersonID1D);
      if opt.StuffKindActive then
        AddItem(DMF.adcBSell, 'StuffKindActive', '‰Ê⁄ ﬂ«·«', '', ftUnknown,
          dvDefaults, 'True', '', ciCheck,
          'SELECT  0 as OwnerShipKind,''ﬁÿ⁄Ì''  as OwnerShipKindName FROM  Config union all '
          + 'SELECT  1 as OwnerShipKind,''«„«‰Ì'' as OwnerShipKindName FROM  Config ',
          '');
      AddItem(DMF.adcBSell, 'ReciptDate', ' «—ÌŒ', ' «—ÌŒ', ftDate, dvMinMax,
        '', '', ciSimple, '', 'Select  ''' + APPBank.StartYear +
        ''',max(ReciptDate) from Recipts');

      AddItemFilter(GetFilter, TFilterGROUPID);

      // AddItem(DMF.adcBSell, 'GROUPID', 'ê—ÊÂ ﬂ«·«', 'ê—ÊÂ ﬂ«·«', ftInteger,
      // dvMinMax, '', '', cilookup,
      // 'select groupid,groupname from stuffgroups ',
      // 'Select Min(GroupID),max(GroupID) from stuffgroups');

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
end;

procedure TRptEntityStuffGrpAllStoreF.FormCreate(Sender: TObject);
begin
  inherited;
  OrginalSQL := qryEntity.SQL.Text;
  myParams.Clear;
  actfilter.Execute;
  if myParams.FindParam('ReciptDate') = nil then
    close;
  Entity_Weight(DBGrid1);
//  setColumns2(DBGrid1, opt.ActiveSellPrice2, 'TotallSellPrice');
//  qryEntity.FieldByName('TotallSellPrice').Visible := opt.ActiveSellPrice2;
    HideOrShowSellPriceFields(qryEntity,DBGrid1);

end;

procedure TRptEntityStuffGrpAllStoreF.actsendtoExelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TRptEntityStuffGrpAllStoreF.ppLabel3GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := lbl1.Caption;
end;

procedure TRptEntityStuffGrpAllStoreF.ppLabel10GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := ' «“ ﬂœ ' + IntToStr(qryEntity.Parameters.ParamByName('GROUPIDFrom')
    .Value) + '   « ﬂœ  ' +
    IntToStr(qryEntity.Parameters.ParamByName('GROUPIDTo').Value);
end;

procedure TRptEntityStuffGrpAllStoreF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TRptEntityStuffGrpAllStoreF.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TRptEntityStuffGrpAllStoreF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TRptEntityStuffGrpAllStoreF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qryEntity.DisableControls;
    InitReportFile(ppReport1, 'RptEntityStuffGrpAllStore');
  finally
    qryEntity.EnableControls;
  end; // try
end;

procedure TRptEntityStuffGrpAllStoreF.FormShow(Sender: TObject);
begin
  inherited;
  if myParams.FindParam('ReciptDate') = nil then
    close;
end;

procedure TRptEntityStuffGrpAllStoreF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryEntity);
end;

procedure TRptEntityStuffGrpAllStoreF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryEntity);
end;

procedure TRptEntityStuffGrpAllStoreF.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryEntity.FieldByName('GroupID'));
end;

procedure TRptEntityStuffGrpAllStoreF.qryEntityAfterOpen(DataSet: TDataSet);
begin
  inherited;
  if PriceOnStoreType(GetcFrom(myParams.ParamValues['StoreID'], ftInteger),
    DBGrid1, qryEntity) then
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

procedure TRptEntityStuffGrpAllStoreF.actShowExecute(Sender: TObject);
begin
  inherited;
  myParams.CreateParam(ftInteger, 'StuffCode', ptInput).AsString :=
    '0;999999999';

  myParams.CreateParam(ftInteger, 'ReciptDate', ptInput).AsString :=
    myParams.ParamValues['ReciptDate'];

  CreateMDIForm3(TRUE, TRptEntityStuffAllStoreF, RptEntityStuffAllStoreF, Self);
  WITH RptEntityStuffAllStoreF.qryEntity do
  BEGIN
    close;
    Parameters.ParamByName('GROUPIDFrom').Value :=
      Self.qryEntityGroupID.AsInteger;
    Parameters.ParamByName('GROUPIDTo').Value :=
      Self.qryEntityGroupID.AsInteger;
    Open;
  END;

end;

end.
